@interface PREditingNextButton
+ (id)editingTitledButtonTitle;
@end

@implementation PREditingNextButton

+ (id)editingTitledButtonTitle
{
  v2 = PRBundle();
  v3 = [v2 localizedStringForKey:@"NEXT_BUTTON" value:&stru_1F1C13D90 table:@"PosterKit"];

  return v3;
}

@end