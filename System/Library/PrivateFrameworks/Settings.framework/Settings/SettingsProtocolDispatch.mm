@interface SettingsProtocolDispatch
- (_TtP8Settings20SettingsHostProtocol_)settingsHost;
- (void)handshakeWithEndPoint:(id)a3;
- (void)isCloudSyncEnabled:(id)a3;
- (void)popNavigationStack;
- (void)setCloudSyncEnabled:(BOOL)a3;
- (void)willSelectWithNavigationPath:(id)a3;
- (void)willSelectWithRevealElementKey:(id)a3;
@end

@implementation SettingsProtocolDispatch

- (_TtP8Settings20SettingsHostProtocol_)settingsHost
{
  v2 = [*self->target settingsHost];

  return v2;
}

- (void)willSelectWithRevealElementKey:(id)a3
{
  if (a3)
  {
    v3 = sub_21CE6CC50();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_21CE2DAFC(v3, v5);
}

- (void)willSelectWithNavigationPath:(id)a3
{
  v3 = a3;

  sub_21CE2E030(v3);
}

- (void)handshakeWithEndPoint:(id)a3
{
  v3 = a3;

  sub_21CE31F34(v3);
}

- (void)isCloudSyncEnabled:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_21CE32418(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)setCloudSyncEnabled:(BOOL)a3
{

  sub_21CE2F4B4(a3);
}

- (void)popNavigationStack
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  if ([objc_opt_self() isMainThread])
  {
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_27CE412C0);
    v19 = sub_21CE6BD80();
    v5 = sub_21CE6CF30();
    if (os_log_type_enabled(v19, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136446978;
      v8 = sub_21CE6D2B0();
      v10 = sub_21CDF2CC8(v8, v9, &v20);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2048;
      *(v6 + 14) = 298;
      *(v6 + 22) = 2082;
      v11 = sub_21CE6D2B0();
      v13 = sub_21CDF2CC8(v11, v12, &v20);

      *(v6 + 24) = v13;
      *(v6 + 32) = 2082;
      *(v6 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v20);
      _os_log_impl(&dword_21CDE1000, v19, v5, "%{public}s:%ld %{public}s %{public}s", v6, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v7, -1, -1);
      MEMORY[0x21CF1BD50](v6, -1, -1);
    }

    else
    {
      v18 = v19;
    }
  }

  else
  {
    v14 = sub_21CE6CE20();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_21CE6CDE0();
    v15 = sub_21CE6CDD0();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = sub_21CE2E65C;
    v16[5] = 0;
    sub_21CE11F34(0, 0, v3, &unk_21CE72DA8, v16);
  }
}

@end