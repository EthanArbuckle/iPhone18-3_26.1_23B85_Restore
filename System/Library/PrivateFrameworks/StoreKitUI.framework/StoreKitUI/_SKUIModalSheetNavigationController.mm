@interface _SKUIModalSheetNavigationController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
@end

@implementation _SKUIModalSheetNavigationController

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(_SKUIModalSheetNavigationController *)self topViewController];

  if (v8 != v7)
  {
    v13.receiver = self;
    v13.super_class = _SKUIModalSheetNavigationController;
    [(_SKUIModalSheetNavigationController *)&v13 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
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