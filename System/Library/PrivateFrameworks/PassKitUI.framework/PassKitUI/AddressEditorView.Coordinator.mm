@interface AddressEditorView.Coordinator
- (_TtCV9PassKitUI17AddressEditorView11Coordinator)init;
- (void)addressEditorViewController:(id)controller selectedContact:(id)contact;
- (void)addressEditorViewControllerDidCancel:(id)cancel;
@end

@implementation AddressEditorView.Coordinator

- (void)addressEditorViewControllerDidCancel:(id)cancel
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI17AddressEditorView11Coordinator_dismiss);
  selfCopy = self;
  v3(0);
}

- (void)addressEditorViewController:(id)controller selectedContact:(id)contact
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI17AddressEditorView11Coordinator_dismiss);
  contactCopy = contact;
  selfCopy = self;
  v6(contact);
}

- (_TtCV9PassKitUI17AddressEditorView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end