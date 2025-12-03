@interface PXSuggestersDebugCollectionItem
- (PXSuggestersDebugCollectionItem)initWithSuggesterInfo:(id)info;
@end

@implementation PXSuggestersDebugCollectionItem

- (PXSuggestersDebugCollectionItem)initWithSuggesterInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = PXSuggestersDebugCollectionItem;
  v6 = [(PXSuggestersDebugCollectionItem *)&v10 init];
  if (v6)
  {
    v7 = [infoCopy objectForKeyedSubscript:@"uuid"];
    name = v6->_name;
    v6->_name = v7;

    objc_storeStrong(&v6->_info, info);
  }

  return v6;
}

@end