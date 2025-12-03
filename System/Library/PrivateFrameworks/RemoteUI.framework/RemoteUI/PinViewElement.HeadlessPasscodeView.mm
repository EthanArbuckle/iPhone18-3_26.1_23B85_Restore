@interface PinViewElement.HeadlessPasscodeView
- (_TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D620HeadlessPasscodeView)init;
- (_TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D620HeadlessPasscodeView)initWithAttributes:(id)attributes parent:(id)parent;
- (int64_t)numberOfEntryFields;
- (void)setNumberOfEntryFields:(int64_t)fields;
@end

@implementation PinViewElement.HeadlessPasscodeView

- (int64_t)numberOfEntryFields
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PinViewElement.HeadlessPasscodeView();
  return [(RUIPasscodeView *)&v3 numberOfEntryFields];
}

- (void)setNumberOfEntryFields:(int64_t)fields
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PinViewElement.HeadlessPasscodeView();
  v4 = v7.receiver;
  [(RUIPasscodeView *)&v7 setNumberOfEntryFields:fields];
  v5 = *&v4[OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D620HeadlessPasscodeView_headlessPasscodeField];
  numberOfEntryFields = [v4 numberOfEntryFields];

  *&v5[OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D621HeadlessPasscodeField_numberOfEntryFields] = numberOfEntryFields;
}

- (_TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D620HeadlessPasscodeView)initWithAttributes:(id)attributes parent:(id)parent
{
  if (attributes)
  {
    v5 = sub_21BA87BCC();
  }

  else
  {
    v5 = 0;
  }

  parentCopy = parent;
  return sub_21B9F4E58(v5, parent);
}

- (_TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D620HeadlessPasscodeView)init
{
  v3 = OBJC_IVAR____TtCV8RemoteUI14PinViewElementP33_D2AE12012A0D2D8A61B2D85CC7F760D620HeadlessPasscodeView_headlessPasscodeField;
  type metadata accessor for PinViewElement.HeadlessPasscodeField();
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for PinViewElement.HeadlessPasscodeView();
  return [(RUIElement *)&v5 init];
}

@end