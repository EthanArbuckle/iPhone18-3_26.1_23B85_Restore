@interface PREditingCancelButton
+ (id)editingTitledButtonTitle;
@end

@implementation PREditingCancelButton

+ (id)editingTitledButtonTitle
{
  v2 = PRBundle();
  v3 = [v2 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_1F1C13D90 table:@"PosterKit"];

  return v3;
}

@end