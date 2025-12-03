@interface InheritanceSecurityController
- (void)checkInheritanceKeyForBeneficiaryID:(id)d completion:(id)completion;
- (void)createInheritanceAccessKeyForContact:(id)contact completion:(id)completion;
- (void)preflightInheritanceRecoveryForBeneficiaryID:(id)d accessKey:(id)key completion:(id)completion;
- (void)recreateInheritanceKeyWithAccessKey:(id)key completion:(id)completion;
- (void)removeInheritanceAccessKeyForBeneficiaryID:(id)d completion:(id)completion;
@end

@implementation InheritanceSecurityController

- (void)createInheritanceAccessKeyForContact:(id)contact completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();

  InheritanceSecurityController.createAccessKey(for:completion:)(contact, sub_100213EA4, v6);
  swift_unknownObjectRelease();
}

- (void)recreateInheritanceKeyWithAccessKey:(id)key completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  keyCopy = key;

  sub_1002129CC(keyCopy, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)removeInheritanceAccessKeyForBeneficiaryID:(id)d completion:(id)completion
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  InheritanceSecurityController.removeAccessKey(for:completion:)(v9, sub_10005B8F8, v11);

  (*(v6 + 8))(v9, v5);
}

- (void)preflightInheritanceRecoveryForBeneficiaryID:(id)d accessKey:(id)key completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  keyCopy = key;

  sub_100213084(v12, keyCopy, self, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)checkInheritanceKeyForBeneficiaryID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);

  sub_100213728(v10, self, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

@end