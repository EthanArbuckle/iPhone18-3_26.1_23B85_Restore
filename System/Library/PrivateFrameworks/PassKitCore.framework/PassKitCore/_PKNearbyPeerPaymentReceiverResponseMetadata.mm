@interface _PKNearbyPeerPaymentReceiverResponseMetadata
+ (void)receiverDataWithNonce:(id)nonce nearbyMetadata:(id)metadata appearanceData:(id)data completion:(id)completion;
- (NSData)serializedData;
- (_PKNearbyPeerPaymentReceiverResponseMetadata)init;
@end

@implementation _PKNearbyPeerPaymentReceiverResponseMetadata

+ (void)receiverDataWithNonce:(id)nonce nearbyMetadata:(id)metadata appearanceData:(id)data completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = _Block_copy(completion);
  v13 = sub_1ADB063B0();
  v15 = v14;
  metadataCopy = metadata;
  dataCopy = data;
  v18 = sub_1ADB05D70();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v12;
  v22 = sub_1ADB06720();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v13;
  v23[5] = v15;
  v23[6] = v18;
  v23[7] = v20;
  v23[8] = dataCopy;
  v23[9] = sub_1AD452788;
  v23[10] = v21;
  sub_1AD457038(0, 0, v11, &unk_1ADB858E8, v23);
}

- (NSData)serializedData
{
  swift_getObjectType();
  sub_1ADB059D0();
  swift_allocObject();
  selfCopy = self;
  sub_1ADB059C0();
  sub_1AD4F75FC(&qword_1EB59BAA0, v4, type metadata accessor for NearbyPeerPaymentReceiverResponseMetadata);
  v5 = sub_1ADB059B0();
  v7 = v6;

  v8 = sub_1ADB05D50();
  sub_1AD3C757C(v5, v7);

  return v8;
}

- (_PKNearbyPeerPaymentReceiverResponseMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end