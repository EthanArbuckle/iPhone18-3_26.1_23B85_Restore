@interface PXPhotosExportConfiguration
+ (id)configurationWithQueryItems:(id)a3 possibleContentType:(id)a4;
+ (id)containerConfigurationWithShouldIncludeLocation:(BOOL)a3;
- (id)debugDescription;
- (id)variantToRequest:(id)a3 asset:(id)a4;
@end

@implementation PXPhotosExportConfiguration

+ (id)configurationWithQueryItems:(id)a3 possibleContentType:(id)a4
{
  v40 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v41 = a4;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v6)
  {
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v45 = 0;
    v8 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v8 = 0;
  v9 = *v47;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v47 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v46 + 1) + 8 * i);
      v12 = [v11 name];
      v13 = +[PXPhotosFileProviderRegister urlQueryItemItemTypeKey];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        v15 = [v11 value];
        v8 = [v15 integerValue];
      }

      else
      {
        v16 = [v11 name];
        v17 = +[PXPhotosFileProviderRegister urlQueryItemClientEncodingPolicyKey];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          v15 = [v11 value];
          v45 = [v15 integerValue];
        }

        else
        {
          v19 = [v11 name];
          v20 = +[PXPhotosFileProviderRegister urlQueryItemIncludeLocationKey];
          v21 = [v19 isEqualToString:v20];

          if (v21)
          {
            v15 = [v11 value];
            v44 = [v15 BOOLValue];
          }

          else
          {
            v22 = [v11 name];
            v23 = +[PXPhotosFileProviderRegister urlQueryItemIncludeCaptionKey];
            v24 = [v22 isEqualToString:v23];

            if (v24)
            {
              v15 = [v11 value];
              BYTE4(v42) = [v15 BOOLValue];
            }

            else
            {
              v25 = [v11 name];
              v26 = +[PXPhotosFileProviderRegister urlQueryItemDownscalingTargetDimensionKey];
              v27 = [v25 isEqualToString:v26];

              if (v27)
              {
                v15 = [v11 value];
                if ([v15 integerValue] < 1)
                {
                  v30 = 0;
                  v29 = v43;
                }

                else
                {
                  v28 = MEMORY[0x1E696AD98];
                  v29 = [v11 value];
                  v30 = [v28 numberWithInteger:{objc_msgSend(v29, "integerValue")}];
                }

                v43 = v30;
              }

              else
              {
                v31 = [v11 name];
                v32 = +[PXPhotosFileProviderRegister urlQueryItemVideoPresetKey];
                v33 = [v31 isEqualToString:v32];

                if (!v33)
                {
                  continue;
                }

                v15 = [v11 value];
                LOBYTE(v42) = [v15 integerValue] == 1;
              }
            }
          }
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v7);
LABEL_26:
  v34 = objc_alloc_init(v40);
  v34[2] = v8;
  v34[3] = v45;
  *(v34 + 8) = v44 & 1;
  *(v34 + 9) = BYTE4(v42) & 1;
  v35 = v34[4];
  v34[4] = v43;
  v36 = v43;

  *(v34 + 10) = v42 & 1;
  v37 = v34[5];
  v34[5] = v41;
  v38 = v41;

  return v34;
}

+ (id)containerConfigurationWithShouldIncludeLocation:(BOOL)a3
{
  v4 = objc_alloc_init(a1);
  v4[2] = 4;
  *(v4 + 8) = a3;

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXPhotosExportConfiguration *)self itemType];
  v5 = [(PXPhotosExportConfiguration *)self encodingPolicy];
  if ([(PXPhotosExportConfiguration *)self shouldIncludeLocation])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  if ([(PXPhotosExportConfiguration *)self shouldIncludeCaption])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  v10 = [(PXPhotosExportConfiguration *)self downscalingTargetDimension];
  v11 = [v3 stringWithFormat:@"ItemType: %ld, EncodingPolicy: %ld, IncludeLocation: %@, IncludeCaption: %@, DownscalingTargetDimension: %@", v4, v5, v7, v9, v10];

  return v11;
}

- (id)variantToRequest:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  PXPhotosFileProviderVariantsSortedByClientEncodingPolicy([(PXPhotosExportConfiguration *)self encodingPolicy], v7);
  objc_claimAutoreleasedReturnValue();

  v6;
  PXFind();
}

uint64_t __54__PXPhotosExportConfiguration_variantToRequest_asset___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v3)
  {
    v4 = [*(a1 + 40) possibleContentType];
    v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
    v6 = [v4 conformsToType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __54__PXPhotosExportConfiguration_variantToRequest_asset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 != 0;

  return v3;
}

@end