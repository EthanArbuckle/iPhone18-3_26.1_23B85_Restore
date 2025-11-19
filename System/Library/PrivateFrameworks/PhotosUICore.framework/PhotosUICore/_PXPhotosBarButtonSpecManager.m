@interface _PXPhotosBarButtonSpecManager
- (PXCuratedLibrarySectionHeaderLayoutSpec)spec;
@end

@implementation _PXPhotosBarButtonSpecManager

- (PXCuratedLibrarySectionHeaderLayoutSpec)spec
{
  v4.receiver = self;
  v4.super_class = _PXPhotosBarButtonSpecManager;
  v2 = [(PXFeatureSpecManager *)&v4 spec];
  [v2 setIsFloating:1];

  return v2;
}

@end