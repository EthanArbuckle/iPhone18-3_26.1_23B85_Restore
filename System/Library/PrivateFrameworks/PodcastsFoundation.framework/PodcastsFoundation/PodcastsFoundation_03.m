unint64_t sub_1D8D38330(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D8D3859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E7D40] & *v3;
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v5 = v4;
  swift_beginAccess();
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging();
  v6 = type metadata accessor for Synchronized();
  sub_1D8D1665C(v10, v6);
  return swift_endAccess();
}

size_t sub_1D8D3865C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1D8D38838()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MTPodcastEpisodeLimit.allowsAutomaticDownloads.getter(void *a1)
{
  v1 = a1;
  while (v1 == 0x100000001)
  {
    v2 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v1 = [v2 episodeLimitForKey_];
  }

  if (v1 < 0xA || v1 == 0xFFFFFFFFLL)
  {
    return 1;
  }

  if (v1 == 0x100000000)
  {
    return 0;
  }

  type metadata accessor for MTPodcastEpisodeLimit(0);
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8D38B48()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_1D8D38B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_1D8D17438(a1, v2[2], v2[3], a2);
}

uint64_t sub_1D8D38B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v11 = sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  swift_getTupleTypeMetadata3();
  v12 = sub_1D91786FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v24 - v15;
  (*(v17 + 16))(&v24 - v15, a1, TupleTypeMetadata2);
  v18 = *&v16[*(TupleTypeMetadata2 + 48)];

  v31 = *(a1 + *(TupleTypeMetadata2 + 48));
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1D8D175AC(sub_1D8D38DDC, v26, v12, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);
  v22 = v25;
  (*(*(a3 - 8) + 32))(v25, v16, a3);
  result = type metadata accessor for FRPSectionInfo();
  *(v22 + *(result + 44)) = v21;
  return result;
}

uint64_t sub_1D8D38DDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_1D8D179CC(a1, v2[2], v2[3], a2);
}

uint64_t sub_1D8D38E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  swift_getTupleTypeMetadata3();
  v12 = sub_1D91786FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v24[-v15];
  (*(v17 + 16))(&v24[-v15], a1, TupleTypeMetadata2);
  v18 = *&v16[*(TupleTypeMetadata2 + 48)];

  v29 = *(a1 + *(TupleTypeMetadata2 + 48));
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1D8D175AC(sub_1D8D39048, v24, v12, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);
  (*(*(a3 - 8) + 32))(a6, v16, a3);
  result = type metadata accessor for FRPSectionInfo();
  *(a6 + *(result + 44)) = v21;
  return result;
}

uint64_t sub_1D8D39048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_1D8D17B4C(a1, v2[2], v2[3], a2);
}

uint64_t sub_1D8D39084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5[2];
  v8 = a5[3];
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v11 = a5[4];
    v6 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      sub_1D9178F4C();
      if (qword_1EDCD06D0 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  swift_beginAccess();
  v12 = qword_1EDCD06D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D918B210;
  v14 = MEMORY[0x1E69E63A8];
  v15 = *(v5 + 56);
  *(v13 + 56) = MEMORY[0x1E69E6370];
  *(v13 + 64) = v14;
  *(v13 + 32) = v15;
  v16 = v5[1];
  if ((v16 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      v17 = v5[1];
    }

    v18 = v12;
    v19 = sub_1D917935C();
  }

  else
  {
    v19 = *(v16 + 16);
    v20 = v12;
  }

  v21 = MEMORY[0x1E69E6530];
  v22 = MEMORY[0x1E69E65A8];
  *(v13 + 96) = MEMORY[0x1E69E6530];
  *(v13 + 104) = v22;
  *(v13 + 72) = v19;
  v23 = v5[6];
  *(v13 + 136) = v21;
  *(v13 + 144) = v22;
  *(v13 + 112) = v23;
  *(v13 + 176) = v21;
  *(v13 + 184) = v22;
  *(v13 + 152) = v6;
  sub_1D91772EC();
}

unint64_t sub_1D8D39254(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t EpisodeListType.stationUUID.getter()
{
  if (*(v0 + 64) != 5)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t EpisodeListType.wantsListenNowReason.getter()
{
  v1 = *v0;
  v2 = v0[64];
  if (v2 == 6)
  {
    return v1 & 1;
  }

  if (v2 != 10 || ((v3 = vorrq_s8(*(v0 + 2), *(v0 + 3)), v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(v0 + 3) | *(v0 + 2) | *(v0 + 1), ((*(v0 + 1) << 8) | ((*(v0 + 5) | (v0[7] << 16)) << 40) | v1) == 2) ? (v5 = v4 == 0) : (v5 = 0), !v5))
  {
    LOBYTE(v1) = 0;
    return v1 & 1;
  }

  return 1;
}

uint64_t MTEpisode.adamID.getter()
{
  v1 = [v0 storeTrackId];
  if ([objc_opt_self() isEmpty_])
  {
    return 0;
  }

  else
  {
    return v1 & ~(v1 >> 63);
  }
}

uint64_t MTEpisode.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 pubDate];
  if (v3 <= 0.0)
  {
    v4 = 1;
  }

  else
  {
    [v1 pubDate];
    sub_1D9176CBC();
    v4 = 0;
  }

  v5 = sub_1D9176E3C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t MTEpisode.mediaType.getter()
{
  if ([v0 isVideo])
  {
    return 1;
  }

  if ([v0 isExternalType])
  {
    return 2;
  }

  return 0;
}

id MTEpisode.showTypeIsSerial.getter()
{
  v1 = [v0 podcast];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isSerialShowTypeInFeed];

  return v3;
}

uint64_t sub_1D8D39C58()
{
  v0 = sub_1D917980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t MTEpisode.episodeTypeResolvedValue.getter()
{
  if ([v0 isTrailer])
  {
    return 2;
  }

  else
  {
    return [v0 isBonus] ^ 1;
  }
}

uint64_t storeEnumTagSinglePayload for KCUTranscriptProvider.GenericNetworkError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

double sub_1D8D39E08(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t MTEpisodePriceTypeFromPersistentString(void *a1)
{
  v1 = a1;
  v2 = MTEpisodePriceTypeToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_1F54BD568;
  }

  v5 = [v4 unsignedIntegerValue];

  return v5;
}

id MTEpisodePriceTypeToPersistentStringMap_inverted(int a1)
{
  if (MTEpisodePriceTypeToPersistentStringMap_inverted_onceToken != -1)
  {
    MTEpisodePriceTypeToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTEpisodePriceTypeToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTEpisodePriceTypeToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

void EpisodeListSettings.sectionContext.getter(char *a1@<X8>)
{
  if (*(v1 + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 64) == 8;
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
}

uint64_t EyebrowBuilder.init(episode:context:style:explicitSymbol:showsSubscriptionBadge:hostingViewHasLimitedSpace:suppressPubDate:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8)
{
  v26 = a7;
  v27 = a8;
  v16 = a1[3];
  v15 = a1[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = sub_1D8D41A30(v21, a2, a3, a4, a5, a6, v26, v27, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v23;
}

uint64_t sub_1D8D3A0AC(char a1)
{
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  __swift_project_boxed_opaque_existential_1((v1 + 168), v3);
  v5 = (*(v4 + 96))(v3, v4);
  result = 0;
  if ((v7 & 1) == 0 && v5 >= 1)
  {
    swift_beginAccess();
    *(v1 + 160) = 1;
    v8 = *(v1 + 192);
    v9 = *(v1 + 200);
    __swift_project_boxed_opaque_existential_1((v1 + 168), v8);
    v10 = (*(v9 + 48))(v8, v9);
    sub_1D91209E8();
    if (!v10)
    {
      if (*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) == 1)
      {
        MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E7360];
      *(v19 + 16) = xmmword_1D9189080;
      v21 = MEMORY[0x1E69E73D8];
      *(v19 + 56) = v20;
      *(v19 + 64) = v21;
      *(v19 + 32) = v5;
      v18 = sub_1D91781DC();
      goto LABEL_24;
    }

    if (v10 == 1 || (a1 & 1) != 0)
    {
      v11 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style;
      if (*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) && *(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) == 1)
      {
      }

      else
      {
        sub_1D9179ACC();
      }

      if (*(v1 + v11) != 1)
      {
        goto LABEL_14;
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) != 1)
    {
      goto LABEL_14;
    }

    MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
LABEL_14:
    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    sub_1D917693C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E7360];
    *(v12 + 16) = xmmword_1D9189080;
    v14 = MEMORY[0x1E69E73D8];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = v5;
    v15 = sub_1D91781DC();

    v16 = sub_1D8D3CC74();
    v18 = sub_1D8D41CB8(v16, v17, v15);
LABEL_24:
    v22 = v18;

    return v22;
  }

  return result;
}

uint64_t sub_1D8D3A558()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 168), v1);
  v3 = (*(v2 + 88))(v1, v2);
  result = 0;
  if ((v5 & 1) == 0 && v3 >= 1)
  {
    swift_beginAccess();
    *(v0 + 161) = 1;
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    __swift_project_boxed_opaque_existential_1((v0 + 168), v6);
    LOBYTE(v6) = (*(v7 + 48))(v6, v7);
    sub_1D91209E8();
    if (v6)
    {
      if (*(v0 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) - 1 <= 1)
      {
        MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E7360];
      *(v8 + 16) = xmmword_1D9189080;
      v10 = MEMORY[0x1E69E73D8];
      *(v8 + 56) = v9;
      *(v8 + 64) = v10;
      *(v8 + 32) = v3;
      v11 = sub_1D91781DC();

      v12 = sub_1D8D3CC74();
      v14 = sub_1D8D41CB8(v12, v13, v11);
    }

    else
    {
      if (*(v0 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) - 1 <= 1)
      {
        MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v15 = swift_allocObject();
      v16 = MEMORY[0x1E69E7360];
      *(v15 + 16) = xmmword_1D9189080;
      v17 = MEMORY[0x1E69E73D8];
      *(v15 + 56) = v16;
      *(v15 + 64) = v17;
      *(v15 + 32) = v3;
      v14 = sub_1D91781DC();
    }

    v18 = v14;

    return v18;
  }

  return result;
}

uint64_t sub_1D8D3A958(void *a1, uint64_t a2)
{
  if ((*(a2 + 9) & 1) != 0 || (*(a2 + 8) & 1) == 0)
  {
    goto LABEL_23;
  }

  v2 = *a2;
  if (*a2 > 3)
  {
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    if (((*(v14 + 72))(v13, v14) & 1) == 0)
    {
      goto LABEL_16;
    }

    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v18 = (*(v17 + 88))(v16, v17);
    if ((v19 & 1) == 0 && v18 == 1)
    {
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      v22 = (*(v21 + 96))(v20, v21);
      if ((v23 & 1) == 0 && v22 == 1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_45;
      }
    }

    v24 = a1;
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v27 = (*(v26 + 88))(v25, v26);
    if ((v28 & 1) == 0)
    {
      v29 = v27;
      v30 = v24;
      v31 = v24[3];
      v32 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v33 = (*(v32 + 96))(v31, v32);
      if ((v34 & 1) == 0)
      {
        v36 = v33;
        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1D918A530;
        v38 = MEMORY[0x1E69E7360];
        v39 = MEMORY[0x1E69E73D8];
        *(v37 + 56) = MEMORY[0x1E69E7360];
        *(v37 + 64) = v39;
        *(v37 + 32) = v29;
        *(v37 + 96) = v38;
        *(v37 + 104) = v39;
        *(v37 + 72) = v36;
        v40 = sub_1D91781DC();

        goto LABEL_44;
      }
    }

LABEL_23:
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

LABEL_45:
    swift_once();
    return sub_1D917693C();
  }

  if ((v2 - 2) >= 2)
  {
    if (v2)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }
    }

    else if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_45;
  }

  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  if (((*(v4 + 72))(v3, v4) & 1) == 0)
  {
LABEL_16:
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_45;
  }

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 88))(v6, v7);
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    if ((*(v12 + 48))(v11, v12) > 1u)
    {
    }

    else
    {
      v41 = sub_1D9179ACC();

      if ((v41 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    sub_1D917693C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v54 = swift_allocObject();
    v55 = MEMORY[0x1E69E7360];
    *(v54 + 16) = xmmword_1D9189080;
    v56 = MEMORY[0x1E69E73D8];
    *(v54 + 56) = v55;
    *(v54 + 64) = v56;
    *(v54 + 32) = v10;
    goto LABEL_43;
  }

LABEL_31:
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = (*(v43 + 88))(v42, v43);
  if (v45 & 1) != 0 || (v46 = v44, v47 = a1[3], v48 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v47), v49 = (*(v48 + 96))(v47, v48), (v50) || v49 != 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_45;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D918A530;
  v52 = MEMORY[0x1E69E7360];
  v53 = MEMORY[0x1E69E73D8];
  *(v51 + 56) = MEMORY[0x1E69E7360];
  *(v51 + 64) = v53;
  *(v51 + 32) = v46;
  *(v51 + 96) = v52;
  *(v51 + 104) = v53;
  *(v51 + 72) = 1;
LABEL_43:
  v40 = sub_1D91781DC();

LABEL_44:

  return v40;
}

uint64_t static AbbreviatedTimeIntervalFormatter.string(from:configuration:)(uint64_t a1, double a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AbbreviatedTimeIntervalFormatter.style(from:configuration:)(a1, v21, a2);
  v9 = v21[0];
  v10 = v21[1];
  if (v22)
  {
    if (v22 == 1)
    {
      v11 = v21[0];
      sub_1D9176CBC();
      v12 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v5 + 8))(v8, v4);
      v13 = [v11 stringFromDate_];

      v14 = sub_1D917820C();
      sub_1D8D42B0C(v9, v10, 1);
      sub_1D8D42B0C(v9, v10, 1);
      return v14;
    }

    goto LABEL_12;
  }

  v16 = qword_1EDCD5F00;
  if (LOBYTE(v21[0]) == 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
LABEL_16:
      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D9189080;
      v17 = *&v10 / 60.0;
      if (COERCE__INT64(fabs(*&v10 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v17 <= -9.22337204e18)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v16 = 0x43E0000000000000;
      if (v17 < 9.22337204e18)
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_20:
      if (v16 == -1)
      {
LABEL_21:
        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        result = swift_allocObject();
        *(result + 16) = xmmword_1D9189080;
        v17 = *&v10 / 86400.0;
        if (COERCE__INT64(fabs(*&v10 / 86400.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v17 > -9.22337204e18)
          {
            if (v17 < 9.22337204e18)
            {
              goto LABEL_24;
            }

LABEL_33:
            __break(1u);
            return result;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      swift_once();
      goto LABEL_21;
    }

LABEL_26:
    swift_once();
    goto LABEL_16;
  }

  if (LOBYTE(v21[0]) != 2)
  {
    goto LABEL_20;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D9189080;
  v17 = *&v10 / 3600.0;
  if (COERCE__INT64(fabs(*&v10 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 < 9.22337204e18)
  {
LABEL_24:
    v18 = MEMORY[0x1E69E65A8];
    *(result + 56) = MEMORY[0x1E69E6530];
    *(result + 64) = v18;
    *(result + 32) = v17;
    v19 = sub_1D91781DC();

    return v19;
  }

  __break(1u);
LABEL_12:
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  return sub_1D917693C();
}

uint64_t static AbbreviatedTimeIntervalFormatter.style(from:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26[-v8];
  v10 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8D429C4(a1, v9);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    sub_1D9176E2C();
    v16 = &v14[*(v10 + 20)];
    sub_1D9176E2C();
    v14[*(v10 + 24)] = 6;
    if (v15(v9, 1, v10) != 1)
    {
      sub_1D8D60B78(v9);
    }
  }

  else
  {
    sub_1D8D60340(v9, v14);
  }

  sub_1D9176CCC();
  v18 = v17 - a3;
  if (v17 - a3 <= 0.0)
  {
    goto LABEL_16;
  }

  sub_1D8D3B954(&v14[*(v10 + 20)], &v27, a3);
  v19 = v27;
  v20 = v14[*(v10 + 24)];
  if (v20 == 6 || v27 >= v20)
  {
    if (v27 <= 3u)
    {
      if (v27 - 1 < 3)
      {
        result = sub_1D8D3D168(v14);
        *a2 = v19;
        *(a2 + 8) = v18;
        *(a2 + 16) = 0;
        return result;
      }

      goto LABEL_14;
    }

    if (v27 != 4)
    {
      if (qword_1EDCD5FF0 != -1)
      {
        swift_once();
      }

      v24 = qword_1EDCD5FF8;
      goto LABEL_19;
    }

LABEL_16:
    if (qword_1ECAB1368 != -1)
    {
      swift_once();
    }

    v24 = qword_1ECAB1370;
LABEL_19:
    v25 = v24;
    result = sub_1D8D3D168(v14);
    *a2 = v25;
    *(a2 + 8) = 0;
    v23 = 1;
    goto LABEL_20;
  }

LABEL_14:
  result = sub_1D8D3D168(v14);
  *a2 = 0;
  *(a2 + 8) = 0;
  v23 = 2;
LABEL_20:
  *(a2 + 16) = v23;
  return result;
}

void sub_1D8D3B954(uint64_t a1@<X1>, char *a2@<X8>, double a3@<D0>)
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176CCC();
  v12 = v11;
  (*(v7 + 16))(v10, a1, v6);
  v13 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v14 = v12 - a3;
  if (v12 - a3 >= 60.0)
  {
    if (v14 >= 3600.0)
    {
      if (v14 >= 86400.0)
      {
        if (v14 >= 604800.0)
        {
          v16 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
          v17 = [v13 inSameYearAs_];

          (*(v7 + 8))(v10, v6);
          if (v17)
          {
            v15 = 4;
          }

          else
          {
            v15 = 5;
          }
        }

        else
        {
          (*(v7 + 8))(v10, v6);

          v15 = 3;
        }
      }

      else
      {
        (*(v7 + 8))(v10, v6);

        v15 = 2;
      }
    }

    else
    {
      (*(v7 + 8))(v10, v6);

      v15 = 1;
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6, v14);

    v15 = 0;
  }

  *a2 = v15;
}

uint64_t sub_1D8D3BB98(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36[-v9];
  v11 = sub_1D9176E3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36[-v18];
  v40 = *(a3 + 24);
  result = v40(a2, a3, v17);
  if (result)
  {
    v37 = sub_1D8D5D340(a1 & 1, a2, a3);
    v21 = *(a3 + 104);
    v38 = v3;
    v39 = a2;
    v21(a2, a3);
    v22 = *(v12 + 48);
    if (v22(v10, 1, v11) == 1)
    {
      sub_1D9176E2C();
      if (v22(v10, 1, v11) != 1)
      {
        sub_1D8D08A50(v10, &qword_1ECAB75C0, &unk_1D9188A50);
      }
    }

    else
    {
      (*(v12 + 32))(v19, v10, v11);
    }

    sub_1D9176E2C();
    sub_1D8D5D644(&qword_1EDCD5940, MEMORY[0x1E6969530]);
    v23 = sub_1D917818C();
    v24 = *(v12 + 8);
    v24(v15, v11);
    v24(v19, v11);
    if (v23)
    {
      if (v37)
      {
        v25 = (*(a3 + 16))(v39, a3);
        if (v26)
        {
          v27 = v25;
          v28 = v26;
          if (qword_1EDCD5F00 == -1)
          {
            goto LABEL_21;
          }

          goto LABEL_33;
        }
      }

      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_32;
    }

    v29 = v39;
    if (v40)(v39, a3) == 1 && ((*(a3 + 32))(v29, a3))
    {
      if ((v37 & 1) == 0 || (v30 = (*(a3 + 16))(v29, a3), !v31))
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_32;
      }

      v27 = v30;
      v28 = v31;
      if (qword_1EDCD5F00 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((v37 & 1) == 0 || (v32 = (*(a3 + 16))(v29, a3), !v33))
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

LABEL_32:
        swift_once();
        return sub_1D917693C();
      }

      v27 = v32;
      v28 = v33;
      if (qword_1EDCD5F00 == -1)
      {
LABEL_21:
        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1D9189080;
        *(v34 + 56) = MEMORY[0x1E69E6158];
        *(v34 + 64) = sub_1D8D34978();
        *(v34 + 32) = v27;
        *(v34 + 40) = v28;
        v35 = sub_1D91781DC();

        return v35;
      }
    }

LABEL_33:
    swift_once();
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1D8D3C1DC()
{
  v1 = v0;
  v53 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v2 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v8 = sub_1D917734C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  if (qword_1EDCD5E90 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917739C();
  __swift_project_value_buffer(v16, qword_1EDCD5E98);
  sub_1D917737C();
  sub_1D917731C();
  v17 = sub_1D917737C();
  v18 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v19 = v15;
    v20 = v4;
    v21 = v9;
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v17, v18, v23, "buildCaption", "", v22, 2u);
    v24 = v22;
    v9 = v21;
    v4 = v20;
    v15 = v19;
    MEMORY[0x1DA72CB90](v24, -1, -1);
  }

  v25 = v8;
  (*(v9 + 16))(v12, v15, v8);
  v26 = sub_1D91773FC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1D91773EC();
  v30 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context;
  sub_1D8D423B4(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v7, type metadata accessor for EyebrowBuilder.ListContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v32 = v7[1];
        v33 = v7[2];
        LOBYTE(v54) = *v7;
        BYTE1(v54) = v32;
        BYTE2(v54) = v33;
        v34 = sub_1D9120AD4(v1 + 21, &v54);
        goto LABEL_26;
      }

      goto LABEL_13;
    }

LABEL_11:
    v35 = v9;
    v36 = v1[24];
    v37 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v36);
    (*(v37 + 40))(&v54, v36, v37);
    if ((v56 & 1) == 0)
    {
      v55 &= 1u;
      v34 = sub_1D8D553A8(&v54);
      v9 = v35;
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 7)
  {
    swift_beginAccess();
    v34 = v1[4];
    v43 = v1[5];

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 4)
  {
    goto LABEL_11;
  }

LABEL_13:
  v35 = v9;
  sub_1D8D41C00(v7, type metadata accessor for EyebrowBuilder.ListContext);
LABEL_14:
  v38 = v1[24];
  v39 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v38);
  v40 = (*(v39 + 48))(v38, v39);
  if (v40)
  {
    if (v40 == 1)
    {
      v41 = sub_1D8D3CA74();
    }

    else
    {
      v41 = sub_1D9120EE0();
    }
  }

  else
  {
    v41 = sub_1D9121090();
  }

  v44 = v41;
  v45 = v42;
  v9 = v35;
  sub_1D8D423B4(v1 + v30, v4, type metadata accessor for EyebrowBuilder.ListContext);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D8D08A50(v4, &qword_1ECAB7AE0, &qword_1D91B7E20);
    swift_beginAccess();
    v46 = v1[17];
    if (v46)
    {
      v47 = v1[16];
      if (v45)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        inited = swift_initStackObject();
        v53 = v9;
        v49 = inited;
        *(inited + 16) = xmmword_1D918A530;
        *(inited + 32) = v44;
        *(inited + 40) = v45;
        *(inited + 48) = v47;
        *(inited + 56) = v46;

        v44 = sub_1D8D42528(v49);
        v45 = v50;
        v9 = v53;
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      else
      {
        v52 = v1[17];

        v44 = v47;
        v45 = v46;
      }
    }
  }

  else
  {
    sub_1D8D41C00(v4, type metadata accessor for EyebrowBuilder.ListContext);
  }

  v34 = sub_1D8D3CF24(v44, v45);

LABEL_26:
  sub_1D8D42B20(v29, "buildCaption");

  (*(v9 + 8))(v15, v25);
  return v34;
}

uint64_t sub_1D8D3C774(char a1)
{
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  __swift_project_boxed_opaque_existential_1((v1 + 168), v3);
  v5 = (*(v4 + 48))(v3, v4);
  v6 = sub_1D91209E8();
  if (!v5)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }
      }

      else if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }
    }

    else if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    swift_once();
    return sub_1D917693C();
  }

  if (v5 == 1 || (a1 & 1) != 0)
  {
    swift_beginAccess();
    *(v1 + 162) = 1;
    swift_beginAccess();
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);

    v9 = sub_1D8D3CC74();
    v11 = sub_1D8D3CD88(v9, v10, v7, v8);
    v13 = v12;

    if (!v13)
    {
      return sub_1D8D3CC74();
    }
  }

  else
  {
    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917693C();
    v16 = sub_1D8D3CC74();
    v11 = sub_1D8D41CB8(v16, v17, v15);
  }

  return v11;
}

uint64_t sub_1D8D3CA74()
{
  v1 = v0;
  v2 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D423B4(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v5, type metadata accessor for EyebrowBuilder.ListContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return sub_1D8D3C774(0);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return sub_1D8D3C774(0);
    }

LABEL_17:
    v12 = v1[24];
    v13 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v12);
    if ((*(v13 + 72))(v12, v13))
    {
      goto LABEL_18;
    }

    return sub_1D8D3C774(0);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D8D41C00(v5, type metadata accessor for EyebrowBuilder.ListContext);
      return 0;
    }

    sub_1D8D08A50(v5, &qword_1ECAB7AE0, &qword_1D91B7E20);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    return sub_1D8D3C774(0);
  }

  v7 = *v5;
  v8 = v1[24];
  v9 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v8);
  if (((*(v9 + 72))(v8, v9) & 1) == 0)
  {
    return sub_1D8D3C774(0);
  }

  if (v7 != 2 && (v7 & 1) == 0)
  {
    result = sub_1D8D3A0AC(0);
    if (v11)
    {
      return result;
    }

    return sub_1D8D3C774(0);
  }

LABEL_18:
  result = sub_1D8D55D60(0, 0);
  if (!v14)
  {
    result = sub_1D8D3A0AC(0);
    if (!v15)
    {
      result = sub_1D8D3A558();
      if (!v16)
      {
        return sub_1D8D3C774(0);
      }
    }
  }

  return result;
}

uint64_t sub_1D8D3CC74()
{
  LOBYTE(result) = sub_1D91209E8();
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_8;
  }

  if (qword_1EDCD5F00 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_1D917693C();
}

uint64_t sub_1D8D3CD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a2)
    {
      sub_1D8D447DC();

      v7 = sub_1D91791FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D8D4241C(0, *(v7 + 16) + 1, 1, v7);
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        v7 = sub_1D8D4241C((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 16) = v9 + 1;
      v10 = v7 + 16 * v9;
      *(v10 + 32) = a1;
      *(v10 + 40) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
      a3 = sub_1D917817C();
    }

    else
    {
    }
  }

  else
  {

    return a1;
  }

  return a3;
}

uint64_t sub_1D8D3CF24(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = a1;
    v15 = a1;
    v5 = a2;
    if ((*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0xE000000000000000;
    v15 = 0;
    if ((*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_14;
    }

    v4 = 0;
  }

  swift_beginAccess();
  v6 = v2[7];
  if (!v6)
  {
LABEL_14:

    goto LABEL_15;
  }

  v7 = v2[6];
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x1DA7298F0](0x8480E2B7C28480E2, 0xA800000000000000);
  }

  MEMORY[0x1DA7298F0](v7, v6);

  v4 = v15;
LABEL_15:
  v9 = v2[24];
  v10 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v9);
  v11 = (*(v10 + 64))(v9, v10);
  swift_beginAccess();
  if (v11)
  {
    v12 = v3[19];
    if (v12)
    {
      v13 = v3[18];

      MEMORY[0x1DA7298F0](0x8480E2B7C28480E2, 0xA800000000000000);

      MEMORY[0x1DA7298F0](v13, v12);
    }
  }

  return v4;
}

uint64_t EyebrowBuilder.caption.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D8D3D168(uint64_t a1)
{
  v2 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for KCUTranscriptProvider.GenericNetworkError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8D3D298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

os_log_t _MTLogCategoryDatabaseTelemetry()
{
  v0 = os_log_create("com.apple.podcasts", "DBTelemetry");

  return v0;
}

__n128 sub_1D8D3E3D0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8D3271C(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D8D3E424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

unsigned __int8 *sub_1D8D3E514(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = sub_1D8D2E820(a1, a2);
  if (!v5)
  {
    sub_1D8FB0024();
    swift_allocError();
    v6 = a1;
LABEL_88:
    *v18 = v6;
    v18[1] = v2;
    return swift_willThrow();
  }

  v6 = v4;
  v7 = v5;

  v9 = HIBYTE(v7) & 0xF;
  v10 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_87:
    sub_1D8FB0024();
    swift_allocError();
    v2 = v7;
    goto LABEL_88;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v39[0] = v6;
      v39[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v9)
        {
          if (--v9)
          {
            LODWORD(v13) = 0;
            v26 = v39 + 1;
            while (1)
            {
              v27 = *v26;
              v28 = v27 - 48;
              if ((v27 - 48) >= 0xA)
              {
                if ((v27 - 65) < 6)
                {
                  v28 = v27 - 55;
                }

                else
                {
                  if ((v27 - 97) > 5)
                  {
                    goto LABEL_85;
                  }

                  v28 = v27 - 87;
                }
              }

              if (v13 >> 28)
              {
                break;
              }

              LODWORD(v13) = 16 * v13 + v28;
              ++v26;
              if (!--v9)
              {
                goto LABEL_86;
              }
            }
          }

          goto LABEL_85;
        }

LABEL_104:
        __break(1u);
        return result;
      }

      if (v6 != 45)
      {
        if (v9)
        {
          LODWORD(v13) = 0;
          v31 = v39;
          while (1)
          {
            v32 = *v31;
            v33 = v32 - 48;
            if ((v32 - 48) >= 0xA)
            {
              if ((v32 - 65) < 6)
              {
                v33 = v32 - 55;
              }

              else
              {
                if ((v32 - 97) > 5)
                {
                  goto LABEL_85;
                }

                v33 = v32 - 87;
              }
            }

            if (v13 >> 28)
            {
              break;
            }

            LODWORD(v13) = 16 * v13 + v33;
            ++v31;
            if (!--v9)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }

      if (v9)
      {
        if (--v9)
        {
          LODWORD(v13) = 0;
          v19 = v39 + 1;
          while (1)
          {
            v20 = *v19;
            v21 = v20 - 48;
            if ((v20 - 48) >= 0xA)
            {
              if ((v20 - 65) < 6)
              {
                v21 = v20 - 55;
              }

              else
              {
                if ((v20 - 97) > 5)
                {
                  goto LABEL_85;
                }

                v21 = v20 - 87;
              }
            }

            if (v13 >> 28)
            {
              break;
            }

            v22 = 16 * v13;
            LODWORD(v13) = 16 * v13 - v21;
            if (v22 < v21)
            {
              break;
            }

            ++v19;
            if (!--v9)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1D917957C();
      }

      v12 = *result;
      if (v12 == 43)
      {
        if (v10 >= 1)
        {
          v9 = v10 - 1;
          if (v10 != 1)
          {
            if (result)
            {
              LODWORD(v13) = 0;
              v23 = result + 1;
              while (1)
              {
                v24 = *v23;
                v25 = v24 - 48;
                if ((v24 - 48) >= 0xA)
                {
                  if ((v24 - 65) < 6)
                  {
                    v25 = v24 - 55;
                  }

                  else
                  {
                    if ((v24 - 97) > 5)
                    {
                      goto LABEL_85;
                    }

                    v25 = v24 - 87;
                  }
                }

                if (v13 >> 28)
                {
                  goto LABEL_85;
                }

                LODWORD(v13) = 16 * v13 + v25;
                ++v23;
                if (!--v9)
                {
                  goto LABEL_86;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_85;
        }

        goto LABEL_103;
      }

      if (v12 != 45)
      {
        if (v10)
        {
          if (result)
          {
            LODWORD(v13) = 0;
            while (1)
            {
              v29 = *result;
              v30 = v29 - 48;
              if ((v29 - 48) >= 0xA)
              {
                if ((v29 - 65) < 6)
                {
                  v30 = v29 - 55;
                }

                else
                {
                  if ((v29 - 97) > 5)
                  {
                    goto LABEL_85;
                  }

                  v30 = v29 - 87;
                }
              }

              if (v13 >> 28)
              {
                goto LABEL_85;
              }

              LODWORD(v13) = 16 * v13 + v30;
              ++result;
              if (!--v10)
              {
                LOBYTE(v9) = 0;
                goto LABEL_86;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_85:
        LODWORD(v13) = 0;
        LOBYTE(v9) = 1;
LABEL_86:
        v40 = v9;
        if (v9)
        {
          goto LABEL_87;
        }

        goto LABEL_90;
      }

      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          if (result)
          {
            LODWORD(v13) = 0;
            v14 = result + 1;
            while (1)
            {
              v15 = *v14;
              v16 = v15 - 48;
              if ((v15 - 48) >= 0xA)
              {
                if ((v15 - 65) < 6)
                {
                  v16 = v15 - 55;
                }

                else
                {
                  if ((v15 - 97) > 5)
                  {
                    goto LABEL_85;
                  }

                  v16 = v15 - 87;
                }
              }

              if (v13 >> 28)
              {
                goto LABEL_85;
              }

              v17 = 16 * v13;
              LODWORD(v13) = 16 * v13 - v16;
              if (v17 < v16)
              {
                goto LABEL_85;
              }

              ++v14;
              if (!--v9)
              {
                goto LABEL_86;
              }
            }
          }

LABEL_74:
          LODWORD(v13) = 0;
          LOBYTE(v9) = 0;
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      __break(1u);
    }

    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v13 = sub_1D8FAF6F8(v6, v7, 16);

  if ((v13 & 0x100000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_90:
  v34 = sub_1D91782EC();
  if (v34 > 5)
  {
    if (v34 == 6)
    {

      v36 = v13 >> 8;
      v35 = v13 >> 16;
      v38 = 255;
      LOBYTE(v37) = v13;
    }

    else
    {
      if (v34 != 8)
      {
        goto LABEL_87;
      }

      v35 = bswap32(v13);
      v36 = v35 >> 8;
      v37 = HIWORD(v35);
      v38 = HIBYTE(v35);
    }
  }

  else if (v34 == 3)
  {

    v35 = (v13 >> 8) & 0xF | (16 * ((v13 >> 8) & 0xF));
    LOBYTE(v36) = (v13 >> 4) | (16 * (v13 >> 4));
    v38 = 255;
    LOBYTE(v37) = v13 & 0xF | (16 * (v13 & 0xF));
  }

  else
  {
    if (v34 != 4)
    {
      goto LABEL_87;
    }

    LOWORD(v35) = (v13 >> 12) | (16 * (v13 >> 12));
    v36 = (v13 >> 8) & 0xF | (16 * ((v13 >> 8) & 0xF));
    LOBYTE(v37) = (v13 >> 4) | (16 * (v13 >> 4));
    v38 = v13 & 0xF | (16 * (v13 & 0xF));
  }

  return ((v37 << 16) | (v38 << 24) | (v36 << 8) | v35);
}

void sub_1D8D3EA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v8 = [v6 BOOLForKey_];

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_1D8D59400;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D591F0;
  v11[3] = &block_descriptor_107;
  v10 = _Block_copy(v11);

  [v8 valueWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_1D8D3EB54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t Publisher.replayingBufferedMulticast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D91791BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - v8;
  v10 = sub_1D917768C();
  v22[0] = *(v10 - 8);
  v11 = *(v22[0] + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1D9177B9C();

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for RepublishingValueSubject();
  v22[1] = AssociatedTypeWitness;
  (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness);
  RepublishingValueSubject.__allocating_init(_:)(v9);
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = sub_1D9177D2C();

  (*(v22[0] + 8))(v13, v10);
  v26 = v17;
  v27 = v18;
  v23 = v10;
  v24 = v15;
  v25 = WitnessTable;
  sub_1D917776C();
  swift_getWitnessTable();
  v19 = sub_1D917796C();

  v23 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  sub_1D91775BC();
  swift_getWitnessTable();
  sub_1D9177B2C();
}

uint64_t RepublishingValueSubject.init(_:)(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 16) = v4;
  *(v1 + 24) = 1;
  v5 = v3[15];
  v6 = v3[11];
  v7 = v3[12];
  v8 = sub_1D91777CC();
  (*(*(v8 - 8) + 56))(v1 + v5, 1, 1, v8);
  v9 = v1 + *(*v1 + 128);
  v10 = v3[10];
  *v9 = sub_1D8D3F130();
  *(v9 + 8) = v11;
  *(v1 + *(*v1 + 144)) = MEMORY[0x1E69E7CC0];
  (*(*(v10 - 8) + 32))(v1 + *(*v1 + 136), a1, v10);
  return v1;
}

uint64_t RepublishingValueSubject.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  RepublishingValueSubject.init(_:)(a1);
  return v5;
}

uint64_t sub_1D8D3F14C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t type metadata accessor for MediaSpaceCalculator()
{
  result = qword_1ECAB1DB8;
  if (!qword_1ECAB1DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D3F360(void *a1)
{
  v2 = a1[11];
  v3 = a1[12];
  sub_1D91777CC();
  result = sub_1D91791BC();
  if (v5 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v6 = a1[10];
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t MediaSpaceCalculator.__allocating_init(mediaPath:calculationQueue:managedObjectContext:notificationCenter:fileManager:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v79 = a5;
  v94 = a4;
  v68 = a2;
  v84 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v67 - v11;
  v12 = sub_1D9178DFC();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9178FBC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69E0, &qword_1D91942F8);
  v71 = *(v70 - 8);
  v23 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v25 = &v67 - v24;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69E8, &qword_1D9194300);
  v74 = *(v72 - 8);
  v26 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v67 = &v67 - v27;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69F0, &qword_1D9194308);
  v77 = *(v76 - 8);
  v28 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v67 - v29;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69F8, &qword_1D9194310);
  v86 = *(v82 - 8);
  v30 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v73 = &v67 - v31;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A00, &qword_1D9194318);
  v89 = *(v87 - 8);
  v32 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v78 = &v67 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A08, &unk_1D9194320);
  v35 = *(v34 - 8);
  v90 = v34;
  v91 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v80 = &v67 - v37;
  v38 = *(v5 + 48);
  v39 = *(v5 + 52);
  v40 = swift_allocObject();
  *(v40 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink) = 0;
  v41 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath;
  v83 = sub_1D9176C2C();
  v85 = *(v83 - 8);
  (*(v85 + 16))(v40 + v41, a1, v83);
  swift_beginAccess();
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  sub_1D9177A9C();
  swift_endAccess();
  *(v40 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_managedObjectContext) = a3;
  sub_1D8CFD9D8(a5, v40 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager);
  v42 = v68;
  *(v40 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_workQueue) = v68;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v75 = a3;
  v46 = v42;
  *(v40 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject) = sub_1D91778DC();
  sub_1D9178FCC();
  sub_1D9178FCC();
  sub_1D8D11A14(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  sub_1D9177BFC();
  v47 = *(v16 + 8);
  v47(v19, v15);
  v47(v22, v15);
  sub_1D8CF48EC(&qword_1ECAB0518, &qword_1ECAB69E0, &qword_1D91942F8);
  v48 = v67;
  v49 = v70;
  sub_1D9177B9C();
  (*(v71 + 8))(v25, v49);
  *&v95 = *(v40 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject);
  sub_1D8CF48EC(&qword_1ECAB0760, &qword_1ECAB69E8, &qword_1D9194300);
  sub_1D8CF48EC(&qword_1EDCD0B40, &qword_1ECAB4B30, &unk_1D918E010);
  v50 = v69;
  v51 = v72;
  sub_1D9177BEC();
  (*(v74 + 8))(v48, v51);
  v52 = v81;
  sub_1D9178DCC();
  *&v95 = v46;
  v53 = v46;
  v54 = sub_1D9178DBC();
  v55 = v88;
  (*(*(v54 - 8) + 56))(v88, 1, 1, v54);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB06C8, &qword_1ECAB69F0, &qword_1D9194308);
  sub_1D8D02DF0();
  v56 = v73;
  v57 = v76;
  sub_1D9177CFC();
  sub_1D8D08A50(v55, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v92 + 8))(v52, v93);
  (*(v77 + 8))(v50, v57);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1D8F0F18C;
  *(v58 + 24) = v40;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A10, &qword_1D9194330);
  sub_1D8CF48EC(&qword_1ECAB0538, &qword_1ECAB69F8, &qword_1D9194310);
  sub_1D8CF48EC(&qword_1ECAB06D0, &qword_1ECAB6A10, &qword_1D9194330);
  v59 = v78;
  v60 = v82;
  sub_1D9177DDC();

  (*(v86 + 8))(v56, v60);
  sub_1D8CF48EC(&qword_1ECAB0558, &qword_1ECAB6A00, &qword_1D9194318);
  v61 = v80;
  v62 = v87;
  sub_1D9177B2C();
  (*(v89 + 8))(v59, v62);
  swift_getKeyPath();
  *&v95 = v40;
  sub_1D8CF48EC(&qword_1ECAB0B88, &qword_1ECAB6A08, &unk_1D9194320);
  v63 = v90;
  v64 = sub_1D9177DAC();

  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  (*(v85 + 8))(v84, v83);
  (*(v91 + 8))(v61, v63);
  v65 = *(v40 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink);
  *(v40 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink) = v64;

  return v40;
}

uint64_t sub_1D8D4008C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D400D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0B48, &qword_1ECAB4B30, &unk_1D918E010);
  return sub_1D9177A6C();
}

uint64_t sub_1D8D401A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D8D419F0;
  *(v5 + 24) = v4;

  InterestObserverProvider.determineIfUserIsColdStartUser(completion:)(sub_1D8D851F4, v5);
}

uint64_t sub_1D8D40258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void InterestObserverProvider.determineIfUserIsColdStartUser(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &type metadata for Podcasts;
  v27 = sub_1D8CF0F2C();
  LOBYTE(aBlock) = 16;
  v14 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  if (v14)
  {
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v21 = sub_1D9178E1C();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    v27 = sub_1D8F71AF4;
    v28 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1D8CF5F60;
    v26 = &block_descriptor_6_0;
    v16 = _Block_copy(&aBlock);

    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBD18(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    v17 = v21;
    MEMORY[0x1DA72A400](0, v13, v9, v16);
    _Block_release(v16);

    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v13, v22);
  }

  else
  {
    v18 = *(v2 + 16);
    v19 = swift_allocObject();
    v19[2] = v2;
    v19[3] = a1;
    v19[4] = a2;
    v27 = sub_1D8F71AE8;
    v28 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1D8CF5F60;
    v26 = &block_descriptor_48;
    v20 = _Block_copy(&aBlock);

    [v18 performBlock_];
    _Block_release(v20);
  }
}

uint64_t sub_1D8D40680()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_1D8D40880()
{
  sub_1D917744C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OSLogType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_1D8D40948(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6108, &qword_1D9192110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[264 * v8])
    {
      memmove(v12, v13, 264 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

os_log_t _MTLogCategoryMetrics()
{
  v0 = os_log_create("com.apple.podcasts", "Metrics");

  return v0;
}

uint64_t sub_1D8D40B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
    v3 = sub_1D917942C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1D9179ACC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D8D40CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8D1B9C8(v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1D8D40CF8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t InterestObserverProvider.userIsColdStartUserPublisher<A>()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB77B8, &unk_1D9198EE0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  result = sub_1D9177A5C();
  *a1 = result;
  return result;
}

void NSManagedObjectContext.observeChanges<A>(to:entities:)(void *a1@<X8>)
{
  v2 = [swift_getObjCClassFromMetadata() entity];
  v3 = [v2 name];

  if (v3)
  {
    v4 = sub_1D917820C();
    v6 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = v4;
    v8 = inited + 32;
    *(inited + 40) = v6;
    v9 = sub_1D8D40B5C(inited);
    swift_setDeallocating();
    sub_1D8D3F2D0(v8);
    v10 = [objc_opt_self() defaultCenter];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71B8, &qword_1D91965F0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = v10;
    v3 = sub_1D91778DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71C0, &unk_1D91965F8);
    v15 = swift_allocObject();
    *(v15 + 24) = 0;
    *(v15 + 16) = MEMORY[0x1E69E7CD0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
    v16 = swift_allocObject();
    *(v16 + 24) = 0;

    *(v16 + 16) = 0;
    *a1 = 0;
    a1[1] = v9;
    a1[2] = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v3;
  a1[4] = v15;
  a1[5] = v16;
}

uint64_t sub_1D8D41030()
{
  result = sub_1D917739C();
  if (v1 <= 0x3F)
  {
    result = sub_1D917734C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D8D410BC(uint64_t a1, unint64_t a2, double a3)
{
  if ((~*&a3 & 0x7FF0000000000000) == 0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD5E28);

    oslog = sub_1D917741C();
    v7 = sub_1D9178D0C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 5136718;
      }

      else
      {
        v10 = 0x7974696E69666E69;
      }

      if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      v12 = sub_1D8CFA924(v10, v11, &v14);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1D8CFA924(a1, a2, &v14);
      _os_log_impl(&dword_1D8CEC000, oslog, v7, "ArtworkRequest received %s for %s. While simulated, this crash should be investigated since it effectively opts the caller into the default size of artwork.", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D8D412B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4928, &qword_1D918B380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D41320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B18, &qword_1D918B988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D41408()
{
  v1 = *(sub_1D9176EAC() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 48);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1D8D4149C(v3, v0 + v2, v5, v6);
}

uint64_t sub_1D8D4149C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = *a1;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1D9176EAC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v14 = swift_allocObject();
  v14[2] = *((v9 & v8) + 0x50);
  v14[3] = *((v9 & v8) + 0x58);
  v14[4] = *((v9 & v8) + 0x60);
  v14[5] = *((v9 & v8) + 0x68);
  v14[6] = a3;
  v14[7] = a4;
  v24 = sub_1D8D4C278;
  v25 = v14;
  swift_beginAccess();
  type metadata accessor for FRPSectionInfo();
  sub_1D91786FC();
  type metadata accessor for FRPOutput();
  swift_getFunctionTypeMetadata1();
  sub_1D8CFBDA8(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
  sub_1D91780DC();

  sub_1D917810C();
  swift_endAccess();
  v15 = a1 + qword_1ECAB8648;
  v16 = *(a1 + qword_1ECAB8648);
  v17 = *(v15 + 1);
  v18 = *(v15 + 2);

  if (v16)
  {
    v21 = v16;
    v22 = v17 & 1;
    v23 = v18;
    a3(&v21);
  }

  return result;
}

uint64_t sub_1D8D41740()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

void OSAllocatedUnfairLock.current.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v5));
  sub_1D8D42244(a1 + v4, a2);
  os_unfair_lock_unlock((a1 + v5));
}

void sub_1D8D41864(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + qword_1ECAB8630);
  v4 = sub_1D917703C();
  v5 = [v3 objectAtIndexPath_];

  *a2 = v5;
}

unint64_t sub_1D8D41908(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_1D8D4195C(uint64_t a1, void (*a2)(id, void))
{
  v3 = [objc_opt_self() sessionWithConfiguration_];
  v4 = v3;
  a2(v3, 0);
}

uint64_t sub_1D8D419F0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1D8D41A30(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26[3] = a10;
  v26[4] = a11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_0, a1, a10);
  v20 = *a3;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 159) = 0;
  *(a9 + 16) = 0u;
  *(a9 + 144) = 0u;
  sub_1D8CFD9D8(v26, a9 + 168);
  sub_1D8D423B4(a2, a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
  *(a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = v20;
  swift_beginAccess();
  *(a9 + 144) = a4;
  *(a9 + 152) = a5;
  *(a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = a6;
  *(a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = a7;
  *(a9 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = a8;
  sub_1D8D2EF54();
  v21 = sub_1D8D3C1DC();
  v23 = v22;
  sub_1D8D41C00(a2, type metadata accessor for EyebrowBuilder.ListContext);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  swift_beginAccess();
  v24 = *(a9 + 24);
  *(a9 + 16) = v21;
  *(a9 + 24) = v23;

  return a9;
}

char *sub_1D8D41BE0(char *a1, int64_t a2, char a3)
{
  result = sub_1D8D6E1C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D41C00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EyebrowBuilder.__deallocating_deinit()
{
  EyebrowBuilder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8D41CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_1D8D447DC();

    v6 = sub_1D91791FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D8D4241C(0, *(v6 + 16) + 1, 1, v6);
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1D8D4241C((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 16 * v8;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    a3 = sub_1D917817C();
  }

  else
  {
  }

  return a3;
}

uint64_t sub_1D8D41E3C(void *a1, uint64_t a2, void *a3)
{
  sub_1D917820C();
  v5 = a3;
  v6 = a1;
  LOBYTE(a1) = sub_1D8D42E68();

  return a1 & 1;
}

uint64_t SignpostTrace.init(domain:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D917739C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(a3, a1, v15);
  v24 = a2;
  sub_1D8D25D6C(a2, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1D917737C();
    sub_1D917731C();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1D8D25DDC(v9);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  v18 = type metadata accessor for SignpostTrace(0);
  (*(v11 + 16))(a3 + *(v18 + 20), v14, v10);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1D917964C();
  v19 = v25;
  v20 = v26;
  sub_1D8D25DDC(v24);
  (*(v16 + 8))(a1, v15);
  result = (*(v11 + 8))(v14, v10);
  v22 = (a3 + *(v18 + 24));
  *v22 = v19;
  v22[1] = v20;
  return result;
}

char *sub_1D8D42150(char *a1, int64_t a2, char a3)
{
  result = sub_1D8D15568(a1, a2, a3, *v3, &qword_1ECAB8680, &qword_1D9191FB0);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D42180()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = qword_1ECAB8638;
  swift_beginAccess();
  v3 = *(v0 + v2);

  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v4 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging();
  Synchronized.wrappedValue.getter(v3, v4);

  return v6;
}

uint64_t sub_1D8D4229C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v7 = 1;
    goto LABEL_10;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
LABEL_7:
    v7 = 0;
LABEL_10:
    sub_1D8FBD718();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  v3 = 0;
  while (1)
  {
    v4 = *(a2 + 32 + 8 * v3);
    if (v4 < 0)
    {
      v7 = 2;
      goto LABEL_10;
    }

    v5 = __OFSUB__(a1, v4);
    v6 = a1 - v4;
    if (v6 < 0 != v5)
    {
      break;
    }

    ++v3;
    a1 = v6;
    if (v2 == v3)
    {
      goto LABEL_7;
    }
  }

  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8680, &qword_1D9191FB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D918A530;
  *(v11 + 32) = v3;
  *(v11 + 40) = v10;
  return MEMORY[0x1DA7285F0]();
}

uint64_t sub_1D8D423B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1D8D4241C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D8D42528(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 40;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = (v4 + 16 * v2);
  while (1)
  {
    if (v3 == v2)
    {
      v14 = v5[2];
      if (v14 <= 1)
      {
        if (!v14)
        {

          return 0;
        }

        v17 = v5;
        v15 = v5[4];
        v18 = v17[5];
      }

      else
      {
        v43 = v5;
        if (v3)
        {
          v15 = *(v1 + 32);
          v16 = *(v1 + 40);
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        v19 = 0;
        v20 = v14 - 3;
        v21 = v43 + 7;
        v22 = -2;
        v23 = 1;
        v44 = v14;
        while (v16)
        {
          v24 = *(v21 - 1);
          v25 = *v21;
          v45 = v20;
          sub_1D8D447DC();
          swift_bridgeObjectRetain_n();
          v26 = sub_1D91791FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1D8D4241C(0, *(v26 + 16) + 1, 1, v26);
          }

          v28 = *(v26 + 16);
          v27 = *(v26 + 24);
          if (v28 >= v27 >> 1)
          {
            v26 = sub_1D8D4241C((v27 > 1), v28 + 1, 1, v26);
          }

          *(v26 + 16) = v28 + 1;
          v29 = v26 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
          sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
          v15 = sub_1D917817C();
          v31 = v30;

          v14 = v44;
          v20 = v45 - 1;
          --v22;
          --v19;
          v21 += 2;
          ++v23;
          v16 = v31;
          if (v44 + v19 == 1)
          {
            goto LABEL_51;
          }
        }

        if (v14 + v19 != 2)
        {
          v32 = v14 + v19 - 3;
          v33 = 1 - v19;
          if (v14 <= v23)
          {
            v34 = v23;
          }

          else
          {
            v34 = v14;
          }

          v35 = v34 + v19 - 2;
          if (v32 < v35)
          {
            v35 = v14 + v19 - 3;
          }

          if (v35 + 1 >= 3)
          {
            if (v14 <= v23)
            {
              v37 = v23;
            }

            else
            {
              v37 = v14;
            }

            v38 = v37 + v22;
            if (v20 < v37 + v22)
            {
              v38 = v20;
            }

            v36 = (v38 & 0xFFFFFFFFFFFFFFFELL) - v19 + 2;
            v39 = v37 + v19 - 2;
            if (v32 >= v39)
            {
              v32 = v39;
            }

            v40 = v32 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v40 -= 2;
            }

            while (v40);
          }

          else
          {
            v36 = 2 - v19;
          }

          v41 = v14 - v36;
          if (v14 > v33)
          {
            v33 = v14;
          }

          v42 = v33 - v36;
          while (v42)
          {
            --v42;
            if (!--v41)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_55;
        }
      }

LABEL_51:

      return v15;
    }

    if (v2 >= v3)
    {
      break;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_54;
    }

    v9 = *(v6 - 1);
    v8 = *v6;
    v10 = HIBYTE(*v6) & 0xF;
    if ((*v6 & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    ++v2;
    v6 += 2;
    if (v10)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D8D41BE0(0, v5[2] + 1, 1);
      }

      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_1D8D41BE0((v11 > 1), v12 + 1, 1);
      }

      v5[2] = v12 + 1;
      v13 = &v5[2 * v12];
      v13[4] = v9;
      v13[5] = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1D8D4290C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9176E3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1D8D429C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D42A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1D8D42B0C(id a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }
}

uint64_t sub_1D8D42B20(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1D91773AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD5E90 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917739C();
  __swift_project_value_buffer(v12, qword_1EDCD5E98);
  v13 = sub_1D917737C();
  sub_1D91773DC();
  v14 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v13, v14, v17, v20, v15, v16, 2u);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

void *EyebrowBuilder.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);
  sub_1D8D41C00(v0 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
  return v0;
}

uint64_t sub_1D8D42E68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189070;
  v36 = OBJC_IVAR___MTSearchTrie_rootNode;
  *(inited + 32) = *(v0 + OBJC_IVAR___MTSearchTrie_rootNode);

  result = sub_1D917833C();
  if (!v4)
  {
LABEL_37:

    return 0;
  }

  v5 = result;
  v6 = v4;
  v35 = v0;
  while (1)
  {
    v37 = MEMORY[0x1E69E7CC0];
    if (inited >> 62)
    {
      break;
    }

    v8 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_29:

    v10 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v26 = *(v1 + v36);
    swift_beginAccess();
    v27 = *(v26 + 24);
    if (!*(v27 + 16))
    {
      goto LABEL_3;
    }

    v28 = sub_1D8D4A13C(v5, v6);
    v30 = v29;

    if ((v30 & 1) == 0)
    {

LABEL_3:

      goto LABEL_4;
    }

    v31 = *(*(v27 + 56) + 8 * v28);

    if (*(v31 + 16))
    {

LABEL_41:

      return 1;
    }

    MEMORY[0x1DA729B90](v32);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v33 = v1;
      v34 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D917863C();
      v1 = v33;
    }

    sub_1D917869C();

    v10 = v37;
LABEL_4:
    result = sub_1D917833C();
    v5 = result;
    v6 = v7;
    inited = v10;
    if (!v7)
    {
      goto LABEL_37;
    }
  }

  result = sub_1D917935C();
  v8 = result;
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_7:
  if ((inited & 0xC000000000000001) != 0)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = MEMORY[0x1DA72AA90](v9, inited);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = result;
      swift_beginAccess();
      v13 = *(v12 + 24);
      if (*(v13 + 16) && (v14 = sub_1D8D4A13C(v5, v6), (v15 & 1) != 0))
      {
        if (*(*(*(v13 + 56) + 8 * v14) + 16))
        {

          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        v16 = *(*(v13 + 56) + 8 * v14);
        v17 = swift_retain_n();
        MEMORY[0x1DA729B90](v17);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        sub_1D917869C();

        swift_unknownObjectRelease();
        v10 = v37;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v9;
      if (v11 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (v19 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(inited + 8 * v19 + 32);
      result = swift_beginAccess();
      v21 = *(v20 + 24);
      if (*(v21 + 16))
      {
        result = sub_1D8D4A13C(v5, v6);
        if (v22)
        {
          if (*(*(*(v21 + 56) + 8 * result) + 16) == 1)
          {

LABEL_40:

            goto LABEL_41;
          }

          v23 = *(*(v21 + 56) + 8 * result);
          swift_retain_n();

          MEMORY[0x1DA729B90](v24);
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D917863C();
          }

          sub_1D917869C();

          v10 = v37;
        }
      }

      if (v8 == ++v19)
      {
LABEL_27:

        v1 = v35;
        goto LABEL_30;
      }
    }
  }

  __break(1u);
  return result;
}

id FairPlayKeyLoading.receive(on:)(void *a1)
{
  v3 = type metadata accessor for DispatchingFairPlayKeyLoading();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = v1;
  *&v4[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = a1;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain();
  v5 = a1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D8D43430()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (!v1)
  {
    return 0;
  }

  if ([v1 ams:*MEMORY[0x1E698C4B0] accountFlagValueForAccountFlag:?])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (*(&v5 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && (v3 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1D8D64450(&v6);
  }

  if ([v1 ams:*MEMORY[0x1E698C4B8] accountFlagValueForAccountFlag:?])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (*(&v5 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v3 == 1)
    {
LABEL_16:

      return 0;
    }
  }

  else
  {
    sub_1D8D64450(&v6);
  }

  if ([v1 ams:*MEMORY[0x1E698C4A8] accountFlagValueForAccountFlag:?])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v3)
    {
      return 0;
    }
  }

  else
  {
    sub_1D8D64450(&v6);
  }

  return 1;
}

uint64_t Publisher.bufferedMulticast()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = v23 - v6;
  v7 = sub_1D917768C();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = sub_1D917793C();
  WitnessTable = swift_getWitnessTable();
  v23[1] = WitnessTable;
  v23[0] = swift_getWitnessTable();
  v28 = v7;
  v29 = v11;
  v30 = WitnessTable;
  v31 = v23[0];
  sub_1D917776C();
  v23[2] = swift_getWitnessTable();
  v23[4] = sub_1D91775BC();
  v23[3] = swift_getWitnessTable();
  v13 = sub_1D91775AC();
  v24 = *(v13 - 8);
  v14 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1D9177B9C();

  (*(*(AssociatedTypeWitness - 8) + 56))(v25, 1, 1);
  sub_1D917794C();
  v18 = sub_1D9177D2C();

  (*(v26 + 8))(v10, v7);
  v28 = v18;
  v19 = sub_1D917796C();

  v28 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  sub_1D9177B2C();

  swift_getWitnessTable();
  v21 = sub_1D9177B1C();
  (*(v24 + 8))(v16, v13);
  return v21;
}

uint64_t sub_1D8D43BA4()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E7C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAAFDA0 = result;
  return result;
}

uint64_t sub_1D8D43DF4()
{
  v1 = v0[19];
  v2 = v0[5];
  (*(v0[15] + 16))(v0[16], v0[6], v0[4]);
  sub_1D91789FC();
  v3 = v0[17];
  v5 = v0[4];
  v4 = v0[5];
  v0[20] = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x1E69E85B0] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1D8D4CB14;
  v8 = v0[19];
  v9 = v0[17];
  v11 = v0[13];
  v10 = v0[14];

  return MEMORY[0x1EEE6D8D0](v10, 0, 0);
}

uint64_t NSUserDefaults.observeChanges(for:performing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB360, &qword_1D91BC170);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D44084, 0, 0);
}

uint64_t sub_1D8D44084()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v31 = MEMORY[0x1E69E7CC0];
    v6 = *(v0 + 40);
    sub_1D8D4D01C(0, v2, 0);
    v3 = v31;
    v27 = *MEMORY[0x1E69E8650];
    v28 = v4;
    v26 = (v5 + 104);
    v7 = (v1 + 40);
    do
    {
      v29 = v3;
      v8 = *(v0 + 88);
      v9 = *(v0 + 64);
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v13 = *(v7 - 1);
      v12 = *v7;
      v14 = swift_task_alloc();
      v14[2] = v13;
      v14[3] = v12;
      v14[4] = v10;
      (*v26)(v9, v27, v11);

      sub_1D91788FC();
      v3 = v29;

      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D8D4D01C(v15 > 1, v16 + 1, 1);
        v3 = v29;
      }

      v17 = *(v0 + 88);
      v18 = *(v0 + 72);
      *(v3 + 16) = v16 + 1;
      (*(v28 + 32))(v3 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v16, v17, v18);
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  *(v0 + 96) = v3;
  v20 = *(v0 + 24);
  v19 = *(v0 + 32);
  v21 = swift_allocObject();
  *(v0 + 104) = v21;
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;

  v22 = swift_task_alloc();
  *(v0 + 112) = v22;
  v22[2] = v3;
  v22[3] = &unk_1D91BC190;
  v22[4] = v21;
  v23 = *(MEMORY[0x1E69E88A0] + 4);
  v24 = swift_task_alloc();
  *(v0 + 120) = v24;
  *v24 = v0;
  v24[1] = sub_1D9146B94;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1D8D44348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1D8D44384(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB370, &qword_1D91BC1D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v30 - v12;
  (*(v9 + 16))(v30 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  v17 = (v16 + v15);
  *v17 = a2;
  v17[1] = a3;
  v18 = type metadata accessor for _UserDefaultsObserver();
  v19 = objc_allocWithZone(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB368, qword_1D91BC490);
  v20 = swift_allocObject();
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  *&v19[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state] = v20;
  v21 = &v19[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v19[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify];
  *v22 = sub_1D8D80A80;
  v22[1] = v16;
  *&v19[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults] = a4;
  v31.receiver = v19;
  v31.super_class = v18;
  swift_bridgeObjectRetain_n();
  v23 = a4;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  *(swift_allocObject() + 16) = v24;
  v25 = v24;
  sub_1D917888C();
  v26 = *&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state];
  os_unfair_lock_lock((v26 + 20));
  LOBYTE(a1) = *(v26 + 16);
  os_unfair_lock_unlock((v26 + 20));
  if ((a1 & 1) == 0)
  {
    v27 = *&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8];
    v30[2] = *&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
    v30[3] = v27;
    v30[0] = 46;
    v30[1] = 0xE100000000000000;
    sub_1D8D447DC();
    if (sub_1D917926C())
    {
      v28 = [objc_opt_self() defaultCenter];
      [v28 addObserver:v25 selector:sel_userDefaultsDidChange_ name:*MEMORY[0x1E696AA70] object:*&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults]];
    }

    else
    {
      v29 = *&v25[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults];
      v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v29 addObserver:v25 forKeyPath:v28 options:0 context:&unk_1ECABB408];
    }

    os_unfair_lock_lock((v26 + 20));
    *(v26 + 16) = 1;
    os_unfair_lock_unlock((v26 + 20));
  }
}

uint64_t sub_1D8D446DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB370, &qword_1D91BC1D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8D44788()
{

  return swift_deallocObject();
}

unint64_t sub_1D8D447DC()
{
  result = qword_1EDCD7720;
  if (!qword_1EDCD7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7720);
  }

  return result;
}

uint64_t sub_1D8D44830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D8D44878(uint64_t result, void *a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      v17 = *v2;

      sub_1D8D546A0(v3, 1);
      v5 = a2[2];
      v6 = a2[3];
      v7 = a2[4];
      type metadata accessor for ConduitBase();
      swift_getWitnessTable();
      sub_1D9178B4C();
      v8 = v2;
      sub_1D9178B1C();

      v9 = *v2;
      *v8 = v17;
      v10 = *(v8 + 8);
      *(v8 + 8) = 1;

      sub_1D8D54860(v9, v10);
    }

    else
    {
      *v2 = result;
      *(v2 + 8) = 0;
    }
  }

  else if (v3 != result)
  {
    v12 = a2[2];
    v11 = a2[3];
    v13 = a2[4];
    v14 = result;
    type metadata accessor for ConduitBase();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    swift_allocObject();
    v15 = sub_1D917861C();
    *v16 = v3;
    v16[1] = v14;
    sub_1D8D4D228(v15);
    sub_1D91786FC();

    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_1D9178B5C();
    *v2 = result;
    *(v2 + 8) = 1;
  }

  return result;
}

uint64_t sub_1D8D44A94()
{
  result = MEMORY[0x1DA7298F0](0x7373696D7369645FLL, 0xEA00000000006465);
  qword_1ECAB00E8 = 0xD000000000000011;
  unk_1ECAB00F0 = 0x80000001D91D7FA0;
  return result;
}

uint64_t NSManagedObjectContext.performAndPublish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D9177A2C();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = v3;

  return sub_1D9177A3C();
}

uint64_t sub_1D8D44BB8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

void sub_1D8D44C04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a3;
  v15[4] = sub_1D8FC3254;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_30_1;
  v13 = _Block_copy(v15);

  v14 = a3;

  [v14 performBlock_];
  _Block_release(v13);
}

uint64_t sub_1D8D44D14()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D8D44D68(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8D5FF18;

  return sub_1D8D44E2C(a1, a2, v6, v7, v8);
}

uint64_t sub_1D8D44E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D44F48, 0, 0);
}

uint64_t sub_1D8D44F48()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v35 = **(v0 + 72);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v33 = *(v3 + 72);
    v32 = (v3 + 16);
    v34 = v4;
    v30 = (v3 + 32);
    v31 = (*(v0 + 120) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_1D917886C();
    v7 = *(v6 - 8);
    v29 = *(v7 + 56);
    v28 = (v7 + 48);
    v27 = (v7 + 8);
    do
    {
      v37 = v2;
      v11 = *(v0 + 136);
      v10 = *(v0 + 144);
      v12 = *(v0 + 128);
      v14 = *(v0 + 96);
      v13 = *(v0 + 104);
      v36 = *(v0 + 88);
      v29(v10, 1, 1, v6);
      (*v32)(v12, v5, v13);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      (*v30)(v15 + v34, v12, v13);
      v17 = (v15 + v31);
      *v17 = v36;
      v17[1] = v14;
      sub_1D8CF5C74(v10, v11);
      LODWORD(v11) = (*v28)(v11, 1, v6);

      v18 = *(v0 + 136);
      if (v11 == 1)
      {
        sub_1D8CF5CE4(*(v0 + 136));
      }

      else
      {
        sub_1D917885C();
        (*v27)(v18, v6);
      }

      if (*v16)
      {
        v19 = *(v15 + 24);
        v20 = *v16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_1D917874C();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      if (v23 | v21)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v23;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v35;
      swift_task_create();

      sub_1D8CF5CE4(v9);
      v5 += v33;
      v2 = v37 - 1;
    }

    while (v37 != 1);
  }

  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_1D8F40E58;
  v25 = *(v0 + 72);

  return sub_1D8CF5A38(0, 0);
}

uint64_t sub_1D8D452CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t DatabasePropertyPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v35 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71C8, &unk_1D9196608);
  v34 = *(v33 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v29 - v5;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  v16 = v3[2];
  v43 = v3[1];
  v44 = v16;
  v42 = *v3;
  v17 = v16;
  sub_1D9176E9C();
  v39 = v12;
  os_unfair_lock_lock(v17 + 6);
  sub_1D8D45820(&v17[4]);
  v31 = 0;
  os_unfair_lock_unlock(v17 + 6);
  v18 = *(v7 + 32);
  v19 = v15;
  v18(v15, v12, v6);
  v29[1] = *(&v43 + 1);
  v41 = *(&v43 + 1);
  v30 = v7;
  v29[0] = *(v7 + 16);
  (v29[0])(v9, v15, v6);
  v20 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v21 = swift_allocObject();
  v22 = v43;
  *(v21 + 1) = v42;
  *(v21 + 2) = v22;
  *(v21 + 3) = v44;
  v18(&v21[v20], v9, v6);
  (v29[0])(v9, v19, v6);
  v23 = swift_allocObject();
  v24 = v43;
  *(v23 + 1) = v42;
  *(v23 + 2) = v24;
  *(v23 + 3) = v44;
  v18(&v23[v20], v9, v6);
  sub_1D8D461A0(&v42, v40);
  sub_1D8D461A0(&v42, v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71B8, &qword_1D91965F0);
  sub_1D8D461D8();
  v25 = v32;
  sub_1D9177B3C();

  v26 = v33;
  sub_1D91775EC();
  (*(v34 + 8))(v25, v26);
  v27 = *(&v44 + 1);
  v38 = &v42;
  os_unfair_lock_lock((*(&v44 + 1) + 24));
  sub_1D8D46374((v27 + 16));
  os_unfair_lock_unlock((v27 + 24));
  return (*(v30 + 8))(v19, v6);
}

uint64_t sub_1D8D4583C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  (*(v4 + 16))(v7, a2, v3, v9);
  sub_1D8D45964(v11, v7);
  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_1D8D45964(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D8D11168(&qword_1EDCD5920);
  v36 = a2;
  v13 = sub_1D917813C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1D8D11168(&qword_1ECAB2C78);
      v23 = sub_1D91781BC();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1D8D45C1C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1D8D45C1C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8EFCD38(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D8F00430();
      goto LABEL_12;
    }

    sub_1D8D45E98(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1D8D11168(&qword_1EDCD5920);
  v16 = sub_1D917813C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1D8D11168(&qword_1ECAB2C78);
      v24 = sub_1D91781BC();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8D45E98(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D9176EAC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB67A8, &qword_1D9193748);
  v10 = sub_1D917940C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1D8D11168(&qword_1EDCD5920);
      result = sub_1D917813C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_1D8D461D8()
{
  result = qword_1ECAB0320;
  if (!qword_1ECAB0320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB71B8, &qword_1D91965F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB0320);
  }

  return result;
}

uint64_t sub_1D8D4623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180);
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72D8, &qword_1D9196A58);
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D48324, 0, 0);
}

void sub_1D8D46390(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1D9178FBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*a1)
  {
    v9 = *(a2 + 32);
    os_unfair_lock_lock((v9 + 24));
    v10 = *(v9 + 16);

    os_unfair_lock_unlock((v9 + 24));
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = *(a2 + 16);
      v13 = *MEMORY[0x1E695D350];
      sub_1D9178FCC();
      v14 = swift_allocObject();
      v15 = *(a2 + 16);
      v14[1] = *a2;
      v14[2] = v15;
      v14[3] = *(a2 + 32);
      sub_1D8D461A0(a2, v17);
      sub_1D8D01764();
      v16 = sub_1D9177D9C();

      (*(v5 + 8))(v8, v4);
      *a1 = v16;
    }
  }
}

uint64_t sub_1D8D46530()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D8D46590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v17 - v10;
  sub_1D8CF5C74(a1, &v17 - v10);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(v3 + *MEMORY[0x1E695C030]);
  sub_1D8D46700(v11, v13 + v12);
  v14 = (v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  v15 = sub_1D9177A4C();
  sub_1D8CF5CE4(a1);
  return v15;
}

uint64_t Future<>.init(priority:unwrapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1D8D46590(a1, a2, a3);
}

{
  return sub_1D8D46590(a1, a2, a3);
}

uint64_t sub_1D8D46700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D46770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = (v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D8D46864(a1, a2, v4 + v11, *v12, v12[1], v9, a3, a4);
}

uint64_t sub_1D8D46864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v21 - v17;
  sub_1D8CF5C74(a3, &v21 - v17);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a6;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a4;
  v19[8] = a5;

  sub_1D8E91268(0, 0, v18, a8, v19);
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);

  v11 = v1 + v4;
  if (!(*(v7 + 48))(v1 + v4, 1, v6))
  {
    (*(v7 + 8))(v1 + v4, v6);
  }

  v12 = *(v11 + *(v2 + 24) + 8);

  v13 = (v11 + *(v2 + 36));
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v14 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + v8 + 40) & ~v8;
  v16 = v1 + v14;
  v17 = *(v1 + v14 + 16);

  v18 = *(v16 + 24);

  v19 = *(v16 + 32);

  (*(v7 + 8))(v1 + v15, v6);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = sub_1D9176EAC();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
    v10 = sub_1D9176C2C();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v6 = sub_1D9176EAC();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48) + 8);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for KCUTranscriptProvider() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[9];
  v7 = sub_1D9176C2C();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = *(v3 + v1[10] + 8);

  v9 = *(v3 + v1[11] + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = v0[4];

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = v1 + v3;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v1 + v3, 1, v6))
  {
    (*(v7 + 8))(v1 + v3, v6);
  }

  v8 = *(v5 + *(v2 + 24) + 8);

  v9 = (v5 + *(v2 + 36));
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v11));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1D917886C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1D8DA8564(*(v0 + 32), *(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v1 + v4;
  v7 = *(v1 + v4);

  v8 = *(v1 + v4 + 8);

  v9 = *(v1 + v4 + 32);

  v10 = *(v1 + v4 + 56);

  v11 = *(v1 + v4 + 72);

  v12 = v1 + v4 + v2[9];
  v13 = type metadata accessor for PlaybackIntent(0);
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {
    v88 = v5;
    sub_1D8CFEACC(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32));
    v14 = (v12 + v13[5]);
    v15 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
    {
      v86 = v1;
      v16 = *(v14 + 1);

      v17 = *(v14 + 3);

      v18 = *(v14 + 5);

      v19 = *(v14 + 11);

      v20 = *(v14 + 13);

      v21 = *(v14 + 15);

      v85 = v15[12];
      v22 = sub_1D9176C2C();
      v23 = (*(v22 - 8) + 48);
      v80 = *(v22 - 8);
      v81 = *v23;
      if (!(*v23)(&v14[v85], 1, v22))
      {
        (*(v80 + 8))(&v14[v85], v22);
      }

      v83 = (v3 + 16) & ~v3;
      v24 = *&v14[v15[13] + 8];

      v25 = *&v14[v15[17] + 8];

      v26 = v15[18];
      if (!v81(&v14[v26], 1, v22))
      {
        (*(v80 + 8))(&v14[v26], v22);
      }

      v27 = *&v14[v15[19] + 8];

      v28 = *&v14[v15[20]];

      v29 = v15[22];
      v30 = sub_1D9176E3C();
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(&v14[v29], 1, v30))
      {
        (*(v31 + 8))(&v14[v29], v30);
      }

      v32 = *&v14[v15[23] + 8];

      v33 = *&v14[v15[34] + 8];

      v34 = *&v14[v15[35]];

      v35 = *&v14[v15[36] + 8];

      v36 = *&v14[v15[37] + 8];

      v37 = v15[38];
      if (!v81(&v14[v37], 1, v22))
      {
        (*(v80 + 8))(&v14[v37], v22);
      }

      v38 = *&v14[v15[39] + 8];

      v39 = *&v14[v15[40] + 8];

      v40 = *&v14[v15[49] + 8];

      v1 = v86;
      v4 = v83;
    }

    v41 = v12 + v13[6];
    v42 = *(v41 + 40);
    if (v42 != 255)
    {
      sub_1D8CFEACC(*(v41 + 8), *(v41 + 16), *(v41 + 24), *(v41 + 32), v42);
    }

    if (*(v41 + 128) != 2)
    {
      sub_1D90AB0F8(*(v41 + 48), *(v41 + 56), *(v41 + 64), *(v41 + 72), *(v41 + 80), *(v41 + 88), *(v41 + 96), *(v41 + 104), *(v41 + 112));
    }

    v43 = *(v12 + v13[7]);

    v44 = *(v12 + v13[8] + 8);

    v5 = v88;
  }

  v45 = *(v6 + v2[10]);

  v46 = (v6 + v2[11]);
  v47 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v47 - 1) + 48))(v46, 1, v47))
  {
    v89 = v5;
    v48 = *(v46 + 1);

    v49 = *(v46 + 3);

    v50 = *(v46 + 5);

    v51 = *(v46 + 11);

    v52 = *(v46 + 13);

    v53 = *(v46 + 15);

    v54 = v47[12];
    v55 = sub_1D9176C2C();
    v82 = *(v55 - 8);
    v56 = *(v82 + 48);
    if (!v56(&v46[v54], 1, v55))
    {
      (*(v82 + 8))(&v46[v54], v55);
    }

    v84 = v4;
    v87 = v1;
    v57 = *&v46[v47[13] + 8];

    v58 = *&v46[v47[17] + 8];

    v59 = v47[18];
    if (!v56(&v46[v59], 1, v55))
    {
      (*(v82 + 8))(&v46[v59], v55);
    }

    v60 = *&v46[v47[19] + 8];

    v61 = *&v46[v47[20]];

    v62 = v47[22];
    v63 = sub_1D9176E3C();
    v64 = *(v63 - 8);
    if (!(*(v64 + 48))(&v46[v62], 1, v63))
    {
      (*(v64 + 8))(&v46[v62], v63);
    }

    v65 = *&v46[v47[23] + 8];

    v66 = *&v46[v47[34] + 8];

    v67 = *&v46[v47[35]];

    v68 = *&v46[v47[36] + 8];

    v69 = *&v46[v47[37] + 8];

    v70 = v47[38];
    if (!v56(&v46[v70], 1, v55))
    {
      (*(v82 + 8))(&v46[v70], v55);
    }

    v71 = *&v46[v47[39] + 8];

    v72 = *&v46[v47[40] + 8];

    v73 = *&v46[v47[49] + 8];

    v1 = v87;
    v4 = v84;
    v5 = v89;
  }

  v74 = *(v6 + v2[15]);

  v75 = v6 + v2[17];
  v76 = *(v75 + 32);
  if (v76 != 255)
  {
    sub_1D8CFEACC(*v75, *(v75 + 8), *(v75 + 16), *(v75 + 24), v76);
  }

  v77 = *(v6 + v2[18]);

  v78 = *(v1 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);
  v6 = *(v1 + v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8D48074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8D5FF18;

  return sub_1D8D48150(a1, v4, v5, v7, v8, v9);
}

uint64_t sub_1D8D48150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v8 = sub_1D9179EAC();
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[6] = v11;
  v15 = (a6 + *a6);
  v12 = a6[1];
  v13 = swift_task_alloc();
  v6[7] = v13;
  *v13 = v6;
  v13[1] = sub_1D8D6EBC0;

  return v15(v11);
}

uint64_t sub_1D8D48324()
{
  v1 = v0[14];
  (*(v0[10] + 16))(v0[11], v0[6], v0[9]);
  sub_1D8CF48EC(&qword_1ECAAFE88, &qword_1ECAB4550, &qword_1D91BC180);
  sub_1D91789FC();
  sub_1D8CF48EC(&qword_1ECAAFE98, &qword_1ECAB72D8, &qword_1D9196A58);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1D8D60E3C;
  v4 = v0[14];
  v5 = v0[12];

  return MEMORY[0x1EEE6D8D0](v0 + 2, 0, 0);
}

uint64_t InterestRepository.__allocating_init(interestStore:syncKeysRepository:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1D8D484CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4550, &qword_1D91BC180) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D8D5FF18;

  return sub_1D8D4623C(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t InterestStore.__allocating_init(ctx:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id static DeviceCapacityMonitor.shared.getter()
{
  if (qword_1EDCD3800 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD3810;

  return v1;
}

uint64_t DeviceCapacityMonitor.addCapacityChangeObserver(options:callback:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    a1 = sub_1D8D487BC(a2, a3);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock(v6 + 6);
    sub_1D8D48BA8(&v6[4]);
    os_unfair_lock_unlock(v6 + 6);
  }

  return 0;
}

uint64_t sub_1D8D487BC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource))
  {
    v15 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v16 = *(v2 + v15);

    os_unfair_lock_lock((v16 + 24));
    v17 = *(v16 + 16);
    os_unfair_lock_unlock((v16 + 24));

    return a1(v17);
  }

  else
  {
    v23[1] = *(v2 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
    v24 = v12;
    v19 = swift_allocObject();
    v23[0] = v6;
    v20 = v19;
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = a2;
    aBlock[4] = sub_1D9160118;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_56_3;
    v22 = _Block_copy(aBlock);

    sub_1D9177E4C();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v14, v9, v22);
    _Block_release(v22);
    (*(v23[0] + 8))(v9, v5);
    (*(v24 + 8))(v14, v10);
  }
}

uint64_t sub_1D8D48B34()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D48B78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D8D48C00(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = sub_1D8D48CC4(sub_1D9160068, v8);

  *a2 = v9;
  return result;
}

uint64_t sub_1D8D48C8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D48CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1D8DB8004(*(v4 + 16), 0);
    v7 = sub_1D8DB8018(&v17, v6 + 32, v5, v4);
    swift_bridgeObjectRetain_n();
    sub_1D8D1B144();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v17 = v6;
  sub_1D8D48E60(&v17);

  v8 = *(v17 + 2);
  if (v8)
  {
    v9 = *&v17[8 * v8 + 24];

    v10 = v9 + 1;
  }

  else
  {

    v10 = 1;
  }

  swift_beginAccess();

  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1D8D48FBC(a1, a2, v10, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v16;
  swift_endAccess();
  return v10;
}

uint64_t sub_1D8D48E60(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8D48FA8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9179A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D8F9FDDC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1D8D48FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8D490F4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8F86A24();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D8D49134(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D8D490F4(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_1D8D493A8(v11, a3, a1, a2, v22);
  }
}

unint64_t sub_1D8D490F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D9179DAC();
  return sub_1D8D1B080(a1, v4);
}

uint64_t sub_1D8D49134(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B38, &unk_1D91A6CA0);
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      result = sub_1D9179DAC();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1D8D493A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1D8D49440()
{
  result = qword_1ECAAFDF8;
  if (!qword_1ECAAFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFDF8);
  }

  return result;
}

void *Cache.init(invalidateOnAppBackground:)(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D9178FBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[10];
  v11 = v4[11];
  v12 = v4[12];
  v13 = sub_1D9177FEC();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v13;
  if (a1)
  {
    v14 = [objc_opt_self() defaultCenter];
    v15 = @"MTApplicationDidEnterBackgroundNotification";
    sub_1D9178FAC();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v10;
    v17[3] = v11;
    v17[4] = v12;
    v17[5] = v16;
    sub_1D8D01764();
    v18 = sub_1D9177D9C();

    (*(v6 + 8))(v9, v5);
    v19 = v2[3];
    v2[3] = v18;
  }

  v20 = [objc_opt_self() defaultCenter];
  v21 = @"MTApplicationDidReceiveMemoryWarningNotification";
  sub_1D9178FAC();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v10;
  v23[3] = v11;
  v23[4] = v12;
  v23[5] = v22;
  sub_1D8D01764();
  v24 = sub_1D9177D9C();

  (*(v6 + 8))(v9, v5);
  v25 = v2[4];
  v2[4] = v24;

  return v2;
}

uint64_t sub_1D8D497E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D49820()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t Cache.subscript.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  sub_1D91780FC();
  return swift_endAccess();
}

uint64_t sub_1D8D498FC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 80);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v19 - v15, a2, v11, v14);
  (*(v7 + 16))(v10, v19, v6);
  swift_beginAccess();
  v17 = *(v4 + 96);
  sub_1D91780DC();
  sub_1D917810C();
  return swift_endAccess();
}

Swift::String __swiftcall PFLocalizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917693C();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t type metadata accessor for CategoryModel()
{
  result = qword_1ECAB28A8;
  if (!qword_1ECAB28A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D49C54(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_1D8D49E98(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return result;
  }

  v4 = *(v2 + OBJC_IVAR___MTSearchTrie_rootNode);

  v5 = sub_1D917833C();
  if (!v6)
  {
    v18 = v4;
LABEL_23:

    *(v18 + 16) = 1;
  }

  v7 = v5;
  v8 = v6;
  v9 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    swift_beginAccess();
    v14 = *(v4 + 24);
    if (*(v14 + 16))
    {
      v15 = sub_1D8D4A13C(v7, v8);
      if (v16)
      {
        v17 = v15;

        v18 = *(*(v14 + 56) + 8 * v17);

        goto LABEL_8;
      }
    }

    type metadata accessor for SearchTrie.Node();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = v9;
    swift_beginAccess();

    v19 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 24);
    *(v4 + 24) = 0x8000000000000000;
    v22 = sub_1D8D4A13C(v7, v8);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v21[3] < v27)
    {
      sub_1D8D4A168(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1D8D4A13C(v7, v8);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      if ((v28 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v33 = v22;
    sub_1D8F86CF0();
    v22 = v33;
    if ((v28 & 1) == 0)
    {
LABEL_18:
      v21[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v21[6] + 16 * v22);
      *v30 = v7;
      v30[1] = v8;
      *(v21[7] + 8 * v22) = v18;
      v31 = v21[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v21[2] = v32;
      goto LABEL_7;
    }

LABEL_6:
    v10 = v22;

    v11 = v21[7];
    v12 = *(v11 + 8 * v10);
    *(v11 + 8 * v10) = v18;

LABEL_7:
    *(v4 + 24) = v21;
    swift_endAccess();
LABEL_8:

    v7 = sub_1D917833C();
    v8 = v13;
    v4 = v18;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D8D4A168(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AD8, &unk_1D91A6BB0);
  v38 = a2;
  result = sub_1D917978C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t Cache.get(_:or:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a2;
  v7 = *(*v4 + 88);
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  Cache.subscript.getter();
  v16 = *(v7 - 8);
  if ((*(v16 + 48))(v15, 1, v7) != 1)
  {
    return (*(v16 + 32))(a4, v15, v7);
  }

  v21 = a1;
  v17 = *(v9 + 8);
  v18 = v17(v15, v8);
  v23(v18);
  (*(v16 + 16))(v12, a4, v7);
  (*(v16 + 56))(v12, 0, 1, v7);
  sub_1D8D498FC(v12, v21);
  return v17(v12, v8);
}

uint64_t sub_1D8D4A624(void *a1)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4400, &qword_1D9189150);
  v73 = *(v71 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v61 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4408, &qword_1D9189158);
  v70 = *(v72 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4410, &unk_1D9189160);
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v61 - v9;
  *(v1 + 16) = a1;
  v62 = 0x80000001D91C9790;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D9189060;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D8D34978();
  *(v10 + 32) = 0x7473657265746E69;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = 0x7473657265746E69;
  *(v10 + 80) = 0xE800000000000000;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  strcpy((v10 + 112), "interestValue");
  *(v10 + 126) = -4864;
  v13 = a1;
  v14 = sub_1D9178C8C();
  v75 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v15 = v13;
  v16 = sub_1D9178E1C();
  v17 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v19 = [v17 initWithEntityName_];

  [v19 setPredicate_];
  v63 = sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v20 = sub_1D91785DC();
  [v19 setSortDescriptors_];

  [v19 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4418, &unk_1D9189170);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;

  v21[14] = v22;
  v23 = v62;
  v21[2] = 0xD000000000000034;
  v21[3] = v23;
  v21[4] = v19;
  v21[5] = v15;
  v21[6] = v16;
  v21[7] = sub_1D8E29A1C;
  v21[8] = 0;
  v21[9] = sub_1D8E29CA0;
  v21[10] = 0;
  v21[11] = sub_1D8E29C9C;
  v21[12] = 0;
  v24 = sub_1D8D4B310(v21);

  v25 = v74;
  *(v74 + 24) = v24;
  v62 = 0x80000001D91C97F0;
  v26 = _s18PodcastsFoundation10MTCategoryC034predicateForFollowedShowCategorieseH9InLibrarySo11NSPredicateCyFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D9189070;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v30 = [v28 initWithKey:v29 ascending:1];

  *(v27 + 32) = v30;
  v31 = v15;
  v32 = sub_1D9178E1C();
  v33 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v35 = [v33 initWithEntityName_];

  [v35 setPredicate_];
  v36 = sub_1D91785DC();

  [v35 setSortDescriptors_];

  [v35 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4420, &qword_1D9189188);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;

  v37[14] = v38;
  v39 = v62;
  v37[2] = 0xD000000000000041;
  v37[3] = v39;
  v37[4] = v35;
  v37[5] = v31;
  v37[6] = v32;
  v37[7] = sub_1D8E29ACC;
  v37[8] = 0;
  v37[9] = sub_1D8E29CA0;
  v37[10] = 0;
  v37[11] = sub_1D8E29C9C;
  v37[12] = 0;
  v76 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4428, &qword_1D9189190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4430, &qword_1D9189198);
  sub_1D8CF48EC(&qword_1ECAB1888, &qword_1ECAB4428, &qword_1D9189190);
  v40 = v65;
  sub_1D9177B9C();

  v41 = sub_1D8D4B734();
  (*(v66 + 8))(v40, v67);
  *(v25 + 32) = v41;
  v42 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v43 = _s18PodcastsFoundation10MTCategoryC034predicateForFollowedShowCategorieseH9InLibrarySo11NSPredicateCyFZ_0();
  v44 = v31;
  v45 = sub_1D9178E1C();
  v46 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v47 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v48 = [v46 initWithEntityName_];

  [v48 setPredicate_];
  v49 = sub_1D91785DC();
  [v48 setSortDescriptors_];

  [v48 setFetchBatchSize_];
  [v48 setIncludesSubentities_];
  [v48 setIncludesPropertyValues_];
  [v48 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4438, &qword_1D91891A0);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = 0;

  v50[14] = v51;
  v50[2] = 0xD00000000000001DLL;
  v50[3] = 0x80000001D91C9840;
  v50[4] = v48;
  v50[5] = v44;
  v50[6] = v45;
  v50[7] = sub_1D8D23164;
  v50[8] = 0;
  v50[9] = sub_1D8E3B050;
  v50[10] = 0;
  v50[11] = sub_1D8D38B78;
  v50[12] = 0;
  v76 = v50;
  *(swift_allocObject() + 16) = v42;
  sub_1D8D20F2C();
  v52 = v42;
  v53 = v68;
  sub_1D9177B3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8680, &qword_1D9191FB0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1D9189080;
  v55 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v56 = [v52 integerForKey_];

  *(v54 + 32) = v56;
  sub_1D8CF48EC(&qword_1ECAB0968, &qword_1ECAB4400, &qword_1D9189150);
  v57 = v69;
  v58 = v71;
  sub_1D9177CCC();

  (*(v73 + 8))(v53, v58);
  v59 = sub_1D8D4BB3C();

  (*(v70 + 8))(v57, v72);
  result = v74;
  *(v74 + 40) = v59;
  return result;
}

uint64_t sub_1D8D4B0E4()
{

  return swift_deallocObject();
}

void sub_1D8D4B11C()
{
  sub_1D8CEFE18(319, &qword_1EDCD7B48, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1D8CEFDCC(319, &qword_1EDCD7710);
    if (v1 <= 0x3F)
    {
      sub_1D8CEFE18(319, &qword_1ECAB2748, type metadata accessor for InterestModel);
      if (v2 <= 0x3F)
      {
        sub_1D8CEFDCC(319, &qword_1EDCD76F8);
        if (v3 <= 0x3F)
        {
          sub_1D8CEFDCC(319, &qword_1EDCD5F10);
          if (v4 <= 0x3F)
          {
            sub_1D8D4B290();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D8D4B290()
{
  if (!qword_1ECAAFE60)
  {
    sub_1D8D4D2D8();
    v0 = sub_1D9178B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAAFE60);
    }
  }
}

uint64_t sub_1D8D4B310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7178, &qword_1D91965A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7180, &qword_1D91965B0);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v19 - v9;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7188, &qword_1D91965B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7190, &qword_1D91965C0);
  sub_1D8CF48EC(&qword_1ECAB1880, &qword_1ECAB7188, &qword_1D91965B8);
  sub_1D9177B9C();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7198, &qword_1D91965C8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07F8, &qword_1ECAB7178, &qword_1D91965A8);
  sub_1D8CF48EC(&qword_1ECAB0318, &qword_1ECAB7198, &qword_1D91965C8);
  v14 = sub_1D9177D2C();

  (*(v3 + 8))(v6, v2);
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71A0, &qword_1D91965D0);
  sub_1D8CF48EC(&qword_1ECAB0510, &qword_1ECAB71A0, &qword_1D91965D0);
  v15 = sub_1D917796C();

  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71A8, &qword_1D91965D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71B0, &unk_1D91965E0);
  sub_1D8CF48EC(&qword_1ECAB0B00, &qword_1ECAB71A8, &qword_1D91965D8);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B68, &qword_1ECAB7180, &qword_1D91965B0);
  v16 = v20;
  v17 = sub_1D9177B1C();
  (*(v7 + 8))(v10, v16);
  return v17;
}

uint64_t sub_1D8D4B734()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7148, &qword_1D9196578);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7150, &qword_1D9196580);
  v6 = *(v5 - 8);
  v19 = v5;
  v20 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4410, &unk_1D9189160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7158, &qword_1D9196588);
  sub_1D8CF48EC(qword_1ECAB0800, &qword_1ECAB4410, &unk_1D9189160);
  sub_1D9177B9C();
  v21 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7160, &qword_1D9196590);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB0710, &qword_1ECAB7148, &qword_1D9196578);
  sub_1D8CF48EC(&qword_1ECAB02F8, &qword_1ECAB7160, &qword_1D9196590);
  v13 = sub_1D9177D2C();

  (*(v1 + 8))(v4, v0);
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7168, &qword_1D9196598);
  sub_1D8CF48EC(&qword_1ECAB04C0, &qword_1ECAB7168, &qword_1D9196598);
  v14 = sub_1D917796C();

  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7170, &qword_1D91965A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4430, &qword_1D9189198);
  sub_1D8CF48EC(&qword_1ECAB0AB0, &qword_1ECAB7170, &qword_1D91965A0);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B30, &qword_1ECAB7150, &qword_1D9196580);
  v15 = v19;
  v16 = sub_1D9177B1C();
  (*(v20 + 8))(v9, v15);
  return v16;
}

uint64_t sub_1D8D4BB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7128, &qword_1D9196558);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7130, &qword_1D9196560);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4408, &qword_1D9189158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47F8, &qword_1D918A528);
  sub_1D8CF48EC(&qword_1ECAB0A98, &qword_1ECAB4408, &qword_1D9189158);
  sub_1D9177B9C();
  v19 = 0;
  v20 = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70E0, &qword_1D9196518);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07A0, &qword_1ECAB7128, &qword_1D9196558);
  sub_1D8CF48EC(&qword_1EDCD0B28, &qword_1ECAB70E0, &qword_1D9196518);
  v12 = sub_1D9177D2C();

  (*(v1 + 8))(v4, v0);
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7138, &qword_1D9196568);
  sub_1D8CF48EC(&qword_1ECAB04E8, &qword_1ECAB7138, &qword_1D9196568);
  v13 = sub_1D917796C();

  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7140, &qword_1D9196570);
  sub_1D8CF48EC(&qword_1ECAB0AD8, &qword_1ECAB7140, &qword_1D9196570);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B48, &qword_1ECAB7130, &qword_1D9196560);
  v14 = v18;
  v15 = sub_1D9177B1C();
  (*(v5 + 8))(v8, v14);
  return v15;
}

void sub_1D8D4BF44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1D8D4D564(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
}

uint64_t sub_1D8D4BF5C()
{
  v1 = v0;
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + qword_1ECAB8610);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1D9177F4C();
  result = (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v1 + qword_1ECAB8648;
  v13 = *(v1 + qword_1ECAB8648);
  if (v13)
  {
    v14 = *(v12 + 2);
    v15 = v12[8];
    v16 = qword_1ECAB8640;
    swift_beginAccess();
    v17 = *(v1 + v16);
    v18 = sub_1D9176EAC();
    v19 = v2[10];
    v20 = v2[11];
    v21 = v2[13];
    type metadata accessor for FRPSectionInfo();
    sub_1D91786FC();
    type metadata accessor for FRPOutput();
    FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
    v23 = sub_1D8CFBDA8(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
    v24 = nullsub_1(v17, v18, FunctionTypeMetadata1, v23);
    v25 = v24;
    v26 = v24 + 64;
    v27 = 1 << *(v24 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v24 + 64);
    v30 = (v27 + 63) >> 6;
    v31 = v15 & 1;

    for (i = 0; v29; result = )
    {
      v33 = i;
LABEL_11:
      v34 = *(v25 + 56) + ((v33 << 10) | (16 * __clz(__rbit64(v29))));
      v36 = *v34;
      v35 = *(v34 + 8);
      v37 = v13;
      v29 &= v29 - 1;
      v38 = v31;
      v39 = v14;

      v36(&v37);
    }

    while (1)
    {
      v33 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
      }

      v29 = *(v26 + 8 * v33);
      ++i;
      if (v29)
      {
        i = v33;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D8D4C278()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_1D8D4C2A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1D8D4C2AC(a1, a2);
}

uint64_t sub_1D8D4C2AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a1[2];
  type metadata accessor for FRPSectionInfo();
  sub_1D91786FC();
  v3 = type metadata accessor for FRPOutput();
  v4 = sub_1D91786FC();
  return FRPOutput.map<A>(_:)(sub_1D8D4DE0C, v3, v4, a2);
}

id FairPlayKeyLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8D4C49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D8D4C4B8(a1, a2);
}

uint64_t sub_1D8D4C4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1D8D4C558(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8D4C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v28 = a5;
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v29 = sub_1D917734C();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v23 - v12;
  v23[1] = sub_1D9178F6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D918A530;
  v30 = AssociatedTypeWitness;
  swift_getMetatypeMetadata();
  v15 = sub_1D917826C();
  v17 = v16;
  v18 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D8D34978();
  *(v14 + 64) = v19;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  (*(v10 + 16))(v13, v24, AssociatedTypeWitness);
  v20 = sub_1D917826C();
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 72) = v20;
  *(v14 + 80) = v21;
  sub_1D917733C();
  sub_1D91772EC();

  return (*(v5 + 8))(v8, v29);
}

uint64_t sub_1D8D4C82C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D8D4C8D8@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A40, &qword_1D9194348);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A48, &qword_1D9194350);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  sub_1D9177AAC();
  swift_endAccess();
  v13 = sub_1D8CF48EC(&qword_1ECAB01F8, &qword_1ECAB6A48, &qword_1D9194350);
  MEMORY[0x1DA729380](v7, v13);
  (*(v8 + 8))(v11, v7);
  sub_1D917787C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D8D4CAF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8D4CB14()
{
  v2 = *(*v1 + 168);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1D8F48C80;
  }

  else
  {
    v3 = sub_1D8D4CC24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8D4CC24()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    v5 = v0[16];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v9 = v0[1];

    return v9(1);
  }

  (*(v3 + 32))(v0[9], v1, v2);
  if (sub_1D917894C())
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    v4 = v0[14];
    goto LABEL_4;
  }

  v15 = (v0[2] + *v0[2]);
  v11 = *(v0[2] + 4);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_1D8F48A84;
  v13 = v0[9];
  v14 = v0[3];

  return v15(v13);
}

size_t sub_1D8D4CE34(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_1D8D4D01C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D8D4CE34(a1, a2, a3, *v3, &qword_1ECAB4548, &qword_1D9189FD8, &qword_1ECAB4550, &qword_1D91BC180);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D4D05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void *sub_1D8D4D0E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1D8D4D27C(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

unint64_t sub_1D8D4D2D8()
{
  result = qword_1ECAB1148;
  if (!qword_1ECAB1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1148);
  }

  return result;
}

id _s18PodcastsFoundation10MTCategoryC034predicateForFollowedShowCategorieseH9InLibrarySo11NSPredicateCyFZ_0()
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 32) = 0x7473657265746E69;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x7473657265746E69;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  strcpy((v0 + 112), "interestValue");
  *(v0 + 126) = -4864;
  v3 = sub_1D9178C8C();
  v4 = _s18PodcastsFoundation10MTCategoryC46predicateForPrimaryCategoriesFromFollowedShowsSo11NSPredicateCyFZ_0();
  v5 = [v3 AND_];

  return v5;
}

unint64_t sub_1D8D4D430()
{
  result = qword_1EDCD5B90;
  if (!qword_1EDCD5B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD5B90);
  }

  return result;
}

uint64_t _s18PodcastsFoundation10MTCategoryC46predicateForPrimaryCategoriesFromFollowedShowsSo11NSPredicateCyFZ_0()
{
  sub_1D8D4D430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x7374736163646F70;
  *(v0 + 40) = 0xE800000000000000;
  v3 = sub_1D917820C();
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  v5 = sub_1D917820C();
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  return sub_1D9178C8C();
}

void sub_1D8D4D564(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v15 = a2;
    type metadata accessor for FRPSectionInfo();
    v9 = sub_1D91786FC();
    (*(*(v9 - 8) + 32))(&v16, &v15, v9);
    v10 = type metadata accessor for FRPOutput();
    *(&v16 + *(v10 + 28)) = a3 & 1;
    *(&v16 + *(v10 + 32)) = a4;
    v11 = v17;
    v12 = v18;
    v13 = &v8[qword_1ECAB8648];
    v14 = *&v8[qword_1ECAB8648];
    *v13 = v16;
    *(v13 + 1) = v11;
    *(v13 + 2) = v12;

    sub_1D8D4BF5C();
  }
}

void sub_1D8D4D69C(uint64_t a1)
{
  v70 = a1;
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  v5 = type metadata accessor for ProducerInner.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v68 = v4;
  v69 = v2;
  active = type metadata accessor for ProducerInner.ActiveState();
  v15 = *(active - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](active);
  v65 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = *(v1 + 2);
  os_unfair_lock_lock(v21 + 4);
  v22 = *(*v1 + 112);
  swift_beginAccess();
  v23 = *(v6 + 16);
  v73 = v22;
  v67 = v23;
  v23(v13, &v1[v22], v5);
  v66 = *(v15 + 48);
  if (v66(v13, 1, active) == 1)
  {
    (*(v6 + 8))(v13, v5);
    os_unfair_lock_unlock(v21 + 4);
    return;
  }

  v63 = v5;
  v64 = v21;
  v60 = *(v15 + 32);
  v60(v20, v13, active);
  v24 = *(active + 60);
  v25 = *&v20[v24];
  sub_1D91777EC();
  if (sub_1D91777DC())
  {
    os_unfair_lock_unlock(v64 + 4);
    (*(v15 + 8))(v20, active);
    return;
  }

  v61 = v15;
  v62 = v20;
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    sub_1D91777FC();
    if (sub_1D91777DC())
    {
      v26 = sub_1D91777FC();
    }

    else
    {
      if (v25 < 0)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (!v25)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v26 = v25 - 1;
    }

    *&v62[v24] = v26;
  }

  v59 = v15 + 32;
  v27 = v61;
  v28 = *(v61 + 16);
  v29 = v72;
  v58 = v61 + 16;
  v56 = v28;
  v28(v72, v62, active);
  v30 = *(v27 + 56);
  v57 = v27 + 56;
  v55 = v30;
  v30(v29, 0, 1, active);
  v31 = v73;
  swift_beginAccess();
  v32 = v1;
  v54 = *(v6 + 40);
  v54(&v1[v31], v29, v63);
  swift_endAccess();
  v33 = v64;
  os_unfair_lock_unlock(v64 + 4);
  v34 = sub_1D91777AC();
  sub_1D91777FC();
  v35 = sub_1D91777DC();
  v36 = v71;
  if (v35)
  {
    goto LABEL_15;
  }

  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (!v34)
  {
LABEL_17:
    (*(v61 + 8))(v62, active);
    return;
  }

LABEL_15:
  os_unfair_lock_lock(v33 + 4);
  v37 = v32;
  v38 = &v32[v73];
  v39 = v33;
  v40 = v63;
  v67(v36, v38, v63);
  if (v66(v36, 1, active) == 1)
  {
    (*(v6 + 8))(v36, v40);
    os_unfair_lock_unlock(v39 + 4);
    goto LABEL_17;
  }

  v41 = v65;
  v60(v65, v36, active);
  v42 = *(active + 60);
  v43 = *&v41[v42];
  sub_1D91777FC();
  v44 = sub_1D91777DC();
  v46 = v61;
  v45 = v62;
  if ((v44 & 1) == 0)
  {
    sub_1D91777FC();
    v47 = sub_1D91777DC();
    v48 = sub_1D91777FC();
    if (v47)
    {
      v41 = v65;
LABEL_28:
      *&v41[v42] = v48;
      goto LABEL_29;
    }

    v49 = sub_1D91777DC();
    v41 = v65;
    if (v49)
    {
      goto LABEL_26;
    }

    if (((v43 | v34) & 0x8000000000000000) == 0)
    {
      v48 = v43 + v34;
      if (!__OFADD__(v43, v34))
      {
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_35:
        __break(1u);
        return;
      }

LABEL_26:
      v48 = sub_1D91777FC();
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_29:
  v50 = v72;
  v56(v72, v41, active);
  v55(v50, 0, 1, active);
  v51 = v73;
  swift_beginAccess();
  v54(&v37[v51], v50, v40);
  swift_endAccess();
  os_unfair_lock_unlock(v64 + 4);
  v52 = *(v46 + 8);
  v52(v41, active);
  v52(v45, active);
}

uint64_t FRPOutput.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v4, v11);
  v15 = *(v4 + *(a2 + 28));
  v16 = *(v5 + *(a2 + 32));
  (*(v9 + 32))(a4, v13, a3);
  result = type metadata accessor for FRPOutput();
  *(a4 + *(result + 28)) = v15;
  *(a4 + *(result + 32)) = v16;
  return result;
}

uint64_t sub_1D8D4DE0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1D8D4DFB8(a1, a2);
}

uint64_t sub_1D8D4DE18()
{
  v1[11] = v0;
  v2 = sub_1D9177E0C();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = sub_1D9177E9C();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D2C890, 0, 0);
}

uint64_t CategoryObserverProvider.__allocating_init(ctx:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D8D4A624(a1);

  return v2;
}

uint64_t sub_1D8D4DFB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  type metadata accessor for FRPSectionInfo();
  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D9178BDC();
  result = v4;
  if (!v4)
  {
    result = sub_1D917866C();
  }

  *a2 = result;
  return result;
}

_DWORD *sub_1D8D4E060(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D8D4E214(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(a1 + v6);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

BOOL static RestrictionsController.isExplicitContentAllowed.getter()
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 16);
  os_unfair_lock_unlock((v0 + 24));
  return v1 == 0;
}

uint64_t RepublishingValueSubject.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = v8[11];
  v43 = v8[12];
  v10 = sub_1D91777CC();
  v47 = sub_1D91791BC();
  v45 = *(v47 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v41 = v10;
  v42 = &v40 - v12;
  v44 = *(v10 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v40 - v15;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v4[2];
  os_unfair_lock_lock(v21 + 4);
  v51[0] = v8[10];
  v51[1] = v9;
  v46 = v9;
  v51[2] = a2;
  v52 = a3;
  v50 = a3;
  v22 = type metadata accessor for RepublishingValueSubject.Conduit();
  v23 = *(v16 + 16);
  v48 = a1;
  v49 = a2;
  v23(v20, a1, a2);
  v24 = *(v22 + 48);
  v25 = *(v22 + 52);
  swift_allocObject();

  v27 = sub_1D8D5DA18(v26, v20);
  v28 = *v4;
  if (*(v4 + 24) == 1)
  {
    v29 = *(v28 + 128);
    swift_beginAccess();
    v30 = type metadata accessor for ConduitList();
    sub_1D8D44878(v27, v30);
    swift_endAccess();
    os_unfair_lock_unlock(v21 + 4);
LABEL_5:
    v52 = v22;
    WitnessTable = swift_getWitnessTable();
    v51[0] = v27;
    sub_1D917779C();
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  v31 = *(v28 + 120);
  swift_beginAccess();
  v32 = v45;
  v33 = v4 + v31;
  v34 = v42;
  v35 = v47;
  (*(v45 + 16))(v42, v33, v47);
  v36 = v44;
  v37 = v41;
  if ((*(v44 + 48))(v34, 1, v41) != 1)
  {
    v38 = v40;
    (*(v36 + 32))(v40, v34, v37);
    os_unfair_lock_unlock(v21 + 4);
    sub_1D8DB2FC4(v38);
    (*(v36 + 8))(v38, v37);
    goto LABEL_5;
  }

  result = (*(v32 + 8))(v34, v35);
  __break(1u);
  return result;
}

uint64_t RepublishingValueSubject.send(subscription:)(void *a1)
{
  v3 = v1[2];
  os_unfair_lock_lock(v3 + 4);
  sub_1D8CFD9D8(a1, v11);
  v4 = *(*v1 + 144);
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1D8D4EF6C(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1D8D4EF6C((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  sub_1D8D6BCE0(v11, &v5[5 * v8 + 4]);
  *(v1 + v4) = v5;
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D91777FC();
  return sub_1D917782C();
}

char *sub_1D8D4EF90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FC8, &unk_1D9191F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8D4F0C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FC0, &qword_1D9191F38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OS_dispatch_queue.enqueue(_:)()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D91787CC();
  v11 = sub_1D8D0EF30(&qword_1ECAAFD70, sub_1D8CFD888);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v0;
  v12[4] = v11;
  aBlock[4] = sub_1D8D4F1E4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_34;
  v13 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v5, v13);
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v16);
}

uint64_t sub_1D8D4F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 80);
    v9 = *(Strong + 88);
    *(Strong + 80) = a1;
    *(Strong + 88) = a2;

    sub_1D8D4F5BC(v8);
  }

  return a4(a1, a2, 0);
}

uint64_t sub_1D8D4F5BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8D4F5FC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, double), uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v22 - v15;
  if (a3)
  {
    return a4(a1, v14);
  }

  v18 = sub_1D917886C();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1D8D35688(a6, v22);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v20 = v22[3];
  *(v19 + 64) = v22[2];
  *(v19 + 80) = v20;
  *(v19 + 96) = v22[4];
  v21 = v22[1];
  *(v19 + 32) = v22[0];
  *(v19 + 48) = v21;
  *(v19 + 112) = a1;
  *(v19 + 120) = a2;
  *(v19 + 128) = a4;
  *(v19 + 136) = a5;

  sub_1D8E91268(0, 0, v16, &unk_1D91B77D8, v19);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1D917886C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8D4F940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8D4FA18(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_1D8D4FA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[12] = a4;
  v11 = swift_task_alloc();
  v8[15] = v11;
  *v11 = v8;
  v11[1] = sub_1D8DA8700;

  return DonationService.donate(podcasts:stations:)(a5, a6);
}

uint64_t DonationService.donate(podcasts:stations:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8D4FAF4, 0, 0);
}

uint64_t sub_1D8D4FAF4()
{
  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD1098);
  sub_1D8D4FDEC(v2, (v0 + 2));

  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[16];
  v8 = v0[17];
  if (v7)
  {
    v10 = swift_slowAlloc();
    *v10 = 134218496;
    *(v10 + 4) = *(v9 + 16);

    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v8 + 16);

    *(v10 + 22) = 1024;
    v0[9] = 0;
    v0[10] = 0;
    v0[14] = &type metadata for Persona.CurrentUserExecutionStrategy;
    v0[15] = &off_1F5482BB8;
    v11 = v0[3];

    if (v11)
    {
      v12 = 0;
    }

    else
    {

      v12 = 1;
    }

    sub_1D8D4FE24((v0 + 9));
    sub_1D8D4FE78((v0 + 2));
    *(v10 + 24) = v12;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "DonationService: Donating %ld podcast and %ld station entities to Cascade, isCurrentPersona: %{BOOL}d.", v10, 0x1Cu);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  else
  {
    sub_1D8D4FE78((v0 + 2));
  }

  v13 = v0[18];
  v14 = swift_task_alloc();
  v0[19] = v14;
  v15 = *(v0 + 8);
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v16 = v13[6];
  __swift_project_boxed_opaque_existential_1(v13 + 2, v13[5]);
  v17 = *(v16 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_1D8DA8588;

  return v21();
}

uint64_t sub_1D8D4FEA8(uint64_t a1, int *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D8D4FF60(a1, a2);
}

uint64_t sub_1D8D4FF60(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return v7(a1);
}

uint64_t sub_1D8D50058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8D58924;

  return sub_1D8D5010C(a1, v4, v5, v6);
}

uint64_t sub_1D8D5010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8D50350, 0, 0);
}

uint64_t sub_1D8D50154(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D8D502F8(0, v1, 0);
    v2 = v20;
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = *(v4 + 24);
      v9 = *(v4 + 40);
      v14 = *(v4 + 32);
      v15 = *(v4 + 16);
      sub_1D8D5055C(v5, *v4, v7);
      v20 = v2;
      v10 = *(v2 + 16);
      v11 = *(v2 + 24);
      v16 = v10 + 1;

      if (v10 >= v11 >> 1)
      {
        sub_1D8D502F8((v11 > 1), v16, 1);
        v2 = v20;
      }

      v4 += 56;
      v18 = &type metadata for PodcastDonationModel;
      v19 = &protocol witness table for PodcastDonationModel;
      v12 = swift_allocObject();
      *&v17 = v12;
      *(v12 + 16) = v5;
      *(v12 + 24) = v6;
      *(v12 + 32) = v7;
      *(v12 + 40) = v15;
      *(v12 + 48) = v8;
      *(v12 + 56) = v14;
      *(v12 + 64) = v9;
      *(v2 + 16) = v16;
      sub_1D8D6BCE0(&v17, v2 + 40 * v10 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D8D502AC()
{
  sub_1D8DA8564(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return swift_deallocObject();
}

void *sub_1D8D502F8(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D50414(a1, a2, a3, *v3, &qword_1ECAB45E0, &unk_1D9192030, &qword_1ECAB45D8, &qword_1D918A048);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D50350()
{
  v1 = v0[4];
  v2 = sub_1D8D50154(v0[3]);
  v3 = sub_1D8D50580(v1);
  sub_1D8D506E8(v3);
  v0[5] = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1D8DA8428;
  v5 = v0[2];

  return sub_1D8D50814(v2);
}

void *sub_1D8D50414(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

id sub_1D8D5055C(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D8D50580(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D8D502F8(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1D8D502F8((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for StationDonationModel;
      v15 = &protocol witness table for StationDonationModel;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v8;
      v11[5] = v7;
      *(v2 + 16) = v9 + 1;
      sub_1D8D6BCE0(&v13, v2 + 40 * v9 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D8D506A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

void *sub_1D8D506E8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D8D507F0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45D8, &qword_1D918A048);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8D50814(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D8D508A4, 0, 0);
}

uint64_t sub_1D8D508A4()
{
  v8 = *MEMORY[0x1E69E9840];
  if (DonationService.supportsSiriIndexing.getter())
  {
    v1 = objc_opt_self();
    sub_1D90F69E0();
    v2 = sub_1D91785DC();
    v0[21] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D8D776C8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA770, &unk_1D91B75F0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D8D77280;
    v0[13] = &block_descriptor_84;
    v0[14] = v3;
    [v1 fullSetDonationWithItemType:42184 descriptors:v2 completion:v0 + 10];
    v4 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v5 = v0[1];
    v6 = *MEMORY[0x1E69E9840];

    return v5();
  }
}

uint64_t static PageContextTracker.shared.getter()
{
  if (qword_1ECAB1FF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D50ADC()
{
  type metadata accessor for PageContextTracker();
  v0 = swift_allocObject();
  *(v0 + 24) = 64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C38, &qword_1D919B7B0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = result;
  qword_1ECAB2000 = v0;
  return result;
}

uint64_t sub_1D8D50B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8D50BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D8D50C90(uint64_t a1)
{
  v2 = v1;
  v226 = a1;
  v218 = sub_1D9177E0C();
  v217 = *(v218 - 8);
  v3 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v215 = &v213 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1D9177E9C();
  v214 = *(v216 - 8);
  v5 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v213 = &v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8668, &qword_1D91A2218);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v213 - v9;
  v234 = sub_1D917705C();
  v233 = *(v234 - 8);
  v11 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v232 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v230 = &v213 - v14;
  v15 = sub_1D917734C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v213 - v21;
  *&v227 = 0;
  v23 = sub_1D917739C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v213 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0F68 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v23, qword_1ECAB0F70);
  v223 = v24;
  (*(v24 + 16))(v27, v28, v23);
  sub_1D917737C();
  sub_1D917731C();
  v29 = v2;
  v222 = v27;
  v30 = sub_1D917737C();
  v31 = sub_1D9178F5C();

  v32 = sub_1D917918C();
  v228 = v10;
  v224 = v23;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v237[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_1D8CFA924(*&v29[qword_1ECAB85F8], *&v29[qword_1ECAB85F8 + 8], v237);
    v35 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v30, v31, v35, "FRP.RegenerateResults", "Identifier: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1DA72CB90](v34, -1, -1);
    v36 = v33;
    v10 = v228;
    MEMORY[0x1DA72CB90](v36, -1, -1);
  }

  (*(v16 + 16))(v19, v22, v15);
  v37 = sub_1D91773FC();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_1D91773EC();
  (*(v16 + 8))(v22, v15);
  v225 = v29;
  v231 = *&v29[qword_1ECAB8630];
  v41 = [v231 sections];
  v42 = MEMORY[0x1E69E7CC0];
  v221 = v40;
  if (!v41)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v53 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v53)
    {
      goto LABEL_22;
    }

LABEL_18:
    v54 = 0;
    goto LABEL_25;
  }

  v43 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8678, &qword_1D91A2230);
  v44 = sub_1D91785FC();

  if (v44 >> 62)
  {
    v45 = sub_1D917935C();
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_20:

    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
    goto LABEL_20;
  }

LABEL_8:
  *&v237[0] = v42;
  v42 = v237;
  result = sub_1D8D4214C(0, v45 & ~(v45 >> 63), 0);
  if (v45 < 0)
  {
    __break(1u);
    return result;
  }

  v47 = 0;
  v48 = *&v237[0];
  v19 = &selRef_setParent_;
  do
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x1DA72AA90](v47, v44);
    }

    else
    {
      v49 = *(v44 + 8 * v47 + 32);
      swift_unknownObjectRetain();
    }

    v50 = [v49 numberOfObjects];
    swift_unknownObjectRelease();
    *&v237[0] = v48;
    v52 = *(v48 + 16);
    v51 = *(v48 + 24);
    if (v52 >= v51 >> 1)
    {
      v42 = v237;
      sub_1D8D4214C(v51 > 1, v52 + 1, 1);
      v48 = *&v237[0];
    }

    ++v47;
    *(v48 + 16) = v52 + 1;
    *(v48 + 8 * v52 + 32) = v50;
  }

  while (v45 != v47);

LABEL_21:
  v10 = v228;
  v53 = *(v48 + 16);
  if (!v53)
  {
    goto LABEL_18;
  }

LABEL_22:
  v54 = 0;
  v55 = (v48 + 32);
  do
  {
    v56 = *v55++;
    v57 = __OFADD__(v54, v56);
    v54 += v56;
    if (v57)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    --v53;
  }

  while (v53);
LABEL_25:
  v58 = qword_1ECAB8638;
  v59 = v225;
  swift_beginAccess();
  v60 = *&v59[v58];

  os_unfair_lock_lock((v60 + 40));
  v42 = *(v60 + 24);
  os_unfair_lock_unlock((v60 + 40));

  if (v54 >= v42)
  {
    v62 = v42;
  }

  else
  {
    v62 = v54;
  }

  v229 = v62;
  v220 = v54;
  v219 = v58;
  if (v62 <= 10000)
  {
    if (v62 < 0)
    {
      goto LABEL_146;
    }

    v19 = v227;
    if (!v62)
    {

      v73 = MEMORY[0x1E69E7CC0];
      v85 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v85)
      {
        goto LABEL_51;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v63 = sub_1D917744C();
    __swift_project_value_buffer(v63, qword_1EDCD0F88);
    v64 = v225;
    v65 = sub_1D917741C();
    v66 = sub_1D9178CFC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v237[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_1D8CFA924(*&v64[qword_1ECAB85F8], *&v64[qword_1ECAB85F8 + 8], v237);
      *(v67 + 12) = 2048;
      *(v67 + 14) = v229;
      _os_log_impl(&dword_1D8CEC000, v65, v66, "FRC %s has requested %ld items. Loading this many items may cause performance issues for the entire app.", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1DA72CB90](v68, -1, -1);
      v69 = v67;
      v62 = v229;
      MEMORY[0x1DA72CB90](v69, -1, -1);
    }

    v19 = v227;
    v10 = v228;
  }

  v70 = 0;
  v71 = (v233 + 56);
  v72 = (v233 + 32);
  v73 = MEMORY[0x1E69E7CC0];
  *&v61 = 138412290;
  v227 = v61;
  do
  {
    sub_1D8D4229C(v70, v48);
    if (v19)
    {
      if (qword_1EDCD0F80 != -1)
      {
        swift_once();
      }

      v74 = sub_1D917744C();
      __swift_project_value_buffer(v74, qword_1EDCD0F88);
      v75 = v19;
      v42 = sub_1D917741C();
      v76 = sub_1D9178D0C();

      if (os_log_type_enabled(v42, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = v227;
        v79 = v19;
        v80 = _swift_stdlib_bridgeErrorToNSError();
        *(v77 + 4) = v80;
        *v78 = v80;
        _os_log_impl(&dword_1D8CEC000, v42, v76, "FRC failed to create IndexPath with error: %@", v77, 0xCu);
        sub_1D8D08A50(v78, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v78, -1, -1);
        v81 = v77;
        v62 = v229;
        MEMORY[0x1DA72CB90](v81, -1, -1);
      }

      else
      {
      }

      v10 = v228;
      (*v71)(v228, 1, 1, v234);
      sub_1D8D08A50(v10, &qword_1ECAB8668, &qword_1D91A2218);
      v19 = 0;
    }

    else
    {
      v82 = v234;
      (*v71)(v10, 0, 1, v234);
      v42 = *v72;
      (*v72)(v230, v10, v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_1D8D4181C(0, v73[2] + 1, 1, v73);
      }

      v84 = v73[2];
      v83 = v73[3];
      if (v84 >= v83 >> 1)
      {
        v73 = sub_1D8D4181C(v83 > 1, v84 + 1, 1, v73);
      }

      v73[2] = v84 + 1;
      (v42)(v73 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v84, v230, v234);
      v62 = v229;
    }

    ++v70;
  }

  while (v62 != v70);

  v85 = v73[2];
  if (v85)
  {
LABEL_51:
    *&v227 = v19;
    *&v237[0] = MEMORY[0x1E69E7CC0];
    v42 = v237;
    sub_1D91795CC();
    v86 = 0;
    v230 = v73 + ((*(v233 + 80) + 32) & ~*(v233 + 80));
    do
    {
      if (v86 >= v73[2])
      {
        goto LABEL_142;
      }

      v87 = v86 + 1;
      v88 = v233;
      v89 = v232;
      v19 = v234;
      (*(v233 + 16))(v232, &v230[*(v233 + 72) * v86], v234);
      v90 = v73;
      v91 = v85;
      v92 = sub_1D917703C();
      v93 = [v231 objectAtIndexPath_];

      (*(v88 + 8))(v89, v19);
      v42 = v237;
      sub_1D917959C();
      v94 = *(*&v237[0] + 16);
      sub_1D91795DC();
      v85 = v91;
      v73 = v90;
      sub_1D91795EC();
      sub_1D91795AC();
      v86 = v87;
    }

    while (v85 != v87);

    v95 = *&v237[0];
    v19 = v227;
    goto LABEL_57;
  }

LABEL_56:

  v95 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v96 = v225;
  v97 = sub_1D8D527C4(v95, v96, v226);
  v228 = v19;

  v98 = v97[2];
  v230 = v96;
  v233 = v98;
  if (v98)
  {
    v100 = (v97 + 6);
    v99 = v97[6];
    v234 = v97[5];
    v232 = v99;
    v101 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v101 >= v97[2])
      {
        goto LABEL_143;
      }

      v102 = v97;
      v103 = *(v100 - 16);
      v104 = *(v100 - 1);
      v105 = *v100;
      if (v104 != v234)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1D8D6A390(0, v42[2].isa + 1, 1, v42);
        }

        isa = v42[2].isa;
        v106 = v42[3].isa;
        if (isa >= v106 >> 1)
        {
          v42 = sub_1D8D6A390((v106 > 1), isa + 1, 1, v42);
        }

        v42[2].isa = (isa + 1);
        v108 = &v42[2 * isa];
        v108[4].isa = v234;
        v108[5].isa = v19;
        v234 = v104;
        v19 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D8D6A248(0, *(v19 + 16) + 1, 1, v19);
      }

      v110 = *(v19 + 16);
      v109 = *(v19 + 24);
      if (v110 >= v109 >> 1)
      {
        v19 = sub_1D8D6A248((v109 > 1), v110 + 1, 1, v19);
      }

      ++v101;

      *(v19 + 16) = v110 + 1;
      v111 = (v19 + 24 * v110);
      *(v111 + 32) = v103;
      v111[5] = v104;
      v111[6] = v105;
      v100 += 3;
      v97 = v102;
    }

    while (v233 != v101);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_147;
    }

    while (1)
    {
      v112 = MEMORY[0x1E69E7CC0];
      v96 = v230;
      v113 = v232;
      v115 = v42[2].isa;
      v114 = v42[3].isa;
      if (v115 >= v114 >> 1)
      {
        v42 = sub_1D8D6A390((v114 > 1), v115 + 1, 1, v42);
      }

      v42[2].isa = (v115 + 1);
      v116 = &v42[2 * v115];
      v116[4].isa = v234;
      v116[5].isa = v19;
      v117 = sub_1D8D6A4DC(v42);

      v118 = *(v117 + 16);
      if (!v118)
      {
        break;
      }

LABEL_75:
      *&v237[0] = v112;
      v42 = v237;
      v232 = v117;
      v233 = v118;
      sub_1D8D6AA78(0, v118, 0);
      v119 = v233;
      v120 = v232;
      v121 = 0;
      v122 = *&v237[0];
      v234 = (v232 + 32);
      while (v121 < *(v120 + 2))
      {
        v123 = (v234 + 16 * v121);
        v124 = *v123;
        v125 = v123[1];
        v126 = *(v125 + 16);
        if (v126)
        {
          aBlock[0] = v112;

          sub_1D91795CC();
          v127 = 48;
          do
          {
            v128 = *(v125 + v127);
            v42 = aBlock;
            sub_1D917959C();
            v129 = *(aBlock[0] + 16);
            sub_1D91795DC();
            sub_1D91795EC();
            sub_1D91795AC();
            v127 += 24;
            --v126;
          }

          while (v126);

          v130 = aBlock[0];
          v120 = v232;
          v119 = v233;
        }

        else
        {
          v130 = v112;
        }

        *&v237[0] = v122;
        v132 = *(v122 + 16);
        v131 = *(v122 + 24);
        v19 = v132 + 1;
        if (v132 >= v131 >> 1)
        {
          v42 = v237;
          sub_1D8D6AA78((v131 > 1), v132 + 1, 1);
          v119 = v233;
          v120 = v232;
          v122 = *&v237[0];
        }

        ++v121;
        *(v122 + 16) = v19;
        v133 = v122 + 16 * v132;
        *(v133 + 32) = v124;
        *(v133 + 40) = v130;
        if (v121 == v119)
        {
          v229 = v122;
          *&v237[0] = v112;
          v42 = v237;
          sub_1D8D6AAFC(0, v233, 0);
          v134 = v233;
          v135 = v232;
          v136 = 0;
          v137 = *&v237[0];
          v96 = v230;
          while (v136 < *(v135 + 2))
          {
            v138 = (v234 + 16 * v136);
            v139 = *v138;
            v140 = v138[1];
            v141 = *(v140 + 16);
            if (v141)
            {
              v231 = v137;
              aBlock[0] = v112;

              v42 = aBlock;
              sub_1D8D6AC44(0, v141, 0);
              v142 = aBlock[0];
              v143 = *(aBlock[0] + 16);
              v144 = 32;
              do
              {
                v145 = *(v140 + v144);
                aBlock[0] = v142;
                v146 = *(v142 + 24);
                if (v143 >= v146 >> 1)
                {
                  v42 = aBlock;
                  sub_1D8D6AC44((v146 > 1), v143 + 1, 1);
                  v142 = aBlock[0];
                }

                *(v142 + 16) = v143 + 1;
                *(v142 + v143 + 32) = v145;
                v144 += 24;
                ++v143;
                --v141;
              }

              while (v141);

              v112 = MEMORY[0x1E69E7CC0];
              v96 = v230;
              v137 = v231;
              v135 = v232;
              v134 = v233;
            }

            else
            {
              v142 = v112;
            }

            *&v237[0] = v137;
            v148 = v137[2];
            v147 = v137[3];
            v19 = v148 + 1;
            if (v148 >= v147 >> 1)
            {
              v42 = v237;
              sub_1D8D6AAFC((v147 > 1), v148 + 1, 1);
              v134 = v233;
              v135 = v232;
              v137 = *&v237[0];
            }

            ++v136;
            v137[2] = v19;
            v149 = &v137[2 * v148];
            v149[4] = v139;
            v149[5] = v142;
            if (v136 == v134)
            {
              v231 = v137;

              goto LABEL_100;
            }
          }

          goto LABEL_145;
        }
      }

LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      v42 = sub_1D8D6A390(0, v42[2].isa + 1, 1, v42);
    }
  }

  else
  {

    v117 = MEMORY[0x1E69E7CC0];
    v112 = MEMORY[0x1E69E7CC0];
    v118 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v118)
    {
      goto LABEL_75;
    }
  }

  v231 = MEMORY[0x1E69E7CC0];
  v229 = MEMORY[0x1E69E7CC0];
LABEL_100:
  v150 = qword_1EDCD1628;
  swift_beginAccess();
  v234 = v150;
  v151 = *&v96[v150];

  sub_1D8D54D38(v152);
  v153 = v226;
  v233 = *(v226 + 8);
  v155 = sub_1D8D529E4(v233, v154);
  v156 = v155;
  if ((v155 & 0xC000000000000001) != 0)
  {
    *(v153 + 40) = sub_1D917935C();
    v42 = sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    sub_1D8D05854(&qword_1EDCD09C8);
    sub_1D9178B3C();
    v156 = aBlock[13];
    v157 = aBlock[14];
    v158 = aBlock[15];
    v159 = aBlock[16];
    v160 = aBlock[17];
  }

  else
  {
    v159 = 0;
    *(v153 + 40) = *(v155 + 16);
    v161 = -1 << *(v155 + 32);
    v157 = v155 + 56;
    v158 = ~v161;
    v162 = -v161;
    if (v162 < 64)
    {
      v163 = ~(-1 << v162);
    }

    else
    {
      v163 = -1;
    }

    v160 = v163 & *(v155 + 56);
  }

  v232 = v158;
  v164 = (v158 + 64) >> 6;
  while ((v156 & 0x8000000000000000) == 0)
  {
    v165 = v159;
    v166 = v160;
    v19 = v159;
    if (!v160)
    {
      while (1)
      {
        v19 = v165 + 1;
        if (__OFADD__(v165, 1))
        {
          break;
        }

        if (v19 >= v164)
        {
          goto LABEL_125;
        }

        v166 = *(v157 + 8 * v19);
        v165 = (v165 + 1);
        if (v166)
        {
          goto LABEL_114;
        }
      }

      __break(1u);
      goto LABEL_141;
    }

LABEL_114:
    v167 = (v166 - 1) & v166;
    v168 = *(*(v156 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v166)))));
    if (!v168)
    {
      goto LABEL_125;
    }

LABEL_118:
    v160 = v167;
    v170 = v230;
    v171 = v234;
    swift_beginAccess();
    v172 = *&v170[v171];
    v173 = sub_1D8D698BC(v168);
    if (v174)
    {
      v175 = v173;
      v176 = *&v170[v171];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178 = *&v170[v171];
      aBlock[0] = v178;
      *&v170[v171] = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F83760();
        v178 = aBlock[0];
      }

      sub_1D8F80AD4(v175, v178);
      *&v170[v171] = v178;
    }

    swift_endAccess();
    v179 = qword_1EDCD1600;
    swift_beginAccess();
    v42 = *&v170[v179];
    v180 = sub_1D8D698BC(v168);
    if (v181)
    {
      v182 = v180;
      v183 = *&v170[v179];
      v184 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *&v170[v179];
      aBlock[0] = v42;
      *&v170[v179] = 0x8000000000000000;
      if (!v184)
      {
        sub_1D8F835F0();
        v42 = aBlock[0];
      }

      sub_1D8F8093C(v182, v42);
      *&v170[v179] = v42;
    }

    swift_endAccess();

    v159 = v19;
  }

  v169 = sub_1D917938C();
  if (v169)
  {
    aBlock[0] = v169;
    sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    swift_dynamicCast();
    v168 = *&v237[0];
    v19 = v159;
    v167 = v160;
    if (*&v237[0])
    {
      goto LABEL_118;
    }
  }

LABEL_125:
  sub_1D8D1B144();
  v185 = v226;
  if ((*(v226 + 56) & 1) == 0)
  {
    v186 = *&v230[qword_1EDCD1620];
    if (!v186 || (v187 = v229, , , v188 = sub_1D8E84898(v187, v186), , , v185 = v226, (v188 & 1) == 0))
    {
      *(v185 + 56) = 1;
    }
  }

  v189 = v220;
  if ((v233 & 0xC000000000000001) != 0)
  {
    v190 = sub_1D917935C();
    v185 = v226;
  }

  else
  {
    v190 = *(v233 + 16);
  }

  v191 = v225;
  v192 = qword_1EDCD1638;
  if (v190 < v189 != v230[qword_1EDCD1638])
  {
    *(v185 + 56) = 1;
  }

  v234 = v190;
  *(v185 + 48) = v189;
  v193 = qword_1EDCD1610;
  v194 = v189;
  if (v189 != *&v230[qword_1EDCD1610])
  {
    *(v185 + 56) = 1;
  }

  v195 = *(v185 + 16);
  v237[0] = *v185;
  v237[1] = v195;
  *v238 = *(v185 + 32);
  *&v238[9] = *(v185 + 41);
  v196 = v230;
  sub_1D8D52CF8(*&v230[qword_1ECAB85F8], *&v230[qword_1ECAB85F8 + 8]);
  v197 = *&v191[v219];
  MEMORY[0x1EEE9AC00](v198);
  *(&v213 - 2) = v185;
  *(&v213 - 1) = v189;
  MEMORY[0x1EEE9AC00](v199);
  *(&v213 - 2) = sub_1D8D54EC4;
  *(&v213 - 1) = v200;

  os_unfair_lock_lock(v197 + 10);
  sub_1D8D48BA8(&v197[4]);
  os_unfair_lock_unlock(v197 + 10);

  if (*(v185 + 56) == 1)
  {
    v201 = v234 < v189;
    v202 = *&v196[qword_1EDCD1620];
    *&v196[qword_1EDCD1620] = v229;

    v196[v192] = v201;
    *&v196[v193] = v194;
    v203 = *&v196[qword_1ECAB8610];
    v204 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v205 = swift_allocObject();
    v206 = v231;
    *(v205 + 16) = v204;
    *(v205 + 24) = v206;
    *(v205 + 32) = v201;
    *(v205 + 40) = v194;
    aBlock[4] = sub_1D8D83E2C;
    aBlock[5] = v205;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_95;
    v207 = _Block_copy(aBlock);

    v208 = v213;
    sub_1D9177E4C();
    v235 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v209 = v215;
    v210 = v218;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v208, v209, v207);
    _Block_release(v207);
    (*(v217 + 8))(v209, v210);
    (*(v214 + 8))(v208, v216);
  }

  else
  {
  }

  v211 = v223;
  v212 = v222;
  sub_1D8D335AC();

  return (*(v211 + 8))(v212, v224);
}