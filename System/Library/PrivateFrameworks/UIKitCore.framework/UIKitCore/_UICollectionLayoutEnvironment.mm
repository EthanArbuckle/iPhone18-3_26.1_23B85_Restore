@interface _UICollectionLayoutEnvironment
- (_UICollectionLayoutEnvironment)initWithContainer:(id)container traitCollection:(id)collection dataSourceSnapshot:(id)snapshot sectionIndex:(int64_t)index wantsCollapsedTopSpacing:(BOOL)spacing;
@end

@implementation _UICollectionLayoutEnvironment

- (_UICollectionLayoutEnvironment)initWithContainer:(id)container traitCollection:(id)collection dataSourceSnapshot:(id)snapshot sectionIndex:(int64_t)index wantsCollapsedTopSpacing:(BOOL)spacing
{
  v15.receiver = self;
  v15.super_class = _UICollectionLayoutEnvironment;
  v12 = [(_UICollectionLayoutEnvironment *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_container, container);
    objc_storeStrong(&v13->_traitCollection, collection);
    objc_storeStrong(&v13->__dataSourceSnapshot, snapshot);
    v13->__sectionIndex = index;
    v13->__wantsCollapsedTopSpacing = spacing;
  }

  return v13;
}

@end