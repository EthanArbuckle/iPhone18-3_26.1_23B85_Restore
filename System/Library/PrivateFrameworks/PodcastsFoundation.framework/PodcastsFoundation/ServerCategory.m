@interface ServerCategory
- (MTFeedCategory)parent;
- (NSNumber)artworkHeight;
- (NSNumber)artworkWidth;
- (NSSet)children;
- (NSString)artworkPrimaryColor;
- (NSString)artworkTemplateURL;
- (NSString)color;
- (NSString)id;
- (NSString)identifier;
- (NSString)name;
- (NSString)type;
- (NSString)url;
@end

@implementation ServerCategory

- (NSString)identifier
{
  v2 = *(self + 2);
  v3 = *(self + 3);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (NSNumber)artworkHeight
{
  v3 = *(*(self + 6) + 48);
  if (v3 && (v4 = *(v3 + 16)) != 0 && (*(v4 + 40) & 1) == 0)
  {
    v7 = *(v4 + 32);
    v5 = sub_1D9178B6C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)artworkWidth
{
  v3 = *(*(self + 6) + 48);
  if (v3 && (v4 = *(v3 + 16)) != 0 && (*(v4 + 24) & 1) == 0)
  {
    v7 = *(v4 + 16);
    v5 = sub_1D9178B6C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)artworkPrimaryColor
{
  v2 = *(*(self + 6) + 48);
  if (v2 && (v3 = *(v2 + 16)) != 0 && *(v3 + 72))
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);

    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)artworkTemplateURL
{
  v2 = *(*(self + 6) + 48);
  if (v2 && (v3 = *(v2 + 16)) != 0 && *(v3 + 56))
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 56);

    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)name
{
  v2 = *(self + 6);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v5;
}

- (NSString)url
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

- (NSString)color
{
  v2 = *(self + 6);
  if (*(v2 + 64))
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MTFeedCategory)parent
{

  v2 = ServerCategory.parent.getter();

  return v2;
}

- (NSSet)children
{
  v2 = *(self + 7);
  if (v2 && (v3 = *(v2 + 24)) != 0)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1D8F60E3C(v4);

  sub_1D8FC12E8(v5);

  v6 = sub_1D9178A8C();

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