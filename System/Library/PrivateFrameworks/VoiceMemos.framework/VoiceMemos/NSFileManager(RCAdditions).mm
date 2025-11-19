@interface NSFileManager(RCAdditions)
- (id)rc_uniqueFileSystemURLWithPreferredURL:()RCAdditions;
- (uint64_t)rc_moveToTempAndMarkAsPurgeable:()RCAdditions error:;
- (uint64_t)rc_path:()RCAdditions isChildOf:;
- (unint64_t)rc_fileExistsAndIsInValidRecordingURL:()RCAdditions;
- (void)rc_cleanUpAssetsInDirectory:()RCAdditions;
- (void)rc_cleanUpTemporaryDirectory;
@end

@implementation NSFileManager(RCAdditions)

- (void)rc_cleanUpTemporaryDirectory
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_272442000, v0, OS_LOG_TYPE_ERROR, "%s -- Failed to get contents of url %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (id)rc_uniqueFileSystemURLWithPreferredURL:()RCAdditions
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [v4 rc_URLByStandardizingResolvedPath];
  v7 = [v6 URLByDeletingLastPathComponent];
  v8 = [a1 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:0];

  v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v35 + 1) + 8 * i) rc_URLByStandardizingResolvedPath];
        v14 = [v13 URLByDeletingPathExtension];
        v15 = [v14 path];
        [v5 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  v16 = [v4 URLByDeletingLastPathComponent];
  v17 = [v16 path];

  v18 = [v4 lastPathComponent];
  v19 = [v18 stringByDeletingPathExtension];

  v20 = [v4 pathExtension];
  v21 = v4;
  v22 = 1;
  v34 = v21;
  while (1)
  {
    v23 = [v21 rc_URLByStandardizingResolvedPath];
    v24 = [v23 URLByDeletingPathExtension];
    v25 = [v24 path];
    v26 = [v5 containsObject:v25];

    if (!v26)
    {
      break;
    }

    v27 = MEMORY[0x277CBEBC0];
    v28 = [v17 stringByAppendingPathComponent:v19];
    v29 = [v28 stringByAppendingFormat:@"-%li", v22, v34];
    v30 = [v29 stringByAppendingPathExtension:v20];
    v31 = [v27 fileURLWithPath:v30];

    ++v22;
    v21 = v31;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v21;
}

- (unint64_t)rc_fileExistsAndIsInValidRecordingURL:()RCAdditions
{
  if (a3)
  {
    v4 = [a3 path];
    if ([a1 fileExistsAtPath:v4])
    {
      v5 = realpath_DARWIN_EXTSN([v4 fileSystemRepresentation], 0);
      if (!v5)
      {
LABEL_14:

        return v5;
      }

      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v5];
      v7 = [v6 stringByStandardizingPath];

      free(v5);
      if (v7)
      {
        v5 = 1;
        v14 = 1;
        if ([a1 fileExistsAtPath:v7 isDirectory:&v14] && (v14 & 1) == 0)
        {
          v8 = RCRecordingsDirectoryURL();
          v9 = [v8 path];
          v10 = [v9 stringByStandardizingPath];
          if ([v7 hasPrefix:v10])
          {
            v5 = 0;
          }

          else
          {
            v11 = RCDiskCacheDirectory();
            v12 = [v11 stringByStandardizingPath];
            v5 = [v7 hasPrefix:v12] ^ 1;
          }
        }

        goto LABEL_14;
      }
    }

    v5 = 0;
    goto LABEL_14;
  }

  return 0;
}

- (uint64_t)rc_moveToTempAndMarkAsPurgeable:()RCAdditions error:
{
  v6 = a3;
  v7 = MEMORY[0x277CBEBC0];
  v8 = NSTemporaryDirectory();
  v9 = [v7 fileURLWithPath:v8];

  v10 = [v9 URLByAppendingPathComponent:@"voicememos-purgeable"];
  if ([a1 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:a4])
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 URLByAppendingPathComponent:v12];

    v14 = [a1 moveItemAtURL:v6 toURL:v13 error:a4];
    if (v14)
    {
      v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v16 = dispatch_queue_create("com.apple.VoiceMemos.purgeableQueue", v15);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__NSFileManager_RCAdditions__rc_moveToTempAndMarkAsPurgeable_error___block_invoke;
      block[3] = &unk_279E43B20;
      v19 = v13;
      dispatch_async(v16, block);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)rc_cleanUpAssetsInDirectory:()RCAdditions
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [a1 enumeratorAtURL:a3 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_12];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 136315650;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 pathExtension];
        v11 = [RCCaptureFormat supportsFileExtension:v10];

        if (v11)
        {
          v17 = 0;
          v12 = _RCCleanUpURL(v9, &v17);
          v13 = v17;
          if (!v12)
          {
            v14 = OSLogForCategory(@"Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v23 = "[NSFileManager(RCAdditions) rc_cleanUpAssetsInDirectory:]";
              v24 = 2112;
              v25 = v9;
              v26 = 2112;
              v27 = v13;
              _os_log_error_impl(&dword_272442000, v14, OS_LOG_TYPE_ERROR, "%s -- Failed to clean up file at %@, error = %@", buf, 0x20u);
            }
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)rc_path:()RCAdditions isChildOf:
{
  v5 = a4;
  v6 = [a3 stringByDeletingLastPathComponent];
  v7 = [v6 stringByStandardizingPath];
  v8 = [v5 stringByStandardizingPath];

  v9 = [v7 isEqual:v8];
  return v9;
}

@end