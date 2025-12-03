@interface PXPhotosExportConfiguration
+ (id)configurationWithQueryItems:(id)items possibleContentType:(id)type;
+ (id)containerConfigurationWithShouldIncludeLocation:(BOOL)location;
- (id)debugDescription;
- (id)variantToRequest:(id)request asset:(id)asset;
@end

@implementation PXPhotosExportConfiguration

+ (id)configurationWithQueryItems:(id)items possibleContentType:(id)type
{
  selfCopy = self;
  v51 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  typeCopy = type;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [itemsCopy countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v6)
  {
    bOOLValue = 0;
    v42 = 0;
    v43 = 0;
    integerValue2 = 0;
    integerValue = 0;
    goto LABEL_26;
  }

  v7 = v6;
  bOOLValue = 0;
  v42 = 0;
  v43 = 0;
  integerValue2 = 0;
  integerValue = 0;
  v9 = *v47;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v47 != v9)
      {
        objc_enumerationMutation(itemsCopy);
      }

      v11 = *(*(&v46 + 1) + 8 * i);
      name = [v11 name];
      v13 = +[PXPhotosFileProviderRegister urlQueryItemItemTypeKey];
      v14 = [name isEqualToString:v13];

      if (v14)
      {
        value = [v11 value];
        integerValue = [value integerValue];
      }

      else
      {
        name2 = [v11 name];
        v17 = +[PXPhotosFileProviderRegister urlQueryItemClientEncodingPolicyKey];
        v18 = [name2 isEqualToString:v17];

        if (v18)
        {
          value = [v11 value];
          integerValue2 = [value integerValue];
        }

        else
        {
          name3 = [v11 name];
          v20 = +[PXPhotosFileProviderRegister urlQueryItemIncludeLocationKey];
          v21 = [name3 isEqualToString:v20];

          if (v21)
          {
            value = [v11 value];
            bOOLValue = [value BOOLValue];
          }

          else
          {
            name4 = [v11 name];
            v23 = +[PXPhotosFileProviderRegister urlQueryItemIncludeCaptionKey];
            v24 = [name4 isEqualToString:v23];

            if (v24)
            {
              value = [v11 value];
              BYTE4(v42) = [value BOOLValue];
            }

            else
            {
              name5 = [v11 name];
              v26 = +[PXPhotosFileProviderRegister urlQueryItemDownscalingTargetDimensionKey];
              v27 = [name5 isEqualToString:v26];

              if (v27)
              {
                value = [v11 value];
                if ([value integerValue] < 1)
                {
                  v30 = 0;
                  value2 = v43;
                }

                else
                {
                  v28 = MEMORY[0x1E696AD98];
                  value2 = [v11 value];
                  v30 = [v28 numberWithInteger:{objc_msgSend(value2, "integerValue")}];
                }

                v43 = v30;
              }

              else
              {
                name6 = [v11 name];
                v32 = +[PXPhotosFileProviderRegister urlQueryItemVideoPresetKey];
                v33 = [name6 isEqualToString:v32];

                if (!v33)
                {
                  continue;
                }

                value = [v11 value];
                LOBYTE(v42) = [value integerValue] == 1;
              }
            }
          }
        }
      }
    }

    v7 = [itemsCopy countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v7);
LABEL_26:
  v34 = objc_alloc_init(selfCopy);
  v34[2] = integerValue;
  v34[3] = integerValue2;
  *(v34 + 8) = bOOLValue & 1;
  *(v34 + 9) = BYTE4(v42) & 1;
  v35 = v34[4];
  v34[4] = v43;
  v36 = v43;

  *(v34 + 10) = v42 & 1;
  v37 = v34[5];
  v34[5] = typeCopy;
  v38 = typeCopy;

  return v34;
}

+ (id)containerConfigurationWithShouldIncludeLocation:(BOOL)location
{
  v4 = objc_alloc_init(self);
  v4[2] = 4;
  *(v4 + 8) = location;

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  itemType = [(PXPhotosExportConfiguration *)self itemType];
  encodingPolicy = [(PXPhotosExportConfiguration *)self encodingPolicy];
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
  downscalingTargetDimension = [(PXPhotosExportConfiguration *)self downscalingTargetDimension];
  v11 = [v3 stringWithFormat:@"ItemType: %ld, EncodingPolicy: %ld, IncludeLocation: %@, IncludeCaption: %@, DownscalingTargetDimension: %@", itemType, encodingPolicy, v7, v9, downscalingTargetDimension];

  return v11;
}

- (id)variantToRequest:(id)request asset:(id)asset
{
  requestCopy = request;
  assetCopy = asset;
  PXPhotosFileProviderVariantsSortedByClientEncodingPolicy([(PXPhotosExportConfiguration *)self encodingPolicy], assetCopy);
  objc_claimAutoreleasedReturnValue();

  requestCopy;
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