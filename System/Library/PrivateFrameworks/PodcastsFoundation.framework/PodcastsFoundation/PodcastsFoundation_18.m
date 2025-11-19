__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8EF03AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8EF03F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8EF0464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65F8, &qword_1D9192AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TranscriptEpisodeContext.transcriptRequest(priority:lifetime:)@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *v3;
  v8 = v3[4];
  if (v8)
  {
    v9 = v3[3];
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 64) = 0;
    *a3 = v7;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
    *(a3 + 24) = v5;
    *(a3 + 25) = v6;

    sub_1D8D412B0(&v14, a3 + 32);
  }

  else
  {
    v11 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v13 = [v11 BOOLForKey_];

    if (v13)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 32) = 0u;
      *a3 = v7;
      *(a3 + 8) = 5852737;
      *(a3 + 16) = 0xE300000000000000;
      *(a3 + 24) = v5;
      *(a3 + 25) = v6;
      sub_1D8D412B0(&v14, a3 + 32);
    }

    else
    {
      *(a3 + 64) = 0;
      result = 0.0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

uint64_t TranscriptEpisodeContext.init(adamID:priceType:transcriptIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TranscriptEpisodeContext.priceType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptEpisodeContext.transcriptIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptEpisodeContext.isAppleHosted.getter()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = *(v0 + 8);

  v2 = sub_1D917980C();

  if (v2 > 3)
  {
    return 0;
  }

  v3 = sub_1D8FC10EC(&unk_1F545D950);
  v4 = sub_1D8EF0724(v2, v3);

  return v4 & 1;
}

uint64_t sub_1D8EF0724(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  v4 = *(a2 + 40);
  sub_1D9179DBC();
  v5 = *&aStdq_4[8 * a1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v6 = sub_1D9179E1C();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *&aStdq_4[8 * a1];
    while (*&aStdq_4[8 * *(*(a2 + 48) + v8)] != v10)
    {
      v11 = sub_1D9179ACC();
      swift_bridgeObjectRelease_n();
      if ((v11 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v11 & 1;
    }

    swift_bridgeObjectRelease_n();
    v11 = 1;
  }

  else
  {
LABEL_8:
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1D8EF0850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v7 = sub_1D9179E1C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1D9179ACC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall TranscriptEpisodeContext.shouldShazamMatch(_:)(AVURLAsset_optional a1)
{
  isa = a1.value.super.super.isa;
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {
    v8 = *(v1 + 8);

    v9 = sub_1D917980C();

    if (v9 <= 3)
    {
      v10 = sub_1D8FC10EC(&unk_1F545D978);
      v11 = sub_1D8EF0724(v9, v10);

      if (v11)
      {
        return 0;
      }
    }
  }

  if (!isa)
  {
    return 1;
  }

  v12 = isa;
  v13 = [(objc_class *)v12 URL];
  sub_1D9176B9C();

  v14 = sub_1D9176B1C();
  v15 = [v14 isHLSPlaylist];

  v16 = *(v4 + 8);
  v16(v7, v3);
  if (v15)
  {

    return 0;
  }

  v18 = [(objc_class *)v12 URL];
  sub_1D9176B9C();

  v19 = sub_1D9176B1C();
  v20 = [v19 isPackagedMedia];

  v16(v7, v3);
  return (v20 & 1) == 0;
}

uint64_t sub_1D8EF0B48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8EF0BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8EF0CA0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1D8D088B4(a1, a4, &unk_1ECAB5910, &qword_1D9188C90);
  v8 = *(v4 + 24);
  v16 = v4[1];
  v17 = v4[2];

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v15 = *v4;
  sub_1D8E40D20();
  v9 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v9);

  v10 = *(v4 + 25);
  v11 = a2(0);
  v12 = a4 + v11[9];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(a4 + v11[5]) = v8;
  v13 = (a4 + v11[6]);
  *v13 = v16;
  v13[1] = v17;
  *(a4 + v11[8]) = v10;
  *(a4 + v11[7]) = a3;
  return sub_1D8EDC2A8((v4 + 4), v12);
}

uint64_t TranscriptRequest.init(episodeAdamID:ttmlIdentifier:priority:lifetime:trace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a4;
  v8 = *a5;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v7;
  *(a7 + 25) = v8;
  *(a7 + 32) = 0u;
  return sub_1D8D412B0(a6, a7 + 32);
}

uint64_t TranscriptRequest.ttmlIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D8EF0E88()
{
  v1 = 0x4165646F73697065;
  v2 = 0x797469726F697270;
  if (*v0 != 2)
  {
    v2 = 0x656D69746566696CLL;
  }

  if (*v0)
  {
    v1 = 0x6E6564496C6D7474;
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

uint64_t sub_1D8EF0F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8EF1978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8EF0F44(uint64_t a1)
{
  v2 = sub_1D8EF16CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8EF0F80(uint64_t a1)
{
  v2 = sub_1D8EF16CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TranscriptRequest.hash(into:)()
{
  MEMORY[0x1DA72B3C0](*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v3 = LODWORD(flt_1D918CD50[*(v0 + 24)]);
  return sub_1D9179DEC();
}

uint64_t TranscriptRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6600, &qword_1D9192B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF16CC();
  sub_1D9179F1C();
  v15 = *v3;
  v14[7] = 0;
  sub_1D8EF1720();
  sub_1D91799FC();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v14[6] = 1;
    sub_1D91799BC();
    v14[5] = *(v3 + 24);
    v14[4] = 2;
    sub_1D8ECEF68();
    sub_1D91799FC();
    v14[3] = *(v3 + 25);
    v14[2] = 3;
    sub_1D8ECF010();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TranscriptRequest.hashValue.getter()
{
  sub_1D9179DBC();
  TranscriptRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t TranscriptRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6610, &qword_1D9192B98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-1] - v8;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF16CC();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1D8D7621C(v17);
  }

  else
  {
    HIBYTE(v13) = 0;
    sub_1D8EF1774();
    sub_1D91798FC();
    v14[0] = v19;
    LOBYTE(v19) = 1;
    v14[1] = sub_1D91798BC();
    v14[2] = v11;
    HIBYTE(v13) = 2;
    sub_1D8ECF064();
    sub_1D91798FC();
    v15 = v19;
    HIBYTE(v13) = 3;
    sub_1D8ECF10C();
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    v16 = v19;
    sub_1D8EC8C5C(v14, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1D8EC8D90(v14);
  }
}

uint64_t sub_1D8EF155C()
{
  sub_1D9179DBC();
  TranscriptRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8EF15A0()
{
  sub_1D9179DBC();
  TranscriptRequest.hash(into:)();
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation17TranscriptRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (*(a1 + 8) == *(a2 + 8) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 || (v3 = a1, v4 = a2, v5 = sub_1D9179ACC(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)))
  {
    return flt_1D918CD50[*(a1 + 24)] == flt_1D918CD50[*(a2 + 24)];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8EF16CC()
{
  result = qword_1ECAB6608;
  if (!qword_1ECAB6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6608);
  }

  return result;
}

unint64_t sub_1D8EF1720()
{
  result = qword_1EDCD5F20;
  if (!qword_1EDCD5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5F20);
  }

  return result;
}

unint64_t sub_1D8EF1774()
{
  result = qword_1EDCD5F18;
  if (!qword_1EDCD5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5F18);
  }

  return result;
}

uint64_t sub_1D8EF17C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8EF1810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8EF1874()
{
  result = qword_1ECAB6618;
  if (!qword_1ECAB6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6618);
  }

  return result;
}

unint64_t sub_1D8EF18CC()
{
  result = qword_1ECAB6620;
  if (!qword_1ECAB6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6620);
  }

  return result;
}

unint64_t sub_1D8EF1924()
{
  result = qword_1ECAB6628;
  if (!qword_1ECAB6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6628);
  }

  return result;
}

uint64_t sub_1D8EF1978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4165646F73697065 && a2 == 0xED000044496D6164;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496C6D7474 && a2 == 0xEE00726569666974 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000)
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

uint64_t TranscriptData.TimeBombedURLs.init(shazamSignatureURL:ttmlURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8D5DE80(a1, a3);
  v5 = a3 + *(type metadata accessor for TranscriptData.TimeBombedURLs() + 20);

  return sub_1D8D5DE80(a2, v5);
}

uint64_t TranscriptData.TimeBombedURLs.ttmlURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TranscriptData.TimeBombedURLs() + 20);

  return sub_1D8ECA48C(v3, a1);
}

uint64_t TranscriptData.TimeBombedURLs.inMemorySize.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  sub_1D8ECA48C(v1, v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_1D8E677CC(v8);
    v18 = 0;
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    v19 = sub_1D9176BCC();
    v18 = String.inMemorySize.getter(v19, v20);

    (*(v10 + 8))(v16, v9);
  }

  v21 = type metadata accessor for TranscriptData.TimeBombedURLs();
  sub_1D8ECA48C(v1 + *(v21 + 20), v5);
  if (v17(v5, 1, v9) == 1)
  {
    sub_1D8E677CC(v5);
    return v18;
  }

  (*(v10 + 32))(v13, v5, v9);
  v22 = sub_1D9176BCC();
  v24 = String.inMemorySize.getter(v22, v23);

  result = (*(v10 + 8))(v13, v9);
  v26 = __CFADD__(v18, v24);
  v18 += v24;
  if (!v26)
  {
    return v18;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8EF1E1C()
{
  if (*v0)
  {
    result = 0x4C52556C6D7474;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1D8EF1E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D91CCC30 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4C52556C6D7474 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D8EF1F44(uint64_t a1)
{
  v2 = sub_1D8EF216C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8EF1F80(uint64_t a1)
{
  v2 = sub_1D8EF216C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TranscriptData.TimeBombedURLs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6630, &qword_1D9192E18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF216C();
  sub_1D9179F1C();
  v11[15] = 0;
  sub_1D9176C2C();
  sub_1D8EF24D0(&qword_1ECAB2CB0);
  sub_1D917999C();
  if (!v1)
  {
    v9 = *(type metadata accessor for TranscriptData.TimeBombedURLs() + 20);
    v11[14] = 1;
    sub_1D917999C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D8EF216C()
{
  result = qword_1ECAB6638;
  if (!qword_1ECAB6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6638);
  }

  return result;
}

uint64_t TranscriptData.TimeBombedURLs.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6640, &qword_1D9192E20);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for TranscriptData.TimeBombedURLs();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF216C();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v14;
  v27 = v17;
  v19 = v30;
  v28 = v7;
  sub_1D9176C2C();
  v34 = 0;
  sub_1D8EF24D0(&qword_1ECAB2C98);
  v21 = v31;
  v20 = v32;
  sub_1D917989C();
  v22 = v27;
  sub_1D8D5DE80(v20, v27);
  v33 = 1;
  v23 = v28;
  sub_1D917989C();
  (*(v19 + 8))(v13, v21);
  sub_1D8D5DE80(v23, v22 + *(v26 + 20));
  sub_1D8EF2514(v22, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D8EF2578(v22);
}

uint64_t sub_1D8EF24D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D9176C2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8EF2514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptData.TimeBombedURLs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EF2578(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptData.TimeBombedURLs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TranscriptDataError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

unint64_t sub_1D8EF2680()
{
  result = qword_1ECAB6648;
  if (!qword_1ECAB6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6648);
  }

  return result;
}

unint64_t sub_1D8EF2734()
{
  result = qword_1ECAB6650;
  if (!qword_1ECAB6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6650);
  }

  return result;
}

unint64_t sub_1D8EF278C()
{
  result = qword_1ECAB6658;
  if (!qword_1ECAB6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6658);
  }

  return result;
}

unint64_t sub_1D8EF27E4()
{
  result = qword_1ECAB6660;
  if (!qword_1ECAB6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6660);
  }

  return result;
}

uint64_t TTMLRequest.init(remoteUrl:priority:fileName:lifetime:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *a5;
  v12 = type metadata accessor for TTMLRequest();
  v13 = a6 + v12[9];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  result = sub_1D8D5DE80(a1, a6);
  *(a6 + v12[5]) = v10;
  v15 = (a6 + v12[6]);
  *v15 = a3;
  v15[1] = a4;
  *(a6 + v12[8]) = v11;
  *(a6 + v12[7]) = 7;
  return result;
}

uint64_t TTMLRequest.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTMLRequest();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TTMLRequest.fileFormat.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTMLRequest();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t TTMLRequest.lifetime.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTMLRequest();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t TTMLRequest.trace.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTMLRequest() + 36);

  return sub_1D8D412B0(a1, v3);
}

uint64_t sub_1D8EF2A7C()
{
  v1 = (v0 + *(type metadata accessor for TTMLRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D8EF2ABC(uint64_t a1)
{
  v2 = sub_1D8EF3A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8EF2AF8(uint64_t a1)
{
  v2 = sub_1D8EF3A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTMLRequest.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  sub_1D8D088B4(v1, &v18 - v9, &unk_1ECAB5910, &qword_1D9188C90);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D9179DDC();
    sub_1D8D68C10(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
    sub_1D917814C();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for TTMLRequest();
  v12 = LODWORD(flt_1D918CD50[*(v1 + v11[5])]);
  sub_1D9179DEC();
  v13 = (v1 + v11[6]);
  v14 = *v13;
  v15 = v13[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v16 = *(v1 + v11[7]);
  return sub_1D8ECAD60();
}

uint64_t TTMLRequest.encode(_:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1D8D752C4(v1, *(a1 + 32));
  return v1;
}

uint64_t TTMLRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6668, &qword_1D91930D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF3A1C();
  sub_1D9179F1C();
  v16[15] = 0;
  sub_1D9176C2C();
  sub_1D8D68C10(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0]);
  sub_1D917999C();
  if (!v2)
  {
    v11 = type metadata accessor for TTMLRequest();
    v16[14] = *(v3 + v11[5]);
    v16[13] = 1;
    sub_1D8ECEF68();
    sub_1D91799FC();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    v16[12] = 2;
    sub_1D91799BC();
    v16[11] = *(v3 + v11[7]);
    v16[10] = 3;
    sub_1D8ECEFBC();
    sub_1D91799FC();
    v16[9] = *(v3 + v11[8]);
    v16[8] = 4;
    sub_1D8ECF010();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TTMLRequest.hashValue.getter()
{
  sub_1D9179DBC();
  TTMLRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t TTMLRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6670, &qword_1D91930D8);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for TTMLRequest();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 36)];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v30 = v17;
  v31 = a1;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF3A1C();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    return sub_1D8D08A50(v30, &qword_1ECAB4928, &qword_1D918B380);
  }

  else
  {
    v19 = v28;
    v20 = v15;
    sub_1D9176C2C();
    v39 = 0;
    sub_1D8D68C10(&qword_1ECAB2C98, MEMORY[0x1E6968FB0]);
    v21 = v29;
    sub_1D917989C();
    sub_1D8D5DE80(v7, v20);
    v37 = 1;
    sub_1D8ECF064();
    sub_1D91798FC();
    *(v20 + v12[5]) = v38;
    v36 = 2;
    v22 = sub_1D91798BC();
    v23 = (v20 + v12[6]);
    *v23 = v22;
    v23[1] = v24;
    v34 = 3;
    sub_1D8ECF0B8();
    sub_1D91798FC();
    *(v20 + v12[7]) = v35;
    v32 = 4;
    sub_1D8ECF10C();
    sub_1D91798FC();
    (*(v19 + 8))(v11, v21);
    *(v20 + v12[8]) = v33;
    sub_1D8EF3A70(v20, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    return sub_1D8EF3AD4(v20);
  }
}

uint64_t sub_1D8EF34EC()
{
  sub_1D9179DBC();
  TTMLRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8EF3530()
{
  sub_1D9179DBC();
  TTMLRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8EF356C(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1D8D752C4(v1, *(a1 + 32));
  return v1;
}

uint64_t TTMLError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation11TTMLRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - v15;
  v18 = *(v17 + 56);
  sub_1D8D088B4(a1, &v34 - v15, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(a2, &v16[v18], &unk_1ECAB5910, &qword_1D9188C90);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1D8D088B4(v16, v12, &unk_1ECAB5910, &qword_1D9188C90);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1D8D68C10(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0]);
      v22 = sub_1D91781BC();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1D8D08A50(v16, &qword_1ECAB6178, &unk_1D9193430);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_10:
  v24 = type metadata accessor for TTMLRequest();
  v25 = v24[5];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      if (v26 != 2)
      {
        goto LABEL_7;
      }
    }

    else if (v26 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v27)
  {
    if (v26 != 1)
    {
      goto LABEL_7;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  v28 = v24[6];
  v30 = *(a1 + v28);
  v29 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if (v30 == *v31 && v29 == v31[1] || (v32 = v24, v33 = sub_1D9179ACC(), v24 = v32, (v33 & 1) != 0))
  {
    v20 = sub_1D8FDD9D0(*(a1 + v24[7]), *(a2 + v24[7]));
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_1D8EF3A1C()
{
  result = qword_1ECAB2AA0;
  if (!qword_1ECAB2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AA0);
  }

  return result;
}

uint64_t sub_1D8EF3A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTMLRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EF3AD4(uint64_t a1)
{
  v2 = type metadata accessor for TTMLRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8EF3B34()
{
  result = qword_1ECAB6678;
  if (!qword_1ECAB6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6678);
  }

  return result;
}

unint64_t sub_1D8EF3BD4()
{
  result = qword_1ECAB6680;
  if (!qword_1ECAB6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6680);
  }

  return result;
}

unint64_t sub_1D8EF3C2C()
{
  result = qword_1ECAB2A90;
  if (!qword_1ECAB2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A90);
  }

  return result;
}

unint64_t sub_1D8EF3C84()
{
  result = qword_1ECAB2A98;
  if (!qword_1ECAB2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A98);
  }

  return result;
}

uint64_t AutoDownloadRetentionPolicyHistory.init(transitions:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6688, &unk_1D9193440);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t AutoDownloadRetentionPolicyHistory.recordTransition(from:to:transitionTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16[-v9];
  v11 = *v3;
  v13 = *(v12 + 56);
  v14 = sub_1D9176E3C();
  (*(*(v14 - 8) + 16))(&v10[v13], a3, v14);
  *v10 = a1;
  *(v10 + 1) = a2;
  v17 = v10;
  os_unfair_lock_lock((v11 + 24));
  sub_1D8EF3F88((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  return sub_1D8EF3FA4(v10);
}

uint64_t sub_1D8EF3E34(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v13 - v7;
  sub_1D8EF4D74(a2, v13 - v7);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D8ECCA10(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1D8ECCA10(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = sub_1D8EF4DE4(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11);
  *a1 = v9;
  return result;
}

uint64_t sub_1D8EF3FA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AutoDownloadRetentionPolicyHistory.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697469736E617274 && a2 == 0xEB00000000736E6FLL)
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

uint64_t AutoDownloadRetentionPolicyHistory.CodingKeys.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EF4164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697469736E617274 && a2 == 0xEB00000000736E6FLL)
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

uint64_t sub_1D8EF41F0(uint64_t a1)
{
  v2 = sub_1D8EF4478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8EF422C(uint64_t a1)
{
  v2 = sub_1D8EF4478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoDownloadRetentionPolicyHistory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6690, &qword_1D9193450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF4478();
  sub_1D9179EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66A0, &qword_1D9193458);
    sub_1D8EF4688(&qword_1ECAB66A8, &qword_1ECAB66B0);
    sub_1D91798FC();
    v11 = v15[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6688, &unk_1D9193440);
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    v13 = *(v6 + 8);

    v13(v9, v5);
    *(v12 + 16) = v11;

    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D8EF4478()
{
  result = qword_1ECAB6698;
  if (!qword_1ECAB6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6698);
  }

  return result;
}

uint64_t AutoDownloadRetentionPolicyHistory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66B8, &qword_1D9193460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *v1;
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF4478();
  sub_1D9179F1C();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66A0, &qword_1D9193458);
  sub_1D8EF4688(&qword_1ECAB66C0, &qword_1ECAB66C8);
  sub_1D91799FC();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D8EF4688(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB66A0, &qword_1D9193458);
    sub_1D8EF4710(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8EF4710(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6170, &unk_1D91921B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void NSUserDefaults.recordRetentionPolicyChange(from:to:transitionTime:)(objc_class *a1, objc_class *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v29 - v8);
  if (a1 == a2)
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v10 = sub_1D917744C();
    __swift_project_value_buffer(v10, qword_1EDCD0F20);
    v29 = sub_1D917741C();
    v11 = sub_1D9178CDC();
    if (os_log_type_enabled(v29, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315394;
      v30 = a1;
      type metadata accessor for MTPodcastEpisodeLimit(0);
      v14 = sub_1D917826C();
      v16 = sub_1D8CFA924(v14, v15, &v31);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v30 = a1;
      v17 = sub_1D917826C();
      v19 = sub_1D8CFA924(v17, v18, &v31);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1D8CEC000, v29, v11, "Skipping updating retention policy history for equivilent change: %s -> %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    else
    {
      v28 = v29;
    }
  }

  else
  {
    v20 = sub_1D917820C();
    sub_1D8E7500C(v20, v21, &v31);

    v22 = v31;
    if (!v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6688, &unk_1D9193440);
      v22 = swift_allocObject();
      *(v22 + 24) = 0;
      *(v22 + 16) = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v6 + 48);
    v24 = sub_1D9176E3C();
    v25 = (*(*(v24 - 8) + 16))(v9 + v23, a3, v24);
    v9->isa = a1;
    v9[1].isa = a2;
    MEMORY[0x1EEE9AC00](v25);
    *(&v29 - 2) = v9;
    os_unfair_lock_lock((v22 + 24));
    sub_1D8EF4E54((v22 + 16));
    os_unfair_lock_unlock((v22 + 24));
    sub_1D8EF3FA4(v9);
    v26 = sub_1D917820C();
    sub_1D8E75AD0(v22, v26, v27);
  }
}

uint64_t NSUserDefaults.transitionGlobalDownloadRetentionPolicy(to:)(objc_class *a1)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 episodeLimitForKey_];
  v10 = sub_1D9179D9C();
  [v1 setObject:v10 forKey:@"MTPodcastEpisodeLimitDefaultKey"];

  sub_1D9176E0C();
  NSUserDefaults.recordRetentionPolicyChange(from:to:transitionTime:)(v9, a1, v8);
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1D8EF4C50()
{
  result = qword_1ECAB66D0;
  if (!qword_1ECAB66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB66D0);
  }

  return result;
}

unint64_t sub_1D8EF4CA8()
{
  result = qword_1ECAB66D8;
  if (!qword_1ECAB66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB66D8);
  }

  return result;
}

unint64_t sub_1D8EF4D00()
{
  result = qword_1ECAB66E0;
  if (!qword_1ECAB66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB66E0);
  }

  return result;
}

uint64_t sub_1D8EF4D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EF4DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DownloadStateChecker.init(context:episodePropertiesToReport:showPropertiesToReport:allEpisodes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void DownloadStateChecker.report(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 64) = a3;
  v14[4] = sub_1D8EF54F8;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_29;
  v12 = _Block_copy(v14);
  v13 = v8;

  [v13 performBlock_];
  _Block_release(v12);
}

char *sub_1D8EF4FAC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  LOBYTE(v10) = a4;
  v53 = a3;
  v54 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB67B0, &unk_1D9193750);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - v14;
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v16 = [swift_getObjCClassFromMetadata() fetchRequest];
  v17 = *(a5 + 16);
  v18 = objc_opt_self();
  v19 = v18;
  if (v17)
  {

    sub_1D8FC0F28(v20);

    v21 = sub_1D9178A8C();

    v22 = [v19 predicateForPodcastUuids_];
  }

  else
  {
    v23 = [v18 predicateForPodcastToAutoRemove];
    v21 = [v19 predicateForPodcastsToAutodownload];
    v22 = [v23 OR:v21];
  }

  [v16 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v24 = sub_1D917908C();
  v48 = v15;
  v25 = sub_1D8FBEED8(v24);

  v26 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v42 = v48;
    sub_1D9176E2C();
    v43 = type metadata accessor for DownloadStateReport();
    *(v42 + *(v43 + 20)) = v39;
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    (a6)(v42, 0);
    return sub_1D8D08A50(v42, &unk_1ECAB67B0, &unk_1D9193750);
  }

  v27 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v25 >> 62)
  {
    goto LABEL_21;
  }

  v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_22:
    v41 = a1;

    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  while (1)
  {
    v49 = v27;
    v46 = a7;
    v47 = a6;
    v61[0] = v26;
    v52 = a1;

    a1 = v61;
    result = sub_1D8E314BC(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      break;
    }

    a7 = 0;
    v26 = v61[0];
    v51 = v25 & 0xC000000000000001;
    v50 = v10 & 1;
    while (1)
    {
      v27 = a7 + 1;
      if (__OFADD__(a7, 1))
      {
        break;
      }

      if (v51)
      {
        v30 = v26;
        v31 = MEMORY[0x1DA72AA90](a7, v25);
      }

      else
      {
        if (a7 >= *(v49 + 16))
        {
          goto LABEL_20;
        }

        v30 = v26;
        v31 = *(v25 + 8 * a7 + 32);
      }

      v32 = v31;
      v55[0] = v52;
      v55[1] = v54;
      v55[2] = v53;
      v56 = v50;
      a1 = v55;
      sub_1D8EF5510(v31, &v57);
      v10 = v28;

      v33 = v57;
      v34 = v58;
      v35 = v59;
      v36 = v60;
      v26 = v30;
      v61[0] = v30;
      a6 = *(v30 + 16);
      v37 = *(v26 + 24);
      if (a6 >= v37 >> 1)
      {
        a1 = v61;
        v45 = v58;
        v44 = v60;
        sub_1D8E314BC((v37 > 1), a6 + 1, 1);
        v36 = v44;
        v34 = v45;
        v26 = v61[0];
      }

      *(v26 + 16) = a6 + 1;
      v38 = v26 + 48 * a6;
      *(v38 + 32) = v33;
      *(v38 + 40) = v34;
      *(v38 + 56) = v35;
      *(v38 + 64) = v36;
      ++a7;
      v28 = v10;
      if (v27 == v10)
      {
        v39 = v26;

        a6 = v47;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v40 = v26;
    v28 = sub_1D917935C();
    v26 = v40;
    if (!v28)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

id sub_1D8EF5510@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v78 = a1;
  result = [a1 uuid];
  if (result)
  {
    v8 = result;
    v9 = sub_1D917820C();
    v11 = v10;

    v12 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v13 = [v12 episodeLimitForKey_];

    MEMORY[0x1EEE9AC00](v14);
    v66[2] = v9;
    v66[3] = v11;
    v66[4] = v3;
    v66[5] = v4;
    v76 = v4;
    v77 = v5;
    v66[6] = v5;
    v75 = v6;
    v67 = v6;
    v68 = v13;
    v82 = v3;
    v15 = sub_1D90ACCB8(sub_1D8F03298, v66);

    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;
    v81 = v15;

    v21 = 0;
    v79 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v22 = v21;
      if (!v19)
      {
        break;
      }

LABEL_9:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = v23 | (v21 << 6);
      v25 = (*(v81 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(*(v81 + 56) + 8 * v24);

      v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v13 = [v82 episodeForUuid_];

      if (v13)
      {
        v84 = v82;
        v85 = v76;
        v86 = v77;
        LOBYTE(v87) = v75;
        v73 = sub_1D8EF5C9C(v76, v13);
        v29 = v78;
        v30 = [v78 uuid];
        if (v30)
        {
          v72 = v30;
          v71 = objc_opt_self();
          LODWORD(v70) = [v29 deletePlayedEpisodesResolvedValue];
          v31 = [v29 episodeLimitResolvedValue];
          v32 = [v71 predicateForAutomaticDownloadsOnShow:v72 deletePlayedEpisodes:v70 episodeLimit:v31 serialNextEpisodesSort:0 includePlayableWithoutAccount:0];

          v87 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
          v84 = v13;
          v72 = v13;
          v33 = v80;
          NSPredicate.explain(with:)(&v84, &v88);
          v80 = v33;
          if (v33)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(&v84);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v84);
          v34 = v88;
        }

        else
        {
          v34 = 0xF000000000000007;
        }

        v72 = v34;
        v35 = v78;
        v36 = [v78 uuid];
        if (v36)
        {
          v71 = v36;
          v70 = objc_opt_self();
          v69 = [v35 deletePlayedEpisodesResolvedValue];
          v37 = [v35 episodeLimitResolvedValue];
          v38 = [v70 predicateForAutomaticDeletionOnShow:v71 deletePlayedEpisodes:v69 episodeLimit:v37];

          v87 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
          v84 = v13;
          v71 = v13;
          v39 = v80;
          NSPredicate.explain(with:)(&v84, &v88);
          v80 = v39;
          if (v39)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(&v84);
            sub_1D8F032B0(v72);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v84);
          v15 = v88;
        }

        else
        {
          v15 = 0xF000000000000007;
        }

        v40 = v80;
        sub_1D8EF5F6C(v13, &v84);
        v80 = v40;
        if (v40)
        {
LABEL_32:
          sub_1D8F032B0(v15);
          sub_1D8F032B0(v72);
        }

        v70 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = sub_1D8ECCA34(0, *(v79 + 2) + 1, 1, v79);
        }

        v15 = *(v79 + 2);
        v42 = *(v79 + 3);
        v13 = (v15 + 1);
        if (v15 >= v42 >> 1)
        {
          v79 = sub_1D8ECCA34((v42 > 1), v15 + 1, 1, v79);
        }

        v43 = v79;
        *(v79 + 2) = v13;
        v44 = &v43[56 * v15];
        *(v44 + 4) = v27;
        *(v44 + 5) = v26;
        v45 = v72;
        *(v44 + 6) = v73;
        *(v44 + 7) = v28;
        v46 = v70;
        v47 = v71;
        *(v44 + 8) = v45;
        *(v44 + 9) = v47;
        *(v44 + 10) = v46;
      }

      else
      {
      }
    }

    while (1)
    {
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v21 >= v20)
      {
        break;
      }

      v19 = *(v16 + 8 * v21);
      ++v22;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    v48 = v78;
    v49 = [v78 uuid];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1D917820C();
      v53 = v52;
    }

    else
    {
      v53 = 0xE300000000000000;
      v51 = 4999502;
    }

    v54 = v80;
    v84 = v82;
    v85 = v76;
    v86 = v77;
    LOBYTE(v87) = v75;
    v55 = sub_1D8EF5C9C(v77, v48);
    v56 = objc_opt_self();
    v57 = [v56 predicateForPodcastsToAutodownload];
    v58 = sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
    v87 = v58;
    v84 = v48;
    v59 = v48;
    NSPredicate.explain(with:)(&v84, &v88);

    if (v54)
    {

      return __swift_destroy_boxed_opaque_existential_1Tm(&v84);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      v60 = v88;
      v61 = [v56 predicateForPodcastToAutoRemove];
      v87 = v58;
      v84 = v59;
      v62 = v59;
      NSPredicate.explain(with:)(&v84, &v83);

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      v63 = v83;
      v64 = v74;
      *v74 = v51;
      v64[1] = v53;
      v65 = v79;
      v64[2] = v55;
      v64[3] = v65;
      v64[4] = v60;
      v64[5] = v63;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8EF5C9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v28 = *(v2 + 16);
  if (v4)
  {
    *&v29 = MEMORY[0x1E69E7CC0];

    v7 = a2;
    sub_1D8E314DC(0, v4, 0);
    v8 = v29;
    v9 = (a1 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;

      v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v13 = [v7 valueForKey_];

      if (v13)
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      v34 = v32;
      v35 = v33;

      *&v29 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D8E314DC((v14 > 1), v15 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 32 * v15;
      v17 = v35;
      *(v16 + 32) = v34;
      *(v16 + 48) = v17;
      v9 += 2;
      --v4;
    }

    while (v4);

    v18 = *(v8 + 16);
    if (v18)
    {
      goto LABEL_10;
    }

LABEL_19:

    v19 = MEMORY[0x1E69E7CC0];
    return sub_1D8EFA814(v28, v19);
  }

  v8 = MEMORY[0x1E69E7CC0];
  v18 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_10:
  v31 = v5;
  sub_1D8D41BE0(0, v18, 0);
  v19 = v5;
  v20 = v8 + 32;
  do
  {
    sub_1D8D088B4(v20, &v34, &qword_1ECAB57F0, &unk_1D9190AA0);
    sub_1D8D088B4(&v34, &v29, &qword_1ECAB57F0, &unk_1D9190AA0);
    if (v30)
    {
      sub_1D8D65618(&v29, &v32);
      sub_1D8CFAD1C(&v32, &v29);
      v21 = sub_1D917826C();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm(&v32);
      sub_1D8D08A50(&v34, &qword_1ECAB57F0, &unk_1D9190AA0);
    }

    else
    {
      sub_1D8D08A50(&v29, &qword_1ECAB57F0, &unk_1D9190AA0);
      sub_1D8D08A50(&v34, &qword_1ECAB57F0, &unk_1D9190AA0);
      v23 = 0xE300000000000000;
      v21 = 4999502;
    }

    v31 = v19;
    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1D8D41BE0((v24 > 1), v25 + 1, 1);
      v19 = v31;
    }

    *(v19 + 16) = v25 + 1;
    v26 = v19 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    v20 += 32;
    --v18;
  }

  while (v18);

  return sub_1D8EFA814(v28, v19);
}

uint64_t sub_1D8EF5F6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = a1;
  v22 = a2;
  v2 = sub_1D9176FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v13 = [v12 episodeLimitForKey_];

  v14 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  sub_1D9176E0C();
  sub_1D9176FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D918C190;
  *(v15 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  *(v15 + 40) = sub_1D8FCD114(v13);
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v16 = sub_1D91785DC();

  v17 = [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v25[3] = v14;
  v25[0] = v23;
  v18 = v23;
  v19 = v24;
  NSPredicate.explain(with:)(v25, &v26);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (!v19)
  {
    *v22 = v26;
  }

  return result;
}

uint64_t sub_1D8EF6238@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void *@<X8>)@<X4>, int a6@<W5>, void (*a7)(void *@<X8>)@<X6>, unint64_t *a8@<X8>)
{
  v519 = a7;
  LODWORD(v513) = a6;
  v524 = a4;
  i = a5;
  v522 = a8;
  v523 = sub_1D9176FDC();
  v521 = *(v523 - 8);
  v11 = *(v521 + 8);
  MEMORY[0x1EEE9AC00](v523);
  v13 = &v496 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9176E3C();
  v520 = *(v14 - 8);
  v15 = *(v520 + 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v496 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  isUniquelyReferenced_nonNull_native = [swift_getObjCClassFromMetadata() fetchRequest];
  v19 = objc_opt_self();
  v512 = a1;
  v20 = a2;
  v21 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v22 = [v19 predicateForPodcastUUID_];

  [isUniquelyReferenced_nonNull_native setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v23 = sub_1D917908C();
  v516 = 0;
  v517 = v17;
  v514 = v13;
  v30 = i;
  v507 = v20;
  v510 = a3;
  if (v23 >> 62)
  {
    goto LABEL_369;
  }

  v31 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v32 = v513;
    v33 = v14;
    v34 = v19;
    v35 = v522;
    if (!v31)
    {

LABEL_15:
      v43 = sub_1D8E26F08(MEMORY[0x1E69E7CC0]);

      v44 = 0;
      v26 = 0;
      v28 = 0;
      v27 = 0;
      v29 = 0;
      v520 = 0;
      v521 = 0;
      v524 = 0;
      i = 0;
      isUniquelyReferenced_nonNull_native = 0;
      v523 = 0;
      v30 = 0;
      v19 = 0;
      *v35 = v43;
LABEL_16:
      sub_1D8D15664(v44);
      sub_1D8D15664(v26);
      sub_1D8D15664(v28);
      sub_1D8D15664(v27);
      sub_1D8D15664(v29);
      sub_1D8D15664(v521);
      sub_1D8D15664(i);
      sub_1D8D15664(v520);
      sub_1D8D15664(v524);
      sub_1D8D15664(isUniquelyReferenced_nonNull_native);
      sub_1D8D15664(v523);
      sub_1D8D15664(v30);
      return sub_1D8D15664(v19);
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1DA72AA90](0);
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
        goto LABEL_376;
      }

      v36 = *(v23 + 32);
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v35 = v522;
      goto LABEL_15;
    }

    v38 = v37;
    v515 = isUniquelyReferenced_nonNull_native;
    v39 = [v19 predicateForAutoDownloadEnabled];
    v40 = [v39 evaluateWithObject_];

    v509 = v33;
    if (v40)
    {
      v41 = v510;
      v42 = v524;
      v527 = v510;
      v528 = v524;
      v529 = v30;
      v530 = v32 & 1;
      v501 = sub_1D8EF9090(v38, v510, &selRef_predicateForEpisodesThatShouldBeAutodownloadedForShow_deletePlayedEpisodes_episodeLimit_serialNextEpisodesSort_includePlayableWithoutAccount_);
      v527 = v41;
      v528 = v42;
      v529 = v30;
      v530 = v32 & 1;
      v518 = sub_1D8EF9090(v38, v41, &selRef_predicateForAutomaticDownloadsOnShow_deletePlayedEpisodes_episodeLimit_serialNextEpisodesSort_includePlayableWithoutAccount_);
    }

    else
    {
      v518 = MEMORY[0x1E69E7CD0];
      v501 = MEMORY[0x1E69E7CD0];
    }

    v46 = v517;
    v500 = v36;
    v47 = [v34 predicateForPodcastToAutoRemove];
    v48 = [v47 evaluateWithObject_];

    if (v48)
    {
      v49 = v510;
      v50 = v524;
      v527 = v510;
      v528 = v524;
      v529 = v30;
      v51 = v32 & 1;
      v530 = v32 & 1;
      v517 = sub_1D8EF9198(v38, v510);
    }

    else
    {
      v51 = v32 & 1;
      v517 = MEMORY[0x1E69E7CD0];
      v49 = v510;
      v50 = v524;
    }

    v527 = v49;
    v528 = v50;
    v529 = v30;
    v530 = v51;
    v52 = [v38 uuid];
    if (!v52)
    {
      goto LABEL_405;
    }

    v53 = v52;
    v54 = objc_opt_self();
    v55 = [v54 predicateForDownloadedEpisodesOnPodcastUuid_];

    v511 = sub_1D8EF9BA0(v55, v49);
    v527 = v49;
    v528 = v50;
    v529 = v30;
    v530 = v51;
    v506 = sub_1D8EF9298(v38, v49);
    v56 = [v54 predicateForHasValidPersistentId_];
    v527 = v49;
    v528 = v50;
    v529 = v30;
    LODWORD(v505) = v51;
    v530 = v51;
    v524 = sub_1D8EF9BA0(v56, v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    v57 = swift_allocObject();
    v508 = xmmword_1D918C190;
    *(v57 + 16) = xmmword_1D918C190;
    v58 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    sub_1D9176E0C();
    v59 = v46;
    v60 = v514;
    sub_1D9176FAC();
    v61 = swift_allocObject();
    *(v61 + 16) = v508;
    *(v61 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
    v499 = v58;
    *(v61 + 40) = sub_1D8FCD114(v519);
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    v62 = sub_1D91785DC();

    v63 = objc_opt_self();
    v64 = [v63 andPredicateWithSubpredicates_];

    (*(v521 + 1))(v60, v523);
    (*(v520 + 1))(v59, v509);
    *(v57 + 32) = v64;
    v65 = v50;
    v66 = v510;
    v67 = v512;
    v68 = v507;
    v69 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v70 = v54;
    v71 = [v54 predicateForAllEpisodesOnPodcastUuid_];

    *(v57 + 40) = v71;
    v72 = sub_1D91785DC();

    v73 = [v63 andPredicateWithSubpredicates_];

    v74 = v516;
    v75 = DownloadStateChecker.episodesToBePurged(in:for:)(v66, v67, v68);
    if (v74)
    {

      swift_unknownObjectRelease();

      v79 = 0;
      v80 = 0;
      v81 = 0;
      v44 = 0;
      v518 = 0;
      v519 = 0;
      v514 = 0;
      v517 = 0;
      v520 = 0;
      v521 = 0;
      v524 = 0;
      i = 0;
      isUniquelyReferenced_nonNull_native = 0;
      v523 = 0;
      v30 = 0;
      v19 = 0;
      v24 = v522;
LABEL_2:
      v25 = sub_1D8E26F08(MEMORY[0x1E69E7CC0]);

      sub_1D8D15664(v79);
      sub_1D8D15664(v80);
      sub_1D8D15664(v81);
      *v24 = v25;
LABEL_3:
      v27 = v518;
      v26 = v519;
      v28 = v514;
      v29 = v517;
      goto LABEL_16;
    }

    v82 = v75;
    v83 = v76;
    v84 = v77;
    isUniquelyReferenced_nonNull_native = v78;
    v497 = v70;
    v527 = v66;
    v528 = v65;
    v529 = i;
    v530 = v505;
    v85 = sub_1D8EF9BA0(v73, v66);
    v86 = v82;
    if (*(v82 + 16) <= *(v85 + 16) >> 3)
    {
      v527 = v85;
      sub_1D910E6BC(v82);
      v87 = v527;
    }

    else
    {
      v87 = sub_1D90A4A60(v82, v85);
    }

    v88 = &selRef_redirectURLForStoreCollectionId_;
    v30 = v511;
    if (*(v83 + 16) <= *(v87 + 16) >> 3)
    {
      v527 = v87;
      sub_1D910E6BC(v83);
      v89 = v527;
    }

    else
    {
      v89 = sub_1D90A4A60(v83, v87);
    }

    if (*(v84 + 16) <= *(v89 + 16) >> 3)
    {
      v527 = v89;
      sub_1D910E6BC(v84);
      v90 = v527;
    }

    else
    {
      v90 = sub_1D90A4A60(v84, v89);
    }

    v91 = *(isUniquelyReferenced_nonNull_native + 16);
    v92 = *(v90 + 16);
    v502 = isUniquelyReferenced_nonNull_native;
    v504 = v84;
    v505 = v83;
    v523 = v86;
    v516 = 0;
    v498 = v73;
    if (v91 > v92 >> 3)
    {
      v503 = sub_1D90A4A60(isUniquelyReferenced_nonNull_native, v90);
    }

    else
    {
      v527 = v90;
      sub_1D910E6BC(isUniquelyReferenced_nonNull_native);
      v503 = v527;
    }

    v527 = MEMORY[0x1E69E7CC8];
    v93 = (v30 + 56);
    v94 = 1 << *(v30 + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v96 = v95 & *(v30 + 56);
    v19 = (v94 + 63) >> 6;

    v509 = 0;
    v14 = 0;
    for (i = (v30 + 56); v96; v93 = i)
    {
LABEL_43:
      v98 = (*(v511 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v96)))));
      v100 = *v98;
      v99 = v98[1];

      sub_1D8D15664(v509);
      v101 = v527;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v526 = v101;
      v30 = sub_1D8D33C70(v100, v99);
      v103 = v101[2];
      v104 = (v102 & 1) == 0;
      v105 = v103 + v104;
      if (__OFADD__(v103, v104))
      {
        goto LABEL_372;
      }

      v106 = v102;
      if (v101[3] >= v105)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v527 = v101;
          if (v102)
          {
            goto LABEL_50;
          }
        }

        else
        {
          sub_1D8F83490();
          v101 = v526;
          v527 = v526;
          if (v106)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        sub_1D9006290(v105, isUniquelyReferenced_nonNull_native);
        v101 = v526;
        v107 = sub_1D8D33C70(v100, v99);
        if ((v106 & 1) != (v108 & 1))
        {
          goto LABEL_406;
        }

        v30 = v107;
        v527 = v101;
        if (v106)
        {
LABEL_50:

          goto LABEL_54;
        }
      }

      v101[(v30 >> 6) + 8] |= 1 << v30;
      v109 = (v101[6] + 16 * v30);
      *v109 = v100;
      v109[1] = v99;
      *(v101[7] + 8 * v30) = MEMORY[0x1E69E7CC0];
      v110 = v101[2];
      v111 = __OFADD__(v110, 1);
      v112 = v110 + 1;
      if (v111)
      {
        goto LABEL_386;
      }

      v101[2] = v112;
LABEL_54:
      v113 = v101[7];
      v114 = *(v113 + 8 * v30);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v113 + 8 * v30) = v114;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v114 + 16) + 1, 1, v114);
        v114 = v23;
        *(v113 + 8 * v30) = v23;
      }

      v116 = *(v114 + 16);
      v115 = *(v114 + 24);
      if (v116 >= v115 >> 1)
      {
        v23 = sub_1D8ECCB5C((v115 > 1), v116 + 1, 1, v114);
        v114 = v23;
        *(v113 + 8 * v30) = v23;
      }

      v96 &= v96 - 1;
      *(v114 + 16) = v116 + 1;
      *(v114 + v116 + 32) = 0;
      v509 = sub_1D8F034F0;
      v88 = &selRef_redirectURLForStoreCollectionId_;
    }

LABEL_39:
    v97 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      break;
    }

    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    v495 = v23;
    v31 = sub_1D917935C();
    v23 = v495;
  }

  if (v97 < v19)
  {
    v96 = *(v93 + v97);
    ++v14;
    if (v96)
    {
      v14 = v97;
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  *&v508 = 0;
  v14 = 0;
  v23 = v506;
  v117 = v506 + 56;
  v118 = 1 << v506[32];
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v19 = v119 & *(v506 + 7);
  v120 = ((v118 + 63) >> 6);
  i = v120;
  if (v19)
  {
    while (1)
    {
LABEL_67:
      v122 = (*(v23 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v19)))));
      v124 = *v122;
      v123 = v122[1];

      sub_1D8D15664(v508);
      v125 = v527;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v526 = v125;
      v30 = sub_1D8D33C70(v124, v123);
      v127 = v125[2];
      v128 = (v126 & 1) == 0;
      v129 = v127 + v128;
      if (__OFADD__(v127, v128))
      {
        goto LABEL_373;
      }

      v130 = v126;
      if (v125[3] >= v129)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v527 = v125;
          if (v126)
          {
            goto LABEL_74;
          }
        }

        else
        {
          sub_1D8F83490();
          v125 = v526;
          v527 = v526;
          if (v130)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        sub_1D9006290(v129, isUniquelyReferenced_nonNull_native);
        v125 = v526;
        v131 = sub_1D8D33C70(v124, v123);
        if ((v130 & 1) != (v132 & 1))
        {
          goto LABEL_406;
        }

        v30 = v131;
        v527 = v125;
        if (v130)
        {
LABEL_74:

          goto LABEL_78;
        }
      }

      v125[(v30 >> 6) + 8] |= 1 << v30;
      v133 = (v125[6] + 16 * v30);
      *v133 = v124;
      v133[1] = v123;
      *(v125[7] + 8 * v30) = MEMORY[0x1E69E7CC0];
      v134 = v125[2];
      v111 = __OFADD__(v134, 1);
      v135 = v134 + 1;
      if (v111)
      {
        goto LABEL_387;
      }

      v125[2] = v135;
LABEL_78:
      v136 = v125[7];
      v137 = *(v136 + 8 * v30);
      v138 = swift_isUniquelyReferenced_nonNull_native();
      *(v136 + 8 * v30) = v137;
      if ((v138 & 1) == 0)
      {
        v137 = sub_1D8ECCB5C(0, *(v137 + 2) + 1, 1, v137);
        *(v136 + 8 * v30) = v137;
      }

      v140 = *(v137 + 2);
      v139 = *(v137 + 3);
      if (v140 >= v139 >> 1)
      {
        v137 = sub_1D8ECCB5C((v139 > 1), v140 + 1, 1, v137);
        *(v136 + 8 * v30) = v137;
      }

      v120 = i;
      v19 &= v19 - 1;
      *(v137 + 2) = v140 + 1;
      v137[v140 + 32] = 4;
      *&v508 = sub_1D8F034F0;
      v88 = &selRef_redirectURLForStoreCollectionId_;
      v23 = v506;
      if (!v19)
      {
        goto LABEL_63;
      }
    }
  }

  while (1)
  {
LABEL_63:
    v121 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_359;
    }

    if (v121 >= v120)
    {
      break;
    }

    v19 = *&v117[8 * v121];
    ++v14;
    if (v19)
    {
      v14 = v121;
      goto LABEL_67;
    }
  }

  v23 = sub_1D90701C4(v511, v501);
  v141 = 0;
  v19 = 0;
  i = v23;
  v142 = 1 << *(v23 + 32);
  v143 = -1;
  if (v142 < 64)
  {
    v143 = ~(-1 << v142);
  }

  v144 = v23 + 56;
  v14 = v143 & *(v23 + 56);
  v30 = (v142 + 63) >> 6;
  v521 = (v23 + 56);
  if (v14)
  {
    while (1)
    {
LABEL_91:
      v146 = (*(i + 6) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
      v148 = *v146;
      v147 = v146[1];

      sub_1D8D15664(v141);
      v149 = v527;
      v150 = swift_isUniquelyReferenced_nonNull_native();
      v526 = v149;
      v152 = sub_1D8D33C70(v148, v147);
      v153 = v149[2];
      v154 = (v151 & 1) == 0;
      v155 = v153 + v154;
      if (__OFADD__(v153, v154))
      {
        goto LABEL_374;
      }

      v156 = v151;
      if (v149[3] >= v155)
      {
        if (v150)
        {
          v527 = v149;
          if (v151)
          {
            goto LABEL_98;
          }
        }

        else
        {
          sub_1D8F83490();
          v149 = v526;
          v527 = v526;
          if (v156)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
        sub_1D9006290(v155, v150);
        v149 = v526;
        v157 = sub_1D8D33C70(v148, v147);
        if ((v156 & 1) != (v158 & 1))
        {
          goto LABEL_406;
        }

        v152 = v157;
        v527 = v149;
        if (v156)
        {
LABEL_98:

          goto LABEL_102;
        }
      }

      v149[(v152 >> 6) + 8] |= 1 << v152;
      v159 = (v149[6] + 16 * v152);
      *v159 = v148;
      v159[1] = v147;
      *(v149[7] + 8 * v152) = MEMORY[0x1E69E7CC0];
      v160 = v149[2];
      v111 = __OFADD__(v160, 1);
      v161 = v160 + 1;
      if (v111)
      {
        goto LABEL_388;
      }

      v149[2] = v161;
LABEL_102:
      v162 = v149[7];
      v163 = *(v162 + 8 * v152);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v162 + 8 * v152) = v163;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v163 + 16) + 1, 1, v163);
        v163 = v23;
        *(v162 + 8 * v152) = v23;
      }

      isUniquelyReferenced_nonNull_native = *(v163 + 16);
      v164 = *(v163 + 24);
      if (isUniquelyReferenced_nonNull_native >= v164 >> 1)
      {
        v23 = sub_1D8ECCB5C((v164 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v163);
        v163 = v23;
        *(v162 + 8 * v152) = v23;
      }

      v88 = &selRef_redirectURLForStoreCollectionId_;
      v14 &= v14 - 1;
      *(v163 + 16) = isUniquelyReferenced_nonNull_native + 1;
      *(v163 + isUniquelyReferenced_nonNull_native + 32) = 3;
      v141 = sub_1D8F034F0;
      v144 = v521;
      if (!v14)
      {
        goto LABEL_87;
      }
    }
  }

  while (1)
  {
LABEL_87:
    v145 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_360;
    }

    if (v145 >= v30)
    {
      break;
    }

    v14 = *(v144 + 8 * v145);
    ++v19;
    if (v14)
    {
      v19 = v145;
      goto LABEL_91;
    }
  }

  v501 = v141;

  v506 = 0;
  v14 = 0;
  v165 = v518 + 56;
  v166 = 1 << v518[32];
  v167 = -1;
  if (v166 < 64)
  {
    v167 = ~(-1 << v166);
  }

  v19 = v167 & *(v518 + 7);
  v168 = ((v166 + 63) >> 6);
  v30 = v524;
  i = v168;
  if (v19)
  {
    while (1)
    {
LABEL_115:
      v170 = (*(v518 + 6) + ((v14 << 10) | (16 * __clz(__rbit64(v19)))));
      v172 = *v170;
      v171 = v170[1];

      sub_1D8D15664(v506);
      v173 = v527;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v526 = v173;
      v175 = sub_1D8D33C70(v172, v171);
      v176 = v173[2];
      v177 = (v174 & 1) == 0;
      v178 = v176 + v177;
      if (__OFADD__(v176, v177))
      {
        goto LABEL_375;
      }

      v179 = v174;
      if (v173[3] >= v178)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v527 = v173;
          if (v174)
          {
            goto LABEL_122;
          }
        }

        else
        {
          sub_1D8F83490();
          v173 = v526;
          v527 = v526;
          if (v179)
          {
            goto LABEL_122;
          }
        }
      }

      else
      {
        sub_1D9006290(v178, isUniquelyReferenced_nonNull_native);
        v173 = v526;
        v180 = sub_1D8D33C70(v172, v171);
        if ((v179 & 1) != (v181 & 1))
        {
          goto LABEL_406;
        }

        v175 = v180;
        v527 = v173;
        if (v179)
        {
LABEL_122:

          goto LABEL_126;
        }
      }

      v173[(v175 >> 6) + 8] |= 1 << v175;
      v182 = (v173[6] + 16 * v175);
      *v182 = v172;
      v182[1] = v171;
      *(v173[7] + 8 * v175) = MEMORY[0x1E69E7CC0];
      v183 = v173[2];
      v111 = __OFADD__(v183, 1);
      v184 = v183 + 1;
      if (v111)
      {
        goto LABEL_389;
      }

      v173[2] = v184;
LABEL_126:
      v185 = v173[7];
      v186 = *(v185 + 8 * v175);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v185 + 8 * v175) = v186;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v186 + 16) + 1, 1, v186);
        v186 = v23;
        *(v185 + 8 * v175) = v23;
      }

      v188 = *(v186 + 16);
      v187 = *(v186 + 24);
      if (v188 >= v187 >> 1)
      {
        v23 = sub_1D8ECCB5C((v187 > 1), v188 + 1, 1, v186);
        v186 = v23;
        *(v185 + 8 * v175) = v23;
      }

      v30 = v524;
      v168 = i;
      v19 &= v19 - 1;
      *(v186 + 16) = v188 + 1;
      *(v186 + v188 + 32) = 1;
      v506 = sub_1D8F034F0;
      v88 = &selRef_redirectURLForStoreCollectionId_;
      if (!v19)
      {
        goto LABEL_111;
      }
    }
  }

  while (1)
  {
LABEL_111:
    v169 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_361;
    }

    if (v169 >= v168)
    {
      break;
    }

    v19 = *&v165[8 * v169];
    ++v14;
    if (v19)
    {
      v14 = v169;
      goto LABEL_115;
    }
  }

  v519 = 0;
  v14 = 0;
  v189 = v517 + 56;
  v190 = 1 << v517[32];
  v191 = -1;
  if (v190 < 64)
  {
    v191 = ~(-1 << v190);
  }

  v19 = v191 & *(v517 + 7);
  v192 = ((v190 + 63) >> 6);
  i = v192;
  if (v19)
  {
LABEL_139:
    while (1)
    {
      v194 = (*(v517 + 6) + ((v14 << 10) | (16 * __clz(__rbit64(v19)))));
      v196 = *v194;
      v195 = v194[1];

      sub_1D8D15664(v519);
      v197 = v527;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v526 = v197;
      v198 = sub_1D8D33C70(v196, v195);
      v200 = v199;
      v201 = *(v197 + 16);
      v202 = (v199 & 1) == 0;
      if (__OFADD__(v201, v202))
      {
        break;
      }

      v203 = v198;
      v204 = sub_1D8F0312C(isUniquelyReferenced_nonNull_native, v201 + v202);
      v205 = v526;
      if (v204)
      {
        v206 = sub_1D8D33C70(v196, v195);
        if ((v200 & 1) != (v207 & 1))
        {
          goto LABEL_406;
        }

        v203 = v206;
      }

      v527 = v205;
      if (v200)
      {
      }

      else
      {
        v205[(v203 >> 6) + 8] |= 1 << v203;
        v208 = (v205[6] + 16 * v203);
        *v208 = v196;
        v208[1] = v195;
        *(v205[7] + 8 * v203) = MEMORY[0x1E69E7CC0];
        v209 = v205[2];
        v111 = __OFADD__(v209, 1);
        v210 = v209 + 1;
        if (v111)
        {
          goto LABEL_390;
        }

        v205[2] = v210;
      }

      v211 = v205[7];
      v212 = *(v211 + 8 * v203);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v211 + 8 * v203) = v212;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v212 + 16) + 1, 1, v212);
        v212 = v23;
        *(v211 + 8 * v203) = v23;
      }

      v214 = *(v212 + 16);
      v213 = *(v212 + 24);
      if (v214 >= v213 >> 1)
      {
        v23 = sub_1D8ECCB5C((v213 > 1), v214 + 1, 1, v212);
        v212 = v23;
        *(v211 + 8 * v203) = v23;
      }

      v19 &= v19 - 1;
      *(v212 + 16) = v214 + 1;
      *(v212 + v214 + 32) = 2;
      v519 = sub_1D8F034F0;
      v88 = &selRef_redirectURLForStoreCollectionId_;
      v30 = v524;
      v192 = i;
      if (!v19)
      {
        goto LABEL_135;
      }
    }

LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
    goto LABEL_380;
  }

  while (1)
  {
LABEL_135:
    v193 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_362;
    }

    if (v193 >= v192)
    {
      break;
    }

    v19 = *&v189[8 * v193];
    ++v14;
    if (v19)
    {
      v14 = v193;
      goto LABEL_139;
    }
  }

  v23 = sub_1D90701C4(v511, v30);
  v215 = 0;
  v19 = 0;
  v216 = 1 << *(v23 + 32);
  v217 = -1;
  if (v216 < 64)
  {
    v217 = ~(-1 << v216);
  }

  v218 = v23 + 56;
  v14 = v217 & *(v23 + 56);
  v30 = (v216 + 63) >> 6;
  v524 = v23 + 56;
  i = v23;
  if (v14)
  {
LABEL_160:
    while (1)
    {
      v220 = (*(i + 6) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
      v222 = *v220;
      v221 = v220[1];

      sub_1D8D15664(v215);
      v223 = v527;
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v526 = v223;
      v225 = sub_1D8D33C70(v222, v221);
      v227 = v226;
      v228 = *(v223 + 16);
      v229 = (v226 & 1) == 0;
      if (__OFADD__(v228, v229))
      {
        goto LABEL_377;
      }

      v230 = v225;
      v231 = sub_1D8F0312C(v224, v228 + v229);
      v232 = v526;
      if (v231)
      {
        v233 = sub_1D8D33C70(v222, v221);
        if ((v227 & 1) != (v234 & 1))
        {
          goto LABEL_406;
        }

        v230 = v233;
      }

      v527 = v232;
      if (v227)
      {
      }

      else
      {
        v232[(v230 >> 6) + 8] |= 1 << v230;
        v235 = (v232[6] + 16 * v230);
        *v235 = v222;
        v235[1] = v221;
        *(v232[7] + 8 * v230) = MEMORY[0x1E69E7CC0];
        v236 = v232[2];
        v111 = __OFADD__(v236, 1);
        v237 = v236 + 1;
        if (v111)
        {
          goto LABEL_391;
        }

        v232[2] = v237;
      }

      v238 = v232[7];
      v239 = *(v238 + 8 * v230);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v238 + 8 * v230) = v239;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v239 + 16) + 1, 1, v239);
        v239 = v23;
        *(v238 + 8 * v230) = v23;
      }

      isUniquelyReferenced_nonNull_native = *(v239 + 16);
      v240 = *(v239 + 24);
      if (isUniquelyReferenced_nonNull_native >= v240 >> 1)
      {
        v23 = sub_1D8ECCB5C((v240 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v239);
        v239 = v23;
        *(v238 + 8 * v230) = v23;
      }

      v88 = &selRef_redirectURLForStoreCollectionId_;
      v14 &= v14 - 1;
      *(v239 + 16) = isUniquelyReferenced_nonNull_native + 1;
      *(v239 + isUniquelyReferenced_nonNull_native + 32) = 5;
      v215 = sub_1D8F034F0;
      v218 = v524;
      if (!v14)
      {
        goto LABEL_156;
      }
    }
  }

  while (1)
  {
LABEL_156:
    v219 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_363;
    }

    if (v219 >= v30)
    {
      break;
    }

    v14 = *(v218 + 8 * v219);
    ++v19;
    if (v14)
    {
      v19 = v219;
      goto LABEL_160;
    }
  }

  v514 = v215;

  v241 = v523 + 56;
  v242 = 1 << *(v523 + 32);
  v243 = -1;
  if (v242 < 64)
  {
    v243 = ~(-1 << v242);
  }

  v14 = v243 & *(v523 + 56);
  v244 = ((v242 + 63) >> 6);

  v517 = 0;
  v518 = 0;
  v19 = 0;
  i = v244;
  if (v14)
  {
LABEL_181:
    while (1)
    {
      v246 = (*(v523 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
      v248 = *v246;
      v247 = v246[1];

      sub_1D8D15664(v518);
      v249 = v527;
      v250 = swift_isUniquelyReferenced_nonNull_native();
      v526 = v249;
      v251 = sub_1D8D33C70(v248, v247);
      v253 = v252;
      v254 = *(v249 + 16);
      v255 = (v252 & 1) == 0;
      if (__OFADD__(v254, v255))
      {
        goto LABEL_378;
      }

      v256 = v251;
      v257 = sub_1D8F0312C(v250, v254 + v255);
      v258 = v526;
      if (v257)
      {
        v259 = sub_1D8D33C70(v248, v247);
        if ((v253 & 1) != (v260 & 1))
        {
          goto LABEL_406;
        }

        v256 = v259;
      }

      v527 = v258;
      if ((v253 & 1) == 0)
      {
        v258[(v256 >> 6) + 8] |= 1 << v256;
        v261 = (v258[6] + 16 * v256);
        *v261 = v248;
        v261[1] = v247;
        *(v258[7] + 8 * v256) = MEMORY[0x1E69E7CC0];
        v262 = v258[2];
        v111 = __OFADD__(v262, 1);
        v263 = v262 + 1;
        if (v111)
        {
          goto LABEL_392;
        }

        v258[2] = v263;
      }

      v264 = v258[7];
      v265 = *(v264 + 8 * v256);
      v266 = swift_isUniquelyReferenced_nonNull_native();
      *(v264 + 8 * v256) = v265;
      if ((v266 & 1) == 0)
      {
        v265 = sub_1D8ECCB5C(0, *(v265 + 2) + 1, 1, v265);
        *(v264 + 8 * v256) = v265;
      }

      v268 = *(v265 + 2);
      v267 = *(v265 + 3);
      if (v268 >= v267 >> 1)
      {
        v265 = sub_1D8ECCB5C((v267 > 1), v268 + 1, 1, v265);
        *(v264 + 8 * v256) = v265;
      }

      *(v265 + 2) = v268 + 1;
      v265[v268 + 32] = 8;
      sub_1D8D15664(v517);
      v269 = v527;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v526 = v269;
      v270 = sub_1D8D33C70(v248, v247);
      v272 = v271;
      v273 = *(v269 + 16);
      v274 = (v271 & 1) == 0;
      if (__OFADD__(v273, v274))
      {
        goto LABEL_379;
      }

      v275 = v270;
      v276 = sub_1D8F0312C(isUniquelyReferenced_nonNull_native, v273 + v274);
      v277 = v526;
      if (v276)
      {
        v278 = sub_1D8D33C70(v248, v247);
        if ((v272 & 1) != (v279 & 1))
        {
          goto LABEL_406;
        }

        v275 = v278;
      }

      v527 = v277;
      if (v272)
      {
      }

      else
      {
        v277[(v275 >> 6) + 8] |= 1 << v275;
        v280 = (v277[6] + 16 * v275);
        *v280 = v248;
        v280[1] = v247;
        *(v277[7] + 8 * v275) = MEMORY[0x1E69E7CC0];
        v281 = v277[2];
        v111 = __OFADD__(v281, 1);
        v282 = v281 + 1;
        if (v111)
        {
          goto LABEL_393;
        }

        v277[2] = v282;
      }

      v283 = v277[7];
      v30 = *(v283 + 8 * v275);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v283 + 8 * v275) = v30;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v30 + 16) + 1, 1, v30);
        v30 = v23;
        *(v283 + 8 * v275) = v23;
      }

      v285 = *(v30 + 16);
      v284 = *(v30 + 24);
      if (v285 >= v284 >> 1)
      {
        v23 = sub_1D8ECCB5C((v284 > 1), v285 + 1, 1, v30);
        v30 = v23;
        *(v283 + 8 * v275) = v23;
      }

      v244 = i;
      v14 &= v14 - 1;
      *(v30 + 16) = v285 + 1;
      *(v30 + v285 + 32) = 0;
      v517 = sub_1D8F034F0;
      v518 = sub_1D8F034F0;
      v88 = &selRef_redirectURLForStoreCollectionId_;
      if (!v14)
      {
        goto LABEL_177;
      }
    }
  }

  while (1)
  {
LABEL_177:
    v245 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_364;
    }

    if (v245 >= v244)
    {
      break;
    }

    v14 = *(v241 + 8 * v245);
    ++v19;
    if (v14)
    {
      v19 = v245;
      goto LABEL_181;
    }
  }

  v286 = v505 + 56;
  v287 = 1 << *(v505 + 32);
  v288 = -1;
  if (v287 < 64)
  {
    v288 = ~(-1 << v287);
  }

  v14 = v288 & *(v505 + 56);
  v30 = (v287 + 63) >> 6;

  v289 = 0;
  v19 = 0;
  v524 = v30;
  i = 0;
  if (v14)
  {
LABEL_213:
    while (1)
    {
      v291 = (*(v505 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
      v293 = *v291;
      v292 = v291[1];

      sub_1D8D15664(v289);
      v294 = v527;
      v295 = swift_isUniquelyReferenced_nonNull_native();
      v526 = v294;
      v296 = sub_1D8D33C70(v293, v292);
      v298 = v297;
      v299 = *(v294 + 16);
      v300 = (v297 & 1) == 0;
      if (__OFADD__(v299, v300))
      {
        break;
      }

      v301 = v296;
      v302 = sub_1D8F0312C(v295, v299 + v300);
      v303 = v526;
      if (v302)
      {
        v304 = sub_1D8D33C70(v293, v292);
        if ((v298 & 1) != (v305 & 1))
        {
          goto LABEL_406;
        }

        v301 = v304;
      }

      v527 = v303;
      if ((v298 & 1) == 0)
      {
        v303[(v301 >> 6) + 8] |= 1 << v301;
        v306 = (v303[6] + 16 * v301);
        *v306 = v293;
        v306[1] = v292;
        *(v303[7] + 8 * v301) = MEMORY[0x1E69E7CC0];
        v307 = v303[2];
        v111 = __OFADD__(v307, 1);
        v308 = v307 + 1;
        if (v111)
        {
          goto LABEL_394;
        }

        v303[2] = v308;
      }

      v309 = v303[7];
      v310 = *(v309 + 8 * v301);
      v311 = swift_isUniquelyReferenced_nonNull_native();
      *(v309 + 8 * v301) = v310;
      if ((v311 & 1) == 0)
      {
        v310 = sub_1D8ECCB5C(0, *(v310 + 2) + 1, 1, v310);
        *(v309 + 8 * v301) = v310;
      }

      v313 = *(v310 + 2);
      v312 = *(v310 + 3);
      v314 = i;
      if (v313 >= v312 >> 1)
      {
        v310 = sub_1D8ECCB5C((v312 > 1), v313 + 1, 1, v310);
        v314 = i;
        *(v309 + 8 * v301) = v310;
      }

      *(v310 + 2) = v313 + 1;
      v310[v313 + 32] = 9;
      sub_1D8D15664(v314);
      v315 = v527;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v526 = v315;
      v316 = sub_1D8D33C70(v293, v292);
      v318 = v317;
      v319 = *(v315 + 16);
      v320 = (v317 & 1) == 0;
      if (__OFADD__(v319, v320))
      {
        goto LABEL_381;
      }

      v321 = v316;
      v322 = sub_1D8F0312C(isUniquelyReferenced_nonNull_native, v319 + v320);
      v323 = v526;
      if (v322)
      {
        v324 = sub_1D8D33C70(v293, v292);
        if ((v318 & 1) != (v325 & 1))
        {
          goto LABEL_406;
        }

        v321 = v324;
      }

      v527 = v323;
      if (v318)
      {
      }

      else
      {
        v323[(v321 >> 6) + 8] |= 1 << v321;
        v326 = (v323[6] + 16 * v321);
        *v326 = v293;
        v326[1] = v292;
        *(v323[7] + 8 * v321) = MEMORY[0x1E69E7CC0];
        v327 = v323[2];
        v111 = __OFADD__(v327, 1);
        v328 = v327 + 1;
        if (v111)
        {
          goto LABEL_395;
        }

        v323[2] = v328;
      }

      v329 = v323[7];
      v330 = *(v329 + 8 * v321);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v329 + 8 * v321) = v330;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v330 + 16) + 1, 1, v330);
        v330 = v23;
        *(v329 + 8 * v321) = v23;
      }

      v332 = *(v330 + 16);
      v331 = *(v330 + 24);
      if (v332 >= v331 >> 1)
      {
        v23 = sub_1D8ECCB5C((v331 > 1), v332 + 1, 1, v330);
        v330 = v23;
        *(v329 + 8 * v321) = v23;
      }

      v14 &= v14 - 1;
      *(v330 + 16) = v332 + 1;
      *(v330 + v332 + 32) = 0;
      v289 = sub_1D8F034F0;
      v88 = &selRef_redirectURLForStoreCollectionId_;
      v30 = v524;
      i = sub_1D8F034F0;
      if (!v14)
      {
        goto LABEL_209;
      }
    }

LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
    goto LABEL_382;
  }

  while (1)
  {
LABEL_209:
    v290 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_365;
    }

    if (v290 >= v30)
    {
      break;
    }

    v14 = *(v286 + 8 * v290);
    ++v19;
    if (v14)
    {
      v19 = v290;
      goto LABEL_213;
    }
  }

  v333 = v504 + 56;
  v334 = 1 << *(v504 + 32);
  v335 = -1;
  if (v334 < 64)
  {
    v335 = ~(-1 << v334);
  }

  v14 = v335 & *(v504 + 56);
  v336 = (v334 + 63) >> 6;

  v337 = 0;
  v19 = 0;
  v520 = v336;
  v521 = v289;
  v524 = 0;
  if (v14)
  {
LABEL_245:
    while (1)
    {
      v339 = (*(v504 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
      v341 = *v339;
      v340 = v339[1];

      sub_1D8D15664(v337);
      v342 = v527;
      v343 = swift_isUniquelyReferenced_nonNull_native();
      v526 = v342;
      v344 = sub_1D8D33C70(v341, v340);
      v346 = v345;
      v347 = *(v342 + 16);
      v348 = (v345 & 1) == 0;
      if (__OFADD__(v347, v348))
      {
        break;
      }

      v349 = v344;
      v350 = sub_1D8F0312C(v343, v347 + v348);
      v351 = v526;
      if (v350)
      {
        v352 = sub_1D8D33C70(v341, v340);
        if ((v346 & 1) != (v353 & 1))
        {
          goto LABEL_406;
        }

        v349 = v352;
      }

      v527 = v351;
      if ((v346 & 1) == 0)
      {
        v351[(v349 >> 6) + 8] |= 1 << v349;
        v354 = (v351[6] + 16 * v349);
        *v354 = v341;
        v354[1] = v340;
        *(v351[7] + 8 * v349) = MEMORY[0x1E69E7CC0];
        v355 = v351[2];
        v111 = __OFADD__(v355, 1);
        v356 = v355 + 1;
        if (v111)
        {
          goto LABEL_396;
        }

        v351[2] = v356;
      }

      v357 = v351[7];
      v358 = *(v357 + 8 * v349);
      v359 = swift_isUniquelyReferenced_nonNull_native();
      *(v357 + 8 * v349) = v358;
      if ((v359 & 1) == 0)
      {
        v358 = sub_1D8ECCB5C(0, *(v358 + 2) + 1, 1, v358);
        *(v357 + 8 * v349) = v358;
      }

      v361 = *(v358 + 2);
      v360 = *(v358 + 3);
      if (v361 >= v360 >> 1)
      {
        v358 = sub_1D8ECCB5C((v360 > 1), v361 + 1, 1, v358);
        *(v357 + 8 * v349) = v358;
      }

      *(v358 + 2) = v361 + 1;
      v358[v361 + 32] = 10;
      sub_1D8D15664(v524);
      v362 = v527;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v526 = v362;
      v363 = sub_1D8D33C70(v341, v340);
      v365 = v364;
      v366 = *(v362 + 16);
      v367 = (v364 & 1) == 0;
      if (__OFADD__(v366, v367))
      {
        goto LABEL_383;
      }

      v368 = v363;
      v369 = sub_1D8F0312C(isUniquelyReferenced_nonNull_native, v366 + v367);
      v370 = v526;
      if (v369)
      {
        v371 = sub_1D8D33C70(v341, v340);
        if ((v365 & 1) != (v372 & 1))
        {
          goto LABEL_406;
        }

        v368 = v371;
      }

      v527 = v370;
      if (v365)
      {
      }

      else
      {
        v370[(v368 >> 6) + 8] |= 1 << v368;
        v373 = (v370[6] + 16 * v368);
        *v373 = v341;
        v373[1] = v340;
        *(v370[7] + 8 * v368) = MEMORY[0x1E69E7CC0];
        v374 = v370[2];
        v111 = __OFADD__(v374, 1);
        v375 = v374 + 1;
        if (v111)
        {
          goto LABEL_397;
        }

        v370[2] = v375;
      }

      v376 = v370[7];
      v30 = *(v376 + 8 * v368);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v376 + 8 * v368) = v30;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v30 + 16) + 1, 1, v30);
        v30 = v23;
        *(v376 + 8 * v368) = v23;
      }

      v378 = *(v30 + 16);
      v377 = *(v30 + 24);
      if (v378 >= v377 >> 1)
      {
        v23 = sub_1D8ECCB5C((v377 > 1), v378 + 1, 1, v30);
        v30 = v23;
        *(v376 + 8 * v368) = v23;
      }

      v336 = v520;
      v14 &= v14 - 1;
      *(v30 + 16) = v378 + 1;
      *(v30 + v378 + 32) = 0;
      v337 = sub_1D8F034F0;
      v88 = &selRef_redirectURLForStoreCollectionId_;
      v524 = sub_1D8F034F0;
      if (!v14)
      {
        goto LABEL_241;
      }
    }

LABEL_382:
    __break(1u);
LABEL_383:
    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
LABEL_386:
    __break(1u);
LABEL_387:
    __break(1u);
LABEL_388:
    __break(1u);
LABEL_389:
    __break(1u);
LABEL_390:
    __break(1u);
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
LABEL_394:
    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
LABEL_399:
    __break(1u);
LABEL_400:
    __break(1u);
LABEL_401:
    __break(1u);
    goto LABEL_402;
  }

  while (1)
  {
LABEL_241:
    v338 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_366;
    }

    if (v338 >= v336)
    {
      break;
    }

    v14 = *(v333 + 8 * v338);
    ++v19;
    if (v14)
    {
      v19 = v338;
      goto LABEL_245;
    }
  }

  v520 = v337;

  v30 = v504;

  isUniquelyReferenced_nonNull_native = 0;
  v19 = 0;
  v379 = v502;
  v380 = v502 + 56;
  v381 = 1 << *(v502 + 32);
  v382 = -1;
  if (v381 < 64)
  {
    v382 = ~(-1 << v381);
  }

  v14 = v382 & *(v502 + 56);
  v383 = (v381 + 63) >> 6;
  v505 = v383;
  v523 = 0;
  if (v14)
  {
    while (1)
    {
LABEL_277:
      v385 = (*(v379 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v14)))));
      v387 = *v385;
      v386 = v385[1];

      sub_1D8D15664(isUniquelyReferenced_nonNull_native);
      v388 = v527;
      v389 = swift_isUniquelyReferenced_nonNull_native();
      v526 = v388;
      v390 = sub_1D8D33C70(v387, v386);
      v392 = v391;
      v393 = *(v388 + 16);
      v394 = (v391 & 1) == 0;
      if (__OFADD__(v393, v394))
      {
        goto LABEL_384;
      }

      v395 = v390;
      v396 = sub_1D8F0312C(v389, v393 + v394);
      v397 = v526;
      if (v396)
      {
        v398 = sub_1D8D33C70(v387, v386);
        if ((v392 & 1) != (v399 & 1))
        {
          goto LABEL_406;
        }

        v395 = v398;
      }

      v527 = v397;
      if ((v392 & 1) == 0)
      {
        v397[(v395 >> 6) + 8] |= 1 << v395;
        v400 = (v397[6] + 16 * v395);
        *v400 = v387;
        v400[1] = v386;
        *(v397[7] + 8 * v395) = MEMORY[0x1E69E7CC0];
        v401 = v397[2];
        v111 = __OFADD__(v401, 1);
        v402 = v401 + 1;
        if (v111)
        {
          goto LABEL_398;
        }

        v397[2] = v402;
      }

      v403 = v397[7];
      v404 = *(v403 + 8 * v395);
      v405 = swift_isUniquelyReferenced_nonNull_native();
      *(v403 + 8 * v395) = v404;
      if ((v405 & 1) == 0)
      {
        v404 = sub_1D8ECCB5C(0, *(v404 + 2) + 1, 1, v404);
        *(v403 + 8 * v395) = v404;
      }

      v407 = *(v404 + 2);
      v406 = *(v404 + 3);
      if (v407 >= v406 >> 1)
      {
        v404 = sub_1D8ECCB5C((v406 > 1), v407 + 1, 1, v404);
        *(v403 + 8 * v395) = v404;
      }

      *(v404 + 2) = v407 + 1;
      v404[v407 + 32] = 11;
      sub_1D8D15664(v523);
      v408 = v527;
      v409 = swift_isUniquelyReferenced_nonNull_native();
      v526 = v408;
      v410 = sub_1D8D33C70(v387, v386);
      v412 = v411;
      v413 = *(v408 + 16);
      v414 = (v411 & 1) == 0;
      if (__OFADD__(v413, v414))
      {
        goto LABEL_385;
      }

      v415 = v410;
      v416 = sub_1D8F0312C(v409, v413 + v414);
      v417 = v526;
      if (v416)
      {
        v418 = sub_1D8D33C70(v387, v386);
        v379 = v502;
        if ((v412 & 1) != (v419 & 1))
        {
          goto LABEL_406;
        }

        v415 = v418;
        v527 = v417;
        if (v412)
        {
LABEL_295:

          goto LABEL_296;
        }
      }

      else
      {
        v379 = v502;
        v527 = v526;
        if (v412)
        {
          goto LABEL_295;
        }
      }

      v417[(v415 >> 6) + 8] |= 1 << v415;
      v420 = (v417[6] + 16 * v415);
      *v420 = v387;
      v420[1] = v386;
      *(v417[7] + 8 * v415) = MEMORY[0x1E69E7CC0];
      v421 = v417[2];
      v111 = __OFADD__(v421, 1);
      v422 = v421 + 1;
      if (v111)
      {
        goto LABEL_399;
      }

      v417[2] = v422;
LABEL_296:
      v423 = v417[7];
      v30 = *(v423 + 8 * v415);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v423 + 8 * v415) = v30;
      if ((v23 & 1) == 0)
      {
        v23 = sub_1D8ECCB5C(0, *(v30 + 16) + 1, 1, v30);
        v30 = v23;
        *(v423 + 8 * v415) = v23;
      }

      v425 = *(v30 + 16);
      v424 = *(v30 + 24);
      if (v425 >= v424 >> 1)
      {
        v23 = sub_1D8ECCB5C((v424 > 1), v425 + 1, 1, v30);
        v30 = v23;
        *(v423 + 8 * v415) = v23;
      }

      v88 = &selRef_redirectURLForStoreCollectionId_;
      v14 &= v14 - 1;
      *(v30 + 16) = v425 + 1;
      *(v30 + v425 + 32) = 0;
      isUniquelyReferenced_nonNull_native = sub_1D8F034F0;
      v383 = v505;
      v523 = sub_1D8F034F0;
      if (!v14)
      {
        goto LABEL_273;
      }
    }
  }

  while (1)
  {
LABEL_273:
    v384 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_367;
    }

    if (v384 >= v383)
    {
      break;
    }

    v14 = *(v380 + 8 * v384);
    ++v19;
    if (v14)
    {
      v19 = v384;
      goto LABEL_277;
    }
  }

  v19 = 0;
  v30 = 0;
  v426 = 0;
  v427 = v503 + 56;
  v428 = 1 << *(v503 + 32);
  v429 = -1;
  if (v428 < 64)
  {
    v429 = ~(-1 << v428);
  }

  v430 = v429 & *(v503 + 56);
  v431 = (v428 + 63) >> 6;
  if (v430)
  {
    while (1)
    {
      v14 = v426;
LABEL_309:
      v432 = __clz(__rbit64(v430));
      v430 &= v430 - 1;
      v433 = (*(v503 + 48) + ((v14 << 10) | (16 * v432)));
      v434 = *v433;
      v435 = v433[1];

      if (sub_1D8EF0850(v434, v435, v511))
      {
        sub_1D8D15664(v30);
        v436 = v434;
        v437 = v527;
        v438 = swift_isUniquelyReferenced_nonNull_native();
        v526 = v437;
        v505 = v436;
        v504 = sub_1D8D33C70(v436, v435);
        v440 = v439;
        v441 = *(v437 + 16);
        v442 = (v439 & 1) == 0;
        if (__OFADD__(v441, v442))
        {
          goto LABEL_400;
        }

        v443 = sub_1D8F0312C(v438, v441 + v442);
        v444 = v526;
        if (v443)
        {
          v445 = sub_1D8D33C70(v505, v435);
          if ((v440 & 1) != (v446 & 1))
          {
            goto LABEL_406;
          }

          v447 = v445;
        }

        else
        {
          v447 = v504;
        }

        v527 = v444;
        if ((v440 & 1) == 0)
        {
          v444[(v447 >> 6) + 8] |= 1 << v447;
          v448 = (v444[6] + 16 * v447);
          *v448 = v505;
          v448[1] = v435;
          *(v444[7] + 8 * v447) = MEMORY[0x1E69E7CC0];
          v449 = v444[2];
          v111 = __OFADD__(v449, 1);
          v450 = v449 + 1;
          if (v111)
          {
            goto LABEL_403;
          }

          v444[2] = v450;
        }

        v451 = v444[7];
        v452 = *(v451 + 8 * v447);
        v453 = swift_isUniquelyReferenced_nonNull_native();
        *(v451 + 8 * v447) = v452;
        v504 = v447;
        v502 = v451;
        if ((v453 & 1) == 0)
        {
          v452 = sub_1D8ECCB5C(0, *(v452 + 2) + 1, 1, v452);
          *(v451 + 8 * v447) = v452;
        }

        v455 = *(v452 + 2);
        v454 = *(v452 + 3);
        if (v455 >= v454 >> 1)
        {
          v452 = sub_1D8ECCB5C((v454 > 1), v455 + 1, 1, v452);
          *(v502 + 8 * v504) = v452;
        }

        *(v452 + 2) = v455 + 1;
        v452[v455 + 32] = 12;
        sub_1D8D15664(v19);
        v456 = v527;
        v457 = swift_isUniquelyReferenced_nonNull_native();
        v526 = v456;
        v458 = sub_1D8D33C70(v505, v435);
        v460 = v459;
        v461 = *(v456 + 16);
        v462 = (v459 & 1) == 0;
        if (__OFADD__(v461, v462))
        {
          goto LABEL_401;
        }

        v463 = v458;
        v464 = sub_1D8F0312C(v457, v461 + v462);
        v465 = v526;
        if (v464)
        {
          v466 = sub_1D8D33C70(v505, v435);
          if ((v460 & 1) != (v467 & 1))
          {
            goto LABEL_406;
          }

          v463 = v466;
        }

        v468 = v505;
        v527 = v465;
        if (v460)
        {
        }

        else
        {
          v465[(v463 >> 6) + 8] |= 1 << v463;
          v469 = (v465[6] + 16 * v463);
          *v469 = v468;
          v469[1] = v435;
          *(v465[7] + 8 * v463) = MEMORY[0x1E69E7CC0];
          v470 = v465[2];
          v111 = __OFADD__(v470, 1);
          v471 = v470 + 1;
          if (v111)
          {
            goto LABEL_404;
          }

          v465[2] = v471;
        }

        v472 = v465[7];
        v473 = *(v472 + 8 * v463);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        *(v472 + 8 * v463) = v473;
        v505 = v472;
        if ((v23 & 1) == 0)
        {
          v23 = sub_1D8ECCB5C(0, *(v473 + 16) + 1, 1, v473);
          v473 = v23;
          *(v472 + 8 * v463) = v23;
        }

        v475 = *(v473 + 16);
        v474 = *(v473 + 24);
        if (v475 >= v474 >> 1)
        {
          v23 = sub_1D8ECCB5C((v474 > 1), v475 + 1, 1, v473);
          v473 = v23;
          *(v505 + 8 * v463) = v23;
        }

        *(v473 + 16) = v475 + 1;
        *(v473 + v475 + 32) = 0;
        v19 = sub_1D8F034F0;
        v30 = sub_1D8F034F0;
      }

      else
      {
      }

      v426 = v14;
      v88 = &selRef_redirectURLForStoreCollectionId_;
      if (!v430)
      {
        goto LABEL_306;
      }
    }
  }

  while (1)
  {
LABEL_306:
    v14 = v426 + 1;
    if (__OFADD__(v426, 1))
    {
      goto LABEL_368;
    }

    if (v14 >= v431)
    {
      break;
    }

    v430 = *(v427 + 8 * v14);
    ++v426;
    if (v430)
    {
      goto LABEL_309;
    }
  }

  if ((v513 & 1) == 0)
  {

    swift_unknownObjectRelease();
    v24 = v522;
    v81 = v501;
LABEL_342:

    sub_1D8D15664(v509);
    sub_1D8D15664(v508);
    sub_1D8D15664(v81);
    *v24 = v527;
    v44 = v506;
    goto LABEL_3;
  }

  v476 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v477 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v478 = [v497 predicateForAllEpisodesOnPodcastUuid_];

  [v476 v88[283]];
  v74 = v516;
  v479 = sub_1D917908C();
  v24 = v522;
  v81 = v501;
  if (v74)
  {

    swift_unknownObjectRelease();
    v79 = v509;
    v80 = v508;
    v44 = v506;
    goto LABEL_2;
  }

  v480 = v479;
  v481 = sub_1D8FBFDC8(v479);
  if (!v481)
  {
    swift_unknownObjectRelease();

    goto LABEL_342;
  }

  v482 = v481;
  v512 = v476;
  if (v481 >= 1)
  {
    v483 = 0;
    v513 = v480 & 0xC000000000000001;
    v516 = isUniquelyReferenced_nonNull_native;
    do
    {
      if (v513)
      {
        v484 = MEMORY[0x1DA72AA90](v483, v480);
      }

      else
      {
        v484 = *(v480 + 8 * v483 + 32);
      }

      v485 = v484;
      v486 = [v484 uuid];
      if (v486)
      {
        v487 = v482;
        v488 = v480;
        v489 = v486;
        v490 = sub_1D917820C();
        v492 = v491;

        if (*(v527 + 16) && (, sub_1D8D33C70(v490, v492), v494 = v493, , (v494 & 1) != 0))
        {
        }

        else
        {
          sub_1D8F7CF00(&unk_1F545D9A0, v490, v492);
        }

        v81 = v501;
        v480 = v488;
        v482 = v487;
      }

      ++v483;

      isUniquelyReferenced_nonNull_native = v516;
    }

    while (v482 != v483);
    swift_unknownObjectRelease();

    v24 = v522;
    goto LABEL_342;
  }

LABEL_402:
  __break(1u);
LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

id sub_1D8EF9090(void *a1, uint64_t a2, SEL *a3)
{
  v13 = *v3;
  v7 = *(v3 + 2);
  v8 = *(v3 + 24);
  result = [a1 uuid];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() *a3];

    v12 = sub_1D8EF9BA0(v11, a2);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D8EF9198(void *a1, uint64_t a2)
{
  v11 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 24);
  result = [a1 uuid];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() predicateForAutomaticDeletionOnShow:result deletePlayedEpisodes:objc_msgSend(a1 episodeLimit:{sel_deletePlayedEpisodesResolvedValue), objc_msgSend(a1, sel_episodeLimitResolvedValue)}];

    v10 = sub_1D8EF9BA0(v9, a2);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D8EF9298(void *a1, uint64_t a2)
{
  v14 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 24);
  v7 = objc_opt_self();
  v8 = [v7 predicateForDownloadBehavior_];
  result = [a1 uuid];
  if (result)
  {
    v10 = result;
    v11 = [v7 predicateForAllEpisodesOnPodcastUuid_];

    v12 = [v8 AND_];
    v13 = sub_1D8EF9BA0(v12, a2);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DownloadStateChecker.episodesToBePurged(in:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84[12] = *MEMORY[0x1E69E9840];
  v77 = sub_1D9176C2C();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v78 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66F0, &qword_1D9192190);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v64 - v13);
  v79[3] = MEMORY[0x1E69E7CD0];
  v80 = MEMORY[0x1E69E7CD0];
  v79[2] = MEMORY[0x1E69E7CD0];
  v79[1] = MEMORY[0x1E69E7CD0];
  v81 = a2;
  v82 = a3;
  v83 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66F8, &qword_1D9193648);
  result = sub_1D917905C();
  if (!v3)
  {
    v76 = v14;
    v16 = v84[0];
    v17 = *(v84[0] + 16);
    if (!v17)
    {

      result = MEMORY[0x1E69E7CD0];
      goto LABEL_27;
    }

    v75 = *(v10 + 48);
    v18 = objc_opt_self();
    v19 = v7;
    v20 = v18;
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v64[1] = v16;
    v22 = v16 + v21;
    v74 = (v19 + 32);
    v67 = (v19 + 16);
    v73 = *(v11 + 72);
    v70 = *"GJ\b@";
    v72 = (v19 + 8);
    v66 = *MEMORY[0x1E696A998];
    *&v23 = 136315138;
    v68 = v23;
    v65 = xmmword_1D9189080;
    v69 = v18;
    while (1)
    {
      v24 = v76;
      sub_1D8D088B4(v22, v76, &qword_1ECAB66F0, &qword_1D9192190);
      v26 = *v24;
      v25 = v24[1];
      (*v74)(v78, v24 + v75, v77);
      v84[0] = 65542;
      v27 = sub_1D9176B1C();
      v79[0] = 0;
      v28 = [v20 fileHandleForReadingFromURL:v27 error:v79];

      if (v28)
      {
        v29 = v79[0];
        v30 = [v28 fileDescriptor];
        v31 = ffsctl(v30, v70, v84, 0);
        if (!v31)
        {

          if ((v84[0] & 0x8000) == 0 || (v84[0] & 6) == 0)
          {
            sub_1D8F4EC88();
            if ((v60 & 0x800) == 0 || (v60 & 6) == 0)
            {
              sub_1D8F4EC88();
              if ((v61 & 0x400) == 0 || (v61 & 6) == 0)
              {
                sub_1D8F4EC88();
                if ((v62 & 0x200) == 0 || (v62 & 6) == 0)
                {
                  (*v72)(v78, v77);

                  goto LABEL_17;
                }
              }
            }
          }

          sub_1D8D19AFC(v84, v26, v25);

          goto LABEL_16;
        }

        v32 = v31;

        sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
        v33 = v17;
        inited = swift_initStackObject();
        *(inited + 16) = v65;
        *(inited + 32) = sub_1D917820C();
        v35 = inited + 32;
        *(inited + 40) = v36;
        v37 = v22;
        v38 = v77;
        *(inited + 72) = v77;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
        (*v67)(boxed_opaque_existential_0, v78, v38);
        v40 = sub_1D8E2696C(inited);
        v17 = v33;
        swift_setDeallocating();
        sub_1D8D08A50(v35, &qword_1ECAB42E8, &qword_1D9193650);
        v85.value._rawValue = v40;
        v22 = v37;
        NSError.init(fsctlCode:userInfo:)(v41, v32, v85);
        v43 = v42;
        swift_willThrow();
      }

      else
      {
        v44 = v79[0];

        v43 = sub_1D9176A6C();

        swift_willThrow();
      }

      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v45 = sub_1D917744C();
      __swift_project_value_buffer(v45, qword_1EDCD0F20);
      v46 = v43;
      v47 = sub_1D917741C();
      v48 = sub_1D9178CFC();

      if (!os_log_type_enabled(v47, v48))
      {

LABEL_16:
        (*v72)(v78, v77);
        goto LABEL_17;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v71 = v22;
      v51 = v50;
      v84[0] = v50;
      *v49 = v68;
      v79[0] = v43;
      v52 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v53 = sub_1D917826C();
      v55 = sub_1D8CFA924(v53, v54, v84);

      *(v49 + 4) = v55;
      v56 = v77;
      v57 = v78;
      _os_log_impl(&dword_1D8CEC000, v47, v48, "Unable to evaluate media for purgeability: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      v58 = v51;
      v22 = v71;
      MEMORY[0x1DA72CB90](v58, -1, -1);
      MEMORY[0x1DA72CB90](v49, -1, -1);

      v59 = v57;
      v20 = v69;
      (*v72)(v59, v56);
LABEL_17:
      v22 += v73;
      if (!--v17)
      {

        result = v80;
        break;
      }
    }
  }

LABEL_27:
  v63 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8EF9BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3[1];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v8 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v8 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v10 initWithKey:v11 ascending:1];

  *(v9 + 32) = v12;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v13 = sub_1D91785DC();

  [v8 setSortDescriptors_];

  [v8 setResultType_];
  sub_1D8F60B24(v7);
  v14 = sub_1D91785DC();

  [v8 setPropertiesToFetch_];

  v17[2] = a2;
  v17[3] = v8;
  v15 = sub_1D90ACE28(sub_1D8F034E8, v17);

  return v15;
}

void sub_1D8EF9D98(uint64_t *i@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v2 = sub_1D917908C();
  v14 = sub_1D8FBED0C(v2);

  if (v14)
  {
    v34 = i;
    v15 = v14[2];
    if (v15)
    {
      v16 = MEMORY[0x1E69E7CC0];
      for (i = 0; ; i = (i + 1))
      {
        while (1)
        {
          if (i >= v14[2])
          {
            __break(1u);
            swift_once();
            v3 = sub_1D917744C();
            __swift_project_value_buffer(v3, qword_1EDCD0F20);
            v4 = v14;
            v5 = sub_1D917741C();
            v6 = sub_1D9178CFC();

            if (os_log_type_enabled(v5, v6))
            {
              v7 = swift_slowAlloc();
              v8 = swift_slowAlloc();
              v35[0] = v8;
              *v7 = 136315138;
              v36[0] = v14;
              v9 = v14;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
              v10 = sub_1D917826C();
              v12 = sub_1D8CFA924(v10, v11, v35);

              *(v7 + 4) = v12;
              _os_log_impl(&dword_1D8CEC000, v5, v6, "Failed to request episodes with expected downloads: %s", v7, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v8);
              MEMORY[0x1DA72CB90](v8, -1, -1);
              MEMORY[0x1DA72CB90](v7, -1, -1);
            }

            goto LABEL_5;
          }

          v17 = v14[i + 4];
          sub_1D917820C();

          sub_1D91793EC();
          if (*(v17 + 16))
          {
            v18 = sub_1D8D6550C(v35);
            if (v19)
            {
              break;
            }
          }

          sub_1D8D9A308(v35);
LABEL_10:
          i = (i + 1);
          if (v15 == i)
          {
            goto LABEL_28;
          }
        }

        sub_1D8CFAD1C(*(v17 + 56) + 32 * v18, v36);
        sub_1D8D9A308(v35);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_10;
        }

        v20 = v37;
        if (!v37)
        {
          goto LABEL_10;
        }

        v33 = v36[4];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8D4241C(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v32 = v22 + 1;
          v25 = v16;
          v26 = *(v16 + 2);
          v27 = sub_1D8D4241C((v21 > 1), v22 + 1, 1, v25);
          v23 = v32;
          v22 = v26;
          v16 = v27;
        }

        *(v16 + 2) = v23;
        v24 = &v16[16 * v22];
        *(v24 + 4) = v33;
        *(v24 + 5) = v20;
        if ((v15 - 1) == i)
        {
          goto LABEL_28;
        }
      }
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_28:

    v13 = sub_1D8FC0F28(v16);

    i = v34;
  }

  else
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917744C();
    __swift_project_value_buffer(v28, qword_1EDCD0F20);
    v29 = sub_1D917741C();
    v30 = sub_1D9178CFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D8CEC000, v29, v30, "Unable to fetch episodes: Result is unexpected", v31, 2u);
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

LABEL_5:
    v13 = MEMORY[0x1E69E7CD0];
  }

  *i = v13;
}

void sub_1D8EFA1FC(uint64_t a1@<X2>, void *a2@<X8>)
{
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v50 - v5;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66F0, &qword_1D9192190);
  v56 = *(v54 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D918C190;
  v18 = objc_opt_self();
  *(v17 + 32) = [v18 predicateForDownloaded:1 excludeHidden:0];
  v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v20 = [v18 predicateForAllEpisodesOnPodcastUuid_];

  *(v17 + 40) = v20;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v21 = sub_1D91785DC();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v16 setPredicate_];
  v23 = v16;
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v24 = v66;
  v25 = sub_1D917908C();
  v53 = v24;
  if (v24)
  {

    return;
  }

  v26 = v25;
  v27 = v63;
  v61 = v15;
  v52 = v12;
  if (v25 >> 62)
  {
    goto LABEL_25;
  }

  v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = v23;
  if (v28)
  {
LABEL_5:
    v23 = 0;
    v66 = v26 & 0xC000000000000001;
    v65 = v26 & 0xFFFFFFFFFFFFFF8;
    v58 = (v27 + 6);
    v51 = (v27 + 4);
    v63 = MEMORY[0x1E69E7CC0];
    v59 = v28;
    v60 = v26;
    v57 = a2;
    while (1)
    {
      if (v66)
      {
        v29 = MEMORY[0x1DA72AA90](v23, v26);
      }

      else
      {
        if (v23 >= *(v65 + 16))
        {
          goto LABEL_24;
        }

        v29 = *(v26 + 8 * v23 + 32);
      }

      v30 = v29;
      v27 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v28 = sub_1D917935C();
        v50 = v23;
        if (!v28)
        {
          break;
        }

        goto LABEL_5;
      }

      v31 = [v29 uuid];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1D917820C();
        v35 = v34;

        v36 = [v30 assetURL];
        if (v36)
        {
          v37 = v36;
          sub_1D917820C();

          sub_1D9176BFC();
          v38 = v64;

          v39 = v62;
          if ((*v58)(v38, 1, v62) == 1)
          {

            sub_1D8D08A50(v38, &unk_1ECAB5910, &qword_1D9188C90);
            a2 = v57;
            v28 = v59;
            v26 = v60;
          }

          else
          {
            v40 = *v51;
            v41 = v55;
            (*v51)(v55, v38, v39);
            v42 = *(v54 + 48);
            v43 = v52;
            *v52 = v33;
            v43[1] = v35;
            v44 = v43;
            v40(v43 + v42, v41, v39);
            sub_1D8F03228(v44, v61);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_1D8ECCB70(0, v63[2] + 1, 1, v63);
            }

            v28 = v59;
            v46 = v63[2];
            v45 = v63[3];
            v47 = v56;
            if (v46 >= v45 >> 1)
            {
              v49 = sub_1D8ECCB70(v45 > 1, v46 + 1, 1, v63);
              v47 = v56;
              v63 = v49;
            }

            v48 = v63;
            v63[2] = v46 + 1;
            sub_1D8F03228(v61, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46);
            a2 = v57;
            v26 = v60;
          }

          goto LABEL_8;
        }
      }

LABEL_8:
      ++v23;
      if (v27 == v28)
      {
        goto LABEL_27;
      }
    }
  }

  v63 = MEMORY[0x1E69E7CC0];
LABEL_27:

  *a2 = v63;
}

uint64_t sub_1D8EFA814(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6820, &qword_1D9193770);
    v6 = sub_1D91797AC();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v9 = v6;
  sub_1D8F032C8(a1, a2, 1, &v9);

  v7 = v9;
  if (v2)
  {
  }

  return v7;
}

id sub_1D8EFA8D8(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D9176B1C();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1D9176C2C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1D9176A6C();

    swift_willThrow();
    v9 = sub_1D9176C2C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1D8EFAA30(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_1D8EFA1FC(v1[4], a1);
}

uint64_t sub_1D8EFAA74(double *a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1D9179DAC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D8EFE794(v9, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8EFAB8C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  sub_1D9179DBC();
  v27 = v4;
  v28 = a1;
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a2);
  }

  v9 = sub_1D9179E1C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_25:
    v25 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v27;
    sub_1D8D5055C(a2, a3, a4);
    sub_1D8EFEA50(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v27 = v31;
    *v28 = a2;
    *(v28 + 8) = a3;
    *(v28 + 16) = a4;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(v7 + 48) + 24 * v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    if (!*(v13 + 16))
    {
      if (!a4 && v14 == a2)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    v16 = *(v13 + 8);
    if (v15 != 1)
    {
      break;
    }

    if (a4 == 1)
    {
      sub_1D8CF2154(0, &qword_1EDCD07F8, 0x1E69E58C0);
      v17 = v14;
      v18 = sub_1D917914C();
      sub_1D8DA8564(v14, v16, 1);
      if (v18)
      {
        goto LABEL_23;
      }
    }

LABEL_8:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (a4 != 2)
  {
    goto LABEL_8;
  }

  v19 = v14 == a2 && v16 == a3;
  if (!v19 && (sub_1D9179ACC() & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_23:
  sub_1D8DA8564(a2, a3, v15);
LABEL_24:
  v20 = *(v7 + 48) + 24 * v11;
  v21 = *v20;
  v22 = *(v20 + 8);
  *v28 = *v20;
  *(v28 + 8) = v22;
  v23 = *(v20 + 16);
  *(v28 + 16) = v23;
  sub_1D8D5055C(v21, v22, v23);
  return 0;
}

uint64_t sub_1D8EFADF0(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1D9179DBC();
  v8 = *&aStdq_5[8 * a2];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v9 = sub_1D9179E1C();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *&aStdq_5[8 * a2];
    while (*&aStdq_5[8 * *(*(v6 + 48) + v11)] != v13)
    {
      v14 = sub_1D9179ACC();
      swift_bridgeObjectRelease_n();
      if (v14)
      {
        goto LABEL_8;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_8:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v11);
  }

  else
  {
LABEL_6:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1D8EFECE0(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8EFAF78(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1D917936C();

    if (v17)
    {

      sub_1D8CF2154(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_1D917935C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_1D8EFBF50(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_1D8EFCB18(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_1D8EFE710(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_1D8CF2154(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_1D917913C();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_1D917914C();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_1D8EFE8C0(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D8EFB1EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_1D91793CC();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_1D8D9A2A4(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x1DA72A9A0](v18, a2);
      sub_1D8D9A308(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D8D9A308(a2);
    sub_1D8D9A2A4(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8D9A2A4(a2, v18);
    v17 = *v3;
    sub_1D8EFEEA4(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1D8EFB338(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v38 = *v4;
  v9 = *(*v4 + 40);
  sub_1D9179DBC();
  v37 = v4;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v10 = 8;
    }

    else if (a2 > 1)
    {
      if (a2 ^ 2 | a3)
      {
        v10 = 6;
      }

      else
      {
        v10 = 4;
      }
    }

    else if (a2 | a3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_6;
  }

  if (!a4)
  {
    v10 = 3;
LABEL_6:
    MEMORY[0x1DA72B390](v10);
    goto LABEL_8;
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_8:
  v11 = sub_1D9179E1C();
  v12 = -1 << *(v38 + 32);
  v13 = v11 & ~v12;
  if ((*(v38 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = a2 != 3;
    v16 = a2 != 2;
    v17 = a2 != 1;
    if (a3)
    {
      v15 = 1;
      v16 = 1;
      v17 = 1;
    }

    v18 = a4 == 3;
    if (a4 != 3)
    {
      v15 = 1;
    }

    v36 = v15;
    v19 = a4 != 3 || v16;
    v35 = v19;
    v20 = a4 != 3 || v17;
    if (a3 | a2)
    {
      v18 = 0;
    }

    v33 = v18;
    v34 = v20;
    do
    {
      v22 = *(v38 + 48) + 24 * v13;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          if (a4 == 2)
          {
            goto LABEL_41;
          }
        }

        else if (v23 > 1)
        {
          if (v23 ^ 2 | v24)
          {
            if (!v36)
            {
LABEL_41:
              sub_1D8D02FE4(a2, a3, a4);
              sub_1D8D02FCC(v23, v24, v25);
              sub_1D8D02FCC(a2, a3, a4);
              v26 = *(v38 + 48) + 24 * v13;
              v27 = *v26;
              v28 = *(v26 + 8);
              *a1 = *v26;
              *(a1 + 8) = v28;
              v29 = *(v26 + 16);
              *(a1 + 16) = v29;
              sub_1D8D02FE4(v27, v28, v29);
              return 0;
            }
          }

          else if ((v35 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v23 | v24)
        {
          if ((v34 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v33)
        {
          goto LABEL_41;
        }
      }

      else if (*(v22 + 16))
      {
        v21 = *(v22 + 8);
      }

      else if (!a4)
      {
        goto LABEL_41;
      }

      sub_1D8D02FE4(a2, a3, a4);
      sub_1D8D02FCC(v23, v24, v25);
      sub_1D8D02FCC(a2, a3, a4);
      v13 = (v13 + 1) & v14;
    }

    while (((*(v38 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v31 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v37;
  sub_1D8D02FE4(a2, a3, a4);
  sub_1D8EFF01C(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
  *v37 = v39;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return 1;
}

uint64_t sub_1D8EFB66C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (a3)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  v9 = sub_1D9179E1C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D8EFF388(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_1D9179ACC() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_1D8EFB7F4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v6 = sub_1D9179E1C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v27 = v4 + 56;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v26 = ~v7;
    v9 = 0xEB00000000747361;
    v10 = 0xE900000000000065;
    v28 = v4;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      if (v11 <= 1)
      {
        if (*(*(v4 + 48) + v8))
        {
          v13 = v9;
        }

        else
        {
          v13 = 0xEC00000073747361;
        }

        v12 = 0x63646F5079616C70;
      }

      else if (v11 == 2)
      {
        v12 = 0x7461745379616C70;
        v13 = 0xEB000000006E6F69;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x6269726373627573;
        }

        else
        {
          v12 = 0x6D65744979616C70;
        }

        if (v11 == 3)
        {
          v13 = 0xE900000000000065;
        }

        else
        {
          v13 = 0xE800000000000000;
        }
      }

      if (a2 == 3)
      {
        v14 = 0x6269726373627573;
      }

      else
      {
        v14 = 0x6D65744979616C70;
      }

      if (a2 != 3)
      {
        v10 = 0xE800000000000000;
      }

      if (a2 == 2)
      {
        v14 = 0x7461745379616C70;
        v10 = 0xEB000000006E6F69;
      }

      v15 = a2 ? v9 : 0xEC00000073747361;
      v16 = a2 <= 1u ? 0x63646F5079616C70 : v14;
      v17 = a2 <= 1u ? v15 : v10;
      if (v12 == v16 && v13 == v17)
      {
        break;
      }

      v18 = a2;
      v19 = v9;
      v20 = sub_1D9179ACC();

      if (v20)
      {
        goto LABEL_38;
      }

      v8 = (v8 + 1) & v26;
      v9 = v19;
      a2 = v18;
      v10 = 0xE900000000000065;
      v4 = v28;
      if (((*(v27 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    result = 0;
    LOBYTE(a2) = *(*(v28 + 48) + v8);
  }

  else
  {
LABEL_36:
    v21 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v24;
    sub_1D8EFF544(a2, v8, isUniquelyReferenced_nonNull_native);
    *v24 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8EFBAF4(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D9179DBC();
  v36 = v3;
  v37 = a1;
  sub_1D9179DDC();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1DA72B3C0](a2);
  }

  v38 = a2;
  v41 = HIBYTE(a3);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v9 = sub_1D9179E1C();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_52:
    v34 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v36;
    v33 = v38;
    sub_1D8EFF8C0(v38, a3 & 0xFF01, v12, isUniquelyReferenced_nonNull_native);
    *v36 = v42;
    result = 1;
    goto LABEL_53;
  }

  v13 = ~v11;
  v14 = 0x6C61727475656ELL;
  v40 = v7;
  v39 = a3;
  while (1)
  {
    v17 = *(v7 + 48) + 16 * v12;
    v18 = *(v17 + 9);
    if (*(v17 + 8))
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((a3 & 1) != 0 || *v17 != v38)
    {
      goto LABEL_6;
    }

    v19 = v18 == 2 ? 0x657469726F766166 : 0x6E776F6E6B6E75;
    v20 = v18 == 2 ? 0xE900000000000064 : 0xE700000000000000;
    v21 = v18 ? v14 : 0x4C74736567677573;
    v22 = v18 ? 0xE700000000000000 : 0xEB00000000737365;
    v23 = v18 <= 1 ? v21 : v19;
    v24 = v18 <= 1 ? v22 : v20;
    v25 = v41 == 2 ? 0x657469726F766166 : 0x6E776F6E6B6E75;
    v26 = v41 == 2 ? 0xE900000000000064 : 0xE700000000000000;
    v27 = v41 ? v14 : 0x4C74736567677573;
    v28 = v41 ? 0xE700000000000000 : 0xEB00000000737365;
    v29 = v41 <= 1 ? v27 : v25;
    v30 = v41 <= 1 ? v28 : v26;
    if (v23 == v29 && v24 == v30)
    {
      break;
    }

    v15 = v14;
    v16 = sub_1D9179ACC();

    v14 = v15;
    a3 = v39;
    v7 = v40;
    if (v16)
    {
      goto LABEL_51;
    }

LABEL_6:
    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  v7 = v40;
LABEL_51:
  result = 0;
  v32 = *(v7 + 48) + 16 * v12;
  v33 = *v32;
  LOBYTE(a3) = *(v32 + 8);
  LOBYTE(v41) = *(v32 + 9);
LABEL_53:
  *v37 = v33;
  *(v37 + 8) = a3 & 1;
  *(v37 + 9) = v41;
  return result;
}

uint64_t sub_1D8EFBE2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D9179DBC();
  sub_1D9179FAC();
  v9 = sub_1D9179E1C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      if (sub_1D9179F9C())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v19 = (*(v7 + 48) + 16 * v11);
    a2 = *v19;
    a3 = v19[1];
  }

  else
  {
LABEL_5:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1D8EFFC50(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1D8EFBF50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1D917941C();
    v24 = v10;
    sub_1D917931C();
    if (sub_1D917938C())
    {
      sub_1D8CF2154(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_1D8EFCB18(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_1D917913C();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_1D917938C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1D8EFC188(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6848, &qword_1D9193788);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = *(v3 + 48);
      v20 = *(v19 + 8 * v18);
      v21 = *(v6 + 40);
      if (v20 != 0.0)
      {
        v22 = *(v19 + 8 * v18);
      }

      result = sub_1D9179DAC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFC3BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6840, &qword_1D9193780);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1D9179DBC();
      if (v22)
      {
        if (v22 == 1)
        {
          MEMORY[0x1DA72B390](1);
          sub_1D917915C();
        }

        else
        {
          MEMORY[0x1DA72B390](2);
          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        }
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v20);
      }

      result = sub_1D9179E1C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFC678(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6720, &unk_1D91936D8);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1D9179DAC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFC89C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6830, &qword_1D9193778);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1D9179DBC();
      v20 = *&aStdq_5[8 * v18];
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFCB18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D917940C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1D917913C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1D8EFCD38(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D9176EAC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB67A8, &qword_1D9193748);
  result = sub_1D917940C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1D8D11168(&qword_1EDCD5920);
      result = sub_1D917813C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D8EFD080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6798, &qword_1D9193738);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_1D91793CC();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFD2E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6790, &qword_1D9193730);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1D9179DBC();
      if (v22 == 1)
      {
        MEMORY[0x1DA72B390](1);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v20);
      }

      result = sub_1D9179E1C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFD580(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6788, &unk_1D91B3630);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (1)
    {
      if (!v11)
      {
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v7 >= v12)
          {
            break;
          }

          v18 = v8[v7];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v11 = (v18 - 1) & v18;
            goto LABEL_17;
          }
        }

        v32 = 1 << *(v3 + 32);
        if (v32 >= 64)
        {
          bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v32;
        }

        v2 = v33;
        *(v3 + 16) = 0;
        goto LABEL_44;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1D9179DBC();
      if (v22 > 1)
      {
        break;
      }

      if (!v22)
      {
        v24 = 3;
LABEL_22:
        MEMORY[0x1DA72B390](v24);
        goto LABEL_24;
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_24:
      result = sub_1D9179E1C();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    if (v22 == 2)
    {
      v24 = 8;
    }

    else if (v20 > 1)
    {
      if (v20 ^ 2 | v21)
      {
        v24 = 6;
      }

      else
      {
        v24 = 4;
      }
    }

    else if (v20 | v21)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    goto LABEL_22;
  }

LABEL_44:

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFD870(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6730, &qword_1D91936E8);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v20)
      {
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      result = sub_1D9179E1C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFDAEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6780, &unk_1D9193720);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFDDD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6778, &qword_1D9193718);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v22 = *(v3 + 48) + 16 * (v19 | (v7 << 6));
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 9);
      v26 = *(v6 + 40);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v24 != 1)
      {
        MEMORY[0x1DA72B3C0](v23);
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v14) >> 6;
        while (++v16 != v28 || (v27 & 1) == 0)
        {
          v29 = v16 == v28;
          if (v16 == v28)
          {
            v16 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v16);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v6 + 48) + 16 * v17;
      *v18 = v23;
      *(v18 + 8) = v24;
      *(v18 + 9) = v25;
      ++*(v6 + 16);
      v3 = v33;
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v21 = v8[v7];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v11 = (v21 - 1) & v21;
        goto LABEL_18;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D8EFE0FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6718, &qword_1D91936D0);
  v5 = sub_1D917940C();
  v6 = v5;
  if (*(v3 + 16))
  {
    v44 = v1;
    v7 = 0;
    v45 = (v3 + 56);
    v46 = v3;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    v47 = v5;
    while (1)
    {
      if (!v10)
      {
        v16 = v7;
        result = v45;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v7 >= v11)
          {
            break;
          }

          v18 = v45[v7];
          ++v16;
          if (v18)
          {
            v15 = __clz(__rbit64(v18));
            v48 = (v18 - 1) & v18;
            goto LABEL_17;
          }
        }

        v41 = 1 << *(v3 + 32);
        if (v41 >= 64)
        {
          v42 = v6;
          bzero(v45, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          v6 = v42;
        }

        else
        {
          *v45 = -1 << v41;
        }

        v2 = v44;
        *(v3 + 16) = 0;
        goto LABEL_41;
      }

      v15 = __clz(__rbit64(v10));
      v48 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 72 * (v15 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      *v53 = *(v19 + 25);
      *&v53[3] = *(v19 + 28);
      v24 = *(v19 + 32);
      v25 = *(v19 + 40);
      v26 = *(v19 + 48);
      v51 = *(v19 + 64);
      v52 = *(v19 + 56);
      v27 = *(v6 + 40);
      sub_1D9179DBC();
      v49 = v21;
      v50 = v20;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      if (v23)
      {
        v28 = v22;
        sub_1D9179DDC();
      }

      else
      {
        sub_1D9179DDC();
        v28 = v22;
        MEMORY[0x1DA72B3C0](v22);
      }

      v29 = v24;
      v30 = v26;
      if (!v26)
      {
        break;
      }

      v31 = v25;
      if (v26 == 1)
      {
        MEMORY[0x1DA72B390](1);
LABEL_26:
        v33 = v51;
        v32 = v52;
        goto LABEL_28;
      }

      v33 = v51;
      v32 = v52;
      if (v30 == 2)
      {
        MEMORY[0x1DA72B390](3);
      }

      else
      {
        MEMORY[0x1DA72B390](2);
        sub_1D9179DDC();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        sub_1D9179DDC();
        MEMORY[0x1DA72B3C0](v51);
      }

LABEL_28:
      result = sub_1D9179E1C();
      v6 = v47;
      v34 = -1 << *(v47 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v12 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v12 + 8 * v36);
          if (v40 != -1)
          {
            v13 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v35) & ~*(v12 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v47 + 48) + 72 * v13;
      *v14 = v50;
      *(v14 + 8) = v49;
      *(v14 + 16) = v28;
      *(v14 + 24) = v23;
      *(v14 + 25) = *v53;
      *(v14 + 28) = *&v53[3];
      *(v14 + 32) = v29;
      *(v14 + 40) = v31;
      *(v14 + 48) = v30;
      *(v14 + 56) = v32;
      *(v14 + 64) = v33;
      ++*(v47 + 16);
      v3 = v46;
      v10 = v48;
    }

    MEMORY[0x1DA72B390](0);
    v31 = v25;
    goto LABEL_26;
  }

LABEL_41:
  v43 = v6;

  *v2 = v43;
  return result;
}

uint64_t sub_1D8EFE4B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6770, &qword_1D9193710);
  result = sub_1D917940C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D9179DBC();
      sub_1D9179FAC();
      result = sub_1D9179E1C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D8EFE710(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1D917913C();
  v5 = -1 << *(a2 + 32);
  result = sub_1D91792FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D8EFE794(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1D8EFC188(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1D8EFFF00();
      result = v7;
      goto LABEL_12;
    }

    sub_1D8F01160(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1D9179DAC();
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 8 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

void sub_1D8EFE8C0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1D8EFCB18(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D8F002F0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1D8F01A20(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1D917913C();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1D8CF2154(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1D917914C();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D9179CEC();
  __break(1u);
}

void sub_1D8EFEA50(void *a1, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    sub_1D8EFC3BC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1D8F00948(&qword_1ECAB6840, &qword_1D9193780, sub_1D8D5055C);
      goto LABEL_31;
    }

    sub_1D8F01360(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_1D9179DBC();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  v13 = sub_1D9179E1C();
  v14 = -1 << *(v11 + 32);
  a4 = v13 & ~v14;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v11 + 48) + 24 * a4;
      v17 = *v16;
      if (*(v16 + 16))
      {
        v18 = *(v16 + 8);
        if (*(v16 + 16) == 1)
        {
          if (a3 == 1)
          {
            sub_1D8CF2154(0, &qword_1EDCD07F8, 0x1E69E58C0);
            v19 = v17;
            v20 = sub_1D917914C();
            sub_1D8DA8564(v17, v18, 1);
            if (v20)
            {
              goto LABEL_30;
            }
          }
        }

        else if (a3 == 2)
        {
          v21 = v17 == a1 && v18 == a2;
          if (v21 || (sub_1D9179ACC() & 1) != 0)
          {
LABEL_30:
            sub_1D9179CEC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a3 && v17 == a1)
      {
        goto LABEL_30;
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_31:
  v22 = *v27;
  *(*v27 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = a1;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }
}

uint64_t sub_1D8EFECE0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_1D8EFC89C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D8F00C00(&unk_1ECAB6830, &qword_1D9193778);
      goto LABEL_13;
    }

    sub_1D8F017E8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1D9179DBC();
  v11 = *&aStdq_5[8 * v6];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  result = sub_1D9179E1C();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = *&aStdq_5[8 * v6];
    while (*&aStdq_5[8 * *(*(v9 + 48) + a2)] != v14)
    {
      v15 = sub_1D9179ACC();
      result = swift_bridgeObjectRelease_n();
      if (v15)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v13;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_16:
  swift_bridgeObjectRelease_n();
LABEL_17:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8EFEEA4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8EFD080(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D8F00668();
      goto LABEL_12;
    }

    sub_1D8F01C2C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_1D91793CC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_1D8D9A2A4(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x1DA72A9A0](v20, v6);
      result = sub_1D8D9A308(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8EFF01C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a5)
  {
    sub_1D8EFD580(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1D8F00948(&qword_1ECAB6788, &unk_1D91B3630, sub_1D8D02FE4);
      goto LABEL_48;
    }

    sub_1D8F020D0(v10 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  sub_1D9179DBC();
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v14 = 8;
    }

    else if (v9 > 1)
    {
      if (v9 ^ 2 | a2)
      {
        v14 = 6;
      }

      else
      {
        v14 = 4;
      }
    }

    else if (v9 | a2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    if (a3)
    {
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      goto LABEL_15;
    }

    v14 = 3;
  }

  MEMORY[0x1DA72B390](v14);
LABEL_15:
  result = sub_1D9179E1C();
  v15 = -1 << *(v12 + 32);
  a4 = result & ~v15;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_48;
  }

  v16 = ~v15;
  v17 = v9 != 3;
  v18 = v9 != 2;
  v19 = v9 != 1;
  if (a2)
  {
    v17 = 1;
    v18 = 1;
    v19 = 1;
  }

  v20 = a3 == 3;
  if (a3 != 3)
  {
    v17 = 1;
  }

  v36 = v17;
  v21 = a3 != 3 || v18;
  v35 = v21;
  v22 = a3 != 3 || v19;
  if (a2 | v9)
  {
    v20 = 0;
  }

  v33 = v20;
  v34 = v22;
  while (1)
  {
    v23 = *(v12 + 48) + 24 * a4;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    if (v26 <= 1)
    {
      if (*(v23 + 16))
      {
        v27 = *(v23 + 8);
      }

      else if (!a3)
      {
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    if (v26 == 2)
    {
      if (a3 == 2)
      {
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    if (v24 > 1)
    {
      break;
    }

    if (v24 | v25)
    {
      if ((v34 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v33)
    {
      goto LABEL_47;
    }

LABEL_30:
    sub_1D8D02FE4(v9, a2, a3);
    sub_1D8D02FCC(v24, v25, v26);
    result = sub_1D8D02FCC(v9, a2, a3);
    a4 = (a4 + 1) & v16;
    if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (!(v24 ^ 2 | v25))
  {
    if ((v35 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if (v36)
  {
    goto LABEL_30;
  }

LABEL_47:
  sub_1D8D02FE4(v9, a2, a3);
  sub_1D8D02FCC(v24, v25, v26);
  sub_1D8D02FCC(v9, a2, a3);
  result = sub_1D9179CEC();
  __break(1u);
LABEL_48:
  v28 = *v37;
  *(*v37 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v29 = *(v28 + 48) + 24 * a4;
  *v29 = v9;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3;
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }

  return result;
}

uint64_t sub_1D8EFF388(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_1D8EFD870(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1D8F00AA8();
      goto LABEL_22;
    }

    sub_1D8F02398(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (a2)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  result = sub_1D9179E1C();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_1D9179ACC(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
            result = sub_1D9179CEC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1D8EFF544(uint64_t result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_42;
  }

  if (a3)
  {
    sub_1D8EFDAEC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D8F00C00(&qword_1ECAB6780, &unk_1D9193720);
      goto LABEL_42;
    }

    sub_1D8F025EC(v5 + 1);
  }

  v7 = 0xEC00000073747361;
  v8 = 0x63646F5079616C70;
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  result = sub_1D9179E1C();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  v35 = v9 + 56;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v11;
    v12 = 0xEB00000000747361;
    v13 = 0x6D65744979616C70;
    v14 = 0x6269726373627573;
    v15 = v9;
    do
    {
      v16 = *(*(v9 + 48) + a2);
      if (v16 <= 1)
      {
        if (*(*(v9 + 48) + a2))
        {
          v18 = v12;
        }

        else
        {
          v18 = v7;
        }

        v17 = v8;
      }

      else if (v16 == 2)
      {
        v17 = 0x7461745379616C70;
        v18 = 0xEB000000006E6F69;
      }

      else
      {
        if (v16 == 3)
        {
          v17 = v14;
        }

        else
        {
          v17 = v13;
        }

        if (v16 == 3)
        {
          v18 = 0xE900000000000065;
        }

        else
        {
          v18 = 0xE800000000000000;
        }
      }

      v19 = v13;
      v20 = v14;
      if (v36 == 3)
      {
        v21 = v14;
      }

      else
      {
        v21 = v13;
      }

      v22 = 0xE900000000000065;
      if (v36 != 3)
      {
        v22 = 0xE800000000000000;
      }

      if (v36 == 2)
      {
        v21 = 0x7461745379616C70;
        v22 = 0xEB000000006E6F69;
      }

      v23 = v7;
      v24 = v12;
      if (!v36)
      {
        v12 = v7;
      }

      v25 = v36 <= 1u ? v8 : v21;
      v26 = v36 <= 1u ? v12 : v22;
      v27 = v8;
      if (v17 == v25 && v18 == v26)
      {
        goto LABEL_45;
      }

      v28 = sub_1D9179ACC();

      if (v28)
      {
        goto LABEL_46;
      }

      a2 = (a2 + 1) & v34;
      v7 = v23;
      v8 = v27;
      v12 = v24;
      v13 = v19;
      v9 = v15;
      v14 = v20;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_42:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v36;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_45:

LABEL_46:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8EFF8C0(uint64_t result, __int16 a2, unint64_t a3, char a4)
{
  v29 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_43;
  }

  if (a4)
  {
    sub_1D8EFDDD8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D8F00D30();
      goto LABEL_43;
    }

    sub_1D8F028A8(v7 + 1);
  }

  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_1D9179DBC();
  sub_1D9179DDC();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1DA72B3C0](v29);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  result = sub_1D9179E1C();
  v11 = -1 << *(v9 + 32);
  a3 = result & ~v11;
  if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v14 = *(v9 + 48) + 16 * a3;
      if (*(v14 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((a2 & 1) != 0 || *v14 != v29)
      {
        goto LABEL_13;
      }

      if (*(v14 + 9) > 1u)
      {
        if (*(v14 + 9) == 2)
        {
          v15 = 0x657469726F766166;
          v16 = 0xE900000000000064;
        }

        else
        {
          v16 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v15 = 0x4C74736567677573;
        v16 = 0xEB00000000737365;
        if (*(v14 + 9))
        {
          v16 = 0xE700000000000000;
          v15 = 0x6C61727475656ELL;
        }
      }

      v17 = 0x657469726F766166;
      if (HIBYTE(a2) != 2)
      {
        v17 = 0x6E776F6E6B6E75;
      }

      v18 = 0xE900000000000064;
      if (HIBYTE(a2) != 2)
      {
        v18 = 0xE700000000000000;
      }

      v19 = 0x4C74736567677573;
      if (HIBYTE(a2))
      {
        v19 = 0x6C61727475656ELL;
      }

      v20 = 0xEB00000000737365;
      if (HIBYTE(a2))
      {
        v20 = 0xE700000000000000;
      }

      if (HIBYTE(a2) <= 1u)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if (HIBYTE(a2) <= 1u)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (v15 == v21 && v16 == v22)
      {

LABEL_42:
        result = sub_1D9179CEC();
        __break(1u);
        break;
      }

      v13 = sub_1D9179ACC();

      if (v13)
      {
        goto LABEL_42;
      }

LABEL_13:
      a3 = (a3 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_43:
  v23 = *v28;
  *(*v28 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v24 = *(v23 + 48) + 16 * a3;
  *v24 = v29;
  *(v24 + 8) = a2 & 1;
  *(v24 + 9) = HIBYTE(a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

uint64_t sub_1D8EFFC50(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1D8EFE4B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D8F0101C();
      goto LABEL_12;
    }

    sub_1D8F02EFC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D9179DBC();
  sub_1D9179FAC();
  result = sub_1D9179E1C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14;
      v16 = v14[1];
      result = sub_1D9179F9C();
      if (result)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v7;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

void *sub_1D8EFFDC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6710, &unk_1D91B3620);
  v2 = *v0;
  v3 = sub_1D91793FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D8EFFF00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6848, &qword_1D9193788);
  v2 = *v0;
  v3 = sub_1D91793FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}