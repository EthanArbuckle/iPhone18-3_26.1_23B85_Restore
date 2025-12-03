@interface DownloadableURLOptions
- (BOOL)nonAppInitiated;
- (NSString)urlRawString;
- (NSURL)url;
- (_TtC18PodcastsFoundation22DownloadableURLOptions)init;
- (id)init:(id)init nonAppInitiated:(BOOL)initiated;
- (void)setNonAppInitiated:(BOOL)initiated;
@end

@implementation DownloadableURLOptions

- (id)init:(id)init nonAppInitiated:(BOOL)initiated
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D917820C();
  v8 = (self + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString);
  *v8 = v7;
  v8[1] = v9;
  *(self + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated) = initiated;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(DownloadableURLOptions *)&v11 init];
}

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(self + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString);
  v8 = *(self + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString + 8);
  selfCopy = self;
  sub_1D9176BFC();

  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1D9176B1C();
    (*(v11 + 8))(v6, v10);
    v13 = v14;
  }

  return v13;
}

- (BOOL)nonAppInitiated
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)urlRawString
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString);
  v3 = *(self + OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString + 8);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (void)setNonAppInitiated:(BOOL)initiated
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated;
  swift_beginAccess();
  *(self + v5) = initiated;
}

- (_TtC18PodcastsFoundation22DownloadableURLOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end