@interface RhizomePosterEditor
- (BOOL)editor:(id)editor shouldAllowUserToSelectTimeFontConfiguration:(id)configuration;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)timeColorPickerConfigurationForEditor:(id)editor;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation RhizomePosterEditor

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10002CB2C(editorCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10002A234(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  swift_unknownObjectWeakAssign();
  editorCopy = editor;
  transitionCopy = transition;
  selfCopy = self;
  sub_100036E88();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_10002D648(editorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10002D830();
}

- (BOOL)editor:(id)editor shouldAllowUserToSelectTimeFontConfiguration:(id)configuration
{
  editorCopy = editor;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_10002DA38(configurationCopy);

  return v9 & 1;
}

- (id)timeColorPickerConfigurationForEditor:(id)editor
{
  v3 = sub_10002DC00();

  return v3;
}

- (id)looksForEditor:(id)editor
{
  if (qword_10004AE10 != -1)
  {
    swift_once();
  }

  sub_1000201F4(0, &qword_10004B700);
  v3.super.isa = sub_1000370F8().super.isa;

  return v3.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10002DCE8(editorCopy);

  v6 = sub_100037058();

  return v6;
}

@end