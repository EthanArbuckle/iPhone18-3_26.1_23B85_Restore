@interface CloudArtworkImportOperation
- (CloudArtworkImportOperation)initWithURLSession:(id)a3 configuration:(id)a4 cloudID:(unint64_t)a5 artworkToken:(id)a6 artworkType:(int64_t)a7 sourceType:(int64_t)a8 variantType:(int64_t)a9 clientIdentity:(id)a10;
- (id)_artworkURLForInfoDictionary:(id)a3;
- (id)_resizedImageDataFromLocation:(id)a3;
- (void)_populateAvailableVariantsIfNeeded;
- (void)addCompletionHandler:(id)a3;
- (void)callCompletionHandlers;
- (void)cancel;
- (void)finish;
- (void)start;
@end

@implementation CloudArtworkImportOperation

- (void)_populateAvailableVariantsIfNeeded
{
  v3 = *(&self->_assetURL + 2);
  if (v3 && !*(&self->_sourceType + 2))
  {
    v4 = [v3 objectForKeyedSubscript:ICArtworkInfoKeyArtworkDictionary];
    v5 = [v4 objectForKeyedSubscript:ICArtworkInfoKeyArtworkDictionaryFullURL3x4];
    if (v5)
    {
      *&v25 = 0;
      *(&v25 + 1) = &v25;
      v26 = 0x2020000000;
      v27 = 0;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v16[3] = 0;
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x2020000000;
      v15[3] = 0;
      v6 = [(CloudLibraryOperation *)self musicLibrary];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000D519C;
      v14[3] = &unk_1001DD510;
      v14[4] = self;
      v14[5] = &v25;
      v14[6] = v16;
      v14[7] = v15;
      v14[8] = &v17;
      [v6 databaseConnectionAllowingWrites:0 withBlock:v14];

      if (*(*(&v25 + 1) + 24))
      {
        if ((v18[3] & 1) == 0)
        {
          v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(&self->_cloudID + 2);
            *buf = 138543618;
            v22 = self;
            v23 = 2114;
            v24 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding 3x4 variant entry for artwork token '%{public}@", buf, 0x16u);
          }

          v9 = [(CloudLibraryOperation *)self musicLibrary];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_1000D5314;
          v13[3] = &unk_1001DD538;
          v13[4] = self;
          v13[5] = v16;
          v13[6] = v15;
          [v9 databaseConnectionAllowingWrites:1 withBlock:v13];
        }
      }

      else
      {
        v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = *(&self->_cloudID + 2);
          *buf = 138543618;
          v22 = self;
          v23 = 2114;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ No existing entries for token '%{public}@' - not adding variants", buf, 0x16u);
        }
      }

      _Block_object_dispose(v15, 8);
      _Block_object_dispose(v16, 8);
      _Block_object_dispose(&v17, 8);
      _Block_object_dispose(&v25, 8);
    }

    else
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v25) = 138543362;
        *(&v25 + 4) = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Artwork info does not contain any variants - skipping adding to db", &v25, 0xCu);
      }
    }
  }
}

- (id)_artworkURLForInfoDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:ICArtworkInfoKeyArtworkDictionary];
  height = CGSizeZero.height;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_4;
  }

  v6 = *(&self->_urlRequest + 6);
  if (v6 != 512)
  {
    width = CGSizeZero.width;
    v8 = height;
    if (v6 == 2048)
    {
      goto LABEL_13;
    }

LABEL_4:
    v9 = [v4 objectForKeyedSubscript:ICArtworkInfoKeyArtworkDictionaryCoverArtworkJSON];
    if ([v9 length])
    {
      v10 = [v9 dataUsingEncoding:4];
      v11 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[ICStoreArtworkInfo alloc] initWithArtworkResponseDictionary:v11];

        width = CGSizeZero.width;
        v8 = height;
        if (v12)
        {
          width = CGSizeZero.width;
          v8 = height;
          goto LABEL_27;
        }

        goto LABEL_13;
      }
    }

LABEL_12:

    width = CGSizeZero.width;
    v8 = height;
    goto LABEL_13;
  }

  v9 = [v4 objectForKeyedSubscript:ICArtworkInfoKeyArtworkDictionaryTVCoverArtworkTemplateURL];
  if (![v9 length])
  {
    goto LABEL_12;
  }

  v13 = [ICStoreArtworkInfo alloc];
  v42 = @"url";
  v43 = v9;
  v14 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v12 = [v13 initWithArtworkResponseDictionary:v14];

  v8 = 3.0;
  width = 2.0;
  if (v12)
  {
    goto LABEL_27;
  }

LABEL_13:
  v15 = [v4 objectForKeyedSubscript:ICArtworkInfoKeyArtworkDictionaryTemplateJSON];
  if (![v15 length])
  {
LABEL_18:

    goto LABEL_19;
  }

  v16 = [v15 dataUsingEncoding:4];
  v17 = [NSJSONSerialization JSONObjectWithData:v16 options:0 error:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_18;
  }

  v12 = [[ICStoreArtworkInfo alloc] initWithArtworkResponseDictionary:v17];

  if (v12)
  {
    goto LABEL_27;
  }

LABEL_19:
  v18 = [v4 objectForKeyedSubscript:ICArtworkInfoKeyArtworkDictionaryTemplateURL];
  if ([v18 length])
  {
    v19 = [ICStoreArtworkInfo alloc];
    v40 = @"url";
    v41 = v18;
    v20 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v12 = [v19 initWithArtworkResponseDictionary:v20];

    if (v12)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v21 = *(&self->_sourceType + 2);
  if (v21 > 4)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v4 objectForKeyedSubscript:**(&off_1001DD558 + v21)];
  }

  v23 = [ICStoreArtworkInfo alloc];
  v24 = [NSURL URLWithString:v22];
  v12 = [v23 initWithArtworkURL:v24];

LABEL_27:
  MSVGetMaximumScreenSize();
  v26 = v25;
  v28 = v27;
  v29 = [v12 sizeInfo];
  [v29 maxSupportedSize];
  v31 = v30;
  v33 = v32;

  if (v31 == CGSizeZero.width && v33 == height)
  {
    if (width == CGSizeZero.width && v8 == height)
    {
      v37 = v28;
    }

    else
    {
      v37 = v8 * v26 / width;
      if (v28 <= v37)
      {
        v37 = v28;
        v26 = width * v28 / v8;
      }
    }
  }

  else
  {
    MSVImageUtilitiesMakeBoundingBoxSize();
    v26 = v35;
    v37 = v36;
  }

  v38 = [v12 artworkURLWithSize:ICStoreArtworkInfoCropStyleBoundedBox cropStyle:ICStoreArtworkInfoImageFormatJPEG format:MSVDeviceSupportsExtendedColorDisplay() preferP3ColorSpace:{v26, v37}];

  return v38;
}

- (id)_resizedImageDataFromLocation:(id)a3
{
  v3 = a3;
  v4 = +[ICDeviceInfo currentDeviceInfo];
  if (![v4 isWatch])
  {
    v14 = 0;
    goto LABEL_25;
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v3 path];
  v7 = [v5 attributesOfItemAtPath:v6 error:0];
  v8 = [v7 fileSize];

  ImageSource = MSVImageUtilitiesCreateImageSource();
  if (!ImageSource)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failed to create image source for resizing image at '%{public}@'", &v19, 0xCu);
    }

    v14 = 0;
    goto LABEL_24;
  }

  v10 = ImageSource;
  v11 = +[NSMutableData data];
  DataImageDestination = MSVImageUtilitiesCreateDataImageDestination();
  if (!DataImageDestination)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "failed to create image destination for resizing image at '%{public}@'", &v19, 0xCu);
    }

    v14 = 0;
    goto LABEL_23;
  }

  v13 = DataImageDestination;
  [v4 mainScreenSize];
  if (!MSVImageUtilitiesResizeSourceImageToJPEGDestination())
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v3;
      v17 = "failed to resize image at '%{public}@'";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, &v19, 0xCu);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!CGImageDestinationFinalize(v13))
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v3;
      v17 = "failed to finalize resized image at '%{public}@'";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ([v11 length]>= v8)
  {
LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v14 = v11;
LABEL_22:
  CFRelease(v13);
LABEL_23:
  CFRelease(v10);
LABEL_24:

LABEL_25:

  return v14;
}

- (void)finish
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished artwork import", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CloudArtworkImportOperation;
  [(CloudLibraryConcurrentOperation *)&v4 finish];
}

- (void)cancel
{
  if (*(&self->_completionHandlers + 2))
  {
    [*(&self->_allowsCellularData + 2) cancelRequest:?];
  }

  v3.receiver = self;
  v3.super_class = CloudArtworkImportOperation;
  [(CloudArtworkImportOperation *)&v3 cancel];
}

- (void)start
{
  v73.receiver = self;
  v73.super_class = CloudArtworkImportOperation;
  [(CloudLibraryConcurrentOperation *)&v73 start];
  v3 = [(CloudArtworkImportOperation *)self isCancelled];
  v4 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138543362;
      v78 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Not running CloudArtworkImportOperation as it's is cancelled", buf, 0xCu);
    }

    [(CloudArtworkImportOperation *)self finish];
  }

  else
  {
    if (v5)
    {
      v6 = [(CloudArtworkImportOperation *)self artworkToken];
      *buf = 138543618;
      v78 = self;
      v79 = 2114;
      *v80 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting artwork import using token '%{public}@'", buf, 0x16u);
    }

    v7 = +[NSMutableDictionary dictionary];
    v8 = +[NSDate date];
    v9 = +[ICStorageManager sharedManager];
    v10 = [v9 cachingEnabled];
    v11 = [v9 storageSpaceAvailable];
    v12 = v11;
    if (v10 && v11 >> 12 > 0x18)
    {
      v13 = [(CloudArtworkImportOperation *)self artworkToken];
      v14 = [v13 length];

      if (v14)
      {
        v15 = [(CloudArtworkImportOperation *)self assetURL];
        if (v15 || ([(CloudArtworkImportOperation *)self _artworkURLForInfoDictionary:*(&self->_assetURL + 2)], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v16 = v15;
          [(CloudArtworkImportOperation *)self _populateAvailableVariantsIfNeeded];
          v17 = [(CloudArtworkImportOperation *)self artworkToken];
          v18 = [ML3MusicLibrary artworkRelativePathFromToken:v17 variantType:*(&self->_sourceType + 2)];

          v19 = [(CloudLibraryOperation *)self musicLibrary];
          v20 = [v19 hasOriginalArtworkForRelativePath:v18];

          if (v20)
          {
            v21 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v78 = self;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Already have original on disk, attempting to import into database...", buf, 0xCu);
            }

            v22 = [(CloudLibraryOperation *)self musicLibrary];
            v23 = [(CloudArtworkImportOperation *)self artworkToken];
            v24 = [v22 importExistingOriginalArtworkWithArtworkToken:v23 artworkType:-[CloudArtworkImportOperation artworkType](self sourceType:"artworkType") mediaType:-[CloudArtworkImportOperation sourceType](self variantType:{"sourceType"), -[CloudArtworkImportOperation mediaType](self, "mediaType"), *(&self->_sourceType + 2)}];

            if ((v24 & 1) == 0)
            {
              v75 = NSLocalizedDescriptionKey;
              v76 = @"Original artwork found, but failed to import.";
              v25 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
              v26 = [NSError ic_cloudClientErrorWithCode:2002 userInfo:v25];
              [(CloudLibraryOperation *)self setError:v26];
            }

            [(CloudArtworkImportOperation *)self finish];
          }

          else
          {
            v29 = [(CloudArtworkImportOperation *)self isCancelled];
            v30 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
            v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
            if (v29)
            {
              if (v31)
              {
                *buf = 134217984;
                v78 = self;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not running CloudArtworkImportOperation (%p) as it's is cancelled", buf, 0xCu);
              }

              [(CloudArtworkImportOperation *)self finish];
            }

            else
            {
              v45 = v7;
              if (v31)
              {
                *buf = 138543618;
                v78 = self;
                v79 = 2114;
                *v80 = v16;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloading artwork from '%{public}@'", buf, 0x16u);
              }

              v32 = [NSMutableURLRequest requestWithURL:v16];
              [v32 setAllowsCellularAccess:{-[CloudArtworkImportOperation allowsCellularData](self, "allowsCellularData")}];
              v33 = [ICRequestContext alloc];
              v34 = +[ICClientInfo defaultInfo];
              v44 = [v33 initWithClientInfo:v34];

              v35 = [[ICURLRequest alloc] initWithURLRequest:v32 requestContext:v44];
              v36 = *(&self->_completionHandlers + 2);
              *(&self->_completionHandlers + 2) = v35;

              v37 = sub_1000E4F18();
              v74[0] = v37;
              v38 = MSVNanoIDCreateTaggedPointer();
              v74[1] = v38;
              v39 = [NSArray arrayWithObjects:v74 count:2];
              v40 = [NSURL fileURLWithPathComponents:v39];

              v41 = *(&self->_allowsCellularData + 2);
              v42 = *(&self->_completionHandlers + 2);
              v46[0] = _NSConcreteStackBlock;
              v46[1] = 3221225472;
              v46[2] = sub_1000D6944;
              v46[3] = &unk_1001DD4C0;
              v46[4] = self;
              v47 = v16;
              v7 = v45;
              v48 = v45;
              v49 = v8;
              [v41 enqueueDownloadRequest:v42 toDestination:v40 withCompletionHandler:v46];
            }
          }
        }

        else
        {
          v43 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v78 = self;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}@ Cannot import artwork without an asset URL.", buf, 0xCu);
          }

          [(CloudArtworkImportOperation *)self finish];
          v50 = _NSConcreteStackBlock;
          v51 = 3221225472;
          v52 = sub_1000D6878;
          v53 = &unk_1001DD3F8;
          v54 = v7;
          v55 = self;
          v56 = v8;
          AnalyticsSendEventLazy();

          v16 = v54;
        }
      }

      else
      {
        v28 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v78 = self;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@ Cannot import artwork without artwork token.", buf, 0xCu);
        }

        [(CloudArtworkImportOperation *)self finish];
        v57 = _NSConcreteStackBlock;
        v58 = 3221225472;
        v59 = sub_1000D67AC;
        v60 = &unk_1001DD3F8;
        v61 = v7;
        v62 = self;
        v63 = v8;
        AnalyticsSendEventLazy();

        v16 = v61;
      }
    }

    else
    {
      v27 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v78 = self;
        v79 = 1024;
        *v80 = v10;
        *&v80[4] = 2048;
        *&v80[6] = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@ Not enough free space to download artwork. cachingEnabled=%d, storageSpaceAvailable=%lld", buf, 0x1Cu);
      }

      [(CloudArtworkImportOperation *)self finish];
      v64 = _NSConcreteStackBlock;
      v65 = 3221225472;
      v66 = sub_1000D6698;
      v67 = &unk_1001DD3D0;
      v68 = v7;
      v69 = self;
      v72 = v10;
      v70 = v8;
      v71 = v12;
      AnalyticsSendEventLazy();

      v16 = v68;
    }
  }
}

- (void)callCompletionHandlers
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(&self->super._finished + 1);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(CloudLibraryOperation *)self error];
        (*(v8 + 16))(v8, v9);

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *(&self->super._finished + 1);
  *(&self->super._finished + 1) = 0;
}

- (void)addCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = *(&self->super._finished + 1);
    v9 = v4;
    if (!v5)
    {
      v6 = +[NSMutableArray array];
      v7 = *(&self->super._finished + 1);
      *(&self->super._finished + 1) = v6;

      v5 = *(&self->super._finished + 1);
    }

    v8 = [v9 copy];
    [v5 addObject:v8];

    v4 = v9;
  }
}

- (CloudArtworkImportOperation)initWithURLSession:(id)a3 configuration:(id)a4 cloudID:(unint64_t)a5 artworkToken:(id)a6 artworkType:(int64_t)a7 sourceType:(int64_t)a8 variantType:(int64_t)a9 clientIdentity:(id)a10
{
  v17 = a3;
  v18 = a6;
  v23.receiver = self;
  v23.super_class = CloudArtworkImportOperation;
  v19 = [(CloudLibraryOperation *)&v23 initWithConfiguration:a4 clientIdentity:a10];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 114), a3);
    *(v20 + 122) = a5;
    objc_storeStrong((v20 + 130), a6);
    *(v20 + 138) = a7;
    *(v20 + 146) = a8;
    *(v20 + 154) = a9;
    v20[106] = 1;
    v21 = +[CloudArtworkImportSetupOperation sharedSetupOperation];
    [v20 addDependency:v21];
  }

  return v20;
}

@end