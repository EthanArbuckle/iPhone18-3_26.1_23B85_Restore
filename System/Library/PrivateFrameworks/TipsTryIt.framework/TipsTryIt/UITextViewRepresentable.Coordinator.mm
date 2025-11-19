@interface UITextViewRepresentable.Coordinator
- (_TtCV9TipsTryIt23UITextViewRepresentable11Coordinator)init;
- (void)handleTapWithSender:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
@end

@implementation UITextViewRepresentable.Coordinator

- (void)handleTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26F141080();
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 text];
  if (v6)
  {
    v7 = v6;
    v8 = sub_26F180754();
    v10 = v9;

    v11 = (v5 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_text);
    v12 = *&v5->_disableInteraction[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_text];
    *v11 = v8;
    v11[1] = v10;
  }

  else
  {
    __break(1u);
  }
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26F13EEA0(v4);
}

- (_TtCV9TipsTryIt23UITextViewRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end