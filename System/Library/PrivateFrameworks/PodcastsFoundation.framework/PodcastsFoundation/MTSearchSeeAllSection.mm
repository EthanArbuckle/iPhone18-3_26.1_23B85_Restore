@interface MTSearchSeeAllSection
- (MTSearchSeeAllSection)init;
- (MTSearchSeeAllSection)initWithContentType:(int64_t)type nextPage:(id)page;
- (NSString)nextPage;
@end

@implementation MTSearchSeeAllSection

- (NSString)nextPage
{
  if (*(self + OBJC_IVAR___MTSearchSeeAllSection_nextPage + 8))
  {
    v2 = *(self + OBJC_IVAR___MTSearchSeeAllSection_nextPage);
    v3 = *(self + OBJC_IVAR___MTSearchSeeAllSection_nextPage + 8);

    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MTSearchSeeAllSection)initWithContentType:(int64_t)type nextPage:(id)page
{
  if (page)
  {
    v6 = sub_1D917820C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *(self + OBJC_IVAR___MTSearchSeeAllSection_contentType) = type;
  v8 = (self + OBJC_IVAR___MTSearchSeeAllSection_nextPage);
  *v8 = v6;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SearchSeeAllSection();
  return [(MTSearchSeeAllSection *)&v10 init];
}

- (MTSearchSeeAllSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end