void sub_1C11BEE14(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v31 = *(a4 + 16);
  v5 = *(v31 - 8);
  v29 = *(a4 + 32);
  v6 = *(v29 - 8);
  v7 = *(v6 + 84);
  v32 = *(v5 + 84);
  v28 = v7;
  if (v32 > v7)
  {
    v7 = *(*(v31 - 8) + 84);
  }

  v30 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1C12629F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_1C1263130() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 64);
  v14 = *(v6 + 80);
  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = ((v12 + ((v10 + v16 + ((v15 + ((*(v6 + 64) + ((v14 + 16 + (((v13 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v15) + 1) & ~v16) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_38;
      default:
LABEL_38:
        if (!a2)
        {
          return;
        }

LABEL_39:
        v23 = v32;
        if (v32 == v8)
        {
          v24 = a1;
          v25 = v31;
        }

        else
        {
          v26 = ((((a1 + v13) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
          if ((v30 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
              v26[1] = 0;
            }

            else
            {
              v27 = a2 - 1;
            }

            *v26 = v27;
            return;
          }

          v24 = (v26 + v14 + 16) & ~v14;
          v23 = v28;
          v25 = v29;
        }

        __swift_storeEnumTagSinglePayload(v24, a2, v23, v25);
        break;
    }
  }

  else
  {
    v21 = ~v8 + a2;
    bzero(a1, v17);
    if (v17 <= 3)
    {
      v22 = (v21 >> 8) + 1;
    }

    else
    {
      v22 = 1;
    }

    if (v17 > 3)
    {
      *a1 = v21;
    }

    else
    {
      *a1 = v21;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v22;
        break;
      case 2:
        *(a1 + v17) = v22;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *(a1 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C11BF1D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C11BF2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C11BF318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11BF3E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1C0FCF004(a3);
  }

  return result;
}

uint64_t sub_1C11BF430(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1C0FCF1B4(a3);
  }

  return result;
}

uint64_t sub_1C11BF50C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosAlbumCell();
  OUTLINED_FUNCTION_15(v2);

  return sub_1C11BB91C(a1);
}

uint64_t sub_1C11BF5F8(uint64_t (*a1)(uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = type metadata accessor for PhotosAlbumCell();
  OUTLINED_FUNCTION_15(v10);
  return sub_1C11BB97C(v1 + ((*(v11 + 80) + 72) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, a1);
}

uint64_t objectdestroyTm_16()
{
  v11 = *(v0 + 32);
  v1 = type metadata accessor for PhotosAlbumCell();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 72) & ~*(*(v1 - 1) + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v2);
  v4 = (v2 + v1[20]);
  if (*v4)
  {

    if (v4[2])
    {
    }
  }

  (*(*(v11 - 8) + 8))(v2 + v1[22]);
  v5 = v2 + v1[23];
  sub_1C1001C10(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 128), *(v5 + 136), *(v5 + 144), *(v5 + 152), *(v5 + 160), *(v5 + 168), *(v5 + 176), *(v5 + 184), *(v5 + 192), *(v5 + 200), *(v5 + 208));
  v6 = v1[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v7 + 8))(v2 + v6);
  }

  else
  {
  }

  v8 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  sub_1C0FA03F4(*(v2 + v1[26]), *(v2 + v1[26] + 8));
  sub_1C0FA03F4(*(v2 + v1[27]), *(v2 + v1[27] + 8));
  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_32_11()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1, uint64_t a2)
{

  return sub_1C0FE5654(a1, a2, v2);
}

uint64_t PhotosScrollViewTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosScrollViewTracker.init()();
  return v0;
}

uint64_t View.photosScrollViewTracker(_:onScrollPhaseDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return MEMORY[0x1C68EE920](v6, a4, &type metadata for PhotosScrollViewSpeedometerModifier, a5);
}

uint64_t PhotosScrollViewTracker.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate;
  v2 = sub_1C1261DE0();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker__speedometerObservation);
  *v3 = 0;
  v3[1] = 0;
  sub_1C1261F60();
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69C45B0]) init];
  sub_1C11BFE18();
  return v0;
}

uint64_t sub_1C11BFB9C()
{
  OUTLINED_FUNCTION_39();
  result = OUTLINED_FUNCTION_13_24(v0[5], v0[6], v0[7], v0[8]);
  if (result)
  {
    *(v0 + 5) = v4;
    *(v0 + 6) = v3;
    *(v0 + 7) = v2;
    *(v0 + 8) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_6_33();
  }

  return result;
}

void sub_1C11BFC58(double a1, double a2)
{
  if (*(v2 + 72) == a1 && *(v2 + 80) == a2)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_6_33();
  }
}

uint64_t sub_1C11BFD08(uint64_t result)
{
  if (*(v1 + 88) != result)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_6_33();
  }

  return result;
}

uint64_t sub_1C11BFD90(uint64_t result)
{
  if (*(v1 + 96) != result)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_6_33();
  }

  return result;
}

uint64_t sub_1C11BFE18()
{
  swift_allocObject();
  swift_weakInit();

  sub_1C12663E0();

  return sub_1C11C1254();
}

uint64_t sub_1C11BFEE0()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1C11C0B58();
  result = OUTLINED_FUNCTION_13_24(v0, v1, v2, v3);
  if ((result & 1) == 0)
  {

    return sub_1C11BFB9C();
  }

  return result;
}

void (*sub_1C11BFF44(double **a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *(v3 + 4) = v1;
  *v3 = sub_1C11C0B58();
  *(v3 + 1) = v4;
  *(v3 + 2) = v5;
  *(v3 + 3) = v6;
  return sub_1C11BFFAC;
}

void sub_1C11BFFAC(void **a1)
{
  v1 = *a1;
  v2 = sub_1C11C0B58();
  if (!OUTLINED_FUNCTION_12_22(v2, v3, v4, v5))
  {
    OUTLINED_FUNCTION_8_0();
    sub_1C11BFB9C();
  }

  free(v1);
}

void sub_1C11C0040(double a1, double a2)
{
  if (sub_1C11C0C40() != a1 || v4 != a2)
  {

    sub_1C11BFC58(a1, a2);
  }
}

void (*sub_1C11C0098(uint64_t a1))(double *a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_1C11C0C40();
  *(a1 + 8) = v3;
  return sub_1C11C00E0;
}

uint64_t sub_1C11C0108(uint64_t a1)
{
  v3 = sub_1C1261DE0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29[-v20];
  v31 = v1;
  sub_1C11C0E00(&v29[-v20]);
  v22 = *(v10 + 56);
  sub_1C10641B8(v21, v12);
  sub_1C10641B8(a1, &v12[v22]);
  OUTLINED_FUNCTION_23_6(v12);
  if (v23)
  {
    sub_1C0FFC7B0(v21, &qword_1EBE91E68);
    OUTLINED_FUNCTION_23_6(&v12[v22]);
    if (v23)
    {
      sub_1C0FFC7B0(v12, &qword_1EBE91E68);
      return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
    }
  }

  else
  {
    sub_1C10641B8(v12, v18);
    OUTLINED_FUNCTION_23_6(&v12[v22]);
    if (!v23)
    {
      (*(v5 + 32))(v8, &v12[v22], v3);
      sub_1C11C2198(&qword_1EDE82F38, MEMORY[0x1E6969530]);
      v30 = sub_1C1265DE0();
      v27 = *(v5 + 8);
      v27(v8, v3);
      sub_1C0FFC7B0(v21, &qword_1EBE91E68);
      v27(v18, v3);
      sub_1C0FFC7B0(v12, &qword_1EBE91E68);
      v24 = v31;
      if (v30)
      {
        return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
      }

      goto LABEL_10;
    }

    sub_1C0FFC7B0(v21, &qword_1EBE91E68);
    (*(v5 + 8))(v18, v3);
  }

  sub_1C0FFC7B0(v12, &qword_1EBE91EB8);
  v24 = v31;
LABEL_10:
  sub_1C10641B8(a1, v15);
  sub_1C11C0F44(v15);
  v25 = sub_1C11C04A8();
  if (v25)
  {
    v26 = v25;
    v25(v24);
    sub_1C0FCF004(v26);
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
}

uint64_t sub_1C11C04A8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  v11 = *(v0 + 16);
  sub_1C0FCF1B4(v11);
  return v11;
}

uint64_t sub_1C11C0544@<X0>(void *a1@<X8>)
{
  result = sub_1C11C04A8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C11C2238;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C11C05B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C11C2200;
  }

  else
  {
    v4 = 0;
  }

  sub_1C0FCF1B4(v1);
  return sub_1C11C0644(v4);
}

uint64_t sub_1C11C0644(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C11C1430();
  sub_1C0FCF004(a1);
}

uint64_t sub_1C11C06CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1C0FCF1B4(a2);
  return sub_1C0FCF004(v3);
}

uint64_t sub_1C11C071C(uint64_t a1)
{
  result = sub_1C11C0CF0();
  if (result != a1)
  {

    return sub_1C11BFD08(a1);
  }

  return result;
}

uint64_t (*sub_1C11C0768(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1C11C0CF0();
  return sub_1C11C07B0;
}

uint64_t sub_1C11C07E0(uint64_t a1)
{
  result = sub_1C11C0D78();
  if (result != a1)
  {

    return sub_1C11BFD90(a1);
  }

  return result;
}

uint64_t (*sub_1C11C082C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1C11C0D78();
  return sub_1C11C0874;
}

uint64_t sub_1C11C08A0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  result = a3();
  if (result != v5)
  {
    return a4(v5);
  }

  return result;
}

id sub_1C11C08F0()
{
  sub_1C11C1320();
  v1 = *(v0 + 32);
  sub_1C1262F90();

  return [v1 handleScrollEventVisibleRect:0 didEnd:?];
}

uint64_t sub_1C11C0948(int a1)
{
  v17[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_1C1262FB0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1264090();
  sub_1C11C1320();
  v11 = *(v7 + 8);
  v11(v10, v5);
  [*(v1 + 32) setIsAnimatingScroll_];
  sub_1C1264090();
  sub_1C1262F90();
  OUTLINED_FUNCTION_5_1();
  v11(v10, v5);
  sub_1C1262AF0();
  v12 = OUTLINED_FUNCTION_8_0();
  [v13 v14];
  if (sub_1C1262B00() & 1) != 0 || (result = sub_1C1262B00(), (result))
  {
    sub_1C1261DA0();
    v16 = sub_1C1261DE0();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v16);
    return sub_1C11C0108(v4);
  }

  return result;
}

double sub_1C11C0B58()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + 40);
}

void sub_1C11C0BE4()
{
  OUTLINED_FUNCTION_13_1();
  *v0 = v1();
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
}

double sub_1C11C0C40()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + 72);
}

uint64_t sub_1C11C0CF0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + 88);
}

uint64_t sub_1C11C0D78()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + 96);
}

uint64_t sub_1C11C0E00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v6 = sub_1C11C2198(v4, v5);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate;
  swift_beginAccess();
  return sub_1C10641B8(v2 + v14, a1);
}

uint64_t sub_1C11C0EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C10641B8(a1, &v6 - v3);
  return sub_1C11C0F44(v4);
}

uint64_t sub_1C11C0F44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate;
  swift_beginAccess();
  sub_1C10641B8(v1 + v6, v5);
  v7 = sub_1C11C14D8(v5, a1);
  sub_1C0FFC7B0(v5, &qword_1EBE91E68);
  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_6_33();
  }

  else
  {
    sub_1C10641B8(a1, v5);
    swift_beginAccess();
    sub_1C1064FA4(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68);
}

uint64_t sub_1C11C10B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C10641B8(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate;
  swift_beginAccess();
  sub_1C1064FA4(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_1C11C117C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C11C1254()
{
  swift_getKeyPath();
  sub_1C11C1430();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C11C12D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker__speedometerObservation);
  *v3 = a2;
  v3[1] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C11C1320()
{
  sub_1C1262F90();
  OUTLINED_FUNCTION_5_1();
  v0 = sub_1C11C0B58();
  if (!OUTLINED_FUNCTION_12_22(v0, v1, v2, v3))
  {
    OUTLINED_FUNCTION_8_0();
    sub_1C11BFB9C();
  }

  sub_1C1262F80();

  sub_1C11C0040(v4, v5);
}

uint64_t sub_1C11C139C()
{
  v1 = *(v0 + 32);
  v2 = [v1 regime];
  if (sub_1C11C0CF0() != v2)
  {
    sub_1C11BFD08(v2);
  }

  v3 = [v1 previousRegime];
  result = sub_1C11C0D78();
  if (result != v3)
  {

    return sub_1C11BFD90(v3);
  }

  return result;
}

uint64_t sub_1C11C1430()
{
  OUTLINED_FUNCTION_0_68();
  sub_1C11C2198(v0, v1);
  return sub_1C1261F20();
}

uint64_t sub_1C11C14D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C10641B8(a1, &v20 - v12);
  sub_1C10641B8(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C10641B8(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C11C2198(&qword_1EDE82F38, MEMORY[0x1E6969530]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE91E68);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE91EB8);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE91E68);
  v16 = 0;
  return v16 & 1;
}

uint64_t PhotosScrollViewTracker.deinit()
{
  sub_1C0FCF004(*(v0 + 16));

  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate, &qword_1EBE91E68);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosScrollViewTracker.__deallocating_deinit()
{
  PhotosScrollViewTracker.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C11C1894@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96920);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = sub_1C1262FB0();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;

  sub_1C0FCF1B4(a2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96928);
  v14 = sub_1C11C20A4();
  v18 = sub_1C11C2198(&qword_1EDE7BFB0, MEMORY[0x1E697E4B8]);
  sub_1C1264DE0();

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;

  sub_1C0FCF1B4(a2);
  v23 = v13;
  v24 = v11;
  v25 = v14;
  v26 = v18;
  swift_getOpaqueTypeConformance2();
  v16 = v20;
  sub_1C1264D20();

  return (*(v21 + 8))(v10, v16);
}

uint64_t sub_1C11C1B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1262FB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C11C1B74()
{
  sub_1C1262FB0();
  sub_1C11C2198(&qword_1EDE7BFB0, MEMORY[0x1E697E4B8]);
  result = sub_1C1265DE0();
  if ((result & 1) == 0)
  {
    return sub_1C11C08F0();
  }

  return result;
}

uint64_t sub_1C11C1C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_1C1262B00();
  if ((result & 1) == 0)
  {
    result = sub_1C11C0948(a1);
    if (a5)
    {
      return a5(a1, a2, a3);
    }
  }

  return result;
}

void sub_1C11C1C90(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1C11C139C();
    }
  }
}

uint64_t type metadata accessor for PhotosScrollViewTracker()
{
  result = qword_1EDE81680;
  if (!qword_1EDE81680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C11C1D44()
{
  sub_1C1065568();
  if (v0 <= 0x3F)
  {
    sub_1C1261F70();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI11ScrollPhaseOAcA0cD13ChangeContextVIegyyn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C11C20A4()
{
  result = qword_1EDE7BAE8;
  if (!qword_1EDE7BAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BAE8);
  }

  return result;
}

uint64_t objectdestroyTm_17()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C11C2198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C11C2200(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

__n128 sub_1C11C227C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

__n128 sub_1C11C228C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 40) = result;
  *(v1 + 56) = v3;
  return result;
}

uint64_t PhotosOrderedSet.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1C1266130();
  result = sub_1C1262460();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PhotosOrderedSet.formUnion<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1C12624F0();
  return sub_1C12624D0();
}

uint64_t PhotosOrderedSet.subtract<A>(_:)()
{
  result = sub_1C1262450();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t PhotosOrderedSet.elements.setter()
{
  v1 = OUTLINED_FUNCTION_1_48();

  return MEMORY[0x1EEDF5770](v0, v1);
}

uint64_t PhotosOrderedSet.remove(_:)()
{
  v0 = sub_1C1266790();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  sub_1C12624F0();
  sub_1C1262480();
  return (*(v1 + 8))(v3, v0);
}

uint64_t PhotosOrderedSet.append(_:)()
{
  v1 = OUTLINED_FUNCTION_1_48();

  return MEMORY[0x1EEDF5758](v0, v1);
}

Swift::Void __swiftcall PhotosOrderedSet.removeAll()()
{
  v0 = sub_1C12624F0();

  MEMORY[0x1EEDF5780](0, v0);
}

uint64_t PhotosOrderedSet.isEmpty.getter()
{
  sub_1C1266AB0();
  OUTLINED_FUNCTION_17_3();
  swift_getWitnessTable();
  return sub_1C1266370() & 1;
}

uint64_t sub_1C11C263C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhotosOrderedSet();
  result = PhotosOrderedSet.elements.getter(v2);
  *a1 = result;
  return result;
}

uint64_t sub_1C11C2688()
{
  type metadata accessor for PhotosOrderedSet();

  return PhotosOrderedSet.elements.setter();
}

uint64_t PhotosOrderedSet.elements.modify(uint64_t *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = PhotosOrderedSet.elements.getter(a2);
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C11C2734(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return PhotosOrderedSet.elements.setter();
  }

  PhotosOrderedSet.elements.setter();
}

void *PhotosOrderedSet.makeIterator()()
{
  sub_1C12624F0();
  OUTLINED_FUNCTION_17_3();
  swift_getWitnessTable();
  sub_1C1266D20();
  swift_initStackObject();

  v0 = sub_1C1266D10();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  swift_retain_n();
  swift_retain_n();
  v3 = sub_1C1266A20();

  OUTLINED_FUNCTION_17_3();
  swift_getWitnessTable();
  sub_1C1266B20();
  OUTLINED_FUNCTION_17_3();
  swift_getWitnessTable();
  sub_1C12669B0();
  result = swift_allocObject();
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  return result;
}

uint64_t sub_1C11C28F0@<X0>(void *a1@<X8>)
{
  v2 = PhotosOrderedSet.makeIterator()();

  *a1 = v2;
  return result;
}

uint64_t sub_1C11C29BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t OneUpChromeElement.description.getter()
{
  result = 0x6142206567646142;
  switch(*v0)
  {
    case 1:
      result = 0x614220656C746954;
      break;
    case 2:
      result = 0x726142206C6F6F54;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6F43206F65646956;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OneUpChromeElement.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

unint64_t sub_1C11C2B5C()
{
  result = qword_1EDE7D6D8;
  if (!qword_1EDE7D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6D8);
  }

  return result;
}

unint64_t sub_1C11C2BB4()
{
  result = qword_1EBE96930;
  if (!qword_1EBE96930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96930);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeElement(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C11C2D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_69(v15);
  OUTLINED_FUNCTION_0_69(__src);
  OUTLINED_FUNCTION_0_69(v16);
  OUTLINED_FUNCTION_0_69(&__src[88]);
  OUTLINED_FUNCTION_0_69(v17);
  OUTLINED_FUNCTION_0_69(&__src[176]);
  v4 = *(a1 + 24);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = *(v4 + 32);
  memcpy(a2, __src, 0x108uLL);
  *(a2 + 264) = v5;
  *(a2 + 272) = v6;
  *(a2 + 280) = v7;
  *(a2 + 288) = v8;
  *(a2 + 296) = v9;
  *(a2 + 304) = *(v4 + 5);
  OUTLINED_FUNCTION_1_49(v15, v10);
  OUTLINED_FUNCTION_1_49(v16, v11);
  OUTLINED_FUNCTION_1_49(v17, v12);
}

uint64_t sub_1C11C2E3C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[5];
  v6 = v2[6];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[5];
  v12 = v7[6];
  v13 = *v8;
  v14 = *(v2 + 16);
  v15 = *(v2 + 56);
  v16 = *(v7 + 16);
  v17 = *(v7 + 56);
  v21 = *(v8 + 8);
  v18 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v14;
  v19 = *(v7 + 3);
  *(a2 + 33) = *(v2 + 17);
  *(a2 + 36) = *(v2 + 5);
  *(a2 + 40) = *(v2 + 3);
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v15;
  *(a2 + 80) = v9;
  *(a2 + 88) = v10;
  *(a2 + 96) = v16;
  *(a2 + 100) = *(v7 + 5);
  *(a2 + 97) = *(v7 + 17);
  *(a2 + 104) = v19;
  *(a2 + 120) = v11;
  *(a2 + 128) = v12;
  *(a2 + 136) = v17;
  *(a2 + 144) = v13;
  *(a2 + 152) = v21;
  sub_1C1058CE4(v4, v3, v14 & 1);

  sub_1C1058CE4(v5, v6, v15 & 1);
  sub_1C1058CE4(v9, v10, v16 & 1);

  return sub_1C1058CE4(v11, v12, v17 & 1);
}

uint64_t sub_1C11C2F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = v3[1];
  v8 = v3[3];
  v7 = *(v3 + 16);
  v9 = *v4;
  v10 = *(v4 + 8);
  v12 = *(v4 + 24);
  v11 = *(v4 + 16);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *v13;
  v16 = *(v13 + 8);
  v18 = *(v13 + 24);
  v17 = *(v13 + 16);
  v22 = *(v14 + 8);
  v23 = *v14;
  v33 = *(v14 + 16);
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v27 = v20[1];
  v28 = *v20;
  v26 = v20[2];
  v24 = *(v14 + 24);
  v25 = v20[3];
  v31 = v19[1];
  v32 = *v19;
  v29 = v19[3];
  v30 = v19[2];
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  *(a2 + 96) = v23;
  *(a2 + 104) = v22;
  *(a2 + 112) = v33;
  *(a2 + 120) = v24;
  *(a2 + 128) = v28;
  *(a2 + 136) = v27;
  *(a2 + 144) = v26;
  *(a2 + 152) = v25;
  *(a2 + 160) = v32;
  *(a2 + 168) = v31;
  *(a2 + 176) = v30;
  *(a2 + 184) = v29;
  sub_1C0FDB850(v5, v6, v7);

  sub_1C0FDB850(v9, v10, v11);

  sub_1C0FDB850(v15, v16, v17);

  sub_1C0FDB850(v23, v22, v33);

  sub_1C0FDB860(v28, v27, v26, v25);

  return sub_1C0FDB860(v32, v31, v30, v29);
}

uint64_t sub_1C11C30FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  v7 = *v2;
  v8 = *(v2 + 8);
  v10 = *(v2 + 24);
  v9 = *(v2 + 16);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *v11;
  v14 = *(v11 + 8);
  v16 = *(v11 + 24);
  v15 = *(v11 + 16);
  v18 = *v12;
  v17 = v12[1];
  v21 = v12[2];
  v20 = v12[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v18;
  *(a2 + 104) = v17;
  *(a2 + 112) = v21;
  *(a2 + 120) = v20;
  sub_1C0FDB850(v4, v3, v5);

  sub_1C0FDB850(v7, v8, v9);

  sub_1C0FDB850(v13, v14, v15);

  return sub_1C0FDB860(v18, v17, v21, v20);
}

uint64_t sub_1C11C3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_2_53();
  v13 = v12[2];
  v22 = v12[1];
  *v23 = v13;
  *&v23[10] = *(v12 + 42);
  v21 = *v12;
  __src[0] = v21;
  __src[1] = v22;
  __src[2] = *v23;
  __src[3] = *&v23[16];
  *&__src[4] = v14;
  *(&__src[4] + 1) = v15;
  sub_1C102EFA0(v7, v17, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  memcpy((v10 + *(v18 + 36)), __src, 0x50uLL);
  v25[0] = v21;
  v25[1] = v22;
  v25[2] = *v23;
  v25[3] = *&v23[16];
  v26 = v9;
  v27 = v8;
  sub_1C102EFA0(v6, v20, &qword_1EBE96988);
  sub_1C102EFA0(__src, v20, &qword_1EBE96990);
  return sub_1C0F9E21C(v25, &qword_1EBE96990);
}

uint64_t sub_1C11C3318@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a1[2];
  v13 = a1[1];
  *v14 = v9;
  *&v14[10] = *(a1 + 42);
  v12 = *a1;
  __src[0] = v12;
  __src[1] = v13;
  __src[2] = *v14;
  __src[3] = *&v14[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  *a6 = a4;
  *(a6 + 8) = a5 & 1;
  *(a6 + 9) = HIBYTE(a5) & 1;
  memcpy((a6 + 16), __src, 0x50uLL);
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = *v14;
  v16[3] = *&v14[16];
  v17 = a2;
  v18 = a3;
  sub_1C102EFA0(a1, v11, &qword_1EBE96988);

  sub_1C102EFA0(__src, v11, &qword_1EBE96990);
  return sub_1C0F9E21C(v16, &qword_1EBE96990);
}

uint64_t sub_1C11C3414@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = a1[2];
  v16 = a1[1];
  *v17 = v10;
  *&v17[10] = *(a1 + 42);
  v15 = *a1;
  __src[0] = v15;
  __src[1] = v16;
  __src[2] = *v17;
  __src[3] = *&v17[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A88);
  (*(*(v11 - 8) + 16))(a4, v5, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A90);
  memcpy((a4 + *(v12 + 36)), __src, 0x50uLL);
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = *v17;
  v19[3] = *&v17[16];
  v20 = a2;
  v21 = a3;
  sub_1C102EFA0(a1, v14, &qword_1EBE96988);
  sub_1C102EFA0(__src, v14, &qword_1EBE96990);
  return sub_1C0F9E21C(v19, &qword_1EBE96990);
}

uint64_t sub_1C11C357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_3_45();

  v8 = sub_1C12659A0();
  v17[0] = v11 * 0.5;
  v17[1] = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v4;
  v24 = 256;
  sub_1C11C3210(v17, v8, v9, v6, v5, a4);
  v25[0] = v11 * 0.5;
  v25[1] = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v4;
  v32 = 256;
  return sub_1C0F9E21C(v25, &qword_1EBE96988);
}

uint64_t sub_1C11C3694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  sub_1C1262B10();

  v8 = sub_1C12659A0();
  *&v17 = v11 * 0.5;
  *(&v17 + 1) = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = a1;
  v24 = 256;
  sub_1C11C3318(&v17, v8, v9, a2, a3 & 0x101, a4);
  v25[0] = v11 * 0.5;
  v25[1] = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = a1;
  v32 = 256;
  return sub_1C0F9E21C(v25, &qword_1EBE96988);
}

uint64_t sub_1C11C37BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_45();

  v4 = sub_1C12659A0();
  *&v13 = v7 * 0.5;
  *(&v13 + 1) = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = a1;
  v20 = 256;
  sub_1C11C3414(&v13, v4, v5, a2);
  v21[0] = v7 * 0.5;
  v21[1] = v7;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = a1;
  v28 = 256;
  return sub_1C0F9E21C(v21, &qword_1EBE96988);
}

uint64_t sub_1C11C38B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1265940();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96998);
  sub_1C11C3960(a1 + *(v3 + 44));
  v4 = sub_1C12631E0();
  v5 = sub_1C1264470();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969A0) + 36);
  *v6 = v4;
  v6[8] = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969A8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C11C3960@<X0>(_BYTE *a1@<X8>)
{
  v77 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969B0);
  MEMORY[0x1EEE9AC00](v72);
  v2 = &v67[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969B8);
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v67[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v67[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969C8);
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67[-v12];
  *&v91 = sub_1C11652F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969D8);
  sub_1C0FDB6D4(&qword_1EBE969E0, &qword_1EBE969D0);
  sub_1C11C549C();
  sub_1C11C57C0(&qword_1EBE96A30, type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem);
  v87 = v13;
  sub_1C1265690();
  v14 = sub_1C11651FC();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if ((v26 & 1) == 0)
  {
    v27 = v14;
    v28 = v15;
    v16 = sub_1C12651C0();
    sub_1C12659A0();
    sub_1C1262C80();
    v19 = v99;
    v20 = v100;
    v21 = v101;
    v22 = v102;
    v25 = 256;
    v17 = v27;
    v18 = v28;
    v23 = v103;
    v24 = v104;
  }

  v80 = v25;
  v81 = v24;
  v82 = v23;
  v83 = v18;
  v84 = v17;
  v85 = v22;
  v86 = v21;
  v74 = v20;
  v75 = v19;
  v76 = v16;
  if (*(sub_1C11653E4() + 16))
  {
    v70 = sub_1C1263AA0();
    LOBYTE(v98[0]) = 1;
    sub_1C11C4BB8(&v91);

    *&__src[7] = v91;
    *&__src[23] = v92;
    *&__src[39] = v93;
    *&__src[55] = v94;
    v29 = v98[0];
    v30 = sub_1C1264470();
    LOBYTE(v90[0]) = 0;
    v31 = sub_1C1265190();
    KeyPath = swift_getKeyPath();
    v68 = sub_1C1264470();
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A38) + 36);
    v71 = v3;
    v33 = &v2[v32];
    v34 = *(sub_1C1263320() + 20);
    v35 = v9;
    v36 = *MEMORY[0x1E697F468];
    v37 = sub_1C12639D0();
    v38 = v36;
    v9 = v35;
    (*(*(v37 - 8) + 104))(&v33[v34], v38, v37);
    __asm { FMOV            V0.2D, #8.0 }

    *v33 = _Q0;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40) + 36)] = 256;
    *v2 = v70;
    *(v2 + 1) = 0;
    v2[16] = v29;
    memcpy(v2 + 17, __src, 0x47uLL);
    v2[88] = v30;
    *(v2 + 89) = v90[0];
    *(v2 + 23) = *(v90 + 3);
    __asm { FMOV            V0.2D, #20.0 }

    *(v2 + 6) = _Q0;
    *(v2 + 7) = _Q0;
    v2[128] = 0;
    *(v2 + 129) = v98[0];
    *(v2 + 33) = *(v98 + 3);
    *(v2 + 17) = KeyPath;
    *(v2 + 18) = v31;
    *(v2 + 38) = 1045220557;
    v2[156] = v68;
    sub_1C1265120();
    v45 = sub_1C12651E0();

    v46 = sub_1C1264470();
    v47 = &v2[*(v72 + 36)];
    *v47 = v45;
    v47[8] = v46;
    v48 = sub_1C1265120();
    v49 = v73;
    sub_1C11C357C(v48, &qword_1EBE969B0, &unk_1C12C2048, &qword_1EBE96A50);

    sub_1C0F9E21C(v2, &qword_1EBE969B0);
    v50 = v71;
    *(v49 + *(v71 + 36)) = xmmword_1C12C1E30;
    v51 = v88;
    sub_1C11C5750(v49, v88);
    v52 = v51;
    v53 = 0;
    v54 = v50;
  }

  else
  {

    v51 = v88;
    v52 = v88;
    v53 = 1;
    v54 = v3;
  }

  __swift_storeEnumTagSinglePayload(v52, v53, 1, v54);
  v55 = v79;
  v56 = *(v79 + 16);
  v57 = v89;
  v56(v89, v87, v9);
  v58 = v78;
  sub_1C102EFA0(v51, v78, &qword_1EBE969C0);
  v59 = v77;
  v56(v77, v57, v9);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A40);
  v61 = *(v60 + 48);
  v63 = v75;
  v62 = v76;
  v90[0] = v76;
  v90[1] = v80;
  v90[2] = v84;
  v90[3] = v83;
  v64 = v74;
  v90[4] = v75;
  v90[5] = v74;
  v90[6] = v86;
  v90[7] = v85;
  v90[8] = v82;
  v90[9] = v81;
  memcpy(&v59[v61], v90, 0x50uLL);
  sub_1C102EFA0(v58, &v59[*(v60 + 64)], &qword_1EBE969C0);
  sub_1C102EFA0(v90, &v91, &qword_1EBE96A48);
  sub_1C0F9E21C(v88, &qword_1EBE969C0);
  v65 = *(v55 + 8);
  v65(v87, v9);
  sub_1C0F9E21C(v58, &qword_1EBE969C0);
  *&v91 = v62;
  *(&v91 + 1) = v80;
  *&v92 = v84;
  *(&v92 + 1) = v83;
  *&v93 = v63;
  *(&v93 + 1) = v64;
  *&v94 = v86;
  *(&v94 + 1) = v85;
  v95 = v82;
  v96 = v81;
  sub_1C0F9E21C(&v91, &qword_1EBE96A48);
  return (v65)(v89, v9);
}

double sub_1C11C4118@<D0>(double *a1@<X0>, char *a2@<X8>)
{
  sub_1C1265140();
  v4 = sub_1C12651E0();

  v5 = sub_1C1265140();
  sub_1C11C3694(v5, v4, 256, __src);

  v6 = sub_1C1265990();
  v8 = v7;
  v9 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A08) + 36)];
  sub_1C11C42E0(a1, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A28) + 36));
  *v10 = v6;
  v10[1] = v8;
  memcpy(a2, __src, 0x60uLL);
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  sub_1C1266590();
  v16 = v15;
  v18 = v17;
  v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969F8) + 36)];
  *v19 = v16;
  *(v19 + 1) = v18;
  v26.origin.x = v11;
  v26.origin.y = v12;
  v26.size.width = v13;
  v26.size.height = v14;
  CGRectGetWidth(v26);
  v27.origin.x = v11;
  v27.origin.y = v12;
  v27.size.width = v13;
  v27.size.height = v14;
  CGRectGetHeight(v27);
  sub_1C12659A0();
  sub_1C1262C80();
  v20 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969D8) + 36)];
  *v20 = v22;
  *(v20 + 1) = v23;
  result = *&v24;
  *(v20 + 2) = v24;
  return result;
}

uint64_t sub_1C11C42E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1263AA0();
  v27 = 1;
  sub_1C11C4578(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v29, __src, sizeof(v29));
  sub_1C102EFA0(__dst, &v24, &qword_1EBE96A58);
  sub_1C0F9E21C(v29, &qword_1EBE96A58);
  memcpy(&v26[7], __dst, 0xC0uLL);
  v5 = v27;
  KeyPath = swift_getKeyPath();
  __src[0] = 0;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A60) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130) + 28);
  v9 = *MEMORY[0x1E6980FB0];
  v10 = sub_1C1264830();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v26, 0xC7uLL);
  *(a2 + 216) = KeyPath;
  *(a2 + 224) = 1;
  *(a2 + 232) = 0;
  LOBYTE(v4) = sub_1C1264470();
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A68) + 36);
  *v11 = v4;
  __asm { FMOV            V0.2D, #20.0 }

  *(v11 + 8) = _Q0;
  *(v11 + 24) = _Q0;
  *(v11 + 40) = 0;
  LOBYTE(v4) = sub_1C1264470();
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A70) + 36);
  *v17 = 1045220557;
  *(v17 + 4) = v4;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A78) + 36));
  v19 = *(sub_1C1263320() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1C12639D0();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #8.0 }

  *v18 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40);
  *&v18[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1C11C4578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_1C1261DE0();
  v29 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v63, "container: ");
  HIDWORD(v63[1]) = -352321536;
  MEMORY[0x1C68EF850](*a1, *(a1 + 8), v7);
  v37 = v63[0];
  v36 = v63[1];
  strcpy(v63, "colsPerPage: ");
  HIWORD(v63[1]) = -4864;
  v59 = *(a1 + 48);
  v10 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v10);

  v35 = v63[0];
  v34 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_1C1266940();

  v63[0] = 0xD000000000000016;
  v63[1] = 0x80000001C126D500;
  v11 = sub_1C1266260();
  MEMORY[0x1C68EF850](v11);

  v33 = v63[0];
  v32 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_1C1266940();

  v63[0] = 0xD000000000000016;
  v63[1] = 0x80000001C126D520;
  v12 = type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem(0);
  LOBYTE(v59) = *(a1 + *(v12 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DF0);
  v13 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v13);

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v31 = v63[0];
  v30 = v63[1];
  if ((*(a1 + 104) & 1) == 0)
  {
    strcpy(v63, "scrollSpeed: ");
    HIWORD(v63[1]) = -4864;
    v17 = PXScrollViewSpeedometerRegimeDescription();
    v18 = sub_1C1265EA0();
    v20 = v19;

    MEMORY[0x1C68EF850](v18, v20);

    v14 = v63[0];
    v15 = v63[1];

    v16 = MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1C102EFA0(a1 + *(v12 + 52), v5, &qword_1EBE91E68);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C0F9E21C(v5, &qword_1EBE91E68);
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v29;
    (*(v29 + 32))(v9, v5, v6);
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    sub_1C1266940();

    v63[0] = 0xD000000000000010;
    v63[1] = 0x80000001C126D540;
    sub_1C11C57C0(&qword_1EBE96A80, MEMORY[0x1E6969530]);
    v26 = sub_1C1266CE0();
    MEMORY[0x1C68EF850](v26);

    v22 = v63[0];
    v23 = v63[1];
    (*(v25 + 8))(v9, v6);

    v24 = MEMORY[0x1E69E7CC0];
  }

  v59 = v37;
  v60 = v36;
  v61 = 0;
  v55 = v35;
  v56 = v34;
  v57 = 0;
  v58 = v21;
  v62 = v21;
  v63[0] = &v59;
  v63[1] = &v55;
  v51 = v33;
  v52 = v32;
  v53 = 0;
  v54 = v21;
  v47 = v31;
  v48 = v30;
  v49 = 0;
  v50 = v21;
  v63[2] = &v51;
  v63[3] = &v47;
  v43 = v14;
  v44 = v15;
  v45 = 0;
  v46 = v16;
  v39 = v22;
  v40 = v23;
  v41 = 0;
  v42 = v24;
  v63[4] = &v43;
  v63[5] = &v39;
  sub_1C11C2F88(v63, v38);
  sub_1C0FDB8A4(v14, v15, 0, v16);
  sub_1C0FDB8A4(v22, v23, 0, v24);
  sub_1C0FDB8A4(v39, v40, v41, v42);
  sub_1C0FDB8A4(v43, v44, v45, v46);
  sub_1C0FDB8E8(v47, v48, v49);

  sub_1C0FDB8E8(v51, v52, v53);

  sub_1C0FDB8E8(v55, v56, v57);

  sub_1C0FDB8E8(v59, v60, v61);
}

uint64_t sub_1C11C4BB8@<X0>(uint64_t a1@<X8>)
{
  sub_1C1266940();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0);
  sub_1C0FDB6D4(&qword_1EDE7B700, &qword_1EBE906A0);
  v2 = sub_1C1265D70();
  MEMORY[0x1C68EF850](v2);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  *a1 = xmmword_1C12C1E40;
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x80000001C126D4E0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  sub_1C0FDB850(0x6C61626F6C47, 0xE600000000000000, 0);

  sub_1C0FDB850(0xD000000000000011, 0x80000001C126D4E0, 0);

  sub_1C0FDB8E8(0xD000000000000011, 0x80000001C126D4E0, 0);

  sub_1C0FDB8E8(0x6C61626F6C47, 0xE600000000000000, 0);
}

uint64_t sub_1C11C4D70@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1265940();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96940);
  sub_1C11C4DDC(a1 + *(v3 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96948);
  *(a1 + *(result + 36)) = 0;
  return result;
}

void *sub_1C11C4DDC@<X0>(void *a1@<X8>)
{
  sub_1C12651A0();
  v2 = sub_1C12651E0();

  v3 = sub_1C12651A0();
  sub_1C11C3694(v3, v2, 256, v10);

  v4 = sub_1C12659A0();
  v6 = v5;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96950) + 36);
  sub_1C11C4EC8(v7);
  v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96958) + 36));
  *v8 = v4;
  v8[1] = v6;
  return memcpy(a1, v10, 0x60uLL);
}

uint64_t sub_1C11C4EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1263AA0();
  v25 = 1;
  sub_1C11C5160(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v27, __src, sizeof(v27));
  sub_1C102EFA0(__dst, &v22, &qword_1EBE96960);
  sub_1C0F9E21C(v27, &qword_1EBE96960);
  memcpy(&v24[7], __dst, 0x80uLL);
  v3 = v25;
  KeyPath = swift_getKeyPath();
  __src[0] = 0;
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96968) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130) + 28);
  v7 = *MEMORY[0x1E6980FB0];
  v8 = sub_1C1264830();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  memcpy((a1 + 17), v24, 0x87uLL);
  *(a1 + 152) = KeyPath;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  LOBYTE(v2) = sub_1C1264470();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96970) + 36);
  *v9 = v2;
  __asm { FMOV            V0.2D, #20.0 }

  *(v9 + 8) = _Q0;
  *(v9 + 24) = _Q0;
  *(v9 + 40) = 0;
  LOBYTE(v2) = sub_1C1264470();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96978) + 36);
  *v15 = 1061997773;
  *(v15 + 4) = v2;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96980) + 36));
  v17 = *(sub_1C1263320() + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C12639D0();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #8.0 }

  *v16 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40);
  *&v16[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1C11C5160@<X0>(uint64_t a1@<X8>)
{
  v1 = 0xE400000000000000;
  MEMORY[0x1C68EF850](540697705, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078);
  sub_1C1266B10();
  v37 = 0x6C62697369567369;
  v38 = 0xEB00000000203A65;
  v2 = sub_1C0FE75F0();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x1C68EF850](v4, v1);

  v5 = v37;
  v6 = v38;
  sub_1C1266940();

  v37 = 0xD000000000000012;
  v38 = 0x80000001C126D4C0;
  sub_1C0FE71FC(&v33);
  v7 = 0xE800000000000000;
  v8 = 0x64656C6261736964;
  switch(v33)
  {
    case 1:
      v8 = 0x646564616F6C6E75;
      break;
    case 2:
      v7 = 0xE600000000000000;
      v8 = 0x646573756170;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 0x676E6979616C70;
      break;
    default:
      break;
  }

  MEMORY[0x1C68EF850](v8, v7);

  v9 = v37;
  v10 = v38;
  v11 = sub_1C0FE6C58();
  v12 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = v11;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1C1266940();

    v37 = 0x736F506575657571;
    v38 = 0xEF203A6E6F697469;
    v33 = v17;
    v18 = sub_1C1266CE0();
    MEMORY[0x1C68EF850](v18);

    v14 = v37;
    v15 = v38;

    v16 = MEMORY[0x1E69E7CC0];
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  v35 = 0;
  v36 = v12;
  v29 = v5;
  v30 = v6;
  v31 = 0;
  v32 = v12;
  v37 = &v33;
  v38 = &v29;
  v25 = v9;
  v26 = v10;
  v27 = 0;
  v28 = v12;
  v21 = v14;
  v22 = v15;
  v23 = 0;
  v24 = v16;
  v39 = &v25;
  v40 = &v21;
  sub_1C11C30FC(&v37, a1);
  sub_1C0FDB8A4(v14, v15, 0, v16);
  sub_1C0FDB8A4(v21, v22, v23, v24);
  sub_1C0FDB8E8(v25, v26, v27);

  sub_1C0FDB8E8(v29, v30, v31);

  sub_1C0FDB8E8(v33, v34, v35);
}

unint64_t sub_1C11C549C()
{
  result = qword_1EBE969E8;
  if (!qword_1EBE969E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE969D8);
    sub_1C11C5528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE969E8);
  }

  return result;
}

unint64_t sub_1C11C5528()
{
  result = qword_1EBE969F0;
  if (!qword_1EBE969F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE969F8);
    sub_1C11C55B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE969F0);
  }

  return result;
}

unint64_t sub_1C11C55B4()
{
  result = qword_1EBE96A00;
  if (!qword_1EBE96A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96A08);
    sub_1C11C566C();
    sub_1C0FDB6D4(&qword_1EBE96A20, &qword_1EBE96A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96A00);
  }

  return result;
}

unint64_t sub_1C11C566C()
{
  result = qword_1EBE96A10;
  if (!qword_1EBE96A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96A18);
    sub_1C0FDB6D4(&qword_1EDE7C048, &unk_1EBE91B60);
    sub_1C0FDB6D4(&unk_1EDE7BCC0, &qword_1EBE96990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96A10);
  }

  return result;
}

uint64_t sub_1C11C5750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11C57C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C11C5808()
{
  result = qword_1EBE96AA0;
  if (!qword_1EBE96AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96948);
    sub_1C0FDB6D4(&qword_1EBE96AA8, &qword_1EBE96AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96AA0);
  }

  return result;
}

unint64_t sub_1C11C58C0()
{
  result = qword_1EBE96AB8;
  if (!qword_1EBE96AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE969A8);
    sub_1C11C594C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96AB8);
  }

  return result;
}

unint64_t sub_1C11C594C()
{
  result = qword_1EBE96AC0;
  if (!qword_1EBE96AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE969A0);
    sub_1C0FDB6D4(&qword_1EBE96AC8, &qword_1EBE96AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96AC0);
  }

  return result;
}

uint64_t PhotosNotchToolbar.init(content:leadingContent:trailingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for PhotosNotchToolbar();
  v13 = v12[17];
  *(a7 + v13) = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  v15 = (a7 + v12[18]);
  *v15 = a1;
  v15[1] = a2;
  v16 = (a7 + v12[19]);
  *v16 = a3;
  v16[1] = a4;
  v17 = (a7 + v12[20]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_1C11C5B38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C0FDB800(v2, &v13 - v9, &qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FDB71C(v10, a1, &qword_1EBE902F0);
  }

  sub_1C1266420();
  v12 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C11C5D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FDB800(v2 + *(a1 + 68), &v14 - v10, &qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FDB71C(v11, a2, &qword_1EBE902F0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

double sub_1C11C5EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C11C5B38(&v9 - v6);
  sub_1C11C5D18(a1, v4);
  return sub_1C11C5FBC(v7, v4);
}

double sub_1C11C5FBC(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = sub_1C1263EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v66[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v66[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v66[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v66[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v66[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v66[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v74 = &v66[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v66[-v31];
  v76 = MGGetProductType();
  v33 = v4;
  v34 = *(v4 + 104);
  v79 = *MEMORY[0x1E697FF40];
  v80 = v4 + 104;
  v84 = v34;
  v34(v32);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v3);
  v85 = v6;
  v35 = *(v6 + 48);
  v78 = a1;
  sub_1C0FDB800(a1, v14, &qword_1EBE902F0);
  sub_1C0FDB800(v32, &v14[v35], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1C0F9E27C(v32, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v14[v35], 1, v3) != 1)
    {
      v36 = v33;
      v37 = v81;
      v38 = v77;
      v39 = v83;
LABEL_15:
      sub_1C0F9E27C(v14, &qword_1EBE902E8);
      goto LABEL_16;
    }

    sub_1C0F9E27C(v14, &qword_1EBE902F0);
    v36 = v33;
    v37 = v81;
    v38 = v77;
    v39 = v83;
  }

  else
  {
    sub_1C0FDB800(v14, v29, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v14[v35], 1, v3) == 1)
    {
      v36 = v33;
      v37 = v81;
      v38 = v77;
      v39 = v83;
LABEL_13:
      sub_1C0F9E27C(v32, &qword_1EBE902F0);
      (*(v36 + 8))(v29, v3);
      goto LABEL_15;
    }

    v40 = v75;
    (*(v33 + 32))(v75, &v14[v35], v3);
    sub_1C11CB3B0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
    v67 = sub_1C1265DE0();
    v41 = *(v33 + 8);
    v41(v40, v3);
    sub_1C0F9E27C(v32, &qword_1EBE902F0);
    v41(v29, v3);
    v36 = v33;
    sub_1C0F9E27C(v14, &qword_1EBE902F0);
    v37 = v81;
    v38 = v77;
    v39 = v83;
    if ((v67 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v70 = v36;
  v42 = v74;
  v84(v74, *MEMORY[0x1E697FF38], v3);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v3);
  v43 = *(v85 + 48);
  v14 = v72;
  sub_1C0FDB800(v82, v72, &qword_1EBE902F0);
  sub_1C0FDB800(v42, &v14[v43], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1C0F9E27C(v42, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v14[v43], 1, v3) == 1)
    {
      sub_1C0F9E27C(v14, &qword_1EBE902F0);
LABEL_63:
      sub_1C0F9E27C(v82, &qword_1EBE902F0);
      sub_1C0F9E27C(v78, &qword_1EBE902F0);
      return 0.0;
    }

    v36 = v70;
    goto LABEL_15;
  }

  v44 = v68;
  sub_1C0FDB800(v14, v68, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v14[v43], 1, v3) == 1)
  {
    v32 = v74;
    v29 = v44;
    v36 = v70;
    goto LABEL_13;
  }

  v60 = v70;
  v61 = v75;
  (*(v70 + 32))(v75, &v14[v43], v3);
  sub_1C11CB3B0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  LODWORD(v77) = sub_1C1265DE0();
  v62 = *(v60 + 8);
  v62(v61, v3);
  sub_1C0F9E27C(v74, &qword_1EBE902F0);
  v62(v44, v3);
  v36 = v60;
  v39 = v83;
  v37 = v81;
  sub_1C0F9E27C(v14, &qword_1EBE902F0);
  if (v77)
  {
    goto LABEL_63;
  }

LABEL_16:
  v84(v39, v79, v3);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v3);
  v45 = *(v85 + 48);
  v46 = v78;
  sub_1C0FDB800(v78, v38, &qword_1EBE902F0);
  sub_1C0FDB800(v39, v38 + v45, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v3) != 1)
  {
    v47 = v73;
    sub_1C0FDB800(v38, v73, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v38 + v45, 1, v3) != 1)
    {
      v50 = v75;
      (*(v36 + 32))(v75, v38 + v45, v3);
      sub_1C11CB3B0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
      v51 = sub_1C1265DE0();
      v70 = v36;
      v52 = *(v36 + 8);
      v52(v50, v3);
      sub_1C0F9E27C(v83, &qword_1EBE902F0);
      v52(v47, v3);
      v37 = v81;
      sub_1C0F9E27C(v38, &qword_1EBE902F0);
      if (v51)
      {
        goto LABEL_24;
      }

LABEL_22:
      sub_1C0F9E27C(v82, &qword_1EBE902F0);
      v48 = v46;
      v49 = &qword_1EBE902F0;
      goto LABEL_30;
    }

    sub_1C0F9E27C(v83, &qword_1EBE902F0);
    (*(v36 + 8))(v47, v3);
LABEL_21:
    sub_1C0F9E27C(v38, &qword_1EBE902E8);
    goto LABEL_22;
  }

  sub_1C0F9E27C(v39, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v38 + v45, 1, v3) != 1)
  {
    goto LABEL_21;
  }

  v70 = v36;
  sub_1C0F9E27C(v38, &qword_1EBE902F0);
LABEL_24:
  v84(v37, v79, v3);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v3);
  v53 = *(v85 + 48);
  v54 = v82;
  v55 = v71;
  sub_1C0FDB800(v82, v71, &qword_1EBE902F0);
  sub_1C0FDB800(v37, &v55[v53], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v3) == 1)
  {
    sub_1C0F9E27C(v54, &qword_1EBE902F0);
    sub_1C0F9E27C(v46, &qword_1EBE902F0);
    sub_1C0F9E27C(v37, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v55[v53], 1, v3) == 1)
    {
      sub_1C0F9E27C(v55, &qword_1EBE902F0);
      return 16.0;
    }
  }

  else
  {
    v56 = v69;
    sub_1C0FDB800(v55, v69, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v55[v53], 1, v3) != 1)
    {
      v63 = v70;
      v64 = v75;
      (*(v70 + 32))(v75, &v55[v53], v3);
      sub_1C11CB3B0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
      LODWORD(v85) = sub_1C1265DE0();
      sub_1C0F9E27C(v54, &qword_1EBE902F0);
      sub_1C0F9E27C(v46, &qword_1EBE902F0);
      v65 = *(v63 + 8);
      v65(v64, v3);
      sub_1C0F9E27C(v37, &qword_1EBE902F0);
      v65(v69, v3);
      sub_1C0F9E27C(v55, &qword_1EBE902F0);
      if (v85)
      {
        return 16.0;
      }

      goto LABEL_31;
    }

    sub_1C0F9E27C(v54, &qword_1EBE902F0);
    sub_1C0F9E27C(v46, &qword_1EBE902F0);
    sub_1C0F9E27C(v37, &qword_1EBE902F0);
    (*(v70 + 8))(v56, v3);
  }

  v49 = &qword_1EBE902E8;
  v48 = v55;
LABEL_30:
  sub_1C0F9E27C(v48, v49);
LABEL_31:
  switch(v76)
  {
    case 133314240:
      return 37.0;
    case 330877086:
    case 574536383:
      return 50.0;
    case 689804742:
      return 30.0;
    case 851437781:
      return 37.0;
    case 1060988941:
      return 25.0;
    case 1169082144:
      return 20.0;
    case 1371389549:
      return 16.0;
    case 1434404433:
      return 30.0;
    case 2021146989:
      return 20.0;
    case 2078329141:
      return 10.0;
    case 2080700391:
      return 28.0;
    case 2159747553:
      return 10.0;
    case 2309863438:
      return 42.0;
    case 2688879999:
      return 50.0;
    case 4201643249:
      return 30.0;
    case 2793418701:
    case 2795618603:
    case 2940697645:
      return 37.0;
    case 2941181571:
      return 50.0;
    case 3001488778:
      return 20.0;
    case 3585085679:
      return 30.0;
    case 3825599860:
      return 50.0;
  }

  if (v76 != 3885279870)
  {
    if (v76 == 2722529672)
    {
      return 28.0;
    }

    return 30.0;
  }

  return 14.0;
}

uint64_t PhotosNotchToolbar.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96AF8);
  v4 = a1[6];
  v43 = a1[3];
  v44 = v4;
  sub_1C12654C0();
  v5 = a1[2];
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00);
  v7 = a1[5];
  OUTLINED_FUNCTION_4_6();
  v54 = v5;
  v55 = v6;
  v56 = v7;
  v57 = sub_1C10239B0(v8, &qword_1EBE96B00);
  OUTLINED_FUNCTION_2_54();
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  OUTLINED_FUNCTION_2_29();
  OUTLINED_FUNCTION_43_4();
  v42 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12654C0();
  v9 = a1[4];
  v38 = a1[7];
  sub_1C12654C0();
  OUTLINED_FUNCTION_9_32();
  swift_getTupleTypeMetadata3();
  v40 = OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_6_1();
  sub_1C10239B0(v10, &qword_1EBE96AF8);
  v11 = sub_1C1262E70();
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v38 - v15;
  v16 = sub_1C11C5EFC(a1);
  v17 = v5;
  v18 = v5;
  v20 = v43;
  v19 = v44;
  v21 = v38;
  v23 = sub_1C11C71E8(v18, v43, v9, v7, v44, v38, v16, v22);
  *&v24 = v17;
  *(&v24 + 1) = v20;
  *&v25 = v9;
  *(&v25 + 1) = v7;
  v47 = v24;
  v48 = v25;
  v49 = v19;
  v50 = v21;
  v51 = v2;
  (v23)(sub_1C11C7ADC, v46);

  OUTLINED_FUNCTION_5_0();
  v27 = sub_1C10239B0(v26, &qword_1EBE96AF8);
  WitnessTable = swift_getWitnessTable();
  v52 = v27;
  v53 = WitnessTable;
  OUTLINED_FUNCTION_12_0();
  swift_getWitnessTable();
  v29 = v39;
  OUTLINED_FUNCTION_40_0();
  sub_1C0FDBA4C(v30, v31, v32);
  v33 = *(v41 + 8);
  v33(v13, v11);
  OUTLINED_FUNCTION_40_0();
  sub_1C0FDBA4C(v34, v35, v36);
  return (v33)(v29, v11);
}

uint64_t (*sub_1C11C71E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a7;
  *(v16 + 72) = a8;
  return sub_1C11CB348;
}

uint64_t sub_1C11C7278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00);
  sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C12654C0();
  swift_getTupleTypeMetadata3();
  v5 = sub_1C1265B00();
  v6 = sub_1C11CB35C();
  WitnessTable = swift_getWitnessTable();
  return sub_1C121710C(a1, a2, &type metadata for PhotosNotchToolbarLayout, v5, v6, WitnessTable, a3);
}

uint64_t sub_1C11C7454@<X0>(void (*a1)(void, void)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64 = a7;
  v73 = a1;
  v68 = a8;
  v13 = sub_1C12654C0();
  v14 = *(v13 - 8);
  v66 = v13;
  v67 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v55 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00);
  v19 = sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
  v104 = a2;
  v105 = v18;
  v20 = a2;
  v57 = a2;
  v106 = a5;
  v107 = v19;
  v21 = a5;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v60 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v72 = sub_1C12654C0();
  v76 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v78 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v75 = &v55 - v24;
  v25 = sub_1C12654C0();
  v26 = *(v25 - 8);
  v70 = v25;
  v71 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v74 = &v55 - v30;
  v93 = v20;
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v31 = v64;
  v97 = a6;
  v98 = v64;
  v32 = v73;
  v99 = v73;
  sub_1C1012734();
  v69 = v28;
  v56 = a3;
  sub_1C12654B0();
  v55 = MEMORY[0x1E69817F8];
  v33 = v70;
  v61 = swift_getWitnessTable();
  sub_1C0FDBA4C(v28, v33, v61);
  v62 = *(v71 + 8);
  v63 = v71 + 8;
  v62(v28, v33);
  v34 = v57;
  v86 = v57;
  v87 = a3;
  v88 = a4;
  v89 = v21;
  v90 = a6;
  v91 = v31;
  v92 = v32;
  sub_1C1012734();
  v35 = v78;
  sub_1C12654B0();
  v36 = v72;
  v58 = swift_getWitnessTable();
  sub_1C0FDBA4C(v35, v36, v58);
  v37 = *(v76 + 8);
  WitnessTable = v76 + 8;
  v60 = v37;
  v37(v35, v36);
  v79 = v34;
  v80 = v56;
  v81 = a4;
  v82 = v21;
  v83 = a6;
  v84 = v31;
  v85 = v73;
  sub_1C1012734();
  v38 = v77;
  sub_1C12654B0();
  v39 = v66;
  v64 = swift_getWitnessTable();
  v40 = v65;
  v41 = v38;
  v42 = v38;
  v43 = v39;
  sub_1C0FDBA4C(v41, v39, v64);
  v44 = v67;
  v73 = *(v67 + 8);
  v73(v42, v39);
  v45 = v70;
  v46 = v69;
  (*(v71 + 16))(v69, v74, v70);
  v104 = v46;
  v47 = v75;
  v48 = v78;
  v49 = v72;
  (*(v76 + 16))(v78, v75, v72);
  v105 = v48;
  (*(v44 + 16))(v42, v40, v43);
  v106 = v42;
  v103[0] = v45;
  v103[1] = v49;
  v50 = v49;
  v103[2] = v43;
  v100 = v61;
  v101 = v58;
  v102 = v64;
  sub_1C119EE80(&v104, 3, v103);
  v51 = v73;
  v73(v40, v43);
  v52 = v60;
  v60(v47, v50);
  v53 = v62;
  v62(v74, v45);
  v51(v77, v43);
  v52(v78, v50);
  return v53(v69, v45);
}

uint64_t sub_1C11C7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v24[0] = v15;
  v24[1] = v16;
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v24[5] = v20;
  v21 = type metadata accessor for PhotosNotchToolbar();
  (*(a1 + *(v21 + 76)))();
  sub_1C0FDBA4C(v11, a3, a6);
  v22 = *(v9 + 8);
  v22(v11, a3);
  sub_1C0FDBA4C(v14, a3, a6);
  return (v22)(v14, a3);
}

uint64_t sub_1C11C7C50@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a6;
  v80 = a7;
  v78 = a4;
  v81 = a1;
  v75 = a8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v61 - v13;
  v14 = sub_1C1263130();
  v77 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v61 - v20;
  v65 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
  v92 = a2;
  v93 = v19;
  v68 = v19;
  v94 = a5;
  v95 = v24;
  v63 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v62 = &v61 - v26;
  v70 = v27;
  v28 = sub_1C1263190();
  v73 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v74 = &v61 - v32;
  v66 = a2;
  v92 = a2;
  v93 = a3;
  v94 = v78;
  v95 = a5;
  v78 = a5;
  v96 = v79;
  v97 = v80;
  v33 = *&v81[*(type metadata accessor for PhotosNotchToolbar() + 72)];
  v81 = v23;
  v33();
  v34 = v77;
  v35 = *(v77 + 13);
  v35(v18, *MEMORY[0x1E697E6F0], v14);
  v36 = v76;
  v35(v76, *MEMORY[0x1E697E6E8], v14);
  sub_1C11CB3B0(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  v37 = v18;
  v38 = v36;
  v39 = v14;
  if ((sub_1C1265DA0() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v79 = v30;
  v80 = v28;
  v40 = v34;
  v41 = *(v34 + 4);
  v42 = v67;
  v43 = v14;
  v41(v67, v37, v14);
  v44 = v72;
  v41((v42 + *(v72 + 48)), v38, v39);
  v45 = v71;
  sub_1C0FDB800(v42, v71, &qword_1EBE96B88);
  v46 = *(v44 + 48);
  v47 = v64;
  v41(v64, v45, v39);
  v48 = *(v40 + 1);
  v49 = v45 + v46;
  v38 = v66;
  v48(v49, v43);
  sub_1C0FDB71C(v42, v45, &qword_1EBE96B88);
  v50 = *(v44 + 48);
  v14 = v68;
  v41((v47 + *(v68 + 36)), (v45 + v50), v43);
  v48(v45, v43);
  v18 = v78;
  v34 = v62;
  v35 = v63;
  v51 = v81;
  sub_1C1264BC0();
  sub_1C0F9E27C(v47, &qword_1EBE96B00);
  (*(v65 + 8))(v51, v38);
  if (qword_1EDE7B3A8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v92 = v38;
  v93 = v14;
  v94 = v18;
  v95 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v70;
  sub_1C10A0734();
  v53 = v79;
  sub_1C1264EA0();
  (*(v69 + 8))(v34, v60);
  v90 = OpaqueTypeConformance2;
  v91 = MEMORY[0x1E697EBF8];
  v54 = v80;
  WitnessTable = swift_getWitnessTable();
  v56 = v74;
  sub_1C0FDBA4C(v53, v54, WitnessTable);
  v57 = v73;
  v58 = *(v73 + 8);
  v58(v53, v54);
  v88 = 0;
  v89 = 1;
  v92 = &v88;
  (*(v57 + 16))(v53, v56, v54);
  v86 = 0;
  v87 = 1;
  v93 = v53;
  v94 = &v86;
  v85[0] = MEMORY[0x1E6981840];
  v85[1] = v54;
  v85[2] = MEMORY[0x1E6981840];
  v82 = MEMORY[0x1E6981838];
  v83 = WitnessTable;
  v84 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v92, 3, v85);
  v58(v56, v54);
  return (v58)(v53, v54);
}

uint64_t sub_1C11C84E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  v25[0] = v16;
  v25[1] = v17;
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v25[5] = v21;
  v22 = type metadata accessor for PhotosNotchToolbar();
  (*(a1 + *(v22 + 80)))();
  sub_1C0FDBA4C(v12, a4, a7);
  v23 = *(v10 + 8);
  v23(v12, a4);
  sub_1C0FDBA4C(v15, a4, a7);
  return (v23)(v15, a4);
}

double sub_1C11C8750()
{
  v0 = MGGetProductType();
  if (v0 == 133314240)
  {
    return 66.0;
  }

  if (v0 == 330877086 || v0 == 574536383)
  {
    return 68.0;
  }

  result = 60.0;
  switch(v0)
  {
    case 689804742:
      return result;
    case 851437781:
      return 66.0;
    case 1060988941:
      return 64.0;
    case 1169082144:
    case 1371389549:
    case 1434404433:
    case 2021146989:
    case 2078329141:
    case 2080700391:
    case 2159747553:
      return result;
    case 2309863438:
    case 2688879999:
      return 68.0;
    case 2722529672:
      return result;
    case 2793418701:
    case 2795618603:
    case 2940697645:
      return 66.0;
    case 2941181571:
      return 68.0;
  }

  if (v0 != 3001488778 && v0 != 3585085679)
  {
    if (v0 != 3825599860)
    {
      if (v0 == 3885279870)
      {
        return 58.0;
      }

      if (v0 == 4201643249)
      {
        return 66.0;
      }

      return 60.0;
    }

    return 68.0;
  }

  return result;
}

uint64_t sub_1C11C891C()
{
  result = sub_1C11C8948();
  qword_1EBE96AD8 = result;
  byte_1EBE96AE0 = v1 & 1;
  return result;
}

uint64_t sub_1C11C8948()
{
  v0 = MGGetProductType();
  if (v0 == 133314240)
  {
    return 0x4078600000000000;
  }

  v1 = v0;
  if (v0 == 330877086 || v0 == 574536383)
  {
    return 0x407AC00000000000;
  }

  if (v0 == 689804742 || v0 == 851437781)
  {
    return 0x4078600000000000;
  }

  result = 0x4077700000000000;
  switch(v1)
  {
    case 1060988941:
      return result;
    case 1169082144:
      return 0x4078600000000000;
    case 1371389549:
      return result;
    case 1434404433:
    case 2021146989:
      return 0x4078600000000000;
  }

  if (v1 != 2078329141)
  {
    if (v1 == 2080700391)
    {
      return 0x4079E00000000000;
    }

    if (v1 != 2159747553)
    {
      if (v1 == 2309863438 || v1 == 2688879999 || v1 == 4201643249)
      {
        return 0x407AC00000000000;
      }

      if (v1 != 2793418701 && v1 != 2795618603 && v1 != 2940697645)
      {
        if (v1 == 2941181571)
        {
          return 0x407AC00000000000;
        }

        if (v1 != 3001488778 && v1 != 3585085679)
        {
          if (v1 != 3825599860)
          {
            if (v1 != 3885279870)
            {
              if (v1 == 2722529672)
              {
                return 0x4079E00000000000;
              }

              return 0;
            }

            return result;
          }

          return 0x407AC00000000000;
        }
      }

      return 0x4078600000000000;
    }
  }

  return result;
}

uint64_t PhotosMaterialToolbarTextButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B08);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - v5;
  v7 = *v1;
  sub_1C1264070();
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B10) + 36)] = v7;
  KeyPath = swift_getKeyPath();
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B18) + 36)];
  *v9 = KeyPath;
  v9[1] = 0x3FE999999999999ALL;
  LOBYTE(KeyPath) = sub_1C1264460();
  sub_1C12628A0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B20) + 36)];
  *v18 = KeyPath;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  v19 = sub_1C1265190();
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B28) + 36)] = v19;
  v20 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B30) + 36)];
  sub_1C1263060();
  v21 = sub_1C1264470();
  v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B38) + 36)] = v21;
  v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B40) + 36)];
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v26 = *(v25 + 104);
  v26(v22, v23, v24);
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88) + 36)] = 256;
  v27 = &v6[*(v4 + 44)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80);
  sub_1C1263410();
  v26(v27, v23, v24);
  v27[*(v28 + 36)] = 0;
  if (sub_1C1264080())
  {
    v29 = 0.8;
  }

  else
  {
    v29 = 1.0;
  }

  sub_1C0FDB71C(v6, a1, &qword_1EBE96B08);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B48);
  *(a1 + *(result + 36)) = v29;
  return result;
}

uint64_t sub_1C11C8E18@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v70) = a2;
  v76 = a3;
  v77 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v65 - v5;
  v7 = sub_1C1263130();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v65 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B90);
  MEMORY[0x1EEE9AC00](v71);
  v19 = &v65 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B98);
  MEMORY[0x1EEE9AC00](v75);
  v68 = (&v65 - v20);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BA0);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v65 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BA8);
  MEMORY[0x1EEE9AC00](v73);
  v23 = (&v65 - v22);
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25 != 1 || (v70 & 1) == 0)
  {
    sub_1C12645B0();
    v46 = sub_1C1264590();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v46);
    v47 = sub_1C1264630();
    sub_1C0F9E27C(v17, &qword_1EBE96550);
    KeyPath = swift_getKeyPath();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BB0);
    v23 = v19;
    (*(*(v49 - 8) + 16))(v19, v77, v49);
    v50 = &v19[*(v71 + 36)];
    *v50 = KeyPath;
    v50[1] = v47;
    v51 = *(v8 + 104);
    v51(v12, *MEMORY[0x1E697E718], v7);
    v52 = v69;
    v51(v69, *MEMORY[0x1E697E728], v7);
    sub_1C11CB3B0(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
    if (sub_1C1265DA0())
    {
      v77 = v19;
      v53 = *(v8 + 32);
      v53(v6, v12, v7);
      v54 = v8;
      v55 = v65;
      v70 = v13;
      v56 = v67;
      v53(&v6[*(v67 + 48)], v52, v7);
      sub_1C0FDB800(v6, v55, &qword_1EBE96B88);
      v57 = *(v56 + 48);
      v58 = v66;
      v53(v66, v55, v7);
      v59 = *(v54 + 8);
      v59(v55 + v57, v7);
      sub_1C0FDB71C(v6, v55, &qword_1EBE96B88);
      v53((v58 + *(v70 + 36)), (v55 + *(v56 + 48)), v7);
      v59(v55, v7);
      sub_1C11CAEB8();
      sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
      v23 = v68;
      v60 = v77;
      sub_1C1264BC0();
      sub_1C0F9E27C(v58, &qword_1EBE96B00);
      sub_1C0F9E27C(v60, &qword_1EBE96B90);
      if (qword_1EDE7B3A8 == -1)
      {
LABEL_6:
        sub_1C12659A0();
        sub_1C1262C80();
        v61 = v74;
        v62 = (v23 + *(v75 + 36));
        v63 = v79;
        *v62 = v78;
        v62[1] = v63;
        v62[2] = v80;
        v45 = &qword_1EBE96B98;
        sub_1C0FDB800(v23, v61, &qword_1EBE96B98);
        swift_storeEnumTagMultiPayload();
        sub_1C11CAF9C(&qword_1EDE77178, &qword_1EBE96BA8, &unk_1C12C2500, sub_1C11CB01C);
        sub_1C11CB0D4();
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_6;
  }

  *v23 = sub_1C12659A0();
  v23[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BC8);
  sub_1C11C96F8(v77, v23 + *(v27 + 44));
  v28 = sub_1C1264460();
  sub_1C12628A0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BB8) + 36);
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_1C12644D0();
  sub_1C12628A0();
  v39 = v74;
  v40 = v23 + *(v73 + 36);
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  v45 = &qword_1EBE96BA8;
  sub_1C0FDB800(v23, v39, &qword_1EBE96BA8);
  swift_storeEnumTagMultiPayload();
  sub_1C11CAF9C(&qword_1EDE77178, &qword_1EBE96BA8, &unk_1C12C2500, sub_1C11CB01C);
  sub_1C11CB0D4();
LABEL_7:
  sub_1C1263C20();
  return sub_1C0F9E27C(v23, v45);
}

uint64_t sub_1C11C96F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v84 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B90);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v73 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BD0);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v73 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v73 - v9;
  v10 = sub_1C1263130();
  v97 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v73 - v15;
  v16 = sub_1C1263050();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BD8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BE0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v79 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v88 = &v73 - v29;
  v99 = sub_1C12652F0();
  sub_1C1263020();
  sub_1C1262FE0();
  v30 = *(v17 + 8);
  v30(v22, v16);
  sub_1C1264B20();
  v30(v19, v16);

  v31 = sub_1C1264570();
  KeyPath = swift_getKeyPath();
  v85 = v23;
  v86 = v25;
  v33 = &v25[*(v23 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = *MEMORY[0x1E697E6E8];
  v35 = v97;
  v36 = v97 + 104;
  v37 = *(v97 + 104);
  v37(v14, *MEMORY[0x1E697E6E8], v10);
  v38 = *MEMORY[0x1E697E720];
  v37(v98, *MEMORY[0x1E697E720], v10);
  v39 = sub_1C11CB3B0(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  v96 = v14;
  result = sub_1C1265DA0();
  if (result)
  {
    v78 = v38;
    v77 = v37;
    v41 = *(v35 + 32);
    v42 = v92;
    v41(v92, v96, v10);
    v43 = v93;
    v41((v42 + *(v93 + 48)), v98, v10);
    v75 = v36;
    v44 = v91;
    sub_1C0FDB800(v42, v91, &qword_1EBE96B88);
    v76 = v39;
    v45 = *(v43 + 48);
    v74 = v34;
    v46 = v89;
    v41(v89, v44, v10);
    v47 = *(v35 + 8);
    v47(v44 + v45, v10);
    sub_1C0FDB71C(v42, v44, &qword_1EBE96B88);
    v41((v46 + *(v90 + 36)), (v44 + *(v43 + 48)), v10);
    v97 = v35 + 8;
    v73 = v47;
    v47(v44, v10);
    sub_1C11CB1FC();
    v48 = sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
    v49 = v86;
    sub_1C1264BC0();
    sub_1C0F9E27C(v46, &qword_1EBE96B00);
    sub_1C0F9E27C(v49, &qword_1EBE96BD8);
    sub_1C12646E0();
    v50 = sub_1C1264540();

    v51 = swift_getKeyPath();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BB0);
    v53 = v95;
    (*(*(v52 - 8) + 16))(v95, v87, v52);
    v54 = &v53[*(v94 + 36)];
    *v54 = v51;
    v54[1] = v50;
    v55 = v77;
    v77(v96, v74, v10);
    v55(v98, v78, v10);
    result = sub_1C1265DA0();
    if (result)
    {
      v56 = v92;
      v41(v92, v96, v10);
      v96 = v48;
      v57 = v93;
      v41((v56 + *(v93 + 48)), v98, v10);
      v58 = v91;
      sub_1C0FDB800(v56, v91, &qword_1EBE96B88);
      v59 = *(v57 + 48);
      v60 = v89;
      v41(v89, v58, v10);
      v61 = v73;
      v73(v58 + v59, v10);
      sub_1C0FDB71C(v56, v58, &qword_1EBE96B88);
      v41((v60 + *(v90 + 36)), (v58 + *(v57 + 48)), v10);
      v61(v58, v10);
      sub_1C11CAEB8();
      v62 = v80;
      v63 = v95;
      sub_1C1264BC0();
      sub_1C0F9E27C(v60, &qword_1EBE96B00);
      sub_1C0F9E27C(v63, &qword_1EBE96B90);
      v64 = v88;
      v65 = v79;
      sub_1C0FDB800(v88, v79, &qword_1EBE96BE0);
      v67 = v81;
      v66 = v82;
      v68 = *(v82 + 16);
      v69 = v83;
      v68(v81, v62, v83);
      v70 = v84;
      sub_1C0FDB800(v65, v84, &qword_1EBE96BE0);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BE8);
      v68((v70 + *(v71 + 48)), v67, v69);
      v72 = *(v66 + 8);
      v72(v62, v69);
      sub_1C0F9E27C(v64, &qword_1EBE96BE0);
      v72(v67, v69);
      return sub_1C0F9E27C(v65, &qword_1EBE96BE0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1C11CA170()
{
  if (qword_1EDE7B3A8 != -1)
  {
    swift_once();
  }

  result = *&xmmword_1EDE7B3B0;
  xmmword_1EDE7A460 = xmmword_1EDE7B3B0;
  return result;
}

uint64_t sub_1C11CA1D0()
{
  if (qword_1EBE8FD30 != -1)
  {
    result = swift_once();
  }

  qword_1EBE96AE8 = qword_1EBE96AD8;
  byte_1EBE96AF0 = byte_1EBE96AE0;
  return result;
}

double sub_1C11CA238(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1EBE8FD40 != -1)
    {
      swift_once();
    }

    if (byte_1EBE96AF0)
    {
      v2 = INFINITY;
    }

    else
    {
      v2 = *&qword_1EBE96AE8;
    }
  }

  else
  {
    v2 = *&a1;
  }

  if (qword_1EDE7A458 != -1)
  {
    swift_once();
  }

  return v2;
}

uint64_t sub_1C11CA2F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v12 = sub_1C1262E10();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1262F50();
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMinY(v26);
  if (qword_1EDE7A458 != -1)
  {
    swift_once();
  }

  *&v18[1] = a6;
  sub_1C1265B40();
  v24 = 0;
  v23 = 0;
  sub_1C1262E00();
  v16 = *(v13 + 8);
  v16(v15, v12);
  sub_1C1262F50();
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  CGRectGetMinX(v27);
  *v18 = a5;
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetMinY(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetWidth(v29);
  sub_1C1265B40();
  v22 = 0;
  v21 = 0;
  sub_1C1262E00();
  v16(v15, v12);
  sub_1C1262F50();
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectGetMaxX(v30);
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  CGRectGetMinY(v31);
  sub_1C1265B40();
  v20 = 0;
  v19 = 0;
  sub_1C1262E00();
  return (v16)(v15, v12);
}

void (*sub_1C11CA658(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

void sub_1C11CA734()
{
  sub_1C0FDAAD8();
  if (v0 <= 0x3F)
  {
    sub_1C1007F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C11CA7F8()
{
  result = qword_1EBE96B50;
  if (!qword_1EBE96B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B48);
    sub_1C11CA884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B50);
  }

  return result;
}

unint64_t sub_1C11CA884()
{
  result = qword_1EBE96B58;
  if (!qword_1EBE96B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B08);
    sub_1C11CA93C();
    sub_1C10239B0(&qword_1EDE7BA30, &qword_1EBE91F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B58);
  }

  return result;
}

unint64_t sub_1C11CA93C()
{
  result = qword_1EBE96B60;
  if (!qword_1EBE96B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B40);
    sub_1C11CA9F4();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B60);
  }

  return result;
}

unint64_t sub_1C11CA9F4()
{
  result = qword_1EBE96B68;
  if (!qword_1EBE96B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B30);
    sub_1C11CAAAC();
    sub_1C10239B0(&qword_1EDE76D88, &qword_1EBE96B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B68);
  }

  return result;
}

unint64_t sub_1C11CAAAC()
{
  result = qword_1EBE96B70;
  if (!qword_1EBE96B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B28);
    sub_1C11CAF9C(&qword_1EBE96B78, &qword_1EBE96B20, &unk_1C12C2230, sub_1C11CAB90);
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B70);
  }

  return result;
}

unint64_t sub_1C11CAB90()
{
  result = qword_1EBE96B80;
  if (!qword_1EBE96B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B18);
    sub_1C11CAC48();
    sub_1C10239B0(&qword_1EDE7B968, &qword_1EBE90778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B80);
  }

  return result;
}

unint64_t sub_1C11CAC48()
{
  result = qword_1EDE77400;
  if (!qword_1EDE77400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B10);
    sub_1C11CB3B0(&qword_1EDE7BA80, MEMORY[0x1E697C8D0]);
    sub_1C11CAD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77400);
  }

  return result;
}

unint64_t sub_1C11CAD04()
{
  result = qword_1EDE79238;
  if (!qword_1EDE79238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79238);
  }

  return result;
}

_BYTE *sub_1C11CAD58(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11CAE48()
{
  result = qword_1EDE7A440;
  if (!qword_1EDE7A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A440);
  }

  return result;
}

unint64_t sub_1C11CAEB8()
{
  result = qword_1EDE77428;
  if (!qword_1EDE77428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B90);
    sub_1C10239B0(&qword_1EDE76DE8, &unk_1EBE96BB0);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77428);
  }

  return result;
}

uint64_t sub_1C11CAF9C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C11CB01C()
{
  result = qword_1EDE772D8;
  if (!qword_1EDE772D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96BB8);
    sub_1C10239B0(&qword_1EDE76BA0, &unk_1EBE96BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772D8);
  }

  return result;
}

unint64_t sub_1C11CB0D4()
{
  result = qword_1EDE77360;
  if (!qword_1EDE77360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00);
    sub_1C11CAEB8();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77360);
  }

  return result;
}

unint64_t sub_1C11CB1FC()
{
  result = qword_1EDE77380;
  if (!qword_1EDE77380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96BD8);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77380);
  }

  return result;
}

unint64_t sub_1C11CB35C()
{
  result = qword_1EDE7A448;
  if (!qword_1EDE7A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A448);
  }

  return result;
}

uint64_t sub_1C11CB3B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C11CB408()
{
  result = qword_1EDE76E90;
  if (!qword_1EDE76E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96BF0);
    sub_1C11CAF9C(&qword_1EDE77178, &qword_1EBE96BA8, &unk_1C12C2500, sub_1C11CB01C);
    sub_1C11CB0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E90);
  }

  return result;
}

uint64_t View.visionHoverEffect<A>(shape:tint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v22 = a3;
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HoverEffectModifier();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  (*(v9 + 16))(v12, a1, a4, v17);
  sub_1C11CB688(v12, a2, a4, v19);

  MEMORY[0x1C68EE920](v19, v22, v13, v23);
  return (*(v15 + 8))(v19, v13);
}

uint64_t sub_1C11CB688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for HoverEffectModifier();
  *(a4 + *(result + 36)) = a2;
  return result;
}

void sub_1C11CB704()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C11CBAAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C11CB78C(uint64_t result, unsigned int a2, uint64_t a3)
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
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

void sub_1C11CB8D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
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
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C11CBAAC()
{
  if (!qword_1EDE76CE0)
  {
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76CE0);
    }
  }
}

uint64_t sub_1C11CBB40(uint64_t a1)
{
  OUTLINED_FUNCTION_0_70();
  swift_getWitnessTable();
  v2 = sub_1C1263DE0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_1_50();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(a1, v2, WitnessTable);
  sub_1C0FDBA4C(v7, v2, WitnessTable);
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C11CBC74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_1C11CBCB4(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C11CBD40@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v2 = sub_1C1265650();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_8();
  v130 = v3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v123 = v5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C28);
  OUTLINED_FUNCTION_0();
  v108 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  v107 = v8;
  sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v128 = v10;
  v129 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v127 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C30);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C38) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v109 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C40) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v111 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C48) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v106 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C50) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  v110 = v27;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C58);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34();
  v113 = v29;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C60);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34();
  v117 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C68);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v114 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v125 = &v106 - v35;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C70);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_34();
  v126 = v37;
  memcpy(v137, v1, 0x79uLL);
  *v14 = sub_1C12638E0();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C78);
  sub_1C11CC988(v137, &v14[*(v38 + 44)]);
  v39 = sub_1C1264460();
  v40 = v137[0];
  ObjectType = swift_getObjectType();
  v42 = *(*(&v40 + 1) + 56);
  v121 = ObjectType;
  v122 = v40;
  v120 = v42;
  v116 = *(&v40 + 1) + 56;
  v42(ObjectType, *(&v40 + 1));
  sub_1C12628A0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v109;
  sub_1C0FDB71C(v14, v109, &qword_1EBE96C30);
  v52 = v51 + *(v15 + 44);
  *v52 = v39;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  sub_1C12659A0();
  sub_1C1263390();
  v53 = v51;
  v54 = v111;
  sub_1C0FDB71C(v53, v111, &qword_1EBE96C38);
  v55 = (v54 + *(v18 + 44));
  v56 = v54;
  memcpy(v55, v136, 0x70uLL);
  KeyPath = swift_getKeyPath();
  sub_1C0FDB71C(v56, v24, &qword_1EBE96C40);
  v58 = *(v21 + 44);
  v59 = v110;
  v60 = &v24[v58];
  *v60 = KeyPath;
  v60[8] = 2;
  v61 = swift_getKeyPath();
  sub_1C0FDB71C(v24, v59, &qword_1EBE96C48);
  v62 = v59 + *(v25 + 44);
  *v62 = v61;
  *(v62 + 8) = 1;
  v63 = swift_getKeyPath();
  v138 = *&v137[1];
  v139 = BYTE8(v137[1]);
  LOBYTE(v56) = BYTE8(v137[1]);

  if ((v56 & 1) == 0)
  {
    sub_1C1266420();
    v64 = sub_1C1264410();
    sub_1C1262620();

    v65 = v127;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v138, &qword_1EBE92928);
    (*(v128 + 8))(v65, v129);
  }

  v66 = sub_1C12239D8();

  v67 = v113;
  sub_1C0FDB71C(v59, v113, &qword_1EBE96C50);
  v68 = v67 + *(v112 + 36);
  *v68 = v63;
  *(v68 + 8) = v66;
  *(v68 + 16) = 0;
  v69 = swift_getKeyPath();
  v70 = [objc_opt_self() labelColor];
  v71 = v117;
  sub_1C0FDB71C(v67, v117, &qword_1EBE96C58);
  v72 = (v71 + *(v115 + 36));
  *v72 = v69;
  v72[1] = v70;
  if (sub_1C1190B9C())
  {
    sub_1C0FDB800(v71, v123, &qword_1EBE96C60);
    swift_storeEnumTagMultiPayload();
    sub_1C1263320();
    sub_1C11CE480();
    OUTLINED_FUNCTION_2_55();
    v75 = sub_1C11CEB00(v73, v74);
    OUTLINED_FUNCTION_1_51(v75);
    v76 = v114;
    sub_1C1263C20();
  }

  else
  {
    v77 = v107;
    sub_1C11CD4F4(v71, v137);
    v78 = v108;
    v79 = v124;
    (*(v108 + 16))(v123, v77, v124);
    swift_storeEnumTagMultiPayload();
    sub_1C1263320();
    sub_1C11CE480();
    OUTLINED_FUNCTION_2_55();
    v82 = sub_1C11CEB00(v80, v81);
    OUTLINED_FUNCTION_1_51(v82);
    v76 = v114;
    sub_1C1263C20();
    (*(v78 + 8))(v77, v79);
  }

  v83 = v125;
  sub_1C0FD1A5C(v71, &qword_1EBE96C60);
  sub_1C0FDB71C(v76, v83, &qword_1EBE96C68);
  v141 = v137[5];
  *v140 = v137[3];
  *&v140[16] = v137[4];
  v84 = *&v137[3];
  if (LOBYTE(v137[5]) == 1)
  {
    v133 = *v140;
    v134 = *&v140[8];
    v135 = *&v140[24];
    sub_1C0FDB800(v140, v132, &qword_1EBE96CC8);
    if (v84)
    {
LABEL_8:
      v86 = *(&v134 + 1);
      v85 = v135;
      v87 = v134;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C0FDB800(v140, v132, &qword_1EBE96CC8);
    sub_1C1266420();
    v88 = sub_1C1264410();
    sub_1C1262620();

    v89 = v127;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v140, &qword_1EBE96CC8);
    (*(v128 + 8))(v89, v129);
    v84 = v133;
    if (v133)
    {
      goto LABEL_8;
    }
  }

  if (qword_1EBE8FD50 != -1)
  {
    swift_once();
  }

  v84 = qword_1EBE96C00;
  v87 = qword_1EBE96C08;
  v86 = unk_1EBE96C10;
  v85 = qword_1EBE96C18;

LABEL_13:
  v90 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v92 = v130;
  (*(v91 + 104))(v130, v90);
  v93 = sub_1C12659A0();
  v95 = v94;
  v96 = v126;
  v97 = v126 + *(v119 + 36);
  sub_1C11CE8A4(v92, v97);
  v98 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CD0) + 36));
  *v98 = v84;
  v98[1] = v87;
  v98[2] = 0;
  v98[3] = 0;
  v99 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CD8) + 36));
  *v99 = v86;
  v99[1] = v85;
  v100 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CE0) + 36));
  *v100 = v93;
  v100[1] = v95;
  sub_1C0FDB71C(v83, v96, &qword_1EBE96C68);
  sub_1C11CE908(v92, MEMORY[0x1E6981998]);
  v101 = sub_1C1265A30();
  v102 = v120(v121, *(&v122 + 1));
  v103 = v131;
  sub_1C0FDB71C(v96, v131, &qword_1EBE96C70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CE8);
  v105 = v103 + *(result + 36);
  *v105 = v101;
  *(v105 + 8) = v102 & 1;
  return result;
}

uint64_t sub_1C11CC988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = a1[1];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 56);
  if (v11(ObjectType, v9))
  {
    v31 = 0x4028000000000000;
    v32 = 256;
  }

  else
  {
    v31 = (*(v9 + 16))(ObjectType, v9) & 1;
    v32 = 0;
  }

  sub_1C11CE960();
  sub_1C1263C20();
  v29 = v33;
  v27 = v35;
  v28 = v34;
  *v8 = sub_1C1263AA0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CF8);
  sub_1C11CCCD8(a1, &v8[*(v12 + 44)]);
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D00) + 36)] = 256;
  v13 = sub_1C12644D0();
  v14 = &v8[*(v4 + 36)];
  *v14 = v13;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 1;
  if (v11(ObjectType, v9))
  {
    v31 = 0x4028000000000000;
    v32 = 256;
  }

  else
  {
    (*(v9 + 40))(&v33, ObjectType, v9);
    v15 = v33;
    v16 = (*(v9 + 48))(ObjectType, v9);
    v17 = 256;
    if (v16)
    {
      v17 = 0;
    }

    v31 = v17 | v15;
    v32 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D08);
  sub_1C11CE9B4();
  sub_1C1263C20();
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v30;
  sub_1C0FDB800(v8, v30, &qword_1EBE96CF0);
  *a2 = v29;
  v22 = v27;
  *(a2 + 8) = v28;
  *(a2 + 9) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D10);
  sub_1C0FDB800(v21, a2 + *(v23 + 48), &qword_1EBE96CF0);
  v24 = a2 + *(v23 + 64);
  *v24 = v18;
  *(v24 + 8) = v19;
  *(v24 + 9) = v20;
  sub_1C0FD1A5C(v8, &qword_1EBE96CF0);
  return sub_1C0FD1A5C(v21, &qword_1EBE96CF0);
}

uint64_t sub_1C11CCCD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1C12637E0();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OneUpVideoScrubber();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D18);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v40 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D20);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v40 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D28);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v40 - v14;
  v15 = *a1;
  v16 = a1[1];
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 56);
  swift_unknownObjectRetain();
  if (v18(ObjectType, v16))
  {
    memcpy(v62, a1, 0x79uLL);
    sub_1C11CD358(v53);
    memcpy(v54, v53, 0xB0uLL);
    nullsub_1(v54);
    memcpy(v62, v54, 0xB0uLL);
  }

  else
  {
    sub_1C11CEA94(v62);
  }

  v19 = *(v16 + 8);
  *v7 = v15;
  v7[1] = v19;
  v20 = v5[5];
  *(v7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v21 = v7 + v5[6];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v7 + v5[7];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_1C12659A0();
  sub_1C1263390();
  v23 = v7;
  v24 = v45;
  sub_1C11CEA9C(v23, v45);
  memcpy((v24 + *(v43 + 36)), v56, 0x70uLL);
  v25 = a1[4];
  v60 = v25;
  v61 = *(a1 + 40);
  if (v61 == 1)
  {
    v55 = v25 & 1;
  }

  else
  {

    sub_1C1266420();
    v26 = sub_1C1264410();
    sub_1C1262620();

    v27 = v40;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v60, &qword_1EBE96D30);
    (*(v41 + 8))(v27, v42);
    LOBYTE(v25) = v55;
  }

  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v25 & 1) == 0;
  v30 = v48;
  sub_1C0FDB71C(v24, v48, &qword_1EBE96D18);
  v31 = (v30 + *(v44 + 36));
  *v31 = KeyPath;
  v31[1] = sub_1C1023064;
  v31[2] = v29;
  sub_1C12659A0();
  sub_1C1262C80();
  v32 = v46;
  sub_1C0FDB71C(v30, v46, &qword_1EBE96D20);
  v33 = (v32 + *(v47 + 36));
  v34 = v58;
  *v33 = v57;
  v33[1] = v34;
  v33[2] = v59;
  v35 = v49;
  sub_1C0FDB71C(v32, v49, &qword_1EBE96D28);
  memcpy(v52, v62, sizeof(v52));
  v36 = v50;
  sub_1C0FDB800(v35, v50, &qword_1EBE96D28);
  memcpy(v53, v52, sizeof(v53));
  v37 = v51;
  memcpy(v51, v52, 0xB0uLL);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D38);
  sub_1C0FDB800(v36, v37 + *(v38 + 48), &qword_1EBE96D28);
  sub_1C0FDB800(v53, v54, &qword_1EBE96D40);
  sub_1C0FD1A5C(v35, &qword_1EBE96D28);
  sub_1C0FD1A5C(v36, &qword_1EBE96D28);
  memcpy(v54, v52, 0xB0uLL);
  return sub_1C0FD1A5C(v54, &qword_1EBE96D40);
}

void *sub_1C11CD358@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x79uLL);
  v3 = sub_1C12638E0();
  v10 = 1;
  sub_1C11CD750(__dst, __src);
  memcpy(v12, __src, 0x8BuLL);
  memcpy(v13, __src, 0x8BuLL);
  sub_1C0FDB800(v12, &v7, &qword_1EBE96D48);
  sub_1C0FD1A5C(v13, &qword_1EBE96D48);
  memcpy(&v9[7], v12, 0x8BuLL);
  v4 = v10;
  sub_1C1262CC0();
  sub_1C1265A60();
  sub_1C12659E0();

  sub_1C1262CD0();

  sub_1C1262CC0();
  sub_1C1265A60();
  sub_1C1262CD0();

  v5 = sub_1C1262CA0();

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  result = memcpy((a1 + 17), v9, 0x92uLL);
  *(a1 + 168) = v5;
  return result;
}

uint64_t sub_1C11CD4F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1265290();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 56))(ObjectType, v10);
  v13 = 23.76;
  if ((v12 & 1) == 0)
  {
    v13 = 22.0;
  }

  v14 = round(v13);
  v15 = *(v7 + 20);
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1C12639D0();
  (*(*(v17 - 8) + 104))(v9 + v15, v16, v17);
  *v9 = v14;
  v9[1] = v14;
  sub_1C1265280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C60);
  sub_1C11CE480();
  sub_1C11CEB00(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
  sub_1C1264A40();
  (*(v4 + 8))(v6, v3);
  return sub_1C11CE908(v9, MEMORY[0x1E697EAF0]);
}

uint64_t sub_1C11CD750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v77 = sub_1C1266D00();
  v69 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1266F40();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1266F50();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C12637E0();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 64);
  v13 = v12(ObjectType, v10);
  v14 = 0.0;
  if (v15)
  {
    v16 = 0;
    v84 = 0;
    v85 = 0;
    v83 = 0;
    v81 = 0;
    v17 = 0.0;
    v86 = 1;
    v87 = 0;
  }

  else
  {
    v18 = sub_1C11CE01C(v13, 0, 1);
    v86 = v19;
    v87 = v18;
    if (qword_1EBE8FD48 != -1)
    {
      swift_once();
    }

    v20 = qword_1EBE96BF8;
    v21 = objc_opt_self();
    v16 = v20;
    v85 = [v21 labelColor];
    v22 = *(a1 + 16);
    v107 = v22;
    v108 = *(a1 + 24);
    if (v108 == 1)
    {
      *&v96 = v22;
    }

    else
    {

      sub_1C1266420();
      v23 = sub_1C1264410();
      v84 = a1;
      v24 = v16;
      v25 = v23;
      sub_1C1262620();

      v16 = v24;
      a1 = v84;
      v26 = v78;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v107, &qword_1EBE92928);
      v79[1](v26, v80);
    }

    v17 = sub_1C12239D8();

    KeyPath = swift_getKeyPath();
    LOBYTE(v102[0]) = 0;
    v81 = 65792;
    v83 = 4;
    v84 = KeyPath;
  }

  *&v28 = COERCE_DOUBLE(v12(ObjectType, v10));
  if (v29 & 1) != 0 || (v37 = *&v28, v38 = COERCE_DOUBLE((*(v10 + 72))(ObjectType, v10)), (v39))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 1;
  }

  else
  {
    v40 = v38 - v37;
    sub_1C1266FA0();
    v41 = v69 + 104;
    v42 = v72;
    v43 = v77;
    (*(v69 + 104))(v72, *MEMORY[0x1E69E7030], v77);
    v44 = (v41 - 96);
    v45 = v70;
    if (v40 >= 3600.0)
    {
      sub_1C1266F30();
    }

    else
    {
      sub_1C1266F20();
    }

    v46 = a1;
    (*v44)(v42, v43);
    v47 = v71;
    sub_1C12618F0();
    (*(v73 + 8))(v45, v74);
    sub_1C11CEB00(&qword_1EBE96D58, MEMORY[0x1E696A188]);
    v48 = v76;
    sub_1C1266F60();
    (*(v75 + 8))(v47, v48);
    v36 = *(&v96 + 1);
    v30 = v96;
    if (qword_1EBE8FD48 != -1)
    {
      swift_once();
    }

    v49 = qword_1EBE96BF8;
    v50 = objc_opt_self();
    v31 = v49;
    v32 = [v50 labelColor];
    v51 = *(v46 + 16);
    v105 = v51;
    v106 = *(v46 + 24);
    if (v106 == 1)
    {
      *&v96 = v51;
    }

    else
    {

      sub_1C1266420();
      v52 = sub_1C1264410();
      sub_1C1262620();

      v53 = v32;
      v54 = v31;
      v55 = v36;
      v56 = v78;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v105, &qword_1EBE92928);
      v57 = v56;
      v36 = v55;
      v31 = v54;
      v32 = v53;
      v79[1](v57, v80);
    }

    v14 = sub_1C12239D8();

    v34 = swift_getKeyPath();
    LOBYTE(v102[0]) = 0;
    v35 = 65792;
    v33 = 4;
  }

  *&v90 = v87;
  *(&v90 + 1) = v86;
  *&v91 = v16;
  *(&v91 + 1) = v85;
  *v92 = v17;
  *(&v92[0] + 1) = v83;
  *&v92[1] = v84;
  v79 = v16;
  v58 = v81;
  LODWORD(v80) = HIWORD(v81);
  BYTE10(v92[1]) = BYTE2(v81);
  WORD4(v92[1]) = v81;
  v96 = v90;
  v97 = v91;
  v98[0] = v92[0];
  *(v98 + 11) = *(v92 + 11);
  v89 = 1;
  *&v93 = v30;
  *(&v93 + 1) = v36;
  *&v94 = v31;
  *(&v94 + 1) = v32;
  *v95 = v14;
  *(&v95[0] + 1) = v33;
  *&v95[1] = v34;
  v59 = v32;
  v60 = v31;
  v61 = v36;
  v62 = v34;
  BYTE10(v95[1]) = BYTE2(v35);
  WORD4(v95[1]) = v35;
  *&v88[25] = *(v95 + 11);
  *(&v88[19] + 1) = v95[0];
  *(&v88[11] + 1) = v94;
  *(&v88[3] + 1) = v93;
  v63 = v90;
  v64 = v91;
  v65 = v98[1];
  v66 = v82;
  *(v82 + 32) = v98[0];
  *(v66 + 48) = v65;
  *v66 = v63;
  *(v66 + 16) = v64;
  *(v66 + 64) = 0;
  *(v66 + 72) = 1;
  memcpy((v66 + 73), v88, 0x42uLL);
  v99[0] = v30;
  v99[1] = v61;
  v99[2] = v60;
  v99[3] = v59;
  *&v99[4] = v14;
  v99[5] = v33;
  v99[6] = v62;
  v101 = BYTE2(v35);
  v100 = v35;
  sub_1C0FDB800(&v90, v102, &qword_1EBE96D50);
  sub_1C0FDB800(&v93, v102, &qword_1EBE96D50);
  sub_1C0FD1A5C(v99, &qword_1EBE96D50);
  v102[0] = v87;
  v102[1] = v86;
  v102[2] = v79;
  v102[3] = v85;
  *&v102[4] = v17;
  v102[5] = v83;
  v102[6] = v84;
  v104 = v80;
  v103 = v58;
  return sub_1C0FD1A5C(v102, &qword_1EBE96D50);
}

uint64_t sub_1C11CE01C(uint64_t a1, int a2, int a3)
{
  v23 = a3;
  LODWORD(v25) = a2;
  v22 = *&a1;
  v3 = sub_1C1265E50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1266D00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C1266F40();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1266F50();
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v25)
  {
    sub_1C1265DF0();
    v18 = static String.photosSwiftUICoreLocalized(_:)(v6);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v25 = v15;
    v19 = v22;
    sub_1C1266FA0();
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7030], v7);
    v20 = (v8 + 8);
    if (v19 >= 3600.0)
    {
      sub_1C1266F30();
    }

    else
    {
      sub_1C1266F20();
    }

    (*v20)(v10, v7);
    sub_1C12618F0();
    (*(v11 + 8))(v13, v24);
    sub_1C11CEB00(&qword_1EBE96D58, MEMORY[0x1E696A188]);
    sub_1C1266F60();
    (*(v25 + 8))(v17, v14);
    return v26;
  }

  return v18;
}

id sub_1C11CE3E4()
{
  result = PXFontWithTextStyleSymbolicTraitsAndWeight();
  qword_1EBE96BF8 = result;
  return result;
}

double sub_1C11CE420()
{
  sub_1C1265160();
  v0 = sub_1C12651E0();

  qword_1EBE96C00 = v0;
  result = 12.0;
  *&qword_1EBE96C08 = xmmword_1C12C2650;
  qword_1EBE96C18 = 0x4000000000000000;
  return result;
}

unint64_t sub_1C11CE480()
{
  result = qword_1EBE96C80;
  if (!qword_1EBE96C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C60);
    sub_1C11CE538();
    sub_1C0FDB6D4(&qword_1EDE76D40, &qword_1EBE96CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96C80);
  }

  return result;
}

unint64_t sub_1C11CE538()
{
  result = qword_1EBE96C88;
  if (!qword_1EBE96C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C58);
    sub_1C11CE5F0();
    sub_1C0FDB6D4(&qword_1EDE76D48, &qword_1EBE96CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96C88);
  }

  return result;
}

unint64_t sub_1C11CE5F0()
{
  result = qword_1EBE96C90;
  if (!qword_1EBE96C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C50);
    sub_1C11CE6A8();
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96C90);
  }

  return result;
}

unint64_t sub_1C11CE6A8()
{
  result = qword_1EBE96C98;
  if (!qword_1EBE96C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C48);
    sub_1C11CE760();
    sub_1C0FDB6D4(&unk_1EDE7B978, qword_1EBE96088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96C98);
  }

  return result;
}

unint64_t sub_1C11CE760()
{
  result = qword_1EBE96CA0;
  if (!qword_1EBE96CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C40);
    sub_1C11CE7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96CA0);
  }

  return result;
}

unint64_t sub_1C11CE7EC()
{
  result = qword_1EBE96CA8;
  if (!qword_1EBE96CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C38);
    sub_1C0FDB6D4(&qword_1EBE96CB0, &qword_1EBE96C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96CA8);
  }

  return result;
}

uint64_t sub_1C11CE8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1265650();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11CE908(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C11CE960()
{
  result = qword_1EDE78A70;
  if (!qword_1EDE78A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A70);
  }

  return result;
}

unint64_t sub_1C11CE9B4()
{
  result = qword_1EDE77480;
  if (!qword_1EDE77480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96D08);
    sub_1C11CEA40();
    sub_1C0FF9130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77480);
  }

  return result;
}

unint64_t sub_1C11CEA40()
{
  result = qword_1EDE78A78;
  if (!qword_1EDE78A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A78);
  }

  return result;
}

uint64_t sub_1C11CEA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpVideoScrubber();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11CEB00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C11CEB48()
{
  result = qword_1EBE96D60;
  if (!qword_1EBE96D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96CE8);
    sub_1C11CEC00();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96D60);
  }

  return result;
}

unint64_t sub_1C11CEC00()
{
  result = qword_1EBE96D68;
  if (!qword_1EBE96D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C70);
    sub_1C11CECB8();
    sub_1C0FDB6D4(&qword_1EDE76F20, &qword_1EBE96CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96D68);
  }

  return result;
}

unint64_t sub_1C11CECB8()
{
  result = qword_1EBE96D70;
  if (!qword_1EBE96D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C60);
    sub_1C1263320();
    sub_1C11CE480();
    sub_1C11CEB00(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96D70);
  }

  return result;
}

uint64_t PhotosMockMap.__allocating_init(identifier:title:subtitle:boundingRegion:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_24();
  v0 = swift_allocObject();
  PhotosMockMap.init(identifier:title:subtitle:boundingRegion:)();
  return v0;
}

uint64_t PhotosMockMap.init(identifier:title:subtitle:boundingRegion:)()
{
  OUTLINED_FUNCTION_16_24();
  OUTLINED_FUNCTION_39();
  v10 = v9;
  v12 = v11;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  sub_1C1261F60();

  *(v1 + 16) = v12;
  *(v1 + 24) = v10;
  v13 = 0x80000001C126AE30;
  v14 = 0xD000000000000013;
  if (v10)
  {
    v14 = v12;
    v13 = v10;
  }

  *(v1 + 32) = v14;
  *(v1 + 40) = v13;

  *(v1 + 48) = v4;
  *(v1 + 56) = v3;

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 80) = v8;
  *(v1 + 88) = v7;
  *(v1 + 96) = v6;
  *(v1 + 104) = v5;
  return v1;
}

uint64_t sub_1C11CEF34()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_12();
  }

  else
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v0;
  }
}

uint64_t sub_1C11CEFE0()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  v3 = *(v1 + 32) == v2 && *(v1 + 40) == v0;
  if (v3 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_12();
  }
}

uint64_t sub_1C11CF09C()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_12();
  }

  else
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v0;
  }
}

uint64_t sub_1C11CF148()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_12();
  }

  else
  {
    *(v1 + 64) = v2;
    *(v1 + 72) = v0;
  }
}

uint64_t sub_1C11CF1F4()
{
  OUTLINED_FUNCTION_39();
  swift_getKeyPath();
  sub_1C11CFAF8();
}

uint64_t sub_1C11CF278@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11CF2BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11CF2BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  sub_1C11CFDB4(v0);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void (*sub_1C11CF33C())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v4 = sub_1C11CFDB4(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDEEC4();
  return sub_1C11CF3F0;
}

uint64_t sub_1C11CF3FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11CF468();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11CF468()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  sub_1C11CFDB4(v0);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void (*sub_1C11CF4E8())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v4 = sub_1C11CFDB4(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  return sub_1C11CF59C;
}

uint64_t sub_1C11CF5A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11CF5EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11CF5EC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  sub_1C11CFDB4(v0);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void (*sub_1C11CF66C())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v4 = sub_1C11CFDB4(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  return sub_1C11CF720;
}

uint64_t sub_1C11CF72C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11CF7B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11CF770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C11CF7B8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  sub_1C11CFDB4(v0);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void (*sub_1C11CF838())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v4 = sub_1C11CFDB4(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  return sub_1C11CF8EC;
}

void sub_1C11CF8F8(uint64_t a1@<X8>)
{
  *a1 = sub_1C11CF954();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

double sub_1C11CF954()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  sub_1C11CFDB4(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 80);
}

uint64_t sub_1C11CF9CC(double *a1, double a2, double a3, double a4, double a5)
{
  result = swift_beginAccess();
  a1[10] = a2;
  a1[11] = a3;
  a1[12] = a4;
  a1[13] = a5;
  return result;
}

void (*sub_1C11CFA38())(void *a1)
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v4 = sub_1C11CFDB4(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  return sub_1C11CFAEC;
}

uint64_t sub_1C11CFAF8()
{
  OUTLINED_FUNCTION_0_71();
  sub_1C11CFDB4(v0);
  return sub_1C1261F20();
}

uint64_t type metadata accessor for PhotosMockMap()
{
  result = qword_1EBE96D98;
  if (!qword_1EBE96D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockMap.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore13PhotosMockMap___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockMap.__deallocating_deinit()
{
  PhotosMockMap.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C11CFDB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosMockMap();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C11CFE00()
{
  result = sub_1C1261F70();
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

objc_class *PhotosConcreteSelectableItem.__allocating_init(item:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1C0FDB0A8(a1, v3 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v6.receiver = v3;
  v6.super_class = v1;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v1;
}

id sub_1C11D01F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PhotosMockSelectableItem();
  v6 = swift_allocObject();
  sub_1C1261F60();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = &v2[OBJC_IVAR___PXPhotosConcreteSelectableItem_item];
  *&v2[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24] = v5;
  v7[4] = sub_1C11D090C(&qword_1EBE96DC0, 255, type metadata accessor for PhotosMockSelectableItem);
  *v7 = v6;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PhotosConcreteSelectableItem();
  return objc_msgSendSuper2(&v9, sel_init);
}

void *PhotosConcreteSelectableItem.init(item:)(uint64_t a1)
{
  sub_1C0FDB0A8(a1, v1 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PhotosConcreteSelectableItem();
  objc_msgSendSuper2(&v4, sel_init);
  v2 = OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v1;
}

uint64_t sub_1C11D0418()
{
  v1 = *(v0 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item), *(v0 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24));
  v2 = OUTLINED_FUNCTION_40();
  return v3(v2, v1) & 1;
}

uint64_t sub_1C11D0474(uint64_t a1)
{
  swift_getObjectType();
  sub_1C0FA49BC(a1, v14);
  if (!v15)
  {
    sub_1C0FA4B78(v14);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v2 = OUTLINED_FUNCTION_0_72(OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v4 = v3(v2);
  v6 = v5;
  v7 = *&v13[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24];
  v8 = *&v13[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 32];
  __swift_project_boxed_opaque_existential_1(&v13[OBJC_IVAR___PXPhotosConcreteSelectableItem_item], v7);
  if (v4 == (*(v8 + 16))(v7, v8) && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1266D50();
  }

  return v11 & 1;
}

uint64_t sub_1C11D0650()
{
  v1 = OUTLINED_FUNCTION_0_72(OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v3 = v2(v1);
  MEMORY[0x1C68EF880](v3);
  OUTLINED_FUNCTION_40();

  return v0;
}

id PhotosConcreteSelectableItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosConcreteSelectableItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosConcreteSelectableItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C11D07A4(uint64_t a1, uint64_t a2)
{
  result = sub_1C11D090C(&qword_1EBE96DB0, a2, type metadata accessor for PhotosConcreteSelectableItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11D090C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C11D0AC8()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_0_73();
  v1();
  v2 = OUTLINED_FUNCTION_3_46();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4;
}

uint64_t sub_1C11D0C68()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_0_73();
  v1();
  v2 = OUTLINED_FUNCTION_3_46();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4;
}

uint64_t sub_1C11D0D54()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_0_73();
  v1();
  v2 = OUTLINED_FUNCTION_3_46();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4 & 1;
}

uint64_t sub_1C11D0E74(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11D0EB0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11D0EEC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11D0F28(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1C11D104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6)
  {
    if (a3 != a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  v13 = sub_1C1266D50();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a7)
  {
    return a4 == a8;
  }

  return result;
}

id sub_1C11D10E8()
{
  type metadata accessor for EDRImage.ImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setContentMode_];
  [v0 setUserInteractionEnabled_];
  [v0 bounds];
  OUTLINED_FUNCTION_5_1();

  v1 = OUTLINED_FUNCTION_7_37(objc_allocWithZone(MEMORY[0x1E69C44E0]), sel_initWithFrame_);
  [v1 setAutoresizingMask_];
  v2 = v1;
  sub_1C11D1600(v1);
  sub_1C11D11D4(v0);

  return v0;
}

void sub_1C11D11D4(char *a1)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = *&a1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView];
  if (v11)
  {
    v12 = *v2;
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = v11;
    sub_1C11D1658(v12, v13, v14, 0, v15, 0);
    v17 = *(v2 + 32);
    if (v17)
    {
      v28 = *(v2 + 56);
      v18 = *(v2 + 48);
      v27 = v18;
      v19 = v17;
      if (v28 == 1)
      {
        if ((v18 & 1) == 0)
        {
LABEL_5:
          v20 = [v19 colorWithAlphaComponent_];
LABEL_11:
          v22 = v20;
          [a1 setTintColor_];

LABEL_15:
          [v16 setEdrGain_];

          OUTLINED_FUNCTION_22_0();
          return;
        }
      }

      else
      {
        sub_1C10D1A1C(&v27, v26, &qword_1EBE96D30);
        sub_1C1266420();
        v23 = sub_1C1264410();
        OUTLINED_FUNCTION_78();

        sub_1C12637D0();
        swift_getAtKeyPath();
        sub_1C0FD1A5C(&v27, &qword_1EBE96D30);
        (*(v6 + 8))(v10, v4);
        if (v26[15] != 1)
        {
          goto LABEL_5;
        }
      }

      v20 = v19;
      goto LABEL_11;
    }

    v28 = *(v2 + 56);
    v21 = *(v2 + 48);
    v27 = v21;
    if (v28 == 1)
    {
      if (v21)
      {
LABEL_8:
        v22 = 0;
LABEL_14:
        [a1 setTintColor_];
        goto LABEL_15;
      }
    }

    else
    {

      sub_1C1266420();
      v24 = sub_1C1264410();
      OUTLINED_FUNCTION_78();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v27, &qword_1EBE96D30);
      (*(v6 + 8))(v10, v4);
      if (v26[0])
      {
        goto LABEL_8;
      }
    }

    v25 = [objc_opt_self() labelColor];
    v22 = [v25 colorWithAlphaComponent_];

    goto LABEL_14;
  }

  sub_1C1266B70();
  __break(1u);
}

void sub_1C11D1568()
{
  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView;
  v2 = *&v0[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    if (v3)
    {
      v4 = v3;
      [v0 addSubview_];
      [v0 setNeedsLayout];
    }
  }
}

void sub_1C11D1600(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView);
  *(v1 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView) = a1;
  v3 = a1;

  sub_1C11D1568();
}

void sub_1C11D1658(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v12 = a2;
  v14 = (v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName);
  v15 = *(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName + 8);
  if (a2)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = *v14 == a1 && v15 == a2;
    if (!v16 && (sub_1C1266D50() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    v17 = *(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight + 8);
    if (a4)
    {
      if (!*(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight + 8))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (*(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight) != a3)
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale + 8);
    if (a6)
    {
      if ((*(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale + 8) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (*(v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale) != a5)
      {
        v18 = 1;
      }

      if (v18)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_22_0();
    return;
  }

  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_18:
  *v14 = a1;
  v14[1] = v12;

  v19 = v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight;
  *v19 = a3;
  *(v19 + 8) = a4 & 1;
  v20 = v7 + OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale;
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  if (v12)
  {
    sub_1C0FDE8F8(0, &qword_1EDE7B5F0);
    swift_bridgeObjectRetain_n();
    v12 = sub_1C11D18C0(a1, v12);
  }

  v21 = OUTLINED_FUNCTION_6_34();
  [v21 v22];

  v23 = 0;
  if ((a4 & 1) == 0 && (a6 & 1) == 0)
  {
    v24 = *MEMORY[0x1E69DDCF8];
    v25 = objc_opt_self();
    v26 = [v25 configurationWithTextStyle:v24 scale:a5];
    v27 = [v25 configurationWithWeight_];
    v23 = [v26 configurationByApplyingConfiguration_];
  }

  v28 = OUTLINED_FUNCTION_6_34();
  [v28 v29];

  v30 = OUTLINED_FUNCTION_6_34();
  [v30 v31];
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_22_0();

  [v32 v33];
}

id sub_1C11D18C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C1265E70();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

void sub_1C11D1930()
{
  v1 = *&v0[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

id sub_1C11D19EC(void *a1)
{
  *&v1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView] = 0;
  OUTLINED_FUNCTION_0_74(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight);
  OUTLINED_FUNCTION_2_56(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale);
  v3 = &v1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName];
  v4 = type metadata accessor for EDRImage.ImageView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithImage_, a1);

  return v5;
}

id sub_1C11D1AA8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView] = 0;
  OUTLINED_FUNCTION_0_74(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight);
  OUTLINED_FUNCTION_2_56(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale);
  v5 = &v2[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName];
  v6 = type metadata accessor for EDRImage.ImageView();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v2;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithImage_highlightedImage_, a1, a2);

  return v7;
}

id sub_1C11D1B88(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView] = 0;
  OUTLINED_FUNCTION_0_74(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight);
  OUTLINED_FUNCTION_2_56(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale);
  v9 = &v4[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName];
  v10 = type metadata accessor for EDRImage.ImageView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1C11D1C4C(void *a1)
{
  *&v1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView] = 0;
  OUTLINED_FUNCTION_0_74(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolWeight);
  OUTLINED_FUNCTION_2_56(OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_symbolScale);
  v3 = &v1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_systemImageName];
  v4 = type metadata accessor for EDRImage.ImageView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1C11D1D10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EDRImage.ImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C11D1DB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_1C11D1E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C11D1E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11D2BCC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C11D1EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11D2BCC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C11D1F50()
{
  sub_1C11D2BCC();
  sub_1C1263BD0();
  __break(1u);
}

id sub_1C11D1F78()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setNumberOfLines_];
  [v1 setAdjustsFontSizeToFitWidth_];
  [v1 setMinimumScaleFactor_];
  [v1 setLineBreakMode_];
  v2 = v1;
  LODWORD(v3) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  [v2 setTextAlignment_];
  [v2 setUserInteractionEnabled_];
  [v2 bounds];
  OUTLINED_FUNCTION_5_1();

  v5 = OUTLINED_FUNCTION_7_37(objc_allocWithZone(MEMORY[0x1E69C44E0]), sel_initWithFrame_);
  [v5 setAutoresizingMask_];
  [v2 addSubview_];
  sub_1C11D20E0(v2);

  return v2;
}

void sub_1C11D20E0(void *a1)
{
  v2 = [a1 subviews];
  sub_1C0FDE8F8(0, &qword_1EDE7B5F8);
  v3 = sub_1C12660B0();

  if (!sub_1C0FF7688(v3))
  {

LABEL_11:
    sub_1C1266B70();
    __break(1u);
    return;
  }

  sub_1C0FF768C(0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C68F02D0](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v6 = v4;

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_11;
  }

  [v5 setEdrGain_];
}

void sub_1C11D2238(void *a1)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v53 = v9 - v8;
  v10 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  if (qword_1EDE83508 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v17, qword_1EDE82FE0);
  sub_1C10D1A1C(v21, v20, &qword_1EBE919B0);
  v22 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v20, 1, v22) == 1)
  {
    sub_1C0FD1A5C(v20, &qword_1EBE919B0);
  }

  else
  {
    v52 = a1;
    sub_1C11D2A7C(v2, &v54);
    sub_1C1262640();
    v23 = sub_1C1262670();
    v51 = sub_1C1266520();
    sub_1C107BD50(v2);
    if (sub_1C1266730())
    {
      v24 = swift_slowAlloc();
      v50 = v12;
      v25 = v24;
      v48 = swift_slowAlloc();
      v54 = v48;
      *v25 = 136446210;
      v26 = sub_1C1200408();
      v28 = sub_1C0FA0E80(v26, v27, &v54);
      v49 = v10;
      v29 = v6;
      v30 = v4;
      v31 = v28;

      *(v25 + 4) = v31;
      v4 = v30;
      v6 = v29;
      v32 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v23, v51, v32, "EDRText", "EDRText %{public}s", v25, 0xCu);
      v33 = v48;
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x1C68F1630](v33, -1, -1);
      MEMORY[0x1C68F1630](v25, -1, -1);

      (*(v50 + 8))(v16, v49);
    }

    else
    {

      (*(v12 + 8))(v16, v10);
    }

    (*(*(v22 - 8) + 8))(v20, v22);
    a1 = v52;
  }

  sub_1C11D20E0(a1);
  v34 = *(v2 + 24);
  if (v34)
  {
    v55 = *(v2 + 56);
    v35 = *(v2 + 48);
    v54 = v35;
    v36 = v55;
    v37 = v34;
    if (v36 == 1)
    {
      if ((v35 & 1) == 0)
      {
LABEL_12:
        v38 = [v37 colorWithAlphaComponent_];
LABEL_18:
        v41 = v38;
        [a1 setTextColor_];

        goto LABEL_22;
      }
    }

    else
    {
      sub_1C10D1A1C(&v54, v56, &qword_1EBE96D30);
      sub_1C1266420();
      v42 = v6;
      v43 = sub_1C1264410();
      OUTLINED_FUNCTION_78();

      v44 = v53;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v54, &qword_1EBE96D30);
      (*(v42 + 8))(v44, v4);
      if (v56[15] != 1)
      {
        goto LABEL_12;
      }
    }

    v38 = v37;
    goto LABEL_18;
  }

  v55 = *(v2 + 56);
  v39 = *(v2 + 48);
  v54 = v39;
  if (v55 != 1)
  {

    sub_1C1266420();
    v45 = sub_1C1264410();
    OUTLINED_FUNCTION_78();

    v46 = v53;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v54, &qword_1EBE96D30);
    (*(v6 + 8))(v46, v4);
    if (v56[0] != 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    v41 = [a1 tintColor];
    goto LABEL_21;
  }

  if (v39)
  {
    goto LABEL_20;
  }

LABEL_15:
  v40 = [objc_opt_self() labelColor];
  v41 = [v40 colorWithAlphaComponent_];

LABEL_21:
  [a1 setTextColor_];
LABEL_22:

  if (*(v2 + 8))
  {
    v47 = sub_1C1265E70();
  }

  else
  {
    v47 = 0;
  }

  [a1 setText_];

  [a1 setFont_];
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11D2864(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, id a5)
{
  if ((a2 | a4))
  {
    return 0;
  }

  [a5 sizeThatFits_];
  if (v7 > *&a1)
  {
    v7 = *&a1;
  }

  return *&v7;
}

uint64_t sub_1C11D2988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11D2AB4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C11D29EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11D2AB4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C11D2A50()
{
  sub_1C11D2AB4();
  sub_1C1263BD0();
  __break(1u);
}

unint64_t sub_1C11D2AB4()
{
  result = qword_1EDE7C178;
  if (!qword_1EDE7C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C178);
  }

  return result;
}

uint64_t sub_1C11D2B18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C11D2B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C11D2BCC()
{
  result = qword_1EDE7C160;
  if (!qword_1EDE7C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C160);
  }

  return result;
}

uint64_t EnvironmentValues.photosFolderCornerRadius.getter()
{
  sub_1C11D2CCC();

  return sub_1C12637F0();
}

unint64_t sub_1C11D2CCC()
{
  result = qword_1EDE76F98;
  if (!qword_1EDE76F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F98);
  }

  return result;
}

void PhotosCornerRadii.init(topLeading:topTrailing:bottomLeading:bottomTrailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void (*EnvironmentValues.photosFolderCornerRadius.modify(void *a1))(char **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  v3[11] = sub_1C11D2CCC();
  sub_1C12637F0();
  return sub_1C11D2DF4;
}

void sub_1C11D2DF4(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[32];
  v3 = *(*a1 + 1);
  *(v1 + 40) = *v1;
  *(v1 + 56) = v3;
  v1[72] = v2;
  sub_1C1263800();

  free(v1);
}

uint64_t sub_1C11D2E54(uint64_t a1, int a2)
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

unint64_t PhotosScrollRequest.description.getter()
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1C1266940();

  v4 = 0xD00000000000002CLL;
  v5 = 0x80000001C126D790;
  sub_1C0FA139C(v0, v3);
  v1 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v1);

  MEMORY[0x1C68EF850](62, 0xE100000000000000);
  return v4;
}

uint64_t PhotosScrollRequest.Error.hashValue.getter()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t View.photosScrollRequestHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PhotosScrollRequestHandlerModifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(0);
  type metadata accessor for PhotosScrollRequestHandlerObject();
  swift_retain_n();
  sub_1C12628D0();
  MEMORY[0x1C68EE920](v10, a3, v8, a4);
  return sub_1C11D3434(v10);
}

uint64_t PhotosSourceViewScrollRequestHandler.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1C11D3174()
{
  sub_1C11D396C();
  sub_1C12637F0();
  return v1;
}

uint64_t PhotosSourceViewScrollRequestHandler.wrappedValue.getter()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_2();
    (*(v2 + 8))(v4, v1);
    v5 = v10[1];
  }

  if (!v5)
  {
    return 0;
  }

  v8 = *(v5 + 16);

  return v8;
}

uint64_t sub_1C11D3388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PhotosScrollRequestHandlerObject();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = v6;
}

uint64_t sub_1C11D3434(uint64_t a1)
{
  v2 = type metadata accessor for PhotosScrollRequestHandlerModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C11D3498()
{
  result = qword_1EBE96DE8;
  if (!qword_1EBE96DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96DE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosScrollRequest.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C11D35C4()
{
  type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96DF0);
  sub_1C12628E0();
  v1 = v0[1];
  *(v3 + 16) = *v0;
  *(v3 + 24) = v1;
}

uint64_t sub_1C11D3640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96DF0);
  sub_1C12628E0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96DF8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E00);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v8;
  return result;
}

uint64_t sub_1C11D3728()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C11D3760()
{
  result = qword_1EDE7F780;
  if (!qword_1EDE7F780)
  {
    type metadata accessor for PhotosScrollRequestHandlerModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F780);
  }

  return result;
}

void sub_1C11D37E0()
{
  sub_1C1007F88();
  if (v0 <= 0x3F)
  {
    sub_1C11D3864();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C11D3864()
{
  if (!qword_1EDE77698)
  {
    type metadata accessor for PhotosScrollRequestHandlerObject();
    v0 = sub_1C1262900();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77698);
    }
  }
}

uint64_t sub_1C11D38E4()
{
  result = type metadata accessor for PhotosSourceViewScrollRequestHandlerObject(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C11D396C()
{
  result = qword_1EDE800E8;
  if (!qword_1EDE800E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE800E8);
  }

  return result;
}

unint64_t sub_1C11D39D0()
{
  result = qword_1EDE7BEF0;
  if (!qword_1EDE7BEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E00);
    sub_1C0FDB6D4(&qword_1EDE7BB08, &qword_1EBE96DF8);
    sub_1C0FDB6D4(&qword_1EDE7B998, &qword_1EBE96E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEF0);
  }

  return result;
}

id static PhotosSharedFullscreenViewSpec.topCenteredTitleFont.getter()
{
  v0 = PXFontWithTextStyleSymbolicTraitsAndWeight();

  return v0;
}

id static PhotosSharedFullscreenViewSpec.topLeadingSubtitleFont.getter()
{
  v0 = PXFontWithTextStyleSymbolicTraitsAndWeight();

  return v0;
}

id static PhotosSharedFullscreenViewSpec.cappedTopCenteredTitleFont(withMaxContentSizeCategory:)(uint64_t a1)
{
  v1 = MEMORY[0x1C68F0B60](7, 0x8000, a1, *MEMORY[0x1E69DB980]);

  return v1;
}

id static PhotosSharedFullscreenViewSpec.cappedTopLeadingSubtitleFont(withMaxContentSizeCategory:)(uint64_t a1)
{
  v1 = MEMORY[0x1C68F0B60](12, 0x8000, a1, *MEMORY[0x1E69DB970]);

  return v1;
}

_BYTE *storeEnumTagSinglePayload for PhotosSharedFullscreenViewSpec(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C11D3C78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E10);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C11D5E48(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1262D00();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosSearchDateRangePicker.init(completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v18 = a2;
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E10);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for PhotosSearchDateRangePicker();
  sub_1C1261DD0();
  v12 = *(v5 + 16);
  v12(v7, v10, v4);
  sub_1C1265410();
  v13 = *(v5 + 8);
  v13(v10, v4);
  sub_1C1261DD0();
  v12(v7, v10, v4);
  sub_1C1265410();
  result = (v13)(v10, v4);
  v15 = (a3 + *(v11 + 28));
  v16 = v18;
  *v15 = v17;
  v15[1] = v16;
  return result;
}

uint64_t PhotosSearchDateRangePicker.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E38);
  sub_1C0FDB6D4(&qword_1EBE96E40, &qword_1EBE96E38);
  OUTLINED_FUNCTION_0_75();
  OUTLINED_FUNCTION_0_75();
  sub_1C0FDB6D4(&qword_1EBE96E48, &qword_1EBE96E28);
  OUTLINED_FUNCTION_0_75();
  return sub_1C12631A0();
}

uint64_t sub_1C11D41CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1C1263FD0();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E38);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E30);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E20);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v25 - v11;
  v33 = a1;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E90);
  sub_1C11D5BB0();
  sub_1C1264720();
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDE7E630;
  v14 = sub_1C12648D0();
  v16 = v15;
  v18 = v17;
  v19 = sub_1C0FDB6D4(&qword_1EBE96E40, &qword_1EBE96E38);
  sub_1C1264C00();
  sub_1C0FDB8E8(v14, v16, v18 & 1);

  (*(v26 + 8))(v7, v5);
  v20 = v29;
  sub_1C1263FC0();
  v36 = v5;
  v37 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C1264E10();
  (*(v31 + 8))(v20, v32);
  v22 = (*(v27 + 8))(v10, v8);
  MEMORY[0x1EEE9AC00](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E28);
  v36 = v8;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1C0FDB6D4(&qword_1EBE96E48, &qword_1EBE96E28);
  v23 = v30;
  sub_1C1264FC0();
  return (*(v28 + 8))(v12, v23);
}

uint64_t sub_1C11D4708()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EA8);
  sub_1C0FDB6D4(&qword_1EBE96EA0, &qword_1EBE96EA8);
  return sub_1C1265700();
}

uint64_t sub_1C11D47AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96ED8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v27 - v4;
  v5 = sub_1C1263C60();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EE8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v27 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v33 = &v27 - v17;
  type metadata accessor for PhotosSearchDateRangePicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58);
  sub_1C1265440();
  v31 = a1;
  sub_1C1265420();
  sub_1C1261DE0();
  sub_1C11D6120();
  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C1263C50();
    sub_1C1262880();
    sub_1C1265440();
    sub_1C1265420();
    result = sub_1C1265DE0();
    if (result)
    {
      sub_1C1263C50();
      v19 = v27;
      sub_1C1262870();
      v20 = *(v10 + 16);
      v21 = v28;
      v22 = v33;
      v20(v28, v33, v9);
      v23 = v29;
      v20(v29, v19, v9);
      v24 = v30;
      v20(v30, v21, v9);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EF8);
      v20(&v24[*(v25 + 48)], v23, v9);
      v26 = *(v10 + 8);
      v26(v19, v9);
      v26(v22, v9);
      v26(v23, v9);
      return (v26)(v21, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C11D4C5C@<X0>(uint64_t a1@<X8>)
{
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE7E630;
  result = sub_1C12648D0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1C11D4D3C@<X0>(uint64_t a1@<X8>)
{
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE7E630;
  result = sub_1C12648D0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1C11D4E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EB0);
  MEMORY[0x1EEE9AC00](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EB8);
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v17 - v5;
  v7 = sub_1C1263D80();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EC0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  sub_1C1263D70();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560);
  sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560);
  sub_1C1262B20();
  sub_1C1263D60();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EC8);
  sub_1C11D5C84();
  sub_1C1262B20();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_1C1263B30();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C11D5168(uint64_t a1)
{
  v2 = type metadata accessor for PhotosSearchDateRangePicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1C12639A0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1C11D5D68(a1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1C11D5DCC(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v16 = v5;
  v17 = v7;
  v18 = v9 & 1;
  v19 = v11;
  sub_1C1265480();
}

uint64_t sub_1C11D52F4(uint64_t a1)
{
  v2 = sub_1C1262D00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = *(a1 + *(type metadata accessor for PhotosSearchDateRangePicker() + 28));
  v10 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  v9(v8);
  sub_1C109C528(v8);
  sub_1C11D3C78(v5);
  sub_1C1262CF0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C11D5464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a1;
  v30 = a2;
  v3 = sub_1C1261DE0();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - v6;
  v8 = type metadata accessor for PhotosSearchDateRangePicker();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = sub_1C12639A0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1C11D5D68(a1, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_1C11D5DCC(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v34 = v11;
  v35 = v13;
  v36 = v15 & 1;
  v37 = v17;
  v20 = v30;
  sub_1C1265480();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58);
  sub_1C1265420();
  v21 = v31;
  sub_1C1265420();
  LOBYTE(v11) = sub_1C1261D80();
  v22 = *(v32 + 8);
  v23 = v21;
  v24 = v33;
  v22(v23, v33);
  v22(v7, v24);
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v11 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96EC8);
  v28 = (v20 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_1C1023064;
  v28[2] = v26;
  return result;
}

uint64_t sub_1C11D577C(uint64_t a1)
{
  v2 = sub_1C1262D00();
  v13 = *(v2 - 8);
  v14 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1261DE0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = *(a1 + *(type metadata accessor for PhotosSearchDateRangePicker() + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58);
  sub_1C1265420();
  sub_1C1265420();
  sub_1C1261980();
  v11 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v10(v9);
  sub_1C109C528(v9);
  sub_1C11D3C78(v4);
  sub_1C1262CF0();
  return (*(v13 + 8))(v4, v14);
}

uint64_t type metadata accessor for PhotosSearchDateRangePicker()
{
  result = qword_1EBE96E60;
  if (!qword_1EBE96E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C11D5A48()
{
  sub_1C11D5B44(319, &qword_1EBE96E70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C11D5B44(319, &qword_1EBE96E78, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C1007F88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C11D5B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C11D5BB0()
{
  result = qword_1EBE96E98;
  if (!qword_1EBE96E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96E90);
    sub_1C0FDB6D4(&qword_1EBE96EA0, &qword_1EBE96EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96E98);
  }

  return result;
}

unint64_t sub_1C11D5C84()
{
  result = qword_1EBE96ED0;
  if (!qword_1EBE96ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96EC8);
    sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560);
    sub_1C0FDB6D4(&unk_1EDE7B8D0, &unk_1EBE91970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96ED0);
  }

  return result;
}

uint64_t sub_1C11D5D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchDateRangePicker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11D5DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchDateRangePicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11D5E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for PhotosSearchDateRangePicker();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C1262D00();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);
  v6 = sub_1C1261DE0();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96E58);

  v7(v3 + *(v1 + 24), v6);

  return swift_deallocObject();
}

uint64_t sub_1C11D60A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosSearchDateRangePicker() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1C11D6120()
{
  result = qword_1EDE82F38;
  if (!qword_1EDE82F38)
  {
    sub_1C1261DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F38);
  }

  return result;
}

uint64_t sub_1C11D6178(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = v2[1];
  if (!v5)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((result = *v2, *v2 == v4) ? (v6 = v5 == a2) : (v6 = 0), !v6 && (result = sub_1C1266D50(), (result & 1) == 0)))
  {

LABEL_10:
    *v2 = v4;
    v2[1] = a2;
  }

  return result;
}

uint64_t sub_1C11D6210(uint64_t result, char a2)
{
  if (*(v2 + 8))
  {
    if (a2)
    {
      return result;
    }

LABEL_6:
    *v2 = result;
    *(v2 + 8) = a2 & 1;
    return result;
  }

  if ((a2 & 1) != 0 || *v2 != result)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_1C11D6240()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C1261990();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F00) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_11_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22[-v17];
  sub_1C109CF2C(v2, &v22[-v17]);
  v19 = *(v11 + 56);
  sub_1C109CF2C(v18, v1);
  sub_1C109CF2C(v4, v1 + v19);
  OUTLINED_FUNCTION_17_1(v1);
  if (v20)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE929A0);
    OUTLINED_FUNCTION_17_1(v1 + v19);
    if (v20)
    {
      sub_1C0FD1A5C(v1, &qword_1EBE929A0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1C109CF2C(v1, v15);
  OUTLINED_FUNCTION_17_1(v1 + v19);
  if (v20)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE929A0);
    (*(v7 + 8))(v15, v5);
LABEL_9:
    sub_1C0FD1A5C(v1, &qword_1EBE96F00);
LABEL_10:
    sub_1C0FD1A5C(v2, &qword_1EBE929A0);
    sub_1C109CF2C(v4, v2);
    goto LABEL_11;
  }

  (*(v7 + 32))(v10, v1 + v19, v5);
  sub_1C109D03C();
  v23 = sub_1C1265DE0();
  v21 = *(v7 + 8);
  v21(v10, v5);
  sub_1C0FD1A5C(v18, &qword_1EBE929A0);
  v21(v15, v5);
  sub_1C0FD1A5C(v1, &qword_1EBE929A0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_22_0();
}

void PhotosObservableCollection.init(_:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_23_13();
  v6 = *(*(v5 + 88) + 8);
  OUTLINED_FUNCTION_23_13();
  v8 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C1266790();
  OUTLINED_FUNCTION_1();
  v85 = v10;
  v86 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v79 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v79 - v14;
  OUTLINED_FUNCTION_23_13();
  v79 = *(v15 + 104);
  v80 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_7();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  v82 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79 - v22;
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_14_2(*(v24 + 136));
  OUTLINED_FUNCTION_14_2(*(v25 + 144));
  OUTLINED_FUNCTION_14_2(*(v26 + 152));
  v28 = *(v27 + 160);
  v29 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v2 + v28, 1, 1, v29);
  OUTLINED_FUNCTION_10_15();
  __swift_storeEnumTagSinglePayload(v2 + *(v30 + 168), 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_14_2(*(v31 + 192));
  sub_1C1261F60();
  (*(v20 + 16))(v23, v4, v8);
  sub_1C10342F0(v23, *v2, v2 + *(*v2 + 112));
  sub_1C12622A0();
  OUTLINED_FUNCTION_10_15();
  (*(v17 + 32))(v2 + *(v32 + 120), v1, v80);
  OUTLINED_FUNCTION_23_13();
  v34 = (*(*(v33 + 96) + 16))(v8);
  v35 = (v2 + *(*v2 + 128));
  *v35 = v34;
  v35[1] = v36;
  v37 = OUTLINED_FUNCTION_4_4();
  v39 = v38(v37);
  v41 = v40;
  OUTLINED_FUNCTION_10_15();
  v43 = (v2 + *(v42 + 136));

  *v43 = v39;
  v43[1] = v41;
  v44 = OUTLINED_FUNCTION_4_4();
  v46 = v45(v44);
  v48 = v47;
  OUTLINED_FUNCTION_10_15();
  v50 = (v2 + *(v49 + 144));

  *v50 = v46;
  v50[1] = v48;
  v51 = OUTLINED_FUNCTION_4_4();
  v53 = v52(v51);
  v55 = v54;
  OUTLINED_FUNCTION_10_15();
  v57 = (v2 + *(v56 + 152));

  *v57 = v53;
  v57[1] = v55;
  v58 = v83;
  v59 = OUTLINED_FUNCTION_4_4();
  v60(v59);
  OUTLINED_FUNCTION_10_15();
  v62 = *(v61 + 160);
  sub_1C0FD1A5C(v2 + v62, &qword_1EBE929A0);
  sub_1C11DA978(v58, v2 + v62);
  v63 = OUTLINED_FUNCTION_4_4();
  v64(v63);
  OUTLINED_FUNCTION_10_15();
  (*(v85 + 8))(v2 + *(v65 + 168), v86);
  sub_1C11D7090();
  (*(*(v6 + 8) + 8))(v8);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v66 + 184)) = v67 & 1;
  v68 = OUTLINED_FUNCTION_4_4();
  v70 = v69(v68);
  v72 = v71;
  OUTLINED_FUNCTION_10_15();
  v74 = (v2 + *(v73 + 192));

  *v74 = v70;
  v74[1] = v72;
  v75 = OUTLINED_FUNCTION_4_4();
  v77 = v76(v75);
  (*(v82 + 8))(v4, v8);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v78 + 176)) = v77;
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11D6B68(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_7();
  sub_1C11D873C(v2);
  v8 = *(v6 + 8);
  v8(v2, v4);
  OUTLINED_FUNCTION_20();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_11();

  return (v8)(a1, v4);
}

uint64_t sub_1C11D6CDC()
{
  OUTLINED_FUNCTION_5_2();
  v1 = v0;
  sub_1C109AB74();
  v2 = sub_1C0FA8038();

  if (!v2)
  {
    return sub_1C109ABB4();
  }

  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_22();
  v4 = *(v1 + 96);
  *(v5 - 32) = *(v1 + 80);
  *(v5 - 16) = v4;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  OUTLINED_FUNCTION_27_11();
}

uint64_t sub_1C11D6EF0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_11_5();
  sub_1C11D912C(v1);
  sub_1C109CFB8();
  v6 = sub_1C0FA8038();
  v7 = sub_1C0FD1A5C(v1, &qword_1EBE929A0);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_4_22();
    v8 = *(v4 + 96);
    *(v9 - 32) = *(v4 + 80);
    *(v9 - 16) = v8;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_27_11();
  }

  else
  {
    sub_1C109CF2C(a1, v1);
    sub_1C11D9180(v1);
  }

  return sub_1C0FD1A5C(a1, &qword_1EBE929A0);
}

uint64_t sub_1C11D7090()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  v0 = OUTLINED_FUNCTION_5_5();

  return v1(v0);
}

void sub_1C11D7110()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  v3 = sub_1C1266790();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_7();
  sub_1C11D9350(v0);
  v7 = *(v5 + 8);
  v7(v0, v3);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_11();

  v7(v2, v3);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C11D72A8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  v3 = v2 & 1;
  v4 = sub_1C0FA8038();
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_4_22();
    v5 = *(v1 + 96);
    *(v6 - 32) = *(v1 + 80);
    *(v6 - 16) = v5;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_27_11();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v8 + 184)) = v3;
  }
}

void sub_1C11D7430()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60);
  sub_1C1073248();
  v9 = sub_1C0FA8038();

  if (v9)
  {
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_4_22();
    v11 = *(v7 + 96);
    *(v12 - 32) = *(v7 + 80);
    *(v12 - 16) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C11D9EB0();
  }

  else
  {
    v2(v6, v4);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11D7594()
{
  OUTLINED_FUNCTION_2_16();
  sub_1C11D9794();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();

  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C12661A0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_11();
}

uint64_t sub_1C11D76A4()
{
  v1 = v0;
  v2 = *v0;
  v99 = *(*v0 + 80);
  v3 = v99;
  v92 = *(*(&v99 + 1) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = sub_1C1266790();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v83 - v6;
  v7 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  sub_1C11D8A18();
  v16 = *(v2 + 96);
  v17 = (*(v16 + 16))(v3, v16);
  v19 = v18;
  v20 = *(v7 + 8);
  v97 = v7 + 8;
  v93 = v20;
  v20(v15, v3);
  v103 = v99;
  v104 = v16;
  v105 = *(v2 + 104);
  v21 = v105;
  swift_getKeyPath();
  sub_1C11D9E14();

  v22 = *(*v0 + 200);
  v111 = v1;
  v100 = v99;
  v101 = v16;
  v102 = v21;
  swift_getKeyPath();
  v108 = v99;
  v109 = v16;
  v110 = v21;
  v98 = v21;
  type metadata accessor for PhotosObservableCollection();
  WitnessTable = swift_getWitnessTable();
  v96 = v22;
  sub_1C1261F50();

  v23 = (v1 + *(*v1 + 128));
  swift_beginAccess();
  v24 = *v23 == v17 && v23[1] == v19;
  if (v24 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {

    *v23 = v17;
    v23[1] = v19;
  }

  v25 = v92;
  swift_endAccess();
  sub_1C11D9C14();
  sub_1C11D8A18();
  v84 = (*(v25 + 40))(v3, v25);
  v27 = v26;
  v28 = v93;
  v29 = v93(v12, v3);
  MEMORY[0x1EEE9AC00](v29);
  *(&v83 - 2) = v99;
  v30 = v98;
  *(&v83 - 2) = v16;
  *(&v83 - 1) = v30;
  v31 = v30;
  swift_getKeyPath();
  sub_1C11D9E14();

  *&v108 = v1;
  MEMORY[0x1EEE9AC00](v32);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v16;
  *(&v83 - 1) = v31;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v84, v27);
  swift_endAccess();

  sub_1C11D9C14();
  sub_1C11D8A18();
  v84 = (*(v25 + 48))(v3, v25);
  v83 = v33;
  v34 = v28(v12, v3);
  MEMORY[0x1EEE9AC00](v34);
  *(&v83 - 2) = v99;
  v35 = v25;
  v36 = v98;
  *(&v83 - 2) = v16;
  *(&v83 - 1) = v36;
  swift_getKeyPath();
  sub_1C11D9E14();

  *&v108 = v1;
  MEMORY[0x1EEE9AC00](v37);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v16;
  *(&v83 - 1) = v36;
  v94 = v16;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v84, v83);
  swift_endAccess();

  sub_1C11D9C14();
  sub_1C11D8A18();
  v38 = *(v35 + 56);
  v91 = v3;
  v84 = v38(v3, v35);
  v40 = v39;
  v41 = v93;
  v42 = v93(v12, v3);
  MEMORY[0x1EEE9AC00](v42);
  *(&v83 - 2) = v99;
  v43 = v98;
  *(&v83 - 2) = v94;
  *(&v83 - 1) = v43;
  swift_getKeyPath();
  sub_1C11D9E14();

  *&v108 = v1;
  MEMORY[0x1EEE9AC00](v44);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v94;
  *(&v83 - 1) = v43;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v84, v40);
  swift_endAccess();

  sub_1C11D9C14();
  sub_1C11D8A18();
  v45 = v85;
  v46 = v91;
  (*(v92 + 64))(v91);
  v47 = v41(v12, v46);
  MEMORY[0x1EEE9AC00](v47);
  *(&v83 - 2) = v99;
  v48 = v98;
  *(&v83 - 2) = v94;
  *(&v83 - 1) = v48;
  swift_getKeyPath();
  sub_1C11D9E14();

  *&v108 = v1;
  MEMORY[0x1EEE9AC00](v49);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v94;
  *(&v83 - 1) = v48;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6240();
  v50 = v45;
  v51 = v92;
  v52 = v94;
  v53 = v91;
  sub_1C0FD1A5C(v50, &qword_1EBE929A0);
  swift_endAccess();
  sub_1C11D9C14();
  sub_1C11D8A18();
  v54 = v86;
  (*(v51 + 72))(v53, v51);
  v55 = v41(v12, v53);
  MEMORY[0x1EEE9AC00](v55);
  *(&v83 - 2) = v99;
  v56 = v98;
  *(&v83 - 2) = v52;
  *(&v83 - 1) = v56;
  swift_getKeyPath();
  sub_1C11D9E14();

  *&v108 = v1;
  MEMORY[0x1EEE9AC00](v57);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v52;
  *(&v83 - 1) = v56;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  v58 = v91;
  v85 = *(swift_getAssociatedConformanceWitness() + 8);
  v107 = v85;
  v59 = v88;
  v60 = swift_getWitnessTable();
  PhotosIdentical.setIfNotIdentical(_:)(v54, v59, v60);
  (*(v87 + 8))(v54, v59);
  swift_endAccess();
  sub_1C11D9C14();
  sub_1C11D8A18();
  v61 = (*(v51 + 80))(v58, v51);
  v88 = v12;
  v62 = v93(v12, v58);
  v111 = v61;
  MEMORY[0x1EEE9AC00](v62);
  *(&v83 - 2) = v99;
  v63 = v94;
  v64 = v98;
  *(&v83 - 2) = v94;
  *(&v83 - 1) = v64;
  swift_getKeyPath();
  sub_1C11D9E14();

  *&v108 = v1;
  MEMORY[0x1EEE9AC00](v65);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v63;
  *(&v83 - 1) = v64;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  v66 = sub_1C12661A0();
  v106 = v85;
  v67 = swift_getWitnessTable();
  PhotosIdentical.setIfNotIdentical(_:)(&v111, v66, v67);
  swift_endAccess();

  sub_1C11D9C14();
  v68 = v89;
  sub_1C11D8A18();
  v69 = (*(*(v51 + 8) + 8))(v58) & 1;
  v70 = v58;
  v71 = v93(v68, v58);
  MEMORY[0x1EEE9AC00](v71);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v63;
  *(&v83 - 1) = v64;
  swift_getKeyPath();
  sub_1C11D9E14();

  *&v108 = v1;
  MEMORY[0x1EEE9AC00](v72);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v63;
  *(&v83 - 1) = v64;
  swift_getKeyPath();
  sub_1C1261F50();

  v73 = *(*v1 + 184);
  if (v69 != *(v1 + v73))
  {
    *(v1 + v73) = v69;
  }

  sub_1C11D9C14();
  v74 = v88;
  sub_1C11D8A18();
  v75 = (*(v92 + 88))(v58);
  v77 = v76;
  v78 = v93(v74, v70);
  MEMORY[0x1EEE9AC00](v78);
  *&v79 = v63;
  v80 = v98;
  *(&v79 + 1) = v98;
  *(&v83 - 1) = v79;
  *(&v83 - 2) = v99;
  swift_getKeyPath();
  sub_1C11D9E14();

  *&v108 = v1;
  MEMORY[0x1EEE9AC00](v81);
  *(&v83 - 2) = v99;
  *(&v83 - 2) = v63;
  *(&v83 - 1) = v80;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v75, v77);
  swift_endAccess();

  return sub_1C11D9C14();
}

uint64_t sub_1C11D873C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C11D87C4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_20();
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  sub_1C11D76A4();
  return (*(v7 + 8))(a1, v6);
}

uint64_t (*sub_1C11D8894(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return sub_1C11D8900;
}

uint64_t sub_1C11D8900(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C11D76A4();
  }

  return result;
}

uint64_t sub_1C11D8958(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C11D6B68(v3);
}

uint64_t sub_1C11D8A38(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C11D87C4(v3);
}

void (*sub_1C11D8B04(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  swift_getKeyPath();
  sub_1C11D9E14();

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableCollection();
  OUTLINED_FUNCTION_0_76();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C11D8894(v3);
  return sub_1C11D8C74;
}

void sub_1C11D8C74(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C11D9C14();

  free(v1);
}

uint64_t PhotosObservableCollection.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t sub_1C11D8D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D8DF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D8E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D8E54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D8E74()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C11D8EB4()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6();
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C11D8EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D8F84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D8F3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C11D8FF4()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C11D9034()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6();
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C11D9078@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D90BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D912C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 160);
  OUTLINED_FUNCTION_7_4();
  return sub_1C109CF2C(v1 + v4, a1);
}

uint64_t sub_1C11D9180(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 160);
  OUTLINED_FUNCTION_29_1();
  sub_1C109CD00(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t sub_1C11D9200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C109CF2C(a1, &v6 - v3);
  return sub_1C11D6EF0(v4);
}

uint64_t sub_1C11D92B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1C109CF2C(a2, &v7 - v4);
  return sub_1C11D9180(v5);
}

uint64_t sub_1C11D9350@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 168);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1C11D9408(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 168);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void sub_1C11D94EC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_1C1266790();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v6 - v4, a1, v3);
  sub_1C11D7110();
}

uint64_t sub_1C11D95FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C11D9E14();

  return a2(v3);
}

uint64_t sub_1C11D967C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1C1266790();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2, v4);
  return sub_1C11D9408(v6);
}

uint64_t sub_1C11D9794()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_7_4();
}

uint64_t sub_1C11D97D8(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 176);
  swift_beginAccess();
  *(v1 + v4) = a1;
}

uint64_t sub_1C11D9838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D9890();
  *a1 = result;
  return result;
}

uint64_t sub_1C11D9890()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C11D9E14();

  return sub_1C11D9794();
}

uint64_t sub_1C11D998C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C11D99E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C11D99E4()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C11D9E14();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 184));
}

uint64_t sub_1C11D9A64()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C11D9AA4()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6();
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C11D9AE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11D9B2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11D9B4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C11D9E14();

  return a2(v3);
}

uint64_t sub_1C11D9C14()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  swift_getKeyPath();
  type metadata accessor for PhotosObservableCollection();
  OUTLINED_FUNCTION_0_76();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C11D9D0C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 80);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_7();
  sub_1C11D8A18();
  (*(*(*(v6 + 88) + 16) + 16))(a1, a2, v7);
  return (*(v9 + 8))(v3, v7);
}

uint64_t sub_1C11D9E14()
{
  OUTLINED_FUNCTION_0_76();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C11D9EB0()
{
  OUTLINED_FUNCTION_0_76();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableCollection.deinit()
{
  OUTLINED_FUNCTION_2_16();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 112), *(v1 + 80));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  sub_1C0FD1A5C(v0 + *(v6 + 160), &qword_1EBE929A0);
  OUTLINED_FUNCTION_10_2();
  v8 = *(v7 + 168);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_3();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v9 + 8))(v0 + v8);
  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  v11 = *(v10 + 200);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v12 + 8))(v0 + v11);
  return v0;
}

void (*sub_1C11DA1F8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C11D8B04(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C11DA3B4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t _s17PhotosSwiftUICore0A14ObservableTripCyACyxGxcfc_0(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 752);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_5();
  (*(v7 + 16))(v2, a1, v5);
  PhotosObservableCollection.init(_:)();
  (*(v7 + 8))(a1, v5);
  return v1;
}

uint64_t _s17PhotosSwiftUICore0A14ObservableTripCfD_0()
{
  PhotosObservableCollection.deinit();
  OUTLINED_FUNCTION_16_4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1C11DA570(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11DA5AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11DA5E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C11DA978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double Triangle.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CGRectGetMidX(*&a2);
  v10.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetHeight(v10);
  v11.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetWidth(v11);
  v12.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetHeight(v12);
  v13.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetMidX(v13);
  v14.origin.x = OUTLINED_FUNCTION_0_77();
  CGRectGetHeight(v14);
  sub_1C12647A0();
  sub_1C1264780();
  sub_1C1264790();
  sub_1C1264790();
  sub_1C1264790();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_1C11DAB60()
{
  result = qword_1EBE96F08;
  if (!qword_1EBE96F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F08);
  }

  return result;
}

unint64_t sub_1C11DABB8()
{
  result = qword_1EBE96F10;
  if (!qword_1EBE96F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F10);
  }

  return result;
}

double sub_1C11DAC0C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  Triangle.path(in:)(v5, a2);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_1C11DAC60(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

unint64_t sub_1C11DACD8()
{
  result = qword_1EBE96F18;
  if (!qword_1EBE96F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F18);
  }

  return result;
}

uint64_t sub_1C11DAD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11DAE60();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C11DADA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11DAE60();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C11DAE04(uint64_t a1)
{
  v2 = sub_1C11DAE60();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1C11DAE60()
{
  result = qword_1EBE96F28;
  if (!qword_1EBE96F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96F28);
  }

  return result;
}

uint64_t PhotosMaterialTitleCellSpecs.font.getter()
{
  v1 = sub_1C1264680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    if (*v0 == 1)
    {
      sub_1C1264510();
    }

    else
    {
      sub_1C12646E0();
    }

    sub_1C1264600();
  }

  else
  {
    sub_1C1264510();
    sub_1C1264620();
  }

  sub_1C1264670();

  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  v5 = sub_1C12646C0();

  (*(v2 + 8))(v4, v1);
  return v5;
}