@interface RPPairingBonjourResolveResponse
- (NSData)serverPublicKey;
- (NSUUID)bonjourServiceID;
- (_TtC7Rapport31RPPairingBonjourResolveResponse)init;
- (_TtC7Rapport31RPPairingBonjourResolveResponse)initWithServerPublicKey:(id)key bonjourServiceID:(id)d;
@end

@implementation RPPairingBonjourResolveResponse

- (NSData)serverPublicKey
{
  v2 = *(self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey);
  v3 = *(self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey + 8);
  sub_1B6F01F4C(v2, v3);
  v4 = sub_1B6F227C8();
  sub_1B6F01FA0(v2, v3);

  return v4;
}

- (NSUUID)bonjourServiceID
{
  v3 = sub_1B6F22878();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_bonjourServiceID, v3);
  v8 = sub_1B6F22858();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (_TtC7Rapport31RPPairingBonjourResolveResponse)initWithServerPublicKey:(id)key bonjourServiceID:(id)d
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B6F22878();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  keyCopy = key;
  dCopy = d;
  v15 = sub_1B6F227E8();
  v17 = v16;

  sub_1B6F22868();
  v18 = (self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey);
  *v18 = v15;
  v18[1] = v17;
  (*(v9 + 16))(self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_bonjourServiceID, v12, v8);
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(RPPairingBonjourResolveResponse *)&v21 init];
  (*(v9 + 8))(v12, v8);
  return v19;
}

- (_TtC7Rapport31RPPairingBonjourResolveResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end