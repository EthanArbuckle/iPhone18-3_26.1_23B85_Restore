@interface PXExistingSuggestionsDebugCollectionItem
- (PXExistingSuggestionsDebugCollectionItem)initWithSuggestion:(id)suggestion;
@end

@implementation PXExistingSuggestionsDebugCollectionItem

- (PXExistingSuggestionsDebugCollectionItem)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v28.receiver = self;
  v28.super_class = PXExistingSuggestionsDebugCollectionItem;
  v6 = [(PXExistingSuggestionsDebugCollectionItem *)&v28 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:suggestionCopy options:0];
    firstObject = [v7 firstObject];

    localizedTitle = [suggestionCopy localizedTitle];
    v10 = [localizedTitle stringByReplacingOccurrencesOfString:@"\\n" withString:@" "];
    v11 = v10;
    if (v10)
    {
      uuid = v10;
    }

    else
    {
      uuid = [firstObject uuid];
    }

    name = v6->_name;
    v6->_name = uuid;

    localizedSubtitle = [suggestionCopy localizedSubtitle];
    v15 = [localizedSubtitle stringByReplacingOccurrencesOfString:@"\\n" withString:@" "];
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
    creationDate = [firstObject creationDate];
    v24 = [v22 localizedStringFromDate:creationDate dateStyle:1 timeStyle:2];
    v25 = [v21 stringByAppendingString:v24];
    v26 = *p_description;
    *p_description = v25;

    objc_storeStrong(&v6->_suggestion, suggestion);
  }

  return v6;
}

@end