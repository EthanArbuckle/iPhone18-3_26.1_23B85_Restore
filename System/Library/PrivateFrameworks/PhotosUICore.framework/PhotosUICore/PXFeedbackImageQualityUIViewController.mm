@interface PXFeedbackImageQualityUIViewController
- (BOOL)wantsNegativeFeedbackSection;
- (PXFeedbackImageQualityUIViewController)initWithAssets:(id)assets delegate:(id)delegate feedbackType:(int64_t)type useCase:(int64_t)case;
- (PXFeedbackImageQualityUIViewControllerDelegate)delegate;
- (id)_captureIDFromURL:(id)l;
- (id)_captureIDsToCaptureFoldersInDirectory:(id)directory;
- (id)_componentIDForComponent:(int64_t)component;
- (id)_componentNameForComponent:(int64_t)component;
- (id)_generateTitleForFeedback:(id)feedback forAssets:(id)assets;
- (id)_generateURLsForAssetsDBGFiles:(id)files;
- (id)_generateZippedCaptureFoldersForAssets:(id)assets;
- (id)_keywordIDForComponent:(int64_t)component;
- (id)negativeFeedbackKeys;
- (id)positiveFeedbackKeys;
- (int)_addDirectoryToArchive:(id)archive withDirName:(id)name archive:(archive *)a5;
- (int)_addFileToArchive:(id)archive withFileName:(id)name archive:(archive *)a5;
- (int64_t)_radarComponentForFeedback:(id)feedback;
- (void)_archiveFolder:(id)folder destinationPath:(id)path;
- (void)_dismissActiveAlertControllerWithCompletion:(id)completion;
- (void)_fileRadarWithAssets:(id)assets positiveFeedback:(id)feedback negativeFeedback:(id)negativeFeedback customFeedback:(id)customFeedback;
- (void)userDidFinish:(BOOL)finish;
- (void)userSentPositiveFeedback:(id)feedback negativeFeedback:(id)negativeFeedback customFeedback:(id)customFeedback;
- (void)viewDidLoad;
@end

@implementation PXFeedbackImageQualityUIViewController

- (PXFeedbackImageQualityUIViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_captureIDsToCaptureFoldersInDirectory:(id)directory
{
  directoryCopy = directory;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v20];
  v7 = v20;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PXFeedbackImageQualityUIViewController__captureIDsToCaptureFoldersInDirectory___block_invoke;
  v15[3] = &unk_1E77341E0;
  v16 = directoryCopy;
  v17 = defaultManager;
  selfCopy = self;
  v9 = dictionary;
  v19 = v9;
  v10 = defaultManager;
  v11 = directoryCopy;
  [v6 enumerateObjectsUsingBlock:v15];
  v12 = v19;
  v13 = v9;

  return v9;
}

void __81__PXFeedbackImageQualityUIViewController__captureIDsToCaptureFoldersInDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 stringByAppendingPathComponent:v4];
  v6 = [v4 pathExtension];

  LODWORD(v4) = [v6 isEqualToString:@"capture"];
  if (v4)
  {
    v7 = [v5 stringByAppendingPathComponent:@"Framework"];
    v8 = [*(a1 + 40) contentsOfDirectoryAtPath:v7 error:0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__PXFeedbackImageQualityUIViewController__captureIDsToCaptureFoldersInDirectory___block_invoke_2;
    v12[3] = &unk_1E77341E0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13 = v7;
    v14 = v9;
    v15 = v10;
    v16 = v5;
    v11 = v7;
    [v8 enumerateObjectsUsingBlock:v12];
  }
}

void __81__PXFeedbackImageQualityUIViewController__captureIDsToCaptureFoldersInDirectory___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v5 = [v3 _captureIDFromURL:v4];

  [*(a1 + 48) setObject:*(a1 + 56) forKeyedSubscript:v5];
}

- (id)_captureIDFromURL:(id)l
{
  lCopy = l;
  v4 = 0;
  if ([(__CFURL *)lCopy checkResourceIsReachableAndReturnError:0])
  {
    v5 = CGImageSourceCreateWithURL(lCopy, 0);
    v4 = v5;
    if (v5)
    {
      v6 = CGImageSourceCopyPropertiesAtIndex(v5, 0, 0);
      CFRelease(v4);
      if (v6)
      {
        v8 = 0;
        [MEMORY[0x1E69C06B8] readMetadataType:13 fromCGImageProperties:v6 value:&v8 error:0];
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v4;
}

- (int)_addDirectoryToArchive:(id)archive withDirName:(id)name archive:(archive *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  nameCopy = name;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtPath:archiveCopy error:0];

  if ([v8 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = v8;
      v12 = *v31;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v29 = 0;
          v16 = [archiveCopy stringByAppendingPathComponent:v14];
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v18 = [defaultManager2 fileExistsAtPath:v16 isDirectory:&v29];

          if (v18)
          {
            lastPathComponent = [v14 lastPathComponent];
            v20 = [nameCopy stringByAppendingPathComponent:lastPathComponent];

            v21 = v29 == 1 ? [(PXFeedbackImageQualityUIViewController *)self _addDirectoryToArchive:v16 withDirName:v20 archive:a5]: [(PXFeedbackImageQualityUIViewController *)self _addFileToArchive:v16 withFileName:v20 archive:a5];
            v22 = v21;

            if (v22 == -30)
            {

              objc_autoreleasePoolPop(v15);
              v23 = -30;
              goto LABEL_17;
            }
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v23 = 0;
LABEL_17:
      v8 = v25;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (int)_addFileToArchive:(id)archive withFileName:(id)name archive:(archive *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  nameCopy = name;
  memset(&v21, 0, sizeof(v21));
  uTF8String = [archiveCopy UTF8String];
  if (!uTF8String)
  {
    NSLog(&cfstr_NoFilename.isa);
LABEL_7:
    LODWORD(v10) = -1;
    goto LABEL_8;
  }

  v9 = uTF8String;
  stat(uTF8String, &v21);
  if (!archive_entry_new())
  {
    NSLog(&cfstr_ArchiveEntryNe.isa);
    goto LABEL_7;
  }

  archive_entry_copy_stat();
  [nameCopy UTF8String];
  archive_entry_set_pathname();
  if (archive_write_header())
  {
    v10 = archive_errno();
    uTF8String2 = [nameCopy UTF8String];
    v12 = archive_error_string();
    NSLog(&cfstr_FailedToWriteH.isa, uTF8String2, v10, v12);
    archive_entry_free();
    goto LABEL_8;
  }

  v14 = open(v9, 0);
  if (v14 == -1)
  {
    v18 = __error();
    v19 = strerror(*v18);
    v20 = __error();
    NSLog(&cfstr_ErrorOpeningFi.isa, archiveCopy, v19, *v20);
    archive_entry_free();
    goto LABEL_7;
  }

  v15 = v14;
  v16 = read(v14, v22, 0x2000uLL);
  if (v16 < 1)
  {
LABEL_14:
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = v16;
    while (1)
    {
      v17 = archive_write_data();
      if (v17 != v10)
      {
        break;
      }

      v10 = read(v15, v22, 0x2000uLL);
      if (v10 <= 0)
      {
        goto LABEL_14;
      }
    }

    NSLog(&cfstr_ErrorWritingFi.isa, archiveCopy, v10, v17);
    LODWORD(v10) = archive_errno();
  }

  archive_entry_free();
  close(v15);
LABEL_8:

  return v10;
}

- (void)_archiveFolder:(id)folder destinationPath:(id)path
{
  pathCopy = path;
  folderCopy = folder;
  v7 = archive_write_new();
  archive_write_add_filter_gzip();
  archive_write_set_format_pax();
  v8 = pathCopy;
  v9 = open_dprotected_np([pathCopy UTF8String], 514, 3, 0, 416);
  if (v9 < 0)
  {
    v9 = open_dprotected_np([pathCopy UTF8String], 514, 2, 0, 416);
  }

  v10 = archive_write_open_fd();
  if (v10)
  {
    NSLog(&cfstr_ErrorCreatingA.isa, pathCopy, v10);
    v9 = -1;
  }

  lastPathComponent = [folderCopy lastPathComponent];
  [(PXFeedbackImageQualityUIViewController *)self _addDirectoryToArchive:folderCopy withDirName:lastPathComponent archive:v7];

  archive_write_free();
  if ((v9 & 0x80000000) == 0)
  {
    close(v9);
  }
}

- (id)_generateZippedCaptureFoldersForAssets:(id)assets
{
  v36 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  firstObject = [assetsCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  v6PhotoLibrary = [photoLibrary photoLibrary];

  array = [MEMORY[0x1E695DF70] array];
  if (v6PhotoLibrary)
  {
    v26 = v6PhotoLibrary;
    pathManager = [v6PhotoLibrary pathManager];
    v9 = [pathManager photoDirectoryWithType:4];

    v29 = v9;
    v10 = [(PXFeedbackImageQualityUIViewController *)self _captureIDsToCaptureFoldersInDirectory:v9];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = assetsCopy;
    obj = assetsCopy;
    v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          mainFileURL = [*(*(&v31 + 1) + 8 * i) mainFileURL];
          v16 = [(PXFeedbackImageQualityUIViewController *)self _captureIDFromURL:mainFileURL];

          v17 = [v10 objectForKeyedSubscript:v16];

          if (v17)
          {
            v18 = [v10 objectForKeyedSubscript:v16];
            lastPathComponent = [v18 lastPathComponent];

            v20 = NSTemporaryDirectory();
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.tar.gz", lastPathComponent];
            v22 = [v20 stringByAppendingString:v21];

            v23 = [v29 stringByAppendingPathComponent:lastPathComponent];
            [(PXFeedbackImageQualityUIViewController *)self _archiveFolder:v23 destinationPath:v22];
            v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:v22];
            [array addObject:v24];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    v6PhotoLibrary = v26;
    assetsCopy = v27;
  }

  else
  {
    NSLog(&cfstr_NoPhotoLibrary.isa);
  }

  return array;
}

- (id)_generateURLsForAssetsDBGFiles:(id)files
{
  v62 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = filesCopy;
  v5 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    v8 = @"IMG";
    v36 = *v56;
    do
    {
      v9 = 0;
      v37 = v6;
      do
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v55 + 1) + 8 * v9);
        fileURLsForDiagnosticFiles = [v10 fileURLsForDiagnosticFiles];
        if (fileURLsForDiagnosticFiles)
        {
          v12 = [MEMORY[0x1E69786D8] assetResourcesForAsset:v10];
          if ([v12 count])
          {
            v42 = v9;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v40 = v12;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v52;
              while (2)
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v52 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  originalFilename = [*(*(&v51 + 1) + 8 * i) originalFilename];
                  if ([originalFilename hasPrefix:v8])
                  {
                    stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];

                    goto LABEL_18;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

            stringByDeletingPathExtension = &stru_1F1741150;
LABEL_18:

            uuid = [v10 uuid];
            v20 = objc_opt_new();
            v21 = NSTemporaryDirectory();
            v39 = uuid;
            v22 = [v21 stringByAppendingPathComponent:uuid];

            v43 = v22;
            v44 = v20;
            if (([v20 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:0] & 1) == 0)
            {
              NSLog(&cfstr_FailedToCreate_2.isa);
            }

            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v41 = fileURLsForDiagnosticFiles;
            v46 = fileURLsForDiagnosticFiles;
            v23 = [v46 countByEnumeratingWithState:&v47 objects:v59 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v48;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v48 != v25)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v27 = *(*(&v47 + 1) + 8 * j);
                  lastPathComponent = [v27 lastPathComponent];
                  if ([lastPathComponent hasPrefix:v8])
                  {
                    [v4 addObject:v27];
                  }

                  else
                  {
                    v29 = v8;
                    v30 = MEMORY[0x1E695DFF8];
                    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", stringByDeletingPathExtension, lastPathComponent];
                    [v43 stringByAppendingPathComponent:v31];
                    v33 = v32 = v4;
                    v34 = [v30 fileURLWithPath:v33];

                    v4 = v32;
                    [v44 copyItemAtURL:v27 toURL:v34 error:0];
                    [v32 addObject:v34];

                    v8 = v29;
                  }
                }

                v24 = [v46 countByEnumeratingWithState:&v47 objects:v59 count:16];
              }

              while (v24);
            }

            v7 = v36;
            v6 = v37;
            fileURLsForDiagnosticFiles = v41;
            v9 = v42;
            v12 = v40;
          }

          else
          {
            [v4 addObjectsFromArray:fileURLsForDiagnosticFiles];
          }
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_keywordIDForComponent:(int64_t)component
{
  if ((component - 4) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7734260[component - 4];
  }
}

- (id)_componentNameForComponent:(int64_t)component
{
  if ((component - 1) > 8)
  {
    return @"Camera Image Feedback";
  }

  else
  {
    return off_1E7734218[component - 1];
  }
}

- (id)_componentIDForComponent:(int64_t)component
{
  v3 = @"852230";
  if (component <= 4)
  {
    v4 = @"819310";
    v5 = @"1080636";
    if (component != 4)
    {
      v5 = @"852230";
    }

    if (component != 3)
    {
      v4 = v5;
    }

    v6 = @"863870";
    v7 = @"1576982";
    if (component != 2)
    {
      v7 = @"852230";
    }

    if (component != 1)
    {
      v6 = v7;
    }

    if (component <= 2)
    {
      v3 = v6;
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    if (component <= 6)
    {
      if (component == 5)
      {
        v3 = @"1106155";
        goto LABEL_24;
      }

      v3 = @"1571907";
    }

    else
    {
      switch(component)
      {
        case 7:
          v3 = @"1104679";
          break;
        case 8:
          v3 = @"1579308";
          break;
        case 9:
          v3 = @"1722314";
          break;
        default:
          goto LABEL_24;
      }
    }

    v8 = v3;
  }

LABEL_24:

  return v3;
}

- (int64_t)_radarComponentForFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([(PXFeedbackImageQualityUIViewController *)self useCase]== 1)
  {
    integerValue = 9;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__PXFeedbackImageQualityUIViewController__radarComponentForFeedback___block_invoke;
    v11[3] = &unk_1E774BC88;
    v7 = v5;
    v12 = v7;
    [feedbackCopy enumerateKeysAndObjectsUsingBlock:v11];
    v8 = [v7 count];
    integerValue = v8;
    if (v8)
    {
      if (v8 == 1)
      {
        anyObject = [v7 anyObject];
        integerValue = [anyObject integerValue];
      }

      else if ([v7 containsObject:&unk_1F190B1D0])
      {
        integerValue = 7;
      }

      else
      {
        integerValue = 0;
      }
    }
  }

  return integerValue;
}

void __69__PXFeedbackImageQualityUIViewController__radarComponentForFeedback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 isEqual:MEMORY[0x1E695E118]];
  v6 = v9;
  if (v5)
  {
    if ([v9 isEqual:kPXFeedbackImageQualityBadColorKey] & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityBadContrastKey) & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityTooNoisyKey) & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityMissingDetailKey) & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityLensFlareKey) & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityBadHDRKey) & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityGenericProblemKey))
    {
      v7 = &unk_1F190B128;
LABEL_10:
      [*(a1 + 32) addObject:v7];
      v6 = v9;
      goto LABEL_11;
    }

    if (isAlchemistRelated(v9))
    {
      v7 = &unk_1F190B140;
      goto LABEL_10;
    }

    if (isAlchemistV2Related(v9))
    {
      v7 = &unk_1F190B158;
      goto LABEL_10;
    }

    if ([v9 isEqual:kPXFeedbackImageQualityBadHDRKey] & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityBadFlashKey) & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityShortLivePhotoKey) & 1) != 0 || (objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityMuteLivePhotoKey))
    {
      v7 = &unk_1F190B170;
      goto LABEL_10;
    }

    if ([v9 isEqualToString:kPXFeedbackImageQualitySemanticDevelopmentBadEffectKey] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", kPXFeedbackImageQualitySemanticDevelopmentNoEffectKey))
    {
      v7 = &unk_1F190B188;
      goto LABEL_10;
    }

    if ([v9 isEqualToString:kPXFeedbackImageQualityBadTrackingCPVKey] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", kPXFeedbackImageQualityBadCinematographyCPVKey) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", kPXFeedbackImageQualityBadRenderingCPVKey) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", kPXFeedbackImageQualityHardToChangeCPVKey) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", kPXFeedbackImageQualityGenericBadCPVKey))
    {
      v7 = &unk_1F190B1A0;
      goto LABEL_10;
    }

    if ([v9 isEqualToString:kPXFeedbackProvideOriginalAndEdit] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", kPXFeedbackProvideOriginalAndEditSysdiagnose))
    {
      v7 = &unk_1F190B1B8;
      goto LABEL_10;
    }

    if (([v9 isEqual:kPXFeedbackImageQualityUncomfortableStereoViewingKey] & 1) != 0 || (v8 = objc_msgSend(v9, "isEqual:", kPXFeedbackImageQualityMotionUncomfortableKey), v6 = v9, v8))
    {
      v7 = &unk_1F190B1D0;
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (id)_generateTitleForFeedback:(id)feedback forAssets:(id)assets
{
  v33 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  assetsCopy = assets;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ I took a photo and ", @"IQF :"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v28 + 1) + 8 * i) mediaType] == 2)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ I took a video and ", @"IQF :"];

          v7 = v12;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  [v6 appendString:v7];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__PXFeedbackImageQualityUIViewController__generateTitleForFeedback_forAssets___block_invoke;
  v21[3] = &unk_1E77341B8;
  v13 = v6;
  v22 = v13;
  v23 = &v24;
  [feedbackCopy enumerateKeysAndObjectsUsingBlock:v21];
  if (*(v25 + 24) == 1)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v13 substringToIndex:{objc_msgSend(v13, "length") - 2}];
    v16 = [v14 stringWithString:v15];
  }

  else
  {
    feedbackType = [(PXFeedbackImageQualityUIViewController *)self feedbackType];
    if (feedbackType <= 2)
    {
      [v13 appendString:off_1E7734200[feedbackType]];
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithString:v13];
    v15 = v7;
  }

  _Block_object_dispose(&v24, 8);

  return v16;
}

void __78__PXFeedbackImageQualityUIViewController__generateTitleForFeedback_forAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 isEqual:MEMORY[0x1E695E118]])
  {
    v5 = PXLocalizedStringFromTable(v6, @"PXFeedbackCollection");
    [*(a1 + 32) appendFormat:@"%@, ", v5];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_dismissActiveAlertControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  presentedViewController = [(PXFeedbackImageQualityUIViewController *)self presentedViewController];
  if (presentedViewController)
  {
    [(PXFeedbackImageQualityUIViewController *)self dismissViewControllerAnimated:0 completion:completionCopy];
  }
}

- (void)_fileRadarWithAssets:(id)assets positiveFeedback:(id)feedback negativeFeedback:(id)negativeFeedback customFeedback:(id)customFeedback
{
  v68 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  feedbackCopy = feedback;
  negativeFeedbackCopy = negativeFeedback;
  customFeedbackCopy = customFeedback;
  [(PXFeedbackImageQualityUIViewController *)self setAssets:assetsCopy];
  v37 = negativeFeedbackCopy;
  [(PXFeedbackImageQualityUIViewController *)self setNegativeFeedback:negativeFeedbackCopy];
  [(PXFeedbackImageQualityUIViewController *)self setImageQualityDiagnosticFileURLs:0];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = assetsCopy;
  v12 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v12)
  {
    v13 = *v64;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v64 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v63 + 1) + 8 * i);
        if ([v15 isSpatialMedia] & 1) != 0 || (objc_msgSend(v15, "isSpatial3DPresentation"))
        {
          v16 = 1;
          goto LABEL_13;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
      v16 = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_13:

  v38 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Collecting data for radar..." message:0 preferredStyle:1];
  v35 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:0 handler:0];
  [v38 addAction:v35];
  [(PXFeedbackImageQualityUIViewController *)self presentViewController:v38 animated:1 completion:0];
  v40 = objc_opt_new();
  [v40 addEntriesFromDictionary:feedbackCopy];
  [v40 addEntriesFromDictionary:v37];
  v17 = [(PXFeedbackImageQualityUIViewController *)self _generateTitleForFeedback:v40 forAssets:obj];
  if (v16)
  {
    v18 = [@"[Spatial] " stringByAppendingString:v17];

    v17 = v18;
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__63781;
  v61 = __Block_byref_object_dispose__63782;
  v62 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v58[5] appendString:{@"This radar was filed using Photos' internal Tap-to-Radar for Image Quality. If you believe this radar is not in the correct component, please route to Camera Image Feedback | iOS. \n \n"}];
  if (v16)
  {
    [v58[5] appendString:@"Observed in immersive mode (Y/N)? \n \n"];
  }

  [v58[5] appendString:@"— Please add any additional comments here —\n"];
  [v58[5] appendFormat:@"%@\n \n", customFeedbackCopy];
  [v58[5] appendString:@"— Image Quality Feedback —\n"];
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 0;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke;
  v54[3] = &unk_1E7745338;
  v54[4] = v55;
  v54[5] = &v57;
  [feedbackCopy enumerateKeysAndObjectsUsingBlock:v54];
  negativeFeedback = [(PXFeedbackImageQualityUIViewController *)self negativeFeedback];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_2;
  v53[3] = &unk_1E7745338;
  v53[4] = v55;
  v53[5] = &v57;
  [negativeFeedback enumerateKeysAndObjectsUsingBlock:v53];

  v20 = [(PXFeedbackImageQualityUIViewController *)self _generateURLsForAssetsDBGFiles:self->_assets];
  v21 = [(PXFeedbackImageQualityUIViewController *)self _generateZippedCaptureFoldersForAssets:self->_assets];
  objc_initWeak(&location, self);
  v22 = [(PXFeedbackImageQualityUIViewController *)self _radarComponentForFeedback:self->_negativeFeedback];
  v23 = [(PXFeedbackImageQualityUIViewController *)self _componentNameForComponent:v22];
  v24 = [(PXFeedbackImageQualityUIViewController *)self _componentIDForComponent:v22];
  v25 = [(PXFeedbackImageQualityUIViewController *)self _keywordIDForComponent:v22];
  v26 = MEMORY[0x1E6978630];
  assets = self->_assets;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_3;
  v42[3] = &unk_1E7734190;
  objc_copyWeak(&v51, &location);
  v28 = v17;
  v29 = v20;
  v43 = v29;
  v30 = v21;
  v44 = v30;
  v31 = v28;
  v45 = v31;
  v49 = &v57;
  v32 = v24;
  v46 = v32;
  v33 = v23;
  v47 = v33;
  v34 = v25;
  v48 = v34;
  v50 = v55;
  [v26 px_generateResourceFilesForAssets:assets completionHandler:v42];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v57, 8);
}

void __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 isEqual:MEMORY[0x1E695E118]];
  v6 = v8;
  if (v5)
  {
    v7 = PXLocalizedStringFromTable(v8, @"PXFeedbackCollection");
    if ([v8 isEqualToString:kPXFeedbackProvideOriginalAndEditSysdiagnose])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"%@\n", v7];

    v6 = v8;
  }
}

void __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 isEqual:MEMORY[0x1E695E118]];
  v6 = v8;
  if (v5)
  {
    v7 = PXLocalizedStringFromTable(v8, @"PXFeedbackCollection");
    if ([v8 isEqualToString:kPXFeedbackProvideOriginalAndEditSysdiagnose])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"%@\n", v7];

    v6 = v8;
  }
}

void __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_4;
  block[3] = &unk_1E7734168;
  objc_copyWeak(&v23, (a1 + 96));
  v18 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v15 = v7;
  *&v7 = v6;
  *(&v7 + 1) = *(a1 + 56);
  v14 = v7;
  v16 = *(a1 + 80);
  v8 = *(&v7 + 1);
  v20 = v14;
  v19 = v15;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v16;
  *(&v12 + 1) = *(a1 + 88);
  v22 = v12;
  v21 = v11;
  v13 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v23);
}

void __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_5;
  v14[3] = &unk_1E7734168;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v15 = v8;
  v16 = v7;
  v9 = *(a1 + 88);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  *&v12 = *(a1 + 80);
  *(&v12 + 1) = v9;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v17 = v13;
  v18 = v12;
  v19 = *(a1 + 96);
  objc_copyWeak(&v20, (a1 + 104));
  [WeakRetained _dismissActiveAlertControllerWithCompletion:v14];

  objc_destroyWeak(&v20);
}

void __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_5(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) arrayByAddingObjectsFromArray:*(a1 + 40)];
  v3 = [v2 arrayByAddingObjectsFromArray:*(a1 + 48)];

  v4 = *(*(*(a1 + 88) + 8) + 40);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(*(*(a1 + 96) + 8) + 24);
  if (v9 == 1)
  {
    v14[0] = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v10 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_6;
  v12[3] = &unk_1E7747EB0;
  objc_copyWeak(&v13, (a1 + 104));
  BYTE1(v11) = 1;
  LOBYTE(v11) = v9;
  [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v6 description:v4 classification:@"Other Bug" componentID:v5 componentName:v7 componentVersion:@"iOS" keyword:v8 screenshotURLs:0 attachmentURLs:v3 includeSysDiagnose:v11 includeInternalRelease:v10 additionalExtensionIdentifiers:v12 completionHandler:?];
  if (v9)
  {
  }

  objc_destroyWeak(&v13);
}

void __112__PXFeedbackImageQualityUIViewController__fileRadarWithAssets_positiveFeedback_negativeFeedback_customFeedback___block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 feedbackImageQualityUIViewController:v5 didFinish:a2];
}

- (void)userDidFinish:(BOOL)finish
{
  finishCopy = finish;
  delegate = [(PXFeedbackImageQualityUIViewController *)self delegate];
  [delegate feedbackImageQualityUIViewController:self didFinish:finishCopy];
}

- (BOOL)wantsNegativeFeedbackSection
{
  feedbackType = [(PXFeedbackImageQualityUIViewController *)self feedbackType];
  if (feedbackType != 1)
  {
    LOBYTE(feedbackType) = [(PXFeedbackImageQualityUIViewController *)self feedbackType]== 2;
  }

  return feedbackType;
}

- (void)userSentPositiveFeedback:(id)feedback negativeFeedback:(id)negativeFeedback customFeedback:(id)customFeedback
{
  customFeedbackCopy = customFeedback;
  negativeFeedbackCopy = negativeFeedback;
  feedbackCopy = feedback;
  assets = [(PXFeedbackImageQualityUIViewController *)self assets];
  [(PXFeedbackImageQualityUIViewController *)self _fileRadarWithAssets:assets positiveFeedback:feedbackCopy negativeFeedback:negativeFeedbackCopy customFeedback:customFeedbackCopy];
}

- (id)negativeFeedbackKeys
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(PXFeedbackImageQualityUIViewController *)self useCase]== 1)
  {
    v3 = +[PXFeedbackEntry negativeAlchemistV2FeedbackForImageQualityLiveOnKeys];
LABEL_3:
    v4 = v3;
    goto LABEL_19;
  }

  [(PXFeedbackImageQualityUIViewController *)self assets];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isSpatial3DPresentation])
        {

LABEL_17:
          v13 = +[PXFeedbackEntry negativeAlchemistFeedbackForImageQualityKeys];
          goto LABEL_18;
        }

        [v10 fetchPropertySetsIfNeeded];
        spatialMediaProperties = [v10 spatialMediaProperties];
        spatialMediaType = [spatialMediaProperties spatialMediaType];

        if (spatialMediaType == 2)
        {
          goto LABEL_17;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && !_os_feature_enabled_impl())
  {
    v3 = +[PXFeedbackEntry negativeFeedbackForImageQualityKeys];
    goto LABEL_3;
  }

  v13 = +[PXFeedbackEntry negativeAlchemistV2FeedbackForImageQualityKeys];
LABEL_18:
  v14 = v13;
  v15 = +[PXFeedbackEntry negativeFeedbackForImageQualityKeys];
  v4 = [v14 arrayByAddingObjectsFromArray:v15];

LABEL_19:

  return v4;
}

- (id)positiveFeedbackKeys
{
  if ([(PXFeedbackImageQualityUIViewController *)self useCase]== 1)
  {
    +[PXFeedbackEntry positiveAlchemistV2FeedbackForImageQualityLiveOnKeys];
  }

  else
  {
    +[PXFeedbackEntry positiveFeedbackForImageQualityKeys];
  }
  v2 = ;

  return v2;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PXFeedbackImageQualityUIViewController;
  [(PXFeedbackImageQualityUIViewController *)&v28 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
  [(PXFeedbackImageQualityUIViewController *)self setNavigationController:v3];

  navigationController = [(PXFeedbackImageQualityUIViewController *)self navigationController];
  [(PXFeedbackImageQualityUIViewController *)self addChildViewController:navigationController];

  view = [(PXFeedbackImageQualityUIViewController *)self view];
  navigationController2 = [(PXFeedbackImageQualityUIViewController *)self navigationController];
  view2 = [navigationController2 view];
  [view addSubview:view2];

  view3 = [(PXFeedbackImageQualityUIViewController *)self view];
  [view3 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  navigationController3 = [(PXFeedbackImageQualityUIViewController *)self navigationController];
  view4 = [navigationController3 view];
  [view4 setFrame:{v10, v12, v14, v16}];

  navigationController4 = [(PXFeedbackImageQualityUIViewController *)self navigationController];
  view5 = [navigationController4 view];
  [view5 setAutoresizingMask:18];

  navigationController5 = [(PXFeedbackImageQualityUIViewController *)self navigationController];
  [navigationController5 didMoveToParentViewController:self];

  navigationController6 = [(PXFeedbackImageQualityUIViewController *)self navigationController];
  [navigationController6 setToolbarHidden:0];

  v23 = [PXFeedbackFormUIViewController alloc];
  positiveFeedbackKeys = [(PXFeedbackImageQualityUIViewController *)self positiveFeedbackKeys];
  negativeFeedbackKeys = [(PXFeedbackImageQualityUIViewController *)self negativeFeedbackKeys];
  v26 = [(PXFeedbackFormUIViewController *)v23 initWithDelegate:self positiveKeys:positiveFeedbackKeys negativeKeys:negativeFeedbackKeys wantsCustomFeedbackSection:1];

  navigationController7 = [(PXFeedbackImageQualityUIViewController *)self navigationController];
  [navigationController7 pushViewController:v26 animated:1];
}

- (PXFeedbackImageQualityUIViewController)initWithAssets:(id)assets delegate:(id)delegate feedbackType:(int64_t)type useCase:(int64_t)case
{
  assetsCopy = assets;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = PXFeedbackImageQualityUIViewController;
  v13 = [(PXFeedbackImageQualityUIViewController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_feedbackType = type;
    v13->_useCase = case;
    objc_storeStrong(&v13->_assets, assets);
    objc_storeWeak(&v14->_delegate, delegateCopy);
  }

  return v14;
}

@end