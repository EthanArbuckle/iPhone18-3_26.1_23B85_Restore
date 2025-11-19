@interface PTTraceConfig
+ (BOOL)globalSettingsAreLocked;
+ (BOOL)isControlCenterModuleAvailable;
+ (BOOL)isInRecordingWorkflow;
+ (BOOL)resetConfig;
+ (id)_defaultTraceRecordConfig;
+ (id)availableTracePlanNames;
+ (id)configWithDictionary:(id)a3;
+ (id)configWithTemplate:(unint64_t)a3;
+ (id)configWithTracePlanName:(id)a3;
+ (id)configWithTracePlanURL:(id)a3;
+ (id)displayNameForTracePlanName:(id)a3;
+ (id)getCurrentConfig;
+ (id)userSelectedTracePlanName;
+ (id)userSpecifiedCustomTracePlanArguments;
+ (void)setUserSelectedTracePlanName:(id)a3;
+ (void)setUserSpecifiedCustomTracePlanArguments:(id)a3;
- (BOOL)storeConfig;
- (PTTraceConfig)initWithCoder:(id)a3;
- (id)_getRemoteObjectProxy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_initConnection;
- (void)_invalidateSession;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTTraceConfig

+ (id)configWithTemplate:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v4 setSymbolicate:1];
  [(PTTraceConfig *)v4 setCallstackSamplingRateMS:1];
  [(PTTraceConfig *)v4 setTraceType:1];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/"];
  [(PTTraceConfig *)v4 setTraceDirectoryURL:v5];

  [(PTTraceConfig *)v4 setTraceName:0];
  v6 = [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_28701CD78, &unk_28701CD90, &unk_28701CDA8, &unk_28701CDC0, &unk_28701CDD8, 0}];
  [(PTTraceConfig *)v4 setTraceGroups:v6];

  [(PTTraceConfig *)v4 setCompressWhenFinished:1];
  [(PTTraceConfig *)v4 setIncludeOSLogs:1];
  [(PTTraceConfig *)v4 setIncludeOSSignposts:1];
  [(PTTraceConfig *)v4 setTraceTimeoutS:0];
  [(PTTraceConfig *)v4 setUseTraceRecord:0];
  [(PTTraceConfig *)v4 setTraceDurationSecs:0];
  [(PTTraceConfig *)v4 setSkipNotification:0];
  [(PTTraceConfig *)v4 setIncludeKernelStacks:1];
  [(PTTraceConfig *)v4 setEnableSwiftUITracing:0];
  [(PTTraceConfig *)v4 setTraceRecordArgs:0];
  [(PTTraceConfig *)v4 setKernelBufferSizeMB:sysconf(57) << 6];
  if ([(PTTraceConfig *)v4 kernelBufferSizeMB]<= 0x7F)
  {
    [(PTTraceConfig *)v4 setKernelBufferSizeMB:128];
  }

  if ([(PTTraceConfig *)v4 kernelBufferSizeMB]>= 0x401)
  {
    [(PTTraceConfig *)v4 setKernelBufferSizeMB:1024];
  }

  [(PTTraceConfig *)v4 setKernelBufferDrainQoS:25];
  [(PTTraceConfig *)v4 setKernelBufferDrainRateMS:500];
  if (a3 - 1 < 2)
  {
    [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_28701CD78, &unk_28701CD90, &unk_28701CDA8, &unk_28701CDC0, &unk_28701CDD8, 0}];
    v7 = LABEL_9:;
    [(PTTraceConfig *)v4 setTraceGroups:v7];
    goto LABEL_12;
  }

  if (a3 == 3)
  {
    [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_28701CDF0, &unk_28701CD90, &unk_28701CDD8, 0, v13, v14}];
    goto LABEL_9;
  }

  v7 = _clientLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    +[PTTraceConfig configWithTemplate:];
  }

LABEL_12:

  [(PTTraceConfig *)v4 setOwnerPID:getpid()];
  proc_name([(PTTraceConfig *)v4 ownerPID], buffer, 0x21u);
  v8 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v4 setOwnerName:v8];

  v9 = [(PTTraceConfig *)v4 ownerName];

  if (!v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v4 setOwnerName:v10];
  }

  [(PTTraceConfig *)v4 setSource:4];
  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)configWithDictionary:(id)a3
{
  v147 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CBE660];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceConfigurationDictionary is not a valid dictionary."];
  }

  v5 = [v3 valueForKey:@"traceTemplate"];

  if (!v5)
  {
    v10 = 1;
    goto LABEL_10;
  }

  v6 = [v3 valueForKey:@"traceTemplate"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceTemplate is not a string."];
  }

  v8 = [v3 valueForKey:@"traceTemplate"];
  v9 = traceConfigTemplateForString(v8);

  if (v9)
  {
    v10 = v9;
LABEL_10:
    v11 = [PTTraceConfig configWithTemplate:v10];
    goto LABEL_12;
  }

  v12 = MEMORY[0x277CBEAD8];
  v13 = *v4;
  v14 = [v3 valueForKey:@"traceTemplate"];
  [v12 raise:v13 format:{@"%@ is not a valid trace template.", v14}];

  v11 = 0;
LABEL_12:
  v15 = [v3 valueForKey:@"callstackSamplingRateMS"];

  if (v15)
  {
    v16 = [v3 valueForKey:@"callstackSamplingRateMS"];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if ((v17 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"callstackSamplingRateMS"}];
    }

    v18 = [v3 valueForKey:@"callstackSamplingRateMS"];
    [v11 setCallstackSamplingRateMS:{objc_msgSend(v18, "unsignedLongValue")}];
  }

  v19 = [v3 valueForKey:@"traceName"];

  if (v19)
  {
    v20 = [v3 valueForKey:@"traceName"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a string type.", @"traceName"}];
    }

    v22 = [v3 valueForKey:@"traceName"];
    v23 = [v22 copy];
    [v11 setTraceName:v23];
  }

  v24 = [v3 valueForKey:@"compressWhenFinished"];

  if (v24)
  {
    v25 = [v3 valueForKey:@"compressWhenFinished"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if ((v26 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"compressWhenFinished"}];
    }

    v27 = [v3 valueForKey:@"compressWhenFinished"];
    if ([v27 unsignedLongValue])
    {
      v28 = [v3 valueForKey:@"compressWhenFinished"];
      v29 = [v28 unsignedLongValue];

      if (v29 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"compressWhenFinished"}];
      }
    }

    else
    {
    }

    v30 = [v3 valueForKey:@"compressWhenFinished"];
    [v11 setCompressWhenFinished:{objc_msgSend(v30, "BOOLValue")}];
  }

  v31 = [v3 valueForKey:@"includeOSLogs"];

  if (v31)
  {
    v32 = [v3 valueForKey:@"includeOSLogs"];
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if ((v33 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeOSLogs"}];
    }

    v34 = [v3 valueForKey:@"includeOSLogs"];
    if ([v34 unsignedLongValue])
    {
      v35 = [v3 valueForKey:@"includeOSLogs"];
      v36 = [v35 unsignedLongValue];

      if (v36 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeOSLogs"}];
      }
    }

    else
    {
    }

    v37 = [v3 valueForKey:@"includeOSLogs"];
    [v11 setIncludeOSLogs:{objc_msgSend(v37, "BOOLValue")}];
  }

  v38 = [v3 valueForKey:@"includeOSSignposts"];

  if (v38)
  {
    v39 = [v3 valueForKey:@"includeOSSignposts"];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if ((v40 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeOSSignposts"}];
    }

    v41 = [v3 valueForKey:@"includeOSSignposts"];
    if ([v41 unsignedLongValue])
    {
      v42 = [v3 valueForKey:@"includeOSSignposts"];
      v43 = [v42 unsignedLongValue];

      if (v43 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeOSSignposts"}];
      }
    }

    else
    {
    }

    v44 = [v3 valueForKey:@"includeOSSignposts"];
    [v11 setIncludeOSSignposts:{objc_msgSend(v44, "BOOLValue")}];
  }

  v45 = [v3 valueForKey:@"traceTimeoutS"];

  if (v45)
  {
    v46 = [v3 valueForKey:@"traceTimeoutS"];
    objc_opt_class();
    v47 = objc_opt_isKindOfClass();

    if ((v47 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"traceTimeoutS"}];
    }

    v48 = [v3 valueForKey:@"traceTimeoutS"];
    [v11 setTraceTimeoutS:{objc_msgSend(v48, "unsignedLongValue")}];
  }

  v49 = [v3 valueForKey:@"useTraceRecord"];

  if (v49)
  {
    v50 = [v3 valueForKey:@"useTraceRecord"];
    objc_opt_class();
    v51 = objc_opt_isKindOfClass();

    if ((v51 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"useTraceRecord"}];
    }

    v52 = [v3 valueForKey:@"useTraceRecord"];
    if ([v52 unsignedLongValue])
    {
      v53 = [v3 valueForKey:@"useTraceRecord"];
      v54 = [v53 unsignedLongValue];

      if (v54 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"useTraceRecord"}];
      }
    }

    else
    {
    }

    v55 = [v3 valueForKey:@"useTraceRecord"];
    [v11 setUseTraceRecord:{objc_msgSend(v55, "BOOLValue")}];
  }

  v56 = [v3 valueForKey:@"traceDurationSecs"];

  if (v56)
  {
    v57 = [v3 valueForKey:@"traceDurationSecs"];
    objc_opt_class();
    v58 = objc_opt_isKindOfClass();

    if ((v58 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"traceDurationSecs"}];
    }

    v59 = [v3 valueForKey:@"traceDurationSecs"];
    [v11 setTraceDurationSecs:{objc_msgSend(v59, "unsignedLongValue")}];
  }

  v60 = [v3 valueForKey:@"skipNotification"];

  if (v60)
  {
    v61 = [v3 valueForKey:@"skipNotification"];
    objc_opt_class();
    v62 = objc_opt_isKindOfClass();

    if ((v62 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"skipNotification"}];
    }

    v63 = [v3 valueForKey:@"skipNotification"];
    if ([v63 unsignedLongValue])
    {
      v64 = [v3 valueForKey:@"skipNotification"];
      v65 = [v64 unsignedLongValue];

      if (v65 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"skipNotification"}];
      }
    }

    else
    {
    }

    v66 = [v3 valueForKey:@"skipNotification"];
    [v11 setSkipNotification:{objc_msgSend(v66, "BOOLValue")}];
  }

  v67 = [v3 valueForKey:@"includeKernelStacks"];

  if (v67)
  {
    v68 = [v3 valueForKey:@"includeKernelStacks"];
    objc_opt_class();
    v69 = objc_opt_isKindOfClass();

    if ((v69 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeKernelStacks"}];
    }

    v70 = [v3 valueForKey:@"includeKernelStacks"];
    if ([v70 unsignedLongValue])
    {
      v71 = [v3 valueForKey:@"includeKernelStacks"];
      v72 = [v71 unsignedLongValue];

      if (v72 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeKernelStacks"}];
      }
    }

    else
    {
    }

    v73 = [v3 valueForKey:@"includeKernelStacks"];
    [v11 setIncludeKernelStacks:{objc_msgSend(v73, "BOOLValue")}];
  }

  v74 = [v3 valueForKey:@"kernelBufferSizeMB"];

  if (v74)
  {
    v75 = [v3 valueForKey:@"kernelBufferSizeMB"];
    objc_opt_class();
    v76 = objc_opt_isKindOfClass();

    if ((v76 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"kernelBufferSizeMB"}];
    }

    v77 = [v3 valueForKey:@"kernelBufferSizeMB"];
    [v11 setKernelBufferSizeMB:{objc_msgSend(v77, "unsignedLongValue")}];
  }

  v78 = [v3 valueForKey:@"kernelBufferDrainRateMS"];

  if (v78)
  {
    v79 = [v3 valueForKey:@"kernelBufferDrainRateMS"];
    objc_opt_class();
    v80 = objc_opt_isKindOfClass();

    if ((v80 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"kernelBufferDrainRateMS"}];
    }

    v81 = [v3 valueForKey:@"kernelBufferDrainRateMS"];
    [v11 setKernelBufferDrainRateMS:{objc_msgSend(v81, "unsignedLongValue")}];
  }

  v82 = [v3 valueForKey:@"kernelBufferDrainQoS"];

  if (v82)
  {
    v83 = [v3 valueForKey:@"kernelBufferDrainQoS"];
    objc_opt_class();
    v84 = objc_opt_isKindOfClass();

    if ((v84 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned integer type.", @"kernelBufferDrainQoS"}];
    }

    v85 = [v3 valueForKey:@"kernelBufferDrainQoS"];
    [v11 setKernelBufferDrainQoS:{objc_msgSend(v85, "unsignedIntValue")}];
  }

  v86 = [v3 valueForKey:@"enableSwiftUITracing"];

  if (v86)
  {
    v87 = [v3 valueForKey:@"enableSwiftUITracing"];
    objc_opt_class();
    v88 = objc_opt_isKindOfClass();

    if ((v88 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"enableSwiftUITracing"}];
    }

    v89 = [v3 valueForKey:@"enableSwiftUITracing"];
    if ([v89 unsignedLongValue])
    {
      v90 = [v3 valueForKey:@"enableSwiftUITracing"];
      v91 = [v90 unsignedLongValue];

      if (v91 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"enableSwiftUITracing"}];
      }
    }

    else
    {
    }

    v92 = [v3 valueForKey:@"enableSwiftUITracing"];
    [v11 setEnableSwiftUITracing:{objc_msgSend(v92, "BOOLValue")}];
  }

  v93 = [v3 valueForKey:@"traceRecordArgs"];

  if (v93)
  {
    v135 = v11;
    v94 = [v3 valueForKey:@"traceRecordArgs"];
    objc_opt_class();
    v95 = objc_opt_isKindOfClass();

    if ((v95 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an array type.", @"traceRecordArgs"}];
    }

    v136 = v3;
    [v3 valueForKey:@"traceRecordArgs"];
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v96 = v144 = 0u;
    v97 = [v96 countByEnumeratingWithState:&v141 objects:v146 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v142;
      v100 = *MEMORY[0x277CBE660];
      do
      {
        for (i = 0; i != v98; ++i)
        {
          if (*v142 != v99)
          {
            objc_enumerationMutation(v96);
          }

          v102 = *(*(&v141 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CBEAD8] raise:v100 format:{@"%@ is not an array of strings.", @"traceRecordArgs"}];
          }
        }

        v98 = [v96 countByEnumeratingWithState:&v141 objects:v146 count:16];
      }

      while (v98);
    }

    v11 = v135;
    [v135 setTraceRecordArgs:v96];

    v3 = v136;
    v4 = MEMORY[0x277CBE660];
  }

  if ([v11 useTraceRecord])
  {
    [v11 setSymbolicate:0];
    [v11 setOverrideSymbolicate:0];
  }

  v103 = [v3 valueForKey:@"symbolicate"];

  if (v103)
  {
    v104 = [v3 valueForKey:@"symbolicate"];
    objc_opt_class();
    v105 = objc_opt_isKindOfClass();

    if ((v105 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"symbolicate"}];
    }

    v106 = [v3 valueForKey:@"symbolicate"];
    if ([v106 unsignedLongValue])
    {
      v107 = [v3 valueForKey:@"symbolicate"];
      v108 = [v107 unsignedLongValue];

      if (v108 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"symbolicate"}];
      }
    }

    else
    {
    }

    v109 = [v3 valueForKey:@"symbolicate"];
    [v11 setSymbolicate:{objc_msgSend(v109, "BOOLValue")}];
  }

  v110 = [v3 valueForKey:@"traceDirectoryURL"];

  if (v110)
  {
    v111 = [v3 valueForKey:@"traceDirectoryURL"];
    objc_opt_class();
    v112 = objc_opt_isKindOfClass();

    if ((v112 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceDirectoryURL is not a string type."];
    }

    v113 = MEMORY[0x277CBEBC0];
    v114 = [v3 valueForKey:@"traceDirectoryURL"];
    v115 = [v113 fileURLWithPath:v114];
    [v11 setTraceDirectoryURL:v115];
  }

  v116 = [v3 valueForKey:@"traceType"];

  if (v116)
  {
    v117 = [v3 valueForKey:@"traceType"];
    objc_opt_class();
    v118 = objc_opt_isKindOfClass();

    if ((v118 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceType is not a string type."];
    }

    v119 = [v3 valueForKey:@"traceType"];
    [v11 setTraceType:traceTypeForString(v119)];
  }

  v120 = [v3 valueForKey:@"traceGroups"];

  if (v120)
  {
    v121 = [v3 valueForKey:@"traceGroups"];
    objc_opt_class();
    v122 = objc_opt_isKindOfClass();

    if ((v122 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceGroups is not an NSArray type."];
    }

    v123 = [v3 valueForKey:@"traceGroups"];
    v124 = [MEMORY[0x277CBEB18] array];
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v125 = v123;
    v126 = [v125 countByEnumeratingWithState:&v137 objects:v145 count:16];
    if (v126)
    {
      v127 = v126;
      v128 = *v138;
      do
      {
        for (j = 0; j != v127; ++j)
        {
          if (*v138 != v128)
          {
            objc_enumerationMutation(v125);
          }

          v130 = *(*(&v137 + 1) + 8 * j);
          if (v130 && traceGroupForString(*(*(&v137 + 1) + 8 * j)))
          {
            v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:traceGroupForString(v130)];
            [v124 addObject:v131];
          }
        }

        v127 = [v125 countByEnumeratingWithState:&v137 objects:v145 count:16];
      }

      while (v127);
    }

    if ([v124 count])
    {
      [v11 setTraceGroups:v124];
    }
  }

  [v11 setSource:4];
  v132 = v11;

  v133 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)_defaultTraceRecordConfig
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v2 setUseTraceRecord:1];
  [(PTTraceConfig *)v2 setTraceType:1];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/"];
  [(PTTraceConfig *)v2 setTraceDirectoryURL:v3];

  [(PTTraceConfig *)v2 setTraceName:0];
  [(PTTraceConfig *)v2 setSkipNotification:0];
  [(PTTraceConfig *)v2 setCompressWhenFinished:1];
  [(PTTraceConfig *)v2 setKernelBufferSizeMB:0];
  [(PTTraceConfig *)v2 setOverrideIncludeOSSignposts:0];
  [(PTTraceConfig *)v2 setOverrideIncludeOSLogs:0];
  [(PTTraceConfig *)v2 setOverrideSymbolicate:0];
  [(PTTraceConfig *)v2 setOwnerPID:getpid()];
  proc_name([(PTTraceConfig *)v2 ownerPID], buffer, 0x21u);
  v4 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v2 setOwnerName:v4];

  v5 = [(PTTraceConfig *)v2 ownerName];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v2 setOwnerName:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)configWithTracePlanName:(id)a3
{
  v3 = a3;
  v4 = +[PTTraceConfig _defaultTraceRecordConfig];
  [v4 setPlanNameOrPath:v3];

  return v4;
}

+ (id)configWithTracePlanURL:(id)a3
{
  v3 = a3;
  v4 = +[PTTraceConfig _defaultTraceRecordConfig];
  v5 = [v3 path];

  [v4 setPlanNameOrPath:v5];

  return v4;
}

+ (id)getCurrentConfig
{
  v3 = _clientLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E3D3000, v3, OS_LOG_TYPE_INFO, "Getting Current Config", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = objc_alloc_init(PTTraceConfig);
  v4 = [*(v10 + 5) connection];

  if (!v4)
  {
    [*(v10 + 5) _initConnection];
  }

  v5 = [*(v10 + 5) _getRemoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__PTTraceConfig_getCurrentConfig__block_invoke;
  v8[3] = &unk_279A18C40;
  v8[4] = buf;
  v8[5] = a1;
  [v5 getCurrentStoredConfig:v8];

  [*(v10 + 5) _invalidateSession];
  v6 = *(v10 + 5);
  _Block_object_dispose(buf, 8);

  return v6;
}

void __33__PTTraceConfig_getCurrentConfig__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 || !v5)
  {
    v10 = _clientLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __33__PTTraceConfig_getCurrentConfig__block_invoke_cold_1();
    }

    v11 = [*(a1 + 40) configWithTemplate:1];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v7 = [v5 copy];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 32) + 8) + 40) setSource:{objc_msgSend(v6, "source")}];
  }
}

+ (BOOL)resetConfig
{
  v2 = _clientLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E3D3000, v2, OS_LOG_TYPE_INFO, "Resetting config", buf, 2u);
  }

  v3 = objc_alloc_init(PTTraceConfig);
  v4 = [(PTTraceConfig *)v3 connection];

  if (!v4)
  {
    [(PTTraceConfig *)v3 _initConnection];
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(PTTraceConfig *)v3 _getRemoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__PTTraceConfig_resetConfig__block_invoke;
  v7[3] = &unk_279A18C68;
  v7[4] = buf;
  [v5 resetConfig:v7];

  [(PTTraceConfig *)v3 _invalidateSession];
  LOBYTE(v5) = v9[24];
  _Block_object_dispose(buf, 8);

  return v5;
}

void __28__PTTraceConfig_resetConfig__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = _clientLogHandle();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __28__PTTraceConfig_resetConfig__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_25E3D3000, v5, OS_LOG_TYPE_INFO, "Successfully reset config.", v6, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

+ (BOOL)isInRecordingWorkflow
{
  v2 = _clientLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E3D3000, v2, OS_LOG_TYPE_INFO, "Getting recording state config", buf, 2u);
  }

  v3 = objc_alloc_init(PTTraceConfig);
  v4 = [(PTTraceConfig *)v3 connection];

  if (!v4)
  {
    [(PTTraceConfig *)v3 _initConnection];
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(PTTraceConfig *)v3 _getRemoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PTTraceConfig_isInRecordingWorkflow__block_invoke;
  v7[3] = &unk_279A18C90;
  v7[4] = buf;
  [v5 isInRecordingWorkflow:v7];

  [(PTTraceConfig *)v3 _invalidateSession];
  LOBYTE(v5) = v9[24];
  _Block_object_dispose(buf, 8);

  return v5;
}

void __38__PTTraceConfig_isInRecordingWorkflow__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = _clientLogHandle();
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __38__PTTraceConfig_isInRecordingWorkflow__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = @"Not Recording";
      if (a2)
      {
        v8 = @"Recording";
      }

      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_25E3D3000, v7, OS_LOG_TYPE_INFO, "Got recording state: %{public}@", &v10, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)storeConfig
{
  v3 = _clientLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E3D3000, v3, OS_LOG_TYPE_INFO, "Storing config", buf, 2u);
  }

  v4 = [(PTTraceConfig *)self connection];

  if (!v4)
  {
    [(PTTraceConfig *)self _initConnection];
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(PTTraceConfig *)self _getRemoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__PTTraceConfig_storeConfig__block_invoke;
  v8[3] = &unk_279A18C68;
  v8[4] = buf;
  [v5 applyConfig:self withError:v8];

  [(PTTraceConfig *)self _invalidateSession];
  v6 = v10[24];
  _Block_object_dispose(buf, 8);
  return v6;
}

void __28__PTTraceConfig_storeConfig__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _clientLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __28__PTTraceConfig_storeConfig__block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)_initConnection
{
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PerformanceTrace.PerformanceTraceService"];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287020098];
  [v5 setRemoteObjectInterface:v3];
  [v5 setInvalidationHandler:&__block_literal_global];
  [v5 setInterruptionHandler:&__block_literal_global_183];
  [(PTTraceConfig *)self setConnection:v5];
  v4 = [(PTTraceConfig *)self connection];
  [v4 resume];
}

void __32__PTTraceConfig__initConnection__block_invoke()
{
  v0 = _clientLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_25E3D3000, v0, OS_LOG_TYPE_INFO, "XPC connection invalidated.", v1, 2u);
  }
}

void __32__PTTraceConfig__initConnection__block_invoke_181()
{
  v0 = _clientLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __32__PTTraceConfig__initConnection__block_invoke_181_cold_1();
  }
}

- (id)_getRemoteObjectProxy
{
  v2 = [(PTTraceConfig *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_185];

  return v3;
}

void __38__PTTraceConfig__getRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _clientLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__PTTraceConfig__getRemoteObjectProxy__block_invoke_cold_1(v2, v3);
  }
}

- (void)_invalidateSession
{
  v3 = [(PTTraceConfig *)self connection];

  if (v3)
  {
    v4 = [(PTTraceConfig *)self connection];
    [v4 invalidate];
  }
}

- (PTTraceConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PTTraceConfig *)self init];
  if (v5)
  {
    -[PTTraceConfig setSymbolicate:](v5, "setSymbolicate:", [v4 decodeBoolForKey:@"symbolicate"]);
    -[PTTraceConfig setCallstackSamplingRateMS:](v5, "setCallstackSamplingRateMS:", [v4 decodeIntForKey:@"callstackSamplingRateMS"]);
    v6 = MEMORY[0x277CBEB18];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"traceGroups"];
    v11 = [v6 arrayWithArray:v10];
    [(PTTraceConfig *)v5 setTraceGroups:v11];

    -[PTTraceConfig setTraceType:](v5, "setTraceType:", [v4 decodeIntForKey:@"traceType"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceDirectoryURL"];
    [(PTTraceConfig *)v5 setTraceDirectoryURL:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceName"];
    [(PTTraceConfig *)v5 setTraceName:v13];

    -[PTTraceConfig setCompressWhenFinished:](v5, "setCompressWhenFinished:", [v4 decodeBoolForKey:@"compressWhenFinished"]);
    -[PTTraceConfig setIncludeOSLogs:](v5, "setIncludeOSLogs:", [v4 decodeBoolForKey:@"includeOSLogs"]);
    -[PTTraceConfig setIncludeOSSignposts:](v5, "setIncludeOSSignposts:", [v4 decodeBoolForKey:@"includeOSSignposts"]);
    -[PTTraceConfig setTraceTimeoutS:](v5, "setTraceTimeoutS:", [v4 decodeIntForKey:@"traceTimeoutS"]);
    -[PTTraceConfig setSkipNotification:](v5, "setSkipNotification:", [v4 decodeBoolForKey:@"skipNotification"]);
    -[PTTraceConfig setIncludeKernelStacks:](v5, "setIncludeKernelStacks:", [v4 decodeBoolForKey:@"includeKernelStacks"]);
    -[PTTraceConfig setKernelBufferSizeMB:](v5, "setKernelBufferSizeMB:", [v4 decodeIntForKey:@"kernelBufferSizeMB"]);
    -[PTTraceConfig setKernelBufferDrainQoS:](v5, "setKernelBufferDrainQoS:", [v4 decodeIntForKey:@"kernelBufferDrainQoS"]);
    -[PTTraceConfig setKernelBufferDrainRateMS:](v5, "setKernelBufferDrainRateMS:", [v4 decodeIntForKey:@"kernelBufferDrainRateMS"]);
    -[PTTraceConfig setOwnerPID:](v5, "setOwnerPID:", [v4 decodeIntForKey:@"ownerPID"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerName"];
    [(PTTraceConfig *)v5 setOwnerName:v14];

    -[PTTraceConfig setSource:](v5, "setSource:", [v4 decodeIntForKey:@"source"]);
    -[PTTraceConfig setTraceDurationSecs:](v5, "setTraceDurationSecs:", [v4 decodeIntForKey:@"traceDurationSecs"]);
    -[PTTraceConfig setUseTraceRecord:](v5, "setUseTraceRecord:", [v4 decodeBoolForKey:@"useTraceRecord"]);
    -[PTTraceConfig setEnableSwiftUITracing:](v5, "setEnableSwiftUITracing:", [v4 decodeBoolForKey:@"enableSwiftUITracing"]);
    v15 = MEMORY[0x277CBEB18];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"traceRecordArgs"];
    v20 = [v15 arrayWithArray:v19];
    [(PTTraceConfig *)v5 setTraceRecordArgs:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planNameOrPath"];
    [(PTTraceConfig *)v5 setPlanNameOrPath:v21];

    -[PTTraceConfig setOverrideSymbolicate:](v5, "setOverrideSymbolicate:", [v4 decodeBoolForKey:@"overrideSymbolicate"]);
    -[PTTraceConfig setOverrideIncludeOSSignposts:](v5, "setOverrideIncludeOSSignposts:", [v4 decodeBoolForKey:@"overrideIncludeOSSignposts"]);
    -[PTTraceConfig setOverrideIncludeOSLogs:](v5, "setOverrideIncludeOSLogs:", [v4 decodeBoolForKey:@"overrideIncludeOSLogs"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeBool:-[PTTraceConfig symbolicate](self forKey:{"symbolicate"), @"symbolicate"}];
  [v10 encodeInt:-[PTTraceConfig callstackSamplingRateMS](self forKey:{"callstackSamplingRateMS"), @"callstackSamplingRateMS"}];
  v4 = [(PTTraceConfig *)self traceGroups];
  [v10 encodeObject:v4 forKey:@"traceGroups"];

  [v10 encodeInt:-[PTTraceConfig traceType](self forKey:{"traceType"), @"traceType"}];
  v5 = [(PTTraceConfig *)self traceDirectoryURL];
  [v10 encodeObject:v5 forKey:@"traceDirectoryURL"];

  v6 = [(PTTraceConfig *)self traceName];
  [v10 encodeObject:v6 forKey:@"traceName"];

  [v10 encodeBool:-[PTTraceConfig compressWhenFinished](self forKey:{"compressWhenFinished"), @"compressWhenFinished"}];
  [v10 encodeBool:-[PTTraceConfig includeOSLogs](self forKey:{"includeOSLogs"), @"includeOSLogs"}];
  [v10 encodeBool:-[PTTraceConfig includeOSSignposts](self forKey:{"includeOSSignposts"), @"includeOSSignposts"}];
  [v10 encodeInt:-[PTTraceConfig traceTimeoutS](self forKey:{"traceTimeoutS"), @"traceTimeoutS"}];
  [v10 encodeBool:-[PTTraceConfig skipNotification](self forKey:{"skipNotification"), @"skipNotification"}];
  [v10 encodeBool:-[PTTraceConfig includeKernelStacks](self forKey:{"includeKernelStacks"), @"includeKernelStacks"}];
  [v10 encodeInt:-[PTTraceConfig kernelBufferSizeMB](self forKey:{"kernelBufferSizeMB"), @"kernelBufferSizeMB"}];
  [v10 encodeInt:-[PTTraceConfig kernelBufferDrainQoS](self forKey:{"kernelBufferDrainQoS"), @"kernelBufferDrainQoS"}];
  [v10 encodeInt:-[PTTraceConfig kernelBufferDrainRateMS](self forKey:{"kernelBufferDrainRateMS"), @"kernelBufferDrainRateMS"}];
  [v10 encodeInt:-[PTTraceConfig ownerPID](self forKey:{"ownerPID"), @"ownerPID"}];
  v7 = [(PTTraceConfig *)self ownerName];
  [v10 encodeObject:v7 forKey:@"ownerName"];

  [v10 encodeInt:-[PTTraceConfig source](self forKey:{"source"), @"source"}];
  [v10 encodeInt:-[PTTraceConfig traceDurationSecs](self forKey:{"traceDurationSecs"), @"traceDurationSecs"}];
  [v10 encodeBool:-[PTTraceConfig useTraceRecord](self forKey:{"useTraceRecord"), @"useTraceRecord"}];
  [v10 encodeBool:-[PTTraceConfig enableSwiftUITracing](self forKey:{"enableSwiftUITracing"), @"enableSwiftUITracing"}];
  v8 = [(PTTraceConfig *)self traceRecordArgs];
  [v10 encodeObject:v8 forKey:@"traceRecordArgs"];

  v9 = [(PTTraceConfig *)self planNameOrPath];
  [v10 encodeObject:v9 forKey:@"planNameOrPath"];

  [v10 encodeBool:-[PTTraceConfig overrideSymbolicate](self forKey:{"overrideSymbolicate"), @"overrideSymbolicate"}];
  [v10 encodeBool:-[PTTraceConfig overrideIncludeOSSignposts](self forKey:{"overrideIncludeOSSignposts"), @"overrideIncludeOSSignposts"}];
  [v10 encodeBool:-[PTTraceConfig overrideIncludeOSLogs](self forKey:{"overrideIncludeOSLogs"), @"overrideIncludeOSLogs"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v4 setSymbolicate:[(PTTraceConfig *)self symbolicate]];
  [(PTTraceConfig *)v4 setCallstackSamplingRateMS:[(PTTraceConfig *)self callstackSamplingRateMS]];
  v5 = [(PTTraceConfig *)self traceGroups];
  v6 = [v5 copy];
  [(PTTraceConfig *)v4 setTraceGroups:v6];

  [(PTTraceConfig *)v4 setTraceType:[(PTTraceConfig *)self traceType]];
  v7 = [(PTTraceConfig *)self traceDirectoryURL];
  v8 = [v7 copy];
  [(PTTraceConfig *)v4 setTraceDirectoryURL:v8];

  v9 = [(PTTraceConfig *)self traceName];
  v10 = [v9 copy];
  [(PTTraceConfig *)v4 setTraceName:v10];

  [(PTTraceConfig *)v4 setCompressWhenFinished:[(PTTraceConfig *)self compressWhenFinished]];
  [(PTTraceConfig *)v4 setIncludeOSLogs:[(PTTraceConfig *)self includeOSLogs]];
  [(PTTraceConfig *)v4 setIncludeOSSignposts:[(PTTraceConfig *)self includeOSSignposts]];
  [(PTTraceConfig *)v4 setTraceTimeoutS:[(PTTraceConfig *)self traceTimeoutS]];
  [(PTTraceConfig *)v4 setSkipNotification:[(PTTraceConfig *)self skipNotification]];
  [(PTTraceConfig *)v4 setIncludeKernelStacks:[(PTTraceConfig *)self includeKernelStacks]];
  [(PTTraceConfig *)v4 setKernelBufferSizeMB:[(PTTraceConfig *)self kernelBufferSizeMB]];
  [(PTTraceConfig *)v4 setKernelBufferDrainQoS:[(PTTraceConfig *)self kernelBufferDrainQoS]];
  [(PTTraceConfig *)v4 setKernelBufferDrainRateMS:[(PTTraceConfig *)self kernelBufferDrainRateMS]];
  [(PTTraceConfig *)v4 setUseTraceRecord:[(PTTraceConfig *)self useTraceRecord]];
  [(PTTraceConfig *)v4 setEnableSwiftUITracing:[(PTTraceConfig *)self enableSwiftUITracing]];
  v11 = [(PTTraceConfig *)self traceRecordArgs];
  v12 = [v11 copy];
  [(PTTraceConfig *)v4 setTraceRecordArgs:v12];

  [(PTTraceConfig *)v4 setOwnerPID:getpid()];
  proc_name([(PTTraceConfig *)v4 ownerPID], buffer, 0x21u);
  v13 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v4 setOwnerName:v13];

  v14 = [(PTTraceConfig *)v4 ownerName];

  if (!v14)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v4 setOwnerName:v15];
  }

  [(PTTraceConfig *)v4 setSource:4];
  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)isControlCenterModuleAvailable
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PerformanceTrace.ControlCenterPrefs"];
  v3 = [v2 objectForKey:@"ControlCenterPerformanceTraceIsAvailable"];

  v4 = _controlCenterHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_25E3D3000, v4, OS_LOG_TYPE_DEFAULT, "Control Center module availability status from preferences : %{public}@", &v8, 0xCu);
  }

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    if (isAppleInternal_pred != -1)
    {
      +[PTTraceConfig(ControlCenter) isControlCenterModuleAvailable];
    }

    v5 = isAppleInternal_isAppleInternal;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

+ (id)userSelectedTracePlanName
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PerformanceTrace.ControlCenterPrefs"];
  v3 = [v2 valueForKey:@"ControlCenterPerformanceTraceSelectedTracePlanName"];

  v4 = _controlCenterHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v3;
    _os_log_impl(&dword_25E3D3000, v4, OS_LOG_TYPE_DEFAULT, "Selected trace plan name from preferences: %{public}@", &v13, 0xCu);
  }

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = +[PTTraceConfig availableTracePlanNames];
    v6 = [v5 containsObject:v3];

    v7 = v3;
    if ((v6 & 1) == 0)
    {
      v8 = _controlCenterHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[PTTraceConfig(ControlCenter) userSelectedTracePlanName];
      }

      v7 = @"default";
    }
  }

  else
  {
    v9 = _controlCenterHandle();
    v7 = @"default";
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = @"default";
      _os_log_impl(&dword_25E3D3000, v9, OS_LOG_TYPE_DEFAULT, "Falling back to trace plan named %{public}@", &v13, 0xCu);
    }
  }

  v10 = v7;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)setUserSelectedTracePlanName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PTTraceConfig availableTracePlanNames];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [a1 userSelectedTracePlanName];
    v8 = [v4 isEqualToString:v7];
    v9 = _controlCenterHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v13 = 138543362;
        v14 = v4;
        _os_log_impl(&dword_25E3D3000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ is already the selected trace plan", &v13, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        v13 = 138543362;
        v14 = v4;
        _os_log_impl(&dword_25E3D3000, v9, OS_LOG_TYPE_DEFAULT, "Writing selected trace plan name to preferences: %{public}@", &v13, 0xCu);
      }

      v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PerformanceTrace.ControlCenterPrefs"];
      [v11 setValue:v4 forKey:@"ControlCenterPerformanceTraceSelectedTracePlanName"];

      PTServicesPostStateDidChangeNotification();
    }
  }

  else
  {
    v7 = _controlCenterHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PTTraceConfig(ControlCenter) setUserSelectedTracePlanName:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)userSpecifiedCustomTracePlanArguments
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PerformanceTrace.ControlCenterPrefs"];
  v3 = [v2 valueForKey:@"ControlCenterPerformanceTraceCustomTracePlanArguments"];

  v4 = _controlCenterHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&dword_25E3D3000, v4, OS_LOG_TYPE_DEFAULT, "Custom trace plan arguments from preferences: %{public}@", buf, 0xCu);
  }

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = v5;
  }

  else
  {
LABEL_15:
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)setUserSpecifiedCustomTracePlanArguments:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _controlCenterHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25E3D3000, v4, OS_LOG_TYPE_DEFAULT, "Writing custom trace plan arguments to preferences: %{public}@", &v7, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PerformanceTrace.ControlCenterPrefs"];
  [v5 setValue:v3 forKey:@"ControlCenterPerformanceTraceCustomTracePlanArguments"];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)availableTracePlanNames
{
  if (availableTracePlanNames_onceToken != -1)
  {
    +[PTTraceConfig(ControlCenter) availableTracePlanNames];
  }

  v3 = availableTracePlanNames_availablePlans;

  return v3;
}

void __55__PTTraceConfig_ControlCenter__availableTracePlanNames__block_invoke()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB18] array];
  v7[0] = @"default";
  v7[1] = @"profile";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  [v0 addObjectsFromArray:v1];

  if (isAppleInternal_pred != -1)
  {
    +[PTTraceConfig(ControlCenter) isControlCenterModuleAvailable];
  }

  if (isAppleInternal_isAppleInternal == 1)
  {
    [v0 addObject:@"custom"];
  }

  v6[0] = @"lightweight power metrics";
  v6[1] = @"passive";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [v0 addObjectsFromArray:v2];

  v3 = [v0 copy];
  v4 = availableTracePlanNames_availablePlans;
  availableTracePlanNames_availablePlans = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)displayNameForTracePlanName:(id)a3
{
  v3 = a3;
  if (displayNameForTracePlanName__onceToken != -1)
  {
    +[PTTraceConfig(ControlCenter) displayNameForTracePlanName:];
  }

  v4 = +[PTTraceConfig availableTracePlanNames];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = [displayNameForTracePlanName__tracePlanNameToDisplayNameMap objectForKeyedSubscript:v3];
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = _controlCenterHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PTTraceConfig(ControlCenter) setUserSelectedTracePlanName:];
    }
  }

  v6 = v3;
LABEL_10:

  return v6;
}

void __60__PTTraceConfig_ControlCenter__displayNameForTracePlanName___block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"default";
  v3[1] = @"profile";
  v4[0] = @"System Activity (Detailed)";
  v4[1] = @"System Activity (Summary)";
  v3[2] = @"custom";
  v3[3] = @"lightweight power metrics";
  v4[2] = @"Custom (Apple Internal)";
  v4[3] = @"Power Profiler";
  v3[4] = @"passive";
  v4[4] = @"Lookback Collection";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = displayNameForTracePlanName__tracePlanNameToDisplayNameMap;
  displayNameForTracePlanName__tracePlanNameToDisplayNameMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (BOOL)globalSettingsAreLocked
{
  v17 = *MEMORY[0x277D85DE8];
  if (![a1 isInRecordingWorkflow])
  {
    v14 = 0;
    v4 = [PTPassiveTraceConfig sharedConfig:&v14];
    v5 = v14;
    v6 = v5;
    if (v4)
    {
      v13 = v5;
      v7 = [v4 instrumentationConfigLocked:&v13];
      v2 = v13;

      if (v7)
      {
        v8 = _controlCenterHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 BOOLValue];
          v10 = @"not locked";
          if (v9)
          {
            v10 = @"locked";
          }

          *buf = 138543362;
          v16 = v10;
          _os_log_impl(&dword_25E3D3000, v8, OS_LOG_TYPE_DEFAULT, "Global settings are %{public}@ due to passive instrumentation locked setting", buf, 0xCu);
        }

        v3 = [v7 BOOLValue];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v2 = v5;
    }

    v7 = _controlCenterHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(PTTraceConfig(ControlCenter) *)v2];
    }

    v3 = 0;
    goto LABEL_16;
  }

  v2 = _controlCenterHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E3D3000, v2, OS_LOG_TYPE_DEFAULT, "Global settings are locked since we are in recording workflow", buf, 2u);
  }

  v3 = 1;
LABEL_17:

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

void __28__PTTraceConfig_storeConfig__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25E3D3000, a2, OS_LOG_TYPE_ERROR, "An error occurred storing config: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PTTraceConfig__getRemoteObjectProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25E3D3000, a2, OS_LOG_TYPE_ERROR, "Failed to connect to the service protocol: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end