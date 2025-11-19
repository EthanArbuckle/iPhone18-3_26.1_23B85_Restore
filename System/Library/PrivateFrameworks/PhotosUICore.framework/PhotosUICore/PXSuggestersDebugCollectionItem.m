@interface PXSuggestersDebugCollectionItem
- (PXSuggestersDebugCollectionItem)initWithSuggesterInfo:(id)a3;
@end

@implementation PXSuggestersDebugCollectionItem

- (PXSuggestersDebugCollectionItem)initWithSuggesterInfo:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PXSuggestersDebugCollectionItem;
  v6 = [(PXSuggestersDebugCollectionItem *)&v10 init];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"uuid"];
    name = v6->_name;
    v6->_name = v7;

    objc_storeStrong(&v6->_info, a3);
  }

  return v6;
}

@end