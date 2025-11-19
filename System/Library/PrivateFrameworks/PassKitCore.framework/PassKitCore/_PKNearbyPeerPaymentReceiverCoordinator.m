@interface _PKNearbyPeerPaymentReceiverCoordinator
- (_PKNearbyPeerPaymentReceiverCoordinator)init;
- (_PKNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)a3;
- (void)nearbyReceiverRequiresConfirmationWithContactID:(NSString *)a3 completionHandler:(id)a4;
- (void)recipientMetadataWithAppearanceData:(PKPeerPaymentProfileAppearanceData *)a3 nonce:(NSString *)a4 completionHandler:(id)a5;
- (void)validateTransactionWithResult:(NSData *)a3 completionHandler:(id)a4;
@end

@implementation _PKNearbyPeerPaymentReceiverCoordinator

- (_PKNearbyPeerPaymentReceiverCoordinator)initWithSenderMetadata:(id)a3
{
  v4 = a3;
  v5 = sub_1ADB05D70();
  v7 = v6;

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator_peerPaymentAccount;
    v11 = [(_PKNearbyPeerPaymentReceiverCoordinator *)result account];

    *(&self->super.isa + v10) = v11;
    *(&self->super.isa + OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator____lazy_storage___amountFormatter) = 0;
    v12 = (self + OBJC_IVAR____PKNearbyPeerPaymentReceiverCoordinator_senderMetadata);
    *v12 = v5;
    v12[1] = v7;
    v13.receiver = self;
    v13.super_class = type metadata accessor for NearbyPeerPaymentReceiverCoordinator();
    return [(_PKNearbyPeerPaymentReceiverCoordinator *)&v13 init];
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)nearbyReceiverRequiresConfirmationWithContactID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1ADB06720();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1ADB83ED0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1ADB83ED8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1AD4BBDF0(0, 0, v9, &unk_1ADB83EE0, v14);
}

- (void)recipientMetadataWithAppearanceData:(PKPeerPaymentProfileAppearanceData *)a3 nonce:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1ADB06720();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1ADB83EB0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1ADB83EB8;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1AD4BBDF0(0, 0, v11, &unk_1ADB83EC0, v16);
}

- (void)validateTransactionWithResult:(NSData *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1ADB06720();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1ADB83E68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1ADB78B48;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1AD4BBDF0(0, 0, v9, &unk_1ADB78B50, v14);
}

- (_PKNearbyPeerPaymentReceiverCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end