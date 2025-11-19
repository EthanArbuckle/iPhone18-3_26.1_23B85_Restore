@interface ExternalProvider
+ (id)deserializeFromPersistence:(id)a3;
- (id)serialize;
@end

@implementation ExternalProvider

+ (id)deserializeFromPersistence:(id)a3
{
  v3 = a3;
  static ExternalProvider.deserialize(from:)(v3, v12);

  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1Tm_3(v12, v13);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1Tm_23(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)serialize
{

  v2 = ExternalProvider.serialize()();

  return v2;
}

@end