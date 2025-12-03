@interface SearchUICollectionViewRestorationContext
- (SearchUICollectionViewRestorationContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SearchUICollectionViewRestorationContext

- (SearchUICollectionViewRestorationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SearchUICollectionViewRestorationContext;
  v5 = [(SearchUICollectionViewRestorationContext *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSelectedIndexPath"];
    lastSelectedIndexPath = v5->_lastSelectedIndexPath;
    v5->_lastSelectedIndexPath = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  lastSelectedIndexPath = [(SearchUICollectionViewRestorationContext *)self lastSelectedIndexPath];
  [v4 setLastSelectedIndexPath:lastSelectedIndexPath];

  return v4;
}

@end