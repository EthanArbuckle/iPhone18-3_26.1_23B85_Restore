@interface _UICollectionLayoutEnvironment
- (_UICollectionLayoutEnvironment)initWithContainer:(id)a3 traitCollection:(id)a4 dataSourceSnapshot:(id)a5 sectionIndex:(int64_t)a6 wantsCollapsedTopSpacing:(BOOL)a7;
@end

@implementation _UICollectionLayoutEnvironment

- (_UICollectionLayoutEnvironment)initWithContainer:(id)a3 traitCollection:(id)a4 dataSourceSnapshot:(id)a5 sectionIndex:(int64_t)a6 wantsCollapsedTopSpacing:(BOOL)a7
{
  v15.receiver = self;
  v15.super_class = _UICollectionLayoutEnvironment;
  v12 = [(_UICollectionLayoutEnvironment *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_container, a3);
    objc_storeStrong(&v13->_traitCollection, a4);
    objc_storeStrong(&v13->__dataSourceSnapshot, a5);
    v13->__sectionIndex = a6;
    v13->__wantsCollapsedTopSpacing = a7;
  }

  return v13;
}

@end