@interface UISearchBar(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UISearchBar(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  v5 = [v4 tintColor];
  [a1 setTintColor:v5];

  v6 = [v4 searchBarTintcolor];
  [a1 setBarTintColor:v6];

  v7 = [a1 searchField];
  [v7 setBackground:0];

  v9 = [a1 searchField];
  v8 = [v4 backgroundColor];

  [v9 setBackgroundColor:v8];
}

@end