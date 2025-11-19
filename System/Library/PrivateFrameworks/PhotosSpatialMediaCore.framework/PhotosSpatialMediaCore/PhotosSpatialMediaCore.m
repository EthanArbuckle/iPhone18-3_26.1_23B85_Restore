uint64_t _s14descr1F54466F9O5SceneC17OcclusionAnalysisOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1D8BB0DD0(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_4();
  }
}

uint64_t sub_1D8BB0DE4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8BB0E10(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_4();
  }
}

uint64_t sub_1D8BB0E24(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8BB0E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1D8BB0F14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8BB30A0();
  *a1 = result;
  return result;
}

_DWORD *sub_1D8BB0FA8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D8BB0FC4(unsigned int *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1D8BB0EB0(v2, v3);
  *v1 = result;
  return result;
}

unint64_t sub_1D8BB0FEC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8BB2D5C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1D8BB1020@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8BB30D8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1D8BB1054(unsigned int *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1D8BB0EB8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D8BB10B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8BB10DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8BB10E0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1D8BB0E4C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8BB1108(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return OUTLINED_FUNCTION_1(a1);
  }

  else
  {
    return OUTLINED_FUNCTION_4();
  }
}

uint64_t sub_1D8BB111C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1D8BB12D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8BB9DC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D8BB1300@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BB1294();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8BB144C()
{

  return MEMORY[0x1EEE6BDD0](v0, 369, 15);
}

uint64_t get_enum_tag_for_layout_string_SaySo16MTLCommandBuffer_pGIegg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8BB1504(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D8BB153C()
{
  OUTLINED_FUNCTION_3_2();
  *v0 = sub_1D8BC4C94();
  *(v0 + 8) = v1;
}

uint64_t sub_1D8BB15B8()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BC4F5C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D8BB15E4()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BC5060();
  *v0 = result;
  return result;
}

uint64_t sub_1D8BB1620()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BC55CC();
  *v0 = result;
  return result;
}

void *sub_1D8BB164C()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BC5760();
  *v0 = result;
  return result;
}

uint64_t sub_1D8BB1678()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BC580C();
  *v0 = result;
  return result;
}

uint64_t sub_1D8BB16A4()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BC58AC();
  *v0 = result;
  return result;
}

uint64_t sub_1D8BB16D0()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BC73B4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D8BB17EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8BC99B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8BB1884()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8BB19E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8BB1A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8BB1AE0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

BOOL sub_1D8BB1B64(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1D8BB1BD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D8BB1C14()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 360))
  {
  }

  if (*(v0 + 376))
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 680))
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (*(v0 + 736))
    {
    }

    if (*(v0 + 752))
    {
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_19_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D8BB1DC8()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BE4840();
  *v0 = result;
  return result;
}

uint64_t sub_1D8BB1DF4()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BE4D3C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D8BB1E48()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BE4DEC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D8BB1E9C()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BE4EC4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D8BB1EF0()
{
  OUTLINED_FUNCTION_3_2();
  result = sub_1D8BE4FB8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D8BB2024()
{
  OUTLINED_FUNCTION_17_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D8BB2080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8BEBB2C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8BB227C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4BC0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1D8BB2340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4BC0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D8BB23F4()
{
  v1 = sub_1D8BEFF30();
  OUTLINED_FUNCTION_3_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D8BB24AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t SpatialPhoto.RenderEffectContext.commandBuffer.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t SpatialPhoto.RenderEffectContext.scene.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SpatialPhoto.RenderEffectContext.primaryDrawable.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 272) = a1;
  return result;
}

uint64_t SpatialPhoto.RenderEffectContext.secondaryDrawable.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 536) = a1;
  return result;
}

uint64_t sub_1D8BB2748(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 544))
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

uint64_t sub_1D8BB2788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
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
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
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
      *(result + 544) = 1;
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

    *(result + 544) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D8BB28DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BB28FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8BB2978(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BB2998(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D8BB29FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BB2A1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8BB2B40(uint64_t a1, int a2)
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

uint64_t sub_1D8BB2B60(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8BB2B9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8BF0340();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(v5 + 16))(v8, v2, v4);
  sub_1D8BB33F0(&qword_1ECAA4248, MEMORY[0x1E697A3D0]);
  sub_1D8BF0D20();
  if (sub_1D8BF0D30())
  {
    (*(v5 + 8))(v10, v4);
    v11 = 1;
  }

  else
  {
    sub_1D8BF0D40();
    (*(v5 + 32))(a1, v10, v4);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v4);
}

unint64_t sub_1D8BB2D5C(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

uint64_t sub_1D8BB2E40()
{
  sub_1D8BF1070();
  swift_getWitnessTable();
  sub_1D8BF0280();
  return sub_1D8BF1090();
}

uint64_t sub_1D8BB2EA8()
{
  v0 = sub_1D8BF09E0();
  v1 = MEMORY[0x1DA722A30](v0);

  return v1;
}

uint64_t sub_1D8BB2EE0()
{
  sub_1D8BF09E0();
  sub_1D8BF0A50();
}

uint64_t sub_1D8BB2F34()
{
  sub_1D8BF09E0();
  sub_1D8BF1070();
  sub_1D8BF0A50();
  v0 = sub_1D8BF1090();

  return v0;
}

uint64_t sub_1D8BB2FA8(uint64_t a1, id *a2)
{
  result = sub_1D8BF09C0();
  *a2 = 0;
  return result;
}

uint64_t sub_1D8BB3020(uint64_t a1, id *a2)
{
  v3 = sub_1D8BF09D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D8BB30A0()
{
  sub_1D8BF09E0();
  v0 = sub_1D8BF09B0();

  return v0;
}

unint64_t sub_1D8BB30D8(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

uint64_t sub_1D8BB3104()
{
  swift_getWitnessTable();

  return sub_1D8BF0270();
}

void sub_1D8BB3170(uint64_t a1@<X8>)
{
  sub_1D8BB31A4();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1D8BB31AC@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D8BB31D8@<X0>(_DWORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t sub_1D8BB3200(unsigned int *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1D8BE34EC(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D8BB3228(unsigned int *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1D8BE3520(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D8BB32A4(uint64_t a1)
{
  v2 = sub_1D8BB33F0(&qword_1ECAA4238, type metadata accessor for MXISerializeOption);
  v3 = sub_1D8BB33F0(&qword_1ECAA4240, type metadata accessor for MXISerializeOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8BB33F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8BB3438@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D8BF09B0();

  *a1 = v2;
  return result;
}

uint64_t sub_1D8BB3480(uint64_t a1)
{
  v2 = sub_1D8BB33F0(&qword_1ECAA4228, type metadata accessor for VNImageOption);
  v3 = sub_1D8BB33F0(&qword_1ECAA4230, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1D8BB39AC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D8BB3A9C(int a1, double a2, double a3)
{
  v21[59] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8BF58A0;
  v21[0] = *MEMORY[0x1E6966100];
  type metadata accessor for CFString(0);
  sub_1D8BB4128(&qword_1ECAA4268, type metadata accessor for CFString);
  v8 = v21[0];
  OUTLINED_FUNCTION_0_0();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = 1;
  v21[0] = *MEMORY[0x1E69660D8];
  v9 = v21[0];
  OUTLINED_FUNCTION_0_0();
  v10 = sub_1D8BF0980();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4408);
  *(inited + 144) = v10;
  v21[0] = *MEMORY[0x1E6966208];
  v11 = v21[0];
  OUTLINED_FUNCTION_0_0();
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = MEMORY[0x1E69E6530];
  *(inited + 240) = MEMORY[0x1E69E6530];
  *(inited + 216) = a2;
  v21[0] = *MEMORY[0x1E69660B8];
  v13 = v21[0];
  OUTLINED_FUNCTION_0_0();
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (a3 >= 9.22337204e18)
  {
    goto LABEL_16;
  }

  *(inited + 312) = v12;
  *(inited + 288) = a3;
  v21[0] = *MEMORY[0x1E6966130];
  v14 = v21[0];
  OUTLINED_FUNCTION_0_0();
  *(inited + 384) = MEMORY[0x1E69E7668];
  *(inited + 360) = a1;
  v15 = *MEMORY[0x1E6966150];
  OUTLINED_FUNCTION_0_0();
  *(inited + 456) = v12;
  *(inited + 432) = 4;
  sub_1D8BF0980();
  v21[0] = 0;
  v16 = sub_1D8BF0960();

  v17 = CVPixelBufferPoolCreate(0, 0, v16, v21);

  v18 = 0;
  v19 = v21[0];
  if (!v17 && v21[0])
  {
    _s14descr1F54466F9O15PixelBufferPoolCMa();
    v18 = swift_allocObject();
    sub_1D8BB3DE4(v19);
    v19 = v21[0];
  }

  return v18;
}

void sub_1D8BB3DE4(void *a1)
{
  *(v1 + 16) = a1;
  v2 = CVPixelBufferPoolGetPixelBufferAttributes(a1);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    sub_1D8BB40E4();
    sub_1D8BB4128(&qword_1ECAA4418, sub_1D8BB40E4);
    v3;
    sub_1D8BF0970();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D8BB4040()
{

  return swift_deallocClassInstance();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D8BB40E4()
{
  result = qword_1ECAA4410;
  if (!qword_1ECAA4410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAA4410);
  }

  return result;
}

uint64_t sub_1D8BB4128(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8BB4170(uint64_t a1)
{
  v2 = sub_1D8BF0CD0();

  return sub_1D8BB41F8(a1, v2);
}

unint64_t sub_1D8BB41B4(uint64_t a1)
{
  v2 = sub_1D8BF0D70();

  return sub_1D8BB42B8(a1, v2);
}

unint64_t sub_1D8BB41F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1D8BB40E4();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1D8BF0CE0();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D8BB42B8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1D8BB437C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1DA722D30](v8, a1);
    sub_1D8BB43D8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return sub_1D8BF0D90();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_unknownObjectRetain();
}

id OUTLINED_FUNCTION_3_0(id a1)
{

  return a1;
}

unint64_t SpatialPhoto.SpatialPhotoSupportLevel.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D8BB44E8@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialPhoto.SpatialPhotoSupportLevel.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t static SpatialPhoto.deviceSupportLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = PFPosterDeviceSpatialPhotoSupportLevel();
  if (result >= 3)
  {
    result = sub_1D8BF0E60();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D8BB45DC()
{
  result = qword_1ECAA4420;
  if (!qword_1ECAA4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4420);
  }

  return result;
}

uint64_t _s14descr1F54466F9O24SpatialPhotoSupportLevelOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14descr1F54466F9O24SpatialPhotoSupportLevelOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1D8BB47A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1D8BB41B4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1D8BBF8C0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void SpatialPhoto.Scene.init(url:metalDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v22;
  a20 = v23;
  v93 = v21;
  v25 = v24;
  v98 = v26;
  sub_1D8BEFEC0();
  OUTLINED_FUNCTION_3_1();
  v95 = v27;
  v96 = v28;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_39();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00]();
  v92 = &v88 - v32;
  v33 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v35 = v34;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_39();
  v94 = v36 - v37;
  MEMORY[0x1EEE9AC00]();
  v39 = &v88 - v38;
  v40 = [objc_opt_self() weakObjectsHashTable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4430);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 16) = v40;
  *(v20 + 376) = v41;
  *(v20 + 384) = 0;
  v97 = v20;
  v91 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto5Scene_dateCreated;
  sub_1D8BEFF20();
  if (qword_1ECAA3E78 != -1)
  {
    OUTLINED_FUNCTION_6();
    swift_once();
  }

  v42 = sub_1D8BF0820();
  OUTLINED_FUNCTION_71(v42, qword_1ECAA4C20);
  sub_1D8BF0810();
  sub_1D8BF07D0();
  v43 = sub_1D8BF0810();
  v44 = sub_1D8BF0C90();
  v45 = sub_1D8BF0CF0();
  v90 = v31;
  if (v45)
  {
    OUTLINED_FUNCTION_61();
    v46 = v33;
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v43, v44, v48, "SpatialPhotoRenderFirstFrame", "", v47, 2u);
    v33 = v46;
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  (*(v35 + 16))(v94, v39, v33);
  sub_1D8BF0860();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  OUTLINED_FUNCTION_50();
  v49 = sub_1D8BF0850();
  (*(v35 + 8))(v39, v33);
  *(v97 + 384) = v49;

  if (v25)
  {
    v50 = v25;
    v52 = v95;
    v51 = v96;
    v53 = v98;
  }

  else
  {
    v54 = MTLCreateSystemDefaultDevice();
    v52 = v95;
    v51 = v96;
    v53 = v98;
    if (!v54)
    {
      sub_1D8BBE5B4();
      OUTLINED_FUNCTION_65();
      *v85 = 0;
      swift_willThrow();
      (*(v51 + 8))(v53, v52);
      goto LABEL_17;
    }

    v50 = v54;
  }

  v55 = *(v51 + 16);
  v56 = v92;
  v55(v92, v53, v52);
  objc_allocWithZone(MEMORY[0x1E69ADA20]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v57 = v93;
  v58 = sub_1D8BBE358(v56, v50);
  v95 = v57;
  if (v57)
  {
    (*(v51 + 8))(v98, v52);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_17:
    v86 = v97;

    sub_1D8BEFF30();
    OUTLINED_FUNCTION_20();
    (*(v87 + 8))(&v91[v86]);
    type metadata accessor for SpatialPhoto.Scene();
    swift_deallocPartialClassInstance();
    goto LABEL_18;
  }

  v59 = v52;
  v93 = v50;
  v94 = v25;
  v60 = v97;
  *(v97 + 16) = v58;
  v61 = v58;
  sub_1D8BB4F80(v61, v100);
  memcpy((v60 + 32), v100, 0x151uLL);
  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v62 = sub_1D8BF08A0();
  __swift_project_value_buffer(v62, qword_1EE320A70);
  v63 = v90;
  v64 = v98;
  v55(v90, v98, v59);
  v65 = v61;

  v66 = sub_1D8BF0880();
  v67 = sub_1D8BF0BB0();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = v59;
    v69 = OUTLINED_FUNCTION_76();
    v92 = swift_slowAlloc();
    a10 = v92;
    *v69 = 136446722;
    v99 = v60;
    v89 = v67;
    v70 = sub_1D8BF10C0();
    v72 = sub_1D8BBE6E8(v70, v71, &a10);
    v88 = v66;
    v73 = v72;

    *(v69 + 4) = v73;
    v91 = v65;
    *(v69 + 12) = 2082;
    v74 = sub_1D8BB53E0();
    v76 = sub_1D8BBE6E8(v74, v75, &a10);

    *(v69 + 14) = v76;
    *(v69 + 22) = 2082;
    OUTLINED_FUNCTION_30();
    sub_1D8BC148C(v77, v78);
    v79 = sub_1D8BF0FA0();
    v81 = v80;
    v82 = *(v96 + 8);
    v82(v63, v68);
    sub_1D8BBE6E8(v79, v81, &a10);
    OUTLINED_FUNCTION_50();

    *(v69 + 24) = v79;
    v83 = v88;
    _os_log_impl(&dword_1D8BAF000, v88, v89, "Scene[%{public}s].init mxi:%{public}s url:%{public}s", v69, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v82(v98, v68);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v84 = *(v96 + 8);
    v84(v64, v59);
    v84(v63, v59);
  }

LABEL_18:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_1D8BB4F80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + 264);
  sub_1D8BB7694(&v43);
  v5 = v43;
  [a1 aspectRatio];
  v7 = v6;
  [a1 verticalFOV];
  v9 = v8;
  v41 = [a1 resolutionWidth];
  v10 = [a1 resolutionHeight];
  v11.f32[0] = v41;
  v11.f32[1] = v10;
  v42 = v11;
  [a1 depthRange];
  v13 = v12;
  [a1 depthRange];
  v15 = v14;
  *v16.i32 = vcvts_n_f32_u32(v10, 1uLL) / tanf(v9 * 0.5);
  v17 = COERCE_DOUBLE(vdup_lane_s32(v16, 0));
  sub_1D8BC2A1C(v77, v42, v17);
  *&v76[8] = v77[0];
  *&v76[24] = v77[1];
  *&v76[40] = v77[2];
  type metadata accessor for SpatialPhoto.Scene();
  sub_1D8BBF59C(a1);
  static SpatialPhoto.Scene.deserializeMetadata(userDataString:)();

  v19 = v43;
  v20 = v44;
  v21 = v45;
  v74 = v46;
  v75 = v47;
  v22 = v48;
  v23 = v49;
  v24 = v50;
  v25 = v51;
  v26 = v52;
  v72 = v53;
  v73 = v54;
  v27 = v55;
  v28 = v56;
  v29 = v57;
  v30 = v58;
  v31 = v59;
  v71 = v61;
  v70 = v60;
  v32 = v62;
  v33 = v63;
  v34 = v64;
  *(v69 + 3) = *&v65[3];
  v69[0] = *v65;
  v35 = v66;
  v36 = v67;
  v37 = v68;
  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
  *(a2 + 12) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v42;
  *(a2 + 32) = v17;
  v38 = *&v76[16];
  *(a2 + 40) = *v76;
  *(a2 + 56) = v38;
  *(a2 + 72) = *&v76[32];
  *(a2 + 88) = *&v76[48];
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  *(a2 + 116) = v21;
  *(a2 + 119) = v75;
  *(a2 + 117) = v74;
  *(a2 + 120) = v22;
  *(a2 + 136) = v23;
  *(a2 + 152) = v24;
  *(a2 + 168) = v25;
  *(a2 + 184) = v26;
  *(a2 + 190) = v73;
  *(a2 + 186) = v72;
  *(a2 + 192) = v27;
  *(a2 + 208) = v28;
  *(a2 + 224) = v29;
  *(a2 + 240) = v30;
  *(a2 + 256) = v31;
  v39 = v70;
  *(a2 + 262) = v71;
  *(a2 + 258) = v39;
  *v4 = v32;
  v4[1] = v33;
  *(a2 + 296) = v34;
  v40 = v69[0];
  *(a2 + 300) = *(v69 + 3);
  *(a2 + 297) = v40;
  *(a2 + 304) = v35;
  *(a2 + 320) = v36;
  *(a2 + 336) = v37;
  return result;
}

uint64_t sub_1D8BB53E0()
{
  v1 = v0;
  sub_1D8BF0DE0();
  MEMORY[0x1DA722A10](0x6E65635349584D3CLL, 0xEA00000000005B65);
  v2 = sub_1D8BF10C0();
  MEMORY[0x1DA722A10](v2);

  MEMORY[0x1DA722A10](0x3A736572205DLL, 0xE600000000000000);
  v3 = sub_1D8BBE26C();
  MEMORY[0x1DA722A10](v3);

  MEMORY[0x1DA722A10](980443424, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8BF5A50;
  [v1 aspectRatio];
  v5 = MEMORY[0x1E69E6448];
  v6 = MEMORY[0x1E69E64A8];
  *(v4 + 56) = MEMORY[0x1E69E6448];
  *(v4 + 64) = v6;
  *(v4 + 32) = v7;
  v8 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v8);

  MEMORY[0x1DA722A10](0x5B3A726420, 0xE500000000000000);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D8BF5A50;
  [v1 depthRange];
  *(v9 + 56) = v5;
  *(v9 + 64) = v6;
  *(v9 + 32) = v10;
  v11 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v11);

  MEMORY[0x1DA722A10](44, 0xE100000000000000);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D8BF5A50;
  [v1 depthRange];
  *(v12 + 56) = v5;
  *(v12 + 64) = v6;
  *(v12 + 32) = v13;
  v14 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v14);

  MEMORY[0x1DA722A10](0x3A786574205DLL, 0xE600000000000000);
  v15 = sub_1D8BBBE3C();
  MEMORY[0x1DA722A10](v15);

  MEMORY[0x1DA722A10](980579360, 0xE400000000000000);
  [v1 triangleCount];
  v16 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v16);

  MEMORY[0x1DA722A10](0x3A72746F20, 0xE500000000000000);
  [v1 opaqueTriangleCount];
  v17 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v17);

  MEMORY[0x1DA722A10](0x3A636C6120, 0xE500000000000000);
  v18 = sub_1D8BBCF34();
  MEMORY[0x1DA722A10](v18);

  MEMORY[0x1DA722A10](0x3A6169656C20, 0xE600000000000000);
  v19 = sub_1D8BBCF34();
  MEMORY[0x1DA722A10](v19);

  MEMORY[0x1DA722A10](0x3A766F6620, 0xE500000000000000);
  v20 = sub_1D8BBCF34();
  MEMORY[0x1DA722A10](v20);

  MEMORY[0x1DA722A10](62, 0xE100000000000000);
  return 0;
}

uint64_t SpatialPhoto.Scene.__allocating_init(data:metalDevice:)()
{
  OUTLINED_FUNCTION_55();
  v0 = swift_allocObject();
  SpatialPhoto.Scene.init(data:metalDevice:)();
  return v0;
}

void SpatialPhoto.Scene.init(data:metalDevice:)()
{
  OUTLINED_FUNCTION_43();
  v40 = v1;
  v2 = v0;
  v42 = v3;
  v4 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_39();
  v41 = v7 - v8;
  MEMORY[0x1EEE9AC00]();
  v10 = &v37 - v9;
  v11 = [objc_opt_self() weakObjectsHashTable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4430);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  *(v2 + 47) = v12;
  *(v2 + 48) = 0;
  v39 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto5Scene_dateCreated;
  sub_1D8BEFF20();
  if (qword_1ECAA3E78 != -1)
  {
    OUTLINED_FUNCTION_6();
    swift_once();
  }

  v13 = sub_1D8BF0820();
  OUTLINED_FUNCTION_71(v13, qword_1ECAA4C20);
  sub_1D8BF0810();
  sub_1D8BF07D0();
  v14 = sub_1D8BF0810();
  v15 = sub_1D8BF0C90();
  if (sub_1D8BF0CF0())
  {
    OUTLINED_FUNCTION_61();
    v16 = swift_slowAlloc();
    v38 = v4;
    v17 = v16;
    *v16 = 0;
    v18 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v14, v15, v18, "SpatialPhotoRenderFirstFrame", "", v17, 2u);
    v4 = v38;
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  (*(v6 + 16))(v41, v10, v4);
  sub_1D8BF0860();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  OUTLINED_FUNCTION_50();
  v19 = sub_1D8BF0850();
  (*(v6 + 8))(v10, v4);
  *(v2 + 48) = v19;

  if (v42)
  {
    v20 = v42;
  }

  else
  {
    v21 = MTLCreateSystemDefaultDevice();
    if (!v21)
    {
      sub_1D8BBE5B4();
      OUTLINED_FUNCTION_65();
      *v33 = 0;
      swift_willThrow();
      v34 = OUTLINED_FUNCTION_62();
      sub_1D8BBE7AC(v34, v35);
      goto LABEL_13;
    }

    v20 = v21;
  }

  v22 = objc_allocWithZone(MEMORY[0x1E69ADA20]);
  swift_unknownObjectRetain();
  v23 = OUTLINED_FUNCTION_62();
  sub_1D8BBE804(v23, v24);
  swift_unknownObjectRetain();
  v25 = OUTLINED_FUNCTION_62();
  v26 = v40;
  v28 = sub_1D8BBE4BC(v25, v27, v20);
  if (v26)
  {
    swift_unknownObjectRelease();
    v29 = OUTLINED_FUNCTION_62();
    sub_1D8BBE7AC(v29, v30);
    swift_unknownObjectRelease();
LABEL_13:

    sub_1D8BEFF30();
    OUTLINED_FUNCTION_20();
    (*(v36 + 8))(&v2[v39]);
    type metadata accessor for SpatialPhoto.Scene();
    swift_deallocPartialClassInstance();
    goto LABEL_14;
  }

  *(v2 + 2) = v28;
  sub_1D8BB4F80(v28, v43);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v31 = OUTLINED_FUNCTION_62();
  sub_1D8BBE7AC(v31, v32);
  memcpy(v2 + 32, v43, 0x151uLL);
LABEL_14:
  OUTLINED_FUNCTION_44();
}

uint64_t SpatialPhoto.Scene.__allocating_init(mxiScene:)(void *a1)
{
  OUTLINED_FUNCTION_55();
  v2 = swift_allocObject();
  SpatialPhoto.Scene.init(mxiScene:)(a1);
  return v2;
}

void *SpatialPhoto.Scene.init(mxiScene:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_39();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00]();
  v11 = v39 - v10;
  v12 = [objc_opt_self() weakObjectsHashTable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4430);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  v2[47] = v13;
  v2[48] = 0;
  sub_1D8BEFF20();
  if (qword_1ECAA3E78 != -1)
  {
    OUTLINED_FUNCTION_6();
    swift_once();
  }

  v14 = sub_1D8BF0820();
  __swift_project_value_buffer(v14, qword_1ECAA4C20);
  sub_1D8BF0810();
  sub_1D8BF07D0();
  v15 = sub_1D8BF0810();
  v16 = sub_1D8BF0C90();
  if (sub_1D8BF0CF0())
  {
    OUTLINED_FUNCTION_61();
    v17 = swift_slowAlloc();
    v39[1] = v9;
    v18 = v4;
    v19 = a1;
    v20 = v17;
    *v17 = 0;
    v21 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v15, v16, v21, "SpatialPhotoRenderFirstFrame", "", v20, 2u);
    a1 = v19;
    v4 = v18;
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  v22 = OUTLINED_FUNCTION_16();
  v23(v22);
  sub_1D8BF0860();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  v24 = sub_1D8BF0850();
  (*(v6 + 8))(v11, v4);
  v2[48] = v24;

  v2[2] = a1;
  v25 = a1;
  sub_1D8BB4F80(v25, v41);
  memcpy(v2 + 4, v41, 0x151uLL);
  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v26 = sub_1D8BF08A0();
  __swift_project_value_buffer(v26, qword_1EE320A70);
  v27 = v25;

  v28 = sub_1D8BF0880();
  v29 = sub_1D8BF0BB0();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_84();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39[2] = v2;
    v40 = v31;
    *v30 = 136446466;
    v32 = sub_1D8BF10C0();
    v34 = sub_1D8BBE6E8(v32, v33, &v40);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    v35 = sub_1D8BB53E0();
    v37 = sub_1D8BBE6E8(v35, v36, &v40);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_1D8BAF000, v28, v29, "Scene[%{public}s].init mxi:%{public}s", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  else
  {
  }

  return v2;
}

uint64_t sub_1D8BB6088()
{
  sub_1D8BF0DE0();

  OUTLINED_FUNCTION_48();
  v0 = sub_1D8BF10C0();
  MEMORY[0x1DA722A10](v0);

  MEMORY[0x1DA722A10](0x3A69786D205DLL, 0xE600000000000000);
  OUTLINED_FUNCTION_48();
  v1 = sub_1D8BF10C0();
  MEMORY[0x1DA722A10](v1);

  MEMORY[0x1DA722A10](62, 0xE100000000000000);
  return 0x5B656E6563533CLL;
}

void sub_1D8BB617C()
{
  OUTLINED_FUNCTION_43();
  v1 = v0;
  v40 = v2;
  v4 = v3;
  v44[44] = *MEMORY[0x1E69E9840];
  v5 = sub_1D8BEFEC0();
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_53();
  v10 = v9 - v8;
  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v11 = sub_1D8BF08A0();
  OUTLINED_FUNCTION_71(v11, qword_1EE320A70);
  (*(v7 + 16))(v10, v4, v5);

  v12 = sub_1D8BF0880();
  v13 = sub_1D8BF0BB0();

  if (os_log_type_enabled(v12, v13))
  {
    v39 = v13;
    v14 = OUTLINED_FUNCTION_76();
    v43 = swift_slowAlloc();
    *v14 = 136446722;
    v44[0] = v0;
    v15 = sub_1D8BF10C0();
    v17 = sub_1D8BBE6E8(v15, v16, &v43);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    memcpy(v44, (v0 + 32), 0x151uLL);
    memcpy(v42, (v0 + 128), sizeof(v42));
    sub_1D8BBE85C(v44, &v41);
    v18 = sub_1D8BF0A40();
    v20 = sub_1D8BBE6E8(v18, v19, &v43);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    OUTLINED_FUNCTION_30();
    sub_1D8BC148C(v21, v22);
    v23 = sub_1D8BF0FA0();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_51();
    v27(v26);
    v28 = sub_1D8BBE6E8(v23, v25, &v43);

    *(v14 + 24) = v28;
    _os_log_impl(&dword_1D8BAF000, v12, v39, "Writing Scene[%{public}s] metadata:%{public}s to URL:%{public}s", v14, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  else
  {

    v29 = OUTLINED_FUNCTION_51();
    v30(v29);
  }

  v31 = *(v1 + 16);
  v32 = sub_1D8BEFEB0();
  if (v40)
  {
    type metadata accessor for MXISerializeOption(0);
    OUTLINED_FUNCTION_29();
    sub_1D8BC148C(v33, v34);
    OUTLINED_FUNCTION_82();
    v35 = sub_1D8BF0960();
  }

  else
  {
    v35 = 0;
  }

  v44[0] = 0;
  v36 = [v31 writeToURL:v32 withOptions:v35 error:v44];

  if (v36)
  {
    v37 = v44[0];
  }

  else
  {
    v38 = v44[0];
    sub_1D8BEFEA0();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_44();
}

void sub_1D8BB6584()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  __dst[44] = *MEMORY[0x1E69E9840];
  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v3 = sub_1D8BF08A0();
  __swift_project_value_buffer(v3, qword_1EE320A70);
  OUTLINED_FUNCTION_50();

  v4 = sub_1D8BF0880();
  v5 = sub_1D8BF0BB0();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_84();
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136446466;
    __dst[0] = v0;
    v7 = sub_1D8BF10C0();
    v9 = sub_1D8BBE6E8(v7, v8, &v23);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    OUTLINED_FUNCTION_45();
    swift_beginAccess();
    memcpy(__dst, v0 + 4, 0x151uLL);
    memcpy(v22, v0 + 16, sizeof(v22));
    sub_1D8BBE85C(__dst, &v21);
    v10 = sub_1D8BF0A40();
    v12 = sub_1D8BBE6E8(v10, v11, &v23);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1D8BAF000, v4, v5, "Serializing Scene[%{public}s] metadata:%{public}s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  v13 = v0[2];
  if (v2)
  {
    type metadata accessor for MXISerializeOption(0);
    OUTLINED_FUNCTION_29();
    sub_1D8BC148C(v14, v15);
    v2 = sub_1D8BF0960();
  }

  __dst[0] = 0;
  v16 = [v13 serializeWithOptions:v2 error:__dst];

  v17 = __dst[0];
  v18 = sub_1D8BEFEF0();
  v20 = v19;

  if (v17)
  {
    swift_willThrow();
    sub_1D8BBE7AC(v18, v20);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_1D8BB68A4(void *__src)
{
  memcpy(__dst, __src, 0x151uLL);
  sub_1D8BBE85C(__dst, &v3);
  return sub_1D8BB695C(__src);
}

uint64_t sub_1D8BB6900@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  OUTLINED_FUNCTION_90(v5);
  memcpy(a1, (v1 + 32), 0x151uLL);
  return sub_1D8BBE85C(v5, &v4);
}

uint64_t sub_1D8BB695C(const void *a1)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_90(v4);
  memcpy((v1 + 32), a1, 0x151uLL);
  return sub_1D8BBF6E0(v4);
}

uint64_t sub_1D8BB69B8(uint64_t a1, float a2)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_72(v23);
  v22 = *(a1 + 128);
  memcpy(__dst, (a1 + 149), 0xDCuLL);
  __dst[220] = 0;
  __src[0] = *(a1 + 128);
  *&__src[1] = a2;
  BYTE4(__src[1]) = 0;
  memcpy(&__src[1] + 5, (a1 + 149), 0xDCuLL);
  memcpy(v14, __src, 0xF1uLL);
  OUTLINED_FUNCTION_72(v25);
  OUTLINED_FUNCTION_64(v20);
  sub_1D8BBE85C(v23, &v16);
  sub_1D8BBE894(__src, &v16);
  sub_1D8BBE85C(v25, &v16);
  v11 = static SpatialPhoto.Scene.PersistedMetadata.== infix(_:_:)(v14, v20, v5, v6, v7, v8, v9, v10);
  memcpy(v26, v20, 0xF1uLL);
  sub_1D8BBE8CC(v26);
  memcpy(v27, v14, 0xF1uLL);
  sub_1D8BBE8CC(v27);
  if (v11)
  {
    v16 = v22;
    v17 = a2;
    v18 = 0;
    memcpy(v19, __dst, sizeof(v19));
    v12 = &v16;
    return sub_1D8BBE8CC(v12);
  }

  OUTLINED_FUNCTION_64(v20);
  *(a1 + 128) = v22;
  *(a1 + 144) = a2;
  *(a1 + 148) = 0;
  memcpy((a1 + 149), __dst, 0xDCuLL);
  sub_1D8BBE8CC(v20);
  OUTLINED_FUNCTION_72(&v16);
  OUTLINED_FUNCTION_64(v15);
  sub_1D8BBE85C(&v16, v14);
  sub_1D8BB6D24();
  if (v2)
  {
    memcpy(v14, v15, 0xF1uLL);
    v12 = v14;
    return sub_1D8BBE8CC(v12);
  }

  memcpy(v14, v15, 0xF1uLL);
  sub_1D8BBE8CC(v14);
  return sub_1D8BB6EA0();
}

uint64_t sub_1D8BB6BA8(void (*a1)(_BYTE *))
{
  v3 = v1;
  swift_beginAccess();
  OUTLINED_FUNCTION_72(v19);
  OUTLINED_FUNCTION_64(v18);
  sub_1D8BBE85C(v19, v17);
  a1(v18);
  OUTLINED_FUNCTION_89(v20);
  OUTLINED_FUNCTION_72(v21);
  OUTLINED_FUNCTION_64(v14);
  sub_1D8BBE894(v20, v17);
  sub_1D8BBE85C(v21, v17);
  v11 = static SpatialPhoto.Scene.PersistedMetadata.== infix(_:_:)(v18, v14, v5, v6, v7, v8, v9, v10);
  memcpy(__dst, v14, 0xF1uLL);
  sub_1D8BBE8CC(__dst);
  OUTLINED_FUNCTION_89(v23);
  sub_1D8BBE8CC(v23);
  if (v11)
  {
    OUTLINED_FUNCTION_89(v17);
    v12 = v17;
    return sub_1D8BBE8CC(v12);
  }

  OUTLINED_FUNCTION_64(v16);
  OUTLINED_FUNCTION_89((v3 + 128));
  sub_1D8BBE8CC(v16);
  OUTLINED_FUNCTION_72(v17);
  OUTLINED_FUNCTION_64(__src);
  sub_1D8BBE85C(v17, v14);
  sub_1D8BB6D24();
  if (v2)
  {
    memcpy(v14, __src, 0xF1uLL);
    v12 = v14;
    return sub_1D8BBE8CC(v12);
  }

  memcpy(v14, __src, 0xF1uLL);
  sub_1D8BBE8CC(v14);
  return sub_1D8BB6EA0();
}

void sub_1D8BB6D24()
{
  type metadata accessor for SpatialPhoto.Scene();
  sub_1D8BBF59C(v0);
  static SpatialPhoto.Scene.serializeMetadata(_:existingUserDataString:)();
  if (v1)
  {
  }

  else
  {
    v4 = v2;
    v5 = v3;

    sub_1D8BBF600(v4, v5, v0);
  }
}

uint64_t SpatialPhoto.Scene.MetadataObservation.__deallocating_deinit()
{
  SpatialPhoto.Scene.MetadataObservation.deinit();

  return swift_deallocClassInstance();
}

void *sub_1D8BB6E10(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SpatialPhoto.Scene.MetadataObservation();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = *(v3 + 376);
  v9 = a1;

  os_unfair_lock_lock((v8 + 24));
  sub_1D8BBE920((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  return v7;
}

uint64_t sub_1D8BB6EA0()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  memcpy(__dst, (v0 + 32), 0x151uLL);
  v1 = *(v0 + 376);
  sub_1D8BBE85C(__dst, v3);

  os_unfair_lock_lock((v1 + 24));
  sub_1D8BC1350((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  return sub_1D8BBF6E0(__dst);
}

uint64_t sub_1D8BB6F48(id *a1, uint64_t a2, const void *a3)
{
  v30 = a2;
  v31 = a3;
  v29 = sub_1D8BF08D0();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00]();
  v28 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D8BF0900();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00]();
  v26 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 allObjects];
  type metadata accessor for SpatialPhoto.Scene.MetadataObservation();
  v9 = sub_1D8BF0AB0();

  result = sub_1D8BCFA48(v9);
  if (!result)
  {
  }

  if (result >= 1)
  {
    v11 = 0;
    v22 = v35;
    v23 = v9 & 0xC000000000000001;
    v21 = (v4 + 8);
    v20 = (v6 + 8);
    v24 = result;
    v25 = v9;
    v12 = v28;
    do
    {
      if (v23)
      {
        v13 = MEMORY[0x1DA722DA0](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      ++v11;
      v32 = *(v13 + 16);
      v14 = swift_allocObject();
      v15 = v31;
      v14[2] = v30;
      v14[3] = v13;
      memcpy(v14 + 4, v15, 0x151uLL);
      v35[2] = sub_1D8BC136C;
      v35[3] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v35[0] = sub_1D8BDBEA8;
      v35[1] = &block_descriptor;
      v16 = _Block_copy(aBlock);

      sub_1D8BBE85C(v15, v33);
      v17 = v26;
      sub_1D8BF08F0();
      v33[0] = MEMORY[0x1E69E7CC0];
      sub_1D8BC148C(&qword_1ECAA4750, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA4B40);
      sub_1D8BC13DC();
      v18 = v29;
      sub_1D8BF0D60();
      MEMORY[0x1DA722BF0](0, v17, v12, v16);
      _Block_release(v16);
      (*v21)(v12, v18);
      (*v20)(v17, v27);

      v9 = v25;
    }

    while (v24 != v11);
  }

  __break(1u);
  return result;
}

BOOL sub_1D8BB731C()
{
  v1 = [*(v0 + 16) colorTexture];
  if (!v1)
  {
    return 1;
  }

  v2 = [v1 arrayLength];
  swift_unknownObjectRelease();
  return v2 < 33;
}

float sub_1D8BB7380()
{
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  return *(v0 + 36);
}

float SpatialPhoto.Scene.Metadata.depthDistance.getter()
{
  result = *(v0 + 16) - *(v0 + 12);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t SpatialPhoto.Scene.Metadata.portraitOcclusionDepthWithFallback.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 264);
  v4 = (*(v0 + 184) & 0xFF00) == 0x300 || *(v0 + 184) != 6;
  if (*(v0 + 296) != 6)
  {
    LODWORD(v2) = 0;
  }

  if (v4)
  {
    LODWORD(v1) = v2;
  }

  return OUTLINED_FUNCTION_10(v1);
}

uint64_t SpatialPhoto.Scene.OcclusionAnalysisRegion.depth.getter()
{
  v1 = *(v0 + 32);
  if (*(v0 + 64) != 6)
  {
    v1 = 0;
  }

  return OUTLINED_FUNCTION_10(v1);
}

uint64_t SpatialPhoto.Scene.OcclusionAnalysis.depth.getter()
{
  v1 = *v0;
  if (*(v0 + 32) != 6)
  {
    v1 = 0;
  }

  return OUTLINED_FUNCTION_10(v1);
}

uint64_t SpatialPhoto.Scene.Metadata.landscapeOcclusionDepthWithFallback.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 264);
  v4 = (*(v0 + 256) & 0xFF00) == 0x300 || *(v0 + 256) != 6;
  if (*(v0 + 296) != 6)
  {
    LODWORD(v2) = 0;
  }

  if (v4)
  {
    LODWORD(v1) = v2;
  }

  return OUTLINED_FUNCTION_10(v1);
}

uint64_t SpatialPhoto.Scene.Metadata.supportsOcclusion.getter()
{
  if ((*(v0 + 184) & 0xFF00) != 0x300 && *(v0 + 184) == 6)
  {
    return 1;
  }

  v3 = (*(v0 + 256) & 0xFF00) != 0x300 && *(v0 + 256) == 6;
  return *(v0 + 296) == 6 || v3;
}

uint64_t SpatialPhoto.Scene.Metadata.generationCacheKey.getter()
{
  memcpy(__dst, (v0 + 96), 0xF1uLL);
  v1 = __dst[0];
  sub_1D8BBE894(__dst, &v3);
  return v1;
}

void sub_1D8BB7694(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 cgColorSpaceName];
  type metadata accessor for CFString(0);
  sub_1D8BC148C(&unk_1ECAA4770, type metadata accessor for CFString);
  v5 = v4;
  v6 = sub_1D8BF0270();

  if ((v6 & 1) == 0)
  {
    v8 = sub_1D8BF0270();

    if (v8)
    {
      v7 = 1;
      goto LABEL_5;
    }

    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v9 = sub_1D8BF08A0();
    __swift_project_value_buffer(v9, qword_1EE320A70);
    v10 = v2;
    v5 = sub_1D8BF0880();
    v11 = sub_1D8BF0B90();

    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = [v10 cgColorSpaceName];
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_1D8BAF000, v5, v11, "Unsupported MXIScene.cgColorSpaceName: %{public}@, falling back to displayP3.", v12, 0xCu);
      sub_1D8BBF930(v13, &qword_1ECAA45F0);
      MEMORY[0x1DA723A30](v13, -1, -1);
      MEMORY[0x1DA723A30](v12, -1, -1);
    }
  }

  v7 = 0;
LABEL_5:
  *a1 = v7;
}

double SpatialPhoto.Scene.PersistedMetadata.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 768;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 768;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = -1;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1;
  return result;
}

uint64_t SpatialPhoto.Scene.SceneError.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhoto.Scene.PersistedMetadata.generationCacheKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SpatialPhoto.Scene.PersistedMetadata.generationCacheKey.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SpatialPhoto.Scene.PersistedMetadata.pivotPointDepth.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t static SpatialPhoto.Scene.PersistedMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1;
  v12 = *(a1 + 8);
  LODWORD(v8) = *(a1 + 16);
  v13 = *(a1 + 20);
  v14 = *(a1 + 88);
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  v17 = *(a1 + 184);
  v18 = *(a1 + 200);
  v19 = *(a1 + 208);
  v20 = *(a1 + 216);
  v21 = *(a1 + 224);
  v22 = *(a1 + 232);
  v23 = *(a1 + 240);
  v24 = *(a2 + 8);
  LODWORD(v9) = *(a2 + 16);
  v25 = *(a2 + 20);
  v26 = *(a2 + 88);
  v27 = *(a2 + 160);
  v28 = *(a2 + 168);
  v29 = *(a2 + 184);
  v30 = *(a2 + 200);
  v32 = *(a2 + 208);
  v31 = *(a2 + 216);
  v33 = *(a2 + 224);
  v34 = *(a2 + 232);
  v35 = *(a2 + 240);
  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    a1 = *a1;
    a3 = *a2;
    if (*v11 != *a2 || v12 != v24)
    {
      v78 = *(a2 + 224);
      v79 = *(a2 + 232);
      v37 = *(a2 + 208);
      v38 = v22;
      v39 = v21;
      v40 = v20;
      v41 = v19;
      v42 = *(a2 + 216);
      LODWORD(v77) = *(a2 + 200);
      HIDWORD(v77) = *(a2 + 160);
      v43 = v18;
      v44 = *(a2 + 240);
      v45 = v23;
      v82 = v17;
      v83 = v16;
      v80 = *(a2 + 184);
      v81 = *(a2 + 168);
      v46 = v14;
      a1 = sub_1D8BF0FD0();
      v14 = v46;
      v29 = v80;
      v28 = v81;
      LOBYTE(v16) = v83;
      v23 = v45;
      v35 = v44;
      v18 = v43;
      v30 = v77;
      v27 = WORD2(v77);
      v31 = v42;
      v19 = v41;
      v20 = v40;
      v21 = v39;
      v22 = v38;
      v32 = v37;
      v33 = v78;
      v34 = v79;
      if ((a1 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*&v8 == *&v9)
    {
      v47 = v25;
    }

    else
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  if ((v14 & 0xFF00) == 0x300)
  {
    if ((v26 & 0xFF00) != 0x300)
    {
      return 0;
    }
  }

  else
  {
    if ((v26 & 0xFF00) == 0x300)
    {
      return 0;
    }

    LOWORD(v88) = v26;
    v48 = OUTLINED_FUNCTION_33(a1, v12, a3, v24, a5, a6, a7, a8, v76, v77, v78, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), *(a2 + 80), v88, v89, *(v11 + 24));
    v50 = v49;
    v82 = v52;
    v83 = v51;
    v80 = v54;
    v81 = v53;
    a1 = static SpatialPhoto.Scene.OcclusionAnalysisRegion.== infix(_:_:)(v48, v55);
    v29 = v80;
    v28 = v81;
    LOBYTE(v16) = v83;
    v23 = v50;
    v31 = v9;
    v19 = v8;
    if ((a1 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v15 & 0xFF00) == 0x300)
  {
    if ((v27 & 0xFF00) != 0x300)
    {
      return 0;
    }
  }

  else
  {
    if ((v27 & 0xFF00) == 0x300)
    {
      return 0;
    }

    LOWORD(v88) = v27;
    v56 = OUTLINED_FUNCTION_33(a1, v12, a3, v24, a5, a6, a7, a8, v76, v77, v78, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), *(a2 + 96), *(a2 + 104), *(a2 + 112), *(a2 + 120), *(a2 + 128), *(a2 + 136), *(a2 + 144), *(a2 + 152), v88, v89, *(v11 + 96));
    v58 = v57;
    v82 = v60;
    v83 = v59;
    v80 = v62;
    v81 = v61;
    a1 = static SpatialPhoto.Scene.OcclusionAnalysisRegion.== infix(_:_:)(v56, v63);
    v29 = v80;
    v28 = v81;
    LOBYTE(v16) = v83;
    v23 = v58;
    v31 = v9;
    v19 = v8;
    if ((a1 & 1) == 0)
    {
      return 0;
    }
  }

  if (v18 != 255)
  {
    if (v30 == 255)
    {
      return 0;
    }

    LOBYTE(v84) = v30;
    v64 = OUTLINED_FUNCTION_33(a1, v12, a3, v24, a5, a6, a7, a8, v76, v77, v78, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v84, v85, v86, v87, v88, v89, v16);
    v66 = v65;
    v68 = static SpatialPhoto.Scene.OcclusionAnalysis.== infix(_:_:)(v64, v67);
    v23 = v66;
    v31 = v9;
    v19 = v8;
    if (!v68)
    {
      return 0;
    }

LABEL_32:
    if (v23)
    {
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v35)
      {
        return 0;
      }

      v69 = v20;
      v70 = v21;
      v71 = v22;
      v72 = v32;
      v73 = v33;
      v74 = v34;
      if (!CGRectEqualToRect(*&v19, *(&v31 - 1)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v30 == 255)
  {
    goto LABEL_32;
  }

  return 0;
}

uint64_t sub_1D8BB7DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001D8BF3440 == a2;
  if (v4 || (sub_1D8BF0FD0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696F50746F766970 && a2 == 0xEF6874706544746ELL;
    if (v6 || (sub_1D8BF0FD0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x80000001D8BF3460 == a2;
      if (v7 || (sub_1D8BF0FD0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001D8BF3480 == a2;
        if (v8 || (sub_1D8BF0FD0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001D8BF34A0 == a2;
          if (v9 || (sub_1D8BF0FD0() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD00000000000001DLL && 0x80000001D8BF34C0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D8BF0FD0();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D8BB7FF0(char a1)
{
  result = 0x696F50746F766970;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1D8BB80DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8BB7DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8BB8124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BB7FDC();
  *a1 = result;
  return result;
}

uint64_t sub_1D8BB814C(uint64_t a1)
{
  v2 = sub_1D8BBE958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BB8188(uint64_t a1)
{
  v2 = sub_1D8BBE958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SpatialPhoto.Scene.PersistedMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_43();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4450);
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_54();
  v14 = *(v3 + 184);
  v15 = *(v3 + 168);
  v16 = *(v3 + 200);
  v12 = *(v3 + 224);
  v13 = *(v3 + 208);
  v11 = *(v3 + 240);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1D8BBE958();
  sub_1D8BF10B0();
  LOBYTE(v17[0]) = 0;
  sub_1D8BF0F40();
  if (!v1)
  {
    LOBYTE(v17[0]) = 1;
    OUTLINED_FUNCTION_56();
    sub_1D8BF0F60();
    memcpy(v17, (v3 + 24), 0x42uLL);
    sub_1D8BBE9AC();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_56();
    sub_1D8BF0F70();
    memcpy(v17, (v3 + 96), 0x42uLL);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_56();
    sub_1D8BF0F70();
    v17[0] = v15;
    v17[1] = v14;
    LOBYTE(v17[2]) = v16;
    sub_1D8BBEA00();
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_56();
    sub_1D8BF0F70();
    v17[0] = v13;
    v17[1] = v12;
    LOBYTE(v17[2]) = v11;
    type metadata accessor for CGRect(0);
    OUTLINED_FUNCTION_1_1();
    sub_1D8BC148C(v9, v10);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_56();
    sub_1D8BF0F70();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_44();
}

void SpatialPhoto.Scene.PersistedMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4478);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  v17 = &v39 - v16;
  v129 = 1;
  v121 = 1;
  v18 = v12[3];
  v19 = v12[4];
  v54 = v12;
  __swift_project_boxed_opaque_existential_1Tm(v12, v18);
  sub_1D8BBE958();
  sub_1D8BF10A0();
  if (v10)
  {
    v59 = v10;
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_26();
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    v98 = 0;
    v99 = 0;
    LODWORD(v100) = 0;
    OUTLINED_FUNCTION_47(v129);
    v101 = v58;
    v102 = v56;
    v103 = a10;
    v104 = v55;
    v105 = v69;
    v106 = v10;
    v107 = v15;
    v108 = v19;
    v109 = v17;
    OUTLINED_FUNCTION_42(v125);
    v110 = v57;
    v111 = v52;
    v112 = v53;
    v113 = v60;
    v114 = v61;
    v115 = v68;
    v116 = v14;
    OUTLINED_FUNCTION_28();
    v117 = *(v20 + 3);
    *(v21 + 201) = *v20;
    v118 = 0u;
    v119 = 0u;
    v22 = v121;
  }

  else
  {
    LOBYTE(v98) = 0;
    v50 = sub_1D8BF0EC0();
    v51 = v23;
    LOBYTE(v98) = 1;
    v49 = sub_1D8BF0EE0();
    v129 = BYTE4(v49) & 1;
    v88 = 2;
    sub_1D8BBEA54();
    OUTLINED_FUNCTION_81();
    sub_1D8BF0EF0();
    v58 = v89;
    v56 = v90;
    v130 = v91;
    v55 = v92;
    v24 = v93;
    v47 = v95;
    v48 = v94;
    v46 = v96;
    v45 = v97;
    v78 = 3;
    OUTLINED_FUNCTION_81();
    sub_1D8BF0EF0();
    v69 = v24;
    v53 = v14;
    v70 = v80;
    v57 = v81;
    v25 = v82;
    v26 = v83;
    v60 = v84;
    v61 = v85;
    v67 = v79;
    v68 = v86;
    v44 = v87;
    v71[0] = 4;
    sub_1D8BBEAA8();
    sub_1D8BF0EF0();
    v27 = v25;
    v63 = v98;
    v64 = v99;
    v65 = v100;
    v66 = v101;
    v62 = v102;
    type metadata accessor for CGRect(0);
    v72 = 5;
    OUTLINED_FUNCTION_1_1();
    sub_1D8BC148C(v28, v29);
    sub_1D8BF0EF0();
    v59 = 0;
    v30 = OUTLINED_FUNCTION_14();
    v31(v30);
    v52 = v73;
    v42 = v75;
    v43 = v74;
    v41 = v76;
    v121 = v77;
    *v71 = v50;
    *&v71[8] = v51;
    *&v71[16] = v49;
    *&v71[162] = v123;
    *&v71[204] = *&v122[3];
    *&v71[201] = *v122;
    v39 = v129;
    v71[20] = v129;
    *&v71[21] = v127;
    v71[23] = v128;
    v32 = v58;
    v33 = v55;
    v34 = v56;
    *&v71[24] = v58;
    *&v71[32] = v56;
    *&v71[40] = v130;
    *&v71[48] = v55;
    *&v71[56] = v69;
    *&v71[64] = v48;
    *&v71[72] = v47;
    *&v71[80] = v46;
    *&v71[88] = v45;
    *&v71[90] = v125;
    *&v71[94] = v126;
    *&v71[96] = v67;
    v35 = v57;
    *&v71[104] = v70;
    *&v71[112] = v57;
    *&v71[120] = v27;
    *&v71[128] = v26;
    v36 = v60;
    v37 = v61;
    *&v71[136] = v60;
    *&v71[144] = v61;
    *&v71[152] = v68;
    *&v71[160] = v44;
    *&v71[166] = v124;
    *&v71[168] = v63;
    *&v71[176] = v64;
    *&v71[184] = v65;
    *&v71[192] = v66;
    v71[200] = v62;
    *&v71[208] = v73;
    *&v71[216] = v74;
    *&v71[224] = v75;
    *&v71[232] = v76;
    v40 = v77;
    v71[240] = v77;
    memcpy(v53, v71, 0xF1uLL);
    sub_1D8BBE894(v71, &v98);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    v98 = v50;
    v99 = v51;
    LODWORD(v100) = v49;
    OUTLINED_FUNCTION_47(v39);
    v101 = v32;
    v102 = v34;
    v103 = v130;
    v104 = v33;
    v105 = v69;
    v106 = v48;
    v107 = v47;
    v108 = v46;
    v109 = v45;
    OUTLINED_FUNCTION_42(v125);
    v110 = v35;
    v111 = v27;
    v112 = v26;
    v113 = v36;
    v114 = v37;
    v115 = v68;
    v116 = v44;
    OUTLINED_FUNCTION_28();
    v117 = *&v122[3];
    *(v38 + 201) = *v122;
    *&v118 = v52;
    *(&v118 + 1) = v43;
    *&v119 = v42;
    *(&v119 + 1) = v41;
    v22 = v40;
  }

  v120 = v22;
  sub_1D8BBE8CC(&v98);
  OUTLINED_FUNCTION_44();
}

__n128 SpatialPhoto.Scene.OcclusionAnalysisRegion.init(normalizedRect:isInteractive:analysis:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v7 = *(a2 + 32);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  result = *a2;
  v9 = *(a2 + 16);
  *(a3 + 32) = *a2;
  *(a3 + 48) = v9;
  *(a3 + 64) = v7;
  *(a3 + 65) = a1;
  return result;
}

void SpatialPhoto.Scene.OcclusionAnalysisRegion.normalizedRect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 SpatialPhoto.Scene.OcclusionAnalysisRegion.analysis.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SpatialPhoto.Scene.OcclusionAnalysisRegion.analysis.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  *(v1 + 64) = v2;
  return result;
}

uint64_t SpatialPhoto.Scene.OcclusionAnalysisRegion.description.getter()
{
  v8 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  OUTLINED_FUNCTION_58();
  v9 = v3;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v8, v1, v2];
  sub_1D8BF09E0();
  OUTLINED_FUNCTION_92();
  v5 = OUTLINED_FUNCTION_48();
  MEMORY[0x1DA722A10](v5);

  OUTLINED_FUNCTION_63();
  v6 = OUTLINED_FUNCTION_34();
  MEMORY[0x1DA722A10](v6);

  OUTLINED_FUNCTION_77();
  return v9;
}

BOOL static SpatialPhoto.Scene.OcclusionAnalysisRegion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v2 = *(a1 + 64);
  v3 = *(a1 + 65);
  v7 = *(a2 + 48);
  v8 = *(a2 + 32);
  v4 = *(a2 + 64);
  v5 = *(a2 + 65);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v13[0] = v9;
    v13[1] = v10;
    v14 = v2;
    v11[0] = v8;
    v11[1] = v7;
    v12 = v4;
    if (static SpatialPhoto.Scene.OcclusionAnalysis.== infix(_:_:)(v13, v11))
    {
      if (v3 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

BOOL static SpatialPhoto.Scene.OcclusionAnalysis.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *(a2 + 32);
  switch(*(a1 + 32))
  {
    case 1:
      if (v8 == 1)
      {
        return *&v2 == *&v4;
      }

      return 0;
    case 2:
      if (v8 != 2)
      {
        return 0;
      }

      return *&v2 == *&v4;
    case 3:
      if (v8 != 3)
      {
        return 0;
      }

      return *&v2 == *&v4;
    case 4:
      if (v8 != 4)
      {
        return 0;
      }

      return *&v2 == *&v4;
    case 5:
      if (v8 != 5)
      {
        return 0;
      }

      return CGRectEqualToRect(*a1, *a2);
    case 6:
      if (v8 == 6)
      {
        return *&v2 == *&v4;
      }

      return 0;
    case 7:
      v9 = a1[2] | a1[1];
      if (!(v9 | v2 | v3))
      {
        v15 = v7 | v5 | v4 | v6;
        return v8 == 7 && v15 == 0;
      }

      v10 = v9 | v3;
      if (v2 == 1 && v10 == 0)
      {
        v12 = v7 | v5 | v6;
        v13 = v8 == 7 && v4 == 1;
      }

      else
      {
        v12 = v7 | v5 | v6;
        v13 = v8 == 7 && v4 == 2;
      }

      return v13 && v12 == 0;
    default:
      if (*(a2 + 32))
      {
        return 0;
      }

      return *&v2 == *&v4;
  }
}

uint64_t sub_1D8BB8F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEE00746365526465;
  if (v4 || (sub_1D8BF0FD0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736973796C616E61 && a2 == 0xE800000000000000;
    if (v6 || (sub_1D8BF0FD0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617265746E497369 && a2 == 0xED00006576697463)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D8BF0FD0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D8BB9054(char a1)
{
  if (!a1)
  {
    return 0x7A696C616D726F6ELL;
  }

  if (a1 == 1)
  {
    return 0x736973796C616E61;
  }

  return 0x617265746E497369;
}

uint64_t sub_1D8BB90CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8BB8F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8BB90F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BB904C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8BB911C(uint64_t a1)
{
  v2 = sub_1D8BBEAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BB9158(uint64_t a1)
{
  v2 = sub_1D8BBEAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SpatialPhoto.Scene.OcclusionAnalysisRegion.encode(to:)()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4498);
  OUTLINED_FUNCTION_3_1();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_54();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1D8BBEAFC();
  sub_1D8BF10B0();
  type metadata accessor for CGRect(0);
  OUTLINED_FUNCTION_1_1();
  sub_1D8BC148C(v7, v8);
  sub_1D8BF0F90();
  if (!v0)
  {
    sub_1D8BBEA00();
    sub_1D8BF0F90();
    OUTLINED_FUNCTION_87();
    sub_1D8BF0F50();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_44();
}

void SpatialPhoto.Scene.OcclusionAnalysisRegion.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44A8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_1D8BBEAFC();
  sub_1D8BF10A0();
  if (!v0)
  {
    type metadata accessor for CGRect(0);
    OUTLINED_FUNCTION_1_1();
    sub_1D8BC148C(v5, v6);
    sub_1D8BF0F10();
    sub_1D8BBEAA8();
    sub_1D8BF0F10();
    OUTLINED_FUNCTION_87();
    v7 = sub_1D8BF0ED0();
    v8 = OUTLINED_FUNCTION_82();
    v9(v8);
    *v4 = v10;
    *(v4 + 16) = v11;
    *(v4 + 32) = v10;
    *(v4 + 48) = v11;
    *(v4 + 64) = v12;
    *(v4 + 65) = v7;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_44();
}

uint64_t SpatialPhoto.Scene.OcclusionAnalysis.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_17();
      sub_1D8BF0DE0();

      strcpy(v22, ".tooOccluded(");
      HIWORD(v22[1]) = -4864;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_17();
      sub_1D8BF0DE0();

      OUTLINED_FUNCTION_21();
      v7 = v8 - 3;
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_17();
      sub_1D8BF0DE0();

      OUTLINED_FUNCTION_21();
      v7 = v6 + 2;
      goto LABEL_5;
    case 5:
      OUTLINED_FUNCTION_17();
      sub_1D8BF0DE0();

      OUTLINED_FUNCTION_21();
      v22[0] = v17;
      v22[1] = v16;
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v4, v3];
      sub_1D8BF09E0();
      OUTLINED_FUNCTION_92();
      v19 = OUTLINED_FUNCTION_48();
      MEMORY[0x1DA722A10](v19);

      return v22[0];
    case 6:
      strcpy(v22, ".depth(");
      v22[1] = 0xE700000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D8BF5A50;
      v21 = MEMORY[0x1E69E64A8];
      *(v20 + 56) = MEMORY[0x1E69E6448];
      *(v20 + 64) = v21;
      *(v20 + 32) = v1;
      goto LABEL_7;
    case 7:
      if (v1 == 1 && (v4 | v2 | v3) == 0)
      {
        v15 = 0xD000000000000011;
      }

      else
      {
        v15 = 0x756F6E45746F6E2ELL;
      }

      if (v4 | v2 | v1 | v3)
      {
        return v15;
      }

      else
      {
        return 0x65696C61536F6E2ELL;
      }

    default:
      OUTLINED_FUNCTION_17();
      sub_1D8BF0DE0();

      OUTLINED_FUNCTION_21();
LABEL_5:
      v22[0] = v7;
      v22[1] = v5;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E6448];
      *(v9 + 16) = xmmword_1D8BF5A50;
      v11 = MEMORY[0x1E69E64A8];
      *(v9 + 56) = v10;
      *(v9 + 64) = v11;
      *(v9 + 32) = v1;
LABEL_7:
      v12 = sub_1D8BF0A10();
      MEMORY[0x1DA722A10](v12);

      MEMORY[0x1DA722A10](41, 0xE100000000000000);
      return v22[0];
  }
}

uint64_t sub_1D8BB98FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65696C61536F6ELL && a2 == 0xEE00687470654474;
  if (v4 || (sub_1D8BF0FD0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001D8BF34E0 == a2;
    if (v6 || (sub_1D8BF0FD0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x67756F6E45746F6ELL && a2 == 0xEE00656361705368;
      if (v7 || (sub_1D8BF0FD0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001D8BF3500 == a2;
        if (v8 || (sub_1D8BF0FD0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756C63634F6F6F74 && a2 == 0xEB00000000646564;
          if (v9 || (sub_1D8BF0FD0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x634F6F6F54706F74 && a2 == 0xEE00646564756C63;
            if (v10 || (sub_1D8BF0FD0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001D8BF3520 == a2;
              if (v11 || (sub_1D8BF0FD0() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001D8BF3540 == a2;
                if (v12 || (sub_1D8BF0FD0() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001D8BF3560 == a2;
                  if (v13 || (sub_1D8BF0FD0() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1D8BF0FD0();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D8BB9C2C(unsigned __int8 a1)
{
  sub_1D8BF1070();
  MEMORY[0x1DA723030](a1);
  return sub_1D8BF1090();
}

unint64_t sub_1D8BB9C74(char a1)
{
  result = 0x6E65696C61536F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x67756F6E45746F6ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x756C63634F6F6F74;
      break;
    case 5:
      result = 0x634F6F6F54706F74;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6874706564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8BB9DC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D8BF0FD0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D8BB9E38()
{
  sub_1D8BF1070();
  MEMORY[0x1DA723030](0);
  return sub_1D8BF1090();
}

uint64_t sub_1D8BB9EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BB98E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8BB9ECC(uint64_t a1)
{
  v2 = sub_1D8BBECA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BB9F08(uint64_t a1)
{
  v2 = sub_1D8BBECA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BB9F44()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t sub_1D8BB9F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8BB98FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8BB9FB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8BB9C24();
  *a1 = result;
  return result;
}

uint64_t sub_1D8BB9FE0(uint64_t a1)
{
  v2 = sub_1D8BBEB50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA01C(uint64_t a1)
{
  v2 = sub_1D8BBEB50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA058(uint64_t a1)
{
  v2 = sub_1D8BBEBA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA094(uint64_t a1)
{
  v2 = sub_1D8BBEBA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA0D0(uint64_t a1)
{
  v2 = sub_1D8BBEBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA10C(uint64_t a1)
{
  v2 = sub_1D8BBEBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA14C(uint64_t a1)
{
  v2 = sub_1D8BBEE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA188(uint64_t a1)
{
  v2 = sub_1D8BBEE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA1C4(uint64_t a1)
{
  v2 = sub_1D8BBEE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA200(uint64_t a1)
{
  v2 = sub_1D8BBEE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA23C(uint64_t a1)
{
  v2 = sub_1D8BBEDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA278(uint64_t a1)
{
  v2 = sub_1D8BBEDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA2B4(uint64_t a1)
{
  v2 = sub_1D8BBED9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA2F0(uint64_t a1)
{
  v2 = sub_1D8BBED9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA32C(uint64_t a1)
{
  v2 = sub_1D8BBEC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA368(uint64_t a1)
{
  v2 = sub_1D8BBEC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA3A4(uint64_t a1)
{
  v2 = sub_1D8BBED48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA3E0(uint64_t a1)
{
  v2 = sub_1D8BBED48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8BBA41C()
{
  sub_1D8BF1070();
  MEMORY[0x1DA723030](0);
  return sub_1D8BF1090();
}

uint64_t sub_1D8BBA45C(uint64_t a1)
{
  v2 = sub_1D8BBECF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8BBA498(uint64_t a1)
{
  v2 = sub_1D8BBECF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpatialPhoto.Scene.OcclusionAnalysis.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44C0);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44C8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44D0);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44D8);
  OUTLINED_FUNCTION_2_1(v4, &v45);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44E0);
  OUTLINED_FUNCTION_2_1(v6, &v44);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44E8);
  OUTLINED_FUNCTION_2_1(v8, &v43);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44F0);
  OUTLINED_FUNCTION_2_1(v10, &v41);
  v36 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44F8);
  OUTLINED_FUNCTION_2_1(v13, v40);
  v35 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4500);
  OUTLINED_FUNCTION_2_1(v16, &v42);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4508);
  OUTLINED_FUNCTION_3_1();
  v39 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_54();
  v18 = *v1;
  v37 = v1[1];
  v19 = v1[2];
  v20 = v1[3];
  v21 = *(v1 + 32);
  v22 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D8BBEB50();
  v38 = v2;
  sub_1D8BF10B0();
  switch(v21)
  {
    case 1:
      LOBYTE(v40[0]) = 4;
      sub_1D8BBED48();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_9();
      sub_1D8BF0F80();
      goto LABEL_14;
    case 2:
      LOBYTE(v40[0]) = 5;
      sub_1D8BBECF4();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_9();
      sub_1D8BF0F80();
      goto LABEL_14;
    case 3:
      LOBYTE(v40[0]) = 6;
      sub_1D8BBECA0();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_35();
      goto LABEL_14;
    case 4:
      LOBYTE(v40[0]) = 7;
      sub_1D8BBEC4C();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_35();
      goto LABEL_14;
    case 5:
      LOBYTE(v40[0]) = 8;
      sub_1D8BBEBF8();
      v2 = v39;
      sub_1D8BF0F30();
      v40[0] = v18;
      v40[1] = v37;
      v40[2] = v19;
      v41 = v20;
      type metadata accessor for CGRect(0);
      OUTLINED_FUNCTION_1_1();
      sub_1D8BC148C(v23, v24);
      sub_1D8BF0F90();
      v25 = OUTLINED_FUNCTION_82();
      v26(v25);
      OUTLINED_FUNCTION_80();
      v28 = v38;
      return v27(v28, v2);
    case 6:
      LOBYTE(v40[0]) = 9;
      sub_1D8BBEBA4();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_35();
      goto LABEL_14;
    case 7:
      if (v19 | v37 | v18 | v20)
      {
        if (v18 != 1 || v19 | v37 | v20)
        {
          OUTLINED_FUNCTION_87();
          sub_1D8BBEDF0();
          OUTLINED_FUNCTION_66();
          (*(v36 + 8))(v20);
        }

        else
        {
          LOBYTE(v40[0]) = 1;
          sub_1D8BBEE44();
          OUTLINED_FUNCTION_66();
          (*(v35 + 8))(v20);
        }

        OUTLINED_FUNCTION_80();
        v28 = v22;
        return v27(v28, v2);
      }

      else
      {
        LOBYTE(v40[0]) = 0;
        sub_1D8BBEE98();
        sub_1D8BF0F30();
        v32 = OUTLINED_FUNCTION_32();
        v33(v32);
        OUTLINED_FUNCTION_80();
        return v34(v2, v39);
      }

    default:
      LOBYTE(v40[0]) = 3;
      sub_1D8BBED9C();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_9();
      sub_1D8BF0F80();
LABEL_14:
      v29 = OUTLINED_FUNCTION_8();
      v30(v29);
      OUTLINED_FUNCTION_80();
      v28 = v20;
      return v27(v28, v2);
  }
}

uint64_t SpatialPhoto.Scene.OcclusionAnalysis.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v123 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4568);
  OUTLINED_FUNCTION_2_1(v4, &v140);
  v117 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v122 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4570);
  OUTLINED_FUNCTION_2_1(v7, &v139);
  v116 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v121 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4578);
  OUTLINED_FUNCTION_2_1(v10, &v138);
  v115 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v126 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4580);
  OUTLINED_FUNCTION_2_1(v13, &v137);
  v114 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v125 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4588);
  OUTLINED_FUNCTION_2_1(v16, &v136);
  v113 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v124 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4590);
  OUTLINED_FUNCTION_2_1(v19, &v135);
  v112 = v20;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v120 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4598);
  OUTLINED_FUNCTION_2_1(v22, &v134);
  v111 = v23;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v119 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA45A0);
  OUTLINED_FUNCTION_2_1(v25, &v133);
  v109 = v26;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_23();
  v118 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA45A8);
  OUTLINED_FUNCTION_2_1(v28, v132);
  v107 = v29;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  v31 = v102 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA45B0);
  OUTLINED_FUNCTION_3_1();
  v106 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  v35 = v102 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA45B8);
  OUTLINED_FUNCTION_3_1();
  v37 = v36;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00]();
  v38 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v38);
  sub_1D8BBEB50();
  v39 = v128;
  sub_1D8BF10A0();
  if (v39)
  {
    goto LABEL_8;
  }

  v104 = v35;
  v103 = v32;
  v105 = v31;
  v128 = v37;
  v40 = sub_1D8BF0F20();
  result = sub_1D8BBF398(v40, 0);
  if (v43 == v44 >> 1)
  {
LABEL_7:
    v57 = sub_1D8BF0E10();
    OUTLINED_FUNCTION_65();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA45C0);
    *v59 = &type metadata for SpatialPhoto.Scene.OcclusionAnalysis;
    sub_1D8BF0EB0();
    sub_1D8BF0E00();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6AF8], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_7();
    v61(v60);
LABEL_8:
    v62 = v127;
    return __swift_destroy_boxed_opaque_existential_1Tm(v62);
  }

  v102[1] = 0;
  if (v43 < (v44 >> 1))
  {
    v102[0] = *(v42 + v43);
    sub_1D8BBF664(v43 + 1, v44 >> 1, result, v42, v43, v44);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      switch(v102[0])
      {
        case 1:
          LOBYTE(v129) = 1;
          sub_1D8BBEE44();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO26NoSalientOverlapCodingKeysON, &v129);
          swift_unknownObjectRelease();
          v67 = OUTLINED_FUNCTION_32();
          v68(v67, v108);
          v69 = OUTLINED_FUNCTION_7();
          v70(v69);
          *&v56 = OUTLINED_FUNCTION_52();
          v54 = 1;
          break;
        case 2:
          OUTLINED_FUNCTION_87();
          sub_1D8BBEDF0();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO24NotEnoughSpaceCodingKeysON, &v129);
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_32();
          v64(v63, v110);
          v65 = OUTLINED_FUNCTION_7();
          v66(v65);
          *&v56 = OUTLINED_FUNCTION_52();
          v54 = 2;
          break;
        case 3:
          LOBYTE(v129) = 3;
          sub_1D8BBED9C();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO27NotOccludedEnoughCodingKeysON, &v129);
          OUTLINED_FUNCTION_9();
          sub_1D8BF0F00();
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_73();
          v81 = OUTLINED_FUNCTION_8();
          v82(v81);
          v83 = OUTLINED_FUNCTION_13();
          v84(v83);
          v53 = 0;
          v55 = 0;
          v54 = v2;
          v56 = 0uLL;
          break;
        case 4:
          LOBYTE(v129) = 4;
          sub_1D8BBED48();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO21TooOccludedCodingKeysON, &v129);
          OUTLINED_FUNCTION_9();
          sub_1D8BF0F00();
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_73();
          v73 = OUTLINED_FUNCTION_8();
          v74(v73);
          v75 = OUTLINED_FUNCTION_13();
          v76(v75);
          *&v56 = OUTLINED_FUNCTION_27();
          v55 = 1;
          break;
        case 5:
          LOBYTE(v129) = 5;
          sub_1D8BBECF4();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO24TopTooOccludedCodingKeysON, &v129);
          OUTLINED_FUNCTION_9();
          sub_1D8BF0F00();
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_73();
          v89 = OUTLINED_FUNCTION_8();
          v90(v89);
          v91 = OUTLINED_FUNCTION_13();
          v92(v91);
          *&v56 = OUTLINED_FUNCTION_27();
          v55 = 2;
          break;
        case 6:
          LOBYTE(v129) = 6;
          sub_1D8BBECA0();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO27BottomTooOccludedCodingKeysON, &v129);
          OUTLINED_FUNCTION_9();
          sub_1D8BF0F00();
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_73();
          v93 = OUTLINED_FUNCTION_8();
          v94(v93);
          v95 = OUTLINED_FUNCTION_13();
          v96(v95);
          *&v56 = OUTLINED_FUNCTION_27();
          v55 = 3;
          break;
        case 7:
          LOBYTE(v129) = 7;
          sub_1D8BBEC4C();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO29SubtitleTooOccludedCodingKeysON, &v129);
          OUTLINED_FUNCTION_9();
          sub_1D8BF0F00();
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_73();
          v85 = OUTLINED_FUNCTION_8();
          v86(v85);
          v87 = OUTLINED_FUNCTION_13();
          v88(v87);
          *&v56 = OUTLINED_FUNCTION_27();
          v55 = 4;
          break;
        case 8:
          LOBYTE(v129) = 8;
          sub_1D8BBEBF8();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO27InvalidSearchRectCodingKeysON, &v129);
          type metadata accessor for CGRect(0);
          OUTLINED_FUNCTION_1_1();
          sub_1D8BC148C(v71, v72);
          sub_1D8BF0F10();
          swift_unknownObjectRelease();
          v97 = OUTLINED_FUNCTION_8();
          v98(v97);
          v99 = OUTLINED_FUNCTION_7();
          v100(v99);
          v54 = v129;
          v56 = v130;
          v55 = 5;
          v53 = v131;
          break;
        case 9:
          LOBYTE(v129) = 9;
          sub_1D8BBEBA4();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO15DepthCodingKeysON, &v129);
          OUTLINED_FUNCTION_9();
          sub_1D8BF0F00();
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_73();
          v77 = OUTLINED_FUNCTION_8();
          v78(v77);
          v79 = OUTLINED_FUNCTION_13();
          v80(v79);
          *&v56 = OUTLINED_FUNCTION_27();
          v55 = 6;
          break;
        default:
          LOBYTE(v129) = 0;
          sub_1D8BBEE98();
          OUTLINED_FUNCTION_11(&_s14descr1F54466F9O5SceneC17OcclusionAnalysisO24NoSalientDepthCodingKeysON, &v129);
          swift_unknownObjectRelease();
          v49 = OUTLINED_FUNCTION_32();
          v50(v49, v103);
          v51 = OUTLINED_FUNCTION_7();
          v52(v51);
          *&v56 = OUTLINED_FUNCTION_52();
          break;
      }

      v62 = v127;
      v101 = v123;
      *v123 = v54;
      *(v101 + 1) = v56;
      v101[3] = v53;
      *(v101 + 32) = v55;
      return __swift_destroy_boxed_opaque_existential_1Tm(v62);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t SpatialPhoto.Scene.deinit()
{
  OUTLINED_FUNCTION_90(v4);
  sub_1D8BBF6E0(v4);

  v1 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto5Scene_dateCreated;
  sub_1D8BEFF30();
  OUTLINED_FUNCTION_20();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SpatialPhoto.Scene.__deallocating_deinit()
{
  SpatialPhoto.Scene.deinit();

  return swift_deallocClassInstance();
}

uint64_t SpatialPhoto.Scene.diagnosticDescription.getter()
{
  OUTLINED_FUNCTION_83();
  sub_1D8BF0DE0();
  v5 = v4[0];
  v6 = v4[1];
  MEMORY[0x1DA722A10](0xD000000000000013, 0x80000001D8BF3160);
  v4[0] = v0;
  sub_1D8BF10C0();
  OUTLINED_FUNCTION_88();

  MEMORY[0x1DA722A10](0x7275747865740A5DLL, 0xEB00000000203A65);
  v1 = sub_1D8BBBE3C();
  MEMORY[0x1DA722A10](v1);

  MEMORY[0x1DA722A10](0x203A6873656D0ALL, 0xE700000000000000);
  sub_1D8BBC278();
  OUTLINED_FUNCTION_88();

  MEMORY[0x1DA722A10](0x646174654D202A0ALL, 0xEC0000000A617461);
  OUTLINED_FUNCTION_45();
  swift_beginAccess();
  memcpy(v4, (v0 + 32), 0x151uLL);
  SpatialPhoto.Scene.Metadata.diagnosticDescription.getter();
  OUTLINED_FUNCTION_88();

  MEMORY[0x1DA722A10](0x65726F6353202A0ALL, 0xEA00000000000A73);
  SpatialPhoto.Scene.scoresDescription.getter();
  OUTLINED_FUNCTION_88();

  MEMORY[0x1DA722A10](0x72656E6547202A0ALL, 0xEE000A6E6F697461);
  v2 = SpatialPhoto.Scene.generationDescription.getter();
  MEMORY[0x1DA722A10](v2);

  return v5;
}

uint64_t sub_1D8BBBE3C()
{
  v1 = [v0 colorTextures];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4748);
  v2 = sub_1D8BF0AB0();

  v3 = sub_1D8BCFA48(v2);
  if (v3)
  {
    v4 = v3;
    sub_1D8BCF3E4(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_23;
    }

    result = swift_unknownObjectRetain();
    while (v4 >= 1)
    {
      v25 = result;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA722DA0](v8, v2);
        }

        else
        {
          v9 = *(v2 + 8 * v8 + 32);
          swift_unknownObjectRetain();
        }

        v10 = [v9 arrayLength];
        v11 = __OFADD__(v7, v10);
        v7 += v10;
        if (v11)
        {
          break;
        }

        v12 = [v9 width];
        v13 = [v9 height];
        v14 = v12 * v13;
        if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
        {
          goto LABEL_19;
        }

        v15 = [v9 depth];
        v16 = v14 * v15;
        if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
        {
          goto LABEL_20;
        }

        v17 = [v9 arrayLength];
        swift_unknownObjectRelease();
        v18 = v16 * v17;
        if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
        {
          goto LABEL_21;
        }

        v11 = __OFADD__(v6, v18);
        v6 += v18;
        if (v11)
        {
          goto LABEL_22;
        }

        if (v4 == ++v8)
        {

          sub_1D8BF0DE0();
          MEMORY[0x1DA722A10](8315, 0xE200000000000000);
          [v25 pixelFormat];
          type metadata accessor for MTLPixelFormat(0);
          sub_1D8BF0E30();
          MEMORY[0x1DA722A10](8236, 0xE200000000000000);
          [v25 width];
          v19 = sub_1D8BF0FA0();
          MEMORY[0x1DA722A10](v19);

          MEMORY[0x1DA722A10](120, 0xE100000000000000);
          [v25 height];
          v20 = sub_1D8BF0FA0();
          MEMORY[0x1DA722A10](v20);

          MEMORY[0x1DA722A10](120, 0xE100000000000000);
          [v25 depth];
          v21 = sub_1D8BF0FA0();
          MEMORY[0x1DA722A10](v21);

          MEMORY[0x1DA722A10](120, 0xE100000000000000);
          v22 = sub_1D8BF0FA0();
          MEMORY[0x1DA722A10](v22);

          MEMORY[0x1DA722A10](0x3A7370696D202CLL, 0xE700000000000000);
          [v25 mipmapLevelCount];
          v23 = sub_1D8BF0FA0();
          MEMORY[0x1DA722A10](v23);

          MEMORY[0x1DA722A10](0x3A746F74202CLL, 0xE600000000000000);
          v24 = sub_1D8BF0FA0();
          MEMORY[0x1DA722A10](v24);

          MEMORY[0x1DA722A10](2099269709, 0xE400000000000000);
          swift_unknownObjectRelease();
          return 0;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = MEMORY[0x1DA722DA0](0, v2);
    }

    __break(1u);
  }

  else
  {

    return 7104878;
  }

  return result;
}

uint64_t sub_1D8BBC278()
{
  sub_1D8BF0DE0();

  [v0 vertexCount];
  v1 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v1);

  MEMORY[0x1DA722A10](0x6C676E6169727420, 0xEB000000003A7365);
  [v0 triangleCount];
  v2 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v2);

  MEMORY[0x1DA722A10](0xD000000000000011, 0x80000001D8BF3580);
  [v0 opaqueTriangleCount];
  v3 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v3);

  MEMORY[0x1DA722A10](32032, 0xE200000000000000);
  return 0x636974726576207BLL;
}

uint64_t SpatialPhoto.Scene.Metadata.diagnosticDescription.getter()
{
  memcpy(__dst, v0, 0x151uLL);
  *&v139 = 0;
  *(&v139 + 1) = 0xE000000000000000;
  sub_1D8BF0DE0();
  v142 = v139;
  MEMORY[0x1DA722A10](0x53726F6C6F632020, 0xEE00203A65636170);
  LOBYTE(v139) = __dst[0];
  sub_1D8BF0E30();
  OUTLINED_FUNCTION_41();
  MEMORY[0x1DA722A10](0xD000000000000010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D8BF5A50;
  v2 = MEMORY[0x1E69E6448];
  v3 = DWORD1(__dst[0]);
  v4 = MEMORY[0x1E69E64A8];
  *(v1 + 56) = MEMORY[0x1E69E6448];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_75();

  OUTLINED_FUNCTION_41();
  MEMORY[0x1DA722A10](0xD000000000000010);
  v5 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_36(v5, v6, v7, v8, v9, v10, v11, v12, v85, v89, v93, v97, v101, v106, v110, v115, v119, v124, v128, v133, v13);
  v14 = HIDWORD(__dst[0]);
  v15 = __dst[1];
  *(v16 + 56) = v2;
  *(v16 + 64) = v4;
  *(v16 + 32) = v14;
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_75();

  OUTLINED_FUNCTION_63();
  v17 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_36(v17, v18, v19, v20, v21, v22, v23, v24, v86, v90, v94, v98, v102, v107, v111, v116, v120, v125, v129, v134, v25);
  *(v26 + 56) = v2;
  *(v26 + 64) = v4;
  *(v26 + 32) = v15;
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_75();

  OUTLINED_FUNCTION_41();
  MEMORY[0x1DA722A10]();
  v27 = OUTLINED_FUNCTION_37();
  *(v27 + 16) = xmmword_1D8BF5A50;
  v28 = *(__dst + 2) * 180.0 / 3.14159265;
  *(v27 + 56) = MEMORY[0x1E69E7DE0];
  *(v27 + 64) = sub_1D8BBF710();
  *(v27 + 32) = v28;
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_75();

  MEMORY[0x1DA722A10](0x7A697320200AB0C2, 0xAE0028203A785065);
  v29 = OUTLINED_FUNCTION_37();
  v38 = OUTLINED_FUNCTION_36(v29, v30, v31, v32, v33, v34, v35, v36, v87, v91, v95, v99, v103, v108, v112, v117, v121, v126, v130, v135, v37);
  v38.n128_u64[0] = *(&__dst[1] + 1);
  v131 = v38;
  *(v39 + 56) = v2;
  *(v39 + 64) = v4;
  *(v39 + 32) = v38.n128_u32[0];
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_75();

  OUTLINED_FUNCTION_63();
  v40 = OUTLINED_FUNCTION_37();
  *(v40 + 16) = xmmword_1D8BF5A50;
  *(v40 + 56) = v2;
  *(v40 + 64) = v4;
  *(v40 + 32) = v131.n128_u32[1];
  OUTLINED_FUNCTION_15();
  sub_1D8BF0A10();
  OUTLINED_FUNCTION_75();

  OUTLINED_FUNCTION_41();
  MEMORY[0x1DA722A10]();
  v41 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_36(v41, v42, v43, v44, v45, v46, v47, v48, v88, v92, v96, v100, v104, v109, v113, v118, v122, v127, v131.n128_i64[0], v131.n128_i64[1], v49);
  v50 = __dst[2];
  *(v51 + 56) = v2;
  *(v51 + 64) = v4;
  *(v51 + 32) = v50;
  OUTLINED_FUNCTION_15();
  v52 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v52);

  OUTLINED_FUNCTION_41();
  MEMORY[0x1DA722A10]();
  v53 = *(&__dst[6] + 1);
  v136 = *&__dst[6];
  v54 = *(&__dst[7] + 1);
  v55 = __dst[8];
  v56 = *&__dst[9];
  v105 = *(&__dst[10] + 8);
  v114 = *(&__dst[9] + 8);
  v57 = BYTE8(__dst[11]);
  v58 = BYTE9(__dst[11]);
  v59 = __dst[12];
  v60 = __dst[13];
  v123 = __dst[15];
  v132 = __dst[14];
  v61 = __dst[16];
  v62 = BYTE1(__dst[16]);
  if (BYTE4(__dst[7]))
  {
    v63 = 0xE300000000000000;
    v64 = OUTLINED_FUNCTION_31();
  }

  else
  {
    LODWORD(v137) = __dst[7];
    sub_1D8BBD004(&v137, __dst, &v139);
    v63 = *(&v139 + 1);
    v64 = v139;
  }

  MEMORY[0x1DA722A10](v64, v63);

  OUTLINED_FUNCTION_41();
  MEMORY[0x1DA722A10]();
  if (v58 == 3)
  {
    v65 = 0xE300000000000000;
    v66 = OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_58();
    v137 = v67;
    v138 = v68;
    v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v54, v55, v56];
    v70 = sub_1D8BF09E0();
    v72 = v71;

    MEMORY[0x1DA722A10](v70, v72);

    OUTLINED_FUNCTION_63();
    v139 = v114;
    v140 = v105;
    v141 = v57;
    v73 = SpatialPhoto.Scene.OcclusionAnalysis.description.getter();
    MEMORY[0x1DA722A10](v73);

    OUTLINED_FUNCTION_77();
    v66 = v137;
    v65 = v138;
  }

  MEMORY[0x1DA722A10](v66, v65);

  OUTLINED_FUNCTION_41();
  MEMORY[0x1DA722A10]();
  if (v62 == 3)
  {
    v74 = 0xE300000000000000;
    v75 = OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_58();
    v137 = v76;
    v138 = v77;
    v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v59, v60];
    v79 = sub_1D8BF09E0();
    v81 = v80;

    MEMORY[0x1DA722A10](v79, v81);

    OUTLINED_FUNCTION_63();
    v139 = v132;
    v140 = v123;
    v141 = v61;
    v82 = SpatialPhoto.Scene.OcclusionAnalysis.description.getter();
    MEMORY[0x1DA722A10](v82);

    OUTLINED_FUNCTION_77();
    v75 = v137;
    v74 = v138;
  }

  MEMORY[0x1DA722A10](v75, v74);

  OUTLINED_FUNCTION_41();
  MEMORY[0x1DA722A10]();
  if (v53)
  {
    v83 = v136;
  }

  else
  {
    sub_1D8BBF6E0(__dst);
    v53 = 0xE300000000000000;
    v83 = 7104878;
  }

  sub_1D8BBE85C(__dst, &v139);
  MEMORY[0x1DA722A10](v83, v53);

  return v142;
}

uint64_t SpatialPhoto.Scene.scoresDescription.getter()
{
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_1D8BF0DE0();
  v125 = 0;
  v126 = 0xE000000000000000;
  MEMORY[0x1DA722A10](0xD000000000000012, 0x80000001D8BF3280);
  if (OUTLINED_FUNCTION_78())
  {
    sub_1D8BF0D10();
    v0 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_46();
  }

  v8 = 7104878;
  OUTLINED_FUNCTION_18(v0, v1, v2, v3, v4, v5, v6, v7, v96, v102, v108, v113, v118);
  if (v9)
  {
    if (OUTLINED_FUNCTION_25())
    {
      OUTLINED_FUNCTION_24(v10, v11, v12, v13, v14, v15, v16, v17, *&v97, *&v103, *(&v103 + 1));
      sub_1D8BF0B10();
      v18 = v123;
      v19 = v124;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D8BBF930(&v123, &unk_1ECAA45D0);
  }

  v19 = 0xE300000000000000;
  v18 = OUTLINED_FUNCTION_31();
LABEL_9:
  MEMORY[0x1DA722A10](v18, v19);

  OUTLINED_FUNCTION_38();
  MEMORY[0x1DA722A10](0xD000000000000012);
  if (OUTLINED_FUNCTION_78())
  {
    OUTLINED_FUNCTION_91();
    v20 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_18(v20, v21, v22, v23, v24, v25, v26, v27, v97, v103, v109, v114, v119);
  if (v28)
  {
    if (OUTLINED_FUNCTION_25())
    {
      OUTLINED_FUNCTION_24(v29, v30, v31, v32, v33, v34, v35, v36, *&v98, *&v104, *(&v104 + 1));
      sub_1D8BF0B10();
      v37 = v123;
      v38 = v124;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1D8BBF930(&v123, &unk_1ECAA45D0);
  }

  v38 = 0xE300000000000000;
  v37 = OUTLINED_FUNCTION_31();
LABEL_17:
  MEMORY[0x1DA722A10](v37, v38);

  OUTLINED_FUNCTION_38();
  MEMORY[0x1DA722A10](0xD000000000000016);
  if (OUTLINED_FUNCTION_78())
  {
    OUTLINED_FUNCTION_91();
    v39 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_18(v39, v40, v41, v42, v43, v44, v45, v46, v98, v104, v110, v115, v120);
  if (v47)
  {
    if (OUTLINED_FUNCTION_25())
    {
      OUTLINED_FUNCTION_24(v48, v49, v50, v51, v52, v53, v54, v55, *&v99, *&v105, *(&v105 + 1));
      sub_1D8BF0B10();
      v56 = v123;
      v57 = v124;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1D8BBF930(&v123, &unk_1ECAA45D0);
  }

  v57 = 0xE300000000000000;
  v56 = OUTLINED_FUNCTION_31();
LABEL_25:
  MEMORY[0x1DA722A10](v56, v57);

  OUTLINED_FUNCTION_38();
  MEMORY[0x1DA722A10](0xD000000000000016);
  if (OUTLINED_FUNCTION_78())
  {
    OUTLINED_FUNCTION_91();
    v58 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_18(v58, v59, v60, v61, v62, v63, v64, v65, v99, v105, v111, v116, v121);
  if (v66)
  {
    if (OUTLINED_FUNCTION_25())
    {
      OUTLINED_FUNCTION_24(v67, v68, v69, v70, v71, v72, v73, v74, *&v100, *&v106, *(&v106 + 1));
      sub_1D8BF0B10();
      v75 = v123;
      v76 = v124;
      goto LABEL_33;
    }
  }

  else
  {
    sub_1D8BBF930(&v123, &unk_1ECAA45D0);
  }

  v76 = 0xE300000000000000;
  v75 = OUTLINED_FUNCTION_31();
LABEL_33:
  MEMORY[0x1DA722A10](v75, v76);

  OUTLINED_FUNCTION_38();
  MEMORY[0x1DA722A10](0xD000000000000016);
  if (OUTLINED_FUNCTION_78())
  {
    OUTLINED_FUNCTION_91();
    v77 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_18(v77, v78, v79, v80, v81, v82, v83, v84, v100, v106, v112, v117, v122);
  if (!v85)
  {
    sub_1D8BBF930(&v123, &unk_1ECAA45D0);
    goto LABEL_40;
  }

  if ((OUTLINED_FUNCTION_25() & 1) == 0)
  {
LABEL_40:
    v94 = 0xE300000000000000;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_24(v86, v87, v88, v89, v90, v91, v92, v93, v101, *&v107, *(&v107 + 1));
  sub_1D8BF0B10();
  v8 = v123;
  v94 = v124;
LABEL_41:
  MEMORY[0x1DA722A10](v8, v94);

  return v125;
}

uint64_t SpatialPhoto.Scene.generationDescription.getter()
{
  OUTLINED_FUNCTION_83();
  sub_1D8BF0DE0();

  strcpy(v4, "  alchemist: ");
  v0 = OUTLINED_FUNCTION_70();
  MEMORY[0x1DA722A10](v0);

  MEMORY[0x1DA722A10](0x3A6169656C20200ALL, 0xE900000000000020);
  v1 = sub_1D8BBCF34();
  MEMORY[0x1DA722A10](v1);

  MEMORY[0x1DA722A10](0x203A766F6620200ALL, 0xE800000000000000);
  v2 = OUTLINED_FUNCTION_70();
  MEMORY[0x1DA722A10](v2);

  return v4[0];
}

uint64_t sub_1D8BBCF34()
{
  v1 = sub_1D8BF09B0();
  v2 = [v0 attribute_];

  if (v2)
  {
    sub_1D8BF0D10();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_46();
  }

  OUTLINED_FUNCTION_18(v3, v4, v5, v6, v7, v8, v9, v10, v13, v15, v16, v17, v18);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      return v14;
    }
  }

  else
  {
    sub_1D8BBF930(v19, &unk_1ECAA45D0);
  }

  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1D8BBD004@<X0>(float *a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1D8BF0DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E6448];
  *(v6 + 16) = xmmword_1D8BF5A50;
  v8 = MEMORY[0x1E69E64A8];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  v9 = sub_1D8BF0A10();
  v11 = v10;

  v20 = v9;
  v21 = v11;
  MEMORY[0x1DA722A10](0x6972617073696420, 0xEC000000203A7974);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D8BF5A50;
  memcpy(__dst, a2, 0x151uLL);
  v18 = 1;
  v17 = 2;
  v13 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&v18, &v17, v5);
  *(v12 + 56) = v7;
  *(v12 + 64) = v8;
  *(v12 + 32) = v13;
  v14 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v14);

  v16 = v21;
  *a3 = v20;
  a3[1] = v16;
  return result;
}

uint64_t SpatialPhoto.Scene.Metadata.portraitOcclusionDescription.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  if (*(v0 + 185) == 3)
  {
    v5 = 0xE300000000000000;
    v6 = OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_58();
    v17 = v7;
    v18 = v8;
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v3, v4, v11, v12, v9, v10];
    sub_1D8BF09E0();
    OUTLINED_FUNCTION_92();
    v14 = OUTLINED_FUNCTION_48();
    MEMORY[0x1DA722A10](v14);

    OUTLINED_FUNCTION_63();
    v15 = OUTLINED_FUNCTION_34();
    MEMORY[0x1DA722A10](v15);

    OUTLINED_FUNCTION_77();
    v6 = v17;
    v5 = v18;
  }

  MEMORY[0x1DA722A10](v6, v5);

  return 0x69617274726F7020;
}

uint64_t SpatialPhoto.Scene.Metadata.landscapeOcclusionDescription.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 257);
  strcpy(v20, " landscape: ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if (v5 == 3)
  {
    v6 = 0xE300000000000000;
    v7 = OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_58();
    v18 = v8;
    v19 = v9;
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v1, v2, v3, v4, v12, v13, v10, v11];
    sub_1D8BF09E0();
    OUTLINED_FUNCTION_92();
    v15 = OUTLINED_FUNCTION_48();
    MEMORY[0x1DA722A10](v15);

    OUTLINED_FUNCTION_63();
    v16 = OUTLINED_FUNCTION_34();
    MEMORY[0x1DA722A10](v16);

    OUTLINED_FUNCTION_77();
    v7 = v18;
    v6 = v19;
  }

  MEMORY[0x1DA722A10](v7, v6);

  return v20[0];
}

void static SpatialPhoto.Scene.deserializeMetadata(userDataString:)()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v64 = v3;
  v71 = *MEMORY[0x1E69E9840];
  sub_1D8BF0A30();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_53();
  if (!v2 || (sub_1D8BF0A20(), sub_1D8BF09F0(), v5 = v4, v6 = OUTLINED_FUNCTION_51(), v7(v6), v5 >> 60 == 15))
  {
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v8 = sub_1D8BF08A0();
    OUTLINED_FUNCTION_71(v8, qword_1EE320A70);
    v9 = sub_1D8BF0880();
    v10 = sub_1D8BF0B70();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_61();
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D8BAF000, v9, v10, "Missing MXIScene.userData, initializing.", v11, 2u);
      OUTLINED_FUNCTION_22();
      MEMORY[0x1DA723A30]();
    }

LABEL_7:

    LOBYTE(v69[0]) = 1;
    LOBYTE(v67) = 1;
    memset(v70, 0, 20);
    LOBYTE(v70[10]) = 1;
    memset(&v70[12], 0, 64);
    v70[44] = 768;
    memset(&v70[48], 0, 64);
    v70[80] = 768;
    memset(&v70[84], 0, 32);
    LOBYTE(v70[100]) = -1;
    memset(&v70[104], 0, 32);
    LOBYTE(v70[120]) = 1;
LABEL_8:
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v12 = sub_1D8BF08A0();
    OUTLINED_FUNCTION_71(v12, qword_1EE320A70);
    sub_1D8BBE894(v70, v69);
    v13 = sub_1D8BF0880();
    v14 = sub_1D8BF0BB0();
    sub_1D8BBE8CC(v70);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_76();
      *&v65 = v16;
      *v15 = 136446210;
      memcpy(v69, v70, 0xF1uLL);
      sub_1D8BBE894(v70, &v67);
      v17 = sub_1D8BF0A40();
      v19 = sub_1D8BBE6E8(v17, v18, &v65);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1D8BAF000, v13, v14, "SpatialPhotoScene readPersistedMetadata: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_22();
      MEMORY[0x1DA723A30]();
      OUTLINED_FUNCTION_22();
      MEMORY[0x1DA723A30]();
    }

    memcpy(v64, v70, 0xF1uLL);
    goto LABEL_26;
  }

  v20 = objc_opt_self();
  OUTLINED_FUNCTION_16();
  v21 = sub_1D8BEFEE0();
  v69[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v69];

  if (!v22)
  {
    v35 = v69[0];
    sub_1D8BEFEA0();

LABEL_25:
    swift_willThrow();
    v54 = OUTLINED_FUNCTION_16();
    sub_1D8BBF7B0(v54, v55);
    goto LABEL_26;
  }

  v23 = v69[0];
  sub_1D8BF0D10();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4408);
  if (!swift_dynamicCast())
  {
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v36 = sub_1D8BF08A0();
    OUTLINED_FUNCTION_71(v36, qword_1EE320A70);
    v37 = OUTLINED_FUNCTION_16();
    sub_1D8BBE804(v37, v38);
    v39 = sub_1D8BF0880();
    v40 = sub_1D8BF0B90();
    v41 = OUTLINED_FUNCTION_16();
    sub_1D8BBF7B0(v41, v42);
    if (os_log_type_enabled(v39, v40))
    {
      v43 = swift_slowAlloc();
      v44 = OUTLINED_FUNCTION_76();
      v69[0] = v44;
      *v43 = 136315138;
      v45 = OUTLINED_FUNCTION_16();
      sub_1D8BBE804(v45, v46);
      OUTLINED_FUNCTION_16();
      v47 = sub_1D8BEFED0();
      v49 = v48;
      v50 = OUTLINED_FUNCTION_16();
      sub_1D8BBF7B0(v50, v51);
      v52 = sub_1D8BBE6E8(v47, v49, v69);

      *(v43 + 4) = v52;
      _os_log_impl(&dword_1D8BAF000, v39, v40, "Unable to deserialize MXIScene.userData object json: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_22();
      MEMORY[0x1DA723A30]();
      OUTLINED_FUNCTION_22();
      MEMORY[0x1DA723A30]();
    }

    sub_1D8BBE5B4();
    OUTLINED_FUNCTION_65();
    *v53 = 2;
    goto LABEL_25;
  }

  v24 = v67;
  OUTLINED_FUNCTION_86();
  *&v65 = v26;
  *(&v65 + 1) = v25;
  sub_1D8BF0D90();
  sub_1D8BB47A4(v69, v24, &v65);

  sub_1D8BB43D8(v69);
  if (!v66)
  {
    sub_1D8BBF930(&v65, &unk_1ECAA45D0);
    if (qword_1EE320A68 != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v56 = sub_1D8BF08A0();
    OUTLINED_FUNCTION_71(v56, qword_1EE320A70);
    v9 = sub_1D8BF0880();
    v57 = sub_1D8BF0B70();
    if (os_log_type_enabled(v9, v57))
    {
      OUTLINED_FUNCTION_61();
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1D8BAF000, v9, v57, "Missing MXIScene.userData SpatialPhotoMetadata object, initializing.", v58, 2u);
      OUTLINED_FUNCTION_22();
      MEMORY[0x1DA723A30]();
    }

    v59 = OUTLINED_FUNCTION_16();
    sub_1D8BBF7B0(v59, v60);
    goto LABEL_7;
  }

  sub_1D8BBF7C4(&v65, &v67);
  __swift_project_boxed_opaque_existential_1Tm(&v67, v68);
  v27 = sub_1D8BF0FC0();
  v69[0] = 0;
  v28 = [v20 dataWithJSONObject:v27 options:0 error:v69];
  swift_unknownObjectRelease();
  v29 = v69[0];
  if (!v28)
  {
    v61 = v29;
    sub_1D8BEFEA0();

    swift_willThrow();
    v62 = OUTLINED_FUNCTION_16();
    sub_1D8BBF7B0(v62, v63);
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    goto LABEL_26;
  }

  v30 = sub_1D8BEFEF0();
  v32 = v31;

  sub_1D8BEFE40();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  sub_1D8BEFE30();
  sub_1D8BBF818();
  sub_1D8BEFE20();
  v33 = OUTLINED_FUNCTION_16();
  sub_1D8BBF7B0(v33, v34);

  sub_1D8BBE7AC(v30, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  if (!v0)
  {
    memcpy(v70, v69, 0xF1uLL);
    goto LABEL_8;
  }

LABEL_26:
  OUTLINED_FUNCTION_44();
}

void static SpatialPhoto.Scene.serializeMetadata(_:existingUserDataString:)()
{
  OUTLINED_FUNCTION_43();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v76 = *MEMORY[0x1E69E9840];
  v6 = sub_1D8BF0A30();
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_53();
  v11 = v10 - v9;
  memcpy(v75, v5, sizeof(v75));
  sub_1D8BF0980();
  if (v3)
  {
    sub_1D8BF0A20();
    sub_1D8BF09F0();
    v13 = v12;
    (*(v8 + 8))(v11, v6);
    if (v13 >> 60 != 15)
    {
      v14 = objc_opt_self();
      OUTLINED_FUNCTION_16();
      v15 = sub_1D8BEFEE0();
      v74[0] = 0;
      v16 = [v14 JSONObjectWithData:v15 options:0 error:v74];

      if (v16)
      {
        v17 = v74[0];
        sub_1D8BF0D10();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4408);
        if (swift_dynamicCast())
        {

          v18 = OUTLINED_FUNCTION_16();
          sub_1D8BBF7B0(v18, v19);
          goto LABEL_14;
        }

        sub_1D8BBE5B4();
        v21 = OUTLINED_FUNCTION_65();
        *v22 = 2;
      }

      else
      {
        v20 = v74[0];
        v21 = sub_1D8BEFEA0();
      }

      swift_willThrow();
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v23 = sub_1D8BF08A0();
      OUTLINED_FUNCTION_71(v23, qword_1EE320A70);
      v24 = v21;
      v25 = OUTLINED_FUNCTION_16();
      sub_1D8BBF91C(v25, v26);
      v27 = sub_1D8BF0880();
      v28 = sub_1D8BF0B90();

      v29 = OUTLINED_FUNCTION_16();
      sub_1D8BBF7B0(v29, v30);
      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_84();
        v70 = v28;
        v31 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v71 = OUTLINED_FUNCTION_76();
        v74[0] = v71;
        *v31 = 138543618;
        v32 = v21;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v33;
        *v69 = v33;
        *(v31 + 12) = 2080;
        v34 = OUTLINED_FUNCTION_16();
        sub_1D8BBE804(v34, v35);
        OUTLINED_FUNCTION_16();
        v36 = sub_1D8BEFED0();
        v38 = v37;
        v39 = OUTLINED_FUNCTION_16();
        sub_1D8BBF7B0(v39, v40);
        sub_1D8BBE6E8(v36, v38, v74);
        OUTLINED_FUNCTION_50();

        *(v31 + 14) = v36;
        _os_log_impl(&dword_1D8BAF000, v27, v70, "Unexpected json object error:%{public}@ overwriting MXIScene.userData: %s", v31, 0x16u);
        sub_1D8BBF930(v69, &qword_1ECAA45F0);
        OUTLINED_FUNCTION_22();
        MEMORY[0x1DA723A30]();
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        OUTLINED_FUNCTION_22();
        MEMORY[0x1DA723A30]();
        OUTLINED_FUNCTION_22();
        MEMORY[0x1DA723A30]();
        v41 = OUTLINED_FUNCTION_16();
        sub_1D8BBF7B0(v41, v42);
      }

      else
      {

        v43 = OUTLINED_FUNCTION_16();
        sub_1D8BBF7B0(v43, v44);
      }

      v1 = 0;
    }
  }

LABEL_14:
  sub_1D8BEFE70();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  sub_1D8BEFE60();
  memcpy(v74, v75, 0xF1uLL);
  sub_1D8BBF86C();
  sub_1D8BEFE50();

  if (!v1)
  {
    v45 = objc_opt_self();
    OUTLINED_FUNCTION_59();
    v46 = sub_1D8BEFEE0();
    v74[0] = 0;
    v47 = [v45 JSONObjectWithData:v46 options:0 error:v74];

    v48 = v74[0];
    if (!v47)
    {
      v60 = v48;

      sub_1D8BEFEA0();

      swift_willThrow();
      v61 = OUTLINED_FUNCTION_59();
      sub_1D8BBE7AC(v61, v62);
      goto LABEL_16;
    }

    sub_1D8BF0D10();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_86();
    *&v72[0] = v50;
    *(&v72[0] + 1) = v49;
    sub_1D8BF0D90();
    sub_1D8BBF8C0(&v73, v72);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D8BBF3E0(v72, v74);
    sub_1D8BB43D8(v74);
    v51 = sub_1D8BF0960();

    v74[0] = 0;
    v52 = [v45 dataWithJSONObject:v51 options:0 error:v74];

    v53 = v74[0];
    if (v52)
    {
      v54 = sub_1D8BEFEF0();
      v56 = v55;

      sub_1D8BF0A20();
      sub_1D8BF0A00();
      if (v57)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v73);
        v58 = OUTLINED_FUNCTION_59();
        sub_1D8BBE7AC(v58, v59);
        sub_1D8BBE7AC(v54, v56);
        goto LABEL_16;
      }

      sub_1D8BBE5B4();
      OUTLINED_FUNCTION_65();
      *v66 = 3;
      swift_willThrow();
      v67 = OUTLINED_FUNCTION_59();
      sub_1D8BBE7AC(v67, v68);
      v64 = v54;
      v65 = v56;
    }

    else
    {
      v63 = v53;
      sub_1D8BEFEA0();

      swift_willThrow();
      v64 = OUTLINED_FUNCTION_59();
    }

    sub_1D8BBE7AC(v64, v65);
    __swift_destroy_boxed_opaque_existential_1Tm(&v73);
    goto LABEL_16;
  }

LABEL_16:
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_44();
}

uint64_t sub_1D8BBE26C()
{
  [v0 resolutionWidth];
  v3 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](120, 0xE100000000000000);
  [v0 resolutionHeight];
  v1 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v1);

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1D8BBE358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D8BEFEB0();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 forDevice:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1D8BEFEC0();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v15[0];
    sub_1D8BEFEA0();

    swift_willThrow();
    swift_unknownObjectRelease();
    v13 = sub_1D8BEFEC0();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

id sub_1D8BBE4BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1D8BEFEE0();
  v13[0] = 0;
  v9 = [v4 initWithNSData:v8 forDevice:a3 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_1D8BEFEA0();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_1D8BBE7AC(a1, a2);
  return v9;
}

unint64_t sub_1D8BBE5B4()
{
  result = qword_1ECAA4438;
  if (!qword_1ECAA4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4438);
  }

  return result;
}

uint64_t type metadata accessor for SpatialPhoto.Scene()
{
  result = qword_1ECAA4608;
  if (!qword_1ECAA4608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE **sub_1D8BBE654(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1D8BBE68C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1D8BBE6E8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1D8BBE6E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D8BBEEEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1D8BBF8C0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_1D8BBE7AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D8BBE804(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D8BBE958()
{
  result = qword_1ECAA4458;
  if (!qword_1ECAA4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4458);
  }

  return result;
}

unint64_t sub_1D8BBE9AC()
{
  result = qword_1ECAA4460;
  if (!qword_1ECAA4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4460);
  }

  return result;
}

unint64_t sub_1D8BBEA00()
{
  result = qword_1ECAA4468;
  if (!qword_1ECAA4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4468);
  }

  return result;
}

unint64_t sub_1D8BBEA54()
{
  result = qword_1ECAA4480;
  if (!qword_1ECAA4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4480);
  }

  return result;
}

unint64_t sub_1D8BBEAA8()
{
  result = qword_1ECAA4488;
  if (!qword_1ECAA4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4488);
  }

  return result;
}

unint64_t sub_1D8BBEAFC()
{
  result = qword_1ECAA44A0;
  if (!qword_1ECAA44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA44A0);
  }

  return result;
}

unint64_t sub_1D8BBEB50()
{
  result = qword_1ECAA4510;
  if (!qword_1ECAA4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4510);
  }

  return result;
}

unint64_t sub_1D8BBEBA4()
{
  result = qword_1ECAA4518;
  if (!qword_1ECAA4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4518);
  }

  return result;
}

unint64_t sub_1D8BBEBF8()
{
  result = qword_1ECAA4520;
  if (!qword_1ECAA4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4520);
  }

  return result;
}

unint64_t sub_1D8BBEC4C()
{
  result = qword_1ECAA4528;
  if (!qword_1ECAA4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4528);
  }

  return result;
}

unint64_t sub_1D8BBECA0()
{
  result = qword_1ECAA4530;
  if (!qword_1ECAA4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4530);
  }

  return result;
}

unint64_t sub_1D8BBECF4()
{
  result = qword_1ECAA4538;
  if (!qword_1ECAA4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4538);
  }

  return result;
}

unint64_t sub_1D8BBED48()
{
  result = qword_1ECAA4540;
  if (!qword_1ECAA4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4540);
  }

  return result;
}

unint64_t sub_1D8BBED9C()
{
  result = qword_1ECAA4548;
  if (!qword_1ECAA4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4548);
  }

  return result;
}

unint64_t sub_1D8BBEDF0()
{
  result = qword_1ECAA4550;
  if (!qword_1ECAA4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4550);
  }

  return result;
}

unint64_t sub_1D8BBEE44()
{
  result = qword_1ECAA4558;
  if (!qword_1ECAA4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4558);
  }

  return result;
}

unint64_t sub_1D8BBEE98()
{
  result = qword_1ECAA4560;
  if (!qword_1ECAA4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4560);
  }

  return result;
}

unint64_t sub_1D8BBEEEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D8BBEFEC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1D8BF0E20();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D8BBEFEC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D8BBF038(a1, a2);
  sub_1D8BBF150(&unk_1F5446C20);
  return v3;
}

uint64_t sub_1D8BBF038(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1D8BF0A70())
  {
    result = sub_1D8BBF234(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D8BF0DD0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1D8BF0E20();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8BBF150(uint64_t result)
{
  v2 = *(result + 16);
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1D8BBF2A4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D8BBF234(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4768);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1D8BBF2A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4768);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D8BBF398(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

_OWORD *sub_1D8BBF3E0(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D8BB41B4(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4740);
  if ((sub_1D8BF0E40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1D8BB41B4(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_1D8BF1000();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);

    return sub_1D8BBF7C4(a1, v14);
  }

  else
  {
    sub_1D8BB437C(a2, v16);
    return sub_1D8BBF520(v9, v16, a1, v13);
  }
}

_OWORD *sub_1D8BBF520(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D8BBF7C4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1D8BBF59C(void *a1)
{
  v1 = [a1 userdata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8BF09E0();

  return v3;
}

void sub_1D8BBF600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8BF09B0();

  [a3 setUserdata_];
}

uint64_t sub_1D8BBF664(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1D8BBF710()
{
  result = qword_1ECAA45C8;
  if (!qword_1ECAA45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA45C8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D8BBF7B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8BBE7AC(a1, a2);
  }

  return a1;
}

_OWORD *sub_1D8BBF7C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D8BBF818()
{
  result = qword_1ECAA45E0;
  if (!qword_1ECAA45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA45E0);
  }

  return result;
}

unint64_t sub_1D8BBF86C()
{
  result = qword_1ECAA45E8;
  if (!qword_1ECAA45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA45E8);
  }

  return result;
}

uint64_t sub_1D8BBF8C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D8BBF91C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8BBE804(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8BBF930(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_20();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D8BBF988()
{
  result = qword_1ECAA45F8;
  if (!qword_1ECAA45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA45F8);
  }

  return result;
}

uint64_t sub_1D8BBF9E4()
{
  result = sub_1D8BEFF30();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8BBFC9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 337))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 104);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BBFCF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
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
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 337) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 337) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t _s14descr1F54466F9O5SceneC10SceneErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14descr1F54466F9O5SceneC10SceneErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8BBFF1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 241))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BBFF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8BC001C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 66))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 65);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC0074(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s14descr1F54466F9O5SceneC17OcclusionAnalysisOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 33))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 7)
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

uint64_t _s14descr1F54466F9O5SceneC17OcclusionAnalysisOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8BC0178(uint64_t a1)
{
  if (*(a1 + 32) <= 6u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 7);
  }
}

uint64_t sub_1D8BC0190(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t _s14descr1F54466F9O5SceneC17OcclusionAnalysisO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F54466F9O5SceneC17OcclusionAnalysisO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14descr1F54466F9O21MaskCompositingEffectC5ErrorOwet(unsigned int *a1, int a2)
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

_BYTE *sub_1D8BC0404(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s14descr1F54466F9O5SceneC23OcclusionAnalysisRegionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s14descr1F54466F9O13OcclusionModeOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14descr1F54466F9O5SceneC17PersistedMetadataV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8BC06F4()
{
  result = qword_1ECAA4620;
  if (!qword_1ECAA4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4620);
  }

  return result;
}

unint64_t sub_1D8BC074C()
{
  result = qword_1ECAA4628;
  if (!qword_1ECAA4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4628);
  }

  return result;
}

unint64_t sub_1D8BC07A4()
{
  result = qword_1ECAA4630;
  if (!qword_1ECAA4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4630);
  }

  return result;
}

unint64_t sub_1D8BC07FC()
{
  result = qword_1ECAA4638;
  if (!qword_1ECAA4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4638);
  }

  return result;
}

unint64_t sub_1D8BC0854()
{
  result = qword_1ECAA4640;
  if (!qword_1ECAA4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4640);
  }

  return result;
}

unint64_t sub_1D8BC08AC()
{
  result = qword_1ECAA4648;
  if (!qword_1ECAA4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4648);
  }

  return result;
}

unint64_t sub_1D8BC0904()
{
  result = qword_1ECAA4650;
  if (!qword_1ECAA4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4650);
  }

  return result;
}

unint64_t sub_1D8BC095C()
{
  result = qword_1ECAA4658;
  if (!qword_1ECAA4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4658);
  }

  return result;
}

unint64_t sub_1D8BC09B4()
{
  result = qword_1ECAA4660;
  if (!qword_1ECAA4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4660);
  }

  return result;
}

unint64_t sub_1D8BC0A0C()
{
  result = qword_1ECAA4668;
  if (!qword_1ECAA4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4668);
  }

  return result;
}

unint64_t sub_1D8BC0A64()
{
  result = qword_1ECAA4670;
  if (!qword_1ECAA4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4670);
  }

  return result;
}

unint64_t sub_1D8BC0ABC()
{
  result = qword_1ECAA4678;
  if (!qword_1ECAA4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4678);
  }

  return result;
}

unint64_t sub_1D8BC0B14()
{
  result = qword_1ECAA4680;
  if (!qword_1ECAA4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4680);
  }

  return result;
}

unint64_t sub_1D8BC0B6C()
{
  result = qword_1ECAA4688;
  if (!qword_1ECAA4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4688);
  }

  return result;
}

unint64_t sub_1D8BC0BC4()
{
  result = qword_1ECAA4690;
  if (!qword_1ECAA4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4690);
  }

  return result;
}

unint64_t sub_1D8BC0C1C()
{
  result = qword_1ECAA4698;
  if (!qword_1ECAA4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4698);
  }

  return result;
}

unint64_t sub_1D8BC0C74()
{
  result = qword_1ECAA46A0;
  if (!qword_1ECAA46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46A0);
  }

  return result;
}

unint64_t sub_1D8BC0CCC()
{
  result = qword_1ECAA46A8;
  if (!qword_1ECAA46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46A8);
  }

  return result;
}

unint64_t sub_1D8BC0D24()
{
  result = qword_1ECAA46B0;
  if (!qword_1ECAA46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46B0);
  }

  return result;
}

unint64_t sub_1D8BC0D7C()
{
  result = qword_1ECAA46B8;
  if (!qword_1ECAA46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46B8);
  }

  return result;
}

unint64_t sub_1D8BC0DD4()
{
  result = qword_1ECAA46C0;
  if (!qword_1ECAA46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46C0);
  }

  return result;
}

unint64_t sub_1D8BC0E2C()
{
  result = qword_1ECAA46C8;
  if (!qword_1ECAA46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46C8);
  }

  return result;
}

unint64_t sub_1D8BC0E84()
{
  result = qword_1ECAA46D0;
  if (!qword_1ECAA46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46D0);
  }

  return result;
}

unint64_t sub_1D8BC0EDC()
{
  result = qword_1ECAA46D8;
  if (!qword_1ECAA46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46D8);
  }

  return result;
}

unint64_t sub_1D8BC0F34()
{
  result = qword_1ECAA46E0;
  if (!qword_1ECAA46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46E0);
  }

  return result;
}

unint64_t sub_1D8BC0F8C()
{
  result = qword_1ECAA46E8;
  if (!qword_1ECAA46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46E8);
  }

  return result;
}

unint64_t sub_1D8BC0FE4()
{
  result = qword_1ECAA46F0;
  if (!qword_1ECAA46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46F0);
  }

  return result;
}

unint64_t sub_1D8BC103C()
{
  result = qword_1ECAA46F8;
  if (!qword_1ECAA46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA46F8);
  }

  return result;
}

unint64_t sub_1D8BC1094()
{
  result = qword_1ECAA4700;
  if (!qword_1ECAA4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4700);
  }

  return result;
}

unint64_t sub_1D8BC10EC()
{
  result = qword_1ECAA4708;
  if (!qword_1ECAA4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4708);
  }

  return result;
}

unint64_t sub_1D8BC1144()
{
  result = qword_1ECAA4710;
  if (!qword_1ECAA4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4710);
  }

  return result;
}

unint64_t sub_1D8BC119C()
{
  result = qword_1ECAA4718;
  if (!qword_1ECAA4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4718);
  }

  return result;
}

unint64_t sub_1D8BC11F4()
{
  result = qword_1ECAA4720;
  if (!qword_1ECAA4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4720);
  }

  return result;
}

unint64_t sub_1D8BC124C()
{
  result = qword_1ECAA4728;
  if (!qword_1ECAA4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4728);
  }

  return result;
}

unint64_t sub_1D8BC12A4()
{
  result = qword_1ECAA4730;
  if (!qword_1ECAA4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4730);
  }

  return result;
}

unint64_t sub_1D8BC12FC()
{
  result = qword_1ECAA4738;
  if (!qword_1ECAA4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4738);
  }

  return result;
}

uint64_t sub_1D8BC136C()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 24);
  OUTLINED_FUNCTION_90(v4);
  return v2(v1, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D8BC13DC()
{
  result = qword_1ECAA4760;
  if (!qword_1ECAA4760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAA4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4760);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D8BC148C(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_5()
{
  v0[19] = 0;
  v0[20] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[29] = 0;
  v0[26] = 0;
  v0[27] = 0;
  v0[15] = 0;
  *(v1 - 72) = 0;
  v0[14] = 0;
  v0[28] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[22] = 0;
  v0[23] = 0;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return sub_1D8BF0F30();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_28()
{
  *(v0 + 162) = *(v2 - 108);
  *(v1 + 838) = *(v2 - 104);
  v3 = *(v1 + 184);
  *(v1 + 840) = *(v1 + 176);
  *(v1 + 848) = v3;
  v4 = *(v1 + 200);
  *(v1 + 856) = *(v1 + 192);
  *(v1 + 864) = v4;
  *(v1 + 872) = *(v1 + 172);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return SpatialPhoto.Scene.OcclusionAnalysis.description.getter();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_1D8BF0F80();
}

__n128 OUTLINED_FUNCTION_36(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21)
{
  result = a21;
  a1[1] = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_42(int a1@<W8>)
{
  *(v2 + 766) = *(v3 - 98);
  *(v1 + 90) = a1;
  *(v2 + 768) = *(v2 + 208);
  *(v2 + 776) = *(v2 + 232);
}

void OUTLINED_FUNCTION_47(char a1@<W8>)
{
  *(v1 + 692) = a1;
  *(v1 + 693) = *(v2 - 96);
  *(v1 + 695) = *(v2 - 94);
}

void OUTLINED_FUNCTION_63()
{

  JUMPOUT(0x1DA722A10);
}

void *OUTLINED_FUNCTION_64(void *a1)
{

  return memcpy(a1, (v1 + 128), 0xF1uLL);
}

uint64_t OUTLINED_FUNCTION_65()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_1D8BF0F30();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_1D8BBCF34();
}

void *OUTLINED_FUNCTION_72(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x151uLL);
}

uint64_t OUTLINED_FUNCTION_73()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_75()
{

  JUMPOUT(0x1DA722A10);
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_77()
{

  JUMPOUT(0x1DA722A10);
}

id OUTLINED_FUNCTION_78()
{

  return [v0 (v1 + 3853)];
}

void OUTLINED_FUNCTION_85()
{
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 172) = 255;
}

void OUTLINED_FUNCTION_88()
{

  JUMPOUT(0x1DA722A10);
}

void *OUTLINED_FUNCTION_89(void *a1)
{

  return memcpy(a1, &STACK[0x4C8], 0xF1uLL);
}

void *OUTLINED_FUNCTION_90(void *a1)
{

  return memcpy(a1, (v1 + 32), 0x151uLL);
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_1D8BF0D10();
}

void OUTLINED_FUNCTION_92()
{
}

double SpatialPhoto.CameraContext.viewport.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  *a1 = *v1;
  *(a1 + 16) = result;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = v3;
  return result;
}

double SpatialPhoto.CameraContext.viewport.setter(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  *v1 = *a1;
  *(v1 + 16) = result;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1D8BC1D18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 81))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 80);
      v4 = v3 >= 6;
      v2 = v3 - 6;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC1D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 5;
    }
  }

  return result;
}

uint64_t SpatialPhoto.Viewport.init(size:screenScale:renderSize:renderROI:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, __n128 a6@<Q3>, int64x2_t a7@<Q5>)
{
  if (*(result + 32))
  {
    v7 = 0uLL;
    v8 = a6;
  }

  else
  {
    a7.i64[0] = *result;
    v7 = vzip1q_s64(a7, *(result + 8));
    v8 = *(result + 16);
  }

  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 32) = a6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  return result;
}

uint64_t sub_1D8BC1ED4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8BC1EF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t SpatialPhotoAnalyzer.CachePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhotoAnalyzer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 24) = "SpatialPhotoAnalyzer.analyze";
  *(result + 32) = 28;
  *(result + 40) = 2;
  *(result + 16) = 1;
  return result;
}

uint64_t SpatialPhotoAnalyzer.init()()
{
  result = v0;
  *(v0 + 24) = "SpatialPhotoAnalyzer.analyze";
  *(v0 + 32) = 28;
  *(v0 + 40) = 2;
  *(v0 + 16) = 1;
  return result;
}

uint64_t SpatialPhotoAnalyzer.__allocating_init(cachePolicy:)(char *a1)
{
  result = swift_allocObject();
  v3 = *a1;
  *(result + 24) = "SpatialPhotoAnalyzer.analyze";
  *(result + 32) = 28;
  *(result + 40) = 2;
  *(result + 16) = v3;
  return result;
}

uint64_t SpatialPhotoAnalyzer.init(cachePolicy:)(char *a1)
{
  v2 = *a1;
  *(v1 + 24) = "SpatialPhotoAnalyzer.analyze";
  *(v1 + 32) = 28;
  *(v1 + 40) = 2;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_1D8BC20CC(uint64_t a1)
{
  v60 = a1;
  v2 = v1;
  sub_1D8BF0830();
  OUTLINED_FUNCTION_3_1();
  v51 = v4;
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v17 = sub_1D8BF0820();
  OUTLINED_FUNCTION_3_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v17, qword_1ECAA4C20);
  v62 = v19;
  (*(v19 + 16))(v22, v23, v17);
  v24 = *(v2 + 24);
  v53 = v2;
  v58 = *(v2 + 40);
  sub_1D8BF0810();
  sub_1D8BF07D0();
  v61 = v22;
  v25 = sub_1D8BF0810();
  v26 = sub_1D8BF0C90();
  v27 = sub_1D8BF0CF0();
  v56 = v24 >> 16;
  v57 = v24 >> 32;
  v54 = v24;
  if (v27)
  {
    v49 = v17;
    if (v58)
    {
      if (!v57)
      {
        if ((v24 & 0xFFFFF800) == 0xD800)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v56 <= 0x10)
        {
          v28 = v8;
          v29 = v6;
          v24 = &v63;
          goto LABEL_11;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      if (v24)
      {
        v28 = v8;
        v29 = v6;
LABEL_11:
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = sub_1D8BF07E0();
        _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v25, v26, v31, v24, "", v30, 2u);
        MEMORY[0x1DA723A30](v30, -1, -1);
        v6 = v29;
        v8 = v28;
        v17 = v49;
        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_12:

  (*(v8 + 16))(v14, v16, v6);
  sub_1D8BF0860();
  swift_allocObject();
  sub_1D8BF0850();
  v24 = *(v8 + 8);
  (v24)(v16, v6);
  memset(v64, 0, sizeof(v64));
  v65 = 1;
  v33 = v59;
  v32 = v60;
  v34 = static SpatialPhoto.predictPivotPointDepth(for:normalizedSearchRect:sceneAnalysis:)(v60, v64, 0);
  if (v33)
  {
    (*(v62 + 8))(v61, v17, v34);
  }

  sub_1D8BB69B8(v32, v34);
  if (*(v53 + 16) == 1)
  {
    if (qword_1ECAA3E60 == -1)
    {
LABEL_16:
      sub_1D8BEDDD8();
      goto LABEL_17;
    }

LABEL_34:
    swift_once();
    goto LABEL_16;
  }

LABEL_17:
  v36 = sub_1D8BF0810();
  v37 = v55;
  sub_1D8BF0840();
  LODWORD(v60) = sub_1D8BF0C80();
  result = sub_1D8BF0CF0();
  if ((result & 1) == 0)
  {
LABEL_29:

    (v24)(v37, v6);
    return (*(v62 + 8))(v61, v17);
  }

  v59 = v36;
  if ((v58 & 1) == 0)
  {
    v39 = v51;
    v38 = v52;
    v40 = v50;
    if (v54)
    {
LABEL_25:

      sub_1D8BF0870();

      v41 = (*(v39 + 88))(v40, v38);
      v42 = *MEMORY[0x1E69E93E8];
      v48 = v6;
      if (v41 == v42)
      {
        v43 = "[Error] Interval already ended";
      }

      else
      {
        (*(v39 + 8))(v40, v38);
        v43 = "";
      }

      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = v55;
      v46 = sub_1D8BF07E0();
      v36 = v59;
      v47 = v43;
      v37 = v45;
      _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v59, v60, v46, v54, v47, v44, 2u);
      MEMORY[0x1DA723A30](v44, -1, -1);
      v6 = v48;
      goto LABEL_29;
    }

    __break(1u);
  }

  v39 = v51;
  v38 = v52;
  v40 = v50;
  if (v57)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v54 & 0xFFFFF800) != 0xD800)
  {
    if (v56 <= 0x10)
    {
      v54 = &v66;
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D8BC26F4(void *a1)
{
  type metadata accessor for SpatialPhoto.Scene();
  swift_allocObject();
  v2 = SpatialPhoto.Scene.init(mxiScene:)(a1);
  sub_1D8BC20CC(v2);
}

unint64_t sub_1D8BC2784()
{
  result = qword_1ECAA4780;
  if (!qword_1ECAA4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4780);
  }

  return result;
}

uint64_t _s14descr1F54466F9O10ColorSpaceOwet(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpatialPhotoAnalyzer.CachePolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1D8BC2A1C@<Q0>(uint64_t a1@<X8>, float32x2_t a2@<D0>, double a3@<D1>)
{
  LODWORD(v3) = 0;
  HIDWORD(v3) = HIDWORD(a3);
  result.n128_u64[0] = vmul_f32(a2, 0x3F0000003F000000);
  result.n128_u64[1] = 1065353216;
  *a1 = LODWORD(a3);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

void SpatialPhoto.RenderOutput.modelViewProjection.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

unsigned __int8 *SpatialPhoto.RenderOutput.init(modelViewProjection:colorSpace:)@<X0>(unsigned __int8 *result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  v6 = *result;
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  a2[4].n128_u8[0] = v6;
  return result;
}

id SpatialPhoto.ColorSpace.cgColorSpace.getter()
{
  if (*v0)
  {
    if (qword_1ECAA3D38 != -1)
    {
      swift_once();
    }

    v1 = &qword_1ECAA4790;
  }

  else
  {
    if (qword_1ECAA3D30 != -1)
    {
      swift_once();
    }

    v1 = &qword_1ECAA4788;
  }

  v2 = *v1;

  return v2;
}

void sub_1D8BC2BA4(uint64_t a1, id *a2, CGColorSpaceRef *a3)
{
  v4 = *a2;
  v5 = CGColorSpaceCreateWithName(v4);

  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t SpatialPhoto.ColorSpace.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

float sub_1D8BC2CA8()
{
  PFDeviceScreenScale();
  if (v0 < 2.5)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.7;
  }

  if (qword_1EE320A68 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8BF08A0();
  __swift_project_value_buffer(v2, qword_1EE320A70);
  v3 = sub_1D8BF0880();
  v4 = sub_1D8BF0BB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1D8BAF000, v3, v4, "SpatialPhoto.defaultRenderScale = %f", v5, 0xCu);
    MEMORY[0x1DA723A30](v5, -1, -1);
  }

  return v1;
}

float static SpatialPhoto.defaultRenderScale.getter()
{
  if (qword_1ECAA3D40 != -1)
  {
    swift_once();
  }

  return *&dword_1ECAA4798;
}

unint64_t sub_1D8BC2E08()
{
  result = qword_1ECAA47A0;
  if (!qword_1ECAA47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA47A0);
  }

  return result;
}

uint64_t sub_1D8BC2EDC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 768))
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

uint64_t sub_1D8BC2F1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 760) = 0;
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
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
      *(result + 768) = 1;
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

    *(result + 768) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8BC3038(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 65))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 64);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BC3074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

_BYTE *_s14descr1F54466F9O10ColorSpaceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8BC31E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 436))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 424);
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

uint64_t sub_1D8BC3220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
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
    *(result + 432) = 0;
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
      *(result + 436) = 1;
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
      *(result + 424) = (a2 - 1);
      return result;
    }

    *(result + 436) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static SpatialPhoto.Camera.naturalSideLengthMeters.setter(float a1)
{
  result = swift_beginAccess();
  dword_1ECAA47A8 = LODWORD(a1);
  return result;
}

float sub_1D8BC34C0@<S0>(_DWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&dword_1ECAA47A8;
  *a1 = dword_1ECAA47A8;
  return result;
}