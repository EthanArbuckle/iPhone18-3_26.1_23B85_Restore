@interface TVDetailHeaderCell
- (BOOL)canBecomeFocused;
- (NSArray)accessibilityMediaTags;
- (void)handleTappedButton:(id)button;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityMediaTags:(id)tags;
@end

@implementation TVDetailHeaderCell

- (BOOL)canBecomeFocused
{
  v2 = *(self + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_buttonStackView);
  selfCopy = self;
  arrangedSubviews = [v2 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v5 = sub_20C13CC74();

  if (v5 >> 62)
  {
    v6 = sub_20C13DB34();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 == 0;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_20B93AEDC();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20B93B088();
}

- (void)handleTappedButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_20B93CA14(buttonCopy);
}

- (NSArray)accessibilityMediaTags
{
  if (*(self + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_accessibilityMediaTags))
  {

    v2 = sub_20C13CC54();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessibilityMediaTags:(id)tags
{
  if (tags)
  {
    v4 = sub_20C13CC74();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC9SeymourUI18TVDetailHeaderCell_accessibilityMediaTags) = v4;
}

@end