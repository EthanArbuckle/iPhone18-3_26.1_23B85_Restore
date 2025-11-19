@interface SKDiskImage
+ (id)diskImageWithURL:(id)a3 params:(id)a4 error:(id *)a5;
- (BOOL)attachBeforeResizeWithStdinPass:(BOOL)a3 error:(id *)a4;
- (BOOL)chpassWithParams:(id)a3 error:(id *)a4;
- (BOOL)createBlankWithParams:(id)a3 progress:(id)a4 error:(id *)a5;
- (BOOL)ejectWithError:(id *)a3;
- (BOOL)isAttached;
- (BOOL)mount:(id)a3 params:(id)a4 outError:(id *)a5;
- (BOOL)resizeWithParams:(id)a3 progress:(id)a4 error:(id *)a5;
- (BOOL)retrieveDIInfoWithParams:(id)a3 error:(id *)a4;
- (SKDiskImage)initWithURL:(id)a3 diParams:(id)a4 shadowURLs:(id)a5 error:(id *)a6;
- (id)attachNoMountWithError:(id *)a3;
- (id)attachWithError:(id *)a3;
- (id)attachWithParams:(id)a3 error:(id *)a4;
- (id)createWithParams:(id)a3 completionBlock:(id)a4;
- (id)deduceDiskWithError:(id *)a3;
- (id)description;
- (id)diAttachWithParams:(id)a3 error:(id *)a4;
- (id)newResizerWithParams:(id)a3 error:(id *)a4;
- (id)newShallowResizerWithParams:(id)a3 error:(id *)a4;
- (id)redactedDescription;
- (id)resizeLimitsInternalWithLimitsParams:(id)a3 error:(id *)a4;
- (id)resizeLimitsShallowInternalWithLimitsParams:(id)a3 error:(id *)a4;
- (id)resizeLimitsWithError:(id *)a3;
- (id)resizeLimitsWithLimitsParams:(id)a3 error:(id *)a4;
- (id)resizeWithParams:(id)a3 completionBlock:(id)a4;
- (id)retrieveInfoWithParams:(id)a3 error:(id *)a4;
- (unint64_t)diResize:(id)a3 error:(id *)a4;
- (void)createFromDiskWithParams:(id)a3 progress:(id)a4 completionBlock:(id)a5;
- (void)createFromFolderWithParams:(id)a3 progress:(id)a4 completionBlock:(id)a5;
- (void)createWithParams:(id)a3 progressReadyHandler:(id)a4 completionBlock:(id)a5;
@end

@implementation SKDiskImage

+ (id)diskImageWithURL:(id)a3 params:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [[SKDiskImage alloc] initWithURL:v7 error:a5];
  if (v9)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v10 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__SKDiskImage_diskImageWithURL_params_error___block_invoke;
    v18[3] = &unk_279D1F8B8;
    p_buf = &buf;
    v11 = v10;
    v19 = v11;
    v12 = [(SKDiskImage *)v9 createWithParams:v8 completionBlock:v18];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      v14 = 0;
      if (a5)
      {
        *a5 = v13;
      }
    }

    else
    {
      v14 = v9;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = SKGetOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[SKDiskImage diskImageWithURL:params:error:]";
      _os_log_impl(&dword_26BBB8000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to initialize SKDiskImage", &buf, 0xCu);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void __45__SKDiskImage_diskImageWithURL_params_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)createWithParams:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SKProgress progressWithTotalUnitCount:100];
  v9 = +[SKManager sharedManager];
  v10 = [v9 frameworkAsyncOperationsQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SKDiskImage_createWithParams_completionBlock___block_invoke;
  v17[3] = &unk_279D1F970;
  v21 = v7;
  v18 = v6;
  v19 = self;
  v11 = v8;
  v20 = v11;
  v12 = v7;
  v13 = v6;
  dispatch_async(v10, v17);

  v14 = v20;
  v15 = v11;

  return v11;
}

void __48__SKDiskImage_createWithParams_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 sourceImage];

    if (v3)
    {
      v4 = 0;
      [*(a1 + 40) createFromDiskWithParams:*(a1 + 32) progress:*(a1 + 48) completionBlock:*(a1 + 56)];
    }

    else
    {
      v6 = [*(a1 + 32) sourceFolder];

      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(a1 + 48);
      if (v6)
      {
        v4 = 0;
        [v7 createFromFolderWithParams:v8 progress:v9 completionBlock:*(a1 + 56)];
      }

      else
      {
        v10 = 0;
        [v7 createBlankWithParams:v8 progress:v9 error:&v10];
        v4 = v10;
        (*(*(a1 + 56) + 16))();
      }
    }

    [*(a1 + 32) setTemporaryPassphrase:0];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    v11 = 0;
    [SKError failWithError:v5 error:&v11];
    v4 = v11;

    (*(*(a1 + 56) + 16))();
  }
}

- (void)createWithParams:(id)a3 progressReadyHandler:(id)a4 completionBlock:(id)a5
{
  v9 = a4;
  v8 = [(SKDiskImage *)self createWithParams:a3 completionBlock:a5];
  if (v9)
  {
    v9[2](v9, v8);
  }
}

- (BOOL)createBlankWithParams:(id)a3 progress:(id)a4 error:(id *)a5
{
  v94[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 numBlocks] > 0x4F)
  {
    v11 = [(SKDiskImage *)self imageURL];
    v12 = [v8 diCreateParamsWithURL:v11 error:a5];

    if (v12)
    {
      if ([MEMORY[0x277D055E0] createBlankWithParams:v12 error:a5])
      {
        [(SKDiskImage *)self setDiParams:v12];
        v13 = [v8 fsFormat];

        if (v13)
        {
          v14 = objc_alloc_init(SKDiskImageAttachParams);
          [(SKDiskImageAttachParams *)v14 setPolicy:0];
          [(SKDiskImageAttachParams *)v14 setIsManagedAttach:1];
          v15 = [(SKDiskImage *)self attachWithParams:v14 error:a5];
          v74 = v15;
          if (v15)
          {
            v16 = v15;
            v72 = v8;
            v71 = dispatch_semaphore_create(0);
            v73 = v16;
            v17 = [SKEraseDisk eraseDiskWithRootDisk:v16 error:a5];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 formattableFilesystems];
              if (v19)
              {
                v20 = MEMORY[0x277CCAC30];
                v87[0] = MEMORY[0x277D85DD0];
                v87[1] = 3221225472;
                v87[2] = __eraseDisk_block_invoke;
                v87[3] = &unk_279D1F9E8;
                v21 = v72;
                v88 = v21;
                v22 = [v20 predicateWithBlock:v87];
                v70 = [v19 filteredArrayUsingPredicate:v22];

                if ([v70 count])
                {
                  v23 = [v21 volumeName];
                  v24 = [v70 firstObject];
                  v69 = [SKVolumeDescriptor descriptorWithName:v23 filesystem:v24];

                  if (v69)
                  {
                    v25 = [SKPartitionDescriptor descriptorWithVolume:?];
                    v26 = v25;
                    if (v25)
                    {
                      v94[0] = v25;
                      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:1];
                      v68 = [SKEraseDisk eraseDiskWithRootDisk:v73 descriptors:v27 error:a5];

                      if (v68)
                      {
                        v81 = 0;
                        v82 = &v81;
                        v83 = 0x3032000000;
                        v84 = __Block_byref_object_copy__1;
                        v85 = __Block_byref_object_dispose__1;
                        v86 = 0;
                        v75 = 0;
                        v76 = &v75;
                        v77 = 0x3032000000;
                        v78 = __Block_byref_object_copy__1;
                        v79 = __Block_byref_object_dispose__1;
                        v80 = 0;
                        v28 = SKGetOSLog();
                        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          *&buf[4] = v73;
                          _os_log_impl(&dword_26BBB8000, v28, OS_LOG_TYPE_DEFAULT, "Submitting erase on %@", buf, 0xCu);
                        }

                        *buf = MEMORY[0x277D85DD0];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __eraseDisk_block_invoke_125;
                        v90 = &unk_279D1FA10;
                        v92 = &v75;
                        v93 = &v81;
                        v29 = v71;
                        v91 = v29;
                        v66 = [v68 eraseProgressReportingWithCompletionBlock:buf];
                        v67 = [[SKProgressObserver alloc] initWithProgress:v66];
                        dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
                        v30 = v82;
                        if (v82[5])
                        {
                          v31 = [(SKProgressObserver *)v67 messages];
                          v32 = [v31 count] == 0;

                          v30 = v82;
                          if (!v32)
                          {
                            v64 = v26;
                            v33 = [v82[5] userInfo];
                            v65 = [v33 mutableCopy];

                            v34 = MEMORY[0x277CCACA8];
                            v35 = [(SKProgressObserver *)v67 messages];
                            v36 = [v35 componentsJoinedByString:@"\n"];
                            v37 = [v34 stringWithFormat:@"%@", v36];
                            [v65 setObject:v37 forKey:*MEMORY[0x277CCA068]];

                            v38 = MEMORY[0x277CCA9B8];
                            v39 = [v82[5] domain];
                            v40 = [v38 errorWithDomain:v39 code:objc_msgSend(v82[5] userInfo:{"code"), v65}];
                            v41 = v82[5];
                            v82[5] = v40;

                            v26 = v64;
                            v30 = v82;
                          }
                        }

                        if (a5)
                        {
                          v42 = v30[5];
                          if (v42)
                          {
                            *a5 = v42;
                          }
                        }

                        v43 = v76[5];

                        _Block_object_dispose(&v75, 8);
                        _Block_object_dispose(&v81, 8);

                        v18 = v68;
                      }

                      else
                      {
                        v57 = SKGetOSLog();
                        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315138;
                          *&buf[4] = "SKDisk *eraseDisk(SKDisk * _Nonnull __strong, SKDiskImageCreateParams * _Nonnull __strong, NSError *__autoreleasing * _Nullable)";
                          _os_log_impl(&dword_26BBB8000, v57, OS_LOG_TYPE_ERROR, "%s: Failed to initialize disk eraser", buf, 0xCu);
                        }

                        v18 = 0;
                        v43 = 0;
                      }
                    }

                    else
                    {
                      v56 = SKGetOSLog();
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_26BBB8000, v56, OS_LOG_TYPE_ERROR, "Failed to create volume partition descriptor", buf, 2u);
                      }

                      v43 = [SKError nilWithSKErrorCode:255 error:a5];
                    }
                  }

                  else
                  {
                    v55 = SKGetOSLog();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_26BBB8000, v55, OS_LOG_TYPE_ERROR, "Failed to create volume descriptor", buf, 2u);
                    }

                    v43 = [SKError nilWithSKErrorCode:255 error:a5];
                  }
                }

                else
                {
                  v53 = +[SKBaseManager sharedManager];
                  [v53 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_121];

                  v54 = SKGetOSLog();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_26BBB8000, v54, OS_LOG_TYPE_FAULT, "Failed to find supported file systems", buf, 2u);
                  }

                  v43 = [SKError nilWithSKErrorCode:255 error:a5];
                }

                v52 = v70;
              }

              else
              {
                v52 = SKGetOSLog();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315138;
                  *&buf[4] = "SKDisk *eraseDisk(SKDisk * _Nonnull __strong, SKDiskImageCreateParams * _Nonnull __strong, NSError *__autoreleasing * _Nullable)";
                  _os_log_impl(&dword_26BBB8000, v52, OS_LOG_TYPE_ERROR, "%s: Failed to get formattable filesystems", buf, 0xCu);
                }

                v43 = 0;
              }
            }

            else
            {
              v18 = SKGetOSLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                *&buf[4] = "SKDisk *eraseDisk(SKDisk * _Nonnull __strong, SKDiskImageCreateParams * _Nonnull __strong, NSError *__autoreleasing * _Nullable)";
                _os_log_impl(&dword_26BBB8000, v18, OS_LOG_TYPE_ERROR, "%s: Failed to initialize disk eraser", buf, 0xCu);
              }

              v43 = 0;
            }

            if (v43)
            {
              [v73 ejectWithError:0];

              goto LABEL_64;
            }

            v61 = SKGetOSLog();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v73;
              _os_log_impl(&dword_26BBB8000, v61, OS_LOG_TYPE_ERROR, "Failed to erase %@", buf, 0xCu);
            }

            [v73 ejectWithError:0];
          }

          else
          {
            v47 = SKGetOSLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              if (a5)
              {
                v48 = *a5;
              }

              else
              {
                v48 = &stru_287C8F598;
              }

              *buf = 136315394;
              *&buf[4] = "[SKDiskImage createBlankWithParams:progress:error:]";
              *&buf[12] = 2112;
              *&buf[14] = v48;
              _os_log_impl(&dword_26BBB8000, v47, OS_LOG_TYPE_ERROR, "%s: Failed to attach after create %@", buf, 0x16u);
            }
          }

          [(SKDiskImage *)self setDiParams:0];
          v62 = [MEMORY[0x277CCAA00] defaultManager];
          v63 = [(SKDiskImage *)self imageURL];
          [v62 removeItemAtURL:v63 error:0];

          v10 = 0;
          goto LABEL_68;
        }

LABEL_64:
        v44 = SKGetOSLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [(SKDiskImage *)self imageURL];
          *buf = 138412290;
          *&buf[4] = v58;
          _os_log_impl(&dword_26BBB8000, v44, OS_LOG_TYPE_DEFAULT, "Created disk image successfully at %@", buf, 0xCu);
        }

        v10 = 1;
        goto LABEL_67;
      }

      v44 = SKGetOSLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        if (a5)
        {
          v46 = *a5;
        }

        else
        {
          v46 = &stru_287C8F598;
        }

        *buf = 138412290;
        *&buf[4] = v46;
        v49 = "Failed to create disk image %@";
        v50 = v44;
        v51 = 12;
LABEL_35:
        _os_log_impl(&dword_26BBB8000, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
      }
    }

    else
    {
      v44 = SKGetOSLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        if (a5)
        {
          v45 = *a5;
        }

        else
        {
          v45 = &stru_287C8F598;
        }

        *buf = 136315394;
        *&buf[4] = "[SKDiskImage createBlankWithParams:progress:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v45;
        v49 = "%s: Failed to create 'create params' %@";
        v50 = v44;
        v51 = 22;
        goto LABEL_35;
      }
    }

    v10 = 0;
LABEL_67:

LABEL_68:
    goto LABEL_69;
  }

  v10 = [SKError failWithPOSIXCode:28 error:a5];
LABEL_69:

  v59 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)createFromDiskWithParams:(id)a3 progress:(id)a4 completionBlock:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(SKDiskImage *)self imageURL];
  v25 = 0;
  v12 = [v10 diConvertParamsWithOutputURL:v11 error:&v25];

  v13 = v25;
  if (v12)
  {
    v14 = MEMORY[0x277D055E0];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __65__SKDiskImage_createFromDiskWithParams_progress_completionBlock___block_invoke;
    v21 = &unk_279D1F998;
    v24 = v9;
    v22 = self;
    v23 = v12;
    v15 = [v14 convertWithParams:v23 completionBlock:&v18];
    [v8 addChild:v15 withPendingUnitCount:{100, v18, v19, v20, v21, v22}];
  }

  else
  {
    v16 = SKGetOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[SKDiskImage createFromDiskWithParams:progress:completionBlock:]";
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_26BBB8000, v16, OS_LOG_TYPE_ERROR, "%s: Could not create 'convert params': %@", buf, 0x16u);
    }

    (*(v9 + 2))(v9, v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __65__SKDiskImage_createFromDiskWithParams_progress_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = SKGetOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "Create from device failed: %@", &v7, 0xCu);
    }

    v5 = *(*(a1 + 48) + 16);
  }

  else
  {
    [*(a1 + 32) setDiParams:*(a1 + 40)];
    v5 = *(*(a1 + 48) + 16);
  }

  v5();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)createFromFolderWithParams:(id)a3 progress:(id)a4 completionBlock:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SKDiskImage *)self imageURL];
  v23 = 0;
  v12 = [v8 diCreatorFromFolderWithURL:v11 error:&v23];
  v13 = v23;

  if (v12)
  {
    v14 = [v8 sourceFolder];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __67__SKDiskImage_createFromFolderWithParams_progress_completionBlock___block_invoke;
    v21 = &unk_279D1F9C0;
    v22 = v10;
    v15 = [v12 createImageWithSrcFolder:v14 completionBlock:&v18];

    [v9 addChild:v15 withPendingUnitCount:{100, v18, v19, v20, v21}];
  }

  else
  {
    v16 = SKGetOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[SKDiskImage createFromFolderWithParams:progress:completionBlock:]";
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_26BBB8000, v16, OS_LOG_TYPE_ERROR, "%s: DiskImageCreatorFromFolder initialization failed: %@", buf, 0x16u);
    }

    (*(v10 + 2))(v10, v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __67__SKDiskImage_createFromFolderWithParams_progress_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = SKGetOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "Creation from folder failed: %@", &v7, 0xCu);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAttached
{
  waitTime = 5;
  IOKitWaitQuiet(*MEMORY[0x277CD2898], &waitTime);
  v3 = [[SKIOObject alloc] initWithClassName:@"AppleDiskImagesController"];
  v4 = [(SKIOObject *)v3 newIteratorWithOptions:0];
  v5 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v4];
  if (v5)
  {
    v6 = v5;
    v14 = v3;
    while (1)
    {
      if (IOObjectConformsTo([(SKIOObject *)v6 ioObj], "AppleDiskImageDevice"))
      {
        v7 = [(SKIOObject *)v6 copyPropertyWithClass:objc_opt_class() key:@"DiskImageURL"];
        v8 = [(SKDiskImage *)self imageURL];
        v9 = [v8 absoluteString];
        v10 = [v7 isEqualToString:v9];

        if (v10)
        {
          break;
        }
      }

      v11 = [(SKIOObject *)[SKIOMedia alloc] initWithIteratorNext:v4];

      v6 = v11;
      if (!v11)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = 1;
LABEL_9:

    v3 = v14;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (SKDiskImage)initWithURL:(id)a3 diParams:(id)a4 shadowURLs:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = SKDiskImage;
  v13 = [(SKDiskImage *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_imageURL, a3);
    objc_storeStrong(&v14->_diParams, a4);
    objc_storeStrong(&v14->_shadowURLs, a5);
  }

  return v14;
}

- (id)attachWithError:(id *)a3
{
  v5 = objc_opt_new();
  v6 = [(SKDiskImage *)self attachWithParams:v5 error:a3];

  return v6;
}

- (id)attachNoMountWithError:(id *)a3
{
  v5 = objc_opt_new();
  [v5 setPolicy:0];
  v6 = [(SKDiskImage *)self attachWithParams:v5 error:a3];

  return v6;
}

- (id)attachWithParams:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    v12 = [SKError nilWithError:v13 error:a4];

    goto LABEL_15;
  }

  v7 = SKGetOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SKDiskImage *)self imageURL];
    v18 = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_DEFAULT, "Attaching %@ with %@", &v18, 0x16u);
  }

  v9 = [(SKDiskImage *)self diAttachWithParams:v6 error:a4];
  if (v9)
  {
    if ([(SKDiskImage *)self mount:v9 params:v6 outError:a4])
    {
      v10 = SKGetOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(SKDiskImage *)self imageURL];
        v18 = 138412546;
        v19 = v11;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_DEFAULT, "Attached disk image %@ to %@ device successfully", &v18, 0x16u);
      }

      v12 = v9;
      goto LABEL_14;
    }
  }

  else
  {
    v14 = SKGetOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(SKDiskImage *)self imageURL];
      v18 = 136315394;
      v19 = "[SKDiskImage attachWithParams:error:]";
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%s: Failed to attach %@", &v18, 0x16u);
    }
  }

  v12 = 0;
LABEL_14:

LABEL_15:
  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

id __38__SKDiskImage_attachWithParams_error___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKDiskImage.m", 348);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (BOOL)retrieveDIInfoWithParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SKDiskImage *)self diParams];

  v8 = objc_alloc(MEMORY[0x277D055C8]);
  if (v7)
  {
    v9 = [(SKDiskImage *)self diParams];
    v10 = [v8 initWithExistingParams:v9 error:a4];
  }

  else
  {
    v9 = [(SKDiskImage *)self imageURL];
    v10 = [v8 initWithURL:v9 error:a4];
  }

  v11 = v10;

  if (!v11)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v12 = [v6 stdinPassPhrase];
  v13 = [v11 readPassphraseFlags];
  if (v12)
  {
    v14 = v13 | 8;
  }

  else
  {
    v14 = v13;
  }

  [v11 setReadPassphraseFlags:v14];
  [v11 setExtraInfo:{objc_msgSend(v6, "extraInfo")}];
  [v11 setEncryptionInfoOnly:{objc_msgSend(v6, "encryptionInfoOnly")}];
  if (([MEMORY[0x277D055E0] retrieveInfoWithParams:v11 error:a4] & 1) == 0)
  {
    v17 = SKGetOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_ERROR, "Failed to retrieve image info", v19, 2u);
    }

    goto LABEL_13;
  }

  [(SKDiskImage *)self setDiParams:v11];
  v15 = [v11 imageInfo];
  [v6 setImageInfo:v15];

  v16 = 1;
LABEL_14:

  return v16;
}

- (id)retrieveInfoWithParams:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(SKDiskImage *)self retrieveDIInfoWithParams:v6 error:a4])
  {
    if ([v6 encryptionInfoOnly])
    {
      v7 = [v6 imageInfo];
    }

    else
    {
      v8 = objc_opt_new();
      v9 = v8;
      if (v8)
      {
        [v8 setReadOnly:1];
        [v9 setIsManagedAttach:1];
        [v9 setPolicy:0];
        v10 = [(SKDiskImage *)self attachWithParams:v9 error:a4];
        if (v10)
        {
          v11 = [v6 getInfoDictWithDisk:v10];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = [SKError nilWithSKErrorCode:254 error:a4];
          }

          v7 = v13;
        }

        else
        {
          v14 = SKGetOSLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v17 = 136315138;
            v18 = "[SKDiskImage retrieveInfoWithParams:error:]";
            _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%s: Attach failed", &v17, 0xCu);
          }

          v7 = 0;
        }
      }

      else
      {
        v7 = [SKError nilWithSKErrorCode:251 error:a4];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)chpassWithParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    [SKError failWithError:v7 error:a4];
  }

  v8 = [(SKDiskImage *)self imageURL];
  v9 = [v6 diChpassParamsWithURL:v8 error:a4];

  if (!v9)
  {
    goto LABEL_9;
  }

  if (([MEMORY[0x277D055E0] changePasswordWithParams:v9 error:a4] & 1) == 0)
  {
    v11 = SKGetOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_ERROR, "Failed to change passphrase for image", v13, 2u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (id)diAttachWithParams:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  obj = 0;
  v7 = SKGetOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(SKDiskImage *)self imageURL];
    *buf = 138412546;
    v40 = v8;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_DEBUG, "Attaching %@ with %@", buf, 0x16u);
  }

  v9 = [(SKDiskImage *)self diParams];

  if (v9)
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_DEBUG, "Using saved instance of di2 params", buf, 2u);
    }

    v11 = [(SKDiskImage *)self diParams];
    v37 = 0;
    v12 = [v6 diAttachParamsWithExistingParams:v11 error:&v37];
    v13 = v37;

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = [(SKDiskImage *)self imageURL];
    v15 = [(SKDiskImage *)self shadowURLs];
    v36 = 0;
    v12 = [v6 diAttachParamsWithURL:v14 shadowURLs:v15 error:&v36];
    v13 = v36;

    [(SKDiskImage *)self setDiParams:v12];
    if (v12)
    {
      goto LABEL_13;
    }
  }

  if ([v13 code] == 45)
  {
    v16 = SKGetOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(SKDiskImage *)self imageURL];
      *buf = 138412546;
      v40 = v17;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_26BBB8000, v16, OS_LOG_TYPE_DEFAULT, "Fallback attaching %@ with %@", buf, 0x16u);
    }

    v18 = MEMORY[0x277D05598];
    v19 = [(SKDiskImage *)self imageURL];
    v35 = 0;
    v20 = [v18 diskImageAttach:v19 readOnly:objc_msgSend(v6 autoMount:"readOnly") BSDName:0 error:{&v35, a4}];
    v21 = v35;

LABEL_26:
    v28 = 0;
    if (v20 && v21)
    {
      v28 = objc_opt_new();
      obj = v28;
      [v28 setBSDName:v21];
    }

    if (v20)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

LABEL_13:
  if (a4 && v13)
  {
    v22 = v13;
    *a4 = v13;
  }

  v23 = SKGetOSLog();
  v24 = v23;
  if (!v12)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v40 = "[SKDiskImage diAttachWithParams:error:]";
      _os_log_impl(&dword_26BBB8000, v24, OS_LOG_TYPE_ERROR, "%s: Failed to create attach params", buf, 0xCu);
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(SKDiskImage *)self imageURL];
    *buf = 138412546;
    v40 = v25;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_26BBB8000, v24, OS_LOG_TYPE_DEFAULT, "Attaching %@ with %@", buf, 0x16u);
  }

  if (![v6 isManagedAttach])
  {
    v34 = 0;
    v20 = [MEMORY[0x277D05598] diskImageAttach:v12 BSDName:&v34 error:a4];
    v21 = v34;
    goto LABEL_26;
  }

  v26 = [v6 mountParams];
  v27 = [v26 mountPoint];
  [v12 setUniqueDevice:v27 != 0];

  if (![MEMORY[0x277D055E0] managedAttachWithParams:v12 handle:&obj error:a4])
  {
LABEL_33:
    v31 = SKGetOSLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_26BBB8000, v31, OS_LOG_TYPE_ERROR, "Failed to attach disk image", buf, 2u);
    }

LABEL_36:
    v30 = 0;
    goto LABEL_37;
  }

  v28 = obj;
LABEL_30:
  objc_storeStrong(&self->_deviceHandle, v28);
  v29 = SKGetOSLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = obj;
    _os_log_impl(&dword_26BBB8000, v29, OS_LOG_TYPE_DEFAULT, "Attached device %@", buf, 0xCu);
  }

  v30 = [(SKDiskImage *)self deduceDiskWithError:a4];
LABEL_37:

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)deduceDiskWithError:(id *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = +[SKManager syncSharedManager];
  v6 = [(SKDiskImage *)self deviceHandle];

  if (v6)
  {
    v7 = [(SKDiskImage *)self deviceHandle];
    v8 = [v7 BSDName];
    v9 = [v5 diskForString:v8];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v12 = SKGetOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(SKDiskImage *)self deviceHandle];
        v14 = [v13 BSDName];
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_ERROR, "Couldn't discover disk %@ after attach", &v17, 0xCu);
      }

      v10 = [SKError nilWithSKErrorCode:251 error:a3];
    }

    v11 = v10;
  }

  else
  {
    v11 = [SKError nilWithSKErrorCode:251 error:a3];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)ejectWithError:(id *)a3
{
  v4 = [(SKDiskImage *)self deduceDiskWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 ejectWithError:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)mount:(id)a3 params:(id)a4 outError:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 policy];
  if (v9)
  {
    if (v9 == 2)
    {
      v12 = SKGetOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_DEFAULT, "Mounting disk %@ with %@", &v18, 0x16u);
      }

      v13 = [v8 mountParams];
      v14 = [v7 mountWithParams:v13 error:a5];

      if ((v14 & 1) == 0)
      {
        [v7 ejectWithError:0];
        v15 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      if (v9 != 1)
      {
        v15 = [SKError failWithSKErrorCode:250 error:a5];
        goto LABEL_13;
      }

      v10 = SKGetOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_DEFAULT, "Mounting disk %@ with %@", &v18, 0x16u);
      }

      v11 = [v8 mountParams];
      [v7 mountWithParams:v11 error:0];
    }
  }

  v15 = 1;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)diResize:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SKDiskImage *)self diParams];

  v8 = objc_alloc(MEMORY[0x277D055D0]);
  if (v7)
  {
    v9 = [(SKDiskImage *)self diParams];
    v10 = [v8 initWithExistingParams:v9 size:objc_msgSend(v6 error:{"size"), a4}];

    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = [(SKDiskImage *)self imageURL];
    v10 = [v8 initWithURL:v11 size:objc_msgSend(v6 error:{"size"), a4}];

    [(SKDiskImage *)self setDiParams:v10];
    if (!v10)
    {
LABEL_10:
      v15 = 0;
      goto LABEL_11;
    }
  }

  v12 = [v6 stdinPassPhrase];
  v13 = [v10 readPassphraseFlags];
  if (v12)
  {
    v14 = v13 | 8;
  }

  else
  {
    v14 = v13;
  }

  [v10 setReadPassphraseFlags:v14];
  if (![MEMORY[0x277D055E0] resizeWithParams:v10 error:a4])
  {
    goto LABEL_10;
  }

  v15 = [v10 size];
LABEL_11:

  return v15;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  deviceHandle = self->_deviceHandle;
  if (deviceHandle)
  {
    v7 = [(DIDeviceHandle *)deviceHandle BSDName];
    v8 = [v3 stringWithFormat:@"<%@: { device: %@}>", v5, v7];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"<%@: { device: %@}>", v5, 0];
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  imageURL = self->_imageURL;
  deviceHandle = self->_deviceHandle;
  if (deviceHandle)
  {
    v8 = [(DIDeviceHandle *)deviceHandle BSDName];
    v9 = [v3 stringWithFormat:@"<%@: { image URL: %@, device: %@}>", v5, imageURL, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"<%@: { image URL: %@, device: %@}>", v5, self->_imageURL, 0];
  }

  return v9;
}

- (id)newShallowResizerWithParams:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setShallow:{objc_msgSend(v6, "shallow")}];
  [v7 setStdinPassPhrase:{objc_msgSend(v6, "stdinPassPhrase")}];
  v8 = [(SKDiskImage *)self resizeLimitsShallowInternalWithLimitsParams:v7 error:a4];
  if (v8)
  {
    v9 = [(SKDiskImageResizerBase *)[SKDiskImageResizer alloc] initWithDiskImage:self limits:v8 resizeParams:v6 error:a4];
  }

  else
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[SKDiskImage(Resize) newShallowResizerWithParams:error:]";
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_ERROR, "%s: Failed to get shallow limits", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)newResizerWithParams:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 shallow])
  {
    v8 = objc_opt_new();
    [v8 setShallow:{objc_msgSend(v6, "shallow")}];
    [v8 setStdinPassPhrase:{objc_msgSend(v6, "stdinPassPhrase")}];
    v9 = [(SKDiskImage *)self resizeLimitsInternalWithLimitsParams:v8 error:a4];
    if (v9)
    {
      v10 = [(SKDiskImage *)self deduceDiskWithError:a4];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 type];
        v13 = [SKDiskImageSizeLimits isSupportedWholeDisk:v12];

        if (v13)
        {
          v14 = [[SKLastPartitions alloc] initWithDisk:v11];
          v15 = [(SKLastPartitions *)v14 resizablePart];
          v16 = [v15 type];
          if ([v16 isEqualToString:kSKDiskTypeAPFSPS[0]])
          {

            v17 = off_279D1F250;
          }

          else
          {
            v20 = [(SKLastPartitions *)v14 resizablePart];
            [v20 type];
            v21 = v28 = v14;
            v27 = [v21 isEqualToString:kSKDiskTypeHFS[0]];

            v14 = v28;
            v17 = off_279D1F268;
            if (v27)
            {
              v17 = off_279D1F250;
            }
          }

          v7 = [objc_alloc(*v17) initWithDiskImage:self limits:v9 resizeParams:v6 error:a4];

          goto LABEL_23;
        }

        v19 = [v11 type];
        if ([v19 isEqualToString:kSKDiskTypeAPFSPS[0]])
        {
        }

        else
        {
          v22 = [v11 type];
          v23 = [v22 isEqualToString:kSKDiskTypeHFS[0]];

          if (!v23)
          {
            [v11 ejectWithError:0];
            v24 = [SKError nilWithPOSIXCode:45 error:a4];
            goto LABEL_22;
          }
        }

        v24 = [(SKDiskImageResizerBase *)[SKDiskImagePartitionLessResizer alloc] initWithDiskImage:self limits:v9 resizeParams:v6 error:a4];
LABEL_22:
        v7 = v24;
        goto LABEL_23;
      }

      v18 = SKGetOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v30 = "[SKDiskImage(Resize) newResizerWithParams:error:]";
        _os_log_impl(&dword_26BBB8000, v18, OS_LOG_TYPE_ERROR, "%s: Failed to get root disk of disk image", buf, 0xCu);
      }
    }

    else
    {
      v11 = SKGetOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v30 = "[SKDiskImage(Resize) newResizerWithParams:error:]";
        _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_ERROR, "%s: Failed to get limits", buf, 0xCu);
      }
    }

    v7 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v7 = [(SKDiskImage *)self newShallowResizerWithParams:v6 error:a4];
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)resizeWithParams:(id)a3 progress:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SKDiskImage *)self newResizerWithParams:v8 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  v12 = [v10 requestedSize];
  v13 = [v11 limits];
  v14 = [v13 currentBytes];

  if (v12 != v14)
  {
    if ([v11 requiredSizeForRecoveryMove])
    {
      v16 = -[SKDiskImageResizeParams initWithSize:]([SKDiskImageResizeParams alloc], "initWithSize:", [v11 requiredSizeForRecoveryMove]);
      [(SKDiskImageResizeParams *)v16 setShallow:1];
      v17 = [(SKDiskImage *)self newResizerWithParams:v16 error:a5];
      v18 = v17;
      if (!v17 || ([v17 progress], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "chainChildProgress:withPendingUnitCount:", v19, 50), v19, (objc_msgSend(v18, "resizeWithError:", a5) & 1) == 0))
      {

        goto LABEL_14;
      }

      v20 = [(SKDiskImage *)self newResizerWithParams:v8 error:a5];

      if (!v20)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v21 = 50;
      v11 = v20;
    }

    else
    {
      v21 = 100;
    }

    v22 = [v11 progress];
    [v9 chainChildProgress:v22 withPendingUnitCount:v21];

    if ([v11 resizeWithError:a5])
    {
      [v9 setCompletedUnitCount:{objc_msgSend(v9, "totalUnitCount")}];
      goto LABEL_3;
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

LABEL_3:
  v15 = 1;
LABEL_15:

  return v15;
}

- (BOOL)attachBeforeResizeWithStdinPass:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = objc_opt_new();
  [v7 setPolicy:0];
  [v7 setIsManagedAttach:1];
  [v7 setStdinPassPhrase:{objc_msgSend(v7, "stdinPassPhrase") | v5}];
  v8 = [(SKDiskImage *)self attachWithParams:v7 error:a4];
  LOBYTE(a4) = v8 != 0;

  return a4;
}

- (id)resizeWithParams:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SKProgress progressWithTotalUnitCount:100];
  v9 = +[SKManager sharedManager];
  v10 = [v9 frameworkAsyncOperationsQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__SKDiskImage_Resize__resizeWithParams_completionBlock___block_invoke;
  v17[3] = &unk_279D1F970;
  v20 = v7;
  v17[4] = self;
  v18 = v6;
  v11 = v8;
  v19 = v11;
  v12 = v6;
  v13 = v7;
  dispatch_async(v10, v17);

  v14 = v19;
  v15 = v11;

  return v11;
}

void __56__SKDiskImage_Resize__resizeWithParams_completionBlock___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAttached])
  {
    v12 = 0;
    [SKError failWithPOSIXCode:16 error:&v12];
    v2 = v12;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) stdinPassPhrase];
    v11 = 0;
    v5 = [v3 attachBeforeResizeWithStdinPass:v4 error:&v11];
    v2 = v11;
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v10 = v2;
      [v6 resizeWithParams:v7 progress:v8 error:&v10];
      v9 = v10;

      v2 = v9;
    }

    [*(a1 + 32) ejectWithError:0];
  }

  (*(*(a1 + 56) + 16))();
}

- (id)resizeLimitsShallowInternalWithLimitsParams:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = [(SKDiskImage *)self deduceDiskWithError:a4];
  if (!v6)
  {
    v7 = SKGetOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v48 = "[SKDiskImage(Resize) resizeLimitsShallowInternalWithLimitsParams:error:]";
      _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_ERROR, "%s: Failed to attach disk image", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v7 = objc_opt_new();
  if (![(SKDiskImage *)self retrieveDIInfoWithParams:v7 error:a4])
  {
LABEL_22:
    v21 = 0;
    goto LABEL_40;
  }

  v8 = [v7 imageInfo];
  v9 = +[SKDiskImageInfoParams size_info_key];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = +[SKDiskImageInfoParams format_info_key];
  v12 = [v8 objectForKeyedSubscript:v11];

  if (v10 && v12)
  {
    v13 = [v10 objectForKeyedSubscript:@"Max Size Bytes"];
    if (!v13)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-1];
    }

    v46 = v13;
    v14 = [v13 unsignedLongLongValue];
    if ([v12 isEqualToString:@"RAW"])
    {
      v15 = +[SKManager initializedManager];
      v16 = [(SKDiskImage *)self imageURL];
      v17 = [v16 path];
      v18 = [v15 diskForPath:v17];

      if (v18)
      {
        v19 = [v46 unsignedLongLongValue];
        v20 = [v18 freeSpace];
        if (v19 >= v20)
        {
          v14 = v20;
        }

        else
        {
          v14 = v19;
        }
      }
    }

    v21 = objc_opt_new();
    [v21 setCurrentBytes:{objc_msgSend(v6, "unformattedSize")}];
    v22 = [v21 currentBytes];
    if (v22 <= v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = v22;
    }

    [v21 setMaxBytes:v23];
    v24 = [v10 objectForKeyedSubscript:@"Min Size Bytes"];
    if (v24)
    {
      v25 = [v24 unsignedLongLongValue];
      v26 = [v21 currentBytes];
      if (v25 >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }
    }

    else
    {
      v27 = [v21 currentBytes];
    }

    [v21 setMinBytes:v27];
    v30 = [[SKLastPartitions alloc] initWithDisk:v6];
    v31 = SKGetOSLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(SKLastPartitions *)v30 resizablePart];
      *buf = 136315650;
      v48 = "[SKDiskImage(Resize) resizeLimitsShallowInternalWithLimitsParams:error:]";
      v49 = 2112;
      v50 = v32;
      v51 = 2048;
      v52 = [(SKLastPartitions *)v30 nonResizableSize];
      _os_log_impl(&dword_26BBB8000, v31, OS_LOG_TYPE_DEFAULT, "%s: Resizable partition: %@, non-resizable size: %lld bytes", buf, 0x20u);
    }

    v33 = [(SKLastPartitions *)v30 resizablePart];
    if (v33)
    {
      v34 = [v21 minBytes];
      v35 = [v33 startLocation];
      v36 = [v33 unformattedSize] + v35;
      v37 = v34 <= v36 ? v36 : v34;
      [v21 setMinBytes:v37];
      if (([v33 isEqual:v6] & 1) == 0)
      {
        v38 = [v6 type];
        [v21 setMinBytes:{objc_msgSend(v21, "minBytes") + +[SKLastPartitions secondaryPartitionTableSizeWithDiskType:](SKLastPartitions, "secondaryPartitionTableSizeWithDiskType:", v38)}];

        v39 = [(SKLastPartitions *)v30 recoveryPart];

        if (v39)
        {
          v40 = SKGetOSLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [(SKLastPartitions *)v30 recoveryPart];
            *buf = 136315394;
            v48 = "[SKDiskImage(Resize) resizeLimitsShallowInternalWithLimitsParams:error:]";
            v49 = 2112;
            v50 = v41;
            _os_log_impl(&dword_26BBB8000, v40, OS_LOG_TYPE_DEFAULT, "%s: Recovery partition: %@", buf, 0x16u);
          }

          v42 = [(SKLastPartitions *)v30 recoveryPart];
          [v21 setMinBytes:{objc_msgSend(v21, "minBytes") + objc_msgSend(v42, "unformattedSize")}];
        }
      }
    }

    alignResizeLimits(v21);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v28 = +[SKBaseManager sharedManager];
    [v28 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_7];

    v29 = SKGetOSLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v48 = "[SKDiskImage(Resize) resizeLimitsShallowInternalWithLimitsParams:error:]";
      _os_log_impl(&dword_26BBB8000, v29, OS_LOG_TYPE_FAULT, "%s: Failed to inspect size info", buf, 0xCu);
    }

    [(SKDiskImage *)self setDeviceHandle:0];
    v21 = [SKError nilWithPOSIXCode:22 error:a4];
  }

LABEL_40:
  v43 = *MEMORY[0x277D85DE8];

  return v21;
}

id __73__SKDiskImage_Resize__resizeLimitsShallowInternalWithLimitsParams_error___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKDiskImage+Resize.m", 175);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)resizeLimitsInternalWithLimitsParams:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SKDiskImage *)self resizeLimitsShallowInternalWithLimitsParams:v6 error:a4];
  if (!v7)
  {
    v8 = SKGetOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315138;
      v31 = "[SKDiskImage(Resize) resizeLimitsInternalWithLimitsParams:error:]";
      _os_log_impl(&dword_26BBB8000, v8, OS_LOG_TYPE_ERROR, "%s: Failed to get limits", &v30, 0xCu);
    }

    goto LABEL_10;
  }

  v8 = [(SKDiskImage *)self deduceDiskWithError:a4];
  if (!v8)
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315138;
      v31 = "[SKDiskImage(Resize) resizeLimitsInternalWithLimitsParams:error:]";
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_ERROR, "%s: Failed to attach disk image", &v30, 0xCu);
    }

LABEL_10:
    v11 = 0;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [v8 type];
    v13 = [v12 isEqualToString:kSKDiskTypeHFS[0]];

    if (v13)
    {
      v9 = [SKLastPartitions hfsMinimalSizeForDisk:v8 currentSize:0];
      goto LABEL_13;
    }

    v14 = [[SKLastPartitions alloc] initWithDisk:v8];
    v15 = [(SKLastPartitions *)v14 resizablePart];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 totalSpace];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v7 physicalStoreMinimumSizeFromStore:v16];
LABEL_19:
        v21 = v18;
        if (v18 != -1)
        {
          v22 = [v8 type];
          v23 = [SKLastPartitions secondaryPartitionTableSizeWithDiskType:v22];

          v24 = [v16 startLocation];
          v25 = v17 >= v21 ? v21 : v17;
          [v7 setMinBytes:v23 + v24 + v25];
          v26 = [(SKLastPartitions *)v14 recoveryPart];

          if (v26)
          {
            v27 = [(SKLastPartitions *)v14 recoveryPart];
            [v7 setMinBytes:{objc_msgSend(v7, "minBytes") + objc_msgSend(v27, "totalSpace")}];
          }
        }

        goto LABEL_25;
      }

      v19 = [v16 type];
      v20 = [v19 isEqualToString:kSKDiskTypeHFS[0]];

      if (v20)
      {
        v18 = [SKLastPartitions hfsMinimalSizeForDisk:v16 currentSize:0];
        goto LABEL_19;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  v9 = [v7 physicalStoreMinimumSizeFromStore:v8];
LABEL_13:
  [v7 setMinBytes:v9];
LABEL_26:
  alignResizeLimits(v7);
  objc_claimAutoreleasedReturnValue();
  v11 = v7;
LABEL_27:

  v28 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)resizeLimitsWithLimitsParams:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SKDiskImage *)self isAttached];
  if (-[SKDiskImage attachBeforeResizeWithStdinPass:error:](self, "attachBeforeResizeWithStdinPass:error:", [v6 stdinPassPhrase], a4))
  {
    if ([v6 shallow])
    {
      [(SKDiskImage *)self resizeLimitsShallowInternalWithLimitsParams:v6 error:a4];
    }

    else
    {
      [(SKDiskImage *)self resizeLimitsInternalWithLimitsParams:v6 error:a4];
    }
    v8 = ;
    if (v8)
    {
      if (!v7)
      {
        [(SKDiskImage *)self ejectWithError:0];
      }

      [(SKDiskImage *)self setDeviceHandle:0];
      v9 = v8;
    }

    else
    {
      v10 = SKGetOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "[SKDiskImage(Resize) resizeLimitsWithLimitsParams:error:]";
        _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_ERROR, "%s: Failed to get limits", &v13, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)resizeLimitsWithError:(id *)a3
{
  v5 = objc_opt_new();
  v6 = [(SKDiskImage *)self resizeLimitsWithLimitsParams:v5 error:a3];

  return v6;
}

@end