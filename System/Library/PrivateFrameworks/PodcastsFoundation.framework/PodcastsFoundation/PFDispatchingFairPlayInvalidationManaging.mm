@interface PFDispatchingFairPlayInvalidationManaging
+ (id)invalidationManager:(id)a3 receivingCallbacksOnQueue:(id)a4;
- (PFDispatchingFairPlayInvalidationManaging)init;
- (id)removeKeyFor:(id)a3;
- (void)invalidateFairPlayKeyFor:(int64_t)a3 completion:(id)a4;
- (void)markAllFairPlayKeysForInvalidationWithShouldRemove:(BOOL)a3 completion:(id)a4;
- (void)removalAllFairPlayKeysWithCompletion:(id)a3;
- (void)removeKeyFor:(int64_t)a3 completion:(id)a4;
@end

@implementation PFDispatchingFairPlayInvalidationManaging

+ (id)invalidationManager:(id)a3 receivingCallbacksOnQueue:(id)a4
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  *&v7[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance] = a3;
  *&v7[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue] = a4;
  v11.receiver = v7;
  v11.super_class = ObjCClassMetadata;
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (void)invalidateFairPlayKeyFor:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  DispatchingFairPlayInvalidationManaging.invalidateFairPlayKey(for:completion:)(a3, v6, v7);
  sub_1D8D15664(v6);
}

- (void)markAllFairPlayKeysForInvalidationWithShouldRemove:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  DispatchingFairPlayInvalidationManaging.markAllFairPlayKeysForInvalidation(shouldRemove:completion:)(a3, v6, v7);
  sub_1D8D15664(v6);
}

- (void)removeKeyFor:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  DispatchingFairPlayInvalidationManaging.removeKey(for:completion:)(a3, sub_1D8E8B5C0, v7);
}

- (id)removeKeyFor:(id)a3
{
  v3 = [*(&self->super.isa + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance) removeKeyFor_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D9176A5C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removalAllFairPlayKeysWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
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