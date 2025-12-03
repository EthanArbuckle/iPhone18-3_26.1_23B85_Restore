@interface RMECacheEnumerator
+ (id)getEPLProfilePath;
+ (id)getGcoreSpoolWithCreateIfNecessary:(BOOL)necessary;
+ (id)getLogContainer:(BOOL)container;
+ (id)getLogPathsForSystemDiagnostic;
+ (id)getLogPathsSortedByProcessFrequency;
+ (id)getLogPathsSortedByTime;
- (id)initCacheEnumerator;
- (id)initCacheEnumeratorWithVolume:(id)volume;
@end

@implementation RMECacheEnumerator

- (id)initCacheEnumeratorWithVolume:(id)volume
{
  volumeCopy = volume;
  v25.receiver = self;
  v25.super_class = RMECacheEnumerator;
  v5 = [(RMECacheEnumerator *)&v25 init];
  v6 = v5;
  if (v5)
  {
    if (!volumeCopy)
    {
      volumeCopy = @"/";
    }

    objc_storeStrong(&v5->_volume, volumeCopy);
    v7 = [MEMORY[0x29EDB8E70] fileURLWithPath:volumeCopy isDirectory:1];
    v8 = [RMECacheEnumerator getLogContainer:0];
    if (v8 && (v9 = v8, [v8 substringFromIndex:1], v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
    {
      lastPathComponent = [v7 lastPathComponent];
      v12 = [v10 hasPrefix:lastPathComponent];

      if (v12)
      {
        uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];

        v7 = uRLByDeletingLastPathComponent;
      }

      v14 = [v7 URLByAppendingPathComponent:v10];
      if (v14)
      {
        defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
        v16 = *MEMORY[0x29EDB8D60];
        v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:{*MEMORY[0x29EDB8D40], *MEMORY[0x29EDB8D60], *MEMORY[0x29EDB8D68], *MEMORY[0x29EDB8D30], 0}];
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 3221225472;
        v22[2] = sub_297E2675C;
        v22[3] = &unk_29EE848D0;
        v23 = v14;
        v24 = volumeCopy;
        v18 = [defaultManager enumeratorAtURL:v23 includingPropertiesForKeys:v17 options:5 errorHandler:v22];
        internalEnumerator = v6->_internalEnumerator;
        v6->_internalEnumerator = v18;
      }

      v20 = v6;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)initCacheEnumerator
{
  v3 = [[RMECacheEnumerator alloc] initCacheEnumeratorWithVolume:0];

  return v3;
}

+ (id)getLogPathsSortedByTime
{
  v2 = [[RMECacheEnumerator alloc] initCacheEnumeratorWithVolume:0];
  v3 = sub_297E3D10C(1, 0, v2);

  return v3;
}

+ (id)getLogPathsSortedByProcessFrequency
{
  v2 = [[RMECacheEnumerator alloc] initCacheEnumeratorWithVolume:0];
  v3 = sub_297E3D10C(1, 0, v2);
  v4 = sub_297E26068(v3);

  return v4;
}

+ (id)getLogPathsForSystemDiagnostic
{
  v79 = *MEMORY[0x29EDCA608];
  getLogPathsSortedByTime = [self getLogPathsSortedByTime];
  v53 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = getLogPathsSortedByTime;
  array = [MEMORY[0x29EDB8DE8] array];
  v57 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:-3600.0];
  v54 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v66;
    v7 = *MEMORY[0x29EDB8D30];
    v8 = *MEMORY[0x29EDB8D60];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v66 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v65 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [MEMORY[0x29EDB8E70] fileURLWithPath:v10];
        v64 = 0;
        [v12 getResourceValue:&v64 forKey:v7 error:0];
        v13 = v64;
        if (v13)
        {
          v63 = 0;
          [v12 getResourceValue:&v63 forKey:v8 error:0];
          v14 = v63;
          if (v14 && ([v57 compare:v13] == -1 || !objc_msgSend(v57, "compare:", v13)))
          {
            v15 = sub_297E3CFE0(v14);
            if (v15)
            {
              v16 = v15;
              if (sub_297E3C6F4(v15))
              {
                [v54 addObject:v12];
              }
            }
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v5 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
    }

    while (v5);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v17 = v54;
  v18 = [v17 countByEnumeratingWithState:&v59 objects:&v69 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v60;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v17);
        }

        path = [*(*(&v59 + 1) + 8 * j) path];
        [array addObject:path];
      }

      v19 = [v17 countByEnumeratingWithState:&v59 objects:&v69 count:16];
    }

    while (v19);
  }

  *&v65 = 0;
  v23 = sub_297E273F4(array, 0xF00000uLL, &v65);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v74 = 15.0;
    v75 = 2048;
    v76 = v65 * 0.000000953674316;
    v77 = 2112;
    v78 = v23;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Critical Logs Capped (cap=%f MB, included total=%f MB): %@", buf, 0x20u);
  }

  v58 = v23;
  [v53 addObjectsFromArray:v23];
  v24 = sub_297E26068(obj);
  v25 = sub_297E27598(v24);

  v55 = v25;
  v26 = sub_297E2775C(v25, v53);
  *&v59 = 0;
  v51 = v26;
  v27 = sub_297E273F4(v26, 0xF00000uLL, &v59);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v74 = 15.0;
    v75 = 2048;
    v76 = v59 * 0.000000953674316;
    v77 = 2112;
    v78 = v27;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Top Offender Logs Capped (cap=%f MB, included total=%f MB): %@", buf, 0x20u);
  }

  v50 = v27;
  [v53 addObjectsFromArray:v27];
  v28 = 15728640 - v59;
  if (v59 > 0xF00000)
  {
    v28 = 0;
  }

  v48 = v28;
  v29 = sub_297E27598(obj);
  v30 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v31 = v29;
  v32 = [v31 countByEnumeratingWithState:&v69 objects:buf count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v70;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v70 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v69 + 1) + 8 * k);
        v37 = [MEMORY[0x29EDB8E70] fileURLWithPath:{v36, v48}];
        pathExtension = [v37 pathExtension];
        v39 = [pathExtension isEqualToString:@"lite_diag"];

        if (v39)
        {
          [v30 addObject:v36];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v69 objects:buf count:16];
    }

    while (v33);
  }

  v40 = sub_297E2775C(v30, v53);
  *&v69 = 0;
  v41 = sub_297E273F4(v40, 0x100000uLL, &v69);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v74 = 1.0;
    v75 = 2048;
    v76 = v69 * 0.000000953674316;
    v77 = 2112;
    v78 = v41;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Recent Lite Diags Capped (cap=%f MB, included total=%f MB): %@", buf, 0x20u);
  }

  [v53 addObjectsFromArray:{v41, v48}];
  v42 = 0x100000 - v69;
  if (v69 > 0x100000)
  {
    v42 = 0;
  }

  v43 = v49 + v42 + 14680064;
  v44 = sub_297E2775C(v31, v53);
  v64 = 0;
  v45 = sub_297E273F4(v44, v43, &v64);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v74 = vcvtd_n_f64_u64(v43, 0x14uLL);
    v75 = 2048;
    v76 = v59 * 0.000000953674316;
    v77 = 2112;
    v78 = v45;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Recent Logs Capped (cap=%f MB, included total=%f MB): %@", buf, 0x20u);
  }

  [v53 addObjectsFromArray:v45];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = *&v53;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Completed List of Files for sysdiagnose: %@", buf, 0xCu);
  }

  v46 = *MEMORY[0x29EDCA608];

  return v53;
}

+ (id)getGcoreSpoolWithCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v23 = *MEMORY[0x29EDCA608];
  v4 = [RMECacheEnumerator getLogContainer:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByAppendingString:@"/gcore_spool"];
    v7 = v6;
    if (necessaryCopy)
    {
      v8 = v6;
      defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
      v18 = 0;
      if ([defaultManager fileExistsAtPath:v8 isDirectory:&v18])
      {
        v10 = v18 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = v8;
          _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "Directory doesn't exist -> trying to create directory at path: %@", buf, 0xCu);
        }

        v17 = 0;
        [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v17];
        v11 = v17;
        defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
        v13 = [defaultManager2 fileExistsAtPath:v8 isDirectory:&v18];

        if (!v13 || v18 != 1)
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v20 = v8;
            v21 = 2112;
            v22 = v11;
            _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error: error creating directory at path %@ %@", buf, 0x16u);
          }

          v14 = 0;
          goto LABEL_17;
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v8;
          _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Successfully created directory at path %@", buf, 0xCu);
        }
      }
    }

    v14 = v7;
LABEL_17:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

+ (id)getLogContainer:(BOOL)container
{
  if (qword_2A18A60E8 != -1)
  {
    dispatch_once(&qword_2A18A60E8, &unk_2A1E8FB10);
  }

  v4 = qword_2A18A60E0;

  return v4;
}

+ (id)getEPLProfilePath
{
  if (qword_2A18A60F8 != -1)
  {
    dispatch_once(&qword_2A18A60F8, &unk_2A1E8FB30);
  }

  v3 = qword_2A18A60F0;

  return v3;
}

@end