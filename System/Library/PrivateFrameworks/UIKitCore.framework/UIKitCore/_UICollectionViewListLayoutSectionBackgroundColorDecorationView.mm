@interface _UICollectionViewListLayoutSectionBackgroundColorDecorationView
- (_UICollectionViewListLayoutSectionBackgroundColorDecorationView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation _UICollectionViewListLayoutSectionBackgroundColorDecorationView

- (_UICollectionViewListLayoutSectionBackgroundColorDecorationView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UICollectionViewListLayoutSectionBackgroundColorDecorationView;
  v3 = [(UICollectionReusableView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (dyld_program_sdk_at_least())
    {
      [(UIView *)v3 setUserInteractionEnabled:0];
    }

    [(UIView *)v3 _setBackgroundMergeBehavior:2];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v9.receiver = self;
  v9.super_class = _UICollectionViewListLayoutSectionBackgroundColorDecorationView;
  [(UICollectionReusableView *)&v9 applyLayoutAttributes:?];
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)attributes _existingListAttributes];
  v6 = _existingListAttributes;
  if (_existingListAttributes)
  {
    v7 = *(_existingListAttributes + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(UIView *)self setBackgroundColor:v8];
}

@end