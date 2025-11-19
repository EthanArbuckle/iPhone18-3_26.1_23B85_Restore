uint64_t sub_1D9084A78()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 128);

  return v1;
}

uint64_t sub_1D9084AAC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 144);

  return v1;
}

uint64_t sub_1D9084B04()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 184);

  return v1;
}

BOOL sub_1D9084B38()
{
  if (!*(*v0 + 184))
  {
    return 0;
  }

  v1 = *(*v0 + 176);

  v2 = sub_1D917980C();

  return v2 == 1;
}

void sub_1D9084C64(uint64_t a1@<X8>)
{
  strcpy(a1, "showPageTall");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1D9084CA8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D9084D00(uint64_t a1)
{
  v2 = sub_1D90907E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9084D3C(uint64_t a1)
{
  v2 = sub_1D90907E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastEditorialArtworkContainer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PodcastEditorialArtworkContainer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PodcastEditorialArtworkContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C38, &qword_1D91AE590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90907E8();
  sub_1D9179F1C();
  v12[1] = *(v2 + 16);
  type metadata accessor for ServerArtwork();
  sub_1D9090018(&qword_1ECAB26D8, v10, type metadata accessor for ServerArtwork);
  sub_1D917999C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PodcastEditorialArtworkContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastEditorialArtworkContainer.init(from:)(a1);
  return v2;
}

uint64_t *PodcastEditorialArtworkContainer.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C40, &qword_1D91AE598);
  v13 = *(v5 - 8);
  v6 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90907E8();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerArtwork();
    sub_1D9090018(&qword_1EDCD54A0, v10, type metadata accessor for ServerArtwork);
    sub_1D917989C();
    (*(v13 + 8))(v8, v5);
    v1[2] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t PodcastEpisodeAttributes.feedUrl.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t PodcastEpisodeAttributes.copyright.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t PodcastEpisodeAttributes.contentRating.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return v1;
}

uint64_t PodcastEpisodeAttributes.channelKind.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t PodcastEpisodeAttributes.channelKind.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
}

PodcastsFoundation::PodcastEpisodeAttributes::ChannelKind_optional __swiftcall PodcastEpisodeAttributes.ChannelKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PodcastEpisodeAttributes.ChannelKind.rawValue.getter()
{
  v1 = 30324;
  if (*v0 != 1)
  {
    v1 = 1937204590;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636973756DLL;
  }
}

uint64_t sub_1D9085420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 30324;
  if (v2 != 1)
  {
    v4 = 1937204590;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x636973756DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 30324;
  if (*a2 != 1)
  {
    v8 = 1937204590;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x636973756DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D90854F8()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D9085584()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90855FC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D9085690(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (v2 != 1)
  {
    v5 = 1937204590;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636973756DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

PodcastsFoundation::PodcastEpisodeAttributes::EpisodeType_optional __swiftcall PodcastEpisodeAttributes.EpisodeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9085734(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x72656C69617274;
  if (v2 != 1)
  {
    v4 = 0x73756E6F62;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819047270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x72656C69617274;
  if (*a2 != 1)
  {
    v8 = 0x73756E6F62;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819047270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D9085828()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90858C0()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D9085944()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D90859E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72656C69617274;
  if (v2 != 1)
  {
    v5 = 0x73756E6F62;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1819047270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

PodcastsFoundation::PodcastEpisodeAttributes::MediaKind_optional __swiftcall PodcastEpisodeAttributes.MediaKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PodcastEpisodeAttributes.MediaKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F69647561;
  v3 = 0x6567616D69;
  v4 = 0x746E656D75636F64;
  if (v1 != 3)
  {
    v4 = 0x6C616E7265747865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F65646976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9085B30()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D9085C08()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D9085CCC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D9085DAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6F69647561;
  v5 = 0xE500000000000000;
  v6 = 0x6567616D69;
  v7 = 0x746E656D75636F64;
  if (v2 != 3)
  {
    v7 = 0x6C616E7265747865;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6F65646976;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t PodcastEpisodeAttributes.assetUrl.getter()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return v1;
}

uint64_t PodcastEpisodeAttributes.durationInMilliseconds.getter()
{
  result = *(v0 + 304);
  v2 = *(v0 + 312);
  return result;
}

uint64_t PodcastEpisodeAttributes.guid.getter()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return v1;
}

uint64_t PodcastEpisodeAttributes.episodeNumber.getter()
{
  result = *(v0 + 336);
  v2 = *(v0 + 344);
  return result;
}

uint64_t PodcastEpisodeAttributes.seasonNumber.getter()
{
  result = *(v0 + 352);
  v2 = *(v0 + 360);
  return result;
}

uint64_t sub_1D9085F7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B28, &unk_1D91AE4F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1D8D088B4(a1, &v20 - v15, &qword_1ECAB75C0, &unk_1D9188A50);
  v17 = *a2;
  sub_1D8D6734C(v16, v11, &qword_1ECAB75C0, &unk_1D9188A50);
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = *a5;
  swift_beginAccess();
  sub_1D908631C(v11, v17 + v18);
  return swift_endAccess();
}

uint64_t sub_1D9086118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  if (*(a1 + 200))
  {
    v8 = *(a1 + 192);
    if (qword_1EDCD09F8 != -1)
    {
      v17 = *(a1 + 192);
      swift_once();
    }

    v9 = qword_1EDCD0A00;
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v11 = [v9 dateFromString_];

    if (v11)
    {
      sub_1D9176DFC();

      v12 = sub_1D9176E3C();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {
      v16 = sub_1D9176E3C();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_1D8D6734C(v7, a2, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    v13 = sub_1D9176E3C();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_1D908631C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B28, &unk_1D91AE4F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PodcastEpisodeAttributes.__allocating_init(artistName:url:subscribable:feedUrl:offers:name:itunesTitle:description:artworkOrigin:artwork:copyright:kind:fullDescription:releaseDateTime:firstAvailableDates:contentRating:websiteUrl:genreNames:mediaKind:assetUrl:durationInMilliseconds:guid:episodeNumber:seasonNumber:inLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, char a24, __int128 a25, uint64_t a26, char a27, uint64_t a28, char a29, char a30)
{
  v37 = *(v30 + 48);
  v38 = *(v30 + 52);
  v39 = swift_allocObject();
  *(v39 + 256) = 0;
  *(v39 + 264) = 0;
  v40 = OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v41 - 8) + 56))(v39 + v40, 1, 1, v41);
  *(v39 + 16) = a1;
  *(v39 + 24) = a2;
  *(v39 + 32) = a3;
  *(v39 + 40) = a4;
  *(v39 + 48) = a5;
  *(v39 + 56) = a6;
  *(v39 + 64) = a7;
  *(v39 + 72) = a8;
  *(v39 + 80) = a9;
  *(v39 + 96) = a10;
  *(v39 + 112) = a11;
  *(v39 + 128) = a12;
  *(v39 + 144) = a13;
  *(v39 + 160) = a14;
  *(v39 + 176) = a15;
  *(v39 + 192) = a16;
  *(v39 + 208) = a17;
  *(v39 + 224) = a18;
  *(v39 + 240) = a19;
  *(v39 + 248) = a20;
  *(v39 + 272) = a21;
  *(v39 + 288) = a22;
  *(v39 + 304) = a23;
  *(v39 + 312) = a24 & 1;
  *(v39 + 320) = a25;
  *(v39 + 336) = a26;
  *(v39 + 344) = a27 & 1;
  *(v39 + 352) = a28;
  *(v39 + 360) = a29 & 1;
  *(v39 + 361) = a30;
  return v39;
}

uint64_t PodcastEpisodeAttributes.init(artistName:url:subscribable:feedUrl:offers:name:itunesTitle:description:artworkOrigin:artwork:copyright:kind:fullDescription:releaseDateTime:firstAvailableDates:contentRating:websiteUrl:genreNames:mediaKind:assetUrl:durationInMilliseconds:guid:episodeNumber:seasonNumber:inLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, char a24, __int128 a25, uint64_t a26, char a27, uint64_t a28, char a29, char a30)
{
  *(v30 + 256) = 0;
  *(v30 + 264) = 0;
  v37 = OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v38 - 8) + 56))(v30 + v37, 1, 1, v38);
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = a4;
  *(v30 + 48) = a5;
  *(v30 + 56) = a6;
  *(v30 + 64) = a7;
  *(v30 + 72) = a8;
  *(v30 + 80) = a9;
  *(v30 + 96) = a10;
  *(v30 + 112) = a11;
  *(v30 + 128) = a12;
  *(v30 + 144) = a13;
  *(v30 + 160) = a14;
  *(v30 + 176) = a15;
  *(v30 + 192) = a16;
  *(v30 + 208) = a17;
  *(v30 + 224) = a18;
  *(v30 + 240) = a19;
  *(v30 + 248) = a20;
  *(v30 + 272) = a21;
  *(v30 + 288) = a22;
  *(v30 + 304) = a23;
  *(v30 + 312) = a24 & 1;
  *(v30 + 320) = a25;
  *(v30 + 336) = a26;
  *(v30 + 344) = a27 & 1;
  *(v30 + 352) = a28;
  *(v30 + 360) = a29 & 1;
  *(v30 + 361) = a30;
  return v30;
}

unint64_t sub_1D9086798(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6269726373627573;
      break;
    case 3:
      result = 0x6C725564656566;
      break;
    case 4:
      result = 0x73726566666FLL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x695473656E757469;
      break;
    case 7:
      result = 0x7470697263736564;
      break;
    case 8:
      result = 0x4F6B726F77747261;
      break;
    case 9:
      result = 0x6B726F77747261;
      break;
    case 10:
      result = 0x6867697279706F63;
      break;
    case 11:
      result = 1684957547;
      break;
    case 12:
      result = 0x637365446C6C7566;
      break;
    case 13:
      result = 0x44657361656C6572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x52746E65746E6F63;
      break;
    case 16:
      result = 0x5565746973626577;
      break;
    case 17:
      result = 0x6D614E65726E6567;
      break;
    case 18:
      result = 0x4B6C656E6E616863;
      break;
    case 19:
      result = 0x6E694B616964656DLL;
      break;
    case 20:
      result = 0x6C72557465737361;
      break;
    case 21:
      result = 0xD000000000000016;
      break;
    case 22:
      result = 1684632935;
      break;
    case 23:
      result = 0x4E65646F73697065;
      break;
    case 24:
      result = 0x754E6E6F73616573;
      break;
    case 25:
      result = 0x72617262694C6E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9086A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9091BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9086ACC(uint64_t a1)
{
  v2 = sub_1D909083C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9086B08(uint64_t a1)
{
  v2 = sub_1D909083C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *PodcastEpisodeAttributes.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[17];

  v10 = v0[19];

  v11 = v0[21];

  v12 = v0[23];

  v13 = v0[25];

  v14 = v0[26];

  v15 = v0[28];

  v16 = v0[30];

  v17 = v0[31];

  v18 = v0[33];

  v19 = v0[35];

  v20 = v0[37];

  v21 = v0[41];

  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved, &qword_1ECAB9B28, &unk_1D91AE4F8);
  return v0;
}

uint64_t sub_1D9086C3C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t PodcastEpisodeAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C48, &qword_1D91AE5A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D909083C();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  LOBYTE(v55) = 0;
  sub_1D917994C();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    LOBYTE(v55) = 1;
    sub_1D917994C();
    v15 = *(v3 + 48);
    LOBYTE(v55) = 2;
    sub_1D917995C();
    v16 = *(v3 + 56);
    v17 = *(v3 + 64);
    LOBYTE(v55) = 3;
    sub_1D917994C();
    v55 = *(v3 + 72);
    v56 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C50, &qword_1D91AE5A8);
    sub_1D9090890();
    sub_1D917999C();
    v18 = *(v3 + 80);
    v19 = *(v3 + 88);
    LOBYTE(v55) = 5;
    sub_1D917994C();
    v20 = *(v3 + 96);
    v21 = *(v3 + 104);
    LOBYTE(v55) = 6;
    sub_1D917994C();
    v55 = *(v3 + 112);
    v56 = 7;
    type metadata accessor for ServerDescription();
    sub_1D9090018(&qword_1ECAB20B8, v22, type metadata accessor for ServerDescription);
    sub_1D917999C();
    v23 = *(v3 + 120);
    v24 = *(v3 + 128);
    LOBYTE(v55) = 8;
    sub_1D917994C();
    v55 = *(v3 + 136);
    v56 = 9;
    type metadata accessor for ServerArtwork();
    sub_1D9090018(&qword_1ECAB26D8, v25, type metadata accessor for ServerArtwork);
    sub_1D917999C();
    v26 = *(v3 + 144);
    v27 = *(v3 + 152);
    LOBYTE(v55) = 10;
    sub_1D917994C();
    v28 = *(v3 + 160);
    v29 = *(v3 + 168);
    LOBYTE(v55) = 11;
    sub_1D917994C();
    v30 = *(v3 + 176);
    v31 = *(v3 + 184);
    LOBYTE(v55) = 12;
    sub_1D917994C();
    v32 = *(v3 + 192);
    v33 = *(v3 + 200);
    LOBYTE(v55) = 13;
    sub_1D917994C();
    v55 = *(v3 + 208);
    v56 = 14;
    type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates();
    sub_1D9090018(&qword_1ECAB9C68, v34, type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates);
    sub_1D917999C();
    v35 = *(v3 + 216);
    v36 = *(v3 + 224);
    LOBYTE(v55) = 15;
    sub_1D917994C();
    v37 = *(v3 + 232);
    v38 = *(v3 + 240);
    LOBYTE(v55) = 16;
    sub_1D917994C();
    v55 = *(v3 + 248);
    v56 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D90906C8(&qword_1ECAAFEE8);
    sub_1D917999C();
    swift_beginAccess();
    v39 = *(v3 + 256);
    v40 = *(v3 + 264);
    v56 = 18;

    sub_1D917994C();

    v41 = *(v3 + 272);
    v42 = *(v3 + 280);
    v56 = 19;
    sub_1D917994C();
    v43 = *(v3 + 288);
    v44 = *(v3 + 296);
    v56 = 20;
    sub_1D917994C();
    v45 = *(v3 + 304);
    v46 = *(v3 + 312);
    v56 = 21;
    sub_1D917996C();
    v47 = *(v3 + 320);
    v48 = *(v3 + 328);
    v56 = 22;
    sub_1D917994C();
    v49 = *(v3 + 336);
    v50 = *(v3 + 344);
    v56 = 23;
    sub_1D917998C();
    v51 = *(v3 + 352);
    v52 = *(v3 + 360);
    v56 = 24;
    sub_1D917998C();
    v53 = *(v3 + 361);
    v56 = 25;
    sub_1D917995C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D9087398(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void *PodcastEpisodeAttributes.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v45 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C70, &qword_1D91AE5B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v44 = v1 + 33;
  v1[32] = 0;
  v1[33] = 0;
  v10 = OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D909083C();
  sub_1D9179EEC();
  if (v2)
  {
    v15 = *v44;

    sub_1D8D08A50(v3 + OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved, &qword_1ECAB9B28, &unk_1D91AE4F8);
    v16 = *(*v3 + 48);
    v17 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v46) = 0;
    v3[2] = sub_1D917984C();
    v3[3] = v13;
    LOBYTE(v46) = 1;
    v3[4] = sub_1D917984C();
    v3[5] = v14;
    LOBYTE(v46) = 2;
    *(v3 + 48) = sub_1D917985C();
    LOBYTE(v46) = 3;
    v3[7] = sub_1D917984C();
    v3[8] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C50, &qword_1D91AE5A8);
    v47 = 4;
    sub_1D909098C();
    sub_1D917989C();
    v3[9] = v46;
    LOBYTE(v46) = 5;
    v3[10] = sub_1D917984C();
    v3[11] = v20;
    LOBYTE(v46) = 6;
    v3[12] = sub_1D917984C();
    v3[13] = v21;
    type metadata accessor for ServerDescription();
    v47 = 7;
    sub_1D9090018(&qword_1EDCD4760, v22, type metadata accessor for ServerDescription);
    sub_1D917989C();
    v3[14] = v46;
    LOBYTE(v46) = 8;
    v3[15] = sub_1D917984C();
    v3[16] = v23;
    type metadata accessor for ServerArtwork();
    v47 = 9;
    sub_1D9090018(&qword_1EDCD54A0, v24, type metadata accessor for ServerArtwork);
    sub_1D917989C();
    v3[17] = v46;
    LOBYTE(v46) = 10;
    v3[18] = sub_1D917984C();
    v3[19] = v25;
    LOBYTE(v46) = 11;
    v3[20] = sub_1D917984C();
    v3[21] = v26;
    LOBYTE(v46) = 12;
    v3[22] = sub_1D917984C();
    v3[23] = v27;
    LOBYTE(v46) = 13;
    v3[24] = sub_1D917984C();
    v3[25] = v28;
    type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates();
    v47 = 14;
    sub_1D9090018(&qword_1EDCD2F28, v29, type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates);
    sub_1D917989C();
    v3[26] = v46;
    LOBYTE(v46) = 15;
    v3[27] = sub_1D917984C();
    v3[28] = v30;
    LOBYTE(v46) = 16;
    v3[29] = sub_1D917984C();
    v3[30] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    v47 = 17;
    sub_1D90906C8(&qword_1EDCD0A50);
    sub_1D917989C();
    v3[31] = v46;
    LOBYTE(v46) = 18;
    v32 = sub_1D917984C();
    v34 = v33;
    swift_beginAccess();
    v35 = v44;
    v36 = *v44;
    v3[32] = v32;
    *v35 = v34;

    v47 = 19;
    v3[34] = sub_1D917984C();
    v3[35] = v37;
    v47 = 20;
    v3[36] = sub_1D917984C();
    v3[37] = v38;
    v47 = 21;
    v3[38] = sub_1D917986C();
    *(v3 + 312) = v39 & 1;
    v47 = 22;
    v3[40] = sub_1D917984C();
    v3[41] = v40;
    v47 = 23;
    v3[42] = sub_1D917988C();
    *(v3 + 344) = v41 & 1;
    v47 = 24;
    v3[44] = sub_1D917988C();
    *(v3 + 360) = v42 & 1;
    v47 = 25;
    LOBYTE(v32) = sub_1D917985C();
    (*(v6 + 8))(v9, v5);
    *(v3 + 361) = v32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1D9088388()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);

  return v1;
}

uint64_t sub_1D90883BC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  return v1;
}

uint64_t sub_1D90883FC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 152);

  return v1;
}

uint64_t sub_1D9088454()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 224);

  return v1;
}

BOOL sub_1D9088488()
{
  if (!*(*v0 + 224))
  {
    return 0;
  }

  v1 = *(*v0 + 216);

  v2 = sub_1D917980C();

  return v2 == 1;
}

uint64_t sub_1D90884EC()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 240);

  return v1;
}

uint64_t sub_1D9088558@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  v10 = swift_allocObject();
  result = a2(a1);
  if (!v4)
  {
    *a3 = v10;
  }

  return result;
}

PodcastsFoundation::Kind_optional __swiftcall Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9088648(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6269726373627573;
  }

  else
  {
    v4 = 7628135;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x6269726373627573;
  }

  else
  {
    v6 = 7628135;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D90886EC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D908876C()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90887D8()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D9088860(uint64_t *a1@<X8>)
{
  v2 = 7628135;
  if (*v1)
  {
    v2 = 0x6269726373627573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

PodcastsFoundation::PriceType_optional __swiftcall PriceType.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9088940()
{
  v1 = *v0;
  sub_1D9179DBC();
  v2 = *&aStdq_14[8 * v1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D908899C()
{
  v1 = *&aStdq_14[8 * *v0];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90889DC()
{
  v1 = *v0;
  sub_1D9179DBC();
  v2 = *&aStdq_14[8 * v1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D9088B6C(uint64_t a1)
{
  v2 = sub_1D90965A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9088BA8(uint64_t a1)
{
  v2 = sub_1D90965A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9088C3C()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D9088C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D9088D3C(uint64_t a1)
{
  v2 = sub_1D9090A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9088D78(uint64_t a1)
{
  v2 = sub_1D9090A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastShowOffer.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t PodcastShowOffer.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9088E1C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C78, &qword_1D91AE5B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090A40();
  sub_1D9179F1C();
  v11 = v3[2];
  v12 = v3[3];
  v16[15] = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    v16[14] = 1;
    sub_1D91799BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PodcastShowOffer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastShowOffer.init(from:)(a1);
  return v2;
}

void *PodcastShowOffer.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C80, &qword_1D91AE5C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090A40();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for PodcastShowOffer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v10;
    v16 = 1;
    v12 = sub_1D91798BC();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    v1[4] = v12;
    v1[5] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D908920C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1D908929C@<X0>(char *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t PodcastEpisodeOffer.durationInMilliseconds.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

unint64_t sub_1D9089314()
{
  v1 = 1701869940;
  v2 = 0x6C7255736C68;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 1684957547;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9089380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9092434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90893A8(uint64_t a1)
{
  v2 = sub_1D9090A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90893E4(uint64_t a1)
{
  v2 = sub_1D9090A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *PodcastEpisodeOffer.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t PodcastEpisodeOffer.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t PodcastEpisodeOffer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C88, &qword_1D91AE5C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090A94();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v20[15] = 0;
  sub_1D91799BC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  v20[14] = 1;
  sub_1D91799BC();
  v15 = *(v3 + 48);
  v16 = *(v3 + 56);
  v20[13] = 2;
  sub_1D917994C();
  v18 = *(v3 + 64);
  v19 = *(v3 + 72);
  v20[12] = 3;
  sub_1D917996C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t PodcastEpisodeOffer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastEpisodeOffer.init(from:)(a1);
  return v2;
}

void *PodcastEpisodeOffer.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C90, &qword_1D91AE5D0);
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090A94();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v6;
    v24 = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v12;
    v23 = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v13;
    v22 = 2;
    v1[6] = sub_1D917984C();
    v1[7] = v14;
    v21 = 3;
    v16 = sub_1D917986C();
    v18 = v17;
    (*(v11 + 8))(v9, v20);
    v3[8] = v16;
    *(v3 + 72) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.subscript.getter@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = sub_1D9176E3C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v25 = *a1;
  swift_beginAccess();
  v26 = *(v3 + 24);
  if (*(v26 + 16) && (v27 = sub_1D8F06EDC(v25), (v28 & 1) != 0))
  {
    (*(v15 + 16))(v21, *(v26 + 56) + *(v15 + 72) * v27, v14);
    v29 = *(v15 + 32);
    v29(v24, v21, v14);
    swift_endAccess();
    v30 = v50;
    v29(v50, v24, v14);
    return (*(v15 + 56))(v30, 0, 1, v14);
  }

  else
  {
    swift_endAccess();
    v32 = *(v3 + 16);
    if (*(v32 + 16) && (v33 = sub_1D8F06EDC(v25), (v34 & 1) != 0))
    {
      v35 = (*(v32 + 56) + 16 * v33);
      v37 = *v35;
      v36 = v35[1];
      v38 = qword_1EDCD09F8;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = qword_1EDCD0A00;
      v40 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v41 = [v39 dateFromString_];

      if (v41)
      {
        sub_1D9176DFC();

        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v43 = *(v15 + 56);
      v43(v10, v42, 1, v14);
      sub_1D8D6734C(v10, v13, &qword_1ECAB75C0, &unk_1D9188A50);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        sub_1D8D08A50(v13, &qword_1ECAB75C0, &unk_1D9188A50);
        v44 = v50;
        v45 = 1;
      }

      else
      {
        v48 = *(v15 + 32);
        v48(v18, v13, v14);
        v46 = v49;
        (*(v15 + 16))(v49, v18, v14);
        v43(v46, 0, 1, v14);
        swift_beginAccess();
        sub_1D8F7D7CC(v46, v25);
        swift_endAccess();
        v47 = v50;
        v48(v50, v18, v14);
        v44 = v47;
        v45 = 0;
      }

      return (v43)(v44, v45, 1, v14);
    }

    else
    {
      return (*(v15 + 56))(v50, 1, 1, v14);
    }
  }
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  v4[6] = *(v1 + 16);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C98, &qword_1D91AE5D8);
  sub_1D9092898();
  sub_1D9179BBC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9089F8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D909259C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D9089FB8(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  v5[6] = *(v2 + 16);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C98, &qword_1D91AE5D8);
  sub_1D9092898();
  sub_1D9179BBC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1D908A088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D908A110(uint64_t a1)
{
  v2 = sub_1D9092924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908A14C(uint64_t a1)
{
  v2 = sub_1D9092924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastStationAttributes.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PodcastStationAttributes.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t PodcastStationAttributes.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CA8, &qword_1D91AE5E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092924();
  sub_1D9179F1C();
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  sub_1D917994C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PodcastStationAttributes.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastStationAttributes.init(from:)(a1);
  return v2;
}

void *PodcastStationAttributes.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CB8, &qword_1D91AE5E8);
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092924();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v17;
    v13 = sub_1D917984C();
    v15 = v14;
    (*(v11 + 8))(v9, v6);
    v3[2] = v13;
    v3[3] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1D908A548(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CA8, &qword_1D91AE5E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092924();
  sub_1D9179F1C();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  sub_1D917994C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D908A690(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C656E6E616863;
  }

  else
  {
    v4 = 0x69726F6765746163;
  }

  if (v3)
  {
    v5 = 0xEA00000000007365;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C656E6E616863;
  }

  else
  {
    v6 = 0x69726F6765746163;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEA00000000007365;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D908A73C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D908A7C4()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D908A838()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D908A8C8(uint64_t *a1@<X8>)
{
  v2 = 0x69726F6765746163;
  if (*v1)
  {
    v2 = 0x6C656E6E616863;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D908A90C()
{
  if (*v0)
  {
    result = 0x6C656E6E616863;
  }

  else
  {
    result = 0x69726F6765746163;
  }

  *v0;
  return result;
}

uint64_t sub_1D908A94C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D917980C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D908A9B0(uint64_t a1)
{
  v2 = sub_1D9092978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908A9EC(uint64_t a1)
{
  v2 = sub_1D9092978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastRelationships.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastRelationships.init(from:)(a1);
  return v2;
}

uint64_t *PodcastRelationships.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CC0, &qword_1D91AE5F0);
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092978();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    type metadata accessor for PodcastChannelRelationshipContainer();
    v16 = 1;
    sub_1D9090018(&qword_1EDCD1798, v11, type metadata accessor for PodcastChannelRelationshipContainer);
    v12 = v15;
    sub_1D917989C();
    v1[2] = v17;
    type metadata accessor for PodcastCategoriesRelationshipContainer();
    v16 = 0;
    sub_1D9090018(&qword_1ECAB1258, v13, type metadata accessor for PodcastCategoriesRelationshipContainer);
    sub_1D917989C();
    (*(v10 + 8))(v8, v12);
    v1[3] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t PodcastRelationships.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PodcastRelationships.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t PodcastRelationships.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CC8, &qword_1D91AE5F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092978();
  sub_1D9179F1C();
  v15 = *(v3 + 24);
  HIBYTE(v14) = 0;
  type metadata accessor for PodcastCategoriesRelationshipContainer();
  sub_1D9090018(&qword_1ECAB9CD0, v11, type metadata accessor for PodcastCategoriesRelationshipContainer);
  sub_1D917999C();
  if (!v2)
  {
    v15 = *(v3 + 16);
    HIBYTE(v14) = 1;
    type metadata accessor for PodcastChannelRelationshipContainer();
    sub_1D9090018(&unk_1ECAB1290, v12, type metadata accessor for PodcastChannelRelationshipContainer);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D908AFD0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D908B028(uint64_t a1)
{
  v2 = sub_1D9092A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908B064(uint64_t a1)
{
  v2 = sub_1D9092A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastChannelRelationshipContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastChannelRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t PodcastChannelRelationshipContainer.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CD8, &qword_1D91AE600);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092A14();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CE0, &qword_1D91AE608);
    sub_1D9092A68();
    result = sub_1D917989C();
    v12 = v6;
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v15 = v24;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v24 = MEMORY[0x1E69E7CC0];
    v16 = *(v15 + 16);
    v17 = v23;
    while (1)
    {
      if (v16 == v13)
      {
        (*(v17 + 8))(v9, v12);

        v3[2] = v14;
        goto LABEL_4;
      }

      if (v13 >= *(v15 + 16))
      {
        break;
      }

      v18 = *(v15 + 8 * v13++ + 32);
      if (v18)
      {
        v22 = a1;
        v19 = v12;
        v20 = v18;
        MEMORY[0x1DA729B90]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21[1] = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        result = sub_1D917869C();
        v14 = v24;
        v12 = v19;
        a1 = v22;
        v17 = v23;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PodcastChannelRelationshipContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CF0, &qword_1D91AE618);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092A14();
  sub_1D9179F1C();
  v11[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CF8, &qword_1D91AE620);
  sub_1D9092B18();
  sub_1D91799FC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D908B550@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D908B5A8(uint64_t a1)
{
  v2 = sub_1D9092BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908B5E4(uint64_t a1)
{
  v2 = sub_1D9092BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastCategoriesRelationshipContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastCategoriesRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t PodcastCategoriesRelationshipContainer.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D00, &qword_1D91AE628);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092BD0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90C0, &unk_1D91AE630);
    sub_1D902E358();
    result = sub_1D917989C();
    v12 = v9;
    v21 = v6;
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v15 = v23;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v23 = MEMORY[0x1E69E7CC0];
    v16 = *(v15 + 16);
    while (1)
    {
      if (v16 == v13)
      {
        (*(v22 + 8))(v12, v21);

        v3[2] = v14;
        goto LABEL_4;
      }

      if (v13 >= *(v15 + 16))
      {
        break;
      }

      v17 = v15 + 8 * v13++;
      if (*(v17 + 32))
      {
        v18 = *(v17 + 32);

        MEMORY[0x1DA729B90](v19);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20[1] = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        result = sub_1D917869C();
        v14 = v23;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PodcastCategoriesRelationshipContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D08, &unk_1D91AE640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092BD0();
  sub_1D9179F1C();
  v11[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
  sub_1D9028658();
  sub_1D91799FC();
  return (*(v5 + 8))(v8, v4);
}

void *PodcastEpisodeRelationships.podcast.getter()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1D908BBB4()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D908BC84()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D908BD40()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D908BE0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D9091060();
  *a2 = result;
  return result;
}

void sub_1D908BE3C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x74736163646F70;
  v4 = 0xEB00000000737470;
  v5 = 0x697263736E617274;
  if (*v1 != 2)
  {
    v5 = 0x7372657470616863;
    v4 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D91C8050;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D908BEC8()
{
  v1 = 0x74736163646F70;
  v2 = 0x697263736E617274;
  if (*v0 != 2)
  {
    v2 = 0x7372657470616863;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D908BF50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9091060();
  *a1 = result;
  return result;
}

uint64_t sub_1D908BF78(uint64_t a1)
{
  v2 = sub_1D9092C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908BFB4(uint64_t a1)
{
  v2 = sub_1D9092C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastEpisodeRelationships.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D28, &qword_1D91AE650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092C24();
  sub_1D9179F1C();
  v18 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
  LOBYTE(v17) = 0;
  type metadata accessor for PodcastPlaybackPositionContainer();
  sub_1D9090018(&qword_1ECAB9D30, v11, type metadata accessor for PodcastPlaybackPositionContainer);
  sub_1D917999C();
  if (!v2)
  {
    v12 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
    swift_beginAccess();
    v17 = *(v3 + v12);
    v16 = 1;
    type metadata accessor for PodcastRelationshipContainer();
    sub_1D9090018(&qword_1ECAB9338, v13, type metadata accessor for PodcastRelationshipContainer);
    sub_1D917999C();
    v17 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_transcripts);
    v16 = 2;
    sub_1D9092C9C();

    sub_1D917999C();

    v17 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters);
    v16 = 3;
    type metadata accessor for ChapterRelationshipContainer();
    sub_1D9090018(&qword_1ECAB9D40, 255, type metadata accessor for ChapterRelationshipContainer);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

char *PodcastEpisodeRelationships.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D48, &qword_1D91AE658);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092C24();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v5;
    type metadata accessor for PodcastPlaybackPositionContainer();
    LOBYTE(v23) = 0;
    sub_1D9090018(&qword_1ECAB12B0, v12, type metadata accessor for PodcastPlaybackPositionContainer);
    v13 = v18;
    sub_1D917989C();
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition] = v22;
    type metadata accessor for PodcastRelationshipContainer();
    LOBYTE(v22) = 1;
    sub_1D9090018(&qword_1ECAB17C8, v15, type metadata accessor for PodcastRelationshipContainer);
    sub_1D917989C();
    v16 = v23;
    swift_beginAccess();
    v17 = *&v3[v9];
    *&v3[v9] = v16;

    v21 = 2;
    sub_1D9092CF0();
    sub_1D917989C();
    *&v3[OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_transcripts] = v23;
    type metadata accessor for ChapterRelationshipContainer();
    v21 = 3;
    sub_1D9090018(&qword_1ECAB1800, 255, type metadata accessor for ChapterRelationshipContainer);
    sub_1D917989C();
    *&v3[OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters] = v23;
    v20.receiver = v3;
    v20.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v20, sel_init);
    (*(v11 + 8))(v8, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t ServerTranscript.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id + 8);

  return v1;
}

uint64_t ServerTranscript.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type + 8);

  return v1;
}

id ServerTranscript.__allocating_init(id:type:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type];
  *v13 = a3;
  *(v13 + 1) = a4;
  sub_1D9092D64(a5, &v11[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes], type metadata accessor for ServerTranscript.Attributes);
  v16.receiver = v11;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D9092E40(a5, type metadata accessor for ServerTranscript.Attributes);
  return v14;
}

id ServerTranscript.init(id:type:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type];
  *v13 = a3;
  *(v13 + 1) = a4;
  sub_1D9092D64(a5, &v5[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes], type metadata accessor for ServerTranscript.Attributes);
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D9092E40(a5, type metadata accessor for ServerTranscript.Attributes);
  return v14;
}

uint64_t ServerTranscript.Attributes.ttmlToken.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerTranscript.Attributes.init(ttmlToken:ttmlAssetUrls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for ServerTranscript.Attributes(0);
  return sub_1D9092F48(a3, a4 + *(v6 + 20), type metadata accessor for ServerTranscript.Attributes.AssetUrls);
}

uint64_t ServerTranscript.Attributes.AssetUrls.init(ttml:signature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8D6734C(a1, a3, &unk_1ECAB5910, &qword_1D9188C90);
  v5 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
  return sub_1D8D6734C(a2, a3 + *(v5 + 20), &unk_1ECAB5910, &qword_1D9188C90);
}

uint64_t sub_1D908CC20()
{
  if (*v0)
  {
    result = 0x727574616E676973;
  }

  else
  {
    result = 1819112564;
  }

  *v0;
  return result;
}

uint64_t sub_1D908CC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1819112564 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D908CD3C(uint64_t a1)
{
  v2 = sub_1D9092DEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908CD78(uint64_t a1)
{
  v2 = sub_1D9092DEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTranscript.Attributes.AssetUrls.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D60, &qword_1D91AE660);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092DEC();
  sub_1D9179F1C();
  v11[15] = 0;
  sub_1D9176C2C();
  sub_1D9090018(&qword_1ECAB2CB0, 255, MEMORY[0x1E6968FB0]);
  sub_1D917999C();
  if (!v1)
  {
    v9 = *(type metadata accessor for ServerTranscript.Attributes.AssetUrls(0) + 20);
    v11[14] = 1;
    sub_1D917999C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ServerTranscript.Attributes.AssetUrls.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D68, &qword_1D91AE668);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092DEC();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v15;
  v27 = v18;
  v28 = v7;
  sub_1D9176C2C();
  v34 = 0;
  sub_1D9090018(&qword_1ECAB2C98, 255, MEMORY[0x1E6968FB0]);
  v20 = v30;
  v21 = v31;
  sub_1D917989C();
  v22 = v27;
  sub_1D8D6734C(v20, v27, &unk_1ECAB5910, &qword_1D9188C90);
  v33 = 1;
  v23 = v28;
  sub_1D917989C();
  (*(v32 + 8))(v14, v21);
  sub_1D8D6734C(v23, v22 + *(v26 + 20), &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D9092D64(v22, v29, type metadata accessor for ServerTranscript.Attributes.AssetUrls);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D9092E40(v22, type metadata accessor for ServerTranscript.Attributes.AssetUrls);
}

BOOL static ServerTranscript.Attributes.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ServerTranscript.Attributes(0) + 20);

  return _s18PodcastsFoundation16ServerTranscriptC10AttributesV9AssetUrlsV2eeoiySbAG_AGtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1D908D3A0()
{
  if (*v0)
  {
    result = 0x657373416C6D7474;
  }

  else
  {
    result = 0x656B6F546C6D7474;
  }

  *v0;
  return result;
}

uint64_t sub_1D908D3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656B6F546C6D7474 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657373416C6D7474 && a2 == 0xED0000736C725574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D908D4D8(uint64_t a1)
{
  v2 = sub_1D9092EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908D514(uint64_t a1)
{
  v2 = sub_1D9092EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTranscript.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D70, &qword_1D91AE670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092EA0();
  sub_1D9179F1C();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v13 = *(type metadata accessor for ServerTranscript.Attributes(0) + 20);
    v15[14] = 1;
    type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
    sub_1D9090018(&qword_1ECAB9D78, 255, type metadata accessor for ServerTranscript.Attributes.AssetUrls);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ServerTranscript.Attributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
  v4 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D80, &qword_1D91AE678);
  v21 = *(v23 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ServerTranscript.Attributes(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092EA0();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = a1;
  v15 = v21;
  v25 = 0;
  *v13 = sub_1D91798BC();
  v13[1] = v16;
  v18 = v16;
  v24 = 1;
  sub_1D9090018(&qword_1ECAB2190, 255, type metadata accessor for ServerTranscript.Attributes.AssetUrls);
  sub_1D91798FC();
  (*(v15 + 8))(v9, v23);
  sub_1D9092F48(v6, v13 + *(v10 + 20), type metadata accessor for ServerTranscript.Attributes.AssetUrls);
  sub_1D9092D64(v13, v20, type metadata accessor for ServerTranscript.Attributes);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return sub_1D9092E40(v13, type metadata accessor for ServerTranscript.Attributes);
}

BOOL sub_1D908DA50(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return static ServerTranscript.Attributes.AssetUrls.== infix(_:_:)(a1 + v7, a2 + v7);
}

id ServerTranscript.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D908DB68(uint64_t a1)
{
  v2 = sub_1D9092EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908DBA4(uint64_t a1)
{
  v2 = sub_1D9092EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTranscript.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D88, &qword_1D91AE680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092EF4();
  sub_1D9179F1C();
  v11 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id);
  v12 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id + 8);
  v16[15] = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type);
    v15 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type + 8);
    v16[14] = 1;
    sub_1D91799BC();
    v16[13] = 2;
    type metadata accessor for ServerTranscript.Attributes(0);
    sub_1D9090018(&qword_1ECAB9D90, 255, type metadata accessor for ServerTranscript.Attributes);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ServerTranscript.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for ServerTranscript.Attributes(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D98, &qword_1D91AE688);
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092EF4();
  sub_1D9179EEC();
  if (v1)
  {
    v15 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v6;
    v12 = v7;
    v32 = 0;
    v13 = v28;
    v14 = sub_1D91798BC();
    v19 = v30;
    v20 = (v30 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id);
    *v20 = v14;
    v20[1] = v21;
    v32 = 1;
    v22 = sub_1D91798BC();
    v23 = (v19 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type);
    *v23 = v22;
    v23[1] = v24;
    v32 = 2;
    sub_1D9090018(&qword_1ECAB2178, 255, type metadata accessor for ServerTranscript.Attributes);
    v25 = v27;
    sub_1D91798FC();
    v26 = v30;
    sub_1D9092F48(v25, v30 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes, type metadata accessor for ServerTranscript.Attributes);
    v31.receiver = v26;
    v31.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v31, sel_init);
    (*(v12 + 8))(v10, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t PodcastRelationshipContainer.data.getter()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1D908E300@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D908E358(uint64_t a1)
{
  v2 = sub_1D9092FB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908E394(uint64_t a1)
{
  v2 = sub_1D9092FB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastRelationshipContainer.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DA0, &qword_1D91AE690);
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092FB0();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
    return v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DA8, &qword_1D91AE698);
    sub_1D9093004();
    result = sub_1D917989C();
    v21 = v9;
    v22 = v6;
    v23 = ObjectType;
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v15 = v26;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v26 = MEMORY[0x1E69E7CC0];
    v16 = *(v15 + 16);
    v17 = v24;
    while (1)
    {
      if (v16 == v13)
      {
        (*(v17 + 8))(v21, v22);

        *&v3[OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data] = v14;
        v25.receiver = v3;
        v25.super_class = v23;
        v11 = objc_msgSendSuper2(&v25, sel_init);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        return v11;
      }

      if (v13 >= *(v15 + 16))
      {
        break;
      }

      v18 = *(v15 + 8 * v13++ + 32);
      if (v18)
      {
        v19 = v18;
        MEMORY[0x1DA729B90]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        result = sub_1D917869C();
        v14 = v26;
        v17 = v24;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PodcastRelationshipContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DB8, &qword_1D91AE6A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092FB0();
  sub_1D9179F1C();
  v10 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v12 = *(v2 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DC0, &qword_1D91AE6B0);
  sub_1D90930B4();
  sub_1D91799FC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D908E8C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D908E950(uint64_t a1)
{
  v2 = sub_1D9093168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908E98C(uint64_t a1)
{
  v2 = sub_1D9093168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastPlaybackPositionContainer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PodcastPlaybackPositionContainer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PodcastPlaybackPositionContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DD8, &qword_1D91AE6B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9093168();
  sub_1D9179F1C();
  v11[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DE0, &qword_1D91AE6C0);
  sub_1D90931BC();
  sub_1D91799FC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PodcastPlaybackPositionContainer.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastPlaybackPositionContainer.init(from:)(a1);
  return v2;
}

uint64_t *PodcastPlaybackPositionContainer.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DF8, &qword_1D91AE6C8);
  v12 = *(v5 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9093168();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DE0, &qword_1D91AE6C0);
    sub_1D9093294();
    sub_1D91798FC();
    (*(v12 + 8))(v8, v5);
    v1[2] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t PodcastPlaybackPositionData.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PodcastPlaybackPositionData.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PodcastPlaybackPositionData.href.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1D908EE88()
{
  v1 = 25705;
  v2 = 1717924456;
  if (*v0 != 2)
  {
    v2 = 0x7475626972747461;
  }

  if (*v0)
  {
    v1 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D908EEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9096318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D908EF14(uint64_t a1)
{
  v2 = sub_1D9093348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908EF50(uint64_t a1)
{
  v2 = sub_1D9093348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *PodcastPlaybackPositionData.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return v0;
}

uint64_t PodcastPlaybackPositionData.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t PodcastPlaybackPositionData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9E00, &qword_1D91AE6D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9093348();
  sub_1D9179F1C();
  v11 = v3[2];
  v12 = v3[3];
  v23 = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v13 = v3[4];
    v14 = v3[5];
    v22 = 1;
    sub_1D91799BC();
    v15 = v3[6];
    v16 = v3[7];
    v21 = 2;
    sub_1D91799BC();
    v20 = v3[8];
    v19[15] = 3;
    type metadata accessor for PodcastPlaybackPositionDataAttributes();
    sub_1D9090018(&qword_1ECAB9E10, v17, type metadata accessor for PodcastPlaybackPositionDataAttributes);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PodcastPlaybackPositionData.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastPlaybackPositionData.init(from:)(a1);
  return v2;
}

uint64_t *PodcastPlaybackPositionData.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9E18, &qword_1D91AE6D8);
  v5 = *(v15[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v15[0]);
  v8 = v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9093348();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v10;
    v18 = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v11;
    v17 = 2;
    v1[6] = sub_1D91798BC();
    v1[7] = v12;
    type metadata accessor for PodcastPlaybackPositionDataAttributes();
    v16 = 3;
    sub_1D9090018(&qword_1ECAB9E20, v13, type metadata accessor for PodcastPlaybackPositionDataAttributes);
    sub_1D91798FC();
    (*(v5 + 8))(v8, v15[0]);
    v1[8] = v15[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1D908F5FC()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1D908F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D909647C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D908F690(uint64_t a1)
{
  v2 = sub_1D90933C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908F6CC(uint64_t a1)
{
  v2 = sub_1D90933C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastPlaybackPositionDataAttributes.deinit()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t PodcastPlaybackPositionDataAttributes.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t PodcastPlaybackPositionDataAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9E28, &qword_1D91AE6E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90933C0();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v16[15] = 0;
  sub_1D91799DC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 24);
  v16[14] = 1;
  sub_1D91799CC();
  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  v16[13] = 2;
  sub_1D917994C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t PodcastPlaybackPositionDataAttributes.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PodcastPlaybackPositionDataAttributes.init(from:)(a1);
  return v2;
}

uint64_t *PodcastPlaybackPositionDataAttributes.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9E38, &qword_1D91AE6E8);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90933C0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    sub_1D91798DC();
    v1[2] = v11;
    v19 = 1;
    *(v1 + 24) = sub_1D91798CC() & 1;
    v18 = 2;
    v13 = sub_1D917984C();
    v15 = v14;
    (*(v6 + 8))(v9, v17);
    v3[4] = v13;
    v3[5] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1D908FBA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t OptionalElement.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1D91791BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t OptionalElement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = sub_1D91791BC();
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v20 = a3;
  v22 = type metadata accessor for OptionalElement();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v21;
  sub_1D9179EDC();
  if (v16)
  {

    (*(*(a2 - 8) + 56))(v14, 1, 1, a2);
  }

  else
  {
    v21 = v7;
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_1D9179B2C();
    (*(*(a2 - 8) + 56))(v10, 0, 1, a2);
    (*(v19 + 32))(v14, v10, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  (*(v11 + 32))(v24, v14, v22);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D908FF80()
{
  result = qword_1EDCD46A8[0];
  if (!qword_1EDCD46A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD46A8);
  }

  return result;
}

uint64_t sub_1D9090018(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90900A8()
{
  result = qword_1ECAB1D88;
  if (!qword_1ECAB1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D88);
  }

  return result;
}

unint64_t sub_1D9090140()
{
  result = qword_1ECAB9BD8;
  if (!qword_1ECAB9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9BD8);
  }

  return result;
}

unint64_t sub_1D90901B8()
{
  result = qword_1EDCD4778[0];
  if (!qword_1EDCD4778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD4778);
  }

  return result;
}

uint64_t _s18PodcastsFoundation13ServerArtworkC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v3 != v4)
    {
      v5 = a1;
      v6 = *(a1 + 48);
      v7 = a2;
      v8 = sub_1D9179ACC();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v10 != v11)
    {
      v12 = a1;
      v13 = *(a1 + 64);
      v14 = a2;
      v15 = sub_1D9179ACC();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = *(a1 + 88);
  v18 = *(a2 + 88);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (*(a1 + 80) != *(a2 + 80) || v17 != v18)
    {
      v19 = a1;
      v20 = *(a1 + 80);
      v21 = a2;
      v22 = sub_1D9179ACC();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = *(a1 + 104);
  v25 = *(a2 + 104);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (*(a1 + 96) != *(a2 + 96) || v24 != v25)
    {
      v26 = a1;
      v27 = *(a1 + 96);
      v28 = a2;
      v29 = sub_1D9179ACC();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = *(a1 + 120);
  v32 = *(a2 + 120);
  if (!v31)
  {
    if (!v32)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if (!v32)
  {
    return 0;
  }

  if (*(a1 + 112) != *(a2 + 112) || v31 != v32)
  {
    v33 = a1;
    v34 = *(a1 + 112);
    v35 = a2;
    v36 = sub_1D9179ACC();
    a2 = v35;
    v37 = v36;
    a1 = v33;
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_46:
  v38 = *(a1 + 136);
  v39 = *(a2 + 136);
  v2 = (v38 | v39) == 0;
  if (!v38 || !v39)
  {
    return v2;
  }

  if (*(a1 + 128) == *(a2 + 128) && v38 == v39)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

unint64_t sub_1D90904B8()
{
  result = qword_1EDCD54B8;
  if (!qword_1EDCD54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD54B8);
  }

  return result;
}

unint64_t sub_1D909050C()
{
  result = qword_1EDCD48E0;
  if (!qword_1EDCD48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD48E0);
  }

  return result;
}

uint64_t sub_1D9090584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C20, &qword_1D91AE578);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90905F0()
{
  result = qword_1ECAAFF60;
  if (!qword_1ECAAFF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C28, &qword_1D91AE580);
    sub_1D9090018(qword_1ECAB21C8, v1, type metadata accessor for PodcastShowOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF60);
  }

  return result;
}

uint64_t sub_1D90906C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9090734()
{
  result = qword_1EDCD0A90;
  if (!qword_1EDCD0A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C28, &qword_1D91AE580);
    sub_1D9090018(&qword_1EDCD5030, v1, type metadata accessor for PodcastShowOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0A90);
  }

  return result;
}

unint64_t sub_1D90907E8()
{
  result = qword_1EDCD1B30;
  if (!qword_1EDCD1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1B30);
  }

  return result;
}

unint64_t sub_1D909083C()
{
  result = qword_1EDCD2F40[0];
  if (!qword_1EDCD2F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD2F40);
  }

  return result;
}

unint64_t sub_1D9090890()
{
  result = qword_1ECAB9C58;
  if (!qword_1ECAB9C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C50, &qword_1D91AE5A8);
    sub_1D9090018(&qword_1ECAB9C60, v1, type metadata accessor for PodcastEpisodeOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9C58);
  }

  return result;
}

unint64_t sub_1D909098C()
{
  result = qword_1EDCD0A78;
  if (!qword_1EDCD0A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C50, &qword_1D91AE5A8);
    sub_1D9090018(&qword_1EDCD4038, v1, type metadata accessor for PodcastEpisodeOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0A78);
  }

  return result;
}

unint64_t sub_1D9090A40()
{
  result = qword_1EDCD5048[0];
  if (!qword_1EDCD5048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD5048);
  }

  return result;
}

unint64_t sub_1D9090A94()
{
  result = qword_1EDCD4050[0];
  if (!qword_1EDCD4050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD4050);
  }

  return result;
}

BOOL _s18PodcastsFoundation16ServerTranscriptC10AttributesV9AssetUrlsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v21 = *(v20 + 48);
  v43 = a1;
  sub_1D8D088B4(a1, &v39 - v18, &unk_1ECAB5910, &qword_1D9188C90);
  v44 = a2;
  sub_1D8D088B4(a2, &v19[v21], &unk_1ECAB5910, &qword_1D9188C90);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_1D8D088B4(v19, v13, &unk_1ECAB5910, &qword_1D9188C90);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v24 = *(v5 + 32);
      v25 = &v19[v21];
      v26 = v5;
      v27 = v41;
      v24(v41, v25, v4);
      sub_1D9090018(&qword_1ECAB2CA0, 255, MEMORY[0x1E6968FB0]);
      v28 = sub_1D91781BC();
      v39 = v26;
      v29 = *(v26 + 8);
      v29(v27, v4);
      v29(v13, v4);
      sub_1D8D08A50(v19, &unk_1ECAB5910, &qword_1D9188C90);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v13, v4);
LABEL_6:
    v23 = v19;
LABEL_14:
    sub_1D8D08A50(v23, &qword_1ECAB6178, &unk_1D9193430);
    return 0;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v39 = v5;
  sub_1D8D08A50(v19, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_8:
  v30 = *(type metadata accessor for ServerTranscript.Attributes.AssetUrls(0) + 20);
  v31 = *(v14 + 48);
  v32 = v42;
  sub_1D8D088B4(v43 + v30, v42, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(v44 + v30, v32 + v31, &unk_1ECAB5910, &qword_1D9188C90);
  if (v22(v32, 1, v4) == 1)
  {
    if (v22((v32 + v31), 1, v4) == 1)
    {
      sub_1D8D08A50(v32, &unk_1ECAB5910, &qword_1D9188C90);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v40;
  sub_1D8D088B4(v32, v40, &unk_1ECAB5910, &qword_1D9188C90);
  if (v22((v32 + v31), 1, v4) == 1)
  {
    (*(v39 + 8))(v33, v4);
LABEL_13:
    v23 = v32;
    goto LABEL_14;
  }

  v35 = v39;
  v36 = v41;
  (*(v39 + 32))(v41, v32 + v31, v4);
  sub_1D9090018(&qword_1ECAB2CA0, 255, MEMORY[0x1E6968FB0]);
  v37 = sub_1D91781BC();
  v38 = *(v35 + 8);
  v38(v36, v4);
  v38(v33, v4);
  sub_1D8D08A50(v32, &unk_1ECAB5910, &qword_1D9188C90);
  return (v37 & 1) != 0;
}

uint64_t sub_1D9091060()
{
  v0 = sub_1D917980C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D90910AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9091264(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D90913C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D9091638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEC000000656C6261 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C725564656566 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C8010 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEF656D6954657461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5565746973626577 && a2 == 0xEA00000000006C72 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xED0000737265626DLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73726566666FLL && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6C6C65737075 && a2 == 0xE600000000000000)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1D9091BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEC000000656C6261 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C725564656566 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726566666FLL && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x695473656E757469 && a2 == 0xEB00000000656C74 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4F6B726F77747261 && a2 == 0xED00006E69676972 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x637365446C6C7566 && a2 == 0xEF6E6F6974706972 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEF656D6954657461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91C80B0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x5565746973626577 && a2 == 0xEA00000000006C72 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4B6C656E6E616863 && a2 == 0xEB00000000646E69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E694B616964656DLL && a2 == 0xE900000000000064 || (sub_1D9179ACC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6C72557465737361 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91C8150 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75 || (sub_1D9179ACC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x72617262694C6E69 && a2 == 0xE900000000000079)
  {

    return 25;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t sub_1D9092434(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7255736C68 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91C8150 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D909259C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F68, &qword_1D91B15D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90965A8();
  sub_1D9179EEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

  v37 = v4;
  v38 = a1;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  v39 = v7;
  while (1)
  {
    v11 = byte_1F5461EE0[v9 + 32];
    v42 = v11;
    v12 = sub_1D91798BC();
    if (v1)
    {

      v1 = 0;
      goto LABEL_5;
    }

    v14 = v3;
    v15 = v12;
    v16 = v13;
    v40 = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v10;
    v18 = sub_1D8F06EDC(v11);
    v20 = v10[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v10[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v18;
        sub_1D8F84F64();
        v18 = v33;
        v27 = v15;
        v26 = v16;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D9008718(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1D8F06EDC(v11);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_23;
      }
    }

    v26 = v16;
    v27 = v15;
LABEL_13:
    v3 = v14;
    v7 = v39;
    v10 = v41;
    if (v24)
    {
      v28 = (v41[7] + 16 * v18);
      v29 = v28[1];
      *v28 = v27;
      v28[1] = v26;
    }

    else
    {
      v41[(v18 >> 6) + 8] |= 1 << v18;
      *(v10[6] + v18) = v11;
      v30 = (v10[7] + 16 * v18);
      *v30 = v27;
      v30[1] = v26;
      v31 = v10[2];
      v22 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v22)
      {
        goto LABEL_22;
      }

      v10[2] = v32;
    }

    v1 = v40;
LABEL_5:
    if (++v9 == 4)
    {
      (*(v37 + 8))(v7, v3);
      type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates();
      v3 = swift_allocObject();
      v34 = MEMORY[0x1E69E7CC8];
      *(v3 + 16) = v10;
      *(v3 + 24) = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

unint64_t sub_1D9092898()
{
  result = qword_1ECAB9CA0;
  if (!qword_1ECAB9CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C98, &qword_1D91AE5D8);
    sub_1D9044968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9CA0);
  }

  return result;
}

unint64_t sub_1D9092924()
{
  result = qword_1ECAB9CB0;
  if (!qword_1ECAB9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9CB0);
  }

  return result;
}

unint64_t sub_1D9092978()
{
  result = qword_1ECAB1DA8;
  if (!qword_1ECAB1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1DA8);
  }

  return result;
}

unint64_t sub_1D9092A14()
{
  result = qword_1EDCD17B0;
  if (!qword_1EDCD17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD17B0);
  }

  return result;
}

unint64_t sub_1D9092A68()
{
  result = qword_1EDCD0A98;
  if (!qword_1EDCD0A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9CE0, &qword_1D91AE608);
    sub_1D8CF48EC(qword_1EDCD5128, &qword_1ECAB9CE8, &qword_1D91AE610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0A98);
  }

  return result;
}

unint64_t sub_1D9092B18()
{
  result = qword_1ECAAFF88;
  if (!qword_1ECAAFF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9CF8, &qword_1D91AE620);
    sub_1D9090018(&qword_1ECAB26D0, 255, type metadata accessor for ServerChannel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF88);
  }

  return result;
}

unint64_t sub_1D9092BD0()
{
  result = qword_1ECAB1270;
  if (!qword_1ECAB1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1270);
  }

  return result;
}

unint64_t sub_1D9092C24()
{
  result = qword_1ECAB1858;
  if (!qword_1ECAB1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1858);
  }

  return result;
}

unint64_t sub_1D9092C9C()
{
  result = qword_1ECAB9D38;
  if (!qword_1ECAB9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9D38);
  }

  return result;
}

unint64_t sub_1D9092CF0()
{
  result = qword_1ECAB18C0;
  if (!qword_1ECAB18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB18C0);
  }

  return result;
}

uint64_t sub_1D9092D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9092DEC()
{
  result = qword_1ECAB21A8;
  if (!qword_1ECAB21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB21A8);
  }

  return result;
}

uint64_t sub_1D9092E40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9092EA0()
{
  result = qword_1ECAB21C0;
  if (!qword_1ECAB21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB21C0);
  }

  return result;
}

unint64_t sub_1D9092EF4()
{
  result = qword_1ECAB2160;
  if (!qword_1ECAB2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2160);
  }

  return result;
}

uint64_t sub_1D9092F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9092FB0()
{
  result = qword_1ECAB17E0;
  if (!qword_1ECAB17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB17E0);
  }

  return result;
}

unint64_t sub_1D9093004()
{
  result = qword_1ECAAFF68;
  if (!qword_1ECAAFF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9DA8, &qword_1D91AE698);
    sub_1D8CF48EC(&qword_1ECAB2278, &qword_1ECAB9DB0, &qword_1D91AE6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF68);
  }

  return result;
}

unint64_t sub_1D90930B4()
{
  result = qword_1ECAB9DC8;
  if (!qword_1ECAB9DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9DC0, &qword_1D91AE6B0);
    sub_1D9090018(&qword_1ECAB9DD0, v1, type metadata accessor for ServerPodcastBase);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9DC8);
  }

  return result;
}

unint64_t sub_1D9093168()
{
  result = qword_1ECAB12C8;
  if (!qword_1ECAB12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB12C8);
  }

  return result;
}

unint64_t sub_1D90931BC()
{
  result = qword_1ECAB9DE8;
  if (!qword_1ECAB9DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9DE0, &qword_1D91AE6C0);
    sub_1D9090018(&qword_1ECAB9DF0, v1, type metadata accessor for PodcastPlaybackPositionData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9DE8);
  }

  return result;
}

unint64_t sub_1D9093294()
{
  result = qword_1ECAAFF08;
  if (!qword_1ECAAFF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9DE0, &qword_1D91AE6C0);
    sub_1D9090018(&qword_1ECAB1840, v1, type metadata accessor for PodcastPlaybackPositionData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF08);
  }

  return result;
}

unint64_t sub_1D9093348()
{
  result = qword_1ECAB9E08;
  if (!qword_1ECAB9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E08);
  }

  return result;
}

unint64_t sub_1D90933C0()
{
  result = qword_1ECAB9E30;
  if (!qword_1ECAB9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E30);
  }

  return result;
}

unint64_t sub_1D9093430()
{
  result = qword_1ECAB9E40;
  if (!qword_1ECAB9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E40);
  }

  return result;
}

unint64_t sub_1D9093488()
{
  result = qword_1ECAB9E48;
  if (!qword_1ECAB9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E48);
  }

  return result;
}

unint64_t sub_1D90934E0()
{
  result = qword_1ECAB9E50;
  if (!qword_1ECAB9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E50);
  }

  return result;
}

unint64_t sub_1D9093538()
{
  result = qword_1ECAB9E58;
  if (!qword_1ECAB9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E58);
  }

  return result;
}

unint64_t sub_1D9093590()
{
  result = qword_1ECAB9E60;
  if (!qword_1ECAB9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E60);
  }

  return result;
}

unint64_t sub_1D90935E8()
{
  result = qword_1EDCD1210[0];
  if (!qword_1EDCD1210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD1210);
  }

  return result;
}

unint64_t sub_1D9093684()
{
  result = qword_1EDCD1200;
  if (!qword_1EDCD1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1200);
  }

  return result;
}

unint64_t sub_1D90936DC()
{
  result = qword_1EDCD1208;
  if (!qword_1EDCD1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1208);
  }

  return result;
}

void sub_1D9093D88()
{
  sub_1D9093E98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D9093E98()
{
  if (!qword_1EDCD5928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5928);
    }
  }
}

void sub_1D9093F54()
{
  sub_1D9093E98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PodcastEpisodeAttributes.__allocating_init(artistName:url:subscribable:feedUrl:offers:name:itunesTitle:description:artworkOrigin:artwork:copyright:kind:fullDescription:releaseDateTime:firstAvailableDates:contentRating:websiteUrl:genreNames:mediaKind:assetUrl:durationInMilliseconds:guid:episodeNumber:seasonNumber:inLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 + 296);

  return v35(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1D9094430()
{
  result = type metadata accessor for ServerTranscript.Attributes(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9094548()
{
  result = type metadata accessor for ServerTranscript.Attributes.AssetUrls(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D90946EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1D91791BC();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D909475C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1D90948DC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_1D9094C6C()
{
  result = qword_1ECAB9E70;
  if (!qword_1ECAB9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E70);
  }

  return result;
}

unint64_t sub_1D9094CC4()
{
  result = qword_1ECAB9E78;
  if (!qword_1ECAB9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E78);
  }

  return result;
}

unint64_t sub_1D9094D1C()
{
  result = qword_1ECAB9E80;
  if (!qword_1ECAB9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E80);
  }

  return result;
}

unint64_t sub_1D9094D74()
{
  result = qword_1ECAB9E88;
  if (!qword_1ECAB9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E88);
  }

  return result;
}

unint64_t sub_1D9094DCC()
{
  result = qword_1ECAB9E90;
  if (!qword_1ECAB9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E90);
  }

  return result;
}

unint64_t sub_1D9094E24()
{
  result = qword_1ECAB9E98;
  if (!qword_1ECAB9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9E98);
  }

  return result;
}

unint64_t sub_1D9094E7C()
{
  result = qword_1ECAB9EA0;
  if (!qword_1ECAB9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EA0);
  }

  return result;
}

unint64_t sub_1D9094ED4()
{
  result = qword_1ECAB9EA8;
  if (!qword_1ECAB9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EA8);
  }

  return result;
}

unint64_t sub_1D9094F2C()
{
  result = qword_1ECAB9EB0;
  if (!qword_1ECAB9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EB0);
  }

  return result;
}

unint64_t sub_1D9094F84()
{
  result = qword_1ECAB9EB8;
  if (!qword_1ECAB9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EB8);
  }

  return result;
}

unint64_t sub_1D9094FDC()
{
  result = qword_1ECAB9EC0;
  if (!qword_1ECAB9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EC0);
  }

  return result;
}

unint64_t sub_1D9095034()
{
  result = qword_1ECAB9EC8;
  if (!qword_1ECAB9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EC8);
  }

  return result;
}

unint64_t sub_1D909508C()
{
  result = qword_1ECAB9ED0;
  if (!qword_1ECAB9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9ED0);
  }

  return result;
}

unint64_t sub_1D90950E4()
{
  result = qword_1ECAB9ED8;
  if (!qword_1ECAB9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9ED8);
  }

  return result;
}

unint64_t sub_1D909513C()
{
  result = qword_1ECAB9EE0;
  if (!qword_1ECAB9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EE0);
  }

  return result;
}

unint64_t sub_1D9095194()
{
  result = qword_1ECAB9EE8;
  if (!qword_1ECAB9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EE8);
  }

  return result;
}

unint64_t sub_1D90951EC()
{
  result = qword_1ECAB9EF0;
  if (!qword_1ECAB9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EF0);
  }

  return result;
}

unint64_t sub_1D9095244()
{
  result = qword_1ECAB9EF8;
  if (!qword_1ECAB9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9EF8);
  }

  return result;
}

unint64_t sub_1D909529C()
{
  result = qword_1ECAB9F00;
  if (!qword_1ECAB9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F00);
  }

  return result;
}

unint64_t sub_1D90952F4()
{
  result = qword_1ECAB9F08;
  if (!qword_1ECAB9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F08);
  }

  return result;
}

unint64_t sub_1D909534C()
{
  result = qword_1ECAB9F10;
  if (!qword_1ECAB9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F10);
  }

  return result;
}

unint64_t sub_1D90953A4()
{
  result = qword_1ECAB9F18;
  if (!qword_1ECAB9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F18);
  }

  return result;
}

unint64_t sub_1D90953FC()
{
  result = qword_1ECAB9F20;
  if (!qword_1ECAB9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F20);
  }

  return result;
}

unint64_t sub_1D9095454()
{
  result = qword_1ECAB9F28;
  if (!qword_1ECAB9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F28);
  }

  return result;
}

unint64_t sub_1D90954AC()
{
  result = qword_1ECAB9F30;
  if (!qword_1ECAB9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F30);
  }

  return result;
}

unint64_t sub_1D9095504()
{
  result = qword_1ECAB9F38;
  if (!qword_1ECAB9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F38);
  }

  return result;
}

unint64_t sub_1D909555C()
{
  result = qword_1ECAB12B8;
  if (!qword_1ECAB12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB12B8);
  }

  return result;
}

unint64_t sub_1D90955B4()
{
  result = qword_1ECAB12C0;
  if (!qword_1ECAB12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB12C0);
  }

  return result;
}

unint64_t sub_1D909560C()
{
  result = qword_1ECAB17D0;
  if (!qword_1ECAB17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB17D0);
  }

  return result;
}

unint64_t sub_1D9095664()
{
  result = qword_1ECAB17D8;
  if (!qword_1ECAB17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB17D8);
  }

  return result;
}

unint64_t sub_1D90956BC()
{
  result = qword_1ECAB2150;
  if (!qword_1ECAB2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2150);
  }

  return result;
}

unint64_t sub_1D9095714()
{
  result = qword_1ECAB2158;
  if (!qword_1ECAB2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2158);
  }

  return result;
}

unint64_t sub_1D909576C()
{
  result = qword_1ECAB21B0;
  if (!qword_1ECAB21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB21B0);
  }

  return result;
}

unint64_t sub_1D90957C4()
{
  result = qword_1ECAB21B8;
  if (!qword_1ECAB21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB21B8);
  }

  return result;
}

unint64_t sub_1D909581C()
{
  result = qword_1ECAB2198;
  if (!qword_1ECAB2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2198);
  }

  return result;
}

unint64_t sub_1D9095874()
{
  result = qword_1ECAB21A0;
  if (!qword_1ECAB21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB21A0);
  }

  return result;
}

unint64_t sub_1D90958CC()
{
  result = qword_1ECAB1848;
  if (!qword_1ECAB1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1848);
  }

  return result;
}

unint64_t sub_1D9095924()
{
  result = qword_1ECAB1850;
  if (!qword_1ECAB1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1850);
  }

  return result;
}

unint64_t sub_1D909597C()
{
  result = qword_1ECAB1260;
  if (!qword_1ECAB1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1260);
  }

  return result;
}

unint64_t sub_1D90959D4()
{
  result = qword_1ECAB1268;
  if (!qword_1ECAB1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1268);
  }

  return result;
}

unint64_t sub_1D9095A2C()
{
  result = qword_1EDCD17A0;
  if (!qword_1EDCD17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD17A0);
  }

  return result;
}

unint64_t sub_1D9095A84()
{
  result = qword_1EDCD17A8;
  if (!qword_1EDCD17A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD17A8);
  }

  return result;
}

unint64_t sub_1D9095ADC()
{
  result = qword_1ECAB1D98;
  if (!qword_1ECAB1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D98);
  }

  return result;
}

unint64_t sub_1D9095B34()
{
  result = qword_1ECAB1DA0;
  if (!qword_1ECAB1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1DA0);
  }

  return result;
}

unint64_t sub_1D9095B8C()
{
  result = qword_1ECAB9F40;
  if (!qword_1ECAB9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F40);
  }

  return result;
}

unint64_t sub_1D9095BE4()
{
  result = qword_1ECAB9F48;
  if (!qword_1ECAB9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F48);
  }

  return result;
}

unint64_t sub_1D9095C3C()
{
  result = qword_1EDCD4040;
  if (!qword_1EDCD4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4040);
  }

  return result;
}

unint64_t sub_1D9095C94()
{
  result = qword_1EDCD4048;
  if (!qword_1EDCD4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4048);
  }

  return result;
}

unint64_t sub_1D9095CEC()
{
  result = qword_1EDCD5038;
  if (!qword_1EDCD5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5038);
  }

  return result;
}

unint64_t sub_1D9095D44()
{
  result = qword_1EDCD5040;
  if (!qword_1EDCD5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5040);
  }

  return result;
}

unint64_t sub_1D9095D9C()
{
  result = qword_1EDCD2F30;
  if (!qword_1EDCD2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD2F30);
  }

  return result;
}

unint64_t sub_1D9095DF4()
{
  result = qword_1EDCD2F38;
  if (!qword_1EDCD2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD2F38);
  }

  return result;
}

unint64_t sub_1D9095E4C()
{
  result = qword_1EDCD1B20;
  if (!qword_1EDCD1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1B20);
  }

  return result;
}

unint64_t sub_1D9095EA4()
{
  result = qword_1EDCD1B28;
  if (!qword_1EDCD1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1B28);
  }

  return result;
}

unint64_t sub_1D9095EFC()
{
  result = qword_1EDCD48D0;
  if (!qword_1EDCD48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD48D0);
  }

  return result;
}

unint64_t sub_1D9095F54()
{
  result = qword_1EDCD48D8;
  if (!qword_1EDCD48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD48D8);
  }

  return result;
}

unint64_t sub_1D9095FAC()
{
  result = qword_1EDCD54A8;
  if (!qword_1EDCD54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD54A8);
  }

  return result;
}

unint64_t sub_1D9096004()
{
  result = qword_1EDCD54B0;
  if (!qword_1EDCD54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD54B0);
  }

  return result;
}

unint64_t sub_1D909605C()
{
  result = qword_1EDCD4768;
  if (!qword_1EDCD4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4768);
  }

  return result;
}

unint64_t sub_1D90960B4()
{
  result = qword_1EDCD4770;
  if (!qword_1EDCD4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4770);
  }

  return result;
}

unint64_t sub_1D909610C()
{
  result = qword_1ECAB9F50;
  if (!qword_1ECAB9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F50);
  }

  return result;
}

unint64_t sub_1D9096164()
{
  result = qword_1ECAB9F58;
  if (!qword_1ECAB9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F58);
  }

  return result;
}

unint64_t sub_1D90961BC()
{
  result = qword_1ECAB1D78;
  if (!qword_1ECAB1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D78);
  }

  return result;
}

unint64_t sub_1D9096214()
{
  result = qword_1ECAB1D80;
  if (!qword_1ECAB1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D80);
  }

  return result;
}

unint64_t sub_1D909626C()
{
  result = qword_1EDCD4698;
  if (!qword_1EDCD4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD4698);
  }

  return result;
}

unint64_t sub_1D90962C4()
{
  result = qword_1EDCD46A0;
  if (!qword_1EDCD46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD46A0);
  }

  return result;
}

uint64_t sub_1D9096318(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D909647C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001D91C8180 == a2;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91C81A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D90965A8()
{
  result = qword_1EDCD11F8;
  if (!qword_1EDCD11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD11F8);
  }

  return result;
}

unint64_t sub_1D90965FC()
{
  result = qword_1ECAB10E0;
  if (!qword_1ECAB10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10E0);
  }

  return result;
}

unint64_t sub_1D9096650()
{
  result = qword_1ECAB9F60;
  if (!qword_1ECAB9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F60);
  }

  return result;
}

uint64_t type metadata accessor for DefaultListBuilder()
{
  result = qword_1ECAB2010;
  if (!qword_1ECAB2010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D90967F0()
{
  sub_1D8CEF9DC();
  if (v0 <= 0x3F)
  {
    sub_1D9096884();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9096884()
{
  if (!qword_1EDCD6338[0])
  {
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCD6338);
    }
  }
}

void sub_1D90968D4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  if (!MTPlaybackContinuousPlaybackEnabled())
  {
    if (qword_1ECAB0DB8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1ECAB0DC0);
    v22 = sub_1D917741C();
    v23 = sub_1D9178D1C();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_22;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Continuous playback disabled. Returning nil settings";
    goto LABEL_21;
  }

  v13 = type metadata accessor for DefaultListBuilder();
  v14 = (v1 + *(v13 + 24));
  v15 = *(v14 + 20) | (*(v14 + 84) << 32);
  v16 = v14[4];
  v53 = v14[3];
  v54 = v16;
  v17 = v14[2];
  v51 = v14[1];
  v52 = v17;
  v50 = *v14;
  if (v15 == 2)
  {
    v18 = *(v13 + 20);
    sub_1D9096DC0(v1 + v18, v12);
    v19 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    v20 = *(*(v19 - 1) + 48);
    if (v20(v12, 1, v19) == 1)
    {
      sub_1D9096E30(v12);
LABEL_17:
      if (qword_1ECAB0DB8 != -1)
      {
        swift_once();
      }

      v39 = sub_1D917744C();
      __swift_project_value_buffer(v39, qword_1ECAB0DC0);
      v22 = sub_1D917741C();
      v23 = sub_1D9178D1C();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_22;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Missing information to generate a new list settings for intent. Returning nil.";
LABEL_21:
      _os_log_impl(&dword_1D8CEC000, v22, v23, v25, v24, 2u);
      MEMORY[0x1DA72CB90](v24, -1, -1);
LABEL_22:

      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 84) = 0;
      *(a1 + 80) = 2;
      return;
    }

    v43 = v18;
    v35 = &v12[v19[39]];
    v36 = *(v35 + 1);
    v45 = *v35;

    sub_1D9096E98(v12);
    v44 = v36;
    if (!v36)
    {
      goto LABEL_17;
    }

    v37 = v43;
    sub_1D9096DC0(v1 + v43, v9);
    if (v20(v9, 1, v19) == 1)
    {
      sub_1D9096E30(v9);
      v38 = 17;
    }

    else
    {
      v38 = v9[v19[41]];
      sub_1D9096E98(v9);
    }

    sub_1D9096DC0(v1 + v37, v6);
    if (v20(v6, 1, v19) == 1)
    {
      sub_1D9096E30(v6);
      v40 = 0;
    }

    else
    {
      v40 = v6[v19[42]];
      sub_1D9096E98(v6);
    }

    if (v38 == 17)
    {
      v41 = 2;
    }

    else
    {
      v41 = v38;
    }

    v42 = v44;
    *a1 = v45;
    *(a1 + 8) = v42;
    *(a1 + 64) = 3;
    *(a1 + 65) = v41;
    *(a1 + 72) = 3;
    *(a1 + 80) = v40;
    *(a1 + 81) = 0;
  }

  else
  {
    v26 = v14[2];
    v27 = v14[4];
    v47[3] = v14[3];
    v47[4] = v27;
    v28 = *v14;
    v47[1] = v14[1];
    v47[2] = v26;
    v47[0] = v28;
    v48 = v15;
    v49 = BYTE4(v15);
    sub_1D8D0841C(v47, &v46);
    if (qword_1ECAB0DB8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1ECAB0DC0);
    v30 = sub_1D917741C();
    v31 = sub_1D9178D1C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D8CEC000, v30, v31, "We already have base settings. Using passed in EpisodeListSettings for intent", v32, 2u);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    v33 = v53;
    *(a1 + 32) = v52;
    *(a1 + 48) = v33;
    *(a1 + 64) = v54;
    v34 = v51;
    *a1 = v50;
    *(a1 + 16) = v34;
    *(a1 + 80) = v15;
    *(a1 + 84) = BYTE4(v15);
  }
}

uint64_t sub_1D9096DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9096E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9096E98(uint64_t a1)
{
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EndOfQueueEpisodeListBuilder()
{
  result = qword_1ECAB17F0;
  if (!qword_1ECAB17F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9096F68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v66 - v8;
  v10 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for EndOfQueueEpisodeListBuilder();
  v15 = *(v71 + 20);
  sub_1D8D088B4(v1 + v15, v9, &qword_1ECAB9F70, qword_1D91B1680);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_1D9096E30(v9);
LABEL_7:
    v20 = (v1 + *(v71 + 24));
    v21 = v20[2];
    v23 = v20[4];
    v76 = v20[3];
    v22 = v76;
    *v77 = v23;
    *&v77[13] = *(v20 + 77);
    v24 = *&v77[13];
    v26 = v20[1];
    aBlock = *v20;
    v25 = aBlock;
    v74 = v26;
    v75 = v21;
    *(a1 + 32) = v21;
    *(a1 + 48) = v22;
    *(a1 + 64) = v23;
    *(a1 + 77) = v24;
    *a1 = v25;
    *(a1 + 16) = v26;
    return sub_1D8D088B4(&aBlock, v72, &qword_1ECAB9F78, qword_1D91B16D0);
  }

  sub_1D90977D8(v9, v14);
  v17 = &v14[v10[39]];
  v18 = *(v17 + 1);
  if (!v18)
  {
    sub_1D9096E98(v14);
    goto LABEL_7;
  }

  v19 = *v17;
  sub_1D8D088B4(v1 + v15, v6, &qword_1ECAB9F70, qword_1D91B1680);
  if (v16(v6, 1, v10) == 1)
  {
    sub_1D9096E98(v14);
    sub_1D9096E30(v6);
LABEL_19:
    v57 = 0;
LABEL_20:
    v58 = (v1 + *(v71 + 24));
    *&v77[13] = *(v58 + 77);
    v59 = v58[2];
    v60 = v58[3];
    v61 = v58[4];
    v76 = v60;
    *v77 = v61;
    v62 = *v58;
    v63 = v58[1];
    aBlock = *v58;
    v74 = v63;
    v75 = v59;
    v64 = *&v77[16];
    v65 = v77[20];
    if (v77[16] != 2)
    {
      v65 = 2;
    }

    *(a1 + 48) = v60;
    *(a1 + 64) = v61;
    *(a1 + 16) = v63;
    *(a1 + 32) = v59;
    *a1 = v62;
    *(a1 + 80) = v64;
    *(a1 + 84) = v65;
    sub_1D8D088B4(&aBlock, v72, &qword_1ECAB9F78, qword_1D91B16D0);
    return sub_1D8D15664(v57);
  }

  v28 = v6[v10[33]];

  sub_1D9096E98(v6);
  if ((v28 & 1) == 0)
  {
    sub_1D9096E98(v14);

    goto LABEL_19;
  }

  v69 = v1;
  if (qword_1ECAB0DB8 != -1)
  {
    swift_once();
  }

  v70 = v19;
  v29 = sub_1D917744C();
  v66[1] = __swift_project_value_buffer(v29, qword_1ECAB0DC0);
  v30 = sub_1D917741C();
  v31 = sub_1D9178D1C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D8CEC000, v30, v31, "Show is serial. Generating serial list settings.", v32, 2u);
    MEMORY[0x1DA72CB90](v32, -1, -1);
  }

  v33 = objc_opt_self();
  v66[0] = *&v14[v10[32]];
  v34 = [v33 predicateForSeasonNumber_];
  v35 = [v33 predicateForEpisodesWithEpisodeNumbersGreaterThan_];
  v36 = [v34 AND_];

  v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v38 = [v33 predicateForAllEpisodesOnPodcastUuid_];

  v39 = [v36 AND_];
  v40 = [v33 predicateForVisuallyPlayed_];
  v41 = [v39 AND_];

  v42 = [v33 predicateForEntitledEpisodes];
  v43 = [v41 AND_];

  v44 = [objc_opt_self() sharedInstance];
  v45 = [v44 playbackContext];

  v46 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v68 = v43;
  [v46 setPredicate_];
  [v46 setFetchLimit_];
  v72[0] = 0;
  v47 = swift_allocObject();
  v47[2] = v72;
  v47[3] = v45;
  v47[4] = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1D9097A00;
  *(v48 + 24) = v47;
  *&v75 = sub_1D8D24508;
  *(&v75 + 1) = v48;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v74 = sub_1D8D24488;
  *(&v74 + 1) = &block_descriptor_73;
  v49 = _Block_copy(&aBlock);
  v50 = v45;
  v67 = v46;

  v51 = v50;
  [v50 performBlockAndWait_];
  _Block_release(v49);
  LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

  v1 = v69;
  if (v49)
  {
    __break(1u);
    return result;
  }

  if (v72[0] != 1)
  {
    sub_1D9096E98(v14);

    v57 = sub_1D9097A00;
    goto LABEL_20;
  }

  v52 = v66[0];
  v53 = sub_1D917741C();
  v54 = sub_1D9178D1C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1D8CEC000, v53, v54, "Found unplayed episodes for this serial show.", v55, 2u);
    MEMORY[0x1DA72CB90](v55, -1, -1);
  }

  v56 = v14[v10[41]];
  sub_1D9096E98(v14);

  *a1 = v70;
  *(a1 + 8) = v18;
  *(a1 + 16) = v52;
  *(a1 + 24) = 0;
  *(a1 + 64) = 8;
  *(a1 + 65) = v56;
  *(a1 + 72) = 3;
  *(a1 + 80) = 1;
  *(a1 + 84) = 2;
  return result;
}

uint64_t sub_1D90977D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D909783C(BOOL *a1)
{
  sub_1D8E93CA4();
  result = sub_1D917907C();
  *a1 = result > 0;
  return result;
}

uint64_t sub_1D9097A00()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1D909783C(*(v0 + 16));
}

uint64_t type metadata accessor for UpNextEpisodeListBuilder()
{
  result = qword_1ECAB1920;
  if (!qword_1ECAB1920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9097A80(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  v10 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MTPlaybackContinuousPlaybackEnabled())
  {
    EpisodeListBuilder = type metadata accessor for UpNextEpisodeListBuilder();
    v16 = *(EpisodeListBuilder + 20);
    sub_1D8D088B4(v1 + v16, v9, &qword_1ECAB9F70, qword_1D91B1680);
    v17 = *(v11 + 48);
    if (v17(v9, 1, v10) == 1)
    {
      sub_1D9096E30(v9);
LABEL_13:
      v24 = (v1 + *(EpisodeListBuilder + 24));
      v25 = v24[2];
      v27 = v24[4];
      v77 = v24[3];
      v26 = v77;
      v78[0] = v27;
      *(v78 + 13) = *(v24 + 77);
      v28 = *(v78 + 13);
      v30 = v24[1];
      aBlock = *v24;
      v29 = aBlock;
      v75 = v30;
      v76 = v25;
      *(a1 + 32) = v25;
      *(a1 + 48) = v26;
      *(a1 + 64) = v27;
      *(a1 + 77) = v28;
      *a1 = v29;
      *(a1 + 16) = v30;
      sub_1D8D088B4(&aBlock, v73, &qword_1ECAB9F78, qword_1D91B16D0);
      return;
    }

    sub_1D90977D8(v9, v14);
    v22 = &v14[v10[39]];
    v23 = *(v22 + 1);
    if (!v23)
    {
      sub_1D9096E98(v14);
      goto LABEL_13;
    }

    v72 = *v22;
    sub_1D8D088B4(v1 + v16, v6, &qword_1ECAB9F70, qword_1D91B1680);
    if (v17(v6, 1, v10) == 1)
    {
      sub_1D9096E98(v14);
      sub_1D9096E30(v6);
LABEL_25:
      v58 = 0;
LABEL_26:
      v59 = (v1 + *(EpisodeListBuilder + 24));
      v60 = v59[2];
      v62 = v59[4];
      v77 = v59[3];
      v61 = v77;
      v78[0] = v62;
      *(v78 + 13) = *(v59 + 77);
      v63 = *(v78 + 13);
      v65 = v59[1];
      aBlock = *v59;
      v64 = aBlock;
      v75 = v65;
      v76 = v60;
      *(a1 + 32) = v60;
      *(a1 + 48) = v61;
      *(a1 + 64) = v62;
      *(a1 + 77) = v63;
      *a1 = v64;
      *(a1 + 16) = v65;
      sub_1D8D088B4(&aBlock, v73, &qword_1ECAB9F78, qword_1D91B16D0);
      sub_1D8D15664(v58);
      return;
    }

    v31 = v6[v10[33]];

    sub_1D9096E98(v6);
    if ((v31 & 1) == 0)
    {
      sub_1D9096E98(v14);

      goto LABEL_25;
    }

    v71 = v1;
    if (qword_1ECAB0DB8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D917744C();
    v66 = __swift_project_value_buffer(v32, qword_1ECAB0DC0);
    v33 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Show is serial. Generating serial list settings.", v35, 2u);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    v36 = objc_opt_self();
    v67 = *&v14[v10[32]];
    v37 = [v36 predicateForSeasonNumber_];
    v38 = [v36 predicateForEpisodesWithEpisodeNumbersGreaterThan_];
    v39 = [v37 AND_];

    v69 = v23;
    v40 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v41 = [v36 predicateForAllEpisodesOnPodcastUuid_];

    v42 = [v39 AND_];
    v43 = [objc_opt_self() sharedInstance];
    v44 = [v43 playbackContext];

    v45 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v70 = v42;
    [v45 setPredicate_];
    [v45 setFetchLimit_];
    v73[0] = 0;
    v46 = swift_allocObject();
    v46[2] = v73;
    v46[3] = v44;
    v46[4] = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1D9097A00;
    *(v47 + 24) = v46;
    *&v76 = sub_1D8D24508;
    *(&v76 + 1) = v47;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v75 = sub_1D8D24488;
    *(&v75 + 1) = &block_descriptor_74;
    v48 = _Block_copy(&aBlock);
    v49 = v44;
    v68 = v45;

    v50 = v49;
    [v49 performBlockAndWait_];
    _Block_release(v48);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    v1 = v71;
    if (v48)
    {
      __break(1u);
    }

    else
    {
      if (v73[0] != 1)
      {
        sub_1D9096E98(v14);

        v58 = sub_1D9097A00;
        goto LABEL_26;
      }

      v51 = sub_1D917741C();
      v52 = sub_1D9178D1C();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v69;
      if (v53)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1D8CEC000, v51, v52, "Found unplayed episodes for this serial show.", v55, 2u);
        MEMORY[0x1DA72CB90](v55, -1, -1);
      }

      v56 = v14[v10[41]];
      v57 = v14[v10[42]];
      sub_1D9096E98(v14);

      *a1 = v72;
      *(a1 + 8) = v54;
      *(a1 + 16) = v67;
      *(a1 + 24) = 0;
      *(a1 + 64) = 8;
      *(a1 + 65) = v56;
      *(a1 + 72) = 3;
      *(a1 + 80) = v57;
      *(a1 + 81) = 0x1000000;
    }
  }

  else
  {
    if (qword_1ECAB0DB8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1ECAB0DC0);
    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Continuous playback disabled. Returning nil settings", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 84) = 0;
    *(a1 + 80) = 2;
  }
}

double sub_1D909833C@<D0>(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  v2 = *MEMORY[0x1E69874D8];
  v3 = sub_1D917820C();
  sub_1D90990DC(v3, v4, v17);
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D9098598();
    if (swift_dynamicCast())
    {
      v7 = [v16 code];
      if (v7 == -11870)
      {
LABEL_6:
        *(a1 + 24) = &type metadata for PodcastsPlaybackError.PlayerError;
        *(a1 + 32) = sub_1D90985E4();

        *a1 = 0;
        return result;
      }

      if (v7 == -11819)
      {
        *(a1 + 24) = &type metadata for PodcastsPlaybackError.PlayerError;
        *(a1 + 32) = sub_1D90985E4();

        *a1 = 1;
        return result;
      }

      if (v7 == -11828)
      {
        goto LABEL_6;
      }

      if (qword_1ECAB0DB8 != -1)
      {
        swift_once();
      }

      v9 = sub_1D917744C();
      __swift_project_value_buffer(v9, qword_1ECAB0DC0);
      v10 = v16;
      v11 = sub_1D917741C();
      v12 = sub_1D9178CFC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v10;
        *v14 = v10;
        v15 = v10;
        _os_log_impl(&dword_1D8CEC000, v11, v12, "PlaybackErrorTransforming: Unhandled AVFoundation error: %@", v13, 0xCu);
        sub_1D8E262AC(v14);
        MEMORY[0x1DA72CB90](v14, -1, -1);
        MEMORY[0x1DA72CB90](v13, -1, -1);
      }

      else
      {
      }
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D9098598()
{
  result = qword_1ECAAFC88;
  if (!qword_1ECAAFC88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAFC88);
  }

  return result;
}

unint64_t sub_1D90985E4()
{
  result = qword_1ECAB9F80;
  if (!qword_1ECAB9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F80);
  }

  return result;
}

double sub_1D9098648@<D0>(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  v2 = *MEMORY[0x1E69E41B8];
  v3 = sub_1D917820C();
  sub_1D90990DC(v3, v4, v17);
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D9098598();
    if (swift_dynamicCast())
    {
      v7 = __ROR8__([v16 code] + 1014, 1);
      if (v7 > 4)
      {
        if (v7 == 6)
        {
          *(a1 + 24) = &type metadata for PodcastsPlaybackError.FairPlayError;
          *(a1 + 32) = sub_1D90988F4();

          *a1 = 1;
          return result;
        }

        if (v7 == 5)
        {
          *(a1 + 24) = &type metadata for PodcastsPlaybackError.FairPlayError;
          *(a1 + 32) = sub_1D90988F4();

          *a1 = 0;
          return result;
        }
      }

      else
      {
        if (!v7)
        {
          *(a1 + 24) = &type metadata for PodcastsPlaybackError.FairPlayError;
          *(a1 + 32) = sub_1D90988F4();

          *a1 = 2;
          return result;
        }

        if (v7 == 2)
        {
          *(a1 + 24) = &type metadata for PodcastsPlaybackError.FairPlayError;
          *(a1 + 32) = sub_1D90988F4();

          *a1 = 3;
          return result;
        }
      }

      if (qword_1ECAB0DB8 != -1)
      {
        swift_once();
      }

      v9 = sub_1D917744C();
      __swift_project_value_buffer(v9, qword_1ECAB0DC0);
      v10 = v16;
      v11 = sub_1D917741C();
      v12 = sub_1D9178CFC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v10;
        *v14 = v10;
        v15 = v10;
        _os_log_impl(&dword_1D8CEC000, v11, v12, "PlaybackErrorTransforming: Unhandled ICKeyServerError error: %@", v13, 0xCu);
        sub_1D8E262AC(v14);
        MEMORY[0x1DA72CB90](v14, -1, -1);
        MEMORY[0x1DA72CB90](v13, -1, -1);
      }

      else
      {
      }
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D90988F4()
{
  result = qword_1ECAB9F88;
  if (!qword_1ECAB9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F88);
  }

  return result;
}

double sub_1D9098958@<D0>(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  sub_1D90990DC(0xD000000000000018, 0x80000001D91D51D0, v33);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D9098598();
    if (swift_dynamicCast())
    {
      v3 = v30;
      v4 = [v30 code];
      if (v4 == 6)
      {
        *(a1 + 24) = &type metadata for PodcastsPlaybackError.PlayerError;
        v13 = sub_1D90985E4();
LABEL_26:
        *(a1 + 32) = v13;

        *a1 = 3;
        return result;
      }

      if (v4 == 7)
      {
        *(a1 + 24) = type metadata accessor for PodcastsPlaybackError.ValidationError();
        *(a1 + 32) = sub_1D9098F3C();
        __swift_allocate_boxed_opaque_existential_0(a1);
        swift_storeEnumTagMultiPayload();

        return result;
      }

      if (v4 == 8)
      {
LABEL_25:
        *(a1 + 24) = &type metadata for PodcastsPlaybackError.FairPlayError;
        v13 = sub_1D90988F4();
        goto LABEL_26;
      }

      if (qword_1ECAB0DB8 != -1)
      {
        swift_once();
      }

      v5 = sub_1D917744C();
      __swift_project_value_buffer(v5, qword_1ECAB0DC0);
      v6 = v30;
      v7 = sub_1D917741C();
      v8 = sub_1D9178CFC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        *(v9 + 4) = v6;
        *v10 = v6;
        v11 = v6;
        _os_log_impl(&dword_1D8CEC000, v7, v8, "PlaybackErrorTransforming: Unhandled MPCPodcastsBehaviorError error: %@", v9, 0xCu);
        sub_1D8E262AC(v10);
        MEMORY[0x1DA72CB90](v10, -1, -1);
        MEMORY[0x1DA72CB90](v9, -1, -1);
      }

      else
      {
      }
    }
  }

  swift_getErrorValue();
  sub_1D90990DC(0xD000000000000014, 0x80000001D91D51F0, v32);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D9098598();
    if (swift_dynamicCast())
    {
      if ([v30 code] == 16)
      {
        *(a1 + 24) = &type metadata for PodcastsPlaybackError.PlayerError;
        *(a1 + 32) = sub_1D90985E4();

        *a1 = 0;
        return result;
      }

      if (qword_1ECAB0DB8 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1ECAB0DC0);
      v16 = v30;
      v17 = sub_1D917741C();
      v18 = sub_1D9178CFC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&dword_1D8CEC000, v17, v18, "PlaybackErrorTransforming: Unhandled MPCEnginePlayerError error: %@", v19, 0xCu);
        sub_1D8E262AC(v20);
        MEMORY[0x1DA72CB90](v20, -1, -1);
        MEMORY[0x1DA72CB90](v19, -1, -1);
      }

      else
      {
      }
    }
  }

  swift_getErrorValue();
  sub_1D90990DC(0x726F72724543504DLL, 0xE800000000000000, v31);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D9098598();
    if (swift_dynamicCast())
    {
      v3 = v30;
      if ([v30 code] == 27)
      {
        goto LABEL_25;
      }

      if (qword_1ECAB0DB8 != -1)
      {
        swift_once();
      }

      v23 = sub_1D917744C();
      __swift_project_value_buffer(v23, qword_1ECAB0DC0);
      v24 = v30;
      v25 = sub_1D917741C();
      v26 = sub_1D9178CFC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&dword_1D8CEC000, v25, v26, "PlaybackErrorTransforming: Unhandled MPCErrorDomain error: %@", v27, 0xCu);
        sub_1D8E262AC(v28);
        MEMORY[0x1DA72CB90](v28, -1, -1);
        MEMORY[0x1DA72CB90](v27, -1, -1);
      }

      else
      {
      }
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D9098F3C()
{
  result = qword_1ECAB9F90;
  if (!qword_1ECAB9F90)
  {
    type metadata accessor for PodcastsPlaybackError.ValidationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9F90);
  }

  return result;
}

void sub_1D9098FA4(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  v2 = *MEMORY[0x1E696A978];
  v3 = sub_1D917820C();
  sub_1D90990DC(v3, v4, v9);
  v6 = v5;

  if (v6 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680), sub_1D9098598(), (swift_dynamicCast() & 1) != 0))
  {
    v7 = [v8 code];
    if (v7 == -1005 || v7 == -1009)
    {
      *(a1 + 24) = &type metadata for PodcastsPlaybackError.PlayerError;
      *(a1 + 32) = sub_1D90985E4();

      *a1 = 2;
    }

    else
    {
      *(a1 + 24) = &type metadata for PodcastsPlaybackError.PlayerError;
      *(a1 + 32) = sub_1D90985E4();

      *a1 = 3;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

void sub_1D90990DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  if (sub_1D9179D3C() == a1 && v14 == a2)
  {

    goto LABEL_5;
  }

  v15 = sub_1D9179ACC();

  if (v15)
  {
LABEL_5:
    (*(v7 + 16))(v13, v3, a3);
    if (sub_1D9179A7C())
    {
      (*(v7 + 8))(v13, a3);
    }

    else
    {
      swift_allocError();
      (*(v7 + 32))(v16, v13, a3);
    }

    return;
  }

  (*(v7 + 16))(v10, v3, a3);
  v17 = sub_1D9179A7C();
  if (v17)
  {
    v18 = v17;
    (*(v7 + 8))(v10, a3);
  }

  else
  {
    v18 = swift_allocError();
    (*(v7 + 32))(v19, v10, a3);
  }

  v20 = sub_1D9176A5C();

  v21 = [v20 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  v22 = sub_1D91785FC();

  v23 = 0;
  v24 = *(v22 + 16);
  while (1)
  {
    if (v24 == v23)
    {
LABEL_15:

      return;
    }

    if (v23 >= *(v22 + 16))
    {
      break;
    }

    v25 = v23 + 1;
    v26 = *(v22 + 8 * v23 + 32);
    swift_getErrorValue();
    v27 = v31[1];
    v28 = v31[2];
    v29 = v26;
    v30 = sub_1D90990DC(a1, a2, v27, v28);

    v23 = v25;
    if (v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t PlaybackErrorTransformer.playbackError(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_1D8CFD9D8(v8, v15);
      v9 = v16;
      v10 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v10 + 8))(&v12, v3, v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      if (v13)
      {
        sub_1D8D6BCE0(&v12, v14);
        return sub_1D8D6BCE0(v14, a2);
      }

      ++v7;
      result = sub_1D9099568(&v12);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v15[0] = v3;
    v11 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9FA0, &qword_1D91B1880);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1D9099568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F98, &unk_1D91B1870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9099608@<X0>(void *a1@<X8>)
{
  if ([*v1 isReachable])
  {
    v3 = 0;
    result = 0;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    result = sub_1D90985E4();
    *a1 = 2;
    v3 = &type metadata for PodcastsPlaybackError.PlayerError;
  }

  a1[3] = v3;
  a1[4] = result;
  return result;
}

uint64_t PodcastsPlaybackError.FairPlayError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t PodcastsPlaybackError.FairPlayError.errorBehavior()@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      if (qword_1EDCD5F00 == -1)
      {
LABEL_7:
        v3 = sub_1D917693C();
        v5 = v4;
        v6 = sub_1D917693C();
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9FB0, &qword_1D91B1990);
        v9 = swift_allocObject();
        v10 = v9;
        goto LABEL_14;
      }

LABEL_17:
      swift_once();
      goto LABEL_7;
    }

    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917693C();
    v8 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9FB0, &qword_1D91B1990);
    v9 = swift_allocObject();
    v10 = v9;
    v3 = 0;
    v5 = 0;
  }

  else
  {
    if (!*v1)
    {
      if (qword_1EDCD5F00 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    v3 = sub_1D917693C();
    v5 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9FB0, &qword_1D91B1990);
    v9 = swift_allocObject();
    v10 = v9;
    v6 = 0;
    v8 = 0;
  }

LABEL_14:
  *(v9 + 16) = xmmword_1D9189080;
  *(v9 + 56) = &type metadata for PlaybackErrorBehavior.Button;
  *(v9 + 64) = &protocol witness table for PlaybackErrorBehavior.Button;
  if (qword_1ECAB36E0 != -1)
  {
    swift_once();
  }

  v13 = unk_1ECAB9FD0;
  v14 = byte_1ECAB9FD8;
  *(v10 + 32) = qword_1ECAB9FC8;
  *(v10 + 40) = v13;
  *(v10 + 48) = v14;

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  return result;
}

unint64_t sub_1D9099A88()
{
  result = qword_1ECAB9FB8;
  if (!qword_1ECAB9FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9FB8);
  }

  return result;
}

unint64_t sub_1D9099ADC(uint64_t a1)
{
  result = sub_1D9099B04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D9099B04()
{
  result = qword_1ECAB9FC0;
  if (!qword_1ECAB9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9FC0);
  }

  return result;
}

uint64_t PlaybackErrorBehavior.Dialog.init(title:message:buttons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t PlaybackErrorBehavior.Dialog.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlaybackErrorBehavior.Dialog.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static PlaybackErrorBehavior.Button.ok.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECAB36E0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = unk_1ECAB9FD0;
  v3 = byte_1ECAB9FD8;
  *a1 = qword_1ECAB9FC8;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t PlaybackErrorBehavior.Button.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlaybackErrorBehavior.dialog.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t PlaybackErrorBehavior.Role.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D9099D7C()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  result = sub_1D917693C();
  qword_1ECAB9FC8 = result;
  unk_1ECAB9FD0 = v1;
  byte_1ECAB9FD8 = 0;
  return result;
}

unint64_t sub_1D9099E1C()
{
  result = qword_1ECAB9FE0;
  if (!qword_1ECAB9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9FE0);
  }

  return result;
}

uint64_t sub_1D9099EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9099F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PodcastsPlaybackError.PlayChapterError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

double PodcastsPlaybackError.PlayChapterError.errorBehavior()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D909A014()
{
  result = qword_1ECAB9FE8;
  if (!qword_1ECAB9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9FE8);
  }

  return result;
}

unint64_t sub_1D909A068(uint64_t a1)
{
  result = sub_1D909A090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D909A090()
{
  result = qword_1ECAB9FF0;
  if (!qword_1ECAB9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9FF0);
  }

  return result;
}

uint64_t PodcastsPlaybackError.PlayerError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t PodcastsPlaybackError.PlayerError.errorBehavior()@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 <= 1u)
  {
    if (*v1)
    {
      if (qword_1EDCD5F00 == -1)
      {
        goto LABEL_12;
      }
    }

    else if (qword_1EDCD5F00 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (*v1 != 2)
  {
    if (qword_1EDCD5F00 == -1)
    {
LABEL_12:
      v3 = sub_1D917693C();
      v5 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9FB0, &qword_1D91B1990);
      v9 = swift_allocObject();
      v10 = v9;
      v6 = 0;
      v8 = 0;
      goto LABEL_13;
    }

LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917693C();
  v5 = v4;
  v6 = sub_1D917693C();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9FB0, &qword_1D91B1990);
  v9 = swift_allocObject();
  v10 = v9;
LABEL_13:
  *(v9 + 16) = xmmword_1D9189080;
  *(v9 + 56) = &type metadata for PlaybackErrorBehavior.Button;
  *(v9 + 64) = &protocol witness table for PlaybackErrorBehavior.Button;
  if (qword_1ECAB36E0 != -1)
  {
    swift_once();
  }

  v12 = unk_1ECAB9FD0;
  v13 = byte_1ECAB9FD8;
  *(v10 + 32) = qword_1ECAB9FC8;
  *(v10 + 40) = v12;
  *(v10 + 48) = v13;

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  return result;
}

unint64_t sub_1D909A478()
{
  result = qword_1ECAB9FF8;
  if (!qword_1ECAB9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9FF8);
  }

  return result;
}

unint64_t sub_1D909A4CC(uint64_t a1)
{
  result = sub_1D909A4F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D909A4F4()
{
  result = qword_1ECABA000;
  if (!qword_1ECABA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA000);
  }

  return result;
}

uint64_t PodcastsPlaybackError.ValidationError.errorBehavior()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PodcastsPlaybackError.ValidationError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D909ADD0(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      goto LABEL_6;
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 4)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return sub_1D909AFA4(v7, type metadata accessor for PodcastsPlaybackError.ValidationError);
  }

  if (qword_1EDCD5F00 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  v9 = sub_1D917693C();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9FB0, &qword_1D91B1990);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9189080;
  *(v12 + 56) = &type metadata for PlaybackErrorBehavior.Button;
  *(v12 + 64) = &protocol witness table for PlaybackErrorBehavior.Button;
  if (qword_1ECAB36E0 != -1)
  {
    v16 = v12;
    swift_once();
    v12 = v16;
  }

  v13 = unk_1ECAB9FD0;
  v14 = byte_1ECAB9FD8;
  *(v12 + 32) = qword_1ECAB9FC8;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v12;
}

uint64_t _s18PodcastsFoundation0A13PlaybackErrorO010ValidationD0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntent.PlayerConstraint(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - v8;
  v9 = type metadata accessor for PlaybackIntent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9176C2C();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PodcastsPlaybackError.ValidationError();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v43 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA028, &qword_1D91B1EC0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v43 - v28;
  v31 = (&v43 + *(v30 + 56) - v28);
  sub_1D909ADD0(a1, &v43 - v28);
  sub_1D909ADD0(a2, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D909ADD0(v29, v22);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v33 = *v22 == *v31;
LABEL_23:
          sub_1D909AFA4(v29, type metadata accessor for PodcastsPlaybackError.ValidationError);
          return v33 & 1;
        }
      }

      else
      {
        sub_1D909ADD0(v29, v19);
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA030, &qword_1D91B1EC8) + 48);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v35 = v43;
          sub_1D909B06C(v31, v43, type metadata accessor for PlaybackIntent);
          v36 = v45;
          sub_1D909B06C(&v19[v34], v45, type metadata accessor for PlaybackIntent.PlayerConstraint);
          v37 = v31 + v34;
          v38 = v44;
          sub_1D909B06C(v37, v44, type metadata accessor for PlaybackIntent.PlayerConstraint);
          v39 = _s18PodcastsFoundation14PlaybackIntentV2eeoiySbAC_ACtFZ_0(v19, v35);
          sub_1D909AFA4(v19, type metadata accessor for PlaybackIntent);
          if (v39)
          {
            v33 = _s18PodcastsFoundation14PlaybackIntentV16PlayerConstraintO2eeoiySbAE_AEtFZ_0(v36, v38);
            sub_1D909AFA4(v38, type metadata accessor for PlaybackIntent.PlayerConstraint);
            sub_1D909AFA4(v36, type metadata accessor for PlaybackIntent.PlayerConstraint);
            sub_1D909AFA4(v35, type metadata accessor for PlaybackIntent);
            goto LABEL_23;
          }

          sub_1D909AFA4(v38, type metadata accessor for PlaybackIntent.PlayerConstraint);
          sub_1D909AFA4(v36, type metadata accessor for PlaybackIntent.PlayerConstraint);
          sub_1D909AFA4(v35, type metadata accessor for PlaybackIntent);
          sub_1D909AFA4(v29, type metadata accessor for PodcastsPlaybackError.ValidationError);
          goto LABEL_21;
        }

        sub_1D909AFA4(&v19[v34], type metadata accessor for PlaybackIntent.PlayerConstraint);
        sub_1D909AFA4(v19, type metadata accessor for PlaybackIntent);
      }
    }

    else
    {
      sub_1D909ADD0(v29, v25);
      if (!swift_getEnumCaseMultiPayload())
      {
        v40 = v46;
        (*(v46 + 32))(v15, v31, v12);
        v33 = sub_1D9176B8C();
        v41 = *(v40 + 8);
        v41(v15, v12);
        v41(v25, v12);
        goto LABEL_23;
      }

      (*(v46 + 8))(v25, v12);
    }

LABEL_20:
    sub_1D909B004(v29);
LABEL_21:
    v33 = 0;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_20;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_20;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_20;
  }

  sub_1D909AFA4(v29, type metadata accessor for PodcastsPlaybackError.ValidationError);
  v33 = 1;
  return v33 & 1;
}

uint64_t type metadata accessor for PodcastsPlaybackError.ValidationError()
{
  result = qword_1ECABA010;
  if (!qword_1ECABA010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D909ADD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsPlaybackError.ValidationError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D909AE34(uint64_t a1)
{
  result = sub_1D909AE5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D909AE5C()
{
  result = qword_1ECABA008;
  if (!qword_1ECABA008)
  {
    type metadata accessor for PodcastsPlaybackError.ValidationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA008);
  }

  return result;
}

void sub_1D909AEB4()
{
  sub_1D9176C2C();
  if (v0 <= 0x3F)
  {
    sub_1D909AF30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D909AF30()
{
  if (!qword_1ECABA020)
  {
    type metadata accessor for PlaybackIntent(255);
    type metadata accessor for PlaybackIntent.PlayerConstraint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECABA020);
    }
  }
}

uint64_t sub_1D909AFA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D909B004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA028, &qword_1D91B1EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D909B06C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PlaybackIntent.PlaybackIntentError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D909B164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90AA930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D909B18C(uint64_t a1)
{
  v2 = sub_1D8CFF13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909B1C8(uint64_t a1)
{
  v2 = sub_1D8CFF13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909B204(uint64_t a1)
{
  v2 = sub_1D90A9C58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909B240(uint64_t a1)
{
  v2 = sub_1D90A9C58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909B27C(uint64_t a1)
{
  v2 = sub_1D8D0B298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909B2B8(uint64_t a1)
{
  v2 = sub_1D8D0B298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909B2F4(uint64_t a1)
{
  v2 = sub_1D90A9CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909B330(uint64_t a1)
{
  v2 = sub_1D90A9CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909B36C(uint64_t a1)
{
  v2 = sub_1D90A9D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909B3A8(uint64_t a1)
{
  v2 = sub_1D90A9D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackIntent.Origin.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t PlaybackIntent.Origin.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA070, &qword_1D91B1EF8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA078, &qword_1D91B1F00);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA080, &qword_1D91B1F08);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA088, &qword_1D91B1F10);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA090, &qword_1D91B1F18);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D8CFF13C();
  v21 = v53;
  sub_1D9179EEC();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1D917991C();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1D8E89BD8();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1D917951C();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
      *v34 = &type metadata for PlaybackIntent.Origin;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1D8D0B298();
        v39 = v42;
        sub_1D917982C();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1D90A9D00();
        v31 = v42;
        sub_1D917982C();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1Tm(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1D90A9CAC();
      v38 = v42;
      sub_1D917982C();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1D90A9C58();
      v40 = v42;
      sub_1D917982C();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

PodcastsFoundation::PlaybackIntent::Source_optional __swiftcall PlaybackIntent.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlaybackIntent.Source.rawValue.getter()
{
  v1 = 1769105779;
  if (*v0 != 1)
  {
    v1 = 0x746567646977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_1D909BB70()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D909BC00()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D909BC7C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D909BD14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1769105779;
  if (v2 != 1)
  {
    v5 = 0x746567646977;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7368801;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D909BE10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1769105779;
  if (v2 != 1)
  {
    v4 = 0x746567646977;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7368801;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1769105779;
  if (*a2 != 1)
  {
    v8 = 0x746567646977;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7368801;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t PlaybackIntent.Context.seed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 40);
  *(a1 + 32) = v6;
  return sub_1D8D0B37C(v2, v3, v4, v5, v6);
}

uint64_t PlaybackIntent.Context.baseListSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v10 = *(v1 + 96);
  v3 = v10;
  v11[0] = v4;
  *(v11 + 13) = *(v1 + 125);
  v6 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 77) = *(v11 + 13);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D8D088B4(v9, v8, &qword_1ECAB9F78, qword_1D91B16D0);
}

uint64_t sub_1D909BF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90AAAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D909BFB4(uint64_t a1)
{
  v2 = sub_1D8D0ABA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909BFF0(uint64_t a1)
{
  v2 = sub_1D8D0ABA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackIntent.Context.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0A0, &qword_1D91B1F28);
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D0ABA0();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  LOBYTE(v28[0]) = 0;
  sub_1D90A9D54();
  v11 = v46;
  sub_1D91798FC();
  v12 = v30;
  LOBYTE(v28[0]) = 1;
  sub_1D90A9DA8();
  sub_1D917989C();
  v24 = v12;
  v13 = v30;
  v27 = *v31;
  v25 = *&v31[16];
  v26 = v32;
  v39 = 2;
  sub_1D90A9DFC();
  sub_1D917989C();
  (*(v10 + 8))(v8, v11);
  *(v45 + 7) = v40;
  *(&v45[1] + 7) = v41;
  *(&v45[5] + 4) = *&v44[13];
  *(&v45[4] + 7) = *v44;
  *(&v45[3] + 7) = v43;
  *(&v45[2] + 7) = v42;
  LOBYTE(v11) = v24;
  LOBYTE(v28[0]) = v24;
  v23 = v13;
  *(&v28[0] + 1) = v13;
  v28[1] = v27;
  v14 = v25;
  *v29 = v25;
  LOBYTE(v13) = v26;
  v29[8] = v26;
  *&v29[25] = v45[1];
  *&v29[9] = v45[0];
  *&v29[85] = *(&v45[4] + 12);
  *&v29[73] = v45[4];
  *&v29[57] = v45[3];
  *&v29[41] = v45[2];
  v15 = v28[0];
  v16 = v27;
  v17 = *&v29[16];
  *(a2 + 32) = *v29;
  *(a2 + 48) = v17;
  *a2 = v15;
  *(a2 + 16) = v16;
  v18 = *&v29[32];
  v19 = *&v29[48];
  v20 = *&v29[64];
  v21 = *&v29[80];
  *(a2 + 125) = *&v29[93];
  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  sub_1D8CFEB60(v28, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v36 = v45[2];
  v37 = v45[3];
  *v38 = v45[4];
  *&v38[12] = *(&v45[4] + 12);
  v34 = v45[0];
  LOBYTE(v30) = v11;
  *v31 = v23;
  *&v31[8] = v27;
  v32 = v14;
  v33 = v13;
  v35 = v45[1];
  return sub_1D8D0DB70(&v30);
}

uint64_t sub_1D909C3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90AABBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D909C3DC(uint64_t a1)
{
  v2 = sub_1D8D00B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909C418(uint64_t a1)
{
  v2 = sub_1D8D00B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909C454(uint64_t a1)
{
  v2 = sub_1D90A9FA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909C490(uint64_t a1)
{
  v2 = sub_1D90A9FA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909C4CC(uint64_t a1)
{
  v2 = sub_1D90A9F4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909C508(uint64_t a1)
{
  v2 = sub_1D90A9F4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909C544(uint64_t a1)
{
  v2 = sub_1D90A9FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909C580(uint64_t a1)
{
  v2 = sub_1D90A9FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909C5BC(uint64_t a1)
{
  v2 = sub_1D90A9EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909C5F8(uint64_t a1)
{
  v2 = sub_1D90A9EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909C634(uint64_t a1)
{
  v2 = sub_1D90A9E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909C670(uint64_t a1)
{
  v2 = sub_1D90A9E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909C6AC(uint64_t a1)
{
  v2 = sub_1D8D00BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909C6E8(uint64_t a1)
{
  v2 = sub_1D8D00BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D909C724(uint64_t a1)
{
  v2 = sub_1D90AA048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D909C760(uint64_t a1)
{
  v2 = sub_1D90AA048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackIntent.Option.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA110, &qword_1D91B1F70);
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA118, &qword_1D91B1F78);
  v8 = *(v7 - 8);
  v75 = v7;
  v76 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v63 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA120, &qword_1D91B1F80);
  v74 = *(v68 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v83 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA128, &qword_1D91B1F88);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v63 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA130, &qword_1D91B1F90);
  v70 = *(v71 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v79 = &v63 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA138, &qword_1D91B1F98);
  v67 = *(v69 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v20 = &v63 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA140, &qword_1D91B1FA0);
  v66 = *(v21 - 8);
  v22 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA148, &unk_1D91B1FA8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v63 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1D8D00B80();
  v32 = v86;
  sub_1D9179EEC();
  if (v32)
  {
    goto LABEL_9;
  }

  v33 = v24;
  v64 = v21;
  v65 = v20;
  v34 = v82;
  v35 = v83;
  v36 = v84;
  v86 = v26;
  v37 = sub_1D917991C();
  v38 = (2 * *(v37 + 16)) | 1;
  v88 = v37;
  v89 = v37 + 32;
  v90 = 0;
  v91 = v38;
  v39 = sub_1D8E87F24();
  if (v39 == 7 || v90 != v91 >> 1)
  {
    v45 = sub_1D917951C();
    swift_allocError();
    v46 = v29;
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
    *v48 = &type metadata for PlaybackIntent.Option;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v45 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v86 + 8))(v46, v25);
    swift_unknownObjectRelease();
LABEL_9:
    v50 = v85;
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  if (v39 <= 2u)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        v87 = 1;
        sub_1D90A9FF4();
        v52 = v65;
        sub_1D917982C();
        v53 = v69;
        sub_1D91798DC();
        v55 = v54;
        (*(v67 + 8))(v52, v53);
        (*(v86 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v42 = 0;
        v43 = 0;
        v44 = v55;
      }

      else
      {
        v87 = 2;
        sub_1D8D00BD4();
        v59 = v79;
        sub_1D917982C();
        (*(v70 + 8))(v59, v71);
        (*(v86 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v42 = 0;
        v43 = 3;
        v44 = 1;
      }
    }

    else
    {
      v87 = 0;
      sub_1D90AA048();
      sub_1D917982C();
      (*(v66 + 8))(v33, v64);
      (*(v86 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v44 = 0;
      v42 = 0;
      v43 = 3;
    }

    v50 = v85;
    v40 = v81;
  }

  else
  {
    if (v39 > 4u)
    {
      v40 = v81;
      v56 = v86;
      if (v39 == 5)
      {
        v87 = 5;
        sub_1D90A9EF8();
        v57 = v80;
        sub_1D917982C();
        v58 = v75;
        v44 = sub_1D91798BC();
        v42 = v62;
        (*(v76 + 8))(v57, v58);
        (*(v56 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v43 = 1;
      }

      else
      {
        v87 = 6;
        sub_1D90A9E50();
        v60 = v36;
        sub_1D917982C();
        sub_1D90AA09C();
        v61 = v77;
        sub_1D91798FC();
        (*(v78 + 8))(v60, v61);
        (*(v56 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v42 = 0;
        v44 = v87;
        v43 = 2;
      }
    }

    else
    {
      v40 = v81;
      v41 = v86;
      if (v39 == 3)
      {
        v87 = 3;
        sub_1D90A9FA0();
        sub_1D917982C();
        (*(v72 + 8))(v34, v73);
        (*(v41 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v42 = 0;
        v43 = 3;
        v44 = 2;
      }

      else
      {
        v87 = 4;
        sub_1D90A9F4C();
        sub_1D917982C();
        (*(v74 + 8))(v35, v68);
        (*(v41 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v42 = 0;
        v44 = 3;
        v43 = 3;
      }
    }

    v50 = v85;
  }

  *v40 = v44;
  *(v40 + 8) = v42;
  *(v40 + 16) = v43;
  return __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

uint64_t PlaybackIntent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1D8D092C0(v2, v3, v4, v5, v6);
}

uint64_t PlaybackIntent.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlaybackIntent(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 13) = *(v3 + 125);
  *(a1 + 125) = *(v3 + 125);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_1D8CFEB60(v17, v16);
}

uint64_t PlaybackIntent.mrDesiredSessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for PlaybackIntent(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static Set<>.default.getter()
{
  if (qword_1ECAAFE78 != -1)
  {
    swift_once();
  }
}

uint64_t PlaybackIntent.init(id:baseListSettings:options:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v41 = sub_1D9176EAC();
  v40 = *(v41 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = *(a2 + 16);
  *&v49[7] = *a2;
  *&v49[23] = v17;
  v18 = *(a2 + 48);
  *&v49[39] = *(a2 + 32);
  v19 = *a1;
  v37 = a1[1];
  v38 = v19;
  v20 = *(a1 + 32);
  v21 = *(a2 + 64);
  v22 = *(a2 + 80) | (*(a2 + 84) << 32);
  *&v49[55] = v18;
  v23 = 3;
  v39 = v21;
  if (v22 != 2 && v21 == 6)
  {
    v24 = *(a2 + 16);
    v44[0] = *a2;
    v44[1] = v24;
    v25 = *(a2 + 48);
    v44[2] = *(a2 + 32);
    v44[3] = v25;
    v45 = 6;
    *v46 = *(a2 + 65);
    *&v46[7] = *(a2 + 72);
    v47 = v22;
    v48 = BYTE4(v22);
    sub_1D8D0841C(v44, v43);
    v23 = 0;
  }

  *&v44[0] = *(a2 + 65);
  *(v44 + 7) = *(a2 + 72);
  v26 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_1D8D088B4(v16, v13, &qword_1ECAB9F70, qword_1D91B1680);
  v27 = v37;
  *a4 = v38;
  *(a4 + 16) = v27;
  *(a4 + 32) = v20;
  v28 = type metadata accessor for PlaybackIntent(0);
  v29 = a4 + v28[6];
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v30 = *v49;
  *(v29 + 57) = *&v49[16];
  v31 = *&v49[48];
  *(v29 + 73) = *&v49[32];
  *(v29 + 89) = v31;
  *v29 = v23;
  *(v29 + 1) = v43[0];
  *(v29 + 4) = *(v43 + 3);
  *(v29 + 40) = -1;
  *(v29 + 104) = *&v49[63];
  *(v29 + 41) = v30;
  *(v29 + 112) = v39;
  *(v29 + 120) = *(v44 + 7);
  *(v29 + 113) = *&v44[0];
  *(v29 + 132) = BYTE4(v22);
  *(v29 + 128) = v22;
  sub_1D8D088B4(v13, a4 + v28[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D9176E9C();
  v32 = sub_1D9176E5C();
  v34 = v33;
  (*(v40 + 8))(v9, v41);
  sub_1D8D08A50(v13, &qword_1ECAB9F70, qword_1D91B1680);
  result = sub_1D8D08A50(v16, &qword_1ECAB9F70, qword_1D91B1680);
  v36 = (a4 + v28[8]);
  *v36 = v32;
  v36[1] = v34;
  *(a4 + v28[7]) = v42;
  *(a4 + v28[9]) = 0;
  return result;
}