@interface PGImportantEntitiesPetProcessor
+ (void)processUserPetsInGraph:(id)graph progressBlock:(id)block withProcessInferredPetNodeClosure:(id)closure;
- (PGImportantEntitiesPetProcessor)init;
@end

@implementation PGImportantEntitiesPetProcessor

+ (void)processUserPetsInGraph:(id)graph progressBlock:(id)block withProcessInferredPetNodeClosure:(id)closure
{
  v7 = _Block_copy(block);
  v8 = _Block_copy(closure);
  v11[2] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  graphCopy = graph;
  _s11PhotosGraph29ImportantEntitiesPetProcessorC15processUserPets02inB013progressBlock019withProcessInferredE11NodeClosureySo7PGGraphC_ySd_Spy10ObjectiveC8ObjCBoolVGSgtXEySo0reP0CctFZ_0(graphCopy, sub_22F2507A4, v11, sub_22F2507A4, v9);

  _Block_release(v7);
}

- (PGImportantEntitiesPetProcessor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImportantEntitiesPetProcessor();
  return [(PGImportantEntitiesPetProcessor *)&v3 init];
}

@end