@interface Client
- (BOOL)addIDToAllowListWithParameters:(id)a3 error:(id *)a4;
- (BOOL)addRecordsWithParameters:(id)a3 error:(id *)a4;
- (BOOL)enableAllowListWithParameters:(id)a3 error:(id *)a4;
- (BOOL)registerClientWithParameters:(id)a3 error:(id *)a4;
- (BOOL)removeFromAllowListWithParameters:(id)a3 error:(id *)a4;
- (BOOL)removeRecordsWithParameters:(id)a3 error:(id *)a4;
- (BOOL)retryStuckRelationshipsAndReturnError:(id *)a3;
- (BOOL)sendMessageWithParameters:(id)a3 error:(id *)a4;
- (BOOL)setAllowListWithParameters:(id)a3 error:(id *)a4;
- (BOOL)setEnabledWithParameters:(id)a3 error:(id *)a4;
- (BOOL)syncAndReturnError:(id *)a3;
- (BOOL)unavailableWithParameters:(id)a3 error:(id *)a4;
- (BOOL)unpairWithParameters:(id)a3 error:(id *)a4;
- (BOOL)unregisterClientWithParameters:(id)a3 error:(id *)a4;
- (NSString)description;
- (_TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client)init;
- (_TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client)init;
- (id)allowListAndReturnError:(id *)a3;
- (id)clientDefinedRecordIDsWithParameters:(id)a3 error:(id *)a4;
- (id)clientDescriptorWithParameters:(id)a3 error:(id *)a4;
- (id)devicesAndReturnError:(id *)a3;
- (id)disableClientWithParameters:(id)a3 error:(id *)a4;
- (id)enableClientWithParameters:(id)a3 error:(id *)a4;
- (id)isAllowListEnabledAndReturnError:(id *)a3;
- (id)isClientEnabledWithParameters:(id)a3 error:(id *)a4;
- (id)isEnabledAndReturnError:(id *)a3;
- (id)localDeviceAndReturnError:(id *)a3;
- (id)localDeviceIDAndReturnError:(id *)a3;
- (id)messagesWithParameters:(id)a3 error:(id *)a4;
- (id)pdrPairingIDWithParameters:(id)a3 error:(id *)a4;
- (id)pushTokenWithParameters:(id)a3 error:(id *)a4;
- (id)recordVersionsWithParameters:(id)a3 error:(id *)a4;
- (id)recordsWithParameters:(id)a3 error:(id *)a4;
- (void)pairWithParameters:(id)a3 completion:(id)a4;
- (void)sendMessageExpectingResponseWithParameters:(id)a3 completion:(id)a4;
@end

@implementation Client

- (id)devicesAndReturnError:(id *)a3
{
  v4 = sub_2304A5584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_230457B04();

  sub_230464B8C(&qword_281499F18, MEMORY[0x277D46968]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
  v3 = self;
  os_unfair_lock_lock(v2 + 4);
  sub_2304649EC(&v6);
  os_unfair_lock_unlock(v2 + 4);

  v4 = sub_2304A5D14();

  return v4;
}

- (_TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)isClientEnabledWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A5864();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A55E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230464B8C(&qword_27DB54140, MEMORY[0x277D46A70]);
  sub_2304A5444();
  v15 = self;
  sub_23045369C();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499F08, MEMORY[0x277D46998]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)enableClientWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A57D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A55E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230464B8C(&unk_281499EA8, MEMORY[0x277D46A30]);
  sub_2304A5444();
  v15 = self;
  sub_230453B94();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499F08, MEMORY[0x277D46998]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)disableClientWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A57F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A55E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230464B8C(&unk_27DB540E0, MEMORY[0x277D46A40]);
  sub_2304A5444();
  v15 = self;
  sub_2304540D0();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499F08, MEMORY[0x277D46998]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (BOOL)registerClientWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A5844();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&qword_281499E98, MEMORY[0x277D46A60]);
  sub_2304A5444();
  v10 = self;
  sub_23045460C(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)unregisterClientWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A5884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&qword_27DB54078, MEMORY[0x277D46A80]);
  sub_2304A5444();
  v10 = self;
  sub_230454BA4(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)clientDescriptorWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A58C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A5644();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230464B8C(&qword_281499E88, MEMORY[0x277D46AA0]);
  sub_2304A5444();
  v15 = self;
  sub_2304552C0(v14);
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499EF0, MEMORY[0x277D469C8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)localDeviceIDAndReturnError:(id *)a3
{
  v4 = sub_2304A5604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_230455B8C();

  sub_230464B8C(&qword_281499F00, MEMORY[0x277D469A8]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (BOOL)addRecordsWithParameters:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_230455F74(v5);

  return 1;
}

- (BOOL)removeRecordsWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A5824();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&qword_281499EA0, MEMORY[0x277D46A50]);
  sub_2304A5444();
  v10 = self;
  sub_230456474();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)recordsWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A5754();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&unk_281499EC8, MEMORY[0x277D46A00]);
  sub_2304A5444();
  v10 = self;
  v11 = sub_2304568D0(v9);
  (*(v6 + 8))(v9, v5);

  return v11;
}

- (id)recordVersionsWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A58A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A5624();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230464B8C(&qword_281499E90, MEMORY[0x277D46A90]);
  sub_2304A5444();
  v15 = self;
  sub_230456D5C();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499EF8, MEMORY[0x277D469B8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)clientDefinedRecordIDsWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A58E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A5664();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230464B8C(&qword_281499E80, MEMORY[0x277D46AB0]);
  sub_2304A5444();
  v15 = self;
  sub_230457268(v14);
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499EE8, MEMORY[0x277D469D8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (BOOL)syncAndReturnError:(id *)a3
{
  v3 = self;
  sub_2304578F0();

  return 1;
}

- (BOOL)sendMessageWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A57B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&qword_27DB53FC0, MEMORY[0x277D46A20]);
  sub_2304A5444();
  v10 = self;
  sub_230457EB4();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (void)sendMessageExpectingResponseWithParameters:(id)a3 completion:(id)a4
{
  v6 = sub_2304A57B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_230464B8C(&qword_27DB53FC0, MEMORY[0x277D46A20]);
  sub_2304A5444();
  _Block_copy(v11);
  v12 = self;
  sub_230462ABC(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)messagesWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A5774();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A55A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_230464B8C(&unk_281499EB8, MEMORY[0x277D46A10]);
  sub_2304A5444();
  v15 = self;
  sub_230459100();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499F10, MEMORY[0x277D46978]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (_TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)localDeviceAndReturnError:(id *)a3
{
  v4 = sub_2304A4CB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_230483E24(v8);

  sub_2304332D4(&qword_27DB54678, MEMORY[0x277D465B8]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (id)pushTokenWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A4D74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A4C94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2304332D4(&qword_27DB54668, MEMORY[0x277D46618]);
  sub_2304A5444();
  v15 = self;
  sub_230484244();
  (*(v6 + 8))(v9, v5);

  sub_2304332D4(&qword_27DB54670, MEMORY[0x277D465A8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)pdrPairingIDWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A4D94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2304A4CD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2304332D4(&qword_27DB54620, MEMORY[0x277D46628]);
  sub_2304A5444();
  v15 = self;
  sub_230484768(v14);
  (*(v6 + 8))(v9, v5);

  sub_2304332D4(&unk_27DB54628, MEMORY[0x277D465C8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (void)pairWithParameters:(id)a3 completion:(id)a4
{
  v6 = sub_2304A4DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_2304332D4(&qword_27DB54618, MEMORY[0x277D46648]);
  sub_2304A5444();
  _Block_copy(v11);
  v12 = self;
  sub_230489FB8(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (BOOL)unpairWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A4DF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB54608, MEMORY[0x277D46658]);
  sub_2304A5444();
  v10 = self;
  sub_230484EFC();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)unavailableWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A4D54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB54600, MEMORY[0x277D46608]);
  sub_2304A5444();
  v10 = self;
  sub_230485238();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)retryStuckRelationshipsAndReturnError:(id *)a3
{
  v3 = self;
  sub_2304855BC();

  return 1;
}

- (id)isEnabledAndReturnError:(id *)a3
{
  v4 = sub_2304A4C54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_230485784();

  sub_2304332D4(&qword_281499F98, MEMORY[0x277D46588]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (BOOL)setEnabledWithParameters:(id)a3 error:(id *)a4
{
  v6 = sub_2304A4D14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_281499F90, MEMORY[0x277D465E8]);
  sub_2304A5444();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = self;
    v13 = sub_2304A4D04();
    sub_230483B74(v13 & 1);

    swift_unknownObjectRelease();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D462E0], v14);
    swift_willThrow();
    (*(v7 + 8))(v10, v6);
    if (a4)
    {
      v17 = sub_2304A3F14();

      v18 = v17;
      *a4 = v17;
    }

    else
    {
    }
  }

  return Strong != 0;
}

- (BOOL)enableAllowListWithParameters:(id)a3 error:(id *)a4
{
  v6 = sub_2304A4DB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2304332D4(&qword_27DB545F8, MEMORY[0x277D46638]);
  sub_2304A5444();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = self;
    sub_2304A4D04();
    v13 = Strong + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_replicator;
    swift_beginAccess();
    v14 = *(v13 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v13, *(v13 + 24));
    sub_2304A4564();
    swift_endAccess();

    swift_unknownObjectRelease();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D462E0], v15);
    swift_willThrow();
    (*(v7 + 8))(v10, v6);
    if (a4)
    {
      v18 = sub_2304A3F14();

      v19 = v18;
      *a4 = v18;
    }

    else
    {
    }
  }

  return Strong != 0;
}

- (BOOL)setAllowListWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A4E14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB545F0, MEMORY[0x277D46668]);
  sub_2304A5444();
  v10 = self;
  sub_230485F54();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)addIDToAllowListWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A4D34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB545D8, MEMORY[0x277D465F8]);
  sub_2304A5444();
  v10 = self;
  sub_230486244();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)removeFromAllowListWithParameters:(id)a3 error:(id *)a4
{
  v5 = sub_2304A4D34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB545D8, MEMORY[0x277D465F8]);
  sub_2304A5444();
  v10 = self;
  sub_2304866B8();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)isAllowListEnabledAndReturnError:(id *)a3
{
  v4 = sub_2304A4CF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_230486B0C();

  sub_2304332D4(&qword_27DB545D0, MEMORY[0x277D465D8]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (id)allowListAndReturnError:(id *)a3
{
  v4 = sub_2304A4C74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_230486DE8();

  sub_2304332D4(&qword_27DB545C0, MEMORY[0x277D46598]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

@end