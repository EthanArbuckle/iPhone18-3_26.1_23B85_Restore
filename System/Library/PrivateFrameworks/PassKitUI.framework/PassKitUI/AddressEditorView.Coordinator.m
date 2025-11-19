@interface AddressEditorView.Coordinator
- (_TtCV9PassKitUI17AddressEditorView11Coordinator)init;
- (void)addressEditorViewController:(id)a3 selectedContact:(id)a4;
- (void)addressEditorViewControllerDidCancel:(id)a3;
@end

@implementation AddressEditorView.Coordinator

- (void)addressEditorViewControllerDidCancel:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI17AddressEditorView11Coordinator_dismiss);
  v4 = self;
  v3(0);
}

- (void)addressEditorViewController:(id)a3 selectedContact:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI17AddressEditorView11Coordinator_dismiss);
  v8 = a4;
  v7 = self;
  v6(a4);
}

- (_TtCV9PassKitUI17AddressEditorView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end