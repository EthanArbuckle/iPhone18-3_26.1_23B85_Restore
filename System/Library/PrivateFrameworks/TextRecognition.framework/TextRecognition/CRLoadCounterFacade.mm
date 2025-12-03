@interface CRLoadCounterFacade
+ (void)recordLoad:(id)load owner:(id)owner;
+ (void)recordUnload:(id)unload owner:(id)owner;
- (CRLoadCounterFacade)init;
@end

@implementation CRLoadCounterFacade

+ (void)recordLoad:(id)load owner:(id)owner
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v13 - v7;
  swift_unknownObjectRetain();
  ownerCopy = owner;
  sub_1B42A0348();
  swift_unknownObjectRelease();
  if (ownerCopy)
  {
    sub_1B429F6B8();

    v10 = sub_1B429F6D8();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B429F6D8();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  __swift_project_boxed_opaque_existential_0(v13, v13[3]);
  DynamicType = swift_getDynamicType();
  _s15TextRecognition13CRLoadCounterV6record4load5owneryypXp_10Foundation4UUIDVSgtFZ_0(DynamicType, v8);
  sub_1B40E26E8(v8, &unk_1EB884870);
  __swift_destroy_boxed_opaque_existential_0(v13);
}

+ (void)recordUnload:(id)unload owner:(id)owner
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v12 - v7;
  swift_unknownObjectRetain();
  ownerCopy = owner;
  sub_1B42A0348();
  swift_unknownObjectRelease();
  if (ownerCopy)
  {
    sub_1B429F6B8();

    v10 = sub_1B429F6D8();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B429F6D8();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  sub_1B4130550(v12, v8);
  sub_1B40E26E8(v8, &unk_1EB884870);
  __swift_destroy_boxed_opaque_existential_0(v12);
}

- (CRLoadCounterFacade)init
{
  v3.receiver = self;
  v3.super_class = CRLoadCounterFacade;
  return [(CRLoadCounterFacade *)&v3 init];
}

@end