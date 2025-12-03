@interface ServerChapter
- (NSData)timeframesData;
- (NSNumber)artworkHeight;
- (NSNumber)artworkWidth;
- (NSString)artworkBackgroundColor;
- (NSString)artworkTemplateURL;
- (NSString)id;
- (NSString)title;
- (NSString)type;
@end

@implementation ServerChapter

- (NSString)title
{
  v2 = *(self + 6);
  if (*(v2 + 40))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)timeframesData
{

  v2 = ServerChapter.timeframesData.getter();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    sub_1D8D75668(v2, v4);
    v5 = v6;
  }

  return v5;
}

- (NSNumber)artworkWidth
{
  v3 = *(*(self + 6) + 16);
  if (v3 && (*(v3 + 24) & 1) == 0)
  {
    initWithInteger_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    initWithInteger_ = 0;
  }

  return initWithInteger_;
}

- (NSNumber)artworkHeight
{
  v3 = *(*(self + 6) + 16);
  if (v3 && (*(v3 + 40) & 1) == 0)
  {
    initWithInteger_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    initWithInteger_ = 0;
  }

  return initWithInteger_;
}

- (NSString)artworkTemplateURL
{
  v2 = *(*(self + 6) + 16);
  if (v2 && *(v2 + 56))
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)artworkBackgroundColor
{
  v2 = *(*(self + 6) + 16);
  if (v2 && *(v2 + 72))
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)id
{
  v2 = *(self + 2);
  v3 = *(self + 3);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (NSString)type
{
  v2 = *(self + 4);
  v3 = *(self + 5);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

@end