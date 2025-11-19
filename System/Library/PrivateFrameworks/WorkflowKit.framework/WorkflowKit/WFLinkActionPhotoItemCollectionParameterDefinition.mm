@interface WFLinkActionPhotoItemCollectionParameterDefinition
- (WFLinkActionPhotoItemCollectionParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)linkValueFromParameterState:(id)a3;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionPhotoItemCollectionParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (!v4)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [v5 objectIsMemberOfType:v4];

  if ((v6 & 1) == 0)
  {
    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(WFLinkActionParameterDefinition *)self valueType];
      v16 = 136315650;
      v17 = "[WFLinkActionPhotoItemCollectionParameterDefinition parameterStateFromLinkValue:]";
      v18 = 2114;
      v19 = v4;
      v20 = 2114;
      v21 = v13;
    }

    goto LABEL_12;
  }

  v7 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = 0;
  if (isKindOfClass)
  {
    v11 = [(WFVariableSubstitutableParameterState *)[WFPhotoItemCollectionParameterState alloc] initWithValue:v7];
  }

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v21 = v14;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v21];
    v19[2](v19, v20, 0);
  }

  else
  {

    v19[2](v19, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 value];

  if (v7)
  {
    v8 = [v6 value];
    v9 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedTitleForLinkValue:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 items];
    v5 = [v4 firstObject];

    if (v5)
    {
      v6 = [MEMORY[0x1E6996F50] sharedLibrary];
      v19 = 0;
      v7 = [v6 systemPhotoLibraryWithError:&v19];
      v8 = v19;

      if (v7)
      {
        v9 = [v7 librarySpecificFetchOptions];
        v20 = 0;
        v21 = &v20;
        v22 = 0x2050000000;
        v10 = getPHAssetCollectionClass_softClass;
        v23 = getPHAssetCollectionClass_softClass;
        if (!getPHAssetCollectionClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getPHAssetCollectionClass_block_invoke;
          v26 = &unk_1E837FAC0;
          v27 = &v20;
          __getPHAssetCollectionClass_block_invoke(buf);
          v10 = v21[3];
        }

        v11 = v10;
        _Block_object_dispose(&v20, 8);
        v12 = [v5 identifier];
        v24 = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
        v14 = [v10 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v9];
        v15 = [v14 firstObject];

        v16 = [v15 localizedTitle];
      }

      else
      {
        v9 = getWFGeneralLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[WFLinkActionPhotoItemCollectionParameterDefinition localizedTitleForLinkValue:]";
          *&buf[12] = 2112;
          *&buf[14] = v8;
          _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Unable to get library: %@", buf, 0x16u);
        }

        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {

    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)parameterDefinitionDictionary
{
  v3 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC608] defaultValue:1];
  v4 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC600] ofClass:objc_opt_class()];
  v5 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5F8] ofClass:objc_opt_class()];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  [v6 setValue:v7 forKey:@"PhotoItemCollectionPickerSelectionLimit"];

  [v6 setValue:v4 forKey:@"PhotoItemCollectionPickerMode"];
  [v6 setValue:v5 forKey:@"PhotoItemCollectionPickerFilter"];
  v11.receiver = self;
  v11.super_class = WFLinkActionPhotoItemCollectionParameterDefinition;
  v8 = [(WFLinkActionParameterDefinition *)&v11 parameterDefinitionDictionary];
  v9 = [v8 definitionByAddingEntriesInDictionary:v6];

  return v9;
}

- (WFLinkActionPhotoItemCollectionParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC720];
  v5 = a3;
  v6 = [v4 photoItemCollectionValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionPhotoItemCollectionParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end