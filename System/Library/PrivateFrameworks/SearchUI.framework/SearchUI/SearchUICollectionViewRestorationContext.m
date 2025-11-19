@interface SearchUICollectionViewRestorationContext
- (SearchUICollectionViewRestorationContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SearchUICollectionViewRestorationContext

- (SearchUICollectionViewRestorationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUICollectionViewRestorationContext;
  v5 = [(SearchUICollectionViewRestorationContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSelectedIndexPath"];
    lastSelectedIndexPath = v5->_lastSelectedIndexPath;
    v5->_lastSelectedIndexPath = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(SearchUICollectionViewRestorationContext *)self lastSelectedIndexPath];
  [v4 setLastSelectedIndexPath:v5];

  return v4;
}

@end