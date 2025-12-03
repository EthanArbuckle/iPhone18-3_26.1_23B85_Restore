@interface MenuPickerButton
- (_TtC9SeymourUI16MenuPickerButton)initWithCoder:(id)coder;
- (void)updateConfiguration;
@end

@implementation MenuPickerButton

- (_TtC9SeymourUI16MenuPickerButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textForegroundColor) = 0;
  v3 = self + OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(v3 + 40) = xmmword_20C15C6B0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_20B81F018();
}

@end