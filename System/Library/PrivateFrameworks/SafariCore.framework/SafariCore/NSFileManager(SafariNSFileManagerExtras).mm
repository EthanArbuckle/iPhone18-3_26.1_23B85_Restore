@interface NSFileManager(SafariNSFileManagerExtras)
- (BOOL)safari_extractZipArchiveFromPath:()SafariNSFileManagerExtras toDestination:copyQuarantine:;
- (BOOL)safari_getFileSystemSupportsExclusiveRename:()SafariNSFileManagerExtras atFileHandle:error:;
- (BOOL)safari_zipContentsFromDirectory:()SafariNSFileManagerExtras toZipFileURL:shouldKeepParent:error:;
- (id)_safari_libraryDirectoryForHomeDirectory:()SafariNSFileManagerExtras;
- (id)safari_autoFillQuirksDownloadDirectoryURL;
- (id)safari_createDirectoryWithTemplate:()SafariNSFileManagerExtras inDirectory:;
- (id)safari_createDirectoryWithUniqueName:()SafariNSFileManagerExtras relativeToDirectoryFileHandle:error:;
- (id)safari_createTemporaryDirectoryAppropriateForURL:()SafariNSFileManagerExtras error:;
- (id)safari_createTemporaryDirectoryWithTemplate:()SafariNSFileManagerExtras;
- (id)safari_createTemporaryDirectoryWithTemplatePrefix:()SafariNSFileManagerExtras;
- (id)safari_ensureDirectoryExists:()SafariNSFileManagerExtras;
- (id)safari_frameworksDirectoryURLs;
- (id)safari_mobileSafariAppContainerDirectoryURLFromOutsideSafariAppContainer;
- (id)safari_mobileSafariContainerDirectoryURL;
- (id)safari_mobileSafariGroupContainerDirectoryURL;
- (id)safari_moveFileAtSubpath:()SafariNSFileManagerExtras relativeToFileHandle:toUniqueSubpath:relativeToFileHandle:error:;
- (id)safari_moveFileAtSubpath:()SafariNSFileManagerExtras relativeToFileHandle:toUniqueSubpath:relativeToFileHandle:error:usingExistingFileRecoveryBlock:;
- (id)safari_nonContaineredSettingsDirectoryURL;
- (id)safari_passwordsAppContainerDirectoryURL;
- (id)safari_pathWithUniqueFilenameForPath:()SafariNSFileManagerExtras;
- (id)safari_productionSafariSettingsDirectory;
- (id)safari_profileDirectoryURLWithID:()SafariNSFileManagerExtras createIfNeeded:;
- (id)safari_profilesDirectoryURL;
- (id)safari_safariLibraryDirectory;
- (id)safari_settingsDirectoryForHomeDirectory:()SafariNSFileManagerExtras;
- (id)safari_settingsDirectoryForLibraryDirectory:()SafariNSFileManagerExtras;
- (id)safari_settingsDirectoryURL;
- (id)safari_startPageBackgroundImageFileURLForDefaultProfile;
- (id)safari_startPageBackgroundImageFileURLForIdentifier:()SafariNSFileManagerExtras;
- (id)safari_startPageBackgroundImageFolderURL;
- (id)safari_startPageBackgroundImageMobileAssetFolderURL;
- (id)safari_startPageBackgroundImageThumbnailMobileAssetFolderURL;
- (id)safari_subdirectoryWithName:()SafariNSFileManagerExtras inUserDomainOfDirectory:;
- (id)safari_topLevelDirectoriesAtURL:()SafariNSFileManagerExtras;
- (id)safari_webExtensionsSettingsDirectoryURL;
- (uint64_t)_safari_removeFileAtURL:()SafariNSFileManagerExtras onlyIfFileExists:error:;
- (uint64_t)safari_currentProcessIsContainerized;
- (uint64_t)safari_getFileExists:()SafariNSFileManagerExtras atSubpath:relativeToFileHandle:error:;
- (uint64_t)safari_imageExistsAtFileURL:()SafariNSFileManagerExtras;
- (uint64_t)safari_replaceItemAtURL:()SafariNSFileManagerExtras withItemFromURL:error:;
- (void)_safari_getMobileSafariContainerDirectoryURL:()SafariNSFileManagerExtras isContainerized:;
- (void)_safari_getPasswordsAppContainerDirectoryURL:()SafariNSFileManagerExtras isContainerized:;
- (void)safari_removeContentsOfDirectory:()SafariNSFileManagerExtras preservingContainerManagerMetadata:;
- (void)safari_subpathOfURL:()SafariNSFileManagerExtras relativeToDirectoryAtURL:error:;
@end

@implementation NSFileManager(SafariNSFileManagerExtras)

- (id)safari_mobileSafariContainerDirectoryURL
{
  v3 = 0;
  [self _safari_getMobileSafariContainerDirectoryURL:&v3 isContainerized:0];
  v1 = v3;

  return v1;
}

- (id)safari_autoFillQuirksDownloadDirectoryURL
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Safari"];
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0 isDirectory:1];

  return v1;
}

- (id)safari_mobileSafariGroupContainerDirectoryURL
{
  if ([NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariGroupContainerDirectoryURL]::onceToken != -1)
  {
    [NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariGroupContainerDirectoryURL];
  }

  v1 = [NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariGroupContainerDirectoryURL]::containerURL;

  return v1;
}

- (id)safari_settingsDirectoryURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__NSFileManager_SafariNSFileManagerExtras__safari_settingsDirectoryURL__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  if ([NSFileManager(SafariNSFileManagerExtras) safari_settingsDirectoryURL]::onceToken != -1)
  {
    dispatch_once(&[NSFileManager(SafariNSFileManagerExtras) safari_settingsDirectoryURL]::onceToken, block);
  }

  return [NSFileManager(SafariNSFileManagerExtras) safari_settingsDirectoryURL]::settingsDirectory;
}

- (id)safari_safariLibraryDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__NSFileManager_SafariNSFileManagerExtras__safari_safariLibraryDirectory__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  if ([NSFileManager(SafariNSFileManagerExtras) safari_safariLibraryDirectory]::onceToken != -1)
  {
    dispatch_once(&[NSFileManager(SafariNSFileManagerExtras) safari_safariLibraryDirectory]::onceToken, block);
  }

  return [NSFileManager(SafariNSFileManagerExtras) safari_safariLibraryDirectory]::safariLibraryDirectory;
}

- (id)safari_startPageBackgroundImageFileURLForDefaultProfile
{
  safari_startPageBackgroundImageFolderURL = [self safari_startPageBackgroundImageFolderURL];
  v2 = [safari_startPageBackgroundImageFolderURL URLByAppendingPathComponent:@"defaultBackground" isDirectory:0];

  return v2;
}

- (id)safari_startPageBackgroundImageFolderURL
{
  safari_mobileSafariContainerDirectoryURL = [self safari_mobileSafariContainerDirectoryURL];
  v2 = [safari_mobileSafariContainerDirectoryURL URLByAppendingPathComponent:@"Library/StartPage" isDirectory:1];

  return v2;
}

- (id)safari_startPageBackgroundImageThumbnailMobileAssetFolderURL
{
  safari_startPageBackgroundImageFolderURL = [self safari_startPageBackgroundImageFolderURL];
  v2 = [safari_startPageBackgroundImageFolderURL URLByAppendingPathComponent:@"MobileAssetBackgroundImageThumbnails" isDirectory:1];

  return v2;
}

- (id)safari_startPageBackgroundImageMobileAssetFolderURL
{
  safari_startPageBackgroundImageFolderURL = [self safari_startPageBackgroundImageFolderURL];
  v2 = [safari_startPageBackgroundImageFolderURL URLByAppendingPathComponent:@"MobileAssetBackgroundImages" isDirectory:1];

  return v2;
}

- (id)safari_webExtensionsSettingsDirectoryURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__NSFileManager_SafariNSFileManagerExtras__safari_webExtensionsSettingsDirectoryURL__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  if ([NSFileManager(SafariNSFileManagerExtras) safari_webExtensionsSettingsDirectoryURL]::onceToken != -1)
  {
    dispatch_once(&[NSFileManager(SafariNSFileManagerExtras) safari_webExtensionsSettingsDirectoryURL]::onceToken, block);
  }

  v2 = [self safari_ensureDirectoryExists:-[NSFileManager(SafariNSFileManagerExtras) safari_webExtensionsSettingsDirectoryURL]::settingsDirectory];

  return v2;
}

- (id)safari_passwordsAppContainerDirectoryURL
{
  v3 = 0;
  [self _safari_getPasswordsAppContainerDirectoryURL:&v3 isContainerized:0];
  v1 = v3;

  return v1;
}

- (id)safari_startPageBackgroundImageFileURLForIdentifier:()SafariNSFileManagerExtras
{
  v4 = a3;
  safari_startPageBackgroundImageFolderURL = [self safari_startPageBackgroundImageFolderURL];
  v6 = [safari_startPageBackgroundImageFolderURL URLByAppendingPathComponent:v4 isDirectory:0];

  return v6;
}

- (void)_safari_getMobileSafariContainerDirectoryURL:()SafariNSFileManagerExtras isContainerized:
{
  if ([NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::onceToken == -1)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:];
  if (a3)
  {
LABEL_3:
    *a3 = [NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::containerURL;
  }

LABEL_4:
  if (a4)
  {
    *a4 = [NSFileManager(SafariNSFileManagerExtras) _safari_getMobileSafariContainerDirectoryURL:isContainerized:]::isContainerized;
  }
}

- (id)safari_mobileSafariAppContainerDirectoryURLFromOutsideSafariAppContainer
{
  if ([NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariAppContainerDirectoryURLFromOutsideSafariAppContainer]::onceToken != -1)
  {
    [NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariAppContainerDirectoryURLFromOutsideSafariAppContainer];
  }

  v1 = [NSFileManager(SafariNSFileManagerExtras) safari_mobileSafariAppContainerDirectoryURLFromOutsideSafariAppContainer]::containerURL;

  return v1;
}

- (void)_safari_getPasswordsAppContainerDirectoryURL:()SafariNSFileManagerExtras isContainerized:
{
  if ([NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:]::onceToken == -1)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:];
  if (a3)
  {
LABEL_3:
    *a3 = [NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:]::containerURL;
  }

LABEL_4:
  if (a4)
  {
    *a4 = [NSFileManager(SafariNSFileManagerExtras) _safari_getPasswordsAppContainerDirectoryURL:isContainerized:]::isContainerized;
  }
}

- (id)safari_ensureDirectoryExists:()SafariNSFileManagerExtras
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  path = [v4 path];
  v15 = 0;
  v6 = [self createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXFileManager();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription = [v7 safari_privacyPreservingDescription];
      [(NSFileManager(SafariNSFileManagerExtras) *)safari_privacyPreservingDescription safari_ensureDirectoryExists:buf, v9];
    }

    v11 = WBS_LOG_CHANNEL_PREFIXFileManager();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      path2 = [v4 path];
      [(NSFileManager(SafariNSFileManagerExtras) *)path2 safari_ensureDirectoryExists:v16, v11];
    }

    v8 = v4;
    v4 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)safari_subdirectoryWithName:()SafariNSFileManagerExtras inUserDomainOfDirectory:
{
  v6 = a3;
  v7 = MEMORY[0x1E695DFF8];
  v8 = NSSearchPathForDirectoriesInDomains(a4, 1uLL, 1);
  v9 = [v8 objectAtIndex:0];
  v10 = [v7 fileURLWithPath:v9 isDirectory:1];

  v11 = [v10 URLByAppendingPathComponent:v6 isDirectory:1];
  v12 = [self safari_ensureDirectoryExists:v11];

  return v12;
}

- (uint64_t)safari_currentProcessIsContainerized
{
  v2 = 0;
  [self _safari_getMobileSafariContainerDirectoryURL:0 isContainerized:&v2];
  return v2;
}

- (id)_safari_libraryDirectoryForHomeDirectory:()SafariNSFileManagerExtras
{
  v3 = [a3 URLByAppendingPathComponent:@"Library" isDirectory:1];

  return v3;
}

- (id)safari_settingsDirectoryForLibraryDirectory:()SafariNSFileManagerExtras
{
  v3 = [a3 URLByAppendingPathComponent:@"Safari" isDirectory:1];

  return v3;
}

- (id)safari_settingsDirectoryForHomeDirectory:()SafariNSFileManagerExtras
{
  v2 = [self _safari_libraryDirectoryForHomeDirectory:?];
  v3 = [self safari_settingsDirectoryForLibraryDirectory:v2];

  return v3;
}

- (id)safari_profilesDirectoryURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__NSFileManager_SafariNSFileManagerExtras__safari_profilesDirectoryURL__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  if ([NSFileManager(SafariNSFileManagerExtras) safari_profilesDirectoryURL]::onceToken != -1)
  {
    dispatch_once(&[NSFileManager(SafariNSFileManagerExtras) safari_profilesDirectoryURL]::onceToken, block);
  }

  return [NSFileManager(SafariNSFileManagerExtras) safari_profilesDirectoryURL]::profilesDirectory;
}

- (id)safari_profileDirectoryURLWithID:()SafariNSFileManagerExtras createIfNeeded:
{
  v6 = a3;
  safari_profilesDirectoryURL = [self safari_profilesDirectoryURL];
  v8 = [safari_profilesDirectoryURL URLByAppendingPathComponent:v6];

  if (a4)
  {
    v9 = [self safari_ensureDirectoryExists:v8];
LABEL_4:
    v12 = v8;
    v8 = 0;
    goto LABEL_6;
  }

  path = [v8 path];
  v11 = [self fileExistsAtPath:path];

  if (v11)
  {
    goto LABEL_4;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (id)safari_nonContaineredSettingsDirectoryURL
{
  if ([NSFileManager(SafariNSFileManagerExtras) safari_nonContaineredSettingsDirectoryURL]::onceToken != -1)
  {
    [NSFileManager(SafariNSFileManagerExtras) safari_nonContaineredSettingsDirectoryURL];
  }

  v1 = [NSFileManager(SafariNSFileManagerExtras) safari_nonContaineredSettingsDirectoryURL]::nonContaineredSettingsDirectoryURL;

  return v1;
}

- (id)safari_productionSafariSettingsDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__NSFileManager_SafariNSFileManagerExtras__safari_productionSafariSettingsDirectory__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  if ([NSFileManager(SafariNSFileManagerExtras) safari_productionSafariSettingsDirectory]::settingsDirectoryInitialized != -1)
  {
    dispatch_once(&[NSFileManager(SafariNSFileManagerExtras) safari_productionSafariSettingsDirectory]::settingsDirectoryInitialized, block);
  }

  return [NSFileManager(SafariNSFileManagerExtras) safari_productionSafariSettingsDirectory]::settingsDirectory;
}

- (id)safari_createTemporaryDirectoryWithTemplatePrefix:()SafariNSFileManagerExtras
{
  v4 = [a3 stringByAppendingString:@"-XXXXXXXX"];
  v5 = [self safari_createTemporaryDirectoryWithTemplate:v4];
  absoluteURL = [v5 absoluteURL];
  path = [absoluteURL path];

  return path;
}

- (id)safari_createTemporaryDirectoryWithTemplate:()SafariNSFileManagerExtras
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFF8];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6];
  v8 = [self safari_createDirectoryWithTemplate:v4 inDirectory:v7];

  return v8;
}

- (id)safari_createDirectoryWithTemplate:()SafariNSFileManagerExtras inDirectory:
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 URLByAppendingPathComponent:v6];
  v9 = strdup([v8 fileSystemRepresentation]);

  if (mkdtemp(v9))
  {
    v10 = [self stringWithFileSystemRepresentation:v9 length:strlen(v9)];
    free(v9);
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];
  }

  else
  {
    free(v9);
    v11 = 0;
  }

  return v11;
}

- (BOOL)safari_getFileSystemSupportsExclusiveRename:()SafariNSFileManagerExtras atFileHandle:error:
{
  v7 = a4;
  v15[2] = 0;
  v15[0] = 5;
  v15[1] = 0x20000;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v8 = fgetattrlist([v7 fileDescriptor], v15, v13, 0x24uLL, 0);
  if (v8)
  {
    v9 = __error();
    if (a5)
    {
      v10 = *v9;
      safari_fileURL = [v7 safari_fileURL];
      *a5 = _NSErrorWithFilePathAndErrno();
    }
  }

  else
  {
    *a3 = (DWORD2(v13[0]) & 0x80000) != 0;
  }

  return v8 == 0;
}

- (uint64_t)safari_getFileExists:()SafariNSFileManagerExtras atSubpath:relativeToFileHandle:error:
{
  v9 = a4;
  v10 = a5;
  if (fstatat([v10 fileDescriptor], objc_msgSend(v9, "fileSystemRepresentation"), &v14, 2048))
  {
    if (*__error() == 2)
    {
      *a3 = 0;
      a6 = 1;
    }

    else if (a6)
    {
      safari_fileURL = [v10 safari_fileURL];
      v12 = [safari_fileURL URLByAppendingPathComponent:v9];

      *a6 = _NSErrorWithFilePathAndErrno();

      a6 = 0;
    }
  }

  else
  {
    a6 = 1;
    *a3 = 1;
  }

  return a6;
}

- (void)safari_subpathOfURL:()SafariNSFileManagerExtras relativeToDirectoryAtURL:error:
{
  v30[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:v8 options:0 createMode:0 error:a5];
  safari_fileURL = [v9 safari_fileURL];
  path = [safari_fileURL path];

  if (!path)
  {
    a5 = 0;
    goto LABEL_17;
  }

  v12 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:v7 options:0 createMode:0 error:a5];
  safari_fileURL2 = [v12 safari_fileURL];
  path2 = [safari_fileURL2 path];

  if (!path2)
  {
    goto LABEL_10;
  }

  if ([path2 hasPrefix:path])
  {
    v15 = [path length];
    if ([path hasSuffix:@"/"])
    {
      v16 = [path2 substringFromIndex:v15];
LABEL_15:
      a5 = v16;
      goto LABEL_16;
    }

    v21 = [path2 rangeOfString:@"/" options:8 range:{v15, objc_msgSend(path2, "length") - v15}];
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [path2 substringFromIndex:v21 + v22];
      goto LABEL_15;
    }

    if (a5)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A998];
      v27[0] = *MEMORY[0x1E696A578];
      v27[1] = v24;
      v28[0] = @"URL is not a parent of the tested URL";
      v28[1] = v8;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
      v20 = [v23 errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v19];
      goto LABEL_9;
    }
  }

  else if (a5)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A998];
    v29[0] = *MEMORY[0x1E696A578];
    v29[1] = v18;
    v30[0] = @"URL is not a parent of the tested URL";
    v30[1] = v8;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v20 = [v17 errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:v19];
LABEL_9:
    *a5 = v20;

LABEL_10:
    a5 = 0;
  }

LABEL_16:

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];

  return a5;
}

- (id)safari_createDirectoryWithUniqueName:()SafariNSFileManagerExtras relativeToDirectoryFileHandle:error:
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [[WBSUniqueFilenameEnumerator alloc] initWithFilename:v7];
  v10 = [(WBSUniqueFilenameEnumerator *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v11 = *v22;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      fileDescriptor = [v8 fileDescriptor];
      v15 = v13;
      if (!mkdirat(fileDescriptor, [v13 fileSystemRepresentation], 0x1C0u))
      {
        safari_fileURL = [v8 safari_fileURL];
        v16 = [safari_fileURL URLByAppendingPathComponent:v13];
LABEL_14:

        goto LABEL_16;
      }

      if (*__error() != 17)
      {
        if (!a5)
        {
          goto LABEL_15;
        }

        safari_fileURL2 = [v8 safari_fileURL];
        safari_fileURL = [safari_fileURL2 URLByAppendingPathComponent:v13];

        _NSErrorWithFilePathAndErrno();
        *a5 = v16 = 0;
        goto LABEL_14;
      }
    }

    v10 = [(WBSUniqueFilenameEnumerator *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v16 = 0;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)safari_moveFileAtSubpath:()SafariNSFileManagerExtras relativeToFileHandle:toUniqueSubpath:relativeToFileHandle:error:
{
  v7 = [self safari_moveFileAtSubpath:a3 relativeToFileHandle:a4 toUniqueSubpath:a5 relativeToFileHandle:a6 error:a7 usingExistingFileRecoveryBlock:&__block_literal_global_59];

  return v7;
}

- (id)safari_moveFileAtSubpath:()SafariNSFileManagerExtras relativeToFileHandle:toUniqueSubpath:relativeToFileHandle:error:usingExistingFileRecoveryBlock:
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v52 = a4;
  v51 = a5;
  v14 = a6;
  v15 = a8;
  v59 = 0;
  if ([self safari_getFileSystemSupportsExclusiveRename:&v59 atFileHandle:v14 error:a7])
  {
    if (v59)
    {
      v16 = 20;
    }

    else
    {
      v16 = 16;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [[WBSUniqueFilenameEnumerator alloc] initWithFilename:v51];
    v17 = [(WBSUniqueFilenameEnumerator *)obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v17)
    {
      v18 = *v56;
      v47 = *v56;
      do
      {
        v19 = 0;
        v48 = v17;
        while (2)
        {
          if (*v56 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = 0;
          v49 = v19;
          v21 = *(*(&v55 + 1) + 8 * v19);
          do
          {
            if (v59)
            {
              goto LABEL_38;
            }

            v54 = 0;
            if (([self safari_getFileExists:&v54 atSubpath:v21 relativeToFileHandle:v14 error:a7] & 1) == 0)
            {
              goto LABEL_31;
            }

            if ((v54 & 1) == 0)
            {
LABEL_38:
              fileDescriptor = [v52 fileDescriptor];
              v23 = v53;
              fileSystemRepresentation = [v53 fileSystemRepresentation];
              fileDescriptor2 = [v14 fileDescriptor];
              v26 = v21;
              if (!renameatx_np(fileDescriptor, fileSystemRepresentation, fileDescriptor2, [v21 fileSystemRepresentation], v16))
              {
                safari_fileURL = [v14 safari_fileURL];
                v31 = [safari_fileURL URLByAppendingPathComponent:v21];

                goto LABEL_32;
              }

              v27 = *__error();
              if (v27 != 17)
              {
                if (a7)
                {
                  safari_fileURL2 = [v52 safari_fileURL];
                  v34 = [safari_fileURL2 URLByAppendingPathComponent:v53];

                  safari_fileURL3 = [v14 safari_fileURL];
                  v36 = [safari_fileURL3 URLByAppendingPathComponent:v21];

                  if (v27 == 63)
                  {
                    v37 = v21;
                    v38 = strnlen([v21 fileSystemRepresentation], 0x100uLL);
                    v39 = v36;
                    if (v38 <= 0xFF)
                    {
                      v40 = v36;
                      if (strnlen([v36 fileSystemRepresentation], 0x401uLL) <= 0x400)
                      {
                        v39 = v34;
                      }

                      else
                      {
                        v39 = v36;
                      }
                    }

                    v41 = v39;
                  }

                  else
                  {
                    v41 = 0;
                  }

                  dictionary = [MEMORY[0x1E695DF90] dictionary];
                  path = [v34 path];
                  [dictionary setObject:path forKeyedSubscript:@"NSSourceFilePathErrorKey"];

                  path2 = [v36 path];
                  [dictionary setObject:path2 forKeyedSubscript:@"NSDestinationFilePath"];

                  *a7 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo();
                }

                goto LABEL_31;
              }
            }

            safari_fileURL4 = [v14 safari_fileURL];
            v29 = [safari_fileURL4 URLByAppendingPathComponent:v21];
            v30 = v15[2](v15, v21, v29, ++v20);
          }

          while ((v30 & 1) != 0);
          v19 = v49 + 1;
          v18 = v47;
          if (v49 + 1 != v48)
          {
            continue;
          }

          break;
        }

        v17 = [(WBSUniqueFilenameEnumerator *)obj countByEnumeratingWithState:&v55 objects:v60 count:16];
        v31 = 0;
      }

      while (v17);
    }

    else
    {
LABEL_31:
      v31 = 0;
    }

LABEL_32:
  }

  else
  {
    v31 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v31;
}

- (uint64_t)_safari_removeFileAtURL:()SafariNSFileManagerExtras onlyIfFileExists:error:
{
  v7 = a3;
  if ([v7 isFileURL])
  {
    path = [v7 path];
    if (unlink([path fileSystemRepresentation]) && ((a4 & 1) != 0 || *__error() != 2))
    {
      if (a5)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
        *a5 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    *a5 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)safari_pathWithUniqueFilenameForPath:()SafariNSFileManagerExtras
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    stringByDeletingLastPathComponent = [v3 stringByDeletingLastPathComponent];
    lastPathComponent = [v4 lastPathComponent];
    safari_filenameByFixingIllegalCharacters = [lastPathComponent safari_filenameByFixingIllegalCharacters];
    v8 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:safari_filenameByFixingIllegalCharacters];

    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
    safari_URLWithUniqueFilename = [v9 safari_URLWithUniqueFilename];
    path = [safari_URLWithUniqueFilename path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)safari_frameworksDirectoryURLs
{
  array = [MEMORY[0x1E695DF70] array];
  v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Safari.Core"];
  bundleURL = [v1 bundleURL];
  uRLByDeletingLastPathComponent = [bundleURL URLByDeletingLastPathComponent];
  [array addObject:uRLByDeletingLastPathComponent];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.SafariServices.framework"];
  v5 = v4;
  if (v4)
  {
    bundleURL2 = [v4 bundleURL];
    uRLByDeletingLastPathComponent2 = [bundleURL2 URLByDeletingLastPathComponent];
    [array addObject:uRLByDeletingLastPathComponent2];
  }

  return array;
}

- (void)safari_removeContentsOfDirectory:()SafariNSFileManagerExtras preservingContainerManagerMetadata:
{
  v43 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __112__NSFileManager_SafariNSFileManagerExtras__safari_removeContentsOfDirectory_preservingContainerManagerMetadata___block_invoke;
  v35[3] = &__block_descriptor_40_e27_B24__0__NSURL_8__NSError_16l;
  v35[4] = a2;
  v7 = [defaultManager enumeratorAtURL:v26 includingPropertiesForKeys:0 options:17 errorHandler:v35];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v9)
  {
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        if (!a4 || ([*(*(&v31 + 1) + 8 * v11) lastPathComponent], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @".com.apple.mobile_container_manager.metadata.plist"), v13, (v14 & 1) == 0))
        {
          [v5 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
  v15 = WBS_LOG_CHANNEL_PREFIXFileManager();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    v17 = [v5 count];
    *buf = 138543875;
    v37 = v16;
    v38 = 2048;
    v39 = v17;
    v40 = 2113;
    v41 = v26;
    _os_log_impl(&dword_1B8447000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: about to remove %zu items from %{private}@", buf, 0x20u);
  }

  v18 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_create("com.apple.Safari.Core.safari_removeContentsOfDirectory", v18);

  v20 = [v5 count];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__NSFileManager_SafariNSFileManagerExtras__safari_removeContentsOfDirectory_preservingContainerManagerMetadata___block_invoke_82;
  block[3] = &unk_1E7CF2948;
  v28 = v5;
  selfCopy = self;
  v30 = a2;
  v21 = v5;
  dispatch_apply(v20, v19, block);

  v22 = *MEMORY[0x1E69E9840];
}

- (uint64_t)safari_replaceItemAtURL:()SafariNSFileManagerExtras withItemFromURL:error:
{
  v26[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  path = [v8 path];
  v11 = [path length];

  if (!v11)
  {
    v18 = WBS_LOG_CHANNEL_PREFIXFileManager();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NSFileManager(SafariNSFileManagerExtras) safari_replaceItemAtURL:v18 withItemFromURL:? error:?];
    }

    goto LABEL_16;
  }

  path2 = [v9 path];
  v13 = [self isReadableFileAtPath:path2];

  if ((v13 & 1) == 0)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXFileManager();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NSFileManager(SafariNSFileManagerExtras) safari_replaceItemAtURL:v9 withItemFromURL:v8 error:v19];
    }

    goto LABEL_16;
  }

  [self removeItemAtURL:v8 error:a5];
  path3 = [v8 path];
  v15 = [self isReadableFileAtPath:path3];

  if (v15)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXFileManager();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription = [*a5 safari_privacyPreservingDescription];
      [NSFileManager(SafariNSFileManagerExtras) safari_replaceItemAtURL:v8 withItemFromURL:safari_privacyPreservingDescription error:v26];
    }

LABEL_15:

LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
  v21 = [self safari_ensureDirectoryExists:uRLByDeletingLastPathComponent];

  if (([self copyItemAtURL:v9 toURL:v8 error:a5] & 1) == 0)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXFileManager();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription2 = [*a5 safari_privacyPreservingDescription];
      [NSFileManager(SafariNSFileManagerExtras) safari_replaceItemAtURL:v8 withItemFromURL:safari_privacyPreservingDescription2 error:v26];
    }

    goto LABEL_15;
  }

  v22 = 1;
LABEL_17:

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)safari_createTemporaryDirectoryAppropriateForURL:()SafariNSFileManagerExtras error:
{
  v4 = [self URLForDirectory:99 inDomain:1 appropriateForURL:a3 create:1 error:a4];

  return v4;
}

- (id)safari_topLevelDirectoriesAtURL:()SafariNSFileManagerExtras
{
  v37[1] = *MEMORY[0x1E69E9840];
  v19 = a3;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = *MEMORY[0x1E695DB78];
  v37[0] = *MEMORY[0x1E695DB78];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __76__NSFileManager_SafariNSFileManagerExtras__safari_topLevelDirectoriesAtURL___block_invoke;
  v29[3] = &__block_descriptor_40_e27_B24__0__NSURL_8__NSError_16l;
  v29[4] = a2;
  v18 = [defaultManager enumeratorAtURL:v19 includingPropertiesForKeys:v5 options:1 errorHandler:v29];

  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v18;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v23 = 0;
        v24 = 0;
        v10 = [v9 getResourceValue:&v24 forKey:v4 error:{&v23, v18}];
        v11 = v24;
        v12 = v23;
        if (((v12 == 0) & v10) != 0)
        {
          if ([v11 BOOLValue])
          {
            [array addObject:v9];
          }
        }

        else
        {
          v13 = WBS_LOG_CHANNEL_PREFIXFileManager();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = NSStringFromSelector(a2);
            safari_privacyPreservingDescription = [v12 safari_privacyPreservingDescription];
            *buf = 138543875;
            v31 = v14;
            v32 = 2113;
            v33 = v9;
            v34 = 2114;
            v35 = safari_privacyPreservingDescription;
            _os_log_error_impl(&dword_1B8447000, v13, OS_LOG_TYPE_ERROR, "%{public}@: error while getting NSURLIsDirectoryKey resource value for %{private}@: %{public}@", buf, 0x20u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)safari_zipContentsFromDirectory:()SafariNSFileManagerExtras toZipFileURL:shouldKeepParent:error:
{
  v28[4] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v10 path];
  v13 = [defaultManager createFileAtPath:path contents:0 attributes:0];

  if (v13)
  {
    v14 = MEMORY[0x1E695E118];
    v27[0] = @"createPKZip";
    v27[1] = @"sequesterResources";
    v28[0] = MEMORY[0x1E695E118];
    v28[1] = MEMORY[0x1E695E118];
    v27[2] = @"keepParent";
    v15 = [MEMORY[0x1E696AD98] numberWithBool:a5];
    v27[3] = @"copyResources";
    v28[2] = v15;
    v28[3] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

    _SL_BOMCopierNew();
    v18 = v17;
    v19 = v9;
    fileSystemRepresentation = [v9 fileSystemRepresentation];
    v21 = v10;
    _SL_BOMCopierCopyWithOptions(v18, fileSystemRepresentation, [v10 fileSystemRepresentation], v16);
    v23 = v22;
    _SL_BOMCopierFree(v18);
    v24 = v23 == 0;
    if (a6 && v23)
    {
      *a6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:@"WBSNSFileManagerExtrasBOMCopierErrorDomain" code:v23 privacyPreservingDescription:@"Failed to copy contents into zip file."];
    }
  }

  else if (a6)
  {
    [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A978] code:-3000 privacyPreservingDescription:@"Failed to create empty zip file."];
    *a6 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)safari_extractZipArchiveFromPath:()SafariNSFileManagerExtras toDestination:copyQuarantine:
{
  v20[7] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v20[0] = MEMORY[0x1E695E118];
  v19[0] = @"extractPKZip";
  v19[1] = @"copyQuarantine";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v20[1] = v9;
  v20[2] = MEMORY[0x1E695E110];
  v19[2] = @"copyResources";
  v19[3] = @"copyExtendedAttributes";
  v20[3] = MEMORY[0x1E695E110];
  v20[4] = MEMORY[0x1E695E110];
  v19[4] = @"copyACLs";
  v19[5] = @"applySourcePermissions";
  v19[6] = @"symlinkTreatment";
  v20[5] = MEMORY[0x1E695E110];
  v20[6] = @"error";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:7];

  _SL_BOMCopierNew();
  v12 = v11;
  v13 = v7;
  fileSystemRepresentation = [v7 fileSystemRepresentation];
  v15 = v8;
  _SL_BOMCopierCopyWithOptions(v12, fileSystemRepresentation, [v8 fileSystemRepresentation], v10);
  LODWORD(fileSystemRepresentation) = v16;
  _SL_BOMCopierFree(v12);

  v17 = *MEMORY[0x1E69E9840];
  return fileSystemRepresentation == 0;
}

- (uint64_t)safari_imageExistsAtFileURL:()SafariNSFileManagerExtras
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v7 = 0;
    [v3 getResourceValue:&v7 forKey:*MEMORY[0x1E695DAA0] error:0];
    v4 = v7;
    v5 = [v4 conformsToType:*MEMORY[0x1E6982E30]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)safari_ensureDirectoryExists:()SafariNSFileManagerExtras .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Couldn't create directory with error %{public}@", buf, 0xCu);
}

- (void)safari_ensureDirectoryExists:()SafariNSFileManagerExtras .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B8447000, log, OS_LOG_TYPE_DEBUG, "Couldn't create directory %@", buf, 0xCu);
}

- (void)safari_replaceItemAtURL:()SafariNSFileManagerExtras withItemFromURL:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Origin file is not readable %{public}@. Cancelling replacement of %{public}@.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)safari_replaceItemAtURL:()SafariNSFileManagerExtras withItemFromURL:error:.cold.2(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_1B8447000, v5, OS_LOG_TYPE_ERROR, "Failed to replace the file at (%{public}@). Error: %{public}@", v4, 0x16u);
}

- (void)safari_replaceItemAtURL:()SafariNSFileManagerExtras withItemFromURL:error:.cold.3(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_1B8447000, v5, OS_LOG_TYPE_ERROR, "File to replace still exist after removal at %{public}@. Error: %{public}@", v4, 0x16u);
}

@end