@interface PXMemoryChangeRequestAnnotator
+ (void)setMemoryChangeRequest:(id)a3 userCreatedFromSourceObject:(id)a4;
- (PXMemoryChangeRequestAnnotator)init;
@end

@implementation PXMemoryChangeRequestAnnotator

+ (void)setMemoryChangeRequest:(id)a3 userCreatedFromSourceObject:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  _s12PhotosUICore28MemoryChangeRequestAnnotatorC03setcdE0_27userCreatedFromSourceObjectySo08PHMemorydE0C_yXlSgtFZ_0(v5, a4);

  swift_unknownObjectRelease();
}

- (PXMemoryChangeRequestAnnotator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end