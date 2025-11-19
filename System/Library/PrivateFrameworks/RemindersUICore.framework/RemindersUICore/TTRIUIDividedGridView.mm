@interface TTRIUIDividedGridView
- (CGSize)intrinsicContentSize;
- (TTRIDividedGridViewController)viewController;
- (id)accessibilityElements;
@end

@implementation TTRIUIDividedGridView

- (CGSize)intrinsicContentSize
{
  v2 = [(TTRIUIDividedGridView *)self viewController];
  [v2 intrinsicContentSize];
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
  v2 = [(TTRIUIDividedGridView *)self viewController];
  v3 = [v2 allCells];

  return v3;
}

- (TTRIDividedGridViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end