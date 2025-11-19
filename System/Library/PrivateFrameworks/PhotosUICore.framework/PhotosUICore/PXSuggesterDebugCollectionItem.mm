@interface PXSuggesterDebugCollectionItem
- (BOOL)isInvalid;
- (PXSuggesterDebugCollectionItem)initWithSuggestion:(id)a3 suggestionInfo:(id)a4;
@end

@implementation PXSuggesterDebugCollectionItem

- (BOOL)isInvalid
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"isInvalid"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (PXSuggesterDebugCollectionItem)initWithSuggestion:(id)a3 suggestionInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40.receiver = self;
  v40.super_class = PXSuggesterDebugCollectionItem;
  v9 = [(PXSuggesterDebugCollectionItem *)&v40 init];
  if (v9)
  {
    v10 = [v7 localizedTitle];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"\\n" withString:@" "];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v8 objectForKeyedSubscript:@"keyAssetUUID"];
    }

    name = v9->_name;
    v9->_name = v13;

    v15 = [v7 localizedSubtitle];
    v16 = [v15 stringByReplacingOccurrencesOfString:@"\\n" withString:@" "];
    p_description = &v9->_description;
    description = v9->_description;
    v9->_description = v16;

    v19 = [(NSString *)v9->_description stringByAppendingString:@", "];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_1F1741150;
    }

    objc_storeStrong(&v9->_description, v21);

    v22 = *p_description;
    v23 = MEMORY[0x1E696AB78];
    v24 = [v8 objectForKeyedSubscript:@"keyAssetCreationDate"];
    v25 = [v23 localizedStringFromDate:v24 dateStyle:1 timeStyle:2];
    v26 = [v22 stringByAppendingString:v25];
    v27 = *p_description;
    *p_description = v26;

    v28 = [v8 objectForKeyedSubscript:@"reasons"];
    if ([v28 count])
    {
      v29 = [*p_description stringByAppendingString:{@", "}];
      v30 = *p_description;
      *p_description = v29;

      v31 = *p_description;
      v32 = [v28 componentsJoinedByString:{@", "}];
      v33 = [v31 stringByAppendingString:v32];
      v34 = *p_description;
      *p_description = v33;
    }

    objc_storeStrong(&v9->_suggestion, a3);
    v35 = [v7 startDate];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = [v8 objectForKeyedSubscript:@"universalStartDate"];
    }

    date = v9->_date;
    v9->_date = v37;

    objc_storeStrong(&v9->_info, a4);
  }

  return v9;
}

@end