@interface ICQTaskLimiters
- (_TtC11iCloudQuota15ICQTaskLimiters)init;
- (void)performClosureNoParamsWithIdentifier:(id)a3 task:(id)a4 completion:(id)a5;
- (void)performWithIdentifier:(id)a3 task:(id)a4 completion:(id)a5;
@end

@implementation ICQTaskLimiters

- (void)performClosureNoParamsWithIdentifier:(id)a3 task:(id)a4 completion:(id)a5
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v21 - v9;
  v11 = _Block_copy(a4);
  v12 = _Block_copy(a5);
  v13 = sub_2755EC98C();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = sub_2755ECA9C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = self;
  v19[5] = v13;
  v19[6] = v15;
  v19[7] = sub_2755768C0;
  v19[8] = v16;
  v19[9] = sub_275579318;
  v19[10] = v17;
  v20 = self;
  sub_2755CF6F4(0, 0, v10, &unk_2755F36E8, v19);
}

- (void)performWithIdentifier:(id)a3 task:(id)a4 completion:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(a4);
  v13 = _Block_copy(a5);
  v14 = sub_2755EC98C();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = sub_2755ECA9C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = v14;
  v20[6] = v16;
  v20[7] = sub_275577C98;
  v20[8] = v17;
  v20[9] = sub_275578EB0;
  v20[10] = v18;
  v21 = self;
  sub_2755CEE70(0, 0, v11, &unk_2755F36F0, v20);
}

- (_TtC11iCloudQuota15ICQTaskLimiters)init
{
  v3 = OBJC_IVAR____TtC11iCloudQuota15ICQTaskLimiters_taskLimiters;
  type metadata accessor for TaskLimiters();
  *(&self->super.isa + v3) = sub_2755D0D4C();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ICQTaskLimiters();
  return [(ICQTaskLimiters *)&v5 init];
}

@end