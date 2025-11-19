@interface PTTraceConfig
+ (BOOL)isInRecordingWorkflow;
+ (BOOL)resetConfig;
+ (PTTraceConfig)configWithDictionary:(id)a3;
+ (PTTraceConfig)configWithTemplate:(unint64_t)a3;
+ (PTTraceConfig)configWithTracePlanName:(id)a3;
+ (PTTraceConfig)configWithTracePlanURL:(id)a3;
+ (id)_defaultTraceRecordConfig;
+ (id)getCurrentConfig;
- (BOOL)storeConfig;
- (PTTraceConfig)initWithCoder:(id)a3;
- (id)_getRemoteObjectProxy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_initConnection;
- (void)_invalidateSession;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PTTraceConfig

+ (PTTraceConfig)configWithTemplate:(unint64_t)a3
{
  v4 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v4 setSymbolicate:1];
  [(PTTraceConfig *)v4 setCallstackSamplingRateMS:1];
  [(PTTraceConfig *)v4 setTraceType:1];
  v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/"];
  [(PTTraceConfig *)v4 setTraceDirectoryURL:v5];

  [(PTTraceConfig *)v4 setTraceName:0];
  v6 = [NSMutableArray arrayWithObjects:&off_10001A670, &off_10001A688, &off_10001A6A0, &off_10001A6B8, &off_10001A6D0, 0];
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
    [NSMutableArray arrayWithObjects:&off_10001A670, &off_10001A688, &off_10001A6A0, &off_10001A6B8, &off_10001A6D0, 0];
    v7 = LABEL_9:;
    [(PTTraceConfig *)v4 setTraceGroups:v7];
    goto LABEL_12;
  }

  if (a3 == 3)
  {
    [NSMutableArray arrayWithObjects:&off_10001A6E8, &off_10001A688, &off_10001A6D0, 0, v12, v13];
    goto LABEL_9;
  }

  v7 = sub_10000AF70();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10000F470();
  }

LABEL_12:

  [(PTTraceConfig *)v4 setOwnerPID:getpid()];
  proc_name([(PTTraceConfig *)v4 ownerPID], buffer, 0x21u);
  v8 = [NSString stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v4 setOwnerName:v8];

  v9 = [(PTTraceConfig *)v4 ownerName];

  if (!v9)
  {
    v10 = [NSString stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v4 setOwnerName:v10];
  }

  [(PTTraceConfig *)v4 setSource:4];

  return v4;
}

+ (PTTraceConfig)configWithDictionary:(id)a3
{
  v3 = a3;
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [NSException raise:NSInvalidArgumentException format:@"traceConfigurationDictionary is not a valid dictionary."];
  }

  v4 = [v3 valueForKey:@"traceTemplate"];

  if (!v4)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v5 = [v3 valueForKey:@"traceTemplate"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"traceTemplate is not a string."];
  }

  v7 = [v3 valueForKey:@"traceTemplate"];
  v8 = traceConfigTemplateForString(v7);

  if (v8)
  {
    v9 = v8;
LABEL_10:
    v10 = [PTTraceConfig configWithTemplate:v9];
    goto LABEL_12;
  }

  v11 = [v3 valueForKey:@"traceTemplate"];
  [NSException raise:NSInvalidArgumentException format:@"%@ is not a valid trace template.", v11];

  v10 = 0;
LABEL_12:
  v12 = [v3 valueForKey:@"callstackSamplingRateMS"];

  if (v12)
  {
    v13 = [v3 valueForKey:@"callstackSamplingRateMS"];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if ((v14 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"callstackSamplingRateMS"];
    }

    v15 = [v3 valueForKey:@"callstackSamplingRateMS"];
    -[PTTraceConfig setCallstackSamplingRateMS:](v10, "setCallstackSamplingRateMS:", [v15 unsignedLongValue]);
  }

  v16 = [v3 valueForKey:@"traceName"];

  if (v16)
  {
    v17 = [v3 valueForKey:@"traceName"];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if ((v18 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a string type.", @"traceName"];
    }

    v19 = [v3 valueForKey:@"traceName"];
    v20 = [v19 copy];
    [(PTTraceConfig *)v10 setTraceName:v20];
  }

  v21 = [v3 valueForKey:@"compressWhenFinished"];

  if (v21)
  {
    v22 = [v3 valueForKey:@"compressWhenFinished"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"compressWhenFinished"];
    }

    v24 = [v3 valueForKey:@"compressWhenFinished"];
    if ([v24 unsignedLongValue])
    {
      v25 = [v3 valueForKey:@"compressWhenFinished"];
      v26 = [v25 unsignedLongValue];

      if (v26 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"compressWhenFinished"];
      }
    }

    else
    {
    }

    v27 = [v3 valueForKey:@"compressWhenFinished"];
    -[PTTraceConfig setCompressWhenFinished:](v10, "setCompressWhenFinished:", [v27 BOOLValue]);
  }

  v28 = [v3 valueForKey:@"includeOSLogs"];

  if (v28)
  {
    v29 = [v3 valueForKey:@"includeOSLogs"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();

    if ((v30 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeOSLogs"];
    }

    v31 = [v3 valueForKey:@"includeOSLogs"];
    if ([v31 unsignedLongValue])
    {
      v32 = [v3 valueForKey:@"includeOSLogs"];
      v33 = [v32 unsignedLongValue];

      if (v33 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeOSLogs"];
      }
    }

    else
    {
    }

    v34 = [v3 valueForKey:@"includeOSLogs"];
    -[PTTraceConfig setIncludeOSLogs:](v10, "setIncludeOSLogs:", [v34 BOOLValue]);
  }

  v35 = [v3 valueForKey:@"includeOSSignposts"];

  if (v35)
  {
    v36 = [v3 valueForKey:@"includeOSSignposts"];
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    if ((v37 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeOSSignposts"];
    }

    v38 = [v3 valueForKey:@"includeOSSignposts"];
    if ([v38 unsignedLongValue])
    {
      v39 = [v3 valueForKey:@"includeOSSignposts"];
      v40 = [v39 unsignedLongValue];

      if (v40 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeOSSignposts"];
      }
    }

    else
    {
    }

    v41 = [v3 valueForKey:@"includeOSSignposts"];
    -[PTTraceConfig setIncludeOSSignposts:](v10, "setIncludeOSSignposts:", [v41 BOOLValue]);
  }

  v42 = [v3 valueForKey:@"traceTimeoutS"];

  if (v42)
  {
    v43 = [v3 valueForKey:@"traceTimeoutS"];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();

    if ((v44 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"traceTimeoutS"];
    }

    v45 = [v3 valueForKey:@"traceTimeoutS"];
    -[PTTraceConfig setTraceTimeoutS:](v10, "setTraceTimeoutS:", [v45 unsignedLongValue]);
  }

  v46 = [v3 valueForKey:@"useTraceRecord"];

  if (v46)
  {
    v47 = [v3 valueForKey:@"useTraceRecord"];
    objc_opt_class();
    v48 = objc_opt_isKindOfClass();

    if ((v48 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"useTraceRecord"];
    }

    v49 = [v3 valueForKey:@"useTraceRecord"];
    if ([v49 unsignedLongValue])
    {
      v50 = [v3 valueForKey:@"useTraceRecord"];
      v51 = [v50 unsignedLongValue];

      if (v51 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"useTraceRecord"];
      }
    }

    else
    {
    }

    v52 = [v3 valueForKey:@"useTraceRecord"];
    -[PTTraceConfig setUseTraceRecord:](v10, "setUseTraceRecord:", [v52 BOOLValue]);
  }

  v53 = [v3 valueForKey:@"traceDurationSecs"];

  if (v53)
  {
    v54 = [v3 valueForKey:@"traceDurationSecs"];
    objc_opt_class();
    v55 = objc_opt_isKindOfClass();

    if ((v55 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"traceDurationSecs"];
    }

    v56 = [v3 valueForKey:@"traceDurationSecs"];
    -[PTTraceConfig setTraceDurationSecs:](v10, "setTraceDurationSecs:", [v56 unsignedLongValue]);
  }

  v57 = [v3 valueForKey:@"skipNotification"];

  if (v57)
  {
    v58 = [v3 valueForKey:@"skipNotification"];
    objc_opt_class();
    v59 = objc_opt_isKindOfClass();

    if ((v59 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"skipNotification"];
    }

    v60 = [v3 valueForKey:@"skipNotification"];
    if ([v60 unsignedLongValue])
    {
      v61 = [v3 valueForKey:@"skipNotification"];
      v62 = [v61 unsignedLongValue];

      if (v62 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"skipNotification"];
      }
    }

    else
    {
    }

    v63 = [v3 valueForKey:@"skipNotification"];
    -[PTTraceConfig setSkipNotification:](v10, "setSkipNotification:", [v63 BOOLValue]);
  }

  v64 = [v3 valueForKey:@"includeKernelStacks"];

  if (v64)
  {
    v65 = [v3 valueForKey:@"includeKernelStacks"];
    objc_opt_class();
    v66 = objc_opt_isKindOfClass();

    if ((v66 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeKernelStacks"];
    }

    v67 = [v3 valueForKey:@"includeKernelStacks"];
    if ([v67 unsignedLongValue])
    {
      v68 = [v3 valueForKey:@"includeKernelStacks"];
      v69 = [v68 unsignedLongValue];

      if (v69 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeKernelStacks"];
      }
    }

    else
    {
    }

    v70 = [v3 valueForKey:@"includeKernelStacks"];
    -[PTTraceConfig setIncludeKernelStacks:](v10, "setIncludeKernelStacks:", [v70 BOOLValue]);
  }

  v71 = [v3 valueForKey:@"kernelBufferSizeMB"];

  if (v71)
  {
    v72 = [v3 valueForKey:@"kernelBufferSizeMB"];
    objc_opt_class();
    v73 = objc_opt_isKindOfClass();

    if ((v73 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"kernelBufferSizeMB"];
    }

    v74 = [v3 valueForKey:@"kernelBufferSizeMB"];
    -[PTTraceConfig setKernelBufferSizeMB:](v10, "setKernelBufferSizeMB:", [v74 unsignedLongValue]);
  }

  v75 = [v3 valueForKey:@"kernelBufferDrainRateMS"];

  if (v75)
  {
    v76 = [v3 valueForKey:@"kernelBufferDrainRateMS"];
    objc_opt_class();
    v77 = objc_opt_isKindOfClass();

    if ((v77 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"kernelBufferDrainRateMS"];
    }

    v78 = [v3 valueForKey:@"kernelBufferDrainRateMS"];
    -[PTTraceConfig setKernelBufferDrainRateMS:](v10, "setKernelBufferDrainRateMS:", [v78 unsignedLongValue]);
  }

  v79 = [v3 valueForKey:@"kernelBufferDrainQoS"];

  if (v79)
  {
    v80 = [v3 valueForKey:@"kernelBufferDrainQoS"];
    objc_opt_class();
    v81 = objc_opt_isKindOfClass();

    if ((v81 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned integer type.", @"kernelBufferDrainQoS"];
    }

    v82 = [v3 valueForKey:@"kernelBufferDrainQoS"];
    -[PTTraceConfig setKernelBufferDrainQoS:](v10, "setKernelBufferDrainQoS:", [v82 unsignedIntValue]);
  }

  v83 = [v3 valueForKey:@"enableSwiftUITracing"];

  if (v83)
  {
    v84 = [v3 valueForKey:@"enableSwiftUITracing"];
    objc_opt_class();
    v85 = objc_opt_isKindOfClass();

    if ((v85 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"enableSwiftUITracing"];
    }

    v86 = [v3 valueForKey:@"enableSwiftUITracing"];
    if ([v86 unsignedLongValue])
    {
      v87 = [v3 valueForKey:@"enableSwiftUITracing"];
      v88 = [v87 unsignedLongValue];

      if (v88 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"enableSwiftUITracing"];
      }
    }

    else
    {
    }

    v89 = [v3 valueForKey:@"enableSwiftUITracing"];
    -[PTTraceConfig setEnableSwiftUITracing:](v10, "setEnableSwiftUITracing:", [v89 BOOLValue]);
  }

  v90 = [v3 valueForKey:@"traceRecordArgs"];

  if (v90)
  {
    v129 = v10;
    v91 = [v3 valueForKey:@"traceRecordArgs"];
    objc_opt_class();
    v92 = objc_opt_isKindOfClass();

    if ((v92 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an array type.", @"traceRecordArgs"];
    }

    v130 = v3;
    [v3 valueForKey:@"traceRecordArgs"];
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v93 = v138 = 0u;
    v94 = [v93 countByEnumeratingWithState:&v135 objects:v140 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v136;
      do
      {
        for (i = 0; i != v95; i = i + 1)
        {
          if (*v136 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = *(*(&v135 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [NSException raise:NSInvalidArgumentException format:@"%@ is not an array of strings.", @"traceRecordArgs"];
          }
        }

        v95 = [v93 countByEnumeratingWithState:&v135 objects:v140 count:16];
      }

      while (v95);
    }

    v10 = v129;
    [(PTTraceConfig *)v129 setTraceRecordArgs:v93];

    v3 = v130;
  }

  if ([(PTTraceConfig *)v10 useTraceRecord])
  {
    [(PTTraceConfig *)v10 setSymbolicate:0];
    [(PTTraceConfig *)v10 setOverrideSymbolicate:0];
  }

  v99 = [v3 valueForKey:@"symbolicate"];

  if (v99)
  {
    v100 = [v3 valueForKey:@"symbolicate"];
    objc_opt_class();
    v101 = objc_opt_isKindOfClass();

    if ((v101 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"symbolicate"];
    }

    v102 = [v3 valueForKey:@"symbolicate"];
    if ([v102 unsignedLongValue])
    {
      v103 = [v3 valueForKey:@"symbolicate"];
      v104 = [v103 unsignedLongValue];

      if (v104 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"symbolicate"];
      }
    }

    else
    {
    }

    v105 = [v3 valueForKey:@"symbolicate"];
    -[PTTraceConfig setSymbolicate:](v10, "setSymbolicate:", [v105 BOOLValue]);
  }

  v106 = [v3 valueForKey:@"traceDirectoryURL"];

  if (v106)
  {
    v107 = [v3 valueForKey:@"traceDirectoryURL"];
    objc_opt_class();
    v108 = objc_opt_isKindOfClass();

    if ((v108 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"traceDirectoryURL is not a string type."];
    }

    v109 = [v3 valueForKey:@"traceDirectoryURL"];
    v110 = [NSURL fileURLWithPath:v109];
    [(PTTraceConfig *)v10 setTraceDirectoryURL:v110];
  }

  v111 = [v3 valueForKey:@"traceType"];

  if (v111)
  {
    v112 = [v3 valueForKey:@"traceType"];
    objc_opt_class();
    v113 = objc_opt_isKindOfClass();

    if ((v113 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"traceType is not a string type."];
    }

    v114 = [v3 valueForKey:@"traceType"];
    [(PTTraceConfig *)v10 setTraceType:traceTypeForString(v114)];
  }

  v115 = [v3 valueForKey:@"traceGroups"];

  if (v115)
  {
    v116 = [v3 valueForKey:@"traceGroups"];
    objc_opt_class();
    v117 = objc_opt_isKindOfClass();

    if ((v117 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"traceGroups is not an NSArray type."];
    }

    v118 = [v3 valueForKey:@"traceGroups"];
    v119 = +[NSMutableArray array];
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v120 = v118;
    v121 = [v120 countByEnumeratingWithState:&v131 objects:v139 count:16];
    if (v121)
    {
      v122 = v121;
      v123 = *v132;
      do
      {
        for (j = 0; j != v122; j = j + 1)
        {
          if (*v132 != v123)
          {
            objc_enumerationMutation(v120);
          }

          v125 = *(*(&v131 + 1) + 8 * j);
          if (v125 && traceGroupForString(*(*(&v131 + 1) + 8 * j)))
          {
            v126 = [NSNumber numberWithUnsignedInteger:traceGroupForString(v125)];
            [v119 addObject:v126];
          }
        }

        v122 = [v120 countByEnumeratingWithState:&v131 objects:v139 count:16];
      }

      while (v122);
    }

    if ([v119 count])
    {
      [(PTTraceConfig *)v10 setTraceGroups:v119];
    }
  }

  [(PTTraceConfig *)v10 setSource:4];
  v127 = v10;

  return v10;
}

+ (id)_defaultTraceRecordConfig
{
  v2 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v2 setUseTraceRecord:1];
  [(PTTraceConfig *)v2 setTraceType:1];
  v3 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/"];
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
  v4 = [NSString stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v2 setOwnerName:v4];

  v5 = [(PTTraceConfig *)v2 ownerName];

  if (!v5)
  {
    v6 = [NSString stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v2 setOwnerName:v6];
  }

  return v2;
}

+ (PTTraceConfig)configWithTracePlanName:(id)a3
{
  v3 = a3;
  v4 = +[PTTraceConfig _defaultTraceRecordConfig];
  [v4 setPlanNameOrPath:v3];

  return v4;
}

+ (PTTraceConfig)configWithTracePlanURL:(id)a3
{
  v3 = a3;
  v4 = +[PTTraceConfig _defaultTraceRecordConfig];
  v5 = [v3 path];

  [v4 setPlanNameOrPath:v5];

  return v4;
}

+ (id)getCurrentConfig
{
  v3 = sub_10000AF70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Getting Current Config", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_10000C758;
  v13 = sub_10000C768;
  v14 = objc_alloc_init(PTTraceConfig);
  v4 = [*(v10 + 5) connection];

  if (!v4)
  {
    [*(v10 + 5) _initConnection];
  }

  v5 = [*(v10 + 5) _getRemoteObjectProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C770;
  v8[3] = &unk_100018D98;
  v8[4] = buf;
  v8[5] = a1;
  [v5 getCurrentStoredConfig:v8];

  [*(v10 + 5) _invalidateSession];
  v6 = *(v10 + 5);
  _Block_object_dispose(buf, 8);

  return v6;
}

+ (BOOL)resetConfig
{
  v2 = sub_10000AF70();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resetting config", buf, 2u);
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
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C98C;
  v7[3] = &unk_100018640;
  v7[4] = buf;
  [v5 resetConfig:v7];

  [(PTTraceConfig *)v3 _invalidateSession];
  LOBYTE(v5) = v9[24];
  _Block_object_dispose(buf, 8);

  return v5;
}

+ (BOOL)isInRecordingWorkflow
{
  v2 = sub_10000AF70();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Getting recording state config", buf, 2u);
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
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CB94;
  v7[3] = &unk_100018DC0;
  v7[4] = buf;
  [v5 isInRecordingWorkflow:v7];

  [(PTTraceConfig *)v3 _invalidateSession];
  LOBYTE(v5) = v9[24];
  _Block_object_dispose(buf, 8);

  return v5;
}

- (BOOL)storeConfig
{
  v3 = sub_10000AF70();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Storing config", buf, 2u);
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
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000CDDC;
  v8[3] = &unk_100018640;
  v8[4] = buf;
  [v5 applyConfig:self withError:v8];

  [(PTTraceConfig *)self _invalidateSession];
  v6 = v10[24];
  _Block_object_dispose(buf, 8);
  return v6;
}

- (void)_initConnection
{
  v5 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.PerformanceTrace.PerformanceTraceService"];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTServiceInterface];
  [v5 setRemoteObjectInterface:v3];
  [v5 setInvalidationHandler:&stru_100018DE0];
  [v5 setInterruptionHandler:&stru_100018E00];
  [(PTTraceConfig *)self setConnection:v5];
  v4 = [(PTTraceConfig *)self connection];
  [v4 resume];
}

- (id)_getRemoteObjectProxy
{
  v2 = [(PTTraceConfig *)self connection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018E20];

  return v3;
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
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"traceGroups"];
    v9 = [NSMutableArray arrayWithArray:v8];
    [(PTTraceConfig *)v5 setTraceGroups:v9];

    -[PTTraceConfig setTraceType:](v5, "setTraceType:", [v4 decodeIntForKey:@"traceType"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceDirectoryURL"];
    [(PTTraceConfig *)v5 setTraceDirectoryURL:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceName"];
    [(PTTraceConfig *)v5 setTraceName:v11];

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
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerName"];
    [(PTTraceConfig *)v5 setOwnerName:v12];

    -[PTTraceConfig setSource:](v5, "setSource:", [v4 decodeIntForKey:@"source"]);
    -[PTTraceConfig setTraceDurationSecs:](v5, "setTraceDurationSecs:", [v4 decodeIntForKey:@"traceDurationSecs"]);
    -[PTTraceConfig setUseTraceRecord:](v5, "setUseTraceRecord:", [v4 decodeBoolForKey:@"useTraceRecord"]);
    -[PTTraceConfig setEnableSwiftUITracing:](v5, "setEnableSwiftUITracing:", [v4 decodeBoolForKey:@"enableSwiftUITracing"]);
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"traceRecordArgs"];
    v16 = [NSMutableArray arrayWithArray:v15];
    [(PTTraceConfig *)v5 setTraceRecordArgs:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"planNameOrPath"];
    [(PTTraceConfig *)v5 setPlanNameOrPath:v17];

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
  v13 = [NSString stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v4 setOwnerName:v13];

  v14 = [(PTTraceConfig *)v4 ownerName];

  if (!v14)
  {
    v15 = [NSString stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v4 setOwnerName:v15];
  }

  [(PTTraceConfig *)v4 setSource:4];
  return v4;
}

@end