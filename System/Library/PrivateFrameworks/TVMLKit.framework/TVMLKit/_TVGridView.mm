@interface _TVGridView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)tv_sizeThatFits:(CGSize)a3 withContentInset:(UIEdgeInsets)a4;
- (_TVGridView)initWithFrame:(CGRect)a3;
- (_TVGridView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation _TVGridView

- (_TVGridView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(_TVCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v8 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v8 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v8 setMinimumLineSpacing:0.0];
  v9 = [(_TVGridView *)self initWithFrame:v8 collectionViewLayout:x, y, width, height];

  return v9;
}

- (_TVGridView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v7.receiver = self;
  v7.super_class = _TVGridView;
  v4 = [(_TVCollectionView *)&v7 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(_TVCollectionView *)v4 setScrollEnabled:0];
    [(_TVGridView *)v5 _setShouldDeriveVisibleBoundsFromContainingScrollView:1];
    [(_TVGridView *)v5 _setNeedsLayoutOnVisibleBoundsChange:1];
    [(_TVGridView *)v5 setOpaque:0];
    [(_TVGridView *)v5 setBackgroundColor:0];
    [(_TVGridView *)v5 setClipsToBounds:0];
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TVGridView;
  v4 = a3;
  [(_TVCollectionView *)&v6 setDelegate:v4];
  v5 = objc_opt_respondsToSelector();

  self->_delegateRespondsToIndexPathForPreferredFocusedView = v5 & 1;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(_TVGridView *)self contentInset];

  [(_TVGridView *)self tv_sizeThatFits:width withContentInset:height, v6, v7, v8, v9];
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)tv_sizeThatFits:(CGSize)a3 withContentInset:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  top = a4.top;
  width = a3.width;
  v7 = a3.width - a4.left - a4.right;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(_TVGridView *)self gridFlowLayout];
  [v9 contentHeightThatFitsItemCount:0 expectedWidth:v8];
  v11 = bottom + top + v10;

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end