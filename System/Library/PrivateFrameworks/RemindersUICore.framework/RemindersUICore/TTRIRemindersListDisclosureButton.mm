@interface TTRIRemindersListDisclosureButton
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (_TtC15RemindersUICoreP33_4EB1E94F0FA08F88AB1C838BE39CB2DF33TTRIRemindersListDisclosureButton)initWithCoder:(id)coder;
- (_TtC15RemindersUICoreP33_4EB1E94F0FA08F88AB1C838BE39CB2DF33TTRIRemindersListDisclosureButton)initWithFrame:(CGRect)frame;
@end

@implementation TTRIRemindersListDisclosureButton

- (_TtC15RemindersUICoreP33_4EB1E94F0FA08F88AB1C838BE39CB2DF33TTRIRemindersListDisclosureButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  height = [(TTRIExpandedHitTestButton *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  secondaryLabelColor = [v8 secondaryLabelColor];
  [(TTRIRemindersListDisclosureButton *)v9 setTintColor:secondaryLabelColor];

  return v9;
}

- (_TtC15RemindersUICoreP33_4EB1E94F0FA08F88AB1C838BE39CB2DF33TTRIRemindersListDisclosureButton)initWithCoder:(id)coder
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (CGRect)contentRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = CGRectGetMidX(bounds) + -12.0;
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