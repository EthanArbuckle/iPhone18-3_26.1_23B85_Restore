@interface PTTraceConfig
+ (BOOL)globalSettingsAreLocked;
+ (BOOL)isControlCenterModuleAvailable;
+ (BOOL)isInRecordingWorkflow;
+ (BOOL)resetConfig;
+ (id)_defaultTraceRecordConfig;
+ (id)availableTracePlanNames;
+ (id)configWithDictionary:(id)dictionary;
+ (id)configWithTemplate:(unint64_t)template;
+ (id)configWithTracePlanName:(id)name;
+ (id)configWithTracePlanURL:(id)l;
+ (id)displayNameForTracePlanName:(id)name;
+ (id)getCurrentConfig;
+ (id)userSelectedTracePlanName;
+ (id)userSpecifiedCustomTracePlanArguments;
+ (void)setUserSelectedTracePlanName:(id)name;
+ (void)setUserSpecifiedCustomTracePlanArguments:(id)arguments;
- (BOOL)storeConfig;
- (PTTraceConfig)initWithCoder:(id)coder;
- (id)_getRemoteObjectProxy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_initConnection;
- (void)_invalidateSession;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PTTraceConfig

+ (id)configWithTemplate:(unint64_t)template
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
  if (template - 1 < 2)
  {
    [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_28701CD78, &unk_28701CD90, &unk_28701CDA8, &unk_28701CDC0, &unk_28701CDD8, 0}];
    v7 = LABEL_9:;
    [(PTTraceConfig *)v4 setTraceGroups:v7];
    goto LABEL_12;
  }

  if (template == 3)
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

  ownerName = [(PTTraceConfig *)v4 ownerName];

  if (!ownerName)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v4 setOwnerName:v10];
  }

  [(PTTraceConfig *)v4 setSource:4];
  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)configWithDictionary:(id)dictionary
{
  v147 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = MEMORY[0x277CBE660];
  if (!dictionaryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceConfigurationDictionary is not a valid dictionary."];
  }

  v5 = [dictionaryCopy valueForKey:@"traceTemplate"];

  if (!v5)
  {
    v10 = 1;
    goto LABEL_10;
  }

  v6 = [dictionaryCopy valueForKey:@"traceTemplate"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceTemplate is not a string."];
  }

  v8 = [dictionaryCopy valueForKey:@"traceTemplate"];
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
  v14 = [dictionaryCopy valueForKey:@"traceTemplate"];
  [v12 raise:v13 format:{@"%@ is not a valid trace template.", v14}];

  v11 = 0;
LABEL_12:
  v15 = [dictionaryCopy valueForKey:@"callstackSamplingRateMS"];

  if (v15)
  {
    v16 = [dictionaryCopy valueForKey:@"callstackSamplingRateMS"];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if ((v17 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"callstackSamplingRateMS"}];
    }

    v18 = [dictionaryCopy valueForKey:@"callstackSamplingRateMS"];
    [v11 setCallstackSamplingRateMS:{objc_msgSend(v18, "unsignedLongValue")}];
  }

  v19 = [dictionaryCopy valueForKey:@"traceName"];

  if (v19)
  {
    v20 = [dictionaryCopy valueForKey:@"traceName"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a string type.", @"traceName"}];
    }

    v22 = [dictionaryCopy valueForKey:@"traceName"];
    v23 = [v22 copy];
    [v11 setTraceName:v23];
  }

  v24 = [dictionaryCopy valueForKey:@"compressWhenFinished"];

  if (v24)
  {
    v25 = [dictionaryCopy valueForKey:@"compressWhenFinished"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if ((v26 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"compressWhenFinished"}];
    }

    v27 = [dictionaryCopy valueForKey:@"compressWhenFinished"];
    if ([v27 unsignedLongValue])
    {
      v28 = [dictionaryCopy valueForKey:@"compressWhenFinished"];
      unsignedLongValue = [v28 unsignedLongValue];

      if (unsignedLongValue != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"compressWhenFinished"}];
      }
    }

    else
    {
    }

    v30 = [dictionaryCopy valueForKey:@"compressWhenFinished"];
    [v11 setCompressWhenFinished:{objc_msgSend(v30, "BOOLValue")}];
  }

  v31 = [dictionaryCopy valueForKey:@"includeOSLogs"];

  if (v31)
  {
    v32 = [dictionaryCopy valueForKey:@"includeOSLogs"];
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if ((v33 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeOSLogs"}];
    }

    v34 = [dictionaryCopy valueForKey:@"includeOSLogs"];
    if ([v34 unsignedLongValue])
    {
      v35 = [dictionaryCopy valueForKey:@"includeOSLogs"];
      unsignedLongValue2 = [v35 unsignedLongValue];

      if (unsignedLongValue2 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeOSLogs"}];
      }
    }

    else
    {
    }

    v37 = [dictionaryCopy valueForKey:@"includeOSLogs"];
    [v11 setIncludeOSLogs:{objc_msgSend(v37, "BOOLValue")}];
  }

  v38 = [dictionaryCopy valueForKey:@"includeOSSignposts"];

  if (v38)
  {
    v39 = [dictionaryCopy valueForKey:@"includeOSSignposts"];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if ((v40 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeOSSignposts"}];
    }

    v41 = [dictionaryCopy valueForKey:@"includeOSSignposts"];
    if ([v41 unsignedLongValue])
    {
      v42 = [dictionaryCopy valueForKey:@"includeOSSignposts"];
      unsignedLongValue3 = [v42 unsignedLongValue];

      if (unsignedLongValue3 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeOSSignposts"}];
      }
    }

    else
    {
    }

    v44 = [dictionaryCopy valueForKey:@"includeOSSignposts"];
    [v11 setIncludeOSSignposts:{objc_msgSend(v44, "BOOLValue")}];
  }

  v45 = [dictionaryCopy valueForKey:@"traceTimeoutS"];

  if (v45)
  {
    v46 = [dictionaryCopy valueForKey:@"traceTimeoutS"];
    objc_opt_class();
    v47 = objc_opt_isKindOfClass();

    if ((v47 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"traceTimeoutS"}];
    }

    v48 = [dictionaryCopy valueForKey:@"traceTimeoutS"];
    [v11 setTraceTimeoutS:{objc_msgSend(v48, "unsignedLongValue")}];
  }

  v49 = [dictionaryCopy valueForKey:@"useTraceRecord"];

  if (v49)
  {
    v50 = [dictionaryCopy valueForKey:@"useTraceRecord"];
    objc_opt_class();
    v51 = objc_opt_isKindOfClass();

    if ((v51 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"useTraceRecord"}];
    }

    v52 = [dictionaryCopy valueForKey:@"useTraceRecord"];
    if ([v52 unsignedLongValue])
    {
      v53 = [dictionaryCopy valueForKey:@"useTraceRecord"];
      unsignedLongValue4 = [v53 unsignedLongValue];

      if (unsignedLongValue4 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"useTraceRecord"}];
      }
    }

    else
    {
    }

    v55 = [dictionaryCopy valueForKey:@"useTraceRecord"];
    [v11 setUseTraceRecord:{objc_msgSend(v55, "BOOLValue")}];
  }

  v56 = [dictionaryCopy valueForKey:@"traceDurationSecs"];

  if (v56)
  {
    v57 = [dictionaryCopy valueForKey:@"traceDurationSecs"];
    objc_opt_class();
    v58 = objc_opt_isKindOfClass();

    if ((v58 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"traceDurationSecs"}];
    }

    v59 = [dictionaryCopy valueForKey:@"traceDurationSecs"];
    [v11 setTraceDurationSecs:{objc_msgSend(v59, "unsignedLongValue")}];
  }

  v60 = [dictionaryCopy valueForKey:@"skipNotification"];

  if (v60)
  {
    v61 = [dictionaryCopy valueForKey:@"skipNotification"];
    objc_opt_class();
    v62 = objc_opt_isKindOfClass();

    if ((v62 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"skipNotification"}];
    }

    v63 = [dictionaryCopy valueForKey:@"skipNotification"];
    if ([v63 unsignedLongValue])
    {
      v64 = [dictionaryCopy valueForKey:@"skipNotification"];
      unsignedLongValue5 = [v64 unsignedLongValue];

      if (unsignedLongValue5 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"skipNotification"}];
      }
    }

    else
    {
    }

    v66 = [dictionaryCopy valueForKey:@"skipNotification"];
    [v11 setSkipNotification:{objc_msgSend(v66, "BOOLValue")}];
  }

  v67 = [dictionaryCopy valueForKey:@"includeKernelStacks"];

  if (v67)
  {
    v68 = [dictionaryCopy valueForKey:@"includeKernelStacks"];
    objc_opt_class();
    v69 = objc_opt_isKindOfClass();

    if ((v69 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeKernelStacks"}];
    }

    v70 = [dictionaryCopy valueForKey:@"includeKernelStacks"];
    if ([v70 unsignedLongValue])
    {
      v71 = [dictionaryCopy valueForKey:@"includeKernelStacks"];
      unsignedLongValue6 = [v71 unsignedLongValue];

      if (unsignedLongValue6 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"includeKernelStacks"}];
      }
    }

    else
    {
    }

    v73 = [dictionaryCopy valueForKey:@"includeKernelStacks"];
    [v11 setIncludeKernelStacks:{objc_msgSend(v73, "BOOLValue")}];
  }

  v74 = [dictionaryCopy valueForKey:@"kernelBufferSizeMB"];

  if (v74)
  {
    v75 = [dictionaryCopy valueForKey:@"kernelBufferSizeMB"];
    objc_opt_class();
    v76 = objc_opt_isKindOfClass();

    if ((v76 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"kernelBufferSizeMB"}];
    }

    v77 = [dictionaryCopy valueForKey:@"kernelBufferSizeMB"];
    [v11 setKernelBufferSizeMB:{objc_msgSend(v77, "unsignedLongValue")}];
  }

  v78 = [dictionaryCopy valueForKey:@"kernelBufferDrainRateMS"];

  if (v78)
  {
    v79 = [dictionaryCopy valueForKey:@"kernelBufferDrainRateMS"];
    objc_opt_class();
    v80 = objc_opt_isKindOfClass();

    if ((v80 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned long type.", @"kernelBufferDrainRateMS"}];
    }

    v81 = [dictionaryCopy valueForKey:@"kernelBufferDrainRateMS"];
    [v11 setKernelBufferDrainRateMS:{objc_msgSend(v81, "unsignedLongValue")}];
  }

  v82 = [dictionaryCopy valueForKey:@"kernelBufferDrainQoS"];

  if (v82)
  {
    v83 = [dictionaryCopy valueForKey:@"kernelBufferDrainQoS"];
    objc_opt_class();
    v84 = objc_opt_isKindOfClass();

    if ((v84 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an unsigned integer type.", @"kernelBufferDrainQoS"}];
    }

    v85 = [dictionaryCopy valueForKey:@"kernelBufferDrainQoS"];
    [v11 setKernelBufferDrainQoS:{objc_msgSend(v85, "unsignedIntValue")}];
  }

  v86 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];

  if (v86)
  {
    v87 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];
    objc_opt_class();
    v88 = objc_opt_isKindOfClass();

    if ((v88 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"enableSwiftUITracing"}];
    }

    v89 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];
    if ([v89 unsignedLongValue])
    {
      v90 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];
      unsignedLongValue7 = [v90 unsignedLongValue];

      if (unsignedLongValue7 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"enableSwiftUITracing"}];
      }
    }

    else
    {
    }

    v92 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];
    [v11 setEnableSwiftUITracing:{objc_msgSend(v92, "BOOLValue")}];
  }

  v93 = [dictionaryCopy valueForKey:@"traceRecordArgs"];

  if (v93)
  {
    v135 = v11;
    v94 = [dictionaryCopy valueForKey:@"traceRecordArgs"];
    objc_opt_class();
    v95 = objc_opt_isKindOfClass();

    if ((v95 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not an array type.", @"traceRecordArgs"}];
    }

    v136 = dictionaryCopy;
    [dictionaryCopy valueForKey:@"traceRecordArgs"];
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

    dictionaryCopy = v136;
    v4 = MEMORY[0x277CBE660];
  }

  if ([v11 useTraceRecord])
  {
    [v11 setSymbolicate:0];
    [v11 setOverrideSymbolicate:0];
  }

  v103 = [dictionaryCopy valueForKey:@"symbolicate"];

  if (v103)
  {
    v104 = [dictionaryCopy valueForKey:@"symbolicate"];
    objc_opt_class();
    v105 = objc_opt_isKindOfClass();

    if ((v105 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"symbolicate"}];
    }

    v106 = [dictionaryCopy valueForKey:@"symbolicate"];
    if ([v106 unsignedLongValue])
    {
      v107 = [dictionaryCopy valueForKey:@"symbolicate"];
      unsignedLongValue8 = [v107 unsignedLongValue];

      if (unsignedLongValue8 != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*v4 format:{@"%@ is not a BOOLean type.", @"symbolicate"}];
      }
    }

    else
    {
    }

    v109 = [dictionaryCopy valueForKey:@"symbolicate"];
    [v11 setSymbolicate:{objc_msgSend(v109, "BOOLValue")}];
  }

  v110 = [dictionaryCopy valueForKey:@"traceDirectoryURL"];

  if (v110)
  {
    v111 = [dictionaryCopy valueForKey:@"traceDirectoryURL"];
    objc_opt_class();
    v112 = objc_opt_isKindOfClass();

    if ((v112 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceDirectoryURL is not a string type."];
    }

    v113 = MEMORY[0x277CBEBC0];
    v114 = [dictionaryCopy valueForKey:@"traceDirectoryURL"];
    v115 = [v113 fileURLWithPath:v114];
    [v11 setTraceDirectoryURL:v115];
  }

  v116 = [dictionaryCopy valueForKey:@"traceType"];

  if (v116)
  {
    v117 = [dictionaryCopy valueForKey:@"traceType"];
    objc_opt_class();
    v118 = objc_opt_isKindOfClass();

    if ((v118 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceType is not a string type."];
    }

    v119 = [dictionaryCopy valueForKey:@"traceType"];
    [v11 setTraceType:traceTypeForString(v119)];
  }

  v120 = [dictionaryCopy valueForKey:@"traceGroups"];

  if (v120)
  {
    v121 = [dictionaryCopy valueForKey:@"traceGroups"];
    objc_opt_class();
    v122 = objc_opt_isKindOfClass();

    if ((v122 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*v4 format:@"traceGroups is not an NSArray type."];
    }

    v123 = [dictionaryCopy valueForKey:@"traceGroups"];
    array = [MEMORY[0x277CBEB18] array];
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
            [array addObject:v131];
          }
        }

        v127 = [v125 countByEnumeratingWithState:&v137 objects:v145 count:16];
      }

      while (v127);
    }

    if ([array count])
    {
      [v11 setTraceGroups:array];
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

  ownerName = [(PTTraceConfig *)v2 ownerName];

  if (!ownerName)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v2 setOwnerName:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)configWithTracePlanName:(id)name
{
  nameCopy = name;
  v4 = +[PTTraceConfig _defaultTraceRecordConfig];
  [v4 setPlanNameOrPath:nameCopy];

  return v4;
}

+ (id)configWithTracePlanURL:(id)l
{
  lCopy = l;
  v4 = +[PTTraceConfig _defaultTraceRecordConfig];
  path = [lCopy path];

  [v4 setPlanNameOrPath:path];

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
  connection = [*(v10 + 5) connection];

  if (!connection)
  {
    [*(v10 + 5) _initConnection];
  }

  _getRemoteObjectProxy = [*(v10 + 5) _getRemoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__PTTraceConfig_getCurrentConfig__block_invoke;
  v8[3] = &unk_279A18C40;
  v8[4] = buf;
  v8[5] = self;
  [_getRemoteObjectProxy getCurrentStoredConfig:v8];

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
  connection = [(PTTraceConfig *)v3 connection];

  if (!connection)
  {
    [(PTTraceConfig *)v3 _initConnection];
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  _getRemoteObjectProxy = [(PTTraceConfig *)v3 _getRemoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__PTTraceConfig_resetConfig__block_invoke;
  v7[3] = &unk_279A18C68;
  v7[4] = buf;
  [_getRemoteObjectProxy resetConfig:v7];

  [(PTTraceConfig *)v3 _invalidateSession];
  LOBYTE(_getRemoteObjectProxy) = v9[24];
  _Block_object_dispose(buf, 8);

  return _getRemoteObjectProxy;
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
  connection = [(PTTraceConfig *)v3 connection];

  if (!connection)
  {
    [(PTTraceConfig *)v3 _initConnection];
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  _getRemoteObjectProxy = [(PTTraceConfig *)v3 _getRemoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PTTraceConfig_isInRecordingWorkflow__block_invoke;
  v7[3] = &unk_279A18C90;
  v7[4] = buf;
  [_getRemoteObjectProxy isInRecordingWorkflow:v7];

  [(PTTraceConfig *)v3 _invalidateSession];
  LOBYTE(_getRemoteObjectProxy) = v9[24];
  _Block_object_dispose(buf, 8);

  return _getRemoteObjectProxy;
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

  connection = [(PTTraceConfig *)self connection];

  if (!connection)
  {
    [(PTTraceConfig *)self _initConnection];
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x2020000000;
  v12 = 0;
  _getRemoteObjectProxy = [(PTTraceConfig *)self _getRemoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__PTTraceConfig_storeConfig__block_invoke;
  v8[3] = &unk_279A18C68;
  v8[4] = buf;
  [_getRemoteObjectProxy applyConfig:self withError:v8];

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
  connection = [(PTTraceConfig *)self connection];
  [connection resume];
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
  connection = [(PTTraceConfig *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_185];

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
  connection = [(PTTraceConfig *)self connection];

  if (connection)
  {
    connection2 = [(PTTraceConfig *)self connection];
    [connection2 invalidate];
  }
}

- (PTTraceConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PTTraceConfig *)self init];
  if (v5)
  {
    -[PTTraceConfig setSymbolicate:](v5, "setSymbolicate:", [coderCopy decodeBoolForKey:@"symbolicate"]);
    -[PTTraceConfig setCallstackSamplingRateMS:](v5, "setCallstackSamplingRateMS:", [coderCopy decodeIntForKey:@"callstackSamplingRateMS"]);
    v6 = MEMORY[0x277CBEB18];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"traceGroups"];
    v11 = [v6 arrayWithArray:v10];
    [(PTTraceConfig *)v5 setTraceGroups:v11];

    -[PTTraceConfig setTraceType:](v5, "setTraceType:", [coderCopy decodeIntForKey:@"traceType"]);
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceDirectoryURL"];
    [(PTTraceConfig *)v5 setTraceDirectoryURL:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceName"];
    [(PTTraceConfig *)v5 setTraceName:v13];

    -[PTTraceConfig setCompressWhenFinished:](v5, "setCompressWhenFinished:", [coderCopy decodeBoolForKey:@"compressWhenFinished"]);
    -[PTTraceConfig setIncludeOSLogs:](v5, "setIncludeOSLogs:", [coderCopy decodeBoolForKey:@"includeOSLogs"]);
    -[PTTraceConfig setIncludeOSSignposts:](v5, "setIncludeOSSignposts:", [coderCopy decodeBoolForKey:@"includeOSSignposts"]);
    -[PTTraceConfig setTraceTimeoutS:](v5, "setTraceTimeoutS:", [coderCopy decodeIntForKey:@"traceTimeoutS"]);
    -[PTTraceConfig setSkipNotification:](v5, "setSkipNotification:", [coderCopy decodeBoolForKey:@"skipNotification"]);
    -[PTTraceConfig setIncludeKernelStacks:](v5, "setIncludeKernelStacks:", [coderCopy decodeBoolForKey:@"includeKernelStacks"]);
    -[PTTraceConfig setKernelBufferSizeMB:](v5, "setKernelBufferSizeMB:", [coderCopy decodeIntForKey:@"kernelBufferSizeMB"]);
    -[PTTraceConfig setKernelBufferDrainQoS:](v5, "setKernelBufferDrainQoS:", [coderCopy decodeIntForKey:@"kernelBufferDrainQoS"]);
    -[PTTraceConfig setKernelBufferDrainRateMS:](v5, "setKernelBufferDrainRateMS:", [coderCopy decodeIntForKey:@"kernelBufferDrainRateMS"]);
    -[PTTraceConfig setOwnerPID:](v5, "setOwnerPID:", [coderCopy decodeIntForKey:@"ownerPID"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerName"];
    [(PTTraceConfig *)v5 setOwnerName:v14];

    -[PTTraceConfig setSource:](v5, "setSource:", [coderCopy decodeIntForKey:@"source"]);
    -[PTTraceConfig setTraceDurationSecs:](v5, "setTraceDurationSecs:", [coderCopy decodeIntForKey:@"traceDurationSecs"]);
    -[PTTraceConfig setUseTraceRecord:](v5, "setUseTraceRecord:", [coderCopy decodeBoolForKey:@"useTraceRecord"]);
    -[PTTraceConfig setEnableSwiftUITracing:](v5, "setEnableSwiftUITracing:", [coderCopy decodeBoolForKey:@"enableSwiftUITracing"]);
    v15 = MEMORY[0x277CBEB18];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"traceRecordArgs"];
    v20 = [v15 arrayWithArray:v19];
    [(PTTraceConfig *)v5 setTraceRecordArgs:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planNameOrPath"];
    [(PTTraceConfig *)v5 setPlanNameOrPath:v21];

    -[PTTraceConfig setOverrideSymbolicate:](v5, "setOverrideSymbolicate:", [coderCopy decodeBoolForKey:@"overrideSymbolicate"]);
    -[PTTraceConfig setOverrideIncludeOSSignposts:](v5, "setOverrideIncludeOSSignposts:", [coderCopy decodeBoolForKey:@"overrideIncludeOSSignposts"]);
    -[PTTraceConfig setOverrideIncludeOSLogs:](v5, "setOverrideIncludeOSLogs:", [coderCopy decodeBoolForKey:@"overrideIncludeOSLogs"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[PTTraceConfig symbolicate](self forKey:{"symbolicate"), @"symbolicate"}];
  [coderCopy encodeInt:-[PTTraceConfig callstackSamplingRateMS](self forKey:{"callstackSamplingRateMS"), @"callstackSamplingRateMS"}];
  traceGroups = [(PTTraceConfig *)self traceGroups];
  [coderCopy encodeObject:traceGroups forKey:@"traceGroups"];

  [coderCopy encodeInt:-[PTTraceConfig traceType](self forKey:{"traceType"), @"traceType"}];
  traceDirectoryURL = [(PTTraceConfig *)self traceDirectoryURL];
  [coderCopy encodeObject:traceDirectoryURL forKey:@"traceDirectoryURL"];

  traceName = [(PTTraceConfig *)self traceName];
  [coderCopy encodeObject:traceName forKey:@"traceName"];

  [coderCopy encodeBool:-[PTTraceConfig compressWhenFinished](self forKey:{"compressWhenFinished"), @"compressWhenFinished"}];
  [coderCopy encodeBool:-[PTTraceConfig includeOSLogs](self forKey:{"includeOSLogs"), @"includeOSLogs"}];
  [coderCopy encodeBool:-[PTTraceConfig includeOSSignposts](self forKey:{"includeOSSignposts"), @"includeOSSignposts"}];
  [coderCopy encodeInt:-[PTTraceConfig traceTimeoutS](self forKey:{"traceTimeoutS"), @"traceTimeoutS"}];
  [coderCopy encodeBool:-[PTTraceConfig skipNotification](self forKey:{"skipNotification"), @"skipNotification"}];
  [coderCopy encodeBool:-[PTTraceConfig includeKernelStacks](self forKey:{"includeKernelStacks"), @"includeKernelStacks"}];
  [coderCopy encodeInt:-[PTTraceConfig kernelBufferSizeMB](self forKey:{"kernelBufferSizeMB"), @"kernelBufferSizeMB"}];
  [coderCopy encodeInt:-[PTTraceConfig kernelBufferDrainQoS](self forKey:{"kernelBufferDrainQoS"), @"kernelBufferDrainQoS"}];
  [coderCopy encodeInt:-[PTTraceConfig kernelBufferDrainRateMS](self forKey:{"kernelBufferDrainRateMS"), @"kernelBufferDrainRateMS"}];
  [coderCopy encodeInt:-[PTTraceConfig ownerPID](self forKey:{"ownerPID"), @"ownerPID"}];
  ownerName = [(PTTraceConfig *)self ownerName];
  [coderCopy encodeObject:ownerName forKey:@"ownerName"];

  [coderCopy encodeInt:-[PTTraceConfig source](self forKey:{"source"), @"source"}];
  [coderCopy encodeInt:-[PTTraceConfig traceDurationSecs](self forKey:{"traceDurationSecs"), @"traceDurationSecs"}];
  [coderCopy encodeBool:-[PTTraceConfig useTraceRecord](self forKey:{"useTraceRecord"), @"useTraceRecord"}];
  [coderCopy encodeBool:-[PTTraceConfig enableSwiftUITracing](self forKey:{"enableSwiftUITracing"), @"enableSwiftUITracing"}];
  traceRecordArgs = [(PTTraceConfig *)self traceRecordArgs];
  [coderCopy encodeObject:traceRecordArgs forKey:@"traceRecordArgs"];

  planNameOrPath = [(PTTraceConfig *)self planNameOrPath];
  [coderCopy encodeObject:planNameOrPath forKey:@"planNameOrPath"];

  [coderCopy encodeBool:-[PTTraceConfig overrideSymbolicate](self forKey:{"overrideSymbolicate"), @"overrideSymbolicate"}];
  [coderCopy encodeBool:-[PTTraceConfig overrideIncludeOSSignposts](self forKey:{"overrideIncludeOSSignposts"), @"overrideIncludeOSSignposts"}];
  [coderCopy encodeBool:-[PTTraceConfig overrideIncludeOSLogs](self forKey:{"overrideIncludeOSLogs"), @"overrideIncludeOSLogs"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v4 setSymbolicate:[(PTTraceConfig *)self symbolicate]];
  [(PTTraceConfig *)v4 setCallstackSamplingRateMS:[(PTTraceConfig *)self callstackSamplingRateMS]];
  traceGroups = [(PTTraceConfig *)self traceGroups];
  v6 = [traceGroups copy];
  [(PTTraceConfig *)v4 setTraceGroups:v6];

  [(PTTraceConfig *)v4 setTraceType:[(PTTraceConfig *)self traceType]];
  traceDirectoryURL = [(PTTraceConfig *)self traceDirectoryURL];
  v8 = [traceDirectoryURL copy];
  [(PTTraceConfig *)v4 setTraceDirectoryURL:v8];

  traceName = [(PTTraceConfig *)self traceName];
  v10 = [traceName copy];
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
  traceRecordArgs = [(PTTraceConfig *)self traceRecordArgs];
  v12 = [traceRecordArgs copy];
  [(PTTraceConfig *)v4 setTraceRecordArgs:v12];

  [(PTTraceConfig *)v4 setOwnerPID:getpid()];
  proc_name([(PTTraceConfig *)v4 ownerPID], buffer, 0x21u);
  v13 = [MEMORY[0x277CCACA8] stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v4 setOwnerName:v13];

  ownerName = [(PTTraceConfig *)v4 ownerName];

  if (!ownerName)
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
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    if (isAppleInternal_pred != -1)
    {
      +[PTTraceConfig(ControlCenter) isControlCenterModuleAvailable];
    }

    bOOLValue = isAppleInternal_isAppleInternal;
  }

  v6 = *MEMORY[0x277D85DE8];
  return bOOLValue & 1;
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

+ (void)setUserSelectedTracePlanName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = +[PTTraceConfig availableTracePlanNames];
  v6 = [v5 containsObject:nameCopy];

  if (v6)
  {
    userSelectedTracePlanName = [self userSelectedTracePlanName];
    v8 = [nameCopy isEqualToString:userSelectedTracePlanName];
    v9 = _controlCenterHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v13 = 138543362;
        v14 = nameCopy;
        _os_log_impl(&dword_25E3D3000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ is already the selected trace plan", &v13, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        v13 = 138543362;
        v14 = nameCopy;
        _os_log_impl(&dword_25E3D3000, v9, OS_LOG_TYPE_DEFAULT, "Writing selected trace plan name to preferences: %{public}@", &v13, 0xCu);
      }

      v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PerformanceTrace.ControlCenterPrefs"];
      [v11 setValue:nameCopy forKey:@"ControlCenterPerformanceTraceSelectedTracePlanName"];

      PTServicesPostStateDidChangeNotification();
    }
  }

  else
  {
    userSelectedTracePlanName = _controlCenterHandle();
    if (os_log_type_enabled(userSelectedTracePlanName, OS_LOG_TYPE_ERROR))
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

+ (void)setUserSpecifiedCustomTracePlanArguments:(id)arguments
{
  v9 = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  v4 = _controlCenterHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = argumentsCopy;
    _os_log_impl(&dword_25E3D3000, v4, OS_LOG_TYPE_DEFAULT, "Writing custom trace plan arguments to preferences: %{public}@", &v7, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PerformanceTrace.ControlCenterPrefs"];
  [v5 setValue:argumentsCopy forKey:@"ControlCenterPerformanceTraceCustomTracePlanArguments"];

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

+ (id)displayNameForTracePlanName:(id)name
{
  nameCopy = name;
  if (displayNameForTracePlanName__onceToken != -1)
  {
    +[PTTraceConfig(ControlCenter) displayNameForTracePlanName:];
  }

  v4 = +[PTTraceConfig availableTracePlanNames];
  v5 = [v4 containsObject:nameCopy];

  if (v5)
  {
    v6 = [displayNameForTracePlanName__tracePlanNameToDisplayNameMap objectForKeyedSubscript:nameCopy];
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

  v6 = nameCopy;
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
  if (![self isInRecordingWorkflow])
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
          bOOLValue = [v7 BOOLValue];
          v10 = @"not locked";
          if (bOOLValue)
          {
            v10 = @"locked";
          }

          *buf = 138543362;
          v16 = v10;
          _os_log_impl(&dword_25E3D3000, v8, OS_LOG_TYPE_DEFAULT, "Global settings are %{public}@ due to passive instrumentation locked setting", buf, 0xCu);
        }

        bOOLValue2 = [v7 BOOLValue];
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

    bOOLValue2 = 0;
    goto LABEL_16;
  }

  v2 = _controlCenterHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E3D3000, v2, OS_LOG_TYPE_DEFAULT, "Global settings are locked since we are in recording workflow", buf, 2u);
  }

  bOOLValue2 = 1;
LABEL_17:

  v11 = *MEMORY[0x277D85DE8];
  return bOOLValue2;
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