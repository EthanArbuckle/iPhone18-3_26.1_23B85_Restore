@interface PREditingDoneButton
+ (id)editingTitledButtonTitle;
@end

@implementation PREditingDoneButton

+ (id)editingTitledButtonTitle
{
  v2 = PRBundle();
  v3 = [v2 localizedStringForKey:@"DONE_BUTTON" value:&stru_1F1C13D90 table:@"PosterKit"];

  return v3;
}

@end