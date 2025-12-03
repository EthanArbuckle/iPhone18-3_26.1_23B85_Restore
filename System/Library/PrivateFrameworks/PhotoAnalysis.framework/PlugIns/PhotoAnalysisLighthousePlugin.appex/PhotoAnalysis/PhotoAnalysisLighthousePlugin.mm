@interface PhotoAnalysisLighthousePlugin
+ (id)photoAnalysisLighthousePluginLog;
- (PhotoAnalysisLighthousePlugin)init;
- (id)performTask:(id)task outError:(id *)error;
- (id)performTrialTask:(id)task outError:(id *)error;
- (void)stop;
@end

@implementation PhotoAnalysisLighthousePlugin

- (void)stop
{
  v3 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to stop", v5, 2u);
  }

  stopLock = [(PhotoAnalysisLighthousePlugin *)self stopLock];
  objc_sync_enter(stopLock);
  [(PhotoAnalysisLighthousePlugin *)self setShouldStop:1];
  objc_sync_exit(stopLock);
}

- (id)performTrialTask:(id)task outError:(id *)error
{
  taskCopy = task;
  errorCopy = error;
  v5 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
  if (error)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = taskCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting task %@", buf, 0xCu);
    }

    [(PhotoAnalysisLighthousePlugin *)self setTask:taskCopy];
    triClient = [taskCopy triClient];
    v81 = [triClient levelForFactor:@"recipe" withNamespaceName:@"LIGHTHOUSE_PHOTOS_PHOTO_ANALYSIS"];
    fileValue = [v81 fileValue];
    path = [fileValue path];

    v99 = 0;
    v77 = [[NSData alloc] initWithContentsOfFile:path options:1 error:&v99];
    v8 = v99;
    if (v8)
    {
      v9 = v8;
      v10 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = path;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Can't load JSON from %@ with error: %@", buf, 0x16u);
      }

      v11 = v9;
      v12 = 0;
      *errorCopy = v9;
      goto LABEL_51;
    }

    v98 = 0;
    v74 = [NSJSONSerialization JSONObjectWithData:v77 options:0 error:&v98];
    v9 = v98;
    if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v47 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Can't convert JSON data to dictionary with error: %@", buf, 0xCu);
      }

      v48 = v9;
      v12 = 0;
      *errorCopy = v9;
    }

    else
    {
      v14 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v74;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Loaded JSON recipe: %@", buf, 0xCu);
      }

      v71 = [triClient levelForFactor:@"models" withNamespaceName:@"LIGHTHOUSE_PHOTOS_PHOTO_ANALYSIS"];
      directoryValue = [v71 directoryValue];
      path2 = [directoryValue path];
      v17 = [NSURL fileURLWithPath:path2];
      v72 = [v17 URLByAppendingPathComponent:@"photos_models"];

      v18 = +[NSFileManager defaultManager];
      v97 = 0;
      v73 = [v18 contentsOfDirectoryAtURL:v72 includingPropertiesForKeys:0 options:4 error:&v97];
      v9 = v97;

      if (![v73 count] || v9)
      {
        v50 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v72;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to get subdirectories at %@", buf, 0xCu);
        }

        v51 = v9;
        v12 = 0;
        *errorCopy = v9;
      }

      else
      {
        v19 = objc_opt_new();
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        obj = v73;
        v78 = [obj countByEnumeratingWithState:&v93 objects:v109 count:16];
        if (v78)
        {
          v76 = *v94;
LABEL_19:
          v20 = 0;
          while (1)
          {
            if (*v94 != v76)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v93 + 1) + 8 * v20);
            v100[0] = 0;
            v22 = +[NSFileManager defaultManager];
            path3 = [v21 path];
            v24 = [v22 fileExistsAtPath:path3 isDirectory:v100];

            if (v24)
            {
              if (v100[0] == 1)
              {
                v25 = +[NSFileManager defaultManager];
                v92 = 0;
                v26 = [v25 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:4 error:&v92];
                v9 = v92;

                if (v9)
                {
                  v52 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    path4 = [v21 path];
                    *buf = 138412290;
                    *&buf[4] = path4;
                    _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to get files at %@", buf, 0xCu);
                  }

                  v53 = v9;
                  *errorCopy = v9;

                  v12 = 0;
                  goto LABEL_82;
                }

                v91 = 0u;
                v89 = 0u;
                v90 = 0u;
                v88 = 0u;
                v27 = v26;
                v28 = [v27 countByEnumeratingWithState:&v88 objects:v108 count:16];
                if (v28)
                {
                  v29 = *v89;
                  do
                  {
                    for (i = 0; i != v28; i = i + 1)
                    {
                      if (*v89 != v29)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v31 = *(*(&v88 + 1) + 8 * i);
                      pathExtension = [v31 pathExtension];
                      v33 = [pathExtension isEqualToString:@"net"];

                      if (v33)
                      {
                        path5 = [v31 path];
                        [v19 addObject:path5];
                      }
                    }

                    v28 = [v27 countByEnumeratingWithState:&v88 objects:v108 count:16];
                  }

                  while (v28);
                }

                goto LABEL_40;
              }

              v35 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                path6 = [v21 path];
                *buf = 138412290;
                *&buf[4] = path6;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Skipped %@ which is not a directory", buf, 0xCu);
              }
            }

            else
            {
              v35 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                path7 = [v21 path];
                *buf = 138412290;
                *&buf[4] = path7;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Skipped %@ which was not found in the filesystem", buf, 0xCu);
              }
            }

LABEL_40:
            if (++v20 == v78)
            {
              v78 = [obj countByEnumeratingWithState:&v93 objects:v109 count:16];
              if (v78)
              {
                goto LABEL_19;
              }

              break;
            }
          }
        }

        v38 = [v19 count] == 0;
        v39 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
        v40 = v39;
        if (v38)
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to load any models", buf, 2u);
          }

          [NSError errorWithDomain:@"com.apple.PhotoAnalysis.PhotoAnalysisLighthousePlugin.PhotoAnalysisLighthousePlugin" code:0 userInfo:0];
          v9 = 0;
          *errorCopy = v12 = 0;
        }

        else
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v19;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Found models at %@", buf, 0xCu);
          }

          v41 = [triClient experimentIdentifiersWithNamespaceName:@"LIGHTHOUSE_PHOTOS_PHOTO_ANALYSIS"];
          v42 = v41;
          if (v41)
          {
            experimentId = [v41 experimentId];
            v44 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v42 deploymentId]);
            stringValue = [v44 stringValue];

            treatmentId = [v42 treatmentId];
          }

          else
          {
            treatmentId = @"fail";
            stringValue = @"fail";
            experimentId = @"fail";
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v105 = sub_100001CCC;
          v106 = sub_100001CDC;
          v107 = 0;
          v54 = [PHPhotoLibrary alloc];
          v55 = +[PHPhotoLibrary systemPhotoLibraryURL];
          v56 = [v54 initWithPhotoLibraryURL:v55];

          v57 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            v58 = +[PHPhotoLibrary systemPhotoLibraryURL];
            absoluteString = [v58 absoluteString];
            *v100 = 138412546;
            v101 = v56;
            v102 = 2112;
            v103 = absoluteString;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Initialized systemPhotoLibrary: %@ with URL: %@", v100, 0x16u);
          }

          v60 = (*&buf[8] + 40);
          v87 = *(*&buf[8] + 40);
          v61 = [v56 openAndWaitWithUpgrade:0 error:&v87];
          objc_storeStrong(v60, v87);
          if (((*(*&buf[8] + 40) == 0) & v61) != 0)
          {
            v62 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              *v100 = 134217984;
              v101 = 1;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "splOpened %lu", v100, 0xCu);
            }

            v86[0] = _NSConcreteStackBlock;
            v86[1] = 3221225472;
            v86[2] = sub_100001CE4;
            v86[3] = &unk_100008250;
            v86[4] = self;
            v63 = [[PHACurareShadowEvaluationFacade alloc] initWithPhotosLibrary:v56 graphManagerProgress:v86];
            stopLock = [(PhotoAnalysisLighthousePlugin *)self stopLock];
            objc_sync_enter(stopLock);
            shouldStop = [(PhotoAnalysisLighthousePlugin *)self shouldStop];
            objc_sync_exit(stopLock);

            if (shouldStop)
            {
              v12 = 0;
            }

            else
            {
              v85[0] = _NSConcreteStackBlock;
              v85[1] = 3221225472;
              v85[2] = sub_100001D60;
              v85[3] = &unk_1000082A0;
              v85[4] = buf;
              [v63 runPFLRecipeUserInfo:v74 models:v19 trialDeploymentID:stringValue trialExperimentID:experimentId trialTreatmentID:treatmentId resultBlock:v85];
              if (*(*&buf[8] + 40))
              {
                v67 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  v70 = *(*&buf[8] + 40);
                  *v100 = 138412290;
                  v101 = v70;
                  _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Plugin failed with error: %@", v100, 0xCu);
                }

                v12 = 0;
                *errorCopy = *(*&buf[8] + 40);
              }

              else
              {
                v12 = objc_opt_new();
              }
            }
          }

          else
          {
            v66 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v69 = *(*&buf[8] + 40);
              *v100 = 138412290;
              v101 = v69;
              _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to open photo library with error: %@", v100, 0xCu);
            }

            v12 = 0;
            *errorCopy = *(*&buf[8] + 40);
          }

          _Block_object_dispose(buf, 8);
          v9 = 0;
        }

LABEL_82:
      }
    }

LABEL_51:
    v13 = triClient;
    goto LABEL_52;
  }

  v13 = v5;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "outError was nil. Returning nil.", buf, 2u);
  }

  v12 = 0;
LABEL_52:

  return v12;
}

- (id)performTask:(id)task outError:(id *)error
{
  taskCopy = task;
  v7 = taskCopy;
  if (error)
  {
    *v55 = 0;
    v56 = v55;
    v57 = 0x3032000000;
    v58 = sub_100001CCC;
    v59 = sub_100001CDC;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_100001CCC;
    v53 = sub_100001CDC;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_100001CCC;
    v47 = sub_100001CDC;
    v48 = 0;
    parameters = [taskCopy parameters];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      v73 = NSLocalizedDescriptionKey;
      v74 = @"dictionaryRepresentation API not available";
      v11 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      [NSError errorWithDomain:@"com.apple.PhotoAnalysis.PhotoAnalysisLighthousePlugin.PhotoAnalysisLighthousePlugin" code:101 userInfo:v11];
      *error = v21 = 0;
LABEL_23:

      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v49, 8);

      _Block_object_dispose(v55, 8);
      goto LABEL_24;
    }

    parameters2 = [v7 parameters];
    v11 = [parameters2 performSelector:"dictionaryRepresentation"];

    v12 = [PHPhotoLibrary alloc];
    v13 = +[PHPhotoLibrary systemPhotoLibraryURL];
    v14 = [v12 initWithPhotoLibraryURL:v13];

    v15 = (v56 + 40);
    obj = *(v56 + 5);
    v16 = [v14 openAndWaitWithUpgrade:0 error:&obj];
    objc_storeStrong(v15, obj);
    if (v16)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100002474;
      v41[3] = &unk_100008250;
      v41[4] = self;
      v17 = [[PHAPrivateFederatedLearningFacade alloc] initWithPhotosLibrary:v14 graphManagerProgress:v41];
      stopLock = [(PhotoAnalysisLighthousePlugin *)self stopLock];
      objc_sync_enter(stopLock);
      shouldStop = [(PhotoAnalysisLighthousePlugin *)self shouldStop];
      objc_sync_exit(stopLock);

      if (shouldStop)
      {

        goto LABEL_21;
      }

      attachments = [v7 attachments];
      attachmentURLs = [attachments attachmentURLs];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000024F0;
      v40[3] = &unk_100008278;
      v40[4] = &v49;
      v40[5] = &v43;
      v40[6] = v55;
      [v17 runPFLWithAttachments:attachmentURLs recipeUserInfo:v11 resultBlock:v40];
    }

    if (v50[5])
    {
      v24 = v44[5];
      if (v24)
      {
        v71 = @"trainingMetrics";
        v72 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v26 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Successfully submitted results", buf, 2u);
        }

        v27 = [MLRTaskResult alloc];
        v21 = [v27 initWithJSONResult:v25 unprivatizedVector:v50[5]];

        goto LABEL_22;
      }
    }

    v28 = *(v56 + 5);
    if (v28)
    {
      domain = [v28 domain];
      code = [*(v56 + 5) code];
      v67 = NSLocalizedDescriptionKey;
      v31 = [*(v56 + 5) description];
      v68 = v31;
      v32 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      *error = [NSError errorWithDomain:domain code:code userInfo:v32];
    }

    else
    {
      v69 = NSLocalizedDescriptionKey;
      v70 = @"Runner returned unknown error";
      domain = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      *error = [NSError errorWithDomain:@"com.apple.PhotoAnalysis.PhotoAnalysisLighthousePlugin.PhotoAnalysisLighthousePlugin" code:100 userInfo:domain];
    }

    v33 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v35 = v50[5];
      v36 = v44[5];
      v37 = [*error description];
      v38 = v37;
      v39 = @"not nil";
      *buf = 138412802;
      if (!v35)
      {
        v39 = @"nil";
      }

      v62 = v39;
      v63 = 2112;
      v64 = v36;
      v65 = 2112;
      v66 = v37;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Runner returned invalid data(%@) or training metrics(%@). Error: %@", buf, 0x20u);
    }

LABEL_21:
    v21 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v20 = +[PhotoAnalysisLighthousePlugin photoAnalysisLighthousePluginLog];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *v55 = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "outError was nil. Returning nil.", v55, 2u);
  }

  v21 = 0;
LABEL_24:

  return v21;
}

- (PhotoAnalysisLighthousePlugin)init
{
  v6.receiver = self;
  v6.super_class = PhotoAnalysisLighthousePlugin;
  v2 = [(PhotoAnalysisLighthousePlugin *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PhotoAnalysisLighthousePlugin *)v2 setShouldStop:0];
    v4 = objc_alloc_init(NSObject);
    [(PhotoAnalysisLighthousePlugin *)v3 setStopLock:v4];
  }

  return v3;
}

+ (id)photoAnalysisLighthousePluginLog
{
  if (qword_10000C620 != -1)
  {
    dispatch_once(&qword_10000C620, &stru_100008228);
  }

  v3 = qword_10000C618;

  return v3;
}

@end