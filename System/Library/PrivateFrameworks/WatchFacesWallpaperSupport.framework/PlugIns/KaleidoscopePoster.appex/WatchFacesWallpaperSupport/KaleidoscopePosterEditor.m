@interface KaleidoscopePosterEditor
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)trailingMenuElementsForEditor:(id)a3;
- (void)editor:(id)a3 appearanceMenuDidChangeSelectedStyle:(int64_t)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation KaleidoscopePosterEditor

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  swift_unknownObjectWeakAssign();
  v6 = a3;
  v8 = self;
  v7 = [objc_msgSend(v6 "environment")];
  swift_unknownObjectRelease();

  *(&v8->super.isa + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_lastOrientation) = v7;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10001525C(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10001687C(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10001B968(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001CD0C();
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001CE34();

  sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
  v6.super.isa = sub_100024D38().super.isa;

  return v6.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100017344(v4);

  v6 = sub_100024C68();

  return v6;
}

- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10001D7C0(v7, v8);
}

- (void)editor:(id)a3 appearanceMenuDidChangeSelectedStyle:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100017F88(v6, a4);
}

- (id)trailingMenuElementsForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100018134(v4);

  if (v6)
  {
    sub_1000147A8(0, &qword_10003C2C8, UIMenuElement_ptr);
    v7.super.isa = sub_100024D38().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end