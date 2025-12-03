@interface SLDProcessVerifier
+ (id)tagDataFromString:(id)string;
- (SLDProcessVerifier)init;
- (id)signProcess:(id)process tag:(id)tag error:(id *)error;
- (id)verifyData:(id)data tag:(id)tag error:(id *)error;
@end

@implementation SLDProcessVerifier

+ (id)tagDataFromString:(id)string
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (string && (static String._unconditionallyBridgeFromObjectiveC(_:)(), static String.Encoding.utf8.getter(), v9 = String.data(using:allowLossyConversion:)(), v11 = v10, , (*(v5 + 8))(v8, v4), v11 >> 60 != 15))
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

- (id)signProcess:(id)process tag:(id)tag error:(id *)error
{
  if (tag)
  {
    processCopy = process;
    selfCopy = self;
    tagCopy = tag;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    processCopy2 = process;
    selfCopy2 = self;
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v16 = ProcessVerifier.sign(process:tag:)(process, v11, v13);
  v18 = v17;

  outlined consume of Data?(v11, v13);
  v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v16, v18);

  return v19.super.isa;
}

- (id)verifyData:(id)data tag:(id)tag error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  tagCopy = tag;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (tagCopy)
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