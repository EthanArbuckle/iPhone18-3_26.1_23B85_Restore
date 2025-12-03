@interface _SKUIModalSheetNavigationController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
@end

@implementation _SKUIModalSheetNavigationController

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  topViewController = [(_SKUIModalSheetNavigationController *)self topViewController];

  if (topViewController != containerCopy)
  {
    v13.receiver = self;
    v13.super_class = _SKUIModalSheetNavigationController;
    [(_SKUIModalSheetNavigationController *)&v13 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
    width = v9;
    height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

@end