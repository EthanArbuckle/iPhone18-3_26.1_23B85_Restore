@interface VUIndexCoreDataStore.UniqueIdentifierMergePolicy
- (BOOL)resolveConstraintConflicts:(id)conflicts error:(id *)error;
- (_TtCC19VisualUnderstanding20VUIndexCoreDataStoreP33_336226E85413B796FA6E8D2AB0466B9D27UniqueIdentifierMergePolicy)initWithMergeType:(unint64_t)type;
@end

@implementation VUIndexCoreDataStore.UniqueIdentifierMergePolicy

- (BOOL)resolveConstraintConflicts:(id)conflicts error:(id *)error
{
  sub_1D2174E10(0, &unk_1EC6D2D30);
  v5 = sub_1D2250AFC();
  selfCopy = self;
  sub_1D221D7DC(v5, v7);

  return 1;
}

- (_TtCC19VisualUnderstanding20VUIndexCoreDataStoreP33_336226E85413B796FA6E8D2AB0466B9D27UniqueIdentifierMergePolicy)initWithMergeType:(unint64_t)type
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end