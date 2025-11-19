@interface TTRIRemindersListDisclosureButton
- (CGRect)contentRectForBounds:(CGRect)a3;
- (_TtC15RemindersUICoreP33_4EB1E94F0FA08F88AB1C838BE39CB2DF33TTRIRemindersListDisclosureButton)initWithCoder:(id)a3;
- (_TtC15RemindersUICoreP33_4EB1E94F0FA08F88AB1C838BE39CB2DF33TTRIRemindersListDisclosureButton)initWithFrame:(CGRect)a3;
@end

@implementation TTRIRemindersListDisclosureButton

- (_TtC15RemindersUICoreP33_4EB1E94F0FA08F88AB1C838BE39CB2DF33TTRIRemindersListDisclosureButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  v7 = [(TTRIExpandedHitTestButton *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 secondaryLabelColor];
  [(TTRIRemindersListDisclosureButton *)v9 setTintColor:v10];

  return v9;
}

- (_TtC15RemindersUICoreP33_4EB1E94F0FA08F88AB1C838BE39CB2DF33TTRIRemindersListDisclosureButton)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (CGRect)contentRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetMidX(a3) + -12.0;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetMidY(v13) + -12.0;
  v9 = 24.0;
  v10 = 24.0;
  v11 = v7;

  return CGRectIntegral(*&v11);
}

@end