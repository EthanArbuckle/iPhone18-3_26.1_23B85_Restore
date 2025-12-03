@interface PGImportantEntitiesChildrenProcessor
+ (void)processUserChildrenInGraph:(id)graph progressBlock:(id)block withProcessInferredChildNodeClosure:(id)closure;
- (PGImportantEntitiesChildrenProcessor)init;
@end

@implementation PGImportantEntitiesChildrenProcessor

+ (void)processUserChildrenInGraph:(id)graph progressBlock:(id)block withProcessInferredChildNodeClosure:(id)closure
{
  v7 = _Block_copy(block);
  v8 = _Block_copy(closure);
  v11[2] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  graphCopy = graph;
  _s11PhotosGraph34ImportantEntitiesChildrenProcessorC011processUserE002inB013progressBlock35withProcessInferredChildNodeClosureySo7PGGraphC_ySd_Spy10ObjectiveC8ObjCBoolVGSgtXEySo0r6PersonP0CctFZ_0(graphCopy, sub_22F25079C, v11, sub_22F2507A4, v9);

  _Block_release(v7);
}

- (PGImportantEntitiesChildrenProcessor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImportantEntitiesChildrenProcessor();
  return [(PGImportantEntitiesChildrenProcessor *)&v3 init];
}

@end