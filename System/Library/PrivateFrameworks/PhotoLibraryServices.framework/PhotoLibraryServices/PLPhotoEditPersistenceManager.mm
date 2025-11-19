@interface PLPhotoEditPersistenceManager
+ (BOOL)validateAdjustmentData:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5 error:(id *)a6;
+ (unsigned)renderTypeForAdjustmentData:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5;
- (id)dataFromCompositionController:(id)a3 outFormatIdentifier:(id *)a4 outFormatVersion:(id *)a5 exportProperties:(id)a6;
- (id)debugDescriptionForAdjustmentData:(id)a3;
- (id)debugDescriptionForPhotoEditData:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5;
- (id)loadCompositionFrom:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5 sidecarData:(id)a6 error:(id *)a7;
- (id)loadPhotoEditData:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5 importProperties:(id)a6 error:(id *)a7;
- (void)loadMasterDimensionsFromPhotoEditData:(id)a3 outMasterWidth:(int64_t *)a4 outMasterHeight:(int64_t *)a5;
@end

@implementation PLPhotoEditPersistenceManager

- (id)dataFromCompositionController:(id)a3 outFormatIdentifier:(id *)a4 outFormatVersion:(id *)a5 exportProperties:(id)a6
{
  v36[4] = *MEMORY[0x1E69E9840];
  v27 = a3;
  v8 = a6;
  v28 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 infoDictionary];
  v11 = [v10 objectForKey:@"CFBundleVersion"];
  v12 = v11;
  v13 = &stru_1F0F06D80;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v35[0] = @"platform";
  v35[1] = @"buildNumber";
  v36[0] = @"iOS";
  v36[1] = v28;
  v35[2] = @"appVersion";
  v35[3] = @"schemaRevision";
  v36[2] = v14;
  v36[3] = &unk_1F0FBD7E0;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];
  v16 = [PLCompositionHelper validatedCompositionCopyFor:v27];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v17 = getPICompositionSerializerMetadataClass_softClass;
  v34 = getPICompositionSerializerMetadataClass_softClass;
  if (!getPICompositionSerializerMetadataClass_softClass)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __getPICompositionSerializerMetadataClass_block_invoke;
    v30[3] = &unk_1E7577EA0;
    v30[4] = &v31;
    __getPICompositionSerializerMetadataClass_block_invoke(v30);
    v17 = v32[3];
  }

  v18 = v17;
  _Block_object_dispose(&v31, 8);
  v19 = objc_alloc_init(v17);
  [v19 setWidth:{objc_msgSend(v8, "imageWidth")}];
  [v19 setHeight:{objc_msgSend(v8, "imageHeight")}];
  [v19 setOrientation:{objc_msgSend(v8, "baseEXIFOrientation")}];
  v29 = 0;
  v20 = [getPICompositionSerializerClass() serializeComposition:v16 versionInfo:v15 serializerMetadata:v19 error:&v29];
  v21 = v29;
  v22 = [v20 data];
  if (a4)
  {
    v23 = [v20 formatIdentifier];
    *a4 = [v23 copy];
  }

  if (a5)
  {
    v24 = [v20 formatVersion];
    *a5 = [v24 copy];
  }

  return v22;
}

- (id)debugDescriptionForPhotoEditData:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([getPICompositionSerializerClass() canInterpretDataWithFormatIdentifier:v8 formatVersion:v9])
  {
    v22 = 0;
    v10 = [getPICompositionSerializerClass() deserializeCompositionFromData:v7 formatIdentifier:v8 formatVersion:v9 error:&v22];
    v11 = v10;
    v12 = v22;
    if (v10)
    {
      v25 = @"composition";
      v26[0] = v10;
      v13 = MEMORY[0x1E695DF20];
      v14 = v22;
      v15 = [v13 dictionaryWithObjects:v26 forKeys:&v25 count:1];
    }

    else
    {
      v16 = v22;
      v21 = 0;
      v17 = [getPICompositionSerializerClass() deserializeDictionaryFromData:v7 error:&v21];
      v23[0] = @"error_specific";
      v18 = v21;
      v19 = [v16 debugDescription];
      v24[0] = v19;
      v24[1] = @"Failed to deserialize composition\n";
      v23[1] = @"error";
      v23[2] = @"envelopeDictionary";
      v24[2] = v17;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)debugDescriptionForAdjustmentData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E69C0EB0] decompressData:v3 error:&v9];
    v5 = v9;
    if (v4)
    {
      v8 = 0;
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v8];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadMasterDimensionsFromPhotoEditData:(id)a3 outMasterWidth:(int64_t *)a4 outMasterHeight:(int64_t *)a5
{
  *a4 = 0;
  *a5 = 0;
  v7 = a3;
  v14 = 0;
  v8 = [getPICompositionSerializerClass() deserializeDictionaryFromData:v7 error:&v14];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"metadata"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"masterWidth"];
      v12 = [v10 objectForKeyedSubscript:@"masterHeight"];
      v13 = v12;
      if (v11 && v12)
      {
        *a4 = [v11 integerValue];
        *a5 = [v13 integerValue];
      }
    }
  }
}

- (id)loadPhotoEditData:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5 importProperties:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = [(PLPhotoEditPersistenceManager *)self loadCompositionFrom:a3 formatIdentifier:a4 formatVersion:a5 sidecarData:0 error:a7];
  if (v13)
  {
    v14 = [getPIPhotoEditHelperClass_71962() newCompositionControllerWithComposition:v13];
    [v14 setImageOrientation:{objc_msgSend(v12, "baseEXIFOrientation")}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)loadCompositionFrom:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5 sidecarData:(id)a6 error:(id *)a7
{
  v84[1] = *MEMORY[0x1E69E9840];
  v62 = a3;
  v13 = a4;
  v14 = a5;
  v60 = a6;
  v61 = a7;
  if (!a7)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"PLPhotoEditPersistenceManager.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v63 = v14;
  v64 = v13;
  if (([getPIPhotoEditHelperClass_71962() canInterpretDataWithFormatIdentifier:v13 formatVersion:v14] & 1) == 0)
  {
    v19 = MEMORY[0x1E696ABC0];
    v83 = *MEMORY[0x1E696A588];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot interpret adjustment data: %@ %@", v13, v14];
    v84[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    *a7 = [v19 errorWithDomain:@"PLPhotoEditPersistenceManagerDomain" code:0 userInfo:v21];

    v22 = 0;
    goto LABEL_36;
  }

  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v15 = getPIPhotoEditFormatIdentifierVideoSloMoSymbolLoc_ptr;
  v76 = getPIPhotoEditFormatIdentifierVideoSloMoSymbolLoc_ptr;
  if (!getPIPhotoEditFormatIdentifierVideoSloMoSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPIPhotoEditFormatIdentifierVideoSloMoSymbolLoc_block_invoke;
    v78 = &unk_1E7577EA0;
    v79[0] = &v73;
    v16 = PhotoImagingLibrary_71901();
    v17 = dlsym(v16, "PIPhotoEditFormatIdentifierVideoSloMo");
    *(*(v79[0] + 8) + 24) = v17;
    getPIPhotoEditFormatIdentifierVideoSloMoSymbolLoc_ptr = *(*(v79[0] + 8) + 24);
    v15 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v15)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIPhotoEditFormatIdentifierVideoSloMo(void)"];
    [v55 handleFailureInFunction:v56 file:@"PLPhotoEditPersistenceManager.m" lineNumber:43 description:{@"%s", dlerror()}];

    goto LABEL_41;
  }

  v18 = *v15;
  if ([v13 isEqualToString:v18])
  {

LABEL_14:
    v27 = objc_opt_new();
    v59 = [MEMORY[0x1E69C0EB8] deserialize:v62 originator:*MEMORY[0x1E69C0E38] format:v13 formatVersion:v14 error:v61];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v28 = [v59 adjustmentStack];
    obj = [v28 adjustments];

    v29 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (!v29)
    {
      goto LABEL_34;
    }

    v30 = *v70;
    v31 = *MEMORY[0x1E69C0E88];
    v32 = *MEMORY[0x1E69C0EA8];
    v66 = *MEMORY[0x1E69C0E80];
    v67 = *MEMORY[0x1E69C0E78];
    v65 = *MEMORY[0x1E69C0EA0];
    while (1)
    {
      v33 = 0;
      do
      {
        if (*v70 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v69 + 1) + 8 * v33);
        v35 = [v34 identifier];
        v36 = [v35 isEqualToString:v31];

        if (v36)
        {
          v37 = objc_opt_new();
          [v37 setObject:@"SlowMotion" forKeyedSubscript:@"identifier"];
          v38 = [v34 settings];
          [v37 setObject:v38 forKeyedSubscript:@"settings"];

          [v37 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
          [v27 addObject:v37];
        }

        else
        {
          v39 = [v34 identifier];
          v40 = [v39 isEqualToString:v32];

          if (v40)
          {
            v37 = objc_opt_new();
            v41 = [v34 identifier];
            [v37 setObject:v41 forKeyedSubscript:@"identifier"];

            v42 = [v34 settings];
            [v37 setObject:v42 forKeyedSubscript:@"settings"];

            [v37 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
            [v27 addObject:v37];
          }

          else
          {
            v43 = [v34 identifier];
            v44 = [v43 isEqualToString:v67];

            if (!v44)
            {
              goto LABEL_29;
            }

            v45 = [v34 settings];
            v37 = [v45 objectForKeyedSubscript:v66];
            if (v37)
            {
            }

            else
            {
              v46 = [v34 settings];
              v37 = [v46 objectForKeyedSubscript:v65];

              if (!v37)
              {
                v37 = PLBackendGetLog();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v49 = [v34 identifier];
                  v50 = [v34 version];
                  v51 = [v34 settings];
                  *buf = 138413058;
                  *&buf[4] = v64;
                  *&buf[12] = 2112;
                  *&buf[14] = v49;
                  *&buf[22] = 2112;
                  v78 = v50;
                  LOWORD(v79[0]) = 2112;
                  *(v79 + 2) = v51;
                  _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "PosterFrame adjustment has unexpected format, will not migrate: %@, %@, %@, %@", buf, 0x2Au);
                }

                goto LABEL_28;
              }
            }

            v47 = objc_opt_new();
            [v47 setObject:@"VideoPosterFrame" forKeyedSubscript:@"identifier"];
            v80 = @"time";
            v81 = v37;
            v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
            [v47 setObject:v48 forKeyedSubscript:@"settings"];

            [v47 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
            [v27 addObject:v47];
          }
        }

LABEL_28:

LABEL_29:
        ++v33;
      }

      while (v29 != v33);
      v52 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
      v29 = v52;
      if (!v52)
      {
LABEL_34:

        v22 = [getPICompositionSerializerClass() deserializeCompositionFromAdjustments:v27 metadata:MEMORY[0x1E695E0F8] formatIdentifier:v64 formatVersion:v63 error:v61];

        goto LABEL_36;
      }
    }
  }

  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v23 = getPIPhotoEditFormatIdentifierVideoSymbolLoc_ptr;
  v76 = getPIPhotoEditFormatIdentifierVideoSymbolLoc_ptr;
  if (!getPIPhotoEditFormatIdentifierVideoSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPIPhotoEditFormatIdentifierVideoSymbolLoc_block_invoke;
    v78 = &unk_1E7577EA0;
    v79[0] = &v73;
    v24 = PhotoImagingLibrary_71901();
    v25 = dlsym(v24, "PIPhotoEditFormatIdentifierVideo");
    *(*(v79[0] + 8) + 24) = v25;
    getPIPhotoEditFormatIdentifierVideoSymbolLoc_ptr = *(*(v79[0] + 8) + 24);
    v23 = v74[3];
  }

  _Block_object_dispose(&v73, 8);
  if (!v23)
  {
    v57 = [MEMORY[0x1E696AAA8] currentHandler];
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIPhotoEditFormatIdentifierVideo(void)"];
    [v57 handleFailureInFunction:v58 file:@"PLPhotoEditPersistenceManager.m" lineNumber:45 description:{@"%s", dlerror()}];

LABEL_41:
    __break(1u);
  }

  v26 = [v13 isEqualToString:*v23];

  if (v26)
  {
    goto LABEL_14;
  }

  v22 = [getPICompositionSerializerClass() deserializeCompositionFromData:v62 formatIdentifier:v13 formatVersion:v14 sidecarData:v60 error:a7];
LABEL_36:

  return v22;
}

+ (unsigned)renderTypeForAdjustmentData:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PLPhotoEditPersistenceManager);
  v72 = 0;
  v11 = [(PLPhotoEditPersistenceManager *)v10 loadCompositionFrom:v7 formatIdentifier:v8 formatVersion:v9 sidecarData:0 error:&v72];
  v12 = v72;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"autoLoop"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"enabled"];
      v16 = [v15 BOOLValue];

      v17 = [v14 objectForKeyedSubscript:@"flavor"];
      v18 = v17;
      if (v16)
      {
        v19 = [v17 isEqualToString:@"AutoLoop"];
        if ([v18 isEqualToString:@"LongExposure"])
        {
          v19 |= 4u;
        }

        if ([v18 isEqualToString:@"Mirror"])
        {
          v20 = v19 | 8;
        }

        else
        {
          v20 = v19;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = [v11 objectForKeyedSubscript:@"depthEffect"];
    v61 = v21;
    if (v21)
    {
      v22 = [v21 objectForKeyedSubscript:@"enabled"];
      v23 = [v22 BOOLValue];

      if (v23)
      {
        v20 |= 2u;
      }
    }

    v24 = [v11 objectForKeyedSubscript:@"portraitVideo"];
    v60 = v24;
    if (v24)
    {
      v25 = [v24 objectForKeyedSubscript:@"enabled"];
      v26 = [v25 BOOLValue];

      if (v26)
      {
        v20 |= 2u;
      }
    }

    v27 = [v11 objectForKeyedSubscript:@"smartTone"];
    v28 = [v11 objectForKeyedSubscript:@"smartColor"];
    v29 = [v11 objectForKeyedSubscript:@"whiteBalance"];
    v66 = v8;
    v67 = v7;
    v64 = v10;
    v65 = v9;
    v62 = v14;
    v63 = v12;
    v56 = v29;
    v57 = v28;
    if (v27 || v28 || v29)
    {
      v30 = v28;
      v31 = v29;
      v32 = [v27 objectForKeyedSubscript:@"enabled"];
      v58 = [v32 BOOLValue];

      v33 = [v28 objectForKeyedSubscript:@"enabled"];
      LOBYTE(v32) = [v33 BOOLValue];

      v34 = [v31 objectForKeyedSubscript:@"enabled"];
      LOBYTE(v33) = [v34 BOOLValue];

      v35 = [v27 objectForKeyedSubscript:@"auto"];
      v36 = [v35 BOOLValue];

      v37 = [v30 objectForKeyedSubscript:@"auto"];
      LOBYTE(v30) = [v37 BOOLValue];

      v38 = [v31 objectForKeyedSubscript:@"auto"];
      LOBYTE(v37) = [v38 BOOLValue];

      v55 = (v58 ^ 1 | v36) & (v32 ^ 1 | v30) & (v33 ^ 1 | v37) ^ 1;
      if ((v58 ^ 1 | v36) & (v32 ^ 1 | v30) & (v33 ^ 1 | v37))
      {
        v20 |= 0x100u;
      }
    }

    else
    {
      v55 = 0;
    }

    v39 = [v11 objectForKeyedSubscript:@"cropStraighten"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 objectForKeyedSubscript:@"enabled"];
      v42 = [v41 BOOLValue];

      if (v42)
      {
        v20 |= 0x200u;
      }
    }

    v59 = v27;
    v43 = [v11 objectForKeyedSubscript:@"effect"];
    v44 = [v11 objectForKeyedSubscript:@"effect3D"];
    if (v43 | v44)
    {
      v45 = [v43 objectForKeyedSubscript:@"enabled"];
      v46 = [v45 BOOLValue];

      v47 = [v44 objectForKeyedSubscript:@"enabled"];
      LODWORD(v45) = [v47 BOOLValue];

      if ((v46 | v45))
      {
        v20 |= 0x400u;
      }
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v48 = [v11 contents];
    v49 = [v48 allKeys];

    v50 = [v49 countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v69;
      while (2)
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v69 != v52)
          {
            objc_enumerationMutation(v49);
          }

          if (![&unk_1F0FBFE50 containsObject:*(*(&v68 + 1) + 8 * i)])
          {

            goto LABEL_42;
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v68 objects:v73 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    if ((v55 & 1) == 0)
    {
      v20 |= 0x800u;
    }

LABEL_42:

    v8 = v66;
    v7 = v67;
    v10 = v64;
    v9 = v65;
    v12 = v63;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)validateAdjustmentData:(id)a3 formatIdentifier:(id)a4 formatVersion:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(PLPhotoEditPersistenceManager);
  v13 = [(PLPhotoEditPersistenceManager *)v12 loadCompositionFrom:v9 formatIdentifier:v10 formatVersion:v11 sidecarData:0 error:a6];
  if (v13)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v14 = getNUSourceClass_softClass;
    v24 = getNUSourceClass_softClass;
    if (!getNUSourceClass_softClass)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __getNUSourceClass_block_invoke;
      v20[3] = &unk_1E7577EA0;
      v20[4] = &v21;
      __getNUSourceClass_block_invoke(v20);
      v14 = v22[3];
    }

    v15 = v14;
    _Block_object_dispose(&v21, 8);
    v16 = objc_alloc_init(v14);
    [v16 setAssetIdentifier:@"validate"];
    [v13 setObject:v16 forKeyedSubscript:@"source"];
    v17 = [v13 schema];
    v18 = [v17 validateComposition:v13 error:a6];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end