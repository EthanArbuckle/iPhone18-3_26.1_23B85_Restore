uint64_t sub_1E3F21D54()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  *(v0 + 32) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F21DDC, v2, v1);
}

uint64_t sub_1E3F21DDC()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 24);

  sub_1E3F21E44(v1, 1);
  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3F21E44(uint64_t a1, char a2)
{

  result = sub_1E3F21334(v3);
  if (a2)
  {
    type metadata accessor for ContextMenuPreviewInteractor(0);
    OUTLINED_FUNCTION_0_291();
    sub_1E3F21EF0(v5, v6);
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

uint64_t sub_1E3F21ED4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_cardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel) = 0;
  return sub_1E3B500B4();
}

uint64_t sub_1E3F21EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3F21F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextMenuPreview(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F21F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextMenuPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F22000()
{
  v0 = type metadata accessor for ContextMenuPreview(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_40_63();
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v1, v2);
  OUTLINED_FUNCTION_85_1();
  sub_1E4200BC4();
  v3 = OUTLINED_FUNCTION_50();
  sub_1E3F214BC(v3);
}

uint64_t objectdestroyTm_51()
{
  v1 = type metadata accessor for ContextMenuPreview(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1E3264CE0();
  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3F22204(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContextMenuPreview(0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_40_63();
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v4, v5);
  OUTLINED_FUNCTION_32_77();
  sub_1E3F21334(0);
  sub_1E4200514();
  sub_1E4200594();

  v6 = OUTLINED_FUNCTION_32_77();
  sub_1E3F21284();
  OUTLINED_FUNCTION_38();

  if (v6)
  {
    sub_1E3E09A08(a2);
  }

  return result;
}

void sub_1E3F22374()
{
  sub_1E3F22428();
  if (v0 <= 0x3F)
  {
    sub_1E38D5D68();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuController(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ViewModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3F22428()
{
  if (!qword_1EE289E20)
  {
    type metadata accessor for ContextMenuPreviewInteractor(255);
    sub_1E3F21EF0(qword_1EE24BC90, type metadata accessor for ContextMenuPreviewInteractor);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E20);
    }
  }
}

uint64_t sub_1E3F224BC()
{
}

uint64_t sub_1E3F22504()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F225E0()
{
  OUTLINED_FUNCTION_24();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E37E1058;

  return sub_1E3F21D34(v4, v5, v6, v2, v3);
}

unint64_t sub_1E3F2269C()
{
  result = qword_1ECF3C7E0;
  if (!qword_1ECF3C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C7D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C7C0);
    sub_1E3F22790();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2887D0, &qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C7E0);
  }

  return result;
}

unint64_t sub_1E3F22790()
{
  result = qword_1ECF3C7E8;
  if (!qword_1ECF3C7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C7C0);
    sub_1E3F22848();
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C7E8);
  }

  return result;
}

unint64_t sub_1E3F22848()
{
  result = qword_1ECF3C7F0;
  if (!qword_1ECF3C7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C7B8);
    sub_1E32752B0(&qword_1ECF3C7F8, &qword_1ECF3C7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C7F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_77()
{

  return sub_1E4200BC4();
}

uint64_t sub_1E3F229D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C840);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v8 + 16))(&v18 - v13, a1, v6, v12);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v14, v6);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  *a3 = sub_1E3F23254;
  a3[1] = v16;
}

uint64_t sub_1E3F22B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4201414();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v7 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v11);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C840);
  v15 = sub_1E32752B0(&qword_1EE288990, &qword_1ECF3C840);
  sub_1E3783540(sub_1E3F2330C, v13, v14, v15);
}

uint64_t sub_1E3F22CC0(_WORD *a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*a1 + 1472))(v8);
  if ((v12 & 1) == 0)
  {
    v13 = result;
    v14 = sub_1E40B977C(result);
    v15 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v15, v4);

    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v27 = a2;
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v18 = 136315650;
      v28 = a1[49];
      sub_1E37D144C();
      v19 = sub_1E4207944();
      v21 = sub_1E3270FC8(v19, v20, &v29);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v13;
      *(v18 + 22) = 2080;
      if (v14 && (v22 = *(v14 + 24)) != 0)
      {
        v23 = *(v14 + 16);
      }

      else
      {

        v22 = 0xE300000000000000;
        v23 = 7104878;
      }

      v24 = sub_1E3270FC8(v23, v22, &v29);

      *(v18 + 24) = v24;
      _os_log_impl(&dword_1E323F000, v16, v17, "ItemHighlight:: collection %s, scroll to index %ld,id: %s", v18, 0x20u);
      v25 = v26;
      swift_arrayDestroy();
      MEMORY[0x1E69143B0](v25, -1, -1);
      MEMORY[0x1E69143B0](v18, -1, -1);

      (*(v6 + 8))(v10, v4);
      a2 = v27;
    }

    else
    {

      (*(v6 + 8))(v10, v4);
    }

    sub_1E3F22FB8(v14, a2);
  }

  return result;
}

void sub_1E3F22FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4201414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v12;
  if (a1)
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      v16 = *(a1 + 16);
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = *(v6 + 16);
        v18(v22 - v12, a2, v4, v13);
        (v18)(v10, v14, v4);
        v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
        v20 = swift_allocObject();
        (*(v6 + 32))(v20 + v19, v14, v4);
        v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v21 = v16;
        v21[1] = v15;
        v22[0] = v16;
        v22[1] = v15;

        sub_1E4203F74();
        sub_1E4201404();

        (*(v6 + 8))(v10, v4);
      }
    }
  }
}

unint64_t sub_1E3F231D4()
{
  result = qword_1EE29BE00[0];
  if (!qword_1EE29BE00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29BE00);
  }

  return result;
}

uint64_t sub_1E3F23254(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C840) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E3F22B20(a1, v1 + v4, v5);
}

uint64_t sub_1E3F2330C()
{
  v1 = *(sub_1E4201414() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E3F22CC0(v2, v3);
}

void sub_1E3F23370()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C850);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v14 = *(v6 + 98);
  if (v14 > 0x1E)
  {
    goto LABEL_13;
  }

  if (((1 << v14) & 0x47FFFDF8) != 0)
  {
LABEL_3:

    v15 = v4;
    if (!v4)
    {

      v19 = sub_1E3C27528();

      if (v19)
      {
        type metadata accessor for TextLayout();
        v15 = swift_dynamicCastClass();
        if (!v15)
        {
        }
      }

      else
      {
        v15 = 0;
      }
    }

    v16 = sub_1E3FAC85C(v15);
    LOBYTE(v33[0]) = v17 & 1;
    v34[0] = v6;
    v34[1] = v4;
    LOBYTE(v35) = v2;
    WORD4(v35) = v16;
    BYTE10(v35) = BYTE2(v16);
    v36 = v18;
    v37 = v17 & 1;
    v28 = v6;
    v29 = v4;
    v30 = v35;
    v31 = v18;
    v32 = v17 & 1;
    sub_1E3F23934(v34, v33);
    sub_1E3F2388C();
    sub_1E3F238E0();
    sub_1E4201F44();
    OUTLINED_FUNCTION_11_160();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C858);
    sub_1E3F23800();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_17_130();
    sub_1E3F2396C(v34);
    goto LABEL_5;
  }

  if (v14 != 9)
  {
LABEL_13:
    if (v14 - 236 >= 3)
    {
      v33[0] = 0;
      v33[1] = 0xE000000000000000;
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000037, 0x80000001E4289170);
      LOWORD(v28) = v14;
      sub_1E37D144C();
      v24 = sub_1E4207944();
      MEMORY[0x1E69109E0](v24);

      nullsub_1(v25, v26);

      (*(v9 + 16))(v0, v12, v7);
      OUTLINED_FUNCTION_75();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C858);
      sub_1E3F23800();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_17_130();
      (*(v9 + 8))(v12, v7);
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v20 = v4;
  if (!v4)
  {

    v27 = sub_1E3C27528();

    if (v27)
    {
      type metadata accessor for TextLayout();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
      }
    }

    else
    {
      v20 = 0;
    }
  }

  v21 = sub_1E3FAC85C(v20);
  v34[0] = v4;
  v28 = v6;
  v29 = v4;
  *&v30 = v21 & 0xFFFFFF;
  *(&v30 + 1) = v23;
  v31 = v22 & 1;
  v32 = 256;

  sub_1E37E93E8(v34, v33, &qword_1ECF2B848);
  sub_1E3F2388C();
  sub_1E3F238E0();
  sub_1E4201F44();
  OUTLINED_FUNCTION_11_160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C858);
  sub_1E3F23800();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_75();
  sub_1E4201F44();

  sub_1E325F6F0(v34, &qword_1ECF2B848);
LABEL_5:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F23800()
{
  result = qword_1EE289100;
  if (!qword_1EE289100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C858);
    sub_1E3F2388C();
    sub_1E3F238E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289100);
  }

  return result;
}

unint64_t sub_1E3F2388C()
{
  result = qword_1EE2A26F0[0];
  if (!qword_1EE2A26F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A26F0);
  }

  return result;
}

unint64_t sub_1E3F238E0()
{
  result = qword_1EE29F3C8[0];
  if (!qword_1EE29F3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29F3C8);
  }

  return result;
}

unint64_t sub_1E3F239A8()
{
  result = qword_1EE288CB8;
  if (!qword_1EE288CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C860);
    sub_1E3F23800();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CB8);
  }

  return result;
}

void *sub_1E3F23A4C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 33) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3F23A94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 41))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3F23AD0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 41) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

double sub_1E3F23B38@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  LOBYTE(v59) = 1;
  v5 = *(*v4 + 776);
  swift_retain_n();
  v5(v64, &v59, &unk_1F5D5DC78, &off_1F5D5C9F8);
  LOBYTE(v59) = 0;
  v5(v63, &v59, &unk_1F5D5DD08, &off_1F5D5CA18);
  v6 = v1[1];
  if (v6)
  {
    v7 = v1[1];
  }

  else
  {
    v7 = sub_1E3C27528();
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = *(*v7 + 648);
  v9 = swift_retain_n();
  v10 = v8(v9);
  v2 = v10;

  if (v10 == 5 || (LOBYTE(v59) = v10, LOBYTE(v51) = 3, sub_1E3F25004(), (sub_1E4205E84() & 1) == 0))
  {
    v11 = (*(*v7 + 648))();
    if (v11 != 5)
    {
      LOBYTE(v59) = v11;
      LOBYTE(v51) = 4;
      sub_1E3F25004();
      sub_1E4205E84();
    }
  }

LABEL_9:
  sub_1E37E93E8(v64, &v59, &unk_1ECF296E0);
  if (*(&v60 + 1))
  {
    if (swift_dynamicCast())
    {

      goto LABEL_15;
    }
  }

  else
  {
    sub_1E325F6F0(&v59, &unk_1ECF296E0);
  }

  sub_1E37E93E8(v63, &v55, &unk_1ECF296E0);
  if (v58)
  {
    v12 = swift_dynamicCast();

    if (v12)
    {
LABEL_15:
      v13 = v6;
      if (!v6)
      {

        v45 = sub_1E3C27528();

        if (v45)
        {
          type metadata accessor for TextLayout();
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
          }
        }

        else
        {
          v13 = 0;
        }
      }

      v14 = swift_retain_n();
      sub_1E3FAC85C(v14);
      OUTLINED_FUNCTION_21_101();
      if (v13)
      {
        OUTLINED_FUNCTION_30_1();
        v16 = *(v15 + 648);

        v18 = v16(v17);

        if (v18 != 5)
        {
          LOBYTE(v51) = v18;
          v65[0] = 3;
          sub_1E3F25004();
          if (OUTLINED_FUNCTION_14_154())
          {

LABEL_40:
            OUTLINED_FUNCTION_6_192(v19, v20, v21, v22, v23, v24, v25, v26, a1, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59);
            LOBYTE(v55) = 0;
            HIBYTE(v62) = 0;
            sub_1E3F24F9C(v65, &v51);
            sub_1E3F24EC4();
            sub_1E3F24F18();
            sub_1E4201F44();

            sub_1E3F24FD4(v65);
            goto LABEL_42;
          }
        }

        OUTLINED_FUNCTION_30_1();
        v42 = (*(v41 + 648))();
        if (v42 != 5)
        {
          LOBYTE(v51) = v42;
          v65[0] = 4;
          sub_1E3F25004();
          OUTLINED_FUNCTION_14_154();

          goto LABEL_40;
        }
      }

      goto LABEL_40;
    }
  }

  else
  {

    sub_1E325F6F0(&v55, &unk_1ECF296E0);
  }

  v27 = v6;
  if (!v6)
  {

    v46 = sub_1E3C27528();

    if (v46)
    {
      type metadata accessor for TextLayout();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
      }
    }

    else
    {
      v27 = 0;
    }
  }

  v28 = swift_retain_n();
  sub_1E3FAC85C(v28);
  OUTLINED_FUNCTION_21_101();
  if (v27)
  {
    v50 = v2;
    OUTLINED_FUNCTION_30_1();
    v30 = *(v29 + 648);

    v32 = v30(v31);

    if (v32 == 5 || (LOBYTE(v51) = v32, v65[0] = 3, sub_1E3F25004(), (OUTLINED_FUNCTION_14_154() & 1) == 0))
    {
      OUTLINED_FUNCTION_30_1();
      v44 = (*(v43 + 648))();
      if (v44 != 5)
      {
        LOBYTE(v51) = v44;
        v65[0] = 4;
        sub_1E3F25004();
        OUTLINED_FUNCTION_14_154();
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_192(v33, v34, v35, v36, v37, v38, v39, v40, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59);
  HIBYTE(v54) = 1;
  HIBYTE(v62) = 1;
  sub_1E3F24E8C(v65, &v51);
  sub_1E3F24EC4();
  sub_1E3F24F18();
  sub_1E4201F44();

  sub_1E3F24F6C(v65);
LABEL_42:
  sub_1E325F6F0(v63, &unk_1ECF296E0);
  sub_1E325F6F0(v64, &unk_1ECF296E0);
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v47 = v54;
  v62 = v54;
  v48 = v52;
  *a1 = v51;
  *(a1 + 16) = v48;
  result = *&v61;
  *(a1 + 32) = v61;
  *(a1 + 48) = v47;
  return result;
}

void sub_1E3F24284()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8A8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7 - 16];
  v9 = *v0;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  sub_1E3FAC790(v12, v10, v11, &v19);
  if (*(v0 + 8))
  {
    v13 = sub_1E3F244B4(v10);
    v17 = v19;
    *v18 = *v20;
    *&v18[9] = *&v20[9];
    v14 = sub_1E3BD9530();
    sub_1E402D78C(v9, v13, &type metadata for TextView, v14);

    (*(v5 + 16))(v1, v8, v3);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    *&v17 = &type metadata for TextView;
    *(&v17 + 1) = v14;
    OUTLINED_FUNCTION_0_292();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_22_89();
    sub_1E4201F44();
    sub_1E38E12E4(&v19);
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    v15 = *v20;
    *v1 = v19;
    v1[1] = v15;
    *(v1 + 25) = *&v20[9];
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    v16 = sub_1E3BD9530();
    *&v17 = &type metadata for TextView;
    *(&v17 + 1) = v16;
    OUTLINED_FUNCTION_0_292();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_22_89();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F244B4(uint64_t a1)
{
  type metadata accessor for TextLayout();
  v2 = sub_1E383BCC0();
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = sub_1E383BCC0();
  }

  v4 = *(*v2 + 1648);

  v4(v3);

  (*(*v2 + 2056))(0, 1);
  (*(*v2 + 2104))(0, 1);
  (*(*v2 + 2080))(0, 1);
  return v2;
}

void sub_1E3F24618()
{
  OUTLINED_FUNCTION_31_1();
  v28[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C890);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C898);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = type metadata accessor for RentalExpirationText(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v0;
  v17 = *(v0 + 16);

  sub_1E395B454(v18, v17, v15);
  if (*(v0 + 8))
  {
    v19 = sub_1E3F244B4(v17);
    OUTLINED_FUNCTION_2_220();
    v22 = sub_1E3F252FC(v20, v21);
    v28[0] = v3;
    v23 = v22;
    sub_1E402D78C(v16, v19, v11, v22);

    (*(v7 + 16))(v1, v10, v5);
    swift_storeEnumTagMultiPayload();
    v29 = v11;
    v30 = v23;
    OUTLINED_FUNCTION_0_292();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_18_120();
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    sub_1E395CFE0(v15, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_220();
    v26 = sub_1E3F252FC(v24, v25);
    v29 = v11;
    v30 = v26;
    OUTLINED_FUNCTION_0_292();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_18_120();
  }

  OUTLINED_FUNCTION_2_220();
  sub_1E3F25344(v15, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F24894()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v57 = v2;
  v55 = type metadata accessor for FocusableText();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C868);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v52 = sub_1E42023A4();
  OUTLINED_FUNCTION_0_10();
  v49 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C878);
  OUTLINED_FUNCTION_0_10();
  v51 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v48 - v22;
  v23 = *v0;
  v24 = *(**v0 + 648);
  v25 = swift_retain_n();
  v26 = v24(v25);
  if (!v26 || (v27 = v26, swift_beginAccess(), v28 = *(v27 + 56), , , !v28))
  {

    goto LABEL_6;
  }

  v29 = *(v28 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);

  LOBYTE(v60) = v29;
  LOBYTE(v58) = 9;
  sub_1E3905190();
  v30 = sub_1E4205E84();

  if ((v30 & 1) == 0)
  {
LABEL_6:
    v40 = v1[1];

    v41 = sub_1E3BF493C();
    sub_1E3BF4978(v23, v40, v41, v43, v42 & 1, v6);
    v44 = sub_1E3F252FC(qword_1EE2844B8, type metadata accessor for FocusableText);
    v45 = v55;
    sub_1E40443A0();
    sub_1E3F25344(v6, type metadata accessor for FocusableText);
    v46 = v56;
    (*(v8 + 16))(v14, v11, v56);
    swift_storeEnumTagMultiPayload();
    v47 = sub_1E3BD9530();
    *&v60 = &type metadata for TextView;
    *(&v60 + 1) = v52;
    *v61 = v47;
    *&v61[8] = MEMORY[0x1E69803B8];
    OUTLINED_FUNCTION_8_172();
    swift_getOpaqueTypeConformance2();
    *&v60 = v45;
    *(&v60 + 1) = v44;
    *v61 = &off_1F5D77648;
    OUTLINED_FUNCTION_8_168();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v8 + 8))(v11, v46);
    goto LABEL_7;
  }

  v31 = v1[1];

  v32 = OUTLINED_FUNCTION_18();
  sub_1E3FAC790(v23, v31, v32, &v58);
  sub_1E4202394();
  v33 = sub_1E3BD9530();
  v34 = MEMORY[0x1E69803B8];
  v35 = v50;
  v36 = v52;
  sub_1E4202EF4();
  (*(v49 + 8))(v19, v36);
  v60 = v58;
  *v61 = *v59;
  *&v61[9] = *&v59[9];
  sub_1E38E12E4(&v60);
  v37 = v51;
  v38 = v54;
  (*(v51 + 16))(v14, v35, v54);
  swift_storeEnumTagMultiPayload();
  *&v58 = &type metadata for TextView;
  *(&v58 + 1) = v36;
  *v59 = v33;
  *&v59[8] = v34;
  OUTLINED_FUNCTION_8_172();
  swift_getOpaqueTypeConformance2();
  v39 = sub_1E3F252FC(qword_1EE2844B8, type metadata accessor for FocusableText);
  *&v58 = v55;
  *(&v58 + 1) = v39;
  *v59 = &off_1F5D77648;
  OUTLINED_FUNCTION_8_168();
  swift_getOpaqueTypeConformance2();
  sub_1E4201F44();
  (*(v37 + 8))(v35, v38);
LABEL_7:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F24EC4()
{
  result = qword_1EE2973D0[0];
  if (!qword_1EE2973D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2973D0);
  }

  return result;
}

unint64_t sub_1E3F24F18()
{
  result = qword_1EE2A1E98[0];
  if (!qword_1EE2A1E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A1E98);
  }

  return result;
}

unint64_t sub_1E3F25004()
{
  result = qword_1EE287250;
  if (!qword_1EE287250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287250);
  }

  return result;
}

uint64_t sub_1E3F2506C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 49))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3F250A8(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[5] = 0;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 49) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3F250FC()
{
  result = qword_1EE289020;
  if (!qword_1EE289020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C880);
    sub_1E3F24EC4();
    sub_1E3F24F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289020);
  }

  return result;
}

unint64_t sub_1E3F25188()
{
  result = qword_1EE288DF8;
  if (!qword_1EE288DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C888);
    sub_1E42023A4();
    sub_1E3BD9530();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for FocusableText();
    sub_1E3F252FC(qword_1EE2844B8, type metadata accessor for FocusableText);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DF8);
  }

  return result;
}

uint64_t sub_1E3F252FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3F25344(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3F2539C()
{
  result = qword_1EE288E40;
  if (!qword_1EE288E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8B0);
    type metadata accessor for RentalExpirationText(255);
    sub_1E3F252FC(qword_1EE26A840, type metadata accessor for RentalExpirationText);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E40);
  }

  return result;
}

unint64_t sub_1E3F2548C()
{
  result = qword_1EE288E38;
  if (!qword_1EE288E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8B8);
    sub_1E3BD9530();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E38);
  }

  return result;
}

uint64_t sub_1E3F25548@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_retain_n();
  do
  {
    while (1)
    {
      OUTLINED_FUNCTION_30_1();
      v8 = (*(v7 + 624))();

      if (!v8)
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        sub_1E325F6F0(&v14, &qword_1ECF2FFF0);
        v10 = 0;
        if (a2 == 2)
        {
LABEL_8:

          v10 = 0;
          a2 = 0;
          goto LABEL_14;
        }

LABEL_12:

        goto LABEL_13;
      }

      OUTLINED_FUNCTION_30_1();
      (*(v9 + 416))(&v14);
      if (*(&v15 + 1))
      {
        break;
      }

      sub_1E325F6F0(&v14, &qword_1ECF2FFF0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A250);
    type metadata accessor for PickerValueVariantResolver(0);
  }

  while ((swift_dynamicCast() & 1) == 0);
  v10 = v13;
  if (a2 != 2)
  {
    goto LABEL_12;
  }

  if (!v13)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_8();
  a2 = (*(v12 + 440))(a1);

LABEL_13:

LABEL_14:
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = v10;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_1E3F25764@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v57 = sub_1E42014E4();
  OUTLINED_FUNCTION_0_10();
  v56 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17_3(v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8C0);
  OUTLINED_FUNCTION_0_10();
  v49[0] = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v49 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8C8);
  OUTLINED_FUNCTION_0_10();
  v49[1] = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8D0);
  OUTLINED_FUNCTION_0_10();
  v52 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_3(v49 - v16);
  v17 = (*(**v1 + 392))();
  v72[0] = *(v1 + 8);
  v18 = *(v1 + 32);
  v71 = *(v1 + 24);
  v69 = v18;
  v70 = *(v1 + 40);
  OUTLINED_FUNCTION_44_8();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_16_134(v19);
  v58 = v1;
  v59 = v17;

  sub_1E3743538(v72, &v64, &qword_1ECF294E0);
  sub_1E3743538(&v71, &v64, &qword_1ECF3B8C8);
  sub_1E3743538(&v69, &v64, &qword_1ECF3B8D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8D8);
  sub_1E3F261DC();
  sub_1E4203964();
  if (v71)
  {
    OUTLINED_FUNCTION_8();
    *&v21 = COERCE_DOUBLE((*(v20 + 320))());
    v23 = v22;
  }

  else
  {
    *&v21 = 0.0;
    v23 = 0.0;
  }

  v64 = *&v21;
  v65 = v23;
  OUTLINED_FUNCTION_44_8();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_16_134(v24);

  sub_1E3743538(v72, &v60, &qword_1ECF294E0);
  sub_1E3743538(&v71, &v60, &qword_1ECF3B8C8);
  sub_1E3743538(&v69, &v60, &qword_1ECF3B8D0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  OUTLINED_FUNCTION_3_120();
  v28 = sub_1E32752B0(v26, v27);
  v29 = sub_1E3C0E09C();
  sub_1E4203524();

  OUTLINED_FUNCTION_15_5();
  v30(v9, v5);
  if (v17)
  {
    v31 = *(*v17 + 552);

    v31(&v64, v32);
    v33 = v64;
    v34 = v65;
    v35 = v66;
    v36 = v67;

    if ((v68 & 1) == 0)
    {
      sub_1E3952BE8(v33, v34, v35, v36);
    }
  }

  v60 = v5;
  v61 = v25;
  v62 = v28;
  v63 = v29;
  OUTLINED_FUNCTION_3_219();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v51;
  v39 = v50;
  sub_1E3E361E8();
  OUTLINED_FUNCTION_15_5();
  v40(v13, v39);
  v41 = v54;
  sub_1E42014D4();
  v60 = v39;
  v61 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_6_20();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_201();
  sub_1E3F275CC(v42, v43);
  v44 = v53;
  v45 = v57;
  sub_1E4202D94();

  OUTLINED_FUNCTION_15_5();
  v46(v41, v45);
  OUTLINED_FUNCTION_15_5();
  return v47(v38, v44);
}

uint64_t sub_1E3F25DE0()
{
  v1 = sub_1E3F27770(*(v0 + 48), *(v0 + 56));
  if (v1)
  {
    v2 = (*(*v1 + 232))(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 16);
  if (*(v0 + 40) && (OUTLINED_FUNCTION_8(), ((*(v4 + 432))(v3) & 1) != 0))
  {
    (*(*v3 + 808))(2, v2);
  }

  else
  {
    (*(*v3 + 800))(2, v2, 0, 0);
  }
}

uint64_t sub_1E3F25F20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C910);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-1] - v12;
  v14 = sub_1E3F2648C(v7);
  if (a1 && ((*(*a1 + 176))(v32, v14), (v33 & 1) == 0))
  {
    v17.n128_u64[0] = v32[2];
    v18.n128_u64[0] = v32[3];
    v16.n128_u64[0] = v32[1];
    v15.n128_u64[0] = v32[0];
    v19 = j_nullsub_1(v15, v16, v17, v18);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_5_8();
  }

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = sub_1E4202734();
  sub_1E3741EA0(v7, v2, &qword_1ECF3C910);
  v28 = v2 + *(v8 + 36);
  *v28 = v27;
  *(v28 + 8) = v23;
  *(v28 + 16) = v24;
  *(v28 + 24) = v25;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E3741EA0(v2, v13, &qword_1ECF3C900);
  memcpy(&v13[*(v10 + 36)], __src, 0x70uLL);
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C8D8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C938);
  sub_1E4201614();
  *v29 = 0;
  return sub_1E3741EA0(v13, a2, &qword_1ECF3C8F0);
}

unint64_t sub_1E3F261DC()
{
  result = qword_1ECF3C8E0;
  if (!qword_1ECF3C8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8D8);
    sub_1E3F26294();
    sub_1E32752B0(&qword_1EE288850, &qword_1ECF3C938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C8E0);
  }

  return result;
}

unint64_t sub_1E3F26294()
{
  result = qword_1ECF3C8E8;
  if (!qword_1ECF3C8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C8F0);
    sub_1E3F26320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C8E8);
  }

  return result;
}

unint64_t sub_1E3F26320()
{
  result = qword_1ECF3C8F8;
  if (!qword_1ECF3C8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C900);
    sub_1E3F263AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C8F8);
  }

  return result;
}

unint64_t sub_1E3F263AC()
{
  result = qword_1ECF3C908;
  if (!qword_1ECF3C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C910);
    sub_1E32752B0(&qword_1ECF3C918, &qword_1ECF3C920);
    sub_1E32752B0(&qword_1ECF3C928, &qword_1ECF3C930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C908);
  }

  return result;
}

uint64_t sub_1E3F2648C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v49[5] = a1;
  v49[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C930);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v6);
  v49[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C920);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - v13;
  v15 = sub_1E39DFFC8();
  v16 = *v1;
  v17 = (*(**v1 + 392))();
  v18 = v17;
  if (v15)
  {
    if (v17)
    {
      OUTLINED_FUNCTION_30_1();
      v20 = (*(v19 + 1152))();
      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }
    }

    else
    {
      v22 = 0;
    }

    *v11 = sub_1E4201B84();
    *(v11 + 8) = v22;
    *(v11 + 16) = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C988);
    sub_1E3F26B08(v4, v11 + *(v31 + 44));
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v32, v33, v34);
    sub_1E3743538(v14, v2, &qword_1ECF3C920);
    swift_storeEnumTagMultiPayload();
    sub_1E32752B0(&qword_1ECF3C918, &qword_1ECF3C920);
    sub_1E32752B0(&qword_1ECF3C928, &qword_1ECF3C930);
    OUTLINED_FUNCTION_20_112();
    sub_1E4201F44();

    v35 = OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v23 = (*(*v16 + 464))();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    if (v18)
    {
      OUTLINED_FUNCTION_30_1();
      v26 = *(v25 + 1152);

      v28 = v26(v27);
      v30 = v29;

      if (v30)
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    *v3 = sub_1E4201B84();
    *(v3 + 8) = v28;
    *(v3 + 16) = 0;
    v49[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C950) + 44);
    v51 = v24;
    swift_getKeyPath();
    v55 = *(v4 + 8);
    v37 = *(v4 + 32);
    v54 = *(v4 + 24);
    v52 = v37;
    v53 = *(v4 + 40);
    OUTLINED_FUNCTION_44_8();
    v38 = swift_allocObject();
    v39 = *(v4 + 16);
    v38[1] = *v4;
    v38[2] = v39;
    *(v38 + 41) = *(v4 + 25);

    sub_1E3743538(&v55, v50, &qword_1ECF294E0);
    sub_1E3743538(&v54, v50, &qword_1ECF3B8C8);
    sub_1E3743538(&v52, v50, &qword_1ECF3B8D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C958);
    sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790);
    sub_1E3F275CC(qword_1EE23BA70, type metadata accessor for ViewModel);
    sub_1E3F27614();
    sub_1E4203B34();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v40, v41, v42);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v43, v44, v45);
    swift_storeEnumTagMultiPayload();
    sub_1E32752B0(&qword_1ECF3C918, &qword_1ECF3C920);
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v46, v47);
    OUTLINED_FUNCTION_20_112();
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
  }

  return sub_1E325F6F0(v35, v36);
}

uint64_t sub_1E3F26A54()
{
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 440))();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return sub_1E4203904();
}

uint64_t sub_1E3F26B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v51 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_3(v50 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_4_6();
  v56 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_3(v50 - v11);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v52 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C990);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C998);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v50 - v23;
  if (!sub_1E39C408C(39))
  {
    goto LABEL_8;
  }

  type metadata accessor for ImageViewModel();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

LABEL_8:
    v29 = 1;
    goto LABEL_9;
  }

  v26 = v25;
  sub_1E3EB9BB4(v60);
  v27 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v26, v60, 0, v27 & 1, 0, 0, v15);
  sub_1E375C31C(v60);
  v59 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();

  if (v58)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  (*(v52 + 32))(v2, v15, v53);
  *(v2 + *(v16 + 36)) = v28;
  sub_1E3741EA0(v2, v20, &qword_1ECF3C990);
  sub_1E3741EA0(v20, v24, &qword_1ECF3C990);
  v29 = 0;
LABEL_9:
  v30 = v54;
  v31 = 1;
  __swift_storeEnumTagSinglePayload(v24, v29, 1, v16);
  v32 = sub_1E39C408C(23);
  if (!v32)
  {
LABEL_13:
    v34 = v55;
    goto LABEL_14;
  }

  if (*v32 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_18();
  v33 = v50[1];
  sub_1E3F23370();

  v34 = v55;
  (*(v51 + 32))(v30, v33, v55);
  v31 = 0;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v30, v31, 1, v34);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v35, v36, v37);
  v38 = v56;
  sub_1E3743538(v30, v56, &qword_1ECF29210);
  v39 = v57;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v40, v41, v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9A0);
  sub_1E3743538(v38, v39 + *(v43 + 48), &qword_1ECF29210);
  v44 = v39 + *(v43 + 64);
  *v44 = 0;
  *(v44 + 8) = 0;
  sub_1E325F6F0(v30, &qword_1ECF29210);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v45, v46);
  sub_1E325F6F0(v38, &qword_1ECF29210);
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F6F0(v47, v48);
}

uint64_t sub_1E3F27060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44[0] = a2;
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C980);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v7);
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v44[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C970);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v44 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v44 - v23;
  v25 = *a1;
  if (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_14_155(0);
    sub_1E382A9B4(v25, v26, 0, v24);
    v27 = *(v14 + 16);
    v27(v21, v24, v12);
    v27(v11, v21, v12);
    v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9B0) + 48)];
    *v28 = 0;
    v28[8] = 0;
    v29 = *(v14 + 8);
    v29(v21, v12);
    sub_1E3743538(v11, v3, &qword_1ECF3C970);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v30, &qword_1ECF3C970);
    sub_1E3F276CC();
    sub_1E4201F44();
    sub_1E325F6F0(v11, &qword_1ECF3C970);
    return (v29)(v24, v12);
  }

  else
  {
    OUTLINED_FUNCTION_14_155(0);
    sub_1E382A9B4(v25, v32, 0, v18);
    v48 = *(v44[0] + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    sub_1E42038F4();
    if (v47)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.0;
    }

    (*(v14 + 32))(v4, v18, v12);
    *(v4 + *(v45 + 36)) = v33;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v34, v35, v36);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v37, v38, v39);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v40, v41);
    sub_1E3F276CC();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F6F0(v42, v43);
  }
}

uint64_t sub_1E3F274D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1E3F27518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_52()
{

  j__swift_release();
  OUTLINED_FUNCTION_44_8();

  return swift_deallocObject();
}

uint64_t sub_1E3F275CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3F27614()
{
  result = qword_1ECF3C960;
  if (!qword_1ECF3C960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C958);
    sub_1E32752B0(&qword_1ECF3C968, &qword_1ECF3C970);
    sub_1E3F276CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C960);
  }

  return result;
}

unint64_t sub_1E3F276CC()
{
  result = qword_1ECF3C978;
  if (!qword_1ECF3C978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C980);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C978);
  }

  return result;
}

uint64_t sub_1E3F27770(uint64_t a1, char a2)
{
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_1E4206804();
    v9 = sub_1E42026D4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E3270FC8(0xD00000000000001DLL, 0x80000001E42891B0, &v14);
      _os_log_impl(&dword_1E323F000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E69143B0](v11, -1, -1);
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_1E3F2793C(uint64_t a1)
{
  type metadata accessor for VUIViewsThatFitHorizontal.Coordinator();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  return a1;
}

uint64_t sub_1E3F279C4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  LODWORD(v133) = a8;
  v135 = *&a7;
  v136 = a4;
  v128 = a3;
  v118 = a2;
  v132 = a1;
  v113[0] = a9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9B8);
  OUTLINED_FUNCTION_0_10();
  v117 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v126 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v113 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9C8);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v113 - v20;
  v137 = sub_1E4202244();
  OUTLINED_FUNCTION_0_10();
  v116 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  v115 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9D0);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (v113 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9D8);
  OUTLINED_FUNCTION_17_2(v34);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v130 = v36;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9E0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  v134 = v38;
  v39 = sub_1E4202334();
  OUTLINED_FUNCTION_0_10();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4_6();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v113 - v47;
  sub_1E4202344();
  v49 = *(v41 + 16);
  v50 = v130;
  v113[1] = v48;
  v49(v130, v48, v39);
  v113[2] = v41;
  (*(v41 + 32))(v45, v50, v39);
  OUTLINED_FUNCTION_4_221();
  sub_1E3F282E0(v51, v52);
  v53 = v134;
  v113[3] = v39;
  sub_1E4206194();
  v114 = *(v131 + 44);
  *(v53 + v114) = 0;
  v131 = sub_1E4202324();
  OUTLINED_FUNCTION_3_220();
  v56 = sub_1E3F282E0(v54, v55);
  v129 = 0;
  v130 = v56;
  v118 &= v133;
  v57 = (v133 & 1) == 0;
  v133 = (v116 + 32);
  ++v117;
  v116 += 8;
  v58 = v135;
  if (!v57)
  {
    v58 = *&v132;
  }

  v59 = v58;
  v60 = -1;
  v61 = 1.79769313e308;
  v136 &= 1u;
  v62 = 0.0;
  *&v63 = 1.79769313e308;
  v125 = v16;
  v124 = v13;
  v122 = v21;
  v120 = v30;
  v119 = v33;
  while (1)
  {
    v132 = v60;
    sub_1E4207174();
    if (__swift_getEnumTagSinglePayload(v21, 1, v137) == 1)
    {
      sub_1E325F6F0(v21, &qword_1ECF3C9C8);
      v64 = 1;
    }

    else
    {
      v65 = *v133;
      v66 = v115;
      v67 = v137;
      (*v133)(v115, v21, v137);
      v68 = *(v13 + 48);
      v69 = v129;
      *v16 = v129;
      result = (v65)(v16 + v68, v66, v67);
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        return result;
      }

      v129 = v69 + 1;
      *(v134 + v114) = v69 + 1;
      sub_1E379E528(v16, v30, &qword_1ECF3C9C0);
      v64 = 0;
    }

    __swift_storeEnumTagSinglePayload(v30, v64, 1, v13);
    sub_1E379E528(v30, v33, &qword_1ECF3C9D0);
    if (__swift_getEnumTagSinglePayload(v33, 1, v13) == 1)
    {
      break;
    }

    v135 = *v33;
    v71 = v33 + *(v13 + 48);
    v72 = v121;
    v73 = v137;
    (*v133)(v121, v71, v137);
    v74 = v123;
    OUTLINED_FUNCTION_21_18();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    v141 = 0;
    v140 = v136;
    v79 = OUTLINED_FUNCTION_15_142();
    v80 = v128;
    OUTLINED_FUNCTION_16_135(v79, v81, v128, v82, 0);
    sub_1E325F6F0(v74, &qword_1ECF3C9C8);
    v83 = COERCE_DOUBLE(sub_1E4202214());
    v85 = v84;
    v86 = *v117;
    v87 = v127;
    (*v117)(v30, v127);
    v88 = 0.0;
    if (v85)
    {
      v89 = 0.0;
    }

    else
    {
      v89 = v83;
    }

    OUTLINED_FUNCTION_21_18();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    v139 = 0;
    v138 = v136;
    v94 = OUTLINED_FUNCTION_15_142();
    OUTLINED_FUNCTION_16_135(v94, v95, v80, v96, 1);
    sub_1E325F6F0(v74, &qword_1ECF3C9C8);
    v97 = COERCE_DOUBLE(sub_1E4202214());
    v99 = v98;
    v86(v30, v87);
    OUTLINED_FUNCTION_36_5();
    v100 = v73;
    v101 = *&v135;
    v102(v72, v100);
    if ((v99 & 1) == 0)
    {
      v88 = v97;
    }

    v103 = v101;
    v104 = v89;
    v105 = v88;
    v106 = v89;
    if (v89 >= v61)
    {
      v103 = v132;
      v104 = v61;
      v105 = v62;
      v106 = *&v63;
    }

    v60 = v103;
    v61 = v104;
    v62 = v105;
    *&v63 = v106;
    v13 = v124;
    v16 = v125;
    v21 = v122;
    v30 = v120;
    v33 = v119;
    if (!(v118 & 1 | (v89 > v59)))
    {
      sub_1E325F6F0(v134, &qword_1ECF3C9E0);
      v107 = OUTLINED_FUNCTION_8_173();
      result = v108(v107);
      v109 = v113[0];
      *(v113[0] + 16) = v101;
      *(v109 + 24) = 0;
      goto LABEL_19;
    }
  }

  sub_1E325F6F0(v134, &qword_1ECF3C9E0);
  v110 = OUTLINED_FUNCTION_8_173();
  result = v111(v110);
  v88 = 0.0;
  v103 = v132;
  v89 = 0.0;
LABEL_19:
  if (v89 == 0.0 && v88 == 0.0)
  {
    v112 = v113[0];
    *(v113[0] + 16) = v103;
    *(v112 + 24) = 0;
  }

  return result;
}

uint64_t sub_1E3F282E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3F2832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v134 = a7;
  v118 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9F8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v128 = v9;
  v132 = sub_1E4202544();
  OUTLINED_FUNCTION_0_10();
  v119 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v127 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v126 = v14;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA00);
  OUTLINED_FUNCTION_0_10();
  v133 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v122 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9C0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v131 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9C8);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v140 = v23;
  v139 = sub_1E4202244();
  OUTLINED_FUNCTION_0_10();
  v120 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v130 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9D0);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v138 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25_3();
  v137 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9D8);
  OUTLINED_FUNCTION_17_2(v33);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v112 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C9E0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v112 - v39;
  v41 = sub_1E4202334();
  OUTLINED_FUNCTION_0_10();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4_6();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v112 - v49;
  sub_1E4202344();
  v51 = *(v43 + 16);
  v112 = v50;
  v51(v36, v50, v41);
  v113 = v43;
  v52 = *(v43 + 32);
  v53 = v36;
  v54 = v137;
  v55 = v131;
  v52(v47, v53, v41);
  OUTLINED_FUNCTION_4_221();
  sub_1E3F282E0(v56, v57);
  v58 = v139;
  v114 = v41;
  sub_1E4206194();
  v59 = v115;
  v60 = *(v37 + 44);
  v61 = v138;
  v141 = v40;
  v129 = v60;
  *&v40[v60] = 0;
  v136 = sub_1E4202324();
  OUTLINED_FUNCTION_3_220();
  v135 = sub_1E3F282E0(v62, v63);
  v64 = 0;
  v65 = (v120 + 32);
  v124 = (v119 + 32);
  v117 = v119 + 16;
  v116 = v119 + 8;
  v123 = v133 + 8;
  v133 = v120 + 8;
  v125 = v18;
  while (1)
  {
    sub_1E4207174();
    v66 = v140;
    if (__swift_getEnumTagSinglePayload(v140, 1, v58) == 1)
    {
      sub_1E325F6F0(v66, &qword_1ECF3C9C8);
      v67 = 1;
      goto LABEL_6;
    }

    v68 = v59;
    v69 = *v65;
    v70 = v130;
    (*v65)(v130, v66, v58);
    v71 = *(v18 + 48);
    *v55 = v64;
    result = (v69)(v55 + v71, v70, v58);
    if (__OFADD__(v64++, 1))
    {
      break;
    }

    *&v141[v129] = v64;
    v61 = v138;
    sub_1E379E528(v55, v138, &qword_1ECF3C9C0);
    v67 = 0;
    v58 = v139;
    v59 = v68;
    v54 = v137;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v61, v67, 1, v18);
    sub_1E379E528(v61, v54, &qword_1ECF3C9D0);
    if (__swift_getEnumTagSinglePayload(v54, 1, v18) == 1)
    {
      sub_1E325F6F0(v141, &qword_1ECF3C9E0);
      return (*(v113 + 8))(v112, v114);
    }

    v74 = v58;
    v75 = *v54;
    (*v65)(v59, v54 + *(v18 + 48), v74);
    if ((*(v134 + 24) & 1) != 0 || v75 != *(v134 + 16))
    {
      v89 = OUTLINED_FUNCTION_10_147();
      v58 = v139;
      v90(v89, v139);
    }

    else
    {
      sub_1E4201504();
      v77 = v76;
      v78 = v121;
      v79 = v122;
      v81 = v80;
      sub_1E4203F04();
      v142[0] = v77 & 1;
      v142[32] = v81 & 1;
      sub_1E4202234();
      v82 = v128;
      sub_1E4202204();
      v83 = v132;
      if (__swift_getEnumTagSinglePayload(v82, 1, v132) == 1)
      {
        OUTLINED_FUNCTION_36_5();
        v84(v79, v78);
        v85 = OUTLINED_FUNCTION_10_147();
        v86 = v139;
        v87(v85, v139);
        v88 = v82;
        v58 = v86;
        sub_1E325F6F0(v88, &qword_1ECF3C9F8);
      }

      else
      {
        v91 = v126;
        v120 = *v124;
        (v120)(v126, v82, v83);
        OUTLINED_FUNCTION_36_5();
        v92(v127, v91, v83);
        v93 = sub_1E4202444();
        v95 = v94;
        v96 = *v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v95 = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_21_18();
          v96 = sub_1E3F28DDC(v104, v105, v106, v107);
          *v95 = v96;
        }

        v98 = *(v96 + 16);
        if (v98 >= *(v96 + 24) >> 1)
        {
          OUTLINED_FUNCTION_21_18();
          v96 = sub_1E3F28DDC(v108, v109, v110, v111);
          *v95 = v96;
        }

        *(v96 + 16) = v98 + 1;
        v99 = v119;
        v100 = v132;
        (v120)(v96 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v98, v127, v132);
        v93(v142, 0);
        (*(v99 + 8))(v126, v100);
        OUTLINED_FUNCTION_36_5();
        v101(v79, v78);
        v102 = OUTLINED_FUNCTION_10_147();
        v58 = v139;
        v103(v102, v139);
      }

      v18 = v125;
      v55 = v131;
      v54 = v137;
      v61 = v138;
    }
  }

  __break(1u);
  return result;
}

double sub_1E3F28CE8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void (*sub_1E3F28D68(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

size_t sub_1E3F28DDC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3F28F30(v8, v7);
  v10 = *(sub_1E4202544() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3F2902C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

unint64_t sub_1E3F28ECC()
{
  result = qword_1ECF3CA08;
  if (!qword_1ECF3CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CA08);
  }

  return result;
}

size_t sub_1E3F28F30(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA10);
  v4 = *(sub_1E4202544() - 8);
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

uint64_t sub_1E3F2902C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E4202544(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E4202544();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3F29100()
{
  v1 = OUTLINED_FUNCTION_173();
  type metadata accessor for SportsBannerScoreboardView(v1);
  return sub_1E38F861C(v0);
}

uint64_t sub_1E3F29170()
{
  OUTLINED_FUNCTION_82_20();
}

uint64_t sub_1E3F291A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3F291E4()
{
  type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_134_3();
}

uint64_t sub_1E3F29218()
{
  v2 = v0;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3746E10(v1);
  v4 = sub_1E42012B4();
  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  result = 0;
  if (v4)
  {
    if (*(v2 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60)) && (sub_1E37573D0(), OUTLINED_FUNCTION_30(), (*(v8 + 176))(&v12), , (v13 & 1) == 0))
    {
      v9 = OUTLINED_FUNCTION_6();
      return sub_1E3952BD8(v9, v10, v11);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1E3F29364()
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_26_100();
  if (!*(v0 + v3))
  {
    return 0;
  }

  sub_1E3757540();
  OUTLINED_FUNCTION_30();
  v5 = (*(v4 + 2408))();

  sub_1E375796C();
  v6 = sub_1E3757E68();

  v8 = (*(*v6 + 2408))(v7);

  sub_1E3746E10(v1);
  v9 = sub_1E42012B4();
  v10 = OUTLINED_FUNCTION_11_6();
  v11(v10);
  if (v9)
  {
    v12 = v5;
  }

  else
  {
    v12 = v8;
  }

  v13 = [objc_opt_self() vui:v12 fontFromTextLayout:?];

  return v13;
}

void sub_1E3F2951C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_26_100();
  if (*(v0 + v10))
  {
    v11 = v9;
    sub_1E3757540();
    OUTLINED_FUNCTION_30();
    v13 = (*(v12 + 2408))();

    sub_1E375796C();
    v14 = sub_1E3757E68();

    v16 = (*(*v14 + 2408))(v15);

    sub_1E3746E10(v8);
    v17 = sub_1E42012B4();
    (*(v4 + 8))(v8, v2);
    v18 = (v17 & 1) != 0 ? v13 : v16;
    v19 = [objc_opt_self() vui:v18 fontFromTextLayout:?];

    if (v19)
    {
      v20 = (**(v1 + *(v11 + 32) + 8) + 1424);
      v21 = *v20;
      (*v20)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
      OUTLINED_FUNCTION_46();
      sub_1E3A1558C(v22, v23);
      OUTLINED_FUNCTION_129_12();

      if (v30 && (sub_1E3C27024(), v25 = v24, v26 = , v25))
      {
        (v21)(v26);
        OUTLINED_FUNCTION_129_12();

        sub_1E3C27024();
        v28 = v27;

        if (v28)
        {
          v29 = v19;
          String.widthOfString(usingFont:)(v19);

          String.widthOfString(usingFont:)(v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F29850()
{
  OUTLINED_FUNCTION_9_4();
  v107 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v106 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v7 - v6);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_50_1();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA30);
  OUTLINED_FUNCTION_0_10();
  v96 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA48);
  OUTLINED_FUNCTION_0_10();
  v103 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA50);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v101 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v23);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA60);
  OUTLINED_FUNCTION_17_2(v26);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_49_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA68);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_28_6();
  v31 = type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_40_16();
  if ((*(v32 + 1088))())
  {
    v33 = sub_1E4201D44();
    v34 = sub_1E3F29218();
    *v3 = v33;
    *(v3 + 8) = v34;
    *(v3 + 16) = v35 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAD8);
    sub_1E3F2A49C();
    v36 = 0.0;
    if (*(v1 + *(v31 + 60)))
    {
      OUTLINED_FUNCTION_8();
      (*(v37 + 552))(v110);
      if ((LOBYTE(v110[4]) & 1) == 0)
      {
        v36 = sub_1E3952BE8(v110[0], v110[1], v110[2], v110[3]);
      }
    }

    v38 = (v2 + *(v28 + 36));
    v39 = *(sub_1E4201534() + 20);
    v40 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v41 + 104))(v38 + v39, v40);
    *v38 = v36;
    v38[1] = v36;
    *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
    sub_1E3741EA0(v3, v2, &qword_1ECF3CA60);
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v42, v43, v44);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v45, v46, v47);
    swift_storeEnumTagMultiPayload();
    sub_1E3F2C1A0();
    sub_1E3F2C310();
    OUTLINED_FUNCTION_87_2();
    sub_1E4201F44();
    goto LABEL_22;
  }

  *v0 = sub_1E4203DA4();
  v0[1] = v48;
  v49 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA70) + 44);
  sub_1E3F2B9A4();
  v50 = sub_1E401C3EC();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA78);
  *&v49[*(v51 + 36)] = v50;
  MEMORY[0x1EEE9AC00](v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA80);
  OUTLINED_FUNCTION_17_5();
  *&v110[0] = v95;
  *&v110[1] = sub_1E3A1558C(v53, v54);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_155_3();
  sub_1E3E35D1C(v52, v55);
  sub_1E325F69C(v0, &qword_1ECF3CA28);
  v56 = *(v1 + *(v31 + 60));
  if (v56)
  {
    v57 = sub_1E3756AD0();
    (*(*v57 + 328))();
  }

  v58 = v98;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_71_13();
  sub_1E42015C4();
  (*(v96 + 32))(v98, v94, v97);
  memcpy((v98 + *(v12 + 36)), v110, 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v60 = sub_1E4202764();
  *(inited + 32) = v60;
  v61 = sub_1E4202784();
  *(inited + 33) = v61;
  v62 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v60)
  {
    v62 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v61)
  {
    v62 = sub_1E4202774();
  }

  if (!v56)
  {
    v64 = 0uLL;
    goto LABEL_16;
  }

  sub_1E3756AD0();
  OUTLINED_FUNCTION_30();
  (*(v63 + 176))(&v111);

  if (v112[24])
  {
    v64 = 0uLL;
LABEL_16:
    v102 = v64;
    v65 = 1;
    v66 = &v110[9];
    goto LABEL_18;
  }

  v67 = OUTLINED_FUNCTION_6();
  sub_1E3952BE0(v67, v68, v69, v70);
  sub_1E4200A54();
  v65 = 0;
  *(&v72 + 1) = v71;
  v98 = v72;
  *(&v64 + 1) = v73;
  v66 = v112;
LABEL_18:
  *(v66 - 16) = v64;
  v74 = v58;
  v75 = v100;
  sub_1E3741EA0(v74, v100, &qword_1ECF3CA38);
  v76 = v75 + *(v99 + 36);
  *v76 = v62;
  *(v76 + 24) = v98;
  *(v76 + 8) = v102;
  *(v76 + 40) = v65;
  v77 = v105;
  sub_1E3746E10(v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA90);
  sub_1E3F2BF14();
  sub_1E3F2C0E8();
  View.ifAccessibilityOff<A>(typeSize:transform:)();
  (*(v106 + 8))(v77, v107);
  v78 = sub_1E325F69C(v75, &qword_1ECF3CA40);
  v79 = 0.0;
  if (v56)
  {
    (*(*v56 + 552))(v113, v78);
    if ((v114 & 1) == 0)
    {
      v79 = sub_1E3952BE8(v113[0], v113[1], v113[2], v113[3]);
    }
  }

  v80 = (v101 + *(v109 + 36));
  v81 = *(sub_1E4201534() + 20);
  v82 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v83 + 104))(v80 + v81, v82);
  *v80 = v79;
  v80[1] = v79;
  *(v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
  v84 = OUTLINED_FUNCTION_123_1();
  v85(v84);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v86, v87, v88);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v89, v90, v91);
  swift_storeEnumTagMultiPayload();
  sub_1E3F2C1A0();
  sub_1E3F2C310();
  sub_1E4201F44();
LABEL_22:
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v92, v93);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F2A49C()
{
  OUTLINED_FUNCTION_93();
  v5 = v4;
  v74 = v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v64 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFA0);
  OUTLINED_FUNCTION_0_10();
  v69 = v10;
  v70 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v68 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFA8);
  OUTLINED_FUNCTION_0_10();
  v72 = v14;
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v71 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v76 = v17;
  OUTLINED_FUNCTION_138();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v77 = v19;
  v78 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_17_2(v23);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFB8);
  OUTLINED_FUNCTION_0_10();
  v62 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFC0);
  OUTLINED_FUNCTION_0_10();
  v66 = v30;
  v67 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v65 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_28_6();
  sub_1E3F2ACB0();
  v60 = type metadata accessor for SportsBannerScoreboardView(0);
  *(v1 + *(v25 + 36)) = sub_1E401C3EC();
  sub_1E3FE29A8();
  sub_1E4202474();
  sub_1E4202494();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_1E3F364B0();
  sub_1E3E038E0();

  sub_1E325F69C(v3, &qword_1ECF2E400);
  sub_1E325F69C(v1, &qword_1ECF3CFB0);
  sub_1E3746E10(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFD0);
  OUTLINED_FUNCTION_7_22();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3F3653C();
  v75 = v2;
  OUTLINED_FUNCTION_140_3();
  View.ifAccessibilityOff<A>(typeSize:transform:)();
  v38 = *(v77 + 8);
  v38(v22, v78);
  (*(v62 + 8))(v0, v61);
  sub_1E3F2B1A4();
  v39 = sub_1E401C3EC();
  *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFE0) + 36)) = v39;
  *(v64 + *(v63 + 36)) = 256;
  if (*(v5 + *(v60 + 60)))
  {
    sub_1E375681C();
    OUTLINED_FUNCTION_30();
    (*(v40 + 328))();
    OUTLINED_FUNCTION_128_11();
    if (OpaqueTypeConformance2)
    {
      v41 = 0;
    }

    else
    {
      v41 = v0;
    }
  }

  else
  {
    v41 = 0;
  }

  sub_1E3746E10(v22);
  v42 = sub_1E42012B4();
  v38(v22, v78);
  v43 = sub_1E3F36630();
  v44 = sub_1E3B6C5B4();
  v59 = v45 & 1;
  v57 = v44;
  v58 = v46;
  OUTLINED_FUNCTION_15_54();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v47, v48, v49, v50, 0x7FF0000000000000, 0, v41, 0, 0, 1, 0, 1, v57, v58, v59, (v42 & 1) == 0, v63, v43);
  sub_1E325F69C(v64, &qword_1ECF3CF98);
  v51 = sub_1E3746E10(v22);
  MEMORY[0x1EEE9AC00](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFF8);
  swift_getOpaqueTypeConformance2();
  sub_1E3F36750();
  OUTLINED_FUNCTION_140_3();
  View.ifAccessibilityOff<A>(typeSize:transform:)();
  v38(v22, v78);
  (*(v69 + 8))(v68, v70);
  v52 = *(v66 + 16);
  v52(v65, v75, v67);
  v79 = *(v72 + 16);
  v79(v71, v76, v73);
  v53 = OUTLINED_FUNCTION_53();
  (v52)(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D008);
  v79(v74 + *(v54 + 48), v71, v73);
  v55 = *(v72 + 8);
  v55(v76, v73);
  v56 = *(v66 + 8);
  v56(v75, v67);
  v55(v71, v73);
  v56(v65, v67);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F2ACB0()
{
  OUTLINED_FUNCTION_93();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v32 = v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v33 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CAF8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_50_1();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v1;
  sub_1E3746E10(v15 - v14);
  v17 = sub_1E42012B4();
  v18 = OUTLINED_FUNCTION_119_0();
  v19(v18);
  if (v17)
  {
    sub_1E3FE5E88(v0);
    v20 = OUTLINED_FUNCTION_11_6();
    v21(v20);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_63_29();
    sub_1E3F2D314();
    sub_1E4201F44();
    (*(v11 + 8))(v0, v9);
  }

  else
  {
    sub_1E3F2D10C();
    OUTLINED_FUNCTION_26_100();
    if (*(v16 + v22))
    {
      sub_1E3756660();
      OUTLINED_FUNCTION_30();
      (*(v23 + 328))();
      OUTLINED_FUNCTION_128_11();
    }

    sub_1E4203DA4();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_71_13();
    sub_1E42015C4();
    sub_1E3741EA0(v32, v33, &qword_1ECF3CAE0);
    memcpy((v33 + *(v34 + 36)), v35, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v24, v25, v26);
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v27, v28, v29);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_63_29();
    sub_1E3F2D314();
    OUTLINED_FUNCTION_140_3();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v30, v31);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3F2B0E8@<X0>(uint64_t a1@<X8>)
{
  v1 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFD0) + 36);
  sub_1E4203D14();
  v2 = sub_1E4202734();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658) + 36)) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFB8);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_16_0();

  return v4(v3);
}

void sub_1E3F2B1A4()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB50);
  OUTLINED_FUNCTION_0_10();
  v35 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_3();
  v10 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = v0;
  sub_1E3746E10(v13 - v12);
  v16 = sub_1E42012B4();
  v17 = OUTLINED_FUNCTION_13_8();
  v18(v17);
  if (v16)
  {
    sub_1E3FE6550();
    (*(v35 + 16))(v1, v3, v7);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_64_32();
    OUTLINED_FUNCTION_1();
    sub_1E3A1558C(v19, v20);
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();
    (*(v35 + 8))(v3, v7);
  }

  else
  {
    v21 = sub_1E4201D44();
    OUTLINED_FUNCTION_26_100();
    if (*(v15 + v22))
    {
      sub_1E375681C();
      OUTLINED_FUNCTION_30();
      (*(v23 + 1176))();
      OUTLINED_FUNCTION_128_11();
      if (v14)
      {
        v24 = 0;
      }

      else
      {
        v24 = v10;
      }
    }

    else
    {
      v24 = 0;
    }

    *v2 = v21;
    *(v2 + 8) = v24;
    *(v2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB58);
    sub_1E3F2EDDC();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v25, v26, v27);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v28, v29, v30);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_64_32();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E3A1558C(v31, v32);
    OUTLINED_FUNCTION_140_3();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v33, v34);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F2B52C()
{
  OUTLINED_FUNCTION_31_1();
  v20 = v2;
  v4 = v3;
  v5 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34_1();
  sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v11 = OUTLINED_FUNCTION_72_13();
  type metadata accessor for SportsBannerScoreboardView(v11);
  sub_1E379EBAC(v1);
  (*(v7 + 104))(v0, *MEMORY[0x1E697DBA8], v5);
  v12 = sub_1E4200B34();
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_168();
  v13(v14);
  (v13)(v1, v5);
  if (v12)
  {
    sub_1E4203D24();
  }

  else
  {
    sub_1E4203CE4();
  }

  v15 = sub_1E4202734();
  v16 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFF8) + 36);
  v17 = OUTLINED_FUNCTION_24_4();
  v18(v17);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658) + 36)) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CFA0);
  OUTLINED_FUNCTION_2();
  (*(v19 + 16))(v4, v20);
  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3F2B760@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  memmove(a2, *a1, 0x80uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF28);
  sub_1E3743538(*(a1 + 8), &a2[v4[12]], &qword_1ECF3CF18);
  memmove(&a2[v4[16]], *(a1 + 16), 0x80uLL);
  sub_1E3743538(*(a1 + 24), &a2[v4[20]], &qword_1ECF3CF10);
  memmove(&a2[v4[24]], *(a1 + 32), 0x80uLL);
  sub_1E3743538(*(a1 + 40), &a2[v4[28]], &qword_1ECF3CF08);
  memmove(&a2[v4[32]], *(a1 + 48), 0x80uLL);
  sub_1E3743538(*(a1 + 56), &a2[v4[36]], &qword_1ECF3CF10);
  memmove(&a2[v4[40]], *(a1 + 64), 0x80uLL);
  sub_1E3743538(*(a1 + 72), &a2[v4[44]], &qword_1ECF3CF18);
  v5 = *(a1 + 80);
  v6 = &a2[v4[48]];

  return memmove(v6, v5, 0x80uLL);
}

uint64_t sub_1E3F2B8D4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[3];
  v5 = *(v2 + 16);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *v7;
  v10 = v7[1];
  v12 = v7[3];
  v11 = *(v7 + 16);
  v13 = *v8;
  v16 = *(v8 + 8);
  v14 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v16;
  sub_1E37E6F1C(v4, v3, v5);

  sub_1E37E6F1C(v9, v10, v11);
}

void sub_1E3F2B9A4()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB68);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = type metadata accessor for SportsBannerScoreboardView(0);
  if (sub_1E3F95854() == 3)
  {
    v7 = sub_1E4201D44();
    if (*(v0 + *(v6 + 60)))
    {
      sub_1E3756AD0();
      OUTLINED_FUNCTION_30();
      v9 = (*(v8 + 1176))();
      v11 = v10;

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v9;
      }
    }

    else
    {
      v12 = 0;
    }

    *v2 = v7;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB78);
    sub_1E3F2F6C8();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v15, v16, v17);
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v18, v19, v20);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB18);
    sub_1E3F2D458();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E3A1558C(v21, v22);
    OUTLINED_FUNCTION_125();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v23, v24);
  }

  else
  {
    sub_1E3F2D510();
    memcpy(v1, v25, 0xE8uLL);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB18);
    sub_1E3F2D458();
    OUTLINED_FUNCTION_1();
    sub_1E3A1558C(v13, v14);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_82();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F2BC6C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_23_8();
  v7 = sub_1E4202794();
  sub_1E3746E10(v1);
  v8 = *(v4 + 104);
  v8(v0, *MEMORY[0x1E697E708], v2);
  OUTLINED_FUNCTION_123_1();
  v9 = sub_1E42012D4();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_124();
  v10(v11);
  v12 = OUTLINED_FUNCTION_168();
  v10(v12);
  if (v9 & 1) != 0 || (sub_1E3746E10(v1), v8(v0, *MEMORY[0x1E697E720], v2), OUTLINED_FUNCTION_123_1(), v13 = sub_1E42012D4(), v14 = OUTLINED_FUNCTION_124(), v10(v14), v15 = OUTLINED_FUNCTION_168(), v10(v15), (v13))
  {
    v16 = 1;
  }

  else
  {
    sub_1E3746E10(v1);
    v8(v0, *MEMORY[0x1E697E728], v2);
    OUTLINED_FUNCTION_123_1();
    v16 = sub_1E42012D4();
    v17 = OUTLINED_FUNCTION_124();
    v10(v17);
    v18 = OUTLINED_FUNCTION_168();
    v10(v18);
  }

  v19 = OUTLINED_FUNCTION_24_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v19);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_40_13();
  v23 = sub_1E3A1558C(v21, v22);
  View.conditionalPadding(edges:length:condition:)(v7, 0x4018000000000000, 0, v16 & 1, v20, v23);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F2BE88@<X0>(uint64_t a1@<X8>)
{
  v1 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CA90) + 36);
  sub_1E4203CE4();
  v2 = sub_1E4202734();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658) + 36)) = v2;
  v3 = OUTLINED_FUNCTION_32_0();
  return sub_1E3743538(v3, v4, v5);
}

unint64_t sub_1E3F2BF14()
{
  result = qword_1ECF3CA98;
  if (!qword_1ECF3CA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA40);
    sub_1E3F2BFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CA98);
  }

  return result;
}

unint64_t sub_1E3F2BFA0()
{
  result = qword_1ECF3CAA0;
  if (!qword_1ECF3CAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA80);
    sub_1E3A1558C(&qword_1ECF3CA88, &qword_1ECF3CA28);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAA0);
  }

  return result;
}

unint64_t sub_1E3F2C0E8()
{
  result = qword_1ECF3CAA8;
  if (!qword_1ECF3CAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA90);
    sub_1E3F2BF14();
    sub_1E3A1558C(&qword_1EE288890, &qword_1ECF2F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAA8);
  }

  return result;
}

unint64_t sub_1E3F2C1A0()
{
  result = qword_1ECF3CAB0;
  if (!qword_1ECF3CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA68);
    sub_1E3F2C258();
    sub_1E3A1558C(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAB0);
  }

  return result;
}

unint64_t sub_1E3F2C258()
{
  result = qword_1ECF3CAB8;
  if (!qword_1ECF3CAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA60);
    sub_1E3A1558C(&qword_1ECF3CAC0, &unk_1ECF3CAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAB8);
  }

  return result;
}

unint64_t sub_1E3F2C310()
{
  result = qword_1ECF3CAD0;
  if (!qword_1ECF3CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CA90);
    sub_1E3F2BF14();
    sub_1E3F2C0E8();
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CAD0);
  }

  return result;
}

void sub_1E3F2C430(uint64_t *a1@<X8>)
{
  *a1 = sub_1E4203D94();
  a1[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB88);
  OUTLINED_FUNCTION_16_0();
  sub_1E3F2C488();
}

void sub_1E3F2C488()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_173();
  v65 = type metadata accessor for SportsBannerScoreboardView.WinIndicator(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF48);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v67 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF50);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v74 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v73 = v17;
  v18 = OUTLINED_FUNCTION_138();
  v19 = type metadata accessor for SportsBannerScoreboardView(v18);
  v20 = *(v4 + *(v19 + 32) + 8);
  OUTLINED_FUNCTION_42_7();
  v64 = *(v21 + 1424);
  v64();
  LOBYTE(v76[1]) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
  OUTLINED_FUNCTION_46();
  sub_1E3A1558C(v23, v24);
  v25 = OUTLINED_FUNCTION_135_6();
  *(v26 - 256) = v22;
  sub_1E38D2054(v25, v27);

  v76[0] = v20;
  v28 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel();

  v70 = sub_1E383ACA0(v2, v28, &off_1F5D8FCF0);
  type metadata accessor for SportsVoiceOverViewModel();
  OUTLINED_FUNCTION_19_130();
  sub_1E3F291A0(v29, v30);

  OUTLINED_FUNCTION_167_0();
  v31 = v2;
  v69 = sub_1E42010C4();
  v71 = v32;
  OUTLINED_FUNCTION_42_7();
  v34 = (*(v33 + 1712))();
  v76[0] = v20;
  v35 = OUTLINED_FUNCTION_119_0();
  LOBYTE(v28) = sub_1E383ACA0(v35, v36, &off_1F5D8FCF0);

  OUTLINED_FUNCTION_42_7();
  v38 = (*(v37 + 1568))();
  if (v28)
  {
    if ((v38 & 1) == 0)
    {
LABEL_3:
      v39 = 1;
      v40 = v72;
      v41 = v73;
      goto LABEL_16;
    }
  }

  else if ((v38 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v42 = *(v4 + *(v19 + 60));
  if (v42)
  {
    sub_1E375796C();
    v42 = sub_1E3757E68();
  }

  *v68 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  v43 = swift_storeEnumTagMultiPayload();
  *(v68 + *(v65 + 20)) = v42;
  (v64)(v43);
  v76[0] = v31;
  LOBYTE(v76[1]) = 0;
  v44 = OUTLINED_FUNCTION_135_6();
  sub_1E38D2054(v44, v45);

  if (v75 && (sub_1E3C27024(), v47 = v46, , v47))
  {
    v48 = sub_1E3F29364();
    String.widthOfString(usingFont:)(v48);

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  sub_1E4203DA4();
  if ((v49 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v50)
    {
      sub_1E4206804();
      v51 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_99_1();
  sub_1E3F363AC(v68, v67);
  v40 = v72;
  memcpy((v67 + *(v72 + 36)), v76, 0x70uLL);
  OUTLINED_FUNCTION_98_7();
  sub_1E3741EA0(v52, v53, v54);
  v41 = v73;
  sub_1E3741EA0(v66, v73, &qword_1ECF3CF48);
  v39 = 0;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v41, v39, 1, v40);
  if (v34)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.0;
  }

  OUTLINED_FUNCTION_98_7();
  sub_1E3743538(v56, v57, v58);
  *v0 = v75;
  *(v0 + 8) = v70 & 1;
  *(v0 + 16) = v31;
  *(v0 + 24) = v69;
  *(v0 + 32) = v71;
  *(v0 + 40) = v55;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF58);
  sub_1E3743538(v74, v0 + *(v59 + 48), &qword_1ECF3CF50);

  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v60, v61);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v62, v63);

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F2CB10(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB90);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  sub_1E3F2CC48();
  v5 = sub_1E4202724();
  OUTLINED_FUNCTION_26_100();
  if (*(v1 + v6))
  {
    sub_1E37573D0();
    OUTLINED_FUNCTION_30();
    (*(v7 + 176))(&v12);

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_83_18();
    }
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_11_6();
  sub_1E3741EA0(v8, v9, v10);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB98) + 36));
  *v11 = v5;
  OUTLINED_FUNCTION_11_4(v11);
}

void sub_1E3F2CC48()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v52 = type metadata accessor for BaseballClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v47 = v12;
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  type metadata accessor for SportsClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CCD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v46 - v18;
  v20 = *(type metadata accessor for SportsBannerScoreboardView(0) + 32);
  v49 = v3;
  v21 = *(v3 + v20 + 8);
  type metadata accessor for SportsBaseballScoreboardViewModel();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v23 = *(v22 + 2432);

    v23(v24);
    v25 = *(*v0 + 1520);

    v25(v26);
    v28 = v27;
    LOBYTE(v25) = v29;

    v30 = sub_1E3DF33F8();
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_67_0();
    sub_1E3DF3424(v31, v28, v25, 1, 3, v30, v32, v33);
    sub_1E3F36458(v9, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_48_47();
    sub_1E3F291A0(v34, v35);
    sub_1E3F3518C();
    sub_1E4201F44();

    sub_1E3F36404();
  }

  else
  {
    (*(*v21 + 1520))();
    sub_1E3B47648();
    v46[1] = v5;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_32_0();
    sub_1E3B476D4();
    sub_1E4202464();
    sub_1E3F291A0(qword_1EE2800B8, type metadata accessor for SportsClockView);
    sub_1E4203224();
    (*(v47 + 8))(v15, v48);
    sub_1E3F36404();

    v36 = sub_1E3FEA350();
    v37 = &v19[*(v50 + 36)];
    *v37 = v36;
    v37[1] = v38;
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v39, v40, v41);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_48_47();
    sub_1E3F291A0(v42, v43);
    sub_1E3F3518C();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v44, v45);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F2D10C()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_82_20();
  if (sub_1E3F95854() == 3)
  {
    *v1 = sub_1E4201B84();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBA8);
    sub_1E3F2D914();
    v4 = OUTLINED_FUNCTION_53();
    sub_1E3743538(v4, v5, &qword_1ECF3CB38);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB18);
    sub_1E3F2D458();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_155_3();
    sub_1E3A1558C(v6, v7);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_87_2();
    sub_1E4201F44();
    OUTLINED_FUNCTION_155_3();
    sub_1E325F69C(v8, v9);
  }

  else
  {
    sub_1E3F2D510();
    memcpy(v0, v12, 0xE8uLL);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB18);
    sub_1E3F2D458();
    OUTLINED_FUNCTION_9_0();
    sub_1E3A1558C(v10, v11);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_82();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F2D314()
{
  result = qword_1ECF3CB00;
  if (!qword_1ECF3CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CAE8);
    sub_1E3F2D3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CB00);
  }

  return result;
}

unint64_t sub_1E3F2D3A0()
{
  result = qword_1ECF3CB08;
  if (!qword_1ECF3CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CAE0);
    sub_1E3F2D458();
    sub_1E3A1558C(&qword_1ECF3CB30, &qword_1ECF3CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CB08);
  }

  return result;
}

unint64_t sub_1E3F2D458()
{
  result = qword_1ECF3CB10;
  if (!qword_1ECF3CB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CB18);
    sub_1E3A1558C(&qword_1ECF3CB20, &unk_1ECF3CB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CB10);
  }

  return result;
}

void sub_1E3F2D510()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v46 = v3;
  OUTLINED_FUNCTION_26_100();
  if (*(v0 + v4))
  {
    v5 = objc_opt_self();

    sub_1E3757774();
    OUTLINED_FUNCTION_2_1();
    v7 = (*(v6 + 2408))();

    v8 = [v5 vui:v7 fontFromTextLayout:?];

    sub_1E3757888();
    OUTLINED_FUNCTION_2_1();
    v10 = (*(v9 + 2408))();

    v11 = [v5 vui:v10 fontFromTextLayout:?];
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  v44 = sub_1E4201D44();
  v52 = 0;
  v56[0] = SportsDisplayError.title.getter();
  v56[1] = v12;
  sub_1E32822E0();
  sub_1E4202C44();
  if (v8)
  {
    sub_1E405EEA0();
  }

  v13 = sub_1E4202C04();
  v40 = v14;
  v41 = v13;
  v16 = v15;
  v42 = v17;

  v18 = OUTLINED_FUNCTION_125();
  sub_1E37434B8(v18, v19, v20);

  v56[0] = SportsDisplayError.subtitle.getter(v2);
  v56[1] = v21;
  v22 = sub_1E4202C44();
  v24 = v23;
  v26 = v25;
  v45 = v8;
  v43 = v11;
  if (v11)
  {
    sub_1E405EEA0();
  }

  OUTLINED_FUNCTION_16_0();
  v27 = sub_1E4202C04();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1E37434B8(v22, v24, v26 & 1);

  v59 = 0;
  v60 = 1;
  __dst[0] = v41;
  __dst[1] = v40;
  LOBYTE(__dst[2]) = v16 & 1;
  __dst[3] = v42;
  v55[0] = &v59;
  v55[1] = __dst;
  v47 = v27;
  v48 = v29;
  v49 = v31 & 1;
  v50 = v33;
  v57 = 0;
  v58 = 1;
  v55[2] = &v47;
  v55[3] = &v57;
  sub_1E3F2B8D4(v55, v56);
  sub_1E37434B8(v47, v48, v49);

  sub_1E37434B8(__dst[0], __dst[1], __dst[2]);

  memcpy(__dst, v56, 0x59uLL);
  memcpy(v55, v56, 0x59uLL);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v34, v35, v36);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v37, v38);
  memcpy(&__src[7], __dst, 0x59uLL);
  v39 = v52;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_99_1();

  memcpy(&v53[7], v56, 0x70uLL);
  *v46 = v44;
  *(v46 + 8) = 0;
  *(v46 + 16) = v39;
  memcpy((v46 + 17), __src, 0x60uLL);
  memcpy((v46 + 113), v53, 0x77uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F2D914()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v154 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF08);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v155 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v147 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v163 = v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v153 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v164 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v162 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v166 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8_4();
  v22 = type metadata accessor for SportsBannerLogoView();
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v159 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v156 = v26;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  v152 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  v161 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v151 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  v160 = v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25_3();
  v165 = v37;
  v38 = OUTLINED_FUNCTION_138();
  v167 = *(v3 + *(type metadata accessor for SportsBannerScoreboardView(v38) + 60));
  if (v167 && (sub_1E3756660(), OUTLINED_FUNCTION_30(), (*(v39 + 152))(v193), , (v194 & 1) == 0))
  {
    v41 = OUTLINED_FUNCTION_6();
    sub_1E3952BE0(v41, v42, v43, v44);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  sub_1E4203DA4();
  if ((v40 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v45)
    {
      sub_1E4206804();
      v150 = v1;
      v46 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();

      v1 = v150;
    }
  }

  v47 = 1;
  OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8();
  v192[120] = 0;
  memcpy(&v192[7], v195, 0x70uLL);
  type metadata accessor for SportsBannerLogoViewModel();
  v148 = swift_retain_n();
  sub_1E3CBAB38(v148, 0);

  sub_1E3CBCBC0(v48);

  v149 = v0;
  OUTLINED_FUNCTION_82();
  sub_1E3CBCC24(v49, v50, v51, v52);
  if (v167)
  {
    sub_1E3756C24();
    OUTLINED_FUNCTION_30();
    v54 = (*(v53 + 224))();
    v56 = v55;

    sub_1E3756C24();
    OUTLINED_FUNCTION_30();
    v58 = (*(v57 + 200))();
    v47 = v59;
  }

  else
  {
    v58 = 0;
    v54 = 0;
    v56 = 1;
  }

  sub_1E4203DA4();
  v60 = *&v54;
  if (v56)
  {
    v60 = -INFINITY;
  }

  v61 = *&v58;
  if (v47)
  {
    v61 = v60;
  }

  if (v60 > v61)
  {
    sub_1E4206804();
    v62 = sub_1E42026D4();
    OUTLINED_FUNCTION_108();
  }

  OUTLINED_FUNCTION_15_54();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_45_62();
  sub_1E3F363AC(v156, v1);
  memcpy((v1 + *(v158 + 36)), v196, 0x70uLL);
  sub_1E3741EA0(v1, v165, &qword_1ECF3CF18);
  if (v167)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    (*(v63 + 152))(v197);

    if ((v198 & 1) == 0)
    {
      v64 = OUTLINED_FUNCTION_6();
      sub_1E3952BE0(v64, v65, v66, v67);
    }
  }

  sub_1E4203DA4();
  v68 = 1;
  OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8();
  v191[120] = 0;
  memcpy(&v191[7], v199, 0x70uLL);
  *v166 = sub_1E4203D94();
  v166[1] = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB88);
  sub_1E3F2C488();
  sub_1E3F2951C();
  sub_1E4203D74();
  OUTLINED_FUNCTION_15_54();
  sub_1E4200D94();
  v70 = (v166 + *(v157 + 36));
  v71 = v201;
  *v70 = v200;
  v70[1] = v71;
  v70[2] = v202;
  if (v167)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    (*(v72 + 152))(v203);

    if ((v204 & 1) == 0)
    {
      v73 = OUTLINED_FUNCTION_6();
      sub_1E3952BE0(v73, v74, v75, v76);
      v68 = 0;
    }
  }

  sub_1E4203DA4();
  if ((v68 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v45)
    {
      sub_1E4206804();
      v77 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8();
  v190[120] = 0;
  memcpy(&v190[7], v205, 0x70uLL);
  v78 = sub_1E4201D44();
  v79 = v167;
  if (v167)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    v87 = (*(v80 + 1176))(v81, v82, v83, v84, v85, v86);
    v89 = v88;

    if (v89)
    {
      v79 = 0;
    }

    else
    {
      v79 = v87;
    }
  }

  *v147 = v78;
  *(v147 + 8) = v79;
  *(v147 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF20);
  sub_1E3F2E9C8();
  sub_1E3741EA0(v147, v163, &qword_1ECF3CF08);
  if (v167 && (sub_1E3756660(), OUTLINED_FUNCTION_30(), (*(v90 + 152))(v206), , (v207 & 1) == 0))
  {
    v92 = OUTLINED_FUNCTION_6();
    sub_1E3952BE0(v92, v93, v94, v95);
    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  sub_1E4203DA4();
  if ((v91 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v45)
    {
      sub_1E4206804();
      v96 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  v97 = 1;
  OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8();
  v189[120] = 0;
  memcpy(&v189[7], v208, 0x70uLL);
  *v162 = sub_1E4203D94();
  v162[1] = v98;
  sub_1E3F2C488();
  sub_1E3F2951C();
  sub_1E4203D64();
  OUTLINED_FUNCTION_15_54();
  sub_1E4200D94();
  v99 = (v162 + *(v157 + 36));
  v100 = v210;
  *v99 = v209;
  v99[1] = v100;
  v99[2] = v211;
  if (v167)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    (*(v101 + 152))(v212);

    v102 = v149;
    if (v213)
    {
      v97 = 1;
    }

    else
    {
      v103 = OUTLINED_FUNCTION_6();
      sub_1E3952BE0(v103, v104, v105, v106);
      v97 = 0;
    }
  }

  else
  {
    v102 = v149;
  }

  sub_1E4203DA4();
  if ((v97 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v45)
    {
      sub_1E4206804();
      v107 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  v108 = 1;
  OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8();
  v188[120] = 0;
  memcpy(&v188[7], v214, 0x70uLL);
  v109 = sub_1E3CBAB38(v148, 1);
  sub_1E3CBCBC0(v109);
  sub_1E3CBCC24(v102, v109, v167, v159);
  if (v167)
  {
    sub_1E3756C24();
    OUTLINED_FUNCTION_30();
    v117 = (*(v110 + 224))(v111, v112, v113, v114, v115, v116);
    v119 = v118;

    sub_1E3756C24();
    OUTLINED_FUNCTION_30();
    v127 = (*(v120 + 200))(v121, v122, v123, v124, v125, v126);
    v108 = v128;
  }

  else
  {
    v127 = 0;
    v117 = 0;
    v119 = 1;
  }

  sub_1E4203DA4();
  v129 = *&v117;
  if (v119)
  {
    v129 = -INFINITY;
  }

  v130 = *&v127;
  if (v108)
  {
    v130 = v129;
  }

  if (v129 > v130)
  {
    sub_1E4206804();
    v131 = sub_1E42026D4();
    OUTLINED_FUNCTION_108();
  }

  OUTLINED_FUNCTION_15_54();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_45_62();
  sub_1E3F363AC(v159, v151);
  memcpy((v151 + *(v158 + 36)), v215, 0x70uLL);
  sub_1E3741EA0(v151, v160, &qword_1ECF3CF18);
  if (v167)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    (*(v132 + 152))(v216);

    if ((v217 & 1) == 0)
    {
      v133 = OUTLINED_FUNCTION_6();
      sub_1E3952BE0(v133, v134, v135, v136);
    }
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_15_143();
  OUTLINED_FUNCTION_30_8();
  v187[120] = 0;
  memcpy(&v187[7], v218, 0x70uLL);
  v183 = 0;
  v184 = 0;
  memcpy(v185, v192, sizeof(v185));
  v186[0] = &v183;
  sub_1E3743538(v165, v161, &qword_1ECF3CF18);
  v186[1] = v161;
  v180 = 0;
  v181 = 0;
  memcpy(v182, v191, sizeof(v182));
  v186[2] = &v180;
  sub_1E3743538(v166, v164, &qword_1ECF3CF10);
  v186[3] = v164;
  v177 = 0;
  v178 = 0;
  memcpy(v179, v190, sizeof(v179));
  v186[4] = &v177;
  sub_1E3743538(v163, v155, &qword_1ECF3CF08);
  v186[5] = v155;
  v174 = 0;
  v175 = 0;
  memcpy(v176, v189, sizeof(v176));
  v186[6] = &v174;
  sub_1E3743538(v162, v153, &qword_1ECF3CF10);
  v186[7] = v153;
  v171 = 0;
  v172 = 0;
  memcpy(v173, v188, sizeof(v173));
  v186[8] = &v171;
  sub_1E3743538(v160, v152, &qword_1ECF3CF18);
  v186[9] = v152;
  v168 = 0;
  v169 = 0;
  memcpy(v170, v187, sizeof(v170));
  v186[10] = &v168;
  sub_1E3F2B760(v186, v154);
  sub_1E325F69C(v160, &qword_1ECF3CF18);
  sub_1E325F69C(v162, &qword_1ECF3CF10);
  sub_1E325F69C(v163, &qword_1ECF3CF08);
  sub_1E325F69C(v166, &qword_1ECF3CF10);
  OUTLINED_FUNCTION_98_7();
  sub_1E325F69C(v137, v138);
  v139 = OUTLINED_FUNCTION_75();
  sub_1E325F69C(v139, v140);
  v141 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v141, v142);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v143, v144);
  sub_1E325F69C(v164, &qword_1ECF3CF10);
  OUTLINED_FUNCTION_98_7();
  sub_1E325F69C(v145, v146);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F2E9C8()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v53 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB90);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CB98);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v52 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF30);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v51 - v16);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  v19 = type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_40_16();
  if ((*(v20 + 1304))())
  {
    v21 = OUTLINED_FUNCTION_106();
    v22 = type metadata accessor for SportsBannerScoreboardView.BadgeView(v21);
    sub_1E4203D34();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    *(v17 + *(v22 + 20)) = v0;
    OUTLINED_FUNCTION_114();
    v30 = v22;
  }

  else
  {
    type metadata accessor for SportsBannerScoreboardView.BadgeView(0);
    OUTLINED_FUNCTION_32_2();
  }

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_1E3741EA0(v17, v2, &qword_1ECF3CF30);
  sub_1E3F2CC48();
  v31 = sub_1E4202724();
  if (*(v4 + *(v19 + 60)))
  {
    sub_1E37573D0();
    OUTLINED_FUNCTION_30();
    (*(v32 + 176))(&v54);

    if ((v55 & 1) == 0)
    {
      OUTLINED_FUNCTION_83_18();
    }
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v12, &qword_1ECF3CB90);
  v33 = &v12[*(v51 + 36)];
  *v33 = v31;
  OUTLINED_FUNCTION_11_4(v33);
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v34, v35, v36);
  v37 = v52;
  sub_1E3743538(v12, v52, &qword_1ECF3CB98);
  v38 = v53;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v39, v40, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF38);
  sub_1E3743538(v37, v38 + *(v42 + 48), &qword_1ECF3CB98);
  v43 = OUTLINED_FUNCTION_125();
  sub_1E325F69C(v43, v44);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v45, v46);
  v47 = OUTLINED_FUNCTION_58_1();
  sub_1E325F69C(v47, v48);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v49, v50);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3F2ED6C()
{
  OUTLINED_FUNCTION_109_9();
  sub_1E3741EA0(v3, v4, &qword_1ECF28BB8);
  v5 = type metadata accessor for SportsBannerScoreboardView.BadgeView(0);
  *(v2 + *(v5 + 20)) = v1;
  return sub_1E3741EA0(v0, v2 + *(v5 + 24), &qword_1ECF2A258);
}

void sub_1E3F2EDDC()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF88);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_7();
  v13 = type metadata accessor for SportsBannerScoreboardView.EventTitleView(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_8();
  v16 = *(v5 + *(type metadata accessor for SportsBannerScoreboardView(0) + 44));
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *(v3 + *(v14 + 28)) = v16;

  sub_1E3F2F098();
  sub_1E3F36458(v3, v2);
  v17 = *(v10 + 16);
  v18 = OUTLINED_FUNCTION_75();
  v17(v18);
  v19 = OUTLINED_FUNCTION_8_6();
  sub_1E3F36458(v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF90);
  (v17)(v7 + *(v21 + 48), v0, v8);
  v22 = *(v10 + 8);
  v22(v1, v8);
  sub_1E3F36404();
  v23 = OUTLINED_FUNCTION_11_6();
  (v22)(v23);
  sub_1E3F36404();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F2F044()
{
  OUTLINED_FUNCTION_109_9();
  sub_1E3741EA0(v3, v4, &qword_1ECF28BB8);
  result = v0(0);
  *(v2 + *(result + 20)) = v1;
  return result;
}

void sub_1E3F2F098()
{
  OUTLINED_FUNCTION_21_5();
  v25 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v24 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBC0);
  OUTLINED_FUNCTION_0_10();
  v26 = v11;
  v27 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_26_100();
  v15 = 0.0;
  if (*(v1 + v14))
  {
    sub_1E3756F7C();
    OUTLINED_FUNCTION_30();
    (*(v16 + 176))(&v28);

    if ((v29 & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_83_18();
    }
  }

  *v0 = sub_1E4201B84();
  *(v0 + 8) = v15;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBD0);
  sub_1E3F2FD3C();
  sub_1E4202474();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_40_13();
  sub_1E3A1558C(v17, v18);
  sub_1E4203224();
  (*(v24 + 8))(v8, v25);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v19, v20);
  sub_1E3FE7E74();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_23_16();
  sub_1E4202EC4();
  v21 = OUTLINED_FUNCTION_23_16();
  sub_1E37434B8(v21, v22, v23);

  (*(v26 + 8))(v3, v27);
  sub_1E3F341AC();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F69C(v2, &qword_1ECF3CBC8);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3F2F3E8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBE8);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  if (*(v0 + *(type metadata accessor for SportsBannerScoreboardView.EventTitleView(0) + 20)))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E3C27024();
    v34[1] = v4;
    sub_1E4202494();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_0_21();
    v34[0] = v13;
    v22 = v15;
    v23 = v21;
    sub_1E3E038E0();

    sub_1E325F69C(v8, &qword_1ECF2E400);
    (*(v11 + 8))(v2, v9);
    v34[2] = v9;
    v34[3] = v23;
    OUTLINED_FUNCTION_7_22();
    swift_getOpaqueTypeConformance2();
    v24 = v34[0];
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    (*(v22 + 8))(v1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBF0);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBF0);
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }
}

void sub_1E3F2F6C8()
{
  OUTLINED_FUNCTION_93();
  v77 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CCF0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v72 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v76 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v71 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF60);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v75 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v69 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF70);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v74 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v24 = v23;
  OUTLINED_FUNCTION_82_20();
  OUTLINED_FUNCTION_40_16();
  v26 = v25 + 1304;
  v73 = *(v25 + 1304);
  v27 = v73();
  if (v27)
  {
    v28 = v27;
    v29 = type metadata accessor for SportsBannerScoreboardView.BadgeView(0);
    v69[1] = v26;
    v70 = v1;
    v30 = v29;

    sub_1E4203CE4();
    sub_1E4203D34();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    *v18 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    *(v18 + *(v30 + 20)) = v28;
    v69[0] = swift_getKeyPath();
    v35 = v18 + *(v15 + 36);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
    v37 = *MEMORY[0x1E697DBB8];
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    v39 = (*(v38 + 104))(&v35[v36], v37);
    *v35 = v69[0];
    v1 = v70;
    if ((*(*v0 + 1760))(v39))
    {
      v40 = 1.0;
    }

    else
    {
      v40 = 0.0;
    }

    sub_1E3741EA0(v18, v24, &qword_1ECF3CF68);
    *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF78) + 36)) = v40;
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF78);
    OUTLINED_FUNCTION_32_2();
    v45 = __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  }

  if (v73)(v45) && (, OUTLINED_FUNCTION_8(), ((*(v50 + 2048))()))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v51 + 1328))())
    {
      OUTLINED_FUNCTION_18();
      v52 = v71;
      sub_1E3F23370();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v52 = v71;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
    v55 = OUTLINED_FUNCTION_121_1();
    __swift_storeEnumTagSinglePayload(v55, v53, 1, v56);
    sub_1E3741EA0(v52, v1, &qword_1ECF29210);
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v54, 1, v8);
  v57 = v1;
  v58 = v76;
  sub_1E3F2B1A4();
  v59 = v24;
  v60 = v74;
  sub_1E3743538(v24, v74, &qword_1ECF3CF70);
  v61 = v75;
  sub_1E3743538(v57, v75, &qword_1ECF3CF60);
  v62 = v72;
  sub_1E3743538(v58, v72, &qword_1ECF3CCF0);
  v63 = v77;
  sub_1E3743538(v60, v77, &qword_1ECF3CF70);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF80);
  sub_1E3743538(v61, v63 + *(v64 + 48), &qword_1ECF3CF60);
  sub_1E3743538(v62, v63 + *(v64 + 64), &qword_1ECF3CCF0);
  sub_1E325F69C(v58, &qword_1ECF3CCF0);
  sub_1E325F69C(v57, &qword_1ECF3CF60);
  sub_1E325F69C(v59, &qword_1ECF3CF70);
  sub_1E325F69C(v62, &qword_1ECF3CCF0);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v65, v66);
  v67 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v67, v68);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F2FD3C()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v61 = v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE68);
  OUTLINED_FUNCTION_0_10();
  v58 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v64 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v65 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE70);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v62 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v59 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE78);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  *v29 = sub_1E42026E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE80);
  v60 = v29;
  sub_1E3F30220();
  if (*(v4 + *(type metadata accessor for SportsBannerScoreboardView(0) + 52)))
  {
    v56 = v19;
    sub_1E3F30BA0();
    sub_1E3F30DCC();
    v53 = v0;
    v57 = v2;
    v30 = v7;
    v31 = *(v14 + 16);
    v32 = OUTLINED_FUNCTION_35_5();
    v31(v32);
    v33 = v58;
    v54 = v1;
    v55 = v12;
    v34 = *(v58 + 16);
    OUTLINED_FUNCTION_33_4();
    v34();
    v35 = v53;
    v36 = OUTLINED_FUNCTION_119_0();
    v31(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE90);
    OUTLINED_FUNCTION_33_4();
    v34();
    v37 = *(v33 + 8);
    v37(v64, v30);
    v38 = *(v14 + 8);
    v39 = v55;
    v38(v56, v55);
    v40 = OUTLINED_FUNCTION_39_0();
    v2 = v57;
    (v37)(v40);
    v38(v65, v39);
    v41 = v59;
    sub_1E3741EA0(v35, v59, &qword_1ECF3CE60);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v59;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v63);
  v43 = v60;
  sub_1E3743538(v60, v2, &qword_1ECF3CE78);
  v44 = v62;
  sub_1E3743538(v41, v62, &qword_1ECF3CE70);
  v45 = v61;
  *v61 = 0;
  *(v45 + 8) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE88);
  sub_1E3743538(v2, v45 + v46[12], &qword_1ECF3CE78);
  sub_1E3743538(v44, v45 + v46[16], &qword_1ECF3CE70);
  v47 = v45 + v46[20];
  *v47 = 0;
  v47[8] = 1;
  v48 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v48, v49);
  sub_1E325F69C(v43, &qword_1ECF3CE78);
  sub_1E325F69C(v44, &qword_1ECF3CE70);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v50, v51);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F30220()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE98);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_6();
  *v1 = sub_1E4201B84();
  *(v1 + 8) = v6;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEA0);
  sub_1E3F304A8();
  v20 = *(v4 + *(type metadata accessor for SportsBannerScoreboardView(0) + 48));
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = v8;
    MEMORY[0x1E6911E60](0);
    goto LABEL_4;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = v8;

LABEL_4:
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    sub_1E3743538(v1, v18, &qword_1ECF3CE98);
    v22 = *(v11 + 16);
    OUTLINED_FUNCTION_141_9();
    v22();
    sub_1E3743538(v18, v21, &qword_1ECF3CE98);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEA8);
    (v22)(v21 + *(v23 + 48), v0, v9);
    v24 = *(v11 + 8);
    v24(v2, v9);
    OUTLINED_FUNCTION_167_0();
    sub_1E325F69C(v25, v26);
    v24(v0, v9);
    OUTLINED_FUNCTION_167_0();
    sub_1E325F69C(v27, v28);
    OUTLINED_FUNCTION_54_0();
    return;
  }

  __break(1u);
}

void sub_1E3F304A8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for SportsBannerScoreboardView(v2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v18[1] = sub_1E3F360A0(*(v1 + *(v6 + 56)));
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_58_1();
  sub_1E3F36458(v7, v8);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1E3F363AC(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E3F3625C;
  *(v11 + 24) = v10;
  v12 = OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  v13 = OUTLINED_FUNCTION_39_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13);
  OUTLINED_FUNCTION_40_13();
  sub_1E3A1558C(v14, v15);
  sub_1E3F291A0(&qword_1EE283760, type metadata accessor for TextViewModel);
  OUTLINED_FUNCTION_33_4();
  sub_1E3A1558C(v16, v17);
  sub_1E4203B34();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F306F8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v69 = v4;
  v70 = v3;
  v68 = v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378);
  OUTLINED_FUNCTION_0_10();
  v62 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v61 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CED0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v67 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v66 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v64 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CED8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_50_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_19_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEE8);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v24);
  v25 = *(type metadata accessor for SportsBannerScoreboardView(0) + 48);
  v63 = v2;
  v26 = *(v2 + v25);
  v27 = sub_1E32AE9B0(v26);
  v28 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_18();
  if (v28 == v70)
  {
    v29 = v70;
    sub_1E3F23370();
    *(v0 + *(v20 + 36)) = 0xBFF0000000000000;
    OUTLINED_FUNCTION_21_1();
    sub_1E3743538(v30, v31, v32);
    OUTLINED_FUNCTION_23_16();
    swift_storeEnumTagMultiPayload();
    sub_1E3F362DC();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_116_12();
    sub_1E4201F44();
    v33 = OUTLINED_FUNCTION_67_0();
    sub_1E325F69C(v33, v34);
  }

  else
  {
    sub_1E3F23370();
    v35 = v64;
    v36 = OUTLINED_FUNCTION_32_0();
    v37(v36);
    OUTLINED_FUNCTION_23_16();
    swift_storeEnumTagMultiPayload();
    sub_1E3F362DC();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_116_12();
    sub_1E4201F44();
    (*(v35 + 8))(v18, v14);
    v29 = v70;
  }

  v38 = sub_1E32AE9B0(v26);
  if (__OFSUB__(v38, 1))
  {
    goto LABEL_11;
  }

  if (v38 - 1 <= v29)
  {
    v43 = 1;
    v42 = v65;
    v40 = v66;
  }

  else
  {
    v39 = v61;
    sub_1E3F30BA0();
    v40 = v66;
    v41 = v39;
    v42 = v65;
    (*(v62 + 32))(v66, v41, v65);
    v43 = 0;
  }

  __swift_storeEnumTagSinglePayload(v40, v43, 1, v42);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v44, v45, v46);
  v47 = v67;
  sub_1E3743538(v40, v67, &qword_1ECF3CED0);
  v48 = v68;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v49, v50, v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CEF8);
  sub_1E3743538(v47, v48 + *(v52 + 48), &qword_1ECF3CED0);
  v53 = OUTLINED_FUNCTION_119_0();
  sub_1E325F69C(v53, v54);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v55, v56);
  v57 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v57, v58);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v59, v60);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F30BA0()
{
  OUTLINED_FUNCTION_26_100();
  if (*(v0 + v1))
  {
    v2 = objc_opt_self();

    sub_1E3756F7C();
    OUTLINED_FUNCTION_2_1();
    v4 = (*(v3 + 2408))();

    v5 = [v2 vui:v4 fontFromTextLayout:?];

    sub_1E3756F7C();
    OUTLINED_FUNCTION_2_1();
    v19 = (*(v6 + 672))();
  }

  else
  {
    v19 = 0;
    v5 = 0;
  }

  sub_1E4201C14();
  v7 = sub_1E4202C24();
  v9 = v8;
  v11 = v10;
  if (v5)
  {
    v12 = v5;
    sub_1E405EEA0();
  }

  OUTLINED_FUNCTION_167_0();
  v13 = sub_1E4202C04();
  v15 = v14;
  v17 = v16;

  sub_1E37434B8(v7, v9, v11 & 1);

  sub_1E39B9138();

  sub_1E37434B8(v13, v15, v17 & 1);
}

void sub_1E3F30DCC()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v4;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v27 = v6;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v24 = v8;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_72_13();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v22 = v10;
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CBF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_3();
  *v3 = sub_1E4201B84();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC00);
  sub_1E3F310C8();
  if (*(v0 + *(type metadata accessor for SportsBannerScoreboardView(0) + 52)) && sub_1E3C27528())
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
    }
  }

  else
  {
    v16 = 0;
  }

  sub_1E3746E10(v13);
  sub_1E374709C(v2);
  OUTLINED_FUNCTION_9_0();
  v18 = sub_1E3A1558C(v17, &qword_1ECF3CBF8);
  OUTLINED_FUNCTION_67_0();
  v19 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_67_0();
  sub_1E37B5FBC(v20);
  OUTLINED_FUNCTION_67_0();
  v21 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v16, v13, v2, v19, v1, v21 & 1, v14, v18, v26);

  (*(v27 + 8))(v1, v28);
  (*(v24 + 8))(v2, v25);
  (*(v22 + 8))(v13, v23);
  sub_1E325F69C(v3, &qword_1ECF3CBF8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F310C8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE38);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_7();
  v15 = type metadata accessor for SportsBannerScoreboardView(0);
  if (*(v2 + *(v15 + 52)))
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
    v17 = v0;
    v18 = 0;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
    v17 = v0;
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
  v19 = OUTLINED_FUNCTION_168();
  sub_1E3741EA0(v19, v20, v21);
  if (*(v2 + *(v15 + 56)))
  {
    sub_1E3F3135C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE40);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  v26 = OUTLINED_FUNCTION_53();
  sub_1E3743538(v26, v27, &qword_1ECF29210);
  v28 = OUTLINED_FUNCTION_13_8();
  sub_1E3743538(v28, v29, &qword_1ECF3CE38);
  OUTLINED_FUNCTION_155_3();
  sub_1E3743538(v30, v31, v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE48);
  sub_1E3743538(v9, v4 + *(v33 + 48), &qword_1ECF3CE38);
  OUTLINED_FUNCTION_141_9();
  sub_1E325F69C(v34, v35);
  OUTLINED_FUNCTION_167_0();
  sub_1E325F69C(v36, v37);
  OUTLINED_FUNCTION_141_9();
  sub_1E325F69C(v38, v39);
  v40 = OUTLINED_FUNCTION_125();
  sub_1E325F69C(v40, v41);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F3135C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v60 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE50);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_2();
  v10 = *v5;
  OUTLINED_FUNCTION_26_100();
  v12 = *(v3 + v11);
  if (v12)
  {
    sub_1E3757238();
    OUTLINED_FUNCTION_30();
    (*(v13 + 1696))();

    j__OUTLINED_FUNCTION_18();
    v55 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_59_34();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_71_13();
    sub_1E3EB9C0C(v14, v15, v16, v17, v18, v19, 0, 2, v20, v49, v50, v51, v52, v53, v54, SHIBYTE(v54), v55);
    v21 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v10, v61, 0, v21 & 1, 0, 0, v1);
    sub_1E375C31C(v61);
    sub_1E3757238();
    OUTLINED_FUNCTION_2_1();
    v23 = (*(v22 + 672))();
  }

  else
  {
    j__OUTLINED_FUNCTION_18();
    v56 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_59_34();
    OUTLINED_FUNCTION_165();
    OUTLINED_FUNCTION_71_13();
    sub_1E3EB9C0C(v24, v25, v26, v27, v28, v29, 0, 2, v30, v49, v50, v51, v52, v53, v54, SHIBYTE(v54), v56);
    v31 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v10, v61, 0, v31 & 1, 0, 0, v1);
    sub_1E375C31C(v61);
    v23 = 0;
  }

  swift_getOpaqueTypeConformance2();
  sub_1E39B9138();

  v32 = OUTLINED_FUNCTION_24_4();
  v33(v32);
  v34 = OUTLINED_FUNCTION_13_8();
  v35(v34);
  *(v0 + *(v57 + 36)) = 257;
  v36 = sub_1E4202764();
  v37 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v36)
  {
    v37 = sub_1E4202774();
  }

  if (v12 && (sub_1E3757238(), OUTLINED_FUNCTION_30(), (*(v38 + 176))(v62), , (v63 & 1) == 0))
  {
    sub_1E4200A54();
    v39 = 0;
    *(&v41 + 1) = v40;
    v58 = v41;
    *(&v43 + 1) = v42;
    v59 = v43;
  }

  else
  {
    v59 = 0u;
    v39 = 1;
    v58 = 0u;
  }

  sub_1E3741EA0(v0, v60, &qword_1ECF3CE58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE40);
  OUTLINED_FUNCTION_134_3();
  *v44 = v37;
  *(v44 + 24) = v58;
  *(v44 + 8) = v59;
  *(v44 + 40) = v39;
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F3181C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_72_13();
  v6 = type metadata accessor for SportsBannerScoreboardView.ScoreView(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE08);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = v0[2];
  v27 = *v0;
  v14 = v27;
  v15 = *(v0 + 8);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[5]) = v14;
  v16 = v6[6];
  _s20ScoreboardViewLayoutCMa();
  sub_1E3743538(&v27, v26, &qword_1ECF29088);
  *(v10 + v16) = sub_1E3757A38();
  *(v10 + v6[7]) = v15;
  sub_1E3F291A0(&qword_1ECF3CE10, type metadata accessor for SportsBannerScoreboardView.ScoreView);
  sub_1E4202ED4();
  sub_1E3F36404();
  if (v13)
  {
    sub_1E3FE28A8();
    v17 = 4;
  }

  else
  {
    sub_1E3FE2854();
    v17 = 3;
  }

  sub_1E4202464();
  sub_1E4202494();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_1E3FE2AC4(v17);
  sub_1E3F35FB4();
  sub_1E3E038E0();

  sub_1E325F69C(v1, &qword_1ECF2E400);
  sub_1E325F69C(v2, &qword_1ECF3CE00);
  if (v13)
  {
    v22 = sub_1E3FE28A8();
  }

  else
  {
    v22 = sub_1E3FE2854();
  }

  v26[0] = v22;
  v26[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  OUTLINED_FUNCTION_7_22();
  swift_getOpaqueTypeConformance2();
  sub_1E3C0E09C();
  sub_1E4203524();

  v24 = OUTLINED_FUNCTION_74();
  v25(v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F31BF0()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v3 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC18) + 44);
  v4 = *(v0 + *(type metadata accessor for SportsBannerScoreboardView.ScoreView(0) + 20));
  if (v4)
  {
    sub_1E3F31E98();
    *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE28) + 52)) = v4;

    sub_1E4200DD4();
    sub_1E4200DC4();
    sub_1E4200DE4();

    sub_1E4203E74();
    sub_1E4200E04();

    sub_1E4200DD4();
    sub_1E4200DC4();
    sub_1E4200DE4();

    sub_1E4203E74();
    sub_1E4200E04();

    v5 = sub_1E4200DB4();

    *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE30) + 36)) = v5;
    v6 = sub_1E4203E64();
    v7 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE20) + 36));
    *v7 = v6;
    v7[1] = v4;
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CE20);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_131_13();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_13();
  sub_1E3A1558C(v16, v17);
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  v18 = OUTLINED_FUNCTION_75();
  sub_1E325F69C(v18, v19);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F31E98()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C558);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v51 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC40);
  OUTLINED_FUNCTION_0_10();
  v50 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v49 = v14;
  OUTLINED_FUNCTION_138();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3746E10(v2);
  v16 = sub_1E42012B4();
  v17 = OUTLINED_FUNCTION_11_6();
  v18(v17);
  v19 = *(v3 + *(type metadata accessor for SportsBannerScoreboardView.ScoreView(0) + 20));
  if (v16)
  {
    if (!v19 || (sub_1E3C27024(), !v20))
    {
    }

    sub_1E32822E0();
    v21 = sub_1E4202C44();
    v23 = v22;
    v25 = v24;
    v26 = objc_opt_self();
    sub_1E3757540();
    OUTLINED_FUNCTION_2_1();
    v28 = (*(v27 + 2408))();

    v29 = [v26 vui:v28 fontFromTextLayout:?];

    if (v29)
    {
      sub_1E405EEA0();
    }

    v39 = sub_1E4202C04();
    v41 = v40;
    v43 = v42;

    sub_1E37434B8(v21, v23, v25 & 1);

    OUTLINED_FUNCTION_131_13();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    sub_1E37434B8(v39, v41, v43 & 1);

    (*(v50 + 16))(v51, v49, v52);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_47_50();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_0_21();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_58_1();
    sub_1E4201F44();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v44, v45, v46);
    swift_storeEnumTagMultiPayload();
    sub_1E3F342F8();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v47, v48);
    (*(v50 + 8))(v49, v52);
  }

  else if (v19)
  {

    sub_1E375796C();
    sub_1E3757E68();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    OUTLINED_FUNCTION_131_13();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    v30 = OUTLINED_FUNCTION_39_0();
    v31(v30);
    (*(v6 + 16))(v51, v1, v53);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_47_50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v32, v33, v34);
    swift_storeEnumTagMultiPayload();
    sub_1E3F342F8();
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v35, v36);
    v37 = OUTLINED_FUNCTION_58_1();
    v38(v37);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3F342F8();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F32654()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v70 = v6;
  v71 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v68 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v66 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_2();
  v19 = type metadata accessor for SportsBannerScoreboardView.BadgeView(0);
  v69 = v0;
  v20 = *(v0 + *(v19 + 20));
  OUTLINED_FUNCTION_42_7();
  if ((*(v21 + 392))())
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for TextBadgeLayout();
    OUTLINED_FUNCTION_20_2();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = (*(*v20 + 488))();
  if (!v23)
  {
    goto LABEL_15;
  }

  v72 = v4;
  v24 = sub_1E373E010(17, v23);

  if (!v24)
  {
    goto LABEL_15;
  }

  if (*v24 != _TtC8VideosUI13TextViewModel || (, sub_1E3C27024(), v26 = v25, , !v26))
  {

LABEL_15:

    goto LABEL_16;
  }

  if (v22)
  {
    v63 = *(*v22 + 1848);

    v28 = v63(v27);

    if (v28)
    {
      v62 = v2;
      OUTLINED_FUNCTION_8();
      v30 = (*(v29 + 672))();

      if (v30)
      {
        sub_1E32822E0();
        sub_1E42071D4();

        sub_1E4202C44();
        (*(v66 + 104))(v16, *MEMORY[0x1E6980F20], v11);
        v60 = *MEMORY[0x1E6980E28];
        v31 = sub_1E42028E4();
        OUTLINED_FUNCTION_2();
        (*(v32 + 104))(v1, v60, v31);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);
        sub_1E4202974();
        OUTLINED_FUNCTION_124();
        sub_1E42029D4();
        sub_1E325F69C(v1, &qword_1ECF335F8);
        (*(v66 + 8))(v16, v11);
        sub_1E4202C04();

        v36 = OUTLINED_FUNCTION_168();
        sub_1E37434B8(v36, v37, v38);

        sub_1E38F08C4(v30);
        v39 = sub_1E4202B94();
        v64 = v40;
        v65 = v39;
        v61 = v41;
        v67 = v42;

        v43 = OUTLINED_FUNCTION_75();
        sub_1E37434B8(v43, v44, v45);

        v46 = *(v19 + 24);
        v47 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC58) + 36));
        v48 = type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0);
        sub_1E3743538(v69 + v46, v47 + *(v48 + 24), &qword_1ECF2A258);
        *v47 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
        swift_storeEnumTagMultiPayload();
        *(v47 + *(v48 + 20)) = v22;
        *v62 = v65;
        *(v62 + 8) = v64;
        *(v62 + 16) = v61 & 1;
        *(v62 + 24) = v67;
        *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC60) + 36)) = v20;
        KeyPath = swift_getKeyPath();
        v50 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CC68) + 36);
        *v50 = KeyPath;
        *(v50 + 8) = 1;

        sub_1E3746E10(v68);
        LOBYTE(KeyPath) = sub_1E42012B4();

        (*(v70 + 8))(v68, v71);
        v51 = (v62 + *(v17 + 36));
        *v51 = (KeyPath & 1) == 0;
        v51[1] = 1;
        sub_1E3741EA0(v62, v72, &qword_1ECF3CC50);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v52, v53, v54, v17);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  else
  {
  }

LABEL_16:
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
}

uint64_t sub_1E3F32D68()
{
  v3 = OUTLINED_FUNCTION_75();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  v6 = sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_6();
  v11 = type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0);
  sub_1E3743538(v0 + *(v11 + 24), v1, &qword_1ECF2A258);
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
  {
    sub_1E325F69C(v1, &qword_1ECF2A258);
    sub_1E42036E4();
    return sub_1E4200DA4();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_8_6();
    v14(v13);
    v15 = OUTLINED_FUNCTION_123_1();
    v16(v15);
    v12 = sub_1E4200DA4();
    (*(v8 + 8))(v2, v6);
  }

  return v12;
}

double sub_1E3F32F3C()
{
  v2 = v0;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3746E10(v1);
  v4 = sub_1E42012B4();
  v5 = OUTLINED_FUNCTION_74();
  v6(v5);
  if (v4)
  {
    v7.n128_f64[0] = j__OUTLINED_FUNCTION_33_15();
    return j_nullsub_1(v7, v8, v9, v10);
  }

  else if (*(v2 + *(type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0) + 20)) && (OUTLINED_FUNCTION_8(), (*(v12 + 176))(v18), (v19 & 1) == 0))
  {
    v15.n128_u64[0] = v18[2];
    v16.n128_u64[0] = v18[3];
    v13.n128_u64[0] = v18[0];
    v14.n128_u64[0] = v18[1];
    j_nullsub_1(v13, v14, v15, v16);
    return 0.0;
  }

  else
  {
    v11 = 0.0;
    OUTLINED_FUNCTION_5_8();
  }

  return v11;
}

void sub_1E3F3307C()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  v27 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  sub_1E4203AF4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_72_13();
  v9 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28[-1] - v14;
  sub_1E3746E10(&v28[-1] - v14);
  (*(v11 + 104))(v2, *MEMORY[0x1E697E6F8], v9);
  OUTLINED_FUNCTION_51_43();
  sub_1E3F291A0(v16, v17);
  v18 = sub_1E4205E14();
  v19 = *(v11 + 8);
  v19(v2, v9);
  v19(v15, v9);
  if (v18)
  {
    v20 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v21 + 104))(v1, v20);
    sub_1E3F291A0(&qword_1ECF2BAB8, MEMORY[0x1E6981998]);
  }

  else
  {
    v22 = 0.0;
    if (*(v3 + *(type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0) + 20)))
    {
      OUTLINED_FUNCTION_8();
      (*(v23 + 552))(v28);
      if ((v29 & 1) == 0)
      {
        v22 = sub_1E3952BE8(v28[0], v28[1], v28[2], v28[3]);
      }
    }

    v24 = *(v27 + 20);
    v25 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v26 + 104))(v7 + v24, v25);
    *v7 = v22;
    v7[1] = v22;
    sub_1E3F291A0(&qword_1EE2893F0, MEMORY[0x1E697EAF0]);
  }

  sub_1E4203BD4();
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3F333AC()
{
  OUTLINED_FUNCTION_9_4();
  v61 = v1;
  v54 = v4;
  v55 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD78);
  OUTLINED_FUNCTION_0_10();
  v58 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_3();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CD98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31_2();
  v18 = *MEMORY[0x1E697E6C8];
  v19 = sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v20 + 104))(v0, v18, v19);
  OUTLINED_FUNCTION_51_43();
  sub_1E3F291A0(v21, v22);
  if (sub_1E4205E84())
  {
    v51 = v9;
    v52 = v16;
    v53 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDA0);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_82();
    sub_1E3A1558C(v23, v24);
    sub_1E3A1558C(&qword_1EE23ACD8, &qword_1ECF2A1F8);
    OUTLINED_FUNCTION_141_9();
    sub_1E4202FA4();
    sub_1E325F69C(v0, &qword_1ECF2A1F8);
    v25 = *(v61 + *(type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(0) + 20));
    if (v25)
    {
      (*(*v25 + 328))();
      v27 = v26;
    }

    else
    {
      v27 = 1;
    }

    sub_1E4203DA4();
    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_17();
      if (v28)
      {
        sub_1E4206804();
        v29 = sub_1E42026D4();
        v54 = v3;
        v30 = v29;
        OUTLINED_FUNCTION_108();

        v3 = v54;
      }
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_71_13();
    sub_1E42015C4();
    v31 = v57;
    v32 = OUTLINED_FUNCTION_35_5();
    v33(v32);
    memcpy((v31 + *(v51 + 36)), v62, 0x70uLL);
    sub_1E3F32F3C();
    OUTLINED_FUNCTION_3();
    v34 = sub_1E4202734();
    sub_1E3741EA0(v31, v3, &qword_1ECF3CD80);
    v35 = (v3 + *(v56 + 36));
    *v35 = v34;
    OUTLINED_FUNCTION_11_4(v35);
    v36 = v53;
    if (!v25 || (v37 = (*(*v25 + 744))()) == 0)
    {
      v37 = [objc_opt_self() clearColor];
    }

    v38 = v37;
    v39 = v52;
    v40 = sub_1E38F08C4(v37);

    LOBYTE(v38) = sub_1E4202734();
    sub_1E3741EA0(v3, v15, &qword_1ECF3CD88);
    v41 = &v15[*(v60 + 36)];
    *v41 = v40;
    v41[8] = v38;
    v42 = sub_1E3F32D68();
    v43 = sub_1E4202734();
    v44 = OUTLINED_FUNCTION_8_6();
    sub_1E3741EA0(v44, v45, v46);
    v47 = v36 + *(v39 + 36);
    *v47 = v42;
    *(v47 + 8) = v43;
    sub_1E3F3307C();
    v49 = v48;
    sub_1E3741EA0(v36, v55, &qword_1ECF3CD98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDB0);
    OUTLINED_FUNCTION_134_3();
    *v50 = v49;
    *(v50 + 8) = 256;
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3F339AC()
{
  v1 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_32_0();
  sub_1E3F33A70();
  sub_1E3F35D18();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  return sub_1E325F69C(v0, &unk_1ECF3CDB8);
}

void sub_1E3F33A70()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_2();
  v3 = sub_1E373F6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CDF0);
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1E3A1558C(v4, v5);
    sub_1E4202ED4();
    v6 = OUTLINED_FUNCTION_119_0();
    sub_1E3743538(v6, v7, &qword_1ECF3CDE0);
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    sub_1E3F35E78();
    sub_1E4201F44();
    sub_1E325F69C(v0, &qword_1ECF3CDE0);
  }

  else
  {
    OUTLINED_FUNCTION_155_3();
    v8();
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    sub_1E3F35E78();
    OUTLINED_FUNCTION_1_11();
    sub_1E3A1558C(v9, v10);
    OUTLINED_FUNCTION_125_1();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3F33C78()
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E3746E10(v0);
  v4 = sub_1E3B02A04();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_74();
  v5(v6);
  if (v4)
  {
    OUTLINED_FUNCTION_125_12();

    sub_1E37588F4(v12, v7);
    sub_1E37588C4(v12);
    return *&v12[5];
  }

  else
  {
    sub_1E3746E10(v0);
    v9 = sub_1E3B0352C();
    v10 = OUTLINED_FUNCTION_74();
    v5(v10);
    OUTLINED_FUNCTION_125_12();

    sub_1E37588F4(v12, v11);
    sub_1E37588C4(v12);
    if (v9)
    {
      return *&v12[3];
    }

    else
    {
      return *&v12[1];
    }
  }
}

__n128 sub_1E3F33DD8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *sub_1E3E5FD88();
  v3 = sub_1E38F08C4(v2);

  sub_1E3F33C78();
  sub_1E3F33C78();
  sub_1E4203DA4();
  sub_1E4200D94();
  *&v9[6] = v10;
  *&v9[22] = v11;
  *&v9[38] = v12;
  OUTLINED_FUNCTION_125_12();

  sub_1E37588F4(v13, v4);
  v5 = sub_1E3F33C78();
  v7 = sub_1E3758798(v5, v6);
  sub_1E37588C4(v13);
  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 10) = *v9;
  *(a1 + 26) = *&v9[16];
  result = *&v9[32];
  *(a1 + 42) = *&v9[32];
  *(a1 + 56) = *(&v12 + 1);
  *(a1 + 64) = 0;
  *(a1 + 72) = v7;
  return result;
}

double sub_1E3F33EDC@<D0>(uint64_t a1@<X8>)
{
  sub_1E4202B44();
  v6.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMidX(v6);
  v7.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v7);
  OUTLINED_FUNCTION_76_23();
  sub_1E4202B24();
  v8.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinX(v8);
  v9.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMaxY(v9);
  OUTLINED_FUNCTION_76_23();
  sub_1E4202B34();
  v10.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMaxX(v10);
  v11.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMaxY(v11);
  OUTLINED_FUNCTION_76_23();
  sub_1E4202B34();
  v12.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMidX(v12);
  v13.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v13);
  OUTLINED_FUNCTION_76_23();
  sub_1E4202B34();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1E3F33FB4@<D0>(uint64_t a1@<X8>)
{
  sub_1E3F33EDC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1E3F34000())(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *v0 = v1;
  v1[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3F3406C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F35F60();
  v0 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDE4440](v0);
}

uint64_t sub_1E3F340C4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F35F60();
  v0 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDE43F0](v0);
}

uint64_t sub_1E3F3411C(uint64_t a1)
{
  v2 = sub_1E3F35F60();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1E3F341AC()
{
  result = qword_1ECF3CBE0;
  if (!qword_1ECF3CBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CBC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CBB8);
    sub_1E3A1558C(&qword_1ECF3CBD8, &qword_1ECF3CBB8);
    swift_getOpaqueTypeConformance2();
    sub_1E3F291A0(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CBE0);
  }

  return result;
}

unint64_t sub_1E3F342F8()
{
  result = qword_1ECF3CC48;
  if (!qword_1ECF3CC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC38);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CC48);
  }

  return result;
}

uint64_t sub_1E3F34440()
{
  OUTLINED_FUNCTION_109_9();
  *v0 = swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3F34494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1E3741EA0(a1, a6, &qword_1ECF28BB8);
  v12 = type metadata accessor for SportsBannerScoreboardView(0);
  v13 = v12[5];
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  sub_1E3741EA0(a2, a6 + v12[6], &qword_1ECF2D758);
  sub_1E3741EA0(a3, a6 + v12[7], &qword_1ECF29BF8);
  v14 = (a6 + v12[8]);
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
  OUTLINED_FUNCTION_20_113();
  sub_1E3F291A0(v15, v16);
  OUTLINED_FUNCTION_39_0();
  *v14 = sub_1E42010C4();
  v14[1] = v17;
  v18 = (a6 + v12[9]);
  type metadata accessor for SportsVoiceOverViewModel();
  OUTLINED_FUNCTION_19_130();
  sub_1E3F291A0(v19, v20);
  *v18 = sub_1E42010C4();
  v18[1] = v21;
  v22 = (a6 + v12[10]);
  type metadata accessor for SportsCanonicalBannerProxy(0);
  OUTLINED_FUNCTION_52_48();
  sub_1E3F291A0(v23, v24);
  OUTLINED_FUNCTION_125();
  result = sub_1E42010C4();
  *v22 = result;
  v22[1] = v26;
  *(a6 + v12[11]) = a4;
  *(a6 + v12[12]) = a5;
  *(a6 + v12[13]) = a7;
  *(a6 + v12[14]) = a8;
  *(a6 + v12[15]) = a9;
  return result;
}

uint64_t sub_1E3F3474C()
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v1, v2, MEMORY[0x1E697DCC0]);
  OUTLINED_FUNCTION_39_6();
  if (!(!v4 & v3))
  {
    sub_1E3F35B20(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    OUTLINED_FUNCTION_39_6();
    if (!(!v4 & v3))
    {
      sub_1E38FED58();
      OUTLINED_FUNCTION_39_6();
      if (!(!v4 & v3))
      {
        sub_1E3F35B20(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v4 & v3))
        {
          sub_1E3867038();
          OUTLINED_FUNCTION_39_6();
          if (!(!v4 & v3))
          {
            sub_1E3F349D0();
            OUTLINED_FUNCTION_39_6();
            if (!(!v4 & v3))
            {
              sub_1E3F34A64();
              OUTLINED_FUNCTION_39_6();
              if (!(!v4 & v3))
              {
                OUTLINED_FUNCTION_18_121();
                sub_1E3F35B20(319, v5, v6, MEMORY[0x1E69E6720]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v4 & v3))
                {
                  OUTLINED_FUNCTION_18_121();
                  sub_1E3F35B20(319, v7, v8, MEMORY[0x1E69E62F8]);
                  if (v10 > 0x3F)
                  {
                    return v9;
                  }

                  else
                  {
                    sub_1E3F35B20(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
                    OUTLINED_FUNCTION_39_6();
                    if (!(!v4 & v3))
                    {
                      sub_1E3F35B20(319, &qword_1ECF36B08, _s20ScoreboardViewLayoutCMa, MEMORY[0x1E69E6720]);
                      OUTLINED_FUNCTION_39_6();
                      if (!(!v4 & v3))
                      {
                        OUTLINED_FUNCTION_72();
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
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

  return v0;
}

void sub_1E3F349D0()
{
  if (!qword_1ECF3CC70)
  {
    type metadata accessor for SportsVoiceOverViewModel();
    sub_1E3F291A0(&qword_1ECF3CA18, type metadata accessor for SportsVoiceOverViewModel);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3CC70);
    }
  }
}

void sub_1E3F34A64()
{
  if (!qword_1ECF3CC78)
  {
    type metadata accessor for SportsCanonicalBannerProxy(255);
    sub_1E3F291A0(&qword_1ECF3CA20, type metadata accessor for SportsCanonicalBannerProxy);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3CC78);
    }
  }
}

void sub_1E3F34B68()
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_18_121();
    sub_1E3F35B20(319, v3, v4, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      _s20ScoreboardViewLayoutCMa();
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3F34C68()
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ViewModel();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_50_46();
      sub_1E3F35B20(319, v4, v5, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_68_31();
    return OUTLINED_FUNCTION_133_10(v7);
  }
}

void __swift_store_extra_inhabitant_index_27Tm()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_155_1();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

void sub_1E3F34EC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v7, v8, MEMORY[0x1E697DCC0]);
  if (v9 <= 0x3F)
  {
    sub_1E3F35B20(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_72();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_165();
    }
  }
}

unint64_t sub_1E3F34F8C()
{
  result = qword_1ECF3CC88;
  if (!qword_1ECF3CC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC90);
    sub_1E3F2C1A0();
    sub_1E3F2C310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CC88);
  }

  return result;
}

unint64_t sub_1E3F35018()
{
  result = qword_1ECF3CCA8;
  if (!qword_1ECF3CCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CB98);
    sub_1E3F35D48(&qword_1ECF3CCB0, &qword_1ECF3CB90, &unk_1E42DE878, sub_1E3F350D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCA8);
  }

  return result;
}

unint64_t sub_1E3F350D0()
{
  result = qword_1ECF3CCB8;
  if (!qword_1ECF3CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CCC0);
    sub_1E3F291A0(qword_1EE27C190, type metadata accessor for BaseballClockView);
    sub_1E3F3518C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCB8);
  }

  return result;
}

unint64_t sub_1E3F3518C()
{
  result = qword_1ECF3CCC8;
  if (!qword_1ECF3CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CCD0);
    type metadata accessor for SportsClockView(255);
    sub_1E3F291A0(qword_1EE2800B8, type metadata accessor for SportsClockView);
    swift_getOpaqueTypeConformance2();
    sub_1E38678C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCC8);
  }

  return result;
}

unint64_t sub_1E3F35278()
{
  result = qword_1ECF3CCD8;
  if (!qword_1ECF3CCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CCE0);
    swift_getOpaqueTypeConformance2();
    sub_1E3F2D314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCD8);
  }

  return result;
}

unint64_t sub_1E3F3531C()
{
  result = qword_1ECF3CCE8;
  if (!qword_1ECF3CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CCF0);
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1ECF3CB60, &qword_1ECF3CB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCE8);
  }

  return result;
}

unint64_t sub_1E3F353EC()
{
  result = qword_1ECF3CCF8;
  if (!qword_1ECF3CCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCF8);
  }

  return result;
}

unint64_t sub_1E3F35508()
{
  result = qword_1ECF3CD08;
  if (!qword_1ECF3CD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD10);
    sub_1E3F3558C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD08);
  }

  return result;
}

unint64_t sub_1E3F3558C()
{
  result = qword_1ECF3CD18;
  if (!qword_1ECF3CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC50);
    sub_1E3F35618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD18);
  }

  return result;
}

unint64_t sub_1E3F35618()
{
  result = qword_1ECF3CD20;
  if (!qword_1ECF3CD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC68);
    sub_1E3F356D0();
    sub_1E3A1558C(&qword_1EE2887C0, &qword_1ECF2A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD20);
  }

  return result;
}

unint64_t sub_1E3F356D0()
{
  result = qword_1ECF3CD28;
  if (!qword_1ECF3CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC60);
    sub_1E3F3575C();
    sub_1E3F35840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD28);
  }

  return result;
}

unint64_t sub_1E3F3575C()
{
  result = qword_1ECF3CD30;
  if (!qword_1ECF3CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC58);
    sub_1E3F357E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD30);
  }

  return result;
}

unint64_t sub_1E3F357E8()
{
  result = qword_1ECF688B0;
  if (!qword_1ECF688B0)
  {
    type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF688B0);
  }

  return result;
}

unint64_t sub_1E3F35840()
{
  result = qword_1ECF688B8;
  if (!qword_1ECF688B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF688B8);
  }

  return result;
}

unint64_t sub_1E3F35894()
{
  result = qword_1ECF3CD38;
  if (!qword_1ECF3CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD40);
    sub_1E3F35920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD38);
  }

  return result;
}

unint64_t sub_1E3F35920()
{
  result = qword_1ECF3CD48;
  if (!qword_1ECF3CD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD50);
    sub_1E3A1558C(&qword_1ECF3CD58, &unk_1ECF3CD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD48);
  }

  return result;
}

void sub_1E3F35A20()
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3F35B20(319, qword_1EE27EF08, type metadata accessor for TextBadgeLayout, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_50_46();
      sub_1E3F35B20(319, v4, v5, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3F35B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3F35B84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      OUTLINED_FUNCTION_68_31();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1E3F35C3C()
{
  result = qword_1ECF68A50;
  if (!qword_1ECF68A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF68A50);
  }

  return result;
}

unint64_t sub_1E3F35C94()
{
  result = qword_1ECF68A58[0];
  if (!qword_1ECF68A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF68A58);
  }

  return result;
}

uint64_t sub_1E3F35D48(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3F35DC0()
{
  result = qword_1ECF3CDC8;
  if (!qword_1ECF3CDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CDD0);
    sub_1E3F35E78();
    sub_1E3A1558C(&qword_1ECF3CDE8, &unk_1ECF3CDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CDC8);
  }

  return result;
}

unint64_t sub_1E3F35E78()
{
  result = qword_1ECF3CDD8;
  if (!qword_1ECF3CDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CDE0);
    sub_1E3A1558C(&qword_1ECF3CDE8, &unk_1ECF3CDF0);
    sub_1E3F291A0(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CDD8);
  }

  return result;
}

unint64_t sub_1E3F35F60()
{
  result = qword_1ECF68BE0[0];
  if (!qword_1ECF68BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF68BE0);
  }

  return result;
}

unint64_t sub_1E3F35FB4()
{
  result = qword_1ECF3CE18;
  if (!qword_1ECF3CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CE00);
    sub_1E3F291A0(&qword_1ECF3CE10, type metadata accessor for SportsBannerScoreboardView.ScoreView);
    sub_1E3F291A0(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CE18);
  }

  return result;
}

uint64_t sub_1E3F360A0(unint64_t a1)
{
  v1 = a1;
  result = sub_1E32AE9B0(a1);
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v27 = v1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x1E6911E60](v4, v1);
      v10 = result;
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF00);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      v1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1E3F3625C()
{
  v0 = type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_13_8();

  sub_1E3F306F8();
}

unint64_t sub_1E3F362DC()
{
  result = qword_1ECF3CEF0;
  if (!qword_1ECF3CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CEE0);
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1ECF2E7A0, &qword_1ECF2E7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CEF0);
  }

  return result;
}

uint64_t sub_1E3F363AC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

uint64_t sub_1E3F36404()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1E3F36458(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E3F364B0()
{
  result = qword_1ECF3CFC8;
  if (!qword_1ECF3CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFB0);
    sub_1E3F35278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CFC8);
  }

  return result;
}

unint64_t sub_1E3F3653C()
{
  result = qword_1ECF3CFD8;
  if (!qword_1ECF3CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFB0);
    sub_1E3F364B0();
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE288890, &qword_1ECF2F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CFD8);
  }

  return result;
}

unint64_t sub_1E3F36630()
{
  result = qword_1ECF3CFE8;
  if (!qword_1ECF3CFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CF98);
    sub_1E3F366BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CFE8);
  }

  return result;
}

unint64_t sub_1E3F366BC()
{
  result = qword_1ECF3CFF0;
  if (!qword_1ECF3CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFE0);
    sub_1E3F3531C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CFF0);
  }

  return result;
}

unint64_t sub_1E3F36750()
{
  result = qword_1ECF3D000;
  if (!qword_1ECF3D000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CF98);
    sub_1E3F36630();
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE288890, &qword_1ECF2F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D000);
  }

  return result;
}

unint64_t sub_1E3F36844()
{
  result = qword_1ECF3D010;
  if (!qword_1ECF3D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CDB0);
    sub_1E3F368FC();
    sub_1E3A1558C(&qword_1ECF3D048, &unk_1ECF3D050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D010);
  }

  return result;
}

unint64_t sub_1E3F368FC()
{
  result = qword_1ECF3D018;
  if (!qword_1ECF3D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD98);
    sub_1E3F369B4();
    sub_1E3A1558C(&qword_1ECF3D038, &unk_1ECF3D040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D018);
  }

  return result;
}

unint64_t sub_1E3F369B4()
{
  result = qword_1ECF3D020;
  if (!qword_1ECF3D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD90);
    sub_1E3F36A6C();
    sub_1E3A1558C(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D020);
  }

  return result;
}

unint64_t sub_1E3F36A6C()
{
  result = qword_1ECF3D028;
  if (!qword_1ECF3D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD88);
    sub_1E3F36AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D028);
  }

  return result;
}

unint64_t sub_1E3F36AF8()
{
  result = qword_1ECF3D030;
  if (!qword_1ECF3D030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CDA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8);
    sub_1E3A1558C(&qword_1ECF3CDA8, &qword_1ECF3CDA0);
    sub_1E3A1558C(&qword_1EE23ACD8, &qword_1ECF2A1F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D030);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP06VideosB0E23accessibilityIdentifier3key8locationQrAD019SportsAccessibilityF0V3KeyO_AI8LocationOtFQOyAA15ModifiedContentVyAcAE0E7Element8childrenQrAA0J13ChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA6SpacerV_AA0C8ThatFitsVyAWyAUyAA7ForEachVySaySi6offset_AD04TextC5ModelC7elementtGA4_AWyAA012_ConditionalN0VyAOyAD11TextFactoryO08makeTextC09viewModel15preferredLayout15textLayoutStateQrA4__AD10TextLayoutCSgAD15TextLayoutStateOtFZQOy_Qo_AA21_TraitWritingModifierVyAA019LayoutPriorityTraitK0VGGA20_G_AcDE9tintColoryQrSo7UIColorCSgFQOyAA4TextV_Qo_SgtGGG_A20_tGGAWyA34__AcDE18applyingTextLayout_15dynamicTypeSize15layoutDirection11layoutState19colorSchemeContrast18reduceTransparencyQrA17__AA15DynamicTypeSizeOAA15LayoutDirectionOA19_AA19ColorSchemeContrastOSbtFQOyAUyAWyA20_Sg_AOyAOyAcDEA28_yQrA31_FQOyAD12ImageFactoryO9makeImage4from14builderContextA13_13isHighlighted11onImageLoadQrAD0C5ModelC_AD19ImageBuilderContextVAD11ImageLayoutCSgSbyAD20AsyncImageLoadResultVcSgtFZQOy_Qo__Qo_AA16_FixedSizeLayoutVGAA14_PaddingLayoutVGSgtGG_Qo_tGSgAYtGG_Qo_AA0J18AttachmentModifierVG_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_40_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  a4();
  return OUTLINED_FUNCTION_53_44();
}

uint64_t OUTLINED_FUNCTION_53_44()
{

  return swift_getOpaqueTypeConformance2();
}

double OUTLINED_FUNCTION_83_18()
{

  return sub_1E3952BE0(v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_128_11()
{
}

uint64_t OUTLINED_FUNCTION_133_10@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3F36DEC()
{
  v0 = sub_1E4207784();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3F36E38(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6F74617261706573;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3F36F58(char a1)
{
  sub_1E4207B44();
  sub_1E3F36E38(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3F36FC4(uint64_t a1, char a2)
{
  sub_1E3F36E38(a2);
  sub_1E4206014();
}

uint64_t sub_1E3F37020(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3F36E38(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3F37080@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F36DEC();
  *a1 = result;
  return result;
}

unint64_t sub_1E3F370B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3F36E38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3F370DC(uint64_t a1)
{
  v142 = sub_1E3811878();
  v2 = *v142;
  v3 = v142[1];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x210);

  v5 = (v4)(v202);
  v7 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v191 = *v7;
  sub_1E38C5C90(v2, v3, 0xD000000000000023, 0x80000001E4289250);
  *v7 = v191;
  v5(v202, 0);
  v8 = sub_1E40D7F48();
  v9 = *v8;
  v10 = v8[1];

  v19 = OUTLINED_FUNCTION_10_148(v11, v12, v13, v14, v15, v16, v17, v18, v123, v133, v142, a1, v162, "collection-header-element-kind", "etted-separator-element-kind", v191, v202[0]);
  v20 = (v4)(v19);
  v22 = v21;
  swift_isUniquelyReferenced_nonNull_native();
  v192 = *v22;
  sub_1E38C5C90(v9, v10, 0xD00000000000001CLL, 0x80000001E42893B0);
  *v22 = v192;
  v20(v202, 0);
  v23 = sub_1E3C5FE9C();
  v24 = *v23;
  v25 = v23[1];

  v34 = OUTLINED_FUNCTION_10_148(v26, v27, v28, v29, v30, v31, v32, v33, v124, v134, v143, v153, 0xD00000000000001CLL, v172, v181, v192, v202[0]);
  (v4)(v34);
  OUTLINED_FUNCTION_11_161();
  v193 = *v4;
  v35 = sub_1E38C5C90(v24, v25, 0xD00000000000001BLL, 0x80000001E42893D0);
  OUTLINED_FUNCTION_2_222(v35, v36, v37, v38, v39, v40, v41, v42, v125, 0xD00000000000001BLL, v144, v154, v163, v173, v182, v193);
  ("etted-separator-element-kind")();
  type metadata accessor for CollectionRichHeaderView();
  swift_getObjCClassFromMetadata();
  v43 = sub_1E4205ED4();

  v44 = sub_1E4205ED4();

  OUTLINED_FUNCTION_9_161(v45, sel_vui_registerClass_forSupplementaryViewOfKind_withReuseIdentifier_);

  type metadata accessor for LeagueStandingsLegendFooter();
  swift_getObjCClassFromMetadata();
  v46 = sub_1E4205ED4();

  v47 = sub_1E4205ED4();

  OUTLINED_FUNCTION_9_161(v48, sel_vui_registerClass_forSupplementaryViewOfKind_withReuseIdentifier_);

  type metadata accessor for AskToBuyListHeader();
  swift_getObjCClassFromMetadata();
  v49 = v135;
  v50 = sub_1E4205ED4();

  v51 = sub_1E4205ED4();

  OUTLINED_FUNCTION_9_161(v52, &selRef_prewarmWithConfigCachePolicy_ + 2);

  v53 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0);
  v62 = OUTLINED_FUNCTION_10_148(v54, v55, v56, v57, v58, v59, v60, v61, v126, v135, v145, v155, v164, v174, v183, v194, v202[0]);
  v53(v62);
  OUTLINED_FUNCTION_11_161();
  OUTLINED_FUNCTION_14_156();
  v63 = sub_1E3E6C880(v49, 0x80000001E42893D0, 146);
  OUTLINED_FUNCTION_2_222(v63, v64, v65, v66, v67, v68, v69, v70, v127, v136, v146, v156, v165, v175, v184, v195);
  v71 = (v50)();
  v79 = OUTLINED_FUNCTION_10_148(v71, v72, v73, v74, v75, v76, v77, v78, v128, v137, v147, v157, v166, v176, v185, v196, v202[0]);
  v53(v79);
  OUTLINED_FUNCTION_11_161();
  OUTLINED_FUNCTION_14_156();
  v80 = OUTLINED_FUNCTION_22_90();
  v82 = sub_1E3E6C880(v80, v81, 138);
  OUTLINED_FUNCTION_2_222(v82, v83, v84, v85, v86, v87, v88, v89, v129, v138, v148, v158, v167, v177, v186, v197);
  v90 = (v50)();
  v98 = OUTLINED_FUNCTION_10_148(v90, v91, v92, v93, v94, v95, v96, v97, v130, v139, v149, v159, v168, v178, v187, v198, v202[0]);
  v53(v98);
  OUTLINED_FUNCTION_11_161();
  OUTLINED_FUNCTION_14_156();
  v99 = OUTLINED_FUNCTION_22_90();
  v101 = sub_1E3E6C880(v99, v100, 139);
  OUTLINED_FUNCTION_2_222(v101, v102, v103, v104, v105, v106, v107, v108, v131, v140, v150, v160, v169, v179, v188, v199);
  v109 = (v50)();
  v117 = OUTLINED_FUNCTION_10_148(v109, v110, v111, v112, v113, v114, v115, v116, v132, v141, v151, v161, v170, v180, v189, v200, v202[0]);
  v119 = v118(v117);
  v121 = v120;
  swift_isUniquelyReferenced_nonNull_native();
  v201 = *v121;
  sub_1E3E6C880(v171, v190 | 0x8000000000000000, 77);
  *v121 = v201;
  return v119(v202, 0);
}

void sub_1E3F3758C()
{
  type metadata accessor for GradientBackgroundDecorationView();
  swift_getObjCClassFromMetadata();
  v0 = sub_1E4205ED4();
  v1 = OUTLINED_FUNCTION_1_256();
  [v1 v2];

  type metadata accessor for ColorBackgroundDecorationView();
  swift_getObjCClassFromMetadata();
  v3 = sub_1E4205ED4();
  v4 = OUTLINED_FUNCTION_1_256();
  [v4 v5];

  type metadata accessor for ColorBackgroundSeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v6 = sub_1E4205ED4();
  v7 = OUTLINED_FUNCTION_1_256();
  [v7 v8];

  type metadata accessor for LeadingSeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v9 = sub_1E4205ED4();
  v10 = OUTLINED_FUNCTION_1_256();
  [v10 v11];

  type metadata accessor for InsettedSeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v12 = sub_1E4205ED4();
  v13 = OUTLINED_FUNCTION_1_256();
  [v13 v14];

  type metadata accessor for SeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v15 = sub_1E4205ED4();
  v16 = OUTLINED_FUNCTION_1_256();
  [v16 v17];

  type metadata accessor for BackgroundGradientWithTopSeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v20 = sub_1E4205ED4();
  v18 = OUTLINED_FUNCTION_1_256();
  [v18 v19];
}

id sub_1E3F3778C@<X0>(const void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for CollectionViewModel();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
  }

  memcpy(__dst, a1, sizeof(__dst));
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x440);
  sub_1E3F383E4(a1, v22);
  v9 = OUTLINED_FUNCTION_21_102();
  v10 = v8(v9);
  v11 = OUTLINED_FUNCTION_21_102();
  v13 = v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = v10;
  *(inited + 40) = v13;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v22[0] = MEMORY[0x1E69E7CC0];
  v15 = v13;
  result = v10;
  v17 = result;
  for (i = 0; ; ++i)
  {
    if (i == 4)
    {
      swift_setDeallocating();
      sub_1E3F38384();
      sub_1E3280A90(0, &qword_1EE23AEC0);
      v21 = sub_1E42062A4();

      [a2 setBoundarySupplementaryItems_];

      sub_1E3F37A14(a2, v7);

      return memcpy(a3, __dst, 0xB0uLL);
    }

    if (i > 3)
    {
      break;
    }

    v19 = *(inited + 8 * i + 32);
    if (v19)
    {
      v20 = v19;
      MEMORY[0x1E6910BF0]();
      if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      result = sub_1E4206324();
    }
  }

  __break(1u);
  return result;
}

void sub_1E3F37A14(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v31 = 0u;
    v32 = 0u;
    goto LABEL_8;
  }

  LOBYTE(v30) = 13;
  (*(*a2 + 776))(&v31, &v30, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!*(&v32 + 1))
  {
LABEL_8:
    sub_1E325F748(&v31, &unk_1ECF296E0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v4 = sub_1E3F36DEC();
  if (v4 == 8)
  {
    v4 = 0;
  }

LABEL_10:
  sub_1E3F36E38(v4);
  v6 = v5;
  OUTLINED_FUNCTION_13_158();
  if (v7 == 0xD000000000000016 && v9 == v8)
  {

    goto LABEL_18;
  }

  v11 = v7;
  sub_1E42079A4();
  OUTLINED_FUNCTION_64_1();
  if (v2 & 1) != 0 || (*sub_1E41C83E4())
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000023 && v18 == v6)
  {

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_174();
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000012 && v20 == v6)
  {

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_174();
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000010 && v22 == v6)
  {

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_174();
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000011 && v24 == v6)
  {

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_174();
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  if (v11 == 0x6F74617261706573 && v6 == 0xE900000000000072)
  {

    goto LABEL_18;
  }

  sub_1E42079A4();
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000022 && v27 == v6)
  {

    goto LABEL_18;
  }

  v29 = OUTLINED_FUNCTION_8_174();

  if (v29)
  {
LABEL_18:
    v12 = objc_opt_self();
    v13 = sub_1E4205ED4();
    v14 = [v12 backgroundDecorationItemWithElementKind_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E4298880;
    *(v15 + 32) = v14;
    sub_1E3280A90(0, &qword_1EE23AF20);
    v16 = v14;
    v17 = sub_1E42062A4();

    [a1 setDecorationItems_];
  }
}

id sub_1E3F37E24(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CollectionViewModel();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v68 = a1;
  v8 = *(*v6 + 968);

  v10 = v8(v9);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  OUTLINED_FUNCTION_85();
  v14 = *(v13 + 98);
  v15 = (*(v12 + 464))();
  v16 = sub_1E3AE003C(v14, v15);
  v18 = v17;

  if (!v18)
  {
LABEL_9:

LABEL_10:

    v21 = 0;
    goto LABEL_11;
  }

  if (v16 == a2 && v18 == a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_123_1();
    v20 = sub_1E42079A4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_85();
  v36 = (*(v35 + 512))();
  v37 = OUTLINED_FUNCTION_123_1();
  sub_1E37D26AC(v37, v38, v36);
  v40 = v39;

  if (!v40)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_123_1();
  v41 = sub_1E4205ED4();
  v42 = sub_1E4205ED4();

  v43 = sub_1E41FE7E4();
  v21 = [v68 vui:v41 dequeueReusableSupplementaryViewOfKind:v42 withReuseIdentifier:v43 forIndexPath:?];

  v44 = v21;
  v45 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  memset(v70, 0, 40);
  v46 = v45;
  v47 = sub_1E393D9C4(v11, v21, v70, 0);

  sub_1E325F748(v70, &qword_1ECF296C0);
LABEL_11:
  v22 = *(*v7 + 992);

  v24 = v22(v23);
  if (v24)
  {
    v25 = v24;
    OUTLINED_FUNCTION_85();
    v28 = *(v27 + 98);
    v29 = (*(v26 + 488))();
    v30 = sub_1E3AE003C(v28, v29);
    v32 = v31;

    if (v32)
    {
      if (v30 == a2 && v32 == a3)
      {
      }

      else
      {
        OUTLINED_FUNCTION_123_1();
        v34 = sub_1E42079A4();

        if ((v34 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_85();
      v49 = (*(v48 + 512))();
      v50 = OUTLINED_FUNCTION_123_1();
      sub_1E37D26AC(v50, v51, v49);
      v53 = v52;

      if (v53)
      {
        OUTLINED_FUNCTION_123_1();
        v54 = sub_1E4205ED4();
        v55 = sub_1E4205ED4();

        v56 = sub_1E41FE7E4();
        v57 = [v68 vui:v54 dequeueReusableSupplementaryViewOfKind:v55 withReuseIdentifier:v56 forIndexPath:?];

        v58 = v57;
        sub_1E38BAE74(v70);
        v59 = *v70;
        v60 = sub_1E407F528(v68);
        v62 = v61;
        v63 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v69[3] = &type metadata for CollectionViewCellContext;
        v69[4] = &off_1F5D621F8;
        v64 = swift_allocObject();
        v69[0] = v64;
        *(v64 + 16) = v59;
        *(v64 + 24) = v60;
        *(v64 + 32) = v62;
        *(v64 + 40) = *&v70[24];
        *(v64 + 55) = *&v70[39];
        v65 = v63;
        v66 = sub_1E393D9C4(v25, v57, v69, 0);

        sub_1E325F748(v69, &qword_1ECF296C0);
        return v57;
      }
    }

LABEL_18:
  }

  return v21;
}

uint64_t sub_1E3F38384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D060);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3F383E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DocumentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CollectionDecorationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3F38600()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3C2D4E8(4);
  sub_1E37BD068();
  v140[0] = 2;
  LOBYTE(v167) = 7;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_13_159();
  OUTLINED_FUNCTION_12_147();
  v2 = OUTLINED_FUNCTION_11_162();
  LOBYTE(v141) = v145;
  v10 = OUTLINED_FUNCTION_1_257(v2, v3, v4, v5, v6, v7, v8, v9, *v140);
  sub_1E3C2FCB8(v10, v11);
  OUTLINED_FUNCTION_9_162();
  OUTLINED_FUNCTION_36();
  v20 = OUTLINED_FUNCTION_30_3(v12, v13, v14, v15, v16, v17, v18, v19, *v140);
  v21(v20, 48);

  OUTLINED_FUNCTION_0_36();
  v23 = *(v22 + 1792);

  v23(10);

  v24 = *(v1 + 104);

  v25 = *sub_1E3E5FD88();
  v26 = *(*v24 + 680);
  v27 = v25;
  v26(v25);

  v140[8] = 0;
  OUTLINED_FUNCTION_10_149();
  v28 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_7_200();
  v29 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_4_222(v29, v30, v31, v32, v33, v34, v35, v36, 0x408E000000000000, *&v140[8], *&v140[16], *&v140[24], *&v140[32], *&v140[40], *&v140[48], *&v140[56], *&v140[64], *&v140[72], *&v140[80], *&v140[88], *&v140[96], *&v140[104], *&v140[112], *&v140[120], *&v140[128], *&v140[136], *&v140[144], *&v140[152], *&v140[160], *&v140[168], *&v140[176], *&v140[184], *&v140[192], *&v140[200], *&v140[208], *&v140[216], *&v140[224], *&v140[232], v141, *(&v141 + 1), v142, *(&v142 + 1), v143, v144, v145, SBYTE8(v145), v146, *(&v146 + 1), v147, v148, v149, SBYTE8(v149));
  memcpy(v140, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v45 = OUTLINED_FUNCTION_30_3(v37, v38, v39, v40, v41, v42, v43, v44, *v140);
  v46(v45, 4);

  OUTLINED_FUNCTION_0_36();
  v48 = *(v47 + 2056);

  v48(2, 0);

  OUTLINED_FUNCTION_0_36();
  v50 = *(v49 + 1984);

  v50(5);

  OUTLINED_FUNCTION_0_36();
  v52 = *(v51 + 464);

  v52(4);

  sub_1E3952C94();
  *v140 = v53;
  *&v140[8] = v54;
  *&v140[16] = v55;
  *&v140[24] = v56;
  v140[32] = 0;
  sub_1E3952C94();
  v167 = v57;
  v168 = v58;
  v169 = v59;
  v170 = v60;
  v171 = 0;
  type metadata accessor for UIEdgeInsets();
  v62 = v61;
  sub_1E3C2FC98();
  v161 = v164;
  v162 = v165;
  v163 = v166;
  sub_1E3C3DE00(v62);
  v155 = v158;
  v156 = v159;
  v157 = v160;
  sub_1E3C3DE00(v62);
  v149 = v152;
  v150 = v153;
  v151 = v154;
  v63 = sub_1E3C3DE00(v62);
  v141 = v145;
  v142 = v146;
  LOBYTE(v143) = v147;
  v71 = OUTLINED_FUNCTION_1_257(v63, v64, v65, v66, v67, v68, v69, v70, *v140);
  sub_1E3C2FCB8(v71, v72);
  memcpy(v140, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v81 = OUTLINED_FUNCTION_30_3(v73, v74, v75, v76, v77, v78, v79, v80, *v140);
  v82(v81, 0);

  OUTLINED_FUNCTION_0_36();
  v84 = *(v83 + 1720);

  v84(8);

  sub_1E374EA2C();
  v140[0] = 17;
  LOBYTE(v167) = 15;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_13_159();
  OUTLINED_FUNCTION_12_147();
  v85 = OUTLINED_FUNCTION_11_162();
  LOBYTE(v141) = v145;
  v93 = OUTLINED_FUNCTION_1_257(v85, v86, v87, v88, v89, v90, v91, v92, *v140);
  sub_1E3C2FCB8(v93, v94);
  OUTLINED_FUNCTION_9_162();
  OUTLINED_FUNCTION_36();
  v103 = OUTLINED_FUNCTION_30_3(v95, v96, v97, v98, v99, v100, v101, v102, *v140);
  v104(v103, 48);

  OUTLINED_FUNCTION_3_1();
  v106 = *(v105 + 1792);

  v106(4);

  OUTLINED_FUNCTION_3_1();
  v108 = *(v107 + 680);

  v108(0);

  OUTLINED_FUNCTION_3_1();
  v110 = *(v109 + 704);

  v110(1);

  *v140 = 0x408E000000000000;
  v140[8] = 0;
  OUTLINED_FUNCTION_10_149();
  sub_1E3C3DE00(v28);
  OUTLINED_FUNCTION_7_200();
  v111 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_4_222(v111, v112, v113, v114, v115, v116, v117, v118, *v140, *&v140[8], *&v140[16], *&v140[24], *&v140[32], *&v140[40], *&v140[48], *&v140[56], *&v140[64], *&v140[72], *&v140[80], *&v140[88], *&v140[96], *&v140[104], *&v140[112], *&v140[120], *&v140[128], *&v140[136], *&v140[144], *&v140[152], *&v140[160], *&v140[168], *&v140[176], *&v140[184], *&v140[192], *&v140[200], *&v140[208], *&v140[216], *&v140[224], *&v140[232], v141, *(&v141 + 1), v142, *(&v142 + 1), v143, v144, v145, SBYTE8(v145), v146, *(&v146 + 1), v147, v148, v149, SBYTE8(v149));
  memcpy(v140, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v127 = OUTLINED_FUNCTION_30_3(v119, v120, v121, v122, v123, v124, v125, v126, *v140);
  v128(v127, 4);

  OUTLINED_FUNCTION_3_1();
  v130 = *(v129 + 2056);

  v130(0, 0);

  OUTLINED_FUNCTION_3_1();
  v132 = *(v131 + 1984);

  v132(5);

  OUTLINED_FUNCTION_3_1();
  v134 = *(v133 + 464);

  v134(4);

  OUTLINED_FUNCTION_3_1();
  v136 = *(v135 + 1720);

  v136(8);

  v137 = sub_1E37BD068();
  sub_1E3C37CBC(v137, 23);

  v138 = sub_1E374EA2C();
  sub_1E3C37CBC(v138, 15);

  return v1;
}

uint64_t sub_1E3F38DE8(char a1)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E324FBDC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_1E323F000, v7, v8, "EmptyStateViewLayout: update layout isPortrait: %{BOOL}d", v9, 8u);
    MEMORY[0x1E69143B0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = (a1 & 1) == 0;
  if (a1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  if (v10)
  {
    v12 = 5;
  }

  else
  {
    v12 = 1;
  }

  sub_1E3C2D4E8(v11);
  v13 = *sub_1E37BD068();
  (*(v13 + 1984))(v12);

  OUTLINED_FUNCTION_0_36();
  v15 = *(v14 + 464);

  v15(v11);

  v16 = *sub_1E374EA2C();
  (*(v16 + 1984))(v12);

  OUTLINED_FUNCTION_3_1();
  v18 = *(v17 + 464);

  v18(v11);
}

uint64_t sub_1E3F390FC()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1696))(5);

  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 2056);

  v4(2, 0);

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 2128);

  v6(0x3FE570A3D70A3D71, 0);

  OUTLINED_FUNCTION_36();
  v8 = *(v7 + 1792);

  v8(10);

  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 2032);

  v10(1);

  v11 = *(v1 + 104);

  v12 = sub_1E3E5FD88();
  v13 = *v12;
  v14 = *(*v11 + 680);
  v15 = *v12;
  v14(v13);

  sub_1E3952C58();
  v91[0] = v16;
  v91[1] = v17;
  v91[2] = v18;
  v91[3] = v19;
  LOBYTE(v91[4]) = 0;
  v107 = 0u;
  v108 = 0u;
  v109 = 1;
  v103 = 0u;
  v104 = 0u;
  v105 = 1;
  v100 = 0u;
  v101 = 0u;
  v102 = 1;
  sub_1E3952C58();
  v95 = v20;
  v96 = v21;
  v97 = v22;
  v98 = v23;
  v99 = 0;
  v92 = xmmword_1E42A9D20;
  v93 = xmmword_1E42DB1E0;
  v94 = 0;
  type metadata accessor for UIEdgeInsets();
  v25 = v24;
  sub_1E3C2FCB8(v91, __src);
  memcpy(v91, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v26 + 1600))(v91, 0, v27 & 1, v25);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v28 + 2056))(2, 0);

  OUTLINED_FUNCTION_36();
  v30 = *(v29 + 2128);

  v30(0x3FE570A3D70A3D71, 0);

  v31 = objc_opt_self();

  v32 = [v31 systemGrayColor];
  OUTLINED_FUNCTION_36();
  (*(v33 + 680))();

  OUTLINED_FUNCTION_36();
  v35 = *(v34 + 1696);

  v35(17);

  sub_1E3952C58();
  __src[0] = v36;
  __src[1] = v37;
  __src[2] = v38;
  __src[3] = v39;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v40 + 160))(__src);

  sub_1E3A9C2A0();
  OUTLINED_FUNCTION_2_1();
  v42 = (*(v41 + 2048))();

  (*(*v42 + 1696))(15);

  sub_1E3952C58();
  v91[0] = v43;
  v91[1] = v44;
  v91[2] = v45;
  v91[3] = v46;
  LOBYTE(v91[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v47 + 160))(v91);

  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  (*(v48 + 360))(0x4035000000000000, 0);

  OUTLINED_FUNCTION_36();
  v50 = *(v49 + 1808);

  v50(1);

  sub_1E3952C58();
  *&v107 = v51;
  *(&v107 + 1) = v52;
  *&v108 = v53;
  *(&v108 + 1) = v54;
  v109 = 0;
  OUTLINED_FUNCTION_8();
  (*(v55 + 160))(&v107);

  v56.n128_u64[0] = 23.0;
  j__OUTLINED_FUNCTION_7_78(v56);
  OUTLINED_FUNCTION_3();
  v57 = *v12;
  OUTLINED_FUNCTION_8();
  v59 = *(v58 + 680);

  v60 = v57;
  v59(v57);

  type metadata accessor for RelationalLayout();
  v61 = sub_1E4177030();
  v62.n128_f64[0] = OUTLINED_FUNCTION_6();
  nullsub_1(v62, v63);
  OUTLINED_FUNCTION_3();
  sub_1E41776B0(v64, v65, v66, v67);
  v68 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v68, v69, v70, v71);
  v72 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v72, v73, v74, v75);
  v76 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v76, v77, v78, v79);
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  v81 = *(v80 + 1424);
  v82 = swift_retain_n();
  v81(v82);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v83 + 1424))(v61);

  sub_1E3A9C2A0();
  OUTLINED_FUNCTION_2_1();
  (*(v84 + 1424))(v61);

  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  (*(v85 + 1424))(v61);

  v86 = sub_1E37BD068();
  sub_1E3C37CBC(v86, 23);

  v87 = sub_1E374EA2C();
  sub_1E3C37CBC(v87, 15);

  v88 = sub_1E37DAE10();
  sub_1E3C37CBC(v88, 39);

  v89 = sub_1E3A9C2A0();
  sub_1E3C37CBC(v89, 60);

  return v1;
}

uint64_t sub_1E3F39A24(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);
  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  v3 = COERCE_DOUBLE((*(v2 + 352))());
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    result = sub_1E3C2F8E8();
    if (result)
    {
      v7 = result;
      [objc_opt_self() scaleContentSizeValue:result forTraitCollection:5 maximumContentSizeCategory:v3];
      v9 = v8;
      OUTLINED_FUNCTION_8();
      v11 = *(v10 + 360);

      v11(v9, 0);
    }
  }

  return result;
}

uint64_t sub_1E3F39B84(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 99) = a1;
  return result;
}

uint64_t sub_1E3F39BB8()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39C20()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    _s16FooterViewLayoutCMa();
    v1 = sub_1E37D4C70();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39C88()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ChannelLogoViewLayout();
    v1 = sub_1E3E390C4();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39CF0()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(0, v3 & 1, v4, v5 & 1);
    *(v2 + 176) = v1;
  }

  return v1;
}

id sub_1E3F39D7C()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 184);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 184);
    *(v0 + 184) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1E3F39DEC()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    *(v2 + 192) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39E78()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 200) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39F08(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 208) = a1;
  return result;
}

void sub_1E3F39F78()
{
  OUTLINED_FUNCTION_41_5();
  *(v0 + 99) = 1;
  *(v0 + 104) = 0u;
  OUTLINED_FUNCTION_46_55(0);
  *(v0 + 98) = v1;
  v2 = sub_1E3C2F9A0();
  swift_beginAccess();
  switch(*(v2 + 98))
  {
    case 1:

      OUTLINED_FUNCTION_111();
      (*(v3 + 512))(18);
      v4 = *(MEMORY[0x1E69DDCE0] + 16);
      v2242 = *MEMORY[0x1E69DDCE0];
      v2243 = v4;
      LOBYTE(v2244) = 0;
      OUTLINED_FUNCTION_111();
      (*(v5 + 184))(&v2242);
      OUTLINED_FUNCTION_3_0();
      *(v2 + 99) = 0;
      if (TVAppFeature.isEnabled.getter(17))
      {
        memset(v2217, 0, 32);
        v2217[32] = 1;
        v6 = TVAppFeature.isEnabled.getter(10);
        v7 = TVAppFeature.isEnabled.getter(10);
        v8 = 0x402C000000000000;
        if (v6)
        {
          v9 = 0x4032000000000000;
        }

        else
        {
          v9 = 0x402C000000000000;
        }

        if (v7)
        {
          v8 = 0x4032000000000000;
        }

        v1615[0] = 0;
        v1615[1] = v9;
        *&v1686 = 0x4030000000000000;
        *(&v1686 + 1) = v8;
        LOBYTE(v1761) = 0;
        v10 = TVAppFeature.isEnabled.getter(10);
        v11 = TVAppFeature.isEnabled.getter(10);
        v12 = TVAppFeature.isEnabled.getter(10);
        v13 = 0x4034000000000000;
        if (v10)
        {
          v14 = 0x4032000000000000;
        }

        else
        {
          v14 = 0x4034000000000000;
        }

        *&__dst[0] = 0;
        *(&__dst[0] + 1) = v14;
        if (v11)
        {
          v15 = 0x4030000000000000;
        }

        else
        {
          v15 = 0x4034000000000000;
        }

        if (v12)
        {
          v13 = 0x4032000000000000;
        }

        *&__dst[1] = v15;
        *(&__dst[1] + 1) = v13;
        LOBYTE(__dst[2]) = 0;
        v2239 = xmmword_1E42CC340;
        v2240 = xmmword_1E42DF2E0;
        LOBYTE(v2241) = 0;
        __asm { FMOV            V1.2D, #20.0 }

        v2236 = xmmword_1E42AE100;
        v2237 = _Q1;
        LOBYTE(v2238) = 0;
        v2233 = xmmword_1E42AE100;
        v2234 = _Q1;
        LOBYTE(v2235) = 0;
        type metadata accessor for UIEdgeInsets();
        v21 = v2217;
      }

      else
      {
        memset(__dst, 0, 32);
        LOBYTE(__dst[2]) = 1;
        *v2217 = xmmword_1E42A76C0;
        *&v2217[16] = xmmword_1E42CA400;
        v2217[32] = 0;
        *v1615 = xmmword_1E42B8850;
        v1686 = xmmword_1E4296D10;
        LOBYTE(v1761) = 0;
        v2239 = xmmword_1E42B8890;
        v2240 = xmmword_1E42DF2C0;
        LOBYTE(v2241) = 0;
        v2236 = xmmword_1E42B8850;
        v2237 = xmmword_1E429E560;
        LOBYTE(v2238) = 0;
        v2233 = xmmword_1E42CC3D0;
        v2234 = xmmword_1E42DF2D0;
        LOBYTE(v2235) = 0;
        type metadata accessor for UIEdgeInsets();
        v21 = __dst;
      }

      sub_1E3C2FCB8(v21, __src);
      memcpy(__dst, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_12_148(v555, v556, v557, v558, v559, v560, v561, v562, v786, v828, v869, v912, v954, v996, v1040, v1082, v1125, v1168, v1209, v1251, v1292, v1334, v1376, v1416, v1456, v1495, v1535, v1575, v1615[0], v1615[1], v1686, *(&v1686 + 1), v1761, v1799, v1837, v1875, v1913, v1951, v1989, v2027, v2065, v2103, v2141, v2179, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_41_62();
      v563();
      *&v2236 = 0;
      BYTE8(v2236) = 1;
      *&v2233 = 0x4077C00000000000;
      BYTE8(v2233) = 0;
      *&v2227 = 0x4077C00000000000;
      BYTE8(v2227) = 0;
      v2246 = 0x4081800000000000;
      v2247 = 0;
      v2224 = 0x4077500000000000;
      LOBYTE(v2225) = 0;
      v564 = TVAppFeature.isEnabled.getter(17);
      v565 = 0x4075A00000000000;
      if (v564)
      {
        v565 = 0x4075300000000000;
      }

      *&__dst[0] = v565;
      BYTE8(__dst[0]) = 0;
      sub_1E3C2FCB8(&v2236, __src);
      OUTLINED_FUNCTION_18_122(v566, v567, v568, v569, v570, v571, v572, v573, v824, v865, v908, v950, v992, v1036, v1078, v1121, v1164, v1206, v1247, v1288, v1330, v1372, v1412, v1452, v1491, v1531, v1571, v1611, v1645, v1684, v1722, v1759, v1797, v1835, v1873, v1911, v1949, v1987, v2025, v2063, v2101, v2139, v2177, v2215, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v575 = *(v574 + 1600);
      OUTLINED_FUNCTION_12_148(v576, v577, v578, v579, v580, v581, v582, v583, v825, v866, v909, v951, v993, v1037, v1079, v1122, v1165, v1207, v1248, v1289, v1331, v1373, v1413, v1453, v1492, v1532, v1572, v1612, v1646, v1685, v1723, v1760, v1798, v1836, v1874, v1912, v1950, v1988, v2026, v2064, v2102, v2140, v2178, v2216, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_59_35();
      v575();
      *v2217 = 0;
      v2217[8] = 1;
      OUTLINED_FUNCTION_38_63(0x4074400000000000uLL);
      v2222 = 0;
      LOBYTE(v2223) = 1;
      v2220 = v584;
      LOBYTE(v2221) = 0;
      v2218 = 0x4074B00000000000;
      LOBYTE(v2219) = 0;
      sub_1E3C2FCB8(v2217, __dst);
      memcpy(v2217, __dst, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_58_36();
      v575();
      OUTLINED_FUNCTION_9_2();
      v586 = *(v585 + 2016);
      v586();
      OUTLINED_FUNCTION_30();
      (*(v587 + 184))(&v2242);

      v589 = (v586)(v588);
      OUTLINED_FUNCTION_111();
      v591 = (*(v590 + 248))();
      (*(*v589 + 208))(v591, v592 & 1);

      if (TVAppFeature.isEnabled.getter(17) & 1) != 0 || (TVAppFeature.isEnabled.getter(10))
      {
        OUTLINED_FUNCTION_3_0();
        *(v2 + 208) = 1;
      }

      v593 = *sub_1E3E5FD88();
      v594 = *sub_1E3E5FDEC();
      v1374 = *sub_1E3E5F58C();
      v595 = *sub_1E3E5F6B8();
      v596 = (*v2 + 1872);
      v597 = *v596;
      v598 = v595;
      v597();
      OUTLINED_FUNCTION_2_1();
      (*(v599 + 2056))(1, 0);

      (v597)(v600);
      OUTLINED_FUNCTION_2_1();
      (*(v601 + 1936))(2);

      (v597)(v602);
      OUTLINED_FUNCTION_2_1();
      (*(v603 + 1792))(10);

      v1493 = v596;
      (v597)(v604);
      v1454 = v597;
      OUTLINED_FUNCTION_2_1();
      (*(v605 + 2008))(1);

      (v597)(v606);
      *v2217 = v598;
      v1647 = v594;
      v2222 = v594;
      v1249 = v594;
      v607 = v594;
      v608 = v598;
      if (TVAppFeature.isEnabled.getter(17))
      {
        v609 = v607;
      }

      else
      {
        v609 = v608;
      }

      v2220 = v609;
      v610 = v609;
      v1290 = v608;
      if (TVAppFeature.isEnabled.getter(17))
      {
        v611 = v607;
      }

      else
      {
        v611 = v608;
      }

      v2218 = v611;
      v612 = v611;
      v1414 = v593;
      v1332 = v607;
      if ((TVAppFeature.isEnabled.getter(17) & 1) == 0)
      {
        v607 = v593;
      }

      v613 = sub_1E3755B54();
      v614 = v607;
      sub_1E3C2FCB8(v2217, __dst);
      v615 = __dst[0];
      v616 = __dst[1];
      v617 = __dst[2];
      *v2217 = __dst[0];
      *&v2217[16] = __dst[1];
      *&v2217[32] = __dst[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_131();
      v618();

      v597();
      OUTLINED_FUNCTION_30_77();
      v2217[0] = v619;
      LOBYTE(v1647) = 19;
      TVAppFeature.isEnabled.getter(17);
      LOBYTE(v2222) = 19;
      TVAppFeature.isEnabled.getter(17);
      OUTLINED_FUNCTION_55_44();
      if (!_ZF)
      {
        v620 = 17;
      }

      LOBYTE(v2220) = v620;
      if (TVAppFeature.isEnabled.getter(17))
      {
        v621 = 19;
      }

      else
      {
        v621 = 21;
      }

      LOBYTE(v2218) = v621;
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_19_131();
      sub_1E3C2FCB8(v622, v623);
      OUTLINED_FUNCTION_53_45();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      (*(v624 + 1600))(v2217, 48, v625 & 1, &qword_1F5D549D8);

      (v597)(v626);
      OUTLINED_FUNCTION_2_1();
      (*(v627 + 1720))(7);

      (v597)(v628);
      v629 = sub_1E4205F14();
      v631 = v630;
      v632 = *MEMORY[0x1E6979CE8];
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v629, v631, v633, v634);
      OUTLINED_FUNCTION_36();
      (*(v635 + 1888))();

      if (TVAppFeature.isEnabled.getter(10))
      {
        sub_1E3F3EF78();
      }

      else
      {
        OUTLINED_FUNCTION_111();
        v636 += 237;
        v637 = *v636;
        v638 = v636;
        (*v636)();
        v1080 = v638;
        v1123 = v637;
        v2222 = 2;
        LOBYTE(v2223) = 0;
        if (TVAppFeature.isEnabled.getter(17))
        {
          v639 = 2;
        }

        else
        {
          v639 = 3;
        }

        *v2217 = v639;
        v2217[8] = 0;
        v640 = MEMORY[0x1E69E6810];
        sub_1E3C2FC98();
        v2220 = v1647;
        LOBYTE(v2221) = 0;
        sub_1E3C3DE00(v640);
        sub_1E3C3DE00(v640);
        sub_1E3C3DE00(v640);
        sub_1E3C2FCB8(&v2222, __dst);
        memcpy(v2217, __dst, 0x59uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_33_76();
        v641();

        (v637)(v642);
        v2220 = 0;
        v2218 = 0;
        v643 = v1414;
        v644 = TVAppFeature.isEnabled.getter(17);
        v645 = v1374;
        if (v644)
        {
          v645 = v643;
        }

        v646 = v645;
        sub_1E3C3DE00(v613);
        v647 = sub_1E3C3DE00(v613);
        v655 = OUTLINED_FUNCTION_45_63(v647, v648, v649, v650, v651, v652, v653, v654, v826, v867, v910, v952, v994, v1038, v1080, v1123, v1166, v613, v1249, v608, v1332, v1374, v1414, v1454, v1493, v1533, v1573, v1613, v1414);
        sub_1E3C2FCB8(v655, v656);
        v1167 = v632;
        v657 = *v2217;
        v658 = *&v2217[8];
        v659 = *&v2217[16];
        v661 = *&v2217[32];
        v660 = *&v2217[40];
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_17_131();
        v662();

        v663 = v1124;
        v1124();
        OUTLINED_FUNCTION_30_77();
        v1648 = v664;
        LOBYTE(v2220) = 3;
        if (TVAppFeature.isEnabled.getter(17))
        {
          v665 = 3;
        }

        else
        {
          v665 = 2;
        }

        LOBYTE(v2218) = v665;
        TVAppFeature.isEnabled.getter(17);
        OUTLINED_FUNCTION_55_44();
        v666 = TVAppFeature.isEnabled.getter(17);
        v674 = OUTLINED_FUNCTION_45_63(v666, v667, v668, v669, v670, v671, v672, v673, v827, v868, v911, v953, v995, v1039, v1081, v1124, v1167, v1208, v1250, v1291, v1333, v1375, v1415, v1455, v1494, v1534, v1574, v1614, v1648);
        sub_1E3C2FCB8(v674, v675);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_42_64();
        v676();

        (v663)(v677);
        OUTLINED_FUNCTION_2_1();
        (*(v678 + 1792))(10);

        (v663)(v679);
        OUTLINED_FUNCTION_2_1();
        (*(v680 + 1720))(7);

        (v663)(v681);
        OUTLINED_FUNCTION_2_1();
        (*(v682 + 2008))(1);
      }

      sub_1E3F3F2C0(0);
      sub_1E3F3FC68(0);
      OUTLINED_FUNCTION_111();
      v683 += 243;
      v684 = *v683;
      (*v683)();
      OUTLINED_FUNCTION_2_1();
      (*(v685 + 680))(v1249);

      (v684)(v686);
      v2217[0] = 21;
      LOBYTE(v2222) = 22;
      if (TVAppFeature.isEnabled.getter(17))
      {
        v687 = 15;
      }

      else
      {
        v687 = 21;
      }

      LOBYTE(v2220) = v687;
      if (TVAppFeature.isEnabled.getter(17))
      {
        v688 = 19;
      }

      else
      {
        v688 = 7;
      }

      LOBYTE(v2218) = v688;
      sub_1E3C3DE00(&qword_1F5D549D8);
      OUTLINED_FUNCTION_19_131();
      sub_1E3C2FCB8(v689, v690);
      OUTLINED_FUNCTION_53_45();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_42_64();
      v691();

      (v684)(v692);
      v693 = sub_1E4205F14();
      v695 = v694;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v693, v695, v696, v697);
      OUTLINED_FUNCTION_36();
      (*(v698 + 1888))();

      (v684)(v699);
      OUTLINED_FUNCTION_2_1();
      (*(v700 + 1720))(7);

      (v684)(v701);
      OUTLINED_FUNCTION_2_1();
      (*(v702 + 2008))(1);

      sub_1E3F3ED28();
      OUTLINED_FUNCTION_9_2();
      v704 = *(v703 + 1992);
      v704();
      OUTLINED_FUNCTION_2_1();
      (*(v705 + 1808))(1);

      (v704)(v706);
      OUTLINED_FUNCTION_2_1();
      (*(v707 + 512))(4);

      sub_1E3F40548(0);
      v708.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v708);
      OUTLINED_FUNCTION_3();
      v709.n128_u64[0] = 26.0;
      j__OUTLINED_FUNCTION_7_78(v709);
      OUTLINED_FUNCTION_22_91();
      v710 = sub_1E4177030();
      OUTLINED_FUNCTION_50_12(v711, v712, v713, v714);
      sub_1E41776B0(v715, v716, v717, v718);
      OUTLINED_FUNCTION_35_68(v719, v720, v721, v722);
      sub_1E41776B0(v723, v724, v725, v726);
      v727.n128_u64[0] = 24.0;
      v728.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v727);
      nullsub_1(v728, v729);
      sub_1E41776B0(v730, v731, v732, v733);
      v734.n128_u64[0] = 20.0;
      v735.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v734);
      nullsub_1(v735, v736);
      sub_1E41776B0(v737, v738, v739, v740);
      sub_1E4177030();
      v741 = TVAppFeature.isEnabled.getter(10);
      v742.n128_u64[0] = 10.0;
      if ((v741 & 1) == 0)
      {
        v742.n128_f64[0] = 24.0;
      }

      v743.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v742);
      nullsub_1(v743, v744);
      sub_1E41776B0(v745, v746, v747, v748);
      v749.n128_u64[0] = 28.0;
      v750.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v749);
      nullsub_1(v750, v751);
      sub_1E41776B0(v752, v753, v754, v755);
      v756.n128_u64[0] = 28.0;
      v757.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v756);
      nullsub_1(v757, v758);
      sub_1E41776B0(v759, v760, v761, v762);
      v763.n128_u64[0] = 24.0;
      v764.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v763);
      nullsub_1(v764, v765);
      v770 = sub_1E41776B0(v766, v767, v768, v769);
      (v1454)(v770);
      OUTLINED_FUNCTION_2_1();
      v772 = *(v771 + 1424);
      v773 = swift_retain_n();
      v772(v773);

      OUTLINED_FUNCTION_9_2();
      (*(v774 + 1896))();
      OUTLINED_FUNCTION_2_1();
      (*(v775 + 1424))(v710);

      OUTLINED_FUNCTION_9_2();
      (*(v776 + 1920))();
      OUTLINED_FUNCTION_2_1();
      (*(v777 + 1424))(v710);

      OUTLINED_FUNCTION_9_2();
      (*(v778 + 1968))();
      OUTLINED_FUNCTION_2_1();
      v780 = *(v779 + 1424);

      v780(v781);

      (v684)(v782);
      OUTLINED_FUNCTION_2_1();
      (*(v783 + 1424))(v710);

      (v704)(v784);
      OUTLINED_FUNCTION_2_1();
      (*(v785 + 1424))(v710);

      sub_1E3F4110C();

      v554 = v1414;
      goto LABEL_60;
    case 2:

      v22 = *(MEMORY[0x1E69DDCE0] + 16);
      *v2217 = *MEMORY[0x1E69DDCE0];
      *&v2217[16] = v22;
      v2217[32] = 0;
      OUTLINED_FUNCTION_111();
      (*(v23 + 184))(v2217);
      OUTLINED_FUNCTION_3_0();
      *(v2 + 99) = 0;
      sub_1E3952C58();
      *&__dst[0] = v24;
      *(&__dst[0] + 1) = v25;
      *&__dst[1] = v26;
      *(&__dst[1] + 1) = v27;
      LOBYTE(__dst[2]) = 0;
      LOBYTE(v1761) = 1;
      v2242 = 0u;
      v2243 = 0u;
      LOBYTE(v2244) = 1;
      sub_1E3952C58();
      *&v2239 = v28;
      *(&v2239 + 1) = v29;
      *&v2240 = v30;
      *(&v2240 + 1) = v31;
      LOBYTE(v2241) = 0;
      type metadata accessor for UIEdgeInsets();
      v33 = v32;
      sub_1E3C3DE00(v32);
      v2233 = v2236;
      v2234 = v2237;
      LOBYTE(v2235) = v2238;
      v34 = sub_1E3C3DE00(v33);
      v2227 = v2230;
      v2228 = v2231;
      LOBYTE(v2229) = v2232;
      v42 = OUTLINED_FUNCTION_1_258(v34, v35, v36, v37, v38, v39, v40, v41, v786, v828, v869, v912, v954, v996, v1040, v1082, v1125, v1168, v1209, v1251, v1292, v1334, v1376, v1416, v1456, v1495, v1535, v1575, 0, 0, 0, 0, v1761, v1799, v1837, v1875, v1913, v1951, v1989, v2027, v2065, v2103, v2141, v2179, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v42, v43);
      memcpy(__dst, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v45 = *(v44 + 1600);
      OUTLINED_FUNCTION_12_148(v46, v47, v48, v49, v50, v51, v52, v53, v787, v829, v870, v913, v955, v997, v1041, v1083, v1126, v1169, v1210, v1252, v1293, v1335, v1377, v1417, v1457, v1496, v1536, v1576, v1616, v1649, v1687, v1724, v1762, v1800, v1838, v1876, v1914, v1952, v1990, v2028, v2066, v2104, v2142, v2180, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_41_62();
      v45();
      OUTLINED_FUNCTION_60_33();
      *&v2242 = 0x4075900000000000;
      BYTE8(v2242) = 0;
      OUTLINED_FUNCTION_38_63(0x4081800000000000uLL);
      OUTLINED_FUNCTION_44_56(0x4077200000000000uLL);
      *&v2233 = 0x4076400000000000;
      BYTE8(v2233) = 0;
      v54 = MEMORY[0x1E69E7DE0];
      v63 = OUTLINED_FUNCTION_0_293(v55, v56, v57, v58, v59, v60, v61, v62, v788, v830, v871, v914, v956, v998, v1042, v1084, v1127, v1170, v1211, v1253, v1294, v1336, v1378, v1418, v1458, v1497, v1537, v1577, v1617, v1650, v1688, v1725, v1763, v1801, v1839, v1877, v1915, v1953, v1991, v2029, v2067, v2105, v2143, v2181, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v63, v64);
      OUTLINED_FUNCTION_18_122(v65, v66, v67, v68, v69, v70, v71, v72, v789, v831, v872, v915, v957, v999, v1043, v1085, v1128, v1171, v1212, v1254, v1295, v1337, v1379, v1419, v1459, v1498, v1538, v1578, v1618, v1651, v1689, v1726, v1764, v1802, v1840, v1878, v1916, v1954, v1992, v2030, v2068, v2106, v2144, v2182, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      v73 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_12_148(v73, v74, v75, v76, v77, v78, v79, v80, v790, v832, v873, v916, v958, v1000, v1044, v1086, v1129, v1172, v1213, v1255, v1296, v1338, v1380, v1420, v1460, v1499, v1539, v1579, v1619, v1652, v1690, v1727, v1765, v1803, v1841, v1879, v1917, v1955, v1993, v2031, v2069, v2107, v2145, v2183, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_59_35();
      v45();
      OUTLINED_FUNCTION_60_33();
      *&v2242 = 0x4074400000000000;
      BYTE8(v2242) = 0;
      OUTLINED_FUNCTION_38_63(0x4079000000000000uLL);
      sub_1E3C3DE00(v54);
      *&v2233 = v2236;
      BYTE8(v2233) = BYTE8(v2236);
      v81 = sub_1E3C3DE00(v54);
      *&v2227 = v2230;
      BYTE8(v2227) = BYTE8(v2230);
      v89 = OUTLINED_FUNCTION_1_258(v81, v82, v83, v84, v85, v86, v87, v88, v791, v833, v874, v917, v959, v1001, v1045, v1087, v1130, v1173, v1214, v1256, v1297, v1339, v1381, v1421, v1461, v1500, v1540, v1580, v1620, v1653, v1691, v1728, v1766, v1804, v1842, v1880, v1918, v1956, v1994, v2032, v2070, v2108, v2146, v2184, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v89, v90);
      OUTLINED_FUNCTION_18_122(v91, v92, v93, v94, v95, v96, v97, v98, v792, v834, v875, v918, v960, v1002, v1046, v1088, v1131, v1174, v1215, v1257, v1298, v1340, v1382, v1422, v1462, v1501, v1541, v1581, v1621, v1654, v1692, v1729, v1767, v1805, v1843, v1881, v1919, v1957, v1995, v2033, v2071, v2109, v2147, v2185, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      v99 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_12_148(v99, v100, v101, v102, v103, v104, v105, v106, v793, v835, v876, v919, v961, v1003, v1047, v1089, v1132, v1175, v1216, v1258, v1299, v1341, v1383, v1423, v1463, v1502, v1542, v1582, v1622, v1655, v1693, v1730, v1768, v1806, v1844, v1882, v1920, v1958, v1996, v2034, v2072, v2110, v2148, v2186, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_58_36();
      v45();
      OUTLINED_FUNCTION_9_2();
      v108 = *(v107 + 2016);
      v108();
      OUTLINED_FUNCTION_30();
      (*(v109 + 184))(v2217);

      v111 = (v108)(v110);
      OUTLINED_FUNCTION_111();
      v113 = (*(v112 + 248))();
      (*(*v111 + 208))(v113, v114 & 1);

      v115 = *sub_1E3E5FD88();
      v1259 = *sub_1E3E5F58C();
      v116 = *sub_1E3E5F6B8();
      v117 = *(*v2 + 2088);
      v118 = v116;
      v119 = *v117();
      v120 = (*(v119 + 1784))();

      if (v120 == 11 || (LOBYTE(__src[0]) = v120, LOBYTE(__dst[0]) = 1, sub_1E3751DB0(), (sub_1E4205E84() & 1) == 0))
      {
        type metadata accessor for ButtonLayout();
        v121 = j__OUTLINED_FUNCTION_18();
        v122 = sub_1E3B050E8();
        v123 = j__OUTLINED_FUNCTION_18();
        *(v2 + 176) = sub_1E3BBD964(1, v121 & 1, v122, v123 & 1);
      }

      OUTLINED_FUNCTION_111();
      v124 += 234;
      v125 = *v124;
      v126 = v124;
      (*v124)();
      OUTLINED_FUNCTION_30();
      (*(v127 + 1936))(2);

      v1424 = v126;
      (v125)(v128);
      OUTLINED_FUNCTION_2_1();
      (*(v129 + 1792))(10);

      (v125)(v130);
      v131 = v118;
      *&__dst[0] = v118;
      v132 = v131;
      *&v2242 = 0;
      *&v2239 = v118;
      v1133 = v132;
      v1342 = sub_1E3E5FDEC();
      *&v2236 = *v1342;
      v133 = v2236;
      *&v2233 = v115;
      v134 = sub_1E3755B54();
      v1090 = v115;
      v135 = v133;
      v143 = OUTLINED_FUNCTION_0_293(v135, v136, v137, v138, v139, v140, v141, v142, v794, v836, v877, v920, v962, v1004, v1048, v1090, v1133, v1176, v1217, v1259, v1300, v1342, v1384, v1424, v1464, v1503, v1543, v1583, 0, v1656, v1694, v1731, v1769, v1807, v1845, v1883, v1921, v1959, v1997, v2035, v2073, v2111, v2149, v2187, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v143, v144);
      v145 = __src[0];
      v1005 = v115;
      v146 = *&__src[1];
      v1177 = v118;
      v147 = *(&__src[1] + 1);
      v148 = __src[2];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v157 = OUTLINED_FUNCTION_12_148(v149, v150, v151, v152, v153, v154, v155, v156, v795, v837, v878, v921, v963, v1005, v1049, v1091, v1134, v1177, v1218, v1260, v1301, v1343, v1385, v1425, v134, v1504, v1544, v1584, v1623, v1657, v1695, v1732, v1770, v1808, v1846, v1884, v1922, v1960, v1998, v2036, v2074, v2112, v2150, v2188, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      v158(v157, 21);

      v125();
      OUTLINED_FUNCTION_29_88();
      LOBYTE(v2236) = 14;
      LOBYTE(v2233) = 21;
      v167 = OUTLINED_FUNCTION_0_293(v159, v160, v161, v162, v163, v164, v165, v166, v796, v838, v879, v922, v964, v1006, v1050, v1092, v1135, v1178, v1219, v1261, v1302, v1344, v1386, v1426, v1465, v1505, v1545, v1585, v1624, v1658, v1696, v1733, v1771, v1809, v1847, v1885, v1923, v1961, v1999, v2037, v2075, v2113, v2151, v2189, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v167, v168);
      OUTLINED_FUNCTION_47_51();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v169, v170, v171, v172, v173, v174, v175, v176, v797, v839, v880, v923, v965, v1007, v1051, v1093, v1136, v1179, v1220, v1262, v1303, v1345, v1387, v1427, v1466, v1506, v1546, v1586, v1625, v1659, v1697, v1734, v1772, v1810, v1848, v1886, v1924, v1962, v2000, v2038, v2076, v2114, v2152, v2190, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_42_64();
      v177();

      (v125)(v178);
      v1221 = *MEMORY[0x1E6979CF8];
      v179 = sub_1E4205F14();
      v181 = v180;
      v1304 = *MEMORY[0x1E6979CE8];
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v179, v181, v182, v183);
      OUTLINED_FUNCTION_36();
      (*(v184 + 1888))();

      (v125)(v185);
      OUTLINED_FUNCTION_2_1();
      (*(v186 + 1720))(7);

      (v125)(v187);
      OUTLINED_FUNCTION_2_1();
      (*(v188 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v190 = v189 + 1896;
      v191 = *(v189 + 1896);
      v191();
      OUTLINED_FUNCTION_2_1();
      (*(v192 + 1792))(10);

      (v191)(v193);
      OUTLINED_FUNCTION_31_75();
      OUTLINED_FUNCTION_38_63(3uLL);
      OUTLINED_FUNCTION_44_56(v194);
      v195 = sub_1E3C3DE00(MEMORY[0x1E69E6810]);
      *&v2230 = v2233;
      BYTE8(v2230) = BYTE8(v2233);
      v203 = OUTLINED_FUNCTION_0_293(v195, v196, v197, v198, v199, v200, v201, v202, v798, v840, v881, v924, v966, v1008, v125, v1094, v1137, v1180, v1221, v1263, v1304, v1346, v191, v1428, v1467, v1507, v1547, v1587, v1626, v1660, v1698, v1735, v1773, v1811, v1849, v1887, v1925, v1963, v2001, v2039, v2077, v2115, v2153, v2191, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v203, v204);
      OUTLINED_FUNCTION_18_122(v205, v206, v207, v208, v209, v210, v211, v212, v799, v841, v882, v925, v967, v1009, v1052, v1095, v1138, v1181, v1222, v1264, v1305, v1347, v1388, v1429, v1468, v1508, v1548, v1588, v1627, v1661, v1699, v1736, v1774, v1812, v1850, v1888, v1926, v1964, v2002, v2040, v2078, v2116, v2154, v2192, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v221 = OUTLINED_FUNCTION_12_148(v213, v214, v215, v216, v217, v218, v219, v220, v800, v842, v883, v926, v968, v1010, v1053, v1096, v1139, v1182, v1223, v1265, v1306, v1348, v1389, v1430, v1469, v1509, v1549, v1589, v1628, v1662, v1700, v1737, v1775, v1813, v1851, v1889, v1927, v1965, v2003, v2041, v2079, v2117, v2155, v2193, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      v222(v221, 62);

      (v191)(v223);
      *&__dst[0] = v1011;
      *&v2242 = 0;
      *&v2239 = v1266;
      *&v2236 = 0;
      v1012 = v1266;
      v224 = sub_1E3C3DE00(v1470);
      *&v2230 = v2233;
      v232 = OUTLINED_FUNCTION_0_293(v224, v225, v226, v227, v228, v229, v230, v231, v801, v843, v884, v927, v969, v1012, v1054, v1097, v1140, v1183, v1224, v1266, v1307, v1349, v1390, v1431, v1470, v1510, v1550, v1590, 0, v1663, v1701, v1738, v1776, v1814, v1852, v1890, v1928, v1966, v2004, v2042, v2080, v2118, v2156, v2194, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v232, v233);
      v234 = __src[0];
      v235 = __src[1];
      v236 = __src[2];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v245 = OUTLINED_FUNCTION_12_148(v237, v238, v239, v240, v241, v242, v243, v244, v802, v844, v885, v928, v970, v1013, v1055, v1098, v1141, v1184, v1225, v1267, v1308, v1350, v1391, v1432, v1471, v1511, v1551, v1591, v1629, v1664, v1702, v1739, v1777, v1815, v1853, v1891, v1929, v1967, v2005, v2043, v2081, v2119, v2157, v2195, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      v246(v245, 21);

      v971 = v190;
      v247 = v1392;
      v248 = v1392();
      LOBYTE(__dst[0]) = 3;
      LOBYTE(v1630) = 27;
      LOBYTE(v2242) = 2;
      LOBYTE(v2239) = 2;
      LOBYTE(v2236) = 6;
      LOBYTE(v2233) = 1;
      v256 = OUTLINED_FUNCTION_0_293(v248, v249, v250, v251, v252, v253, v254, v255, v803, v845, v886, v929, v971, v1014, v1056, v1099, v1142, v1185, v1226, v1268, v1309, v1351, v1392, v1433, v1472, v1512, v1552, v1592, v1630, v1665, v1703, v1740, v1778, v1816, v1854, v1892, v1930, v1968, v2006, v2044, v2082, v2120, v2158, v2196, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v256, v257);
      OUTLINED_FUNCTION_47_51();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v258, v259, v260, v261, v262, v263, v264, v265, v804, v846, v887, v930, v972, v1015, v1057, v1100, v1143, v1186, v1227, v1269, v1310, v1352, v1393, v1434, v1473, v1513, v1553, v1593, v1631, v1666, v1704, v1741, v1779, v1817, v1855, v1893, v1931, v1969, v2007, v2045, v2083, v2121, v2159, v2197, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_42_64();
      v266();

      (v247)(v267);
      OUTLINED_FUNCTION_2_1();
      (*(v268 + 1720))(7);

      (v247)(v269);
      OUTLINED_FUNCTION_2_1();
      (*(v270 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v272 = v271 + 1920;
      v273 = *(v271 + 1920);
      v273();
      OUTLINED_FUNCTION_2_1();
      (*(v274 + 1792))(4);

      (v273)(v275);
      *&__dst[0] = 2;
      BYTE8(__dst[0]) = 0;
      LOBYTE(v1667) = 0;
      *&v2242 = 0;
      BYTE8(v2242) = 1;
      *&v2239 = 3;
      BYTE8(v2239) = 0;
      OUTLINED_FUNCTION_44_56(3uLL);
      *&v2233 = 4;
      BYTE8(v2233) = 0;
      v284 = OUTLINED_FUNCTION_0_293(v276, v277, v278, v279, v280, v281, v282, v283, v805, v847, v888, v931, v973, v1016, v1058, v1101, v1144, v1187, v1228, v272, v1311, v1353, v1394, v1435, v1474, v1514, v1554, v1594, 3, v1667, v1705, v1742, v1780, v1818, v1856, v1894, v1932, v1970, v2008, v2046, v2084, v2122, v2160, v2198, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v284, v285);
      OUTLINED_FUNCTION_18_122(v286, v287, v288, v289, v290, v291, v292, v293, v806, v848, v889, v932, v974, v1017, v1059, v1102, v1145, v1188, v1229, v1270, v1312, v1354, v1395, v1436, v1475, v1515, v1555, v1595, v1632, v1668, v1706, v1743, v1781, v1819, v1857, v1895, v1933, v1971, v2009, v2047, v2085, v2123, v2161, v2199, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v302 = OUTLINED_FUNCTION_12_148(v294, v295, v296, v297, v298, v299, v300, v301, v807, v849, v890, v933, v975, v1018, v1060, v1103, v1146, v1189, v1230, v1271, v1313, v1355, v1396, v1437, v1476, v1516, v1556, v1596, v1633, v1669, v1707, v1744, v1782, v1820, v1858, v1896, v1934, v1972, v2010, v2048, v2086, v2124, v2162, v2200, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      v303(v302, 62);

      v304 = sub_1E4206F24();
      v305 = sub_1E4206F24();
      v306 = sub_1E3E5F2F8(v304, v305);

      v273();
      *&__dst[0] = 0;
      *&v2242 = v1190;
      v307 = OUTLINED_FUNCTION_50_47(v1190, v808, v850, v891, v934, v976, v1019, v1061, v1104, v1147, v1190, v1231, v1272, v1314, v1356);
      v308 = v306;
      v316 = OUTLINED_FUNCTION_0_293(v308, v309, v310, v311, v312, v313, v314, v315, v809, v851, v892, v308, v977, v1020, v1062, v1105, v1148, v1191, v1232, v1273, v1315, v1357, v1397, v1438, v1477, v1517, v1557, v1597, v306, v1670, v1708, v1745, v1783, v1821, v1859, v1897, v1935, v1973, v2011, v2049, v2087, v2125, v2163, v2201, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v316, v317);
      v318 = __src[0];
      v319 = __src[1];
      v320 = __src[2];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v329 = OUTLINED_FUNCTION_12_148(v321, v322, v323, v324, v325, v326, v327, v328, v810, v852, v893, v935, v978, v1021, v1063, v1106, v1149, v1192, v1233, v1274, v1316, v1358, v1398, v1439, v1478, v1518, v1558, v1598, v1634, v1671, v1709, v1746, v1784, v1822, v1860, v1898, v1936, v1974, v2012, v2050, v2088, v2126, v2164, v2202, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      v330(v329, 21);

      v331 = (v273)();
      LOBYTE(__dst[0]) = 17;
      LOBYTE(v1635) = 27;
      LOBYTE(v2242) = 15;
      LOBYTE(v2239) = 15;
      LOBYTE(v2236) = 2;
      LOBYTE(v2233) = 15;
      v339 = OUTLINED_FUNCTION_0_293(v331, v332, v333, v334, v335, v336, v337, v338, v811, v853, v894, v936, v979, v1022, v1064, v1107, v1150, v1193, v1234, v1275, v1317, v1359, v1399, v1440, v1479, v1519, v1559, v1599, v1635, v1672, v1710, v1747, v1785, v1823, v1861, v1899, v1937, v1975, v2013, v2051, v2089, v2127, v2165, v2203, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v339, v340);
      OUTLINED_FUNCTION_9_163();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_175();
      v341();

      (v273)(v342);
      v343 = sub_1E4205F14();
      v345 = v344;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v343, v345, v346, v347);
      OUTLINED_FUNCTION_36();
      (*(v348 + 1888))();

      v895 = v273;
      (v273)(v349);
      OUTLINED_FUNCTION_2_1();
      (*(v350 + 1720))(7);

      (v273)(v351);
      OUTLINED_FUNCTION_2_1();
      (*(v352 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v354 = *(v353 + 1944);
      v354();
      OUTLINED_FUNCTION_2_1();
      (*(v355 + 2056))(2, 0);

      (v354)(v356);
      OUTLINED_FUNCTION_2_1();
      (*(v357 + 1720))(7);

      (v354)(v358);
      OUTLINED_FUNCTION_29_88();
      LOBYTE(v2236) = 17;
      v359 = sub_1E3C3DE00(&qword_1F5D549D8);
      LOBYTE(v2230) = v2233;
      v367 = OUTLINED_FUNCTION_0_293(v359, v360, v361, v362, v363, v364, v365, v366, v812, v354, v895, v937, v980, v1023, v1065, v1108, v1151, v1194, v1235, v1276, v1318, v1360, v1400, v1441, v1480, v1520, v1560, v1600, v1636, v1673, v1711, v1748, v1786, v1824, v1862, v1900, v1938, v1976, v2014, v2052, v2090, v2128, v2166, v2204, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v367, v368);
      OUTLINED_FUNCTION_9_163();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_175();
      v369();

      (v354)(v370);
      *&__dst[0] = v1195;
      *&v2242 = 0;
      v371 = OUTLINED_FUNCTION_50_47(v1195, v813, v854, v896, v938, v981, v1024, v1066, v1109, v1152, v1195, v1236, v1277, v1319, v1361);
      v379 = OUTLINED_FUNCTION_0_293(v371, v372, v373, v374, v375, v376, v377, v378, v814, v855, v897, v939, v982, v1025, v1067, v1110, v1153, v1196, v1237, v1278, v1320, v1362, v1401, v1442, v1481, v1521, v1561, v1601, 0, v1674, v1712, v1749, v1787, v1825, v1863, v1901, v1939, v1977, v2015, v2053, v2091, v2129, v2167, v2205, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v379, v380);
      v381 = __src[0];
      v382 = __src[1];
      v383 = __src[2];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v392 = OUTLINED_FUNCTION_12_148(v384, v385, v386, v387, v388, v389, v390, v391, v815, v856, v898, v940, v983, v1026, v1068, v1111, v1154, v1197, v1238, v1279, v1321, v1363, v1402, v1443, v1482, v1522, v1562, v1602, v1637, v1675, v1713, v1750, v1788, v1826, v1864, v1902, v1940, v1978, v2016, v2054, v2092, v2130, v2168, v2206, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      v393(v392, 21);

      v857();
      v394 = sub_1E4205F14();
      v396 = v395;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v394, v396, v397, v398);
      OUTLINED_FUNCTION_36();
      (*(v399 + 1888))();

      (v857)(v400);
      v401 = v857;
      OUTLINED_FUNCTION_2_1();
      (*(v402 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v404 = *(v403 + 1992);
      v404();
      OUTLINED_FUNCTION_2_1();
      (*(v405 + 1808))(1);

      (v404)(v406);
      OUTLINED_FUNCTION_2_1();
      (*(v407 + 512))(4);

      (v404)(v408);
      OUTLINED_FUNCTION_31_75();
      OUTLINED_FUNCTION_38_63(0x4081300000000000uLL);
      OUTLINED_FUNCTION_44_56(0x4075A00000000000uLL);
      v409 = MEMORY[0x1E69E7DE0];
      v410 = sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
      *&v2230 = v2233;
      BYTE8(v2230) = BYTE8(v2233);
      v418 = OUTLINED_FUNCTION_1_258(v410, v411, v412, v413, v414, v415, v416, v417, v816, v857, v899, v941, v984, v1027, v1069, v1112, v1155, v1198, v1239, v1280, v1322, v1364, v1403, v1444, v1483, v1523, v1563, v1603, v1638, v1676, v1714, v1751, v1789, v1827, v1865, v1903, v1941, v1979, v2017, v2055, v2093, v2131, v2169, v2207, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v418, v419);
      OUTLINED_FUNCTION_18_122(v420, v421, v422, v423, v424, v425, v426, v427, v817, v858, v900, v942, v985, v1028, v1070, v1113, v1156, v1199, v1240, v1281, v1323, v1365, v1404, v1445, v1484, v1524, v1564, v1604, v1639, v1677, v1715, v1752, v1790, v1828, v1866, v1904, v1942, v1980, v2018, v2056, v2094, v2132, v2170, v2208, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v428, v429, v430, v431, v432, v433, v434, v435, v818, v859, v901, v943, v986, v1029, v1071, v1114, v1157, v1200, v1241, v1282, v1324, v1366, v1405, v1446, v1485, v1525, v1565, v1605, v1640, v1678, v1716, v1753, v1791, v1829, v1867, v1905, v1943, v1981, v2019, v2057, v2095, v2133, v2171, v2209, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_59_35();
      v436();

      (v404)(v437);
      *&__dst[0] = 0x404E000000000000;
      BYTE8(__dst[0]) = 0;
      LOBYTE(v1679) = 1;
      *&v2242 = 0;
      BYTE8(v2242) = 1;
      OUTLINED_FUNCTION_38_63(0x4064A00000000000uLL);
      OUTLINED_FUNCTION_44_56(0x4054000000000000uLL);
      v438 = sub_1E3C3DE00(v409);
      *&v2230 = v2233;
      BYTE8(v2230) = BYTE8(v2233);
      v446 = OUTLINED_FUNCTION_1_258(v438, v439, v440, v441, v442, v443, v444, v445, v819, v860, v902, v944, v987, v1030, v1072, v1115, v1158, v1201, v1242, v1283, v1325, v1367, v1406, v1447, v1486, v1526, v1566, v1606, 0, v1679, v1717, v1754, v1792, v1830, v1868, v1906, v1944, v1982, v2020, v2058, v2096, v2134, v2172, v2210, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v446, v447);
      OUTLINED_FUNCTION_18_122(v448, v449, v450, v451, v452, v453, v454, v455, v820, v861, v903, v945, v988, v1031, v1073, v1116, v1159, v1202, v1243, v1284, v1326, v1368, v1407, v1448, v1487, v1527, v1567, v1607, v1641, v1680, v1718, v1755, v1793, v1831, v1869, v1907, v1945, v1983, v2021, v2059, v2097, v2135, v2173, v2211, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v456, v457, v458, v459, v460, v461, v462, v463, v821, v862, v904, v946, v989, v1032, v1074, v1117, v1160, v1203, v1244, v1285, v1327, v1369, v1408, v1449, v1488, v1528, v1568, v1608, v1642, v1681, v1719, v1756, v1794, v1832, v1870, v1908, v1946, v1984, v2022, v2060, v2098, v2136, v2174, v2212, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_58_36();
      v464();

      OUTLINED_FUNCTION_9_2();
      v466 = *(v465 + 2136);
      v467 = *v466();
      (*(v467 + 2048))();

      LOBYTE(__dst[0]) = 27;
      LOBYTE(v1643) = 17;
      LOBYTE(v2242) = 7;
      LOBYTE(v2239) = 27;
      LOBYTE(v2236) = 27;
      v468 = sub_1E3C3DE00(&qword_1F5D549D8);
      LOBYTE(v2230) = v2233;
      v476 = OUTLINED_FUNCTION_0_293(v468, v469, v470, v471, v472, v473, v474, v475, v822, v863, v905, v947, v990, v1033, v1075, v1118, v1161, v1204, v1245, v1286, v1328, v1370, v1409, v1450, v1489, v1529, v1569, v1609, v1643, v1682, v1720, v1757, v1795, v1833, v1871, v1909, v1947, v1985, v2023, v2061, v2099, v2137, v2175, v2213, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      sub_1E3C2FCB8(v476, v477);
      OUTLINED_FUNCTION_9_163();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v478, v479, v480, v481, v482, v483, v484, v485, v823, v864, v906, v948, v991, v1034, v1076, v1119, v1162, v1205, v1246, v1287, v1329, v1371, v1410, v1451, v1490, v1530, v1570, v1610, v1644, v1683, v1721, v1758, v1796, v1834, v1872, v1910, v1948, v1986, v2024, v2062, v2100, v2138, v2176, v2214, *v2217, *&v2217[8], *&v2217[16], *&v2217[24], *&v2217[32], *&v2217[40], *&v2217[48], *&v2217[56], *&v2217[64], *&v2217[72], *&v2217[80], *&v2217[88], v2218, v2219, v2220, v2221, v2222, v2223, v2224);
      OUTLINED_FUNCTION_42_64();
      v486();

      (v466)(v487);
      OUTLINED_FUNCTION_2_1();
      (*(v488 + 2048))();

      OUTLINED_FUNCTION_13();
      (*(v489 + 1792))(10);

      (v466)(v490);
      OUTLINED_FUNCTION_2_1();
      (*(v491 + 2048))();

      OUTLINED_FUNCTION_13();
      (*(v492 + 1720))(7);

      v493.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v493);
      OUTLINED_FUNCTION_3();
      v494.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v494);
      OUTLINED_FUNCTION_22_91();
      v495 = sub_1E4177030();
      OUTLINED_FUNCTION_50_12(v496, v497, v498, v499);
      sub_1E41776B0(v500, v501, v502, v503);
      OUTLINED_FUNCTION_35_68(v504, v505, v506, v507);
      sub_1E41776B0(v508, v509, v510, v511);
      v512.n128_u64[0] = 24.0;
      v513.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v512);
      nullsub_1(v513, v514);
      sub_1E41776B0(v515, v516, v517, v518);
      v519.n128_u64[0] = 28.0;
      v520.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v519);
      nullsub_1(v520, v521);
      sub_1E41776B0(v522, v523, v524, v525);
      v526.n128_u64[0] = 0x4042000000000000;
      v527.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v526);
      nullsub_1(v527, v528);
      sub_1E41776B0(v529, v530, v531, v532);
      v533.n128_u64[0] = 20.0;
      v534.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v533);
      nullsub_1(v534, v535);
      v540 = sub_1E41776B0(v536, v537, v538, v539);
      (v466)(v540);
      OUTLINED_FUNCTION_2_1();
      v542 = *(v541 + 1424);
      v543 = swift_retain_n();
      v542(v543);

      v1077(v544);
      OUTLINED_FUNCTION_2_1();
      (*(v545 + 1424))(v495);

      v1411(v546);
      OUTLINED_FUNCTION_2_1();
      (*(v547 + 1424))(v495);

      v907(v548);
      OUTLINED_FUNCTION_2_1();
      (*(v549 + 1424))(v495);

      (v401)(v550);
      OUTLINED_FUNCTION_2_1();
      (*(v551 + 1424))(v495);

      (v404)(v552);
      OUTLINED_FUNCTION_2_1();
      (*(v553 + 1424))(v495);

      sub_1E3F4110C();

      v554 = v1120;
LABEL_60:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42();
}