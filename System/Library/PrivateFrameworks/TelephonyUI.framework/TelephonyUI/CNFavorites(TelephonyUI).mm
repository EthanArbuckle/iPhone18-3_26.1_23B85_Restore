@interface CNFavorites(TelephonyUI)
- (id)entriesMatchingPredicate:()TelephonyUI;
@end

@implementation CNFavorites(TelephonyUI)

- (id)entriesMatchingPredicate:()TelephonyUI
{
  v4 = a3;
  entries = [self entries];
  v6 = [entries filteredArrayUsingPredicate:v4];

  return v6;
}

@end