@interface XPCSystem.SharedActorKey:
- (uint64_t)DistributedActor;
- (unint64_t)DistributedActor;
@end

@implementation XPCSystem.SharedActorKey:

- (unint64_t)DistributedActor
{
  v4 = *result;
  v5 = 0uLL;
  if (*(*result + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(*a2, *(a2 + 8), *(a2 + 16));
    v5 = 0uLL;
    if (v6)
    {
      v7 = *(*(v4 + 56) + 16 * result);
      result = swift_unknownObjectRetain();
      v5 = v7;
    }
  }

  *a3 = v5;
  return result;
}

- (uint64_t)DistributedActor
{
  v3 = *a3;
  v4 = *(a3 + 8);
  v5 = *self;
  v6 = self[1];
  v7 = *(a3 + 16);
  outlined copy of XPCSystem.SharedActorKey(*a3, v4, v7);
  v8 = swift_unknownObjectRetain();
  return specialized Dictionary.subscript.setter(v8, v6, v3, v4, v7);
}

@end