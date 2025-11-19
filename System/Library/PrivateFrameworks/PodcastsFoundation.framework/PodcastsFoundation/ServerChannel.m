@interface ServerChannel
- (NSString)artworkURL;
- (NSString)backgroundColor;
- (NSString)displayType;
- (NSString)fallbackSubscriptionName;
- (NSString)logoImageURL;
- (NSString)name;
- (NSString)storeId;
- (NSString)subscriptionName;
- (NSString)uberBackgroundImageURL;
- (NSString)uberBackgroundJoeColor;
- (NSString)url;
- (float)logoImageHeight;
- (float)logoImageWidth;
- (int64_t)availableShowCount;
- (int64_t)showCount;
@end

@implementation ServerChannel

- (NSString)name
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v5;
}

- (NSString)subscriptionName
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v2 + 104))
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)showCount
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v2 + 56))
  {
    return 0;
  }

  else
  {
    return *(v2 + 48);
  }
}

- (int64_t)availableShowCount
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v2 + 72))
  {
    return 0;
  }

  else
  {
    return *(v2 + 64);
  }
}

- (NSString)storeId
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
  v3 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (NSString)displayType
{
  v2 = self;
  sub_1D902F434(v2, &v5);

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v3;
}

- (NSString)artworkURL
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 24);
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

- (NSString)logoImageURL
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
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

- (NSString)backgroundColor
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v2 + 144))
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (float)logoImageHeight
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v2 && (*(v2 + 40) & 1) == 0)
  {
    return *(v2 + 32);
  }

  else
  {
    return 0;
  }
}

- (float)logoImageWidth
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v2 && (*(v2 + 24) & 1) == 0)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

- (NSString)uberBackgroundImageURL
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 112);
  if (v2 && (v3 = *(v2 + 32)) != 0 && *(v3 + 56))
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

- (NSString)uberBackgroundJoeColor
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 112);
  if (v2 && (v3 = *(v2 + 32)) != 0 && *(v3 + 72))
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

- (NSString)url
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v2 + 168))
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)fallbackSubscriptionName
{
  v2 = self;
  ServerChannel.fallbackSubscriptionName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end