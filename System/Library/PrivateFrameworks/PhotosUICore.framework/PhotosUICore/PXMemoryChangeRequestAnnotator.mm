@interface PXMemoryChangeRequestAnnotator
+ (void)setMemoryChangeRequest:(id)request userCreatedFromSourceObject:(id)object;
- (PXMemoryChangeRequestAnnotator)init;
@end

@implementation PXMemoryChangeRequestAnnotator

+ (void)setMemoryChangeRequest:(id)request userCreatedFromSourceObject:(id)object
{
  requestCopy = request;
  swift_unknownObjectRetain();
  _s12PhotosUICore28MemoryChangeRequestAnnotatorC03setcdE0_27userCreatedFromSourceObjectySo08PHMemorydE0C_yXlSgtFZ_0(requestCopy, object);

  swift_unknownObjectRelease();
}

- (PXMemoryChangeRequestAnnotator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end