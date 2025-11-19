@interface PGImportantEntitiesChildrenProcessor
+ (void)processUserChildrenInGraph:(id)a3 progressBlock:(id)a4 withProcessInferredChildNodeClosure:(id)a5;
- (PGImportantEntitiesChildrenProcessor)init;
@end

@implementation PGImportantEntitiesChildrenProcessor

+ (void)processUserChildrenInGraph:(id)a3 progressBlock:(id)a4 withProcessInferredChildNodeClosure:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v11[2] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  _s11PhotosGraph34ImportantEntitiesChildrenProcessorC011processUserE002inB013progressBlock35withProcessInferredChildNodeClosureySo7PGGraphC_ySd_Spy10ObjectiveC8ObjCBoolVGSgtXEySo0r6PersonP0CctFZ_0(v10, sub_22F25079C, v11, sub_22F2507A4, v9);

  _Block_release(v7);
}

- (PGImportantEntitiesChildrenProcessor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImportantEntitiesChildrenProcessor();
  return [(PGImportantEntitiesChildrenProcessor *)&v3 init];
}

@end