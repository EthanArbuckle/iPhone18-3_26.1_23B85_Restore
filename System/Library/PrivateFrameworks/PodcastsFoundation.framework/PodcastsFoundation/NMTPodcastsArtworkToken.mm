@interface NMTPodcastsArtworkToken
- (CGColor)backgroundColor;
- (NMTPodcastsArtworkToken)init;
- (NMTPodcastsArtworkToken)initWithKey:(id)key backgroundColorString:(id)string;
- (NSString)key;
- (void)setBackgroundColor:(CGColor *)color;
@end

@implementation NMTPodcastsArtworkToken

- (NSString)key
{
  v2 = *(self + OBJC_IVAR___NMTPodcastsArtworkToken_key);
  v3 = *(self + OBJC_IVAR___NMTPodcastsArtworkToken_key + 8);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (CGColor)backgroundColor
{
  selfCopy = self;
  v3 = sub_1D8E4480C();

  return v3;
}

- (void)setBackgroundColor:(CGColor *)color
{
  v4 = *(self + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  *(self + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor) = color;
  colorCopy = color;
  selfCopy = self;
  sub_1D8E44900(v4);
}

- (NMTPodcastsArtworkToken)initWithKey:(id)key backgroundColorString:(id)string
{
  v6 = sub_1D917820C();
  v8 = v7;
  if (string)
  {
    v9 = sub_1D917820C();
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *(self + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor) = 1;
  v11 = (self + OBJC_IVAR___NMTPodcastsArtworkToken_key);
  *v11 = v6;
  v11[1] = v8;
  v12 = (self + OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString);
  *v12 = v9;
  v12[1] = v10;
  v14.receiver = self;
  v14.super_class = type metadata accessor for NanoPodcastsArtworkToken();
  return [(NMTPodcastsArtworkToken *)&v14 init];
}

- (NMTPodcastsArtworkToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end