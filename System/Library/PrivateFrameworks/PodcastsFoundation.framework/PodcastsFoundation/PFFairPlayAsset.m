@interface PFFairPlayAsset
- (BOOL)isOfflineAsset;
- (NSString)description;
- (PFFairPlayAsset)init;
- (PFFairPlayAsset)initWithAdamID:(int64_t)a3 avAsset:(id)a4;
@end

@implementation PFFairPlayAsset

- (NSString)description
{
  v2 = self;
  FairPlayAsset.description.getter();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v3;
}

- (PFFairPlayAsset)initWithAdamID:(int64_t)a3 avAsset:(id)a4
{
  v5 = a4;
  v6 = sub_1D8E90C4C(a3, v5);

  return v6;
}

- (PFFairPlayAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isOfflineAsset
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&self->avAsset[OBJC_IVAR___PFFairPlayAsset_avAsset + 8];
  v9 = *&self->avAsset[OBJC_IVAR___PFFairPlayAsset_avAsset + 16];
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR___PFFairPlayAsset_avAsset), v8);
  v10 = *(v9 + 8);
  v11 = self;
  v12 = v10(v8, v9);
  v13 = [v12 URL];
  sub_1D9176B9C();

  LOBYTE(v13) = sub_1D9176A8C();
  (*(v4 + 8))(v7, v3);
  return v13 & 1;
}

@end