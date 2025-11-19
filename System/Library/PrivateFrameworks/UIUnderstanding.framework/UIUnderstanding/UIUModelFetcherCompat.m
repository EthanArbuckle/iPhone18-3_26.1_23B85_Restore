@interface UIUModelFetcherCompat
+ (id)sharedFetcher;
- (BOOL)areAssetsPresent;
- (BOOL)startAssetDownloadWithModelSet:(int64_t)a3 timeout:(double)a4;
- (UIUModelFetcherCompat)init;
@end

@implementation UIUModelFetcherCompat

- (BOOL)areAssetsPresent
{
  v3 = (&self->super.isa + OBJC_IVAR___UIUModelFetcherCompat_uiuModelLocator);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 16);
  v7 = self;
  v8 = v6(v4, v5);

  return v8 & 1;
}

- (BOOL)startAssetDownloadWithModelSet:(int64_t)a3 timeout:(double)a4
{
  v6 = self;
  LOBYTE(a3) = sub_27028CC4C(a3, a4);

  return a3 & 1;
}

+ (id)sharedFetcher
{
  if (qword_2807C8270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_2807C8A70;
}

- (UIUModelFetcherCompat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end