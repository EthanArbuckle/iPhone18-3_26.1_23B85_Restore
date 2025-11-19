uint64_t getEnumTagSinglePayload for CacheRefreshConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheRefreshConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_22F0FF108@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_WORD *sub_22F0FF124@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_22F0FF1C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22F740E20();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22F0FF598()
{
  v1 = sub_22F740B90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

unint64_t sub_22F0FF680(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22F742160();
  return sub_22F124324(a1, v4);
}

uint64_t sub_22F0FF6BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F0FF704(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F0FF748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_22F0FF798@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_22F0FF7E0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_22F0FF824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_22F0FF874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F740390();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22F73F090();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22F0FF964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22F740390();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22F73F090();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22F0FFA84()
{
  v1 = sub_22F73F7C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22F0FFB30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22F73FF10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_22F0FFBDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73FF10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F0FFC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MomentGroundedLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F0FFD2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MomentGroundedLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F0FFDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22F73F090();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F0FFEA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73F090();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F100068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F1000B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F1000F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F100154@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F1001AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F100200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F100260(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22F100278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_22F1002C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F1003BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F10046C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_22F1004CC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_22F100524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F100588()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1005C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100600()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1006CC()
{
  v1 = 0x6E696E6E69676562;
  if (*v0 != 1)
  {
    v1 = 0x676E69646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852399981;
  }
}

uint64_t sub_22F100720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F190A34(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_22F100768()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_22F1007AC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_22F1007BC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsV6LyricsV0H4DataV15LyricAttributesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV17AudioAnalysisDataV23AudioAnalysisAttributesV28AudioAnalysisSavoyAttributesVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV17AudioAnalysisDataV23AudioAnalysisAttributesV28AudioAnalysisSavoyAttributesVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_22F10089C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22F100964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22F100AE8()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_22F1D20A4(*(v0 + 16), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22F100B3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100B98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100BEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100C28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F100C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22F100D50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F100E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22F100ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22F100F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22F73F690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F101040(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73F690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F1010F4()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F101144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22F740890();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22F73F690();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22F101268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22F740890();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22F73F690();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22F1013C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F101408()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22F101450()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1014B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F101500()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F10153C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F1015E4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F10162C()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_22F1D20A4(*(v0 + 16), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void sub_22F101678(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_22F1D20A4(a1, a2 & 1);
  }
}

uint64_t sub_22F1016AC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1016F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F101730()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F101830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22F1018E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F101928()
{

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_22F1019AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F101A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22F73FB70();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F101ABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73FB70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F101B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F101BB0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F101BF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F101C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F101CAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F101D00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F101E8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F101EC4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F101F28()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F102000()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F102040()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F102078()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1020D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F10211C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F10224C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F102284()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1022BC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F1022FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F102344(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F102388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F1023E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F102440(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F102494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F102584()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1025BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1026F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F10272C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F102790()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1027CC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F102824()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F102864()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1028B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1028EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F10292C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F102974(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F1029B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F102A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F102A70(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F102AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F102B24()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F102B74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F102BBC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

id sub_22F102CEC()
{
  v1 = [*v0 graph];

  return v1;
}

uint64_t sub_22F102D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F740820();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22F740620();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22F102E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22F740820();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22F740620();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22F102F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22F73FFB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F102FF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73FFB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F1030A4()
{
  v1 = (type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_22F740820();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = sub_22F740620();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  v10 = v6 + v1[9];
  v11 = *(v10 + 8);
  swift_unknownObjectRelease();
  v12 = v6 + v1[10];

  v13 = *(v12 + 8);
  swift_unknownObjectRelease();
  v14 = v6 + v1[11];

  v15 = *(v14 + 8);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

id sub_22F10327C(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_22F2F4C28(a1, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F1032C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F10331C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F103354()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1033A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1033E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22F10347C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1034C8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F10351C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F3164F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F103560()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22F1035A0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1035D8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F103620()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F103668()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F1036C0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F103708()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103744()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F10377C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1037CC()
{
  v1 = sub_22F73F690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22F10393C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103974()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F1039D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103A0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F103A54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F103A8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F103AC4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F103B10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103B48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F103B88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103BD0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F103C30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F103C98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F103D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22F73F690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F103DBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73F690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F103E60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F103EA8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F103EEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F103F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F103FA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F103FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F104058()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104098(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22F740B90();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22F104144(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22F740B90();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F1041E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1042C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F104380(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F1043C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F104424@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F10447C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F1044D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F104558()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104590()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1045C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F104618()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22F104678()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1046C8()
{
  v1 = sub_22F73EEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 63) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 48);

  v10 = *(v0 + v6);

  v11 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

uint64_t sub_22F1047DC()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F10481C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F104864()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1048A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1048F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F104948()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F104990()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1049C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F104A40()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F104A88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104AC0()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F104B20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104B58()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F104BB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104C04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F104C74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104CC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104D5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104D94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22F104E28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104E70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22F105068(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

id sub_22F1051A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_22F105200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_22F15C30C(v3 + 24, a2);
}

uint64_t sub_22F105250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_22F1052A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_22F10530C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1053B0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1053E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F105420()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F10549C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1054D4@<X0>(uint64_t a1@<X0>, void (**a2)(float *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_22F3B6BCC;
  a2[1] = v5;
}

uint64_t sub_22F105560()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1055D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F105648()
{
  v1 = (type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = sub_22F740820();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = v1[7];
  v10 = sub_22F740620();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  v11 = v7 + v1[9];
  v12 = *(v11 + 8);
  swift_unknownObjectRelease();
  v13 = v7 + v1[10];

  v14 = *(v13 + 8);
  swift_unknownObjectRelease();
  v15 = v7 + v1[11];

  v16 = *(v15 + 8);
  swift_unknownObjectRelease();

  v17 = *(v0 + v4 + 8);
  swift_unknownObjectRelease();
  v18 = *(v0 + v5);

  v19 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22F10581C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F1058A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1058E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F105920()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F105988()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1059C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1059F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22F105AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22F73F690();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22F105B6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F105BA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F105BF0()
{
  v1 = (type metadata accessor for DateAndLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  v8 = sub_22F73F690();
  (*(*(v8 - 8) + 8))(v7, v8);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_22F105D04()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F105D3C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatusUpdater(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for CacherStatus(0);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {
      v8 = *(v5 + 8);

      v9 = *(v7 + 20);
      v10 = sub_22F73F690();
      v22 = v9;
      v23 = *(v10 - 8);
      v11 = v5 + v9;
      v12 = *(v23 + 48);
      if (!v12(v11, 1, v10))
      {
        (*(v23 + 8))(v5 + v22, v10);
      }

      v13 = *(v7 + 24);
      if (!v12(v5 + v13, 1, v10))
      {
        (*(v23 + 8))(v5 + v13, v10);
      }
    }

    v14 = *(v5 + *(v6 + 20) + 8);
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;

  v19 = *(v0 + v16);

  v20 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 16, v2 | 7);
}

uint64_t sub_22F105FDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F106024()
{
  v1 = type metadata accessor for CacherStatusUpdater(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatus(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v19 = v4;
    v7 = *(v5 + 8);

    v8 = *(v6 + 20);
    v9 = sub_22F73F690();
    v18 = *(v9 - 8);
    v10 = *(v18 + 48);
    if (!v10(v5 + v8, 1, v9))
    {
      (*(v18 + 8))(v5 + v8, v9);
    }

    v11 = *(v6 + 24);
    v12 = v10(v5 + v11, 1, v9);
    v4 = v19;
    if (!v12)
    {
      (*(v18 + 8))(v5 + v11, v9);
    }
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 + *(v1 + 20) + 8);

  v16 = *(v0 + v14 + 8);

  return MEMORY[0x2821FE8E8](v0, v14 + 16, v2 | 7);
}

uint64_t sub_22F106224()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F10625C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22F1062C4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22F106324()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F106374()
{
  v1 = sub_22F73EEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 63) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 48);

  v10 = *(v0 + v6);

  v11 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v3 | 7);
}

uint64_t sub_22F106460()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1064F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F106540(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

_OWORD *sub_22F107D08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22F107D18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22F107D34@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

uint64_t sub_22F107E14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_22F107E24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_22F107E80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F107EA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_22F107EF4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

void sub_22F107F34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a3;
  v7(a2, v8, a4);
}

uint64_t static PGTuningMetricsProtocol.calculatePrecision(truePositives:trueNegatives:falsePositives:falseNegatives:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result + a3;
  if (__OFADD__(result, a3))
  {
    __break(1u);
  }

  else if (v3 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = result / v3;
  }

  return result;
}

uint64_t static PGTuningMetricsProtocol.calculateRecall(truePositives:trueNegatives:falsePositives:falseNegatives:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
  }

  else if (v4 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = result / v4;
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_22F10821C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_22F108278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22F1083E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F108404(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

BOOL sub_22F108454(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_22F741770() == 0;
}

uint64_t sub_22F1084C8()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F7421A0();
  return sub_22F7421D0();
}

uint64_t sub_22F10853C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F7421A0();
  return sub_22F7421D0();
}

uint64_t sub_22F108580()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F1085C8()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F10860C(uint64_t a1, id *a2)
{
  result = sub_22F740E00();
  *a2 = 0;
  return result;
}

uint64_t sub_22F108684(uint64_t a1, id *a2)
{
  v3 = sub_22F740E10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22F108704@<X0>(uint64_t *a1@<X8>)
{
  sub_22F740E20();
  v2 = sub_22F740DF0();

  *a1 = v2;
  return result;
}

uint64_t sub_22F108748()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22F73FA50();
}

uint64_t sub_22F108794()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22F73FA40();
}

uint64_t sub_22F1087EC()
{
  sub_22F742170();
  v1 = *v0;
  swift_getWitnessTable();
  sub_22F73FA40();
  return sub_22F7421D0();
}

uint64_t sub_22F108854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22F740E20();
  v6 = v5;
  if (v4 == sub_22F740E20() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F108924(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F10896C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_22F1089D8(uint64_t a1)
{
  v2 = sub_22F108924(&qword_27DAB0270, type metadata accessor for GEOSpatialEventLookupCategory);
  v3 = sub_22F108924(&qword_27DAB0278, type metadata accessor for GEOSpatialEventLookupCategory);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22F108A94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22F740DF0();

  *a2 = v5;
  return result;
}

uint64_t sub_22F108ADC(uint64_t a1)
{
  v2 = sub_22F108924(&qword_27DAB0260, type metadata accessor for URLResourceKey);
  v3 = sub_22F108924(&qword_27DAB0268, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22F108D44()
{
  v1 = *v0;
  v2 = sub_22F740E20();
  v3 = MEMORY[0x231900BB0](v2);

  return v3;
}

uint64_t sub_22F108D80()
{
  v1 = *v0;
  sub_22F740E20();
  sub_22F740D60();
}

uint64_t sub_22F108DD4()
{
  v1 = *v0;
  sub_22F740E20();
  sub_22F742170();
  sub_22F740D60();
  v2 = sub_22F7421D0();

  return v2;
}

void sub_22F10900C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22F1090AC()
{
  v0 = sub_22F740BB0();
  __swift_allocate_value_buffer(v0, qword_2810AA720);
  *__swift_project_value_buffer(v0, qword_2810AA720) = 5;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id PGStoryPromptSuggestionQuestionFactory.init(workingContext:questionVersion:)(void *a1, __int16 a2)
{
  v5.super_class = PGStoryPromptSuggestionQuestionFactory;
  v3 = objc_msgSendSuper2(&v5, sel_initWithWorkingContext_questionVersion_, a1, a2);

  return v3;
}

uint64_t PGStoryPromptSuggestionQuestionFactory.generateQuestions(withLimit:progressBlock:)(uint64_t a1, void (*a2)(double), uint64_t a3)
{
  v4 = v3;
  v86 = sub_22F7400A0();
  v89 = *(v86 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22F7400D0();
  v85 = *(v83 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F7404A0();
  v88 = *(v12 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F7404C0();
  v67 = *(v16 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x28223BE20](v16);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22F740B90();
  v68 = *(v19 - 8);
  v20 = *(v68 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_slowAlloc();
  *v23 = 0;
  v72 = a3;
  v73 = a2;
  a2(0.0);
  v71 = v23;
  if (*v23)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = [v4 workingContext];
  v25 = [v24 loggingConnection];

  sub_22F740BA0();
  v70 = a1;
  if (!a1)
  {
LABEL_6:
    (v73)(v71, 1.0);
    (*(v68 + 8))(v22, v19);
    return MEMORY[0x277D84F90];
  }

  v64 = v19;
  v65 = v16;
  v26 = [v4 workingContext];
  v66 = [v26 photoLibrary];

  v91 = MEMORY[0x277D84FA0];
  sub_22F740670();
  v27 = sub_22F740660();
  v28 = *(v27 + 16);
  v63 = v4;
  if (v28)
  {
    v29 = sub_22F10B7CC(v28, 0, &qword_27DAB04D8, &unk_22F7707E8, MEMORY[0x277D3C148]);
    v19 = sub_22F11B504(&v90, (v29 + ((*(v89 + 80) + 32) & ~*(v89 + 80))), v28, v27, MEMORY[0x277D3C148]);
    sub_22F0FF590();
    if (v19 != v28)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v31 = v65;
  v32 = v88;
  (*(v88 + 104))(v15, *MEMORY[0x277D3C490], v12);
  v33 = v66;
  sub_22F740490();

  (*(v32 + 8))(v15, v12);
  v34 = sub_22F7404B0();
  v81 = sub_22F11D84C(v33, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB04D8, &unk_22F7707E8);
  v35 = v89;
  v36 = *(v89 + 72);
  v37 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22F7707D0;
  v39 = *(v35 + 104);
  v40 = v86;
  v39(v38 + v37, *MEMORY[0x277D3C128], v86);
  v39(v38 + v37 + v36, *MEMORY[0x277D3C140], v40);
  v39(v38 + v37 + 2 * v36, *MEMORY[0x277D3C130], v40);
  v90 = v34;

  v41 = 0;
  sub_22F11F928(&v90, v38);
  swift_setDeallocating();
  v42 = *(v38 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v43 = v90;
  v80 = v90[2];
  if (v80)
  {
    v44 = 0;
    v77 = v90 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v76 = v85 + 16;
    v75 = v85 + 8;
    v45 = v70;
    v46 = MEMORY[0x277D84FA0];
    v74 = (v89 + 8);
    v47 = v63;
    v78 = v90;
    v79 = v22;
    while (v44 < v43[2])
    {
      v89 = v46;
      v48 = v85;
      v49 = v82;
      v50 = v83;
      (*(v85 + 16))(v82, &v77[*(v85 + 72) * v44], v83);
      sub_22F740080();
      sub_22F740070();
      v87 = sub_22F7400C0();
      v88 = sub_22F740060();
      v51 = v84;
      sub_22F7400B0();
      (*(v48 + 8))(v49, v50);
      sub_22F740090();
      (*v74)(v51, v86);
      v31 = objc_allocWithZone(PGStoryPromptSuggestionQuestion);
      v52 = sub_22F740DF0();

      v53 = sub_22F740DF0();

      v54 = sub_22F740DF0();
      v46 = v89;

      v55 = [v31 initWithPromptId:v52 promptText:v53 isValidated:v87 & 1 assetCount:v88 source:v54 mcAvailabilityStatus:v81 localFactoryScore:1.0];

      v56 = v55;
      sub_22F109D4C(v46);
      v41 = sub_22F741410();

      LODWORD(v52) = [v47 shouldAddQuestion:v56 toAlreadyGeneratedQuestions:v41];

      if (v52)
      {
        v57 = v56;
        sub_22F10C720(&v90, v57, type metadata accessor for PGStoryPromptSuggestionQuestion, &qword_27DAB07B0, &qword_22F770910, type metadata accessor for PGStoryPromptSuggestionQuestion);

        v46 = v91;
        if ((v91 & 0xC000000000000001) != 0)
        {
          v58 = sub_22F741A00();
        }

        else
        {
          v58 = *(v91 + 16);
        }

        v43 = v78;
        v22 = v79;
        v41 = v71;
        (v73)(v71, v58 / v45);
        if (*v41)
        {

          goto LABEL_26;
        }

        if ((v46 & 0xC000000000000001) != 0)
        {
          v59 = sub_22F741A00();
        }

        else
        {

          v59 = *(v46 + 16);
        }

        if (v59 >= v70)
        {
LABEL_23:

LABEL_26:
          v31 = v65;
          goto LABEL_27;
        }
      }

      else
      {

        v43 = v78;
        v22 = v79;
      }

      if (v80 == ++v44)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v46 = MEMORY[0x277D84FA0];
LABEL_27:
  v41 = v64;
  (v73)(v71, 1.0);
  v60 = sub_22F10AA88(v46, sub_22F11A068);

  if (v60 < 0 || (v60 & 0x4000000000000000) != 0)
  {
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0540, &qword_22F7707F8);
    v61 = sub_22F741D50();

    goto LABEL_30;
  }

  sub_22F742060();

  v61 = v60;
LABEL_30:

  (*(v67 + 8))(v69, v31);
  (*(v68 + 8))(v22, v41);
  return v61;
}

uint64_t sub_22F109D4C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_22F741A00())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB05F0, &qword_22F770838);
  v3 = sub_22F741AD0();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_22F7419C0();
  type metadata accessor for PGStoryPromptSuggestionQuestion();
  sub_22F1205EC(&qword_27DAB07B8, type metadata accessor for PGStoryPromptSuggestionQuestion);
  result = sub_22F741470();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_22F741A40();
    if (!v16)
    {
LABEL_34:
      sub_22F0FF590();

      return v3;
    }

    *&v28 = v16;
    type metadata accessor for PGStoryPromptSuggestionQuestion();
    swift_dynamicCast();
LABEL_25:
    type metadata accessor for PGStoryPromptSuggestionQuestion();
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_22F741A70();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22F10A0E0(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_22F741A00())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = MEMORY[0x277D84FA0];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = -1 << *(v7 + 32);
    v11 = v7 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);

    v33 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB05F0, &qword_22F770838);
  v9 = sub_22F741AD0();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_22F7419C0();
  sub_22F120634(0, a2, a3);
  sub_22F11FA28(a4, a2, a3);
  result = sub_22F741470();
  v7 = v37;
  v11 = v38;
  v12 = v39;
  v33 = v40;
  v13 = v41;
LABEL_11:
  v17 = v9 + 56;
  while (v7 < 0)
  {
    v21 = sub_22F741A40();
    if (!v21)
    {
LABEL_34:
      sub_22F0FF590();

      return v9;
    }

    *&v34 = v21;
    sub_22F120634(0, a2, a3);
    swift_dynamicCast();
LABEL_25:
    sub_22F120634(0, a2, a3);
    swift_dynamicCast();
    v25 = *(v9 + 40);
    result = sub_22F741A70();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v30 && (v29 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v17 + 8 * v28);
      }

      while (v32 == -1);
      v18 = __clz(__rbit64(~v32)) + (v28 << 6);
    }

    *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v9 + 48) + 40 * v18;
    *(v19 + 32) = v36;
    *v19 = v34;
    *(v19 + 16) = v35;
    ++*(v9 + 16);
  }

  if (v13)
  {
    v20 = v33;
LABEL_24:
    v23 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v24 = *(*(v7 + 48) + ((v20 << 9) | (8 * v23)));
    goto LABEL_25;
  }

  v22 = v33;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= ((v12 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v13 = *(v11 + 8 * v20);
    ++v22;
    if (v13)
    {
      v33 = v20;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22F10A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = sub_22F740710();
  v7[5] = v9;
  v10 = *(v9 - 8);
  v7[6] = v10;
  v11 = *(v10 + 64) + 15;
  v7[7] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[8] = v12;
  sub_22F740770();
  v13 = *(MEMORY[0x277D3C678] + 4);
  v14 = swift_task_alloc();
  v7[9] = v14;
  *v14 = v7;
  v14[1] = sub_22F10A634;

  return MEMORY[0x28219C948](v12, a4);
}

uint64_t sub_22F10A634(void *a1)
{
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_22F10A85C;
  }

  else
  {

    v5 = sub_22F10A750;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F10A750()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  (*(v4 + 104))(v2, *MEMORY[0x277D3C640], v3);
  v6 = sub_22F740700();
  v7 = *(v4 + 8);
  v7(v2, v3);
  *(v0 + 88) = v6 & 1;
  sub_22F73FC80();
  v7(v1, v3);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  dispatch_group_leave(*(v0 + 32));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22F10A85C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = sub_22F740B70();
  v5 = sub_22F7415E0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22F0FC000, v4, v5, "Error getting MC status: %@", v8, 0xCu);
    sub_22F120ADC(v9, &qword_27DAB07D0, &qword_22F779400);
    MEMORY[0x2319033A0](v9, -1, -1);
    MEMORY[0x2319033A0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  dispatch_group_leave(*(v0 + 32));

  v14 = *(v0 + 8);

  return v14();
}

void __swiftcall PGStoryPromptSuggestionQuestionFactory.init()(PGStoryPromptSuggestionQuestionFactory *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void *sub_22F10AA88(uint64_t a1, uint64_t (*a2)(uint64_t *, void *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_22F741A00();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v5 = sub_22F10B9EC(v4, 0);

    a2 = a2(&v7, v5 + 4, v4, a1);
    sub_22F0FF590();
    if (a2 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = *(a1 + 16);
    if (!v4)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v5;
}

void sub_22F10AB90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t **sub_22F10AC84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_22F741A00();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v9 = sub_22F10B9EC(v8, 0);

    a4 = sub_22F11B7AC(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_22F0FF590();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v9;
}

void sub_22F10ADA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22F10AE8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0EC0, &unk_22F771510);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22F10AF5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0560, &qword_22F770808);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22F10B068(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_22F10B220(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_22F741A00();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v7 = sub_22F10B9EC(v6, 0);

    a3 = sub_22F11D658(&v9, v7 + 4, v6, a1, a2, a3);
    sub_22F0FF590();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v7;
}

void *sub_22F10B3D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0610, &qword_22F771500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_22F10B4C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0708, &qword_22F7708B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_22F10B5FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_22F10B698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_22F10B728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

size_t sub_22F10B7CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_22F10B8EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22F10B9EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_22F10BA74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22F742170();
  v5 = [*(a1 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  sub_22F7421D0();
  v6 = -1 << *(a2 + 32);
  result = sub_22F7419A0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_22F10BB58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22F741800();
  v5 = -1 << *(a2 + 32);
  result = sub_22F7419A0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22F10BBDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22F742170();
  sub_22F740D60();
  v9 = sub_22F7421D0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22F742040() & 1) != 0)
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

    sub_22F112C78(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22F10BD2C(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v4 = type metadata accessor for MomentGroundedLocation(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - v10;
  v38 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22F742170();
  v13 = v4[7];
  sub_22F73FF10();
  sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  sub_22F740D50();
  v42 = *(a2 + v4[8]);
  MEMORY[0x231901D30]();
  v41 = *(a2 + v4[9]);
  MEMORY[0x231901D30]();
  v14 = sub_22F7421D0();
  v15 = v11 + 56;
  v16 = -1 << *(v11 + 32);
  v17 = v14 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v5 + 72);
    v40 = v19;
    do
    {
      v20 = v19 * v17;
      sub_22F12067C(*(v11 + 48) + v19 * v17, v9, type metadata accessor for MomentGroundedLocation);
      v21 = v4[7];
      if ((sub_22F73FEE0() & 1) != 0 && *&v9[v4[8]] == v42)
      {
        v22 = v4[9];
        v23 = v18;
        v24 = v4;
        v25 = v15;
        v26 = v11;
        v27 = v13;
        v28 = a2;
        v29 = *&v9[v22];
        sub_22F1206E4(v9, type metadata accessor for MomentGroundedLocation);
        v30 = v29 == v41;
        a2 = v28;
        v13 = v27;
        v11 = v26;
        v15 = v25;
        v4 = v24;
        v18 = v23;
        v19 = v40;
        if (v30)
        {
          sub_22F1206E4(a2, type metadata accessor for MomentGroundedLocation);
          sub_22F12067C(*(v11 + 48) + v20, v39, type metadata accessor for MomentGroundedLocation);
          return 0;
        }
      }

      else
      {
        sub_22F1206E4(v9, type metadata accessor for MomentGroundedLocation);
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v32 = v38;
  v33 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v37;
  sub_22F12067C(a2, v37, type metadata accessor for MomentGroundedLocation);
  v43 = *v32;
  sub_22F112DF8(v35, v17, isUniquelyReferenced_nonNull_native);
  *v32 = v43;
  sub_22F120744(a2, v39, type metadata accessor for MomentGroundedLocation);
  return 1;
}

uint64_t sub_22F10C080(uint64_t a1, void *a2)
{
  v37 = a1;
  v4 = type metadata accessor for NamedGroundedLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v34 = (&v34 - v10);
  v35 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22F742170();
  v13 = *a2;
  v14 = a2[1];
  sub_22F740D60();
  v42 = v4;
  v15 = *(v4 + 20);
  v36 = a2;
  v16 = a2 + v15;
  v17 = type metadata accessor for MomentGroundedLocation(0);
  v18 = v17[7];
  sub_22F73FF10();
  sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  v40 = v18;
  sub_22F740D50();
  v39 = *&v16[v17[8]];
  MEMORY[0x231901D30]();
  v19 = v17[9];
  v41 = v16;
  v38 = *&v16[v19];
  MEMORY[0x231901D30]();
  v20 = sub_22F7421D0();
  v43 = v11;
  v21 = -1 << *(v11 + 32);
  v22 = v20 & ~v21;
  if ((*(v11 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v23 = ~v21;
    v24 = *(v5 + 72);
    while (1)
    {
      sub_22F12067C(*(v43 + 48) + v24 * v22, v9, type metadata accessor for NamedGroundedLocation);
      v25 = *v9 == v13 && v9[1] == v14;
      if (v25 || (sub_22F742040() & 1) != 0)
      {
        v26 = v9 + *(v42 + 20);
        v27 = &v26[v17[7]];
        if ((sub_22F73FEE0() & 1) != 0 && *&v26[v17[8]] == v39 && *&v26[v17[9]] == v38)
        {
          break;
        }
      }

      sub_22F1206E4(v9, type metadata accessor for NamedGroundedLocation);
      v22 = (v22 + 1) & v23;
      if (((*(v11 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_22F1206E4(v9, type metadata accessor for NamedGroundedLocation);
    sub_22F1206E4(v36, type metadata accessor for NamedGroundedLocation);
    sub_22F12067C(*(v43 + 48) + v24 * v22, v37, type metadata accessor for NamedGroundedLocation);
    return 0;
  }

  else
  {
LABEL_13:
    v29 = v35;
    v30 = *v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v36;
    v33 = v34;
    sub_22F12067C(v36, v34, type metadata accessor for NamedGroundedLocation);
    v44 = *v29;
    sub_22F113120(v33, v22, isUniquelyReferenced_nonNull_native);
    *v29 = v44;
    sub_22F120744(v32, v37, type metadata accessor for NamedGroundedLocation);
    return 1;
  }
}

uint64_t sub_22F10C40C(uint64_t a1, void *a2)
{
  v33 = a1;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v30 = (&v29 - v10);
  v31 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22F742170();
  v13 = *a2;
  v14 = a2[1];
  v32 = a2;
  sub_22F740D60();
  v15 = sub_22F7421D0();
  v16 = -1 << *(v11 + 32);
  v17 = v15 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v5 + 72);
    while (1)
    {
      sub_22F12067C(*(v11 + 48) + v19 * v17, v9, type metadata accessor for Song);
      if (*v9 == v13 && v9[1] == v14)
      {
        break;
      }

      v21 = sub_22F742040();
      sub_22F1206E4(v9, type metadata accessor for Song);
      if (v21)
      {
        goto LABEL_11;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_22F1206E4(v9, type metadata accessor for Song);
LABEL_11:
    sub_22F1206E4(v32, type metadata accessor for Song);
    sub_22F12067C(*(v11 + 48) + v19 * v17, v33, type metadata accessor for Song);
    return 0;
  }

  else
  {
LABEL_9:
    v22 = v31;
    v23 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v32;
    v26 = v30;
    sub_22F12067C(v32, v30, type metadata accessor for Song);
    v34 = *v22;
    sub_22F1134B0(v26, v17, isUniquelyReferenced_nonNull_native);
    v27 = v33;
    *v22 = v34;
    sub_22F120744(v25, v27, type metadata accessor for Song);
    return 1;
  }
}

uint64_t sub_22F10C720(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
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

    v17 = sub_22F741A10();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_22F741A00();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_22F10F704(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_22F112834(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_22F10BB58(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_22F741800();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22F741810();

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
      v38 = *v11;
      v28 = a2;
      sub_22F11376C(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22F10C984(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578]);
  v36 = a2;
  v13 = sub_22F740D40();
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
      sub_22F1205EC(&qword_2810AC700, MEMORY[0x277CC9578]);
      v23 = sub_22F740DE0();
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
    sub_22F1138F0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22F10CC88(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_22F742170();
  sub_22F740D60();

  v6 = sub_22F7421D0();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0x6557664F74726170;
          v12 = 0xEA00000000006B65;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 0x616559664F796164;
          }

          else
          {
            v11 = 0x6144664F74726170;
          }

          if (v10 == 4)
          {
            v12 = 0xE900000000000072;
          }

          else
          {
            v12 = 0xE900000000000079;
          }
        }
      }

      else if (*(*(v4 + 48) + v8))
      {
        if (v10 == 1)
        {
          v11 = 0x6E6F73616573;
        }

        else
        {
          v11 = 0x59664F6567646577;
        }

        if (v10 == 1)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xEB00000000726165;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        v11 = 1918985593;
      }

      v13 = 0xE900000000000079;
      v14 = 0x616559664F796164;
      if (a2 == 4)
      {
        v13 = 0xE900000000000072;
      }

      else
      {
        v14 = 0x6144664F74726170;
      }

      if (a2 == 3)
      {
        v14 = 0x6557664F74726170;
        v13 = 0xEA00000000006B65;
      }

      v15 = 0x59664F6567646577;
      if (a2 == 1)
      {
        v15 = 0x6E6F73616573;
      }

      v16 = 0xEB00000000726165;
      if (a2 == 1)
      {
        v16 = 0xE600000000000000;
      }

      if (!a2)
      {
        v15 = 1918985593;
        v16 = 0xE400000000000000;
      }

      v17 = a2 <= 2u ? v15 : v14;
      v18 = a2 <= 2u ? v16 : v13;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_22F742040();

      if (v19)
      {
        goto LABEL_43;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_41:
    v20 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;
    sub_22F113D48(a2, v8, isUniquelyReferenced_nonNull_native);
    *v23 = v25;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22F10D004(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22F73F990();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22F1205EC(&qword_2810AC6D0, MEMORY[0x277CC99D0]);
  v36 = a2;
  v13 = sub_22F740D40();
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
      sub_22F1205EC(&unk_2810AC6C0, MEMORY[0x277CC99D0]);
      v23 = sub_22F740DE0();
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
    sub_22F114118(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22F10D2E4(uint64_t a1, void *a2)
{
  v25 = a1;
  v4 = type metadata accessor for PublicEvent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_22F742170();
  v24 = a2;
  v11 = *a2;
  MEMORY[0x231901D70](*a2);
  v12 = sub_22F7421D0();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_22F12067C(*(v9 + 48) + v16 * v14, v8, type metadata accessor for PublicEvent);
      v17 = *v8;
      sub_22F1206E4(v8, type metadata accessor for PublicEvent);
      if (v17 == v11)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22F1206E4(v24, type metadata accessor for PublicEvent);
    sub_22F12067C(*(v9 + 48) + v16 * v14, v25, type metadata accessor for PublicEvent);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v24;
    sub_22F12067C(v24, v8, type metadata accessor for PublicEvent);
    v26 = *v2;
    sub_22F1143E0(v8, v14, isUniquelyReferenced_nonNull_native);
    v21 = v25;
    *v2 = v26;
    sub_22F120744(v20, v21, type metadata accessor for PublicEvent);
    return 1;
  }
}

uint64_t sub_22F10D518(void *a1, uint64_t a2)
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

    v8 = sub_22F741A10();

    if (v8)
    {

      type metadata accessor for ImportantEntitiesGraphInferenceMoment();
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_22F741A00();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_22F10FAFC(v7, result + 1);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_22F111708(v30 + 1);
        }

        sub_22F10BA74(v31, v29);

        *v3 = v29;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v32 = v2;
    v10 = *(v6 + 40);
    sub_22F742170();
    v11 = [*(a2 + 16) localIdentifier];
    sub_22F740E20();

    sub_22F740D60();

    v12 = sub_22F7421D0();
    v13 = -1 << *(v6 + 32);
    v14 = v12 & ~v13;
    if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v34 = ~v13;
      while (1)
      {
        v15 = *(*(*(v6 + 48) + 8 * v14) + 16);

        v16 = [v15 localIdentifier];
        v17 = sub_22F740E20();
        v19 = v18;

        v20 = [*(a2 + 16) localIdentifier];
        v21 = sub_22F740E20();
        v23 = v22;

        if (v17 == v21 && v19 == v23)
        {

          goto LABEL_22;
        }

        v25 = sub_22F742040();

        if (v25)
        {
          break;
        }

        v14 = (v14 + 1) & v34;
        if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_22:
      *a1 = *(*(v6 + 48) + 8 * v14);

      return 0;
    }

    else
    {
LABEL_15:
      v26 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v32;

      sub_22F114668(v28, v14, isUniquelyReferenced_nonNull_native);
      *v32 = v36;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22F10D88C(uint64_t a1, void *a2)
{
  v60 = a1;
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v57 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  v11 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v13 = &v57 - v12;
  v14 = type metadata accessor for SongSource();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v58 = (&v57 - v20);
  v59 = v2;
  v21 = *v2;
  v22 = *(*v2 + 40);
  sub_22F742170();
  SongSource.hash(into:)();
  v23 = sub_22F7421D0();
  v71 = v21 + 56;
  v72 = v21;
  v24 = -1 << *(v21 + 32);
  v25 = v23 & ~v24;
  v26 = *(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25;
  v73 = a2;
  if ((v26 & 1) == 0)
  {
LABEL_28:
    v52 = v59;
    v53 = *v59;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v73;
    v56 = v58;
    sub_22F12067C(v73, v58, type metadata accessor for SongSource);
    v75 = *v52;
    sub_22F1148BC(v56, v25, isUniquelyReferenced_nonNull_native);
    *v52 = v75;
    sub_22F120744(v55, v60, type metadata accessor for SongSource);
    return 1;
  }

  v69 = ~v24;
  v27 = *a2;
  v28 = a2[1];
  v74 = v27;
  v29 = (v5 + 48);
  v61 = (v5 + 32);
  v65 = (v5 + 8);
  v70 = *(v15 + 72);
  v62 = v14;
  while (1)
  {
    v30 = *(v72 + 48);
    v68 = v70 * v25;
    sub_22F12067C(v30 + v70 * v25, v18, type metadata accessor for SongSource);
    v31 = *v18 == v74 && v18[1] == v28;
    if (!v31 && (sub_22F742040() & 1) == 0)
    {
      goto LABEL_5;
    }

    v32 = v28;
    v33 = *(v14 + 28);
    v34 = *(v66 + 48);
    sub_22F12057C(v18 + v33, v13);
    sub_22F12057C(v73 + v33, &v13[v34]);
    v35 = *v29;
    if ((*v29)(v13, 1, v4) == 1)
    {
      v36 = v35(&v13[v34], 1, v4);
      v28 = v32;
      if (v36 != 1)
      {
        goto LABEL_4;
      }

      sub_22F120ADC(v13, &qword_27DAB0920, &qword_22F770B20);
    }

    else
    {
      sub_22F12057C(v13, v67);
      if (v35(&v13[v34], 1, v4) == 1)
      {
        (*v65)(v67, v4);
        v28 = v32;
LABEL_4:
        sub_22F120ADC(v13, &unk_27DAB05B0, &unk_22F771430);
LABEL_5:
        sub_22F1206E4(v18, type metadata accessor for SongSource);
        goto LABEL_6;
      }

      v37 = &v13[v34];
      v38 = v4;
      v39 = v67;
      v40 = v63;
      (*v61)(v63, v37, v38);
      sub_22F1205EC(&qword_2810AC700, MEMORY[0x277CC9578]);
      v64 = sub_22F740DE0();
      v41 = *v65;
      v42 = v40;
      v4 = v38;
      (*v65)(v42, v38);
      v43 = v39;
      v14 = v62;
      v41(v43, v38);
      sub_22F120ADC(v13, &qword_27DAB0920, &qword_22F770B20);
      v28 = v32;
      if ((v64 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v44 = *(v14 + 32);
    v45 = (v18 + v44);
    v46 = *(v18 + v44 + 8);
    v47 = (v73 + v44);
    v48 = v47[1];
    if (!v46)
    {
      if (!v48)
      {
        break;
      }

      goto LABEL_5;
    }

    if (!v48)
    {
      goto LABEL_5;
    }

    if (*v45 == *v47 && v46 == v48)
    {
      break;
    }

    v50 = sub_22F742040();
    sub_22F1206E4(v18, type metadata accessor for SongSource);
    if (v50)
    {
      goto LABEL_27;
    }

LABEL_6:
    v25 = (v25 + 1) & v69;
    if (((*(v71 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_22F1206E4(v18, type metadata accessor for SongSource);
LABEL_27:
  sub_22F1206E4(v73, type metadata accessor for SongSource);
  sub_22F12067C(*(v72 + 48) + v68, v60, type metadata accessor for SongSource);
  return 0;
}

uint64_t sub_22F10DF08(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22F742170();
  sub_22F2B493C(a2);
  sub_22F740D60();

  v7 = sub_22F7421D0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_84:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_22F114F24(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    result = 1;
    goto LABEL_87;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE500000000000000;
    v12 = 0x7465737341;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v12 = 0x6C6F437465737341;
        v11 = 0xEF6E6F697463656CLL;
        break;
      case 2:
        v11 = 0xE600000000000000;
        v12 = 0x6E6F73726550;
        break;
      case 3:
        v11 = 0xE300000000000000;
        v12 = 7628112;
        break;
      case 4:
        v12 = 0x6D75626C41;
        break;
      case 5:
        v12 = 0x656E656353;
        break;
      case 6:
        v11 = 0xE700000000000000;
        v12 = 0x687361486F6547;
        break;
      case 7:
        v12 = 0x73756C4365746144;
        v11 = 0xEB00000000726574;
        break;
      case 8:
        v11 = 0xE400000000000000;
        v12 = 1885958740;
        break;
      case 9:
        v12 = 0x657469726F766146;
        v11 = 0xE900000000000073;
        break;
      case 0xA:
        v12 = 0x746163696C707544;
        v11 = 0xEA00000000007365;
        break;
      case 0xB:
        v11 = 0xE400000000000000;
        v12 = 1701670728;
        break;
      case 0xC:
        v11 = 0xE300000000000000;
        v12 = 7954756;
        break;
      case 0xD:
        v11 = 0xE700000000000000;
        v12 = 0x7961646B656557;
        break;
      case 0xE:
        v12 = 0x68746E6F4DLL;
        break;
      case 0xF:
        v11 = 0xE700000000000000;
        v12 = 0x72657472617551;
        break;
      case 0x10:
        v11 = 0xE400000000000000;
        v12 = 1918985561;
        break;
      case 0x11:
        v11 = 0xE400000000000000;
        v12 = 2037672259;
        break;
      case 0x12:
        v12 = 0x6574617453;
        break;
      case 0x13:
        v11 = 0xE700000000000000;
        v12 = 0x7972746E756F43;
        break;
      case 0x14:
        v12 = 0x764563696C627550;
        v11 = 0xEB00000000746E65;
        break;
      case 0x15:
        v12 = 0xD000000000000013;
        v11 = 0x800000022F78E7B0;
        break;
      case 0x16:
        v12 = 0xD000000000000016;
        v11 = 0x800000022F78E7D0;
        break;
      case 0x17:
        v12 = 0x656D726F66726550;
        v11 = 0xE900000000000072;
        break;
      case 0x18:
        v11 = 0xE800000000000000;
        v12 = 0x7373656E69737542;
        break;
      case 0x19:
        v12 = 0xD000000000000010;
        v11 = 0x800000022F78E800;
        break;
      default:
        break;
    }

    v13 = 0xE500000000000000;
    v14 = 0x7465737341;
    switch(a2)
    {
      case 1:
        v13 = 0xEF6E6F697463656CLL;
        if (v12 == 0x6C6F437465737341)
        {
          goto LABEL_78;
        }

        goto LABEL_79;
      case 2:
        v13 = 0xE600000000000000;
        if (v12 != 0x6E6F73726550)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 3:
        v13 = 0xE300000000000000;
        if (v12 != 7628112)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 4:
        if (v12 != 0x6D75626C41)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 5:
        v17 = 1852138323;
        goto LABEL_68;
      case 6:
        v13 = 0xE700000000000000;
        if (v12 != 0x687361486F6547)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 7:
        v15 = 0x73756C4365746144;
        v16 = 7497076;
        goto LABEL_58;
      case 8:
        v13 = 0xE400000000000000;
        if (v12 != 1885958740)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 9:
        v13 = 0xE900000000000073;
        if (v12 != 0x657469726F766146)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 10:
        v13 = 0xEA00000000007365;
        if (v12 != 0x746163696C707544)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 11:
        v13 = 0xE400000000000000;
        if (v12 != 1701670728)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 12:
        v13 = 0xE300000000000000;
        if (v12 != 7954756)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 13:
        v13 = 0xE700000000000000;
        if (v12 != 0x7961646B656557)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 14:
        if (v12 != 0x68746E6F4DLL)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 15:
        v13 = 0xE700000000000000;
        if (v12 != 0x72657472617551)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 16:
        v13 = 0xE400000000000000;
        if (v12 != 1918985561)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 17:
        v13 = 0xE400000000000000;
        if (v12 != 2037672259)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 18:
        v17 = 1952543827;
LABEL_68:
        if (v12 != (v17 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 19:
        v13 = 0xE700000000000000;
        v14 = 0x7972746E756F43;
        goto LABEL_77;
      case 20:
        v15 = 0x764563696C627550;
        v16 = 7630437;
LABEL_58:
        v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v12 != v15)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 21:
        v13 = 0x800000022F78E7B0;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 22:
        v13 = 0x800000022F78E7D0;
        if (v12 != 0xD000000000000016)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 23:
        v13 = 0xE900000000000072;
        if (v12 != 0x656D726F66726550)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 24:
        v13 = 0xE800000000000000;
        if (v12 != 0x7373656E69737542)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 25:
        v13 = 0x800000022F78E800;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      default:
LABEL_77:
        if (v12 != v14)
        {
          goto LABEL_79;
        }

LABEL_78:
        if (v11 != v13)
        {
LABEL_79:
          v18 = sub_22F742040();

          if (v18)
          {
            goto LABEL_86;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_84;
          }

          continue;
        }

LABEL_86:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_87:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_22F10E5F4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_22F742170();
  sub_22F2897A0(a2);
  sub_22F740D60();

  v6 = sub_22F7421D0();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_102:
    v21 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;
    sub_22F1156B4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v24 = v26;
    result = 1;
    goto LABEL_105;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xED0000657461645FLL;
    v11 = 0x6E6F5F6E656B6174;
    switch(*(*(v4 + 48) + v8))
    {
      case 1:
        v10 = 0xED0000706972745FLL;
        v11 = 0x6E6F5F6E656B6174;
        break;
      case 2:
        v11 = 0x5F6F65675F736168;
        v10 = 0xEC00000068736168;
        break;
      case 3:
        v11 = 0xD000000000000011;
        v10 = 0x800000022F78E520;
        break;
      case 4:
        v11 = 0xD000000000000010;
        v10 = 0x800000022F78E540;
        break;
      case 5:
        v10 = 0xEF6E6F737265705FLL;
        goto LABEL_24;
      case 6:
        v10 = 0xEC0000007465705FLL;
LABEL_24:
        v11 = 0x736E6961746E6F63;
        break;
      case 7:
        v11 = 0x736E6961746E6F63;
        goto LABEL_28;
      case 8:
        v11 = 0x666F5F646C696863;
LABEL_28:
        v10 = 0xEE00656E6563735FLL;
        break;
      case 9:
        v11 = 0x6F7661665F736177;
        v10 = 0xED00006465746972;
        break;
      case 0xA:
        v11 = 0xD00000000000001ALL;
        v10 = 0x800000022F78E5A0;
        break;
      case 0xB:
        v11 = 0x74615F6E656B6174;
        v10 = 0xED0000656D6F685FLL;
        break;
      case 0xC:
        v11 = 0xD000000000000015;
        v10 = 0x800000022F78E5D0;
        break;
      case 0xD:
        v11 = 0x61635F666F5F7369;
        v10 = 0xEE0079726F676574;
        break;
      case 0xE:
        v11 = 0xD000000000000011;
        v10 = 0x800000022F78E600;
        break;
      case 0xF:
        v11 = 0x656D726F66726570;
        v10 = 0xEC00000079625F64;
        break;
      case 0x10:
        v10 = 0xE700000000000000;
        v11 = 0x74615F646C6568;
        break;
      case 0x11:
        v11 = 0xD000000000000010;
        v10 = 0x800000022F78E630;
        break;
      case 0x12:
        v10 = 0xE300000000000000;
        v11 = 7954788;
        break;
      case 0x13:
        v10 = 0xE700000000000000;
        v11 = 0x7961646B656577;
        break;
      case 0x14:
        v10 = 0xE500000000000000;
        v11 = 0x68746E6F6DLL;
        break;
      case 0x15:
        v10 = 0xE700000000000000;
        v11 = 0x72657472617571;
        break;
      case 0x16:
        v10 = 0xE400000000000000;
        v11 = 1918985593;
        break;
      case 0x17:
        v10 = 0xE800000000000000;
        v11 = 0x65746174735F6E69;
        break;
      case 0x18:
        v11 = 0x746E756F635F6E69;
        v10 = 0xEA00000000007972;
        break;
      case 0x19:
        v10 = 0xED0000797469635FLL;
        goto LABEL_36;
      case 0x1A:
        v10 = 0xEE0065746174735FLL;
LABEL_36:
        v11 = 0x6E695F6E656B6174;
        break;
      case 0x1B:
        v11 = 0xD000000000000010;
        v10 = 0x800000022F78E690;
        break;
      case 0x1C:
        v11 = 0xD000000000000012;
        v10 = 0x800000022F78E6B0;
        break;
      case 0x1D:
        v11 = 0xD000000000000011;
        v10 = 0x800000022F78E6D0;
        break;
      case 0x1E:
        v11 = 0xD000000000000017;
        v10 = 0x800000022F78E6F0;
        break;
      default:
        break;
    }

    v12 = 0x6E6F5F6E656B6174;
    v13 = 0xED0000657461645FLL;
    switch(a2)
    {
      case 1:
        v13 = 0xED0000706972745FLL;
        if (v11 == 0x6E6F5F6E656B6174)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      case 2:
        v16 = 0x5F6F65675F736168;
        v17 = 1752392040;
        goto LABEL_59;
      case 3:
        v13 = 0x800000022F78E520;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 4:
        v13 = 0x800000022F78E540;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 5:
        v13 = 0xEF6E6F737265705FLL;
        goto LABEL_73;
      case 6:
        v13 = 0xEC0000007465705FLL;
LABEL_73:
        if (v11 != 0x736E6961746E6F63)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 7:
        v18 = 0x736E6961746E6F63;
        goto LABEL_80;
      case 8:
        v18 = 0x666F5F646C696863;
LABEL_80:
        v19 = 0x656E6563735FLL;
        goto LABEL_81;
      case 9:
        v14 = 0x6F7661665F736177;
        v15 = 0x6465746972;
        goto LABEL_52;
      case 10:
        v13 = 0x800000022F78E5A0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 11:
        v14 = 0x74615F6E656B6174;
        v15 = 0x656D6F685FLL;
LABEL_52:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v11 != v14)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 12:
        v13 = 0x800000022F78E5D0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 13:
        v18 = 0x61635F666F5F7369;
        v19 = 0x79726F676574;
LABEL_81:
        v13 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v11 != v18)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 14:
        v13 = 0x800000022F78E600;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 15:
        v16 = 0x656D726F66726570;
        v17 = 2036490084;
LABEL_59:
        v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v16)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 16:
        v13 = 0xE700000000000000;
        if (v11 != 0x74615F646C6568)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 17:
        v13 = 0x800000022F78E630;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 18:
        v13 = 0xE300000000000000;
        if (v11 != 7954788)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 19:
        v13 = 0xE700000000000000;
        if (v11 != 0x7961646B656577)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 20:
        v13 = 0xE500000000000000;
        if (v11 != 0x68746E6F6DLL)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 21:
        v13 = 0xE700000000000000;
        if (v11 != 0x72657472617571)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 22:
        v13 = 0xE400000000000000;
        if (v11 != 1918985593)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 23:
        v13 = 0xE800000000000000;
        if (v11 != 0x65746174735F6E69)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 24:
        v13 = 0xEA00000000007972;
        if (v11 != 0x746E756F635F6E69)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 25:
        v13 = 0xED0000797469635FLL;
        goto LABEL_100;
      case 26:
        v13 = 0xEE0065746174735FLL;
LABEL_100:
        if (v11 != 0x6E695F6E656B6174)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 27:
        v13 = 0x800000022F78E690;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 28:
        v13 = 0x800000022F78E6B0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 29:
        v12 = 0xD000000000000011;
        v13 = 0x800000022F78E6D0;
        goto LABEL_94;
      case 30:
        v13 = 0x800000022F78E6F0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      default:
LABEL_94:
        if (v11 != v12)
        {
          goto LABEL_96;
        }

LABEL_95:
        if (v10 != v13)
        {
LABEL_96:
          v20 = sub_22F742040();

          if (v20)
          {
            goto LABEL_104;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_102;
          }

          continue;
        }

LABEL_104:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v8);
LABEL_105:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_22F10EF00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22F7409A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22F1205EC(&qword_2810A94A0, MEMORY[0x277D1F370]);
  v36 = a2;
  v13 = sub_22F740D40();
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
      sub_22F1205EC(&unk_2810A9490, MEMORY[0x277D1F370]);
      v23 = sub_22F740DE0();
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
    sub_22F116050(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22F10F204(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_22F742170();
  sub_22F2594CC(v19, a2);
  v8 = sub_22F7421D0();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v14 = sub_22F17B5C0(v13, a2);

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v3;

    sub_22F116318(v17, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_22F10F38C(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
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

    v17 = sub_22F741A10();

    if (v17)
    {

      sub_22F120634(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22F741A00();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_22F10F8FC(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_22F112834(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_22F10BB58(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_22F120634(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22F741800();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22F741810();

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
      sub_22F113BB8(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22F10F624(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_22F742160();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_22F1164A4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22F10F704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_22F741AC0();
    v22 = v8;
    sub_22F7419C0();
    if (sub_22F741A40())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_22F112834(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_22F741800();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_22F741A40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_22F10F8FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22F741AC0();
    v24 = v10;
    sub_22F7419C0();
    if (sub_22F741A40())
    {
      sub_22F120634(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_22F112834(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22F741800();
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

      while (sub_22F741A40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22F10FAFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0778, &qword_22F7708F0);
    v2 = sub_22F741AC0();
    v17 = v2;
    sub_22F7419C0();
    if (sub_22F741A40())
    {
      type metadata accessor for ImportantEntitiesGraphInferenceMoment();
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_22F111708(v11 + 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        sub_22F742170();
        v4 = [*(v16 + 16) localIdentifier];
        sub_22F740E20();

        sub_22F740D60();

        result = sub_22F7421D0();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
      }

      while (sub_22F741A40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22F10FDA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
  result = sub_22F741AB0();
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
      sub_22F742170();
      sub_22F740D60();
      result = sub_22F7421D0();
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

uint64_t sub_22F110000(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MomentGroundedLocation(0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0790, &qword_22F770900);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v39 = *(v37 + 72);
      sub_22F120744(v23 + v39 * (v20 | (v12 << 6)), v7, type metadata accessor for MomentGroundedLocation);
      v24 = *(v11 + 40);
      sub_22F742170();
      v25 = v38;
      v26 = *(v38 + 28);
      sub_22F73FF10();
      sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
      sub_22F740D50();
      MEMORY[0x231901D30](*&v7[*(v25 + 32)]);
      MEMORY[0x231901D30](*&v7[*(v25 + 36)]);
      result = sub_22F7421D0();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22F120744(v7, *(v11 + 48) + v19 * v39, type metadata accessor for MomentGroundedLocation);
      ++*(v11 + 16);
      v8 = v36;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v35;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22F110380(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NamedGroundedLocation(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0788, &qword_22F7708F8);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v2;
    v41 = v7;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    v42 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v45 = *(v43 + 72);
      sub_22F120744(v23 + v45 * (v20 | (v12 << 6)), v7, type metadata accessor for NamedGroundedLocation);
      v24 = v11[5];
      sub_22F742170();
      v25 = *v7;
      v26 = v7[1];
      sub_22F740D60();
      v27 = v7 + *(v44 + 20);
      v28 = type metadata accessor for MomentGroundedLocation(0);
      v29 = v11;
      v30 = v28[7];
      sub_22F73FF10();
      sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
      sub_22F740D50();
      MEMORY[0x231901D30](*&v27[v28[8]]);
      MEMORY[0x231901D30](*&v27[v28[9]]);
      result = sub_22F7421D0();
      v11 = v29;
      v31 = -1 << *(v29 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v7 = v41;
        v8 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v8 = v42;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22F120744(v7, v11[6] + v19 * v45, type metadata accessor for NamedGroundedLocation);
      ++v11[2];
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v8 + 32);
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    v2 = v40;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22F110730(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0598, &unk_22F7787F0);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v37 + 72);
      sub_22F120744(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for Song);
      v24 = *(v11 + 40);
      sub_22F742170();
      v25 = *v7;
      v26 = v7[1];
      sub_22F740D60();
      result = sub_22F7421D0();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22F120744(v7, *(v11 + 48) + v19 * v23, type metadata accessor for Song);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero((v8 + 56), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22F110A38(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22F73F690();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0768, &qword_22F7708E8);
  result = sub_22F741AB0();
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
      sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578]);
      result = sub_22F740D40();
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

uint64_t sub_22F110D94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0700, &qword_22F7708B0);
  result = sub_22F741AB0();
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
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_22F742170();
      sub_22F740D60();

      result = sub_22F7421D0();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
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

uint64_t sub_22F1110A8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22F73F990();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0668, &unk_22F77A310);
  result = sub_22F741AB0();
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
      sub_22F1205EC(&qword_2810AC6D0, MEMORY[0x277CC99D0]);
      result = sub_22F740D40();
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

uint64_t sub_22F111404(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PublicEvent();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0580, &qword_22F770818);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      sub_22F120744(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7, type metadata accessor for PublicEvent);
      v24 = *(v11 + 40);
      sub_22F742170();
      MEMORY[0x231901D70](*v7);
      result = sub_22F7421D0();
      v25 = -1 << *(v11 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22F120744(v7, *(v11 + 48) + v19 * v23, type metadata accessor for PublicEvent);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22F111708(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0778, &qword_22F7708F0);
  result = sub_22F741AB0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      sub_22F742170();
      v20 = [*(v18 + 16) localIdentifier];
      sub_22F740E20();

      sub_22F740D60();

      result = sub_22F7421D0();
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
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
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
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_22F111998(uint64_t a1)
{
  v2 = v1;
  v58 = sub_22F73F690();
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v58);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v49 - v9;
  v60 = type metadata accessor for SongSource();
  v56 = *(v60 - 1);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v60);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05C0, &qword_22F770820);
  result = sub_22F741AB0();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = (v13 + 56);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v54 = (v4 + 48);
    v55 = v13;
    v52 = (v4 + 32);
    v50 = v2;
    v51 = (v4 + 8);
    v23 = result + 56;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = *(v13 + 48);
      v59 = *(v56 + 72);
      sub_22F120744(v28 + v59 * (v25 | (v17 << 6)), v12, type metadata accessor for SongSource);
      v29 = *(v16 + 40);
      sub_22F742170();
      v30 = *v12;
      v31 = v12[1];
      sub_22F740D60();
      v32 = (v12 + v60[11]);
      if (v32[1])
      {
        v33 = *v32;
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v34 = v57;
      sub_22F12057C(v12 + v60[7], v57);
      v35 = v58;
      if ((*v54)(v34, 1, v58) == 1)
      {
        sub_22F742190();
      }

      else
      {
        v36 = v53;
        (*v52)(v53, v34, v35);
        sub_22F742190();
        sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578]);
        sub_22F740D50();
        (*v51)(v36, v35);
      }

      v37 = (v12 + v60[8]);
      if (v37[1])
      {
        v38 = *v37;
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v39 = (v12 + v60[12]);
      if (v39[1])
      {
        v40 = *v39;
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v13 = v55;
      result = sub_22F7421D0();
      v41 = -1 << *(v16 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v23 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v23 + 8 * v43);
          if (v47 != -1)
          {
            v24 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v42) & ~*(v23 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_22F120744(v12, *(v16 + 48) + v24 * v59, type metadata accessor for SongSource);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    v48 = 1 << *(v13 + 32);
    if (v48 >= 64)
    {
      bzero(v18, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v48;
    }

    v2 = v50;
    *(v13 + 16) = 0;
  }

  *v2 = v16;
  return result;
}

uint64_t sub_22F111F38(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F741AB0();
  v9 = result;
  if (*(v6 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      sub_22F742170();
      a4(v21);
      sub_22F740D60();

      result = sub_22F7421D0();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero((v6 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v5 = v31;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t sub_22F1121BC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22F7409A0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06C8, &qword_22F7708A0);
  result = sub_22F741AB0();
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
      sub_22F1205EC(&qword_2810A94A0, MEMORY[0x277D1F370]);
      result = sub_22F740D40();
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

uint64_t sub_22F11252C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB06B8, &qword_22F770898);
  result = sub_22F741AB0();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
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
        v16 = v7;
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_43;
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

        v33 = 1 << *(v3 + 32);
        if (v33 >= 64)
        {
          bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v33;
        }

        v2 = v34;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22F742170();
      if (v18 >> 62)
      {
        v32 = sub_22F741A00();
        MEMORY[0x231901D30](v32);
        result = sub_22F741A00();
        v20 = result;
        if (!result)
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = MEMORY[0x231901D30](*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_26;
        }
      }

      if (v20 < 1)
      {
        goto LABEL_44;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v20; ++i)
        {
          MEMORY[0x2319016F0](i, v18);
          sub_22F741820();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v22 = (v18 + 32);
        do
        {
          v23 = *v22++;
          v24 = v23;
          sub_22F741820();

          --v20;
        }

        while (v20);
      }

LABEL_26:
      result = sub_22F7421D0();
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

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v35;
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22F112834(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F741AB0();
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
      result = sub_22F741800();
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

uint64_t sub_22F112A54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05D0, &qword_22F770828);
  result = sub_22F741AB0();
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
      result = sub_22F742160();
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

uint64_t sub_22F112C78(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_22F10FDA0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22F1165C4();
      goto LABEL_16;
    }

    sub_22F117250(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22F742170();
  sub_22F740D60();
  result = sub_22F7421D0();
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

      result = sub_22F742040();
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
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F112DF8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for MomentGroundedLocation(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v29 = v8;
  v30 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22F110000(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22F116720(type metadata accessor for MomentGroundedLocation, &unk_27DAB0790, &qword_22F770900, type metadata accessor for MomentGroundedLocation);
      goto LABEL_16;
    }

    sub_22F117488(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22F742170();
  v16 = v7[7];
  sub_22F73FF10();
  sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  sub_22F740D50();
  v32 = *(a1 + v7[8]);
  MEMORY[0x231901D30]();
  v31 = *(a1 + v7[9]);
  MEMORY[0x231901D30]();
  v17 = sub_22F7421D0();
  v18 = -1 << *(v14 + 32);
  a2 = v17 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v8 + 72);
    do
    {
      sub_22F12067C(*(v14 + 48) + v20 * a2, v11, type metadata accessor for MomentGroundedLocation);
      v21 = v7[7];
      if ((sub_22F73FEE0() & 1) != 0 && *&v11[v7[8]] == v32)
      {
        v22 = *&v11[v7[9]];
        sub_22F1206E4(v11, type metadata accessor for MomentGroundedLocation);
        if (v22 == v31)
        {
          sub_22F7420B0();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_22F1206E4(v11, type metadata accessor for MomentGroundedLocation);
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(a1, *(v23 + 48) + *(v29 + 72) * a2, type metadata accessor for MomentGroundedLocation);
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

uint64_t sub_22F113120(void *a1, unint64_t a2, char a3)
{
  v41 = type metadata accessor for NamedGroundedLocation(0);
  v37 = *(v41 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v35 = v3;
  v36 = a1;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    sub_22F110380(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22F116720(type metadata accessor for NamedGroundedLocation, &qword_27DAB0788, &qword_22F7708F8, type metadata accessor for NamedGroundedLocation);
      goto LABEL_20;
    }

    sub_22F1177DC(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_22F742170();
  v14 = *a1;
  v15 = a1[1];
  sub_22F740D60();
  v16 = a1 + *(v41 + 20);
  v17 = type metadata accessor for MomentGroundedLocation(0);
  v18 = v17[7];
  sub_22F73FF10();
  sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
  v39 = v18;
  sub_22F740D50();
  v38 = *&v16[v17[8]];
  MEMORY[0x231901D30]();
  v19 = v17[9];
  v40 = v16;
  v34 = *&v16[v19];
  MEMORY[0x231901D30]();
  v20 = sub_22F7421D0();
  v21 = -1 << *(v12 + 32);
  a2 = v20 & ~v21;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    v23 = *(v37 + 72);
    while (1)
    {
      sub_22F12067C(*(v12 + 48) + v23 * a2, v9, type metadata accessor for NamedGroundedLocation);
      v24 = *v9 == v14 && v9[1] == v15;
      if (v24 || (sub_22F742040() & 1) != 0)
      {
        v25 = v9 + *(v41 + 20);
        v26 = &v25[v17[7]];
        if ((sub_22F73FEE0() & 1) != 0 && *&v25[v17[8]] == v38 && *&v25[v17[9]] == v34)
        {
          break;
        }
      }

      sub_22F1206E4(v9, type metadata accessor for NamedGroundedLocation);
      a2 = (a2 + 1) & v22;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_22F1206E4(v9, type metadata accessor for NamedGroundedLocation);
    sub_22F7420B0();
    __break(1u);
  }

LABEL_20:
  v27 = v36;
  v28 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(v27, *(v28 + 48) + *(v37 + 72) * a2, type metadata accessor for NamedGroundedLocation);
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

uint64_t sub_22F1134B0(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Song();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v31 = a1;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v30 = v10;
    sub_22F110730(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_22F116720(type metadata accessor for Song, &qword_27DAB0598, &unk_22F7787F0, type metadata accessor for Song);
      goto LABEL_16;
    }

    v30 = v10;
    sub_22F117B54(v13 + 1);
  }

  v15 = *v4;
  v16 = *(*v4 + 40);
  sub_22F742170();
  v17 = *a1;
  v18 = a1[1];
  sub_22F740D60();
  v19 = sub_22F7421D0();
  v20 = -1 << *(v15 + 32);
  a2 = v19 & ~v20;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v32 + 72);
    do
    {
      sub_22F12067C(*(v15 + 48) + v22 * a2, v12, type metadata accessor for Song);
      if (*v12 == v17 && v12[1] == v18)
      {
        goto LABEL_19;
      }

      v24 = sub_22F742040();
      sub_22F1206E4(v12, type metadata accessor for Song);
      if (v24)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(v31, *(v25 + 48) + *(v32 + 72) * a2, type metadata accessor for Song);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_22F1206E4(v12, type metadata accessor for Song);
LABEL_20:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

void sub_22F11376C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_22F112834(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_22F116FD0(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_22F119A44(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_22F741800();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_22F741810();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22F7420B0();
  __break(1u);
}

uint64_t sub_22F1138F0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22F73F690();
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
    sub_22F110A38(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22F116C20(MEMORY[0x277CC9578], &qword_27DAB0768, &qword_22F7708E8);
      goto LABEL_12;
    }

    sub_22F117E2C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578]);
  v15 = sub_22F740D40();
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
      sub_22F1205EC(&qword_2810AC700, MEMORY[0x277CC9578]);
      v23 = sub_22F740DE0();
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
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

void sub_22F113BB8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
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
    sub_22F112834(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22F116FD0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22F119A44(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22F741800();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_22F120634(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22F741810();

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
  sub_22F7420B0();
  __break(1u);
}

uint64_t sub_22F113D48(uint64_t result, unint64_t a2, char a3)
{
  v26 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    sub_22F110D94(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22F116AF0(&qword_27DAB0700, &qword_22F7708B0);
      goto LABEL_48;
    }

    sub_22F118148(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22F742170();
  sub_22F740D60();

  result = sub_22F7421D0();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v12 = 0x6557664F74726170;
          v13 = 0xEA00000000006B65;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 0x616559664F796164;
          }

          else
          {
            v12 = 0x6144664F74726170;
          }

          if (v11 == 4)
          {
            v13 = 0xE900000000000072;
          }

          else
          {
            v13 = 0xE900000000000079;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x6E6F73616573;
        }

        else
        {
          v12 = 0x59664F6567646577;
        }

        if (v11 == 1)
        {
          v13 = 0xE600000000000000;
        }

        else
        {
          v13 = 0xEB00000000726165;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        v12 = 1918985593;
      }

      v14 = 0xE900000000000079;
      v15 = 0x616559664F796164;
      if (v26 == 4)
      {
        v14 = 0xE900000000000072;
      }

      else
      {
        v15 = 0x6144664F74726170;
      }

      if (v26 == 3)
      {
        v15 = 0x6557664F74726170;
        v14 = 0xEA00000000006B65;
      }

      v16 = 0x59664F6567646577;
      if (v26 == 1)
      {
        v16 = 0x6E6F73616573;
      }

      v17 = 0xEB00000000726165;
      if (v26 == 1)
      {
        v17 = 0xE600000000000000;
      }

      if (!v26)
      {
        v16 = 1918985593;
        v17 = 0xE400000000000000;
      }

      v18 = v26 <= 2u ? v16 : v15;
      v19 = v26 <= 2u ? v17 : v14;
      if (v12 == v18 && v13 == v19)
      {
        goto LABEL_51;
      }

      v20 = sub_22F742040();

      if (v20)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v26;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F114118(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22F73F990();
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
    sub_22F1110A8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22F116C20(MEMORY[0x277CC99D0], &qword_27DAB0668, &unk_22F77A310);
      goto LABEL_12;
    }

    sub_22F11842C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22F1205EC(&qword_2810AC6D0, MEMORY[0x277CC99D0]);
  v15 = sub_22F740D40();
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
      sub_22F1205EC(&unk_2810AC6C0, MEMORY[0x277CC99D0]);
      v23 = sub_22F740DE0();
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
  result = sub_22F7420B0();
  __break(1u);
  return result;
}