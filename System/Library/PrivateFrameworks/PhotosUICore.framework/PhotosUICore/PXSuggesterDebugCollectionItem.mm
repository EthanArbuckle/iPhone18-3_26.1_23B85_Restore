@interface PXSuggesterDebugCollectionItem
- (BOOL)isInvalid;
- (PXSuggesterDebugCollectionItem)initWithSuggestion:(id)suggestion suggestionInfo:(id)info;
@end

@implementation PXSuggesterDebugCollectionItem

- (BOOL)isInvalid
{
  v2 = [(NSDictionary *)self->_info objectForKeyedSubscript:@"isInvalid"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (PXSuggesterDebugCollectionItem)initWithSuggestion:(id)suggestion suggestionInfo:(id)info
{
  suggestionCopy = suggestion;
  infoCopy = info;
  v40.receiver = self;
  v40.super_class = PXSuggesterDebugCollectionItem;
  v9 = [(PXSuggesterDebugCollectionItem *)&v40 init];
  if (v9)
  {
    localizedTitle = [suggestionCopy localizedTitle];
    v11 = [localizedTitle stringByReplacingOccurrencesOfString:@"\\n" withString:@" "];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [infoCopy objectForKeyedSubscript:@"keyAssetUUID"];
    }

    name = v9->_name;
    v9->_name = v13;

    localizedSubtitle = [suggestionCopy localizedSubtitle];
    v16 = [localizedSubtitle stringByReplacingOccurrencesOfString:@"\\n" withString:@" "];
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
    v24 = [infoCopy objectForKeyedSubscript:@"keyAssetCreationDate"];
    v25 = [v23 localizedStringFromDate:v24 dateStyle:1 timeStyle:2];
    v26 = [v22 stringByAppendingString:v25];
    v27 = *p_description;
    *p_description = v26;

    v28 = [infoCopy objectForKeyedSubscript:@"reasons"];
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

    objc_storeStrong(&v9->_suggestion, suggestion);
    startDate = [suggestionCopy startDate];
    v36 = startDate;
    if (startDate)
    {
      v37 = startDate;
    }

    else
    {
      v37 = [infoCopy objectForKeyedSubscript:@"universalStartDate"];
    }

    date = v9->_date;
    v9->_date = v37;

    objc_storeStrong(&v9->_info, info);
  }

  return v9;
}

@end