@interface _PXPhotosBarButtonSpecManager
- (PXCuratedLibrarySectionHeaderLayoutSpec)spec;
@end

@implementation _PXPhotosBarButtonSpecManager

- (PXCuratedLibrarySectionHeaderLayoutSpec)spec
{
  v4.receiver = self;
  v4.super_class = _PXPhotosBarButtonSpecManager;
  spec = [(PXFeatureSpecManager *)&v4 spec];
  [spec setIsFloating:1];

  return spec;
}

@end