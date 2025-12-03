@interface InheritanceSecurityManager
- (void)createInheritanceAccessKeyForContact:(id)contact completion:(id)completion;
- (void)preflightInheritanceRecoveryForBeneficiaryID:(id)d accessKey:(id)key completion:(id)completion;
- (void)recreateInheritanceKeyWithAccessKey:(id)key completion:(id)completion;
@end

@implementation InheritanceSecurityManager

- (void)createInheritanceAccessKeyForContact:(id)contact completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->controller;
  v10[4] = sub_100213EA4;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100015858;
  v10[3] = &unk_1003AFFE0;
  v9 = _Block_copy(v10);
  swift_unknownObjectRetain();

  [v8 createInheritanceAccessKeyForContact:contact completion:v9];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)preflightInheritanceRecoveryForBeneficiaryID:(id)d accessKey:(id)key completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *self->controller;
  keyCopy = key;

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = sub_10005B8F8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003AFF40;
  v18 = _Block_copy(aBlock);

  [v15 preflightInheritanceRecoveryForBeneficiaryID:isa accessKey:keyCopy completion:v18];
  _Block_release(v18);

  (*(v9 + 8))(v12, v8);
}

- (void)recreateInheritanceKeyWithAccessKey:(id)key completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->controller;
  v11[4] = sub_100213EA4;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100015858;
  v11[3] = &unk_1003AFEA0;
  v9 = _Block_copy(v11);
  keyCopy = key;

  [v8 recreateInheritanceKeyWithAccessKey:keyCopy completion:v9];

  _Block_release(v9);
}

@end