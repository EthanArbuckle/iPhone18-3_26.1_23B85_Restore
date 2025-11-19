@interface XpcQuotaClient
- (_TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient)init;
- (id)failsafeDelayedOfferJsonContext;
- (id)parseDelayedOffer:(id)a3;
- (id)parseDelayedOfferFromJson:(id)a3;
- (id)parseNotification:(id)a3;
- (void)clearNotificationState:(id)a3;
- (void)isNotificationPending:(id)a3;
- (void)logFailsafeEvent:(id)a3;
- (void)newOffer:(id)a3 andCallback:(id)a4;
@end

@implementation XpcQuotaClient

- (_TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient)init
{
  v2 = sub_275A3D324();
  swift_allocObject();
  v3 = sub_275A3D314();
  v9[3] = v2;
  v9[4] = MEMORY[0x277D7F518];
  v9[0] = v3;
  v4 = type metadata accessor for XpcQuotaClient();
  v5 = objc_allocWithZone(v4);
  sub_275A2E8B8(v9, v5 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = [(XpcQuotaClient *)&v8 init];
  __swift_destroy_boxed_opaque_existential_1(v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (id)parseNotification:(id)a3
{
  v4 = sub_275A3D8F4();
  v5 = self;
  v6 = sub_275A3C5A4(v4);

  return v6;
}

- (void)newOffer:(id)a3 andCallback:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_275A3A5F8(v8, sub_275A3D0B0, v7);
}

- (void)isNotificationPending:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = sub_275A3D364();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = qword_2815AE358;
  v13 = self;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_275A3D894();
  __swift_project_value_buffer(v14, qword_2815AE360);
  sub_275A3D864();
  v15 = swift_allocObject();
  v15[2] = sub_275A3D2A0;
  v15[3] = v11;
  v15[4] = ObjectType;
  sub_275A3D124(&qword_2815AE4D0, MEMORY[0x277D7F530]);

  sub_275A3D304();
  v16 = *&v13->protoClient[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient + 16];
  v17 = *&v13->protoClient[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient + 24];
  __swift_project_boxed_opaque_existential_1((&v13->super.super.isa + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient), v16);
  (*(v17 + 8))(v9, sub_275A3D0A4, v15, v16, v17);

  sub_275A3D23C(v9, MEMORY[0x277D7F530]);
}

- (void)clearNotificationState:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = sub_275A3D364();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_275A3D124(&qword_2815AE4D0, MEMORY[0x277D7F530]);
  v12 = self;
  sub_275A3D304();
  v13 = *&v12->protoClient[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient + 16];
  v14 = *&v12->protoClient[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient + 24];
  __swift_project_boxed_opaque_existential_1((&v12->super.super.isa + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient), v13);
  v15 = swift_allocObject();
  v15[2] = sub_275A331CC;
  v15[3] = v11;
  v15[4] = ObjectType;
  v16 = *(v14 + 8);

  v16(v9, sub_275A3D028, v15, v13, v14);

  sub_275A3D23C(v9, MEMORY[0x277D7F530]);
}

- (id)parseDelayedOffer:(id)a3
{
  if (qword_2815AE358 != -1)
  {
    swift_once();
  }

  v3 = sub_275A3D894();
  __swift_project_value_buffer(v3, qword_2815AE360);
  sub_275A3D884();

  return 0;
}

- (id)parseDelayedOfferFromJson:(id)a3
{
  v3 = sub_275A3D934();
  v5 = sub_275A3CA20(v3, v4);

  return v5;
}

- (id)failsafeDelayedOfferJsonContext
{
  sub_275A3D6F4();
  v2 = sub_275A3D924();

  return v2;
}

- (void)logFailsafeEvent:(id)a3
{
  v3 = sub_275A3D934();
  v5 = v4;
  if (qword_2815AE348 != -1)
  {
    swift_once();
  }

  sub_275A2E8B8(qword_2815AE350 + 16, v14);
  type metadata accessor for FailsafeClientLibEvent();
  swift_allocObject();
  sub_275A2E8B8(v14, v13);
  v6 = sub_275A3D504();
  v8 = *v6;
  v7 = v6[1];
  v12[0] = v8;
  v12[1] = v7;

  MEMORY[0x277C860D0](0x6C746E65696C632ELL, 0xEB000000002E6269);
  MEMORY[0x277C860D0](0x656661736C696166, 0xE800000000000000);
  sub_275A2E8B8(v13, v12);
  v9 = sub_275A3D4A4();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = *(*v9 + 192);

  v10(0x656661736C696166, 0xED0000746E657645, v3, v5);

  v11 = __swift_destroy_boxed_opaque_existential_1(v14);
  (*(*v9 + 200))(v11);
}

@end