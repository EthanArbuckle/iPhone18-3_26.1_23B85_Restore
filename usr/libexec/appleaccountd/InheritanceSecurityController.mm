@interface InheritanceSecurityController
- (void)checkInheritanceKeyForBeneficiaryID:(id)a3 completion:(id)a4;
- (void)createInheritanceAccessKeyForContact:(id)a3 completion:(id)a4;
- (void)preflightInheritanceRecoveryForBeneficiaryID:(id)a3 accessKey:(id)a4 completion:(id)a5;
- (void)recreateInheritanceKeyWithAccessKey:(id)a3 completion:(id)a4;
- (void)removeInheritanceAccessKeyForBeneficiaryID:(id)a3 completion:(id)a4;
@end

@implementation InheritanceSecurityController

- (void)createInheritanceAccessKeyForContact:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();

  InheritanceSecurityController.createAccessKey(for:completion:)(a3, sub_100213EA4, v6);
  swift_unknownObjectRelease();
}

- (void)recreateInheritanceKeyWithAccessKey:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;

  sub_1002129CC(v7, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)removeInheritanceAccessKeyForBeneficiaryID:(id)a3 completion:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  InheritanceSecurityController.removeAccessKey(for:completion:)(v9, sub_10005B8F8, v11);

  (*(v6 + 8))(v9, v5);
}

- (void)preflightInheritanceRecoveryForBeneficiaryID:(id)a3 accessKey:(id)a4 completion:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);
  v14 = a4;

  sub_100213084(v12, v14, self, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)checkInheritanceKeyForBeneficiaryID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);

  sub_100213728(v10, self, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

@end