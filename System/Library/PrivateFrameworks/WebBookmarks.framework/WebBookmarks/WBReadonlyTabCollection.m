@interface WBReadonlyTabCollection
- (WBReadonlyTabCollection)init;
@end

@implementation WBReadonlyTabCollection

- (WBReadonlyTabCollection)init
{
  v9.receiver = self;
  v9.super_class = WBReadonlyTabCollection;
  v2 = [(WBReadonlyTabCollection *)&v9 init];
  if (v2)
  {
    v3 = [WBTabCollection alloc];
    v4 = +[WBCollectionConfiguration readonlySafariTabCollectionConfiguration];
    v5 = [(WBTabCollection *)v3 initWithConfiguration:v4 openDatabase:1];
    collection = v2->_collection;
    v2->_collection = v5;

    v7 = v2;
  }

  return v2;
}

@end