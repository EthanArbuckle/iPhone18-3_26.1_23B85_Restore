@interface SKUISearchBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUISearchBar)init;
@end

@implementation SKUISearchBar

- (SKUISearchBar)init
{
  v8.receiver = self;
  v8.super_class = SKUISearchBar;
  v2 = [(SKUISearchBar *)&v8 init];
  if (v2)
  {
    v3 = storeSemanticContentAttribute();
    if (storeShouldReverseLayoutDirection())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    [(SKUISearchBar *)v2 setSemanticContentAttribute:v3];
    searchField = [(SKUISearchBar *)v2 searchField];
    [searchField setSemanticContentAttribute:v3];

    searchField2 = [(SKUISearchBar *)v2 searchField];
    [searchField2 setTextAlignment:v4];
  }

  return v2;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v13.receiver = self;
  v13.super_class = SKUISearchBar;
  [(SKUISearchBar *)&v13 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(SKUISearchBar *)self intrinsicWidth];
  if (v8 > 0.0)
  {
    [(SKUISearchBar *)self intrinsicWidth];
    if (v9 < v5)
    {
      [(SKUISearchBar *)self intrinsicWidth];
      v5 = v10;
    }
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

@end