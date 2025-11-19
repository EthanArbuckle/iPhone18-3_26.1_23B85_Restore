@interface _UICollectionViewListLayoutSectionBackgroundColorDecorationView
- (_UICollectionViewListLayoutSectionBackgroundColorDecorationView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation _UICollectionViewListLayoutSectionBackgroundColorDecorationView

- (_UICollectionViewListLayoutSectionBackgroundColorDecorationView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UICollectionViewListLayoutSectionBackgroundColorDecorationView;
  v3 = [(UICollectionReusableView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)applyLayoutAttributes:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UICollectionViewListLayoutSectionBackgroundColorDecorationView;
  [(UICollectionReusableView *)&v9 applyLayoutAttributes:?];
  v5 = [(UICollectionViewLayoutAttributes *)a3 _existingListAttributes];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(UIView *)self setBackgroundColor:v8];
}

@end