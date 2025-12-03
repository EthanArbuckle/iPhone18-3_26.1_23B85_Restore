@interface PXAutoloopVideoProcessTask
- (void)performTaskWithInput:(id)input;
@end

@implementation PXAutoloopVideoProcessTask

- (void)performTaskWithInput:(id)input
{
  v64 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v5 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v5 stringWithFormat:@"autoloop-tmp-%@", uUIDString];

  v9 = MEMORY[0x1E695DFF8];
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:v8];
  v12 = [v9 fileURLWithPath:v11];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v52 = 0;
  v14 = [defaultManager createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v52];
  v15 = v52;

  if (v14)
  {
    path = [v12 path];
    [(PXAutoloopVideoTask *)self setTemporaryFilesDirectory:path];

    [inputCopy asset];
    v51 = 0;
    v17 = v50 = 0;
    location = 0;
    p_location = &location;
    v55 = 0x2020000000;
    v18 = getcreateAutoLoopSettingsForAssetSymbolLoc_ptr;
    v56 = getcreateAutoLoopSettingsForAssetSymbolLoc_ptr;
    if (!getcreateAutoLoopSettingsForAssetSymbolLoc_ptr)
    {
      v59 = MEMORY[0x1E69E9820];
      v60 = 3221225472;
      v61 = __getcreateAutoLoopSettingsForAssetSymbolLoc_block_invoke;
      v62 = &unk_1E774BD00;
      v63 = &location;
      v19 = AutoLoopLibrary();
      v20 = dlsym(v19, "createAutoLoopSettingsForAsset");
      *(v63[1] + 3) = v20;
      getcreateAutoLoopSettingsForAssetSymbolLoc_ptr = *(v63[1] + 3);
      v18 = p_location[3];
    }

    _Block_object_dispose(&location, 8);
    if (!v18)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"struct autoloopSettings *_createAutoLoopSettingsForAsset(AVAsset *__strong, autoloopErrorCode *)"}];
      [currentHandler handleFailureInFunction:v41 file:@"PXAutoloopSoftLinks.m" lineNumber:25 description:{@"%s", dlerror()}];

      goto LABEL_35;
    }

    v21 = v18(v17, &v51);

    v22 = v51;
    if (!v51)
    {
      if ([(PXAutoloopVideoProcessTask *)self shouldExtractGateFeatures])
      {
        location = 0;
        p_location = &location;
        v55 = 0x2020000000;
        v23 = getcreateBundleDefaultGatingClassifierURLSymbolLoc_ptr;
        v56 = getcreateBundleDefaultGatingClassifierURLSymbolLoc_ptr;
        if (!getcreateBundleDefaultGatingClassifierURLSymbolLoc_ptr)
        {
          v59 = MEMORY[0x1E69E9820];
          v60 = 3221225472;
          v61 = __getcreateBundleDefaultGatingClassifierURLSymbolLoc_block_invoke;
          v62 = &unk_1E774BD00;
          v63 = &location;
          v24 = AutoLoopLibrary();
          v25 = dlsym(v24, "createBundleDefaultGatingClassifierURL");
          *(v63[1] + 3) = v25;
          getcreateBundleDefaultGatingClassifierURLSymbolLoc_ptr = *(v63[1] + 3);
          v23 = p_location[3];
        }

        _Block_object_dispose(&location, 8);
        if (!v23)
        {
          while (1)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFURLRef _createBundleDefaultGatingClassifierURL(void)"];
            [currentHandler2 handleFailureInFunction:v43 file:@"PXAutoloopSoftLinks.m" lineNumber:28 description:{@"%s", dlerror()}];

LABEL_35:
            __break(1u);
          }
        }

        cf = v23();
        imageURL = [inputCopy imageURL];
        v27 = imageURL;
        if (imageURL)
        {
          _autoloopSettingsSetGating(v21, cf, imageURL);
        }

        else
        {
          _autoloopSettingsSetGating(v21, cf, 0);
        }
      }

      else
      {
        v27 = 0;
        cf = 0;
      }

      LODWORD(v60) = 2;
      v59 = 0x100000000;
      objc_initWeak(&location, self);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __51__PXAutoloopVideoProcessTask_performTaskWithInput___block_invoke;
      v48[3] = &unk_1E7731FA0;
      objc_copyWeak(&v49, &location);
      _runLiveAnalysisPipeline(v21, v12, v17, &v59, &v50, v48);
      v51 = v30;
      if (!v30)
      {
        v46 = _liveAnalysisResultToDictionary(v50);
        v31 = MEMORY[0x1E695DFF8];
        temporaryFilesDirectory = [(PXAutoloopVideoTask *)self temporaryFilesDirectory];
        v45 = [v31 fileURLWithPath:temporaryFilesDirectory isDirectory:1];

        v44 = [v45 URLByAppendingPathComponent:@"liveAnalysisResult.plist" isDirectory:0];
        LOBYTE(v31) = [v46 writeToURL:? error:?];
        v33 = 0;
        if ((v31 & 1) == 0)
        {
          temporaryFilesDirectory2 = [(PXAutoloopVideoTask *)self temporaryFilesDirectory];
          NSLog(&cfstr_CouldnTWriteTo.isa, @"liveAnalysisResult.plist", temporaryFilesDirectory2, v33);
        }

        [(PXAutoloopVideoTask *)self setStatus:4];
      }

      if (v50)
      {
        _liveAnalysisResultDestroy(v50);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
      v22 = v51;
    }

    if (v22 >= 2)
    {
      _autoloopErrorCodeToString(v22);
      v36 = v35;
      v37 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A588];
      v58 = v35;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v39 = [v37 errorWithDomain:@"com.apple.photos" code:666 userInfo:v38];

      [(PXAutoloopVideoTask *)self setError:v39];
      [(PXAutoloopVideoTask *)self setStatus:1];
    }

    if (v21)
    {
      _autoloopSettingsDestroy(v21);
    }
  }

  else
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = v28;
    if (v15)
    {
      [v28 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    [v17 setObject:@"Subdirectory could not be created in NSTemporaryDirectory()" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos" code:666 userInfo:v17];
    [(PXAutoloopVideoTask *)self setError:v29];
    [(PXAutoloopVideoTask *)self setStatus:1];
  }
}

BOOL __51__PXAutoloopVideoProcessTask_performTaskWithInput___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained status] != 3;
    [v4 setProgress:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end