@interface TLKAsyncCache
- (id)getCachedObjectIfAvailableForKey:(id)a3;
- (id)getCachedObjectsIfAvailableForKeys:(id)a3;
- (void)clear;
- (void)computeObjectForKey:(NSObject *)a3 completionHandler:(id)a4;
- (void)getObjectForKey:(id)a3 completionHandler:(id)a4;
- (void)getObjectsForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation TLKAsyncCache

- (void)getObjectForKey:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = *(&self->super.isa + OBJC_IVAR___TLKAsyncCache_wrappedCache);
    v14 = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1BBA2C574;
    *(v10 + 24) = v8;
    v11 = *((*MEMORY[0x1E69E7D40] & *v9) + 0xE8);
    v12 = a3;
    v13 = self;

    v11(&v14, sub_1BBA62080, v10);
  }
}

- (id)getCachedObjectIfAvailableForKey:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___TLKAsyncCache_wrappedCache);
  v10 = a3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xD8);
  v6 = a3;
  v7 = self;
  v5(&v11, &v10);

  v8 = v11;

  return v8;
}

- (void)getObjectsForKeys:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1BBA26B84();
  v6 = sub_1BBA62210();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = *(&self->super.isa + OBJC_IVAR___TLKAsyncCache_wrappedCache);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BBA2C278;
    *(v9 + 24) = v7;
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xF0);
    swift_retain_n();
    v11 = self;
    v10(v6, sub_1BBA62074, v9);
  }
}

- (id)getCachedObjectsIfAvailableForKeys:(id)a3
{
  sub_1BBA26B84();
  sub_1BBA62210();
  v4 = self;
  sub_1BBA5F2B4();

  v5 = sub_1BBA62200();

  return v5;
}

- (void)clear
{
  v2 = *((*MEMORY[0x1E69E7D40] & **(&self->super.isa + OBJC_IVAR___TLKAsyncCache_wrappedCache)) + 0xF8);
  v3 = self;
  v2();
}

- (void)computeObjectForKey:(NSObject *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7A510);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1BBA62320();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BBA68418;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1BBA68428;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1BBA605B4(0, 0, v9, &unk_1BBA68438, v14);
}

@end