@interface ExtragalacticPosterEditor
- (BOOL)editor:(id)editor shouldAllowUserToSelectTimeFontConfiguration:(id)configuration;
- (id)additionalTimeFontConfigurationsForEditor:(id)editor;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)timeColorPickerConfigurationForEditor:(id)editor;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation ExtragalacticPosterEditor

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_100006258(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100006EC0(editorCopy, transition);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_100007148(editorCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100007494();
}

- (BOOL)editor:(id)editor shouldAllowUserToSelectTimeFontConfiguration:(id)configuration
{
  v4 = qword_100022888;
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (v4 != -1)
  {
    configurationCopy = swift_once();
  }

  v11 = v6;
  __chkstk_darwin(configurationCopy);
  v10[2] = &v11;
  v8 = sub_100006D98(sub_100007F80, v10, v7);

  return v8 & 1;
}

- (id)additionalTimeFontConfigurationsForEditor:(id)editor
{
  if (qword_100022888 != -1)
  {
    swift_once();
  }

  sub_100008110(0, &qword_100023500, PRTimeFontConfiguration_ptr);
  v3.super.isa = sub_100013978().super.isa;

  return v3.super.isa;
}

- (id)timeColorPickerConfigurationForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_100007750(editorCopy);

  return v6;
}

- (id)looksForEditor:(id)editor
{
  sub_100007A30();
  sub_100008110(0, &qword_100023198, PREditingLook_ptr);
  v3.super.isa = sub_100013978().super.isa;

  return v3.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_100007DEC(editorCopy);

  v6 = sub_1000138C8();

  return v6;
}

@end