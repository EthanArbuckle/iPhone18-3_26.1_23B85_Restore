@interface PXExistingSuggestionsDebugCollectionItem
- (PXExistingSuggestionsDebugCollectionItem)initWithSuggestion:(id)a3;
@end

@implementation PXExistingSuggestionsDebugCollectionItem

- (PXExistingSuggestionsDebugCollectionItem)initWithSuggestion:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = PXExistingSuggestionsDebugCollectionItem;
  v6 = [(PXExistingSuggestionsDebugCollectionItem *)&v28 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v5 options:0];
    v8 = [v7 firstObject];

    v9 = [v5 localizedTitle];
    v10 = [v9 stringByReplacingOccurrencesOfString:@"\\n" withString:@" "];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v8 uuid];
    }

    name = v6->_name;
    v6->_name = v12;

    v14 = [v5 localizedSubtitle];
    v15 = [v14 stringByReplacingOccurrencesOfString:@"\\n" withString:@" "];
    p_description = &v6->_description;
    description = v6->_description;
    v6->_description = v15;

    v18 = [(NSString *)v6->_description stringByAppendingString:@", "];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1F1741150;
    }

    objc_storeStrong(&v6->_description, v20);

    v21 = *p_description;
    v22 = MEMORY[0x1E696AB78];
    v23 = [v8 creationDate];
    v24 = [v22 localizedStringFromDate:v23 dateStyle:1 timeStyle:2];
    v25 = [v21 stringByAppendingString:v24];
    v26 = *p_description;
    *p_description = v25;

    objc_storeStrong(&v6->_suggestion, a3);
  }

  return v6;
}

@end