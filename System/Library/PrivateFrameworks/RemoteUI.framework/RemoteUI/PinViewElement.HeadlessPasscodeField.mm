@interface PinViewElement.HeadlessPasscodeField
- (_TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField)initWithCoder:(id)coder;
- (_TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField)initWithFrame:(CGRect)frame;
- (id)stringValue;
- (void)setStringValue:(id)value;
@end

@implementation PinViewElement.HeadlessPasscodeField

- (id)stringValue
{

  v2 = sub_21BA87C8C();

  return v2;
}

- (void)setStringValue:(id)value
{
  if (value)
  {
    v4 = sub_21BA87CBC();
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = (self + OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField__stringValue);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField_numberOfEntryFields) = 1;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField__stringValue);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PinViewElement.HeadlessPasscodeField();
  return [(PinViewElement.HeadlessPasscodeField *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField_numberOfEntryFields) = 1;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField__stringValue);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PinViewElement.HeadlessPasscodeField();
  coderCopy = coder;
  v6 = [(PinViewElement.HeadlessPasscodeField *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end