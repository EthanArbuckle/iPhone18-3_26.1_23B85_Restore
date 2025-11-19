@interface MTServerPodcastEpisode
- (BOOL)isExplicit;
- (BOOL)isRestricted;
- (BOOL)priceTypeIsPSUB;
- (MTServerPodcastEpisode)init;
- (NSDate)firstTimeAvailableAsFree;
- (NSDate)firstTimeAvailableAsPaid;
- (NSDate)pubDate;
- (NSOrderedSet)chapters;
- (NSString)author;
- (NSString)entitledPriceType;
- (NSString)episodeStoreId;
- (NSString)guid;
- (NSString)itemDescription;
- (NSString)itunesTitle;
- (NSString)priceType;
- (NSString)title;
- (NSString)uti;
- (NSString)webpageURL;
- (int64_t)episodeNumber;
- (int64_t)seasonNumber;
@end

@implementation MTServerPodcastEpisode

- (NSString)author
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 24))
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isExplicit
{
  v2 = self;
  v3 = ServerPodcastEpisode.isExplicit.getter();

  return v3 & 1;
}

- (NSString)guid
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 328))
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)itemDescription
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (v2[23])
  {
    v3 = v2[22];
    v4 = v2[23];
LABEL_3:

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    goto LABEL_8;
  }

  v6 = v2[14];
  if (v6 && *(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);

    goto LABEL_3;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (NSDate)pubDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v8 = self;
  PodcastEpisodeAttributes.releaseDateResolved.getter(v6);

  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (NSDate)firstTimeAvailableAsPaid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 208))
  {
    v16 = 2;
    v7 = self;

    PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(&v16, v6);

    v8 = sub_1D9176E3C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v6, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v9 + 8))(v6, v8);
      v11 = v12;
    }
  }

  else
  {
    v13 = sub_1D9176E3C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v11 = 0;
  }

  return v11;
}

- (NSDate)firstTimeAvailableAsFree
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 208))
  {
    v7 = self;

    PodcastEpisodeAttributes.AvailabilityDates.free.getter(v6);

    v8 = sub_1D9176E3C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v6, 1, v8);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v9 + 8))(v6, v8);
      v11 = v12;
    }
  }

  else
  {
    v13 = sub_1D9176E3C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v11 = 0;
  }

  return v11;
}

- (NSString)title
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 88))
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)uti
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  v3 = self;
  PodcastEpisodeAttributes.uti.getter();
  v5 = v4;

  if (v5)
  {
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)itunesTitle
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
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

- (int64_t)seasonNumber
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 360))
  {
    return 0;
  }

  else
  {
    return *(v2 + 352);
  }
}

- (int64_t)episodeNumber
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 344))
  {
    return 0;
  }

  else
  {
    return *(v2 + 336);
  }
}

- (NSString)webpageURL
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 240))
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);

    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)episodeStoreId
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_id);
  v3 = *(self + OBJC_IVAR___MTServerPodcastEpisode_id + 8);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (NSString)priceType
{
  v2 = self;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v3, &v8);

  v4 = v8;

  v5 = *&aStdq_12[8 * v4];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v6;
}

- (NSString)entitledPriceType
{
  v2 = self;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v3, &v8);

  v4 = v8;

  v5 = *&aStdq_12[8 * v4];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v6;
}

- (NSOrderedSet)chapters
{
  v2 = self;
  v3 = ServerPodcastEpisode.chapters.getter();

  return v3;
}

- (BOOL)priceTypeIsPSUB
{
  v2 = self;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v3, &v6);

  if (v6 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D9179ACC();
  }

  return v4 & 1;
}

- (BOOL)isRestricted
{
  v2 = self;
  v3 = ServerPodcastEpisode.isRestricted.getter();

  return v3 & 1;
}

- (MTServerPodcastEpisode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end