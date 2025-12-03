@interface WLAsset
- (BOOL)download;
- (WLAsset)initWithName:(id)name remoteURL:(id)l;
@end

@implementation WLAsset

- (WLAsset)initWithName:(id)name remoteURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = WLAsset;
  v8 = [(WLAsset *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(WLAsset *)v8 setName:nameCopy];
    [(WLAsset *)v9 setRemoteURL:lCopy];
    v10 = [@"/Library/WelcomeKit/Downloads/" stringByAppendingPathComponent:nameCopy];
    v11 = NSHomeDirectory();
    v12 = [v11 stringByAppendingPathComponent:v10];
    [(WLAsset *)v9 setLocalFile:v12];
  }

  return v9;
}

- (BOOL)download
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  stringByDeletingLastPathComponent = [(NSString *)self->_localFile stringByDeletingLastPathComponent];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || (v55[0] = 0, objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, v55), (v5 = v55[0]) == 0))
  {
    if ([defaultManager fileExistsAtPath:self->_localFile])
    {
      localFile = self->_localFile;
      v7 = 1;
      _WLLog();
    }

    else
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:self->_remoteURL];
      v9 = [MEMORY[0x277CCAD20] requestWithURL:v8];
      defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      v10 = [MEMORY[0x277CCAD30] sessionWithConfiguration:?];
      v11 = dispatch_semaphore_create(0);
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      v54 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = __Block_byref_object_copy_;
      v49 = __Block_byref_object_dispose_;
      v50 = 0;
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy_;
      v39 = __Block_byref_object_dispose_;
      v40 = 0;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __19__WLAsset_download__block_invoke;
      v29[3] = &unk_279EB8C70;
      v31 = &v45;
      v32 = &v41;
      v33 = &v35;
      v34 = &v51;
      v12 = v11;
      v30 = v12;
      v13 = [v10 downloadTaskWithRequest:v9 completionHandler:v29];
      [v13 resume];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      v24 = v46[5];
      v25 = v36[5];
      v21 = *(v52 + 24);
      v23 = v42[3];
      _WLLog();
      if (*(v52 + 24) == 1)
      {
        v26 = v9;
        v14 = v8;
        v15 = v36[5];
        v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:{self->_localFile, v21, v23, v24, v25}];
        v28 = 0;
        v17 = [defaultManager moveItemAtURL:v15 toURL:v16 error:&v28];
        v18 = v28;
        *(v52 + 24) = v17;

        if (!*(v52 + 24) || v18)
        {
          v22 = *(v52 + 24);
          _WLLog();
        }

        v7 = *(v52 + 24);
        v8 = v14;
        v9 = v26;
      }

      else
      {
        v7 = 0;
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&v45, 8);

      _Block_object_dispose(&v51, 8);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
    _WLLog();
    v7 = 0;
  }

  return v7 & 1;
}

void __19__WLAsset_download__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  *(*(*(a1 + 48) + 8) + 24) = [v8 statusCode];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ([v8 statusCode] - 200) < 0x64;
  }

  *(*(*(a1 + 64) + 8) + 24) = v10;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end