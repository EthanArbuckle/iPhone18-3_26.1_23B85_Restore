@interface PGImportantEntitiesPetProcessor
+ (void)processUserPetsInGraph:(id)a3 progressBlock:(id)a4 withProcessInferredPetNodeClosure:(id)a5;
- (PGImportantEntitiesPetProcessor)init;
@end

@implementation PGImportantEntitiesPetProcessor

+ (void)processUserPetsInGraph:(id)a3 progressBlock:(id)a4 withProcessInferredPetNodeClosure:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v11[2] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  _s11PhotosGraph29ImportantEntitiesPetProcessorC15processUserPets02inB013progressBlock019withProcessInferredE11NodeClosureySo7PGGraphC_ySd_Spy10ObjectiveC8ObjCBoolVGSgtXEySo0reP0CctFZ_0(v10, sub_22F2507A4, v11, sub_22F2507A4, v9);

  _Block_release(v7);
}

- (PGImportantEntitiesPetProcessor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImportantEntitiesPetProcessor();
  return [(PGImportantEntitiesPetProcessor *)&v3 init];
}

@end