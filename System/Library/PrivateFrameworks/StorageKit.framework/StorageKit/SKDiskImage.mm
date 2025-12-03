@interface SKDiskImage
+ (id)diskImageWithURL:(id)l params:(id)params error:(id *)error;
- (BOOL)attachBeforeResizeWithStdinPass:(BOOL)pass error:(id *)error;
- (BOOL)chpassWithParams:(id)params error:(id *)error;
- (BOOL)createBlankWithParams:(id)params progress:(id)progress error:(id *)error;
- (BOOL)ejectWithError:(id *)error;
- (BOOL)isAttached;
- (BOOL)mount:(id)mount params:(id)params outError:(id *)error;
- (BOOL)resizeWithParams:(id)params progress:(id)progress error:(id *)error;
- (BOOL)retrieveDIInfoWithParams:(id)params error:(id *)error;
- (SKDiskImage)initWithURL:(id)l diParams:(id)params shadowURLs:(id)ls error:(id *)error;
- (id)attachNoMountWithError:(id *)error;
- (id)attachWithError:(id *)error;
- (id)attachWithParams:(id)params error:(id *)error;
- (id)createWithParams:(id)params completionBlock:(id)block;
- (id)deduceDiskWithError:(id *)error;
- (id)description;
- (id)diAttachWithParams:(id)params error:(id *)error;
- (id)newResizerWithParams:(id)params error:(id *)error;
- (id)newShallowResizerWithParams:(id)params error:(id *)error;
- (id)redactedDescription;
- (id)resizeLimitsInternalWithLimitsParams:(id)params error:(id *)error;
- (id)resizeLimitsShallowInternalWithLimitsParams:(id)params error:(id *)error;
- (id)resizeLimitsWithError:(id *)error;
- (id)resizeLimitsWithLimitsParams:(id)params error:(id *)error;
- (id)resizeWithParams:(id)params completionBlock:(id)block;
- (id)retrieveInfoWithParams:(id)params error:(id *)error;
- (unint64_t)diResize:(id)resize error:(id *)error;
- (void)createFromDiskWithParams:(id)params progress:(id)progress completionBlock:(id)block;
- (void)createFromFolderWithParams:(id)params progress:(id)progress completionBlock:(id)block;
- (void)createWithParams:(id)params progressReadyHandler:(id)handler completionBlock:(id)block;
@end

@implementation SKDiskImage

+ (id)diskImageWithURL:(id)l params:(id)params error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  paramsCopy = params;
  v9 = [[SKDiskImage alloc] initWithURL:lCopy error:error];
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
    v12 = [(SKDiskImage *)v9 createWithParams:paramsCopy completionBlock:v18];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      v14 = 0;
      if (error)
      {
        *error = v13;
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

- (id)createWithParams:(id)params completionBlock:(id)block
{
  paramsCopy = params;
  blockCopy = block;
  v8 = [SKProgress progressWithTotalUnitCount:100];
  v9 = +[SKManager sharedManager];
  frameworkAsyncOperationsQueue = [v9 frameworkAsyncOperationsQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__SKDiskImage_createWithParams_completionBlock___block_invoke;
  v17[3] = &unk_279D1F970;
  v21 = blockCopy;
  v18 = paramsCopy;
  selfCopy = self;
  v11 = v8;
  v20 = v11;
  v12 = blockCopy;
  v13 = paramsCopy;
  dispatch_async(frameworkAsyncOperationsQueue, v17);

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

- (void)createWithParams:(id)params progressReadyHandler:(id)handler completionBlock:(id)block
{
  handlerCopy = handler;
  v8 = [(SKDiskImage *)self createWithParams:params completionBlock:block];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8);
  }
}

- (BOOL)createBlankWithParams:(id)params progress:(id)progress error:(id *)error
{
  v94[1] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  progressCopy = progress;
  if ([paramsCopy numBlocks] > 0x4F)
  {
    imageURL = [(SKDiskImage *)self imageURL];
    v12 = [paramsCopy diCreateParamsWithURL:imageURL error:error];

    if (v12)
    {
      if ([MEMORY[0x277D055E0] createBlankWithParams:v12 error:error])
      {
        [(SKDiskImage *)self setDiParams:v12];
        fsFormat = [paramsCopy fsFormat];

        if (fsFormat)
        {
          v14 = objc_alloc_init(SKDiskImageAttachParams);
          [(SKDiskImageAttachParams *)v14 setPolicy:0];
          [(SKDiskImageAttachParams *)v14 setIsManagedAttach:1];
          v15 = [(SKDiskImage *)self attachWithParams:v14 error:error];
          v74 = v15;
          if (v15)
          {
            v16 = v15;
            v72 = paramsCopy;
            v71 = dispatch_semaphore_create(0);
            v73 = v16;
            v17 = [SKEraseDisk eraseDiskWithRootDisk:v16 error:error];
            v18 = v17;
            if (v17)
            {
              formattableFilesystems = [v17 formattableFilesystems];
              if (formattableFilesystems)
              {
                v20 = MEMORY[0x277CCAC30];
                v87[0] = MEMORY[0x277D85DD0];
                v87[1] = 3221225472;
                v87[2] = __eraseDisk_block_invoke;
                v87[3] = &unk_279D1F9E8;
                v21 = v72;
                v88 = v21;
                v22 = [v20 predicateWithBlock:v87];
                v70 = [formattableFilesystems filteredArrayUsingPredicate:v22];

                if ([v70 count])
                {
                  volumeName = [v21 volumeName];
                  firstObject = [v70 firstObject];
                  v69 = [SKVolumeDescriptor descriptorWithName:volumeName filesystem:firstObject];

                  if (v69)
                  {
                    v25 = [SKPartitionDescriptor descriptorWithVolume:?];
                    v26 = v25;
                    if (v25)
                    {
                      v94[0] = v25;
                      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:1];
                      v68 = [SKEraseDisk eraseDiskWithRootDisk:v73 descriptors:v27 error:error];

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
                          messages = [(SKProgressObserver *)v67 messages];
                          v32 = [messages count] == 0;

                          v30 = v82;
                          if (!v32)
                          {
                            v64 = v26;
                            userInfo = [v82[5] userInfo];
                            v65 = [userInfo mutableCopy];

                            v34 = MEMORY[0x277CCACA8];
                            messages2 = [(SKProgressObserver *)v67 messages];
                            v36 = [messages2 componentsJoinedByString:@"\n"];
                            v37 = [v34 stringWithFormat:@"%@", v36];
                            [v65 setObject:v37 forKey:*MEMORY[0x277CCA068]];

                            v38 = MEMORY[0x277CCA9B8];
                            domain = [v82[5] domain];
                            v40 = [v38 errorWithDomain:domain code:objc_msgSend(v82[5] userInfo:{"code"), v65}];
                            v41 = v82[5];
                            v82[5] = v40;

                            v26 = v64;
                            v30 = v82;
                          }
                        }

                        if (error)
                        {
                          v42 = v30[5];
                          if (v42)
                          {
                            *error = v42;
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

                      v43 = [SKError nilWithSKErrorCode:255 error:error];
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

                    v43 = [SKError nilWithSKErrorCode:255 error:error];
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

                  v43 = [SKError nilWithSKErrorCode:255 error:error];
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
              if (error)
              {
                v48 = *error;
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
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          imageURL2 = [(SKDiskImage *)self imageURL];
          [defaultManager removeItemAtURL:imageURL2 error:0];

          v10 = 0;
          goto LABEL_68;
        }

LABEL_64:
        v44 = SKGetOSLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          imageURL3 = [(SKDiskImage *)self imageURL];
          *buf = 138412290;
          *&buf[4] = imageURL3;
          _os_log_impl(&dword_26BBB8000, v44, OS_LOG_TYPE_DEFAULT, "Created disk image successfully at %@", buf, 0xCu);
        }

        v10 = 1;
        goto LABEL_67;
      }

      v44 = SKGetOSLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v46 = *error;
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
        if (error)
        {
          v45 = *error;
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

  v10 = [SKError failWithPOSIXCode:28 error:error];
LABEL_69:

  v59 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)createFromDiskWithParams:(id)params progress:(id)progress completionBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  blockCopy = block;
  paramsCopy = params;
  imageURL = [(SKDiskImage *)self imageURL];
  v25 = 0;
  v12 = [paramsCopy diConvertParamsWithOutputURL:imageURL error:&v25];

  v13 = v25;
  if (v12)
  {
    v14 = MEMORY[0x277D055E0];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __65__SKDiskImage_createFromDiskWithParams_progress_completionBlock___block_invoke;
    v21 = &unk_279D1F998;
    v24 = blockCopy;
    selfCopy = self;
    v23 = v12;
    v15 = [v14 convertWithParams:v23 completionBlock:&v18];
    [progressCopy addChild:v15 withPendingUnitCount:{100, v18, v19, v20, v21, selfCopy}];
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

    (*(blockCopy + 2))(blockCopy, v13);
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

- (void)createFromFolderWithParams:(id)params progress:(id)progress completionBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  progressCopy = progress;
  blockCopy = block;
  imageURL = [(SKDiskImage *)self imageURL];
  v23 = 0;
  v12 = [paramsCopy diCreatorFromFolderWithURL:imageURL error:&v23];
  v13 = v23;

  if (v12)
  {
    sourceFolder = [paramsCopy sourceFolder];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __67__SKDiskImage_createFromFolderWithParams_progress_completionBlock___block_invoke;
    v21 = &unk_279D1F9C0;
    v22 = blockCopy;
    v15 = [v12 createImageWithSrcFolder:sourceFolder completionBlock:&v18];

    [progressCopy addChild:v15 withPendingUnitCount:{100, v18, v19, v20, v21}];
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

    (*(blockCopy + 2))(blockCopy, v13);
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
        imageURL = [(SKDiskImage *)self imageURL];
        absoluteString = [imageURL absoluteString];
        v10 = [v7 isEqualToString:absoluteString];

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

- (SKDiskImage)initWithURL:(id)l diParams:(id)params shadowURLs:(id)ls error:(id *)error
{
  lCopy = l;
  paramsCopy = params;
  lsCopy = ls;
  v16.receiver = self;
  v16.super_class = SKDiskImage;
  v13 = [(SKDiskImage *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_imageURL, l);
    objc_storeStrong(&v14->_diParams, params);
    objc_storeStrong(&v14->_shadowURLs, ls);
  }

  return v14;
}

- (id)attachWithError:(id *)error
{
  v5 = objc_opt_new();
  v6 = [(SKDiskImage *)self attachWithParams:v5 error:error];

  return v6;
}

- (id)attachNoMountWithError:(id *)error
{
  v5 = objc_opt_new();
  [v5 setPolicy:0];
  v6 = [(SKDiskImage *)self attachWithParams:v5 error:error];

  return v6;
}

- (id)attachWithParams:(id)params error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if (!paramsCopy)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    v12 = [SKError nilWithError:v13 error:error];

    goto LABEL_15;
  }

  v7 = SKGetOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    imageURL = [(SKDiskImage *)self imageURL];
    v18 = 138412546;
    v19 = imageURL;
    v20 = 2112;
    v21 = paramsCopy;
    _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_DEFAULT, "Attaching %@ with %@", &v18, 0x16u);
  }

  v9 = [(SKDiskImage *)self diAttachWithParams:paramsCopy error:error];
  if (v9)
  {
    if ([(SKDiskImage *)self mount:v9 params:paramsCopy outError:error])
    {
      v10 = SKGetOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        imageURL2 = [(SKDiskImage *)self imageURL];
        v18 = 138412546;
        v19 = imageURL2;
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
      imageURL3 = [(SKDiskImage *)self imageURL];
      v18 = 136315394;
      v19 = "[SKDiskImage attachWithParams:error:]";
      v20 = 2112;
      v21 = imageURL3;
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

- (BOOL)retrieveDIInfoWithParams:(id)params error:(id *)error
{
  paramsCopy = params;
  diParams = [(SKDiskImage *)self diParams];

  v8 = objc_alloc(MEMORY[0x277D055C8]);
  if (diParams)
  {
    diParams2 = [(SKDiskImage *)self diParams];
    v10 = [v8 initWithExistingParams:diParams2 error:error];
  }

  else
  {
    diParams2 = [(SKDiskImage *)self imageURL];
    v10 = [v8 initWithURL:diParams2 error:error];
  }

  v11 = v10;

  if (!v11)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  stdinPassPhrase = [paramsCopy stdinPassPhrase];
  readPassphraseFlags = [v11 readPassphraseFlags];
  if (stdinPassPhrase)
  {
    v14 = readPassphraseFlags | 8;
  }

  else
  {
    v14 = readPassphraseFlags;
  }

  [v11 setReadPassphraseFlags:v14];
  [v11 setExtraInfo:{objc_msgSend(paramsCopy, "extraInfo")}];
  [v11 setEncryptionInfoOnly:{objc_msgSend(paramsCopy, "encryptionInfoOnly")}];
  if (([MEMORY[0x277D055E0] retrieveInfoWithParams:v11 error:error] & 1) == 0)
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
  imageInfo = [v11 imageInfo];
  [paramsCopy setImageInfo:imageInfo];

  v16 = 1;
LABEL_14:

  return v16;
}

- (id)retrieveInfoWithParams:(id)params error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if ([(SKDiskImage *)self retrieveDIInfoWithParams:paramsCopy error:error])
  {
    if ([paramsCopy encryptionInfoOnly])
    {
      imageInfo = [paramsCopy imageInfo];
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
        v10 = [(SKDiskImage *)self attachWithParams:v9 error:error];
        if (v10)
        {
          v11 = [paramsCopy getInfoDictWithDisk:v10];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = [SKError nilWithSKErrorCode:254 error:error];
          }

          imageInfo = v13;
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

          imageInfo = 0;
        }
      }

      else
      {
        imageInfo = [SKError nilWithSKErrorCode:251 error:error];
      }
    }
  }

  else
  {
    imageInfo = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return imageInfo;
}

- (BOOL)chpassWithParams:(id)params error:(id *)error
{
  paramsCopy = params;
  if (!paramsCopy)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    [SKError failWithError:v7 error:error];
  }

  imageURL = [(SKDiskImage *)self imageURL];
  v9 = [paramsCopy diChpassParamsWithURL:imageURL error:error];

  if (!v9)
  {
    goto LABEL_9;
  }

  if (([MEMORY[0x277D055E0] changePasswordWithParams:v9 error:error] & 1) == 0)
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

- (id)diAttachWithParams:(id)params error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  obj = 0;
  v7 = SKGetOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    imageURL = [(SKDiskImage *)self imageURL];
    *buf = 138412546;
    v40 = imageURL;
    v41 = 2112;
    v42 = paramsCopy;
    _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_DEBUG, "Attaching %@ with %@", buf, 0x16u);
  }

  diParams = [(SKDiskImage *)self diParams];

  if (diParams)
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_DEBUG, "Using saved instance of di2 params", buf, 2u);
    }

    diParams2 = [(SKDiskImage *)self diParams];
    v37 = 0;
    v12 = [paramsCopy diAttachParamsWithExistingParams:diParams2 error:&v37];
    v13 = v37;

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    imageURL2 = [(SKDiskImage *)self imageURL];
    shadowURLs = [(SKDiskImage *)self shadowURLs];
    v36 = 0;
    v12 = [paramsCopy diAttachParamsWithURL:imageURL2 shadowURLs:shadowURLs error:&v36];
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
      imageURL3 = [(SKDiskImage *)self imageURL];
      *buf = 138412546;
      v40 = imageURL3;
      v41 = 2112;
      v42 = paramsCopy;
      _os_log_impl(&dword_26BBB8000, v16, OS_LOG_TYPE_DEFAULT, "Fallback attaching %@ with %@", buf, 0x16u);
    }

    v18 = MEMORY[0x277D05598];
    imageURL4 = [(SKDiskImage *)self imageURL];
    v35 = 0;
    v20 = [v18 diskImageAttach:imageURL4 readOnly:objc_msgSend(paramsCopy autoMount:"readOnly") BSDName:0 error:{&v35, error}];
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
  if (error && v13)
  {
    v22 = v13;
    *error = v13;
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
    imageURL5 = [(SKDiskImage *)self imageURL];
    *buf = 138412546;
    v40 = imageURL5;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_26BBB8000, v24, OS_LOG_TYPE_DEFAULT, "Attaching %@ with %@", buf, 0x16u);
  }

  if (![paramsCopy isManagedAttach])
  {
    v34 = 0;
    v20 = [MEMORY[0x277D05598] diskImageAttach:v12 BSDName:&v34 error:error];
    v21 = v34;
    goto LABEL_26;
  }

  mountParams = [paramsCopy mountParams];
  mountPoint = [mountParams mountPoint];
  [v12 setUniqueDevice:mountPoint != 0];

  if (![MEMORY[0x277D055E0] managedAttachWithParams:v12 handle:&obj error:error])
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

  v30 = [(SKDiskImage *)self deduceDiskWithError:error];
LABEL_37:

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)deduceDiskWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = +[SKManager syncSharedManager];
  deviceHandle = [(SKDiskImage *)self deviceHandle];

  if (deviceHandle)
  {
    deviceHandle2 = [(SKDiskImage *)self deviceHandle];
    bSDName = [deviceHandle2 BSDName];
    v9 = [v5 diskForString:bSDName];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v12 = SKGetOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        deviceHandle3 = [(SKDiskImage *)self deviceHandle];
        bSDName2 = [deviceHandle3 BSDName];
        v17 = 138412290;
        v18 = bSDName2;
        _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_ERROR, "Couldn't discover disk %@ after attach", &v17, 0xCu);
      }

      v10 = [SKError nilWithSKErrorCode:251 error:error];
    }

    v11 = v10;
  }

  else
  {
    v11 = [SKError nilWithSKErrorCode:251 error:error];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)ejectWithError:(id *)error
{
  v4 = [(SKDiskImage *)self deduceDiskWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 ejectWithError:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)mount:(id)mount params:(id)params outError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  mountCopy = mount;
  paramsCopy = params;
  policy = [paramsCopy policy];
  if (policy)
  {
    if (policy == 2)
    {
      v12 = SKGetOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = mountCopy;
        v20 = 2112;
        v21 = paramsCopy;
        _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_DEFAULT, "Mounting disk %@ with %@", &v18, 0x16u);
      }

      mountParams = [paramsCopy mountParams];
      v14 = [mountCopy mountWithParams:mountParams error:error];

      if ((v14 & 1) == 0)
      {
        [mountCopy ejectWithError:0];
        v15 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      if (policy != 1)
      {
        v15 = [SKError failWithSKErrorCode:250 error:error];
        goto LABEL_13;
      }

      v10 = SKGetOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = mountCopy;
        v20 = 2112;
        v21 = paramsCopy;
        _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_DEFAULT, "Mounting disk %@ with %@", &v18, 0x16u);
      }

      mountParams2 = [paramsCopy mountParams];
      [mountCopy mountWithParams:mountParams2 error:0];
    }
  }

  v15 = 1;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)diResize:(id)resize error:(id *)error
{
  resizeCopy = resize;
  diParams = [(SKDiskImage *)self diParams];

  v8 = objc_alloc(MEMORY[0x277D055D0]);
  if (diParams)
  {
    diParams2 = [(SKDiskImage *)self diParams];
    v10 = [v8 initWithExistingParams:diParams2 size:objc_msgSend(resizeCopy error:{"size"), error}];

    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    imageURL = [(SKDiskImage *)self imageURL];
    v10 = [v8 initWithURL:imageURL size:objc_msgSend(resizeCopy error:{"size"), error}];

    [(SKDiskImage *)self setDiParams:v10];
    if (!v10)
    {
LABEL_10:
      v15 = 0;
      goto LABEL_11;
    }
  }

  stdinPassPhrase = [resizeCopy stdinPassPhrase];
  readPassphraseFlags = [v10 readPassphraseFlags];
  if (stdinPassPhrase)
  {
    v14 = readPassphraseFlags | 8;
  }

  else
  {
    v14 = readPassphraseFlags;
  }

  [v10 setReadPassphraseFlags:v14];
  if (![MEMORY[0x277D055E0] resizeWithParams:v10 error:error])
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
    bSDName = [(DIDeviceHandle *)deviceHandle BSDName];
    v8 = [v3 stringWithFormat:@"<%@: { device: %@}>", v5, bSDName];
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
    bSDName = [(DIDeviceHandle *)deviceHandle BSDName];
    v9 = [v3 stringWithFormat:@"<%@: { image URL: %@, device: %@}>", v5, imageURL, bSDName];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"<%@: { image URL: %@, device: %@}>", v5, self->_imageURL, 0];
  }

  return v9;
}

- (id)newShallowResizerWithParams:(id)params error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = objc_opt_new();
  [v7 setShallow:{objc_msgSend(paramsCopy, "shallow")}];
  [v7 setStdinPassPhrase:{objc_msgSend(paramsCopy, "stdinPassPhrase")}];
  v8 = [(SKDiskImage *)self resizeLimitsShallowInternalWithLimitsParams:v7 error:error];
  if (v8)
  {
    v9 = [(SKDiskImageResizerBase *)[SKDiskImageResizer alloc] initWithDiskImage:self limits:v8 resizeParams:paramsCopy error:error];
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

- (id)newResizerWithParams:(id)params error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if (![paramsCopy shallow])
  {
    v8 = objc_opt_new();
    [v8 setShallow:{objc_msgSend(paramsCopy, "shallow")}];
    [v8 setStdinPassPhrase:{objc_msgSend(paramsCopy, "stdinPassPhrase")}];
    v9 = [(SKDiskImage *)self resizeLimitsInternalWithLimitsParams:v8 error:error];
    if (v9)
    {
      v10 = [(SKDiskImage *)self deduceDiskWithError:error];
      v11 = v10;
      if (v10)
      {
        type = [v10 type];
        v13 = [SKDiskImageSizeLimits isSupportedWholeDisk:type];

        if (v13)
        {
          v14 = [[SKLastPartitions alloc] initWithDisk:v11];
          resizablePart = [(SKLastPartitions *)v14 resizablePart];
          type2 = [resizablePart type];
          if ([type2 isEqualToString:kSKDiskTypeAPFSPS[0]])
          {

            v17 = off_279D1F250;
          }

          else
          {
            resizablePart2 = [(SKLastPartitions *)v14 resizablePart];
            [resizablePart2 type];
            v21 = v28 = v14;
            v27 = [v21 isEqualToString:kSKDiskTypeHFS[0]];

            v14 = v28;
            v17 = off_279D1F268;
            if (v27)
            {
              v17 = off_279D1F250;
            }
          }

          v7 = [objc_alloc(*v17) initWithDiskImage:self limits:v9 resizeParams:paramsCopy error:error];

          goto LABEL_23;
        }

        type3 = [v11 type];
        if ([type3 isEqualToString:kSKDiskTypeAPFSPS[0]])
        {
        }

        else
        {
          type4 = [v11 type];
          v23 = [type4 isEqualToString:kSKDiskTypeHFS[0]];

          if (!v23)
          {
            [v11 ejectWithError:0];
            v24 = [SKError nilWithPOSIXCode:45 error:error];
            goto LABEL_22;
          }
        }

        v24 = [(SKDiskImageResizerBase *)[SKDiskImagePartitionLessResizer alloc] initWithDiskImage:self limits:v9 resizeParams:paramsCopy error:error];
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

  v7 = [(SKDiskImage *)self newShallowResizerWithParams:paramsCopy error:error];
LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)resizeWithParams:(id)params progress:(id)progress error:(id *)error
{
  paramsCopy = params;
  progressCopy = progress;
  v10 = [(SKDiskImage *)self newResizerWithParams:paramsCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  requestedSize = [v10 requestedSize];
  limits = [v11 limits];
  currentBytes = [limits currentBytes];

  if (requestedSize != currentBytes)
  {
    if ([v11 requiredSizeForRecoveryMove])
    {
      v16 = -[SKDiskImageResizeParams initWithSize:]([SKDiskImageResizeParams alloc], "initWithSize:", [v11 requiredSizeForRecoveryMove]);
      [(SKDiskImageResizeParams *)v16 setShallow:1];
      v17 = [(SKDiskImage *)self newResizerWithParams:v16 error:error];
      v18 = v17;
      if (!v17 || ([v17 progress], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(progressCopy, "chainChildProgress:withPendingUnitCount:", v19, 50), v19, (objc_msgSend(v18, "resizeWithError:", error) & 1) == 0))
      {

        goto LABEL_14;
      }

      v20 = [(SKDiskImage *)self newResizerWithParams:paramsCopy error:error];

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

    progress = [v11 progress];
    [progressCopy chainChildProgress:progress withPendingUnitCount:v21];

    if ([v11 resizeWithError:error])
    {
      [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
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

- (BOOL)attachBeforeResizeWithStdinPass:(BOOL)pass error:(id *)error
{
  passCopy = pass;
  v7 = objc_opt_new();
  [v7 setPolicy:0];
  [v7 setIsManagedAttach:1];
  [v7 setStdinPassPhrase:{objc_msgSend(v7, "stdinPassPhrase") | passCopy}];
  v8 = [(SKDiskImage *)self attachWithParams:v7 error:error];
  LOBYTE(error) = v8 != 0;

  return error;
}

- (id)resizeWithParams:(id)params completionBlock:(id)block
{
  paramsCopy = params;
  blockCopy = block;
  v8 = [SKProgress progressWithTotalUnitCount:100];
  v9 = +[SKManager sharedManager];
  frameworkAsyncOperationsQueue = [v9 frameworkAsyncOperationsQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__SKDiskImage_Resize__resizeWithParams_completionBlock___block_invoke;
  v17[3] = &unk_279D1F970;
  v20 = blockCopy;
  v17[4] = self;
  v18 = paramsCopy;
  v11 = v8;
  v19 = v11;
  v12 = paramsCopy;
  v13 = blockCopy;
  dispatch_async(frameworkAsyncOperationsQueue, v17);

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

- (id)resizeLimitsShallowInternalWithLimitsParams:(id)params error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = [(SKDiskImage *)self deduceDiskWithError:error];
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
  if (![(SKDiskImage *)self retrieveDIInfoWithParams:v7 error:error])
  {
LABEL_22:
    v21 = 0;
    goto LABEL_40;
  }

  imageInfo = [v7 imageInfo];
  v9 = +[SKDiskImageInfoParams size_info_key];
  v10 = [imageInfo objectForKeyedSubscript:v9];

  v11 = +[SKDiskImageInfoParams format_info_key];
  v12 = [imageInfo objectForKeyedSubscript:v11];

  if (v10 && v12)
  {
    v13 = [v10 objectForKeyedSubscript:@"Max Size Bytes"];
    if (!v13)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-1];
    }

    v46 = v13;
    unsignedLongLongValue = [v13 unsignedLongLongValue];
    if ([v12 isEqualToString:@"RAW"])
    {
      v15 = +[SKManager initializedManager];
      imageURL = [(SKDiskImage *)self imageURL];
      path = [imageURL path];
      v18 = [v15 diskForPath:path];

      if (v18)
      {
        unsignedLongLongValue2 = [v46 unsignedLongLongValue];
        freeSpace = [v18 freeSpace];
        if (unsignedLongLongValue2 >= freeSpace)
        {
          unsignedLongLongValue = freeSpace;
        }

        else
        {
          unsignedLongLongValue = unsignedLongLongValue2;
        }
      }
    }

    v21 = objc_opt_new();
    [v21 setCurrentBytes:{objc_msgSend(v6, "unformattedSize")}];
    currentBytes = [v21 currentBytes];
    if (currentBytes <= unsignedLongLongValue)
    {
      v23 = unsignedLongLongValue;
    }

    else
    {
      v23 = currentBytes;
    }

    [v21 setMaxBytes:v23];
    v24 = [v10 objectForKeyedSubscript:@"Min Size Bytes"];
    if (v24)
    {
      unsignedLongLongValue3 = [v24 unsignedLongLongValue];
      currentBytes2 = [v21 currentBytes];
      if (unsignedLongLongValue3 >= currentBytes2)
      {
        currentBytes3 = currentBytes2;
      }

      else
      {
        currentBytes3 = unsignedLongLongValue3;
      }
    }

    else
    {
      currentBytes3 = [v21 currentBytes];
    }

    [v21 setMinBytes:currentBytes3];
    v30 = [[SKLastPartitions alloc] initWithDisk:v6];
    v31 = SKGetOSLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      resizablePart = [(SKLastPartitions *)v30 resizablePart];
      *buf = 136315650;
      v48 = "[SKDiskImage(Resize) resizeLimitsShallowInternalWithLimitsParams:error:]";
      v49 = 2112;
      v50 = resizablePart;
      v51 = 2048;
      nonResizableSize = [(SKLastPartitions *)v30 nonResizableSize];
      _os_log_impl(&dword_26BBB8000, v31, OS_LOG_TYPE_DEFAULT, "%s: Resizable partition: %@, non-resizable size: %lld bytes", buf, 0x20u);
    }

    resizablePart2 = [(SKLastPartitions *)v30 resizablePart];
    if (resizablePart2)
    {
      minBytes = [v21 minBytes];
      startLocation = [resizablePart2 startLocation];
      v36 = [resizablePart2 unformattedSize] + startLocation;
      v37 = minBytes <= v36 ? v36 : minBytes;
      [v21 setMinBytes:v37];
      if (([resizablePart2 isEqual:v6] & 1) == 0)
      {
        type = [v6 type];
        [v21 setMinBytes:{objc_msgSend(v21, "minBytes") + +[SKLastPartitions secondaryPartitionTableSizeWithDiskType:](SKLastPartitions, "secondaryPartitionTableSizeWithDiskType:", type)}];

        recoveryPart = [(SKLastPartitions *)v30 recoveryPart];

        if (recoveryPart)
        {
          v40 = SKGetOSLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            recoveryPart2 = [(SKLastPartitions *)v30 recoveryPart];
            *buf = 136315394;
            v48 = "[SKDiskImage(Resize) resizeLimitsShallowInternalWithLimitsParams:error:]";
            v49 = 2112;
            v50 = recoveryPart2;
            _os_log_impl(&dword_26BBB8000, v40, OS_LOG_TYPE_DEFAULT, "%s: Recovery partition: %@", buf, 0x16u);
          }

          recoveryPart3 = [(SKLastPartitions *)v30 recoveryPart];
          [v21 setMinBytes:{objc_msgSend(v21, "minBytes") + objc_msgSend(recoveryPart3, "unformattedSize")}];
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
    v21 = [SKError nilWithPOSIXCode:22 error:error];
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

- (id)resizeLimitsInternalWithLimitsParams:(id)params error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v7 = [(SKDiskImage *)self resizeLimitsShallowInternalWithLimitsParams:paramsCopy error:error];
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

  v8 = [(SKDiskImage *)self deduceDiskWithError:error];
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
    type = [v8 type];
    v13 = [type isEqualToString:kSKDiskTypeHFS[0]];

    if (v13)
    {
      v9 = [SKLastPartitions hfsMinimalSizeForDisk:v8 currentSize:0];
      goto LABEL_13;
    }

    v14 = [[SKLastPartitions alloc] initWithDisk:v8];
    resizablePart = [(SKLastPartitions *)v14 resizablePart];
    v16 = resizablePart;
    if (resizablePart)
    {
      totalSpace = [resizablePart totalSpace];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v7 physicalStoreMinimumSizeFromStore:v16];
LABEL_19:
        v21 = v18;
        if (v18 != -1)
        {
          type2 = [v8 type];
          v23 = [SKLastPartitions secondaryPartitionTableSizeWithDiskType:type2];

          startLocation = [v16 startLocation];
          v25 = totalSpace >= v21 ? v21 : totalSpace;
          [v7 setMinBytes:v23 + startLocation + v25];
          recoveryPart = [(SKLastPartitions *)v14 recoveryPart];

          if (recoveryPart)
          {
            recoveryPart2 = [(SKLastPartitions *)v14 recoveryPart];
            [v7 setMinBytes:{objc_msgSend(v7, "minBytes") + objc_msgSend(recoveryPart2, "totalSpace")}];
          }
        }

        goto LABEL_25;
      }

      type3 = [v16 type];
      v20 = [type3 isEqualToString:kSKDiskTypeHFS[0]];

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

- (id)resizeLimitsWithLimitsParams:(id)params error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  isAttached = [(SKDiskImage *)self isAttached];
  if (-[SKDiskImage attachBeforeResizeWithStdinPass:error:](self, "attachBeforeResizeWithStdinPass:error:", [paramsCopy stdinPassPhrase], error))
  {
    if ([paramsCopy shallow])
    {
      [(SKDiskImage *)self resizeLimitsShallowInternalWithLimitsParams:paramsCopy error:error];
    }

    else
    {
      [(SKDiskImage *)self resizeLimitsInternalWithLimitsParams:paramsCopy error:error];
    }
    v8 = ;
    if (v8)
    {
      if (!isAttached)
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

- (id)resizeLimitsWithError:(id *)error
{
  v5 = objc_opt_new();
  v6 = [(SKDiskImage *)self resizeLimitsWithLimitsParams:v5 error:error];

  return v6;
}

@end