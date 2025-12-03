@interface Client
- (BOOL)addIDToAllowListWithParameters:(id)parameters error:(id *)error;
- (BOOL)addRecordsWithParameters:(id)parameters error:(id *)error;
- (BOOL)enableAllowListWithParameters:(id)parameters error:(id *)error;
- (BOOL)registerClientWithParameters:(id)parameters error:(id *)error;
- (BOOL)removeFromAllowListWithParameters:(id)parameters error:(id *)error;
- (BOOL)removeRecordsWithParameters:(id)parameters error:(id *)error;
- (BOOL)retryStuckRelationshipsAndReturnError:(id *)error;
- (BOOL)sendMessageWithParameters:(id)parameters error:(id *)error;
- (BOOL)setAllowListWithParameters:(id)parameters error:(id *)error;
- (BOOL)setEnabledWithParameters:(id)parameters error:(id *)error;
- (BOOL)syncAndReturnError:(id *)error;
- (BOOL)unavailableWithParameters:(id)parameters error:(id *)error;
- (BOOL)unpairWithParameters:(id)parameters error:(id *)error;
- (BOOL)unregisterClientWithParameters:(id)parameters error:(id *)error;
- (NSString)description;
- (_TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client)init;
- (_TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client)init;
- (id)allowListAndReturnError:(id *)error;
- (id)clientDefinedRecordIDsWithParameters:(id)parameters error:(id *)error;
- (id)clientDescriptorWithParameters:(id)parameters error:(id *)error;
- (id)devicesAndReturnError:(id *)error;
- (id)disableClientWithParameters:(id)parameters error:(id *)error;
- (id)enableClientWithParameters:(id)parameters error:(id *)error;
- (id)isAllowListEnabledAndReturnError:(id *)error;
- (id)isClientEnabledWithParameters:(id)parameters error:(id *)error;
- (id)isEnabledAndReturnError:(id *)error;
- (id)localDeviceAndReturnError:(id *)error;
- (id)localDeviceIDAndReturnError:(id *)error;
- (id)messagesWithParameters:(id)parameters error:(id *)error;
- (id)pdrPairingIDWithParameters:(id)parameters error:(id *)error;
- (id)pushTokenWithParameters:(id)parameters error:(id *)error;
- (id)recordVersionsWithParameters:(id)parameters error:(id *)error;
- (id)recordsWithParameters:(id)parameters error:(id *)error;
- (void)pairWithParameters:(id)parameters completion:(id)completion;
- (void)sendMessageExpectingResponseWithParameters:(id)parameters completion:(id)completion;
@end

@implementation Client

- (id)devicesAndReturnError:(id *)error
{
  v4 = sub_2304A5584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_230457B04();

  sub_230464B8C(&qword_281499F18, MEMORY[0x277D46968]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
  selfCopy = self;
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

- (id)isClientEnabledWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
  sub_23045369C();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499F08, MEMORY[0x277D46998]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)enableClientWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
  sub_230453B94();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499F08, MEMORY[0x277D46998]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)disableClientWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
  sub_2304540D0();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499F08, MEMORY[0x277D46998]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (BOOL)registerClientWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A5844();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&qword_281499E98, MEMORY[0x277D46A60]);
  sub_2304A5444();
  selfCopy = self;
  sub_23045460C(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)unregisterClientWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A5884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&qword_27DB54078, MEMORY[0x277D46A80]);
  sub_2304A5444();
  selfCopy = self;
  sub_230454BA4(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)clientDescriptorWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
  sub_2304552C0(v14);
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499EF0, MEMORY[0x277D469C8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)localDeviceIDAndReturnError:(id *)error
{
  v4 = sub_2304A5604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_230455B8C();

  sub_230464B8C(&qword_281499F00, MEMORY[0x277D469A8]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (BOOL)addRecordsWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  selfCopy = self;
  sub_230455F74(parametersCopy);

  return 1;
}

- (BOOL)removeRecordsWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A5824();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&qword_281499EA0, MEMORY[0x277D46A50]);
  sub_2304A5444();
  selfCopy = self;
  sub_230456474();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)recordsWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A5754();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&unk_281499EC8, MEMORY[0x277D46A00]);
  sub_2304A5444();
  selfCopy = self;
  v11 = sub_2304568D0(v9);
  (*(v6 + 8))(v9, v5);

  return v11;
}

- (id)recordVersionsWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
  sub_230456D5C();
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499EF8, MEMORY[0x277D469B8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)clientDefinedRecordIDsWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
  sub_230457268(v14);
  (*(v6 + 8))(v9, v5);

  sub_230464B8C(&qword_281499EE8, MEMORY[0x277D469D8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (BOOL)syncAndReturnError:(id *)error
{
  selfCopy = self;
  sub_2304578F0();

  return 1;
}

- (BOOL)sendMessageWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A57B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B8C(&qword_27DB53FC0, MEMORY[0x277D46A20]);
  sub_2304A5444();
  selfCopy = self;
  sub_230457EB4();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (void)sendMessageExpectingResponseWithParameters:(id)parameters completion:(id)completion
{
  v6 = sub_2304A57B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  sub_230464B8C(&qword_27DB53FC0, MEMORY[0x277D46A20]);
  sub_2304A5444();
  _Block_copy(v11);
  selfCopy = self;
  sub_230462ABC(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)messagesWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
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

- (id)localDeviceAndReturnError:(id *)error
{
  v4 = sub_2304A4CB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_230483E24(v8);

  sub_2304332D4(&qword_27DB54678, MEMORY[0x277D465B8]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (id)pushTokenWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
  sub_230484244();
  (*(v6 + 8))(v9, v5);

  sub_2304332D4(&qword_27DB54670, MEMORY[0x277D465A8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (id)pdrPairingIDWithParameters:(id)parameters error:(id *)error
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
  selfCopy = self;
  sub_230484768(v14);
  (*(v6 + 8))(v9, v5);

  sub_2304332D4(&unk_27DB54628, MEMORY[0x277D465C8]);
  v16 = sub_2304A5454();
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (void)pairWithParameters:(id)parameters completion:(id)completion
{
  v6 = sub_2304A4DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  sub_2304332D4(&qword_27DB54618, MEMORY[0x277D46648]);
  sub_2304A5444();
  _Block_copy(v11);
  selfCopy = self;
  sub_230489FB8(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (BOOL)unpairWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A4DF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB54608, MEMORY[0x277D46658]);
  sub_2304A5444();
  selfCopy = self;
  sub_230484EFC();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)unavailableWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A4D54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB54600, MEMORY[0x277D46608]);
  sub_2304A5444();
  selfCopy = self;
  sub_230485238();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)retryStuckRelationshipsAndReturnError:(id *)error
{
  selfCopy = self;
  sub_2304855BC();

  return 1;
}

- (id)isEnabledAndReturnError:(id *)error
{
  v4 = sub_2304A4C54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_230485784();

  sub_2304332D4(&qword_281499F98, MEMORY[0x277D46588]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (BOOL)setEnabledWithParameters:(id)parameters error:(id *)error
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
    selfCopy = self;
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
    if (error)
    {
      v17 = sub_2304A3F14();

      v18 = v17;
      *error = v17;
    }

    else
    {
    }
  }

  return Strong != 0;
}

- (BOOL)enableAllowListWithParameters:(id)parameters error:(id *)error
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
    selfCopy = self;
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
    if (error)
    {
      v18 = sub_2304A3F14();

      v19 = v18;
      *error = v18;
    }

    else
    {
    }
  }

  return Strong != 0;
}

- (BOOL)setAllowListWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A4E14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB545F0, MEMORY[0x277D46668]);
  sub_2304A5444();
  selfCopy = self;
  sub_230485F54();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)addIDToAllowListWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A4D34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB545D8, MEMORY[0x277D465F8]);
  sub_2304A5444();
  selfCopy = self;
  sub_230486244();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (BOOL)removeFromAllowListWithParameters:(id)parameters error:(id *)error
{
  v5 = sub_2304A4D34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304332D4(&qword_27DB545D8, MEMORY[0x277D465F8]);
  sub_2304A5444();
  selfCopy = self;
  sub_2304866B8();
  (*(v6 + 8))(v9, v5);

  return 1;
}

- (id)isAllowListEnabledAndReturnError:(id *)error
{
  v4 = sub_2304A4CF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_230486B0C();

  sub_2304332D4(&qword_27DB545D0, MEMORY[0x277D465D8]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

- (id)allowListAndReturnError:(id *)error
{
  v4 = sub_2304A4C74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_230486DE8();

  sub_2304332D4(&qword_27DB545C0, MEMORY[0x277D46598]);
  v10 = sub_2304A5454();
  (*(v5 + 8))(v8, v4);

  return v10;
}

@end