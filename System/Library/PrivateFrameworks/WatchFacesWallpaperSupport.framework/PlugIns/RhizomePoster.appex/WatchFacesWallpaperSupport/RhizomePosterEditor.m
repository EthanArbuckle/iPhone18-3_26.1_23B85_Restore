@interface RhizomePosterEditor
- (BOOL)editor:(id)a3 shouldAllowUserToSelectTimeFontConfiguration:(id)a4;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)timeColorPickerConfigurationForEditor:(id)a3;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation RhizomePosterEditor

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_10002CB2C(v5);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10002A234(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  swift_unknownObjectWeakAssign();
  v8 = a3;
  v10 = a5;
  v9 = self;
  sub_100036E88();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10002D648(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002D830();
}

- (BOOL)editor:(id)a3 shouldAllowUserToSelectTimeFontConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10002DA38(v7);

  return v9 & 1;
}

- (id)timeColorPickerConfigurationForEditor:(id)a3
{
  v3 = sub_10002DC00();

  return v3;
}

- (id)looksForEditor:(id)a3
{
  if (qword_10004AE10 != -1)
  {
    swift_once();
  }

  sub_1000201F4(0, &qword_10004B700);
  v3.super.isa = sub_1000370F8().super.isa;

  return v3.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002DCE8(v4);

  v6 = sub_100037058();

  return v6;
}

@end