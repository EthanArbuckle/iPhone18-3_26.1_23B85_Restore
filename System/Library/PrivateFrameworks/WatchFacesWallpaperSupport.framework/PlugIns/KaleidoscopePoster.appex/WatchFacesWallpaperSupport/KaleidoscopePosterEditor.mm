@interface KaleidoscopePosterEditor
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)trailingMenuElementsForEditor:(id)editor;
- (void)editor:(id)editor appearanceMenuDidChangeSelectedStyle:(int64_t)style;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation KaleidoscopePosterEditor

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  swift_unknownObjectWeakAssign();
  editorCopy = editor;
  selfCopy = self;
  v7 = [objc_msgSend(editorCopy "environment")];
  swift_unknownObjectRelease();

  *(&selfCopy->super.isa + OBJC_IVAR____TtC18KaleidoscopePoster24KaleidoscopePosterEditor_lastOrientation) = v7;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10001525C(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10001687C(editorCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_10001B968(editorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10001CD0C();
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10001CE34();

  sub_1000147A8(0, &qword_10003C270, PREditingLook_ptr);
  v6.super.isa = sub_100024D38().super.isa;

  return v6.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_100017344(editorCopy);

  v6 = sub_100024C68();

  return v6;
}

- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10001D7C0(editorCopy, lookCopy);
}

- (void)editor:(id)editor appearanceMenuDidChangeSelectedStyle:(int64_t)style
{
  editorCopy = editor;
  selfCopy = self;
  sub_100017F88(editorCopy, style);
}

- (id)trailingMenuElementsForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_100018134(editorCopy);

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