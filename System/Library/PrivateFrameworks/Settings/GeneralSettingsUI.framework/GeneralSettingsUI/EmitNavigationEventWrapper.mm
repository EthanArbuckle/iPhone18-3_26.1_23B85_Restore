@interface EmitNavigationEventWrapper
+ (void)generalEmitNavigationEventForSystemSettingWithGraphicIconIdentifier:(id)a3 title:(id)a4 localizedNavigationComponents:(id)a5 deepLink:(id)a6;
- (_TtC17GeneralSettingsUI26EmitNavigationEventWrapper)init;
@end

@implementation EmitNavigationEventWrapper

+ (void)generalEmitNavigationEventForSystemSettingWithGraphicIconIdentifier:(id)a3 title:(id)a4 localizedNavigationComponents:(id)a5 deepLink:(id)a6
{
  v7 = sub_21CF553F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CF55634();
  v14 = v13;
  sub_21CF5027C();
  v15 = sub_21CF55674();
  sub_21CF553E4();
  v16 = a4;
  sub_21CF4FE78(v12, v14, v16, v15, v11);

  (*(v8 + 8))(v11, v7);
}

- (_TtC17GeneralSettingsUI26EmitNavigationEventWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmitNavigationEventWrapper();
  return [(EmitNavigationEventWrapper *)&v3 init];
}

@end