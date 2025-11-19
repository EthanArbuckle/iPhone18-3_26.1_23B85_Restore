uint64_t sub_1E403B314@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char *a3@<X8>)
{
  v50 = a2;
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBE8);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v49 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v48 - v14;
  type metadata accessor for BackgroundPlaybackModel(0);
  OUTLINED_FUNCTION_4_249();
  sub_1E403C278(v15, v16);
  sub_1E4200BC4();
  v17 = sub_1E3F46400();
  v52 = v18;
  v53 = v17;
  v51 = v19;
  v61 = swift_allocObject();
  memcpy((v61 + 16), a1, 0x91uLL);
  sub_1E3E89E34(a1, &v62);
  v20 = sub_1E4203DA4();
  v59 = v21;
  v60 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E4299720;
  sub_1E42036C4();
  v23 = sub_1E4203734();

  *(v22 + 32) = v23;
  sub_1E42036C4();
  v24 = sub_1E4203734();

  *(v22 + 40) = v24;
  MEMORY[0x1E690E590](v22);
  sub_1E4203F64();
  sub_1E4201144();
  v57 = v77;
  v25 = v78;
  v26 = v79;
  v27 = v80;
  v28 = v81;
  v56 = sub_1E4202734();
  *v7 = sub_1E4201D44();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBF0);
  sub_1E403B804(a1, v50, &v7[*(v29 + 44)]);
  sub_1E4203DA4();
  sub_1E4200D94();
  v30 = &v7[*(v4 + 36)];
  v31 = v83;
  *v30 = v82;
  *(v30 + 1) = v31;
  *(v30 + 2) = v84;
  __src[0] = *(a1 + 56);
  *&__src[1] = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E4203914();
  v32 = v62;
  v33 = v63;
  v34 = v64;
  v35 = *&v65;
  v36 = sub_1E403BF88();
  v37 = OUTLINED_FUNCTION_51_1();
  v38 = v58;
  sub_1E41DBF30(v32, v33, v37 & 1, v4, v36, v34, v35);

  sub_1E325F6F0(v7, &qword_1ECF3EBE0);
  v39 = *(v10 + 16);
  v40 = v54;
  v39(v54, v38, v8);
  v41 = v52;
  v42 = v53;
  *&__src[0] = v53;
  *(&__src[0] + 1) = v52;
  v43 = v51;
  *&__src[1] = v51;
  *(&__src[1] + 1) = sub_1E403BF80;
  __src[2] = v61;
  *&__src[3] = 0;
  *(&__src[3] + 1) = v57;
  *&__src[4] = v25;
  *(&__src[4] + 1) = v26;
  *&__src[5] = v27;
  *(&__src[5] + 1) = v28;
  *&__src[6] = v60;
  *(&__src[6] + 1) = v59;
  LOBYTE(__src[7]) = v56;
  v44 = v55;
  memcpy(v55, __src, 0x71uLL);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC10);
  v39(&v44[*(v45 + 48)], v40, v8);
  sub_1E403C040(__src, &v62);
  v46 = *(v49 + 8);
  v46(v58, v8);
  v46(v40, v8);
  v62 = v42;
  v63 = v41;
  v64 = v43;
  *&v65 = COERCE_DOUBLE(sub_1E403BF80);
  v66 = v61;
  v67 = 0;
  v68 = 0;
  v69 = v57;
  v70 = v25;
  v71 = v26;
  v72 = v27;
  v73 = v28;
  v74 = v60;
  v75 = v59;
  v76 = v56;
  return sub_1E403C0B0(&v62);
}

uint64_t sub_1E403B804@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v14 - v8);
  v10 = *(a1 + 24);
  if (v10)
  {

    *v9 = sub_1E4203DA4();
    v9[1] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC28);
    sub_1E403B938(v10, a2, v9 + *(v12 + 44));

    sub_1E379E528(v9, a3, &qword_1ECF3EC20);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

uint64_t sub_1E403B938@<X0>(unsigned __int16 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB58);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC30) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v27 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  memcpy(v39, a2, sizeof(v39));
  nullsub_1(v18, v19);
  memcpy(v38, v39, sizeof(v38));
  sub_1E3A546A4(a1, v38, 0, 0, v10);
  sub_1E4203DA4();
  sub_1E4200D94();
  (*(v7 + 32))(v14, v10, v5);
  v20 = &v14[*(v11 + 44)];
  v21 = v31;
  *v20 = v30;
  *(v20 + 1) = v21;
  *(v20 + 2) = v32;
  sub_1E4202724();
  sub_1E4200A54();
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = 0;
  sub_1E42022C4();
  sub_1E379E528(v14, v17, &qword_1ECF3EC30);
  v28 = *(v27[0] + 80);
  v29 = *(v27[0] + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E4203914();
  sub_1E403C118();
  OUTLINED_FUNCTION_18_15();
  sub_1E4202F54();

  return sub_1E325F6F0(v17, &qword_1ECF3EC38);
}

uint64_t sub_1E403BC2C()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E324FBDC();
  (*(v2 + 16))(v5, v6, v0);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, v8, "Extras: backgroundMediaView did appear", v9, 2u);
    MEMORY[0x1E69143B0](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v0);
  type metadata accessor for BackgroundPlaybackModel(0);
  OUTLINED_FUNCTION_4_249();
  sub_1E403C278(v10, v11);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_30();
  v13 = (*(v12 + 200))();

  if ((v13 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_30();
    (*(v15 + 208))(1);
  }

  return result;
}

uint64_t sub_1E403BE90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 145))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E403BED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

      return OUTLINED_FUNCTION_16_10(result, a2);
    }

    *(result + 145) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E403BF3C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_16_10(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_10(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E403BF88()
{
  result = qword_1ECF3EBF8;
  if (!qword_1ECF3EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EBE0);
    sub_1E32752B0(&qword_1ECF3EC00, &qword_1ECF3EC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EBF8);
  }

  return result;
}

uint64_t sub_1E403C040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E403C0B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E403C118()
{
  result = qword_1ECF3EC40;
  if (!qword_1ECF3EC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EC38);
    sub_1E403C1D4();
    sub_1E403C278(&qword_1ECF33448, MEMORY[0x1E6980270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EC40);
  }

  return result;
}

unint64_t sub_1E403C1D4()
{
  result = qword_1ECF3EC48;
  if (!qword_1ECF3EC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EC30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EC48);
  }

  return result;
}

uint64_t sub_1E403C278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E403C2C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E403C310(a1, a2);
  return v4;
}

void *sub_1E403C310(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[2] = a1;
  swift_beginAccess();
  v2[3] = a2;
  sub_1E384EE08(*(a1 + 98));
  v2[4] = v5;
  v2[5] = v6;
  return v2;
}

uint64_t sub_1E403C378()
{

  return v0;
}

uint64_t sub_1E403C3A8()
{
  sub_1E403C378();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1E403C3DC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E403C45C(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    return *(*(v2 + 16) + 98);
  }

  else
  {
    v1 = *(sub_1E3AF4598() + 98);
  }

  return v1;
}

id sub_1E403C4B8(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result stackedTextUseTypeAsViewIdEnabled];

    if (v4)
    {
      if (a1 < 0)
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v5 = *(*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 98);
      }

      else
      {
        v5 = *(sub_1E3AF4598() + 98);
      }

      sub_1E384EE08(v5);
    }

    else
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
    }

    return OUTLINED_FUNCTION_32_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E403C5C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LibStackedTextViews(0);
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v7 = *(v6 + 40);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  v8 = *(*a1 + 464);

  v10 = v8(v9);
  if (v10)
  {
    sub_1E403C6D8(v10, a3);
  }
}

uint64_t sub_1E403C6D8(unint64_t a1, void *a2)
{
  result = sub_1E32AE9B0(a1);
  v5 = 0;
  v21 = a1 & 0xC000000000000001;
  v22 = result;
  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1;
  while (v22 != v5)
  {
    if (v21)
    {
      result = MEMORY[0x1E6911E60](v5, v20);
      v6 = result;
    }

    else
    {
      if (v5 >= *(v19 + 16))
      {
        goto LABEL_49;
      }

      v6 = *(v20 + 8 * v5 + 32);
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v7 = *(v6 + 98);
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v25 == v23 && v26 == v24)
    {

LABEL_21:
      if (*v6 == _TtC8VideosUI13TextViewModel)
      {

        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      a2[2] = v13;
      goto LABEL_25;
    }

    v9 = sub_1E42079A4();

    if (v9)
    {
      goto LABEL_21;
    }

    sub_1E4206254();
    sub_1E4206254();
    if (v25 == v23 && v26 == v24)
    {

LABEL_28:
      v14 = *v6;
      if (*v6 != _TtC8VideosUI31LibDownloadingEpisodesViewModel)
      {
        goto LABEL_32;
      }

      v15 = sub_1E3DC7DF4();

      if (!v15)
      {
        v14 = *v6;
LABEL_32:
        if (v14 == _TtC8VideosUI13TextViewModel)
        {

          v16 = v6;
        }

        else
        {
          v16 = 0;
        }

        a2[3] = v16;
LABEL_25:

        goto LABEL_26;
      }

      a2[3] = v15;

      goto LABEL_26;
    }

    v11 = sub_1E42079A4();

    if (v11)
    {
      goto LABEL_28;
    }

    if (sub_1E3850594(v7))
    {
      if (*v6 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
      {

        v12 = v6;
      }

      else
      {
        v12 = 0;
      }

      a2[4] = v12;
      goto LABEL_25;
    }

    sub_1E4206254();
    sub_1E4206254();
    if (v25 == v23 && v26 == v24)
    {

LABEL_45:
      a2[5] = v6;
      goto LABEL_26;
    }

    v18 = sub_1E42079A4();

    if (v18)
    {
      goto LABEL_45;
    }

LABEL_26:

    ++v5;
  }

  return result;
}

uint64_t sub_1E403CAD8@<X0>(uint64_t a1@<X8>)
{
  v43[4] = a1;
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC50);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v43[0] = v43 - v8;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v43[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC60);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_67_2();
  v15 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  type metadata accessor for LibStackedTextViews(0);
  sub_1E3746E10(v21);
  v22 = sub_1E3B02A04();
  (*(v17 + 8))(v21, v15);
  v23 = *(v1 + 24);
  if (v22)
  {
    if (v23 && sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v24 + 152))(v44);
    }

    *v13 = sub_1E4201D54();
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC70);
    sub_1E403D8F8();
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v25, v26, v27);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v28, v29, v30);
    swift_storeEnumTagMultiPayload();
    sub_1E32752B0(&qword_1EE2884B0, &qword_1ECF3EC60);
    sub_1E32752B0(&qword_1EE2884B8, &qword_1ECF3EC50);
    OUTLINED_FUNCTION_35_76();
    v31 = v2;
    v32 = &qword_1ECF3EC60;
  }

  else
  {
    if (v23 && sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v33 + 152))(v44);
    }

    *v6 = sub_1E4201D54();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC68);
    sub_1E403CF30();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v34, v35, v36);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v37, v38, v39);
    swift_storeEnumTagMultiPayload();
    sub_1E32752B0(&qword_1EE2884B0, &qword_1ECF3EC60);
    OUTLINED_FUNCTION_18_5();
    sub_1E32752B0(v40, v41);
    OUTLINED_FUNCTION_35_76();
    OUTLINED_FUNCTION_21_1();
  }

  return sub_1E325F6F0(v31, v32);
}

void sub_1E403CF30()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED30);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v63 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v60 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v56 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v58 = v18;
  v59 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_28_6();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_67_2();
  if (v3[2])
  {
    v56 = v3;
    v57 = v5;

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E4202744();
    v34 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v35)
    {
      v34 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v36 + 152))(&v64);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    (*(v58 + 32))(v26, v21, v59);
    v38 = (v26 + *(v22 + 36));
    *v38 = v34;
    OUTLINED_FUNCTION_15_3(v38);
    sub_1E3741EA0(v26, v0, &qword_1ECF28CC0);
    sub_1E3741EA0(v0, v1, &qword_1ECF28CC0);
    v37 = 0;
    v3 = v56;
    v5 = v57;
  }

  else
  {
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v37, 1, v22);
  *v9 = sub_1E4201B84();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED40);
  sub_1E403D3EC(v3, &v9[*(v39 + 44)]);
  sub_1E4202744();
  v40 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v35)
  {
    v40 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v41 = v60;
  sub_1E3741EA0(v9, v60, &qword_1ECF3ED30);
  v42 = (v41 + *(v61 + 36));
  *v42 = v40;
  OUTLINED_FUNCTION_11_4(v42);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v43, v44, v45);
  OUTLINED_FUNCTION_34_74(v1, v32);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v46, v47, v48);
  OUTLINED_FUNCTION_34_74(v32, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED48);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v49, v50, v51);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v52, v53);
  OUTLINED_FUNCTION_107_2(v1);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v54, v55);
  OUTLINED_FUNCTION_107_2(v32);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E403D3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v66 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_6();
  if (a1[3])
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v6 + 32))(v2, v9, v4);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v65 = v2;
  __swift_storeEnumTagSinglePayload(v2, v15, 1, v4);
  if (a1[4])
  {

    OUTLINED_FUNCTION_25();
    sub_1E3F66914(v16, v17, v18, v19, 0, v20);
    v68 = *(&v71 + 1);
    v69 = v71;
    OUTLINED_FUNCTION_44_61();
    if (!v25)
    {
      v22 = 0;
    }

    v62 = v22;
    v67 = v23;
    v79 = v23;
    v77 = v71;
    v26 = v24;
    v78 = v24;
    v27 = v21;

    sub_1E3743538(&v79, v72, &qword_1ECF32E10);
    sub_1E3743538(&v77, v72, &qword_1ECF32E18);
  }

  else
  {
    v27 = 0;
    v67 = 0;
    v69 = 0;
    v68 = 0;
    v26 = 0;
    v62 = 0;
  }

  v28 = a1[5];
  if (v28)
  {
    v29 = *a1;
    v30 = *(*v28 + 392);

    v32 = v30(v31);
    sub_1E397F070(v29, v32, v72);
    v33 = v72[0];
    v34 = v72[1];
    v35 = *(&v73 + 1);
    v63 = v73;
    v36 = v74;

    v37 = v33;
    v38 = v34;
    OUTLINED_FUNCTION_44_61();
    if (v25)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v75 = v73;
    v76 = v74;

    sub_1E3743538(&v75, v70, &qword_1ECF2C5D0);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v63 = 0;
    v35 = 0;
    v36 = 0;
    v40 = 0;
  }

  v60[0] = v38;
  OUTLINED_FUNCTION_48_52(v65, &v81);
  OUTLINED_FUNCTION_48_52(v28, &v80);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED50);
  v42 = v28 + v41[12];
  *v42 = 0;
  *(v42 + 8) = 0;
  v43 = (v28 + v41[16]);
  v44 = v27;
  v45 = v67;
  *v43 = v27;
  v43[1] = v45;
  v46 = v69;
  v47 = v68;
  v43[2] = v69;
  v43[3] = v47;
  v60[1] = v26;
  v43[4] = v26;
  v43[5] = v62;
  v48 = (v28 + v41[20]);
  v49 = v27;
  v61 = v27;
  v67 = v45;
  v50 = v47;
  v68 = v47;
  sub_1E3908EB0(v49, v45, v46, v47);
  v51 = v37;
  v52 = v63;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_46_60();
  sub_1E3AF72E0(v53);
  v54 = v45;
  v55 = v69;
  sub_1E3908FA0(v44, v54, v69, v50);
  v56 = v60[0];
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_46_60();
  sub_1E3AF7344(v57);
  *v48 = v51;
  v48[1] = v56;
  v48[2] = v52;
  v48[3] = v35;
  v48[4] = v36;
  v48[5] = v40;
  sub_1E325F6F0(v65, &qword_1ECF29210);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_46_60();
  sub_1E3AF7344(v58);
  sub_1E3908FA0(v61, v67, v55, v68);
  return sub_1E325F6F0(v66, &qword_1ECF29210);
}

void sub_1E403D8F8()
{
  OUTLINED_FUNCTION_21_5();
  v5 = v4;
  v7 = v6;
  v123 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v132 = v9;
  v133 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v131 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_28_6();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v130 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v118 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_67_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v127 = v27 - v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  v126 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v125 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v118 - v34;
  v36 = v7[2];
  v128 = &v118 - v34;
  if (v36)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E4202744();
    v37 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v38)
    {
      v37 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v39 + 152))(v159);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v41 = v132;
    (*(v133 + 32))(v23, v0, v132);
    v42 = &v23[*(v14 + 36)];
    *v42 = v37;
    OUTLINED_FUNCTION_15_3(v42);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v43, v44, v45);
    v46 = v128;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v47, v48, v49);
    v35 = v46;
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v41 = v132;
  }

  v50 = 1;
  __swift_storeEnumTagSinglePayload(v35, v40, 1, v14);
  v51 = v7;
  if (v7[3])
  {

    OUTLINED_FUNCTION_18();
    v52 = v131;
    sub_1E3F23370();
    v53 = sub_1E4202744();
    v54 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v53)
    {
      v54 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    (*(v133 + 32))(v18, v52, v41);
    v55 = (v18 + *(v14 + 36));
    *v55 = v54;
    OUTLINED_FUNCTION_15_3(v55);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v56, v57, v58);
    v59 = v125;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v60, v61, v62);
    v50 = 0;
  }

  else
  {
    v59 = v125;
  }

  __swift_storeEnumTagSinglePayload(v59, v50, 1, v14);
  v122 = sub_1E4201B84();
  v145 = 0;
  v63 = v7[5];
  if (v63)
  {
    v64 = *v7;
    v65 = *(*v63 + 392);

    v67 = v65(v66);
    sub_1E397F070(v64, v67, v134);
    v68 = *v134;
    v69 = *&v134[8];
    v130 = *&v134[16];
    v132 = v134[32];
    v133 = *&v134[24];

    OUTLINED_FUNCTION_44_61();
    if (!v38)
    {
      v70 = 0;
    }

    v131 = v70;
    v148 = *&v134[16];
    LOBYTE(v149) = v134[32];
    v71 = v68;
    v63 = v69;

    sub_1E3743538(&v148, v135, &qword_1ECF2C5D0);
  }

  else
  {
    v71 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
  }

  if (v51[4])
  {

    OUTLINED_FUNCTION_25();
    sub_1E3F66914(v72, v73, v74, v75, 0, v76);
    v77 = *v136;
    v78 = *&v136[8];
    OUTLINED_FUNCTION_44_61();
    if (!v38)
    {
      v80 = 0;
    }

    v129 = v80;
    v83 = v81;
    v161[0] = v81;
    v147[0] = *v136;
    v84 = v82;
    LOBYTE(v147[1]) = v82;
    v85 = v79;

    sub_1E3743538(v161, v160, &qword_1ECF32E10);
    sub_1E3743538(v147, v160, &qword_1ECF32E18);
  }

  else
  {
    v85 = 0;
    v83 = 0;
    v77 = 0;
    v78 = 0;
    v84 = 0;
    v129 = 0;
  }

  v124 = v71;
  sub_1E3AF72E0(v71);
  OUTLINED_FUNCTION_24_108();
  v119 = v84;
  v86 = v129;
  sub_1E3908EB0(v87, v88, v89, v90);
  sub_1E3AF7344(v124);
  v120 = v77;
  v121 = v83;
  OUTLINED_FUNCTION_24_108();
  v91 = v119;
  v129 = v86;
  sub_1E3908FA0(v92, v93, v94, v95);
  OUTLINED_FUNCTION_24_108();
  sub_1E3908FA0(v96, v97, v98, v99);
  v100 = v124;
  v101 = v63;
  v102 = v130;
  v103 = v131;
  v104 = v132;
  v105 = v133;
  sub_1E3AF7344(v124);
  *&v147[0] = v100;
  *(&v147[0] + 1) = v101;
  *&v147[1] = v102;
  *(&v147[1] + 1) = v105;
  *&v147[2] = v104;
  *(&v147[2] + 1) = v103;
  *&v147[3] = v85;
  *(&v147[3] + 1) = v121;
  *&v147[4] = v120;
  *(&v147[4] + 1) = v78;
  *&v147[5] = v91;
  *(&v147[5] + 1) = v129;
  *&v148 = v100;
  *(&v148 + 1) = v101;
  v149 = v102;
  v150 = v105;
  v151 = v104;
  v152 = v103;
  v153 = v85;
  v154 = v121;
  v155 = v120;
  v156 = v78;
  v157 = v91;
  v158 = v129;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v106, v107, v108);
  sub_1E325F6F0(&v148, &qword_1ECF3ED18);
  memcpy(&v144[7], v147, 0x60uLL);
  v109 = v145;
  LOBYTE(v104) = sub_1E4202744();
  v110 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v104)
  {
    v110 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v160[0] = 0;
  v111 = v126;
  OUTLINED_FUNCTION_34_74(v128, v126);
  v112 = v125;
  v113 = v127;
  OUTLINED_FUNCTION_34_74(v125, v127);
  v114 = v123;
  OUTLINED_FUNCTION_34_74(v111, v123);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED20);
  OUTLINED_FUNCTION_34_74(v113, v114 + *(v115 + 48));
  v116 = *(v115 + 64);
  v117 = v122;
  *v134 = v122;
  *&v134[8] = 0;
  v134[16] = v109;
  memcpy(&v134[17], v144, 0x67uLL);
  v134[120] = v110;
  *&v134[121] = *v146;
  *&v134[124] = *&v146[3];
  *&v134[128] = v5;
  *&v134[136] = v1;
  *&v134[144] = v2;
  *&v134[152] = v3;
  v134[160] = 0;
  memcpy((v114 + v116), v134, 0xA1uLL);
  sub_1E3743538(v134, v135, &qword_1ECF3ED28);
  OUTLINED_FUNCTION_107_2(v112);
  OUTLINED_FUNCTION_107_2(v128);
  v135[0] = v117;
  v135[1] = 0;
  v136[0] = v109;
  memcpy(&v136[1], v144, 0x67uLL);
  v137 = v110;
  *v138 = *v146;
  *&v138[3] = *&v146[3];
  v139 = v5;
  v140 = v1;
  v141 = v2;
  v142 = v3;
  v143 = 0;
  sub_1E325F6F0(v135, &qword_1ECF3ED28);
  OUTLINED_FUNCTION_107_2(v127);
  OUTLINED_FUNCTION_107_2(v126);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E403E1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v6 = *(type metadata accessor for StackedTextViews(0) + 28);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1E403E278(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v9 = *(OUTLINED_FUNCTION_38_73() + 28);
  *(v5 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  v40 = v5;
  result = swift_storeEnumTagMultiPayload();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v13 = *(v4 + 16);
  while (1)
  {
    if (v13 == v11)
    {

      result = sub_1E32AE9B0(v12);
      if (!result)
      {

        v19 = MEMORY[0x1E69E7CC0];
LABEL_35:
        *v40 = v19;
        *(v40 + 16) = a3;
        *(v40 + 8) = a4 & 1;
        return result;
      }

      v17 = result;
      if (result < 1)
      {
        goto LABEL_37;
      }

      v39 = a4;
      v18 = 0;
      v19 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1E6911E60](v18, v12);
        }

        else
        {
          v20 = *(v12 + 8 * v18 + 32);
        }

        if (*v20 == _TtC8VideosUI13TextViewModel)
        {
          type metadata accessor for RichTextViewModel(0);
          OUTLINED_FUNCTION_50();

          v21 = sub_1E3AF46D0();
          v22 = sub_1E3AF46DC();
          v23 = sub_1E3AF46E0(v20, 0, v21, v22, 0, 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = OUTLINED_FUNCTION_27();
            v19 = sub_1E3ABC5C0(v31, v32, v33, v19);
          }

          v25 = *(v19 + 2);
          v24 = *(v19 + 3);
          if (v25 >= v24 >> 1)
          {
            v34 = OUTLINED_FUNCTION_35(v24);
            v19 = sub_1E3ABC5C0(v34, v25 + 1, 1, v19);
          }

          *(v19 + 2) = v25 + 1;
          *&v19[8 * v25 + 32] = v23;
        }

        else
        {
          sub_1E3742F1C();
          sub_1E4206254();
          sub_1E4206254();
          if (v43 == v41 && v44 == v42)
          {

LABEL_27:
            type metadata accessor for MediaTagsViewModel();
            swift_allocObject();
            OUTLINED_FUNCTION_50();

            v28 = a2;
            sub_1E403C310(v20, a2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = OUTLINED_FUNCTION_27();
              v19 = sub_1E3ABC5C0(v35, v36, v37, v19);
            }

            v30 = *(v19 + 2);
            v29 = *(v19 + 3);
            if (v30 >= v29 >> 1)
            {
              v38 = OUTLINED_FUNCTION_35(v29);
              v19 = sub_1E3ABC5C0(v38, v30 + 1, 1, v19);
            }

            *(v19 + 2) = v30 + 1;
            *&v19[8 * v30 + 32] = v42 | 0x8000000000000000;
            goto LABEL_32;
          }

          v27 = sub_1E42079A4();

          if (v27)
          {
            goto LABEL_27;
          }
        }

LABEL_32:
        if (v17 == ++v18)
        {

          a4 = v39;
          goto LABEL_35;
        }
      }
    }

    if (v11 >= *(v4 + 16))
    {
      break;
    }

    if (*(v4 + 8 * v11++ + 32))
    {

      MEMORY[0x1E6910BF0](v15);
      v16 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v16 >> 1)
      {
        OUTLINED_FUNCTION_35(v16);
        sub_1E42062F4();
      }

      result = sub_1E4206324();
      v12 = v43;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1E403E654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for StackedTextViews(0) + 28);
  *(a4 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  result = swift_storeEnumTagMultiPayload();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v11 = *(a1 + 16);
  while (v11 != v9)
  {
    if (v9 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    if (*(a1 + 8 * v9++ + 32))
    {

      MEMORY[0x1E6910BF0](v13);
      v14 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v14 >> 1)
      {
        OUTLINED_FUNCTION_35(v14);
        sub_1E42062F4();
      }

      result = sub_1E4206324();
      v10 = v30;
    }
  }

  v28 = a3;

  result = sub_1E32AE9B0(v10);
  v15 = result;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (v15 != v16)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v16, v10);
      v18 = result;
    }

    else
    {
      if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v18 = *(v10 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      goto LABEL_22;
    }

    type metadata accessor for RichTextViewModel(0);
    v19 = sub_1E3AF46D0();
    v20 = sub_1E3AF46DC();
    v21 = sub_1E3AF46E0(v18, 0, v19, v20, 0, 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v24 = OUTLINED_FUNCTION_27();
      result = sub_1E3ABC5C0(v24, v25, v26, v17);
      v17 = result;
    }

    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    if (v23 >= v22 >> 1)
    {
      v27 = OUTLINED_FUNCTION_35(v22);
      result = sub_1E3ABC5C0(v27, v23 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = v23 + 1;
    *(v17 + 8 * v23 + 32) = v21;
    ++v16;
  }

  *a4 = v17;
  *(a4 + 16) = a2;
  *(a4 + 8) = v28 & 1;
  return result;
}

uint64_t sub_1E403E8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v5 = *(type metadata accessor for StackedTextViews(0) + 28);
  *(a3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  result = swift_storeEnumTagMultiPayload();
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = (a1 + 40);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v7)
    {

      *a3 = v10;
      *(a3 + 16) = a2;
      return result;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v12 = *(v9 - 1);
    v11 = *v9;
    type metadata accessor for RichTextViewModel(0);
    swift_retain_n();
    swift_retain_n();
    v13 = sub_1E3AF46D0();
    v14 = sub_1E3AF46DC();
    v15 = sub_1E3AF46E0(v12, v11, v13, v14, 0, 1);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_27();
      result = sub_1E3ABC5C0(v18, v19, v20, v10);
      v10 = result;
    }

    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    if (v17 >= v16 >> 1)
    {
      v21 = OUTLINED_FUNCTION_35(v16);
      result = sub_1E3ABC5C0(v21, v17 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v17 + 1;
    *(v10 + 8 * v17 + 32) = v15;
    v9 += 2;
    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E403EA50@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC78);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  *a1 = sub_1E4201D44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *v10 = *(v1 + 16);
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC80);
  sub_1E403EC74(&v10[*(v11 + 44)]);
  if (*(v1 + 8) == 1)
  {
    v24 = 0;
    v22 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v23 = 1;
  }

  else
  {
    sub_1E4203DA4();
    sub_1E4200D94();
    v23 = 0;
    v24 = v29;
    v22 = v31;
    v12 = v33;
    v13 = v34;
    v27 = 1;
    v26 = v30;
    v25 = v32;
    v16 = 1;
    v15 = v30;
    v14 = v32;
    v28 = 0;
  }

  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC88) + 44);
  sub_1E3743538(v10, v7, &qword_1ECF3EC78);
  v18 = OUTLINED_FUNCTION_32_0();
  sub_1E3743538(v18, v19, &qword_1ECF3EC78);
  v20 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC90) + 48);
  *v20 = 0;
  *(v20 + 8) = v16;
  *(v20 + 16) = v24;
  *(v20 + 24) = v15;
  *(v20 + 32) = v22;
  *(v20 + 40) = v14;
  *(v20 + 48) = v12;
  *(v20 + 56) = v13;
  *(v20 + 64) = v23;
  sub_1E325F6F0(v10, &qword_1ECF3EC78);
  return sub_1E325F6F0(v7, &qword_1ECF3EC78);
}

id sub_1E403EC74@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC98);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for StackedTextViews(0);
  v10 = OUTLINED_FUNCTION_8_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECA8);
  OUTLINED_FUNCTION_0_10();
  v33 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECB0);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v35 = &v33 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 263;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v23 = result;
    v24 = [result vStackInForEachEnabled];

    v40 = *v1;
    if (v24)
    {
      KeyPath = swift_getKeyPath();
      sub_1E38F84AC(v1, v13);
      OUTLINED_FUNCTION_33_85();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_5_232(v25);
      *&v24[v1] = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECE0);
      OUTLINED_FUNCTION_8_192(&qword_1EE23B568);
      OUTLINED_FUNCTION_1();
      sub_1E32752B0(v26, &qword_1ECF3ECE0);
      sub_1E4203B34();
      v27 = v33;
      v28 = v36;
      (*(v33 + 16))(v8, v17, v36);
      swift_storeEnumTagMultiPayload();
      sub_1E403FB60();
      sub_1E403FC10();
      v29 = v35;
      sub_1E4201F44();
      (*(v27 + 8))(v17, v28);
    }

    else
    {
      swift_getKeyPath();
      sub_1E38F84AC(v1, v13);
      OUTLINED_FUNCTION_33_85();
      v30 = swift_allocObject();
      OUTLINED_FUNCTION_5_232(v30);
      *&v24[v1] = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECC0);
      OUTLINED_FUNCTION_8_192(&qword_1EE23B568);
      sub_1E403F914();
      OUTLINED_FUNCTION_46_60();
      sub_1E4203B34();
      v31 = KeyPath;
      v32 = v38;
      (*(KeyPath + 16))(v8, v5, v38);
      swift_storeEnumTagMultiPayload();
      sub_1E403FB60();
      sub_1E403FC10();
      v29 = v35;
      sub_1E4201F44();
      (*(v31 + 8))(v5, v32);
    }

    sub_1E3741EA0(v29, v39, &qword_1ECF3ECB0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E403F1E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E403C4B8(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E403F210@<X0>(uint64_t a1@<X0>, _WORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MediaTags(0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33498);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v67 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v67 - v19;
  v21 = type metadata accessor for RichTextView(0);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = (v24 - v23);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_67_2();
  if ((a1 & 0x8000000000000000) == 0)
  {
    v31 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_preferredLayout;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v32 = *(a1 + v31);
    v67[0] = a3;
    if (v32)
    {
LABEL_3:
      v33 = *(*v32 + 152);

      v33(v71, v34);

      goto LABEL_4;
    }

    v52 = sub_1E3AF4598();
    sub_1E3C27528();
    OUTLINED_FUNCTION_50();

    if (v52)
    {
      type metadata accessor for TextLayout();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v32 = 0;
    }

LABEL_4:
    if (v32)
    {
      v35 = *a2;
      if (v35 != 263)
      {
        v36 = *(*v32 + 1592);

        v36(v35);
      }
    }

    sub_1E3AF4598();
    OUTLINED_FUNCTION_50();

    v37 = *(a1 + 98);

    *a2 = v37;
    v38 = *(v67[1] + 16);

    sub_1E3AF563C(v39, v38, v25);
    sub_1E4202744();
    v40 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v41)
    {
      v40 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E40402F0(v25, v29, type metadata accessor for RichTextView);
    v42 = (v29 + *(v68 + 36));
    *v42 = v40;
    OUTLINED_FUNCTION_11_4(v42);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v43, v44, v45);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v46, v47, v48);
    swift_storeEnumTagMultiPayload();
    sub_1E403F9A0();
    sub_1E403FA5C();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F6F0(v49, v50);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v51 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if (v51)
  {
    [v51 margin];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *a2 = *(*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 98);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v53 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if (v53)
  {
    v54 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  }

  else
  {
    v54 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v55 = v53;

  v56 = v54;
  sub_1E3820C18();
  OUTLINED_FUNCTION_25();
  sub_1E3820C20(v57, v58, v59, v60, v61, v62);
  v63 = sub_1E4202744();
  v64 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v63)
  {
    v64 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E40402F0(v10, v14, type metadata accessor for MediaTags);
  v65 = (v14 + *(v70 + 36));
  *v65 = v64;
  OUTLINED_FUNCTION_11_4(v65);
  sub_1E3741EA0(v14, v17, &qword_1ECF33498);
  sub_1E3743538(v17, v20, &qword_1ECF33498);
  swift_storeEnumTagMultiPayload();
  sub_1E403F9A0();
  sub_1E403FA5C();
  sub_1E4201F44();

  v49 = v17;
  v50 = &qword_1ECF33498;
  return sub_1E325F6F0(v49, v50);
}

uint64_t sub_1E403F874()
{
  v3 = OUTLINED_FUNCTION_38_73();
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_32_86();
  OUTLINED_FUNCTION_47_55();
  sub_1E403F210(v0, (v2 + 16), v1);
  return swift_endAccess();
}

unint64_t sub_1E403F914()
{
  result = qword_1EE288F78;
  if (!qword_1EE288F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ECC0);
    sub_1E403F9A0();
    sub_1E403FA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F78);
  }

  return result;
}

unint64_t sub_1E403F9A0()
{
  result = qword_1EE289C28;
  if (!qword_1EE289C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ECC8);
    sub_1E403FB18(&qword_1EE284888, type metadata accessor for RichTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C28);
  }

  return result;
}

unint64_t sub_1E403FA5C()
{
  result = qword_1EE289B40;
  if (!qword_1EE289B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33498);
    sub_1E403FB18(&qword_1EE23BD30, type metadata accessor for MediaTags);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B40);
  }

  return result;
}

uint64_t sub_1E403FB18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E403FB60()
{
  result = qword_1ECF3ECD0;
  if (!qword_1ECF3ECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ECA8);
    sub_1E32752B0(&qword_1ECF3ECD8, &qword_1ECF3ECE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ECD0);
  }

  return result;
}

unint64_t sub_1E403FC10()
{
  result = qword_1ECF3ECE8;
  if (!qword_1ECF3ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EC98);
    sub_1E403F914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ECE8);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = (type metadata accessor for StackedTextViews(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E403FDBC()
{
  v3 = OUTLINED_FUNCTION_38_73();
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_32_86();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED08) + 44);
  OUTLINED_FUNCTION_47_55();
  sub_1E403F210(v0, (v2 + 16), v1 + v4);
  return swift_endAccess();
}

void sub_1E403FEF4()
{
  type metadata accessor for LibLockupViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E4040078(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E4040078(319, qword_1EE243750, type metadata accessor for DownloadStateIndicatorViewModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E4040078(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_7_222();
          sub_1E4040078(319, v4, v5, MEMORY[0x1E697DCC0]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E4040078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E4040104()
{
  sub_1E40401C0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_7_222();
    sub_1E4040078(319, v1, v2, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E40401C0()
{
  if (!qword_1EE23B570)
  {
    v0 = sub_1E4206374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B570);
    }
  }
}

unint64_t sub_1E4040210()
{
  result = qword_1EE288D98;
  if (!qword_1EE288D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ECF0);
    sub_1E32752B0(&qword_1EE2884B0, &qword_1ECF3EC60);
    sub_1E32752B0(&qword_1EE2884B8, &qword_1ECF3EC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D98);
  }

  return result;
}

uint64_t sub_1E40402F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_48_52@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_1E3743538(a1, v4, v2);
}

uint64_t static VUIBagServiceProxyObjC.fetchCategories()()
{
  OUTLINED_FUNCTION_24();
  type metadata accessor for VUIBagService();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E4040460;

  return sub_1E39C9808();
}

uint64_t sub_1E4040460()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1E4040570(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E4040604;

  return static VUIBagServiceProxyObjC.fetchCategories()();
}

uint64_t sub_1E4040604()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;

  if (v2)
  {
    v8 = sub_1E41FE264();

    v9 = OUTLINED_FUNCTION_44_1();
    v10(v9, 0, v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_44_1();
    v12(v11, v4, 0);
  }

  _Block_release(*(v5 + 16));
  v13 = *(v7 + 8);

  return v13();
}

uint64_t static VUIBagServiceProxyObjC.isFullTVAppEnabled()()
{
  OUTLINED_FUNCTION_24();
  type metadata accessor for VUIBagService();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E40407F4;

  return sub_1E39CA118();
}

uint64_t sub_1E40407F4()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1E404090C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E40409A0;

  return static VUIBagServiceProxyObjC.isFullTVAppEnabled()();
}

uint64_t sub_1E40409A0()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v8 = *v1;
  *v7 = *v1;

  v9 = *(v5 + 16);
  if (v2)
  {
    v10 = sub_1E41FE264();

    v11 = OUTLINED_FUNCTION_44_1();
    v12(v11, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, v4 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v13 = *(v8 + 8);

  return v13();
}

id VUIBagServiceProxyObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIBagServiceProxyObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIBagServiceProxyObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4040BF0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t sub_1E4040C80()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t sub_1E4040D10()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for ChannelLogoViewLayout();
    v1 = sub_1E3E38658(1);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E4040D7C()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(1, v3 & 1, v4, v5 & 1);
    *(v2 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E4040E3C()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E3C2D150();
  v2 = *sub_1E3E5FD88();
  v3 = *sub_1E3E5F6B8();
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1720))(9);

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 2056);

  v7 = OUTLINED_FUNCTION_133();
  v6(v7);

  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 2080);

  v10 = OUTLINED_FUNCTION_133();
  v9(v10);

  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 2104);

  v13 = OUTLINED_FUNCTION_133();
  v12(v13);

  OUTLINED_FUNCTION_36();
  v15 = *(v14 + 2128);

  v16 = OUTLINED_FUNCTION_13_179();
  v15(v16);

  OUTLINED_FUNCTION_36();
  v18 = *(v17 + 968);

  v18(0);

  OUTLINED_FUNCTION_12_164();
  LOBYTE(v270) = 3;
  LOBYTE(v267) = v19;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_11_181();
  v20 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v255) = v258;
  OUTLINED_FUNCTION_3_253(v20, v21, v22, v23);
  OUTLINED_FUNCTION_7_223();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v32 = OUTLINED_FUNCTION_8_193(v24, v25, v26, v27, v28, v29, v30, v31, v204, v215, v226, v236, __dst[0]);
  v33(v32);

  __dst[0] = v2;
  v273 = v3;

  v216 = v2;
  v237 = v3;
  *&v270 = *sub_1E3E5FDEC();
  sub_1E3755B54();
  v34 = v270;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_16_152();
  v35 = OUTLINED_FUNCTION_15_165();
  *&v252 = v255;
  v43 = OUTLINED_FUNCTION_6_215(v35, v36, v37, v38, v39, v40, v41, v42, v205, v216, v2, v237, v2);
  sub_1E3C2FCB8(v43, v44);
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  __dst[3] = __src[3];
  __dst[4] = __src[4];
  __dst[5] = __src[5];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v53 = OUTLINED_FUNCTION_7_25(v45, v46, v47, v48, v49, v50, v51, v52, v206, v217, v227, v238, __src[0]);
  v54(v53, 21);

  LOBYTE(__dst[0]) = 0;
  LOBYTE(v273) = 1;

  v55 = MEMORY[0x1E69E6370];
  sub_1E3C3DE00(MEMORY[0x1E69E6370]);
  LOBYTE(v267) = v270;
  sub_1E3C3DE00(v55);
  OUTLINED_FUNCTION_11_181();
  sub_1E3C3DE00(v55);
  LOBYTE(v255) = v258;
  sub_1E3C3DE00(v55);
  LOBYTE(v249) = v252;
  sub_1E3C2FCB8(__dst, __src);
  OUTLINED_FUNCTION_7_223();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v64 = OUTLINED_FUNCTION_7_25(v56, v57, v58, v59, v60, v61, v62, v63, v207, v218, v228, v239, __dst[0]);
  v65(v64, 33);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v66 + 1720))(6);

  OUTLINED_FUNCTION_36();
  v68 = *(v67 + 1984);

  v68(1);

  OUTLINED_FUNCTION_36();
  v70 = *(v69 + 2056);

  v70(0, 0);

  OUTLINED_FUNCTION_36();
  v72 = *(v71 + 2080);

  v72(0, 0);

  OUTLINED_FUNCTION_36();
  v74 = *(v73 + 2104);

  v74(0, 0);

  LOBYTE(__dst[0]) = 21;
  LOBYTE(v273) = 22;
  LOBYTE(v270) = 14;
  LOBYTE(v267) = 19;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_11_181();
  v75 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v255) = v258;
  OUTLINED_FUNCTION_3_253(v75, v76, v77, v78);
  OUTLINED_FUNCTION_7_223();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v87 = OUTLINED_FUNCTION_8_193(v79, v80, v81, v82, v83, v84, v85, v86, v208, v219, v229, v240, __dst[0]);
  v88(v87);

  __dst[0] = *sub_1E3E5FD88();
  v89 = __dst[0];
  v273 = *sub_1E3E5F6B8();
  v90 = v273;
  *&v270 = *sub_1E3E5FDEC();
  v91 = v270;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_16_152();
  v92 = OUTLINED_FUNCTION_15_165();
  *&v252 = v255;
  v100 = OUTLINED_FUNCTION_6_215(v92, v93, v94, v95, v96, v97, v98, v99, v209, v220, v230, v241, __dst[0]);
  sub_1E3C2FCB8(v100, v101);
  v102 = __src[0];
  v103 = __src[1];
  v104 = __src[2];
  v105 = __src[3];
  v106 = __src[4];
  v107 = __src[5];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  __dst[3] = __src[3];
  __dst[4] = __src[4];
  __dst[5] = __src[5];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v116 = OUTLINED_FUNCTION_7_25(v108, v109, v110, v111, v112, v113, v114, v115, v210, v221, v231, v242, __dst[0]);
  v117(v116, 21);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v118 + 1720))(5);

  OUTLINED_FUNCTION_4_251();
  v120 = *(v119 + 2056);

  v121 = OUTLINED_FUNCTION_133();
  v120(v121);

  OUTLINED_FUNCTION_4_251();
  v123 = *(v122 + 2080);

  v123(4, 0);

  OUTLINED_FUNCTION_4_251();
  v125 = *(v124 + 2104);

  v125(4, 0);

  OUTLINED_FUNCTION_4_251();
  v127 = *(v126 + 1792);

  v127(10);

  OUTLINED_FUNCTION_4_251();
  v129 = *(v128 + 2128);

  v130 = OUTLINED_FUNCTION_13_179();
  v129(v130);

  OUTLINED_FUNCTION_4_251();
  v132 = *(v131 + 680);

  v133 = v222;
  v132(v232);

  sub_1E3952C88();
  __dst[0] = v134;
  __dst[1] = v135;
  __dst[2] = v136;
  __dst[3] = v137;
  LOBYTE(__dst[4]) = 0;
  sub_1E3952C88();
  v273 = v138;
  v274 = v139;
  v275 = v140;
  v276 = v141;
  v277 = 0;
  type metadata accessor for UIEdgeInsets();
  v143 = v142;
  sub_1E3C2FC98();
  v267 = v270;
  v268 = v271;
  v269 = v272;
  sub_1E3C3DE00(v143);
  v261 = v264;
  v262 = v265;
  v263 = v266;
  sub_1E3C3DE00(v143);
  v255 = v258;
  v256 = v259;
  v257 = v260;
  sub_1E3C3DE00(v143);
  v249 = v252;
  v250 = v253;
  v251 = v254;
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v152 = OUTLINED_FUNCTION_7_25(v144, v145, v146, v147, v148, v149, v150, v151, v211, v222, v232, v243, __dst[0]);
  v153(v152, 0);

  OUTLINED_FUNCTION_12_164();
  LOBYTE(v270) = 3;

  sub_1E3C2FC98();
  LOBYTE(v264) = v267;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v258) = v261;
  v154 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v252) = v255;
  v162 = OUTLINED_FUNCTION_6_215(v154, v155, v156, v157, v158, v159, v160, v161, v212, v223, v233, v244, __dst[0]);
  sub_1E3C2FCB8(v162, v163);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v172 = OUTLINED_FUNCTION_8_193(v164, v165, v166, v167, v168, v169, v170, v171, v213, v224, v234, v245, __dst[0]);
  v173(v172);

  sub_1E4040D7C();
  OUTLINED_FUNCTION_2_1();
  v175 = (*(v174 + 304))();
  LOBYTE(v143) = v176;

  __dst[0] = v175;
  LOBYTE(__dst[1]) = v143 & 1;
  v273 = 0x4055000000000000;
  LOBYTE(v274) = 0;
  *&v270 = 0x4049000000000000;
  BYTE8(v270) = 0;
  *&v267 = 0;
  BYTE8(v267) = 1;

  v177 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  *&v261 = v264;
  BYTE8(v261) = BYTE8(v264);
  v178 = sub_1E3C3DE00(v177);
  *&v255 = v258;
  BYTE8(v255) = BYTE8(v258);
  OUTLINED_FUNCTION_3_253(v178, v179, v180, v181);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v190 = OUTLINED_FUNCTION_7_25(v182, v183, v184, v185, v186, v187, v188, v189, v214, v225, v235, v246, __dst[0]);
  v191(v190, 6);

  v192 = *(**(v1 + 144) + 1784);

  v194 = v192(v193);

  if (v194 != 11)
  {
    v195 = *(**(v1 + 144) + 2352);

    v195(v194, 1, 2);
  }

  v196 = sub_1E38A86A4();
  (*(*v196 + 1808))(3);

  v197 = sub_1E37BD068();
  sub_1E3C37CBC(v197, 9);

  v198 = sub_1E38A86A4();
  sub_1E3C37CBC(v198, 39);

  v199 = sub_1E4040D7C();
  sub_1E3C37CBC(v199, 59);

  v200 = sub_1E374EA2C();
  sub_1E3C37CBC(v200, 11);

  v201 = sub_1E4040D10();
  sub_1E3C37CBC(v201, 99);

  v202 = sub_1E374EB64();
  sub_1E3C37CBC(v202, 17);

  return v1;
}

uint64_t sub_1E4041CF4(void *a1, double a2)
{
  type metadata accessor for LayoutGrid();
  v4 = sub_1E3A2579C(a2);
  v5 = a1;
  sub_1E3C2AE10();
  v7 = v6;
  sub_1E4041E6C(v8, v6, v9);

  sub_1E38A86A4();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1696))();

  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 432);

  v14 = v12(v13);
  LOBYTE(v12) = v15;

  *&result = COERCE_DOUBLE(sub_1E40420F0(v4, v14, v12 & 1));
  if (v17 > 0.0)
  {
    v18 = v17;
    *&result = COERCE_DOUBLE(sub_1E3C2D080());
    if ((v19 & 1) != 0 || v18 != *&result)
    {

      *&result = COERCE_DOUBLE(sub_1E3C2D0A0());
    }
  }

  return result;
}

void sub_1E4041E6C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  sub_1E4040D10();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1640))(a1, a2, a3);

  sub_1E3C2F814();
  sub_1E37F99D4();
  if ((sub_1E4205E84() & 1) == 0)
  {
    v7 = sub_1E3C2F8E8();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isAXEnabled];
      v10 = sub_1E3C2F814();
      v11 = sub_1E3A24FDC(v10) | v9;
      sub_1E374EB64();
      OUTLINED_FUNCTION_2_1();
      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = 4;
      }

      (*(v12 + 1984))(v13);
    }
  }

  v14 = sub_1E38A86A4();
  (*(*v14 + 1696))(v14);

  v15 = [objc_opt_self() vui_keyWindow];
  if (v15)
  {
    v16 = v15;
    [v15 vuiWidth];
    [v16 vuiHeight];
    v17 = sub_1E3C2F814();
    OUTLINED_FUNCTION_36();
    v19 = *(v18 + 432);

    v21 = v19(v20);
    LOBYTE(v19) = v22;

    sub_1E40420F0(v17, v21, v19 & 1);
    if (v23 > 0.0)
    {
      v24 = v23;
      v25 = COERCE_DOUBLE(sub_1E3C2D080());
      if ((v26 & 1) != 0 || v24 != v25)
      {
        sub_1E3C2D0A0();
      }
    }
  }
}

uint64_t sub_1E40420F0(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0 && *&a2 > 0.0)
  {
    if ((sub_1E3A24FDC(result) & 1) == 0)
    {
      sub_1E373F630();
    }

    return VUIRoundValue();
  }

  return result;
}

__n128 sub_1E40421AC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4 & 1;
  return result;
}

void sub_1E40421CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  sub_1E4200AE4();
  (*(v27 + 16))(v31, v23, v25);
  v39 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = *(v25 + 16);
  (*(v27 + 32))(v40 + v39, v31, v25);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1E4045424;
  *(v41 + 24) = v40;
  sub_1E4203B64();

  (*(v34 + 8))(v38, v32);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40423BC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v8, v7);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = *(a1 + 16);
  (*(v3 + 32))(v10 + v9, v8, a1);
  return v10;
}

uint64_t sub_1E40424BC@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RoutingView();
  v9 = v8[10];
  *(a4 + v8[11]) = 0;
  v10 = (a4 + v8[12]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a4 + v8[14]);
  type metadata accessor for Router();
  OUTLINED_FUNCTION_0_326();
  sub_1E4044FBC(v12, v13);
  *v11 = sub_1E4201754();
  v11[1] = v14;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_99(KeyPath);
  v16 = swift_getKeyPath();
  v17 = OUTLINED_FUNCTION_23_99(v16);
  v18 = v8[17];
  a3(v17);
  *(a4 + v9) = a2;
  *(a4 + v8[9]) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();

  v21 = sub_1E4200544();
  sub_1E32752B0(&qword_1EE28A190, &qword_1ECF2D3C0);
  v19 = sub_1E42006B4();

  *(a4 + v8[13]) = v19;
  *(a4 + v18) = v21;
  return result;
}

void sub_1E404267C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_21_115();
  *(v9 + v10[10]) = 0;
  *(v9 + v10[11]) = 0;
  v11 = (v9 + v10[12]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v9 + v10[14]);
  type metadata accessor for Router();
  OUTLINED_FUNCTION_0_326();
  sub_1E4044FBC(v13, v14);
  *v12 = sub_1E4201754();
  v12[1] = v15;
  v16 = v9 + v10[15];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v9 + v10[16];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v9 + v10[17]) = 0;
  v5();
  *(v9 + v10[13]) = (*(v1 + 8))(v3, v1);
  *(v9 + v10[9]) = v7;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40427A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RoutingView();
  *(a4 + v8[10]) = 0;
  *(a4 + v8[11]) = 0;
  v9 = (a4 + v8[12]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a4 + v8[14]);
  type metadata accessor for Router();
  OUTLINED_FUNCTION_0_326();
  sub_1E4044FBC(v11, v12);
  *v10 = sub_1E4201754();
  v10[1] = v13;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_99(KeyPath);
  v15 = swift_getKeyPath();
  v16 = OUTLINED_FUNCTION_23_99(v15);
  *(a4 + v8[17]) = 0;
  a3(v16);
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  *(a4 + v8[13]) = (*(v18 + 8))(v17, v18);
  *(a4 + v8[9]) = a1;
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

void sub_1E40428F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v23 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37E98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C938);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36848);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_4_252();
  v30 = v4;
  v31 = sub_1E32752B0(v5, &qword_1ECF3C938);
  swift_getWitnessTable();
  sub_1E3CB533C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_254();
  v24 = OpaqueTypeConformance2;
  v25 = sub_1E4044FBC(v7, v8);
  swift_getWitnessTable();
  sub_1E40374F4();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_2();
  v26 = v3;
  v27 = OpaqueTypeMetadata2;
  v28 = sub_1E32752B0(v10, &qword_1ECF37E98);
  v29 = swift_getOpaqueTypeConformance2();
  v11 = sub_1E4201584();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  sub_1E4042C74();
  OUTLINED_FUNCTION_6_216();
  swift_getWitnessTable();
  v20 = *(v13 + 16);
  v20(v19, v16, v11);
  v21 = *(v13 + 8);
  v21(v16, v11);
  v20(v23, v19, v11);
  v21(v19, v11);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4042C74()
{
  OUTLINED_FUNCTION_31_1();
  v109 = v0;
  v2 = v1;
  v121 = v1;
  v108 = v3;
  v116 = v4;
  sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v114 = v6;
  v115 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v113 = v8 - v7;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v111 = v10;
  v112 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v110 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36848);
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v117 = v15;
  v105 = sub_1E4201644();
  OUTLINED_FUNCTION_0_10();
  v104 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v120 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C938);
  v21 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v106 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v91 = v24;
  v119 = *(v2 + 24);
  OUTLINED_FUNCTION_4_252();
  v129 = v119;
  v130 = sub_1E32752B0(v25, &qword_1ECF3C938);
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1E3CB533C();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v103 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v99 = v31;
  v107 = v13;
  v100 = WitnessTable;
  v127 = WitnessTable;
  v128 = v27;
  v98 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v125 = OpaqueTypeMetadata2;
  v126 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v95 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v88 - v36;
  sub_1E4202624();
  v96 = v33;
  v38 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v94 = v39;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v88 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB98);
  v125 = OpaqueTypeMetadata2;
  v126 = OpaqueTypeConformance2;
  v93 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_254();
  v47 = sub_1E4044FBC(v45, v46);
  v89 = v44;
  v123 = v44;
  v124 = v47;
  v48 = swift_getWitnessTable();
  v49 = sub_1E40374F4();
  v90 = v38;
  v125 = v38;
  v126 = v43;
  v102 = v43;
  v92 = v48;
  v127 = v48;
  v128 = v49;
  v50 = v49;
  v101 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v97 = v51;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  v118 = v53;
  sub_1E4201614();
  sub_1E3C055D4();
  v54 = v91;
  sub_1E4202E64();
  v55 = 1;
  OUTLINED_FUNCTION_15_5();
  v56 = v20;
  v57 = v109;
  v58(v56, v105);
  if (*(v57 + *(v121 + 40)) == 1)
  {
    sub_1E40421CC(v121, v59, v60, v61, v62, v63, v64, v65, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
    v55 = 0;
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8);
  v67 = v117;
  __swift_storeEnumTagSinglePayload(v117, v55, 1, v66);
  sub_1E4200BA4();
  v68 = v99;
  sub_1E42034B4();
  sub_1E325F7FC(v67, &qword_1ECF36848);
  OUTLINED_FUNCTION_15_5();
  v69(v54, v21);
  v70 = v110;
  sub_1E4202474();
  sub_1E4203224();
  (*(v111 + 8))(v70, v112);
  OUTLINED_FUNCTION_15_5();
  v71(v68, OpaqueTypeMetadata2);
  v72 = v113;
  sub_1E4201C94();
  v73 = v96;
  sub_1E4203294();
  (*(v114 + 8))(v72, v115);
  OUTLINED_FUNCTION_15_5();
  v75 = v74(v37, v73);
  MEMORY[0x1EEE9AC00](v75);
  v77 = v119;
  v76 = v120;
  *(&v88 - 4) = v120;
  *(&v88 - 3) = v77;
  *(&v88 - 2) = v57;
  v78 = v90;
  v79 = v102;
  v80 = v92;
  sub_1E4203214();
  OUTLINED_FUNCTION_15_5();
  v81(v42, v78);
  v122 = *(v57 + *(v121 + 52));
  v82 = sub_1E404393C(v57, v76, v77);
  v83 = swift_allocObject();
  *(v83 + 16) = sub_1E4044E64;
  *(v83 + 24) = v82;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E98);
  v125 = v78;
  v126 = v79;
  v127 = v80;
  v128 = v50;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_2();
  sub_1E32752B0(v84, &qword_1ECF37E98);
  v85 = v101;
  v86 = v118;
  sub_1E42035E4();

  OUTLINED_FUNCTION_15_5();
  v87(v86, v85);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40435E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_37_1();
  (*(v9 + 16))(a4, v4);
  v10 = (a4 + *(a3 + 48));
  v11 = *v10;
  sub_1E34AF604(a1);
  result = sub_1E34AF594(v11);
  *v10 = a1;
  v10[1] = a2;
  return result;
}

uint64_t sub_1E4043670@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_37_1();
  result = (*(v7 + 16))(a3, v3, a2);
  *(a3 + *(a2 + 44)) = a1;
  return result;
}

void sub_1E40436D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for RoutingView();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  if (*(v5 + *(v8 + 44)) == 1 && *(v5 + *(v8 + 40)) == 1)
  {
    v37 = v16;
    v19 = sub_1E4201C14();
    v35 = v20;
    v36 = v19;
    v33 = v21;
    v34 = v22;
    (*(v10 + 16))(v13, v5, v8);
    v23 = *(v10 + 80);
    v32 = v7;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v3;
    *(v25 + 24) = v1;
    (*(v10 + 32))(v25 + v24, v13, v8);
    sub_1E4203984();
    v26 = v32;
    (*(v37 + 32))(v32, v18, v14);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v14);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

uint64_t sub_1E404393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RoutingView();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v6, v10);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v8 + 32))(v14 + v13, v12, v6);
  return v14;
}

void sub_1E4043A54()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v70 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v68 = v10 - v9;
  v69 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v67 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v66 = v14 - v13;
  v15 = *(v3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + *(v18 + 44));
  *(&v72 + 1) = &unk_1F5D5E7B8;
  v73 = &off_1F5D5CC78;
  LOBYTE(v71) = 0;
  v20 = j__OUTLINED_FUNCTION_18();
  v21 = OUTLINED_FUNCTION_25_105(v20);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  if (v21)
  {
    goto LABEL_4;
  }

  v22 = (v1 + *(v3 + 56));
  if (*v22)
  {
    v23 = *v22;
    v24 = sub_1E3D7C418();

    if ((v24 & 1) == 0)
    {
      v52 = *v5;
      v53 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x1C8);
      v54 = v23;
      v55 = v53(v52, v19);

      if (v55)
      {
        v56 = (v1 + *(v3 + 48));
        if (*v56)
        {
          (*v56)(v19);
        }

        v57 = *(v5 + 1);
        v58 = *(v5 + 2);
        v71 = *(v5 + 1);
        v72 = v58;
        LOBYTE(v73) = v5[48];
        v59 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x1D0);
        v60 = v54;
        v59(v52, v19, v57, &v71);
      }

      goto LABEL_22;
    }

LABEL_4:
    v64 = v6;
    v25 = *(v1 + *(v3 + 48));
    if (v25)
    {
      v25(v19);
    }

    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = OUTLINED_FUNCTION_10_166(v1 + *(v3 + 60));
    if (sub_1E3F27770(v27, v28))
    {
      OUTLINED_FUNCTION_30();
      v30 = (*(v29 + 232))();

      *(v26 + 16) = v30;

      if (v30)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v26 + 16) = 0;
    }

    v31 = OUTLINED_FUNCTION_10_166(v1 + *(v3 + 64));
    if (!sub_1E3982FB8(v31, v32) || (OUTLINED_FUNCTION_30(), v34 = (*(v33 + 96))(), , !v34))
    {
      v30 = 0;
LABEL_15:
      *(&v72 + 1) = &unk_1F5D5E7B8;
      v73 = &off_1F5D5CC78;
      LOBYTE(v71) = 1;
      v35 = j__OUTLINED_FUNCTION_18();
      v36 = OUTLINED_FUNCTION_25_105(v35);
      __swift_destroy_boxed_opaque_existential_1(&v71);
      if (v36)
      {
        sub_1E32ADE38();
        v63 = sub_1E4206A04();
        v37 = v65;
        (*(v15 + 16))(v65, v1, v3);
        v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v39 = (v38 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
        v40 = (v38 + v16 + 63) & 0xFFFFFFFFFFFFFFF8;
        v41 = swift_allocObject();
        *(v41 + 16) = *(v3 + 16);
        (*(v15 + 32))(v41 + v38, v37, v3);
        v42 = v41 + v39;
        v43 = *(v5 + 1);
        *v42 = *v5;
        *(v42 + 16) = v43;
        *(v42 + 32) = *(v5 + 2);
        *(v42 + 48) = v5[48];
        *(v41 + v40) = v26;
        v74[4] = sub_1E4044EC8;
        v74[5] = v41;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 1107296256;
        v74[2] = sub_1E378AEA4;
        v74[3] = &block_descriptor_157;
        v44 = _Block_copy(v74);
        sub_1E4044F84(v5, &v71);

        v45 = v66;
        sub_1E4203FE4();
        *&v71 = MEMORY[0x1E69E7CC0];
        sub_1E4044FBC(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
        sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
        v46 = v68;
        v47 = v64;
        sub_1E42072E4();
        v48 = v63;
        MEMORY[0x1E6911380](0, v45, v46, v44);
        _Block_release(v44);

        (*(v70 + 8))(v46, v47);
        (*(v67 + 8))(v45, v69);
      }

      else
      {
        v49 = *(v5 + 1);
        v50 = *(*v19 + 800);
        v51 = *v5;

        v50(v51, v30, 0, v49);
      }

LABEL_22:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    type metadata accessor for BaseImpressionManager();
    v30 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v34);

    *(v26 + 16) = v30;
LABEL_13:

    goto LABEL_15;
  }

  type metadata accessor for Router();
  OUTLINED_FUNCTION_0_326();
  sub_1E4044FBC(v61, v62);
  sub_1E4201744();
  __break(1u);
}

void sub_1E4044188()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v25 = v4;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_21_115();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v24 = [objc_opt_self() sharedInstance];
  (*(v11 + 16))(v16, v8, v9);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v1;
  (*(v11 + 32))(v18 + v17, v16, v9);
  v19 = v18 + ((v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = *(v6 + 16);
  *v19 = *v6;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(v6 + 32);
  *(v19 + 48) = *(v6 + 48);
  *(v18 + ((v17 + v13 + 63) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v27[4] = sub_1E4045158;
  v27[5] = v18;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1E3E50C74;
  v27[3] = &block_descriptor_40_3;
  v21 = _Block_copy(v27);
  sub_1E4044F84(v6, &v26);

  v22 = v24;
  [v24 startPictureInPictureWithCompletion_];
  _Block_release(v21);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40443A0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v19 = v7;
  v9 = v8;
  v11 = v10;
  v12 = OUTLINED_FUNCTION_21_115();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v18 - v16;
  v20 = v6;
  v21 = v4;
  v22 = v2;
  v23 = v0;

  sub_1E404267C();
  sub_1E40435E0(v9, v19, v12, v11);
  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40444BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *(v5 + 16);
  v9(v7 - v6);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1E40445F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v4);
}

uint64_t sub_1E4044648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1E40446BC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    v1 = type metadata accessor for ViewModel();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_8_194(v1, &qword_1EE23ACC8, &unk_1ECF2C3F0, &unk_1E42A0B50);
      if (v3 <= 0x3F)
      {
        sub_1E4044B4C();
        if (v4 <= 0x3F)
        {
          sub_1E389B5AC();
          if (v6 <= 0x3F)
          {
            OUTLINED_FUNCTION_7_224(v5, &qword_1EE289ED8, &qword_1ECF3ED58, &unk_1E42E7320);
            if (v8 <= 0x3F)
            {
              OUTLINED_FUNCTION_7_224(v7, &qword_1EE289EC8, &qword_1ECF2F5C0, &unk_1E42AE860);
              if (v10 <= 0x3F)
              {
                OUTLINED_FUNCTION_8_194(v9, &qword_1EE28A180, &qword_1ECF2D3C0, &unk_1E42A9690);
                if (v11 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E4044834(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(v4 - 8) + 84);
  }

  if (a2)
  {
    if (v6 >= a2)
    {
LABEL_26:
      if (v5 >= 0x7FFFFFFF)
      {
        __swift_getEnumTagSinglePayload(a1, v5, v4);
      }
    }

    else
    {
      OUTLINED_FUNCTION_18_135();
      v9 = v8 + 8;
      v11 = v10 - v7;
      v12 = v9 & 0xFFFFFFF8;
      if ((v9 & 0xFFFFFFF8) != 0)
      {
        v13 = 2;
      }

      else
      {
        v13 = v11 + 1;
      }

      if (v13 >= 0x10000)
      {
        v14 = 4;
      }

      else
      {
        v14 = 2;
      }

      if (v13 < 0x100)
      {
        v14 = 1;
      }

      if (v13 >= 2)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      switch(v15)
      {
        case 1:
          v16 = *(a1 + v9);
          if (!v16)
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        case 2:
          v16 = *(a1 + v9);
          if (!v16)
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        case 3:
          __break(1u);
          return;
        case 4:
          v16 = *(a1 + v9);
          if (!v16)
          {
            goto LABEL_26;
          }

LABEL_22:
          v17 = v16 - 1;
          if (v12)
          {
            v17 = 0;
            LODWORD(v12) = *a1;
          }

          OUTLINED_FUNCTION_17_7(v7 + (v12 | v17));
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void sub_1E4044978(_DWORD *a1)
{
  OUTLINED_FUNCTION_18_135();
  v9 = v8 + 8;
  if (v7 >= v5)
  {
    v13 = 0;
  }

  else
  {
    v10 = v5 - v7;
    if (v8 == -8)
    {
      v11 = v10 + 1;
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
  }

  if (v2 <= v7)
  {
    switch(v13)
    {
      case 1:
        *(a1 + v9) = 0;
        if (v2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *(a1 + v9) = 0;
        if (v2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *(a1 + v9) = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (v2)
        {
LABEL_29:
          if (v3 < 0x7FFFFFFF)
          {
            v16 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((v2 & 0x80000000) != 0)
            {
              v17 = v2 & 0x7FFFFFFF;
            }

            else
            {
              v17 = (v2 - 1);
            }

            *v16 = v17;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, v2, v3, v4);
          }
        }

        break;
    }
  }

  else
  {
    if (v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = v2 - v7;
    }

    if (v9)
    {
      v15 = ~v7 + v2;
      bzero(a1, v9);
      *a1 = v15;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v9) = v14;
        break;
      case 2:
        *(a1 + v9) = v14;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *(a1 + v9) = v14;
        break;
      default:
        return;
    }
  }
}

void sub_1E4044B4C()
{
  if (!qword_1EE28A218)
  {
    v0 = sub_1E42004B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A218);
    }
  }
}

void sub_1E4044BAC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1E4044C1C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t sub_1E4044C68()
{
  v1 = OUTLINED_FUNCTION_26_114();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));
  v3 = *(v2 + v1[9]);
  v15 = 0;
  (*(*v3 + 776))(&v10, &v15, &unk_1F5D5E7B8, &off_1F5D5CC78);
  if (v12)
  {
    result = swift_dynamicCast();
    if (result && (v15 & 1) != 0)
    {
      v5 = OUTLINED_FUNCTION_10_166(v2 + v1[16]);
      if (sub_1E3982FB8(v5, v6) && (OUTLINED_FUNCTION_30(), v8 = (*(v7 + 96))(), , v8))
      {
        type metadata accessor for BaseImpressionManager();
        v9 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v8);
      }

      else
      {
        v9 = 0;
      }

      (*(*v3 + 800))(2, v9, 0, 0);
    }
  }

  else
  {
    result = sub_1E325F7FC(&v10, &unk_1ECF296E0);
  }

  if (*(v2 + v1[17]))
  {
    LOBYTE(v10) = 2;
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    v14 = 1;
    return sub_1E4200524();
  }

  return result;
}

void sub_1E4044EC8()
{
  type metadata accessor for RoutingView();

  sub_1E4044188();
}

uint64_t sub_1E4044FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_33Tm()
{
  v4 = *(v1 + 16);
  type metadata accessor for RoutingView();
  OUTLINED_FUNCTION_144();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12_165();
  (*(v7 + 8))(v2, v4);

  if (*(v2 + v0[12]))
  {
  }

  OUTLINED_FUNCTION_10_166(v2 + v0[15]);
  j__swift_release();
  OUTLINED_FUNCTION_10_166(v2 + v0[16]);
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1E4045158()
{
  v1 = OUTLINED_FUNCTION_26_114();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + ((v4 + 63) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v3 + *(v1 + 36));
  v8 = *v5;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v10 = *(v5 + 1);
  v11 = *(*v7 + 800);

  v11(v8, v9, 0, v10);
}

uint64_t objectdestroy_18Tm()
{
  v3 = *(v1 + 16);
  type metadata accessor for RoutingView();
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_12_165();
  (*(v4 + 8))(v2, v3);

  if (*(v2 + v0[12]))
  {
  }

  OUTLINED_FUNCTION_10_166(v2 + v0[15]);
  j__swift_release();
  OUTLINED_FUNCTION_10_166(v2 + v0[16]);
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1E40453AC()
{
  v0 = OUTLINED_FUNCTION_26_114();
  sub_1E40423BC(v0);
  sub_1E4044C68();
}

uint64_t sub_1E404542C()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v0 + 920);

  return v3(v1);
}

void sub_1E4045494(void *a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 888))();
  if (!v3)
  {
    return;
  }

  v11 = v3;
  v4 = sub_1E32859C4(v3, &selRef_canonicalId);
  v6 = v5;
  v7 = sub_1E32859C4(a1, &selRef_canonicalId);
  if (v6)
  {
    if (v8)
    {
      if (v4 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1E42079A4();

        if ((v10 & 1) == 0)
        {
LABEL_19:

          return;
        }
      }

LABEL_16:
      sub_1E382766C();
      if (sub_1E4206F64() & 1) == 0 && (sub_1E4045644(a1))
      {
        sub_1E3EB4874(1);
      }

      goto LABEL_19;
    }
  }

  else if (!v8)
  {
    goto LABEL_16;
  }
}

uint64_t sub_1E4045644(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v82 - v9;
  if (sub_1E39DFFE0())
  {
    v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2B8))();
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2D0))();
    if (!v11)
    {
      return 0;
    }
  }

  v87 = v11;
  v13 = sub_1E32859C4(a1, &selRef_canonicalId);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v86 = v15;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = [a1 showScoreboard];
  v85 = v8;
  if (!v17)
  {
    goto LABEL_18;
  }

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v86 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 && ((v89 = sub_1E3780DC4(a1), v19 = v5, v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8E0), sub_1E388EBAC(), v21 = v20, v5 = v19, v22 = sub_1E4149048(v21), , (v22 & 1) == 0) || [a1 configureScoreUpdates]))
  {
    v23 = sub_1E377C574();
    sub_1E377CDC8();
    v25 = v24;
  }

  else
  {
LABEL_18:
    v26 = sub_1E3E37EEC();
    (v5[2])(v10, v26, v4);

    v27 = v4;
    v28 = a1;
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067D4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v84 = v5;
      v32 = v31;
      v89 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_1E3270FC8(v86, v16, &v89);
      *(v32 + 12) = 2080;
      v33 = sub_1E377D34C();
      v34 = (v33 & 1) == 0;
      if (v33)
      {
        v35 = 0xD00000000000001ALL;
      }

      else
      {
        v35 = 0xD000000000000014;
      }

      if (v34)
      {
        v36 = "T@VUIPlayer,N,R";
      }

      else
      {
        v36 = "to prevent spoilers.";
      }

      v37 = sub_1E3270FC8(v35, v36 | 0x8000000000000000, &v89);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_1E323F000, v29, v30, "Suppressing scoreboard for %s %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      v5 = v84;
      OUTLINED_FUNCTION_6_0();
    }

    (v5[1])(v10, v27);
    v4 = v27;
    sub_1E4046124();
    v25 = 0;
    v8 = v85;
  }

  v38 = v87;
  v39 = MEMORY[0x1E69E7D40];
  v40 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x380))(v25);
  v41 = ((*v39 & *v2) + 888);
  v42 = *v41;
  v43 = (*v41)(v40);
  v83 = v42;
  v84 = v41;
  if (v43 && (v44 = sub_1E388ED3C(v43)) != 0 && (v45 = *(v44 + 16), , v45))
  {
    v46 = [v38 superview];
    if (v46)
    {
    }

    else
    {
      [v2 vui:v38 addSubview:0 oldView:?];
    }

    [v38 setHidden_];
    if ((sub_1E39DFFE0() & 1) == 0)
    {
      v50 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D0))();
      if (v50)
      {
        v51 = v50;
        v52 = v8;
        v53 = v5;
        [v50 invalidateData];
        [v51 setDelegate_];
        v54 = v51;
        v55 = [v54 setVuiClipsToBounds_];
        v56 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x168);
        v57 = (v56)(v55);
        if (v57)
        {
          v58 = (*(*v57 + 1816))(v57);

          (*(*v58 + 552))(&v89, v59);

          if ((v90 & 1) == 0)
          {
            v60 = objc_opt_self();
            sub_1E3952BF8();
            [v60 radiusFromCornerRadii_];
            [v54 _setCornerRadius_];
          }
        }

        v61 = v56();
        if (v61)
        {
          v62 = (*(*v61 + 1816))(v61);

          v64 = (*(*v62 + 1784))(v63);
        }

        else
        {
          v64 = 0;
        }

        v5 = v53;
        v8 = v52;
        [v54 setScoreboardLayout_];

        [v2 setNeedsLayout];
        [v2 layoutIfNeeded];

        v38 = v87;
      }
    }

    if (sub_1E3EB80C0())
    {
      v12 = 1;
      goto LABEL_50;
    }

    sub_1E3EB8884(0.2);
  }

  else
  {
    [v38 vui_removeFromSuperView];
    if ([v2 vui_isInAWindow])
    {
      v47 = v42();
      if (v47)
      {
        v48 = v47;
        v49 = [v47 configureScoreUpdates];

        if (v49)
        {
          sub_1E4046124();
          sub_1E4046298();
        }
      }
    }
  }

  v12 = 0;
LABEL_50:
  [v38 vui_setNeedsDisplay];
  v65 = sub_1E3E37EEC();
  (v5[2])(v8, v65, v4);

  v66 = v2;
  v67 = sub_1E41FFC94();
  v68 = sub_1E42067D4();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = v5;
    v82 = v4;
    v70 = 1701736302;
    v71 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v71 = 136315394;
    v72 = sub_1E3270FC8(v86, v16, &v88);

    *(v71 + 4) = v72;
    *(v71 + 12) = 2080;
    v74 = (v83)(v73);
    if (v74 && (v75 = sub_1E388ED3C(v74)) != 0)
    {
      v76 = v75;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
      v70 = MEMORY[0x1E6910C30](v76, v77);
      v79 = v78;
    }

    else
    {
      v79 = 0xE400000000000000;
    }

    v80 = sub_1E3270FC8(v70, v79, &v88);

    *(v71 + 14) = v80;
    _os_log_impl(&dword_1E323F000, v67, v68, "UnifiedOverlay: scoreboard for %s: %s", v71, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (v69[1])(v85, v82);
  }

  else
  {

    (v5[1])(v8, v4);
  }

  return v12;
}

uint64_t sub_1E404603C()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 888))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 jsContextDictionary];

    v4 = sub_1E4205C64();
    return v4;
  }

  else
  {

    return sub_1E4205CB4();
  }
}

void sub_1E4046124()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_5_233();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x378))();
  if (v3)
  {
    v16 = v3;
    v4 = sub_1E32859C4(v3, &selRef_canonicalId);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = sub_1E4206474();
      OUTLINED_FUNCTION_18_22(v8);
      v9 = v0;
      v10 = sub_1E4206424();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v9;
      v11[5] = v6;
      v11[6] = v7;
      OUTLINED_FUNCTION_16_34(v11, v13, v14, v15, v11);
    }

    else
    {
    }
  }
}

void sub_1E4046298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_5_233();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x378))();
  if (v3)
  {
    v17 = v3;
    v4 = sub_1E32859C4(v3, &selRef_canonicalId);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if ([v17 configureScoreUpdates])
      {
        v8 = sub_1E4206474();
        OUTLINED_FUNCTION_18_22(v8);
        v9 = v17;
        v10 = v0;
        v11 = sub_1E4206424();
        v12 = swift_allocObject();
        v13 = MEMORY[0x1E69E85E0];
        v12[2] = v11;
        v12[3] = v13;
        v12[4] = v9;
        v12[5] = v10;
        v12[6] = v6;
        v12[7] = v7;
        OUTLINED_FUNCTION_16_34(v12, v14, v15, v16, v12);

        return;
      }
    }
  }
}

uint64_t sub_1E404643C()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  sub_1E41FE5D4();
  v0[6] = swift_task_alloc();
  sub_1E4206434();
  v0[7] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[8] = v6;
  v0[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E4046500, v6, v5);
}

uint64_t sub_1E4046500()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
  v3 = [v2 lastUpdatedTime];
  sub_1E41FE584();

  v4 = v2;
  *(v0 + 80) = sub_1E376EE58(v2, 1, v1);
  v5 = sub_1E376DBD0();
  v6 = *v5;
  *(v0 + 88) = *v5;

  *(v0 + 96) = sub_1E32859C4(v4, &selRef_leagueId);
  *(v0 + 104) = v7;

  *(v0 + 128) = j__OUTLINED_FUNCTION_18() & 1;
  *(v0 + 129) = j__OUTLINED_FUNCTION_18() & 1;
  v8 = *v6;
  *(v0 + 112) = *(*v6 + 488);
  *(v0 + 120) = (v8 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E4046640, v6, 0);
}

uint64_t sub_1E4046640()
{
  OUTLINED_FUNCTION_27_2();
  v4 = *(v0 + 129);
  (*(v0 + 112))(*(v0 + 24), &off_1F5D93460, *(v0 + 32), *(v0 + 40), *(v0 + 96), *(v0 + 104), *(v0 + 128), *(v0 + 80), v4);

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E388DF00, v1, v2);
}

uint64_t sub_1E40466EC()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1E41FFCB4();
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  sub_1E4206434();
  v0[8] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[9] = v6;
  v0[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E40467E0, v6, v5);
}

uint64_t sub_1E40467E0()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E376DBD0();
  v2 = *v1;
  *(v0 + 88) = *v1;

  *(v0 + 112) = j__OUTLINED_FUNCTION_18() & 1;
  v3 = *v2;
  *(v0 + 96) = *(*v2 + 496);
  *(v0 + 104) = (v3 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E4046890, v2, 0);
}

uint64_t sub_1E4046890()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 96))(*(v0 + 16), &off_1F5D93460, *(v0 + 24), *(v0 + 32), *(v0 + 112));

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E4046910, v1, v2);
}

uint64_t sub_1E4046910()
{
  v18 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  v4 = sub_1E324FBDC();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1E41FFC94();
  v6 = sub_1E42067D4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v12 = v0[3];
    v11 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1E3270FC8(v12, v11, &v17);
    _os_log_impl(&dword_1E323F000, v5, v6, "UnifiedOverlay::ScoreboardManager::unregistering from sportskit scoreboard updates [%s]", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v8, v10);

  OUTLINED_FUNCTION_54();

  return v15();
}

BOOL sub_1E4046A94()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 912))();
  v4 = (*((*v1 & *v0) + 0x378))(v3);
  sub_1E377A8DC();
  v6 = v5;

  if (v6)
  {
    sub_1E4045494(v6);
  }

  return v6 != 0;
}

BOOL sub_1E4046BA0(uint64_t a1)
{
  v1 = (*(*a1 + 552))();
  if (v1)
  {
    sub_1E382766C();
    sub_1E3744600(v1);

    v2 = sub_1E37766C4();
    sub_1E4045494(v2);
  }

  return v1 != 0;
}

uint64_t sub_1E4046C6C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E40466EC();
}

uint64_t sub_1E4046D00()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E404643C();
}

uint64_t sub_1E4046D98()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for UpsellOfferViewLayout();
    v1 = sub_1E38A8DF4();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E4046E00()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for UpsellOfferTransactionViewLayout();
    v1 = sub_1E3FC915C();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E4046E9C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v2 = sub_1E3C2F9A0();
  v3 = *(*v2 + 1704);

  v3();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1784))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 35);

  (v3)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1856))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 39);

  (v3)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1904))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 31);

  (v3)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1928))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 23);

  (v3)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1952))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 17);

  (v3)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1976))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 40);

  (v3)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1808))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 43);

  (v3)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1832))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 5);

  v20 = *(*v2 + 1728);
  v20(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v21 + 1736))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 11);

  v20(v22);
  OUTLINED_FUNCTION_2_1();
  (*(v23 + 1760))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 59);

  return v2;
}

uint64_t sub_1E40472D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  (*(*v3 + 1704))();
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1640))(a1, a2, a3);

  (*(*v3 + 1728))(v8);
  OUTLINED_FUNCTION_2_1();
  (*(v9 + 1640))(a1, a2, a3);
}

uint64_t sub_1E404744C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = v37 - v10;
  v12 = [v2 addedCanonicalIDs];
  v13 = sub_1E4206624();

  v14 = *(v13 + 16);

  if (v14)
  {
    return 2;
  }

  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 upNextConfig];

  LOBYTE(v15) = [v16 shouldUpdateOutboundAfterRemoveFromUpNext];
  if (v15)
  {
    return 2;
  }

  v17 = [v2 removedCanonicalIDs];
  v18 = sub_1E4206624();

  v19 = *(v18 + 16);

  if (!v19)
  {
    v24 = sub_1E324FBDC();
    (*(v5 + 16))(v7, v24, v4);
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067E4();
    if (os_log_type_enabled(v25, v26))
    {
      v23 = 2;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v25, v26, "UpNextEvent:: canonical ids is empty for both added & removed canonical ids", v27, 2u);
      MEMORY[0x1E69143B0](v27, -1, -1);

      (*(v5 + 8))(v7, v4);
      return v23;
    }

    (*(v5 + 8))(v7, v4);
    return 2;
  }

  type metadata accessor for CollectionViewModel();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    v28 = sub_1E324FBDC();
    (*(v5 + 16))(v11, v28, v4);

    v29 = sub_1E41FFC94();
    v30 = sub_1E42067E4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136315138;
      v37[3] = *(a1 + 98);
      sub_1E37D144C();
      v33 = sub_1E4207944();
      v35 = sub_1E3270FC8(v33, v34, &v38);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1E323F000, v29, v30, "UpNextEvent:: viewModel is not CollectionViewModel, type = %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E69143B0](v32, -1, -1);
      MEMORY[0x1E69143B0](v31, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    return 2;
  }

  MEMORY[0x1EEE9AC00](v20);
  *&v37[-8] = v2;
  v22 = *(*v21 + 1360);

  v22(sub_1E399AFB8, &v37[-16]);

  return 1;
}

uint64_t sub_1E40478E4()
{
  if (*(v0 + 264))
  {
    v1 = *(v0 + 264);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v1 = sub_1E4097BF8(5);
    *(v0 + 264) = v1;
  }

  return v1;
}

uint64_t sub_1E4047950()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v1 = sub_1E4097BF8(5);
    *(v0 + 272) = v1;
  }

  return v1;
}

uint64_t sub_1E40479BC()
{
  if ((*(v0 + 289) & 1) == 0)
  {
    return *(v0 + 280);
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4201B74();
  }

  result = 0;
  *(v0 + 280) = 0;
  *(v0 + 288) = 1;
  *(v0 + 289) = 0;
  return result;
}

uint64_t sub_1E4047A0C()
{
  if (*(v0 + 296))
  {
    v2 = *(v0 + 296);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TextLayout();
    v2 = sub_1E383BCC0();
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_36();
    (*(v4 + 1696))(14);
    OUTLINED_FUNCTION_36();
    (*(v5 + 1792))(5);

    sub_1E3E5FDEC();
    OUTLINED_FUNCTION_7_16();
    v6 = *(*v2 + 680);
    v7 = v1;
    v6(v1);

    *(v3 + 296) = v2;
  }

  return v2;
}

uint64_t sub_1E4047B4C()
{
  if (*(v0 + 304))
  {
    v2 = *(v0 + 304);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TextLayout();
    v2 = sub_1E383BCC0();
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_36();
    v5 = *(v4 + 1696);
    if (v6)
    {
      v5(14);
      OUTLINED_FUNCTION_8();
      (*(v7 + 1792))(5);

      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v8 = *(*v2 + 680);
      v9 = v1;
      v8(v1);
    }

    else
    {
      v5(19);

      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v10 = *(*v2 + 680);
      v11 = v1;
      v10(v1);

      OUTLINED_FUNCTION_36();
      (*(v12 + 1720))(3);
    }

    *(v3 + 304) = v2;
  }

  return v2;
}

uint64_t sub_1E4047D24()
{
  if (*(v0 + 312))
  {
    v2 = *(v0 + 312);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TextLayout();
    v2 = sub_1E383BCC0();
    if (TVAppFeature.isEnabled.getter(10))
    {

      v4 = *sub_1E3E60364();
      OUTLINED_FUNCTION_8();
      v6 = *(v5 + 680);
      v7 = v4;
      v6(v4);

      OUTLINED_FUNCTION_36();
      (*(v8 + 1696))(19);
      OUTLINED_FUNCTION_36();
      (*(v9 + 1792))(5);
      OUTLINED_FUNCTION_36();
      (*(v10 + 2272))(1);
    }

    else
    {
      OUTLINED_FUNCTION_8();
      (*(v11 + 1696))(19);

      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v12 = *(*v2 + 680);
      v13 = v1;
      v12(v1);

      OUTLINED_FUNCTION_36();
      (*(v14 + 1720))(3);
    }

    *(v3 + 312) = v2;
  }

  return v2;
}

uint64_t sub_1E4047F50()
{
  v1 = v0;
  sub_1E3C27024();
  if (v2)
  {
    v3 = objc_opt_self();
    sub_1E4047B4C();
    OUTLINED_FUNCTION_2_1();
    v5 = (*(v4 + 2408))();

    v6 = [v3 vui:v5 fontFromTextLayout:?];

    if (!v6)
    {
      v6 = [v3 preferredFontForTextStyle_];
    }

    v7 = sub_1E4205ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v9 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v10 = sub_1E3CB73F8();
    *(inited + 64) = v10;
    *(inited + 40) = v6;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_327();
    sub_1E40491F0(v11, 255, v12);
    v30 = v9;
    v13 = v6;
    v14 = sub_1E4205CB4();
    sub_1E4049128(v14, v7);

    v15 = sub_1E3C27024();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v19 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v29 = v13;
        v20 = sub_1E4047D24();
        v21 = (*(*v20 + 2408))(v20);

        v22 = [v3 vui:v21 fontFromTextLayout:?];

        if (!v22)
        {
          v22 = [v3 preferredFontForTextStyle_];
        }

        MEMORY[0x1E69109E0](v17, v18);

        v23 = sub_1E4205ED4();

        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_1E4297BE0;
        *(v24 + 64) = v10;
        *(v24 + 32) = v30;
        *(v24 + 40) = v22;
        v25 = v30;
        v26 = v22;
        v27 = sub_1E4205CB4();
        sub_1E4049128(v27, v23);

        v13 = v29;
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_5_0();
    sub_1E4048300(*(v1 + 256));
  }
}

double sub_1E4048300(double a1)
{
  if (TVAppFeature.isEnabled.getter(10))
  {
    v3 = sub_1E3C2F8E8();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 preferredContentSizeCategory];

      OUTLINED_FUNCTION_15_0();
      v6 = *(v1 + 320);
      if ((sub_1E4206CA4() & 1) == 0)
      {
        v7 = v5;

        v6 = v7;
      }

      v8 = [objc_opt_self() defaultMetrics];
      sub_1E42067C4();
      a1 = v9;
    }
  }

  return a1;
}

uint64_t sub_1E404843C()
{
  *(v0 + 104) = 0x4036000000000000;
  *(v0 + 112) = 0x4036000000000000;
  *(v0 + 120) = 0;
  __asm { FMOV            V0.2D, #6.0 }

  *(v0 + 128) = _Q0;
  *(v0 + 144) = xmmword_1E42E73F0;
  *(v0 + 160) = 0x4042000000000000;
  *(v0 + 168) = 0x4042000000000000;
  *(v0 + 176) = 0;
  *(v0 + 184) = xmmword_1E42E7400;
  *(v0 + 200) = xmmword_1E42B41D0;
  *(v0 + 216) = xmmword_1E42B5E90;
  *(v0 + 232) = xmmword_1E42B5E90;
  *(v0 + 248) = xmmword_1E42E7410;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 264) = 0;
  *(v0 + 288) = 256;
  *(v0 + 296) = 0;
  *(v0 + 304) = 0;
  v6 = *MEMORY[0x1E69DDC20];
  *(v0 + 312) = 0;
  *(v0 + 320) = v6;
  v7 = v6;
  v8 = sub_1E3C2F9A0();

  v9 = sub_1E4047A0C();
  sub_1E3C37CBC(v9, 23);

  v10 = sub_1E4047B4C();
  sub_1E3C37CBC(v10, 15);

  v11 = sub_1E4047D24();
  sub_1E3C37CBC(v11, 17);

  v12 = sub_1E40478E4();
  sub_1E3C37CBC(v12, 41);

  sub_1E4048558(v13, v14);

  return v8;
}

uint64_t sub_1E4048558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1E40491F0(&qword_1ECF2ED30, a2, type metadata accessor for PlayerStatsLayout);
  sub_1E4200514();
  sub_1E4200594();

  if (TVAppFeature.isEnabled.getter(10))
  {
    v4 = sub_1E4048300(14.0);
    v5 = v4 + v4;
    v6 = sub_1E4048300(10.0);
    *&__dst[0] = sub_1E3952C10(v5, v6 + v6);
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v8;
    *(&__dst[1] + 1) = v9;
    LOBYTE(__dst[2]) = 0;
    v270 = sub_1E3952C10(56.0, 48.0);
    v271 = v10;
    v272 = v11;
    v273 = v12;
    v274 = 0;
    __asm { FMOV            V1.2D, #16.0 }

    v267 = xmmword_1E42CA420;
    v268 = _Q1;
    v269 = 0;
    v18.n128_f64[0] = sub_1E4048300(14.0);
    *&v264 = j__OUTLINED_FUNCTION_7_78(v18);
    *(&v264 + 1) = v19;
    *&v265 = v20;
    *(&v265 + 1) = v21;
    v266 = 0;
    type metadata accessor for UIEdgeInsets();
    v23 = v22;
    sub_1E3C2FC98();
    v258 = v261;
    v259 = v262;
    v260 = v263;
    sub_1E3C3DE00(v23);
    v252 = v255;
    v253 = v256;
    v254 = v257;
  }

  else
  {
    __dst[0] = xmmword_1E42E7420;
    __dst[1] = xmmword_1E429E550;
    LOBYTE(__dst[2]) = 0;
    v24 = *(MEMORY[0x1E69DDCE0] + 8);
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
    v25 = *(MEMORY[0x1E69DDCE0] + 24);
    v270 = *MEMORY[0x1E69DDCE0];
    v271 = v24;
    v272 = v26;
    v273 = v25;
    v274 = 0;
    *&v267 = v270;
    *(&v267 + 1) = v24;
    *&v268 = v26;
    *(&v268 + 1) = v25;
    v269 = 0;
    type metadata accessor for UIEdgeInsets();
    v28 = v27;
    sub_1E3C2FC98();
    v261 = v264;
    v262 = v265;
    v263 = v266;
    sub_1E3C3DE00(v28);
    v255 = v258;
    v256 = v259;
    v257 = v260;
    sub_1E3C3DE00(v28);
    __dst[15] = v252;
    __dst[16] = v253;
    v251 = v254;
  }

  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC();
  v29 = 22.0;
  v30 = 22.0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(30.0);
    v30 = sub_1E4048300(30.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 104) = v30;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(30.0);
    v29 = sub_1E4048300(30.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 112) = v29;
  *(v3 + 120) = 0;
  v31 = 6.0;
  v32 = 6.0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(8.0);
    v32 = sub_1E4048300(16.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 128) = v32;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(8.0);
    v31 = sub_1E4048300(10.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 136) = v31;
  v33 = 10.0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(12.0);
    v33 = sub_1E4048300(10.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 144) = v33;
  v34 = 4.0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(6.0);
    v34 = sub_1E4048300(8.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 152) = v34;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(42.0);
    v35 = sub_1E4048300(44.0);
  }

  else
  {
    v35 = 36.0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 160) = v35;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(46.0);
    v36 = sub_1E4048300(44.0);
  }

  else
  {
    v36 = 36.0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 168) = v36;
  *(v3 + 176) = 0;
  v37 = 5.0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(2.0);
    v37 = sub_1E4048300(5.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 184) = v37;
  TVAppFeature.isEnabled.getter(10);
  sub_1E3C2EAE8();
  v38 = 16.0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(24.0);
    v38 = sub_1E4048300(34.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 192) = v38;
  v39 = 4.0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(6.0);
    v39 = sub_1E4048300(5.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 200) = v39;
  v40 = 1.0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v40 = sub_1E4048300(1.0);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 208) = v40;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(3.0);
    sub_1E4048300(20.0);
    v41 = sub_1E4048300(3.0);
    v42 = sub_1E4048300(21.0);
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v41 = *(v3 + 232);
    v42 = *(v3 + 240);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 216) = v41;
  *(v3 + 224) = v42;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(3.0);
    sub_1E4048300(20.0);
    v43 = sub_1E4048300(3.0);
    v44 = sub_1E4048300(21.0);
  }

  else
  {
    v43 = 2.0;
    v44 = 16.0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 232) = v43;
  *(v3 + 240) = v44;
  v45 = 0.25;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v45 = sub_1E4048300(0.5);
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 248) = v45;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4048300(113.5);
    sub_1E4048300(205.0);
    sub_1E4048300(138.0);
    v46 = sub_1E4048300(142.0);
  }

  else
  {
    v46 = 90.0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 256) = v46;
  sub_1E4047950();
  OUTLINED_FUNCTION_2_1();
  (*(v47 + 1768))();

  *&__dst[0] = 0;
  BYTE8(__dst[0]) = 1;
  LOBYTE(v138) = 0;
  LOBYTE(v132) = 0;
  v122 = sub_1E4048300(10.5);
  LOBYTE(v126) = 0;
  sub_1E3C2FC98();
  v48 = OUTLINED_FUNCTION_8_100();
  OUTLINED_FUNCTION_6_217(v48, v49, v50, v51, v52, v53, v54, v55, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, 0x4025000000000000, v132, 0x4033000000000000, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v226, v230, v234, v238, v242, v246, __dst[0]);
  memcpy(__dst, __src, 0x59uLL);
  v56 = OUTLINED_FUNCTION_18();
  v64 = OUTLINED_FUNCTION_13_180(v56, v57, v58, v59, v60, v61, v62, v63, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v130, v133, v136, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v227, v231, v235, v239, v243, v247, __dst[0]);
  v65(v64);

  sub_1E40478E4();
  OUTLINED_FUNCTION_2_1();
  (*(v66 + 1768))();

  *&__dst[0] = 0;
  BYTE8(__dst[0]) = 1;
  LOBYTE(v140) = 0;
  LOBYTE(v134) = 0;
  v124 = sub_1E4048300(16.0);
  LOBYTE(v128) = 0;
  sub_1E3C2FC98();
  v67 = OUTLINED_FUNCTION_8_100();
  OUTLINED_FUNCTION_6_217(v67, v68, v69, v70, v71, v72, v73, v74, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, 0x4031000000000000, v134, 0x403E000000000000, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v224, v228, v232, v236, v240, v244, v248, __dst[0]);
  memcpy(__dst, __src, 0x59uLL);
  v75 = OUTLINED_FUNCTION_18();
  v83 = OUTLINED_FUNCTION_13_180(v75, v76, v77, v78, v79, v80, v81, v82, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v131, v135, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v225, v229, v233, v237, v241, v245, v249, __dst[0]);
  v84(v83);
}

void sub_1E4048E24(void *a1)
{
  OUTLINED_FUNCTION_3_0();
  v3 = *(v1 + 320);
  *(v1 + 320) = a1;
  v4 = a1;
  OUTLINED_FUNCTION_5_0();
  v5 = sub_1E4205F14();
  v7 = v6;
  if (v5 == sub_1E4205F14() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E42079A4();

    if ((v10 & 1) == 0)
    {
      sub_1E4048558(v11, v12);
    }
  }
}

void sub_1E4048EFC(uint64_t a1, id a2)
{
  if (a2)
  {
    v15 = [a2 preferredContentSizeCategory];
  }

  else
  {
    v15 = 0;
  }

  v4 = sub_1E3C2F8E8();
  if (!v4)
  {
    v12 = v15 == 0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 preferredContentSizeCategory];

  if (v15)
  {
    v7 = sub_1E4205F14();
    v9 = v8;
    if (v7 == sub_1E4205F14() && v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1E42079A4();
    }

LABEL_15:
    sub_1E3C35CF4(a1, a2);
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_1E3C35CF4(a1, a2);
LABEL_16:
  sub_1E4048558(v13, v14);
LABEL_17:
}

void sub_1E4049050()
{

  v1 = *(v0 + 320);
}

uint64_t sub_1E40490A0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E40490F8()
{
  v0 = sub_1E40490A0();

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

double sub_1E4049128(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_1E40491F0(&qword_1EE23B100, 255, type metadata accessor for Key);
  v3 = sub_1E4205C44();

  [a2 sizeWithAttributes_];
  v5 = v4;

  return v5;
}

uint64_t sub_1E40491F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E404925C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v69 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v68 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v58[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v58 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED68);
  OUTLINED_FUNCTION_0_10();
  v59 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v58 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v71 = v58 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED78);
  OUTLINED_FUNCTION_0_10();
  v64 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_3(v58 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0);
  OUTLINED_FUNCTION_5_7();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v58 - v21;
  v61 = v1;
  v23 = *v1;
  v24 = (*(**v1 + 488))(v20);
  v66 = v2;
  if (!v24 || (v25 = sub_1E373E010(17, v24), v26 = , !v25))
  {
    memset(__src, 0, 32);
    goto LABEL_7;
  }

  (*(*v25 + 512))(__src, v26);

  if (!*(&__src[1] + 1))
  {
LABEL_7:
    sub_1E325F6F0(__src, &unk_1ECF296E0);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v28 = *(&v72 + 1);
    v27 = v72;
    goto LABEL_9;
  }

LABEL_8:
  v27 = 0;
  v28 = 0xE000000000000000;
LABEL_9:
  if (!(*(*v23 + 552))())
  {
    v72 = 0u;
    v73 = 0u;
    goto LABEL_14;
  }

  *(&__src[1] + 1) = &unk_1F5D7BEF8;
  *&__src[2] = &off_1F5D7BC58;
  LOBYTE(__src[0]) = 3;
  sub_1E3F9F164(__src);

  __swift_destroy_boxed_opaque_existential_1(__src);
  if (!*(&v73 + 1))
  {
LABEL_14:
    sub_1E325F6F0(&v72, &unk_1ECF296E0);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v30 = *(&__src[0] + 1);
    v29 = *&__src[0];
    goto LABEL_16;
  }

LABEL_15:
  v29 = 0;
  v30 = 0xE000000000000000;
LABEL_16:
  *&__src[0] = v27;
  *(&__src[0] + 1) = v28;
  *&v72 = v29;
  *(&v72 + 1) = v30;
  v31 = sub_1E41FE6C4();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v31);
  sub_1E32822E0();
  v32 = sub_1E4207234();
  v34 = v33;
  v36 = v35;
  sub_1E325F6F0(v22, &qword_1ECF2FBA0);

  v38 = (v36 & 1) == 0;
  if (v36)
  {
    v39 = 15;
  }

  else
  {
    v39 = v34;
  }

  if (v38)
  {
    v40 = v32;
  }

  else
  {
    v40 = 15;
  }

  if ((*(*v23 + 392))(v37))
  {
    type metadata accessor for HintListCellLayout();
    v41 = swift_dynamicCastClass();
    if (!v41)
    {
    }
  }

  else
  {
    v41 = 0;
  }

  type metadata accessor for Accessibility();
  sub_1E40A8408();
  v58[1] = v42;
  *v9 = sub_1E4201D54();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED80);
  sub_1E4049AF4(v41, v27, v28, v40, v39, v61, &v9[*(v43 + 44)]);
  sub_1E32752B0(&qword_1ECF3ED88, &qword_1ECF3ED60);
  sub_1E42030A4();

  sub_1E325F6F0(v9, &qword_1ECF3ED60);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_13_22();
  v44 = v71;
  (*(v59 + 32))(v71, v13, v60);
  v45 = v63;
  v46 = memcpy(&v44[*(v63 + 36)], __src, 0x70uLL);
  v47 = (*(*v23 + 576))(v46);
  if (v47)
  {
    v48 = v66;
    (*(*v47 + 224))(v47);
  }

  else
  {
    v49 = sub_1E4204724();
    v48 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v49);
  }

  v50 = sub_1E4049F58();
  v51 = v67;
  sub_1E3B29C44();
  v52 = v62;
  v53 = v71;
  sub_1E3B29C48();
  OUTLINED_FUNCTION_15_5();
  v54(v51, v69);
  sub_1E325F6F0(v48, &qword_1ECF2B7B0);
  sub_1E325F6F0(v53, &qword_1ECF3ED70);
  *&v72 = v45;
  *(&v72 + 1) = v50;
  OUTLINED_FUNCTION_4_253();
  swift_getOpaqueTypeConformance2();
  v55 = v65;
  sub_1E3E03180();

  OUTLINED_FUNCTION_15_5();
  return v56(v52, v55);
}

uint64_t sub_1E4049AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a6;
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v41 = a2;
  v40 = a1;
  v50 = a7;
  v51 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v49 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  v48 = v9;
  v47 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v46 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED98);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDA0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDB0);
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v39 - v29;
  *v16 = sub_1E4201B84();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDB8);
  sub_1E404A054(v40, v41, v42, v43, v44, v45, &v16[*(v31 + 44)]);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_13_22();
  sub_1E329E454(v16, v20, &qword_1ECF3ED98);
  memcpy(&v20[*(v17 + 44)], __src, 0x70uLL);
  v32 = sub_1E4203744();
  KeyPath = swift_getKeyPath();
  sub_1E329E454(v20, v24, &qword_1ECF3EDA0);
  v34 = &v24[*(v21 + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  sub_1E4202474();
  v35 = sub_1E404ACD8();
  sub_1E4203224();
  OUTLINED_FUNCTION_15_5();
  v36(v13, v47);
  sub_1E325F6F0(v24, &qword_1ECF3EDA8);
  v37 = v48;
  sub_1E4201C94();
  v52 = v21;
  v53 = v35;
  swift_getOpaqueTypeConformance2();
  sub_1E4203294();
  (*(v49 + 8))(v37, v51);
  return (*(v27 + 8))(v30, v25);
}

unint64_t sub_1E4049F58()
{
  result = qword_1ECF3ED90;
  if (!qword_1ECF3ED90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ED70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ED60);
    sub_1E32752B0(&qword_1ECF3ED88, &qword_1ECF3ED60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ED90);
  }

  return result;
}

uint64_t sub_1E404A054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v138 = a6;
  v157 = a2;
  v151 = a7;
  v149 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v147 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v14);
  v145 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v143 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v17);
  v142 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v139 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v20);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDD8);
  OUTLINED_FUNCTION_0_10();
  v148 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17_3(&v130[-v24]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3A8);
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_26_2();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDE0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  v156 = &v130[-v32];
  v158[0] = sub_1E42037C4();
  v135 = a1;
  v154 = a3;
  v155 = v7;
  if (a1)
  {
    v33 = (*(*a1 + 1728))();
    v34 = MEMORY[0x1E6981748];
    v134 = v27;
    v133 = v25;
    v35 = a5;
    v36 = MEMORY[0x1E6981710];
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_10_167();
    v37 = v36;
    a5 = v35;
    v25 = v133;
    v27 = v134;
    sub_1E3C8F60C(v33, v38, v39, v34, v37);

    v41 = (*(*a1 + 1728))(v40);
    (*(*v41 + 152))(v158);
    v42 = v158[0];
    v43 = v158[1];
    v44 = v158[2];
    v45 = v158[3];

    if ((v159 & 1) == 0)
    {
      v46.n128_u64[0] = v42;
      v47.n128_u64[0] = v43;
      v48.n128_u64[0] = v44;
      v49.n128_u64[0] = v45;
      v50 = j_nullsub_1(v46, v47, v48, v49);
      goto LABEL_6;
    }
  }

  else
  {
    v54 = MEMORY[0x1E6981748];
    v55 = MEMORY[0x1E6981710];
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_10_167();
    sub_1E3C8F60C(0, v56, v57, v54, v55);
  }

  v50 = OUTLINED_FUNCTION_5_8();
LABEL_6:
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = sub_1E4202734();
  v63 = v152;
  (*(v27 + 32))(v152, v155, v25);
  v64 = v63 + *(v153 + 36);
  *v64 = v62;
  *(v64 + 8) = v58;
  *(v64 + 16) = v59;
  *(v64 + 24) = v60;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  sub_1E329E454(v63, v156, &qword_1ECF3EDE0);
  v160 = sub_1E4206184();
  v161 = v65;
  v162 = v66;
  v163 = v67;
  v68 = sub_1E404AEC4();
  result = sub_1E4202C44();
  if (a5 >> 14 < a4 >> 14)
  {
    __break(1u);
  }

  else
  {
    v134 = result;
    v133 = v70;
    v73 = v71;
    v132 = v72;
    v160 = sub_1E4206184();
    v161 = v74;
    v162 = v75;
    v163 = v76;
    v153 = v68;
    v77 = sub_1E4202C44();
    v79 = v78;
    v81 = v80;
    v152 = a5;
    v82 = sub_1E4202BF4();
    v84 = v83;
    v86 = v85;
    sub_1E37434B8(v77, v79, v81 & 1);

    LOBYTE(v79) = v73;
    v87 = v134;
    v88 = v133;
    v155 = sub_1E4202BD4();
    v90 = v89;
    v131 = v91;
    sub_1E37434B8(v82, v84, v86 & 1);

    sub_1E37434B8(v87, v88, v79 & 1);

    v160 = sub_1E39F9EF4(v152, v157, v154);
    v161 = v92;
    v162 = v93;
    v163 = v94;
    v95 = sub_1E4202C44();
    v97 = v96;
    LOBYTE(v87) = v98;
    v99 = v131;
    v100 = v90;
    v101 = sub_1E4202BD4();
    v103 = v102;
    LODWORD(v157) = v104;
    v106 = v105;
    sub_1E37434B8(v95, v97, v87 & 1);

    sub_1E37434B8(v155, v100, v99 & 1);

    v155 = v101;
    v160 = v101;
    v161 = v103;
    v154 = v103;
    v108 = v157 & 1;
    LOBYTE(v162) = v157 & 1;
    v157 = v106;
    v163 = v106;
    if (v135)
    {
      v109 = (*(*v135 + 1704))(v107);
    }

    else
    {
      v109 = 0;
    }

    type metadata accessor for SearchHintLockupListCell();
    v110 = v137;
    sub_1E3746E10(v137);
    v111 = v141;
    sub_1E374709C(v141);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDE8);
    v113 = sub_1E404AE48();
    v114 = j__OUTLINED_FUNCTION_18();
    v115 = v144;
    sub_1E37B5FBC(v144);
    v116 = j__OUTLINED_FUNCTION_18();
    v117 = v140;
    sub_1E37B6028(v109, v110, v111, v114, v115, v116 & 1, v112, v113, v140);

    OUTLINED_FUNCTION_15_5();
    v118(v115, v149);
    OUTLINED_FUNCTION_15_5();
    v119(v111, v145);
    OUTLINED_FUNCTION_15_5();
    v120(v110, v142);
    sub_1E37434B8(v155, v154, v108);

    v121 = v156;
    v122 = v136;
    sub_1E32E1488(v156, v136);
    v123 = v148;
    v124 = *(v148 + 16);
    v125 = v146;
    v126 = v150;
    v124(v146, v117, v150);
    v127 = v151;
    sub_1E32E1488(v122, v151);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDF8);
    v124(v127 + *(v128 + 48), v125, v126);
    v129 = *(v123 + 8);
    v129(v117, v126);
    sub_1E325F6F0(v121, &qword_1ECF3EDE0);
    v129(v125, v126);
    return sub_1E325F6F0(v122, &qword_1ECF3EDE0);
  }

  return result;
}

uint64_t sub_1E404AABC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for SearchHintLockupListCell();
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v5 = *(v3 + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for SearchHintLockupListCell()
{
  result = qword_1EE297340;
  if (!qword_1EE297340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E404AC04()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E374A21C(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
    if (v1 <= 0x3F)
    {
      sub_1E374A21C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E404ACD8()
{
  result = qword_1ECF3EDC0;
  if (!qword_1ECF3EDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EDA8);
    sub_1E404AD90();
    sub_1E32752B0(&qword_1EE288788, &qword_1ECF28998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EDC0);
  }

  return result;
}

unint64_t sub_1E404AD90()
{
  result = qword_1ECF3EDC8;
  if (!qword_1ECF3EDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EDA0);
    sub_1E32752B0(&qword_1ECF3EDD0, &qword_1ECF3ED98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EDC8);
  }

  return result;
}

unint64_t sub_1E404AE48()
{
  result = qword_1ECF3EDF0;
  if (!qword_1ECF3EDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EDF0);
  }

  return result;
}

unint64_t sub_1E404AEC4()
{
  result = qword_1EE23B628;
  if (!qword_1EE23B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B628);
  }

  return result;
}

void sub_1E404AF18()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v21 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(*v0 + 1216))(0, 0);
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x250);

  v9(v10);
  sub_1E404B22C();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22[4] = sub_1E405A6C0;
  v22[5] = v12;
  OUTLINED_FUNCTION_12_0();
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v22[2] = v13;
  v22[3] = &block_descriptor_158;
  v14 = _Block_copy(v22);

  sub_1E4203FE4();
  v22[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_254();
  sub_1E3274C14(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v17, v18);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v8, v1, v14);
  _Block_release(v14);

  v19 = OUTLINED_FUNCTION_11_6();
  v20(v19);
  (*(v4 + 8))(v8, v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E404B22C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v58 = v3;
  v63 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v61 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v62 = v10;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v59 = v17;
  v60 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v18 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v19 = VUISignpostLogObject();
  OUTLINED_FUNCTION_4_199();
  sub_1E41FFBA4();

  OUTLINED_FUNCTION_38_3();
  v20 = MEMORY[0x1E69E7D40];
  v64 = *((*MEMORY[0x1E69E7D40] & v21) + 0x230);
  if (v64() || (OUTLINED_FUNCTION_154(), (*(v22 + 584))()))
  {

    if (*(v2 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell) == 1)
    {
      v57 = v6;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v23(v15);
      v24 = v2;
      v25 = sub_1E41FFC94();
      v26 = sub_1E4206814();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = v7;
        v28 = OUTLINED_FUNCTION_100();
        v65 = v28;
        *v27 = 136315650;
        v29 = sub_1E41E1364(v2);
        sub_1E3270FC8(v29, v30, &v65);
        OUTLINED_FUNCTION_142_11();
        *(v27 + 4) = v20;
        v20 = MEMORY[0x1E69E7D40];
        *(v27 + 12) = 1024;
        *(v27 + 14) = v57 & 1;
        *(v27 + 18) = 1024;
        *(v27 + 20) = v63 & 1;
        _os_log_impl(&dword_1E323F000, v25, v26, "MUPN::%s::StackViewController::applySnapshot animating differences %{BOOL}d reloaded data %{BOOL}d", v27, 0x18u);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v7 = v54;
        OUTLINED_FUNCTION_6_0();
        v6 = v57;
        OUTLINED_FUNCTION_6_0();

        v31 = OUTLINED_FUNCTION_106_19();
        v32(v31, v11);
      }

      else
      {

        v33 = OUTLINED_FUNCTION_106_19();
        v34(v33, v11);
        v6 = v57;
      }
    }

    sub_1E404C314();
    OUTLINED_FUNCTION_154();
    (*(v35 + 664))();
    if (v6 & 1) != 0 && (sub_1E404C4C8())
    {
      OUTLINED_FUNCTION_154();
      (*(v36 + 656))();
      sub_1E404C580();
    }

    sub_1E4059D8C();
    v37 = v62;
    sub_1E4200074();
    OUTLINED_FUNCTION_38_3();
    v56 = *((*v20 & v38) + 0x290);
    v39 = v56();
    sub_1E404E380(v39, v2);

    if ((sub_1E404C4C8() & 1) != 0 && v64())
    {
      OUTLINED_FUNCTION_154();
      (*(v40 + 1184))();
    }

    if (v63)
    {

      OUTLINED_FUNCTION_154();
      v42 = (*(v41 + 536))();
      sub_1E42000A4();
    }

    else
    {
      OUTLINED_FUNCTION_154();
      v44 = (*(v43 + 536))();
      OUTLINED_FUNCTION_25();
      sub_1E42000D4();

      if ((v58 & 1) == 0)
      {
        v55 = v7;
        v45 = v64();
        v46 = sub_1E404E6F8(v45);

        if (v46)
        {
          v47 = *(v46 + 16);
          if (v47)
          {
            v65 = MEMORY[0x1E69E7CC0];
            sub_1E4207574();
            v48 = 32;
            do
            {

              sub_1E4207544();
              sub_1E4207584();
              sub_1E4207594();
              sub_1E4207554();
              v48 += 16;
              --v47;
            }

            while (v47);

            v49 = v65;
            v37 = v62;
          }

          else
          {

            v49 = MEMORY[0x1E69E7CC0];
          }

          v7 = v55;
          if (v49 >> 62)
          {
            type metadata accessor for ViewModel();

            v50 = sub_1E42076C4();
          }

          else
          {

            sub_1E42079D4();
            type metadata accessor for ViewModel();
            v50 = v49;
          }

          v65 = MEMORY[0x1E69E7CC0];
          sub_1E379738C(v50);
        }

        else
        {
          v7 = v55;
        }

        sub_1E404E8A4();

        (v56)(v51);
        sub_1E404F1B8();
      }
    }

    if (sub_1E404C4C8())
    {
      if (v64())
      {
        OUTLINED_FUNCTION_154();
        (*(v52 + 1192))();
      }
    }

    (*(v61 + 8))(v37, v7);
    sub_1E4206B94();
    v53 = VUISignpostLogObject();
    OUTLINED_FUNCTION_4_199();
    sub_1E41FFBA4();

    (*(v59 + 8))(v1, v60);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E42076B4();
    __break(1u);
  }
}

void sub_1E404BB24()
{
  OUTLINED_FUNCTION_31_1();
  v68 = v2;
  v69 = v3;
  OUTLINED_FUNCTION_118();
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v67 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v65 = v7;
  OUTLINED_FUNCTION_138();
  v66 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v64 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v63 = v10;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v70 = v1;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell) == 1)
  {
    v61 = v4;
    sub_1E324FBDC();
    v15 = OUTLINED_FUNCTION_101();
    v16(v15);
    v17 = v0;

    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v1;
      v21 = swift_slowAlloc();
      v71[0] = OUTLINED_FUNCTION_72_0();
      *v21 = 136315906;
      v22 = sub_1E41E1364(v17);
      v24 = sub_1E3270FC8(v22, v23, v71);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      if (*(v20 + 24))
      {
        v24 = *(v20 + 16);
        v25 = *(v20 + 24);
      }

      else
      {
        v25 = 0xE700000000000000;
        OUTLINED_FUNCTION_120_9();
      }

      v26 = sub_1E3270FC8(v24, v25, v71);

      *(v21 + 14) = v26;
      *(v21 + 22) = 1024;
      *(v21 + 24) = v68 & 1;
      *(v21 + 28) = 1024;
      *(v21 + 30) = v69 & 1;
      _os_log_impl(&dword_1E323F000, v18, v19, "MUPN::%s::StackViewController::replace %s animated %{BOOL}d %{BOOL}d", v21, 0x22u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();

      (*(v13 + 8))(v0, v11);
      v4 = v61;
      v1 = v70;
    }

    else
    {

      (*(v13 + 8))(v0, v11);
      v4 = v61;
    }
  }

  OUTLINED_FUNCTION_37_10();
  v62 = *(v27 + 560);
  if (v62())
  {
    OUTLINED_FUNCTION_30();
    v29 = (*(v28 + 464))();

    if (v29)
    {
      v30 = sub_1E32AE9B0(v29);
      if (v30)
      {
        v31 = v30;
        if (v30 < 1)
        {
          __break(1u);
          goto LABEL_37;
        }

        for (i = 0; i != v31; ++i)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](i, v29);
          }

          else
          {
          }

          type metadata accessor for CollectionViewModel();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_30();
            (*(v33 + 1216))(0, 0);
          }
        }
      }

      v1 = v70;
    }
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    v34 = (*(*v1 + 464))();
    if (v34)
    {
      v35 = v34;
      v36 = sub_1E32AE9B0(v34);
      if (!v36)
      {
LABEL_32:

        goto LABEL_33;
      }

      v37 = v36;
      if (v36 >= 1)
      {
        for (j = 0; j != v37; ++j)
        {
          if ((v35 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](j, v35);
          }

          else
          {
          }

          type metadata accessor for CollectionViewModel();
          v39 = swift_dynamicCastClass();
          if (v39)
          {
            v40 = v39;
            OUTLINED_FUNCTION_21();
            (*(v41 + 992))();
            if (v42 != 1)
            {
              (*(*v40 + 1376))();
              v43 = OUTLINED_FUNCTION_123_0();
              sub_1E39DFB80(v43, v44);
            }
          }
        }

        goto LABEL_32;
      }

LABEL_37:
      __break(1u);
      return;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_37_10();
  v46 = *(v45 + 568);

  v48 = v46(v47);
  if ((v62)(v48))
  {
    OUTLINED_FUNCTION_30();
    v50 = *(v49 + 1152);
    v51 = swift_unknownObjectRetain();
    v50(v51, &off_1F5D935C0);
  }

  sub_1E404B22C();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v52 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71[4] = sub_1E405A6C0;
  v71[5] = v53;
  OUTLINED_FUNCTION_12_0();
  v71[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v71[2] = v54;
  v71[3] = &block_descriptor_5_0;
  v55 = _Block_copy(v71);

  sub_1E4203FE4();
  v71[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_254();
  sub_1E3274C14(v56, v57);
  v58 = OUTLINED_FUNCTION_32_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v58);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v59, v60);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v63, v65, v55);
  _Block_release(v55);

  (*(v67 + 8))(v65, v4);
  (*(v64 + 8))(v63, v66);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E404C314()
{
  v12 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  if ((*(v2 + 560))())
  {
    OUTLINED_FUNCTION_26_0();
    v4 = (*(v3 + 464))();
    if (v4)
    {
      v5 = sub_1E40527C4(v4);

      return v5;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!(*((*v1 & *v0) + 0x248))())
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_26_0();
  v8 = *(v7 + 1216);
  v9 = swift_unknownObjectRetain();
  v10 = v8(v9, &off_1F5D935D0);
  MEMORY[0x1E6910BF0](v10);
  v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
  {
    OUTLINED_FUNCTION_35(v11);
    sub_1E42062F4();
  }

  sub_1E4206324();
  return v12;
}

uint64_t sub_1E404C4C8()
{
  sub_1E405A480();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E404C580()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v0;
  v236 = v6;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE38);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v220 - v12);
  v224 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v222 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v223 = v17;
  v18 = OUTLINED_FUNCTION_138();
  v239 = _s17VisibleItemRecordVMa(v18);
  OUTLINED_FUNCTION_0_10();
  v243 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v220 - v27;
  v242 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v33);
  OUTLINED_FUNCTION_26_3();
  v35 = *((*MEMORY[0x1E69E7D40] & v34) + 0x1B8);
  v245 = (*MEMORY[0x1E69E7D40] & v34) + 440;
  v244 = v35;
  v36 = v35();
  v37 = sub_1E405A040(v36);
  if (!v37)
  {
    goto LABEL_139;
  }

  v38 = v37;
  v247 = sub_1E32AE9B0(v37);
  v39 = 0;
  OUTLINED_FUNCTION_130_16(v38 & 0xC000000000000001);
  v237 = v38 & 0xFFFFFFFFFFFFFF8;
  v229 = v30;
  v234 = (v30 + 32);
  v225 = MEMORY[0x1E69E7CC0];
  while (v247 != v39)
  {
    OUTLINED_FUNCTION_225();
    if (v40)
    {
      v42 = MEMORY[0x1E6911E60](v39, v38);
    }

    else
    {
      OUTLINED_FUNCTION_245_0();
      if (v39 >= *(v41 + 16))
      {
        goto LABEL_134;
      }

      v42 = *(v38 + 8 * v39 + 32);
    }

    v43 = v42;
    v30 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v44 = v244();
    v45 = [v44 indexPathForCell_];

    if (v45)
    {
      sub_1E41FE804();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = v46;
    v0 = v242;
    __swift_storeEnumTagSinglePayload(v1, v47, 1, v242);
    v2 = &qword_1ECF309A0;
    sub_1E3C111EC(v1, v28, &qword_1ECF309A0);
    if (__swift_getEnumTagSinglePayload(v28, 1, v0) == 1)
    {
      sub_1E325F6F0(v28, &qword_1ECF309A0);
      ++v39;
    }

    else
    {
      v2 = *v234;
      (*v234)(v235, v28, v242);
      OUTLINED_FUNCTION_97_17(&v252);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_33_86();
        v53 = OUTLINED_FUNCTION_27();
        v0 = sub_1E4059AC0(v53, v54, v55, v0, &unk_1ECF2DB28, &unk_1E42AA670, v56, v57);
      }

      v225 = v0;
      v49 = *(v0 + 16);
      v48 = *(v0 + 24);
      v0 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v58 = OUTLINED_FUNCTION_35(v48);
        v225 = sub_1E4059AC0(v58, v49 + 1, 1, v225, &unk_1ECF2DB28, &unk_1E42AA670, MEMORY[0x1E6969C28], MEMORY[0x1E6969C28]);
      }

      *(v225 + 16) = v0;
      OUTLINED_FUNCTION_10_168();
      (v2)(v51 + v50 + *(v52 + 72) * v49, v235, v242);
      v39 = v30;
    }
  }

  v59 = *(v225 + 16);
  v230 = v5;
  v237 = v59;
  if (v59)
  {
    v30 = 0;
    v60 = (*MEMORY[0x1E69E7D40] & *v5) + 536;
    v235 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x218);
    v234 = v60;
    v61 = v229 + 16;
    OUTLINED_FUNCTION_130_16(*(v229 + 16));
    OUTLINED_FUNCTION_81();
    v233 = v62 + v63;
    v232 = *(v61 + 56);
    v231 = v61 - 8;
    v247 = MEMORY[0x1E69E7CC0];
    v64 = v242;
    v39 = v228;
    v229 = v61;
    do
    {
      OUTLINED_FUNCTION_225();
      v65();
      OUTLINED_FUNCTION_126_10();
      v0 = v66();
      sub_1E42000B4();

      v2 = *(&v253 + 1);
      if (*(&v253 + 1))
      {
        v67 = v254;
        type metadata accessor for StackViewController();
        v68 = sub_1E407DA84();
        LOWORD(v253) = *(v67 + 98);
        if (*(v68 + 16))
        {
          sub_1E37414E0();
          OUTLINED_FUNCTION_79_27();
          v69 = sub_1E4205DA4();
          v5 = ~(-1 << *(v68 + 32));
          while (1)
          {
            v70 = v69 & v5;
            if (((*(v68 + 56 + (((v69 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v69 & v5)) & 1) == 0)
            {
              break;
            }

            LOWORD(v251) = *(*(v68 + 48) + 2 * v70);
            sub_1E3741534();
            OUTLINED_FUNCTION_76_24();
            v71 = sub_1E4205E84();
            v69 = v70 + 1;
            if (v71)
            {

              OUTLINED_FUNCTION_151_7();
              v73 = v226;
              v238(v226 + *(v72 + 20), v228, v242);
              *v73 = v67;
              OUTLINED_FUNCTION_11_182();
              sub_1E405A248(v73, v227);

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                OUTLINED_FUNCTION_90_20();
                v74 = v247;
              }

              else
              {
                v85 = OUTLINED_FUNCTION_27();
                sub_1E4059AC0(v85, v86, v87, v88, &qword_1ECF3EE40, &unk_1E42E7848, v89, v90);
                OUTLINED_FUNCTION_90_20();
              }

              v76 = *(v74 + 16);
              v75 = *(v74 + 24);
              v0 = v76 + 1;
              v64 = v242;
              if (v76 >= v75 >> 1)
              {
                v91 = OUTLINED_FUNCTION_35(v75);
                v247 = sub_1E4059AC0(v91, v76 + 1, 1, v92, &qword_1ECF3EE40, &unk_1E42E7848, _s17VisibleItemRecordVMa, _s17VisibleItemRecordVMa);
              }

              else
              {
                v247 = v74;
              }

              OUTLINED_FUNCTION_32_87();
              sub_1E405A2F8(v226, v77);
              OUTLINED_FUNCTION_22_98();
              v39 = v228;
              v78(v228, v64);
              *(v247 + 16) = v0;
              OUTLINED_FUNCTION_10_168();
              sub_1E405A2A0(v227, v80 + v79 + *(v81 + 72) * v76);
              goto LABEL_33;
            }
          }
        }

        OUTLINED_FUNCTION_22_98();
        v0 = v228;
        v64 = v242;
        v82(v228, v242);
        v39 = v0;

        OUTLINED_FUNCTION_90_20();
      }

      else
      {
        OUTLINED_FUNCTION_22_98();
        v83(v39, v64);
      }

LABEL_33:
      ++v30;
      OUTLINED_FUNCTION_245_0();
    }

    while (v30 != v84);
  }

  else
  {

    v247 = MEMORY[0x1E69E7CC0];
  }

  v259 = MEMORY[0x1E69E7CD0];
  v93 = OUTLINED_FUNCTION_97_17(&v260);
  v94 = sub_1E32AE9B0(v93);
  if (!v94)
  {
LABEL_102:

    v180 = (*MEMORY[0x1E69E7D40] & *v5) + 680;
    v247 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x2A8);
    v246 = v180;
    v181 = (v247)(v179);
    v182 = 0;
    v184 = v181 + 64;
    v183 = *(v181 + 64);
    v248 = v181;
    v185 = 1 << *(v181 + 32);
    if (v185 < 64)
    {
      v186 = ~(-1 << v185);
    }

    else
    {
      v186 = -1;
    }

    v187 = v186 & v183;
    v188 = (v185 + 63) >> 6;
LABEL_106:
    while (v187)
    {
      v189 = v182;
LABEL_111:
      v190 = __clz(__rbit64(v187));
      v187 &= v187 - 1;
      v191 = (*(v248 + 48) + ((v189 << 10) | (16 * v190)));
      v193 = *v191;
      v192 = v191[1];
      v194 = v259;
      if (v259[2])
      {
        sub_1E4207B44();

        sub_1E4206014();
        sub_1E4207BA4();
        OUTLINED_FUNCTION_77_22();
        while (1)
        {
          v196 = v195 & v30;
          if (((*(v194 + (((v195 & v30) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v195 & v30)) & 1) == 0)
          {
            break;
          }

          v197 = (v194[6] + 16 * v196);
          if (*v197 != v193 || v197[1] != v192)
          {
            v199 = sub_1E42079A4();
            v195 = v196 + 1;
            if ((v199 & 1) == 0)
            {
              continue;
            }
          }

          v182 = v189;
          goto LABEL_106;
        }
      }

      else
      {
      }

      v200 = v230;
      (v247)(v195);
      OUTLINED_FUNCTION_134_9();
      if (v201 && (v202 = OUTLINED_FUNCTION_123_0(), v204 = sub_1E327D33C(v202, v203), (v205 & 1) != 0))
      {
        v206 = *(*(v200 + 56) + 8 * v204);
        OUTLINED_FUNCTION_28_3();
        v207 = [v194 view];
        v208 = sub_1E40596FC(v207);

        if (v208)
        {
          OUTLINED_FUNCTION_21();
          (*(v209 + 160))();
        }

        else
        {
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_21();
      v211 = (*(v210 + 696))(&v253);
      v30 = v212;
      v213 = OUTLINED_FUNCTION_123_0();
      v215 = sub_1E327D33C(v213, v214);
      v217 = v216;

      if (v217)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v251 = *v30;
        *v30 = 0x8000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD40);
        sub_1E4207644();
        v218 = v251;

        v219 = *(v218[7] + 8 * v215);
        sub_1E3280A90(0, &qword_1EE23B250);
        sub_1E4207664();
        *v30 = v218;

        v211(&v253, 0);
      }

      else
      {
        v211(&v253, 0);
      }

      v182 = v189;
    }

    while (1)
    {
      v189 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_135;
      }

      if (v189 >= v188)
      {

        OUTLINED_FUNCTION_10_3();
        return;
      }

      v187 = *(v184 + 8 * v189);
      ++v182;
      if (v187)
      {
        goto LABEL_111;
      }
    }
  }

  v95 = v94;
  v238 = type metadata accessor for StackViewController();
  v96 = 0;
  v237 = v0 & 0xC000000000000001;
  v235 = v0 & 0xFFFFFFFFFFFFFF8;
  v234 = (v0 + 32);
  v231 = v222 + 16;
  v229 = v222 + 8;
  *&v97 = 136315138;
  v228 = v97;
  v233 = v95;
  while (1)
  {
    OUTLINED_FUNCTION_245_0();
    if (v98)
    {
      v99 = MEMORY[0x1E6911E60](v96, v0);
    }

    else
    {
      OUTLINED_FUNCTION_126_10();
      if (v96 >= *(v100 + 16))
      {
        goto LABEL_137;
      }

      v99 = v234[v96];
    }

    v101 = __OFADD__(v96, 1);
    v102 = v96 + 1;
    if (v101)
    {
      goto LABEL_136;
    }

    v242 = v102;
    sub_1E407DA28();
    OUTLINED_FUNCTION_124_8();
    if (!v103)
    {
      break;
    }

    sub_1E37414E0();
    OUTLINED_FUNCTION_79_27();
    sub_1E4205DA4();
    OUTLINED_FUNCTION_77_22();
    do
    {
      OUTLINED_FUNCTION_87_16();
      if ((v104 & 1) == 0)
      {
        goto LABEL_55;
      }

      LOWORD(v251) = *(v2[6] + 2 * v39);
      sub_1E3741534();
      OUTLINED_FUNCTION_76_24();
    }

    while ((sub_1E4205E84() & 1) == 0);

    v2 = v99[3];
    if (v2)
    {
      v39 = v99[2];
      swift_bridgeObjectRetain_n();
      sub_1E3277398(&v253, v39, v2);

      OUTLINED_FUNCTION_43_25();
      (*((*MEMORY[0x1E69E7D40] & v105) + 0x2A8))();
      OUTLINED_FUNCTION_134_9();
      if (v106)
      {
        v107 = OUTLINED_FUNCTION_124();
        v39 = sub_1E327D33C(v107, v108);
        v110 = v109;

        if (v110)
        {
          v111 = *(*(v5 + 56) + 8 * v39);
          OUTLINED_FUNCTION_28_3();
          swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v110))
          {
            swift_getObjectType();
            OUTLINED_FUNCTION_91_19();
            (*(v112 + 8))(v99);
            sub_1E324FBDC();
            OUTLINED_FUNCTION_22_98();
            v113 = v223;
            v39 = v224;
            v114(v223);

            v115 = sub_1E41FFC94();
            v2 = sub_1E4206814();

            v30 = v115;
            if (os_log_type_enabled(v115, v2))
            {
              v116 = OUTLINED_FUNCTION_6_21();
              v232 = v110;
              v117 = v116;
              v118 = OUTLINED_FUNCTION_100();
              OUTLINED_FUNCTION_67_28(v118);
              v39 = sub_1E3270FC8(v119, v120, &v253);

              *(v117 + 4) = v39;
              _os_log_impl(&dword_1E323F000, v115, v2, "StackViewController:: Replaced viewmodel for hosted controller %s", v117, 0xCu);
              v30 = v227;
              __swift_destroy_boxed_opaque_existential_1Tm(v227);
              OUTLINED_FUNCTION_7_9();
              OUTLINED_FUNCTION_51_2();

LABEL_94:
              OUTLINED_FUNCTION_36_5();
              v177 = v113;
              v178 = v224;
              goto LABEL_97;
            }

            OUTLINED_FUNCTION_36_5();
            v177 = v113;
            v178 = v39;
          }

          else
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_22_98();
            v113 = v221;
            v30 = v224;
            v170(v221);

            v115 = sub_1E41FFC94();
            v2 = sub_1E4206814();

            if (os_log_type_enabled(v115, v2))
            {
              v171 = OUTLINED_FUNCTION_6_21();
              v232 = v110;
              v172 = v171;
              v173 = OUTLINED_FUNCTION_100();
              OUTLINED_FUNCTION_67_28(v173);
              v39 = sub_1E3270FC8(v174, v175, &v253);

              *(v172 + 4) = v39;
              _os_log_impl(&dword_1E323F000, v115, v2, "StackViewController:: hosted controller doesn't support replacing protocol %s", v172, 0xCu);
              v30 = v227;
              __swift_destroy_boxed_opaque_existential_1Tm(v227);
              OUTLINED_FUNCTION_7_9();
              OUTLINED_FUNCTION_51_2();

              goto LABEL_94;
            }

            OUTLINED_FUNCTION_36_5();
            v177 = v113;
            v178 = v30;
          }

LABEL_97:
          v176(v177, v178);
LABEL_98:
          v0 = v236;
          v95 = v233;
          goto LABEL_99;
        }

LABEL_84:
      }

      else
      {
      }

      goto LABEL_86;
    }

LABEL_86:
    v0 = v236;
LABEL_99:
    v96 = v242;
    if (v242 == v95)
    {
      goto LABEL_102;
    }
  }

LABEL_55:

  sub_1E407DA84();
  OUTLINED_FUNCTION_124_8();
  if (!v121)
  {
    goto LABEL_84;
  }

  sub_1E37414E0();
  OUTLINED_FUNCTION_79_27();
  sub_1E4205DA4();
  OUTLINED_FUNCTION_77_22();
  do
  {
    OUTLINED_FUNCTION_87_16();
    if ((v122 & 1) == 0)
    {
      goto LABEL_84;
    }

    LOWORD(v251) = *(v2[6] + 2 * v39);
    sub_1E3741534();
    OUTLINED_FUNCTION_76_24();
  }

  while ((sub_1E4205E84() & 1) == 0);

  v30 = 0;
  v123 = v247;
  v124 = *(v247 + 16);
  v125 = v240;
  while (2)
  {
    v39 = v246;
    if (v30 == v124)
    {
      v126 = 1;
      v30 = v124;
    }

    else
    {
      if (v30 >= *(v123 + 16))
      {
        __break(1u);
        goto LABEL_133;
      }

      OUTLINED_FUNCTION_10_168();
      v2 = v241;
      *v241 = v30;
      OUTLINED_FUNCTION_11_182();
      sub_1E405A248(v128, v2 + v127);
      sub_1E3C111EC(v2, v39, &qword_1ECF3EE30);
      v126 = 0;
      ++v30;
    }

    __swift_storeEnumTagSinglePayload(v39, v126, 1, v125);
    sub_1E3C111EC(v39, v13, &qword_1ECF3EE38);
    OUTLINED_FUNCTION_21_2(v13);
    if (v133)
    {

      goto LABEL_98;
    }

    v39 = *v13;
    OUTLINED_FUNCTION_11_182();
    v130 = v248;
    sub_1E405A2A0(v13 + v129, v248);
    v131 = *(*v130 + 24);
    v132 = v99[3];
    if (!v131)
    {
      if (!v132)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    if (!v132)
    {
      goto LABEL_75;
    }

    v133 = *(*v130 + 16) == v99[2] && v131 == v132;
    if (!v133 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_74:
    OUTLINED_FUNCTION_51_50();
    v135 = v134();
    OUTLINED_FUNCTION_151_7();
    v136 = sub_1E41FE7E4();
    v2 = [v135 vui:v136 cellForItemAtIndexPath:?];

    v125 = v240;
    if (!v2)
    {
LABEL_75:
      sub_1E405A2F8(v248, _s17VisibleItemRecordVMa);
      v123 = v247;
      continue;
    }

    break;
  }

  type metadata accessor for LayoutGrid();
  v137 = v244;
  v138 = v244();
  [v138 frame];
  OUTLINED_FUNCTION_18_3();

  v139 = OUTLINED_FUNCTION_14_25();
  LODWORD(v232) = sub_1E3A2579C(v139);
  v140 = (*(*v99 + 392))();
  if (v140)
  {
    v141 = v140;
    v142 = v137();
    v143 = [v142 vuiTraitCollection];

    sub_1E3C2AE10();
    v145 = v144;
    (*(*v141 + 1640))();
  }

  OUTLINED_FUNCTION_60_37();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE18);
  OUTLINED_FUNCTION_136_6(v146, v147, v146);
  v148 = v253;
  if (v253 == 2)
  {
    v250 = v2;
    v255 = 0;
    v253 = 0u;
    v254 = 0u;
  }

  else
  {
    v149 = *(&v254 + 1);
    v232 = v255;
    v150 = v256 | (v257 << 16);
    OUTLINED_FUNCTION_51_50();
    v152 = v151();
    sub_1E407F528(v152);
    OUTLINED_FUNCTION_18_3();

    v250 = v2;
    v249 = v150 & 1;
    v5 = (v148 >> 8) & 1;
    *(&v254 + 1) = &type metadata for CollectionViewCellContext;
    v255 = &off_1F5D621F8;
    v153 = swift_allocObject();
    *&v253 = v153;
    *(v153 + 16) = v148 & 1;
    *(v153 + 17) = BYTE1(v148) & 1;
    OUTLINED_FUNCTION_90_20();
    *(v154 + 18) = BYTE2(v148) & 1;
    *(v154 + 24) = v3;
    *(v154 + 32) = v4;
    *(v154 + 40) = v149;
    v155 = OUTLINED_FUNCTION_99_13(v154, &v258);
    *(v155 + 57) = BYTE1(v150);
    *(v155 + 58) = BYTE2(v150) & 1;
  }

  type metadata accessor for UIFactory();
  v156 = OUTLINED_FUNCTION_106();
  v157 = sub_1E3280A90(v156, &qword_1EE23B120);

  v2 = v2;
  sub_1E38E5240(v99, &v250, &v253, 0, v5, v157, &v251);

  sub_1E325F6F0(&v253, &qword_1ECF296C0);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v158 = v247;
  }

  else
  {
    v158 = sub_1E4059F80(v247);
  }

  v159 = *(v158 + 16);
  if (v39 < v159)
  {
    v30 = v159 - 1;
    OUTLINED_FUNCTION_10_168();
    v5 = *(v162 + 72);
    v163 = v161 + v160 + v5 * v39;
    OUTLINED_FUNCTION_32_87();
    v165 = v164;
    sub_1E405A2F8(v163, v166);
    OUTLINED_FUNCTION_90_20();
    sub_1E4059CC4(v167, v168, v163, v169);
    v247 = v165;
    *(v165 + 16) = v30;

    sub_1E405A2F8(v248, v157);
    goto LABEL_98;
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_1E404DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = &unk_1F5D5DAC8;
  v40 = &off_1F5D5C998;
  LOBYTE(v36) = 15;
  v8 = j__OUTLINED_FUNCTION_18();
  v9 = sub_1E39C29F0(&v36, v8 & 1);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  if ((v9 & 1) == 0)
  {

    v12 = sub_1E40502A4(v11);
    v14 = v13;
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
    v17 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_85_21(v17, xmmword_1E4297BE0);
    if (a3)
    {
      v36 = a2;
      v37 = a3;
      v38 = a4;
      sub_1E3E6CAD4(a2, a3);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
      sub_1E41FFFE4();
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
      sub_1E41FFFB4();
    }

    type metadata accessor for ViewModel();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE28);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v36);
      OUTLINED_FUNCTION_21();
      v19 = (*(v18 + 1152))(a1);
      if (v19)
      {
        if (sub_1E32AE9B0(v19))
        {
          goto LABEL_8;
        }
      }
    }

    type metadata accessor for StackViewController();
    v22 = sub_1E407DA28();
    v23 = sub_1E38E5664(*(a1 + 98), v22);

    if (v23)
    {
      goto LABEL_31;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      v25 = *(v24 + 1040);

      v27 = v25(v26);
      if (v27)
      {
        v28 = v27;
        result = sub_1E32AE9B0(v27);
        if (result)
        {
          v29 = result;
          if (result < 1)
          {
            __break(1u);
            return result;
          }

          for (i = 0; i != v29; ++i)
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E6911E60](i, v28);
            }

            else
            {
            }

            OUTLINED_FUNCTION_8();
            v32 = (*(v31 + 872))();
            if (v32)
            {
              sub_1E4050394(v32, v12, v14);
            }
          }
        }
      }
    }

    if (sub_1E385053C() || (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0() & 1) != 0)
    {
LABEL_31:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
      v33 = OUTLINED_FUNCTION_22_9();
      OUTLINED_FUNCTION_85_21(v33, xmmword_1E4297BE0);
      v36 = v12;
      v37 = v14;
      v38 = v16;
      OUTLINED_FUNCTION_44_2();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
      sub_1E41FFF74();

      OUTLINED_FUNCTION_44_2();
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_21();
    v35 = (*(v34 + 1152))(a1);
    if (!v35)
    {
LABEL_10:
    }

    if (!sub_1E32AE9B0(v35))
    {
LABEL_9:

      goto LABEL_10;
    }

LABEL_8:
    v20 = OUTLINED_FUNCTION_32_7();
    sub_1E4050394(v20, v21, v14);
    goto LABEL_9;
  }

  return result;
}

void sub_1E404E380(unint64_t a1, void *a2)
{
  v4 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_25();
    sub_1E404DE7C(v6, v7, v8, v9);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1E404E458(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v32 = a4;
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = 0;
  v37 = *(a1 + 16);
  v34 = (v11 + 16);
  v35 = a1 + 32;
  v33 = (v11 + 8);
  while (v10 != v37)
  {
    v12 = (v35 + 24 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    (*v34)(v9, v36, v6, v7);
    v41 = v13;
    v38 = v13;
    v39 = v14;
    v40 = v15;

    v16 = sub_1E41FFFD4();
    LOBYTE(v13) = v17;
    (*v33)(v9, v6);
    if ((v13 & 1) == 0 && *(a3 + 16))
    {
      v18 = sub_1E4207B34();
      v19 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v20 = v18 & v19;
        if (((*(a3 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          break;
        }

        v18 = v20 + 1;
        if (*(*(a3 + 48) + 8 * v20) == v16)
        {
          v21 = v32;
          v22 = *v32;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v21 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_1E40599A8(0, *(v22 + 2) + 1, 1, v22);
            *v32 = v22;
          }

          v25 = *(v22 + 2);
          v24 = *(v22 + 3);
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            v31 = v25 + 1;
            v28 = sub_1E40599A8((v24 > 1), v25 + 1, 1, v22);
            v26 = v31;
            v22 = v28;
            *v32 = v28;
          }

          *(v22 + 2) = v26;
          v27 = &v22[24 * v25];
          *(v27 + 4) = v41;
          *(v27 + 5) = v14;
          *(v27 + 6) = v15;
          break;
        }
      }
    }

    ++v10;
  }
}

uint64_t sub_1E404E6F8(uint64_t a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41();
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 464))();
    if (v7)
    {
      v8 = v7;
      v9 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x218))();
      sub_1E4200104();

      MEMORY[0x1EEE9AC00](v10);
      v14[2] = v2;
      a1 = sub_1E4059414(sub_1E405A350, v14, v8);

      v11 = OUTLINED_FUNCTION_11_6();
      v12(v11);
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

void sub_1E404E8A4()
{
  OUTLINED_FUNCTION_31_1();
  LODWORD(v2) = v1;
  v4 = v3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v104 = v8;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v91 - v14);
  if (!v4)
  {
    goto LABEL_54;
  }

  if (!(v4 >> 62))
  {
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_54:
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_56:
  v85 = v11;
  v86 = v12;
  v87 = v13;
  v88 = sub_1E4207384();
  v13 = v87;
  v12 = v86;
  v16 = v88;
  v11 = v85;
  if (!v16)
  {
    goto LABEL_54;
  }

LABEL_4:
  v93 = v13;
  v99 = v12;
  v100 = v11;
  v97 = v2;
  v98 = v6;
  v96 = *(v0 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell);
  v101 = v0;
  v105 = v4;
  if (v96 != 1)
  {
    goto LABEL_22;
  }

  v17 = sub_1E324FBDC();
  (*(v99 + 16))(v15, v17, v100);
  v18 = v0;

  v19 = sub_1E41FFC94();
  LODWORD(v20) = sub_1E4206814();

  if (!os_log_type_enabled(v19, v20))
  {

    v39 = OUTLINED_FUNCTION_53_3();
LABEL_21:
    v41(v39, v40);
LABEL_22:
    v46 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_21();
    v95 = *(v47 + 536);
    v94 = v47 + 536;
    v0 = v95();
    sub_1E4200104();

    v2 = 0;
    v110 = v46;
    v109 = MEMORY[0x1E69E7CD0];
    v6 = v4 & 0xC000000000000001;
    v102 = v4 + 32;
    do
    {
      sub_1E34AF4E4(v2, v6 == 0, v4);
      if (v6)
      {
        v11 = MEMORY[0x1E6911E60](v2, v4);
        v15 = v11;
      }

      else
      {
        v15 = *(v102 + 8 * v2);
      }

      if (__OFADD__(v2++, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      v49 = v16;
      if (v15[3])
      {
        v50 = v15[2];
        v51 = v15[3];
      }

      else
      {
        v50 = 0;
        v51 = 0xE000000000000000;
      }

      v52 = v109;
      if (*(v109 + 16))
      {
        sub_1E4207B44();

        sub_1E4206014();
        v53 = sub_1E4207BA4();
        v0 = (v52 + 56);
        v54 = ~(-1 << *(v52 + 32));
        while (1)
        {
          v55 = v53 & v54;
          if (((*(v0 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
          {
            break;
          }

          v56 = (*(v52 + 48) + 16 * v55);
          if (*v56 != v50 || v56[1] != v51)
          {
            v58 = sub_1E42079A4();
            v53 = v55 + 1;
            if ((v58 & 1) == 0)
            {
              continue;
            }
          }

          v16 = v49;
          v4 = v105;
          goto LABEL_45;
        }
      }

      else
      {
      }

      if (v15[3])
      {
        v59 = v15[2];
        v60 = v15[3];
      }

      else
      {
        v59 = 0;
        v60 = 0xE000000000000000;
      }

      v4 = v105;

      sub_1E3277398(&v106, v59, v60);

      v61 = v15[3];
      if (!v61)
      {
        goto LABEL_59;
      }

      v106 = v15[2];
      v107 = v61;
      v108 = v15;
      v62 = sub_1E41FFFF4();
      v0 = &v110;
      sub_1E4050E1C(v62);

      v16 = v49;
LABEL_45:
      ;
    }

    while (v2 != v16);

    if (*(v110 + 16))
    {
      if (v96)
      {
        sub_1E324FBDC();
        v64 = v99;
        v63 = v100;
        OUTLINED_FUNCTION_146_2();
        v65 = v93;
        v66(v93);
        v67 = v101;
        v68 = v101;
        v69 = sub_1E41FFC94();
        v70 = sub_1E4206814();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = OUTLINED_FUNCTION_49_0();
          v106 = OUTLINED_FUNCTION_72_0();
          *v71 = 136315394;
          v72 = sub_1E41E1364(v67);
          v74 = sub_1E3270FC8(v72, v73, &v106);

          *(v71 + 4) = v74;
          *(v71 + 12) = 2080;

          v76 = MEMORY[0x1E6910C30](v75, &_s15DataSourceModelVN);
          v78 = v77;

          v79 = sub_1E3270FC8(v76, v78, &v106);

          *(v71 + 14) = v79;
          _os_log_impl(&dword_1E323F000, v69, v70, "MUPN::%s::StackViewController::reconfigureSectionsPostReplacement::reconfiguredItems \n%s", v71, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          (*(v64 + 8))(v65, v100);
        }

        else
        {

          (*(v64 + 8))(v65, v63);
        }
      }

      sub_1E4200024();

      v84 = (v95)(v83);
      OUTLINED_FUNCTION_25();
      sub_1E42000D4();

      OUTLINED_FUNCTION_105_15();
      v81 = OUTLINED_FUNCTION_11_6();
    }

    else
    {
      OUTLINED_FUNCTION_105_15();
      v82 = v103;
      v81 = v104;
    }

    v80(v81, v82);

    goto LABEL_54;
  }

  v21 = OUTLINED_FUNCTION_141_11();
  v22 = OUTLINED_FUNCTION_72_0();
  v106 = v22;
  *v21 = 136315650;
  v23 = sub_1E41E1364(v18);
  sub_1E3270FC8(v23, v24, &v106);
  OUTLINED_FUNCTION_28_3();
  *(v21 + 4) = v18;
  *(v21 + 12) = 2080;
  v25 = sub_1E32AE9B0(v4);
  v26 = MEMORY[0x1E69E7CC0];
  v102 = v22;
  if (!v25)
  {
LABEL_20:
    MEMORY[0x1E6910C30](v26, MEMORY[0x1E69E6158]);

    v42 = OUTLINED_FUNCTION_34();
    v45 = sub_1E3270FC8(v42, v43, v44);

    *(v21 + 14) = v45;
    *(v21 + 22) = 1024;
    *(v21 + 24) = v97 & 1;
    _os_log_impl(&dword_1E323F000, v19, v20, "MUPN::%s::StackViewController::reconfigureSectionsPostReplacement %s animated %{BOOL}d", v21, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_6_0();

    v40 = v100;
    v41 = *(v99 + 8);
    v39 = v15;
    goto LABEL_21;
  }

  v27 = v25;
  v92 = v21;
  LODWORD(v94) = v20;
  v95 = v19;
  v20 = v16;
  v110 = MEMORY[0x1E69E7CC0];
  v28 = OUTLINED_FUNCTION_17_148();
  sub_1E377FD30(v28, v29, v30);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v26 = v110;
    v32 = v4 & 0xC000000000000001;
    do
    {
      if (v32)
      {
        v33 = MEMORY[0x1E6911E60](v31, v4);
      }

      else
      {
        v33 = *(v4 + 8 * v31 + 32);
      }

      v34 = *(v33 + 24);
      if (v34)
      {
        v16 = *(v33 + 16);
      }

      else
      {
        v34 = 0xE700000000000000;
        OUTLINED_FUNCTION_120_9();
      }

      v110 = v26;
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = OUTLINED_FUNCTION_35(v35);
        sub_1E377FD30(v38, v36 + 1, 1);
        v26 = v110;
      }

      ++v31;
      *(v26 + 16) = v36 + 1;
      v37 = v26 + 16 * v36;
      *(v37 + 32) = v16;
      *(v37 + 40) = v34;
      v4 = v105;
    }

    while (v27 != v31);
    v16 = v20;
    v19 = v95;
    LOBYTE(v20) = v94;
    v21 = v92;
    goto LABEL_20;
  }

  __break(1u);
LABEL_59:
  v106 = 0;
  v107 = 0xE000000000000000;

  sub_1E42074B4();

  v106 = 0xD00000000000002ALL;
  v107 = 0x80000001E428EC10;
  v90 = (*(*v15 + 376))(v89);
  MEMORY[0x1E69109E0](v90);

  OUTLINED_FUNCTION_24_109();
  OUTLINED_FUNCTION_15_166();
  __break(1u);
}

void sub_1E404F1B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_3();
  v80 = v6;
  OUTLINED_FUNCTION_138();
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  v88 = v9;
  OUTLINED_FUNCTION_26_3();
  v10 = MEMORY[0x1E69E7D40];
  v78 = *((*MEMORY[0x1E69E7D40] & v11) + 0x1B8);
  v12 = v78();
  v13 = [v12 vuiIndexPathsForVisibleItems];

  v87 = sub_1E42062B4();
  OUTLINED_FUNCTION_26_3();
  v15 = (*((*v10 & v14) + 0x290))();
  v16 = sub_1E32AE9B0(v15);
  v86 = v7;
  v81 = v1;
  v75 = v0;
  if (v16)
  {
    v17 = v16;
    v92 = MEMORY[0x1E69E7CC0];
    v18 = OUTLINED_FUNCTION_17_148();
    sub_1E4059E48(v18, v19, v20);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v79 = v3;
      v21 = 0;
      v22 = v92;
      v83 = v15;
      v84 = v15 & 0xC000000000000001;
      v82 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v84)
        {
          v15 = MEMORY[0x1E6911E60](v21, v15);
        }

        else
        {
          if (v21 >= *(v82 + 16))
          {
            goto LABEL_50;
          }

          v15 = *(v15 + 8 * v21 + 32);
        }

        v24 = *(v15 + 24);
        if (!v24)
        {
          goto LABEL_52;
        }

        v25 = *(v15 + 16);
        v92 = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);

        if (v27 >= v26 >> 1)
        {
          sub_1E4059E48((v26 > 1), v27 + 1, 1);
          v22 = v92;
        }

        *(v22 + 16) = v27 + 1;
        v28 = (v22 + 24 * v27);
        v28[4] = v25;
        v28[5] = v24;
        v28[6] = v15;
        ++v21;
        v7 = v86;
        v15 = v83;
        if (v23 == v17)
        {

          v3 = v79;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    __break(1u);
LABEL_52:
    sub_1E42074B4();

    v89 = 0xD00000000000002ALL;
    v90 = 0x80000001E428EC10;
    v74 = (*(*v15 + 376))(v73);
    MEMORY[0x1E69109E0](v74);

    OUTLINED_FUNCTION_24_109();
    OUTLINED_FUNCTION_15_166();
    __break(1u);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v85 = *(v22 + 16);
    if (v85)
    {
      v29 = 0;
      v76 = (v3 + 8);
      v77 = (v3 + 16);
      while (1)
      {
        if (v29 >= *(v22 + 16))
        {
          goto LABEL_49;
        }

        v30 = (v22 + 32 + 24 * v29);
        v31 = *v30;
        v32 = v30[1];
        v15 = v30[2];
        type metadata accessor for CollectionViewModel();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_30();
        v34 = *(v33 + 968);
        OUTLINED_FUNCTION_44_2();
        swift_retain_n();

        v36 = v34(v35);
        if (!v36)
        {
          goto LABEL_22;
        }

        v37 = v36;
        v89 = v31;
        v90 = v32;
        v91 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
        v38 = sub_1E41FFFD4();
        if (v39)
        {

LABEL_22:
          OUTLINED_FUNCTION_44_2();

          goto LABEL_38;
        }

        v40 = v38;
        MEMORY[0x1E6909190](0, v38);
        v41 = 0;
        v42 = *(v87 + 16);
        do
        {
          if (v42 == v41)
          {
            OUTLINED_FUNCTION_123_11();
            v61 = v88;
LABEL_35:
            v60(v61, v7);

            OUTLINED_FUNCTION_44_2();

            goto LABEL_38;
          }

          v43 = v41 + 1;
          OUTLINED_FUNCTION_12_166();
          sub_1E3274C14(&qword_1EE28A410, v44);
          v45 = sub_1E4205E84();
          v41 = v43;
        }

        while ((v45 & 1) == 0);
        v46 = v37[49];
        OUTLINED_FUNCTION_21();
        (*(v47 + 464))();
        OUTLINED_FUNCTION_134_9();
        if (!v48)
        {
          break;
        }

        sub_1E3740AE8(v46);
        if ((v49 & 1) == 0)
        {
          break;
        }

        v50 = sub_1E324FBDC();
        (*v77)(v80, v50, v81);
        v51 = sub_1E41FFC94();
        v52 = sub_1E4206814();
        if (OUTLINED_FUNCTION_104(v52))
        {
          v53 = OUTLINED_FUNCTION_6_21();
          *v53 = 134217984;
          *(v53 + 4) = v40;
          _os_log_impl(&dword_1E323F000, v51, v52, "StackViewController:: reconfigure header for section at index %ld", v53, 0xCu);
          OUTLINED_FUNCTION_6_0();
        }

        v54 = (*v76)(v80, v81);
        v55 = (v78)(v54);
        v56 = sub_1E4205ED4();

        v57 = sub_1E41FE7E4();
        v58 = [v55 supplementaryViewForElementKind:v56 atIndexPath:v57];

        if (!v58)
        {
          OUTLINED_FUNCTION_123_11();
          v61 = v88;
          v7 = v86;
          goto LABEL_35;
        }

        swift_getObjectType();
        v7 = v86;
        if (dynamic_cast_existential_1_conditional(v58))
        {
          swift_getObjectType();
          OUTLINED_FUNCTION_91_19();
          (*(v59 + 8))(v37);

          OUTLINED_FUNCTION_44_2();
        }

        else
        {

          OUTLINED_FUNCTION_44_2();
        }

        OUTLINED_FUNCTION_123_11();
        v62(v88, v86);
LABEL_38:
        if (++v29 == v85)
        {

          goto LABEL_40;
        }
      }

      v64 = sub_1E324FBDC();
      (*v77)(v75, v64, v81);

      v65 = sub_1E41FFC94();
      v66 = sub_1E42067F4();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_6_21();
        v68 = OUTLINED_FUNCTION_100();
        v89 = v68;
        *v67 = 136315138;
        v69 = (*(*v37 + 376))();
        v71 = sub_1E3270FC8(v69, v70, &v89);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_1E323F000, v65, v66, "StackViewController:: can't reconfigure %s, no kind found", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_9();

        OUTLINED_FUNCTION_44_2();

        (*v76)(v75, v81);
      }

      else
      {

        OUTLINED_FUNCTION_44_2();

        (*v76)(v75, v81);
      }

      OUTLINED_FUNCTION_123_11();
      v72();
LABEL_40:
      OUTLINED_FUNCTION_25_2();
    }

    else
    {

      OUTLINED_FUNCTION_25_2();
    }
  }
}

void sub_1E404FB84()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v65 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v62 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v61 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v60 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_2();

  v13 = sub_1E40502A4(v12);
  v15 = v14;
  v17 = v16;
  OUTLINED_FUNCTION_26_3();
  v63 = *((*MEMORY[0x1E69E7D40] & v18) + 0x218);
  v19 = v63();
  sub_1E4200104();

  v66[0] = v4;
  v20 = OUTLINED_FUNCTION_53_3();
  if ((v21(v20) & 1) == 0)
  {
    OUTLINED_FUNCTION_23_100();
    sub_1E41FFFD4();
    if (v40)
    {
      v41 = sub_1E324FBDC();
      (*(v62 + 16))(v60, v41, v65);

      v42 = sub_1E41FFC94();
      v43 = sub_1E42067E4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = OUTLINED_FUNCTION_6_21();
        v64 = v10;
        v45 = OUTLINED_FUNCTION_100();
        v66[0] = v45;
        *v44 = 136315138;
        sub_1E37D144C();
        v46 = sub_1E4207944();
        v48 = sub_1E3270FC8(v46, v47, v66);

        *(v44 + 4) = v48;
        OUTLINED_FUNCTION_135_7(&dword_1E323F000, v49, v50, "StackViewController::applySnapshotForSection - There is no section to remove for %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_6_0();

        (*(v62 + 8))(v60, v65);
        v37 = OUTLINED_FUNCTION_78_21();
        v39 = v64;
        goto LABEL_19;
      }

      (*(v62 + 8))(v60, v65);
LABEL_18:
      v37 = OUTLINED_FUNCTION_78_21();
      v39 = v10;
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
    v52 = OUTLINED_FUNCTION_22_9();
    *(v52 + 16) = xmmword_1E4297BE0;
    *(v52 + 32) = v13;
    *(v52 + 40) = v15;
    *(v52 + 48) = v17;

    sub_1E41FFFC4();

    v24 = MEMORY[0x1E69E7D40];
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_23_100();
  sub_1E41FFFD4();
  if ((v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_23_100();
    sub_1E41FFFF4();
    sub_1E41FFF84();

    v24 = MEMORY[0x1E69E7D40];
    v51 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x480))(v4);
    if (v51)
    {
      sub_1E4050394(v51, v13, v15);
    }

    else
    {
      v53 = type metadata accessor for StackViewController();
      v54 = sub_1E407DA28();
      sub_1E38E5664(*(v4 + 98), v54);
      OUTLINED_FUNCTION_50();

      if ((v53 & 1) == 0)
      {
        goto LABEL_16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
      v55 = OUTLINED_FUNCTION_22_9();
      *(v55 + 16) = xmmword_1E4297BE0;
      *(v55 + 32) = v13;
      *(v55 + 40) = v15;
      *(v55 + 48) = v17;
      v66[0] = v13;
      v66[1] = v15;
      v66[2] = v17;
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_1E41FFF74();
    }

    goto LABEL_16;
  }

  v23 = sub_1E4050614(v4, v1);
  v24 = MEMORY[0x1E69E7D40];
  if (v23)
  {
LABEL_16:
    v56 = sub_1E404C314();
    v57 = (*((*v24 & *v2) + 0x298))(v56);
    (*((*v24 & *v2) + 0x290))(v57);
    sub_1E404C580();

    v59 = (v63)(v58);
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_25();
    sub_1E42000D4();

    goto LABEL_18;
  }

  sub_1E324FBDC();
  v25 = OUTLINED_FUNCTION_101();
  v26(v25);

  v27 = sub_1E41FFC94();
  v28 = sub_1E42067E4();

  if (!os_log_type_enabled(v27, v28))
  {

    (*(v62 + 8))(v61, v65);
    goto LABEL_18;
  }

  v29 = OUTLINED_FUNCTION_6_21();
  v30 = v10;
  v31 = OUTLINED_FUNCTION_100();
  v66[0] = v31;
  *v29 = 136315138;
  sub_1E37D144C();
  v32 = sub_1E4207944();
  v34 = sub_1E3270FC8(v32, v33, v66);

  *(v29 + 4) = v34;
  OUTLINED_FUNCTION_135_7(&dword_1E323F000, v35, v36, "StackViewController::applySnapshotForSection - Cannot insert section for %s");
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_0();

  (*(v62 + 8))(v61, v65);
  v37 = OUTLINED_FUNCTION_78_21();
  v39 = v30;
LABEL_19:
  v38(v37, v39);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40502A4(void *a1)
{
  if (a1[3])
  {

    return OUTLINED_FUNCTION_25_50();
  }

  else
  {
    sub_1E42074B4();

    v4 = (*(*a1 + 376))(v3);
    MEMORY[0x1E69109E0](v4);

    OUTLINED_FUNCTION_24_109();
    result = OUTLINED_FUNCTION_15_166();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4050394(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E32AE9B0(a1);
  if (v4)
  {
    v5 = v4;
    v23 = MEMORY[0x1E69E7CC0];
    v6 = OUTLINED_FUNCTION_55_41();
    sub_1E4059E48(v6, v7, v8);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x1E6911E60](v9, a1);
        }

        else
        {
          if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v3 = *(a1 + 8 * v9 + 32);
        }

        v11 = v3[3];
        if (!v11)
        {
          goto LABEL_17;
        }

        v22 = v3[2];
        swift_bridgeObjectRetain_n();
        MEMORY[0x1E69109E0](a2, a3);

        v13 = *(v23 + 16);
        v12 = *(v23 + 24);
        if (v13 >= v12 >> 1)
        {
          v15 = OUTLINED_FUNCTION_35(v12);
          sub_1E4059E48(v15, v13 + 1, 1);
        }

        *(v23 + 16) = v13 + 1;
        v14 = (v23 + 24 * v13);
        v14[4] = v22;
        v14[5] = v11;
        v14[6] = v3;
        ++v9;
        if (v10 == v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
LABEL_17:
    sub_1E42074B4();

    v18 = (*(*v3 + 376))(v17);
    MEMORY[0x1E69109E0](v18);

    OUTLINED_FUNCTION_82_22();
    result = OUTLINED_FUNCTION_15_166();
    __break(1u);
  }

  else
  {
LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
    sub_1E41FFF74();
  }

  return result;
}

uint64_t sub_1E4050614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_21();
  result = (*(v6 + 560))();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_26_0();
  v9 = *(v8 + 464);

  v10 = v9();

  if (!v10)
  {
LABEL_40:

    return 0;
  }

  v11 = sub_1E3841D9C(a1, v10);
  if ((v12 & 1) != 0 || (v13 = v11, v11 < 0))
  {

    v21 = objc_opt_self();
    if (([v21 isTV] & 1) == 0 && (objc_msgSend(v21, sel_isMac) & 1) == 0 && ((sub_1E39DFFC8() & 1) == 0 || (objc_msgSend(v21, sel_isPad) & 1) == 0))
    {
      goto LABEL_40;
    }

    type metadata accessor for CollectionViewModel();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
      goto LABEL_40;
    }

    v24 = *(v22 + 16);
    v23 = *(v22 + 24);

    v25 = sub_1E39D0198();
    if (!v23)
    {
      goto LABEL_39;
    }

    if (v24 == *v25 && v23 == v25[1])
    {
    }

    else
    {
      sub_1E42079A4();
      OUTLINED_FUNCTION_28_3();
      if ((v24 & 1) == 0)
      {
LABEL_39:

        goto LABEL_40;
      }
    }

    sub_1E40502A4(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
    sub_1E41FFFD4();
    if (v28)
    {
      v29 = a2;
      sub_1E4200044();
      OUTLINED_FUNCTION_134_9();
      if (v30)
      {
        v31 = *(a2 + 32);
        v32 = *(a2 + 40);
        v33 = *(v29 + 48);
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
      }

      sub_1E404DE7C(a1, v31, v32, v33);

      v34 = OUTLINED_FUNCTION_34();
      sub_1E3790548(v34, v35);

      return 1;
    }

    goto LABEL_39;
  }

  v38 = a1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_46;
  }

  v14 = sub_1E32AE9B0(v10);
  for (i = v13 + 5; ; ++i)
  {
    v16 = i - 4;
    if (i - 4 >= v14)
    {

      v18 = 0;
      v17 = 0;
      v3 = 0;
LABEL_29:
      sub_1E404DE7C(v38, v18, v17, v3);

      sub_1E3790548(v18, v17);
      return 1;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1E6911E60]();
      goto LABEL_12;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    v3 = *(v10 + 8 * i);

LABEL_12:
    v17 = v3[3];
    if (!v17)
    {
      goto LABEL_47;
    }

    v18 = v3[2];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
    v19 = sub_1E41FFFD4();
    if ((v20 & 1) == 0 && (v19 & 0x8000000000000000) == 0)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_1E42074B4();

  v37 = (*(*v3 + 376))(v36);
  MEMORY[0x1E69109E0](v37);

  OUTLINED_FUNCTION_24_109();
  result = OUTLINED_FUNCTION_15_166();
  __break(1u);
  return result;
}

void sub_1E4050A94()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v27 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_41();

  v5 = sub_1E4050D88(v4);
  OUTLINED_FUNCTION_26_3();
  v26 = *((*MEMORY[0x1E69E7D40] & v6) + 0x218);
  v7 = v26();
  sub_1E4200104();

  v8 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v28 = v1;
  v9 = sub_1E4200044();

  v10 = v0;
  sub_1E404E458(v9, v0, v5, &v29);

  v11 = *(v29 + 2);
  if (v11)
  {
    v12 = v29 + 48;
    while (1)
    {

      v13 = sub_1E41FFFF4();
      v14 = *(v13 + 16);
      v15 = *(v8 + 2);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        break;
      }

      v17 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v19 = *(v8 + 3) >> 1, v19 < v16))
      {
        if (v15 <= v16)
        {
          v20 = v15 + v14;
        }

        else
        {
          v20 = v15;
        }

        v8 = sub_1E40599A8(isUniquelyReferenced_nonNull_native, v20, 1, v8);
        v19 = *(v8 + 3) >> 1;
      }

      if (*(v17 + 16))
      {
        if (v19 - *(v8 + 2) < v14)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v21 = *(v8 + 2);
          v22 = __OFADD__(v21, v14);
          v23 = v21 + v14;
          if (v22)
          {
            goto LABEL_21;
          }

          *(v8 + 2) = v23;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_19;
        }
      }

      v12 += 24;
      if (!--v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1E4200024();

    v25 = (v26)(v24);
    OUTLINED_FUNCTION_25();
    sub_1E42000D4();

    (*(v27 + 8))(v10, v28);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E4050D88(uint64_t a1)
{
  v2 = MEMORY[0x1E6910FA0](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1E3897544(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

int64_t sub_1E4050E1C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E4059DE0(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E4050F14(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[3])
  {
    v9 = a1[2];
    swift_bridgeObjectRetain_n();
    MEMORY[0x1E69109E0](a2, a3);

    return v9;
  }

  else
  {
    sub_1E42074B4();

    v8 = (*(*a1 + 376))(v7);
    MEMORY[0x1E69109E0](v8);

    OUTLINED_FUNCTION_82_22();
    result = OUTLINED_FUNCTION_15_166();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4051040()
{
  sub_1E4206014();
  sub_1E37414E0();
  return sub_1E4205DB4();
}

uint64_t sub_1E405109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  return sub_1E373F6E0();
}

uint64_t sub_1E4051108()
{
  sub_1E4207B44();
  sub_1E4206014();
  sub_1E37414E0();
  sub_1E4205DB4();
  return sub_1E4207BA4();
}

uint64_t sub_1E40511A0()
{
  sub_1E4207B44();
  sub_1E4206014();
  sub_1E37414E0();
  sub_1E4205DB4();
  return sub_1E4207BA4();
}

void sub_1E405123C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell) == 1)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_91_19();
    v11 = OUTLINED_FUNCTION_101();
    v12(v11);
    v13 = v0;

    v14 = sub_1E41FFC94();
    v15 = sub_1E4206814();

    if (os_log_type_enabled(v14, v15))
    {
      v23 = v4;
      v24 = v2;
      v16 = swift_slowAlloc();
      v25 = OUTLINED_FUNCTION_72_0();
      *v16 = 136315906;
      v17 = sub_1E41E1364(v13);
      v19 = v18;
      v20 = sub_1E3270FC8(v17, v18, &v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      if (*(v6 + 24))
      {
        v19 = *(v6 + 16);
        v21 = *(v6 + 24);
      }

      else
      {
        v21 = 0xE700000000000000;
        OUTLINED_FUNCTION_46_61();
      }

      v22 = sub_1E3270FC8(v19, v21, &v25);

      *(v16 + 14) = v22;
      *(v16 + 22) = 1024;
      *(v16 + 24) = v23 & 1;
      *(v16 + 28) = 1024;
      *(v16 + 30) = v24 & 1;
      _os_log_impl(&dword_1E323F000, v14, v15, "MUPN::%s::StackViewController::TCU::interactive replace %s animated %{BOOL}d reload data %{BOOL}d", v16, 0x22u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v9 + 8))(v0, v7);
  }

  sub_1E404BB24();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E405148C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v104 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v94 - v18;
  v105 = sub_1E32AE9B0(v6);
  if (!v105)
  {
    sub_1E324FBDC();
    v53 = OUTLINED_FUNCTION_101();
    v54(v53);
    v55 = sub_1E41FFC94();
    v56 = sub_1E42067F4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_125_0();
      *v57 = 0;
      _os_log_impl(&dword_1E323F000, v55, v56, "StackViewController::empty view models during partial replace.", v57, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    (*(v9 + 8))(v13, v7);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_37_10();
  v21 = (*(v20 + 560))();
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v21;
  v106 = v19;
  OUTLINED_FUNCTION_26_0();
  v24 = *(v23 + 464);

  v26 = v24(v25);
  if (!v26)
  {
LABEL_24:

LABEL_25:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_146_2();
    v58(v1);
    v59 = sub_1E41FFC94();
    v60 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v60))
    {
      v61 = OUTLINED_FUNCTION_125_0();
      *v61 = 0;
      _os_log_impl(&dword_1E323F000, v59, v60, "StackViewController::there's nothing to replace.", v61, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    (*(v9 + 8))(v1, v7);
    goto LABEL_28;
  }

  v27 = v26;
  v98 = v9;
  v100 = v22;
  v28 = sub_1E32AE9B0(v26);
  if (!v28)
  {

    v9 = v98;
    goto LABEL_24;
  }

  v29 = v28;
  v30 = v2[OBJC_IVAR____TtC8VideosUI19StackViewController_logForMissingUpNextCell];
  v101 = v6;
  v102 = v7;
  v94 = v2;
  v95 = v4;
  if (v30 == 1)
  {
    v31 = sub_1E324FBDC();
    (*(v98 + 16))(v106, v31, v7);
    v32 = v2;

    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();

    LODWORD(v103) = v34;
    if (os_log_type_enabled(v33, v34))
    {
      v99 = v33;
      v35 = OUTLINED_FUNCTION_141_11();
      v96 = OUTLINED_FUNCTION_72_0();
      v108[0] = v96;
      *v35 = 136315650;
      v36 = sub_1E41E1364(v2);
      v38 = sub_1E3270FC8(v36, v37, v108);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v39 = sub_1E32AE9B0(v6);
      v40 = MEMORY[0x1E69E7CC0];
      v97 = v35;
      if (v39)
      {
        v41 = v39;
        v107 = MEMORY[0x1E69E7CC0];
        v42 = OUTLINED_FUNCTION_55_41();
        sub_1E377FD30(v42, v43, v44);
        if (v41 < 0)
        {
          goto LABEL_78;
        }

        v45 = 0;
        v40 = v107;
        v46 = v6 & 0xC000000000000001;
        do
        {
          if (v46)
          {
            v47 = MEMORY[0x1E6911E60](v45, v6);
          }

          else
          {
            v47 = *(v6 + 8 * v45 + 32);
          }

          v48 = *(v47 + 24);
          if (v48)
          {
            v6 = *(v47 + 16);
          }

          else
          {
            v48 = 0xE700000000000000;
            OUTLINED_FUNCTION_108_13();
          }

          v107 = v40;
          v50 = *(v40 + 16);
          v49 = *(v40 + 24);
          if (v50 >= v49 >> 1)
          {
            v52 = OUTLINED_FUNCTION_35(v49);
            sub_1E377FD30(v52, v50 + 1, 1);
            v40 = v107;
          }

          ++v45;
          *(v40 + 16) = v50 + 1;
          v51 = v40 + 16 * v50;
          *(v51 + 32) = v6;
          *(v51 + 40) = v48;
          v6 = v101;
        }

        while (v41 != v45);
        v7 = v102;
        LOBYTE(v4) = v95;
      }

      v64 = MEMORY[0x1E6910C30](v40, MEMORY[0x1E69E6158]);
      v66 = v65;

      v67 = sub_1E3270FC8(v64, v66, v108);

      v68 = v97;
      *(v97 + 14) = v67;
      *(v68 + 22) = 1024;
      *(v68 + 24) = v4 & 1;
      v69 = v99;
      _os_log_impl(&dword_1E323F000, v99, v103, "MUPN::%s::StackViewController::TCU::partial replace %s animated %{BOOL}d", v68, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_46_1();

      v63 = *(v98 + 8);
      v62 = v106;
    }

    else
    {

      v62 = OUTLINED_FUNCTION_62_35();
    }

    v63(v62, v7);
  }

  v70 = v6;
  v71 = 0;
  v72 = 0;
  v103 = v70 & 0xC000000000000001;
  v96 = v70 + 32;
  v97 = v70 & 0xFFFFFFFFFFFFFF8;
  v106 = v27 & 0xFFFFFFFFFFFFFF8;
  v73 = (v98 + 16);
  v98 += 8;
  v99 = v73;
LABEL_33:
  while (2)
  {
    if (v103)
    {
      v74 = MEMORY[0x1E6911E60](v72, v101);
    }

    else
    {
      if (v72 >= *(v97 + 16))
      {
        goto LABEL_76;
      }

      v74 = *(v96 + 8 * v72);
    }

    if (__OFADD__(v72++, 1))
    {
      goto LABEL_75;
    }

    v76 = 4;
    while (1)
    {
      v77 = v76 - 4;
      if ((v27 & 0xC000000000000001) != 0)
      {
        v78 = MEMORY[0x1E6911E60](v76 - 4, v27);
      }

      else
      {
        if (v77 >= *(v106 + 16))
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v78 = *(v27 + 8 * v76);
      }

      v79 = *(v78 + 24);
      v80 = *(v74 + 24);
      if (!v79)
      {

        if (!v80)
        {
          goto LABEL_62;
        }

        goto LABEL_54;
      }

      if (v80)
      {
        break;
      }

LABEL_54:
      v83 = v76 - 3;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
LABEL_73:

LABEL_28:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      ++v76;
      if (v83 == v29)
      {
        v84 = sub_1E324FBDC();
        (v99->isa)(v104, v84, v102);
        v85 = sub_1E41FFC94();
        v86 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_104(v86))
        {
          v87 = OUTLINED_FUNCTION_125_0();
          *v87 = 0;
          _os_log_impl(&dword_1E323F000, v85, v86, "StackViewController::adding new collections through partial update is not supported yet.", v87, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        (*v98)(v104, v102);
        if (v72 == v105)
        {

          if (v71)
          {
LABEL_71:
            sub_1E404BB24();

            goto LABEL_28;
          }

          goto LABEL_73;
        }

        goto LABEL_33;
      }
    }

    if (*(v78 + 16) != *(v74 + 16) || v79 != v80)
    {
      v82 = sub_1E42079A4();

      if (v82)
      {
        goto LABEL_62;
      }

      goto LABEL_54;
    }

LABEL_62:
    OUTLINED_FUNCTION_8();
    v90 = (*(v88 + 480))(v108);
    v91 = *v89;
    if (!*v89)
    {
LABEL_68:
      v90(v108, 0);

      v71 = 1;
      if (v72 != v105)
      {
        continue;
      }

      goto LABEL_71;
    }

    break;
  }

  v92 = v89;

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v92 = v91;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v91 >> 62)
  {
    v91 = sub_1E37EFA58(v91);
    *v92 = v91;
  }

  if (v77 < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *((v91 & 0xFFFFFFFFFFFFFF8) + 8 * v76) = v74;

    goto LABEL_68;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}