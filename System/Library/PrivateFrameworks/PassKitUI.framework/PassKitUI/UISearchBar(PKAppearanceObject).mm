@interface UISearchBar(PKAppearanceObject)
- (void)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UISearchBar(PKAppearanceObject)

- (void)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  tintColor = [v4 tintColor];
  [self setTintColor:tintColor];

  searchBarTintcolor = [v4 searchBarTintcolor];
  [self setBarTintColor:searchBarTintcolor];

  searchField = [self searchField];
  [searchField setBackground:0];

  searchField2 = [self searchField];
  backgroundColor = [v4 backgroundColor];

  [searchField2 setBackgroundColor:backgroundColor];
}

@end