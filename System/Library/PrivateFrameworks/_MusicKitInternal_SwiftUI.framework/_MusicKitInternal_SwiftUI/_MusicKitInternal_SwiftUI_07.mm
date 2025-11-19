uint64_t sub_217908A24()
{
  v0 = OUTLINED_FUNCTION_52_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_153();
  sub_217909ABC(v2, v3);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_15_5() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v15[3])
  {
LABEL_5:
    sub_2178BE050(v15, &qword_27CB8B088, &qword_21796B740);
    OUTLINED_FUNCTION_82_2();
    return OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_86_1(v15);
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_68_2();
  v8 = v7(v6);
  OUTLINED_FUNCTION_37_2(v8, v9, v10, v11, v12, v13);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217908B98(void (*a1)(void))
{
  a1(0);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_15_5() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v12[3])
  {
LABEL_5:
    sub_2178BE050(v12, &qword_27CB8B088, &qword_21796B740);
    OUTLINED_FUNCTION_82_2();
    return OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_86_1(v12);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_68_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_37_2(v5, v6, v7, v8, v9, v10);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217908D20()
{
  v0 = OUTLINED_FUNCTION_52_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_153();
  sub_217909ABC(v2, v3);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_15_5() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v15[3])
  {
LABEL_5:
    sub_2178BE050(v15, &qword_27CB8B088, &qword_21796B740);
    OUTLINED_FUNCTION_82_2();
    return OUTLINED_FUNCTION_63_0();
  }

  OUTLINED_FUNCTION_86_1(v15);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_68_2();
  v8 = v7(v6);
  OUTLINED_FUNCTION_37_2(v8, v9, v10, v11, v12, v13);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217908E0C()
{
  v1 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__playlist;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3C0, &qword_2179700A8);
  OUTLINED_FUNCTION_4_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__loadingState;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3C8, &qword_2179700B0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__entries;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3D0, &qword_2179700B8);
  OUTLINED_FUNCTION_4_1(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel__totalEntriesCount;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D3D8, &qword_2179700C0);
  OUTLINED_FUNCTION_4_1(v11);
  (*(v12 + 8))(v0 + v10);
  return v0;
}

uint64_t sub_217908F2C()
{
  sub_217908E0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_217908FAC()
{
  sub_21790916C(319, &qword_27CB8D318, MEMORY[0x277CD8608]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_21790916C(319, &qword_27CB8D320, _s23PlaylistDetailViewModelC12LoadingStateOMa);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_217909214(319, &qword_27CB8D328, &qword_27CB8AB10, &unk_21796B0A0);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_217909214(319, &qword_27CB8D330, &qword_27CB8D338, &qword_21796FD80);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21790916C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_51_1();
    v4 = sub_21796659C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2179091DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217909214(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_51_1();
    v5 = sub_21796659C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unsigned __int8 *_s23PlaylistDetailViewModelC6SourceOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s23PlaylistDetailViewModelC6SourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2179093F4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_217909410(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_217909440()
{
  sub_2179094E4(319, &qword_27CB8D350, &qword_27CB8D358, &unk_21796FDB8);
  if (v0 <= 0x3F)
  {
    sub_2179094E4(319, &qword_27CB8D360, &qword_27CB8AAE8, &qword_21796AFA0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2179094E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t _s23PlaylistDetailViewModelC12LoadingStateO4KindOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s23PlaylistDetailViewModelC12LoadingStateO4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_2179096B0()
{
  result = qword_27CB8D368;
  if (!qword_27CB8D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D368);
  }

  return result;
}

uint64_t sub_217909704@<X0>(uint64_t *a1@<X8>)
{
  _s23PlaylistDetailViewModelCMa(0);
  result = sub_21796654C();
  *a1 = result;
  return result;
}

uint64_t sub_21790978C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_83_2();
  v9 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_75_2();
  sub_2179099FC(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v2;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0);
      (*(v5 + 32))(v1, &v2[*(v15 + 48)], v3);
      MEMORY[0x21CEA86B0](2);
      MEMORY[0x21CEA86B0](v14);
      sub_217909B00();
      sub_217968ECC();
      return (*(v5 + 8))(v1, v3);
    }

    else
    {
      return MEMORY[0x21CEA86B0](0);
    }
  }

  else
  {
    v17 = *v2;
    v18 = *(v2 + 1);
    MEMORY[0x21CEA86B0](1);
    MEMORY[0x21CEA86B0](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    OUTLINED_FUNCTION_47_0();
    sub_21796925C();
  }
}

uint64_t sub_217909974()
{
  sub_21796973C();
  sub_21790978C();
  return sub_21796977C();
}

uint64_t sub_2179099C0()
{
  sub_21796973C();
  sub_21790978C();
  return sub_21796977C();
}

uint64_t sub_2179099FC(uint64_t a1, uint64_t a2)
{
  v4 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217909A60(uint64_t a1)
{
  v2 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217909ABC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_51_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217909B00()
{
  result = qword_27CB8D378;
  if (!qword_27CB8D378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAE8, &qword_21796AFA0);
    sub_217909ABC(&qword_27CB8D380, MEMORY[0x277CD8590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D378);
  }

  return result;
}

uint64_t sub_217909BD8()
{
  OUTLINED_FUNCTION_86();
  v2 = sub_217968E3C();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_83_2();
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_39_3();
  v9(v8);
  v10 = *v0;
  return sub_217903818(v1);
}

uint64_t sub_217909CA8()
{
  OUTLINED_FUNCTION_86();
  v2 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v3 = OUTLINED_FUNCTION_48(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_83_2();
  v6 = OUTLINED_FUNCTION_47_0();
  sub_2179099FC(v6, v7);
  v8 = *v0;
  return sub_217903938(v1);
}

uint64_t sub_217909D40()
{
  OUTLINED_FUNCTION_86();
  v1 = OUTLINED_FUNCTION_51_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_48(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_5();
  sub_2178745BC();
  v7 = *v0;
  return sub_217903A6C();
}

uint64_t sub_217909DD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_217903BB4();
}

uint64_t sub_217909E08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_51_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_217909E4C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

char *sub_217909E6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

char *sub_217909EA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

uint64_t sub_217909F0C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_86();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_3(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_39_3();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_39_3();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_217909FD8(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_21790A000()
{
  v1 = *v0;
  sub_21790A3A4();
  *v0 = v2;
}

void sub_21790A078()
{
  v1 = *v0;
  sub_21790A3A4();
  *v0 = v2;
}

uint64_t sub_21790A0D0()
{
  OUTLINED_FUNCTION_84();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_46_1();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2178655D0;
  v7 = OUTLINED_FUNCTION_8_6();

  return sub_217906460(v7, v8, v9, v4);
}

uint64_t sub_21790A170(uint64_t a1, uint64_t a2)
{
  v4 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21790A1D4()
{
  OUTLINED_FUNCTION_69_1();
  v2 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  OUTLINED_FUNCTION_48(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_46_1();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_217864540;
  v10 = OUTLINED_FUNCTION_8_6();

  return sub_2179051A0(v10, v11, v12, v7, v13);
}

void sub_21790A2B4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_49_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC00, &qword_21796F0B8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 32);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[32 * v9] <= v13)
    {
      memmove(v13, v14, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v9);
  }
}

void sub_21790A3A4()
{
  OUTLINED_FUNCTION_81();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_49_1();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_1();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_64_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(v6(0) - 8);
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_217909F0C(v8 + v26, v15, v22 + v26, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_80();
}

void sub_21790A580(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_49_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC08, &unk_2179700D0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_16_4()
{
  *(v0 + 8) = sub_217906CB0;
  v2 = v1[15];
  v3 = v1[12];
  return v1[6];
}

uint64_t OUTLINED_FUNCTION_24_6()
{
  v2 = *(v0 - 264);
  *(v0 - 184) = *(v0 - 272);
  *(v0 - 176) = v2;
  v3 = *(v0 - 304);

  return sub_21796949C();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[14];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[9];
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  v1 = v0[20];
  result = v0[17];
  v3 = v0[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_47_2()
{
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[6];

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_62_3()
{

  return sub_21796657C();
}

uint64_t OUTLINED_FUNCTION_63_2()
{
  v2 = *(v0 + 40);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_64_3()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_66_3()
{
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return sub_21796657C();
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_85_1()
{
  v2 = *(v0 - 296);

  return sub_21796948C();
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v2, 1, a1);
  v4 = *(v1 + 80);
  return result;
}

uint64_t sub_21790AB74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = sub_21796821C();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_21790AC3C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21796969C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_21796969C() & 1) == 0)
  {
    return 0;
  }

  v6 = _s35LibrarySectionContentViewPropertiesVMa();
  return *(a1 + *(v6 + 52)) == *(a2 + *(v6 + 52));
}

uint64_t sub_21790ACF0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_217968FCC();
  v6 = v2[2];
  v7 = v2[3];
  sub_217968FCC();
  return MEMORY[0x21CEA86B0](*(v2 + *(a2 + 52)));
}

uint64_t sub_21790AD40(uint64_t a1)
{
  sub_21796973C();
  sub_21790ACF0(v3, a1);
  return sub_21796977C();
}

uint64_t sub_21790AD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v9 = *a6;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = _s35LibrarySectionContentViewPropertiesVMa();
  v11 = *(v10 + 48);
  v12 = sub_21796821C();
  result = (*(*(v12 - 8) + 32))(&a7[v11], a5, v12);
  a7[*(v10 + 52)] = v9;
  return result;
}

BOOL sub_21790AE44(void *a1, void *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_21790AC3C(a1, a2);
}

uint64_t sub_21790AE78(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  sub_21790ACF0(v4, a2);
  return sub_21796977C();
}

uint64_t sub_21790AEBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    sub_2178B81FC();
    if (v6 > 0x3F)
    {
      return v5;
    }

    else
    {
      v7 = *(a1 + 24);
      v3 = _s11ArtworkViewV9ConstantsVMa();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_21790AF88(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21790B0FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21790B33C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_21790B394()
{
  OUTLINED_FUNCTION_5_9();
  if (qword_27CB8A378 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  v6 = (v0 + v1);

  *v6 = sub_21790B7F0();
  v6[1] = v7;
  v8 = (v0 + *(v3 + 52));
  __asm { FMOV            V1.2D, #5.0 }

  *v8 = xmmword_21796B360;
  v8[1] = _Q1;
  v8[2] = xmmword_21796B370;
  v14 = *(v2 - 8);
  v15 = OUTLINED_FUNCTION_8_10(v14);
  v16(v15);
  *(v0 + *(v3 + 36)) = v5;
  OUTLINED_FUNCTION_9_9();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v17 = OUTLINED_FUNCTION_6_6();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v19 = OUTLINED_FUNCTION_2_9();
  v20(v19);
  v21 = (*(v14 + 8))(v4, v2);
  OUTLINED_FUNCTION_3_13(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30[0]);
}

uint64_t sub_21790B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_217968C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5F0, &qword_217970328);
  v18 = v17[21];
  sub_2179664AC();
  sub_21796661C();
  sub_21796641C();
  v19 = sub_2179663BC();
  v20 = a4 + v17[9];
  *v20 = v19;
  *(v20 + 8) = v21 & 1;
  v22 = sub_21796640C();
  v23 = a4 + v17[10];
  *v23 = v22;
  *(v23 + 8) = v24 & 1;
  v25 = sub_21796637C();
  v26 = a4 + v17[11];
  *v26 = v25;
  *(v26 + 8) = v27 & 1;
  *(a4 + v17[12]) = sub_21796631C();
  v28 = sub_21796634C();
  v29 = (a4 + v17[13]);
  *v29 = v28;
  v29[1] = v30;
  v31 = sub_21796630C();
  v32 = (a4 + v17[14]);
  *v32 = v31;
  v32[1] = v33;
  v34 = a4 + v17[15];
  sub_21796632C();
  *(a4 + v17[17]) = sub_21796638C() & 1;
  *(a4 + v17[16]) = sub_21796636C();
  v35 = sub_21796635C();
  v36 = a4 + v17[18];
  *v36 = v35;
  *(v36 + 8) = v37;
  *(v36 + 16) = v38 & 1;
  v39 = (a4 + v17[19]);
  *v39 = a2;
  v39[1] = a3;
  sub_21796641C();
  LOBYTE(v18) = sub_217968BCC();
  (*(v9 + 8))(v12, v8);
  if (v18)
  {
    v40 = 1;
  }

  else
  {
    sub_21796641C();
    v40 = 0;
  }

  v41 = sub_21796643C();
  (*(*(v41 - 8) + 8))(a1, v41);
  __swift_storeEnumTagSinglePayload(v16, v40, 1, v8);
  return sub_2178B0264(v16, a4 + v17[20]);
}

uint64_t sub_21790B7AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2179664AC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_21796647C();
  *a1 = result;
  return result;
}

uint64_t sub_21790B7F0()
{
  _s13PreviewPlayerCMa();
  sub_2178B8260();
  OUTLINED_FUNCTION_63_0();

  return sub_2179668BC();
}

void sub_21790B838()
{
  OUTLINED_FUNCTION_5_9();
  if (qword_27CB8A378 != -1)
  {
    OUTLINED_FUNCTION_1_15();
  }

  v6 = (v0 + v1);

  *v6 = sub_21790B7F0();
  v6[1] = v7;
  v8 = (v0 + *(v3 + 52));
  __asm { FMOV            V1.2D, #5.0 }

  *v8 = xmmword_21796B360;
  v8[1] = _Q1;
  v8[2] = xmmword_21796B370;
  v14 = *(v2 - 8);
  v15 = OUTLINED_FUNCTION_8_10(v14);
  v16(v15);
  OUTLINED_FUNCTION_9_9();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v17 = OUTLINED_FUNCTION_6_6();
  v19 = v5 / v18(v17);
  __swift_destroy_boxed_opaque_existential_1(v31);
  *(v0 + *(v3 + 36)) = v19;
  v20 = OUTLINED_FUNCTION_2_9();
  v21(v20);
  v22 = (*(v14 + 8))(v4, v2);
  OUTLINED_FUNCTION_3_13(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31[0]);
}

double sub_21790B98C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_2179688CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    sub_2178653BC(v6, &qword_27CB8CA28, &unk_21796F610);
    return 0.0;
  }

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  (*(v8 + 32))(v11, v6, v7);
  v14 = *(v1 + *(a1 + 48) + 8);
  if ((sub_2178C93B0() & 1) == 0)
  {
    (*(v8 + 8))(v11, v7);
    return 0.0;
  }

  v15 = sub_2178C9990();
  (*(v8 + 8))(v11, v7);
  result = 0.0;
  if (v15)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_21790BB90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_217966A2C();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_217864B2C(&qword_27CB8D588, &qword_27CB8D580, &qword_2179702D8);
  *a2 = sub_217967E3C();
  a2[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D590, &qword_2179702E0);
  sub_21790BE64(v3, *(a1 + 16), *(a1 + 24), a2 + *(v12 + 44));
  v13 = *(v3 + *(a1 + 44));
  v14 = *(v7 + 28);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_217966DAC();
  OUTLINED_FUNCTION_3(v16);
  (*(v17 + 104))(&v10[v14], v15);
  *v10 = v13;
  *(v10 + 1) = v13;
  v18 = sub_217967ADC();
  v19 = v3 + *(a1 + 52);
  v20 = *(v19 + 32);
  sub_21796671C();
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D598, &qword_2179702E8) + 36);
  v22 = OUTLINED_FUNCTION_63_0();
  sub_217897E74(v22, v23);
  v24 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5A0, &qword_2179702F0) + 36)];
  v25 = v38;
  *v24 = *&v37[8];
  *(v24 + 1) = v25;
  *(v24 + 4) = v39;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5A8, &qword_2179702F8);
  *&v21[*(v26 + 52)] = v18;
  *&v21[*(v26 + 56)] = 256;
  v27 = sub_217967E3C();
  v29 = v28;
  sub_21788D5F4(v10);
  v30 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5B0, &qword_217970300) + 36)];
  *v30 = v27;
  v30[1] = v29;
  v31 = *(v19 + 40);
  *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5B8, &qword_217970308) + 36)] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5C0, &qword_217970310);
  sub_217864B2C(&qword_27CB8D5C8, &qword_27CB8D5C0, &qword_217970310);
  sub_21790DEBC();
  v32 = sub_2178935BC();
  v34 = v33;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5E8, &qword_217970320);
  v36 = &v21[*(result + 36)];
  *v36 = v32;
  v36[1] = v34;
  return result;
}

uint64_t sub_21790BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v142 = a1;
  v139 = a4;
  v138 = _s14PreviewControlVMa();
  v6 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v115 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v134 = &v113 - v10;
  v135 = sub_2179688CC();
  v114 = *(v135 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v135);
  v113 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D270, &qword_21796FC08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v137 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v136 = &v113 - v17;
  v18 = _s11ArtworkViewVMa();
  v131 = *(v18 - 8);
  v129 = *(v131 + 64);
  MEMORY[0x28223BE20](v18);
  v130 = &v113 - v19;
  v128 = sub_217968BAC();
  v127 = *(v128 - 8);
  v20 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_217968C2C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v140 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v113 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v113 - v34;
  v125 = sub_21796643C();
  v123 = *(v125 - 8);
  v36 = *(v123 + 64);
  v37 = MEMORY[0x28223BE20](v125);
  v122 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v113 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v116 = &v113 - v43;
  MEMORY[0x28223BE20](v42);
  v119 = &v113 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5F0, &qword_217970328);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v120 = &v113 - v47;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D5F8, &qword_217970330);
  v48 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v124 = &v113 - v49;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D600, &qword_217970338);
  v50 = *(*(v117 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v117);
  v132 = &v113 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v121 = &v113 - v54;
  MEMORY[0x28223BE20](v53);
  v143 = &v113 - v55;
  v144 = a2;
  v56 = a3;
  v57 = *(a3 + 88);
  v58 = v142;
  v59 = a2;
  v60 = v56;
  v57(v59);
  v62 = *(v18 + 36);
  v61 = *(v18 + 40);
  v133 = v18;
  v63 = *(v58 + v61);
  v64 = *(v58 + v62);
  sub_21788D484(v35, v33, &qword_27CB8BD60, &qword_21796CC60);
  if (__swift_getEnumTagSinglePayload(v33, 1, v22) == 1)
  {
    sub_217968BBC();
    if (__swift_getEnumTagSinglePayload(v33, 1, v22) != 1)
    {
      sub_2178653BC(v33, &qword_27CB8BD60, &qword_21796CC60);
    }
  }

  else
  {
    (*(v23 + 32))(v28, v33, v22);
  }

  (*(v23 + 16))(v140, v28, v22);
  sub_21796644C();
  (*(v23 + 8))(v28, v22);
  sub_2178653BC(v35, &qword_27CB8BD60, &qword_21796CC60);
  v141 = v60;
  sub_217938234();
  v65 = v146;
  v66 = v147;
  __swift_project_boxed_opaque_existential_1(&v145, v146);
  (*(v66 + 104))(v65, v66);
  __swift_destroy_boxed_opaque_existential_1(&v145);
  v67 = v116;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v68 = v123;
  v140 = *(v123 + 8);
  v69 = v125;
  (v140)(v41, v125);
  sub_217938234();
  v70 = v146;
  v71 = v147;
  __swift_project_boxed_opaque_existential_1(&v145, v146);
  v72 = v126;
  (*(v71 + 112))(v70, v71);
  v73 = v119;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v127 + 8))(v72, v128);
  (v140)(v67, v69);
  __swift_destroy_boxed_opaque_existential_1(&v145);
  v74 = v131;
  v75 = v130;
  v76 = v142;
  v77 = v133;
  (*(v131 + 16))(v130, v142, v133);
  v78 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v79 = swift_allocObject();
  v80 = v141;
  *(v79 + 16) = v144;
  *(v79 + 24) = v80;
  (*(v74 + 32))(v79 + v78, v75, v77);
  v81 = v122;
  (*(v68 + 16))(v122, v73, v69);
  v82 = v120;
  sub_21790B4E0(v81, sub_21790DF74, v79, v120);
  (v140)(v73, v69);
  v83 = sub_21790B98C(v77);
  sub_217864B2C(&qword_27CB8D608, &qword_27CB8D5F0, &qword_217970328);
  v84 = v124;
  sub_217898E78(v82, v124, &qword_27CB8D5F0, &qword_217970328);
  v85 = v84 + *(v118 + 36);
  *v85 = v83;
  *(v85 + 8) = 0;
  v86 = *(v76 + *(v77 + 44));
  sub_21790E030();
  v87 = v121;
  v88 = &v121[*(v117 + 36)];
  v89 = *(sub_217966A2C() + 20);
  v90 = *MEMORY[0x277CE0118];
  v91 = sub_217966DAC();
  (*(*(v91 - 8) + 104))(&v88[v89], v90, v91);
  *v88 = v86;
  *(v88 + 1) = v86;
  *&v88[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D618, &qword_217970340) + 36)] = 256;
  sub_217898E78(v84, v87, &qword_27CB8D5F8, &qword_217970330);
  sub_217898E78(v87, v143, &qword_27CB8D600, &qword_217970338);
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v92 = v134;
  v93 = v135;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v92, 0, 1, v93);
    v94 = v114;
    v95 = v113;
    (*(v114 + 32))(v113, v92, v93);
    v96 = v115;
    (*(v94 + 16))(v115, v95, v93);
    v97 = (v76 + *(v77 + 52));
    v99 = *v97;
    v98 = v97[1];
    v100 = v138;
    v101 = (v96 + *(v138 + 32));
    v102 = v136;
    if (qword_27CB8A378 != -1)
    {
      swift_once();
    }

    _s13PreviewPlayerCMa();
    sub_2178B8260();

    v103 = sub_2179668BC();
    v105 = v104;
    (*(v94 + 8))(v95, v93);
    *v101 = v103;
    v101[1] = v105;
    *(v96 + v100[5]) = v99;
    *(v96 + v100[6]) = v98;
    *(v96 + v100[7]) = 0;
    sub_2179029EC(v96, v102);
    v106 = 0;
  }

  else
  {
    v106 = 1;
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v93);
    sub_2178653BC(v92, &qword_27CB8CA28, &unk_21796F610);
    v100 = v138;
    v102 = v136;
  }

  __swift_storeEnumTagSinglePayload(v102, v106, 1, v100);
  v107 = v143;
  v108 = v132;
  sub_21788D484(v143, v132, &qword_27CB8D600, &qword_217970338);
  v109 = v137;
  sub_21788D484(v102, v137, &qword_27CB8D270, &qword_21796FC08);
  v110 = v139;
  sub_21788D484(v108, v139, &qword_27CB8D600, &qword_217970338);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D620, &qword_217970348);
  sub_21788D484(v109, v110 + *(v111 + 48), &qword_27CB8D270, &qword_21796FC08);
  sub_2178653BC(v102, &qword_27CB8D270, &qword_21796FC08);
  sub_2178653BC(v107, &qword_27CB8D600, &qword_217970338);
  sub_2178653BC(v109, &qword_27CB8D270, &qword_21796FC08);
  return sub_2178653BC(v108, &qword_27CB8D600, &qword_217970338);
}

uint64_t sub_21790CC84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217864B2C(&qword_27CB8D630, &qword_27CB8D628, &qword_217970350);
  *a2 = sub_217967E3C();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D638, &qword_217970358);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  return sub_21790CD10(v2, a2 + *(v6 + 44));
}

uint64_t sub_21790CD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D640, &qword_217970360);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8 - 6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D648, &qword_217970368);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  MEMORY[0x28223BE20](v13);
  v17 = &v32[-v16 - 6];
  sub_217967AFC();
  v18 = sub_217967B2C();

  v19 = _s11ArtworkViewVMa();
  v20 = *(a1 + v19[10]);
  v21 = *(a1 + v19[9]);
  sub_217967E3C();
  sub_2179667FC();
  *&v32[22] = v34;
  *&v32[38] = v35;
  *&v32[6] = v33;
  v22 = *(a1 + v19[11]);
  v23 = &v17[*(v11 + 44)];
  v24 = *(sub_217966A2C() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_217966DAC();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  *v23 = v22;
  *(v23 + 1) = v22;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D618, &qword_217970340) + 36)] = 256;
  *v17 = v18;
  *(v17 + 4) = 256;
  v27 = *&v32[16];
  *(v17 + 10) = *v32;
  *(v17 + 26) = v27;
  *(v17 + 42) = *&v32[32];
  *(v17 + 7) = *&v32[46];
  sub_21790D04C(v19, v9);
  sub_21788D484(v17, v15, &qword_27CB8D648, &qword_217970368);
  sub_21788D484(v9, v7, &qword_27CB8D640, &qword_217970360);
  v28 = v31;
  sub_21788D484(v15, v31, &qword_27CB8D648, &qword_217970368);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D650, &qword_217970370);
  sub_21788D484(v7, v28 + *(v29 + 48), &qword_27CB8D640, &qword_217970360);
  sub_2178653BC(v9, &qword_27CB8D640, &qword_217970360);
  sub_2178653BC(v17, &qword_27CB8D648, &qword_217970368);
  sub_2178653BC(v7, &qword_27CB8D640, &qword_217970360);
  return sub_2178653BC(v15, &qword_27CB8D648, &qword_217970368);
}

uint64_t sub_21790D04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v4 = sub_217967B9C();
  v91 = *(v4 - 8);
  v92 = v4;
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](v4);
  v90 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_217965D6C();
  v70 = *(v72 - 8);
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v88 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21796624C();
  v71 = *(v74 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v87 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_21796852C();
  v73 = *(v78 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x28223BE20](v78);
  v86 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_217968D2C();
  v77 = *(v85 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D658, &qword_217970378);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v79 = &v69 - v17;
  v81 = sub_217968D3C();
  v75 = *(v81 - 8);
  v18 = *(v75 + 64);
  v19 = MEMORY[0x28223BE20](v81);
  v76 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v80 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v69 - v24;
  v26 = sub_217968E3C();
  v83 = *(v26 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x28223BE20](v26);
  v82 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_217968AFC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 16);
  v34 = *(a1 + 24);
  v89 = a1;
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if (!swift_dynamicCast())
  {
    sub_217938234();
    v38 = v2;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
      v40 = v82;
      v39 = v83;
      (*(v83 + 32))(v82, v25, v26);
      v25 = v79;
      sub_217968D4C();
      v41 = v81;
      if (__swift_getEnumTagSinglePayload(v25, 1, v81) != 1)
      {
        v51 = v75;
        v52 = v25;
        v53 = v80;
        (*(v75 + 32))(v80, v52, v41);
        v54 = v76;
        (*(v51 + 16))(v76, v53, v41);
        v55 = (*(v51 + 88))(v54, v41);
        if (v55 != *MEMORY[0x277D2B3D8] && v55 != *MEMORY[0x277D2B3E0])
        {
          (*(v51 + 8))(v76, v41);
        }

        sub_2179674DC();
        v36 = sub_217967B4C();
        (*(v51 + 8))(v80, v41);
        (*(v83 + 8))(v82, v26);
        goto LABEL_25;
      }

      (*(v39 + 8))(v40, v26);
      v42 = &qword_27CB8D658;
      v43 = &qword_217970378;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
      v42 = qword_27CB8AC48;
      v43 = &unk_21796FF10;
    }

    sub_2178653BC(v25, v42, v43);
    sub_217938234();
    v45 = v84;
    v44 = v85;
    v46 = swift_dynamicCast();
    v48 = v87;
    v47 = v88;
    v49 = v86;
    if (v46)
    {
      (*(v77 + 8))(v45, v44);
      sub_2179674DC();
      if (qword_27CB8A350 != -1)
      {
        swift_once();
      }

      v36 = qword_27CB977C8;

LABEL_25:
      v37 = 0.5;
      goto LABEL_26;
    }

    sub_217938234();
    v50 = v78;
    if (swift_dynamicCast())
    {
      (*(v73 + 8))(v49, v50);
    }

    else
    {
      sub_217938234();
      v56 = v74;
      if (swift_dynamicCast())
      {
        (*(v71 + 8))(v48, v56);
      }

      else
      {
        sub_217938234();
        v57 = v72;
        if (!swift_dynamicCast())
        {
          sub_2179674DC();
          v37 = 0.4;
          goto LABEL_22;
        }

        (*(v70 + 8))(v47, v57);
      }
    }

    sub_2179674EC();
    v37 = 0.5;
LABEL_22:
    v36 = sub_217967B4C();
    goto LABEL_26;
  }

  (*(v30 + 8))(v33, v29);
  sub_2179674FC();
  v36 = sub_217967B4C();
  v37 = 0.46;
  v38 = v2;
LABEL_26:
  v58 = v37 * *(v38 + *(v89 + 40));

  sub_217938234();
  v59 = __dst[3];
  v60 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  (*(v60 + 104))(v59, v60);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  sub_217967BAC();
  v62 = v90;
  v61 = v91;
  v63 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x277CE0FE0], v92);
  v64 = sub_217967BDC();

  (*(v61 + 8))(v62, v63);
  sub_217967E3C();
  sub_2179667FC();
  *&v95[38] = v100;
  *&v95[22] = v99;
  *&v95[6] = v98;
  *(&v94[2] + 2) = *v95;
  v96 = 1;
  v94[0] = v64;
  v94[1] = 0;
  LOWORD(v94[2]) = 1;
  *(&v94[4] + 2) = *&v95[16];
  *(&v94[6] + 2) = *&v95[32];
  v94[8] = *(&v100 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D660, &qword_217970380);
  sub_21790E0E8();
  v65 = v93;
  sub_2179676AC();

  memcpy(__dst, v94, sizeof(__dst));
  sub_2178653BC(__dst, &qword_27CB8D660, &qword_217970380);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D640, &qword_217970360);
  v68 = (v65 + *(result + 36));
  *v68 = KeyPath;
  v68[1] = v36;
  return result;
}

uint64_t sub_21790DC80()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  sub_2178D0354(v0[2], v0[3]);
  v3 = v0[4];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[5];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v4);
}

uint64_t sub_21790DD0C()
{
  sub_21796973C();
  sub_21790DC80();
  return sub_21796977C();
}

BOOL sub_21790DD54(_OWORD *a1, __int128 *a2, uint64_t a3)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = *a2;
  v5 = a2[1];
  v10[2] = a1[2];
  v11[0] = v4;
  v6 = a2[2];
  v11[1] = v5;
  v11[2] = v6;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  return sub_21790DC14(v10, v11);
}

uint64_t sub_21790DDA4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_21790DD0C();
}

uint64_t sub_21790DDE0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_21790DC80();
}

uint64_t sub_21790DE1C()
{
  sub_21796973C();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_21790DC80();
  return sub_21796977C();
}

unint64_t sub_21790DEBC()
{
  result = qword_27CB8D5D0;
  if (!qword_27CB8D5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D5B8, &qword_217970308);
    sub_217864B2C(&qword_27CB8D5D8, &qword_27CB8D5E0, &qword_217970318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D5D0);
  }

  return result;
}

uint64_t sub_21790DF74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(_s11ArtworkViewVMa() - 8) + 80);

  return sub_21790CC48(a1);
}

unint64_t sub_21790E030()
{
  result = qword_27CB8D610;
  if (!qword_27CB8D610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D5F8, &qword_217970330);
    sub_217864B2C(&qword_27CB8D608, &qword_27CB8D5F0, &qword_217970328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D610);
  }

  return result;
}

unint64_t sub_21790E0E8()
{
  result = qword_27CB8D668;
  if (!qword_27CB8D668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D660, &qword_217970380);
    sub_21790E174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D668);
  }

  return result;
}

unint64_t sub_21790E174()
{
  result = qword_27CB8D670;
  if (!qword_27CB8D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D678, &qword_217970388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D670);
  }

  return result;
}

unint64_t sub_21790E1F8()
{
  result = qword_27CB8D680;
  if (!qword_27CB8D680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D598, &qword_2179702E8);
    sub_217864B2C(&qword_27CB8D5C8, &qword_27CB8D5C0, &qword_217970310);
    sub_217864B2C(qword_27CB8D688, &qword_27CB8D5E8, &qword_217970320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D680);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  *(v0 + *(v2 + 40)) = v4;
  v5 = *(v3 + 96);
  return v1;
}

void OUTLINED_FUNCTION_3_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v14 = v13 * 0.5;
  if (!a10)
  {
    v14 = v12;
  }

  *(v10 + *(v11 + 44)) = v14;
}

uint64_t OUTLINED_FUNCTION_5_9()
{
  result = _s11ArtworkViewVMa();
  v1 = *(result + 48);
  return result;
}

void OUTLINED_FUNCTION_9_9()
{

  sub_217938234();
}

__n128 sub_21790E3C4@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v12 = *a2;
  v21 = *(a2 + 8);
  v13 = *(a2 + 3);
  v14 = _s9VItemCellVMa();
  v15 = (a6 + v14[16]);
  _s9ViewModelCMa();
  swift_getWitnessTable();
  *v15 = sub_217966ACC();
  v15[1] = v16;
  v17 = a6 + v14[17];
  *v17 = xmmword_2179703C0;
  *(v17 + 16) = 0;
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v18 = a6 + v14[13];
  *v18 = v12;
  result = v21;
  *(v18 + 8) = v21;
  *(v18 + 24) = v13;
  *(a6 + v14[14]) = a7;
  v20 = (a6 + v14[15]);
  *v20 = a3;
  v20[1] = a4;
  return result;
}

uint64_t sub_21790E53C(void *a1)
{
  v2 = a1[2];
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    sub_217897C74();
    if (v6 > 0x3F)
    {
      return v5;
    }

    v7 = a1[3];
    v8 = a1[5];
    _s9ViewModelCMa();
    swift_getWitnessTable();
    v5 = sub_217966ADC();
    if (v9 > 0x3F)
    {
      return v5;
    }

    else
    {
      v12 = a1[4];
      v3 = _s9VItemCellV9ConstantsVMa();
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

_DWORD *sub_21790E684(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v17 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_21790E7E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              v17[2] = 0;
              v17[3] = 0;
              *v17 = (a2 - 0x7FFFFFFF);
              v17[1] = 0;
            }

            else
            {
              v17[2] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21790EA04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21790EA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v127 = sub_217966FAC();
  v4 = OUTLINED_FUNCTION_2(v127);
  v125 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v124 = v8;
  v9 = sub_2179669FC();
  v123 = *(v9 - 8);
  v10 = *(v123 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v11);
  v120 = sub_217966A2C();
  v12 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v13);
  v112 = a1;
  v118 = (a1 + 24);
  v119 = (a1 + 40);
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v117 = _s20DetailViewPropertiesVMa();
  v16 = *(*(sub_21796944C() - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  v115 = v14;
  v116 = v15;
  _s11ArtworkViewVMa();
  sub_21796698C();
  sub_21796732C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  _s9CellTitleVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_217967B7C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_9();
  v20 = sub_217967CDC();
  v111 = v20;
  v109 = OUTLINED_FUNCTION_7_11();
  v135 = v20;
  v136 = MEMORY[0x277D84A98];
  v137 = v109;
  v138 = MEMORY[0x277CE1538];
  v21 = sub_21796688C();
  OUTLINED_FUNCTION_2(v21);
  v110 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v26);
  v27 = sub_21796698C();
  OUTLINED_FUNCTION_2(v27);
  v114 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  v104 = v27;
  v33 = sub_21796698C();
  v113 = *(v33 - 8);
  v34 = *(v113 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v36);
  OUTLINED_FUNCTION_11_7();
  WitnessTable = swift_getWitnessTable();
  v134 = MEMORY[0x277CDF918];
  v37 = swift_getWitnessTable();
  v99 = v37;
  OUTLINED_FUNCTION_20_1();
  v39 = sub_217864B2C(v38, &qword_27CB8ADF0, &qword_21796B500);
  v131 = v37;
  v132 = v39;
  v40 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_16();
  v43 = sub_217910E88(v41, v42);
  v135 = v33;
  v136 = v9;
  v96 = v33;
  v95 = v9;
  v137 = v40;
  v138 = v43;
  v98 = v40;
  v44 = v43;
  v97 = v43;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(OpaqueTypeMetadata2);
  v107 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v50);
  v135 = v33;
  v136 = v9;
  v137 = v40;
  v138 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_14();
  v54 = sub_217910E88(v52, v53);
  v135 = OpaqueTypeMetadata2;
  v136 = v127;
  v137 = OpaqueTypeConformance2;
  v138 = v54;
  v101 = MEMORY[0x277CDE6B0];
  v102 = swift_getOpaqueTypeMetadata2();
  v55 = OUTLINED_FUNCTION_2(v102);
  v103 = v56;
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v55);
  v93 = &v92 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52(&v92 - v61);
  v62 = v112;
  sub_21790F52C(v112, v19);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v117);
  *&v63 = v115;
  *(&v63 + 1) = *v118;
  *&v64 = v116;
  *(&v64 + 1) = *v119;
  v128 = v63;
  v129 = v64;
  v130 = v2;
  swift_getWitnessTable();
  v65 = v106;
  sub_21796687C();
  v66 = v2 + *(v62 + 68);
  v67 = *(v66 + 16);
  v68 = v105;
  sub_2179679FC();
  OUTLINED_FUNCTION_54(&v138);
  v69(v65, v21);
  v70 = *(v66 + 8);
  v71 = *(v120 + 20);
  v72 = *MEMORY[0x277CE0118];
  v73 = sub_217966DAC();
  v74 = v121;
  (*(*(v73 - 8) + 104))(v121 + v71, v72, v73);
  *v74 = v70;
  v74[1] = v70;
  sub_217910E88(&qword_27CB8B050, MEMORY[0x277CDFC08]);
  v75 = v104;
  sub_217862E84();
  v76 = v108;
  sub_21796779C();
  sub_21788D5F4(v74);
  OUTLINED_FUNCTION_54(&v140);
  v77(v68, v75);
  v78 = v122;
  sub_2179669EC();
  v79 = v94;
  v80 = v96;
  v81 = v95;
  sub_2179676FC();
  OUTLINED_FUNCTION_54(&v141);
  v82(v78, v81);
  OUTLINED_FUNCTION_54(&v139);
  v83(v76, v80);
  v84 = v124;
  v85 = v127;
  sub_217884F70();
  OUTLINED_FUNCTION_59();
  v86 = v93;
  sub_21796773C();
  (*(v125 + 8))(v84, v85);
  OUTLINED_FUNCTION_54(&v135);
  v87(v79, OpaqueTypeMetadata2);
  v135 = OpaqueTypeMetadata2;
  v136 = v85;
  v137 = OpaqueTypeConformance2;
  v138 = v54;
  swift_getOpaqueTypeConformance2();
  v88 = v100;
  v89 = v102;
  sub_2179560E4(v86, v102);
  v90 = *(v103 + 8);
  v90(v86, v89);
  sub_2179560E4(v88, v89);
  return (v90)(v88, v89);
}

unint64_t sub_21790F52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8, v2, v5);
  v10 = v2 + *(a1 + 52);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v16[0] = *v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v14 = *(a1 + 32);
  sub_217920EC4(v8, v16, 0, 0, v5, a2);

  return sub_217863EC4(v13);
}

uint64_t sub_21790F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v23 = a5;
  v24 = a6;
  _s11ArtworkViewVMa();
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  _s9CellTitleVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_217967B7C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  v9 = sub_217967CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  (*(a4 + 96))(&v25, a2, a4);
  if (v25 == 1)
  {
    v17 = sub_217966E5C();
  }

  else
  {
    v17 = sub_217966E6C();
  }

  MEMORY[0x28223BE20](v17);
  v19 = v22;
  v18 = v23;
  *(&v22 - 6) = a2;
  *(&v22 - 5) = v19;
  *(&v22 - 4) = a4;
  *(&v22 - 3) = v18;
  *(&v22 - 2) = a1;
  sub_217967CCC();
  swift_getWitnessTable();
  sub_2179560E4(v14, v9);
  v20 = *(v10 + 8);
  v20(v14, v9);
  sub_2179560E4(v16, v9);
  return (v20)(v16, v9);
}

uint64_t sub_21790F97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v92 = a3;
  v93 = a5;
  v88 = a6;
  _s9CellTitleVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
  swift_getTupleTypeMetadata2();
  v79 = sub_217967E9C();
  v9 = sub_217967B7C();
  v82 = *(v9 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v9);
  v94 = &v73 - v11;
  v83 = v12;
  v87 = sub_21796698C();
  v85 = *(v87 - 8);
  v13 = *(v85 + 64);
  v14 = MEMORY[0x28223BE20](v87);
  v86 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v73 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v73 - v19;
  v20 = *(a2 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s11ArtworkViewVMa();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v73 - v27;
  v29 = sub_21796698C();
  v76 = *(v29 - 8);
  v30 = *(v76 + 64);
  MEMORY[0x28223BE20](v29);
  v74 = &v73 - v31;
  v91 = sub_21796698C();
  v89 = *(v91 - 8);
  v32 = *(v89 + 64);
  v33 = MEMORY[0x28223BE20](v91);
  v80 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v75 = &v73 - v36;
  MEMORY[0x28223BE20](v35);
  v90 = &v73 - v37;
  (*(v20 + 16))(v23, a1, a2);
  *&v98 = a2;
  *(&v98 + 1) = v92;
  v99 = a4;
  v100 = v93;
  v38 = _s9VItemCellVMa();
  v39 = *(a1 + *(v38 + 56));
  v40 = *(a4 + 96);
  v41 = a2;
  v42 = a2;
  v43 = a4;
  v78 = a4 + 96;
  v77 = v40;
  v40(&v98, v42, a4);
  v73 = a1;
  if (v98 != 1)
  {
    v44 = *(a1 + *(v38 + 68));
  }

  sub_21790B838();
  sub_217967E4C();
  WitnessTable = swift_getWitnessTable();
  v46 = v74;
  sub_21796799C();
  (*(v25 + 8))(v28, v24);
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v47 = qword_27CB979F0;
  v98 = xmmword_27CB979E0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

  v48 = v98;
  v97[7] = WitnessTable;
  v97[8] = MEMORY[0x277CDF678];
  v49 = swift_getWitnessTable();
  v50 = v75;
  sub_2178ED854(v48, *(&v48 + 1), v47);

  (*(v76 + 8))(v46, v29);
  v51 = sub_217910E88(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v97[5] = v49;
  v97[6] = v51;
  v52 = v91;
  v74 = swift_getWitnessTable();
  sub_2179560E4(v50, v52);
  v53 = *(v89 + 8);
  v76 = v89 + 8;
  v75 = v53;
  v54 = (v53)(v50, v52);
  MEMORY[0x28223BE20](v54);
  v56 = v92;
  v55 = v93;
  *(&v73 - 6) = v41;
  *(&v73 - 5) = v56;
  *(&v73 - 4) = v43;
  *(&v73 - 3) = v55;
  *(&v73 - 2) = v73;
  v57 = swift_getWitnessTable();
  sub_217967B6C();
  v77(&v98, v41, v43);
  if (v98 == 1)
  {
    sub_217967E3C();
  }

  else
  {
    sub_217967E4C();
  }

  v97[4] = v57;
  v58 = v83;
  v59 = swift_getWitnessTable();
  v60 = v81;
  v61 = v94;
  sub_21796799C();
  (*(v82 + 8))(v61, v58);
  v97[2] = v59;
  v97[3] = MEMORY[0x277CDF678];
  v62 = v87;
  v63 = swift_getWitnessTable();
  v64 = v84;
  sub_2179560E4(v60, v62);
  v65 = v85;
  v66 = *(v85 + 8);
  v66(v60, v62);
  v67 = v80;
  v68 = v90;
  v69 = v91;
  (*(v89 + 16))(v80, v90, v91);
  *&v98 = v67;
  v70 = v86;
  (*(v65 + 16))(v86, v64, v62);
  *(&v98 + 1) = v70;
  v97[0] = v69;
  v97[1] = v62;
  v95 = v74;
  v96 = v63;
  sub_2178B9390(&v98, 2, v97);
  v66(v64, v62);
  v71 = v75;
  (v75)(v68, v69);
  v66(v70, v62);
  return v71(v67, v69);
}

uint64_t sub_2179103EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v60 = a3;
  v68 = a1;
  v66 = a6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D790, &qword_2179704F8);
  v8 = *(*(v63 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v63);
  v65 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v54 - v12;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s9CellTitleVMa();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v54 - v20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  v22 = sub_21796698C();
  v56 = *(v22 - 8);
  v23 = *(v56 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - v24;
  sub_21796732C();
  v26 = sub_21796698C();
  v57 = *(v26 - 8);
  v27 = *(v57 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v59 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v67 = &v54 - v30;
  (*(v13 + 16))(v16, v68, a2);
  v31 = sub_217862E84();
  v58 = a2;
  v61 = a4;
  sub_2178C6F54(v16, v31 & 1, 1, a2, v21);
  WitnessTable = swift_getWitnessTable();
  v55 = v25;
  sub_217967AAC();
  (*(v18 + 8))(v21, v17);
  if (qword_27CB8A3F0 != -1)
  {
    swift_once();
  }

  v33 = *(&xmmword_27CB979E0 + 1);
  v54 = xmmword_27CB979E0;
  v34 = qword_27CB979F0;
  v72 = xmmword_27CB979E0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

  v35 = v72;
  v36 = sub_217864B2C(&qword_27CB8A890, &qword_27CB8A898, &unk_21796ACA0);
  v77 = WitnessTable;
  v78 = v36;
  v37 = swift_getWitnessTable();
  v38 = v59;
  v39 = v55;
  sub_2178ED854(v35, *(&v35 + 1), v34);

  (*(v56 + 8))(v39, v22);
  v40 = sub_217910E88(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v75 = v37;
  v76 = v40;
  v55 = swift_getWitnessTable();
  sub_2179560E4(v38, v26);
  v41 = v57;
  v56 = *(v57 + 8);
  (v56)(v38, v26);
  *&v72 = v58;
  *(&v72 + 1) = v60;
  v73 = v61;
  v74 = v62;
  v42 = _s9VItemCellVMa();
  v43 = sub_217910B3C(v42);
  v45 = v44;
  LOWORD(v37) = v46;
  *&v72 = v54;
  *(&v72 + 1) = v33;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974627573, 0xE800000000000000);

  v47 = v72;
  *&v72 = v43;
  *(&v72 + 1) = v45;
  LOWORD(v73) = v37 & 0x101;
  sub_2178EE0A8(v47, *(&v47 + 1), v34);

  sub_2178FE668();
  v48 = v64;
  sub_21796790C();

  v49 = v67;
  (*(v41 + 16))(v38, v67, v26);
  *&v72 = v38;
  v50 = v65;
  sub_217910F00(v48, v65);
  *(&v72 + 1) = v50;
  v71[0] = v26;
  v71[1] = v63;
  v69 = v55;
  v70 = sub_217910F70();
  sub_2178B9390(&v72, 2, v71);
  sub_21791102C(v48);
  v51 = v49;
  v52 = v56;
  (v56)(v51, v26);
  sub_21791102C(v50);
  return v52(v38, v26);
}

uint64_t sub_217910B3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v8 + *(v4 + 60));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    (*(v5 + 16))(v7);
    v10 = sub_2178C4D74(v7, 0, 0, v2, *(a1 + 32));
  }

  return v10;
}

BOOL sub_217910C58(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 == a4;
  if (a2 != a5)
  {
    v6 = 0;
  }

  return a3 == a6 && v6;
}

uint64_t sub_217910C74(double a1, double a2, double a3)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&a1);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x21CEA86D0](*&v5);
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  return MEMORY[0x21CEA86D0](*&v6);
}

uint64_t sub_217910CE0(double a1, double a2, double a3)
{
  sub_21796973C();
  sub_217910C74(a1, a2, a3);
  return sub_21796977C();
}

BOOL sub_217910D70(double *a1, double *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a3[4];
  v11 = a3[5];
  return sub_217910C58(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_217910D90(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_217910CE0(*v1, v1[1], v1[2]);
}

uint64_t sub_217910DA8(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_217910C74(*v2, v2[1], v2[2]);
}

uint64_t sub_217910DC0(uint64_t a1, void *a2)
{
  sub_21796973C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_217910C74(*v2, v2[1], v2[2]);
  return sub_21796977C();
}

uint64_t sub_217910E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217910E88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217910F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D790, &qword_2179704F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_217910F70()
{
  result = qword_27CB8D798[0];
  if (!qword_27CB8D798[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D790, &qword_2179704F8);
    sub_2178FE668();
    sub_217910E88(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8D798);
  }

  return result;
}

uint64_t sub_21791102C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D790, &qword_2179704F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return swift_getWitnessTable();
}

uint64_t sub_2179110EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = sub_217911180();
  v9[1] = v6;
  v7 = _s34NavigationDestinationsViewModifierVMa();
  MEMORY[0x21CEA69A0](v9, a2, v7, a4);
}

uint64_t sub_217911180()
{
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();

  return sub_217966ACC();
}

uint64_t sub_2179111E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_217911264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_81();
  a19 = v20;
  a20 = v21;
  v539 = v22;
  v546 = v23;
  v515[2] = v24;
  v516 = v25;
  v549 = v26;
  v550 = v27;
  _s34NavigationDestinationsViewModifierVMa();
  OUTLINED_FUNCTION_58_3();
  OUTLINED_FUNCTION_12();
  v536 = sub_2179670BC();
  v537 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0C0, &unk_2179705C0);
  OUTLINED_FUNCTION_36_4();
  _s15AlbumDetailViewVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_36_4();
  _s16ArtistDetailViewVMa();
  sub_21796698C();
  sub_217966F9C();
  OUTLINED_FUNCTION_36_4();
  _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_36_4();
  _s24PlaylistFolderDetailViewVMa();
  sub_217966F9C();
  v547 = sub_217966F9C();
  v548 = sub_217966F9C();
  OUTLINED_FUNCTION_45_2();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_44_2();
  v544 = v29;
  v538 = sub_217864B2C(v30, &qword_27CB8B0C0, &unk_2179705C0);
  OUTLINED_FUNCTION_3_15();
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x277CE0790];
  v567[1] = v31;
  v567[2] = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_56_4();
  v545 = v33;
  v34 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_10();
  v566[8] = swift_getWitnessTable();
  v567[0] = v32;
  v566[6] = v34;
  v566[7] = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_7();
  v35 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_17();
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_15();
  v566[4] = v36;
  v566[5] = swift_getWitnessTable();
  v566[2] = v35;
  v566[3] = swift_getWitnessTable();
  v566[0] = swift_getWitnessTable();
  v566[1] = MEMORY[0x277CE1410];
  v37 = v548;
  v38 = swift_getWitnessTable();
  v560 = v536;
  v561 = v537;
  v562 = v548;
  v563 = WitnessTable;
  v39 = WitnessTable;
  v514 = WitnessTable;
  v564 = v538;
  v565 = v38;
  v40 = MEMORY[0x277CDEB90];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(OpaqueTypeMetadata2, v566);
  v515[1] = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AF58, &qword_21796B660);
  v560 = v536;
  v561 = v537;
  v563 = v39;
  v564 = v538;
  v565 = v38;
  v48 = v38;
  v540 = v38;
  v49 = OUTLINED_FUNCTION_93_1();
  OUTLINED_FUNCTION_86_2();
  v51 = *(v50 - 256);
  v560 = v535[2];
  v561 = v47;
  v510[4] = v47;
  v562 = v548;
  v563 = v49;
  v511 = v49;
  v564 = sub_217864B2C(v52, v53, v54);
  v565 = v38;
  v55 = v564;
  OUTLINED_FUNCTION_12_6(v564, &v536);
  v56 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v56, &v564);
  v515[0] = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v61);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D820, &qword_2179705D0);
  OUTLINED_FUNCTION_83_3();
  v62 = v37;
  v562 = v37;
  v563 = v49;
  v63 = v540;
  v564 = v55;
  v565 = v540;
  v64 = OUTLINED_FUNCTION_93_1();
  OUTLINED_FUNCTION_152();
  v68 = sub_217864B2C(v65, v66, v67);
  v69 = v535[0];
  v560 = v535[0];
  v561 = v48;
  v510[0] = v48;
  v562 = v62;
  v563 = v64;
  v70 = v64;
  v510[2] = v64;
  v71 = OUTLINED_FUNCTION_68_4(v68);
  OUTLINED_FUNCTION_12_6(v71, v534);
  v72 = v40;
  v73 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v513[1] = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D830, &qword_2179705D8);
  v560 = v69;
  v561 = v48;
  v80 = v548;
  v562 = v548;
  v563 = v70;
  v81 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_86_2();
  v83 = *(v82 - 256);
  v87 = sub_217864B2C(v84, v85, v86);
  v508[0] = v73;
  v560 = v73;
  v561 = v79;
  v507[1] = v79;
  v562 = v80;
  v563 = v81;
  v508[2] = v81;
  v88 = OUTLINED_FUNCTION_68_4(v87);
  OUTLINED_FUNCTION_12_6(v88, &v529);
  v89 = OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_8_5(v89, &v562);
  v513[0] = v90;
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v94);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D840, &qword_2179705E0);
  OUTLINED_FUNCTION_83_3();
  v95 = v548;
  v562 = v548;
  v563 = v81;
  v96 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_152();
  v100 = sub_217864B2C(v97, v98, v99);
  v101 = v534[0];
  v560 = v534[0];
  v561 = v80;
  v505[2] = v80;
  v562 = v95;
  v563 = v96;
  v102 = v96;
  v506 = v96;
  v103 = OUTLINED_FUNCTION_68_4(v100);
  OUTLINED_FUNCTION_12_6(v103, &v524);
  v104 = OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_0_1();
  v510[3] = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D850, &qword_2179705E8);
  v560 = v101;
  v561 = v80;
  v111 = v548;
  v562 = v548;
  v563 = v102;
  v112 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_86_2();
  v114 = *(v113 - 256);
  v118 = sub_217864B2C(v115, v116, v117);
  v503 = v104;
  v560 = v104;
  v561 = v110;
  v502[3] = v110;
  v562 = v111;
  v563 = v112;
  v504[1] = v112;
  v119 = OUTLINED_FUNCTION_68_4(v118);
  OUTLINED_FUNCTION_12_6(v119, &v519);
  v120 = OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_8_5(v120, &v561);
  v509 = v121;
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v125);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D860, &qword_2179705F0);
  OUTLINED_FUNCTION_83_3();
  v126 = v548;
  v562 = v548;
  v563 = v112;
  v127 = OUTLINED_FUNCTION_35_2();
  v128 = sub_217864B2C(&qword_27CB8D868, &qword_27CB8D860, &qword_2179705F0);
  v129 = v533;
  v560 = v533;
  v561 = v80;
  v501 = v80;
  v562 = v126;
  v563 = v127;
  v130 = v126;
  v502[0] = v127;
  v131 = OUTLINED_FUNCTION_68_4(v128);
  OUTLINED_FUNCTION_12_6(v131, v515);
  v132 = OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_8_5(v132, &v560);
  v507[0] = v133;
  v135 = *(v134 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D870, &qword_2179705F8);
  v560 = v129;
  v561 = v80;
  v562 = v130;
  v563 = v127;
  v139 = OUTLINED_FUNCTION_35_2();
  v140 = sub_217864B2C(&qword_27CB8D878, &qword_27CB8D870, &qword_2179705F8);
  v560 = v532;
  v561 = v138;
  v499[0] = v138;
  v562 = v130;
  v563 = v139;
  v141 = v139;
  v499[2] = v139;
  v142 = OUTLINED_FUNCTION_68_4(v140);
  OUTLINED_FUNCTION_12_6(v142, v513);
  v143 = OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_0_1();
  v505[1] = v144;
  v146 = *(v145 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v148);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D880, &qword_217970600);
  OUTLINED_FUNCTION_83_3();
  v562 = v130;
  v563 = v141;
  v564 = v55;
  v565 = v63;
  v149 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_86_2();
  v152 = *(v151 - 256);
  v156 = sub_217864B2C(v153, v154, v155);
  v560 = v143;
  v561 = v80;
  v157 = v143;
  v496[2] = v143;
  v496[1] = v80;
  v562 = v130;
  v563 = OpaqueTypeConformance2;
  v158 = v130;
  v497 = OpaqueTypeConformance2;
  v564 = v156;
  v565 = v63;
  v159 = v156;
  v496[3] = v156;
  v160 = v63;
  v161 = v149;
  v162 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v502[2] = v163;
  v165 = *(v164 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v167);
  v168 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D890, &qword_217970608);
  OUTLINED_FUNCTION_69_2(v168, &v559);
  v169 = sub_2179688CC();
  v519 = v169;
  OUTLINED_FUNCTION_52_3();
  v521 = sub_217916A20(v170, v171);
  v172 = v549;
  v560 = v169;
  v561 = v549;
  v562 = v521;
  v563 = v550;
  OUTLINED_FUNCTION_59_3();
  v173 = _s21AdditionalContentViewVMa();
  v560 = v157;
  v561 = v80;
  v562 = v158;
  v563 = OpaqueTypeConformance2;
  v564 = v159;
  v565 = v160;
  v547 = v161;
  v174 = swift_getOpaqueTypeConformance2();
  v544 = &unk_21796B2B8;
  v175 = sub_217864B2C(&qword_27CB8D898, &qword_27CB8D890, &qword_217970608);
  OUTLINED_FUNCTION_15_6();
  v543 = v176;
  v177 = swift_getWitnessTable();
  v178 = v162;
  v493[2] = v162;
  v179 = v531;
  v560 = v162;
  v561 = v531;
  v562 = v173;
  v563 = v174;
  v493[0] = v173;
  v495 = v174;
  v564 = v175;
  v565 = v177;
  v494 = v175;
  OUTLINED_FUNCTION_12_6(v177, v508);
  v180 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v180, &v558);
  v498[1] = v181;
  v183 = *(v182 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v185);
  v186 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8A0, &qword_217970610);
  v187 = sub_217968A2C();
  OUTLINED_FUNCTION_50_3();
  v190 = sub_217916A20(v188, v189);
  v560 = v187;
  v561 = v172;
  v562 = v190;
  v563 = v550;
  OUTLINED_FUNCTION_59_3();
  v191 = _s21AdditionalContentViewVMa();
  v560 = v178;
  v561 = v179;
  v562 = v173;
  v563 = v174;
  v564 = v175;
  v565 = v177;
  OUTLINED_FUNCTION_74_2();
  v193 = *(v192 - 256);
  v194 = OUTLINED_FUNCTION_93_1();
  v195 = sub_217864B2C(&qword_27CB8D8A8, &qword_27CB8D8A0, &qword_217970610);
  v196 = swift_getWitnessTable();
  v197 = v530;
  v560 = v530;
  v561 = v186;
  v490[1] = v186;
  v562 = v191;
  v563 = v194;
  v198 = v191;
  v489[1] = v191;
  v199 = v194;
  v491 = v194;
  v564 = v195;
  v565 = v196;
  v490[2] = v195;
  OUTLINED_FUNCTION_12_6(v196, v505);
  v200 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v200, &v557);
  v496[0] = v201;
  v203 = *(v202 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v205);
  v206 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8B0, &qword_217970618);
  v207 = sub_217968E3C();
  OUTLINED_FUNCTION_49_3();
  sub_217916A20(v208, v209);
  OUTLINED_FUNCTION_84_2();
  v560 = v207;
  v561 = v210;
  v211 = v550;
  v562 = v212;
  v563 = v550;
  OUTLINED_FUNCTION_59_3();
  v213 = _s21AdditionalContentViewVMa();
  v560 = v197;
  v561 = v186;
  v562 = v198;
  v563 = v199;
  v564 = v195;
  v565 = v196;
  v214 = OUTLINED_FUNCTION_92_1();
  v215 = sub_217864B2C(&qword_27CB8D8B8, &qword_27CB8D8B0, &qword_217970618);
  v216 = swift_getWitnessTable();
  v217 = v529;
  v560 = v529;
  v561 = v206;
  v218 = v206;
  v487[1] = v206;
  v562 = v213;
  v563 = v214;
  v486 = v213;
  v219 = v214;
  v487[3] = v214;
  v564 = v215;
  v565 = v216;
  v220 = v215;
  v487[2] = v215;
  v221 = v216;
  OUTLINED_FUNCTION_12_6(v216, v502);
  v222 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v222, &v556);
  v492[1] = v223;
  v225 = *(v224 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v226);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v227);
  v228 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8C0, &qword_217970620);
  OUTLINED_FUNCTION_69_2(v228, &v555);
  v229 = sub_2179689AC();
  v518 = v229;
  OUTLINED_FUNCTION_47_3();
  v520 = sub_217916A20(v230, v231);
  OUTLINED_FUNCTION_84_2();
  v560 = v229;
  v561 = v232;
  v562 = v233;
  v563 = v211;
  OUTLINED_FUNCTION_59_3();
  v234 = _s21AdditionalContentViewVMa();
  v560 = v217;
  v561 = v218;
  v562 = v213;
  v563 = v219;
  v564 = v220;
  v565 = v221;
  v235 = OUTLINED_FUNCTION_95_1();
  v236 = sub_217864B2C(&qword_27CB8D8C8, &qword_27CB8D8C0, &qword_217970620);
  v237 = swift_getWitnessTable();
  v238 = v528;
  v239 = v527;
  v560 = v528;
  v561 = v527;
  v562 = v234;
  v563 = v235;
  v484 = v234;
  v240 = v235;
  v485[2] = v235;
  v564 = v236;
  v565 = v237;
  v241 = v236;
  v485[1] = v236;
  OUTLINED_FUNCTION_12_6(v237, v499);
  v242 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v242, &v554);
  v489[0] = v243;
  v245 = *(v244 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v246);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v247);
  v248 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8D0, &qword_217970628);
  v249 = sub_217968AFC();
  v541 = v249;
  OUTLINED_FUNCTION_55_3();
  v542 = sub_217916A20(v250, v251);
  v252 = v549;
  v560 = v249;
  v561 = v549;
  v253 = v550;
  v562 = v542;
  v563 = v550;
  OUTLINED_FUNCTION_59_3();
  v254 = _s21AdditionalContentViewVMa();
  v560 = v238;
  v561 = v239;
  v562 = v234;
  v563 = v240;
  v564 = v241;
  v565 = v237;
  OUTLINED_FUNCTION_74_2();
  v256 = *(v255 - 256);
  v257 = swift_getOpaqueTypeConformance2();
  v258 = sub_217864B2C(&qword_27CB8D8D8, &qword_27CB8D8D0, &qword_217970628);
  v259 = swift_getWitnessTable();
  v260 = v526;
  v560 = v526;
  v561 = v248;
  v562 = v254;
  v563 = v257;
  v564 = v258;
  v565 = v259;
  OUTLINED_FUNCTION_12_6(v259, v496);
  v261 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v261, &v553);
  v485[4] = v262;
  v264 = *(v263 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v265);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v266);
  v267 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8E0, &qword_217970630);
  OUTLINED_FUNCTION_34_2(v267, &v552);
  v560 = v268;
  v561 = v252;
  v562 = MEMORY[0x277CD8408];
  v563 = v542;
  v564 = v253;
  OUTLINED_FUNCTION_59_3();
  _s25LibrarySectionContentViewVMa();
  v269 = sub_21796732C();
  OUTLINED_FUNCTION_69_2(v269, v567);
  v270 = sub_21796698C();
  v560 = v260;
  v561 = v248;
  v562 = v254;
  v563 = v257;
  v564 = v258;
  v565 = v259;
  v271 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_53_2();
  v543 = v272;
  v274 = sub_217864B2C(v273, &qword_27CB8D8E0, &qword_217970630);
  OUTLINED_FUNCTION_17_8();
  v542 = v275;
  v276 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_5();
  v541 = sub_217916A20(v277, v278);
  v558 = v276;
  v559 = v541;
  v279 = swift_getWitnessTable();
  v280 = v525;
  v281 = v524;
  v560 = v525;
  v561 = v524;
  v562 = v270;
  v563 = v271;
  v564 = v274;
  v565 = v279;
  OUTLINED_FUNCTION_12_6(v279, v493);
  v282 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v282, &v551);
  v284 = *(v283 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v286);
  v522 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D8F0, &qword_217970638);
  OUTLINED_FUNCTION_84_2();
  v560 = v288;
  v561 = v287;
  v562 = MEMORY[0x277CD82A8];
  v563 = v520;
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_27_4();
  v289 = OUTLINED_FUNCTION_98_0();
  v560 = v280;
  v561 = v281;
  v562 = v270;
  v563 = v271;
  v564 = v274;
  v565 = v279;
  v290 = swift_getOpaqueTypeConformance2();
  v291 = OUTLINED_FUNCTION_97_0(&qword_27CB8D8F8, &qword_27CB8D8F0, &qword_217970638);
  v292 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_34_2(v292, &a18);
  v557 = v293;
  v294 = swift_getWitnessTable();
  v295 = v523;
  v296 = v522;
  v560 = v523;
  v561 = v522;
  v562 = v289;
  v563 = v290;
  v297 = v290;
  v564 = v291;
  v565 = v294;
  v298 = v294;
  OUTLINED_FUNCTION_12_6(v294, v490);
  v299 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v299, &v549);
  v301 = *(v300 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v302);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v303);
  v304 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D900, &qword_217970640);
  OUTLINED_FUNCTION_84_2();
  v560 = v306;
  v561 = v305;
  v562 = MEMORY[0x277CD8200];
  v563 = v521;
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_27_4();
  v307 = OUTLINED_FUNCTION_98_0();
  v560 = v295;
  v561 = v296;
  v562 = v289;
  v563 = v297;
  v564 = v291;
  v565 = v298;
  v308 = OUTLINED_FUNCTION_92_1();
  v309 = OUTLINED_FUNCTION_97_0(&qword_27CB8D908, &qword_27CB8D900, &qword_217970640);
  v310 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_34_2(v310, &a16);
  v555 = v311;
  v312 = v307;
  v521 = v307;
  v313 = swift_getWitnessTable();
  v314 = v520;
  v560 = v520;
  v561 = v304;
  v315 = v304;
  v562 = v312;
  v563 = v308;
  v316 = v308;
  v564 = v309;
  v565 = v313;
  v317 = v309;
  v318 = v313;
  OUTLINED_FUNCTION_12_6(v313, v487);
  v319 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(v319);
  v321 = *(v320 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v322);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v323);
  v324 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D910, &qword_217970648);
  OUTLINED_FUNCTION_69_2(v324, &v546);
  v325 = sub_21796591C();
  v326 = MEMORY[0x277D2A350];
  v327 = sub_217916A20(&qword_27CB8BFA8, MEMORY[0x277D2A350]);
  OUTLINED_FUNCTION_5_2();
  v329 = sub_217916A20(v328, v326);
  v330 = v549;
  v560 = v325;
  v561 = v549;
  v562 = v327;
  v563 = v329;
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_27_4();
  v331 = OUTLINED_FUNCTION_98_0();
  v560 = v314;
  v561 = v315;
  v562 = v521;
  v563 = v316;
  v564 = v317;
  v565 = v318;
  OUTLINED_FUNCTION_74_2();
  v333 = *(v332 - 256);
  v334 = swift_getOpaqueTypeConformance2();
  v335 = OUTLINED_FUNCTION_97_0(&qword_27CB8D918, &qword_27CB8D910, &qword_217970648);
  v336 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_34_2(v336, &a14);
  v553 = v337;
  v518 = v331;
  v338 = swift_getWitnessTable();
  v339 = v517;
  v560 = v319;
  v561 = v517;
  v562 = v331;
  v563 = v334;
  v340 = v334;
  v564 = v335;
  v565 = v338;
  OUTLINED_FUNCTION_12_6(v338, &v484);
  v341 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_5(v341, &v548);
  v343 = *(v342 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v344);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v345);
  v346 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D920, &qword_217970650);
  OUTLINED_FUNCTION_69_2(v346, v485);
  v347 = sub_217968CFC();
  v348 = MEMORY[0x277D2B358];
  v349 = sub_217916A20(&qword_27CB8BF98, MEMORY[0x277D2B358]);
  OUTLINED_FUNCTION_7_3();
  v351 = sub_217916A20(v350, v348);
  v560 = v347;
  v561 = v330;
  v562 = v349;
  v563 = v351;
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_27_4();
  v352 = OUTLINED_FUNCTION_98_0();
  v560 = v319;
  v561 = v339;
  v562 = v518;
  v563 = v340;
  v564 = v335;
  v565 = v338;
  OUTLINED_FUNCTION_74_2();
  v354 = *(v353 - 256);
  v483 = OUTLINED_FUNCTION_93_1();
  v355 = OUTLINED_FUNCTION_97_0(&qword_27CB8D928, &qword_27CB8D920, &qword_217970650);
  v543 = v355;
  v356 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_34_2(v356, &a12);
  v551 = v357;
  v541 = swift_getWitnessTable();
  v560 = v519;
  v561 = v346;
  v562 = v352;
  v563 = v483;
  v564 = v355;
  v565 = v541;
  v358 = swift_getOpaqueTypeMetadata2();
  v359 = OUTLINED_FUNCTION_8_5(v358, v567);
  v545 = v360;
  v362 = *(v361 + 64);
  MEMORY[0x28223BE20](v359);
  OUTLINED_FUNCTION_88();
  v482 = v363;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v364);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_52(v365);
  v366 = v546;
  v367 = v539;
  v368 = v549;
  v369 = v550;
  sub_2179135DC(v546, v539, v549, v550);
  swift_checkMetadataState();
  v370 = swift_checkMetadataState();
  OUTLINED_FUNCTION_91_1(&v541);
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  v371 = v367;
  sub_217914D98(v366, v367, v368, v369);
  OUTLINED_FUNCTION_70_1(&v537);
  OUTLINED_FUNCTION_23_4();
  v372 = v370;
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54(&v543);
  v373 = OUTLINED_FUNCTION_38_2();
  v374(v373);
  v375 = v546;
  v376 = v549;
  sub_217914EA8(v546, v367, v549, v369);
  v377 = v540;
  OUTLINED_FUNCTION_23_4();
  v378 = v535[0];
  v548 = v372;
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54(&v542);
  v379(v366, v378);
  v380 = v376;
  v381 = v376;
  v382 = v550;
  sub_217914F28(v375, v367, v381, v550);
  v383 = v377;
  OUTLINED_FUNCTION_91_1(&v531);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  v384 = v535[1];
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54(&v539);
  v385(v384, v366);
  v386 = v546;
  v387 = OUTLINED_FUNCTION_72_2();
  v388 = v382;
  sub_217914FA8(v387, v389, v390, v382);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54(&v538);
  v391 = OUTLINED_FUNCTION_65_4();
  v392(v391);
  v393 = OUTLINED_FUNCTION_72_2();
  sub_217915028(v393, v394, v395, v382);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_91_1(&v521);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  v396 = v534[1];
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54(v535);
  v397(v396, v366);
  v398 = v386;
  v399 = OUTLINED_FUNCTION_72_2();
  sub_2179150A8(v399, v400, v401, v388);
  OUTLINED_FUNCTION_37_3();
  v402 = v502[1];
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54(&v532);
  v403 = OUTLINED_FUNCTION_65_4();
  v404(v403);
  v405 = v398;
  v406 = v371;
  v407 = v380;
  v408 = v550;
  sub_217915128(v405, v406, v380, v550);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_91_1(&v514);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54(&v526);
  v409(v402, v366);
  v410 = v546;
  v411 = v539;
  sub_2179151A8(v546, v539, v407, v408);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_73_3(&v511);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_54(&v522);
  v412 = OUTLINED_FUNCTION_65_4();
  v413(v412);
  sub_217915228(v410, v411, v407, v408);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(v508);
  OUTLINED_FUNCTION_70_1(&v509);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_67_2();
  v414 = OUTLINED_FUNCTION_22_3(&v516);
  v415(v414);
  v416 = OUTLINED_FUNCTION_9_10();
  sub_217915514(v416, v417, v418, v419);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(v505);
  OUTLINED_FUNCTION_73_3(&v506);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_67_2();
  v420 = OUTLINED_FUNCTION_21_6(&v512);
  v421(v420);
  v422 = OUTLINED_FUNCTION_9_10();
  sub_217915620(v422, v423, v424, v425);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(v502);
  OUTLINED_FUNCTION_70_1(&v503);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_67_2();
  v426 = OUTLINED_FUNCTION_22_3(v510);
  v427(v426);
  v428 = OUTLINED_FUNCTION_9_10();
  sub_2179156A0(v428, v429, v430, v431);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(v499);
  OUTLINED_FUNCTION_73_3(&v500);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_67_2();
  v432 = OUTLINED_FUNCTION_21_6(v507);
  v433(v432);
  v434 = OUTLINED_FUNCTION_9_10();
  sub_217915720(v434, v435, v436, v437);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(v496);
  OUTLINED_FUNCTION_70_1(v498);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_67_2();
  v438 = OUTLINED_FUNCTION_22_3(v504);
  v439(v438);
  v440 = OUTLINED_FUNCTION_9_10();
  sub_2179157A0(v440, v441, v442, v443);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(v493);
  OUTLINED_FUNCTION_73_3(&v494);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_67_2();
  v444 = OUTLINED_FUNCTION_21_6(&v501);
  v445(v444);
  v446 = OUTLINED_FUNCTION_9_10();
  sub_217915DBC(v446, v447, v448, v449);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(v490);
  OUTLINED_FUNCTION_70_1(&v491);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_67_2();
  v450 = OUTLINED_FUNCTION_22_3(&v497);
  v451(v450);
  v452 = OUTLINED_FUNCTION_9_10();
  sub_217915EE8(v452, v453, v454, v455);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(v487);
  OUTLINED_FUNCTION_73_3(v489);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_67_2();
  v456 = OUTLINED_FUNCTION_21_6(&v495);
  v457(v456);
  v458 = OUTLINED_FUNCTION_9_10();
  sub_217916014(v458, v459, v460, v461);
  OUTLINED_FUNCTION_18_5();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_62_4(&v484);
  OUTLINED_FUNCTION_70_1(&v486);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_67_2();
  v462 = OUTLINED_FUNCTION_22_3(v492);
  v463(v462);
  v464 = OUTLINED_FUNCTION_9_10();
  sub_217916170(v464, v465, v466, v467);
  OUTLINED_FUNCTION_18_5();
  v468 = swift_checkMetadataState();
  v469 = v541;
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_20_5();
  v471 = v470;
  v472 = v543;
  sub_2179678DC();
  OUTLINED_FUNCTION_67_2();
  v473 = OUTLINED_FUNCTION_21_6(&v488);
  v474(v473);
  v560 = v383;
  v561 = v471;
  v562 = v468;
  v563 = v483;
  v564 = v472;
  v565 = v469;
  OUTLINED_FUNCTION_74_2();
  v476 = *(v475 - 256);
  swift_getOpaqueTypeConformance2();
  v477 = v544;
  sub_2179560E4(v482, v544);
  v478 = *(v545 + 8);
  v478(v482, v477);
  v479 = OUTLINED_FUNCTION_140();
  sub_2179560E4(v479, v480);
  v481 = OUTLINED_FUNCTION_140();
  (v478)(v481);
  OUTLINED_FUNCTION_80();
}

void (*sub_2179135DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916B10;
}

void sub_21791365C()
{
  OUTLINED_FUNCTION_81();
  v332 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v311 = v7;
  v321 = v8;
  v10 = v9;
  v328 = v11;
  v12 = _s24PlaylistFolderDetailViewVMa();
  v13 = OUTLINED_FUNCTION_2(v12);
  v285 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_88();
  v283 = v17;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13_4();
  v282 = v19;
  OUTLINED_FUNCTION_46_0();
  v284 = sub_217968D2C();
  v20 = OUTLINED_FUNCTION_2(v284);
  v281 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_88();
  v278 = v24;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_88_1();
  v280 = v26;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13_4();
  v279 = v28;
  OUTLINED_FUNCTION_36_4();
  v29 = _s18PlaylistDetailViewVMa();
  v334 = v12;
  v30 = sub_217966F9C();
  OUTLINED_FUNCTION_2(v30);
  v286 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_45_0();
  v298 = v35;
  v336 = v29;
  v297 = *(v29 - 8);
  v36 = *(v297 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_88();
  v295 = v38;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13_4();
  v294 = v40;
  OUTLINED_FUNCTION_46_0();
  v296 = sub_217968E3C();
  v41 = OUTLINED_FUNCTION_2(v296);
  v293 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_88();
  v291 = v45;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_88_1();
  v292 = v47;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13_4();
  v288 = v49;
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_60_3();
  v50 = _s16ArtistDetailViewVMa();
  OUTLINED_FUNCTION_2(v50);
  v290 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_45_0();
  v289 = v55;
  v335 = v56;
  v57 = sub_21796698C();
  v58 = OUTLINED_FUNCTION_2(v57);
  v308 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_88();
  v306 = v62;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_13_4();
  v305 = v64;
  OUTLINED_FUNCTION_46_0();
  v318 = sub_217968AFC();
  v65 = OUTLINED_FUNCTION_2(v318);
  v304 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_88();
  v287 = v69;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_88_1();
  v303 = v71;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_13_4();
  v301 = v73;
  v319 = v6;
  v320 = v2;
  OUTLINED_FUNCTION_60_3();
  v74 = _s15AlbumDetailViewVMa();
  v75 = sub_21796698C();
  v331 = v57;
  v76 = sub_217966F9C();
  OUTLINED_FUNCTION_2(v76);
  v310 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_45_0();
  v309 = v81;
  OUTLINED_FUNCTION_46_0();
  v325 = v30;
  v326 = v82;
  v83 = sub_217966F9C();
  OUTLINED_FUNCTION_2(v83);
  v313 = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_45_0();
  v312 = v88;
  OUTLINED_FUNCTION_46_0();
  v89 = v4;
  v90 = _s20DetailViewPropertiesVMa();
  OUTLINED_FUNCTION_2(v90);
  v314 = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_47();
  v307 = v94;
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_45_0();
  v97 = v96;
  v333 = v74;
  v300 = *(v74 - 8);
  v98 = *(v300 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_45_0();
  v299 = v100;
  v329 = v75;
  v330 = *(v75 - 8);
  v101 = *(v330 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_88();
  v302 = v103;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_13_4();
  v317 = v105;
  OUTLINED_FUNCTION_46_0();
  v106 = sub_2179689AC();
  v107 = OUTLINED_FUNCTION_2(v106);
  v316 = v108;
  v110 = *(v109 + 64);
  v111 = MEMORY[0x28223BE20](v107);
  v113 = &v276 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_88_1();
  v315 = v114;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v115);
  v117 = &v276 - v116;
  v327 = v83;
  v118 = sub_217966F9C();
  v119 = OUTLINED_FUNCTION_2(v118);
  v323 = v120;
  v324 = v119;
  v122 = *(v121 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_45_0();
  v322 = v124;
  v125 = v89;
  v126 = v10;
  sub_217938234();
  sub_217916604(v379, v378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if (swift_dynamicCast())
  {
    v127 = v316;
    v128 = *(v316 + 32);
    v277 = v106;
    v128(v315, v117, v106);
    v129 = *(v127 + 16);
    v130 = OUTLINED_FUNCTION_65_4();
    v131(v130);
    OUTLINED_FUNCTION_11_8(*(v90 + 36));
    v132 = *(v10 + *(v90 + 44));

    sub_217863EC4(v127);
    v133 = v113;
    v134 = v10;
    v135 = v319;
    v136 = v320;
    sub_2178580FC(v133, v377, v132, v299);
    v137 = v314;
    (*(v314 + 16))(v97, v134, v90);
    v138 = (*(v137 + 80) + 64) & ~*(v137 + 80);
    v139 = swift_allocObject();
    *(v139 + 2) = v135;
    *(v139 + 3) = v125;
    v140 = v332;
    *(v139 + 4) = v136;
    *(v139 + 5) = v140;
    v141 = v311;
    *(v139 + 6) = v321;
    *(v139 + 7) = v141;
    (*(v137 + 32))(&v139[v138], v97, v90);

    OUTLINED_FUNCTION_3_15();
    v142 = v333;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_152();
    sub_217967A4C();

    v144 = OUTLINED_FUNCTION_51_4();
    v145(v144, v142);
    v345 = WitnessTable;
    v146 = MEMORY[0x277CE0790];
    v346 = MEMORY[0x277CE0790];
    OUTLINED_FUNCTION_8_9();
    v147 = v329;
    v148 = swift_getWitnessTable();
    v149 = v317;
    v150 = OUTLINED_FUNCTION_38_2();
    sub_2179560E4(v150, v151);
    v152 = *(v330 + 8);
    v330 += 8;
    v332 = v152;
    v153 = OUTLINED_FUNCTION_38_2();
    v154(v153);
    sub_2179560E4(v149, v147);
    OUTLINED_FUNCTION_2_10();
    v343 = swift_getWitnessTable();
    v344 = v146;
    v155 = swift_getWitnessTable();
    OUTLINED_FUNCTION_9_10();
    sub_217952EE8();
    v341 = v148;
    v342 = v155;
    OUTLINED_FUNCTION_6_7();
    v156 = v326;
    v157 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_17();
    v158 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_15();
    v159 = swift_getWitnessTable();
    v339 = v158;
    v340 = v159;
    v160 = swift_getWitnessTable();
    v161 = v312;
    sub_217952EE8();
    v162 = OUTLINED_FUNCTION_51_4();
    v163(v162, v156);
    v337 = v157;
    v338 = v160;
    v164 = v327;
    swift_getWitnessTable();
    v165 = v322;
    sub_217952EE8();
    OUTLINED_FUNCTION_90_0();
    v166(v161, v164);
    v167 = OUTLINED_FUNCTION_38_2();
    v168 = v332;
    v332(v167);
    v168(v317, v147);
    (*(v316 + 8))(v315, v277);
  }

  else
  {
    v169 = v97;
    v170 = v314;
    v330 = v125;
    v171 = v319;
    v172 = v301;
    if (swift_dynamicCast())
    {
      v174 = v303;
      v173 = v304;
      v175 = v318;
      (*(v304 + 32))(v303, v172, v318);
      v176 = v287;
      (*(v173 + 16))(v287, v174, v175);
      v177 = v90;
      OUTLINED_FUNCTION_11_8(*(v90 + 36));
      v178 = *(v126 + *(v90 + 44));

      sub_217863EC4(v173);
      v179 = v289;
      v180 = v176;
      v181 = v320;
      sub_217876BA4(v180, v377, v178, v289);
      v182 = *(v170 + 16);
      OUTLINED_FUNCTION_60_3();
      v183();
      v184 = (*(v170 + 80) + 64) & ~*(v170 + 80);
      v185 = swift_allocObject();
      v186 = v330;
      *(v185 + 2) = v171;
      *(v185 + 3) = v186;
      v187 = v332;
      *(v185 + 4) = v181;
      *(v185 + 5) = v187;
      v188 = v311;
      *(v185 + 6) = v321;
      *(v185 + 7) = v188;
      (*(v170 + 32))(&v185[v184], v169, v177);

      OUTLINED_FUNCTION_2_10();
      v189 = v335;
      v190 = swift_getWitnessTable();
      v191 = v306;
      sub_217967A4C();

      (*(v290 + 8))(v179, v189);
      v355 = v190;
      v192 = MEMORY[0x277CE0790];
      v356 = MEMORY[0x277CE0790];
      OUTLINED_FUNCTION_8_9();
      v193 = v331;
      v194 = swift_getWitnessTable();
      OUTLINED_FUNCTION_152();
      sub_2179560E4(v195, v196);
      v197 = *(v308 + 8);
      v308 += 8;
      v332 = v197;
      (v197)(v191, v193);
      OUTLINED_FUNCTION_152();
      sub_2179560E4(v198, v199);
      OUTLINED_FUNCTION_3_15();
      v353 = swift_getWitnessTable();
      v354 = v192;
      v200 = swift_getWitnessTable();
      v201 = v309;
      OUTLINED_FUNCTION_65_4();
      sub_217952FA4();
      v351 = v200;
      v352 = v194;
      OUTLINED_FUNCTION_6_7();
      v202 = swift_getWitnessTable();
      OUTLINED_FUNCTION_1_17();
      v203 = v193;
      v204 = swift_getWitnessTable();
      OUTLINED_FUNCTION_0_15();
      v205 = swift_getWitnessTable();
      v349 = v204;
      v350 = v205;
      v206 = OUTLINED_FUNCTION_96_0();
      v207 = v312;
      OUTLINED_FUNCTION_89_0();
      sub_217952EE8();
      v208 = *(v310 + 8);
      v209 = OUTLINED_FUNCTION_89_0();
      v210(v209);
      v347 = v202;
      v348 = v206;
      OUTLINED_FUNCTION_94_0();
      v165 = v322;
      sub_217952EE8();
      OUTLINED_FUNCTION_90_0();
      v211(v207, v201);
      v212 = v332;
      (v332)(v306, v203);
      v212(v305, v203);
      (*(v304 + 8))(v303, v318);
    }

    else
    {
      v213 = v288;
      v214 = v296;
      if (swift_dynamicCast())
      {
        v216 = v292;
        v215 = v293;
        (*(v293 + 32))(v292, v213, v214);
        (*(v215 + 16))(v291, v216, v214);
        v276 = v90;
        OUTLINED_FUNCTION_11_8(*(v90 + 36));

        sub_217863EC4(v215);
        _s9ViewModelCMa();
        OUTLINED_FUNCTION_23();
        swift_getWitnessTable();
        sub_217966A9C();
        sub_2178D83B0();

        sub_217966A9C();
        sub_2178D8388();

        v217 = *(v126 + *(v276 + 44));
        v218 = v295;
        sub_2178661B0();
        OUTLINED_FUNCTION_1_17();
        v219 = v336;
        v220 = swift_getWitnessTable();
        v221 = v294;
        sub_2179560E4(v218, v219);
        v222 = *(v297 + 8);
        v297 += 8;
        v332 = v222;
        (v222)(v218, v219);
        sub_2179560E4(v221, v219);
        OUTLINED_FUNCTION_0_15();
        v223 = swift_getWitnessTable();
        sub_217952EE8();
        OUTLINED_FUNCTION_3_15();
        v365 = swift_getWitnessTable();
        v224 = MEMORY[0x277CE0790];
        v366 = MEMORY[0x277CE0790];
        OUTLINED_FUNCTION_57_4();
        v225 = v329;
        v226 = swift_getWitnessTable();
        OUTLINED_FUNCTION_2_10();
        v363 = swift_getWitnessTable();
        v364 = v224;
        v227 = swift_getWitnessTable();
        v361 = v226;
        v362 = v227;
        OUTLINED_FUNCTION_54_2();
        v228 = swift_getWitnessTable();
        v359 = v220;
        v360 = v223;
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_64_4();
        v229 = OUTLINED_FUNCTION_51_4();
        v230(v229, v225);
        v357 = v228;
        v358 = v220;
        OUTLINED_FUNCTION_94_0();
        v231 = v322;
        OUTLINED_FUNCTION_87_3();
        sub_217952EE8();
        OUTLINED_FUNCTION_90_0();
        v232 = OUTLINED_FUNCTION_87_3();
        v233(v232);
        v234 = v336;
        v235 = v332;
        (v332)(v295, v336);
        v235(v294, v234);
        v165 = v231;
        (*(v293 + 8))(v292, v296);
      }

      else
      {
        v236 = v279;
        v237 = v284;
        v238 = swift_dynamicCast();
        v239 = MEMORY[0x277CE0790];
        if (v238)
        {
          v241 = v280;
          v240 = v281;
          (*(v281 + 32))(v280, v236, v237);
          v242 = *(v240 + 16);
          v243 = v278;
          v242(v278, v241, v237);
          OUTLINED_FUNCTION_11_8(*(v90 + 36));

          sub_217863EC4(v237);
          v244 = v283;
          sub_217959584(v243, v377, 0, v283);
          OUTLINED_FUNCTION_0_15();
          v245 = v334;
          v246 = swift_getWitnessTable();
          v247 = v282;
          sub_2179560E4(v244, v245);
          v248 = *(v285 + 8);
          v285 += 8;
          v332 = v248;
          (v248)(v244, v245);
          sub_2179560E4(v247, v245);
          OUTLINED_FUNCTION_1_17();
          v249 = swift_getWitnessTable();
          sub_217952FA4();
          OUTLINED_FUNCTION_3_15();
          v375 = swift_getWitnessTable();
          v250 = MEMORY[0x277CE0790];
          v376 = MEMORY[0x277CE0790];
          OUTLINED_FUNCTION_57_4();
          v251 = swift_getWitnessTable();
          OUTLINED_FUNCTION_2_10();
          v373 = swift_getWitnessTable();
          v374 = v250;
          v252 = swift_getWitnessTable();
          v371 = v251;
          v372 = v252;
          OUTLINED_FUNCTION_54_2();
          v253 = swift_getWitnessTable();
          v369 = v249;
          v370 = v246;
          OUTLINED_FUNCTION_96_0();
          OUTLINED_FUNCTION_64_4();
          v254 = OUTLINED_FUNCTION_51_4();
          v255(v254, v243);
          v367 = v253;
          v368 = v246;
          OUTLINED_FUNCTION_94_0();
          v256 = v322;
          OUTLINED_FUNCTION_87_3();
          sub_217952EE8();
          OUTLINED_FUNCTION_90_0();
          v257 = OUTLINED_FUNCTION_87_3();
          v258(v257);
          v259 = v332;
          (v332)(v283, v245);
          v259(v282, v245);
          v165 = v256;
          (*(v281 + 8))(v280, v284);
        }

        else
        {
          OUTLINED_FUNCTION_3_15();
          v377[24] = swift_getWitnessTable();
          v377[25] = v239;
          OUTLINED_FUNCTION_8_9();
          v270 = swift_getWitnessTable();
          OUTLINED_FUNCTION_2_10();
          v377[22] = swift_getWitnessTable();
          v377[23] = v239;
          v271 = swift_getWitnessTable();
          v377[20] = v270;
          v377[21] = v271;
          OUTLINED_FUNCTION_6_7();
          v272 = swift_getWitnessTable();
          OUTLINED_FUNCTION_1_17();
          v273 = swift_getWitnessTable();
          OUTLINED_FUNCTION_0_15();
          v274 = swift_getWitnessTable();
          v377[18] = v273;
          v377[19] = v274;
          v275 = OUTLINED_FUNCTION_96_0();
          v377[16] = v272;
          v377[17] = v275;
          OUTLINED_FUNCTION_94_0();
          v165 = v322;
          sub_217952FA4();
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v379);
  __swift_destroy_boxed_opaque_existential_1(v378);
  OUTLINED_FUNCTION_3_15();
  v377[14] = swift_getWitnessTable();
  v260 = MEMORY[0x277CE0790];
  v377[15] = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_8_9();
  v261 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_10();
  v377[12] = swift_getWitnessTable();
  v377[13] = v260;
  v262 = swift_getWitnessTable();
  v377[10] = v261;
  v377[11] = v262;
  OUTLINED_FUNCTION_6_7();
  v263 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_17();
  v264 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_15();
  v265 = swift_getWitnessTable();
  v377[8] = v264;
  v377[9] = v265;
  v266 = swift_getWitnessTable();
  v377[6] = v263;
  v377[7] = v266;
  v377[4] = swift_getWitnessTable();
  v377[5] = MEMORY[0x277CE1410];
  v267 = v324;
  swift_getWitnessTable();
  sub_2179560E4(v165, v267);
  v268 = OUTLINED_FUNCTION_51_4();
  v269(v268, v267);
  OUTLINED_FUNCTION_80();
}

void (*sub_217914D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916ABC;
}

void sub_217914E18()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_81_1();
  v2(0);
  sub_217916A20(v1, v0);
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_80();

  sub_21791365C();
}

void (*sub_217914EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916A68;
}

void (*sub_217914F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179169B4;
}

void (*sub_217914FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916948;
}

void (*sub_217915028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179168DC;
}

void (*sub_2179150A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916870;
}

void (*sub_217915128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916804;
}

void (*sub_2179151A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916598;
}

void (*sub_217915228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_21791652C;
}

void sub_2179152A8()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v45 = v2;
  v46 = v4;
  v5 = v4;
  v7 = v6;
  v47 = v8;
  v9 = *(v0 + 8);
  v11 = v10;
  v44 = sub_21796810C();
  OUTLINED_FUNCTION_2(v44);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v41 = &v40 - v17;
  v48 = v11;
  v49 = v5;
  v43 = v11;
  v50 = v1;
  v51 = v3;
  v19 = _s21AdditionalContentViewVMa();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v40 - v28;
  v30 = v7[1];
  v42 = *v7;
  v31 = _s31AdditionalContentViewPropertiesVMa();
  (*(v13 + 16))(v18, v7 + v31[9], v44);
  v32 = v7 + v31[11];
  v34 = *(v32 + 1);
  v33 = *(v32 + 2);
  v35 = *(v32 + 3);
  LOBYTE(v13) = *(v7 + v31[10]);
  LOBYTE(v48) = *v32;
  v49 = v34;
  v50 = v33;
  v51 = v35;
  LOBYTE(v31) = *(v7 + v31[12]);

  sub_217863EC4(v35);
  sub_217926D88(v42, v30, v41, v13, &v48, v31, v27, v46, v1);
  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  v36 = OUTLINED_FUNCTION_89_0();
  sub_2179560E4(v36, v37);
  v38 = *(v22 + 8);
  v39 = OUTLINED_FUNCTION_89_0();
  v38(v39);
  sub_2179560E4(v29, v19);
  (v38)(v29, v19);
  OUTLINED_FUNCTION_80();
}

void (*sub_217915514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179164C0;
}

void sub_217915594()
{
  OUTLINED_FUNCTION_81_1();
  v2(0);
  sub_217916A20(v1, v0);

  sub_2179152A8();
}

void (*sub_217915620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_21791646C;
}

void (*sub_2179156A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916418;
}

void (*sub_217915720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179163C4;
}

void (*sub_2179157A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179163B8;
}

void sub_217915820()
{
  sub_217968AFC();
  sub_217916A20(&qword_27CB8AAF8, MEMORY[0x277CD8428]);

  sub_2179158CC();
}

void sub_2179158CC()
{
  OUTLINED_FUNCTION_81();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v65 = v4;
  v7 = v6;
  v9 = v8;
  v67 = v8;
  v11 = v10;
  v74 = v12;
  v66 = sub_21796821C();
  OUTLINED_FUNCTION_2(v66);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_45_0();
  v64 = v18;
  v79 = v7;
  v80 = v9;
  v81 = v3;
  v82 = v1;
  v83 = v5;
  v19 = _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_2(v19);
  v68 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  sub_21796732C();
  v71 = v19;
  v26 = sub_21796698C();
  v27 = OUTLINED_FUNCTION_2(v26);
  v72 = v28;
  v73 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_88();
  v69 = v31;
  OUTLINED_FUNCTION_84_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13_4();
  v70 = v33;
  v34 = v11[1];
  v63 = *v11;
  v35 = v11[3];
  v62 = v11[2];
  v36 = _s35LibrarySectionContentViewPropertiesVMa();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  LOBYTE(v79) = *(v11 + v38);
  v39 = v64;
  (*(v14 + 16))(v64, v11 + v37, v66);

  sub_217948804(v63, v34, v62, v35, &v79, v39, v25, v67, v3);
  if (qword_27CB8A400 != -1)
  {
    swift_once();
  }

  v41 = qword_27CB97A10;
  v40 = *algn_27CB97A18;
  v42 = qword_27CB97A20;
  v43 = 0xE700000000000000;
  v44 = 0x73747369747261;
  switch(*(v11 + v38))
  {
    case 1:
      v43 = 0xE600000000000000;
      v44 = 0x736D75626C61;
      break;
    case 2:
      v43 = 0xE500000000000000;
      v44 = 0x73676E6F73;
      break;
    case 3:
      v43 = 0xE900000000000073;
      v44 = 0x7473696C79616C70;
      break;
    case 4:
      v43 = 0x8000000217975D40;
      v44 = 0xD000000000000012;
      break;
    case 5:
      v43 = 0xED00006465646441;
      v44 = 0x796C746E65636572;
      break;
    default:
      break;
  }

  v79 = v44;
  v80 = v43;
  sub_217873C34();
  v45 = sub_21796945C();
  v47 = v46;

  v77 = v41;
  v78 = v40;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](v45, v47);

  v48 = v77;
  v49 = v78;
  OUTLINED_FUNCTION_17_8();
  v50 = v71;
  WitnessTable = swift_getWitnessTable();
  v52 = v69;
  sub_2178ED854(v48, v49, v42);

  (*(v68 + 8))(v25, v50);
  OUTLINED_FUNCTION_16_5();
  v55 = sub_217916A20(v53, v54);
  v75 = WitnessTable;
  v76 = v55;
  v56 = v73;
  swift_getWitnessTable();
  sub_2179560E4(v52, v56);
  v57 = *(v72 + 8);
  v57(v52, v56);
  v58 = OUTLINED_FUNCTION_140();
  sub_2179560E4(v58, v59);
  v60 = OUTLINED_FUNCTION_140();
  (v57)(v60);
  OUTLINED_FUNCTION_80();
}

void (*sub_217915DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179163AC;
}

void sub_217915E3C()
{
  sub_2179689AC();
  sub_217916A20(&qword_27CB8A6D0, MEMORY[0x277CD82C8]);

  sub_2179158CC();
}

void (*sub_217915EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179163A0;
}

void sub_217915F68()
{
  sub_2179688CC();
  sub_217916A20(&qword_27CB8A830, MEMORY[0x277CD8238]);

  sub_2179158CC();
}

void (*sub_217916014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916394;
}

void sub_217916094()
{
  sub_21796591C();
  v0 = MEMORY[0x277D2A350];
  sub_217916A20(&qword_27CB8BFA8, MEMORY[0x277D2A350]);
  sub_217916A20(&qword_27CB8BFB0, v0);

  sub_2179158CC();
}

void (*sub_217916170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_217916388;
}

void sub_2179161F0()
{
  sub_217968CFC();
  v0 = MEMORY[0x277D2B358];
  sub_217916A20(&qword_27CB8BF98, MEMORY[0x277D2B358]);
  sub_217916A20(&qword_27CB8BFA0, v0);

  sub_2179158CC();
}

uint64_t sub_2179162CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  sub_217966A9C();
  v4 = *(a3 + *(_s20DetailViewPropertiesVMa() + 40));
  sub_2178D83C4();
}

void sub_217916388()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_2179161F0();
}

void sub_217916394()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217916094();
}

void sub_2179163A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217915F68();
}

void sub_2179163AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217915E3C();
}

void sub_2179163B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217915820();
}

void sub_2179164C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217915594();
}

void sub_21791652C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217915594();
}

void sub_217916598()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217914E18();
}

uint64_t sub_217916604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  v3 = (_s20DetailViewPropertiesVMa() - 8);
  v4 = (*(*v3 + 80) + 64) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + 6);

  (*(*(v1 - 8) + 8))(&v0[v4], v1);
  v7 = &v0[v4 + v3[11]];
  v8 = *(v7 + 2);

  sub_2178643E0(*(v7 + 3));

  return swift_deallocObject();
}

uint64_t sub_217916774()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(_s20DetailViewPropertiesVMa() - 8);
  return sub_2179162CC(v0[6], v0[7], v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80)));
}

void sub_217916804()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217914E18();
}

void sub_217916870()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217914E18();
}

void sub_2179168DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217914E18();
}

void sub_217916948()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217914E18();
}

void sub_2179169B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_217914E18();
}

uint64_t sub_217916A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  v5 = *(v3 + 8);
  result = *(v3 + 16);
  v6 = *(v3 + 24);
  *(v1 + 808) = *v3;
  *(v1 + 816) = v5;
  *(v1 + 824) = result;
  *(v1 + 832) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  *(v0 - 200) = *(v0 - 320);

  return _s25LibrarySectionContentViewVMa();
}

uint64_t OUTLINED_FUNCTION_34_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 - 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_2()
{
  *(v2 - 200) = v0;
  *(v2 - 192) = v1;

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_39_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void OUTLINED_FUNCTION_40_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void OUTLINED_FUNCTION_41_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_64_4()
{
  v2 = *(v0 + 288);
  v3 = *(v0 + 176);

  return sub_217952FA4();
}

uint64_t OUTLINED_FUNCTION_67_2()
{
}

uint64_t OUTLINED_FUNCTION_68_4(uint64_t result)
{
  *(v2 - 200) = result;
  *(v2 - 192) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_3()
{
  v2 = *(v0 - 384);

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_76_2()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_79_2()
{
  v2 = *(v0 - 256);

  return sub_2179678DC();
}

uint64_t OUTLINED_FUNCTION_80_0()
{
  v2 = *(v0 - 256);

  return sub_2179678DC();
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_93_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_94_0()
{
  v2 = *(v0 + 408);

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  v2 = *(v0 + 392);

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_97_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 376);

  return sub_217864B2C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_98_0()
{
  v2 = *(v0 - 368);

  return sub_21796698C();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
  v2 = *(v0 - 256);

  return sub_2179678DC();
}

uint64_t sub_217917224(uint64_t a1)
{
  v274 = sub_2179660EC();
  v2 = OUTLINED_FUNCTION_2(v274);
  v280 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_5();
  v273 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v272 = &v259 - v9;
  v271 = sub_21796610C();
  v10 = OUTLINED_FUNCTION_2(v271);
  v279 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v259 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C5D0, &qword_21796DD68);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v259 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB88, &qword_21796B168);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_17_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v259 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_17_5();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v259 - v34;
  v36 = sub_217968C2C();
  v37 = OUTLINED_FUNCTION_2(v36);
  v283 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v259 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217918AC4(a1, v27);
  v43 = sub_217968DFC();
  OUTLINED_FUNCTION_26_4(v27);
  if (v45)
  {
    sub_217875F0C(v27, &qword_27CB8AB88, &qword_21796B168);
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  }

  else
  {
    sub_217968DEC();
    OUTLINED_FUNCTION_16_6();
    (*(v44 + 8))(v27, v43);
    OUTLINED_FUNCTION_23_5(v32);
    if (!v45)
    {
      v52 = v283;
      (*(v283 + 32))(v35, v32, v36);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
      goto LABEL_17;
    }
  }

  sub_217918AC4(a1, v24);
  OUTLINED_FUNCTION_26_4(v24);
  if (v45)
  {
    v46 = &qword_27CB8AB88;
    v47 = &qword_21796B168;
    v48 = v24;
  }

  else
  {
    v49 = sub_217968DCC();
    OUTLINED_FUNCTION_16_6();
    (*(v50 + 8))(v24, v43);
    if (!v49)
    {
      goto LABEL_14;
    }

    sub_217936580(v49);

    v51 = sub_21796869C();
    OUTLINED_FUNCTION_26_4(v19);
    if (!v45)
    {
      sub_21796868C();
      OUTLINED_FUNCTION_16_6();
      (*(v108 + 8))(v19, v51);
      goto LABEL_15;
    }

    v46 = &qword_27CB8C5D0;
    v47 = &qword_21796DD68;
    v48 = v19;
  }

  sub_217875F0C(v48, v46, v47);
LABEL_14:
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
LABEL_15:
  OUTLINED_FUNCTION_23_5(v32);
  v52 = v283;
  if (!v45)
  {
    sub_217875F0C(v32, &qword_27CB8BD60, &qword_21796CC60);
  }

LABEL_17:
  OUTLINED_FUNCTION_23_5(v35);
  if (v45)
  {
    sub_217875F0C(v35, &qword_27CB8BD60, &qword_21796CC60);
LABEL_38:
    v278 = COERCE_DOUBLE(CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0));
    v277 = COERCE_DOUBLE(CGColorCreateGenericRGB(1.0, 0.501960784, 0.501960784, 1.0));
    v276 = COERCE_DOUBLE(CGColorCreateGenericRGB(1.0, 0.901960784, 0.901960784, 1.0));
    v275 = CGColorCreateGenericRGB(0.980392157, 0.137254902, 0.231372549, 1.0);
    goto LABEL_39;
  }

  (*(v52 + 32))(v42, v35, v36);
  v53 = sub_217968BDC();
  if (!v53)
  {
    v106 = OUTLINED_FUNCTION_6_8();
    v107(v106);
    goto LABEL_38;
  }

  v54 = v53;
  v55 = sub_217968BEC();
  if (!v55)
  {
    v109 = OUTLINED_FUNCTION_6_8();
    v110(v109);

    goto LABEL_38;
  }

  v56 = v55;
  v57 = v15;
  v58 = sub_217968C0C();
  if (!v58)
  {
    v111 = OUTLINED_FUNCTION_6_8();
    v112(v111);

LABEL_37:
    v15 = v57;
    goto LABEL_38;
  }

  v59 = v58;
  v60 = sub_217968BFC();
  if (!v60)
  {
    v113 = OUTLINED_FUNCTION_6_8();
    v114(v113);

    goto LABEL_37;
  }

  v61 = v60;
  v266 = v54;
  v62 = sub_2178D1150(v266);
  v268 = v63;
  v278 = v64;
  v275 = v65;
  v265 = v56;
  v276 = sub_2178D1150(v265);
  v277 = v66;
  v68 = v67;
  v282 = v69;
  v264 = v59;
  v70 = sub_2178D1150(v264);
  v72 = v71;
  v74 = v73;
  v269 = v75;
  v263 = v61;
  v76 = sub_2178D1150(v263);
  v78 = v77;
  v80 = v79;
  v267 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC00, &qword_21796F0B8);
  inited = swift_initStackObject();
  v261 = xmmword_21796E3A0;
  *(inited + 16) = xmmword_21796E3A0;
  v262 = v62;
  v83 = v278;
  v84 = v268;
  *(inited + 32) = v62;
  *(inited + 40) = v84;
  v85 = v275;
  *(inited + 48) = v83;
  *(inited + 56) = v85;
  v86 = OUTLINED_FUNCTION_21_7();
  *(v88 + 64) = v89;
  *(v88 + 72) = v86;
  v281 = v68;
  v90 = v282;
  *(v88 + 80) = v68;
  *(v88 + 88) = v90;
  v91 = v70;
  *(v88 + 96) = v70;
  *(v88 + 104) = v72;
  v282 = v72;
  v92 = v74;
  v93 = v269;
  *(v88 + 112) = v74;
  *(v88 + 120) = v93;
  v269 = v76;
  *(v88 + 128) = v76;
  *(v88 + 136) = v78;
  v260 = v78;
  v94 = 0.05;
  v96 = v95;
  v259 = v80;
  v97 = v267;
  *(v88 + 144) = v80;
  *(v88 + 152) = v97;
  if (v95 > 0.05)
  {
    *&v98 = 0.2;
    if (v87 > 0.2)
    {
      swift_setDeallocating();
      sub_217919160();
      v99 = v281;
      if (v281 < 0.3)
      {
        v100 = v91;
        v101 = v277;
        if (v92 >= 0.3)
        {
          goto LABEL_28;
        }

        goto LABEL_51;
      }

      v100 = v91;
      v101 = v277;
      if (v281 > 0.3 && v92 > 0.3)
      {
LABEL_64:
        OUTLINED_FUNCTION_2_11(v101 + 0.1, 0.4);
        v141 = v99 <= v140;
        *&v98 = v262;
        v102 = v96;
        goto LABEL_76;
      }

LABEL_141:
      v94 = v101 + 0.2;
      v103 = OUTLINED_FUNCTION_1_18();
      v102 = v96;
      if (!(v231 ^ v232 | v45))
      {
        goto LABEL_142;
      }

      if (v99 <= v103)
      {
        OUTLINED_FUNCTION_0_16();
        v157 = 1.0;
LABEL_149:
        v172 = v99 <= v157;
        goto LABEL_150;
      }

LABEL_146:
      v103 = v94;
      goto LABEL_147;
    }
  }

  v101 = v277;
  v99 = v281;
  if (v277 <= 0.05 || (*&v98 = 0.2, v281 <= 0.2))
  {
    v100 = v91;
    if (v282 <= 0.05 || (*&v98 = 0.2, v92 <= 0.2))
    {

      if (OUTLINED_FUNCTION_11_9() <= 0.05 || (v142 = 0.2, v259 <= 0.2))
      {
        v278 = COERCE_DOUBLE(OUTLINED_FUNCTION_13_10(0.933333333));
        v277 = COERCE_DOUBLE(OUTLINED_FUNCTION_13_10(0.733333333));
        v276 = COERCE_DOUBLE(OUTLINED_FUNCTION_13_10(0.274509804));
        v149 = OUTLINED_FUNCTION_13_10(0.0666666667);
        v150 = v266;
        v151 = v265;
        v152 = v264;
        v153 = v263;
        goto LABEL_165;
      }

      if (v99 < 0.3)
      {
        if (v92 < 0.3)
        {
          v94 = v101 + 0.3;
          v99 = v99 + 0.2;
          v136 = 1.0;
          if (v101 + 0.3 > 1.0)
          {
            goto LABEL_52;
          }

          *&v98 = v262;
          v138 = v276;
          if (v99 > 1.0)
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_9_11();
          v102 = v96;
          v99 = v96 + 0.5;
          v144 = v278 + v143;
          v145 = 1.0;
          if (v96 + 0.5 > 1.0)
          {
            v146 = v144 <= 1.0;
LABEL_86:
            v99 = 1.0;
            goto LABEL_108;
          }

          v169 = v144 <= 1.0;
LABEL_134:
          v96 = v138;
          if (v169)
          {
            OUTLINED_FUNCTION_19_5();
            if (v231 == v232)
            {
              goto LABEL_113;
            }

            goto LABEL_112;
          }

LABEL_111:
          v162 = -0.5;
          v163 = v145;
          if (v100 >= 0.5)
          {
LABEL_113:
            v269 = v100 + v162;
            if (v92 + 0.8 <= 1.0)
            {
              v91 = v92 + 0.8;
            }

            else
            {
              v91 = 1.0;
            }

            v100 = *&v98;
            v92 = v163;
            goto LABEL_160;
          }

LABEL_112:
          v162 = 0.5;
          goto LABEL_113;
        }

        if (v99 > 0.3)
        {
          v102 = v96;
          if (v92 <= 0.3)
          {
            v170 = OUTLINED_FUNCTION_21_7();
            v94 = v170 + v171;
LABEL_31:
            v103 = OUTLINED_FUNCTION_1_18();
            if (!(v231 ^ v232 | v45))
            {
              goto LABEL_142;
            }

LABEL_94:
            OUTLINED_FUNCTION_4_13(v103, v104);
            if (v156 > v154)
            {
              v156 = v154;
            }

            OUTLINED_FUNCTION_18_6(v154, v155, v156);
            goto LABEL_149;
          }

          goto LABEL_75;
        }

        goto LABEL_141;
      }

      *&v98 = v262;
      if (v99 <= 0.3)
      {
        v94 = v101 + 0.2;
        v103 = OUTLINED_FUNCTION_1_18();
        if (!(v231 ^ v232 | v45))
        {
          v167 = v99 <= v103;
          v105 = v276;
LABEL_168:
          v102 = v96;
          if (v167)
          {
            goto LABEL_143;
          }

          goto LABEL_147;
        }

        if (v99 > v103)
        {
          v103 = v101 + 0.2;
          v105 = v276;
          v102 = v96;
          goto LABEL_147;
        }

        OUTLINED_FUNCTION_0_16();
        v103 = 1.0;
      }

      else
      {
        if (v92 > 0.3)
        {
          OUTLINED_FUNCTION_2_11(v101 + 0.1, 0.4);
          v102 = v96;
          v96 = v276;
          if (v99 <= v165)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        }

        v94 = v101 + 0.2;
        v210 = v99 + 0.1;
        v103 = 1.0;
        if (v101 + 0.2 > 1.0)
        {
          v105 = v276;
          v102 = v96;
          if (v210 <= 1.0)
          {
            OUTLINED_FUNCTION_9_11();
            v99 = v282 + v211;
            goto LABEL_144;
          }

          goto LABEL_147;
        }

        v219 = v210;
        v99 = v282 + 0.1;
        v281 = v219;
        if (v219 > 1.0)
        {
          v281 = 1.0;
          if (v99 <= 1.0)
          {
            v281 = 1.0;
            if (v92 + 0.2 <= 1.0)
            {
              v92 = v92 + 0.2;
              OUTLINED_FUNCTION_11_9();
              v245 = OUTLINED_FUNCTION_3_16();
              v282 = v246;
              if (v246 <= v247)
              {
                goto LABEL_238;
              }

              v282 = v245;
              OUTLINED_FUNCTION_7_12();
              v102 = v96;
              v96 = v248;
              v100 = v91;
              goto LABEL_221;
            }

            OUTLINED_FUNCTION_7_12();
            v102 = v96;
            v96 = v239;
            v100 = v91;
            v92 = 1.0;
            goto LABEL_194;
          }

          v102 = v96;
          goto LABEL_183;
        }
      }

      v172 = v99 <= v103;
      v105 = v276;
    }

    else
    {
      swift_setDeallocating();
      sub_217919160();
      if (v99 < 0.3)
      {
        if (v92 >= 0.3)
        {
LABEL_28:
          if (v99 > 0.3)
          {
            v102 = v96;
            if (v92 <= 0.3)
            {
              v94 = OUTLINED_FUNCTION_21_7() + 0.2;
              goto LABEL_31;
            }

            goto LABEL_75;
          }

          goto LABEL_141;
        }

        OUTLINED_FUNCTION_20_6();
        v138 = v276;
        if (!(v231 ^ v232 | v45))
        {
          v137 = v99 <= v136;
          v94 = 1.0;
          *&v98 = v262;
LABEL_53:
          v102 = v96;
          if (v137)
          {
            v136 = v99;
          }

          goto LABEL_84;
        }

        v102 = v96;
        if (v99 > v136)
        {
          OUTLINED_FUNCTION_7_12();
          goto LABEL_84;
        }

        OUTLINED_FUNCTION_9_11();
        v99 = v96 + 0.5;
LABEL_106:
        v144 = v278 + 0.2;
        v145 = 1.0;
        if (v99 > 1.0)
        {
          v146 = v144 <= 1.0;
          v99 = 1.0;
          *&v98 = v262;
LABEL_108:
          v96 = v138;
          if (v146)
          {
            v145 = v144;
          }

          goto LABEL_111;
        }

        v169 = v144 <= 1.0;
        *&v98 = v262;
        goto LABEL_134;
      }

      if (v99 > 0.3)
      {
        if (v92 <= 0.3)
        {
          v94 = v101 + 0.2;
          v103 = OUTLINED_FUNCTION_1_18();
          v102 = v96;
          if (!(v231 ^ v232 | v45))
          {
LABEL_142:
            if (v99 <= v103)
            {
LABEL_143:
              OUTLINED_FUNCTION_0_16();
LABEL_144:
              v94 = 1.0;
              v172 = v99 <= 1.0;
LABEL_150:
              *&v98 = v262;
              goto LABEL_151;
            }

LABEL_147:
            v99 = v282 + 0.1;
            v142 = 1.0;
            v281 = 1.0;
            v172 = v282 + 0.1 <= 1.0;
            v94 = v103;
            goto LABEL_150;
          }

          goto LABEL_94;
        }

        goto LABEL_64;
      }

      v94 = v101 + 0.2;
      v103 = OUTLINED_FUNCTION_1_18();
      v105 = v276;
      if (!(v231 ^ v232 | v45))
      {
        v167 = v99 <= v103;
        goto LABEL_168;
      }

      OUTLINED_FUNCTION_4_13(v103, v166);
      if (v201 > v199)
      {
        v201 = v199;
      }

      OUTLINED_FUNCTION_18_6(v199, v200, v201);
      v172 = v99 <= v202;
      *&v98 = v262;
    }

    v102 = v96;
LABEL_151:
    v91 = v259;
    if (v172)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  swift_setDeallocating();
  sub_217919160();
  v100 = v91;
  if (v99 < 0.3)
  {
    if (v92 < 0.3)
    {
LABEL_51:
      OUTLINED_FUNCTION_20_6();
      if (!(v231 ^ v232 | v45))
      {
LABEL_52:
        v137 = v99 <= v136;
        v94 = 1.0;
        *&v98 = v262;
        v138 = v276;
        goto LABEL_53;
      }

      if (v99 > v136)
      {
        OUTLINED_FUNCTION_7_12();
LABEL_83:
        v102 = v96;
LABEL_84:
        v99 = v102 + 0.5;
        v144 = v278 + 0.2;
        v145 = 1.0;
        if (v102 + 0.5 <= 1.0)
        {
          v96 = v138;
          if (v144 <= 1.0)
          {
            OUTLINED_FUNCTION_19_5();
            v281 = v164;
            if (v231 == v232)
            {
              goto LABEL_113;
            }

            goto LABEL_112;
          }

          OUTLINED_FUNCTION_18_6(v144, 1.0, v136);
          goto LABEL_111;
        }

        v146 = v144 <= 1.0;
        v281 = v136;
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_9_11();
      v102 = v96;
      v99 = v96 + 0.5;
      goto LABEL_106;
    }

    if (v99 > 0.3)
    {
      if (v92 > 0.3)
      {
        goto LABEL_64;
      }

      v94 = v101 + 0.2;
      v103 = OUTLINED_FUNCTION_1_18();
      v102 = v96;
      if (!(v231 ^ v232 | v45))
      {
        if (v99 > v103)
        {
          goto LABEL_147;
        }

        OUTLINED_FUNCTION_0_16();
        v94 = 1.0;
        if (v99 <= 1.0)
        {
          v92 = v92 + 0.2;
          if (v92 <= 1.0)
          {
            v159 = OUTLINED_FUNCTION_11_9();
            OUTLINED_FUNCTION_22_4(v159);
            if (!(v231 ^ v232 | v45))
            {
              v161 = 1.0;
LABEL_220:
              *(v160 - 32) = v161;
              OUTLINED_FUNCTION_7_12();
              v96 = v242;
              goto LABEL_221;
            }

            OUTLINED_FUNCTION_12_7();
            v91 = v91 + v250;
            v253 = 0;
            v251 = v91 == 1.0;
            v252 = v91 < 1.0;
            goto LABEL_231;
          }

          goto LABEL_193;
        }

        goto LABEL_182;
      }

      OUTLINED_FUNCTION_4_13(v103, v158);
      OUTLINED_FUNCTION_18_6(v212, v213, v214);
      if (v217 > v216)
      {
        *(v215 - 256) = v216;
        if (v99 <= 1.0)
        {
          v92 = v92 + 0.2;
          *(v215 - 256) = v216;
          if (v92 > 1.0)
          {
LABEL_193:
            v92 = 1.0;
            OUTLINED_FUNCTION_7_12();
            v96 = v218;
            goto LABEL_194;
          }

          OUTLINED_FUNCTION_11_9();
          v161 = OUTLINED_FUNCTION_3_16();
          v160 = &v285;
          v282 = v240;
          if (v240 > v241)
          {
            goto LABEL_220;
          }

          OUTLINED_FUNCTION_12_7();
          v91 = v91 + v254;
          OUTLINED_FUNCTION_3_16();
          v253 = 0;
          v251 = v91 == v255;
          v252 = v91 < v255;
LABEL_231:
          *&v98 = v262;
          v96 = v249;
          if (v252 ^ v253 | v251)
          {
            goto LABEL_160;
          }

LABEL_159:
          v91 = 1.0;
          goto LABEL_160;
        }

LABEL_182:
        OUTLINED_FUNCTION_7_12();
LABEL_183:
        OUTLINED_FUNCTION_12_7();
LABEL_152:
        v99 = 1.0;
LABEL_153:
        v92 = v92 + 0.2;
        if (v92 > 1.0)
        {
          v92 = 1.0;
        }

        goto LABEL_155;
      }

      v91 = v259;
      if (v99 > v216)
      {
        OUTLINED_FUNCTION_7_12();
        goto LABEL_152;
      }

      v92 = v92 + 0.2;
      if (v92 <= v216)
      {
        v233 = OUTLINED_FUNCTION_5_10();
        OUTLINED_FUNCTION_17_9(v233, v234, v235);
        if (!(v231 ^ v232 | v45))
        {
          *(v236 - 256) = v237;
          OUTLINED_FUNCTION_7_12();
          v96 = v238;
          goto LABEL_158;
        }

        OUTLINED_FUNCTION_15_7();
        goto LABEL_231;
      }

LABEL_132:
      v92 = 1.0;
      OUTLINED_FUNCTION_7_12();
LABEL_155:
      v96 = v105;
      goto LABEL_156;
    }

    v94 = v101 + 0.2;
    v103 = OUTLINED_FUNCTION_1_18();
    v105 = v276;
    if (!(v231 ^ v232 | v45))
    {
      v102 = v96;
      if (v99 > v103)
      {
        goto LABEL_147;
      }

      goto LABEL_130;
    }

    OUTLINED_FUNCTION_4_13(v103, v168);
    OUTLINED_FUNCTION_18_6(v205, v206, v207);
    v102 = v96;
    if (v209 > v204)
    {
      *(v208 - 256) = v204;
      if (v99 > 1.0)
      {
        goto LABEL_182;
      }

      v92 = v92 + 0.2;
      *(v208 - 256) = v204;
      v96 = v203;
      if (v92 > 1.0)
      {
        v92 = 1.0;
        OUTLINED_FUNCTION_7_12();
LABEL_194:
        OUTLINED_FUNCTION_12_7();
        goto LABEL_156;
      }

      OUTLINED_FUNCTION_11_9();
      v227 = OUTLINED_FUNCTION_3_16();
      v282 = v228;
      if (v228 > v229)
      {
        v282 = v227;
        OUTLINED_FUNCTION_7_12();
LABEL_221:
        OUTLINED_FUNCTION_12_7();
        goto LABEL_158;
      }

      OUTLINED_FUNCTION_12_7();
      v91 = v91 + v243;
      OUTLINED_FUNCTION_3_16();
      v232 = 0;
      v230 = v91 == v244;
      v231 = v91 < v244;
      goto LABEL_223;
    }

    goto LABEL_181;
  }

  if (v99 <= 0.3)
  {
    goto LABEL_141;
  }

  v102 = v96;
  if (v92 <= 0.3)
  {
    v94 = OUTLINED_FUNCTION_21_7() + 0.2;
    v103 = OUTLINED_FUNCTION_1_18();
    if (!(v231 ^ v232 | v45))
    {
      if (v99 > v103)
      {
        goto LABEL_147;
      }

LABEL_130:
      OUTLINED_FUNCTION_0_16();
      v94 = 1.0;
      if (v99 > 1.0)
      {
        goto LABEL_182;
      }

      v92 = v92 + 0.2;
      v91 = v259;
      if (v92 > 1.0)
      {
        goto LABEL_132;
      }

      v220 = OUTLINED_FUNCTION_11_9();
      OUTLINED_FUNCTION_22_4(v220);
      v96 = v222;
      if (!(v231 ^ v232 | v45))
      {
        v223 = 1.0;
        goto LABEL_208;
      }

      v91 = v91 + 0.6;
      v232 = 0;
      v230 = v91 == 1.0;
      v231 = v91 < 1.0;
      goto LABEL_223;
    }

    if (v99 > v103)
    {
      goto LABEL_146;
    }

    OUTLINED_FUNCTION_0_16();
    v204 = 1.0;
LABEL_181:
    if (v99 > v204)
    {
      goto LABEL_182;
    }

    v92 = v92 + 0.2;
    v96 = v203;
    v91 = v259;
    if (v92 > v204)
    {
      v92 = 1.0;
      OUTLINED_FUNCTION_7_12();
LABEL_156:
      OUTLINED_FUNCTION_17_9(1.0, v142, v260 + 0.2);
      if (!(v231 ^ v232 | v45))
      {
        *(v173 - 256) = v174;
      }

LABEL_158:
      OUTLINED_FUNCTION_15_7();
      if (v231 ^ v232 | v45)
      {
        goto LABEL_160;
      }

      goto LABEL_159;
    }

    v224 = OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_17_9(v224, v225, v226);
    if (!(v231 ^ v232 | v45))
    {
LABEL_208:
      *(v221 - 256) = v223;
      OUTLINED_FUNCTION_7_12();
      goto LABEL_158;
    }

    OUTLINED_FUNCTION_15_7();
LABEL_223:
    *&v98 = v262;
    if (v231 ^ v232 | v230)
    {
      goto LABEL_160;
    }

    goto LABEL_159;
  }

LABEL_75:
  OUTLINED_FUNCTION_2_11(v277 + 0.1, 0.4);
  v141 = v99 <= v147;
  *&v98 = v262;
LABEL_76:
  v96 = v139;
  if (!v141)
  {
LABEL_77:
    v99 = 1.0;
  }

LABEL_78:
  v148 = v260 + -0.2;
  if (v260 + -0.2 < 0.0)
  {
    v148 = 0.0;
  }

  v282 = v148;
  OUTLINED_FUNCTION_12_7();
  while (1)
  {
LABEL_160:
    v175 = swift_allocObject();
    *(v175 + 16) = v261;
    *(v175 + 32) = *&v98;
    *(v175 + 40) = v102;
    v176 = v275;
    *(v175 + 48) = v278;
    *(v175 + 56) = v176;
    *(v175 + 64) = v96;
    *(v175 + 72) = v94;
    *(v175 + 80) = v281;
    *(v175 + 88) = 0x3FF0000000000000;
    *(v175 + 96) = v100;
    *(v175 + 104) = v99;
    *(v175 + 112) = v92;
    *(v175 + 120) = 0x3FF0000000000000;
    v177 = v282;
    *(v175 + 128) = v269;
    *(v175 + 136) = v177;
    *(v175 + 144) = v91;
    *(v175 + 152) = 0x3FF0000000000000;
    v178 = sub_217918B34(v175);

    if (!*(v178 + 16))
    {
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    v179 = *(v178 + 32);
    v94 = *(v178 + 40);
    v91 = *(v178 + 48);
    v180 = *(v178 + 56);
    v181 = OUTLINED_FUNCTION_8_11(objc_allocWithZone(MEMORY[0x277D75348]), sel_initWithHue_saturation_brightness_alpha_);
    v182 = [v181 CGColor];

    if (*(v178 + 16) <= 1uLL)
    {
      goto LABEL_235;
    }

    v183 = *(v178 + 64);
    v94 = *(v178 + 72);
    v91 = *(v178 + 80);
    v184 = *(v178 + 88);
    v185 = objc_allocWithZone(MEMORY[0x277D75348]);
    v278 = COERCE_DOUBLE(v182);
    v186 = OUTLINED_FUNCTION_8_11(v185, sel_initWithHue_saturation_brightness_alpha_);
    v187 = [v186 CGColor];

    if (*(v178 + 16) <= 2uLL)
    {
      goto LABEL_236;
    }

    v188 = *(v178 + 96);
    v94 = *(v178 + 104);
    v91 = *(v178 + 112);
    v189 = *(v178 + 120);
    v190 = objc_allocWithZone(MEMORY[0x277D75348]);
    v277 = COERCE_DOUBLE(v187);
    v191 = OUTLINED_FUNCTION_8_11(v190, sel_initWithHue_saturation_brightness_alpha_);
    v192 = [v191 CGColor];

    if (*(v178 + 16) > 3uLL)
    {
      break;
    }

LABEL_237:
    __break(1u);
LABEL_238:
    OUTLINED_FUNCTION_3_16();
    *&v98 = v262;
    v102 = v96;
    v96 = v257;
    v100 = v91;
    if (v256 > v258)
    {
      goto LABEL_159;
    }

    v91 = v256;
  }

  v193 = *(v178 + 128);
  v194 = *(v178 + 136);
  v195 = *(v178 + 144);
  v196 = *(v178 + 152);
  v276 = COERCE_DOUBLE(v192);

  v153 = OUTLINED_FUNCTION_8_11(objc_allocWithZone(MEMORY[0x277D75348]), sel_initWithHue_saturation_brightness_alpha_);
  v149 = [v153 CGColor];

  v150 = v265;
  v151 = v264;
  v152 = v263;
LABEL_165:

  v275 = v149;
  v197 = OUTLINED_FUNCTION_6_8();
  v198(v197);
  v15 = v57;
LABEL_39:
  v115 = sub_2179660CC();
  v116 = *(v115 + 16);
  if (v116 == 0.0)
  {
    v131 = v275;

    v132 = v276;
    v133 = v277;

    v134 = v278;

    return MEMORY[0x277D84F90];
  }

  else
  {
    v284 = MEMORY[0x277D84F90];
    sub_21790A078();
    v117 = v284;
    v269 = *(v280 + 16);
    v118 = (*(v280 + 80) + 32) & ~*(v280 + 80);
    *&v261 = v115;
    *&v119 = v115 + v118;
    v268 = *(v280 + 72);
    v280 += 16;
    v267 = (v280 - 8);
    v266 = (v279 + 32);
    v270 = v15;
    v120 = v275;
    v121 = v273;
    do
    {
      v282 = v116;
      v283 = v117;
      v122 = v272;
      v281 = v119;
      v123 = v274;
      v124 = v269;
      (*&v269)(v272, COERCE_DOUBLE(*&v119), v274);
      v262 = COERCE_DOUBLE(*&v278);
      v263 = *&v277;
      v264 = *&v276;
      v265 = v120;
      sub_217918E14(v122);
      (*&v124)(v121, v122, v123);
      v125 = v270;
      v117 = v283;
      sub_2179660FC();
      (*v267)(v122, v123);
      v284 = v117;
      v126 = *(v117 + 16);
      if (v126 >= *(v117 + 24) >> 1)
      {
        sub_21790A078();
        v117 = v284;
      }

      *(v117 + 16) = v126 + 1;
      (*(v279 + 32))(v117 + ((*(v279 + 80) + 32) & ~*(v279 + 80)) + *(v279 + 72) * v126, v125, v271);
      *&v119 = *&v281 + v268;
      *&v116 = *&v282 - 1;
    }

    while (*&v282 != 1);

    v127 = v262;

    v128 = v263;
    v129 = v264;

    v130 = v265;
  }

  return v117;
}

uint64_t sub_217918AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB88, &qword_21796B168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217918B34(uint64_t a1)
{
  v33 = a1;

  sub_217919290(&v33, sub_2179199F8, sub_21791948C);
  v1 = v33;
  v2 = *(v33 + 16);
  if (v2)
  {
    v3 = (v33 + 48);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v3;
      if (*v3 < 0.5)
      {
        v31 = *v3;
        v29 = *(v3 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21790A058(0, *(v4 + 16) + 1, 1);
          v4 = v33;
        }

        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        v9 = v31;
        if (v8 >= v7 >> 1)
        {
          sub_21790A058(v7 > 1, v8 + 1, 1);
          v9 = v31;
          v4 = v33;
        }

        *(v4 + 16) = v8 + 1;
        v10 = v4 + 32 * v8;
        *(v10 + 32) = v29;
        *(v10 + 48) = v9;
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v33 = v4;

  sub_217919290(&v33, sub_217919518, sub_217919418);

  v11 = v33;
  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(v33 + 16);
    v15 = MEMORY[0x277D84F90];
    while (v13 < *(v1 + 16))
    {
      v16 = (v1 + 32 + 32 * v13);
      v17 = *v16;
      v18 = v16[1];
      if (v14)
      {
        v19 = v11[1].f64[0];
        v20 = v11 + 2;
        v21 = v14;
        while (v19 != 0.0)
        {
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v17, *v20), vceqq_f64(v18, v20[1])))))
          {
            goto LABEL_25;
          }

          --*&v19;
          v20 += 2;
          if (!--v21)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:
      v30 = v18;
      v32 = v17;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v33 = v15;
      if ((v22 & 1) == 0)
      {
        sub_21790A058(0, *(v15 + 16) + 1, 1);
        v15 = v33;
      }

      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      v26 = v30;
      v25 = v32;
      if (v24 >= v23 >> 1)
      {
        sub_21790A058(v23 > 1, v24 + 1, 1);
        v26 = v30;
        v25 = v32;
        v15 = v33;
      }

      *(v15 + 16) = v24 + 1;
      v27 = v15 + 32 * v24;
      *(v27 + 32) = v25;
      *(v27 + 48) = v26;
LABEL_25:
      if (++v13 == v12)
      {

        goto LABEL_28;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_28:
    v33 = v15;
    sub_217919170(v11);
    return v33;
  }

  return result;
}

CGColorRef sub_217918E14(uint64_t a1)
{
  v2 = sub_2179660EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  (*(v3 + 16))(&v23 - v8, a1, v2);
  sub_21796609C();
  sub_21791A3F0();
  v10 = sub_217968F1C();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    goto LABEL_5;
  }

  sub_21796607C();
  v12 = sub_217968F1C();
  v11(v7, v2);
  if (v12 & 1) != 0 || (sub_2179660AC(), v13 = sub_217968F1C(), v11(v7, v2), (v13) || (sub_21796606C(), v14 = sub_217968F1C(), v11(v7, v2), (v14))
  {
LABEL_5:
    v11(v9, v2);
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  else
  {
    sub_21796605C();
    v19 = sub_217968F1C();
    v11(v7, v2);
    if (v19 & 1) != 0 || (sub_2179660DC(), v20 = sub_217968F1C(), v11(v7, v2), (v20) || (sub_21796608C(), v21 = sub_217968F1C(), v11(v7, v2), (v21))
    {
      v11(v9, v2);
    }

    else
    {
      sub_2179660BC();
      v22 = sub_217968F1C();
      v11(v7, v2);
      v11(v9, v2);
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = 1.0;
    v16 = 1.0;
    v17 = 1.0;
  }

  return CGColorCreateGenericRGB(v15, v16, v17, 1.0);
}

unint64_t sub_21791913C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_217919170(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_217919228(v4 + v3);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 32 * v6 + 32), (a1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_217919228(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_2178E7D9C();
    *v1 = v6;
  }
}

uint64_t sub_217919290(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2178EB658(v6);
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_217919314(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_217919314(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_21796965C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_21796912C();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_217919418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 16) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        v11 = *v9;
        v12 = *(v9 - 16);
        *v9 = *(v9 - 32);
        *(v9 + 16) = v12;
        *(v9 - 16) = v7;
        *(v9 - 8) = v10;
        *(v9 - 32) = v11;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_21791948C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = v4 + 32 * a3;
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v10 = v6;
      v11 = v5;
      do
      {
        v12 = *(v11 - 24);
        v13 = *(v11 - 16) < v9;
        if (v8 != v12)
        {
          v13 = v8 < v12;
        }

        if (!v13)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v14 = *v11;
        v15 = *(v11 + 24);
        v16 = *(v11 - 16);
        *v11 = *(v11 - 32);
        *(v11 + 16) = v16;
        *(v11 - 24) = v8;
        *(v11 - 16) = v9;
        *(v11 - 8) = v15;
        *(v11 - 32) = v14;
        v11 -= 32;
      }

      while (!__CFADD__(v10++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_217919518(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 16);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 80);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                v28 = *(v25 - 16);
                *v24 = *(v25 - 32);
                v24[1] = v28;
                *(v25 - 32) = v26;
                *(v25 - 16) = v27;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 32 * v9;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 32 * v9 + 16);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*(v34 - 16) >= v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                v36 = *v34;
                v37 = *(v34 - 16);
                *v34 = *(v34 - 32);
                *(v34 + 16) = v37;
                *(v34 - 16) = v32;
                *(v34 - 8) = v35;
                *(v34 - 32) = v36;
                v34 -= 32;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 32;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_2178E7E50();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2178E7E50();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v9;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_21791A0C0((*a3 + 32 * *v75), (*a3 + 32 * *v77), (*a3 + 32 * v78), v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_217919F94(&v90, *a1, a3);
LABEL_89:
}

void sub_2179199F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_94:
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v90 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v90 = i)
      {
        if (!*a3)
        {
          goto LABEL_132;
        }

        v92 = &v8[16 * i];
        v93 = *v92;
        v94 = &v90[2 * i];
        v95 = v94[1];
        sub_21791A244((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v100);
        if (v5)
        {
          break;
        }

        if (v95 < v93)
        {
          goto LABEL_120;
        }

        if (i - 2 >= *v90)
        {
          goto LABEL_121;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - i;
        if (*v90 < i)
        {
          goto LABEL_122;
        }

        i = *v90 - 1;
        memmove(v94, v94 + 2, 16 * v96);
      }

LABEL_104:

      return;
    }

LABEL_129:
    v8 = sub_2178E9AC0(v8);
    goto LABEL_96;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v10 = *a3 + 32 * v9;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v13 = *a3 + 32 * v7;
      v14 = 32 * v7;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16) < v12;
      if (v11 != v15)
      {
        v16 = v11 < v15;
      }

      v17 = (v13 + 80);
      v18 = v7 + 2;
      while (1)
      {
        v19 = v18;
        if (++v9 >= v6)
        {
          break;
        }

        v20 = *(v17 - 1);
        v21 = *v17;
        v22 = v20 >= v11;
        if (v20 == v11)
        {
          v22 = v12 >= *v17;
        }

        v17 += 4;
        ++v18;
        v12 = v21;
        v11 = v20;
        if (v16 == v22)
        {
          if (!v16)
          {
            goto LABEL_24;
          }

          goto LABEL_14;
        }
      }

      v9 = v6;
      if (!v16)
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v9 < v7)
      {
        goto LABEL_126;
      }

      if (v7 < v9)
      {
        if (v6 >= v19)
        {
          v6 = v19;
        }

        v23 = 32 * v6;
        v24 = v9;
        v25 = v7;
        do
        {
          if (v25 != --v24)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_133;
            }

            v27 = (v26 + v14);
            v28 = v26 + v23;
            v29 = *v27;
            v30 = v27[1];
            v31 = *(v28 - 16);
            *v27 = *(v28 - 32);
            v27[1] = v31;
            *(v28 - 32) = v29;
            *(v28 - 16) = v30;
          }

          ++v25;
          v23 -= 32;
          v14 += 32;
        }

        while (v25 < v24);
        v6 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v6)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_125;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v9 < v7)
    {
      goto LABEL_124;
    }

    v99 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = *(v8 + 2);
      sub_2178E7E50();
      v8 = v88;
    }

    v46 = *(v8 + 2);
    v47 = v46 + 1;
    if (v46 >= *(v8 + 3) >> 1)
    {
      sub_2178E7E50();
      v8 = v89;
    }

    *(v8 + 2) = v47;
    v48 = v8 + 32;
    v49 = &v8[16 * v46 + 32];
    *v49 = v7;
    *(v49 + 1) = v9;
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = &v48[16 * v47 - 16];
        v52 = &v8[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_62:
          if (v56)
          {
            goto LABEL_111;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v47 < 2)
        {
          goto LABEL_113;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_77:
        if (v71)
        {
          goto LABEL_116;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v78 < v70)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v82 = &v48[16 * v50 - 16];
        v83 = *v82;
        v84 = &v48[16 * v50];
        v85 = *(v84 + 1);
        sub_21791A244((*a3 + 32 * *v82), (*a3 + 32 * *v84), (*a3 + 32 * v85), v100);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v85 < v83)
        {
          goto LABEL_106;
        }

        v5 = v8;
        v8 = *(v8 + 2);
        if (v50 > v8)
        {
          goto LABEL_107;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        if (v50 >= v8)
        {
          goto LABEL_108;
        }

        v47 = (v8 - 1);
        sub_2178E9BB4(v84 + 16, &v8[-v50 - 1], &v48[16 * v50]);
        *(v5 + 2) = v8 - 1;
        v86 = v8 > 2;
        v8 = v5;
        v5 = 0;
        if (!v86)
        {
          goto LABEL_91;
        }
      }

      v57 = &v48[16 * v47];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_123;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v6 = a3[1];
    v7 = v99;
    a4 = v97;
    if (v99 >= v6)
    {
      goto LABEL_94;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_127;
  }

  if (v7 + a4 < v6)
  {
    v6 = v7 + a4;
  }

  if (v6 < v7)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v9 == v6)
  {
    goto LABEL_42;
  }

  v32 = *a3;
  v33 = *a3 + 32 * v9;
  v34 = v7 - v9;
LABEL_33:
  v35 = v32 + 32 * v9;
  v36 = *(v35 + 8);
  v37 = *(v35 + 16);
  v38 = v34;
  v39 = v33;
  while (1)
  {
    v40 = *(v39 - 24);
    v41 = *(v39 - 16) < v37;
    if (v36 != v40)
    {
      v41 = v36 < v40;
    }

    if (!v41)
    {
LABEL_40:
      ++v9;
      v33 += 32;
      --v34;
      if (v9 == v6)
      {
        v9 = v6;
        goto LABEL_42;
      }

      goto LABEL_33;
    }

    if (!v32)
    {
      break;
    }

    v42 = *v39;
    v43 = *(v39 + 24);
    v44 = *(v39 - 16);
    *v39 = *(v39 - 32);
    *(v39 + 16) = v44;
    *(v39 - 24) = v36;
    *(v39 - 16) = v37;
    *(v39 - 8) = v43;
    *(v39 - 32) = v42;
    v39 -= 32;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

uint64_t sub_217919F94(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2178E9AC0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21791A0C0((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21791A0C0(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_217909E4C(a1, (a2 - a1) / 32, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_217909E4C(a2, (a3 - a2) / 32, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v6 - 2) < *(v10 - 2))
    {
      v17 = v6 - 4;
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        v18 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      v16 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v16;
    }

    v10 -= 4;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

uint64_t sub_21791A244(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_217909E4C(a1, (a2 - a1) / 32, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_32;
      }

      v12 = v6[1];
      v13 = v4[1];
      v14 = v4[2] < v6[2];
      if (v12 != v13)
      {
        v14 = v12 < v13;
      }

      if (!v14)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 4;
      if (!v16)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 4;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 4;
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_14:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_15;
  }

  sub_217909E4C(a2, (a3 - a2) / 32, a4);
  v10 = &v4[4 * v9];
LABEL_17:
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    v19 = *(v10 - 3);
    v20 = *(v6 - 3);
    v21 = *(v6 - 2) < *(v10 - 2);
    if (v19 != v20)
    {
      v21 = v19 < v20;
    }

    if (v21)
    {
      v23 = v6 - 4;
      v16 = v5 + 4 == v6;
      v6 -= 4;
      if (!v16)
      {
        v24 = *(v23 + 1);
        *v5 = *v23;
        *(v5 + 1) = v24;
        v6 = v23;
      }

      goto LABEL_17;
    }

    if (v10 != v5 + 4)
    {
      v22 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v22;
    }

    v10 -= 4;
  }

LABEL_32:
  v25 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v25])
  {
    memmove(v6, v4, 32 * v25);
  }

  return 1;
}

unint64_t sub_21791A3F0()
{
  result = qword_27CB8D940;
  if (!qword_27CB8D940)
  {
    sub_2179660EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D940);
  }

  return result;
}

double OUTLINED_FUNCTION_3_16()
{
  result = 1.0;
  *(v0 - 344) = 1.0;
  return result;
}

id OUTLINED_FUNCTION_8_11(id a1, SEL a2)
{

  return [a1 a2];
}

CGColorRef OUTLINED_FUNCTION_13_10(CGFloat a1)
{

  return CGColorCreateGenericRGB(a1, a1, a1, 1.0);
}

double OUTLINED_FUNCTION_22_4(double a1)
{
  result = a1 + v2;
  *(v1 - 336) = result;
  return result;
}

uint64_t sub_21791A5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = sub_217965AFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v6 + 8) == 2)
  {
    v22 = a1;
    MEMORY[0x28223BE20](v16);
    v21[-2] = a4;
    v21[-1] = a5;
    sub_21796919C();
    sub_217965A7C();
    OUTLINED_FUNCTION_2_12();
    v19 = sub_21796907C();
    sub_21791B29C(v19);
    sub_217965AAC();
    return sub_217965ABC();
  }

  else
  {
    v21[1] = a2;
    v22 = a1;
    MEMORY[0x28223BE20](v16);
    v21[-2] = a4;
    v21[-1] = a5;
    sub_21796919C();
    sub_217968A2C();
    OUTLINED_FUNCTION_2_12();
    v22 = sub_21796907C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D968, &unk_217970870);
    sub_21791B4A0();
    sub_217965ACC();
    if ((a3 & 1) == 0)
    {
      sub_217965ABC();
    }

    return (*(v14 + 32))(a6, v18, v13);
  }
}

uint64_t static MusicPicker.Reason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 1u:
      if (v5 != 1)
      {
        goto LABEL_17;
      }

      if (!v2)
      {
        v28 = *a2;

        v8 = 1;
        sub_2178BF548(v29, 1u);
        sub_2178BF548(0, 1u);
        sub_2178BF424(0, 1u);
        v30 = OUTLINED_FUNCTION_61_0();
        sub_2178BF424(v30, v31);
        if (!v4)
        {
          return v8 & 1;
        }

        v26 = OUTLINED_FUNCTION_61_0();
        goto LABEL_19;
      }

      v37 = *a1;
      if (!v4)
      {
        v32 = OUTLINED_FUNCTION_1_19(0);
        sub_2178BF548(v32, v33);
        v34 = OUTLINED_FUNCTION_1_19(0);
        sub_2178BF548(v34, v35);
        sub_2178BF424(v2, 1u);
        sub_2178BF424(0, 1u);

        goto LABEL_20;
      }

      v36 = *a2;
      sub_217965BCC();
      v8 = 1;
      v10 = OUTLINED_FUNCTION_1_19(v4);
      sub_2178BF548(v10, v11);
      v12 = OUTLINED_FUNCTION_1_19(v4);
      sub_2178BF548(v12, v13);
      v14 = OUTLINED_FUNCTION_1_19(v4);
      sub_2178BF548(v14, v15);
      OUTLINED_FUNCTION_0_17();
      sub_21791B520(v16, v17);
      v18 = sub_217968F1C();
      sub_2178BF424(v2, 1u);
      v19 = OUTLINED_FUNCTION_61_0();
      sub_2178BF424(v19, v20);
      sub_2178BF424(v2, 1u);
      v21 = OUTLINED_FUNCTION_61_0();
      sub_2178BF424(v21, v22);
      v23 = OUTLINED_FUNCTION_61_0();
      sub_2178BF424(v23, v24);

      if ((v18 & 1) == 0)
      {
        goto LABEL_20;
      }

      return v8 & 1;
    case 2u:
      if (v5 != 2)
      {
        goto LABEL_18;
      }

      sub_2178BF424(*a1, 2u);
      sub_2178BF424(v4, 2u);
      v8 = v4 ^ v2 ^ 1;
      return v8 & 1;
    case 3u:
      if (v5 != 3 || v4 != 0)
      {
        goto LABEL_18;
      }

      sub_2178BF424(*a1, 3u);
      sub_2178BF424(0, 3u);
      v8 = 1;
      return v8 & 1;
    default:
      if (*(a2 + 8))
      {
LABEL_17:
        v25 = *a1;

LABEL_18:
        sub_2178BF548(v4, v5);
        sub_2178BF424(v2, v3);
        v26 = v4;
        v27 = v5;
LABEL_19:
        sub_2178BF424(v26, v27);
LABEL_20:
        v8 = 0;
        return v8 & 1;
      }

      else
      {
        sub_217965BCC();
        sub_2178BF548(v4, 0);
        sub_2178BF548(v2, 0);
        v6 = sub_217965B7C();
        sub_2178BF424(v2, 0);
        sub_2178BF424(v4, 0);
        return v6 & 1;
      }
  }
}

uint64_t MusicPicker.Reason.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      MEMORY[0x21CEA86B0](1);
      if (!v1)
      {
        goto LABEL_8;
      }

      sub_21796975C();
      goto LABEL_7;
    case 2:
      MEMORY[0x21CEA86B0](2);
LABEL_8:
      result = sub_21796975C();
      break;
    case 3:
      result = MEMORY[0x21CEA86B0](3);
      break;
    default:
      MEMORY[0x21CEA86B0](0);
LABEL_7:
      sub_217965BCC();
      OUTLINED_FUNCTION_0_17();
      sub_21791B520(v3, v4);
      result = sub_217968ECC();
      break;
  }

  return result;
}

uint64_t MusicPicker.Reason.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21796973C();
  MusicPicker.Reason.hash(into:)();
  return sub_21796977C();
}

uint64_t sub_21791AC50()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21796973C();
  MusicPicker.Reason.hash(into:)();
  return sub_21796977C();
}

uint64_t MusicPicker.Reason.PlaybackSessionAttributes.hashValue.getter()
{
  v1 = *v0;
  sub_21796973C();
  sub_21796975C();
  return sub_21796977C();
}

uint64_t sub_21791AD30()
{
  v1 = *v0;
  sub_21796973C();
  sub_21796975C();
  return sub_21796977C();
}

unint64_t sub_21791AD78()
{
  result = qword_27CB8D958;
  if (!qword_27CB8D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D958);
  }

  return result;
}

unint64_t sub_21791ADD0()
{
  result = qword_27CB8D960;
  if (!qword_27CB8D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8D960);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_25_MusicKitInternal_SwiftUI0A6PickerV6ReasonO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s13LoadingStatusOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t _s13LoadingStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_21791AED8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t _s6ReasonO25PlaybackSessionAttributesVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s6ReasonO25PlaybackSessionAttributesVwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21791B074@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8];
  v10 = sub_2179688CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v21[-v16];
  (*(a2 + 56))(a1, a2);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_21791B568(v9);
    v18 = 1;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v21[31] = 4;
    sub_2178E8494();
    sub_217965A6C();
    (*(v11 + 8))(v17, v10);
    v18 = 0;
  }

  v19 = sub_217965A7C();
  return __swift_storeEnumTagSinglePayload(a3, v18, 1, v19);
}

uint64_t sub_21791B29C(uint64_t a1)
{
  v2 = sub_217965A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_21791B520(&qword_27CB8CA40, MEMORY[0x277D2A5F8]);
  v12 = MEMORY[0x21CEA8200](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_2178E9F54();
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

unint64_t sub_21791B4A0()
{
  result = qword_27CB8D970[0];
  if (!qword_27CB8D970[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8D968, &unk_217970870);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8D970);
  }

  return result;
}

uint64_t sub_21791B520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21791B568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return swift_getWitnessTable();
}

__n128 sub_21791B630@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *a2;
  v28 = *(a2 + 8);
  v17 = *(a2 + 3);
  v18 = _s13ItemShelfCellVMa();
  v19 = (a9 + v18[18]);
  _s9ViewModelCMa();
  swift_getWitnessTable();
  *v19 = sub_217966ACC();
  v19[1] = v20;
  v21 = v18[19];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8CCE8, &dword_2179735F0);
  swift_storeEnumTagMultiPayload();
  v22 = (a9 + v18[20]);
  *v22 = xmmword_21796B360;
  v22[1] = xmmword_217970880;
  v22[2] = xmmword_21796F280;
  (*(*(a13 - 8) + 32))(a9, a1, a13);
  v23 = a9 + v18[13];
  *v23 = v16;
  result = v28;
  *(v23 + 8) = v28;
  *(v23 + 24) = v17;
  v25 = (a9 + v18[14]);
  *v25 = a3;
  v25[1] = a4;
  *(a9 + v18[15]) = a5;
  v26 = a9 + v18[16];
  *v26 = a6;
  *(v26 + 8) = a7 & 1;
  v27 = (a9 + v18[17]);
  *v27 = a8;
  v27[1] = a10;
  v27[2] = a11;
  return result;
}