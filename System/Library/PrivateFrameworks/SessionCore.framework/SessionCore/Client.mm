@interface Client
- (BOOL)registerForPushTokensWithError:(id *)a3;
- (BOOL)registerForSubscriptionPreferencesWithError:(id *)a3;
- (NSString)description;
- (_TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client)init;
- (_TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client)init;
- (_TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client)init;
- (_TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client)init;
- (_TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client)init;
- (id)activityDescriptorContentStatesWithError:(id *)a3;
- (id)activityDescriptorForIdentifier:(id)a3;
- (id)activityDescriptorsWithError:(id *)a3;
- (id)requestActivityWithRequest:(id)a3 alertConfiguration:(id)a4 error:(id *)a5;
- (id)subscribeWithOptions:(id)a3 error:(id *)a4;
- (void)endActivityWithIdentifier:(id)a3 payload:(id)a4 options:(id)a5;
- (void)mockPushWithChannelID:(id)a3 processIdentifier:(id)a4 environmentName:(id)a5 payload:(id)a6 pushPriority:(id)a7 completionHandler:(id)a8;
- (void)mockPushWithToken:(id)a3 processIdentifier:(id)a4 environmentName:(id)a5 payload:(id)a6 pushPriority:(id)a7 completionHandler:(id)a8;
- (void)requestAlertDismissalWithActivityIdentifier:(id)a3;
- (void)unsubscribe;
- (void)updateActivityWithIdentifier:(id)a3 payload:(id)a4;
@end

@implementation Client

- (id)activityDescriptorContentStatesWithError:(id *)a3
{
  v4 = sub_22D01455C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = self;
  sub_22CEE3DAC(v9);
  sub_22CEE74DC(&qword_281443A10, MEMORY[0x277CB91F8]);
  v11 = sub_22D01517C();
  v12 = sub_22D0141EC();
  v14 = v13;

  (*(v5 + 8))(v9, v4);
  v15 = sub_22D0141DC();
  sub_22CEE7524(v12, v14);

  return v15;
}

- (BOOL)registerForPushTokensWithError:(id *)a3
{
  v3 = self;
  sub_22CEE90A4();

  return 1;
}

- (id)subscribeWithOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_22D0141EC();
  v9 = v8;

  v10 = sub_22CEEF02C();
  v12 = v11;

  sub_22CEE7524(v7, v9);
  v13 = sub_22D0141DC();
  sub_22CEE7524(v10, v12);

  return v13;
}

- (id)requestActivityWithRequest:(id)a3 alertConfiguration:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  v10 = sub_22D0141EC();
  v12 = v11;

  if (v9)
  {
    v13 = sub_22D0141EC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v16 = sub_22CEF9900(v10, v12, v13, v15);
  v18 = v17;

  sub_22CEEEF0C(v13, v15);
  sub_22CEE7524(v10, v12);
  v19 = sub_22D0141DC();
  sub_22CEE7524(v16, v18);

  return v19;
}

- (void)updateActivityWithIdentifier:(id)a3 payload:(id)a4
{
  v6 = sub_22D0146BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01667C();
  v14 = v13;
  v15 = a4;
  v16 = self;
  v17 = sub_22D0141EC();
  v19 = v18;

  v20 = sub_22D0141DC();
  sub_22CEE83DC(&qword_28143F6E8, MEMORY[0x277CB9250]);
  sub_22D01516C();

  sub_22CF224E4(v12, v14, v11);

  sub_22CEE7524(v17, v19);
  (*(v7 + 8))(v11, v6);
}

- (void)endActivityWithIdentifier:(id)a3 payload:(id)a4 options:(id)a5
{
  v8 = sub_22D01667C();
  v10 = v9;
  v11 = a5;
  v12 = self;
  if (a4)
  {
    v13 = a4;
    a4 = sub_22D0141EC();
    v15 = v14;
  }

  else
  {
    v15 = 0xF000000000000000;
  }

  v16 = sub_22D0141EC();
  v18 = v17;

  sub_22CF315DC(v8, v10, a4, v15);
  sub_22CEE7524(v16, v18);
  sub_22CEEEF0C(a4, v15);
}

- (NSString)description
{
  v2 = self;
  sub_22CF42D74();

  v3 = sub_22D01666C();

  return v3;
}

- (_TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mockPushWithToken:(id)a3 processIdentifier:(id)a4 environmentName:(id)a5 payload:(id)a6 pushPriority:(id)a7 completionHandler:(id)a8
{
  v31 = _Block_copy(a8);
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = self;
  v20 = sub_22D0141EC();
  v22 = v21;

  v30 = sub_22D01667C();
  v24 = v23;

  v25 = sub_22D01667C();
  v27 = v26;

  v28 = sub_22D0165EC();
  *(swift_allocObject() + 16) = v31;

  sub_22CF44D04(v20, v22, 0, 0, v30, v24, v25, v27, v28, v18, v19, sub_22CF461EC, v29);

  sub_22CEE7524(v20, v22);
}

- (void)mockPushWithChannelID:(id)a3 processIdentifier:(id)a4 environmentName:(id)a5 payload:(id)a6 pushPriority:(id)a7 completionHandler:(id)a8
{
  v10 = _Block_copy(a8);
  v23 = sub_22D01667C();
  v12 = v11;
  v13 = sub_22D01667C();
  v15 = v14;
  v16 = sub_22D01667C();
  v18 = v17;
  v19 = sub_22D0165EC();
  v20 = swift_allocObject();
  *(v20 + 16) = v10;

  v21 = a7;
  v22 = self;
  sub_22CF44D04(0, 0xF000000000000000, v23, v12, v13, v15, v16, v18, v19, v21, v22, sub_22CF460B0, v20);
}

- (_TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)requestAlertDismissalWithActivityIdentifier:(id)a3
{
  sub_22D01667C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_22CFDE958();
    swift_unknownObjectRelease();
  }
}

- (_TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityDescriptorsWithError:(id *)a3
{
  v4 = sub_22D01453C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = self;
  sub_22CFD7EB0(v9);
  sub_22CEE74DC(&qword_281443A18, MEMORY[0x277CB91E8]);
  v11 = sub_22D01517C();
  v12 = sub_22D0141EC();
  v14 = v13;

  (*(v5 + 8))(v9, v4);
  v15 = sub_22D0141DC();
  sub_22CEE7524(v12, v14);

  return v15;
}

- (id)activityDescriptorForIdentifier:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3858, &qword_22D01BD30);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - v11;
  v13 = sub_22D01667C();
  v15 = v14;
  v16 = self;
  sub_22CFD881C(v13, v15, v12);

  sub_22CEEB6DC(v12, v9, &unk_27D9F3858, &qword_22D01BD30);
  v17 = sub_22D01471C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {

    sub_22CEEC3D8(v12, &unk_27D9F3858, &qword_22D01BD30);
    v19 = 0;
  }

  else
  {
    sub_22CEE74DC(&qword_2814439F0, MEMORY[0x277CB92E0]);
    v20 = sub_22D01517C();
    (*(v18 + 8))(v9, v17);
    v21 = sub_22D0141EC();
    v23 = v22;

    sub_22CEEC3D8(v12, &unk_27D9F3858, &qword_22D01BD30);
    v24 = sub_22D0141DC();
    sub_22CEE7524(v21, v23);
    v19 = v24;
  }

  return v19;
}

- (void)unsubscribe
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = (*(&self->super.isa + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock))[2];
  v9 = self;
  os_unfair_lock_lock(v8);
  v10 = sub_22D014A1C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
  swift_beginAccess();
  sub_22CEF02F8(v7, v9 + v11);
  swift_endAccess();
  os_unfair_lock_unlock(v8);
}

- (_TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)registerForSubscriptionPreferencesWithError:(id *)a3
{
  v3 = self;
  sub_22CFDFBFC();

  return 1;
}

@end