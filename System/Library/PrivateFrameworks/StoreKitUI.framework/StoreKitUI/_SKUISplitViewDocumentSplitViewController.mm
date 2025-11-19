@interface _SKUISplitViewDocumentSplitViewController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (double)_skui_primaryColumnWidthForWidth:(double)a3;
@end

@implementation _SKUISplitViewDocumentSplitViewController

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(_SKUISplitViewDocumentSplitViewController *)self viewControllers];
  v9 = [v8 firstObject];

  [(_SKUISplitViewDocumentSplitViewController *)self _skui_primaryColumnWidthForWidth:width];
  if (v9 != v7)
  {
    v11 = width - v10;
    [(_SKUISplitViewDocumentSplitViewController *)self gutterWidth];
    v13 = v11 - v12;
    v10 = floorf(v13);
  }

  v14 = height;
  result.height = v14;
  result.width = v10;
  return result;
}

- (double)_skui_primaryColumnWidthForWidth:(double)a3
{
  [(_SKUISplitViewDocumentSplitViewController *)self preferredPrimaryColumnWidthFraction];
  v6 = *MEMORY[0x277D76EE0];
  if (v5 == *MEMORY[0x277D76EE0])
  {
    v5 = 0.4;
  }

  v7 = ceil(v5 * a3);
  [(_SKUISplitViewDocumentSplitViewController *)self minimumPrimaryColumnWidth];
  if (v8 == v6)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  [(_SKUISplitViewDocumentSplitViewController *)self maximumPrimaryColumnWidth];
  if (result == v6)
  {
    result = 320.0;
  }

  if (v9 >= v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (result >= v11)
  {
    return v11;
  }

  return result;
}

@end