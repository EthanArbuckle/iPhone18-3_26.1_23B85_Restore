@interface PLPhotoDerivativeUtilities
+ (id)generateDerivativeForMSAsset:(id)asset derivativeType:(int)type withSpecificationInfo:(id)info collectionGUID:(id)d;
@end

@implementation PLPhotoDerivativeUtilities

+ (id)generateDerivativeForMSAsset:(id)asset derivativeType:(int)type withSpecificationInfo:(id)info collectionGUID:(id)d
{
  v8 = *&type;
  v90 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  infoCopy = info;
  dCopy = d;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v11 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      *&buf[4] = assetCopy;
      *&buf[12] = 1024;
      *&buf[14] = v8;
      *&buf[18] = 2112;
      *&buf[20] = infoCopy;
      v88 = 2112;
      v89 = dCopy;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "generateDerivativeForMSAsset %@ type %i specificationInfo %@ collectionGUID %@", buf, 0x26u);
    }
  }

  path = [assetCopy path];
  metadata = [assetCopy metadata];
  v69 = *MEMORY[0x1E6998080];
  v12 = [metadata objectForKey:?];
  [v12 doubleValue];
  v14 = v13;

  v68 = *MEMORY[0x1E6998078];
  v15 = [metadata objectForKey:?];
  [v15 doubleValue];
  v17 = v16;

  type = [assetCopy type];
  v18 = [MEMORY[0x1E69C08F0] typeWithIdentifier:type];
  v19 = *MEMORY[0x1E6982E58];
  [v18 isEqual:*MEMORY[0x1E6982E58]];
  v20 = [v18 isEqual:*MEMORY[0x1E6982DE8]];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (v8)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v70 = v21;
  if (v14 == 0.0 || v17 == 0.0)
  {
    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_35;
    }

    v23 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = path;
      v24 = "no width or height to generate derived asset for %@";
      v25 = v23;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 12;
LABEL_24:
      _os_log_impl(&dword_19BF1F000, v25, v26, v24, buf, v27);
    }
  }

  else
  {
    v22 = PLMyPhotoStreamGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = path;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "derivedAssetForMasterAsset for master image at path %@", buf, 0xCu);
    }

    if (v8 == 1)
    {
      if (dCopy)
      {
        v71 = [PLPhotoSharingHelper temporaryThumbnailPathForCollectionGUID:?];
        goto LABEL_29;
      }

      gUID = [assetCopy GUID];
      v71 = [PLPhotoSharingHelper temporaryThumbnailPathForCollectionGUID:gUID];
LABEL_28:

LABEL_29:
      if (v71)
      {
        [defaultManager removeItemAtPath:v71 error:0];
        [PLPhotoSharingHelper derivedAssetSizeForMasterSizeWidth:v8 height:infoCopy derivativeType:v14 withSpecificationInfo:v17];
        v31 = v30;
        v33 = v32;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 0;
        if (v70)
        {
          v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];
          v35 = [MEMORY[0x1E695DFF8] fileURLWithPath:v71 isDirectory:0];
          v36 = [defaultManager copyItemAtURL:v34 toURL:v35 error:0];
          *(*&buf[8] + 24) = v36;

          if (*(*&buf[8] + 24) == 1)
          {
            if (*MEMORY[0x1E6994D48])
            {
              goto LABEL_42;
            }

            v37 = __CPLAssetsdOSLogDomain();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
LABEL_40:

              if (*(*&buf[8] + 24))
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            }

            *v83 = 0;
            v38 = "will use copy of original JPEG that's already within size";
            v39 = v37;
            v40 = OS_LOG_TYPE_DEBUG;
LABEL_39:
            _os_log_impl(&dword_19BF1F000, v39, v40, v38, v83, 2u);
            goto LABEL_40;
          }

          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v37 = __CPLAssetsdOSLogDomain();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            *v83 = 0;
            v38 = "failed to make copy of original JPEG that's already within size";
            v39 = v37;
            v40 = OS_LOG_TYPE_ERROR;
            goto LABEL_39;
          }
        }

LABEL_41:
        v41 = dispatch_semaphore_create(0);
        v42 = MEMORY[0x1E6994D60];
        v43 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];
        v44 = [MEMORY[0x1E695DFF8] fileURLWithPath:v71 isDirectory:0];
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __111__PLPhotoDerivativeUtilities_generateDerivativeForMSAsset_derivativeType_withSpecificationInfo_collectionGUID___block_invoke;
        v78[3] = &unk_1E7571B80;
        v79 = path;
        v80 = v71;
        v82 = buf;
        v45 = v41;
        v81 = v45;
        [v42 resizeImageAtURL:v43 destinationURL:v44 maximumPixelCount:(v31 * v33) bakeInOrientation:1 colorOutput:1 reason:@"Photo Stream full size image fallback generation" completionHandler:v78];

        dispatch_semaphore_wait(v45, 0xFFFFFFFFFFFFFFFFLL);
        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          v48 = 0;
LABEL_79:
          v23 = v48;
          _Block_object_dispose(buf, 8);

          v28 = v23;
          goto LABEL_80;
        }

LABEL_42:
        v77 = 0;
        v46 = [defaultManager attributesOfItemAtPath:v71 error:&v77];
        v67 = v77;
        if (!v46)
        {
          if (*MEMORY[0x1E6994D48])
          {
            v48 = 0;
LABEL_78:

            goto LABEL_79;
          }

          v58 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *v83 = 138412546;
            v84 = v71;
            v85 = 2112;
            v86 = v67;
            v47 = v58;
            _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "Couldn't read attributes for file %@ : %@", v83, 0x16u);
          }

          else
          {
            v47 = v58;
          }

          v48 = 0;
LABEL_74:

          if ((*MEMORY[0x1E6994D48] & 1) == 0)
          {
            v65 = __CPLAssetsdOSLogDomain();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              *v83 = 138412546;
              v84 = v71;
              v85 = 2112;
              v86 = v48;
              _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_DEBUG, "generated derived asset at path %@ : %@", v83, 0x16u);
            }
          }

          goto LABEL_78;
        }

        v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v46, "fileSize")}];
        v48 = objc_alloc_init(MEMORY[0x1E6997FA8]);
        fileHash = [assetCopy fileHash];
        [v48 setMasterAssetHash:fileHash];

        [v48 setPath:v71];
        identifier = type;
        if ((v70 & 1) == 0)
        {
          identifier = [v19 identifier];
        }

        [v48 setType:identifier];
        if ((v70 & 1) == 0)
        {
        }

        v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v51 setObject:v47 forKey:*MEMORY[0x1E6998070]];
        v52 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
        [v51 setObject:v52 forKey:v69];

        v53 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
        [v51 setObject:v53 forKey:v68];

        [v48 setMetadata:v51];
        if (!infoCopy)
        {
          if (v8)
          {
            [v48 setMediaAssetType:2];
            v59 = MEMORY[0x1E6998068];
          }

          else
          {
            [v48 setMediaAssetType:3];
            v59 = MEMORY[0x1E6998060];
          }

          [v51 setObject:*v59 forKey:*MEMORY[0x1E6998058]];
          goto LABEL_73;
        }

        v54 = *MEMORY[0x1E6998058];
        v55 = [infoCopy objectForKey:*MEMORY[0x1E6998058]];
        v56 = v55;
        if (!v55)
        {
LABEL_63:
          v60 = v48;
          v61 = *MEMORY[0x1E6998050];
          v62 = [infoCopy objectForKey:*MEMORY[0x1E6998050]];
          v63 = v62;
          if (!v62)
          {
LABEL_70:

            v48 = v60;
LABEL_73:

            goto LABEL_74;
          }

          if ([v62 intValue])
          {
            v64 = 2;
          }

          else
          {
            if (([v63 intValue] & 2) == 0)
            {
LABEL_69:
              [v51 setObject:v63 forKey:v61];
              goto LABEL_70;
            }

            v64 = 3;
          }

          [v60 setMediaAssetType:v64];
          goto LABEL_69;
        }

        if ([v55 isEqualToString:*MEMORY[0x1E6998068]])
        {
          v57 = 2;
        }

        else
        {
          if (![v56 isEqualToString:*MEMORY[0x1E6998060]])
          {
LABEL_62:
            [v51 setObject:v56 forKey:v54];
            goto LABEL_63;
          }

          v57 = 3;
        }

        [v48 setMediaAssetType:v57];
        goto LABEL_62;
      }

LABEL_35:
      v28 = 0;
      goto LABEL_81;
    }

    if (!v8)
    {
      if (dCopy)
      {
        v71 = [PLPhotoSharingHelper temporaryDerivativePathForCollectionGUID:dCopy uti:type];
        goto LABEL_29;
      }

      gUID = [assetCopy GUID];
      v71 = [PLPhotoSharingHelper temporaryDerivativePathForCollectionGUID:gUID uti:type];
      goto LABEL_28;
    }

    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_35;
    }

    v23 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      v24 = "ERROR, unknown PLDerivativeType %i";
      v25 = v23;
      v26 = OS_LOG_TYPE_DEFAULT;
      v27 = 8;
      goto LABEL_24;
    }
  }

  v28 = 0;
LABEL_80:

LABEL_81:

  return v28;
}

void __111__PLPhotoDerivativeUtilities_generateDerivativeForMSAsset_derivativeType_withSpecificationInfo_collectionGUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v5 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        v8 = 138412802;
        v9 = v6;
        v10 = 2112;
        v11 = v7;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "failed to resize %@ to %@: %@", &v8, 0x20u);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

@end