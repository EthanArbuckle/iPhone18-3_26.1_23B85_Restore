@interface PFDispatchingFairPlayInvalidationManaging
+ (id)invalidationManager:(id)manager receivingCallbacksOnQueue:(id)queue;
- (PFDispatchingFairPlayInvalidationManaging)init;
- (id)removeKeyFor:(id)for;
- (void)invalidateFairPlayKeyFor:(int64_t)for completion:(id)completion;
- (void)markAllFairPlayKeysForInvalidationWithShouldRemove:(BOOL)remove completion:(id)completion;
- (void)removalAllFairPlayKeysWithCompletion:(id)completion;
- (void)removeKeyFor:(int64_t)for completion:(id)completion;
@end

@implementation PFDispatchingFairPlayInvalidationManaging

+ (id)invalidationManager:(id)manager receivingCallbacksOnQueue:(id)queue
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  *&v7[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance] = manager;
  *&v7[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue] = queue;
  v11.receiver = v7;
  v11.super_class = ObjCClassMetadata;
  swift_unknownObjectRetain();
  queueCopy = queue;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (void)invalidateFairPlayKeyFor:(int64_t)for completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D8E8B5C0;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  DispatchingFairPlayInvalidationManaging.invalidateFairPlayKey(for:completion:)(for, v6, v7);
  sub_1D8D15664(v6);
}

- (void)markAllFairPlayKeysForInvalidationWithShouldRemove:(BOOL)remove completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D8E8B5C0;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  DispatchingFairPlayInvalidationManaging.markAllFairPlayKeysForInvalidation(shouldRemove:completion:)(remove, v6, v7);
  sub_1D8D15664(v6);
}

- (void)removeKeyFor:(int64_t)for completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  DispatchingFairPlayInvalidationManaging.removeKey(for:completion:)(for, sub_1D8E8B5C0, v7);
}

- (id)removeKeyFor:(id)for
{
  removeKeyFor_ = [*(&self->super.isa + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance) removeKeyFor_];
  if (removeKeyFor_)
  {
    v4 = removeKeyFor_;
    v5 = sub_1D9176A5C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removalAllFairPlayKeysWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D8E899BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  DispatchingFairPlayInvalidationManaging.removalAllFairPlayKeys(completion:)(v7, v6);
  sub_1D8D15664(v7);
}

- (PFDispatchingFairPlayInvalidationManaging)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end