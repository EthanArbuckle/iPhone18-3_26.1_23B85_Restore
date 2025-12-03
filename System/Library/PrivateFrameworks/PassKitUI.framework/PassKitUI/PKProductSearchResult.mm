@interface PKProductSearchResult
- (PKProductSearchResult)initWithListItem:(id)item searchDistance:(double)distance;
@end

@implementation PKProductSearchResult

- (PKProductSearchResult)initWithListItem:(id)item searchDistance:(double)distance
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = PKProductSearchResult;
  v8 = [(PKProductSearchResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_listItem, item);
    v9->_searchDistance = distance;
  }

  return v9;
}

@end