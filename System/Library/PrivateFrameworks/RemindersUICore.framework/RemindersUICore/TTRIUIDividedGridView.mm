@interface TTRIUIDividedGridView
- (CGSize)intrinsicContentSize;
- (TTRIDividedGridViewController)viewController;
- (id)accessibilityElements;
@end

@implementation TTRIUIDividedGridView

- (CGSize)intrinsicContentSize
{
  viewController = [(TTRIUIDividedGridView *)self viewController];
  [viewController intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)accessibilityElements
{
  viewController = [(TTRIUIDividedGridView *)self viewController];
  allCells = [viewController allCells];

  return allCells;
}

- (TTRIDividedGridViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end