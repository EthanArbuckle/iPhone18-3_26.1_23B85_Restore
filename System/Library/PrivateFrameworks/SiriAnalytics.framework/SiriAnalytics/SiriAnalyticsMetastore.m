@interface SiriAnalyticsMetastore
- (id)createTagWithShim:(id)a3 onClock:(id)a4;
- (void)bootstrap;
- (void)checkpoint;
- (void)prune;
@end

@implementation SiriAnalyticsMetastore

- (void)bootstrap
{
  v2 = self;
  sub_1D9898A84();
}

- (void)prune
{
  v2 = self;
  sub_1D9898E24();
}

- (void)checkpoint
{
  v2 = self;
  sub_1D989912C();
}

- (id)createTagWithShim:(id)a3 onClock:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1D992AE84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  v15 = a3;
  v16 = self;
  Metastore.createTag(shim:onClock:)(v15, v14);

  v17 = *(v11 + 8);
  v17(v14, v10);
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v18 = sub_1D992AE44();
    v17(v9, v10);
  }

  return v18;
}

@end