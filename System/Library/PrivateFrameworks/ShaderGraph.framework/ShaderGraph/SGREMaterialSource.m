@interface SGREMaterialSource
- (BOOL)containsPreReleaseNodes;
- (NSArray)uniforms;
- (NSData)SHA512Hash;
- (NSDictionary)textures;
- (NSString)name;
- (SGREMaterialSource)init;
- (int64_t)hash;
- (void)setContainsPreReleaseNodes:(BOOL)a3;
- (void)setTextures:(id)a3;
- (void)setUniforms:(id)a3;
@end

@implementation SGREMaterialSource

- (NSString)name
{
  v2 = (*(self + OBJC_IVAR___SGREMaterialSource_graph) + OBJC_IVAR___SGGraph_name);
  v3 = *v2;
  v4 = v2[1];

  v5 = MEMORY[0x266771450](v3, v4);

  return v5;
}

- (NSArray)uniforms
{
  v3 = OBJC_IVAR___SGREMaterialSource_uniforms;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for SGInput();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setUniforms:(id)a3
{
  type metadata accessor for SGInput();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___SGREMaterialSource_uniforms;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSDictionary)textures
{
  v3 = OBJC_IVAR___SGREMaterialSource_textures;
  swift_beginAccess();
  v4 = *(self + v3);

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setTextures:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___SGREMaterialSource_textures;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)containsPreReleaseNodes
{
  v3 = OBJC_IVAR___SGREMaterialSource_containsPreReleaseNodes;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContainsPreReleaseNodes:(BOOL)a3
{
  v5 = OBJC_IVAR___SGREMaterialSource_containsPreReleaseNodes;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSData)SHA512Hash
{
  v3 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
  v4 = type metadata accessor for SHA512Digest();
  v12 = v4;
  v13 = lazy protocol witness table accessor for type SHA512Digest and conformance SHA512Digest();
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

- (int64_t)hash
{
  Hasher.init()();
  v3 = self;
  SHA512Digest.hash(into:)();
  v4 = Hasher.finalize()();

  return v4;
}

- (SGREMaterialSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end