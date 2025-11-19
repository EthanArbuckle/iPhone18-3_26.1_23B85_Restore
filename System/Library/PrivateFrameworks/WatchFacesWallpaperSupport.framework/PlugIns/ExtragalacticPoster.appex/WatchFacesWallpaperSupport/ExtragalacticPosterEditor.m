@interface ExtragalacticPosterEditor
- (BOOL)editor:(id)a3 shouldAllowUserToSelectTimeFontConfiguration:(id)a4;
- (id)additionalTimeFontConfigurationsForEditor:(id)a3;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)timeColorPickerConfigurationForEditor:(id)a3;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation ExtragalacticPosterEditor

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100006258(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_100006EC0(v7, a5);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100007148(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007494();
}

- (BOOL)editor:(id)a3 shouldAllowUserToSelectTimeFontConfiguration:(id)a4
{
  v4 = qword_100022888;
  v5 = a4;
  v6 = v5;
  if (v4 != -1)
  {
    v5 = swift_once();
  }

  v11 = v6;
  __chkstk_darwin(v5);
  v10[2] = &v11;
  v8 = sub_100006D98(sub_100007F80, v10, v7);

  return v8 & 1;
}

- (id)additionalTimeFontConfigurationsForEditor:(id)a3
{
  if (qword_100022888 != -1)
  {
    swift_once();
  }

  sub_100008110(0, &qword_100023500, PRTimeFontConfiguration_ptr);
  v3.super.isa = sub_100013978().super.isa;

  return v3.super.isa;
}

- (id)timeColorPickerConfigurationForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100007750(v4);

  return v6;
}

- (id)looksForEditor:(id)a3
{
  sub_100007A30();
  sub_100008110(0, &qword_100023198, PREditingLook_ptr);
  v3.super.isa = sub_100013978().super.isa;

  return v3.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007DEC(v4);

  v6 = sub_1000138C8();

  return v6;
}

@end