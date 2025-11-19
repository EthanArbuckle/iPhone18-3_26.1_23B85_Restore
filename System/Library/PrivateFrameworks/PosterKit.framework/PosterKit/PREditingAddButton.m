@interface PREditingAddButton
+ (id)editingTitledButtonTitle;
@end

@implementation PREditingAddButton

+ (id)editingTitledButtonTitle
{
  v2 = PRBundle();
  v3 = [v2 localizedStringForKey:@"ADD_BUTTON" value:&stru_1F1C13D90 table:@"PosterKit"];

  return v3;
}

@end