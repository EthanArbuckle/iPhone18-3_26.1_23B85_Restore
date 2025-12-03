@interface SHUDPairedUnlockUtilities
+ (id)trailingButton;
@end

@implementation SHUDPairedUnlockUtilities

+ (id)trailingButton
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCK" value:0 table:@"Localization"];

  v4 = [UIButton buttonWithType:1];
  [v4 setTitle:v3 forState:0];
  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v5];

  v7 = +[UIColor systemRedColor];
  [v4 setTintColor:v7];

  v8 = +[UIColor secondarySystemFillColor];
  [v4 setBackgroundColor:v8];

  [v4 _setCornerRadius:17.0];
  [v4 setUserInteractionEnabled:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

@end