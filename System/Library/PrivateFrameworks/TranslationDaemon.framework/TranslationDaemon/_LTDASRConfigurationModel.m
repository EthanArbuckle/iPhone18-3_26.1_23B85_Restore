@interface _LTDASRConfigurationModel
- (_LTDASRConfigurationModel)initWithDictionary:(id)a3;
- (id)_defaultAssetType;
- (id)_taskHintMap;
- (id)assetTypeForTaskHint:(int64_t)a3 localeIdentifier:(id)a4;
- (id)assetTypesForLocaleIdentifier:(id)a3;
- (id)supportedLocaleIdentifiersForTaskHint:(int64_t)a3;
@end

@implementation _LTDASRConfigurationModel

- (_LTDASRConfigurationModel)initWithDictionary:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _LTDASRConfigurationModel;
  v6 = [(_LTDASRConfigurationModel *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_root, a3);
    v8 = [(NSDictionary *)v7->_root objectForKeyedSubscript:@"_all"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v8 lt_ensureElementType:objc_opt_class()];
      v10 = MEMORY[0x277CBEBF8];
      if (v9)
      {
        v10 = v8;
      }
    }

    else
    {

      v8 = 0;
      v10 = MEMORY[0x277CBEBF8];
    }

    v11 = v10;

    localeIdentifiers = v7->_localeIdentifiers;
    v7->_localeIdentifiers = v11;

    v13 = v7;
  }

  return v7;
}

- (id)_defaultAssetType
{
  v2 = [(NSDictionary *)self->_root objectForKeyedSubscript:@"DefaultAssetType"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)_taskHintMap
{
  v2 = [(NSDictionary *)self->_root objectForKeyedSubscript:@"TaskHint"];
  v3 = objc_opt_class();
  v4 = v2;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = [v4 lt_ensureTypesForKeys:v3 values:0], v6 = v4, (v5 & 1) == 0))
  {

    v6 = 0;
  }

  return v6;
}

- (id)assetTypesForLocaleIdentifier:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [a3 lt_localeIdentifier];
  v5 = MEMORY[0x277CBEB58];
  v6 = [(_LTDASRConfigurationModel *)self _defaultAssetType];
  v26 = [v5 setWithObject:v6];

  v7 = [(_LTDASRConfigurationModel *)self _taskHintMap];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        v15 = [v14 objectForKeyedSubscript:@"SupportedLocales"];

        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
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

        v17 = v16;

        v18 = [v17 containsObject:v4];
        if (v18)
        {
          v19 = [v7 objectForKeyedSubscript:v13];
          v20 = [v19 objectForKeyedSubscript:@"AssetType"];

          if (v20)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          [v26 addObject:v22];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v23 = [v26 allObjects];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)assetTypeForTaskHint:(int64_t)a3 localeIdentifier:(id)a4
{
  v6 = [a4 lt_localeIdentifier];
  v7 = _LTTranslationTaskHintString();
  v8 = [(_LTDASRConfigurationModel *)self _taskHintMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [(_LTDASRConfigurationModel *)self supportedLocaleIdentifiersForTaskHint:a3];
  if ([v12 containsObject:v6])
  {
    v13 = [v11 objectForKeyedSubscript:@"AssetType"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else if ((a3 - 9) >= 2)
  {
    v15 = [(_LTDASRConfigurationModel *)self _defaultAssetType];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)supportedLocaleIdentifiersForTaskHint:(int64_t)a3
{
  if ((a3 - 9) > 1)
  {
    v13 = self->_localeIdentifiers;
  }

  else
  {
    v4 = _LTTranslationTaskHintString();
    v5 = [(_LTDASRConfigurationModel *)self _taskHintMap];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = objc_opt_class();
    v8 = v6;
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v9 = [v8 lt_ensureTypesForKeys:v7 values:0], v10 = v8, (v9 & 1) == 0))
    {

      v10 = 0;
    }

    v11 = [v10 objectForKeyedSubscript:@"SupportedLocales"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v11 lt_ensureElementType:objc_opt_class()])
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {

      v11 = 0;
      v12 = 0;
    }

    v13 = v12;
  }

  return v13;
}

@end