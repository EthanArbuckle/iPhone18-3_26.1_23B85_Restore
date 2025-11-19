@interface PKProductSearchResult
- (PKProductSearchResult)initWithListItem:(id)a3 searchDistance:(double)a4;
@end

@implementation PKProductSearchResult

- (PKProductSearchResult)initWithListItem:(id)a3 searchDistance:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKProductSearchResult;
  v8 = [(PKProductSearchResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_listItem, a3);
    v9->_searchDistance = a4;
  }

  return v9;
}

@end