@interface _TVGridView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)tv_sizeThatFits:(CGSize)fits withContentInset:(UIEdgeInsets)inset;
- (_TVGridView)initWithFrame:(CGRect)frame;
- (_TVGridView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)setDelegate:(id)delegate;
@end

@implementation _TVGridView

- (_TVGridView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_alloc_init(_TVCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v8 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v8 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v8 setMinimumLineSpacing:0.0];
  height = [(_TVGridView *)self initWithFrame:v8 collectionViewLayout:x, y, width, height];

  return height;
}

- (_TVGridView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = _TVGridView;
  v4 = [(_TVCollectionView *)&v7 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = _TVGridView;
  delegateCopy = delegate;
  [(_TVCollectionView *)&v6 setDelegate:delegateCopy];
  v5 = objc_opt_respondsToSelector();

  self->_delegateRespondsToIndexPathForPreferredFocusedView = v5 & 1;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(_TVGridView *)self contentInset];

  [(_TVGridView *)self tv_sizeThatFits:width withContentInset:height, v6, v7, v8, v9];
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)tv_sizeThatFits:(CGSize)fits withContentInset:(UIEdgeInsets)inset
{
  bottom = inset.bottom;
  top = inset.top;
  width = fits.width;
  v7 = fits.width - inset.left - inset.right;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  gridFlowLayout = [(_TVGridView *)self gridFlowLayout];
  [gridFlowLayout contentHeightThatFitsItemCount:0 expectedWidth:v8];
  v11 = bottom + top + v10;

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end