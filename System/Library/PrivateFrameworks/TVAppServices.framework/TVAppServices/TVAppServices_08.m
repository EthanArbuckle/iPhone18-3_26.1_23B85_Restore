uint64_t TimedMetadata.PersonEntity.entityId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TimedMetadata.PersonEntity.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TimedMetadata.PersonEntity.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TimedMetadata.PersonEntity.subtitle.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t TimedMetadata.PersonEntity.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t TimedMetadata.PersonEntity.imageMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_26CCCF5F0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26CCCF5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
  }

  return result;
}

__n128 TimedMetadata.PersonEntity.imageMetadata.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_26CCCF69C(v1[7], v1[8], v1[9], v1[10], v1[11], v1[12], v1[13]);
  v4 = *a1;
  *(v1 + 9) = a1[1];
  *(v1 + 7) = v4;
  result = v6;
  *(v1 + 11) = v6;
  v1[13] = v3;
  return result;
}

uint64_t sub_26CCCF69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
  }

  return result;
}

uint64_t TimedMetadata.PersonEntity.url.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t TimedMetadata.PersonEntity.url.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

__n128 TimedMetadata.PersonEntity.init(entityId:title:subtitle:imageMetadata:url:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = a7[2];
  v13 = *(a7 + 6);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  sub_26CCCF69C(0, 0, 0, 0, 0, 0, 0);
  v14 = *a7;
  *(a9 + 72) = a7[1];
  *(a9 + 56) = v14;
  result = v16;
  *(a9 + 88) = v16;
  *(a9 + 104) = v13;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

uint64_t TimedMetadata.SongEntity.entityId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TimedMetadata.SongEntity.songId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TimedMetadata.SongEntity.songId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TimedMetadata.SongEntity.url.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TimedMetadata.SongEntity.url.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TimedMetadata.SongEntity.name.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t TimedMetadata.SongEntity.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t TimedMetadata.SongEntity.artist.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t TimedMetadata.SongEntity.artist.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t TimedMetadata.SongEntity.imageUrl.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t TimedMetadata.SongEntity.imageUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t TimedMetadata.SongEntity.init(entityId:songId:url:name:artist:service:imageUrl:isExplicitContent:isAddedToPlaylist:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15, char a16)
{
  v16 = *a12;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 122) = 0;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = v16;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  *(a9 + 121) = a15;
  *(a9 + 120) = a16;
  return result;
}

double TimedMetadata.TimedEntityMapping.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double TimedMetadata.TimedEntityMapping.init(timeRange:entities:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t TimedMetadata.EntityMapping.visualEntityMappingForGivenRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 TimedMetadata.EntityMapping.visualEntityMappingForGivenRange.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  return result;
}

uint64_t TimedMetadata.EntityMapping.visualEntityMappingForGivenTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 TimedMetadata.EntityMapping.visualEntityMappingForGivenTime.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  return result;
}

uint64_t TimedMetadata.EntityMapping.audioEntityMappingForGivenTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 TimedMetadata.EntityMapping.audioEntityMappingForGivenTime.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v5;
  return result;
}

uint64_t TimedMetadata.EntityMapping.audioEntityMappingAfterRetainRule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 TimedMetadata.EntityMapping.audioEntityMappingAfterRetainRule.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v5;
  return result;
}

uint64_t TimedMetadata.Service.name.getter()
{
  if (*v0)
  {
    result = 0;
  }

  else
  {
    result = 0x636973754DBFA3EFLL;
  }

  *v0;
  return result;
}

uint64_t TimedMetadata.Service.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t TimedMetadata.Service.rawValue.getter()
{
  v1 = 0x6D617A616873;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656E755469;
  }
}

uint64_t sub_26CCCFF64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D617A616873;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x73656E755469;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6D617A616873;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73656E755469;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCD0048()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCD00DC()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CCD015C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCD01EC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TimedMetadata.Service.init(rawValue:)(a1);
}

void sub_26CCD01F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D617A616873;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73656E755469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TimedMetadata.ContentRating.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

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

uint64_t TimedMetadata.ContentRating.rawValue.getter()
{
  if (*v0)
  {
    result = 0x746963696C707865;
  }

  else
  {
    result = 0x6E61656C63;
  }

  *v0;
  return result;
}

unint64_t sub_26CCD02E8()
{
  result = qword_2804BD800;
  if (!qword_2804BD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD800);
  }

  return result;
}

unint64_t sub_26CCD0340()
{
  result = qword_2804BD808;
  if (!qword_2804BD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD808);
  }

  return result;
}

uint64_t sub_26CCD0394(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746963696C707865;
  }

  else
  {
    v4 = 0x6E61656C63;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x746963696C707865;
  }

  else
  {
    v6 = 0x6E61656C63;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();
  }

  return v9 & 1;
}

unint64_t sub_26CCD043C()
{
  result = qword_2804BD810;
  if (!qword_2804BD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD810);
  }

  return result;
}

uint64_t sub_26CCD0490()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCD0510()
{
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CCD057C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCD05F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26CD3AD9C();

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

  *a2 = v7;
  return result;
}

void sub_26CCD0658(uint64_t *a1@<X8>)
{
  v2 = 0x6E61656C63;
  if (*v1)
  {
    v2 = 0x746963696C707865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26CCD06F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CCD073C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_13TVAppServices13TimedMetadataC05ImageD0VSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_26CCD07D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_26CCD081C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy123_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26CCD08B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 123))
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

uint64_t sub_26CCD0900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 123) = 1;
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

    *(result + 123) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CCD0974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CCD09BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CCD0A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_26CCD0A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

id static TVAppAccountStore.activeAccount(forMediaType:)(uint64_t a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams:a1 activeiTunesAccountForMediaType:?];

  return v3;
}

id static TVAppAccountStore.shared()()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];

  return v0;
}

id static TVAppAccountStore.activeOrLocalAccount()()
{
  v0 = objc_opt_self();
  v1 = [v0 ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];

  if (!v2)
  {
    v3 = [v0 ams_sharedAccountStore];
    v2 = [v3 ams_localiTunesAccount];
  }

  return v2;
}

id sub_26CCD0CB0(uint64_t a1, SEL *a2)
{
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 *a2];

  return v5;
}

id sub_26CCD0D2C(SEL *a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 *a1];

  return v3;
}

uint64_t static TVAppAccountStore.accounts.getter()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_iTunesAccounts];

  sub_26CCD0E20();
  v2 = sub_26CD3A7AC();

  return v2;
}

unint64_t sub_26CCD0E20()
{
  result = qword_2804BD818;
  if (!qword_2804BD818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804BD818);
  }

  return result;
}

uint64_t sub_26CCD0EBC()
{
  v0 = sub_26CD3A44C();
  __swift_allocate_value_buffer(v0, qword_2804D1538);
  __swift_project_value_buffer(v0, qword_2804D1538);
  return sub_26CD3A43C();
}

uint64_t sub_26CCD0F3C(uint64_t a1, double a2)
{
  if (!*(a1 + 16) || (v6 = sub_26CC181C4(1635017060, 0xE400000000000000), (v7 & 1) == 0) || (v74[0] = *(*(a1 + 56) + 8 * v6), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v12 = sub_26CD3A44C();
    __swift_project_value_buffer(v12, qword_2804D1538);
    v13 = sub_26CD3A42C();
    v14 = sub_26CD3A98C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26CC14000, v13, v14, "data key not found", v15, 2u);
      MEMORY[0x26D6AE340](v15, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    v17 = 8;
    goto LABEL_17;
  }

  if (!*(v75[0] + 16) || (v8 = sub_26CC181C4(0x74654D64656D6974, 0xED00006174616461), (v9 & 1) == 0))
  {

    goto LABEL_20;
  }

  v3 = *(*(v75[0] + 56) + 8 * v8);
  swift_unknownObjectRetain();

  v74[0] = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v19 = sub_26CD3A44C();
    __swift_project_value_buffer(v19, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v21 = sub_26CD3A98C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26CC14000, v20, v21, "timedMetadata key not found", v22, 2u);
      MEMORY[0x26D6AE340](v22, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    v17 = 9;
LABEL_17:
    *v16 = v17;
    swift_willThrow();
    return v3;
  }

  if (!*(v75[0] + 16))
  {
    v23 = 0;
    v3 = 0;
LABEL_39:

    v73 = 0;
    goto LABEL_40;
  }

  v10 = sub_26CC181C4(0x7365697469746E65, 0xE800000000000000);
  if (v11)
  {
    v74[0] = *(*(v75[0] + 56) + 8 * v10);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v3 = v75[0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if (!*(v75[0] + 16))
  {
    v23 = 0;
    goto LABEL_39;
  }

  v24 = sub_26CC181C4(0x6E6572727563636FLL, 0xEB00000000736563);
  if (v25)
  {
    v74[0] = *(*(v75[0] + 56) + 8 * v24);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v23 = v75[0];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  if (!*(v75[0] + 16))
  {
    goto LABEL_39;
  }

  v26 = sub_26CC181C4(0x6E45646574726F73, 0xEF73644979746974);
  if ((v27 & 1) == 0)
  {
    goto LABEL_39;
  }

  v28 = *(*(v75[0] + 56) + 8 * v26);
  swift_unknownObjectRetain();

  v74[0] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  v29 = swift_dynamicCast();
  v30 = v75[0];
  if (!v29)
  {
    v30 = 0;
  }

  v73 = v30;
LABEL_40:
  if (!v23)
  {
    v37 = 0;
    v72 = 0;
    goto LABEL_57;
  }

  if (!*(v23 + 16))
  {
    v72 = 0;
LABEL_56:

    v37 = 0;
    goto LABEL_57;
  }

  v31 = sub_26CC181C4(0x6F65646976, 0xE500000000000000);
  if ((v32 & 1) == 0)
  {

    goto LABEL_50;
  }

  v33 = *(*(v23 + 56) + 8 * v31);
  swift_unknownObjectRetain();

  v74[0] = v33;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    v72 = 0;
    goto LABEL_51;
  }

  v72 = v75[0];
  if (*(v75[0] + 16))
  {

    v34 = sub_26CC181C4(0x65736162656D6974, 0xE800000000000000);
    if (v35)
    {
      v36 = *(*(v75[0] + 56) + 8 * v34);
      swift_unknownObjectRetain();

      v74[0] = v36;
      swift_dynamicCast();
    }

    else
    {
    }
  }

LABEL_51:
  if (!*(v23 + 16))
  {
    goto LABEL_56;
  }

  v38 = sub_26CC181C4(0x6F69647561, 0xE500000000000000);
  if ((v39 & 1) == 0)
  {
    goto LABEL_56;
  }

  v40 = *(*(v23 + 56) + 8 * v38);
  swift_unknownObjectRetain();

  v74[0] = v40;
  if (swift_dynamicCast())
  {
    v37 = v75[0];
  }

  else
  {
    v37 = 0;
  }

LABEL_57:
  v41 = sub_26CCD1A28(v3);
  if (v2)
  {
  }

  else
  {
    v71 = v41;
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v42 = sub_26CD3A44C();
    __swift_project_value_buffer(v42, qword_2804D1538);
    v43 = sub_26CD3A42C();
    v44 = sub_26CD3A99C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = a2;
      _os_log_impl(&dword_26CC14000, v43, v44, "TimedMetadataParser using start time offset of %f", v45, 0xCu);
      MEMORY[0x26D6AE340](v45, -1, -1);
    }

    if (v73)
    {
      v46 = sub_26CD3A42C();
      v47 = sub_26CD3A99C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_26CC14000, v46, v47, "Visual entity sort order is available in timedmetadata json", v48, 2u);
        MEMORY[0x26D6AE340](v48, -1, -1);
      }

      v49 = *(v73 + 16);
      if (v49)
      {
        v50 = (v73 + 40);
        v70 = MEMORY[0x277D84F90];
        do
        {
          if (v3 && *(v3 + 16))
          {
            v52 = *(v50 - 1);
            v51 = *v50;

            v53 = sub_26CC181C4(v52, v51);
            v55 = v54;

            if (v55)
            {
              v56 = *(*(v3 + 56) + 8 * v53);
              swift_unknownObjectRetain();

              v74[0] = v56;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
              if (swift_dynamicCast())
              {
                v57 = v75[0];
                sub_26CD3ABFC();
                if (*(v57 + 16) && (v58 = sub_26CCCA694(v74), (v59 & 1) != 0))
                {
                  sub_26CC168C0(*(v57 + 56) + 32 * v58, v75);
                  sub_26CC579C4(v74);

                  if (swift_dynamicCast())
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v70 = sub_26CCBE3BC(0, *(v70 + 2) + 1, 1, v70);
                    }

                    v61 = *(v70 + 2);
                    v60 = *(v70 + 3);
                    if (v61 >= v60 >> 1)
                    {
                      v70 = sub_26CCBE3BC((v60 > 1), v61 + 1, 1, v70);
                    }

                    *(v70 + 2) = v61 + 1;
                    v62 = &v70[16 * v61];
                    *(v62 + 4) = 25705;
                    *(v62 + 5) = 0xE200000000000000;
                  }
                }

                else
                {

                  sub_26CC579C4(v74);
                }
              }
            }

            else
            {
            }
          }

          v50 += 2;
          --v49;
        }

        while (v49);
      }

      else
      {
        v70 = MEMORY[0x277D84F90];
      }

      v63 = v70;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v64 = sub_26CCD42B8(v72);

    v65 = sub_26CCD4E0C(v37);

    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

    if (!v65)
    {
      v65 = MEMORY[0x277D84F98];
    }

    v67 = type metadata accessor for TimedMetadata();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    v3 = swift_allocObject();
    *(v3 + 24) = xmmword_26CD47330;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    sub_26CD3A43C();
    *(v3 + 16) = v71;
    *(v3 + 40) = v66;
    *(v3 + 48) = v65;
    *(v3 + 56) = v63;
    sub_26CCEFDB8();
  }

  return v3;
}

void *sub_26CCD1A28(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v61 = MEMORY[0x277D84F90];
LABEL_5:
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_6:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return v61;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
LABEL_10:
        while (1)
        {
          v11 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          *&v51 = *(*(a1 + 56) + ((v9 << 9) | (8 * v11)));
          swift_unknownObjectRetain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
          if (swift_dynamicCast())
          {
            break;
          }

          swift_unknownObjectRelease();
          if (!v7)
          {
            goto LABEL_6;
          }
        }

        v12 = v40;
        if (!*(v40 + 16) || (v13 = sub_26CC181C4(1701869940, 0xE400000000000000), (v14 & 1) == 0) || (*&v40 = *(*(v40 + 56) + 8 * v13), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
        {
          swift_unknownObjectRelease();

          goto LABEL_5;
        }

        v39 = v2;
        v15 = v51;
        if (v51 == __PAIR128__(0xE600000000000000, 0x6E6F73726550) || (sub_26CD3AFDC() & 1) != 0)
        {

          if (*(v12 + 16))
          {
            v16 = sub_26CC181C4(25705, 0xE200000000000000);
            if (v17)
            {
              *&v40 = *(*(v12 + 56) + 8 * v16);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {

                sub_26CCD21C8(v12, &v51);
                v18 = v2;
                if (!v2)
                {

                  v44 = v55;
                  v46 = v56;
                  v48 = v57[0];
                  v50 = v57[1];
                  v40 = v51;
                  v41 = v52;
                  v42 = v53;
                  v43 = v54;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v61 = sub_26CCBEC4C(0, v61[2] + 1, 1, v61);
                  }

                  v20 = v61[2];
                  v19 = v61[3];
                  v21 = v20 + 1;
                  if (v20 >= v19 >> 1)
                  {
                    v61 = sub_26CCBEC4C((v19 > 1), v20 + 1, 1, v61);
                  }

                  swift_unknownObjectRelease();
                  v59 = &type metadata for TimedMetadata.PersonEntity;
                  v60 = &protocol witness table for TimedMetadata.PersonEntity;
                  v22 = swift_allocObject();
                  *&v58 = v22;
                  v22[5] = v44;
                  v22[6] = v46;
                  v22[7] = v48;
                  v22[8] = v50;
                  goto LABEL_44;
                }

LABEL_36:

                swift_unknownObjectRelease();
                v2 = 0;
                goto LABEL_5;
              }
            }
          }

          goto LABEL_37;
        }

        if (v15 == __PAIR128__(0xE400000000000000, 1735290707))
        {
        }

        else
        {
          v23 = sub_26CD3AFDC();

          if ((v23 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        if (*(v12 + 16))
        {
          v24 = sub_26CC181C4(25705, 0xE200000000000000);
          v2 = v39;
          if ((v25 & 1) == 0 || (*&v40 = *(*(v12 + 56) + 8 * v24), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
          {
LABEL_37:

            swift_unknownObjectRelease();
            goto LABEL_5;
          }

          sub_26CCD2940(v12, &v51);
          v18 = v39;
          if (v39)
          {
            goto LABEL_36;
          }

          v45 = v55;
          v47 = v56;
          *v49 = v57[0];
          *&v49[11] = *(v57 + 11);
          v40 = v51;
          v41 = v52;
          v42 = v53;
          v43 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_26CCBEC4C(0, v61[2] + 1, 1, v61);
          }

          v20 = v61[2];
          v26 = v61[3];
          v21 = v20 + 1;
          if (v20 >= v26 >> 1)
          {
            v61 = sub_26CCBEC4C((v26 > 1), v20 + 1, 1, v61);
          }

          swift_unknownObjectRelease();
          v59 = &type metadata for TimedMetadata.SongEntity;
          v60 = &protocol witness table for TimedMetadata.SongEntity;
          v22 = swift_allocObject();
          *&v58 = v22;
          v22[5] = v45;
          v22[6] = v47;
          v22[7] = *v49;
          *(v22 + 123) = *&v49[11];
LABEL_44:
          v22[1] = v40;
          v22[2] = v41;
          v22[3] = v42;
          v22[4] = v43;
          v27 = &v61[5 * v20];
          v61[2] = v21;
          sub_26CC2524C(&v58, (v27 + 4));
          v2 = 0;
        }

        else
        {

          swift_unknownObjectRelease();
          v2 = v39;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_52:

    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v34 = sub_26CD3A44C();
    __swift_project_value_buffer(v34, qword_2804D1538);
    v35 = sub_26CD3A42C();
    v36 = sub_26CD3A98C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26CC14000, v35, v36, "Unknown entity type", v37, 2u);
      MEMORY[0x26D6AE340](v37, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v29 = sub_26CD3A44C();
    __swift_project_value_buffer(v29, qword_2804D1538);
    v30 = sub_26CD3A42C();
    v31 = sub_26CD3A98C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26CC14000, v30, v31, "Base entities not found", v32, 2u);
      MEMORY[0x26D6AE340](v32, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_26CCD21C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_26CC181C4(25705, 0xE200000000000000);
    if (v6)
    {
      v58 = *(*(a1 + 56) + 8 * v5);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v52 = *(&v54[0] + 1);
        v53 = *&v54[0];
        if (*(a1 + 16) && (v7 = sub_26CC181C4(0x656C746974, 0xE500000000000000), (v8 & 1) != 0) && (v58 = *(*(a1 + 56) + 8 * v7), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
        {
          v50 = *(&v54[0] + 1);
          v51 = *&v54[0];
        }

        else
        {
          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v15 = sub_26CD3A44C();
          __swift_project_value_buffer(v15, qword_2804D1538);
          v16 = sub_26CD3A42C();
          v17 = sub_26CD3A98C();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_26CC14000, v16, v17, "Person title is missing", v18, 2u);
            MEMORY[0x26D6AE340](v18, -1, -1);
          }

          v50 = 0;
          v51 = 0;
        }

        if (*(a1 + 16) && (v19 = sub_26CC181C4(0x656C746974627573, 0xE800000000000000), (v20 & 1) != 0) && (v58 = *(*(a1 + 56) + 8 * v19), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
        {
          v21 = *(&v54[0] + 1);
          v49 = *&v54[0];
        }

        else
        {
          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v22 = sub_26CD3A44C();
          __swift_project_value_buffer(v22, qword_2804D1538);
          v23 = sub_26CD3A42C();
          v24 = sub_26CD3A98C();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_26CC14000, v23, v24, "Person subtitle is missing", v25, 2u);
            MEMORY[0x26D6AE340](v25, -1, -1);
          }

          v49 = 0;
          v21 = 0;
        }

        if (*(a1 + 16) && (v26 = sub_26CC181C4(7107189, 0xE300000000000000), (v27 & 1) != 0) && (v58 = *(*(a1 + 56) + 8 * v26), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
        {
          v29 = *(&v54[0] + 1);
          v28 = *&v54[0];
        }

        else
        {
          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v30 = sub_26CD3A44C();
          __swift_project_value_buffer(v30, qword_2804D1538);
          v31 = sub_26CD3A42C();
          v32 = sub_26CD3A98C();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_26CC14000, v31, v32, "Person page url is missing", v33, 2u);
            MEMORY[0x26D6AE340](v33, -1, -1);
          }

          v28 = 0;
          v29 = 0;
        }

        if (*(a1 + 16) && (v34 = sub_26CC181C4(0x6567616D69, 0xE500000000000000), (v35 & 1) != 0) && (*&v54[0] = *(*(a1 + 56) + 8 * v34), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0), (swift_dynamicCast() & 1) != 0))
        {
          sub_26CCD3C70(v58, v54);
          if (!v2)
          {

            v47 = v54[1];
            v48 = v54[0];
            v40 = v55;
            v41 = v56;
            v42 = v57;
            goto LABEL_51;
          }

          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v36 = sub_26CD3A44C();
          __swift_project_value_buffer(v36, qword_2804D1538);
          v37 = sub_26CD3A42C();
          v38 = sub_26CD3A98C();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_26CC14000, v37, v38, "Person image data parsing failure", v39, 2u);
            MEMORY[0x26D6AE340](v39, -1, -1);
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
        }

        else
        {
          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v43 = sub_26CD3A44C();
          __swift_project_value_buffer(v43, qword_2804D1538);
          v44 = sub_26CD3A42C();
          v45 = sub_26CD3A98C();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_26CC14000, v44, v45, "Person image metadata is missing", v46, 2u);
            MEMORY[0x26D6AE340](v46, -1, -1);
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
        }

        v47 = 0u;
        v48 = 0u;
LABEL_51:
        result = sub_26CCCF69C(0, 0, 0, 0, 0, 0, 0);
        *a2 = v53;
        *(a2 + 8) = v52;
        *(a2 + 16) = 0;
        *(a2 + 24) = v51;
        *(a2 + 32) = v50;
        *(a2 + 40) = v49;
        *(a2 + 48) = v21;
        *(a2 + 72) = v47;
        *(a2 + 56) = v48;
        *(a2 + 88) = v40;
        *(a2 + 96) = v41;
        *(a2 + 104) = v42;
        *(a2 + 112) = v28;
        *(a2 + 120) = v29;
        return result;
      }
    }
  }

  if (qword_2804BBA60 != -1)
  {
    swift_once();
  }

  v9 = sub_26CD3A44C();
  __swift_project_value_buffer(v9, qword_2804D1538);
  v10 = sub_26CD3A42C();
  v11 = sub_26CD3A98C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26CC14000, v10, v11, "Person ID is missing", v12, 2u);
    MEMORY[0x26D6AE340](v12, -1, -1);
  }

  sub_26CCD4200();
  swift_allocError();
  *v13 = 3;
  return swift_willThrow();
}

void sub_26CCD2940(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0x2804BB000uLL;
  if (*(a1 + 16) && (v5 = sub_26CC181C4(25705, 0xE200000000000000), (v6 & 1) != 0) && (v129 = *(*(a1 + 56) + 8 * v5), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v127;
    v7 = v128;
    if (*(a1 + 16))
    {
      v9 = sub_26CC181C4(0x697041616964656DLL, 0xEC00000061746144);
      if (v10)
      {
        v127 = *(*(a1 + 56) + 8 * v9);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
        if (swift_dynamicCast())
        {
          v11 = v129;
          v126 = v8;
          v124 = v129;
          if (v129[2].isa)
          {
            v12 = sub_26CC181C4(0x6172615079616C70, 0xEA0000000000736DLL);
            if (v13)
            {
              v127 = *(v129[7].isa + v12);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                if (v129[2].isa && (v14 = sub_26CC181C4(25705, 0xE200000000000000), (v15 & 1) != 0))
                {
                  v16 = *(v129[7].isa + v14);
                  swift_unknownObjectRetain();

                  v129 = v16;
                  if (swift_dynamicCast())
                  {
                    v122 = v128;
                    v123 = v127;
                    v17 = v126;
                    goto LABEL_31;
                  }
                }

                else
                {
                }
              }
            }
          }

          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v28 = sub_26CD3A44C();
          __swift_project_value_buffer(v28, qword_2804D1538);

          v29 = sub_26CD3A42C();
          v30 = v128;
          v31 = sub_26CD3A98C();

          if (os_log_type_enabled(v29, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v127 = v33;
            *v32 = 136315138;
            v17 = v126;
            *(v32 + 4) = sub_26CCF188C(v126, v30, &v127);
            _os_log_impl(&dword_26CC14000, v29, v31, "Song Id in current storefront is missing for entityId: %s", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v33);
            MEMORY[0x26D6AE340](v33, -1, -1);
            v34 = v32;
            v11 = v124;
            MEMORY[0x26D6AE340](v34, -1, -1);

            v122 = 0;
            v123 = 0;
          }

          else
          {

            v122 = 0;
            v123 = 0;
            v17 = v126;
          }

          v7 = v30;
          v3 = 0x2804BB000uLL;
LABEL_31:
          if (v11[2].isa && (v35 = sub_26CC181C4(7107189, 0xE300000000000000), (v36 & 1) != 0) && (v129 = *(v11[7].isa + v35), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
          {
            v120 = v128;
            v121 = v127;
          }

          else
          {
            if (qword_2804BBA60 != -1)
            {
              swift_once();
            }

            v37 = sub_26CD3A44C();
            __swift_project_value_buffer(v37, qword_2804D1538);

            v38 = sub_26CD3A42C();
            v39 = sub_26CD3A98C();

            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v127 = v41;
              *v40 = 136315138;
              *(v40 + 4) = sub_26CCF188C(v126, v7, &v127);
              v42 = v39;
              v17 = v126;
              v3 = 0x2804BB000;
              _os_log_impl(&dword_26CC14000, v38, v42, "Song url is missing for entityId: %s", v40, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v41);
              v43 = v41;
              v11 = v124;
              MEMORY[0x26D6AE340](v43, -1, -1);
              MEMORY[0x26D6AE340](v40, -1, -1);

              v120 = 0;
              v121 = 0;
            }

            else
            {

              v120 = 0;
              v121 = 0;
              v17 = v126;
            }
          }

          if (v11[2].isa && (v44 = sub_26CC181C4(1701667182, 0xE400000000000000), (v45 & 1) != 0) && (v129 = *(v11[7].isa + v44), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
          {
            v118 = v128;
            v119 = v127;
          }

          else
          {
            if (*(v3 + 2656) != -1)
            {
              swift_once();
            }

            v46 = sub_26CD3A44C();
            __swift_project_value_buffer(v46, qword_2804D1538);

            v47 = sub_26CD3A42C();
            v48 = sub_26CD3A98C();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v127 = v50;
              *v49 = 136315138;
              *(v49 + 4) = sub_26CCF188C(v126, v7, &v127);
              v51 = v48;
              v17 = v126;
              v3 = 0x2804BB000;
              _os_log_impl(&dword_26CC14000, v47, v51, "Song name is missing for entityId: %s", v49, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v50);
              v52 = v50;
              v11 = v124;
              MEMORY[0x26D6AE340](v52, -1, -1);
              MEMORY[0x26D6AE340](v49, -1, -1);

              v118 = 0;
              v119 = 0;
            }

            else
            {

              v118 = 0;
              v119 = 0;
              v17 = v126;
            }
          }

          if (v11[2].isa && (v53 = sub_26CC181C4(0x614E747369747261, 0xEA0000000000656DLL), (v54 & 1) != 0) && (v129 = *(v11[7].isa + v53), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
          {
            v116 = v128;
            v117 = v127;
          }

          else
          {
            if (*(v3 + 2656) != -1)
            {
              swift_once();
            }

            v55 = sub_26CD3A44C();
            __swift_project_value_buffer(v55, qword_2804D1538);

            v56 = sub_26CD3A42C();
            v57 = sub_26CD3A98C();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v127 = v59;
              *v58 = 136315138;
              *(v58 + 4) = sub_26CCF188C(v126, v7, &v127);
              v60 = v57;
              v17 = v126;
              v3 = 0x2804BB000;
              _os_log_impl(&dword_26CC14000, v56, v60, "Song artist name is missing for entityId: %s", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v59);
              v61 = v59;
              v11 = v124;
              MEMORY[0x26D6AE340](v61, -1, -1);
              MEMORY[0x26D6AE340](v58, -1, -1);

              v116 = 0;
              v117 = 0;
            }

            else
            {

              v116 = 0;
              v117 = 0;
              v17 = v126;
            }
          }

          if (v11[2].isa)
          {
            v62 = sub_26CC181C4(0x6B726F77747261, 0xE700000000000000);
            if (v63)
            {
              v127 = *(v11[7].isa + v62);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v64 = v129;
                if (v129[2].isa && (v65 = sub_26CC181C4(7107189, 0xE300000000000000), (v66 & 1) != 0))
                {
                  v67 = *(v64[7].isa + v65);
                  swift_unknownObjectRetain();

                  v129 = v67;
                  if (swift_dynamicCast())
                  {
                    v114 = v128;
                    v115 = v127;
                    goto LABEL_71;
                  }
                }

                else
                {
                }
              }
            }
          }

          if (*(v3 + 2656) != -1)
          {
            swift_once();
          }

          v68 = sub_26CD3A44C();
          __swift_project_value_buffer(v68, qword_2804D1538);

          v69 = sub_26CD3A42C();
          v70 = sub_26CD3A98C();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v127 = v72;
            *v71 = 136315138;
            *(v71 + 4) = sub_26CCF188C(v126, v7, &v127);
            _os_log_impl(&dword_26CC14000, v69, v70, "Song artwork is missing for entityId: %s", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v72);
            v73 = v72;
            v17 = v126;
            MEMORY[0x26D6AE340](v73, -1, -1);
            MEMORY[0x26D6AE340](v71, -1, -1);
          }

          v114 = 0;
          v115 = 0;
          v11 = v124;
LABEL_71:
          if (!*(a1 + 16) || (v74 = sub_26CC181C4(0x65707954676E6F73, 0xE800000000000000), (v75 & 1) == 0) || (v129 = *(*(a1 + 56) + 8 * v74), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
          {
            if (*(v3 + 2656) != -1)
            {
              swift_once();
            }

            v80 = sub_26CD3A44C();
            __swift_project_value_buffer(v80, qword_2804D1538);

            v81 = sub_26CD3A42C();
            v82 = sub_26CD3A98C();

            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v127 = v84;
              *v83 = 136315138;
              *(v83 + 4) = sub_26CCF188C(v17, v7, &v127);
              _os_log_impl(&dword_26CC14000, v81, v82, "Song type is missing for entityId: %s", v83, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v84);
              v85 = v84;
              v11 = v124;
              MEMORY[0x26D6AE340](v85, -1, -1);
              MEMORY[0x26D6AE340](v83, -1, -1);
            }

            v79 = 2;
LABEL_82:
            if (v11[2].isa && (v86 = sub_26CC181C4(0x52746E65746E6F63, 0xED0000676E697461), (v87 & 1) != 0))
            {
              v88 = *(v11[7].isa + v86);
              swift_unknownObjectRetain();

              v129 = v88;
              if (swift_dynamicCast())
              {
                v90 = v127;
                v89 = v128;
                v91 = sub_26CD3AD9C();
                if (!v91)
                {

                  v92 = sub_26CD3AFDC();

                  goto LABEL_111;
                }

                if (v91 == 1)
                {

                  v92 = 1;
LABEL_111:
                  v98 = v126;
                  goto LABEL_112;
                }

                if (*(v3 + 2656) != -1)
                {
                  swift_once();
                }

                v107 = sub_26CD3A44C();
                __swift_project_value_buffer(v107, qword_2804D1538);

                v94 = sub_26CD3A42C();
                v108 = sub_26CD3A98C();

                if (os_log_type_enabled(v94, v108))
                {
                  v109 = swift_slowAlloc();
                  v125 = v94;
                  v110 = swift_slowAlloc();
                  v127 = v110;
                  *v109 = 136315138;
                  v111 = sub_26CCF188C(v90, v89, &v127);

                  *(v109 + 4) = v111;
                  _os_log_impl(&dword_26CC14000, v125, v108, "unsupported contentRating: %s", v109, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v110);
                  MEMORY[0x26D6AE340](v110, -1, -1);
                  MEMORY[0x26D6AE340](v109, -1, -1);

LABEL_110:
                  v92 = 0;
                  goto LABEL_111;
                }

LABEL_109:

                goto LABEL_110;
              }
            }

            else
            {
            }

            if (*(v3 + 2656) != -1)
            {
              swift_once();
            }

            v93 = sub_26CD3A44C();
            __swift_project_value_buffer(v93, qword_2804D1538);

            v94 = sub_26CD3A42C();
            v95 = sub_26CD3A99C();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v127 = v97;
              *v96 = 136315138;
              v98 = v126;
              *(v96 + 4) = sub_26CCF188C(v126, v7, &v127);
              _os_log_impl(&dword_26CC14000, v94, v95, "contentRating is not specified for entityId: %s", v96, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v97);
              MEMORY[0x26D6AE340](v97, -1, -1);
              MEMORY[0x26D6AE340](v96, -1, -1);

              v92 = 0;
LABEL_112:
              *(a2 + 16) = 0;
              *(a2 + 24) = 0;
              *(a2 + 122) = 0;
              *a2 = v98;
              *(a2 + 8) = v7;
              *(a2 + 32) = v123;
              *(a2 + 40) = v122;
              *(a2 + 48) = v121;
              *(a2 + 56) = v120;
              *(a2 + 64) = v119;
              *(a2 + 72) = v118;
              *(a2 + 80) = v117;
              *(a2 + 88) = v116;
              *(a2 + 96) = v79;
              *(a2 + 104) = v115;
              *(a2 + 112) = v114;
              *(a2 + 121) = v92 & 1;
              *(a2 + 120) = 0;
              return;
            }

            goto LABEL_109;
          }

          v76 = v127;
          v77 = v128;

          v78 = sub_26CD3AD9C();

          if (v78)
          {
            if (v78 != 1)
            {

              v79 = 2;
LABEL_98:
              v113 = v79;
              if (*(v3 + 2656) != -1)
              {
                swift_once();
              }

              v100 = sub_26CD3A44C();
              __swift_project_value_buffer(v100, qword_2804D1538);

              v101 = sub_26CD3A42C();
              v102 = sub_26CD3A98C();

              v112 = v102;
              if (os_log_type_enabled(v101, v102))
              {
                v103 = swift_slowAlloc();
                v104 = swift_slowAlloc();
                v127 = v104;
                *v103 = 136315394;
                v105 = sub_26CCF188C(v76, v77, &v127);

                *(v103 + 4) = v105;
                *(v103 + 12) = 2080;
                *(v103 + 14) = sub_26CCF188C(v126, v7, &v127);
                _os_log_impl(&dword_26CC14000, v101, v112, "Unsupported Song type: %s. entityId: %s", v103, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x26D6AE340](v104, -1, -1);
                v106 = v103;
                v11 = v124;
                MEMORY[0x26D6AE340](v106, -1, -1);
              }

              else
              {
              }

              v79 = v113;
              goto LABEL_82;
            }

            v79 = 1;
          }

          else
          {
            v79 = 0;
          }

          v99 = sub_26CD3AFDC();

          if ((v99 & 1) == 0)
          {

            goto LABEL_82;
          }

          goto LABEL_98;
        }
      }
    }

    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v23 = sub_26CD3A44C();
    __swift_project_value_buffer(v23, qword_2804D1538);

    v24 = sub_26CD3A42C();
    v25 = sub_26CD3A98C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v127 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_26CCF188C(v8, v7, &v127);
      _os_log_impl(&dword_26CC14000, v24, v25, "Song data is missing for entityId: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x26D6AE340](v27, -1, -1);
      MEMORY[0x26D6AE340](v26, -1, -1);
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 122) = 0;
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 3;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v18 = sub_26CD3A44C();
    __swift_project_value_buffer(v18, qword_2804D1538);
    v19 = sub_26CD3A42C();
    v20 = sub_26CD3A98C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26CC14000, v19, v20, "Song entity ID is missing", v21, 2u);
      MEMORY[0x26D6AE340](v21, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    *v22 = 7;
    swift_willThrow();
  }
}

uint64_t sub_26CCD3C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_26CC181C4(7107189, 0xE300000000000000), (v5 & 1) == 0) || (v37 = *(*(a1 + 56) + 8 * v4), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v19 = sub_26CD3A44C();
    __swift_project_value_buffer(v19, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v21 = sub_26CD3A98C();
    if (!os_log_type_enabled(v20, v21))
    {
      v23 = 4;
      goto LABEL_29;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26CC14000, v20, v21, "Image url is missing", v22, 2u);
    v23 = 4;
LABEL_27:
    MEMORY[0x26D6AE340](v22, -1, -1);
LABEL_29:

    sub_26CCD4200();
    swift_allocError();
    *v24 = v23;
    return swift_willThrow();
  }

  if (!*(a1 + 16) || (v6 = v32, v7 = sub_26CC181C4(0x6874646977, 0xE500000000000000), (v8 & 1) == 0) || (v33 = *(*(a1 + 56) + 8 * v7), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v25 = sub_26CD3A44C();
    __swift_project_value_buffer(v25, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v26 = sub_26CD3A98C();
    if (!os_log_type_enabled(v20, v26))
    {
      v23 = 5;
      goto LABEL_29;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26CC14000, v20, v26, "Image width is missing", v22, 2u);
    v23 = 5;
    goto LABEL_27;
  }

  if (!*(a1 + 16) || (v9 = v37, v10 = sub_26CC181C4(0x746867696568, 0xE600000000000000), (v11 & 1) == 0) || (v34 = *(*(a1 + 56) + 8 * v10), swift_unknownObjectRetain(), result = swift_dynamicCast(), (result & 1) == 0))
  {

    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v27 = sub_26CD3A44C();
    __swift_project_value_buffer(v27, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v28 = sub_26CD3A98C();
    if (!os_log_type_enabled(v20, v28))
    {
      v23 = 6;
      goto LABEL_29;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26CC14000, v20, v28, "Image height is missing", v22, 2u);
    v23 = 6;
    goto LABEL_27;
  }

  v13 = v37;
  if (*(a1 + 16))
  {
    result = sub_26CC181C4(860910441, 0xE400000000000000);
    v14 = 2;
    if (v15)
    {
      v34 = *(*(a1 + 56) + 8 * result);
      swift_unknownObjectRetain();
      result = swift_dynamicCast();
      if (result)
      {
        v14 = v37;
      }

      else
      {
        v14 = 2;
      }
    }

    if (*(a1 + 16))
    {
      v31 = v14;
      result = sub_26CC181C4(0x726F6C6F43656F6ALL, 0xE800000000000000);
      if (v16)
      {
        v37 = *(*(a1 + 56) + 8 * result);
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        if (result)
        {
          v17 = v34;
        }

        else
        {
          v17 = 0;
        }

        if (result)
        {
          v18 = v36;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      if (*(a1 + 16))
      {
        result = sub_26CC181C4(0xD000000000000014, 0x800000026CD4DE30);
        v29 = 2;
        if (v30)
        {
          v35 = *(*(a1 + 56) + 8 * result);
          swift_unknownObjectRetain();
          result = swift_dynamicCast();
          if (result)
          {
            v29 = v37;
          }

          else
          {
            v29 = 2;
          }
        }
      }

      else
      {
        v29 = 2;
      }

      v14 = v31;
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v29 = 2;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v14 = 2;
    v29 = 2;
  }

  *a2 = v13;
  *(a2 + 4) = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v29;
  *(a2 + 40) = v6;
  *(a2 + 48) = v36;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_26CCD4200()
{
  result = qword_2804BD820;
  if (!qword_2804BD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD820);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_26CCD42B8(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 16) || (v2 = sub_26CC181C4(0x73656D617266, 0xE600000000000000), (v3 & 1) == 0) || (v29 = *(*(a1 + 56) + 8 * v2), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD830, &unk_26CD47380), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_2804BBA60 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

    v4 = *(v32 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v5 >= *(v32 + 16))
        {
          __break(1u);
LABEL_39:
          swift_once();
LABEL_27:
          v22 = sub_26CD3A44C();
          __swift_project_value_buffer(v22, qword_2804D1538);
          v23 = sub_26CD3A42C();
          v24 = sub_26CD3A98C();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "Frames missing in visual entity mappings";
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        v7 = *(v32 + 32 + 8 * v5);
        if (!*(v7 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(v32 + 32 + 8 * v5);

        v9 = sub_26CC181C4(0x7472617473, 0xE500000000000000);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v30 = *(*(v7 + 56) + 8 * v9);
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (!*(v7 + 16))
        {
          break;
        }

        v11 = sub_26CC181C4(6581861, 0xE300000000000000);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v31 = *(*(v7 + 56) + 8 * v11);
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (qword_2804BBA60 != -1)
        {
          swift_once();
        }

        v13 = sub_26CD3A44C();
        __swift_project_value_buffer(v13, qword_2804D1538);
        v14 = sub_26CD3A42C();
        v15 = sub_26CD3A99C();
        if (!os_log_type_enabled(v14, v15))
        {
          goto LABEL_24;
        }

        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = v15;
        v18 = v14;
        v19 = "Skipping frame as start and end are same";
LABEL_23:
        _os_log_impl(&dword_26CC14000, v18, v17, v19, v16, 2u);
        MEMORY[0x26D6AE340](v16, -1, -1);
LABEL_24:

        if (++v5 == v4)
        {

          return v6;
        }
      }

LABEL_19:
      if (qword_2804BBA60 != -1)
      {
        swift_once();
      }

      v20 = sub_26CD3A44C();
      __swift_project_value_buffer(v20, qword_2804D1538);
      v14 = sub_26CD3A42C();
      v21 = sub_26CD3A98C();
      if (!os_log_type_enabled(v14, v21))
      {
        goto LABEL_24;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = v21;
      v18 = v14;
      v19 = "Start or end time missing";
      goto LABEL_23;
    }
  }

  else
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v27 = sub_26CD3A44C();
    __swift_project_value_buffer(v27, qword_2804D1538);
    v23 = sub_26CD3A42C();
    v24 = sub_26CD3A98C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Visual entity mappings not found";
LABEL_33:
      _os_log_impl(&dword_26CC14000, v23, v24, v26, v25, 2u);
      MEMORY[0x26D6AE340](v25, -1, -1);
    }

LABEL_34:
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_26CCD4E0C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (!*(a1 + 16) || (v4 = sub_26CC181C4(0x794273656D617266, 0xEF73656C61636F4CLL), (v5 & 1) == 0) || (v83 = *(*(a1 + 56) + 8 * v4), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD830, &unk_26CD47380), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_2804BBA60 != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_68;
    }

    v6 = v87;
    v7 = *(v87 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = v87 + 32;
      v82 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          swift_once();
LABEL_68:
          v67 = sub_26CD3A44C();
          __swift_project_value_buffer(v67, qword_2804D1538);
          v68 = sub_26CD3A42C();
          v69 = sub_26CD3A98C();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            v71 = "Frames by locales missing in audio entity mappings";
            goto LABEL_73;
          }

          goto LABEL_74;
        }

        v10 = *(v9 + 8 * v8);
        if (!*(v10 + 16))
        {
          goto LABEL_36;
        }

        v11 = *(v9 + 8 * v8);

        v12 = sub_26CC181C4(0x73656C61636F6CLL, 0xE700000000000000);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v84 = *(*(v10 + 56) + 8 * v12);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (*(v10 + 16) && (v14 = sub_26CC181C4(0x73656D617266, 0xE600000000000000), (v15 & 1) != 0))
        {
          v16 = *(*(v10 + 56) + 8 * v14);
          swift_unknownObjectRetain();

          if (swift_dynamicCast())
          {
            v17 = v87;
            v78 = v9;
            v79 = *(v87 + 16);
            if (v79)
            {
              v74 = v6;
              v18 = 0;
              v76 = v87 + 32;
              v81 = MEMORY[0x277D84F90];
              while (1)
              {
                if (v18 >= *(v17 + 16))
                {
                  goto LABEL_77;
                }

                v19 = v17;
                v20 = *(v76 + 8 * v18);
                if (!*(v20 + 16))
                {
                  goto LABEL_28;
                }

                v21 = *(v76 + 8 * v18);

                v22 = sub_26CC181C4(0x7472617473, 0xE500000000000000);
                if ((v23 & 1) == 0)
                {
                  break;
                }

                v85 = *(*(v20 + 56) + 8 * v22);
                swift_unknownObjectRetain();
                if ((swift_dynamicCast() & 1) == 0)
                {
                  break;
                }

                if (!*(v20 + 16))
                {
                  break;
                }

                v24 = sub_26CC181C4(6581861, 0xE300000000000000);
                if ((v25 & 1) == 0)
                {
                  break;
                }

                v86 = *(*(v20 + 56) + 8 * v24);
                swift_unknownObjectRetain();
                if ((swift_dynamicCast() & 1) == 0)
                {
                  break;
                }

                if (qword_2804BBA60 != -1)
                {
                  swift_once();
                }

                v26 = sub_26CD3A44C();
                __swift_project_value_buffer(v26, qword_2804D1538);
                v27 = sub_26CD3A42C();
                v28 = sub_26CD3A99C();
                if (!os_log_type_enabled(v27, v28))
                {
                  goto LABEL_33;
                }

                v29 = swift_slowAlloc();
                *v29 = 0;
                v30 = v28;
                v31 = v27;
                v32 = "Skipping frame as start and end are same";
LABEL_32:
                _os_log_impl(&dword_26CC14000, v31, v30, v32, v29, 2u);
                MEMORY[0x26D6AE340](v29, -1, -1);
LABEL_33:

                v17 = v19;
                if (++v18 == v79)
                {

                  v6 = v74;
                  v9 = v78;
                  goto LABEL_50;
                }
              }

LABEL_28:
              if (qword_2804BBA60 != -1)
              {
                swift_once();
              }

              v33 = sub_26CD3A44C();
              __swift_project_value_buffer(v33, qword_2804D1538);
              v27 = sub_26CD3A42C();
              v34 = sub_26CD3A98C();
              if (!os_log_type_enabled(v27, v34))
              {
                goto LABEL_33;
              }

              v29 = swift_slowAlloc();
              *v29 = 0;
              v30 = v34;
              v31 = v27;
              v32 = "Start or end time missing";
              goto LABEL_32;
            }

            v81 = MEMORY[0x277D84F90];
LABEL_50:
            v44 = v87;
            v80 = *(v87 + 16);
            if (v80)
            {
              v75 = v8;
              v77 = v2;
              v45 = 0;
              v46 = (v87 + 40);
              while (1)
              {
                if (v45 >= *(v44 + 16))
                {
                  goto LABEL_78;
                }

                v50 = v7;
                v51 = v6;
                v53 = *(v46 - 1);
                v52 = *v46;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v55 = sub_26CC181C4(v53, v52);
                v57 = v82[2];
                v58 = (v56 & 1) == 0;
                v59 = __OFADD__(v57, v58);
                v60 = v57 + v58;
                if (v59)
                {
                  goto LABEL_79;
                }

                v61 = v56;
                if (v82[3] < v60)
                {
                  break;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_60;
                }

                v66 = v55;
                sub_26CD37734();
                v55 = v66;
                if (v61)
                {
LABEL_52:
                  v47 = v55;

                  v48 = v82[7];
                  v49 = *(v48 + 8 * v47);
                  *(v48 + 8 * v47) = v81;

                  goto LABEL_53;
                }

LABEL_61:
                v82[(v55 >> 6) + 8] |= 1 << v55;
                v63 = (v82[6] + 16 * v55);
                *v63 = v53;
                v63[1] = v52;
                *(v82[7] + 8 * v55) = v81;
                v64 = v82[2];
                v59 = __OFADD__(v64, 1);
                v65 = v64 + 1;
                if (v59)
                {
                  __break(1u);
                  goto LABEL_82;
                }

                v82[2] = v65;
LABEL_53:
                ++v45;
                v46 += 2;
                v9 = v78;
                v6 = v51;
                v7 = v50;
                v8 = v75;
                v44 = v87;
                if (v80 == v45)
                {

                  v2 = v77;
                  goto LABEL_42;
                }
              }

              sub_26CD358A0(v60, isUniquelyReferenced_nonNull_native);
              v55 = sub_26CC181C4(v53, v52);
              if ((v61 & 1) != (v62 & 1))
              {
                result = sub_26CD3B02C();
                __break(1u);
                return result;
              }

LABEL_60:
              if (v61)
              {
                goto LABEL_52;
              }

              goto LABEL_61;
            }

            goto LABEL_42;
          }
        }

        else
        {
        }

        if (qword_2804BBA60 != -1)
        {
          swift_once();
        }

        v42 = sub_26CD3A44C();
        __swift_project_value_buffer(v42, qword_2804D1538);
        v36 = sub_26CD3A42C();
        v43 = sub_26CD3A98C();
        if (os_log_type_enabled(v36, v43))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          v39 = v43;
          v40 = v36;
          v41 = "No frames found for audio entities";
          goto LABEL_40;
        }

LABEL_41:

LABEL_42:
        if (++v8 == v7)
        {

          return v82;
        }
      }

LABEL_36:
      if (qword_2804BBA60 != -1)
      {
        swift_once();
      }

      v35 = sub_26CD3A44C();
      __swift_project_value_buffer(v35, qword_2804D1538);
      v36 = sub_26CD3A42C();
      v37 = sub_26CD3A98C();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_41;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = v37;
      v40 = v36;
      v41 = "No locales found for audio entities";
LABEL_40:
      _os_log_impl(&dword_26CC14000, v40, v39, v41, v38, 2u);
      MEMORY[0x26D6AE340](v38, -1, -1);
      goto LABEL_41;
    }

    return MEMORY[0x277D84F98];
  }

  else
  {
    if (qword_2804BBA60 != -1)
    {
LABEL_82:
      swift_once();
    }

    v72 = sub_26CD3A44C();
    __swift_project_value_buffer(v72, qword_2804D1538);
    v68 = sub_26CD3A42C();
    v69 = sub_26CD3A98C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      v71 = "Audio entity mappings not found";
LABEL_73:
      _os_log_impl(&dword_26CC14000, v68, v69, v71, v70, 2u);
      MEMORY[0x26D6AE340](v70, -1, -1);
    }

LABEL_74:

    return sub_26CC3290C(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_26CCD5E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26CC1B4DC(a3, v27 - v11, &qword_2804BCA00, &qword_26CD3D510);
  v13 = sub_26CD3A86C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26CC1B544(v12, &qword_2804BCA00, &qword_26CD3D510);
  }

  else
  {
    sub_26CD3A85C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26CD3A80C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26CD3A61C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26CCD6138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26CC1B4DC(a3, v27 - v11, &qword_2804BCA00, &qword_26CD3D510);
  v13 = sub_26CD3A86C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26CC1B544(v12, &qword_2804BCA00, &qword_26CD3D510);
  }

  else
  {
    sub_26CD3A85C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26CD3A80C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26CD3A61C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD890, &qword_26CD47700);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD890, &qword_26CD47700);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26CCD644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_26CD38C60(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_26CC181C4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_26CD368BC();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_26CD37F2C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_26CCD6544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF8, &unk_26CD42A78);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_26CC1B544(a1, &qword_2804BCCF8, &unk_26CD42A78);
    sub_26CD2B738(a2, a3, v10);

    return sub_26CC1B544(v10, &qword_2804BCCF8, &unk_26CD42A78);
  }

  else
  {
    sub_26CCE6774(a1, v14, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_26CD39210(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_26CCD6718(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD840, &qword_26CD473F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_26CC1B544(a1, &qword_2804BD840, &qword_26CD473F0);
    sub_26CD2B890(a2, v8);
    v14 = sub_26CD3A20C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_26CC1B544(v8, &qword_2804BD840, &qword_26CD473F0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_26CD39374(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_26CD3A20C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t TimedMetadataVendor.PlaybackState.currentElapsedTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_26CD3A1EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  sub_26CC1B4DC(v0 + *(v13 + 20), v4, &qword_2804BCA90, &qword_26CD3C200);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_26CC1B544(v4, &qword_2804BCA90, &qword_26CD3C200);
    v15 = *v0;
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    v16 = *v0;
    sub_26CD3A1DC();
    sub_26CD3A10C();
    v18 = v17;
    v19 = *(v6 + 8);
    v19(v10, v5);
    result = (v19)(v12, v5);
    v20 = v16 + v18 * *(v0 + *(v13 + 24));
  }

  return result;
}

uint64_t sub_26CCD6B88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  return sub_26CC1B4DC(v1 + v3, a1, &qword_2804BD748, &qword_26CD46340);
}

uint64_t sub_26CCD6BF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  sub_26CCC2E8C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TimedMetadataVendor.PlaybackState.init(elapsedTime:elapsedTimeTimestamp:playbackRate:audioLanguageCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  v11 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  result = sub_26CC16D64(a1, a4 + v11[5], &qword_2804BCA90, &qword_26CD3C200);
  *(a4 + v11[6]) = a6;
  v13 = (a4 + v11[7]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_26CCD6CDC()
{
  v1 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask;
  if (*(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask);

    sub_26CD3A8DC();

    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + v4);

    v8 = 32;
    do
    {
      v9 = *(v5 + v8);

      sub_26CD3A8DC();

      v8 += 8;
      --v6;
    }

    while (v6);

    v10 = *(v0 + v4);
  }

  *(v0 + v4) = MEMORY[0x277D84F90];
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.init(programID:adamID:contentId:playablePassThrough:featureStartTime:rawData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  return result;
}

uint64_t TimedMetadataVendor.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = aBlock - v4;
  v6 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  v7 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataFetcher) = 0;
  v8 = v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
  *v8 = xmmword_26CD47390;
  *(v8 + 16) = xmmword_26CD473A0;
  *(v8 + 32) = 0x404E000000000000;
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata) = 0;
  v9 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations;
  v10 = MEMORY[0x277D84F90];
  *(v1 + v9) = sub_26CC326E0(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_contIdsForFiringAtEveryRawDataBoundary) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks) = v10;
  v11 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask;
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask) = 0;
  v12 = (v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  sub_26CCE557C(v34);
  v13 = v34[5];
  v12[4] = v34[4];
  v12[5] = v13;
  v14 = v34[7];
  v12[6] = v34[6];
  v12[7] = v14;
  v15 = v34[1];
  *v12 = v34[0];
  v12[1] = v15;
  v16 = v34[3];
  v12[2] = v34[2];
  v12[3] = v16;
  v17 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataNotificationObserver;
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataNotificationObserver) = 0;
  sub_26CD3A43C();
  v18 = sub_26CD3A86C();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  sub_26CD3A84C();

  v20 = sub_26CD3A83C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;

  v23 = sub_26CCD5E38(0, 0, v5, &unk_26CD473E0, v21);
  v24 = *(v1 + v11);
  *(v1 + v11) = v23;

  v25 = [objc_opt_self() defaultCenter];
  if (qword_280BB9BB0 != -1)
  {
    swift_once();
  }

  v26 = qword_280BB9BB8;
  v27 = [objc_opt_self() mainQueue];
  v28 = swift_allocObject();
  swift_weakInit();

  aBlock[4] = sub_26CCE5650;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCDC2A8;
  aBlock[3] = &block_descriptor_9;
  v29 = _Block_copy(aBlock);

  v30 = [v25 addObserverForName:v26 object:0 queue:v27 usingBlock:v29];
  _Block_release(v29);

  v31 = *(v1 + v17);
  *(v1 + v17) = v30;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t TimedMetadataVendor.deinit()
{
  v1 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataNotificationObserver;
  v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataNotificationObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState, &qword_2804BD748, &qword_26CD46340);
  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataFetcher);

  sub_26CC7BC78(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate);
  v6 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata);

  v7 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations);

  v8 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_contIdsForFiringAtEveryRawDataBoundary);

  v9 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks);

  v10 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask);

  v11 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 80);
  v19[4] = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 64);
  v19[5] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 112);
  v19[6] = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 96);
  v19[7] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 16);
  v19[0] = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  v19[1] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 48);
  v19[2] = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 32);
  v19[3] = v14;
  sub_26CC1B544(v19, &qword_2804BD838, &qword_26CD473E8);
  v15 = *(v0 + v1);
  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_logger;
  v17 = sub_26CD3A44C();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  return v0;
}

uint64_t sub_26CCD742C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataFetcher;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_26CCD74E8@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
  swift_beginAccess();
  result = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = result;
  return result;
}

__n128 sub_26CCD7540(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_26CCD7600()
{
  v1 = v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_26CCD7650(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26CCD76BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_26CCD775C;
}

void sub_26CCD775C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_26CCD77F0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_26CCD7894@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD840, &qword_26CD473F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v43 - v4;
  v6 = sub_26CD3A20C();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v48 = v13;
  MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD848, &qword_26CD473F8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v43 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v43 - v24;
  *v20 = 1;
  (*(v17 + 104))(v20, *MEMORY[0x277D85768], v16);
  sub_26CD3A87C();
  (*(v17 + 8))(v20, v16);
  sub_26CD3A1FC();
  v26 = *(v52 + 16);
  v50 = v15;
  v51 = v6;
  v27 = v6;
  v28 = v26;
  v26(v12, v15, v27);
  v45 = *(v22 + 16);
  v46 = v22 + 16;
  v45(v5, v25, v21);
  v29 = *(v22 + 56);
  v49 = v21;
  v29(v5, 0, 1, v21);
  swift_beginAccess();
  sub_26CCD6718(v5, v12);
  swift_endAccess();
  if (v47)
  {
    v30 = v44;
    v31 = v51;
    v28(v44, v50, v51);
    swift_beginAccess();
    sub_26CCDFA50(v12, v30);
    (*(v52 + 8))(v12, v31);
    swift_endAccess();
  }

  v32 = swift_allocObject();
  swift_weakInit();
  v34 = v50;
  v33 = v51;
  v28(v12, v50, v51);
  v35 = v52;
  v36 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  (*(v35 + 32))(v37 + v36, v12, v33);
  v38 = v49;
  sub_26CD3A88C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD850, &qword_26CD47408);
  v39 = *(v22 + 72);
  v40 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26CD3C1E0;
  v45((v41 + v40), v25, v38);
  sub_26CCD9CF8(v41);

  (*(v35 + 8))(v34, v33);
  return (*(v22 + 8))(v25, v38);
}

uint64_t sub_26CCD7DD4()
{
  v1 = v0;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD858, &qword_26CD47410);
  v189 = *(v171 - 8);
  v2 = *(v189 + 64);
  MEMORY[0x28223BE20](v171);
  v170 = &v164 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v186 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v175 = &v164 - v9;
  v194 = sub_26CD3A20C();
  v181 = *(v194 - 8);
  v10 = *(v181 + 64);
  v11 = MEMORY[0x28223BE20](v194);
  v193 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v191 = &v164 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD860, &qword_26CD47418);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v180 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v183 = &v164 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v164 - v21;
  *&v192 = sub_26CD3A1EC();
  *&v190 = *(v192 - 8);
  v23 = *(v190 + 64);
  v24 = MEMORY[0x28223BE20](v192);
  v188.n128_u64[0] = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v187.n128_u64[0] = &v164 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v164 - v29;
  v31 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v166 = (&v164 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  result = swift_beginAccess();
  v37 = *(v1 + v35);
  if (v37)
  {
    v174 = v5;
    v167 = v4;
    v38 = *(*v1 + 176);

    v38(v39);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {

      return sub_26CC1B544(v30, &qword_2804BD748, &qword_26CD46340);
    }

    v165 = v37;
    v40 = v30;
    v41 = v166;
    sub_26CCE6774(v40, v166, type metadata accessor for TimedMetadataVendor.PlaybackState);
    sub_26CC1B4DC(v41 + *(v31 + 20), v22, &qword_2804BCA90, &qword_26CD3C200);
    v42 = v190;
    v43 = v192;
    v44 = (*(v190 + 48))(v22, 1, v192);
    *&v185 = v31;
    if (v44 == 1)
    {
      sub_26CC1B544(v22, &qword_2804BCA90, &qword_26CD3C200);
      v45 = *v41;
    }

    else
    {
      v46 = v187.n128_u64[0];
      (*(v42 + 32))(v187.n128_u64[0], v22, v43);
      v47 = *v41;
      v48 = v188.n128_u64[0];
      sub_26CD3A1DC();
      sub_26CD3A10C();
      v50 = v49;
      v51 = *(v42 + 8);
      v51(v48, v43);
      v51(v46, v43);
      v45 = v47 + v50 * *(v41 + *(v31 + 24));
    }

    v52 = v167;
    v53 = v193;
    v54 = v183;
    v55 = (v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
    swift_beginAccess();
    v56 = v55[1];
    v251 = *v55;
    v252 = v56;
    v57 = v55[3];
    v58 = v55[5];
    v255 = v55[4];
    v256 = v58;
    v59 = v55[7];
    v60 = v55[5];
    v257 = v55[6];
    v258 = v59;
    v61 = v55[3];
    v253 = v55[2];
    v254 = v61;
    v62 = v251.n128_f64[1];
    v63 = v251.n128_f64[0];
    v64 = v252.n128_u64[1];
    v65 = v252.n128_f64[0];
    v228 = v57;
    v227 = v253;
    v164 = v55;
    v232 = v55[7];
    v231 = v257;
    v230 = v60;
    v229 = v255;
    v259[4] = v255;
    v259[5] = v60;
    v259[6] = v257;
    v259[7] = v232;
    v259[2] = v253;
    v259[3] = v57;
    v259[0] = v251;
    v259[1] = v252;
    if (sub_26CCE56CC(v259) == 1 || !v64)
    {
      *&v243 = v63;
      *(&v243 + 1) = v62;
      *&v244 = v65;
      *(&v244 + 1) = v64;
      v247 = v229;
      v248 = v230;
      v249 = v231;
      v250 = v232;
      v245 = v227;
      v246 = v228;
      sub_26CC1B4DC(&v251, &v235, &qword_2804BD838, &qword_26CD473E8);
      sub_26CC1B544(&v243, &qword_2804BD838, &qword_26CD473E8);
    }

    else
    {
      v243 = __PAIR128__(*&v62, *&v63);
      v244 = __PAIR128__(v64, *&v65);
      v247 = v229;
      v248 = v230;
      v249 = v231;
      v250 = v232;
      v245 = v227;
      v246 = v228;
      sub_26CC1B4DC(&v251, &v235, &qword_2804BD838, &qword_26CD473E8);
      sub_26CC1B544(&v243, &qword_2804BD838, &qword_26CD473E8);
      if (v63 <= v45 && v45 < v65)
      {
LABEL_14:
        v67 = sub_26CD3A42C();
        v68 = sub_26CD3A99C();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 134217984;
          *(v69 + 4) = v45;
          _os_log_impl(&dword_26CC14000, v67, v68, "playbackState.currentElapsedTime: %f", v69, 0xCu);
          MEMORY[0x26D6AE340](v69, -1, -1);
        }

        v70 = sub_26CD3A42C();
        v71 = sub_26CD3A99C();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 134218496;
          *(v72 + 4) = v63;
          *(v72 + 12) = 2048;
          *(v72 + 14) = v65;
          *(v72 + 22) = 2048;
          *(v72 + 24) = v62;
          _os_log_impl(&dword_26CC14000, v70, v71, "In updateListenersAndBoundaryObserver, time range start - %f, end - %f and duration - %f", v72, 0x20u);
          MEMORY[0x26D6AE340](v72, -1, -1);
        }

        v73 = *(v185 + 28);
        v74 = v164[5];
        v75 = v164[3];
        v239 = v164[4];
        v240 = v74;
        v76 = v164[7];
        v77 = v164[5];
        v241 = v164[6];
        v242 = v76;
        v78 = v164[1];
        v235 = *v164;
        v236 = v78;
        v79 = v164[3];
        v237 = v164[2];
        v238 = v79;
        *&v206 = v63;
        *(&v206 + 1) = v62;
        *&v207 = v65;
        v250 = v164[7];
        v249 = v241;
        v248 = v77;
        v247 = v239;
        v80 = (v166 + v73);
        v81 = *v80;
        v82 = v80[1];
        v246 = v75;
        v245 = v237;
        v244 = v78;
        v243 = v235;
        v83 = sub_26CCE56CC(&v243);
        v84 = v194;
        if (v83 == 1)
        {
          v85 = 0;
          v86 = 0;
          v87 = 0uLL;
        }

        else
        {
          v192 = v243;
          v85 = v244;

          v87 = v192;
        }

        v213 = v87;
        *&v214 = v85;
        *(&v214 + 1) = v86;
        sub_26CC1B4DC(&v235, &v227, &qword_2804BD838, &qword_26CD473E8);
        v88 = v165;
        sub_26CCEDB2C(&v227, v220.n128_f64, &v206, &v213, v45);

        v192 = v228;
        v190 = v221;
        v187 = v220;
        v188 = v227;
        swift_bridgeObjectRelease_n();
        if (v82)
        {
          v89 = *(v88 + 48);
          if (*(v89 + 16))
          {

            v90 = sub_26CC181C4(v81, v82);
            if (v91)
            {
              v92 = v52;
              v93 = *(*(v89 + 56) + 8 * v90);

              *&v179 = sub_26CCEE6B4(&v227, v93, v45);

              v184 = v228;
              v185 = v227;
              v94 = *(&v228 + 1);
              swift_bridgeObjectRetain_n();
              swift_bridgeObjectRelease_n();
              if (!v94 || (v95 = *(v94 + 16), , !v95))
              {
                v231 = v239;
                v232 = v240;
                v233 = v241;
                v234 = v242;
                v227 = v235;
                v228 = v236;
                v229 = v237;
                v230 = v238;
                if (sub_26CCE56CC(&v227) == 1)
                {
LABEL_70:
                  v101 = v184;
                  v100 = v185;
                  v98 = v185;
                  v99 = v184;
                  goto LABEL_71;
                }

                if (v234.n128_u64[1])
                {
                  if (*(v234.n128_u64[1] + 16))
                  {
                    sub_26CC19A84(v234.n128_u64[1] + 32, &v205);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
                    if (swift_dynamicCast())
                    {
                      v217 = v224;
                      v218 = v225;
                      v219[0] = v226[0];
                      *(v219 + 11) = *(v226 + 11);
                      v213 = v220;
                      v214 = v221;
                      v215 = v222;
                      v216 = v223;
                      v96 = v222.n128_i64[1];
                      if (v222.n128_u64[1])
                      {
                        v97 = v215.n128_u64[0];

                        sub_26CCE57A0(&v213);
                        sub_26CCF0D84(v97, v96, &v196);

                        v203[4] = v200;
                        v203[5] = v201;
                        v204[0] = v202[0];
                        *(v204 + 11) = *(v202 + 11);
                        v203[0] = v196;
                        v203[1] = v197;
                        v203[2] = v198;
                        v203[3] = v199;
                        v206 = v196;
                        v207 = v197;
                        v208 = v198;
                        v209 = v199;
                        v210 = v200;
                        v211 = v201;
                        v212[0] = v202[0];
                        *(v212 + 11) = *(v202 + 11);
                        if (sub_26CC28EA8(&v206) != 1)
                        {
                          v200 = v210;
                          v201 = v211;
                          v202[0] = v212[0];
                          *(v202 + 11) = *(v212 + 11);
                          v196 = v206;
                          v197 = v207;
                          v198 = v208;
                          v199 = v209;
                          sub_26CCF0FF0(&v196, v81, v82, v179, v195, v45);
                          sub_26CC1B544(v203, &qword_2804BD870, &unk_26CD47430);
                          v178 = v195[1];
                          v179 = v195[0];

                          sub_26CC1B544(&v235, &qword_2804BD838, &qword_26CD473E8);
                          v99 = v184;
                          v98 = v185;
                          v101 = v178;
                          v100 = v179;
                          v84 = v194;
                          goto LABEL_71;
                        }

                        goto LABEL_74;
                      }

                      while (1)
                      {
                        sub_26CCE57A0(&v213);
LABEL_74:
                        sub_26CC1B544(&v235, &qword_2804BD838, &qword_26CD473E8);
                        v101 = v184;
                        v100 = v185;
                        v98 = v185;
                        v99 = v184;
                        v84 = v194;
LABEL_71:
                        v52 = v92;
LABEL_35:
                        v227 = v188;
                        v228 = v192;
                        v229 = v187;
                        v230 = v190;
                        v231 = v98;
                        v232 = v99;
                        v233 = v100;
                        v234 = v101;
                        v224 = v98;
                        v225 = v99;
                        v226[0] = v100;
                        v226[1] = v101;
                        v220 = v188;
                        v221 = v192;
                        v222 = v187;
                        v223 = v190;
                        LODWORD(v178) = sub_26CCDA9DC(&v220);
                        if (v178 >= 0x10000)
                        {
                          v224 = v231;
                          v225 = v232;
                          v226[0] = v233;
                          v226[1] = v234;
                          v220 = v227;
                          v221 = v228;
                          v222 = v229;
                          v223 = v230;
                          (*(*v1 + 480))(v178 & 1, (v178 >> 8) & 1, &v220);
                        }

                        v102 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations;
                        swift_beginAccess();
                        v103 = *(v1 + v102);
                        v104 = *(v103 + 64);
                        *&v179 = v103 + 64;
                        v105 = 1 << *(v103 + 32);
                        v106 = v105 < 64 ? ~(-1 << v105) : -1;
                        v92 = v106 & v104;
                        v107 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_contIdsForFiringAtEveryRawDataBoundary;
                        v173 = v103;

                        v168 = v107;
                        swift_beginAccess();
                        v108 = 0;
                        v109 = (v105 + 63) >> 6;
                        *&v190 = v181 + 16;
                        v172 = v174 + 16;
                        *&v185 = v181 + 32;
                        *&v184 = v174 + 32;
                        *&v192 = v181 + 8;
                        v169 = (v189 + 8);
                        v176 = (v174 + 8);
                        v177 = v109;
                        v182 = v1;
                        v110 = v179;
                        if (v92)
                        {
                          break;
                        }

LABEL_45:
                        if (v109 <= v108 + 1)
                        {
                          v115 = v108 + 1;
                        }

                        else
                        {
                          v115 = v109;
                        }

                        v116 = v115 - 1;
                        while (1)
                        {
                          v114 = v108 + 1;
                          if (__OFADD__(v108, 1))
                          {
                            break;
                          }

                          if (v114 >= v109)
                          {
                            v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
                            v131 = v180;
                            (*(*(v147 - 8) + 56))(v180, 1, 1, v147);
                            v92 = 0;
                            v108 = v116;
                            goto LABEL_54;
                          }

                          v92 = *(v110 + 8 * v114);
                          ++v108;
                          if (v92)
                          {
                            v108 = v114;
                            goto LABEL_53;
                          }
                        }

                        __break(1u);
                      }

                      while (1)
                      {
                        while (1)
                        {
                          v114 = v108;
LABEL_53:
                          v117 = __clz(__rbit64(v92));
                          v92 &= v92 - 1;
                          v118 = v117 | (v114 << 6);
                          v119 = v173;
                          v120 = v181;
                          v121 = v191;
                          (*(v181 + 16))(v191, *(v173 + 48) + *(v181 + 72) * v118, v84);
                          v122 = *(v119 + 56);
                          v124 = v174;
                          v123 = v175;
                          (*(v174 + 16))(v175, v122 + *(v174 + 72) * v118, v52);
                          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
                          v126 = v84;
                          v127 = *(v125 + 48);
                          v128 = *(v120 + 32);
                          v129 = v180;
                          v128(v180, v121, v126);
                          v130 = &v129[v127];
                          v131 = v129;
                          (*(v124 + 32))(v130, v123, v52);
                          (*(*(v125 - 8) + 56))(v129, 0, 1, v125);
                          v1 = v182;
                          v54 = v183;
                          v53 = v193;
LABEL_54:
                          sub_26CC16D64(v131, v54, &qword_2804BD860, &qword_26CD47418);
                          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
                          if ((*(*(v132 - 8) + 48))(v54, 1, v132) == 1)
                          {

                            v217 = v231;
                            v218 = v232;
                            v219[0] = v233;
                            v219[1] = v234;
                            v213 = v227;
                            v214 = v228;
                            v215 = v229;
                            v216 = v230;
                            nullsub_1(&v213, v229);
                            v150 = v164;
                            v151 = v164[5];
                            v224 = v164[4];
                            v225 = v151;
                            v152 = v164[7];
                            v226[0] = v164[6];
                            v226[1] = v152;
                            v153 = v164[1];
                            v220 = *v164;
                            v221 = v153;
                            v154 = v164[3];
                            v222 = v164[2];
                            v223 = v154;
                            v155 = v213;
                            v156 = v214;
                            v157 = v216;
                            v164[2] = v215;
                            v150[3] = v157;
                            *v150 = v155;
                            v150[1] = v156;
                            v158 = v217;
                            v159 = v218;
                            v160 = v219[1];
                            v150[6] = v219[0];
                            v150[7] = v160;
                            v150[4] = v158;
                            v150[5] = v159;
                            sub_26CCE56F0(&v227, &v206);
                            sub_26CC1B544(&v220, &qword_2804BD838, &qword_26CD473E8);
                            v210 = v231;
                            v211 = v232;
                            v212[0] = v233;
                            v212[1] = v234;
                            v206 = v227;
                            v207 = v228;
                            v208 = v229;
                            v209 = v230;
                            v161 = sub_26CCDB300(&v206);
                            v163 = v162;
                            sub_26CCE574C(&v227);
                            (*(*v1 + 504))(v161, v163 & 1);

                            return sub_26CCC490C(v166);
                          }

                          v133 = *(v132 + 48);
                          v84 = v194;
                          (*v185)(v53, v54, v194);
                          v134 = v54 + v133;
                          v135 = v186;
                          (*v184)(v186, v134, v52);
                          if (v178 < 0x10000)
                          {
                            break;
                          }

                          v224 = v231;
                          v225 = v232;
                          v226[0] = v233;
                          v226[1] = v234;
                          v220 = v227;
                          v221 = v228;
                          v222 = v229;
                          v223 = v230;
                          sub_26CCE56F0(&v227, &v213);
                          v111 = v170;
                          sub_26CD3A89C();
                          v112 = v186;
                          v113 = v111;
                          v84 = v194;
                          (*v169)(v113, v171);
                          (*v176)(v112, v52);
LABEL_43:
                          (*v192)(v53, v84);
                          v109 = v177;
                          v110 = v179;
                          if (!v92)
                          {
                            goto LABEL_45;
                          }
                        }

                        v136 = v52;
                        v137 = *(v1 + v168);
                        if (!*(v137 + 16))
                        {
                          v52 = v136;
                          (*v176)(v135, v136);
                          goto LABEL_43;
                        }

                        v138 = *(v137 + 40);
                        sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0]);

                        v139 = sub_26CD3A52C();
                        v140 = -1 << *(v137 + 32);
                        v141 = v139 & ~v140;
                        v189 = v137 + 56;
                        if ((*(v137 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141))
                        {
                          v187.n128_u64[0] = ~v140;
                          v188.n128_u64[0] = *(v181 + 72);
                          v142 = *(v181 + 16);
                          while (1)
                          {
                            v143 = v191;
                            v144 = v194;
                            v142(v191, *(v137 + 48) + v188.n128_u64[0] * v141, v194);
                            sub_26CCE666C(&qword_280BBB1B8, MEMORY[0x277CC95F0]);
                            v145 = sub_26CD3A56C();
                            v146 = *v192;
                            (*v192)(v143, v144);
                            if (v145)
                            {
                              break;
                            }

                            v141 = (v141 + 1) & v187.n128_u64[0];
                            if (((*(v189 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
                            {
                              goto LABEL_61;
                            }
                          }

                          v224 = v231;
                          v225 = v232;
                          v226[0] = v233;
                          v226[1] = v234;
                          v220 = v227;
                          v221 = v228;
                          v222 = v229;
                          v223 = v230;
                          sub_26CCE56F0(&v227, &v213);
                          v148 = v170;
                          v52 = v167;
                          v149 = v186;
                          sub_26CD3A89C();
                          (*v169)(v148, v171);
                          (*v176)(v149, v52);
                          v53 = v193;
                          v84 = v194;
                          v146(v193, v194);
                        }

                        else
                        {
LABEL_61:

                          v52 = v167;
                          (*v176)(v186, v167);
                          v53 = v193;
                          v84 = v194;
                          (*v192)(v193, v194);
                        }

                        v1 = v182;
                        v54 = v183;
                        v109 = v177;
                        v110 = v179;
                        if (!v92)
                        {
                          goto LABEL_45;
                        }
                      }
                    }
                  }
                }
              }

              sub_26CC1B544(&v235, &qword_2804BD838, &qword_26CD473E8);
              goto LABEL_70;
            }
          }
        }

        sub_26CC1B544(&v235, &qword_2804BD838, &qword_26CD473E8);
        v100 = 0uLL;
        v101 = 0uLL;
        v98 = 0uLL;
        v99 = 0uLL;
        goto LABEL_35;
      }
    }

    v66 = v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
    swift_beginAccess();
    v62 = *(v66 + 16);
    v65 = v45 + v62;
    v63 = v45;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_26CCD9454()
{
  v1 = v0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD858, &qword_26CD47410);
  v2 = *(v92 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v73 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v87 = *(v96 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v73 - v6;
  v94 = sub_26CD3A20C();
  v86 = *(v94 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v94);
  v83 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD860, &qword_26CD47418);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v85 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - v13;
  v15 = sub_26CD3A42C();
  v16 = sub_26CD3A99C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26CC14000, v15, v16, "Current media item changed.  Resetting timed metadata and loading metadata for new item", v17, 2u);
    MEMORY[0x26D6AE340](v17, -1, -1);
  }

  v18 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = *(v19 + 16);
  v75 = v1;
  if (v20)
  {
    v93 = v2;

    v21 = 32;
    do
    {
      v22 = *(v19 + v21);

      sub_26CD3A8DC();

      v21 += 8;
      --v20;
    }

    while (v20);

    v1 = v75;
    v23 = *(v75 + v18);
    v2 = v93;
  }

  *(v1 + v18) = MEMORY[0x277D84F90];

  (*(*v1 + 208))(0);
  v24 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  swift_beginAccess();
  v25 = *(v1 + v24);
  *(v1 + v24) = 0;

  sub_26CCE557C(v99);
  v26 = (v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  swift_beginAccess();
  v27 = v26[5];
  v100[4] = v26[4];
  v100[5] = v27;
  v28 = v26[7];
  v100[6] = v26[6];
  v100[7] = v28;
  v29 = v26[1];
  v100[0] = *v26;
  v100[1] = v29;
  v30 = v26[3];
  v100[2] = v26[2];
  v100[3] = v30;
  v31 = v99[0];
  v32 = v99[1];
  v33 = v99[3];
  v26[2] = v99[2];
  v26[3] = v33;
  *v26 = v31;
  v26[1] = v32;
  v34 = v99[4];
  v35 = v99[5];
  v36 = v99[7];
  v26[6] = v99[6];
  v26[7] = v36;
  v26[4] = v34;
  v26[5] = v35;
  sub_26CC1B544(v100, &qword_2804BD838, &qword_26CD473E8);
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v37 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations;
  swift_beginAccess();
  v74 = v37;
  v38 = *(v1 + v37);
  v39 = *(v38 + 64);
  v77 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v76 = (v40 + 63) >> 6;
  v80 = v87 + 16;
  v81 = v86 + 16;
  v79 = v86 + 32;
  v43 = (v87 + 32);
  v89 = (v87 + 8);
  v90 = (v2 + 8);
  v88 = (v86 + 8);
  v84 = v38;

  v45 = 0;
  v46 = v85;
  v82 = v14;
  v78 = v43;
  if (v42)
  {
    while (1)
    {
      v47 = v45;
LABEL_18:
      v50 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v51 = v50 | (v47 << 6);
      v52 = v83;
      v53 = v84;
      v54 = v86;
      v55 = v94;
      (*(v86 + 16))(v83, *(v84 + 48) + *(v86 + 72) * v51, v94);
      v56 = *(v53 + 56);
      v57 = v87;
      v59 = v95;
      v58 = v96;
      (*(v87 + 16))(v95, v56 + *(v87 + 72) * v51, v96);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
      v93 = *(v60 + 48);
      v61 = *(v54 + 32);
      v46 = v85;
      v61(v85, v52, v55);
      v62 = v59;
      v43 = v78;
      (*(v57 + 32))(v46 + v93, v62, v58);
      (*(*(v60 - 8) + 56))(v46, 0, 1, v60);
      v49 = v47;
      v14 = v82;
LABEL_19:
      sub_26CC16D64(v46, v14, &qword_2804BD860, &qword_26CD47418);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
      if ((*(*(v63 - 8) + 48))(v14, 1, v63) == 1)
      {
        break;
      }

      v64 = &v14[*(v63 + 48)];
      v65 = v95;
      v66 = v96;
      (*v43)(v95, v64, v96);
      v98[4] = v105;
      v98[5] = v106;
      v98[6] = v107;
      v98[7] = v108;
      v98[0] = v101;
      v98[1] = v102;
      v98[2] = v103;
      v98[3] = v104;
      sub_26CCE56F0(&v101, &v97);
      v67 = v91;
      sub_26CD3A89C();
      (*v90)(v67, v92);
      (*v89)(v65, v66);
      result = (*v88)(v14, v94);
      v45 = v49;
      if (!v42)
      {
        goto LABEL_11;
      }
    }

    sub_26CCE574C(&v101);
    v69 = *(v75 + v74);
    v70 = *(v69 + 16);
    if (!v70)
    {
      v71 = MEMORY[0x277D84F90];
LABEL_27:
      sub_26CCD9CF8(v71);
    }

    v71 = sub_26CCDECCC(*(v69 + 16), 0);
    v72 = sub_26CCE4F3C(v98, (v71 + ((*(v87 + 80) + 32) & ~*(v87 + 80))), v70, v69);

    result = sub_26CC33234();
    if (v72 == v70)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_11:
    if (v76 <= v45 + 1)
    {
      v48 = v45 + 1;
    }

    else
    {
      v48 = v76;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v47 >= v76)
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
        (*(*(v68 - 8) + 56))(v46, 1, 1, v68);
        v42 = 0;
        goto LABEL_19;
      }

      v42 = *(v77 + 8 * v47);
      ++v45;
      if (v42)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26CCD9CF8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_26CD3A86C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_26CD3A84C();

  v10 = sub_26CD3A83C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a1;

  v13 = sub_26CCD5E38(0, 0, v7, &unk_26CD47740, v11);
  v14 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks;
  swift_beginAccess();
  v15 = *(v2 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_26CCBEE98(0, v15[2] + 1, 1, v15);
    *(v2 + v14) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_26CCBEE98((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  v15[v18 + 4] = v13;
  *(v2 + v14) = v15;
  return swift_endAccess();
}

uint64_t sub_26CCD9F00(uint64_t a1)
{
  *(v2 + 200) = v1;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v4;
  *(v2 + 208) = *(a1 + 64);
  *(v2 + 216) = *(a1 + 72);
  *(v2 + 232) = sub_26CD3A84C();
  *(v2 + 240) = sub_26CD3A83C();
  v6 = sub_26CD3A80C();
  *(v2 + 248) = v6;
  *(v2 + 256) = v5;

  return MEMORY[0x2822009F8](sub_26CCD9FBC, v6, v5);
}

uint64_t sub_26CCD9FBC()
{
  v30 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  *(v0 + 264) = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(v0 + 240);

    v6 = *(v0 + 8);

    return v6(v4);
  }

  else
  {
    v8 = *(**(v0 + 200) + 200);
    v9 = v8(v3);
    if (!v9)
    {
      v24 = *(v0 + 208);
      v25 = *(v0 + 32);
      v27[0] = *(v0 + 16);
      v27[1] = v25;
      v26 = *(v0 + 64);
      v27[2] = *(v0 + 48);
      v27[3] = v26;
      v28 = v24;
      v29 = *(v0 + 216);
      v9 = sub_26CCE6280(v27);
    }

    *(v0 + 272) = v9;
    v10 = *(**(v0 + 200) + 208);

    v12 = v10(v11);
    v13 = v8(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 200) + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      v16 = *(v15 + 8);
      swift_beginAccess();
      *(v14 + 24) = v16;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }

    v17 = *(v0 + 200);
    *(v0 + 280) = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_logger;
    v18 = sub_26CD3A42C();
    v19 = sub_26CD3A99C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26CC14000, v18, v19, "Fetching timed metadata", v20, 2u);
      MEMORY[0x26D6AE340](v20, -1, -1);
    }

    v21 = *(v0 + 232);

    *(v0 + 288) = sub_26CD3A83C();
    v23 = sub_26CD3A80C();
    *(v0 + 296) = v23;
    *(v0 + 304) = v22;

    return MEMORY[0x2822009F8](sub_26CCDA2F0, v23, v22);
  }
}

uint64_t sub_26CCDA2F0()
{
  v1 = *(v0 + 272);
  v2 = sub_26CCE71CC(*(v0 + 216), *(v0 + 224), *(v0 + 208));
  *(v0 + 312) = v2;
  v3 = *(MEMORY[0x277D857C8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD898, &unk_26CD47710);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  *v4 = v0;
  v4[1] = sub_26CCDA3E8;
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 152, v2, v5, v6, v7);
}

uint64_t sub_26CCDA3E8()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = v2[39];

  v6 = v2[38];
  v7 = v2[37];
  if (v0)
  {
    v8 = sub_26CCDA8C0;
  }

  else
  {
    v8 = sub_26CCDA53C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26CCDA53C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);

  *(v0 + 336) = *(v0 + 152);
  *(v0 + 344) = *(v0 + 160);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  v4 = *(v0 + 248);
  v5 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_26CCDA5C4, v4, v5);
}

uint64_t sub_26CCDA5C4()
{
  v1 = v0[30];

  if (sub_26CD3A8EC())
  {
    v2 = v0[25] + v0[35];
    v3 = sub_26CD3A42C();
    v4 = sub_26CD3A99C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26CC14000, v3, v4, "Loading task cancelled while fetching timed metadata", v5, 2u);
      MEMORY[0x26D6AE340](v5, -1, -1);
    }

    v7 = v0[43];
    v6 = v0[44];
    v8 = v0[42];
    v9 = v0[34];

    sub_26CCE6400();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    sub_26CC18C50(v7, v6);

    (*(*v0[25] + 520))(0, 0xF000000000000000);
    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[42];
    v14 = v0[35];
    v15 = v0[25] + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
    swift_beginAccess();
    *(v13 + 24) = *(v15 + 24);
    v16 = sub_26CD3A42C();
    v17 = sub_26CD3A99C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26CC14000, v16, v17, "Done fetching timed metadata", v18, 2u);
      MEMORY[0x26D6AE340](v18, -1, -1);
    }

    v20 = v0[43];
    v19 = v0[44];
    v21 = v0[42];
    v23 = v0[33];
    v22 = v0[34];
    v24 = v0[25];

    v25 = *(v24 + v23);
    *(v24 + v23) = v21;

    (*(*v24 + 520))(v20, v19);
    sub_26CC18C50(v20, v19);
    v26 = v0[42];
    v27 = v0[1];

    return v27(v26);
  }
}

uint64_t sub_26CCDA8C0()
{
  v1 = v0[36];

  v2 = v0[31];
  v3 = v0[32];

  return MEMORY[0x2822009F8](sub_26CCDA924, v2, v3);
}

uint64_t sub_26CCDA924()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);

  v3 = *(v0 + 328);
  (*(**(v0 + 200) + 520))(0, 0xF000000000000000);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26CCDA9DC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  if (*(a1 + 24))
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 120))
  {
    v4 = *(a1 + 120);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v84 = v4;
  v5 = (v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  swift_beginAccess();
  v6 = v5[5];
  v7 = v5[3];
  v132 = v5[4];
  v133 = v6;
  v8 = v5[7];
  v9 = v5[5];
  v134 = v5[6];
  v135 = v8;
  v10 = v5[1];
  v129[0] = *v5;
  v129[1] = v10;
  v11 = v5[3];
  v130 = v5[2];
  v131 = v11;
  v128 = *(v5 + 2);
  v127 = v129[0];
  v12 = *(&v10 + 1);
  v13 = v5[7];
  v125 = v134;
  v126 = v13;
  v123 = v132;
  v124 = v9;
  v121 = v130;
  v122 = v7;
  v14 = *(v5 + 2);
  v136 = v129[0];
  v139 = v130;
  v140 = v7;
  v143 = v134;
  v144 = v13;
  v141 = v132;
  v142 = v9;
  v137 = v14;
  v138 = *(&v10 + 1);
  if (sub_26CCE56CC(&v136) == 1 || !v12)
  {
    v113 = v127;
    *&v114 = v128;
    *(&v114 + 1) = v12;
    v117 = v123;
    v118 = v124;
    v119 = v125;
    v120 = v126;
    v115 = v121;
    v116 = v122;

    sub_26CC1B4DC(v129, v106, &qword_2804BD838, &qword_26CD473E8);
    sub_26CC1B544(&v113, &qword_2804BD838, &qword_26CD473E8);
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v113 = v127;
    *&v114 = v128;
    *(&v114 + 1) = v12;
    v117 = v123;
    v118 = v124;
    v119 = v125;
    v120 = v126;
    v115 = v121;
    v116 = v122;

    sub_26CC1B4DC(v129, v106, &qword_2804BD838, &qword_26CD473E8);

    sub_26CC1B544(&v113, &qword_2804BD838, &qword_26CD473E8);
  }

  v15 = v5[7];
  v16 = v5[5];
  v111 = v5[6];
  v112 = v15;
  v17 = v5[1];
  v106[0] = *v5;
  v106[1] = v17;
  v18 = v5[3];
  v107 = v5[2];
  v108 = v18;
  v88 = v106[0];
  v89 = v17;
  v90 = v107;
  v91 = v18;
  *v94 = v111;
  v19 = v5[5];
  v20 = v5[3];
  v109 = v5[4];
  v110 = v19;
  v92 = v109;
  v93 = v19;
  *&v94[16] = *(v5 + 14);
  v21 = *(&v112 + 1);
  v22 = *(v5 + 14);
  v118 = v16;
  v119 = v111;
  v116 = v20;
  v117 = v109;
  v114 = v17;
  v115 = v107;
  v113 = v106[0];
  *&v120 = v22;
  *(&v120 + 1) = *(&v112 + 1);
  if (sub_26CCE56CC(&v113) == 1 || !v21)
  {
    v103 = v92;
    v104 = v93;
    *v105 = *v94;
    v99 = v88;
    v100 = v89;
    v101 = v90;
    v102 = v91;
    *&v105[16] = *&v94[16];
    *&v105[24] = v21;
    sub_26CC1B4DC(v106, v97, &qword_2804BD838, &qword_26CD473E8);
    sub_26CC1B544(&v99, &qword_2804BD838, &qword_26CD473E8);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v103 = v92;
    v104 = v93;
    *v105 = *v94;
    v99 = v88;
    v100 = v89;
    v101 = v90;
    v102 = v91;
    *&v105[16] = *&v94[16];
    *&v105[24] = v21;
    sub_26CC1B4DC(v106, v97, &qword_2804BD838, &qword_26CD473E8);

    sub_26CC1B544(&v99, &qword_2804BD838, &qword_26CD473E8);
  }

  v23 = *(v3 + 16);
  v85 = v21;
  if (v23)
  {
    *&v97[0] = v2;
    sub_26CCEB1F8(0, v23, 0);
    v24 = *&v97[0];
    v25 = v3 + 32;
    do
    {
      sub_26CC19A84(v25, &v99);
      v26 = *(&v100 + 1);
      v27 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v28 = (*(v27 + 8))(v26, v27);
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      *&v97[0] = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_26CCEB1F8((v31 > 1), v32 + 1, 1);
        v24 = *&v97[0];
      }

      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v25 += 40;
      --v23;
    }

    while (v23);

    v21 = v85;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v34 = v84;
  v35 = *(v84 + 16);
  v36 = MEMORY[0x277D84F90];
  v83 = v12;
  if (v35)
  {
    *&v97[0] = MEMORY[0x277D84F90];
    sub_26CCEB1F8(0, v35, 0);
    v37 = *&v97[0];
    v38 = v84 + 32;
    do
    {
      v39 = v37;
      sub_26CC19A84(v38, &v99);
      v40 = *(&v100 + 1);
      v41 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v42 = (*(v41 + 8))(v40, v41);
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      v37 = v39;
      *&v97[0] = v39;
      v46 = *(v39 + 16);
      v45 = *(v39 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_26CCEB1F8((v45 > 1), v46 + 1, 1);
        v37 = *&v97[0];
      }

      *(v37 + 16) = v46 + 1;
      v47 = v37 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
      v38 += 40;
      --v35;
    }

    while (v35);
    v21 = v85;
    v12 = v83;
    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v82 = v37;
  v48 = *(v12 + 16);
  if (v48)
  {
    *&v97[0] = v36;
    sub_26CCEB1F8(0, v48, 0);
    v49 = *&v97[0];
    v50 = v12 + 32;
    do
    {
      sub_26CC19A84(v50, &v99);
      v51 = *(&v100 + 1);
      v52 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v53 = (*(v52 + 8))(v51, v52);
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      *&v97[0] = v49;
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_26CCEB1F8((v56 > 1), v57 + 1, 1);
        v49 = *&v97[0];
      }

      *(v49 + 16) = v57 + 1;
      v58 = v49 + 16 * v57;
      *(v58 + 32) = v53;
      *(v58 + 40) = v55;
      v50 += 40;
      --v48;
    }

    while (v48);

    v21 = v85;
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v59 = *(v21 + 16);
  v60 = MEMORY[0x277D84F90];
  if (v59)
  {
    *&v97[0] = MEMORY[0x277D84F90];
    sub_26CCEB1F8(0, v59, 0);
    v60 = *&v97[0];
    v61 = v21 + 32;
    do
    {
      sub_26CC19A84(v61, &v99);
      v62 = *(&v100 + 1);
      v63 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v64 = (*(v63 + 8))(v62, v63);
      v66 = v65;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      *&v97[0] = v60;
      v68 = *(v60 + 16);
      v67 = *(v60 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_26CCEB1F8((v67 > 1), v68 + 1, 1);
        v60 = *&v97[0];
      }

      *(v60 + 16) = v68 + 1;
      v69 = v60 + 16 * v68;
      *(v69 + 32) = v64;
      *(v69 + 40) = v66;
      v61 += 40;
      --v59;
    }

    while (v59);
    v34 = v84;
    v21 = v85;
  }

  v70 = sub_26CCF3078(v24);

  v71 = sub_26CCF3078(v49);

  v72 = sub_26CCDEA18(v70, v71);

  if (!*(v34 + 16))
  {

    goto LABEL_51;
  }

  sub_26CC19A84(v34 + 32, v96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:

    goto LABEL_52;
  }

  v97[4] = v103;
  v97[5] = v104;
  *v98 = *v105;
  *&v98[11] = *&v105[11];
  v97[0] = v99;
  v97[1] = v100;
  v97[2] = v101;
  v97[3] = v102;
  if (!*(v21 + 16))
  {
    sub_26CCE57A0(v97);
    goto LABEL_51;
  }

  sub_26CC19A84(v21 + 32, v95);

  if (swift_dynamicCast())
  {
    v86[4] = v92;
    v86[5] = v93;
    *v87 = *v94;
    *&v87[11] = *&v94[11];
    v86[0] = v88;
    v86[1] = v89;
    v86[2] = v90;
    v86[3] = v91;
    if (v97[0] == v88 || (sub_26CD3AFDC() & 1) != 0)
    {
      sub_26CCE57A0(v97);
      sub_26CCE57A0(v86);
      v73 = v98[26] ^ v87[26];
      v74 = v98[24] ^ v87[24];
      goto LABEL_53;
    }

    sub_26CCE57A0(v86);
  }

  sub_26CCE57A0(v97);
LABEL_52:
  v74 = 0;
  v73 = 0;
LABEL_53:
  v75 = v72 ^ 1;
  v76 = sub_26CCF3078(v82);

  v77 = sub_26CCF3078(v60);

  v78 = sub_26CCDEA18(v76, v77);

  if ((v75 | v78 ^ 1 | (v73 | v74)))
  {
    v79 = 0x10000;
  }

  else
  {
    v79 = 0;
  }

  if ((v78 ^ 1 | (v73 | v74)))
  {
    v80 = 256;
  }

  else
  {
    v80 = 0;
  }

  return v80 & 0xFFFFFFFE | v75 & 1 | v79;
}

uint64_t sub_26CCDB300(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[10];
  v5 = a1[11];
  v6 = a1[14];
  v7 = a1[15];
  if (!a1[3])
  {
    v9 = MEMORY[0x277D84F90];
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = a1[2];
  v9 = sub_26CCBED94(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_26CCBED94((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  if (v7)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26CCBED94(0, *(v9 + 2) + 1, 1, v9);
    }

    v13 = *(v9 + 2);
    v12 = *(v9 + 3);
    if (v13 >= v12 >> 1)
    {
      v9 = sub_26CCBED94((v12 > 1), v13 + 1, 1, v9);
    }

    *(v9 + 2) = v13 + 1;
    *&v9[8 * v13 + 32] = v6;
  }

LABEL_12:
  v14 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_contIdsForFiringAtEveryRawDataBoundary;
  swift_beginAccess();
  if (*(*(v1 + v14) + 16))
  {
    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26CCBED94(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_26CCBED94((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      *&v9[8 * v16 + 32] = v2;
    }

    if (v5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26CCBED94(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_26CCBED94((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      *&v9[8 * v18 + 32] = v4;
    }
  }

  v19 = *(v9 + 2);
  if (v19)
  {
    v20 = *(v9 + 4);
    v21 = v19 - 1;
    if (v19 != 1)
    {
      v22 = (v9 + 40);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v23 < v20)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }

    v25 = v20;
  }

  else
  {
    v25 = 0.0;
  }

  return *&v25;
}

uint64_t TimedMetadataVendor.TimedMetadataVendorError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.programID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.adamID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.contentID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.playablePassThrough.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.rawData.getter()
{
  v1 = *(v0 + 72);
  sub_26CCC706C(v1, *(v0 + 80));
  return v1;
}

uint64_t TimedMetadataVendor.PlaybackState.audioLanguageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for TimedMetadataVendor.PlaybackState(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_26CCDB7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_26CC1B4DC(a1, &v9 - v6, &qword_2804BD748, &qword_26CD46340);
  return (*(**a2 + 184))(v7);
}

uint64_t sub_26CCDB8FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t TimedMetadataVendor.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  TimedMetadataVendor.init()();
  return v3;
}

uint64_t sub_26CCDB99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[53] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8C8, &qword_26CD47768);
  v4[54] = v5;
  v6 = *(v5 - 8);
  v4[55] = v6;
  v7 = *(v6 + 64) + 15;
  v4[56] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8D0, &unk_26CD47770);
  v4[57] = v8;
  v9 = *(v8 - 8);
  v4[58] = v9;
  v10 = *(v9 + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = sub_26CD3A84C();
  v4[61] = sub_26CD3A83C();
  v12 = sub_26CD3A80C();
  v4[62] = v12;
  v4[63] = v11;

  return MEMORY[0x2822009F8](sub_26CCDBB08, v12, v11);
}

uint64_t sub_26CCDBB08()
{
  v1 = v0[53];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (Strong)
  {
    v3 = v0[59];
    v5 = v0[55];
    v4 = v0[56];
    v6 = v0[54];
    sub_26CCD7894(0, v4);
    sub_26CD3A8AC();
    (*(v5 + 8))(v4, v6);
    v7 = v0[60];
    v8 = sub_26CD3A83C();
    v0[65] = v8;
    v9 = *(MEMORY[0x277D85798] + 4);
    v10 = swift_task_alloc();
    v0[66] = v10;
    *v10 = v0;
    v10[1] = sub_26CCDBC94;
    v11 = v0[59];
    v12 = v0[57];
    v13 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 34, v8, v13, v12);
  }

  else
  {
    v14 = v0[61];

    v15 = v0[59];
    v16 = v0[56];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_26CCDBC94()
{
  v1 = *v0;
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 520);
  v7 = *v0;

  v4 = *(v1 + 504);
  v5 = *(v1 + 496);

  return MEMORY[0x2822009F8](sub_26CCDBDD8, v5, v4);
}

uint64_t sub_26CCDBDD8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 352);
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v3 = *(v0 + 368);
  v4 = *(v0 + 384);
  *(v0 + 240) = v3;
  *(v0 + 256) = v4;
  v5 = *(v0 + 272);
  v6 = *(v0 + 288);
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  v7 = *(v0 + 304);
  v8 = *(v0 + 320);
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  *(v0 + 112) = v3;
  *(v0 + 128) = v4;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  if (sub_26CCE56CC(v0 + 16) == 1)
  {
    v9 = *(v0 + 512);
    v10 = *(v0 + 488);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

    v11 = *(v0 + 472);
    v12 = *(v0 + 448);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    sub_26CC1B544(v0 + 144, &qword_2804BD838, &qword_26CD473E8);
    v15 = *(v0 + 480);
    v16 = sub_26CD3A83C();
    *(v0 + 520) = v16;
    v17 = *(MEMORY[0x277D85798] + 4);
    v18 = swift_task_alloc();
    *(v0 + 528) = v18;
    *v18 = v0;
    v18[1] = sub_26CCDBC94;
    v19 = *(v0 + 472);
    v20 = *(v0 + 456);
    v21 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 272, v16, v21, v20);
  }
}

uint64_t sub_26CCDBF60()
{
  v0 = sub_26CD3A49C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26CD3A4CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  v10 = sub_26CD3A9DC();
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_26CCE66B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_79_1;
  v12 = _Block_copy(aBlock);

  sub_26CD3A4AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26CCE666C(&qword_280BBB7F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CCC7658();
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CCDC250()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26CCD7DD4();
  }

  return result;
}

uint64_t sub_26CCDC2A8(uint64_t a1)
{
  v2 = sub_26CD39DEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_26CD39DCC();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t TimedMetadataVendor.__deallocating_deinit()
{
  TimedMetadataVendor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26CCDC3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v3 = sub_26CD3A49C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26CD3A4CC();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v30 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26CD3A20C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
    v28 = sub_26CD3A9DC();
    v15 = swift_allocObject();
    v27 = v7;
    v16 = v15;
    swift_weakInit();
    (*(v12 + 16))(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v11);
    v17 = *(v12 + 80);
    v29 = v8;
    v18 = v4;
    v19 = v3;
    v20 = (v17 + 24) & ~v17;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    (*(v12 + 32))(v21 + v20, &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    aBlock[4] = sub_26CCE6608;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26CC1DDD0;
    aBlock[3] = &block_descriptor_75;
    v22 = _Block_copy(aBlock);

    v23 = v30;
    sub_26CD3A4AC();
    v32 = MEMORY[0x277D84F90];
    sub_26CCE666C(&qword_280BBB7F0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
    sub_26CCC7658();
    v24 = v27;
    sub_26CD3AB5C();
    v25 = v28;
    MEMORY[0x26D6AD3E0](0, v23, v24, v22);
    _Block_release(v22);

    (*(v18 + 8))(v24, v19);
    (*(v31 + 8))(v23, v29);
  }

  return result;
}

uint64_t sub_26CCDC7FC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8C0, &qword_26CD47748);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD840, &qword_26CD473F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21[-v9];
  v11 = sub_26CD3A20C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    (*(v12 + 16))(v15, a2, v11);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations;
    swift_beginAccess();
    sub_26CCD6718(v10, v15);
    swift_endAccess();
    swift_beginAccess();
    sub_26CCE46C4(a2, v6);
    sub_26CC1B544(v6, &qword_2804BD8C0, &qword_26CD47748);
    v20 = swift_endAccess();
    if (!*(*(v17 + v19) + 16))
    {
      (*(*v17 + 496))(v20);
    }
  }

  return result;
}

uint64_t sub_26CCDCAA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_26CD3A84C();
  *(v1 + 24) = sub_26CD3A83C();
  v3 = sub_26CD3A80C();

  return MEMORY[0x2822009F8](sub_26CCDCB38, v3, v2);
}

uint64_t sub_26CCDCB38()
{
  v2 = v0[2];
  v1 = v0[3];

  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v2 + 80) = 0xF000000000000000;
  v3 = v0[1];

  return v3();
}

uint64_t sub_26CCDCBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[317] = a5;
  v5[316] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD858, &qword_26CD47410);
  v5[318] = v6;
  v7 = *(v6 - 8);
  v5[319] = v7;
  v8 = *(v7 + 64) + 15;
  v5[320] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v5[321] = v9;
  v10 = *(v9 - 8);
  v5[322] = v10;
  v11 = *(v10 + 64) + 15;
  v5[323] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200) - 8) + 64) + 15;
  v5[324] = swift_task_alloc();
  v5[325] = swift_task_alloc();
  v13 = sub_26CD3A1EC();
  v5[326] = v13;
  v14 = *(v13 - 8);
  v5[327] = v14;
  v15 = *(v14 + 64) + 15;
  v5[328] = swift_task_alloc();
  v5[329] = swift_task_alloc();
  v5[330] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340) - 8) + 64) + 15;
  v5[331] = swift_task_alloc();
  v17 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v5[332] = v17;
  v18 = *(v17 - 8);
  v5[333] = v18;
  v19 = *(v18 + 64) + 15;
  v5[334] = swift_task_alloc();
  v5[335] = swift_task_alloc();
  sub_26CD3A84C();
  v5[336] = sub_26CD3A83C();
  v21 = sub_26CD3A80C();
  v5[337] = v21;
  v5[338] = v20;

  return MEMORY[0x2822009F8](sub_26CCDCE78, v21, v20);
}

uint64_t sub_26CCDCE78()
{
  v1 = v0[316];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[339] = Strong;
  if (!Strong)
  {
    v8 = v0[336];
LABEL_7:

    v9 = v0[335];
    v10 = v0[334];
    v11 = v0[331];
    v12 = v0[330];
    v13 = v0[329];
    v14 = v0[328];
    v15 = v0[325];
    v16 = v0[324];
    v17 = v0[323];
    v18 = v0[320];

    v19 = v0[1];

    return v19();
  }

  v3 = Strong;
  if (sub_26CD3A8EC())
  {
    v4 = v0[336];

    v5 = sub_26CD3A42C();
    v6 = sub_26CD3A99C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26CC14000, v5, v6, "Loading task cancelled prior to loading", v7, 2u);
      MEMORY[0x26D6AE340](v7, -1, -1);
    }

    goto LABEL_7;
  }

  v0[340] = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_logger;
  v21 = sub_26CD3A42C();
  v22 = sub_26CD3A99C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26CC14000, v21, v22, "Starting loading process", v23, 2u);
    MEMORY[0x26D6AE340](v23, -1, -1);
  }

  v24 = *(*v3 + 512);
  v27 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[341] = v26;
  *v26 = v0;
  v26[1] = sub_26CCDD1B0;

  return v27(v0 + 269);
}

uint64_t sub_26CCDD1B0()
{
  v1 = *v0;
  v2 = *(*v0 + 2728);
  v6 = *v0;

  v3 = *(v1 + 2704);
  v4 = *(v1 + 2696);

  return MEMORY[0x2822009F8](sub_26CCDD2D0, v4, v3);
}

uint64_t sub_26CCDD2D0()
{
  v1 = *(v0 + 2200);
  *(v0 + 2096) = *(v0 + 2184);
  *(v0 + 2112) = v1;
  *(v0 + 2128) = *(v0 + 2216);
  v2 = *(v0 + 2168);
  *(v0 + 2064) = *(v0 + 2152);
  *(v0 + 2144) = *(v0 + 2232);
  *(v0 + 2080) = v2;
  if (sub_26CD3A8EC())
  {
    v3 = *(v0 + 2720);
    v4 = *(v0 + 2712);
    v5 = *(v0 + 2688);

    v6 = sub_26CD3A42C();
    v7 = sub_26CD3A99C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 2712);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26CC14000, v6, v7, "Loading task cancelled while loading fetch params", v10, 2u);
      MEMORY[0x26D6AE340](v10, -1, -1);
    }

    sub_26CCE6514(v0 + 2064);

    v11 = *(v0 + 2680);
    v12 = *(v0 + 2672);
    v13 = *(v0 + 2648);
    v14 = *(v0 + 2640);
    v15 = *(v0 + 2632);
    v16 = *(v0 + 2624);
    v17 = *(v0 + 2600);
    v18 = *(v0 + 2592);
    v19 = *(v0 + 2584);
    v20 = *(v0 + 2560);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 2112);
    *(v0 + 2272) = *(v0 + 2096);
    *(v0 + 2288) = v23;
    *(v0 + 2304) = *(v0 + 2128);
    *(v0 + 2320) = *(v0 + 2144);
    v24 = *(v0 + 2080);
    *(v0 + 2240) = *(v0 + 2064);
    *(v0 + 2256) = v24;
    v25 = swift_task_alloc();
    *(v0 + 2736) = v25;
    *v25 = v0;
    v25[1] = sub_26CCDD530;
    v26 = *(v0 + 2712);

    return sub_26CCD9F00(v0 + 2240);
  }
}

uint64_t sub_26CCDD530(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2736);
  v9 = *v2;
  v3[343] = a1;
  v3[344] = v1;

  v5 = v3[338];
  v6 = v3[337];
  if (v1)
  {
    v7 = sub_26CCDE4FC;
  }

  else
  {
    v7 = sub_26CCDD650;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26CCDD650()
{
  v227 = v0;
  v1 = v0[168].n128_i64[0];

  if (sub_26CD3A8EC())
  {
    v2 = v0[169].n128_u64[1] + v0[170].n128_u64[0];
    v3 = sub_26CD3A42C();
    v4 = sub_26CD3A99C();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[171].n128_i64[1];
    v7 = v0[169].n128_i64[1];
    if (v5)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26CC14000, v3, v4, "Loading task cancelled while fetching timed metadata", v8, 2u);
      MEMORY[0x26D6AE340](v8, -1, -1);
    }

    sub_26CCE6514(&v0[129]);

    goto LABEL_47;
  }

  v9 = v0[166].n128_i64[1];
  v10 = v0[166].n128_i64[0];
  v11 = v0[165].n128_i64[1];
  (*(*v0[169].n128_u64[1] + 176))();
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    v12 = v0[171].n128_i64[1];
    v13 = v0[169].n128_i64[1];
    v14 = v0[165].n128_i64[1];
    sub_26CCE6514(&v0[129]);

    sub_26CC1B544(v14, &qword_2804BD748, &qword_26CD46340);
    goto LABEL_47;
  }

  v15 = v0[170].n128_i64[0];
  v16 = v0[169].n128_i64[1];
  sub_26CCE6774(v0[165].n128_i64[1], v0[167].n128_i64[1], type metadata accessor for TimedMetadataVendor.PlaybackState);
  v17 = sub_26CD3A42C();
  v18 = sub_26CD3A99C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26CC14000, v17, v18, "Finished loading process", v19, 2u);
    MEMORY[0x26D6AE340](v19, -1, -1);
  }

  v20 = v0[170].n128_i64[0];
  v21 = v0[169].n128_i64[1];

  v22 = sub_26CD3A42C();
  v23 = sub_26CD3A99C();

  v24 = &unk_280BBC000;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[169].n128_i64[1];
    v26 = swift_slowAlloc();
    *v26 = 134218496;
    v27 = (v25 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig);
    swift_beginAccess();
    *(v26 + 4) = *v27;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v27[1];
    *(v26 + 22) = 2048;
    *(v26 + 24) = v27[2];
    _os_log_impl(&dword_26CC14000, v22, v23, "Initial look back: %f initial look ahead: %f look ahead %f", v26, 0x20u);
    MEMORY[0x26D6AE340](v26, -1, -1);
  }

  v28 = v0[167].n128_i64[1];
  v29 = v0[166].n128_i64[0];
  v30 = v0[163].n128_i64[1];
  v31 = v0[163].n128_i64[0];
  v32 = v0[162].n128_i64[1];

  sub_26CC1B4DC(v28 + *(v29 + 20), v32, &qword_2804BCA90, &qword_26CD3C200);
  v33 = *(v30 + 48);
  v34 = v33(v32, 1, v31);
  v35 = v0[167].n128_u64[1];
  v212 = v29;
  if (v34 == 1)
  {
    sub_26CC1B544(v0[162].n128_i64[1], &qword_2804BCA90, &qword_26CD3C200);
    v36 = *v35;
  }

  else
  {
    v37 = v0[166].n128_i64[0];
    v38 = v0[165].n128_i64[0];
    v39 = v0[164].n128_i64[1];
    v40 = v0[163].n128_i64[1];
    v41 = v0[163].n128_i64[0];
    (*(v40 + 32))(v38, v0[162].n128_u64[1], v41);
    v42 = *v35;
    sub_26CD3A1DC();
    sub_26CD3A10C();
    v44 = v43;
    v45 = *(v40 + 8);
    v45(v39, v41);
    v45(v38, v41);
    v24 = &unk_280BBC000;
    v36 = v42 + v44 * *(v35 + *(v37 + 24));
  }

  v46 = v0 + 148;
  v47 = v0[170].n128_i64[0];
  v48 = v0[169].n128_i64[1];
  sub_26CCC48A8(v0[167].n128_i64[1], v0[167].n128_i64[0]);
  v49 = sub_26CD3A42C();
  v50 = sub_26CD3A99C();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v0[167].n128_i64[0];
  if (v51)
  {
    v53 = v0[163].n128_i64[0];
    v54 = v0[162].n128_i64[0];
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    sub_26CC1B4DC(v52 + *(v212 + 20), v54, &qword_2804BCA90, &qword_26CD3C200);
    v56 = v33(v54, 1, v53);
    v57 = v0[167].n128_u64[0];
    v58 = v0;
    if (v56 == 1)
    {
      sub_26CC1B544(v0[162].n128_i64[0], &qword_2804BCA90, &qword_26CD3C200);
      v59 = *v57;
    }

    else
    {
      v213 = v0[166].n128_i64[0];
      v60 = v0[164].n128_i64[1];
      v61 = v0[164].n128_i64[0];
      v62 = v0[163].n128_i64[1];
      v63 = v0[163].n128_i64[0];
      (*(v62 + 32))(v61, v0[162].n128_u64[0], v63);
      v64 = *v57;
      sub_26CD3A1DC();
      sub_26CD3A10C();
      v66 = v65;
      v67 = *(v62 + 8);
      v67(v60, v63);
      v67(v61, v63);
      v58 = v0;
      v59 = v64 + v66 * *(v57 + *(v213 + 24));
    }

    v24 = &unk_280BBC000;
    sub_26CCC490C(v58[167].n128_i64[0]);
    *(v55 + 4) = v59;
    _os_log_impl(&dword_26CC14000, v49, v50, "playbackState.currentElapsedTime: %f", v55, 0xCu);
    MEMORY[0x26D6AE340](v55, -1, -1);

    v46 = v0 + 148;
  }

  else
  {

    sub_26CCC490C(v52);
    v58 = v0;
  }

  v68 = v58[170].n128_i64[0];
  v69 = (v58[169].n128_u64[1] + v24[393]);
  swift_beginAccess();
  v70 = v36 - *v69;
  v71 = v36 + v69[1];
  v72 = sub_26CD3A42C();
  v73 = sub_26CD3A99C();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134218496;
    *(v74 + 4) = v70;
    *(v74 + 12) = 2048;
    *(v74 + 14) = v71;
    *(v74 + 22) = 2048;
    *(v74 + 24) = v71 - v70;
    _os_log_impl(&dword_26CC14000, v72, v73, "Time range start - %f, end - %f and duration - %f", v74, 0x20u);
    MEMORY[0x26D6AE340](v74, -1, -1);
  }

  v75 = v58[169].n128_i64[1];

  v76 = sub_26CCD7834();
  v78 = v77;
  memmove(&v58[1], v77, 0x80uLL);
  if (sub_26CCE56CC(&v58[1]) != 1)
  {
    v79 = v78[3];
    *v78 = 0u;
    *(v78 + 1) = 0u;
  }

  (v76)(v46, 0);
  v80 = v58[169].n128_i64[1];
  v81 = sub_26CCD7834();
  v83 = v82;
  memmove(&v58[9], v82, 0x80uLL);
  if (sub_26CCE56CC(&v58[9]) != 1)
  {
    v84 = v83[7];
    *(v83 + 2) = 0u;
    *(v83 + 3) = 0u;
  }

  (v81)(&v58[150], 0);
  v85 = (v58[167].n128_u64[1] + *(v58[166].n128_u64[0] + 28));
  v86 = *v85;
  v87 = v85[1];
  v88 = (v58[169].n128_u64[1] + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = v88[3];
  v58[27] = v88[2];
  v58[28] = v91;
  v58[25] = v89;
  v58[26] = v90;
  v92 = v88[4];
  v93 = v88[5];
  v94 = v88[7];
  v58[31] = v88[6];
  v58[32] = v94;
  v58[29] = v92;
  v58[30] = v93;
  v217[0] = v70;
  v217[1] = v71 - v70;
  v217[2] = v71;
  memmove(&v58[17], v88, 0x80uLL);
  if (sub_26CCE56CC(&v58[17]) == 1)
  {
    v95 = 0;
    v96 = 0;
    v97 = 0uLL;
  }

  else
  {
    v214 = v58[17];
    v95 = v58[18].n128_u64[0];
    v98 = v58[18].n128_i64[1];

    v97 = v214;
  }

  v99 = v58 + 57;
  v100 = v58[171].n128_i64[1];
  v218 = v97;
  v219.n128_u64[0] = v95;
  v219.n128_u64[1] = v96;
  sub_26CC1B4DC(&v58[25], &v58[33], &qword_2804BD838, &qword_26CD473E8);
  sub_26CCEDB2C(v216, v225.n128_f64, v217, &v218, v36);

  v210 = v226;
  v215 = v216[1];
  v206 = v225;
  v208 = v216[0];
  swift_bridgeObjectRelease_n();
  if (v87)
  {
    v101 = *(v58[171].n128_u64[1] + 48);
    if (*(v101 + 16))
    {
      v102 = *(v58[171].n128_u64[1] + 48);

      v103 = sub_26CC181C4(v86, v87);
      if (v104)
      {
        v105 = v58[171].n128_i64[1];
        v106 = *(*(v101 + 56) + 8 * v103);

        v107 = sub_26CCEE6B4(&v218, v106, v36);

        v204 = v219;
        v205 = v218;
        v108 = v219.n128_i64[1];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRelease_n();
        if (!v108 || (v109 = *(v108 + 16), , !v109))
        {
          v110 = v58[30];
          v58[93] = v58[29];
          v58[94] = v110;
          v111 = v58[32];
          v58[95] = v58[31];
          v58[96] = v111;
          v112 = v58[26];
          v58[89] = v58[25];
          v58[90] = v112;
          v113 = v58[28];
          v58[91] = v58[27];
          v58[92] = v113;
          if (sub_26CCE56CC(&v58[89]) == 1)
          {
LABEL_51:
            v136 = v204;
            v135 = v205;
            v137 = v205;
            v138 = v204;
            goto LABEL_43;
          }

          v114 = v58[96].n128_i64[1];
          if (v114)
          {
            if (*(v114 + 16))
            {
              v115 = v58 + 121;
              sub_26CC19A84(v114 + 32, &v58[145].n128_i64[1]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
              if (swift_dynamicCast())
              {
                v202 = v107;
                v116 = v58;
                v117 = v58 + 97;
                v118 = v115[3];
                v117[2] = v115[2];
                v117[3] = v118;
                *(v117 + 107) = *(v115 + 107);
                v119 = v115[6];
                v117[5] = v115[5];
                v117[6] = v119;
                v117[4] = v115[4];
                v120 = v115[1];
                *v117 = *v115;
                v117[1] = v120;
                v121 = v116[99].n128_i64[1];
                if (!v121)
                {
                  sub_26CCE57A0(v117);
                  sub_26CC1B544(&v116[25], &qword_2804BD838, &qword_26CD473E8);
                  v136 = v204;
                  v135 = v205;
                  v137 = v205;
                  v138 = v204;
                  v58 = v116;
                  goto LABEL_43;
                }

                v122 = v116 + 105;
                v123 = v116;
                v124 = v116 + 113;
                v201 = v123;
                v198 = v123[99].n128_i64[0];
                v199 = v123[171].n128_i64[1];

                v125 = v117;
                v126 = v122;
                sub_26CCE57A0(v125);
                sub_26CCF0D84(v198, v121, &v218);

                v128 = v221;
                v127 = v222;
                v129 = v223;
                v130 = v224[0];
                v122[4] = v222;
                v122[5] = v129;
                v122[6] = v130;
                v131 = *(v224 + 11);
                *(v122 + 107) = *(v224 + 11);
                v132 = v218;
                v133 = v219;
                *v122 = v218;
                v122[1] = v133;
                v134 = v220;
                v122[2] = v220;
                v122[3] = v128;
                *v124 = v132;
                v124[1] = v133;
                v124[2] = v134;
                v124[3] = v128;
                v124[4] = v127;
                v124[5] = v129;
                v124[6] = v130;
                *(v124 + 107) = v131;
                if (sub_26CC28EA8(v124) != 1)
                {
                  v193 = v201[171].n128_i64[1];
                  v194 = v124[4];
                  v195 = v124[6];
                  v223 = v124[5];
                  v224[0] = v195;
                  *(v224 + 11) = *(v124 + 107);
                  v196 = v124[1];
                  v218 = *v124;
                  v219 = v196;
                  v197 = v124[3];
                  v220 = v124[2];
                  v221 = v197;
                  v222 = v194;
                  sub_26CCF0FF0(&v218, v86, v87, v202, &v225, v36);
                  sub_26CC1B544(v126, &qword_2804BD870, &unk_26CD47430);
                  v203 = v225;
                  v200 = v226;

                  sub_26CC1B544(&v201[25], &qword_2804BD838, &qword_26CD473E8);
                  v138 = v204;
                  v137 = v205;
                  v135 = v203;
                  v136 = v200;
                  v58 = v201;
                  goto LABEL_43;
                }

                v58 = v201;
              }
            }
          }
        }

        sub_26CC1B544(&v58[25], &qword_2804BD838, &qword_26CD473E8);
        goto LABEL_51;
      }
    }
  }

  sub_26CC1B544(&v58[25], &qword_2804BD838, &qword_26CD473E8);
  v135 = 0uLL;
  v136 = 0uLL;
  v137 = 0uLL;
  v138 = 0uLL;
LABEL_43:
  v139 = v58[158].n128_i64[1];
  *v99 = v208;
  v99[1] = v215;
  v99[2] = v206;
  v99[3] = v210;
  v58[61] = v137;
  v58[62] = v138;
  v58[63] = v135;
  v58[64] = v136;
  v140 = v99[5];
  v58[53] = v99[4];
  v58[54] = v140;
  v141 = v99[7];
  v58[55] = v99[6];
  v58[56] = v141;
  v142 = v99[1];
  v58[49] = *v99;
  v58[50] = v142;
  v143 = v99[2];
  v144 = v99[3];
  v58[51] = v143;
  v58[52] = v144;
  nullsub_1(&v58[49], v143);
  v145 = *v88;
  v146 = v88[1];
  v147 = v88[3];
  v58[43] = v88[2];
  v58[44] = v147;
  v58[41] = v145;
  v58[42] = v146;
  v148 = v88[4];
  v149 = v88[5];
  v150 = v88[7];
  v58[47] = v88[6];
  v58[48] = v150;
  v58[45] = v148;
  v58[46] = v149;
  v151 = v58[56];
  v153 = v58[53];
  v152 = v58[54];
  v88[6] = v58[55];
  v88[7] = v151;
  v88[4] = v153;
  v88[5] = v152;
  v154 = v58[49];
  v155 = v58[50];
  v156 = v58[52];
  v88[2] = v58[51];
  v88[3] = v156;
  *v88 = v154;
  v88[1] = v155;
  sub_26CCE56F0(v99, &v58[65]);
  sub_26CC1B544(&v58[41], &qword_2804BD838, &qword_26CD473E8);
  v0 = v58;
  v157 = *(v139 + 16);
  if (v157)
  {
    v158 = v0[161].n128_i64[0];
    v159 = *(v158 + 16);
    v158 += 16;
    v211 = v159;
    v160 = v0[158].n128_u64[1] + ((*(v158 + 64) + 32) & ~*(v158 + 64));
    v209 = *(v158 + 56);
    v207 = (v0[159].n128_u64[1] + 8);
    v161 = (v158 - 8);
    do
    {
      v162 = v0[161].n128_i64[1];
      v163 = v0[160].n128_i64[1];
      v164 = v0[160].n128_i64[0];
      v165 = v0[159].n128_i64[0];
      v211(v162, v160, v163);
      v166 = v99[5];
      v0[77] = v99[4];
      v0[78] = v166;
      v167 = v99[7];
      v0[79] = v99[6];
      v0[80] = v167;
      v168 = v99[1];
      v0[73] = *v99;
      v0[74] = v168;
      v169 = v99[3];
      v0[75] = v99[2];
      v0[76] = v169;
      sub_26CCE56F0(v99, &v0[81]);
      sub_26CD3A89C();
      (*v207)(v164, v165);
      (*v161)(v162, v163);
      v160 += v209;
      --v157;
    }

    while (v157);
  }

  v170 = v0[171].n128_i64[1];
  v171 = v0[169].n128_i64[1];
  v172 = v0[167].n128_i64[1];
  v173 = v99[4];
  v174 = v99[6];
  v175 = v99[7];
  v223 = v99[5];
  v224[0] = v174;
  v224[1] = v175;
  v176 = v99[1];
  v218 = *v99;
  v219 = v176;
  v177 = v99[3];
  v220 = v99[2];
  v221 = v177;
  v222 = v173;
  v178 = sub_26CCDB300(&v218);
  v180 = v179;
  sub_26CCE574C(v99);
  (*(*v171 + 504))(v178, v180 & 1);

  sub_26CCE6514(&v0[129]);

  sub_26CCC490C(v172);
LABEL_47:
  v181 = v0[167].n128_i64[1];
  v182 = v0[167].n128_i64[0];
  v183 = v0[165].n128_i64[1];
  v184 = v0[165].n128_i64[0];
  v185 = v0[164].n128_i64[1];
  v186 = v0[164].n128_i64[0];
  v187 = v0[162].n128_i64[1];
  v188 = v0[162].n128_i64[0];
  v189 = v0[161].n128_i64[1];
  v190 = v0[160].n128_i64[0];

  v191 = v0->n128_u64[1];

  return v191();
}

uint64_t sub_26CCDE4FC()
{
  v1 = v0[344];
  v2 = v0[340];
  v3 = v0[339];
  v4 = v0[336];

  v5 = v1;
  v6 = sub_26CD3A42C();
  v7 = sub_26CD3A98C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[344];
  v10 = v0[339];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_26CC14000, v6, v7, "Unable to fetch timed metadata: %@", v11, 0xCu);
    sub_26CC1B544(v12, &qword_2804BD8B8, &qword_26CD477D0);
    MEMORY[0x26D6AE340](v12, -1, -1);
    MEMORY[0x26D6AE340](v11, -1, -1);
    sub_26CCE6514((v0 + 258));
  }

  else
  {
    sub_26CCE6514((v0 + 258));
  }

  v15 = v0[335];
  v16 = v0[334];
  v17 = v0[331];
  v18 = v0[330];
  v19 = v0[329];
  v20 = v0[328];
  v21 = v0[325];
  v22 = v0[324];
  v23 = v0[323];
  v24 = v0[320];

  v25 = v0[1];

  return v25();
}

uint64_t sub_26CCDE714(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v39 = a2 + 56;
  v34 = result + 56;
  v35 = result;
  v33 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v36 = (v7 - 1) & v7;
LABEL_13:
    v12 = *(result + 48) + 32 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v37 = *(v12 + 16);
    v15 = *(v12 + 24);
    v38 = *(v12 + 25);
    v16 = *(a2 + 40);
    sub_26CD3B0FC();

    sub_26CD3A54C();
    v17 = sub_26CD3B13C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v39 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_50:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v23 = *(a2 + 48) + 32 * v19;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      v26 = *(v23 + 25);
      v27 = *v23 == v14 && *(v23 + 8) == v13;
      if (!v27 && (sub_26CD3AFDC() & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v25)
      {
        if (!v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v24 == v37)
        {
          v28 = v15;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          goto LABEL_18;
        }
      }

      if (v26)
      {
        break;
      }

      v30 = 0xE400000000000000;
      v31 = 1835099508;
      v29 = v38;
      if (!v38)
      {
        goto LABEL_15;
      }

LABEL_38:
      if (v29 == 1)
      {
        v32 = 0x65756761656CLL;
      }

      else
      {
        v32 = 0x746E657665;
      }

      if (v29 == 1)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      if (v31 == v32)
      {
        goto LABEL_16;
      }

LABEL_17:
      v22 = sub_26CD3AFDC();

      if (v22)
      {
        goto LABEL_47;
      }

LABEL_18:
      v19 = (v19 + 1) & v20;
      if (((*(v39 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v29 = v38;
    if (v26 == 1)
    {
      v30 = 0xE600000000000000;
      v31 = 0x65756761656CLL;
      if (!v38)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

    v30 = 0xE500000000000000;
    v31 = 0x746E657665;
    if (v38)
    {
      goto LABEL_38;
    }

LABEL_15:
    v21 = 0xE400000000000000;
    if (v31 != 1835099508)
    {
      goto LABEL_17;
    }

LABEL_16:
    if (v30 != v21)
    {
      goto LABEL_17;
    }

LABEL_47:

    v4 = v34;
    result = v35;
    v8 = v33;
    v7 = v36;
  }

  while (v36);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26CCDEA18(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_26CD3B0FC();

    sub_26CD3A54C();
    v17 = sub_26CD3B13C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_26CD3AFDC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

size_t sub_26CCDEBD0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
  v4 = *(sub_26CD39E2C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_26CCDECCC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD850, &qword_26CD47408);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26CCDEDD4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8E8, &unk_26CD47790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_26CCDEE64(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26CD39E2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26CCE666C(&qword_280BBB1D8, MEMORY[0x277CC8918]);
  v36 = a2;
  v13 = sub_26CD3A52C();
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
      sub_26CCE666C(&qword_280BBB1D0, MEMORY[0x277CC8918]);
      v23 = sub_26CD3A56C();
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
    sub_26CCE17D8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_26CCDF144(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v9 = sub_26CD3B13C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26CD3AFDC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26CCE1AA0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26CCDF294(__int128 *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_26CD3B0FC();
  sub_26CC532D8();
  v6 = sub_26CD3B13C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v38 = v4 + 56;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_27:
    v20 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = *v32;
    sub_26CC54820(a2, v43);
    sub_26CCE1C20(a2, v8, isUniquelyReferenced_nonNull_native);
    *v32 = v42[0];
    v22 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v22;
    v23 = *(a2 + 48);
    a1[2] = *(a2 + 32);
    a1[3] = v23;
    return 1;
  }

  v35 = ~v7;
  v40 = *(a2 + 8);
  v41 = *a2;
  v31 = v4;
  v36 = *(v4 + 48);
  while (1)
  {
    v9 = v36 + (v8 << 6);
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v13 = *(v9 + 33);
    v14 = *(v9 + 34);
    v15 = *(v9 + 35);
    v16 = *(v9 + 36);
    v17 = *(v9 + 37);
    v37 = *(v9 + 40);
    v39 = *(v9 + 48);
    v34 = *(v9 + 56);
    v18 = *v9 == v41 && *(v9 + 8) == v40;
    if (!v18 && (sub_26CD3AFDC() & 1) == 0 || (v10 != *(a2 + 16) || v11 != *(a2 + 24)) && (sub_26CD3AFDC() & 1) == 0 || v12 != (*(a2 + 32) & 1) || ((v13 ^ *(a2 + 33)) & 1) != 0 || v14 != (*(a2 + 34) & 1) || ((v15 ^ *(a2 + 35)) & 1) != 0 || v16 != (*(a2 + 36) & 1) || ((v17 ^ *(a2 + 37)) & 1) != 0)
    {
      goto LABEL_4;
    }

    v19 = *(a2 + 48);
    if (v39)
    {
      if (!v19 || (v37 != *(a2 + 40) || v39 != v19) && (sub_26CD3AFDC() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v19)
    {
      goto LABEL_4;
    }

    if (v34 == *(a2 + 56))
    {
      break;
    }

LABEL_4:
    v8 = (v8 + 1) & v35;
    if (((*(v38 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_26CC54858(a2);
  v25 = (*(v31 + 48) + (v8 << 6));
  v27 = *v25;
  v26 = v25[1];
  v28 = v25[3];
  v43[2] = v25[2];
  v43[3] = v28;
  v43[0] = v27;
  v43[1] = v26;
  v29 = v25[1];
  *a1 = *v25;
  a1[1] = v29;
  v30 = v25[3];
  a1[2] = v25[2];
  a1[3] = v30;
  sub_26CC54820(v43, v42);
  return 0;
}

uint64_t sub_26CCDF54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v9 = *v5;
  v10 = *(*v5 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v11 = sub_26CD3B13C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_32:
    v26 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v34;

    sub_26CCE1EE4(a2, a3, a4, a5 & 0xFF01, v13, isUniquelyReferenced_nonNull_native);
    *v34 = v37;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5 & 1;
    *(a1 + 25) = HIBYTE(a5);
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v16 = *(v9 + 48) + 32 * v13;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = *(v16 + 25);
    v20 = *v16 == a2 && *(v16 + 8) == a3;
    if (!v20 && (sub_26CD3AFDC() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v18)
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((a5 & 1) != 0 || v17 != a4)
    {
      goto LABEL_4;
    }

    if (v19)
    {
      break;
    }

    v22 = 0xE400000000000000;
    v23 = 1835099508;
    v21 = HIBYTE(a5);
    if (!HIBYTE(a5))
    {
      goto LABEL_29;
    }

LABEL_20:
    if (v21 == 1)
    {
      v24 = 0x65756761656CLL;
    }

    else
    {
      v24 = 0x746E657665;
    }

    if (v21 == 1)
    {
      v25 = 0xE600000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    if (v23 == v24)
    {
      goto LABEL_30;
    }

LABEL_3:
    v15 = sub_26CD3AFDC();

    if (v15)
    {
      goto LABEL_33;
    }

LABEL_4:
    v13 = (v13 + 1) & v14;
    if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v21 = HIBYTE(a5);
  if (v19 == 1)
  {
    v22 = 0xE600000000000000;
    v23 = 0x65756761656CLL;
    if (!HIBYTE(a5))
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v22 = 0xE500000000000000;
  v23 = 0x746E657665;
  if (HIBYTE(a5))
  {
    goto LABEL_20;
  }

LABEL_29:
  v25 = 0xE400000000000000;
  if (v23 != 1835099508)
  {
    goto LABEL_3;
  }

LABEL_30:
  if (v22 != v25)
  {
    goto LABEL_3;
  }

LABEL_33:

  v29 = *(v9 + 48) + 32 * v13;
  v31 = *v29;
  v30 = *(v29 + 8);
  v32 = *(v29 + 16);
  v33 = *(v29 + 24);
  LOBYTE(v29) = *(v29 + 25);
  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v32;
  *(a1 + 24) = v33;
  *(a1 + 25) = v29;

  return 0;
}

uint64_t sub_26CCDF818(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26CD3ABBC();

    if (v9)
    {

      sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_26CD3ABAC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_26CCDFF48(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_26CCE0F1C(v22 + 1);
    }

    v20 = v8;
    sub_26CCE1754(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
  v11 = *(v6 + 40);
  v12 = sub_26CD3AA8C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_26CCE2194(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_26CD3AA9C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_26CCDFA50(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26CD3A20C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_26CD3A52C();
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
      sub_26CCE666C(&qword_280BBB1B8, MEMORY[0x277CC95F0]);
      v23 = sub_26CD3A56C();
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
    sub_26CCE2304(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_26CCDFD30(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_26CD3B0FC();
  v7 = v4 & 1;
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v34 = a2;
  sub_26CD3B11C();
  v36 = v8;
  sub_26CD3A54C();
  sub_26CD3A54C();
  v12 = sub_26CD3B13C();
  v13 = v5 + 56;
  v14 = -1 << *(v5 + 32);
  v15 = v12 & ~v14;
  if ((*(v5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v32 = v5;
    v17 = *(v5 + 48);
    while (1)
    {
      v18 = (v17 + 40 * v15);
      if (*v18 == v7)
      {
        v20 = v18[3];
        v19 = v18[4];
        v21 = v18[1] == v9 && v18[2] == v36;
        if (v21 || (sub_26CD3AFDC() & 1) != 0)
        {
          v22 = v20 == v11 && v19 == v10;
          if (v22 || (sub_26CD3AFDC() & 1) != 0)
          {
            break;
          }
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v23 = *(v32 + 48) + 40 * v15;
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
    v26 = *(v23 + 24);
    v27 = *(v23 + 32);
    *a1 = *v23;
    *(a1 + 8) = v25;
    *(a1 + 16) = v24;
    *(a1 + 24) = v26;
    *(a1 + 32) = v27;

    return 0;
  }

  else
  {
LABEL_16:
    v29 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v33;

    sub_26CCE25CC(v34, v15, isUniquelyReferenced_nonNull_native);
    *v33 = v37;
    v31 = *(v34 + 16);
    *a1 = *v34;
    *(a1 + 16) = v31;
    *(a1 + 32) = *(v34 + 32);
    return 1;
  }
}

uint64_t sub_26CCDFF48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8A8, &unk_26CD47720);
    v2 = sub_26CD3AC3C();
    v16 = v2;
    sub_26CD3AB9C();
    if (sub_26CD3ABCC())
    {
      sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_26CCE0F1C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_26CD3AA8C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_26CD3ABCC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26CCE0138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
  result = sub_26CD3AC2C();
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
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

uint64_t sub_26CCE0398(uint64_t a1)
{
  v2 = v1;
  v41 = sub_26CD39E2C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD880, &unk_26CD476D8);
  result = sub_26CD3AC2C();
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
      sub_26CCE666C(&qword_280BBB1D8, MEMORY[0x277CC8918]);
      result = sub_26CD3A52C();
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

uint64_t sub_26CCE06F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD888, &qword_26CD476E8);
  result = sub_26CD3AC2C();
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
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

uint64_t sub_26CCE0954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8E0, &qword_26CD47788);
  result = sub_26CD3AC2C();
  if (*(v3 + 16))
  {
    v31 = v1;
    v6 = 0;
    v32 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v35 = result + 56;
    v36 = v3;
    v33 = v10;
    v34 = result;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v41 = (v9 - 1) & v9;
LABEL_16:
      v17 = *(v3 + 48) + ((v14 | (v6 << 6)) << 6);
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 33);
      v37 = *(v17 + 35);
      v38 = *(v17 + 34);
      v24 = *(v17 + 36);
      v25 = *(v17 + 37);
      v40 = *(v17 + 38);
      v26 = *(v17 + 48);
      v42 = *(v17 + 40);
      v39 = *(v17 + 56);
      v27 = *(result + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      sub_26CD3A54C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      if (v26)
      {
        sub_26CD3A54C();
      }

      MEMORY[0x26D6ADB10](v39);
      sub_26CD3B13C();
      v11 = -1 << *(v34 + 32);
      v12 = sub_26CD3AB8C();
      *(v35 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v34 + 48) + (v12 << 6);
      result = v34;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      *(v13 + 24) = v21;
      *(v13 + 32) = v22;
      *(v13 + 33) = v23;
      *(v13 + 34) = v38;
      *(v13 + 35) = v37;
      *(v13 + 36) = v24;
      *(v13 + 37) = v25;
      *(v13 + 38) = v40;
      *(v13 + 40) = v42;
      *(v13 + 48) = v26;
      *(v13 + 56) = v39;
      ++*(v34 + 16);
      v3 = v36;
      v9 = v41;
      v10 = v33;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v10)
      {
        break;
      }

      v16 = v32[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
        goto LABEL_16;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      v29 = result;
      bzero(v32, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      result = v29;
    }

    else
    {
      *v32 = -1 << v28;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  v30 = result;

  *v2 = v30;
  return result;
}

uint64_t sub_26CCE0C98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8D8, &qword_26CD47780);
  result = sub_26CD3AC2C();
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
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v34 = *(v19 + 25);
      v35 = *(v19 + 24);
      v23 = *(v6 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v35;
      *(v15 + 25) = v34;
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

uint64_t sub_26CCE0F1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8A8, &unk_26CD47720);
  result = sub_26CD3AC2C();
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_26CD3AA8C();
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26CCE1144(uint64_t a1)
{
  v2 = v1;
  v41 = sub_26CD3A20C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8B0, &qword_26CD47730);
  result = sub_26CD3AC2C();
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
      sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0]);
      result = sub_26CD3A52C();
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

uint64_t sub_26CCE14A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAD8, &qword_26CD42890);
  v5 = sub_26CD3AC2C();
  v6 = v5;
  if (*(v3 + 16))
  {
    v34 = v2;
    v7 = 0;
    v35 = (v3 + 56);
    v36 = v3;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v15 | (v7 << 6));
      v20 = *v19;
      v22 = *(v19 + 8);
      v21 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      sub_26CD3B0FC();
      sub_26CD3B11C();
      sub_26CD3A54C();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      *v14 = v20;
      v10 = v37;
      *(v14 + 8) = v22;
      *(v14 + 16) = v21;
      *(v14 + 24) = v23;
      *(v14 + 32) = v24;
      ++*(v6 + 16);
      v3 = v36;
    }

    v16 = v7;
    result = v35;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v35[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_26CCE1754(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26CD3AA8C();
  v5 = -1 << *(a2 + 32);
  result = sub_26CD3AB8C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26CCE17D8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_26CD39E2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26CCE0398(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26CCE2EDC(MEMORY[0x277CC8918], &qword_2804BD880, &unk_26CD476D8);
      goto LABEL_12;
    }

    sub_26CCE34C4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_26CCE666C(&qword_280BBB1D8, MEMORY[0x277CC8918]);
  v15 = sub_26CD3A52C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_26CCE666C(&qword_280BBB1D0, MEMORY[0x277CC8918]);
      v23 = sub_26CD3A56C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26CD3B01C();
  __break(1u);
  return result;
}

uint64_t sub_26CCE1AA0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26CCE06F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26CCE2938();
      goto LABEL_16;
    }

    sub_26CCE37E0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  result = sub_26CD3B13C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26CD3AFDC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26CD3B01C();
  __break(1u);
  return result;
}

uint64_t sub_26CCE1C20(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26CCE0954(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_26CCE2A94();
        goto LABEL_34;
      }

      sub_26CCE3A18(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_26CD3B0FC();
    sub_26CC532D8();
    result = sub_26CD3B13C();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    v37 = v8 + 56;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v35 = ~v10;
      v39 = *(v5 + 8);
      v40 = *v5;
      v34 = *(v8 + 48);
      v32 = *(v5 + 33);
      v29 = *(v5 + 37);
      v30 = *(v5 + 35);
      do
      {
        v11 = v34 + (a2 << 6);
        result = *v11;
        v12 = *(v11 + 16);
        v13 = *(v11 + 24);
        v14 = *(v11 + 32);
        v15 = *(v11 + 33);
        v16 = *(v11 + 34);
        v17 = *(v11 + 35);
        v18 = *(v11 + 36);
        v19 = *(v11 + 37);
        v36 = *(v11 + 40);
        v38 = *(v11 + 48);
        v33 = *(v11 + 56);
        v20 = *v11 == v40 && *(v11 + 8) == v39;
        if (v20 || (result = sub_26CD3AFDC(), (result & 1) != 0))
        {
          if (v12 == *(v5 + 16) && v13 == *(v5 + 24) || (result = sub_26CD3AFDC(), (result & 1) != 0))
          {
            if (v14 == (*(v5 + 32) & 1) && ((v15 ^ v32) & 1) == 0 && v16 == (*(v5 + 34) & 1) && ((v17 ^ v30) & 1) == 0 && v18 == (*(v5 + 36) & 1) && ((v19 ^ v29) & 1) == 0)
            {
              v21 = *(v5 + 48);
              if (v38)
              {
                if (v21)
                {
                  if (v36 == *(v5 + 40) && v38 == v21 || (result = sub_26CD3AFDC(), (result & 1) != 0))
                  {
LABEL_10:
                    if (v33 == *(v5 + 56))
                    {
                      goto LABEL_37;
                    }
                  }
                }
              }

              else if (!v21)
              {
                goto LABEL_10;
              }
            }
          }
        }

        a2 = (a2 + 1) & v35;
      }

      while (((*(v37 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v22 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = (*(v22 + 48) + (a2 << 6));
  v24 = *(v5 + 16);
  *v23 = *v5;
  v23[1] = v24;
  v25 = *(v5 + 48);
  v23[2] = *(v5 + 32);
  v23[3] = v25;
  v26 = *(v22 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_37:
    result = sub_26CD3B01C();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v28;
  }

  return result;
}

uint64_t sub_26CCE1EE4(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4, unint64_t a5, char a6)
{
  v10 = result;
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a6 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a6)
  {
    sub_26CCE0C98(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_26CCE2C18();
      goto LABEL_40;
    }

    sub_26CCE3CA0(v11 + 1);
  }

  v13 = *v6;
  v14 = *(*v6 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  result = sub_26CD3B13C();
  v15 = -1 << *(v13 + 32);
  a5 = result & ~v15;
  if ((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    do
    {
      v18 = *(v13 + 48) + 32 * a5;
      result = *v18;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 25);
      if (*v18 != v10 || *(v18 + 8) != a2)
      {
        result = sub_26CD3AFDC();
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v20)
      {
        if ((a4 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if ((a4 & 1) != 0 || v19 != a3)
      {
        goto LABEL_11;
      }

      if (v21)
      {
        v23 = HIBYTE(a4);
        if (v21 == 1)
        {
          v24 = 0xE600000000000000;
          v25 = 0x65756761656CLL;
          if (!HIBYTE(a4))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v24 = 0xE500000000000000;
          v25 = 0x746E657665;
          if (!HIBYTE(a4))
          {
LABEL_36:
            v27 = 0xE400000000000000;
            if (v25 == 1835099508)
            {
              goto LABEL_37;
            }

            goto LABEL_10;
          }
        }
      }

      else
      {
        v24 = 0xE400000000000000;
        v25 = 1835099508;
        v23 = HIBYTE(a4);
        if (!HIBYTE(a4))
        {
          goto LABEL_36;
        }
      }

      if (v23 == 1)
      {
        v26 = 0x65756761656CLL;
      }

      else
      {
        v26 = 0x746E657665;
      }

      if (v23 == 1)
      {
        v27 = 0xE600000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }

      if (v25 == v26)
      {
LABEL_37:
        if (v24 == v27)
        {

LABEL_39:
          result = sub_26CD3B01C();
          __break(1u);
          break;
        }
      }

LABEL_10:
      v17 = sub_26CD3AFDC();

      if (v17)
      {
        goto LABEL_39;
      }

LABEL_11:
      a5 = (a5 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_40:
  v28 = *v33;
  *(*v33 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v29 = *(v28 + 48) + 32 * a5;
  *v29 = v10;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3;
  *(v29 + 24) = a4 & 1;
  *(v29 + 25) = HIBYTE(a4);
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