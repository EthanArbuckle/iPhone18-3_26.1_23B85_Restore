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
  rc_URLByStandardizingResolvedPath = [v4 rc_URLByStandardizingResolvedPath];
  uRLByDeletingLastPathComponent = [rc_URLByStandardizingResolvedPath URLByDeletingLastPathComponent];
  v8 = [self contentsOfDirectoryAtURL:uRLByDeletingLastPathComponent includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:0];

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

        rc_URLByStandardizingResolvedPath2 = [*(*(&v35 + 1) + 8 * i) rc_URLByStandardizingResolvedPath];
        uRLByDeletingPathExtension = [rc_URLByStandardizingResolvedPath2 URLByDeletingPathExtension];
        path = [uRLByDeletingPathExtension path];
        [v5 addObject:path];
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  uRLByDeletingLastPathComponent2 = [v4 URLByDeletingLastPathComponent];
  path2 = [uRLByDeletingLastPathComponent2 path];

  lastPathComponent = [v4 lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  pathExtension = [v4 pathExtension];
  v21 = v4;
  v22 = 1;
  v34 = v21;
  while (1)
  {
    rc_URLByStandardizingResolvedPath3 = [v21 rc_URLByStandardizingResolvedPath];
    uRLByDeletingPathExtension2 = [rc_URLByStandardizingResolvedPath3 URLByDeletingPathExtension];
    path3 = [uRLByDeletingPathExtension2 path];
    v26 = [v5 containsObject:path3];

    if (!v26)
    {
      break;
    }

    v27 = MEMORY[0x277CBEBC0];
    v28 = [path2 stringByAppendingPathComponent:stringByDeletingPathExtension];
    v29 = [v28 stringByAppendingFormat:@"-%li", v22, v34];
    v30 = [v29 stringByAppendingPathExtension:pathExtension];
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
    path = [a3 path];
    if ([self fileExistsAtPath:path])
    {
      v5 = realpath_DARWIN_EXTSN([path fileSystemRepresentation], 0);
      if (!v5)
      {
LABEL_14:

        return v5;
      }

      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v5];
      stringByStandardizingPath = [v6 stringByStandardizingPath];

      free(v5);
      if (stringByStandardizingPath)
      {
        v5 = 1;
        v14 = 1;
        if ([self fileExistsAtPath:stringByStandardizingPath isDirectory:&v14] && (v14 & 1) == 0)
        {
          v8 = RCRecordingsDirectoryURL();
          path2 = [v8 path];
          stringByStandardizingPath2 = [path2 stringByStandardizingPath];
          if ([stringByStandardizingPath hasPrefix:stringByStandardizingPath2])
          {
            v5 = 0;
          }

          else
          {
            v11 = RCDiskCacheDirectory();
            stringByStandardizingPath3 = [v11 stringByStandardizingPath];
            v5 = [stringByStandardizingPath hasPrefix:stringByStandardizingPath3] ^ 1;
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
  if ([self createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:a4])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v13 = [v10 URLByAppendingPathComponent:uUIDString];

    v14 = [self moveItemAtURL:v6 toURL:v13 error:a4];
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
  v3 = [self enumeratorAtURL:a3 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_12];
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
        pathExtension = [v9 pathExtension];
        v11 = [RCCaptureFormat supportsFileExtension:pathExtension];

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
  stringByDeletingLastPathComponent = [a3 stringByDeletingLastPathComponent];
  stringByStandardizingPath = [stringByDeletingLastPathComponent stringByStandardizingPath];
  stringByStandardizingPath2 = [v5 stringByStandardizingPath];

  v9 = [stringByStandardizingPath isEqual:stringByStandardizingPath2];
  return v9;
}

@end