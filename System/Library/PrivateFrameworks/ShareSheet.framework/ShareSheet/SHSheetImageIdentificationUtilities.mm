@interface SHSheetImageIdentificationUtilities
+ (BOOL)isImageAnalysisFeatureEnabled;
+ (id)personIdResultsFromImage:(id)a3;
@end

@implementation SHSheetImageIdentificationUtilities

+ (BOOL)isImageAnalysisFeatureEnabled
{
  if (_os_feature_enabled_impl() && (_ShareSheetImageAnalysisAllowed() & 1) != 0)
  {
    return 1;
  }

  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Feature: PeopleIntelligence is unsupported. No Identification will be performed ", v4, 2u);
  }

  return 0;
}

+ (id)personIdResultsFromImage:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getMADPersonIdentificationRequestClass());
  [v5 setMaximumFaceCount:4];
  v33 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  if (v4)
  {
    v7 = MEMORY[0x1E696ACD0];
    getMADPersonIdentificationRequestClass();
    v8 = [v7 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
    if (v8 || ![a1 isImageAnalysisFeatureEnabled])
    {
      v19 = v4;
    }

    else
    {
      v9 = share_sheet_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "Unable to unarchive MADRequest object. Using on-demand MAD SPI", &buf, 2u);
      }

      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v10 = getMADServiceClass_softClass;
      v32 = getMADServiceClass_softClass;
      if (!getMADServiceClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v35 = __getMADServiceClass_block_invoke;
        v36 = &unk_1E71F91F0;
        v37 = &v29;
        __getMADServiceClass_block_invoke(&buf);
        v10 = v30[3];
      }

      v11 = v10;
      _Block_object_dispose(&v29, 8);
      if (v10)
      {
        v12 = [v10 service];
        v13 = *MEMORY[0x1E6982D60];
        v28 = 0;
        [v12 performRequests:v6 onImageData:v4 withUniformTypeIdentifier:v13 andIdentifier:@"UIActivityViewControllerSharingMediaServiceAnalysis" error:&v28];
        v14 = v28;
        if (v14)
        {
          v15 = v14;
          v16 = share_sheet_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v15 localizedDescription];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v17;
            _os_log_impl(&dword_18B359000, v16, OS_LOG_TYPE_DEFAULT, "While processing suggestedImageData, encountered Error: %@", &buf, 0xCu);
          }

          v18 = 0;
        }

        else
        {
          v22 = [v6 firstObject];
          v23 = [v22 results];

          if ([v23 count])
          {
            v24 = MEMORY[0x1E696ACC8];
            v25 = [v6 firstObject];
            v18 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:0];

            v26 = share_sheet_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v23 count];
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v27;
              _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "Screenshot service: Image data processed, Result count: %ld", &buf, 0xCu);
            }
          }

          else
          {
            v18 = 0;
          }

          v15 = 0;
        }

        v21 = v18;

        v19 = v21;
      }

      else
      {
        v21 = share_sheet_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SHSheetImageIdentificationUtilities personIdResultsFromImage:v21];
        }

        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)personIdResultsFromImage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Encountered exception while trying to perform Media analysis of suggested Image Data : %@", &v2, 0xCu);
}

@end