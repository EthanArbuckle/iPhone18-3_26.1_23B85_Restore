@interface SLDProcessVerifier
+ (id)tagDataFromString:(id)a3;
- (SLDProcessVerifier)init;
- (id)signProcess:(id)a3 tag:(id)a4 error:(id *)a5;
- (id)verifyData:(id)a3 tag:(id)a4 error:(id *)a5;
@end

@implementation SLDProcessVerifier

+ (id)tagDataFromString:(id)a3
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 && (static String._unconditionallyBridgeFromObjectiveC(_:)(), static String.Encoding.utf8.getter(), v9 = String.data(using:allowLossyConversion:)(), v11 = v10, , (*(v5 + 8))(v8, v4), v11 >> 60 != 15))
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v9, v11);
    v12 = isa;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)signProcess:(id)a3 tag:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v8 = a3;
    v9 = self;
    v10 = a4;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v14 = a3;
    v15 = self;
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v16 = ProcessVerifier.sign(process:tag:)(a3, v11, v13);
  v18 = v17;

  outlined consume of Data?(v11, v13);
  v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v16, v18);

  return v19.super.isa;
}

- (id)verifyData:(id)a3 tag:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v9)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v16 = ProcessVerifier.verify(data:tag:)(v10, v12, v13, v15);

  outlined consume of Data?(v13, v15);
  outlined consume of Data._Representation(v10, v12);

  return v16;
}

- (SLDProcessVerifier)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting) = 0;
  v4 = OBJC_IVAR___SLDProcessVerifier____lazy_storage___staticTestingKey;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SLDProcessVerifier *)&v7 init];
}

@end