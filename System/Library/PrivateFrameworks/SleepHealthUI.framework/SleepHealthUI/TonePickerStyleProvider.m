@interface TonePickerStyleProvider
- (UIFont)vibrationPickerCellTextFont;
- (_TtC13SleepHealthUI23TonePickerStyleProvider)init;
@end

@implementation TonePickerStyleProvider

- (_TtC13SleepHealthUI23TonePickerStyleProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TonePickerStyleProvider();
  return [(TonePickerStyleProvider *)&v3 init];
}

- (UIFont)vibrationPickerCellTextFont
{
  v2 = [objc_opt_self() preferredFontForTextStyle_];

  return v2;
}

@end