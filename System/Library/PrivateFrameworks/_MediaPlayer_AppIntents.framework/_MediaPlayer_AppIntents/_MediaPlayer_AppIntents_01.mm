uint64_t AudioSearchCriteria.ContentSource.hashValue.getter()
{
  v1 = *v0;
  sub_27529FF60();
  MEMORY[0x277C727B0](v1);
  return sub_27529FF90();
}

unint64_t sub_27529E608()
{
  result = qword_2809BB488;
  if (!qword_2809BB488)
  {
    sub_27529E660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB488);
  }

  return result;
}

void sub_27529E660()
{
  if (!qword_2809BB490)
  {
    v0 = sub_27529FEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB490);
    }
  }
}

unint64_t sub_27529E6B4()
{
  result = qword_2809BB498;
  if (!qword_2809BB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB498);
  }

  return result;
}

_BYTE *_s13ContentSourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27529E7D4);
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

uint64_t AudioSearchCriteria.ReleasePeriod.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x277C727B0](*(v0 + 8));
  return MEMORY[0x277C727B0](v1);
}

uint64_t AudioSearchCriteria.ReleasePeriod.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_27529FF60();
  MEMORY[0x277C727B0](v2);
  MEMORY[0x277C727B0](v1);
  return sub_27529FF90();
}

uint64_t sub_27529E8DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_27529FF60();
  MEMORY[0x277C727B0](v2);
  MEMORY[0x277C727B0](v1);
  return sub_27529FF90();
}

unint64_t sub_27529E93C()
{
  result = qword_2809BB4A0;
  if (!qword_2809BB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB4A0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s13ReleasePeriodOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s13ReleasePeriodOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSearch(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AudioSearch(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x27529EB3CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void *AudioSearch.Result.init(searchResult:fallbackSearchResult:alternativeSearchResults:searchError:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_275297990(__src);
  memcpy((a3 + 184), __src, 0xB8uLL);
  memcpy(__dst, __src, sizeof(__dst));
  sub_27529F39C(__dst, sub_27529EC40);
  OUTLINED_FUNCTION_1_3(a3);
  memcpy(v9, (a3 + 184), sizeof(v9));
  sub_27529F39C(v9, sub_27529EC40);
  result = OUTLINED_FUNCTION_2_5((a3 + 184));
  *(a3 + 368) = a1;
  *(a3 + 376) = v5;
  return result;
}

void sub_27529EC40()
{
  if (!qword_2809BB250)
  {
    v0 = sub_27529FED0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809BB250);
    }
  }
}

void *AudioSearch.Result.init(searchResult:fallbackSearchResult:searchError:)@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_275297990(__src);
  memcpy(&v5[184], __src, 0xB8uLL);
  memcpy(__dst, __src, sizeof(__dst));
  sub_27529F39C(__dst, sub_27529EC40);
  OUTLINED_FUNCTION_1_3(v5);
  memcpy(v8, &v5[184], sizeof(v8));
  sub_27529F39C(v8, sub_27529EC40);
  OUTLINED_FUNCTION_2_5(&v5[184]);
  result = memcpy(a2, v5, 0x170uLL);
  *(a2 + 368) = MEMORY[0x277D84F90];
  *(a2 + 376) = v3;
  return result;
}

uint64_t AudioSearch.Result.searchResult.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_2_5(v4);
  OUTLINED_FUNCTION_2_5(a1);
  return sub_27529EDB8(v4, v3);
}

uint64_t sub_27529EDB8(uint64_t a1, uint64_t a2)
{
  sub_27529EC40();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *AudioSearch.Result.searchResult.setter(const void *a1)
{
  OUTLINED_FUNCTION_2_5(v5);
  OUTLINED_FUNCTION_0_5();
  sub_27529F39C(v5, v3);
  return memcpy(v1, a1, 0xB8uLL);
}

uint64_t AudioSearch.Result.fallbackSearchResult.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 184), 0xB8uLL);
  memcpy(a1, (v1 + 184), 0xB8uLL);
  return sub_27529EDB8(__dst, v4);
}

void *AudioSearch.Result.fallbackSearchResult.setter(const void *a1)
{
  memcpy(__dst, (v1 + 184), sizeof(__dst));
  OUTLINED_FUNCTION_0_5();
  sub_27529F39C(__dst, v3);
  return memcpy((v1 + 184), a1, 0xB8uLL);
}

uint64_t AudioSearch.Result.alternativeSearchResults.setter(uint64_t a1)
{
  v3 = *(v1 + 368);

  *(v1 + 368) = a1;
  return result;
}

BOOL static AudioSearch.Result.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_3(v29);
  OUTLINED_FUNCTION_6_0(v30);
  v4 = *(a1 + 368);
  v5 = *(a1 + 376);
  OUTLINED_FUNCTION_3_3(v31);
  memcpy(__dst, (a2 + 184), sizeof(__dst));
  v6 = *(a2 + 368);
  v7 = *(a2 + 376);
  OUTLINED_FUNCTION_1_3(v28);
  OUTLINED_FUNCTION_3_3(&v28[184]);
  OUTLINED_FUNCTION_1_3(v33);
  OUTLINED_FUNCTION_5_1(v33);
  if (v9)
  {
    OUTLINED_FUNCTION_3_3(v26);
    OUTLINED_FUNCTION_5_1(v26);
    if (!v9)
    {
      sub_27529EDB8(v29, v27);
      v11 = v31;
      v12 = v27;
LABEL_19:
      sub_27529EDB8(v11, v12);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_1_3(v27);
    sub_27529EDB8(v29, v25);
    sub_27529EDB8(v31, v25);
    OUTLINED_FUNCTION_0_5();
    sub_27529F39C(v27, v8);
  }

  else
  {
    OUTLINED_FUNCTION_1_3(v27);
    OUTLINED_FUNCTION_1_3(v25);
    OUTLINED_FUNCTION_3_3(v26);
    OUTLINED_FUNCTION_5_1(v26);
    if (v9)
    {
      OUTLINED_FUNCTION_1_3(__src);
      sub_27529EDB8(v29, v23);
      sub_27529EDB8(v31, v23);
      sub_27529EDB8(v27, v23);
      v10 = __src;
LABEL_18:
      sub_275294CA0(v10);
LABEL_20:
      memcpy(v26, v28, sizeof(v26));
      sub_27529F39C(v26, sub_27529F3FC);
      return 0;
    }

    OUTLINED_FUNCTION_3_3(__src);
    v13 = static AudioSearch.Result.Item.== infix(_:_:)(v25, __src);
    memcpy(v22, __src, sizeof(v22));
    sub_27529EDB8(v29, v23);
    sub_27529EDB8(v31, v23);
    sub_27529EDB8(v27, v23);
    sub_275294CA0(v22);
    memcpy(v23, v25, sizeof(v23));
    sub_275294CA0(v23);
    OUTLINED_FUNCTION_1_3(__src);
    OUTLINED_FUNCTION_0_5();
    sub_27529F39C(__src, v14);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  memcpy(v28, v30, 0xB8uLL);
  memcpy(&v28[184], __dst, 0xB8uLL);
  memcpy(v27, v30, sizeof(v27));
  OUTLINED_FUNCTION_5_1(v27);
  if (v9)
  {
    OUTLINED_FUNCTION_6_0(v26);
    OUTLINED_FUNCTION_5_1(v26);
    if (v9)
    {
      OUTLINED_FUNCTION_4_2(v25);
      sub_27529EDB8(v30, __src);
      sub_27529EDB8(__dst, __src);
      OUTLINED_FUNCTION_0_5();
      sub_27529F39C(v25, v15);
      goto LABEL_23;
    }

    sub_27529EDB8(v30, v25);
    v11 = __dst;
    v12 = v25;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_4_2(v25);
  OUTLINED_FUNCTION_4_2(__src);
  OUTLINED_FUNCTION_6_0(v26);
  OUTLINED_FUNCTION_5_1(v26);
  if (v16)
  {
    OUTLINED_FUNCTION_4_2(v23);
    sub_27529EDB8(v30, v22);
    sub_27529EDB8(__dst, v22);
    sub_27529EDB8(v25, v22);
    v10 = v23;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_6_0(v23);
  v18 = static AudioSearch.Result.Item.== infix(_:_:)(__src, v23);
  memcpy(v21, v23, sizeof(v21));
  sub_27529EDB8(v30, v22);
  sub_27529EDB8(__dst, v22);
  sub_27529EDB8(v25, v22);
  sub_275294CA0(v21);
  memcpy(v22, __src, sizeof(v22));
  sub_275294CA0(v22);
  OUTLINED_FUNCTION_4_2(v23);
  OUTLINED_FUNCTION_0_5();
  sub_27529F39C(v23, v19);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if ((sub_27529C088(v4, v6) & 1) == 0)
  {
    return 0;
  }

  if (v5 != 5)
  {
    return v7 != 5 && v5 == v7;
  }

  return v7 == 5;
}

uint64_t sub_27529F39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_27529F3FC()
{
  if (!qword_2809BB4A8)
  {
    sub_27529EC40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809BB4A8);
    }
  }
}

uint64_t AudioSearch.Result.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 368);
  v4 = *(v1 + 376);
  OUTLINED_FUNCTION_2_5(v11);
  OUTLINED_FUNCTION_5_1(v11);
  if (v5)
  {
    sub_27529FF80();
  }

  else
  {
    memcpy(__dst, v1, sizeof(__dst));
    sub_27529FF80();
    memcpy(v9, v1, sizeof(v9));
    sub_2752978E0(v9, v10);
    AudioSearch.Result.Item.hash(into:)(a1);
    memcpy(v10, __dst, sizeof(v10));
    sub_275294CA0(v10);
  }

  memcpy(v10, (v1 + 184), sizeof(v10));
  OUTLINED_FUNCTION_5_1(v10);
  if (v5)
  {
    sub_27529FF80();
  }

  else
  {
    memcpy(__src, (v1 + 184), sizeof(__src));
    sub_27529FF80();
    memcpy(__dst, (v1 + 184), sizeof(__dst));
    sub_2752978E0(__dst, v9);
    AudioSearch.Result.Item.hash(into:)(a1);
    memcpy(v9, __src, sizeof(v9));
    sub_275294CA0(v9);
  }

  sub_27529C618(a1, v3);
  if (v4 == 5)
  {
    return sub_27529FF80();
  }

  sub_27529FF80();
  return MEMORY[0x277C727B0](v4);
}

uint64_t AudioSearch.Result.hashValue.getter()
{
  sub_27529FF60();
  AudioSearch.Result.hash(into:)(v1);
  return sub_27529FF90();
}

uint64_t sub_27529F630()
{
  sub_27529FF60();
  AudioSearch.Result.hash(into:)(v1);
  return sub_27529FF90();
}

unint64_t sub_27529F670()
{
  result = qword_2809BB4B0;
  if (!qword_2809BB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB4B0);
  }

  return result;
}

uint64_t sub_27529F6CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 377))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 368);
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

uint64_t sub_27529F70C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 376) = 0;
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
      *(result + 377) = 1;
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
      *(result + 368) = (a2 - 1);
      return result;
    }

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_1_3(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void *OUTLINED_FUNCTION_2_5(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void *OUTLINED_FUNCTION_3_3(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void *OUTLINED_FUNCTION_4_2(void *a1)
{

  return memcpy(a1, &STACK[0x5C8], 0xB8uLL);
}

void *OUTLINED_FUNCTION_6_0(void *a1)
{

  return memcpy(a1, (v1 + 184), 0xB8uLL);
}

uint64_t AudioSearch.Result.Item.Child.init(id:assetInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t AudioSearch.Result.Item.Child.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AudioSearch.Result.Item.Child.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AudioSearch.Result.Item.Child.assetInfo.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AudioSearch.Result.Item.Child.assetInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static AudioSearch.Result.Item.Child.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_27529FF00(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_27529FF00() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AudioSearch.Result.Item.Child.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_27529FEB0();
  if (!v4)
  {
    return sub_27529FF80();
  }

  sub_27529FF80();

  return sub_27529FEB0();
}

uint64_t AudioSearch.Result.Item.Child.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_27529FF60();
  sub_27529FEB0();
  sub_27529FF80();
  if (v4)
  {
    sub_27529FEB0();
  }

  return sub_27529FF90();
}

uint64_t sub_27529FB38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_27529FF60();
  sub_27529FEB0();
  sub_27529FF80();
  if (v4)
  {
    sub_27529FEB0();
  }

  return sub_27529FF90();
}

unint64_t sub_27529FBC4()
{
  result = qword_2809BB4B8;
  if (!qword_2809BB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BB4B8);
  }

  return result;
}

uint64_t sub_27529FC18@<X0>(uint64_t *a1@<X8>)
{
  result = AudioSearch.Result.Item.Child.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27529FC40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_27529FC80(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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