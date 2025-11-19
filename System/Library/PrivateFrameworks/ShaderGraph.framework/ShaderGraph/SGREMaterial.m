@interface SGREMaterial
- (BOOL)isEqual:(id)a3;
- (NSArray)functionConstantInputs;
- (NSData)SHA512Hash;
- (NSDictionary)textures;
- (NSString)debugHash;
- (NSString)name;
- (SGREMaterial)init;
- (void)setFunctionConstantInputs:(id)a3;
- (void)setTextures:(id)a3;
@end

@implementation SGREMaterial

- (NSString)name
{
  v2 = (*(self + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
  v3 = *v2;
  v4 = v2[1];

  v5 = MEMORY[0x266771450](v3, v4);

  return v5;
}

- (NSArray)functionConstantInputs
{
  v3 = OBJC_IVAR___SGREMaterial_functionConstantInputs;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for SGInput();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setFunctionConstantInputs:(id)a3
{
  type metadata accessor for SGInput();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___SGREMaterial_functionConstantInputs;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSDictionary)textures
{
  v3 = OBJC_IVAR___SGREMaterial_textures;
  swift_beginAccess();
  v4 = *(self + v3);

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setTextures:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___SGREMaterial_textures;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSData)SHA512Hash
{
  v3 = OBJC_IVAR___SGREMaterial_edgeDigest;
  v4 = type metadata accessor for SHA512Digest();
  v12 = v4;
  v13 = lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest(&lazy protocol witness table cache variable for type SHA512Digest and conformance SHA512Digest, MEMORY[0x277CC52E8]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, self + v3, v4);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = self;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v9, v10);

  return v7.super.isa;
}

- (NSString)debugHash
{
  v2 = self;
  v3 = SHA512Digest.description.getter();
  v5 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x2667714E0](v5, v7, v9, v11);
  v14 = v13;

  MEMORY[0x266771550](95, 0xE100000000000000);

  v15 = SHA512Digest.description.getter();
  v17 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x2667714E0](v17, v19, v21, v23);
  v26 = v25;

  MEMORY[0x266771550](v24, v26);

  v27 = MEMORY[0x266771450](v12, v14);

  return v27;
}

- (SGREMaterial)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SGREMaterial.isEqual(_:)(v8);

  outlined destroy of [Input](v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

@end