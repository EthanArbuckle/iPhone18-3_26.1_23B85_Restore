@interface MTServerPodcast
- (BOOL)hasEpisodes;
- (BOOL)isExplicit;
- (BOOL)isNotSubscribable;
- (MTFeedChannel)channelItem;
- (NSArray)offers;
- (NSOrderedSet)categories;
- (NSString)artworkPrimaryColor;
- (NSString)artworkTemplateURL;
- (NSString)artworkTextPrimaryColor;
- (NSString)artworkTextQuaternaryColor;
- (NSString)artworkTextSecondaryColor;
- (NSString)artworkTextTertiaryColor;
- (NSString)category;
- (NSString)podcastStoreId;
- (NSString)resolvedFeedURL;
- (NSString)shareURL;
- (NSString)showSpecificUpsellCopy;
- (NSString)showType;
- (NSString)title;
- (NSString)uberArtworkTextPrimaryColor;
- (NSString)uberArtworkTextQuaternaryColor;
- (NSString)uberArtworkTextSecondaryColor;
- (NSString)uberArtworkTextTertiaryColor;
- (NSString)uberBackgroundImageURL;
- (NSString)uberBackgroundJoeColor;
- (NSString)webpageURL;
- (id)toFeed;
@end

@implementation MTServerPodcast

- (NSString)category
{
  ServerPodcast.category.getter();
  if (v2)
  {
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasEpisodes
{
  v3 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  v4 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[v3];
  if (!v4)
  {
    return 0;
  }

  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v7 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[v3];
    }

    v5 = sub_1D917935C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

- (NSString)resolvedFeedURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 80))
    {
      v4 = *(v3 + 72);
      v5 = *(v3 + 80);

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)title
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 96))
    {
      v4 = *(v3 + 88);
      v5 = *(v3 + 96);

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isExplicit
{
  selfCopy = self;
  v3 = ServerPodcast.isExplicit.getter();

  return v3 & 1;
}

- (BOOL)isNotSubscribable
{
  v2 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v2)
  {
    return (*(v2 + 48) != 2) & (*(v2 + 48) ^ 1);
  }

  else
  {
    return 0;
  }
}

- (NSString)shareURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 40))
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)showType
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 144))
    {
      v4 = *(v3 + 136);
      v5 = *(v3 + 144);

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)webpageURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 200))
    {
      v4 = *(v3 + 192);
      v5 = *(v3 + 200);

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)podcastStoreId
{
  v2 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (NSArray)offers
{
  selfCopy = self;
  v3 = ServerPodcast.offers.getter();

  if (v3)
  {
    sub_1D90358A0();
    v4 = sub_1D91785DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)uberBackgroundImageURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 56))
    {
      v6 = *(v5 + 48);
      v7 = *(v5 + 56);

      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)uberBackgroundJoeColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 72))
    {
      v6 = *(v5 + 64);
      v7 = *(v5 + 72);

      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)uberArtworkTextPrimaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 88))
    {
      v6 = *(v5 + 80);
      v7 = *(v5 + 88);

      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)uberArtworkTextSecondaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 104))
    {
      v6 = *(v5 + 96);
      v7 = *(v5 + 104);

      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)uberArtworkTextTertiaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 120))
    {
      v6 = *(v5 + 112);
      v7 = *(v5 + 120);

      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)uberArtworkTextQuaternaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 136))
    {
      v6 = *(v5 + 128);
      v7 = *(v5 + 136);

      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)artworkTemplateURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 56))
    {
      v5 = *(v4 + 48);
      v6 = *(v4 + 56);

      v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)artworkPrimaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 72))
    {
      v5 = *(v4 + 64);
      v6 = *(v4 + 72);

      v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)artworkTextPrimaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 88))
    {
      v5 = *(v4 + 80);
      v6 = *(v4 + 88);

      v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)artworkTextSecondaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 104))
    {
      v5 = *(v4 + 96);
      v6 = *(v4 + 104);

      v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)artworkTextTertiaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 120))
    {
      v5 = *(v4 + 112);
      v6 = *(v4 + 120);

      v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)artworkTextQuaternaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 136))
    {
      v5 = *(v4 + 128);
      v6 = *(v4 + 136);

      v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MTFeedChannel)channelItem
{
  selfCopy = self;
  v3 = ServerPodcast.channelItem.getter();

  return v3;
}

- (NSString)showSpecificUpsellCopy
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 240))
    {
      v4 = *(v3 + 232);
      v5 = *(v3 + 240);

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSOrderedSet)categories
{
  selfCopy = self;
  v3 = ServerPodcast.categories.getter();

  return v3;
}

- (id)toFeed
{
  selfCopy = self;
  ServerPodcast.toFeed()(v3);
  v5 = v4;

  return v5;
}

@end