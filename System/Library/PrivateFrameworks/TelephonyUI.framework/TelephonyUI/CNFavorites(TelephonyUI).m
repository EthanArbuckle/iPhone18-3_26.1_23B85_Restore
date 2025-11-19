@interface CNFavorites(TelephonyUI)
- (id)entriesMatchingPredicate:()TelephonyUI;
@end

@implementation CNFavorites(TelephonyUI)

- (id)entriesMatchingPredicate:()TelephonyUI
{
  v4 = a3;
  v5 = [a1 entries];
  v6 = [v5 filteredArrayUsingPredicate:v4];

  return v6;
}

@end