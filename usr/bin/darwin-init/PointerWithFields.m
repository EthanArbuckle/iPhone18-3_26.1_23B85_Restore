@interface PointerWithFields
- (NSString)description;
@end

@implementation PointerWithFields

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for PointerWithFields();
  v2 = v13.receiver;
  v3 = [(KnoxPointer *)&v13 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v14 = v4;
  v15 = v6;
  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v10._countAndFlagsBits = (*((swift_isaMask & *v2) + 0x190))(v8, v9);
  String.append(_:)(v10);

  v11 = String._bridgeToObjectiveC()();

  return v11;
}

@end