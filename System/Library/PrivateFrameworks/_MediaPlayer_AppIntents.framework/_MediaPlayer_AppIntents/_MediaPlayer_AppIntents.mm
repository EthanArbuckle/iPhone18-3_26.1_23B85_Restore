uint64_t AudioSearchCriteriaEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_27528D3D4();
  *a1 = sub_27529FD70();
  a1[1] = sub_27529FD70();
  sub_27528D4E4();
  a1[2] = sub_27529FD70();
  a1[3] = sub_27529FD70();
  sub_27528D62C();
  sub_27528D7C8();
  a1[4] = sub_27529FD50();
  sub_27528D81C();
  a1[5] = sub_27529FD90();
  a1[6] = sub_27529FD90();
  sub_27528D92C();
  sub_27528DA3C();
  a1[7] = sub_27529FD50();
  sub_27528DA90();
  sub_27528DBA0();
  a1[8] = sub_27529FD50();
  sub_27528DBF4();
  sub_27528DD04();
  a1[9] = sub_27529FD60();
  sub_27528DD58();
  sub_27528DE68();
  result = sub_27529FD60();
  a1[10] = result;
  return result;
}

void sub_27528D3D4()
{
  if (!qword_2809BACB0)
  {
    v0 = MEMORY[0x277D837D0];
    sub_275290D58(255, &qword_2809BACB8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_27528D6E8(&qword_2809BACC0, &qword_2809BACB8, v0, sub_27528D490);
    v1 = sub_27529FDA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2809BACB0);
    }
  }
}

unint64_t sub_27528D490()
{
  result = qword_2809BACC8;
  if (!qword_2809BACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BACC8);
  }

  return result;
}

void sub_27528D4E4()
{
  if (!qword_2809BACD0)
  {
    v0 = MEMORY[0x277D837D0];
    sub_275290D58(255, &qword_2809BACD8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_27528D5A0(&qword_2809BACE0, &qword_2809BACD8, v0, sub_27528D490);
    v1 = sub_27529FDA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2809BACD0);
    }
  }
}

uint64_t sub_27528D5A0(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_275290D58(255, a2, a3, MEMORY[0x277D83940]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27528D62C()
{
  if (!qword_2809BACE8)
  {
    sub_275290D58(255, &qword_2809BACF0, &type metadata for AudioSearchCriteriaEntity.MediaKindEnum, MEMORY[0x277D83D88]);
    sub_27528D6E8(&qword_2809BACF8, &qword_2809BACF0, &type metadata for AudioSearchCriteriaEntity.MediaKindEnum, sub_27528D774);
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BACE8);
    }
  }
}

uint64_t sub_27528D6E8(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_275290D58(255, a2, a3, MEMORY[0x277D83D88]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27528D774()
{
  result = qword_2809BAD00;
  if (!qword_2809BAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAD00);
  }

  return result;
}

unint64_t sub_27528D7C8()
{
  result = qword_2809BAD08;
  if (!qword_2809BAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAD08);
  }

  return result;
}

void sub_27528D81C()
{
  if (!qword_2809BAD10)
  {
    v0 = MEMORY[0x277D83B88];
    sub_275290D58(255, &qword_2809BAD18, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    sub_27528D6E8(&qword_2809BAD20, &qword_2809BAD18, v0, sub_27528D8D8);
    v1 = sub_27529FDA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2809BAD10);
    }
  }
}

unint64_t sub_27528D8D8()
{
  result = qword_2809BAD28;
  if (!qword_2809BAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAD28);
  }

  return result;
}

void sub_27528D92C()
{
  if (!qword_2809BAD30)
  {
    sub_275290D58(255, &qword_2809BAD38, &type metadata for AudioSearchCriteriaEntity.ContentSourceEnum, MEMORY[0x277D83D88]);
    sub_27528D6E8(&qword_2809BAD40, &qword_2809BAD38, &type metadata for AudioSearchCriteriaEntity.ContentSourceEnum, sub_27528D9E8);
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BAD30);
    }
  }
}

unint64_t sub_27528D9E8()
{
  result = qword_2809BAD48;
  if (!qword_2809BAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAD48);
  }

  return result;
}

unint64_t sub_27528DA3C()
{
  result = qword_2809BAD50;
  if (!qword_2809BAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAD50);
  }

  return result;
}

void sub_27528DA90()
{
  if (!qword_2809BAD58)
  {
    sub_275290D58(255, &qword_2809BAD60, &type metadata for AudioSearchCriteriaEntity.SortOrderEnum, MEMORY[0x277D83D88]);
    sub_27528D6E8(&qword_2809BAD68, &qword_2809BAD60, &type metadata for AudioSearchCriteriaEntity.SortOrderEnum, sub_27528DB4C);
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BAD58);
    }
  }
}

unint64_t sub_27528DB4C()
{
  result = qword_2809BAD70;
  if (!qword_2809BAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAD70);
  }

  return result;
}

unint64_t sub_27528DBA0()
{
  result = qword_2809BAD78;
  if (!qword_2809BAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAD78);
  }

  return result;
}

void sub_27528DBF4()
{
  if (!qword_2809BAD80)
  {
    sub_275290D58(255, &qword_2809BAD88, &type metadata for AudioSearchResultEntity, MEMORY[0x277D83D88]);
    sub_27528D6E8(&qword_2809BAD90, &qword_2809BAD88, &type metadata for AudioSearchResultEntity, sub_27528DCB0);
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BAD80);
    }
  }
}

unint64_t sub_27528DCB0()
{
  result = qword_2809BAD98;
  if (!qword_2809BAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAD98);
  }

  return result;
}

unint64_t sub_27528DD04()
{
  result = qword_2809BADA0;
  if (!qword_2809BADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BADA0);
  }

  return result;
}

void sub_27528DD58()
{
  if (!qword_2809BADA8)
  {
    sub_275290D58(255, &qword_2809BADB0, &type metadata for AudioSearchSpotlightResultEntity, MEMORY[0x277D83940]);
    sub_27528D5A0(&qword_2809BADB8, &qword_2809BADB0, &type metadata for AudioSearchSpotlightResultEntity, sub_27528DE14);
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BADA8);
    }
  }
}

unint64_t sub_27528DE14()
{
  result = qword_2809BADC0;
  if (!qword_2809BADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BADC0);
  }

  return result;
}

unint64_t sub_27528DE68()
{
  result = qword_2809BADC8;
  if (!qword_2809BADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BADC8);
  }

  return result;
}

uint64_t AudioSearchCriteriaEntity.name.getter()
{
  v1 = *v0;
  sub_27529FD20();
  return v3;
}

uint64_t sub_27528DEF0@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*AudioSearchCriteriaEntity.name.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *v0;
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t AudioSearchCriteriaEntity.albumName.getter()
{
  v1 = *(v0 + 8);
  sub_27529FD20();
  return v3;
}

uint64_t sub_27528E04C@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.albumName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27528E090()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  v3 = v1[1];
  memcpy(v14, v4, sizeof(v14));

  sub_2752903FC(v14, v15);
  v5 = v0(v2, v3);
  OUTLINED_FUNCTION_2(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v15[0]);
  return sub_275290434(v15);
}

uint64_t (*AudioSearchCriteriaEntity.albumName.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchCriteriaEntity.artistNames.getter()
{
  v1 = *(v0 + 16);
  sub_27529FD20();
  return v3;
}

uint64_t sub_27528E1E4@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.artistNames.getter();
  *a1 = result;
  return result;
}

uint64_t (*AudioSearchCriteriaEntity.artistNames.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchCriteriaEntity.genreNames.getter()
{
  v1 = *(v0 + 24);
  sub_27529FD20();
  return v3;
}

uint64_t sub_27528E30C@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.genreNames.getter();
  *a1 = result;
  return result;
}

uint64_t (*AudioSearchCriteriaEntity.genreNames.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t sub_27528E424@<X0>(_BYTE *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.kind.getter();
  *a1 = v3;
  return result;
}

uint64_t AudioSearchCriteriaEntity.kind.setter(char *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return sub_27529FD30();
}

uint64_t (*AudioSearchCriteriaEntity.kind.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchCriteriaEntity.releaseDecade.getter()
{
  v1 = *(v0 + 40);
  sub_27529FD20();
  return v3;
}

uint64_t sub_27528E564@<X0>(uint64_t a1@<X8>)
{
  result = AudioSearchCriteriaEntity.releaseDecade.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t (*AudioSearchCriteriaEntity.releaseDecade.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchCriteriaEntity.releaseYear.getter()
{
  v1 = *(v0 + 48);
  sub_27529FD20();
  return v3;
}

uint64_t sub_27528E690@<X0>(uint64_t a1@<X8>)
{
  result = AudioSearchCriteriaEntity.releaseYear.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_27528E6DC()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  v3 = *(v1 + 8);
  memcpy(v14, v4, sizeof(v14));
  sub_2752903FC(v14, v15);
  v5 = v0(v2, v3);
  OUTLINED_FUNCTION_2(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v15[0]);
  return sub_275290434(v15);
}

uint64_t (*AudioSearchCriteriaEntity.releaseYear.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t sub_27528E814@<X0>(_BYTE *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.source.getter();
  *a1 = v3;
  return result;
}

uint64_t AudioSearchCriteriaEntity.source.setter(char *a1)
{
  v2 = *(v1 + 56);
  v4 = *a1;
  return sub_27529FD30();
}

uint64_t (*AudioSearchCriteriaEntity.source.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t sub_27528E940@<X0>(_BYTE *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.sortOrder.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_27528E994()
{
  OUTLINED_FUNCTION_3();
  v3 = *v2;
  memcpy(__dst, v4, sizeof(__dst));
  v6 = v3;
  sub_2752903FC(__dst, v8);
  v0(&v6);
  memcpy(v8, v1, sizeof(v8));
  return sub_275290434(v8);
}

uint64_t AudioSearchCriteriaEntity.sortOrder.setter(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return sub_27529FD30();
}

uint64_t (*AudioSearchCriteriaEntity.sortOrder.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

double sub_27528EAE0@<D0>(_OWORD *a1@<X8>)
{
  AudioSearchCriteriaEntity.privateSearchResult.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_27528EB1C(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  memcpy(__dst, a2, sizeof(__dst));
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v9 = v5;
  v10 = v6;
  sub_275290464(v3);
  sub_2752903FC(__dst, v12);
  AudioSearchCriteriaEntity.privateSearchResult.setter(&v8);
  memcpy(v12, a2, sizeof(v12));
  return sub_275290434(v12);
}

uint64_t AudioSearchCriteriaEntity.privateSearchResult.setter(__int128 *a1)
{
  v2 = *(v1 + 72);
  v4 = *a1;
  v5 = a1[1];
  return sub_27529FD30();
}

uint64_t (*AudioSearchCriteriaEntity.privateSearchResult.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = sub_27529FD10();
  return sub_27528EC40;
}

uint64_t AudioSearchCriteriaEntity.spotlightSearchResults.getter()
{
  v1 = *(v0 + 80);
  sub_27529FD20();
  return v3;
}

uint64_t sub_27528EC9C@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.spotlightSearchResults.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27528ECE0()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  memcpy(v13, v3, sizeof(v13));

  sub_2752903FC(v13, v14);
  v4 = v0(v2);
  OUTLINED_FUNCTION_2(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v14[0]);
  return sub_275290434(v14);
}

uint64_t (*AudioSearchCriteriaEntity.spotlightSearchResults.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

void sub_27528EDD8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_27528EE48()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BAC18);
  __swift_project_value_buffer(v0, qword_2809BAC18);
  return sub_27529FE00();
}

uint64_t static AudioSearchCriteriaEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC10 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BAC18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *AudioSearchCriteriaEntity.convertToSystemIntentValue()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v43 = v1[3];
  v45 = v1[10];
  v10 = v1[5];
  sub_27529FD20();
  if (BYTE8(v53[0]) == 1)
  {
    sub_27529FD20();
    v11 = *&v53[0];
    if (BYTE8(v53[0]))
    {
      v11 = 0;
    }

    v40 = v11;
    if (BYTE8(v53[0]))
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    v54 = v12;
  }

  else
  {
    v54 = 0;
    v40 = *&v53[0];
  }

  sub_27529FD20();
  v13 = v53[0];
  sub_27529FD20();
  v39 = v53[0];
  sub_27529FD20();
  sub_27529FD20();
  v38 = *&v53[0];
  if (LOBYTE(v53[0]) == 18)
  {
    v14 = -8;
  }

  else
  {
    LOBYTE(__dst[0]) = v53[0];
    sub_275297AF4(__src);
    v14 = __src[0];
  }

  sub_27529FD20();
  v37 = *&v53[0];
  sub_27529FD20();
  v15 = v53[0];
  sub_27529FD20();
  v36 = v55;
  sub_27529FD20();
  v16 = v49;
  if (v49)
  {
    v17 = v50;
    v18 = v51;
    v19 = v52;

    OUTLINED_FUNCTION_5();
    *&v53[0] = v16;
    *(&v53[0] + 1) = v17;
    *&v53[1] = v18;
    *(&v53[1] + 1) = v19;
    sub_275296868(__src);
    OUTLINED_FUNCTION_5();
    memcpy(__dst, __src, 0x179uLL);
    nullsub_1(__dst);
    memcpy(v53, __dst, 0x179uLL);
  }

  else
  {
    sub_27528FBB0(0);
    sub_27528FC74(v53);
  }

  sub_27529FD20();
  v20 = __dst[0];
  v21 = *(__dst[0] + 16);
  if (v21)
  {
    v34 = v15;
    v35 = v14;
    __src[0] = MEMORY[0x277D84F90];
    sub_27528FC54(0, v21, 0);
    v22 = __src[0];
    v23 = (v20 + 48);
    do
    {
      v25 = *(v23 - 2);
      v24 = *(v23 - 1);
      v26 = *v23;
      sub_27529FD20();
      v44 = __dst[1];
      v46 = __dst[0];
      sub_27529FD20();
      v27 = __dst[0];
      v42 = __dst[1];
      sub_27529FD20();
      v28 = __dst[0];
      v29 = __dst[1];
      __src[0] = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_27528FC54((v30 > 1), v31 + 1, 1);
        v22 = __src[0];
      }

      *(v22 + 16) = v31 + 1;
      v32 = (v22 + 48 * v31);
      v32[4] = v46;
      v32[5] = v44;
      v32[6] = v27;
      v32[7] = v42;
      v32[8] = v28;
      v32[9] = v29;
      v23 += 3;
      --v21;
    }

    while (v21);

    v15 = v34;
    v14 = v35;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  sub_27528FC74(__src);
  *a1 = v13;
  *(a1 + 16) = v39;
  *(a1 + 32) = v38;
  *(a1 + 40) = v37;
  *(a1 + 48) = v14;
  *(a1 + 56) = v40;
  *(a1 + 64) = v54;
  *(a1 + 65) = v15;
  *(a1 + 66) = v36;
  memcpy(__dst, __src, 0x179uLL);
  sub_27528FC7C(__dst);
  result = memcpy((a1 + 72), v53, 0x179uLL);
  *(a1 + 456) = v22;
  return result;
}

uint64_t sub_27528F388(uint64_t a1)
{
  v2 = sub_27528FEAC();

  return MEMORY[0x28210C5A0](a1, v2);
}

uint64_t sub_27528F3D4(uint64_t a1)
{
  v2 = sub_27528FD00();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_27528F420(uint64_t a1)
{
  v2 = sub_27528FD00();

  return MEMORY[0x28210B2F8](a1, v2);
}

uint64_t sub_27528F490(uint64_t a1)
{
  v2 = sub_27528FE08();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_27528F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_27528F5B8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_27528F5B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_27528F6AC(uint64_t a1)
{
  v2 = sub_2752901B4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_27528F6F8@<X0>(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, 0x1D0uLL);
  sub_27528D3D4();
  v3 = sub_27529FD70();
  v4 = sub_27529FD70();
  sub_27528D4E4();
  v5 = sub_27529FD70();
  v6 = sub_27529FD70();
  sub_27528D62C();
  sub_27528D7C8();
  v7 = sub_27529FD50();
  sub_27528D81C();
  v8 = sub_27529FD90();
  v9 = sub_27529FD90();
  sub_27528D92C();
  sub_27528DA3C();
  v37 = sub_27529FD50();
  sub_27528DA90();
  sub_27528DBA0();
  v36 = sub_27529FD50();
  sub_27528DBF4();
  sub_27528DD04();
  v35 = sub_27529FD60();
  sub_27528DD58();
  sub_27528DE68();
  v32 = sub_27529FD60();

  sub_27529FD30();
  __srca[1] = __dst[3];

  sub_27529FD30();

  sub_27529FD30();
  __srca[0] = __dst[5];

  sub_27529FD30();
  if (LOBYTE(__dst[6]) <= 0xF7u)
  {
    LOBYTE(__srca[0]) = __dst[6];
    sub_275297A98(__srca, v42);
    sub_27529FD30();
  }

  if (LOBYTE(__dst[8]) == 255)
  {
    __srca[0] = 0;
    LOBYTE(__srca[1]) = 1;
    sub_27529FD30();
    __srca[0] = 0;
    LOBYTE(__srca[1]) = 1;
  }

  else
  {
    __srca[0] = __dst[7];
    LOBYTE(__srca[1]) = 0;
  }

  sub_27529FD30();
  if (BYTE1(__dst[8]) != 3)
  {
    LOBYTE(__srca[0]) = BYTE1(__dst[8]);
    sub_27529FD30();
  }

  if (BYTE2(__dst[8]) != 7)
  {
    LOBYTE(__srca[0]) = BYTE2(__dst[8]);
    sub_27529FD30();
  }

  v33 = v9;
  v34 = v8;
  memcpy(__srca, &__dst[9], 0x179uLL);
  if (sub_2752904C4(__srca) != 1)
  {
    memcpy(v41, __srca, 0x179uLL);
    memcpy(v42, &__dst[9], 0x179uLL);
    sub_2752905F8(v42, v40);
    sub_2752965D0(v41, v40);
    v41[0] = v40[0];
    v41[1] = v40[1];
    sub_27529FD30();
  }

  v10 = __dst[57];
  v11 = *(__dst[57] + 16);
  if (v11)
  {
    v26 = v7;
    v27 = v6;
    v28 = v5;
    v29 = v4;
    v30 = v3;
    v31 = a2;
    *&v41[0] = MEMORY[0x277D84F90];
    sub_27529051C(0, v11, 0);
    sub_27529053C(0, &qword_2809BAE68, sub_27528D490, MEMORY[0x277D837D0], MEMORY[0x277CB9E60]);
    v12 = *&v41[0];
    v13 = (v10 + 72);
    do
    {
      v14 = *(v13 - 5);
      v15 = *(v13 - 4);
      v16 = *(v13 - 2);
      v17 = *v13;
      v38 = *(v13 - 3);
      v39 = *(v13 - 1);

      v18 = sub_27529FD70();
      v19 = sub_27529FD70();
      v20 = sub_27529FD70();
      v42[0] = v14;
      v21 = v20;
      v42[1] = v15;

      sub_27529FD30();
      v42[0] = v38;
      v42[1] = v16;

      sub_27529FD30();
      v42[0] = v39;
      v42[1] = v17;

      sub_27529FD30();

      *&v41[0] = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_27529051C((v22 > 1), v23 + 1, 1);
        v12 = *&v41[0];
      }

      v13 += 6;
      *(v12 + 16) = v23 + 1;
      v24 = (v12 + 24 * v23);
      v24[4] = v18;
      v24[5] = v19;
      v24[6] = v21;
      --v11;
    }

    while (v11);
    sub_2752905A4(__dst);
    v3 = v30;
    a2 = v31;
    v5 = v28;
    v4 = v29;
    v7 = v26;
    v6 = v27;
  }

  else
  {
    sub_2752905A4(__dst);
    v12 = MEMORY[0x277D84F90];
  }

  v42[0] = v12;
  result = sub_27529FD30();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v34;
  a2[6] = v33;
  a2[7] = v37;
  a2[8] = v36;
  a2[9] = v35;
  a2[10] = v32;
  return result;
}

uint64_t sub_27528FBB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_27528FC14(char *a1, int64_t a2, char a3)
{
  result = sub_275290654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27528FC34(char *a1, int64_t a2, char a3)
{
  result = sub_275290774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27528FC54(char *a1, int64_t a2, char a3)
{
  result = sub_2752908A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_27528FC7C(uint64_t a1)
{
  sub_275290D58(0, &qword_2809BADD0, &type metadata for AudioSearch.Result, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27528FD00()
{
  result = qword_2809BADD8;
  if (!qword_2809BADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BADD8);
  }

  return result;
}

unint64_t sub_27528FD58()
{
  result = qword_2809BADE0;
  if (!qword_2809BADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BADE0);
  }

  return result;
}

unint64_t sub_27528FDB0()
{
  result = qword_2809BADE8;
  if (!qword_2809BADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BADE8);
  }

  return result;
}

unint64_t sub_27528FE08()
{
  result = qword_2809BADF0;
  if (!qword_2809BADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BADF0);
  }

  return result;
}

unint64_t sub_27528FEAC()
{
  result = qword_2809BADF8;
  if (!qword_2809BADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BADF8);
  }

  return result;
}

unint64_t sub_27528FF04()
{
  result = qword_2809BAE00;
  if (!qword_2809BAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE00);
  }

  return result;
}

unint64_t sub_27528FF5C()
{
  result = qword_2809BAE08;
  if (!qword_2809BAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE08);
  }

  return result;
}

unint64_t sub_27528FFB4()
{
  result = qword_2809BAE10;
  if (!qword_2809BAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE10);
  }

  return result;
}

unint64_t sub_27529000C()
{
  result = qword_2809BAE18;
  if (!qword_2809BAE18)
  {
    sub_27529053C(255, &qword_2809BAE20, sub_27528FD00, &type metadata for AudioSearchCriteriaEntity, MEMORY[0x277CB9B58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE18);
  }

  return result;
}

unint64_t sub_2752900AC()
{
  result = qword_2809BAE28;
  if (!qword_2809BAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE28);
  }

  return result;
}

unint64_t sub_275290104()
{
  result = qword_2809BAE30;
  if (!qword_2809BAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE30);
  }

  return result;
}

unint64_t sub_27529015C()
{
  result = qword_2809BAE38;
  if (!qword_2809BAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE38);
  }

  return result;
}

unint64_t sub_2752901B4()
{
  result = qword_2809BAE40;
  if (!qword_2809BAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE40);
  }

  return result;
}

unint64_t sub_27529020C()
{
  result = qword_2809BAE48;
  if (!qword_2809BAE48)
  {
    sub_27529FE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE48);
  }

  return result;
}

unint64_t sub_275290268()
{
  result = qword_2809BAE50;
  if (!qword_2809BAE50)
  {
    sub_27529053C(255, &qword_2809BAE58, sub_27529015C, &type metadata for AudioSearchCriteriaEntity, MEMORY[0x277CBA3D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE50);
  }

  return result;
}

unint64_t sub_2752902FC()
{
  result = qword_2809BAE60;
  if (!qword_2809BAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAE60);
  }

  return result;
}

uint64_t sub_275290358(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275290398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275290464(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2752904C4(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_2752904DC(char *a1, int64_t a2, char a3)
{
  result = sub_2752909D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2752904FC(char *a1, int64_t a2, char a3)
{
  result = sub_275290AF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27529051C(char *a1, int64_t a2, char a3)
{
  result = sub_275290C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_27529053C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

char *sub_275290654(char *result, int64_t a2, char a3, char *a4)
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
    sub_275290D58(0, &qword_2809BAE98, &type metadata for AudioSearch.Result.Item.Child, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275290774(char *result, int64_t a2, char a3, char *a4)
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
    sub_275290D58(0, &qword_2809BAE90, &type metadata for AudioSearch.Result.Item, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[184 * v8] <= v12)
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2752908A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_275290D58(0, &qword_2809BAE88, &type metadata for AudioSearch.SpotlightResult, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2752909D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_275290D58(0, &qword_2809BAE70, &type metadata for AudioSearchResultItemChildEntity, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275290AF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_275290D58(0, &qword_2809BAE78, &type metadata for AudioSearchResultItemEntity, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275290C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_275290D58(0, &qword_2809BAE80, &type metadata for AudioSearchSpotlightResultEntity, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_275290D58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
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

void *OUTLINED_FUNCTION_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char __dst)
{

  return memcpy(&__dst, v20, 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_27529FD30();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return sub_27528FBB0(v0);
}

uint64_t AudioSearchSpotlightResultEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_275291854(0, &qword_2809BAE68, sub_27528D490, MEMORY[0x277D837D0], MEMORY[0x277CB9E60]);
  *a1 = sub_27529FD70();
  a1[1] = sub_27529FD70();
  result = sub_27529FD70();
  a1[2] = result;
  return result;
}

uint64_t AudioSearchSpotlightResultEntity.entityInstanceIdentifier.getter()
{
  v1 = *v0;
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchSpotlightResultEntity.entityInstanceIdentifier.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchSpotlightResultEntity.entityTypeIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchSpotlightResultEntity.entityTypeIdentifier.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 8);
  v3[4] = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchSpotlightResultEntity.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  sub_27529FD20();
  return v3;
}

uint64_t sub_275291120@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  result = a4(a1, a2, a3);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_275291168(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v10 = a2[1];
  v11 = a2[2];

  a5(v6, v7);
}

uint64_t (*AudioSearchSpotlightResultEntity.bundleIdentifier.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 16);
  v3[4] = sub_27529FD10();
  return sub_27528EC40;
}

uint64_t sub_2752912CC()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BAEA0);
  __swift_project_value_buffer(v0, qword_2809BAEA0);
  return sub_27529FE00();
}

uint64_t static AudioSearchSpotlightResultEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC30 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BAEA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_27529140C()
{
  result = qword_2809BAEB8;
  if (!qword_2809BAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAEB8);
  }

  return result;
}

unint64_t sub_275291464()
{
  result = qword_2809BAEC0;
  if (!qword_2809BAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAEC0);
  }

  return result;
}

unint64_t sub_2752914BC()
{
  result = qword_2809BAEC8;
  if (!qword_2809BAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAEC8);
  }

  return result;
}

unint64_t sub_275291514()
{
  result = qword_2809BAED0;
  if (!qword_2809BAED0)
  {
    sub_275291854(255, &qword_2809BAED8, sub_2752915A4, &type metadata for AudioSearchSpotlightResultEntity, MEMORY[0x277CB9B58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAED0);
  }

  return result;
}

unint64_t sub_2752915A4()
{
  result = qword_2809BAEE0;
  if (!qword_2809BAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAEE0);
  }

  return result;
}

uint64_t sub_2752915F8(uint64_t a1)
{
  v2 = sub_2752915A4();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_275291648()
{
  result = qword_2809BAEE8;
  if (!qword_2809BAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAEE8);
  }

  return result;
}

unint64_t sub_2752916A0()
{
  result = qword_2809BAEF0;
  if (!qword_2809BAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAEF0);
  }

  return result;
}

unint64_t sub_2752916FC()
{
  result = qword_2809BAEF8;
  if (!qword_2809BAEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAEF8);
  }

  return result;
}

uint64_t sub_275291750(uint64_t a1)
{
  v2 = sub_2752915A4();

  return MEMORY[0x28210B2F8](a1, v2);
}

unint64_t sub_2752917C4()
{
  result = qword_2809BAF00;
  if (!qword_2809BAF00)
  {
    sub_275291854(255, &qword_2809BAF08, sub_27528DE14, &type metadata for AudioSearchSpotlightResultEntity, MEMORY[0x277CBA3D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF00);
  }

  return result;
}

void sub_275291854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2752918BC(uint64_t a1)
{
  v2 = sub_27528DE68();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_27529190C()
{
  result = qword_2809BAF10;
  if (!qword_2809BAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF10);
  }

  return result;
}

uint64_t sub_275291978(uint64_t a1)
{
  v2 = sub_2752916FC();

  return MEMORY[0x28210C4B8](a1, v2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_275291AE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275291B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275291B78()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BAF18);
  __swift_project_value_buffer(v0, qword_2809BAF18);
  return sub_27529FE00();
}

uint64_t static AudioSearchCriteriaEntity.ContentSourceEnum.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC38 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BAF18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_275291C90()
{
  sub_27529267C();
  sub_2752926D4();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 72);
  v3 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2752A2410;
  v5 = (v4 + v3);
  v6 = *(v1 + 56);
  *v5 = 0;
  sub_27529FDB0();
  v7 = *(v1 + 56);
  v5[v2] = 1;
  sub_27529FDB0();
  v8 = *(v1 + 56);
  v5[2 * v2] = 2;
  sub_27529FDB0();
  sub_27529FDE0();
  sub_275292370();
  result = sub_27529FEA0();
  qword_2809BAF30 = result;
  return result;
}

uint64_t static AudioSearchCriteriaEntity.ContentSourceEnum.caseDisplayRepresentations.getter()
{
  if (qword_2809BAC40 != -1)
  {
    swift_once();
  }
}

uint64_t AudioSearchCriteriaEntity.ContentSourceEnum.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_27529FEE0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t AudioSearchCriteriaEntity.ContentSourceEnum.rawValue.getter()
{
  v1 = 0x64656B696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6979616C50776F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

unint64_t sub_275291F3C()
{
  result = qword_2809BAF38;
  if (!qword_2809BAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF38);
  }

  return result;
}

uint64_t sub_275291FA8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AudioSearchCriteriaEntity.ContentSourceEnum.init(rawValue:)(a1);
}

uint64_t sub_275291FB4@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.ContentSourceEnum.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275291FE0()
{
  result = qword_2809BAF40;
  if (!qword_2809BAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF40);
  }

  return result;
}

unint64_t sub_275292038()
{
  result = qword_2809BAF48;
  if (!qword_2809BAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF48);
  }

  return result;
}

unint64_t sub_275292090()
{
  result = qword_2809BAF50;
  if (!qword_2809BAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF50);
  }

  return result;
}

unint64_t sub_2752920F4()
{
  result = qword_2809BAF58;
  if (!qword_2809BAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF58);
  }

  return result;
}

unint64_t sub_27529214C()
{
  result = qword_2809BAF60;
  if (!qword_2809BAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF60);
  }

  return result;
}

unint64_t sub_2752921A8()
{
  result = qword_2809BAF68;
  if (!qword_2809BAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF68);
  }

  return result;
}

uint64_t sub_275292270(uint64_t a1)
{
  v2 = sub_27528DA3C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2752922C0()
{
  result = qword_2809BAF70;
  if (!qword_2809BAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF70);
  }

  return result;
}

unint64_t sub_275292318()
{
  result = qword_2809BAF78;
  if (!qword_2809BAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF78);
  }

  return result;
}

unint64_t sub_275292370()
{
  result = qword_2809BAF80;
  if (!qword_2809BAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF80);
  }

  return result;
}

uint64_t sub_2752923C8(uint64_t a1)
{
  v2 = sub_2752921A8();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_275292418()
{
  result = qword_2809BAF88;
  if (!qword_2809BAF88)
  {
    sub_275292470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAF88);
  }

  return result;
}

void sub_275292470()
{
  if (!qword_2809BAF90)
  {
    v0 = sub_27529FEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BAF90);
    }
  }
}

uint64_t _s17ContentSourceEnumOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17ContentSourceEnumOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275292634);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_27529267C()
{
  if (!qword_2809BAF98)
  {
    sub_2752926D4();
    v0 = sub_27529FEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BAF98);
    }
  }
}

void sub_2752926D4()
{
  if (!qword_2809BAFA0)
  {
    sub_27529FDE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809BAFA0);
    }
  }
}

uint64_t AudioSearchResultItemEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_3_0();
  sub_275293FE0(0, v2, v3, v4, MEMORY[0x277CB9E60]);
  *a1 = sub_27529FD70();
  sub_27528D3D4();
  a1[1] = sub_27529FD70();
  a1[2] = sub_27529FD70();
  sub_27528D62C();
  sub_27528D7C8();
  a1[3] = sub_27529FD50();
  a1[4] = sub_27529FD70();
  a1[5] = sub_27529FD70();
  a1[6] = sub_27529FD70();
  sub_2752928DC();
  a1[7] = sub_27529FD80();
  a1[8] = sub_27529FD70();
  a1[9] = sub_27529FD70();
  a1[10] = sub_27529FD70();
  a1[11] = sub_27529FD70();
  sub_2752929EC();
  sub_275292BB4();
  result = sub_27529FD60();
  a1[12] = result;
  return result;
}

uint64_t sub_275292850(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_275292A74(255, a2, a3, MEMORY[0x277D83D88]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2752928DC()
{
  if (!qword_2809BAFC0)
  {
    v0 = MEMORY[0x277D839B0];
    sub_275292A74(255, &qword_2809BAFC8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    sub_275292850(&qword_2809BAFD0, &qword_2809BAFC8, v0, sub_275292998);
    v1 = sub_27529FDA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2809BAFC0);
    }
  }
}

unint64_t sub_275292998()
{
  result = qword_2809BAFD8;
  if (!qword_2809BAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAFD8);
  }

  return result;
}

void sub_2752929EC()
{
  if (!qword_2809BAFE0)
  {
    sub_275292A74(255, &qword_2809BAFE8, &type metadata for AudioSearchResultItemChildEntity, MEMORY[0x277D83940]);
    sub_275292AC4();
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BAFE0);
    }
  }
}

void sub_275292A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_275292AC4()
{
  result = qword_2809BAFF0;
  if (!qword_2809BAFF0)
  {
    sub_275292A74(255, &qword_2809BAFE8, &type metadata for AudioSearchResultItemChildEntity, MEMORY[0x277D83940]);
    sub_275292B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAFF0);
  }

  return result;
}

unint64_t sub_275292B60()
{
  result = qword_2809BAFF8;
  if (!qword_2809BAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BAFF8);
  }

  return result;
}

unint64_t sub_275292BB4()
{
  result = qword_2809BB000;
  if (!qword_2809BB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB000);
  }

  return result;
}

uint64_t AudioSearchResultItemEntity.id.getter()
{
  v1 = *v0;
  sub_27529FD20();
  return v3;
}

uint64_t sub_275292C3C(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v6, a2, sizeof(v6));

  sub_275294580(v6, __dst);
  AudioSearchResultItemEntity.id.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return sub_2752945B8(__dst);
}

uint64_t (*AudioSearchResultItemEntity.id.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *v0;
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.title.getter()
{
  v1 = *(v0 + 8);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchResultItemEntity.title.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 8);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.artistName.getter()
{
  v1 = *(v0 + 16);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchResultItemEntity.artistName.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 16);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t sub_275292F38@<X0>(_BYTE *a1@<X8>)
{
  result = AudioSearchResultItemEntity.kind.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_275292F74(char *a1, const void *a2)
{
  v3 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v5 = v3;
  sub_275294580(__dst, v7);
  AudioSearchResultItemEntity.kind.setter(&v5);
  memcpy(v7, a2, sizeof(v7));
  return sub_2752945B8(v7);
}

uint64_t AudioSearchResultItemEntity.kind.setter(char *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  return sub_27529FD30();
}

uint64_t (*AudioSearchResultItemEntity.kind.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 24);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.bundleID.getter()
{
  v1 = *(v0 + 32);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchResultItemEntity.bundleID.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 32);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.assetInfo.getter()
{
  v1 = *(v0 + 40);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchResultItemEntity.assetInfo.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 40);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.recommendationID.getter()
{
  v1 = *(v0 + 48);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchResultItemEntity.recommendationID.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 48);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.requiresSubscription.getter()
{
  v1 = *(v0 + 56);
  sub_27529FD20();
  return v3;
}

uint64_t sub_275293360(unsigned __int8 *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));
  sub_275294580(v5, __dst);
  AudioSearchResultItemEntity.requiresSubscription.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return sub_2752945B8(__dst);
}

uint64_t (*AudioSearchResultItemEntity.requiresSubscription.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 56);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.provider.getter()
{
  v1 = *(v0 + 64);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchResultItemEntity.provider.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 64);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.providerAppName.getter()
{
  v1 = *(v0 + 72);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchResultItemEntity.providerAppName.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 72);
  *(v1 + 32) = sub_27529FD10();
  return sub_27528EC40;
}

uint64_t AudioSearchResultItemEntity.universalResourceLink.getter()
{
  v1 = *(v0 + 80);
  sub_27529FD20();
  return v3;
}

uint64_t (*AudioSearchResultItemEntity.universalResourceLink.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 80);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.newsTopicID.getter()
{
  v1 = *(v0 + 88);
  sub_27529FD20();
  return v3;
}

uint64_t sub_27529373C(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  memcpy(v10, a2, sizeof(v10));

  sub_275294580(v10, __dst);
  a5(v7, v8);
  memcpy(__dst, a2, sizeof(__dst));
  return sub_2752945B8(__dst);
}

uint64_t (*AudioSearchResultItemEntity.newsTopicID.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 88);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t AudioSearchResultItemEntity.children.getter()
{
  v1 = *(v0 + 96);
  sub_27529FD20();
  return v3;
}

uint64_t sub_2752938A0(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));

  sub_275294580(v5, __dst);
  AudioSearchResultItemEntity.children.setter();
  memcpy(__dst, a2, sizeof(__dst));
  return sub_2752945B8(__dst);
}

uint64_t (*AudioSearchResultItemEntity.children.modify())()
{
  v2 = OUTLINED_FUNCTION_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0(v3);
  v4 = *(v0 + 96);
  *(v1 + 32) = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t sub_2752939BC()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BAFA8);
  __swift_project_value_buffer(v0, qword_2809BAFA8);
  return sub_27529FE00();
}

uint64_t static AudioSearchResultItemEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC48 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BAFA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_275293AF4()
{
  result = qword_2809BB008;
  if (!qword_2809BB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB008);
  }

  return result;
}

unint64_t sub_275293B50()
{
  result = qword_2809BB010;
  if (!qword_2809BB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB010);
  }

  return result;
}

unint64_t sub_275293BA8()
{
  result = qword_2809BB018;
  if (!qword_2809BB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB018);
  }

  return result;
}

unint64_t sub_275293C00()
{
  result = qword_2809BB020;
  if (!qword_2809BB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB020);
  }

  return result;
}

unint64_t sub_275293C58()
{
  result = qword_2809BB028;
  if (!qword_2809BB028)
  {
    sub_275293FE0(255, &qword_2809BB030, sub_275293CE8, &type metadata for AudioSearchResultItemEntity, MEMORY[0x277CB9B58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB028);
  }

  return result;
}

unint64_t sub_275293CE8()
{
  result = qword_2809BB038;
  if (!qword_2809BB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB038);
  }

  return result;
}

uint64_t sub_275293D48(uint64_t a1)
{
  v2 = sub_275293CE8();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_275293D98()
{
  result = qword_2809BB040;
  if (!qword_2809BB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB040);
  }

  return result;
}

unint64_t sub_275293DF0()
{
  result = qword_2809BB048;
  if (!qword_2809BB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB048);
  }

  return result;
}

unint64_t sub_275293E48()
{
  result = qword_2809BB050;
  if (!qword_2809BB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB050);
  }

  return result;
}

unint64_t sub_275293EA0()
{
  result = qword_2809BB058;
  if (!qword_2809BB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB058);
  }

  return result;
}

uint64_t sub_275293F00@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchResultItemEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275293F50()
{
  result = qword_2809BB060;
  if (!qword_2809BB060)
  {
    sub_275293FE0(255, &qword_2809BB068, sub_275293E48, &type metadata for AudioSearchResultItemEntity, MEMORY[0x277CBA3D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB060);
  }

  return result;
}

void sub_275293FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_275294048(uint64_t a1)
{
  v2 = sub_275293AF4();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_275294098()
{
  result = qword_2809BB070;
  if (!qword_2809BB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB070);
  }

  return result;
}

uint64_t sub_275294104(uint64_t a1)
{
  v2 = sub_275293EA0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_275294150()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_27529417C()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2752941D0()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_27529422C()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.bundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_275294280()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.assetInfo.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2752942D4()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.recommendationID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_275294328()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.requiresSubscription.getter();
  *v0 = result;
  return result;
}

uint64_t sub_275294354()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.provider.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2752943A8()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.providerAppName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2752943FC()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.universalResourceLink.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_275294450()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.newsTopicID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2752944A4()
{
  OUTLINED_FUNCTION_2_0();
  result = AudioSearchResultItemEntity.children.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2752944D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275294518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2752945E8@<X0>(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, 0xB8uLL);
  OUTLINED_FUNCTION_3_0();
  sub_275293FE0(0, v3, v4, v5, MEMORY[0x277CB9E60]);
  v6 = sub_27529FD70();
  sub_27528D3D4();
  v7 = sub_27529FD70();
  v8 = sub_27529FD70();
  sub_27528D62C();
  sub_27528D7C8();
  v9 = sub_27529FD50();
  v10 = sub_27529FD70();
  v11 = sub_27529FD70();
  v12 = sub_27529FD70();
  sub_2752928DC();
  v41 = sub_27529FD80();
  v40 = sub_27529FD70();
  v39 = sub_27529FD70();
  v38 = sub_27529FD70();
  v13 = sub_27529FD70();
  sub_2752929EC();
  sub_275292BB4();
  v34 = sub_27529FD60();

  sub_27529FD30();

  sub_27529FD30();
  v43 = __dst[4];
  v44 = __dst[5];

  sub_27529FD30();
  if (LOBYTE(__dst[6]) <= 0xF7u)
  {
    LOBYTE(v43) = __dst[6];
    sub_275297A98(&v43, &v42);
    sub_27529FD30();
  }

  v43 = __dst[7];
  v44 = __dst[8];

  sub_27529FD30();
  v43 = __dst[9];
  v44 = __dst[10];

  v37 = v11;
  sub_27529FD30();
  v43 = __dst[11];
  v44 = __dst[12];

  v36 = v12;
  sub_27529FD30();
  LOBYTE(v43) = __dst[13];
  sub_27529FD30();
  v43 = __dst[14];
  v44 = __dst[15];

  sub_27529FD30();
  v43 = __dst[16];
  v44 = __dst[17];

  sub_27529FD30();
  v43 = __dst[18];
  v44 = __dst[19];

  sub_27529FD30();
  v43 = __dst[20];
  v44 = __dst[21];

  v35 = v13;
  sub_27529FD30();
  v14 = __dst[22];
  v15 = *(__dst[22] + 16);
  if (v15)
  {
    v28 = v10;
    v29 = v9;
    v30 = v8;
    v31 = v7;
    v32 = v6;
    v33 = a2;
    v42 = MEMORY[0x277D84F90];
    sub_2752904DC(0, v15, 0);
    v16 = v42;
    v17 = (v14 + 56);
    do
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;

      v22 = sub_27529FD70();
      v23 = sub_27529FD70();
      v43 = v18;
      v44 = v19;

      sub_27529FD30();
      v43 = v20;
      v44 = v21;

      sub_27529FD30();

      v42 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2752904DC((v24 > 1), v25 + 1, 1);
        v16 = v42;
      }

      v17 += 4;
      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      --v15;
    }

    while (v15);
    sub_275294CA0(__dst);
    v6 = v32;
    a2 = v33;
    v8 = v30;
    v7 = v31;
    v10 = v28;
    v9 = v29;
  }

  else
  {
    sub_275294CA0(__dst);
    v16 = MEMORY[0x277D84F90];
  }

  v43 = v16;
  result = sub_27529FD30();
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
  a2[5] = v37;
  a2[6] = v36;
  a2[7] = v41;
  a2[8] = v40;
  a2[9] = v39;
  a2[10] = v38;
  a2[11] = v35;
  a2[12] = v34;
  return result;
}

__n128 sub_2752949C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v41 = v1[9];
  v38 = v1[10];
  v34 = v1[12];
  v36 = v1[11];
  v11 = *v1;
  sub_27529FD20();
  v49 = v53.n128_u64[1];
  v50 = v53.n128_u64[0];
  sub_27529FD20();
  v48 = v53;
  sub_27529FD20();
  v47 = v53;
  sub_27529FD20();
  if (v53.n128_u8[0] == 18)
  {
    v12 = -8;
  }

  else
  {
    sub_275297AF4(&v52);
    v12 = v52;
  }

  sub_27529FD20();
  v13 = v53.n128_u64[1];
  v46 = v53.n128_u64[0];
  sub_27529FD20();
  v14 = v53.n128_u64[1];
  v45 = v53.n128_u64[0];
  sub_27529FD20();
  v43 = v53.n128_u64[1];
  v44 = v53.n128_u64[0];
  sub_27529FD20();
  v15 = v53.n128_u8[0];
  sub_27529FD20();
  v16 = v53.n128_u64[1];
  v42 = v53.n128_u64[0];
  sub_27529FD20();
  v40 = v53;
  sub_27529FD20();
  v39 = v53;
  sub_27529FD20();
  v37 = v53;
  sub_27529FD20();
  v17 = v53.n128_u64[0];
  v18 = *(v53.n128_u64[0] + 16);
  if (v18)
  {
    v32 = v15;
    v33 = v14;
    v35 = v12;
    v51 = MEMORY[0x277D84F90];
    sub_27528FC14(0, v18, 0);
    v19 = v51;
    v20 = (v17 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      sub_27529FD20();
      v23 = v53;
      sub_27529FD20();
      v24 = v53;
      v26 = *(v51 + 16);
      v25 = *(v51 + 24);
      if (v26 >= v25 >> 1)
      {
        v31 = v53;
        sub_27528FC14((v25 > 1), v26 + 1, 1);
        v24 = v31;
      }

      *(v51 + 16) = v26 + 1;
      v27 = (v51 + 32 * v26);
      v27[2] = v23;
      v27[3] = v24;
      v20 += 2;
      --v18;
    }

    while (v18);

    v12 = v35;
    v14 = v33;
    v15 = v32;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *a1 = v50;
  *(a1 + 8) = v49;
  *&v28 = v46;
  *(a1 + 16) = v48;
  *(a1 + 32) = v47;
  *(a1 + 48) = v12;
  *(&v28 + 1) = v13;
  *&v29 = v45;
  *(&v29 + 1) = v14;
  *(a1 + 72) = v29;
  *(a1 + 56) = v28;
  *(a1 + 88) = v44;
  *(a1 + 96) = v43;
  *&v28 = v42;
  *(&v28 + 1) = v16;
  *(a1 + 104) = v15;
  *(a1 + 112) = v28;
  *(a1 + 128) = v40;
  result = v39;
  *(a1 + 144) = v39;
  *(a1 + 160) = v37;
  *(a1 + 176) = v19;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return sub_27529FD30();
}

uint64_t AudioSearchResultItemChildEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_275295674(0, &qword_2809BAE68, sub_27528D490, MEMORY[0x277D837D0], MEMORY[0x277CB9E60]);
  *a1 = sub_27529FD70();
  sub_27528D3D4();
  result = sub_27529FD70();
  a1[1] = result;
  return result;
}

uint64_t AudioSearchResultItemChildEntity.id.getter()
{
  v1 = *v0;
  sub_27529FD20();
  return v3;
}

uint64_t sub_275294DEC@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = AudioSearchResultItemChildEntity.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_275294E28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v6 = a2[1];

  AudioSearchResultItemChildEntity.id.setter();
}

uint64_t (*AudioSearchResultItemChildEntity.id.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_27529FD10();
  return sub_27528EC40;
}

uint64_t AudioSearchResultItemChildEntity.assetInfo.getter()
{
  v1 = *(v0 + 8);
  sub_27529FD20();
  return v3;
}

uint64_t sub_275294F98@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = AudioSearchResultItemChildEntity.assetInfo.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_275294FD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v6 = a2[1];

  AudioSearchResultItemChildEntity.assetInfo.setter();
}

uint64_t (*AudioSearchResultItemChildEntity.assetInfo.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 8);
  v3[4] = sub_27529FD10();
  return sub_275290E0C;
}

uint64_t sub_275295110()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BB078);
  __swift_project_value_buffer(v0, qword_2809BB078);
  return sub_27529FE00();
}

uint64_t static AudioSearchResultItemChildEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC50 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BB078);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_275295250()
{
  result = qword_2809BB090;
  if (!qword_2809BB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB090);
  }

  return result;
}

unint64_t sub_2752952A8()
{
  result = qword_2809BB098;
  if (!qword_2809BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB098);
  }

  return result;
}

unint64_t sub_275295300()
{
  result = qword_2809BB0A0;
  if (!qword_2809BB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB0A0);
  }

  return result;
}

unint64_t sub_275295358()
{
  result = qword_2809BB0A8;
  if (!qword_2809BB0A8)
  {
    sub_275295674(255, &qword_2809BB0B0, sub_2752953E8, &type metadata for AudioSearchResultItemChildEntity, MEMORY[0x277CB9B58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB0A8);
  }

  return result;
}

unint64_t sub_2752953E8()
{
  result = qword_2809BB0B8;
  if (!qword_2809BB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB0B8);
  }

  return result;
}

uint64_t sub_27529543C(uint64_t a1)
{
  v2 = sub_2752953E8();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_27529548C()
{
  result = qword_2809BB0C0;
  if (!qword_2809BB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB0C0);
  }

  return result;
}

unint64_t sub_2752954E4()
{
  result = qword_2809BB0C8;
  if (!qword_2809BB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB0C8);
  }

  return result;
}

unint64_t sub_275295540()
{
  result = qword_2809BB0D0;
  if (!qword_2809BB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB0D0);
  }

  return result;
}

uint64_t sub_275295594@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchResultItemChildEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2752955E4()
{
  result = qword_2809BB0D8;
  if (!qword_2809BB0D8)
  {
    sub_275295674(255, &qword_2809BB0E0, sub_275292B60, &type metadata for AudioSearchResultItemChildEntity, MEMORY[0x277CBA3D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB0D8);
  }

  return result;
}

void sub_275295674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2752956DC(uint64_t a1)
{
  v2 = sub_275292BB4();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_27529572C()
{
  result = qword_2809BB0E8;
  if (!qword_2809BB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB0E8);
  }

  return result;
}

uint64_t sub_275295798(uint64_t a1)
{
  v2 = sub_275295540();

  return MEMORY[0x28210C4B8](a1, v2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_275295800(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275295840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275295894()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BB0F0);
  __swift_project_value_buffer(v0, qword_2809BB0F0);
  return sub_27529FE00();
}

uint64_t static AudioSearch.ErrorEnum.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC58 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BB0F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2752959AC()
{
  sub_275296508();
  sub_275296560();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 72);
  v3 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2752A2C70;
  v5 = (v4 + v3);
  v6 = *(v1 + 56);
  *v5 = 0;
  sub_27529FDB0();
  v7 = *(v1 + 56);
  v5[v2] = 1;
  sub_27529FDB0();
  v8 = *(v1 + 56);
  v5[2 * v2] = 2;
  sub_27529FDB0();
  v9 = *(v1 + 56);
  v5[3 * v2] = 3;
  sub_27529FDB0();
  v10 = *(v1 + 56);
  v5[4 * v2] = 4;
  sub_27529FDB0();
  sub_27529FDE0();
  sub_27529621C();
  result = sub_27529FEA0();
  qword_2809BB108 = result;
  return result;
}

uint64_t static AudioSearch.ErrorEnum.caseDisplayRepresentations.getter()
{
  if (qword_2809BAC60 != -1)
  {
    swift_once();
  }
}

uint64_t AudioSearch.ErrorEnum.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_27529FEE0();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t AudioSearch.ErrorEnum.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x7165526E69676F6CLL;
      break;
    case 2:
      result = 0x5464696C61766E69;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275295D4C()
{
  result = qword_2809BB110;
  if (!qword_2809BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB110);
  }

  return result;
}

uint64_t sub_275295DB8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AudioSearch.ErrorEnum.init(rawValue:)(a1);
}

unint64_t sub_275295DC4@<X0>(unint64_t *a1@<X8>)
{
  result = AudioSearch.ErrorEnum.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275295DF0()
{
  result = qword_2809BB118;
  if (!qword_2809BB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB118);
  }

  return result;
}

unint64_t sub_275295E48()
{
  result = qword_2809BB120;
  if (!qword_2809BB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB120);
  }

  return result;
}

unint64_t sub_275295EA0()
{
  result = qword_2809BB128;
  if (!qword_2809BB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB128);
  }

  return result;
}

unint64_t sub_275295EF8()
{
  result = qword_2809BB130;
  if (!qword_2809BB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB130);
  }

  return result;
}

unint64_t sub_275295F50()
{
  result = qword_2809BB138;
  if (!qword_2809BB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB138);
  }

  return result;
}

unint64_t sub_275295FA8()
{
  result = qword_2809BB140;
  if (!qword_2809BB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB140);
  }

  return result;
}

unint64_t sub_275296000()
{
  result = qword_2809BB148;
  if (!qword_2809BB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB148);
  }

  return result;
}

unint64_t sub_2752960C8()
{
  result = qword_2809BB150;
  if (!qword_2809BB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB150);
  }

  return result;
}

uint64_t sub_27529611C(uint64_t a1)
{
  v2 = sub_2752960C8();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_27529616C()
{
  result = qword_2809BB158;
  if (!qword_2809BB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB158);
  }

  return result;
}

unint64_t sub_2752961C4()
{
  result = qword_2809BB160;
  if (!qword_2809BB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB160);
  }

  return result;
}

unint64_t sub_27529621C()
{
  result = qword_2809BB168;
  if (!qword_2809BB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB168);
  }

  return result;
}

uint64_t sub_275296274(uint64_t a1)
{
  v2 = sub_275296000();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2752962C4()
{
  result = qword_2809BB170;
  if (!qword_2809BB170)
  {
    sub_27529631C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB170);
  }

  return result;
}

void sub_27529631C()
{
  if (!qword_2809BB178)
  {
    v0 = sub_27529FEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB178);
    }
  }
}

uint64_t _s9ErrorEnumOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s9ErrorEnumOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752964D0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_275296508()
{
  if (!qword_2809BB180)
  {
    sub_275296560();
    v0 = sub_27529FEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB180);
    }
  }
}

void sub_275296560()
{
  if (!qword_2809BB188)
  {
    sub_27529FDE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809BB188);
    }
  }
}

uint64_t sub_2752965D0@<X0>(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, 0x179uLL);
  sub_275296C54();
  sub_275293AF4();
  v4 = sub_27529FD60();
  v5 = sub_27529FD60();
  sub_275296D10();
  v6 = sub_27529FD60();
  sub_275296E34();
  sub_2752960C8();
  v7 = sub_27529FD50();
  memcpy(__srca, __src, 0xB8uLL);
  if (sub_2752978C8(__srca) != 1)
  {
    memcpy(v25, __srca, sizeof(v25));
    memcpy(v27, __dst, sizeof(v27));
    sub_2752978E0(v27, v24);
    sub_2752945E8(v25, v24);
    sub_27529FD30();
  }

  memcpy(v27, &__dst[23], sizeof(v27));
  if (sub_2752978C8(v27) != 1)
  {
    memcpy(v24, v27, sizeof(v24));
    memcpy(v25, &__dst[23], sizeof(v25));
    sub_2752978E0(v25, v23);
    sub_2752945E8(v24, v23);
    sub_27529FD30();
  }

  v8 = __dst[46];
  v9 = *(__dst[46] + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = v7;
    v26 = MEMORY[0x277D84F90];
    sub_2752904FC(0, v9, 0);
    v10 = v26;
    v11 = (v8 + 32);
    do
    {
      memcpy(v25, v11, sizeof(v25));
      memcpy(v24, v11, sizeof(v24));
      sub_2752978E0(v25, v23);
      sub_2752945E8(v24, v23);
      v26 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2752904FC((v19 > 1), v20 + 1, 1);
        v10 = v26;
      }

      *(v10 + 16) = v20 + 1;
      OUTLINED_FUNCTION_1_0((v10 + 104 * v20 + 32), v12, v13, v14, v15, v16, v17, v18, v22, v23[0]);
      v11 += 184;
      --v9;
    }

    while (v9);
    v7 = v22;
  }

  v25[0] = v10;
  sub_27529FD30();
  result = sub_27529793C(__dst);
  if (LOBYTE(__dst[47]) != 5)
  {
    LOBYTE(v25[0]) = __dst[47];
    result = sub_27529FD30();
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

void *sub_275296868@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  sub_27529FD20();
  if (v56)
  {
    OUTLINED_FUNCTION_2_1(v53);
    OUTLINED_FUNCTION_2_1(v52);
    OUTLINED_FUNCTION_2_1(v48);
    OUTLINED_FUNCTION_2_1(v51);
    sub_275294580(v51, v57);
    sub_275297998(v48);
    sub_2752949C8(__src);
    sub_275297998(v53);
    memcpy(__dst, __src, sizeof(__dst));
    nullsub_1(__dst);
    memcpy(v57, __dst, 0xB8uLL);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(__dst);
    sub_275297998(__dst);
    sub_275297990(v57);
  }

  sub_27529FD20();
  if (*v48)
  {
    OUTLINED_FUNCTION_1_0(v50, v7, v8, v9, v10, v11, v12, v13, v44, v48[0]);
    OUTLINED_FUNCTION_1_0(v49, v14, v15, v16, v17, v18, v19, v20, v45, v48[0]);
    OUTLINED_FUNCTION_1_0(v52, v21, v22, v23, v24, v25, v26, v27, v46, v48[0]);
    OUTLINED_FUNCTION_1_0(v53, v28, v29, v30, v31, v32, v33, v34, v47, v48[0]);
    sub_275294580(v53, __dst);
    sub_275297998(v52);
    sub_2752949C8(v51);
    sub_275297998(v50);
    memcpy(__src, v51, sizeof(__src));
    nullsub_1(__src);
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    OUTLINED_FUNCTION_1_0(__src, v7, v8, v9, v10, v11, v12, v13, v44, 0);
    sub_275297998(__src);
    sub_275297990(__dst);
  }

  sub_27529FD20();
  v35 = __src[0];
  v36 = *(__src[0] + 16);
  if (v36)
  {
    *v48 = MEMORY[0x277D84F90];
    sub_27528FC34(0, v36, 0);
    v37 = *v48;
    v38 = v36 - 1;
    for (i = 32; ; i += 104)
    {
      memcpy(v51, (v35 + i), 0x68uLL);
      sub_2752949C8(__src);
      *v48 = v37;
      v41 = *(v37 + 16);
      v40 = *(v37 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_27528FC34((v40 > 1), v41 + 1, 1);
        v37 = *v48;
      }

      *(v37 + 16) = v41 + 1;
      memcpy((v37 + 184 * v41 + 32), __src, 0xB8uLL);
      if (!v38)
      {
        break;
      }

      --v38;
    }
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  sub_27529FD20();
  v42 = v53[0];
  sub_275297990(v48);
  memcpy((a1 + 184), v48, 0xB8uLL);
  memcpy(v51, v48, sizeof(v51));
  sub_275297998(v51);
  memcpy(a1, v57, 0xB8uLL);
  memcpy(__src, (a1 + 184), sizeof(__src));
  sub_275297998(__src);
  result = memcpy((a1 + 184), __dst, 0xB8uLL);
  *(a1 + 368) = v37;
  *(a1 + 376) = v42;
  return result;
}

uint64_t AudioSearchResultEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_275296C54();
  sub_275293AF4();
  *a1 = sub_27529FD60();
  a1[1] = sub_27529FD60();
  sub_275296D10();
  a1[2] = sub_27529FD60();
  sub_275296E34();
  sub_2752960C8();
  result = sub_27529FD50();
  a1[3] = result;
  return result;
}

void sub_275296C54()
{
  if (!qword_2809BB1A8)
  {
    sub_2752979F8(255, &qword_2809BB1B0, &type metadata for AudioSearchResultItemEntity, MEMORY[0x277D83D88]);
    sub_275296EF0(&qword_2809BB1B8, &qword_2809BB1B0, &type metadata for AudioSearchResultItemEntity, sub_275293E48);
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB1A8);
    }
  }
}

void sub_275296D10()
{
  if (!qword_2809BB1C0)
  {
    sub_2752979F8(255, &qword_2809BB1C8, &type metadata for AudioSearchResultItemEntity, MEMORY[0x277D83940]);
    sub_275296D98();
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB1C0);
    }
  }
}

unint64_t sub_275296D98()
{
  result = qword_2809BB1D0;
  if (!qword_2809BB1D0)
  {
    sub_2752979F8(255, &qword_2809BB1C8, &type metadata for AudioSearchResultItemEntity, MEMORY[0x277D83940]);
    sub_275293E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB1D0);
  }

  return result;
}

void sub_275296E34()
{
  if (!qword_2809BB1D8)
  {
    sub_2752979F8(255, &qword_2809BB1E0, &type metadata for AudioSearch.ErrorEnum, MEMORY[0x277D83D88]);
    sub_275296EF0(&qword_2809BB1E8, &qword_2809BB1E0, &type metadata for AudioSearch.ErrorEnum, sub_275295FA8);
    v0 = sub_27529FDA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB1D8);
    }
  }
}

uint64_t sub_275296EF0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_0();
    sub_2752979F8(255, v7, v8, v9);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AudioSearchResultEntity.alternativeSearchResults.getter()
{
  v1 = *(v0 + 16);
  sub_27529FD20();
  return v3;
}

uint64_t sub_275296FA0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = AudioSearchResultEntity.alternativeSearchResults.getter();
  *a2 = result;
  return result;
}

uint64_t sub_275296FDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  AudioSearchResultEntity.alternativeSearchResults.setter();
}

void (*AudioSearchResultEntity.alternativeSearchResults.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 16);
  v3[4] = sub_27529FD10();
  return sub_27528EDD8;
}

uint64_t sub_27529713C()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BB190);
  __swift_project_value_buffer(v0, qword_2809BB190);
  return sub_27529FE00();
}

uint64_t static AudioSearchResultEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC68 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BB190);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_27529727C()
{
  result = qword_2809BB1F0;
  if (!qword_2809BB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB1F0);
  }

  return result;
}

unint64_t sub_2752972D4()
{
  result = qword_2809BB1F8;
  if (!qword_2809BB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB1F8);
  }

  return result;
}

unint64_t sub_27529732C()
{
  result = qword_2809BB200;
  if (!qword_2809BB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB200);
  }

  return result;
}

unint64_t sub_275297384()
{
  result = qword_2809BB208;
  if (!qword_2809BB208)
  {
    sub_2752976B4(255, &qword_2809BB210, sub_27529740C, MEMORY[0x277CB9B58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB208);
  }

  return result;
}

unint64_t sub_27529740C()
{
  result = qword_2809BB218;
  if (!qword_2809BB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB218);
  }

  return result;
}

uint64_t sub_275297460(uint64_t a1)
{
  v2 = sub_27529740C();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_2752974B0()
{
  result = qword_2809BB220;
  if (!qword_2809BB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB220);
  }

  return result;
}

unint64_t sub_275297508()
{
  result = qword_2809BB228;
  if (!qword_2809BB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB228);
  }

  return result;
}

unint64_t sub_275297564()
{
  result = qword_2809BB230;
  if (!qword_2809BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB230);
  }

  return result;
}

uint64_t sub_2752975B8(uint64_t a1)
{
  v2 = sub_27529740C();

  return MEMORY[0x28210B2F8](a1, v2);
}

unint64_t sub_27529762C()
{
  result = qword_2809BB238;
  if (!qword_2809BB238)
  {
    sub_2752976B4(255, &qword_2809BB240, sub_27528DCB0, MEMORY[0x277CBA3D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB238);
  }

  return result;
}

void sub_2752976B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for AudioSearchResultEntity, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_27529771C(uint64_t a1)
{
  v2 = sub_27528DD04();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_27529776C()
{
  result = qword_2809BB248;
  if (!qword_2809BB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB248);
  }

  return result;
}

uint64_t sub_2752977D8(uint64_t a1)
{
  v2 = sub_275297564();

  return MEMORY[0x28210C4B8](a1, v2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_275297838(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275297878(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2752978C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_275297998(uint64_t a1)
{
  OUTLINED_FUNCTION_0_0();
  sub_2752979F8(0, v2, v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2752979F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *OUTLINED_FUNCTION_1_0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(a1, &__src, 0x68uLL);
}

void *OUTLINED_FUNCTION_2_1(void *a1)
{

  return memcpy(a1, &STACK[0x488], 0x68uLL);
}

unsigned __int8 *sub_275297A98@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  LODWORD(v2) = *result;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      LOBYTE(v2) = (v2 & 0x3F) + 11;
    }

    else
    {
      v2 = 0x11100F0908070403uLL >> (8 * (v2 ^ 0x80u));
    }
  }

  else
  {
    v2 = 0xA0605020100uLL >> (8 * v2);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_275297B0C()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BB258);
  __swift_project_value_buffer(v0, qword_2809BB258);
  return sub_27529FE00();
}

uint64_t static AudioSearchCriteriaEntity.MediaKindEnum.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC70 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BB258);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_275297C24()
{
  sub_275298A84();
  sub_275298ADC();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 72);
  v3 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2752A31E0;
  v5 = v4 + v3;
  v6 = *(v1 + 56);
  *(v4 + v3) = 0;
  sub_27529FDB0();
  v7 = *(v1 + 56);
  *(v5 + v2) = 1;
  sub_27529FDB0();
  v8 = *(v1 + 56);
  *(v5 + 2 * v2) = 2;
  sub_27529FDB0();
  v9 = *(v1 + 56);
  *(v5 + 3 * v2) = 3;
  sub_27529FDB0();
  v10 = *(v1 + 56);
  *(v5 + 4 * v2) = 4;
  sub_27529FDB0();
  v11 = *(v1 + 56);
  *(v5 + 5 * v2) = 6;
  sub_27529FDB0();
  v12 = *(v1 + 56);
  *(v5 + 6 * v2) = 5;
  sub_27529FDB0();
  v13 = *(v1 + 56);
  *(v5 + 7 * v2) = 7;
  sub_27529FDB0();
  v14 = *(v1 + 56);
  *(v5 + 8 * v2) = 8;
  sub_27529FDB0();
  v15 = *(v1 + 56);
  *(v5 + 9 * v2) = 9;
  sub_27529FDB0();
  v16 = *(v1 + 56);
  *(v5 + 10 * v2) = 10;
  sub_27529FDB0();
  v17 = *(v1 + 56);
  *(v5 + 11 * v2) = 11;
  sub_27529FDB0();
  v18 = *(v1 + 56);
  *(v5 + 12 * v2) = 12;
  sub_27529FDB0();
  v19 = *(v1 + 56);
  *(v5 + 13 * v2) = 13;
  sub_27529FDB0();
  v20 = *(v1 + 56);
  *(v5 + 14 * v2) = 14;
  sub_27529FDB0();
  v21 = *(v1 + 56);
  *(v5 + 15 * v2) = 15;
  sub_27529FDB0();
  v22 = *(v1 + 56);
  *(v5 + 16 * v2) = 16;
  sub_27529FDB0();
  v23 = *(v1 + 56);
  *(v5 + 17 * v2) = 17;
  sub_27529FDB0();
  sub_27529FDE0();
  sub_275298798();
  result = sub_27529FEA0();
  qword_2809BB270 = result;
  return result;
}

uint64_t static AudioSearchCriteriaEntity.MediaKindEnum.caseDisplayRepresentations.getter()
{
  if (qword_2809BAC78 != -1)
  {
    swift_once();
  }
}

uint64_t AudioSearchCriteriaEntity.MediaKindEnum.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_27529FF10();

  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t AudioSearchCriteriaEntity.MediaKindEnum.rawValue.getter()
{
  result = 0x636973756DLL;
  switch(*v0)
  {
    case 1:
      result = 1735290739;
      break;
    case 2:
      result = 0x6D75626C61;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65726E6567;
      break;
    case 5:
      result = 0x616C50636973756DLL;
      break;
    case 6:
      result = 0x617453636973756DLL;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x6E6F6974617473;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x646956636973756DLL;
      break;
    case 0xB:
    case 0xE:
      result = 0x5374736163646F70;
      break;
    case 0xC:
      result = 0x4574736163646F70;
      break;
    case 0xD:
      result = 0x5074736163646F70;
      break;
    case 0xF:
      result = 0x6F6F426F69647561;
      break;
    case 0x10:
      result = 1937204590;
      break;
    case 0x11:
      result = 0x646E756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275298360(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_275298E24();
}

unint64_t sub_275298370()
{
  result = qword_2809BB278;
  if (!qword_2809BB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB278);
  }

  return result;
}

uint64_t sub_2752983DC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AudioSearchCriteriaEntity.MediaKindEnum.init(rawValue:)(a1);
}

unint64_t sub_2752983E8@<X0>(unint64_t *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.MediaKindEnum.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275298414()
{
  result = qword_2809BB280;
  if (!qword_2809BB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB280);
  }

  return result;
}

unint64_t sub_27529846C()
{
  result = qword_2809BB288;
  if (!qword_2809BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB288);
  }

  return result;
}

unint64_t sub_2752984C4()
{
  result = qword_2809BB290;
  if (!qword_2809BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB290);
  }

  return result;
}

unint64_t sub_27529851C()
{
  result = qword_2809BB298;
  if (!qword_2809BB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB298);
  }

  return result;
}

unint64_t sub_275298574()
{
  result = qword_2809BB2A0;
  if (!qword_2809BB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB2A0);
  }

  return result;
}

unint64_t sub_2752985D0()
{
  result = qword_2809BB2A8;
  if (!qword_2809BB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB2A8);
  }

  return result;
}

uint64_t sub_275298698(uint64_t a1)
{
  v2 = sub_27528D7C8();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2752986E8()
{
  result = qword_2809BB2B0;
  if (!qword_2809BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB2B0);
  }

  return result;
}

unint64_t sub_275298740()
{
  result = qword_2809BB2B8;
  if (!qword_2809BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB2B8);
  }

  return result;
}

unint64_t sub_275298798()
{
  result = qword_2809BB2C0;
  if (!qword_2809BB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB2C0);
  }

  return result;
}

uint64_t sub_2752987F0(uint64_t a1)
{
  v2 = sub_2752985D0();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_275298840()
{
  result = qword_2809BB2C8;
  if (!qword_2809BB2C8)
  {
    sub_275298898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB2C8);
  }

  return result;
}

void sub_275298898()
{
  if (!qword_2809BB2D0)
  {
    v0 = sub_27529FEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB2D0);
    }
  }
}

uint64_t _s13MediaKindEnumOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13MediaKindEnumOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275298A4CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

void sub_275298A84()
{
  if (!qword_2809BB2D8)
  {
    sub_275298ADC();
    v0 = sub_27529FEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB2D8);
    }
  }
}

void sub_275298ADC()
{
  if (!qword_2809BB2E0)
  {
    sub_27529FDE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809BB2E0);
    }
  }
}

uint64_t sub_275298B4C(char a1, char a2)
{
  v2 = 0x7972617262696CLL;
  if (a1)
  {
    OUTLINED_FUNCTION_3_1();
    if (v3)
    {
      v5 = 0x64656B696CLL;
    }

    else
    {
      v5 = 0x6979616C50776F6ELL;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEA0000000000676ELL;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x7972617262696CLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_3_1();
    if (v7)
    {
      v2 = 0x64656B696CLL;
    }

    else
    {
      v2 = 0x6979616C50776F6ELL;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEA0000000000676ELL;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_1_1();
  }

  return v11 & 1;
}

uint64_t sub_275298C34(unsigned __int8 a1, char a2)
{
  v2 = 0x74736577656ELL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x74736577656ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x747365646C6FLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953719650;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x7473726F77;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x72616C75706F70;
      break;
    case 5:
      v5 = 0x616C75706F706E75;
      v3 = 0xE900000000000072;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x676E69646E657274;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x747365646C6FLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953719650;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x7473726F77;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x72616C75706F70;
      break;
    case 5:
      v2 = 0x616C75706F706E75;
      v6 = 0xE900000000000072;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v2 = 0x676E69646E657274;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27529FF00();
  }

  return v8 & 1;
}

uint64_t sub_275298E24()
{
  v0 = AudioSearchCriteriaEntity.MediaKindEnum.rawValue.getter();
  v2 = v1;
  if (v0 == AudioSearchCriteriaEntity.MediaKindEnum.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_1_1();
  }

  return v5 & 1;
}

uint64_t sub_275298EAC(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "explicitContentSettings";
  v6 = 0x6E776F6E6B6E75;
  v7 = "subscriptionRequired";
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_2_2();
      break;
    case 2:
      v6 = 0x5464696C61766E69;
      v3 = 0xEC0000006E656B6FLL;
      break;
    case 3:
      v6 = 0xD000000000000014;
      v3 = 0x80000002752A0120;
      break;
    case 4:
      v3 = 0x80000002752A0140;
      v6 = 0xD000000000000017;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7165526E69676F6CLL;
      v8 = 0xED00006465726975;
      break;
    case 2:
      v2 = 0x5464696C61766E69;
      v8 = 0xEC0000006E656B6FLL;
      break;
    case 3:
      v2 = 0xD000000000000014;
      v8 = (v7 - 32) | 0x8000000000000000;
      break;
    case 4:
      v8 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000017;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_1();
  }

  return v10 & 1;
}

uint64_t sub_275299098(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_27529FF60();
  a2(v5, a1);
  return sub_27529FF90();
}

uint64_t sub_2752990E8(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
  }

  sub_27529FEB0();
}

uint64_t sub_275299160()
{
  sub_27529FEB0();
}

uint64_t sub_275299268()
{
  AudioSearchCriteriaEntity.MediaKindEnum.rawValue.getter();
  sub_27529FEB0();
}

uint64_t sub_2752992C8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_2_2();
      break;
    default:
      break;
  }

  sub_27529FEB0();
}

uint64_t sub_2752993D8()
{
  sub_27529FF60();
  AudioSearchCriteriaEntity.MediaKindEnum.rawValue.getter();
  sub_27529FEB0();

  return sub_27529FF90();
}

uint64_t sub_27529943C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_27529FF60();
  a3(v6, a2);
  return sub_27529FF90();
}

uint64_t sub_275299488(uint64_t a1, char a2)
{
  sub_27529FF60();
  if (a2)
  {
    OUTLINED_FUNCTION_3_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
  }

  sub_27529FEB0();

  return sub_27529FF90();
}

uint64_t sub_275299514()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BB2E8);
  __swift_project_value_buffer(v0, qword_2809BB2E8);
  return sub_27529FE00();
}

uint64_t static AudioSearchCriteriaEntity.SortOrderEnum.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2809BAC80 != -1)
  {
    swift_once();
  }

  v2 = sub_27529FE10();
  v3 = __swift_project_value_buffer(v2, qword_2809BB2E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_27529962C()
{
  sub_27529A154();
  sub_27529A1AC();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 72);
  v3 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2752A34F0;
  v5 = (v4 + v3);
  v6 = *(v1 + 56);
  *v5 = 0;
  sub_27529FDB0();
  v7 = *(v1 + 56);
  v5[v2] = 1;
  sub_27529FDB0();
  v8 = *(v1 + 56);
  v5[2 * v2] = 2;
  sub_27529FDB0();
  v9 = *(v1 + 56);
  v5[3 * v2] = 3;
  sub_27529FDB0();
  v10 = *(v1 + 56);
  v5[4 * v2] = 4;
  sub_27529FDB0();
  v11 = *(v1 + 56);
  v5[5 * v2] = 5;
  sub_27529FDB0();
  v12 = *(v1 + 56);
  v5[6 * v2] = 6;
  sub_27529FDB0();
  sub_27529FDE0();
  sub_275299E68();
  result = sub_27529FEA0();
  qword_2809BB300 = result;
  return result;
}

uint64_t static AudioSearchCriteriaEntity.SortOrderEnum.caseDisplayRepresentations.getter()
{
  if (qword_2809BAC88 != -1)
  {
    swift_once();
  }
}

uint64_t AudioSearchCriteriaEntity.SortOrderEnum.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_27529FEE0();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t AudioSearchCriteriaEntity.SortOrderEnum.rawValue.getter()
{
  result = 0x74736577656ELL;
  switch(*v0)
  {
    case 1:
      result = 0x747365646C6FLL;
      break;
    case 2:
      result = 1953719650;
      break;
    case 3:
      result = 0x7473726F77;
      break;
    case 4:
      result = 0x72616C75706F70;
      break;
    case 5:
      result = 0x616C75706F706E75;
      break;
    case 6:
      result = 0x676E69646E657274;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2752999F0()
{
  result = qword_2809BB308;
  if (!qword_2809BB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB308);
  }

  return result;
}

uint64_t sub_275299AAC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AudioSearchCriteriaEntity.SortOrderEnum.init(rawValue:)(a1);
}

uint64_t sub_275299AB8@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearchCriteriaEntity.SortOrderEnum.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275299AE4()
{
  result = qword_2809BB310;
  if (!qword_2809BB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB310);
  }

  return result;
}

unint64_t sub_275299B3C()
{
  result = qword_2809BB318;
  if (!qword_2809BB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB318);
  }

  return result;
}

unint64_t sub_275299B94()
{
  result = qword_2809BB320;
  if (!qword_2809BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB320);
  }

  return result;
}

unint64_t sub_275299BEC()
{
  result = qword_2809BB328;
  if (!qword_2809BB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB328);
  }

  return result;
}

unint64_t sub_275299C44()
{
  result = qword_2809BB330;
  if (!qword_2809BB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB330);
  }

  return result;
}

unint64_t sub_275299CA0()
{
  result = qword_2809BB338;
  if (!qword_2809BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB338);
  }

  return result;
}

uint64_t sub_275299D68(uint64_t a1)
{
  v2 = sub_27528DBA0();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_275299DB8()
{
  result = qword_2809BB340;
  if (!qword_2809BB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB340);
  }

  return result;
}

unint64_t sub_275299E10()
{
  result = qword_2809BB348;
  if (!qword_2809BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB348);
  }

  return result;
}

unint64_t sub_275299E68()
{
  result = qword_2809BB350;
  if (!qword_2809BB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB350);
  }

  return result;
}

uint64_t sub_275299EC0(uint64_t a1)
{
  v2 = sub_275299CA0();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_275299F10()
{
  result = qword_2809BB358;
  if (!qword_2809BB358)
  {
    sub_275299F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB358);
  }

  return result;
}

void sub_275299F68()
{
  if (!qword_2809BB360)
  {
    v0 = sub_27529FEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB360);
    }
  }
}

uint64_t _s13SortOrderEnumOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13SortOrderEnumOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27529A11CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void sub_27529A154()
{
  if (!qword_2809BB368)
  {
    sub_27529A1AC();
    v0 = sub_27529FEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB368);
    }
  }
}

void sub_27529A1AC()
{
  if (!qword_2809BB370)
  {
    sub_27529FDE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809BB370);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return sub_27529FF00();
}

uint64_t static AudioSearchCriteria.MediaKind.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 <= 0x3F)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 >> 6 == 1)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return ((v3 ^ v2) & 0x3F) == 0;
    }

    return 0;
  }

  switch(*a1)
  {
    case 0x81:
      if (v3 != 129)
      {
        return 0;
      }

      break;
    case 0x82:
      if (v3 != 130)
      {
        return 0;
      }

      break;
    case 0x83:
      if (v3 != 131)
      {
        return 0;
      }

      break;
    case 0x84:
      if (v3 != 132)
      {
        return 0;
      }

      break;
    case 0x85:
      if (v3 != 133)
      {
        return 0;
      }

      break;
    case 0x86:
      if (v3 != 134)
      {
        return 0;
      }

      break;
    case 0x87:
      if (v3 != 135)
      {
        return 0;
      }

      break;
    default:
      if (v3 != 128)
      {
        return 0;
      }

      break;
  }

  return 1;
}

uint64_t AudioSearchCriteria.MediaKind.hash(into:)()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      LOBYTE(v1) = v1 - 126;
      return MEMORY[0x277C727B0](v1);
    }

    LOBYTE(v1) = v1 & 0x3F;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277C727B0](v2);
  return MEMORY[0x277C727B0](v1);
}

uint64_t AudioSearchCriteria.MediaKind.hashValue.getter()
{
  v2 = *v0;
  sub_27529FF60();
  AudioSearchCriteria.MediaKind.hash(into:)();
  return sub_27529FF90();
}

uint64_t sub_27529A428()
{
  v2 = *v0;
  sub_27529FF60();
  AudioSearchCriteria.MediaKind.hash(into:)();
  return sub_27529FF90();
}

uint64_t _s23_MediaPlayer_AppIntents19AudioSearchCriteriaV0A4KindO05MusicH0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_27529FF60();
  MEMORY[0x277C727B0](v1);
  return sub_27529FF90();
}

uint64_t sub_27529A530()
{
  v1 = *v0;
  sub_27529FF60();
  MEMORY[0x277C727B0](v1);
  return sub_27529FF90();
}

unint64_t sub_27529A578()
{
  result = qword_2809BB378;
  if (!qword_2809BB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB378);
  }

  return result;
}

unint64_t sub_27529A600()
{
  result = qword_2809BB390;
  if (!qword_2809BB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB390);
  }

  return result;
}

uint64_t sub_27529A684(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_27529A6D4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27529A6D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_27529FEC0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_27529A724()
{
  result = qword_2809BB3A8;
  if (!qword_2809BB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB3A8);
  }

  return result;
}

uint64_t _s9MediaKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1E)
  {
    if (a2 + 226 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 226) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 227;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v5 >= 0x1D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s9MediaKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1D)
  {
    v6 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27529A8E8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27529A910(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_27529A93C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 7 | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 6) & 7 | 0x80;
  }

  *result = v2;
  return result;
}

uint64_t _s9MediaKindO9MusicKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s9MediaKindO9MusicKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27529AACCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t _s9MediaKindO11PodcastKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s9MediaKindO11PodcastKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27529AC58);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t AudioSearch.Error.hashValue.getter()
{
  v1 = *v0;
  sub_27529FF60();
  MEMORY[0x277C727B0](v1);
  return sub_27529FF90();
}

unint64_t sub_27529AD78()
{
  result = qword_2809BB3B0;
  if (!qword_2809BB3B0)
  {
    sub_27529ADD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB3B0);
  }

  return result;
}

void sub_27529ADD0()
{
  if (!qword_2809BB3B8)
  {
    v0 = sub_27529FEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB3B8);
    }
  }
}

unint64_t sub_27529AE24()
{
  result = qword_2809BB3C0;
  if (!qword_2809BB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB3C0);
  }

  return result;
}

_BYTE *_s5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27529AF44);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t AudioSearch.SpotlightResult.init(entityInstanceIdentifier:entityTypeIdentifier:bundleIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t AudioSearch.SpotlightResult.entityInstanceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.SpotlightResult.entityInstanceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AudioSearch.SpotlightResult.entityTypeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.SpotlightResult.entityTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AudioSearch.SpotlightResult.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.SpotlightResult.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t static AudioSearch.SpotlightResult.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_27529FF00() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_27529FF00() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_2();

  return sub_27529FF00();
}

uint64_t AudioSearch.SpotlightResult.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_27529FEB0();
  sub_27529FEB0();

  return sub_27529FEB0();
}

uint64_t AudioSearch.SpotlightResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_27529FF60();
  sub_27529FEB0();
  sub_27529FEB0();
  sub_27529FEB0();
  return sub_27529FF90();
}

uint64_t sub_27529B2FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_27529FF60();
  sub_27529FEB0();
  sub_27529FEB0();
  sub_27529FEB0();
  return sub_27529FF90();
}

unint64_t sub_27529B380()
{
  result = qword_2809BB3C8;
  if (!qword_2809BB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB3C8);
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

uint64_t sub_27529B3E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27529B428(uint64_t result, int a2, int a3)
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

__n128 AudioSearch.Result.Item.init(id:title:artistName:kind:bundleID:assetInfo:recommendationID:requiresSubscription:provider:providerAppName:universalResourceLink:newsTopicID:children:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, __int128 a14, __int128 a15, __int128 a16, __n128 a17, uint64_t a18)
{
  result = a17;
  v19 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v19;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  *(a9 + 128) = a15;
  *(a9 + 144) = a16;
  *(a9 + 160) = a17;
  *(a9 + 176) = a18;
  return result;
}

uint64_t AudioSearch.Result.Item.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.id.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.title.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.artistName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.artistName.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.bundleID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.bundleID.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.assetInfo.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.assetInfo.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.recommendationID.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.recommendationID.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.provider.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.provider.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.providerAppName.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.providerAppName.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.universalResourceLink.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.universalResourceLink.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.newsTopicID.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_0_2();
}

uint64_t AudioSearch.Result.Item.newsTopicID.setter()
{
  OUTLINED_FUNCTION_0_3();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t AudioSearch.Result.Item.children.setter(uint64_t a1)
{
  v3 = *(v1 + 176);

  *(v1 + 176) = a1;
  return result;
}

uint64_t static AudioSearch.Result.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v50 = *(a1 + 56);
  v54 = *(a1 + 64);
  v46 = *(a1 + 72);
  v52 = *(a1 + 80);
  v42 = *(a1 + 88);
  v48 = *(a1 + 96);
  v43 = *(a1 + 104);
  v36 = *(a1 + 112);
  v40 = *(a1 + 120);
  v32 = *(a1 + 128);
  v38 = *(a1 + 136);
  v28 = *(a1 + 144);
  v34 = *(a1 + 152);
  v26 = *(a1 + 160);
  v30 = *(a1 + 168);
  v24 = *(a1 + 176);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v49 = *(a2 + 56);
  v53 = *(a2 + 64);
  v45 = *(a2 + 72);
  v51 = *(a2 + 80);
  v41 = *(a2 + 88);
  v47 = *(a2 + 96);
  v44 = *(a2 + 104);
  v35 = *(a2 + 112);
  v39 = *(a2 + 120);
  v31 = *(a2 + 128);
  v37 = *(a2 + 136);
  v27 = *(a2 + 144);
  v33 = *(a2 + 152);
  v25 = *(a2 + 160);
  v29 = *(a2 + 168);
  v23 = *(a2 + 176);
  if (!v12 && (sub_27529FF00() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = v2 == v7 && v4 == v8;
    if (!v13 && (sub_27529FF00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    v14 = v3 == v9 && v5 == v10;
    if (!v14 && (sub_27529FF00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v55[1] = v6;
  v56[0] = v11;
  if (v6 <= 0xF7)
  {
    v55[0] = v6;
    if (v11 > 0xF7 || (static AudioSearchCriteria.MediaKind.== infix(_:_:)(v55, v56) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11 <= 0xF7)
  {
    return 0;
  }

  if (v54)
  {
    if (!v53)
    {
      return 0;
    }

    v15 = v50 == v49 && v54 == v53;
    if (!v15 && (sub_27529FF00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  if (v52)
  {
    if (!v51)
    {
      return 0;
    }

    v16 = v46 == v45 && v52 == v51;
    if (!v16 && (sub_27529FF00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  if (v48)
  {
    if (!v47)
    {
      return 0;
    }

    v17 = v42 == v41 && v48 == v47;
    if (!v17 && (sub_27529FF00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  if (v43 == 2)
  {
    if (v44 != 2)
    {
      return 0;
    }
  }

  else if (v44 == 2 || ((v44 ^ v43) & 1) != 0)
  {
    return 0;
  }

  if (v40)
  {
    if (!v39)
    {
      return 0;
    }

    v18 = v36 == v35 && v40 == v39;
    if (!v18 && (sub_27529FF00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  if (v38)
  {
    if (!v37)
    {
      return 0;
    }

    v19 = v32 == v31 && v38 == v37;
    if (!v19 && (sub_27529FF00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  if (v34)
  {
    if (!v33)
    {
      return 0;
    }

    v20 = v28 == v27 && v34 == v33;
    if (!v20 && (sub_27529FF00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  if (!v30)
  {
    if (!v29)
    {
      goto LABEL_95;
    }

    return 0;
  }

  if (!v29)
  {
    return 0;
  }

  v21 = v26 == v25 && v30 == v29;
  if (!v21 && (sub_27529FF00() & 1) == 0)
  {
    return 0;
  }

LABEL_95:

  return sub_27529C198(v24, v23);
}

uint64_t sub_27529BEE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_27529FF00() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_27529BF6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_27529FF00() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_27529FF00() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_27529FF00() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_27529C088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 184)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      v5 = static AudioSearch.Result.Item.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_2752978E0(__dst, v7);
      sub_2752978E0(v11, v7);
      sub_275294CA0(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_275294CA0(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 184;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_27529C198(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_27529FF00() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        v10 = v5 == v8 && v6 == v7;
        if (!v10 && (sub_27529FF00() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t AudioSearch.Result.Item.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v8 = *(v1 + 48);
  v14 = v1[4];
  v15 = v1[7];
  v9 = v1[10];
  v10 = v1[12];
  v16 = v1[9];
  v17 = v1[11];
  v11 = *(v1 + 104);
  v18 = v1[14];
  v19 = v1[16];
  v22 = v1[8];
  v23 = v1[17];
  v20 = v1[18];
  v12 = v1[19];
  v21 = v1[20];
  v24 = v1[15];
  v25 = v1[21];
  v26 = v1[22];
  sub_27529FEB0();
  if (v5)
  {
    OUTLINED_FUNCTION_2_3();
    sub_27529FEB0();
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
  }

  if (v7)
  {
    OUTLINED_FUNCTION_2_3();
    sub_27529FEB0();
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
  }

  if (v8 < 0xF8)
  {
    OUTLINED_FUNCTION_2_3();
    AudioSearchCriteria.MediaKind.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
  }

  if (v22)
  {
    OUTLINED_FUNCTION_2_3();
    sub_27529FEB0();
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
  }

  if (v9)
  {
    OUTLINED_FUNCTION_2_3();
    sub_27529FEB0();
    if (v10)
    {
LABEL_15:
      OUTLINED_FUNCTION_2_3();
      sub_27529FEB0();
      goto LABEL_18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
    if (v10)
    {
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_3_2();
LABEL_18:
  if (v11 != 2)
  {
    OUTLINED_FUNCTION_2_3();
  }

  sub_27529FF80();
  if (v24)
  {
    OUTLINED_FUNCTION_2_3();
    sub_27529FEB0();
    if (v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
    if (v23)
    {
LABEL_22:
      OUTLINED_FUNCTION_2_3();
      sub_27529FEB0();
      if (v12)
      {
        goto LABEL_23;
      }

LABEL_27:
      OUTLINED_FUNCTION_3_2();
      if (v25)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_3_2();
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_23:
  OUTLINED_FUNCTION_2_3();
  sub_27529FEB0();
  if (v25)
  {
LABEL_24:
    OUTLINED_FUNCTION_2_3();
    sub_27529FEB0();
    goto LABEL_29;
  }

LABEL_28:
  OUTLINED_FUNCTION_3_2();
LABEL_29:

  return sub_27529C730(a1, v26);
}

uint64_t AudioSearch.Result.Item.hashValue.getter()
{
  sub_27529FF60();
  AudioSearch.Result.Item.hash(into:)(v1);
  return sub_27529FF90();
}

uint64_t sub_27529C4F4()
{
  sub_27529FF60();
  AudioSearch.Result.Item.hash(into:)(v1);
  return sub_27529FF90();
}

uint64_t sub_27529C530@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearch.Result.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_27529C558(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_1(a1, a2);
  if (v2)
  {
    v4 = (v3 + 72);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;

      sub_27529FEB0();
      sub_27529FEB0();
      sub_27529FEB0();

      v4 += 6;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_27529C618(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x277C727B0](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(__src, v6, sizeof(__src));
      sub_2752978E0(__dst, v8);
      AudioSearch.Result.Item.hash(into:)(a1);
      memcpy(v8, __src, sizeof(v8));
      result = sub_275294CA0(v8);
      v6 += 184;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_27529C6C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_1(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_27529FEB0();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_27529C730(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277C727B0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v9 = *(v5 - 1);
      v8 = *v5;

      sub_27529FEB0();
      sub_27529FF80();
      if (v8)
      {
        sub_27529FEB0();
      }

      v5 += 4;

      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_27529C7F0()
{
  result = qword_2809BB3D0;
  if (!qword_2809BB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB3D0);
  }

  return result;
}

uint64_t sub_27529C84C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27529C88C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_27529FF80();
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_27529FF80();
}

void OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x277C727B0);
}

void AudioSearchCriteria.init(name:albumName:artistNames:kind:genreNames:releasePeriod:source:sortOrder:privateSearchResult:spotlightSearchResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22, const void *a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  v44 = v25;
  v45 = v26;
  OUTLINED_FUNCTION_2_4();
  v28 = *v27;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *a21;
  v33 = *a22;
  sub_27528FC74(__src);
  OUTLINED_FUNCTION_7(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45);
  *(v24 + 48) = v28;
  *(v24 + 56) = v30;
  *(v24 + 64) = v31;
  *(v24 + 65) = v32;
  *(v24 + 66) = v33;
  memcpy(__dst, __src, 0x179uLL);
  OUTLINED_FUNCTION_0_4();
  sub_27529DA04(__dst, v42);
  memcpy((v24 + 72), a23, 0x179uLL);
  *(v24 + 456) = a24;
  OUTLINED_FUNCTION_8();
}

void sub_27529CA1C()
{
  if (!qword_2809BADD0)
  {
    v0 = sub_27529FED0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BADD0);
    }
  }
}

void AudioSearchCriteria.init(name:albumName:artistNames:genreNames:kind:releasePeriod:source:sortOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  OUTLINED_FUNCTION_9();
  v42 = v23;
  v43 = v24;
  OUTLINED_FUNCTION_2_4();
  v26 = *v25;
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *a21;
  v31 = *a22;
  sub_27528FC74(__src);
  OUTLINED_FUNCTION_7(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43);
  *(v22 + 48) = v26;
  *(v22 + 56) = v28;
  *(v22 + 64) = v29;
  *(v22 + 65) = v30;
  *(v22 + 66) = v31;
  memcpy(__dst, __src, 0x179uLL);
  OUTLINED_FUNCTION_0_4();
  sub_27529DA04(__dst, v40);
  memcpy((v22 + 72), __src, 0x179uLL);
  *(v22 + 456) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_8();
}

uint64_t AudioSearchCriteria.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AudioSearchCriteria.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AudioSearchCriteria.albumName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AudioSearchCriteria.albumName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AudioSearchCriteria.artistNames.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t AudioSearchCriteria.genreNames.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

void AudioSearchCriteria.releasePeriod.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t AudioSearchCriteria.releasePeriod.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t AudioSearchCriteria.privateSearchResult.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), 0x179uLL);
  memcpy(a1, (v1 + 72), 0x179uLL);
  return sub_27529CE08(__dst, v4);
}

uint64_t sub_27529CE08(uint64_t a1, uint64_t a2)
{
  sub_27529CA1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *AudioSearchCriteria.privateSearchResult.setter(const void *a1)
{
  memcpy(__dst, (v1 + 72), 0x179uLL);
  OUTLINED_FUNCTION_0_4();
  sub_27529DA04(__dst, v3);
  return memcpy((v1 + 72), a1, 0x179uLL);
}

uint64_t AudioSearchCriteria.spotlightSearchResults.setter(uint64_t a1)
{
  v3 = *(v1 + 456);

  *(v1 + 456) = a1;
  return result;
}

void static AudioSearchCriteria.== infix(_:_:)()
{
  OUTLINED_FUNCTION_9();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v38 = *(v0 + 40);
  v39 = *(v0 + 32);
  v36 = *(v0 + 48);
  v29 = *(v0 + 56);
  v34 = *(v0 + 64);
  v30 = *(v0 + 65);
  v32 = *(v0 + 66);
  memcpy(__dst, (v0 + 72), 0x179uLL);
  v26 = *(v3 + 456);
  v9 = *v2;
  v8 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v12 = v2[4];
  v37 = v2[5];
  v35 = *(v2 + 48);
  v28 = v2[7];
  v33 = *(v2 + 64);
  v31 = *(v2 + 65);
  v27 = *(v2 + 66);
  v13 = OUTLINED_FUNCTION_1_2();
  memcpy(v13, v2 + 9, 0x179uLL);
  v14 = v2[57];
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_57;
    }

    v15 = v4 == v9 && v5 == v8;
    if (!v15 && (sub_27529FF00() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v8)
  {
    goto LABEL_57;
  }

  if (v7)
  {
    if (!v10)
    {
      goto LABEL_57;
    }

    v16 = v6 == v11 && v7 == v10;
    if (!v16 && (sub_27529FF00() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v10)
  {
    goto LABEL_57;
  }

  if (sub_27529BEE0(v39, v12) & 1) != 0 && (sub_27529BEE0(v38, v37))
  {
    __src[0] = v36;
    __src[1] = v35;
    if (v36 <= 0xF7)
    {
      v44[0] = v36;
      if (v35 > 0xF7 || (static AudioSearchCriteria.MediaKind.== infix(_:_:)(v44, &__src[1]) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (v35 <= 0xF7)
    {
      goto LABEL_57;
    }

    if (v34 == 255)
    {
      if (v33 != 255)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v33 == 255)
      {
        goto LABEL_57;
      }

      if (v34)
      {
        if ((v33 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else if (v33)
      {
        goto LABEL_57;
      }

      if (v29 != v28)
      {
        goto LABEL_57;
      }
    }

    if (v30 == 3)
    {
      v17 = v31 == 3;
    }

    else
    {
      v17 = v31 != 3 && v30 == v31;
    }

    if (v17)
    {
      if (v32 == 7)
      {
        if (v27 != 7)
        {
          goto LABEL_57;
        }
      }

      else if (v27 == 7 || v32 != v27)
      {
        goto LABEL_57;
      }

      memcpy(__src, __dst, 0x179uLL);
      memcpy(&__src[384], v49, 0x179uLL);
      memcpy(v47, __dst, 0x179uLL);
      if (sub_2752904C4(v47) == 1)
      {
        memcpy(v44, &__src[384], 0x179uLL);
        if (sub_2752904C4(v44) == 1)
        {
          OUTLINED_FUNCTION_6(v45);
          sub_27529CE08(__dst, v43);
          v19 = OUTLINED_FUNCTION_1_2();
          sub_27529CE08(v19, v43);
          OUTLINED_FUNCTION_0_4();
          sub_27529DA04(v45, v20);
          goto LABEL_59;
        }

        sub_27529CE08(__dst, v45);
        v22 = OUTLINED_FUNCTION_1_2();
        sub_27529CE08(v22, v45);
      }

      else
      {
        OUTLINED_FUNCTION_6(v45);
        OUTLINED_FUNCTION_6(v43);
        memcpy(v44, &__src[384], 0x179uLL);
        if (sub_2752904C4(v44) != 1)
        {
          memcpy(v42, &__src[384], 0x179uLL);
          sub_27529CE08(__dst, v41);
          v23 = OUTLINED_FUNCTION_1_2();
          sub_27529CE08(v23, v41);
          sub_27529CE08(v45, v41);
          v24 = static AudioSearch.Result.== infix(_:_:)(v43, v42);
          memcpy(v40, v42, 0x179uLL);
          sub_27529793C(v40);
          memcpy(v41, v43, 0x179uLL);
          sub_27529793C(v41);
          OUTLINED_FUNCTION_6(v42);
          OUTLINED_FUNCTION_0_4();
          sub_27529DA04(v42, v25);
          if (!v24)
          {
            goto LABEL_57;
          }

LABEL_59:
          sub_27529BF6C(v26, v14);
          goto LABEL_57;
        }

        OUTLINED_FUNCTION_6(v42);
        sub_27529CE08(__dst, v41);
        v21 = OUTLINED_FUNCTION_1_2();
        sub_27529CE08(v21, v41);
        sub_27529CE08(v45, v41);
        sub_27529793C(v42);
      }

      memcpy(v44, __src, 0x2F9uLL);
      sub_27529DA04(v44, sub_27529DA64);
    }
  }

LABEL_57:
  OUTLINED_FUNCTION_8();
}

void AudioSearchCriteria.hash(into:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = *v0;
  v3 = v0[1];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = *(v0 + 48);
  v14 = v0[2];
  v15 = v0[7];
  v16 = *(v0 + 64);
  v9 = *(v0 + 65);
  v10 = *(v0 + 66);
  memcpy(__dst, v0 + 9, sizeof(__dst));
  v17 = v0[57];
  if (v3)
  {
    OUTLINED_FUNCTION_2_3();
    sub_27529FEB0();
    if (v5)
    {
LABEL_3:
      OUTLINED_FUNCTION_2_3();
      sub_27529FEB0();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_3_2();
LABEL_6:
  sub_27529C6C8(v2, v7);
  sub_27529C6C8(v2, v6);
  if (v8 < 0xF8)
  {
    OUTLINED_FUNCTION_2_3();
    AudioSearchCriteria.MediaKind.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
  }

  if (v16 == 255)
  {
    OUTLINED_FUNCTION_3_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    MEMORY[0x277C727B0]((v16 & 1) != 0);
    MEMORY[0x277C727B0](v15);
  }

  if (v9 == 3)
  {
    OUTLINED_FUNCTION_3_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    MEMORY[0x277C727B0](v9);
  }

  if (v10 == 7)
  {
    OUTLINED_FUNCTION_3_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    MEMORY[0x277C727B0](v10);
  }

  sub_27529DAC8(v2);
  OUTLINED_FUNCTION_8();

  sub_27529C558(v11, v12);
}

uint64_t AudioSearchCriteria.hashValue.getter()
{
  sub_27529FF60();
  AudioSearchCriteria.hash(into:)();
  return sub_27529FF90();
}

uint64_t sub_27529D54C()
{
  sub_27529FF60();
  AudioSearchCriteria.hash(into:)();
  return sub_27529FF90();
}

uint64_t sub_27529D588()
{
  v0 = sub_27529FE10();
  __swift_allocate_value_buffer(v0, qword_2809BB3D8);
  __swift_project_value_buffer(v0, qword_2809BB3D8);
  return sub_27529FE00();
}

uint64_t AudioSearchCriteria.displayRepresentation.getter()
{
  sub_27529DC88(0, &qword_2809BB410, MEMORY[0x277CBA248]);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v12 - v2;
  sub_27529DC88(0, &qword_2809BB418, MEMORY[0x277CC9130]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = sub_27529FE80();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_27529FE70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v10 = sub_27529FDC0();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  return sub_27529FDD0();
}

uint64_t sub_27529D7C0()
{
  sub_27529DD04();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_2809BB3F0);
  __swift_project_value_buffer(v1, qword_2809BB3F0);
  sub_27529DD60();
  return sub_27529FE20();
}

uint64_t sub_27529D858@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_27529D954(uint64_t a1)
{
  v2 = sub_27529DEF8();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t AudioSearchCriteria.convertToEntity()@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, 0x1D0uLL);
  memcpy(__src, v1, sizeof(__src));
  sub_27529DDB4(__dst, v4);
  return sub_27528F6F8(__src, a1);
}

uint64_t sub_27529DA04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_27529DA64()
{
  if (!qword_2809BB408)
  {
    sub_27529CA1C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809BB408);
    }
  }
}

uint64_t sub_27529DAC8(uint64_t a1)
{
  v3 = *(v1 + 368);
  v4 = *(v1 + 376);
  memcpy(__dst, v1, 0x179uLL);
  if (sub_2752904C4(__dst) == 1)
  {
    return sub_27529FF80();
  }

  sub_27529FF80();
  memcpy(v10, v1, sizeof(v10));
  if (sub_2752978C8(v10) == 1)
  {
    sub_27529FF80();
  }

  else
  {
    memcpy(__src, v1, sizeof(__src));
    sub_27529FF80();
    memcpy(v8, v1, sizeof(v8));
    sub_2752978E0(v8, v9);
    AudioSearch.Result.Item.hash(into:)(a1);
    memcpy(v9, __src, sizeof(v9));
    sub_275294CA0(v9);
  }

  memcpy(v9, (v1 + 184), sizeof(v9));
  if (sub_2752978C8(v9) == 1)
  {
    sub_27529FF80();
  }

  else
  {
    memcpy(v6, (v1 + 184), sizeof(v6));
    sub_27529FF80();
    memcpy(__src, (v1 + 184), sizeof(__src));
    sub_2752978E0(__src, v8);
    AudioSearch.Result.Item.hash(into:)(a1);
    memcpy(v8, v6, sizeof(v8));
    sub_275294CA0(v8);
  }

  sub_27529C618(a1, v3);
  if (v4 == 5)
  {
    return sub_27529FF80();
  }

  sub_27529FF80();
  return MEMORY[0x277C727B0](v4);
}

void sub_27529DC88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27529FED0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_27529DD04()
{
  if (!qword_2809BB420)
  {
    sub_27529DD60();
    v0 = sub_27529FE30();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB420);
    }
  }
}

unint64_t sub_27529DD60()
{
  result = qword_2809BB428;
  if (!qword_2809BB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB428);
  }

  return result;
}

unint64_t sub_27529DDF0()
{
  result = qword_2809BB430;
  if (!qword_2809BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB430);
  }

  return result;
}

unint64_t sub_27529DE48()
{
  result = qword_2809BB438;
  if (!qword_2809BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB438);
  }

  return result;
}

unint64_t sub_27529DEA0()
{
  result = qword_2809BB440;
  if (!qword_2809BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB440);
  }

  return result;
}

unint64_t sub_27529DEF8()
{
  result = qword_2809BB448;
  if (!qword_2809BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB448);
  }

  return result;
}

unint64_t sub_27529DF50()
{
  result = qword_2809BB450;
  if (!qword_2809BB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB450);
  }

  return result;
}

unint64_t sub_27529DFA8()
{
  result = qword_2809BB458;
  if (!qword_2809BB458)
  {
    sub_27529DD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB458);
  }

  return result;
}

unint64_t sub_27529E008()
{
  result = qword_2809BB460;
  if (!qword_2809BB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB460);
  }

  return result;
}

unint64_t sub_27529E060()
{
  result = qword_2809BB468;
  if (!qword_2809BB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB468);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23_MediaPlayer_AppIntents11AudioSearchV6ResultV4ItemVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_23_MediaPlayer_AppIntents11AudioSearchV6ResultVSg(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27529E0F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 464))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27529E130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_6(void *a1)
{

  return memcpy(a1, &STACK[0xAD8], 0x179uLL);
}

void OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *v15 = v14;
  v15[1] = v13;
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = a10;
  v15[5] = a11;
}

uint64_t AudioSearchCriteria.SortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_27529FF60();
  MEMORY[0x277C727B0](v1);
  return sub_27529FF90();
}

unint64_t sub_27529E350()
{
  result = qword_2809BB470;
  if (!qword_2809BB470)
  {
    sub_27529E3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB470);
  }

  return result;
}

void sub_27529E3A8()
{
  if (!qword_2809BB478)
  {
    v0 = sub_27529FEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB478);
    }
  }
}

unint64_t sub_27529E3FC()
{
  result = qword_2809BB480;
  if (!qword_2809BB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB480);
  }

  return result;
}

_BYTE *_s9SortOrderOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27529E51CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}