@interface UITextViewRepresentable.Coordinator
- (_TtCV9TipsTryIt23UITextViewRepresentable11Coordinator)init;
- (void)handleTapWithSender:(id)sender;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
@end

@implementation UITextViewRepresentable.Coordinator

- (void)handleTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_26F141080();
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  text = [changeCopy text];
  if (text)
  {
    v7 = text;
    v8 = sub_26F180754();
    v10 = v9;

    v11 = (selfCopy + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_text);
    v12 = *&selfCopy->_disableInteraction[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_text];
    *v11 = v8;
    v11[1] = v10;
  }

  else
  {
    __break(1u);
  }
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_26F13EEA0(selectionCopy);
}

- (_TtCV9TipsTryIt23UITextViewRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end