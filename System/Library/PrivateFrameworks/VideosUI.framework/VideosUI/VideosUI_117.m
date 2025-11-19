uint64_t sub_1E3FE4FC8()
{
  sub_1E3FE4EB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1E3FE5020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3FE5134(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3FE524C()
{
  sub_1E4205074();
  sub_1E3FE5734(&qword_1ECF3D470, MEMORY[0x1E69D3A30]);
  return sub_1E4205E84() & 1;
}

BOOL sub_1E3FE52FC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1E4205074() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

unint64_t sub_1E3FE53D0()
{
  result = qword_1EE23AE40;
  if (!qword_1EE23AE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AE40);
  }

  return result;
}

uint64_t sub_1E3FE541C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E3FE5470()
{
  result = qword_1ECF3DC80;
  if (!qword_1ECF3DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DC80);
  }

  return result;
}

uint64_t type metadata accessor for SportsVoiceOverViewModel()
{
  result = qword_1EE296EE0;
  if (!qword_1EE296EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FE555C()
{
  sub_1E3BE97D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SportsVoiceOverViewModel.SortPriority(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3FE570C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1E3FE5724(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E3FE5724(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E3FE5734(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1E3FE5788()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30448);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = *sub_1E3F29170();
  (*(v4 + 1520))();
  v6 = v5;

  v7 = 0;
  switch(v6)
  {
    case 1:

      goto LABEL_4;
    case 2:
      sub_1E42052F4();
      v10 = OUTLINED_FUNCTION_57();
      sub_1E3827608(v10, v11, 2);
      v12 = sub_1E4205654();
      v7 = __swift_getEnumTagSinglePayload(v3, 1, v12) != 1;
      sub_1E325F69C(v3, &qword_1ECF30448);
      break;
    case 3:
      return v7;
    default:
      v8 = OUTLINED_FUNCTION_57();
      sub_1E3827608(v8, v9, 0);
LABEL_4:
      v7 = 0;
      break;
  }

  return v7;
}

void sub_1E3FE58F4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v59 = v4;
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v58 = v6 - v5;
  OUTLINED_FUNCTION_138();
  v7 = sub_1E42021E4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v57 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D868);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_77_0();
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 1)
  {
    v56[1] = v2;
    sub_1E3F29100();
    (*(v9 + 104))(v1, *MEMORY[0x1E697FF38], v7);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v7);
    v29 = *(v13 + 48);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v30, v31, v32);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v33, v34, v35);
    OUTLINED_FUNCTION_4_75(v16);
    if (v40)
    {
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v36, v37);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v38, v39);
      OUTLINED_FUNCTION_4_75(&v16[v29]);
      if (v40)
      {
        sub_1E325F69C(v16, &qword_1ECF2D6D0);
        goto LABEL_12;
      }
    }

    else
    {
      sub_1E3743538(v16, v21, &qword_1ECF2D6D0);
      OUTLINED_FUNCTION_4_75(&v16[v29]);
      if (!v40)
      {
        v45 = &v16[v29];
        v46 = v57;
        (*(v9 + 32))(v57, v45, v7);
        OUTLINED_FUNCTION_25_101();
        sub_1E3FEAEAC(v47);
        sub_1E4205E84();
        v48 = *(v9 + 8);
        v48(v46, v7);
        OUTLINED_FUNCTION_49_58();
        sub_1E325F69C(v49, v50);
        OUTLINED_FUNCTION_49_58();
        sub_1E325F69C(v51, v52);
        v48(v21, v7);
        OUTLINED_FUNCTION_49_58();
        sub_1E325F69C(v53, v54);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v41, v42);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v43, v44);
      (*(v9 + 8))(v21, v7);
    }

    sub_1E325F69C(v16, &qword_1ECF2D868);
  }

LABEL_12:
  if (!sub_1E3FE5788())
  {
    v55 = v58;
    sub_1E3F36CA0();
    sub_1E3B02A04();
    (*(v59 + 8))(v55, v60);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE5D4C(uint64_t a1)
{
  sub_1E3F29170();
  OUTLINED_FUNCTION_30();
  v3 = (*(v2 + 1424))();

  v11[1] = v3;
  v9 = a1;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
  OUTLINED_FUNCTION_39_35();
  sub_1E3743478(v4);
  sub_1E38D2054(&v9, v11);

  if (v11[0])
  {
    sub_1E3C27024();
    v6 = v5;

    if (v6)
    {
      v7 = sub_1E4206024();

      if (v7 == 1)
      {
        return sub_1E4203DA4();
      }
    }
  }

  if (a1)
  {
    return sub_1E4203DC4();
  }

  return sub_1E4203DB4();
}

uint64_t sub_1E3FE5E88@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v81 = v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v85 = v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v80 = v9;
  OUTLINED_FUNCTION_138();
  v10 = sub_1E42021E4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v79 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D868) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  v20 = OUTLINED_FUNCTION_99_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v20);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_8();
  v83 = v1;
  sub_1E3F29100();
  (*(v12 + 104))(v2, *MEMORY[0x1E697FF40], v10);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v10);
  v31 = *(v16 + 56);
  sub_1E3743538(v3, v19, &qword_1ECF2D6D0);
  sub_1E3743538(v2, &v19[v31], &qword_1ECF2D6D0);
  OUTLINED_FUNCTION_44_3(v19);
  if (v37)
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v32, v33);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v34, v35);
    OUTLINED_FUNCTION_44_3(&v19[v31]);
    if (v37)
    {
      sub_1E325F69C(v19, &qword_1ECF2D6D0);
      v36 = v83;
LABEL_14:
      v60 = 0.0;
      if (*(v36 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60)) && (sub_1E37573D0(), OUTLINED_FUNCTION_30(), (*(v61 + 176))(&v88), , (v89 & 1) == 0))
      {
        v60 = OUTLINED_FUNCTION_31_83();
        v62 = 0;
      }

      else
      {
        v62 = 1;
      }

      v69 = sub_1E4201D44();
      v70 = v80;
      *v80 = v69;
      *(v70 + 1) = v60;
      *(v70 + 16) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCD8);
      sub_1E3FE90E8();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v71, v72, v73);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_24_104();
      sub_1E3743478(v74);
      v68 = &unk_1ECF3DCD0;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  sub_1E3743538(v19, v25, &qword_1ECF2D6D0);
  OUTLINED_FUNCTION_44_3(&v19[v31]);
  if (v37)
  {
    OUTLINED_FUNCTION_39_35();
    sub_1E325F69C(v38, v39);
    OUTLINED_FUNCTION_39_35();
    sub_1E325F69C(v40, v41);
    v42 = OUTLINED_FUNCTION_95_0();
    v43(v42);
LABEL_9:
    sub_1E325F69C(v19, &qword_1ECF2D868);
    v36 = v83;
    goto LABEL_10;
  }

  v48 = &v19[v31];
  v49 = v79;
  (*(v12 + 32))(v79, v48, v10);
  OUTLINED_FUNCTION_25_101();
  sub_1E3FEAEAC(v50);
  v51 = sub_1E4205E84();
  v52 = *(v12 + 8);
  v52(v49, v10);
  OUTLINED_FUNCTION_58_37();
  sub_1E325F69C(v53, v54);
  OUTLINED_FUNCTION_58_37();
  sub_1E325F69C(v55, v56);
  v57 = OUTLINED_FUNCTION_95_0();
  (v52)(v57);
  OUTLINED_FUNCTION_58_37();
  sub_1E325F69C(v58, v59);
  v36 = v83;
  if (v51)
  {
    goto LABEL_14;
  }

LABEL_10:
  v44 = sub_1E4201D44();
  v45 = 0.0;
  if (*(v36 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60)) && (sub_1E37573D0(), OUTLINED_FUNCTION_30(), (*(v46 + 176))(&v88), , (v89 & 1) == 0))
  {
    v45 = OUTLINED_FUNCTION_31_83();
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v63 = v81;
  *v81 = v44;
  *(v63 + 1) = v45;
  *(v63 + 16) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCC0);
  sub_1E3FE87B8();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v64, v65, v66);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24_104();
  sub_1E3743478(v67);
  OUTLINED_FUNCTION_21_1();
LABEL_21:
  sub_1E3743478(v68);
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F69C(v75, v76);
}

void sub_1E3FE658C()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE40);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE48);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v31 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDF0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v17 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDE8);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_77_0();
  sub_1E3FE6904();
  sub_1E3FE7024();
  if (*(v5 + *(type metadata accessor for SportsBannerScoreboardView(0) + 52)))
  {
    sub_1E3F30DCC();
    v22 = OUTLINED_FUNCTION_95_0();
    v23(v22);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v24, 1, v8);
  sub_1E3743538(v3, v1, &qword_1ECF3DDE8);
  sub_1E3743538(v2, v17, &qword_1ECF3DDF0);
  sub_1E3743538(v0, v31, &qword_1ECF3DE48);
  *v7 = 0;
  *(v7 + 8) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE50);
  sub_1E3743538(v1, v7 + v25[12], &qword_1ECF3DDE8);
  sub_1E3743538(v17, v7 + v25[16], &qword_1ECF3DDF0);
  sub_1E3743538(v31, v7 + v25[20], &qword_1ECF3DE48);
  v26 = v7 + v25[24];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OUTLINED_FUNCTION_35_4();
  sub_1E325F69C(v27, v28);
  sub_1E325F69C(v2, &qword_1ECF3DDF0);
  sub_1E325F69C(v3, &qword_1ECF3DDE8);
  sub_1E325F69C(v31, &qword_1ECF3DE48);
  sub_1E325F69C(v17, &qword_1ECF3DDF0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v29, v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE6904()
{
  OUTLINED_FUNCTION_31_1();
  v79 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_15();
  v6 = type metadata accessor for SportsBannerScoreboardView.EventTitleView(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v75 = v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v73 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD00);
  OUTLINED_FUNCTION_0_10();
  v70 = v22;
  v71 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v69 = v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v72 = v26;
  v27 = OUTLINED_FUNCTION_138();
  v28 = type metadata accessor for SportsBannerScoreboardView(v27);
  OUTLINED_FUNCTION_71_32();
  if (!v0)
  {
    goto LABEL_8;
  }

  v77 = v0;
  sub_1E37569B4();
  OUTLINED_FUNCTION_30();
  v30 = (*(v29 + 2408))();

  v31 = [objc_opt_self() vui:v30 fontFromTextLayout:?];
  if (!v31)
  {

LABEL_8:

    sub_1E3F2F010();
    sub_1E3F2F02C();
    OUTLINED_FUNCTION_99_0();
    sub_1E3FEAEF0();
    swift_storeEnumTagMultiPayload();
    sub_1E3FE9458();
    OUTLINED_FUNCTION_28_86();
    sub_1E3FEAEAC(v62);
    sub_1E4201F44();
    sub_1E3FEAF44(v10, type metadata accessor for SportsBannerScoreboardView.EventTitleView);
    goto LABEL_9;
  }

  v32 = v31;
  v65 = v30;
  v33 = sub_1E405EEA0();

  v34 = *(v77 + *(v28 + 44));
  v67 = v1;
  v68 = v6;
  v66 = v11;
  if (!v34 || (v35 = sub_1E3C27024(), !v36))
  {

    v35 = 0;
    v36 = 0xE000000000000000;
  }

  v82[0] = v35;
  v82[1] = v36;
  sub_1E32822E0();
  sub_1E4202C44();

  v37 = sub_1E4202C04();
  v64 = v33;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = OUTLINED_FUNCTION_99_0();
  sub_1E37434B8(v45, v46, v47);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v66) = 1;
  v65 = 0;
  LOBYTE(v64) = 1;
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1();
  v48 = v42 & 1;
  v83 = v42 & 1;
  KeyPath = swift_getKeyPath();
  v80[0] = v38;
  v80[1] = v40;
  LOBYTE(v80[2]) = v48;
  v80[3] = v44;
  memcpy(&v80[4], v81, 0x70uLL);
  LOWORD(v80[18]) = 256;
  v80[19] = KeyPath;
  LOBYTE(v80[20]) = 1;
  sub_1E3F291E4();
  sub_1E3FE29FC();

  v50 = sub_1E4202494();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD18);
  v52 = sub_1E3FE9520();
  v53 = v69;
  sub_1E3E038E0();

  sub_1E325F69C(v20, &qword_1ECF2E400);
  memcpy(v82, v80, 0xA1uLL);
  sub_1E325F69C(v82, &qword_1ECF3DD18);
  static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v80[0] = v51;
  v80[1] = v52;
  OUTLINED_FUNCTION_7_22();
  swift_getOpaqueTypeConformance2();
  v54 = v73;
  v55 = v71;
  sub_1E4202EA4();

  OUTLINED_FUNCTION_113_1(v54, v75);
  swift_storeEnumTagMultiPayload();
  sub_1E3FE9688();
  v56 = v72;
  OUTLINED_FUNCTION_35_4();
  sub_1E4201F44();
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v57, v58);
  (*(v70 + 8))(v53, v55);
  sub_1E3743538(v56, v67, &qword_1ECF3DD08);
  swift_storeEnumTagMultiPayload();
  sub_1E3FE9458();
  OUTLINED_FUNCTION_28_86();
  sub_1E3FEAEAC(v59);
  sub_1E4201F44();

  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v60, v61);
LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE7024()
{
  OUTLINED_FUNCTION_31_1();
  v92 = v1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v91 = v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v90 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378);
  OUTLINED_FUNCTION_0_10();
  v83 = v7;
  v84 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v81 = v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD68);
  OUTLINED_FUNCTION_0_10();
  v78 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v77 = v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v82 = v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v86 = v16;
  v17 = OUTLINED_FUNCTION_138();
  v18 = type metadata accessor for SportsBannerScoreboardView(v17);
  if (*(v0 + *(v18 + 60)))
  {
    v19 = objc_opt_self();

    sub_1E37570D8();
    OUTLINED_FUNCTION_2_1();
    v21 = (*(v20 + 2408))();

    v93 = [v19 vui:v21 fontFromTextLayout:?];

    sub_1E37570D8();
    OUTLINED_FUNCTION_2_1();
    v76 = (*(v22 + 672))();

    sub_1E37570D8();
    OUTLINED_FUNCTION_2_1();
    v75 = (*(v23 + 1976))();
  }

  else
  {
    v76 = 0;
    v93 = 0;
    v75 = 7;
  }

  v24 = *(v18 + 48);
  v87 = v0;
  v25 = *(v0 + v24);
  v26 = sub_1E3798694(v25);
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v26 != v27)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v27, v25);
    }

    else
    {
      if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }
    }

    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v30 = sub_1E3C27024();
    v32 = v31;

    ++v27;
    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E3740F88(0, *(v28 + 2) + 1, 1, v28);
      }

      v34 = *(v28 + 2);
      v33 = *(v28 + 3);
      if (v34 >= v33 >> 1)
      {
        v28 = sub_1E3740F88((v33 > 1), v34 + 1, 1, v28);
      }

      *(v28 + 2) = v34 + 1;
      v35 = &v28[16 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v32;
      v27 = v29;
    }
  }

  v98 = v28;
  sub_1E3756654();

  v36 = OUTLINED_FUNCTION_125();
  MEMORY[0x1E69109E0](v36);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  OUTLINED_FUNCTION_21_113();
  sub_1E3743478(v37);
  OUTLINED_FUNCTION_125();
  v38 = sub_1E4205DF4();
  v40 = v39;

  v94 = v38;
  v95 = v40;
  sub_1E32822E0();
  sub_1E4202C44();
  if (v93)
  {
    v41 = v93;
    sub_1E405EEA0();
  }

  OUTLINED_FUNCTION_112_1();
  v42 = sub_1E4202C04();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = OUTLINED_FUNCTION_125();
  sub_1E37434B8(v49, v50, v51);

  v94 = v42;
  v95 = v44;
  v52 = v46 & 1;
  v96 = v46 & 1;
  v97 = v48;
  v53 = MEMORY[0x1E6981148];
  v54 = MEMORY[0x1E6981138];
  v55 = v81;
  v56 = v76;
  OUTLINED_FUNCTION_112_1();
  sub_1E39B9138();
  sub_1E37434B8(v42, v44, v52);

  MEMORY[0x1EEE9AC00](v57);
  *&v74[-16] = v87;
  v74[-8] = v75;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD80);
  v94 = v53;
  v95 = v54;
  OUTLINED_FUNCTION_27_95();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v84;
  v94 = v84;
  v95 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_26_10();
  swift_getOpaqueTypeConformance2();
  v61 = v77;
  sub_1E3E35D1C(v58, v77);
  (*(v83 + 8))(v55, v60);
  v62 = v82;
  (*(v78 + 32))(v82, v61, v79);
  *(v62 + *(v80 + 36)) = 256;
  v63 = sub_1E3FE7E74();
  v65 = v64;
  LOBYTE(v48) = v66;
  sub_1E3FEA9E8();
  v67 = v86;
  sub_1E4202EC4();
  sub_1E37434B8(v63, v65, v48 & 1);

  sub_1E325F69C(v62, &qword_1ECF3DD70);
  static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  sub_1E3FEAB2C();
  sub_1E4202EA4();

  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v68, v69, v70);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21_1();
  sub_1E3FEAB5C(v71);
  OUTLINED_FUNCTION_58_1();
  sub_1E4201F44();

  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v72, v73);
  sub_1E325F69C(v67, &qword_1ECF3DD78);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE78CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEB0);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF3DE90);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_1E3743538(v7, a2 + v5[20], &qword_1ECF3DE80);
  v10 = a2 + v5[24];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v10 = v13;
  *(v10 + 8) = v12;
  sub_1E3743538(v11, a2 + v5[28], &qword_1ECF3DDF8);
  v14 = a2 + v5[32];
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v14 = v17;
  *(v14 + 8) = v16;
  sub_1E3743538(v15, a2 + v5[36], &qword_1ECF3DE80);
  v18 = a2 + v5[40];
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  *v18 = v21;
  *(v18 + 8) = v20;
  result = sub_1E3743538(v19, a2 + v5[44], &qword_1ECF3DE90);
  v23 = a2 + v5[48];
  v24 = *(a1 + 80);
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  *v23 = v25;
  *(v23 + 8) = v24;
  return result;
}

void View.accessibilityIdentifier(key:location:)()
{
  OUTLINED_FUNCTION_31_1();
  v58 = v2;
  v59 = v0;
  v4 = v3;
  v56[2] = v5;
  v56[3] = v6;
  v8 = v7;
  v62 = v9;
  LODWORD(v57) = v5;
  sub_1E4202624();
  v10 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_1_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v56 - v25;
  OUTLINED_FUNCTION_8_154();
  v27 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v61 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v60 = v31;
  if (v57 != 14 || v30 | v8)
  {
    static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
    v57 = v27;
    v43 = v58;
    sub_1E4202EA4();

    OUTLINED_FUNCTION_2_238();
    v45 = sub_1E3FEAEAC(v44);
    v69 = v43;
    v70 = v45;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v46 = *(v12 + 16);
    OUTLINED_FUNCTION_58_37();
    v46();
    v47 = *(v12 + 8);
    v47(v16, v10);
    (v46)(v16, v1, v10);
    v42 = v60;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8E90(v48, v49, v50);
    v51 = v16;
    v36 = v43;
    v27 = v57;
    v47(v51, v10);
    v47(v1, v10);
  }

  else
  {
    v32 = *(v19 + 16);
    v32(v26, v59, v4);
    v33 = OUTLINED_FUNCTION_57();
    (v32)(v33);
    OUTLINED_FUNCTION_2_238();
    v35 = sub_1E3FEAEAC(v34);
    v36 = v58;
    v63 = v58;
    v64 = v35;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v37 = v60;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8D98(v38, v39);
    v40 = *(v19 + 8);
    v41 = v23;
    v42 = v37;
    v40(v41, v4);
    v40(v26, v4);
  }

  OUTLINED_FUNCTION_2_238();
  v53 = sub_1E3FEAEAC(v52);
  v67 = v36;
  v68 = v53;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v65 = v36;
  v66 = WitnessTable;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v55 = v61;
  (*(v61 + 16))(v62, v42, v27);
  (*(v55 + 8))(v42, v27);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE7E74()
{
  v1 = *(v0 + *(type metadata accessor for SportsBannerScoreboardView(0) + 48));
  result = sub_1E3798694(v1);
  v3 = result;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v4)
    {
      v13 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v13);
      OUTLINED_FUNCTION_21_113();
      sub_1E3743478(v14);
      sub_1E4205DF4();

      sub_1E32822E0();
      return sub_1E4202C44();
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }
    }

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = sub_1E3C27024();
    v9 = v8;

    ++v4;
    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E3740F88(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1E3740F88((v10 > 1), v11 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 = v6;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_1E3FE8040()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E4201D44();
  type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_71_32();
  if (v0)
  {
    v6();
    OUTLINED_FUNCTION_30();
    v11 = (*(v10 + 1176))();
    v13 = v12;

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v11;
    }
  }

  else
  {
    v14 = 0;
  }

  *v8 = v9;
  *(v8 + 8) = v14;
  *(v8 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  v2(v0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE8114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v71 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE08);
  OUTLINED_FUNCTION_0_10();
  v70 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v69 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE10);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v75 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v73 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_49_2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_15_15();
  type metadata accessor for SportsBannerScoreboardView.BadgeView(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE18);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v72 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_93_0();
  sub_1E3F29170();
  OUTLINED_FUNCTION_2_1();
  v39 = (*(v33 + 1304))(v34, v35, v36, v37, v38);

  if (v39)
  {
    v40 = sub_1E4203D34();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v40);

    sub_1E3F36C98(v41);
    sub_1E3F2ED6C();
    sub_1E3FEAEAC(&unk_1ECF3DE38);
    sub_1E4202ED4();
    sub_1E3FEAF44(v27, type metadata accessor for SportsBannerScoreboardView.BadgeView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE20);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE20);
    OUTLINED_FUNCTION_74_21(v46);
  }

  sub_1E3741EA0(v4, v2, &qword_1ECF3DE18);
  v47 = *(a1 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60));
  if (v47)
  {
    v48 = sub_1E3757514();
  }

  else
  {
    v48 = 0.0;
  }

  sub_1E3FE58F4();
  if (v49)
  {
    v50 = v73;
    v51 = v73;
    v52 = 1;
  }

  else
  {
    sub_1E3F2CB10(v13);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_28_52();
    LOBYTE(v71) = 0;
    LOBYTE(v70) = 1;
    OUTLINED_FUNCTION_51_3();
    sub_1E42015C4();
    v77[120] = 1;
    memcpy(&v77[7], __src, 0x70uLL);
    v53 = *(v70 + 16);
    v54 = OUTLINED_FUNCTION_95_0();
    v53(v54);
    (v53)(v71, v69, 0x7FF0000000000000);
    v55 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE28) + 48);
    *v55 = 0;
    *(v55 + 8) = 1;
    memcpy((v55 + 9), v77, 0x77uLL);
    v56 = *(v70 + 8);
    v56(v13, 0x7FF0000000000000);
    v57 = OUTLINED_FUNCTION_35_4();
    (v56)(v57);
    v50 = v73;
    sub_1E3741EA0(v71, v73, &qword_1ECF3DE00);
    v51 = v73;
    v52 = 0;
  }

  __swift_storeEnumTagSinglePayload(v51, v52, 1, v74);
  sub_1E3743538(v2, v72, &qword_1ECF3DE18);
  sub_1E3743538(v50, v75, &qword_1ECF3DE10);
  sub_1E3743538(v72, a2, &qword_1ECF3DE18);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE30);
  v59 = a2 + *(v58 + 48);
  *v59 = v48;
  *(v59 + 8) = v47 == 0;
  sub_1E3743538(v75, a2 + *(v58 + 64), &qword_1ECF3DE10);
  OUTLINED_FUNCTION_112_1();
  sub_1E325F69C(v60, v61);
  v62 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v62, v63);
  OUTLINED_FUNCTION_112_1();
  sub_1E325F69C(v64, v65);
  OUTLINED_FUNCTION_82();
  return sub_1E325F69C(v66, v67);
}

void sub_1E3FE87B8()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE08);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE58);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEB8);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_8();
  *v3 = sub_1E4201B64();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEC0);
  sub_1E3FE8A24();
  sub_1E3FE58F4();
  if (v15)
  {
    sub_1E3F2CB10(v4);
    OUTLINED_FUNCTION_58_37();
    v16();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v17, 1, v7);
  OUTLINED_FUNCTION_113_1(v3, v2);
  sub_1E3743538(v1, v0, &qword_1ECF3DE58);
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEC8);
  sub_1E3743538(v0, v6 + *(v21 + 48), &qword_1ECF3DE58);
  v22 = OUTLINED_FUNCTION_35_4();
  sub_1E325F69C(v22, v23);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v24, v25);
  sub_1E325F69C(v0, &qword_1ECF3DE58);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v26, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE8A24()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v66 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDF8);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v9 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DED0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v67 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v65 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_93_0();
  sub_1E3FE58F4();
  if (v22)
  {
    v23 = sub_1E4201D54();
  }

  else
  {
    v23 = sub_1E4201D44();
  }

  *v20 = v23;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DED8);
  sub_1E3FE8E18();
  v64 = v0;
  sub_1E3741EA0(v20, v0, &qword_1ECF3DED0);
  v24 = sub_1E4201D44();
  if (*(v4 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60)))
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    v26 = v9;
    v27 = (*(v25 + 1176))();
    v29 = v28;

    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v27;
    }

    v9 = v26;
  }

  else
  {
    v30 = 0;
  }

  *v1 = v24;
  *(v1 + 8) = v30;
  *(v1 + 16) = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDA0);
  sub_1E3FE8114(v4, v1 + *(v31 + 44));
  sub_1E3FE58F4();
  if (v32)
  {
    v33 = sub_1E4201D64();
  }

  else
  {
    v33 = sub_1E4201D44();
  }

  *v2 = v33;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  sub_1E3FE8E18();
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v34, v35, v36);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v37, v38, v39);
  v40 = v9;
  v63 = v1;
  sub_1E3743538(v1, v9, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v41, v42, v43);
  v44 = v66;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v45, v46, v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEE0);
  v49 = v44 + v48[12];
  *v49 = 0;
  *(v49 + 8) = 0;
  sub_1E3743538(v40, v44 + v48[16], &qword_1ECF3DDF8);
  v50 = v44 + v48[20];
  *v50 = 0;
  *(v50 + 8) = 0;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v51, v52, v53);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v54, v55);
  sub_1E325F69C(v63, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v56, v57);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v58, v59);
  sub_1E325F69C(v40, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v60, v61);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE8E18()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v33 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE80);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v32 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15_15();
  v17 = type metadata accessor for SportsBannerLogoView();
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_77_0();
  type metadata accessor for SportsBannerLogoViewModel();
  v23 = sub_1E3F29170();
  v24 = sub_1E3CBAB38(v23, v3);
  v25 = *(v5 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60));

  sub_1E3CBCBC0(v26);
  sub_1E3CBCC24(v0, v24, v25, v1);
  sub_1E3F2C430(v14);
  sub_1E3F2951C();
  sub_1E3FE5D4C(v3);
  sub_1E4200D94();
  v27 = (v14 + *(v8 + 44));
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  v27[2] = v36;
  sub_1E3FEAEF0();
  sub_1E3743538(v14, v11, &qword_1ECF3DE80);
  v29 = v33;
  sub_1E3FEAEF0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEE8);
  v31 = v29 + *(v30 + 48);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_1E3743538(v11, v29 + *(v30 + 64), &qword_1ECF3DE80);
  sub_1E325F69C(v14, &qword_1ECF3DE80);
  sub_1E3FEAF44(v1, type metadata accessor for SportsBannerLogoView);
  sub_1E325F69C(v11, &qword_1ECF3DE80);
  sub_1E3FEAF44(v21, type metadata accessor for SportsBannerLogoView);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE90E8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v43 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE08);
  OUTLINED_FUNCTION_0_10();
  v42 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v41 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE58);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE60);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE68);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v21);
  *v15 = sub_1E4201B84();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE70);
  sub_1E3FE9780(v3, &v15[*(v22 + 44)]);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  v23 = 1;
  LOBYTE(v43) = 1;
  v42 = 0;
  LOBYTE(v41) = 1;
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1();
  sub_1E3741EA0(v15, v20, &qword_1ECF3DE60);
  memcpy(&v20[*(v17 + 44)], v44, 0x70uLL);
  v24 = OUTLINED_FUNCTION_99_0();
  sub_1E3741EA0(v24, v25, &qword_1ECF3DE68);
  sub_1E3FE58F4();
  if (v26)
  {
    v27 = v41;
    sub_1E3F2CB10(v41);
    (*(v42 + 32))(v1, v27, v5);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1, v23, 1, v5);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v28, v29, v30);
  sub_1E3743538(v1, v0, &qword_1ECF3DE58);
  v31 = v43;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v32, v33, v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE78);
  sub_1E3743538(v0, v31 + *(v35 + 48), &qword_1ECF3DE58);
  sub_1E325F69C(v1, &qword_1ECF3DE58);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v36, v37);
  sub_1E325F69C(v0, &qword_1ECF3DE58);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v38, v39);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3FE9458()
{
  result = qword_1ECF3DD10;
  if (!qword_1ECF3DD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD18);
    sub_1E3FE9520();
    swift_getOpaqueTypeConformance2();
    sub_1E3FE9688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD10);
  }

  return result;
}

unint64_t sub_1E3FE9520()
{
  result = qword_1ECF3DD20;
  if (!qword_1ECF3DD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD18);
    sub_1E3FEAD84(&unk_1ECF3DD28);
    sub_1E3743478(&qword_1EE2887C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD20);
  }

  return result;
}

unint64_t sub_1E3FE9604()
{
  result = qword_1ECF3DD38;
  if (!qword_1ECF3DD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD38);
  }

  return result;
}

unint64_t sub_1E3FE9688()
{
  result = qword_1ECF3DD48;
  if (!qword_1ECF3DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DCF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD18);
    sub_1E3FE9520();
    swift_getOpaqueTypeConformance2();
    sub_1E3FEAEAC(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD48);
  }

  return result;
}

uint64_t sub_1E3FE9780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDF8);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v110 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v115 = v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE80);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v107 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v108 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v114 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v116 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_49_2();
  v21 = type metadata accessor for SportsBannerLogoView();
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  v104 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  v103 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_8();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE88);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v100 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v97 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE90);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v106 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_6();
  v113 = v40;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  v105 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_78();
  v44 = type metadata accessor for SportsBannerLogoViewModel();
  v45 = sub_1E3F29170();
  v99 = v44;
  v46 = sub_1E3CBAB38(v45, 0);
  v47 = *(a1 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60));

  sub_1E3CBCBC0(v48);

  v101 = v4;
  sub_1E3CBCC24(v4, v46, v47, v26);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v100) = 1;
  v99 = 0;
  LOBYTE(v98) = 1;
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1();
  sub_1E3CBC9EC(v26, v3);
  v102 = v27;
  v49 = *(v27 + 36);
  v50 = v97;
  memcpy((v3 + v49), v130, 0x70uLL);
  sub_1E3741EA0(v3, v35, &qword_1ECF3CF18);
  *&v35[*(v50 + 36)] = 1;
  v51 = sub_1E3FEAD84(&unk_1ECF3DE98);
  v112 = v2;
  v98 = v51;
  sub_1E4202ED4();
  sub_1E325F69C(v35, &qword_1ECF3DE88);
  v52 = 0.0;
  v53 = 0.0;
  if (v47)
  {
    v53 = sub_1E3757514();
  }

  v54 = v116;
  sub_1E3F2C430(v116);
  sub_1E3F2951C();
  sub_1E3FE5D4C(0);
  OUTLINED_FUNCTION_73_22();
  v55 = (v54 + *(v111 + 36));
  v56 = v132;
  *v55 = v131;
  v55[1] = v56;
  v55[2] = v133;
  if (v47)
  {
    v52 = sub_1E3757514();
  }

  v57 = sub_1E4201D44();
  if (v47)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    v59 = (*(v58 + 1176))();
    v61 = v60;

    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = v59;
    }
  }

  else
  {
    v62 = 0;
  }

  v63 = v115;
  *v115 = v57;
  v63[1] = v62;
  *(v63 + 16) = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDA0);
  sub_1E3FE8114(a1, v63 + *(v64 + 44));
  v65 = 0.0;
  v66 = 0.0;
  if (v47)
  {
    v66 = sub_1E3757514();
  }

  v67 = v114;
  sub_1E3F2C430(v114);
  sub_1E3F2951C();
  sub_1E3FE5D4C(1);
  OUTLINED_FUNCTION_73_22();
  v68 = (v67 + *(v111 + 36));
  v69 = v135;
  *v68 = v134;
  v68[1] = v69;
  v68[2] = v136;
  if (v47)
  {
    v65 = sub_1E3757514();
  }

  v70 = v47 == 0;
  v71 = sub_1E3F29170();
  v72 = sub_1E3CBAB38(v71, 1);
  v73 = v101;
  sub_1E3CBCBC0(v72);
  v74 = v104;
  sub_1E3CBCC24(v73, v72, v47, v104);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v106) = 1;
  v105 = 0;
  LOBYTE(v104) = 1;
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1();
  v75 = v103;
  sub_1E3CBC9EC(v74, v103);
  memcpy((v75 + *(v102 + 36)), __src, 0x70uLL);
  v76 = v75;
  v77 = v100;
  sub_1E3741EA0(v76, v100, &qword_1ECF3CF18);
  *(v77 + *(v50 + 36)) = 1;
  v78 = v105;
  sub_1E4202ED4();
  sub_1E325F69C(v77, &qword_1ECF3DE88);
  v127 = 0;
  v128 = 1;
  v129[0] = &v127;
  v79 = v113;
  sub_1E3743538(v112, v113, &qword_1ECF3DE90);
  v125 = v53;
  v126 = v70;
  v129[1] = v79;
  v129[2] = &v125;
  v80 = v108;
  OUTLINED_FUNCTION_113_1(v116, v108);
  v123 = v52;
  v124 = v70;
  v129[3] = v80;
  v129[4] = &v123;
  v81 = v115;
  v82 = v110;
  sub_1E3743538(v115, v110, &qword_1ECF3DDF8);
  v121 = v66;
  v122 = v70;
  v129[5] = v82;
  v129[6] = &v121;
  v83 = v114;
  v84 = v107;
  OUTLINED_FUNCTION_113_1(v114, v107);
  v119 = v65;
  v120 = v70;
  v129[7] = v84;
  v129[8] = &v119;
  v85 = v106;
  sub_1E3743538(v78, v106, &qword_1ECF3DE90);
  v117 = 0;
  v118 = 1;
  v129[9] = v85;
  v129[10] = &v117;
  sub_1E3FE78CC(v129, v109);
  sub_1E325F69C(v78, &qword_1ECF3DE90);
  sub_1E325F69C(v83, &qword_1ECF3DE80);
  sub_1E325F69C(v81, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v86, v87);
  sub_1E325F69C(v112, &qword_1ECF3DE90);
  OUTLINED_FUNCTION_49_58();
  sub_1E325F69C(v88, v89);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v90, v91);
  sub_1E325F69C(v82, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v92, v93);
  OUTLINED_FUNCTION_49_58();
  return sub_1E325F69C(v94, v95);
}

uint64_t sub_1E3FEA03C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  if (a2)
  {
    sub_1E3FE28A8();
    v7 = 4;
  }

  else
  {
    sub_1E3FE2854();
    v7 = 3;
  }

  sub_1E3FE2AC4(v7);
  sub_1E4202474();
  sub_1E4202494();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDA8);
  OUTLINED_FUNCTION_1_11();
  sub_1E3743478(v12);
  OUTLINED_FUNCTION_8_154();
  sub_1E3E038E0();

  return sub_1E325F69C(v6, &qword_1ECF2E400);
}

uint64_t sub_1E3FEA1A8()
{
  OUTLINED_FUNCTION_52_51();
  type metadata accessor for SportsVoiceOverViewModel();
  OUTLINED_FUNCTION_3_239();
  sub_1E3FEAEAC(v1);
  sub_1E42010C4();
  return v0;
}

void sub_1E3FEA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_17_2(v22);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &a9 - v24;
  sub_1E3FE2954();
  v26 = sub_1E4202494();
  OUTLINED_FUNCTION_74_21(v26);
  sub_1E3FE2AC4(5u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDB8);
  OUTLINED_FUNCTION_1_11();
  sub_1E3743478(v27);
  sub_1E3E038E0();

  sub_1E325F69C(v25, &qword_1ECF2E400);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FEA350()
{
  type metadata accessor for SportsVoiceOverViewModel();
  OUTLINED_FUNCTION_3_239();
  sub_1E3FEAEAC(v0);
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

void View.ifAccessibilityOff<A>(typeSize:transform:)()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v33 = v8;
  v34 = v7;
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_1_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v35 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  if (sub_1E42012B4())
  {
    v18 = OUTLINED_FUNCTION_55_49();
    v2(v18);
    v19 = OUTLINED_FUNCTION_63_34();
    v2(v19);
    OUTLINED_FUNCTION_40_70();
    sub_1E37B8E90(v20, v21, v22);
    v23 = *(v3 + 8);
    v23(v12, v6);
    v23(v0, v6);
  }

  else
  {
    v34(v1);
    v24 = OUTLINED_FUNCTION_54_49();
    (v33)(v24);
    v25 = *(v12 + 8);
    v26 = OUTLINED_FUNCTION_58_1();
    v25(v26);
    OUTLINED_FUNCTION_112_1();
    v33();
    OUTLINED_FUNCTION_40_70();
    sub_1E37B8D98(v27, v28);
    v29 = OUTLINED_FUNCTION_58_1();
    v25(v29);
    v30 = OUTLINED_FUNCTION_125();
    v25(v30);
  }

  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v31 = OUTLINED_FUNCTION_53_50();
  v32(v31);
  (*(v16 + 8))(v4, v35);
  OUTLINED_FUNCTION_25_2();
}

void View.ifAccessibilityOn<A>(typeSize:transform:)()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v33 = v8;
  v34 = v7;
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_1_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v35 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  if (sub_1E42012B4())
  {
    v34(v1);
    v18 = OUTLINED_FUNCTION_54_49();
    (v33)(v18);
    v19 = *(v12 + 8);
    v20 = OUTLINED_FUNCTION_58_1();
    v19(v20);
    OUTLINED_FUNCTION_112_1();
    v33();
    OUTLINED_FUNCTION_40_70();
    sub_1E37B8D98(v21, v22);
    v23 = OUTLINED_FUNCTION_58_1();
    v19(v23);
    v24 = OUTLINED_FUNCTION_125();
    v19(v24);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_55_49();
    v2(v25);
    v26 = OUTLINED_FUNCTION_63_34();
    v2(v26);
    OUTLINED_FUNCTION_40_70();
    sub_1E37B8E90(v27, v28, v29);
    v30 = *(v3 + 8);
    v30(v12, v6);
    v30(v0, v6);
  }

  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v31 = OUTLINED_FUNCTION_53_50();
  v32(v31);
  (*(v16 + 8))(v4, v35);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FEA940()
{
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378);
  OUTLINED_FUNCTION_27_95();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v4 = j__OUTLINED_FUNCTION_18();
  return sub_1E37B8C10(v1, v4 & 1, v2, OpaqueTypeConformance2);
}

unint64_t sub_1E3FEA9E8()
{
  result = qword_1ECF3DD88;
  if (!qword_1ECF3DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD88);
  }

  return result;
}

unint64_t sub_1E3FEAB5C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    OUTLINED_FUNCTION_2_238();
    sub_1E3FEAEAC(v7);
    OUTLINED_FUNCTION_4_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3FEAC38()
{
  result = qword_1ECF3DDC8;
  if (!qword_1ECF3DDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DDD0);
    sub_1E3743478(&unk_1ECF3DCC8);
    sub_1E3743478(&unk_1ECF3DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DDC8);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP06VideosB0E16vuiAccessibility5label8behavior12sortPriorityQrSSSg_AA0F13ChildBehaviorVSgSdSgtFQOyAA01_C16Modifier_ContentVyAD020SportsScoreVoiceOverM0VG_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_40_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  OUTLINED_FUNCTION_1_11();
  sub_1E3743478(a4);
  OUTLINED_FUNCTION_7_22();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1E3FEAD84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    OUTLINED_FUNCTION_4_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3FEADF0()
{
  result = qword_1ECF3DEA0;
  if (!qword_1ECF3DEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CF18);
    sub_1E3FEAEAC(&unk_1ECF3DEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DEA0);
  }

  return result;
}

unint64_t sub_1E3FEAEAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E3FEAEF0()
{
  v1 = OUTLINED_FUNCTION_52_51();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return v0;
}

uint64_t sub_1E3FEAF44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_74_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void *sub_1E3FEAFE0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  *(a3 + 203) = 1;
  v13 = type metadata accessor for LegacySearchLockupListCell();
  v14 = v13[7];
  *(a3 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v15 = a3 + v13[9];
  type metadata accessor for CGRect(0);
  sub_1E42038E4();
  *v15 = v17;
  *(v15 + 16) = v18;
  *(v15 + 32) = v19;
  type metadata accessor for ContextMenuModel();

  sub_1E38F8CA4();

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  *(a3 + v13[8]) = sub_1E4188148(a1, v12);
  *a3 = a1;
  return memcpy((a3 + 8), a2, 0xC3uLL);
}

uint64_t type metadata accessor for LegacySearchLockupListCell()
{
  result = qword_1EE2958A0;
  if (!qword_1EE2958A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FEB1EC(uint64_t a1@<X8>)
{
  v152 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEF0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_3(&v127 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF00);
  OUTLINED_FUNCTION_0_10();
  v136 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v127 - v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF08);
  OUTLINED_FUNCTION_0_10();
  v140 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v127 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF18);
  OUTLINED_FUNCTION_0_10();
  v147 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF20);
  OUTLINED_FUNCTION_0_10();
  v150 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = objc_opt_self();
  v26 = [v25 isSearchEnabled];
  v157 = v1;
  v27 = *v1;
  v143 = v18;
  v135 = v6;
  if ((v26 & 1) == 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8();
  v26 = (*(v28 + 488))();
  if (!v26)
  {
    goto LABEL_6;
  }

  v29 = sub_1E373E010(16, v26);

  if (v29 && *v29 != _TtC8VideosUI13TextViewModel)
  {

LABEL_6:
    v29 = 0;
  }

  v134 = v12;
  v30 = (*v27 + 488);
  v31 = *v30;
  v32 = (*v30)(v26);
  if (!v32)
  {
LABEL_11:
    v33 = 0;
    goto LABEL_12;
  }

  v33 = sub_1E373E010(23, v32);

  if (v33 && *v33 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_11;
  }

LABEL_12:
  v34 = (v31)(v32);
  if (!v34)
  {
LABEL_16:
    v35 = 0;
    goto LABEL_17;
  }

  v35 = sub_1E373E010(15, v34);

  if (v35 && *v35 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_16;
  }

LABEL_17:
  v36 = (v31)(v34);
  v37 = v36;
  if (v36)
  {
    v37 = sub_1E373E010(222, v36);
  }

  v38 = (v31)(v36);
  v153 = v37;
  if (v38)
  {
    v39 = sub_1E373E010(39, v38);

    if (v39)
    {
      type metadata accessor for ImageViewModel();
      v155 = swift_dynamicCastClass();
      if (v155)
      {
LABEL_24:
        v37 = v153;
        goto LABEL_26;
      }
    }

    v155 = 0;
    goto LABEL_24;
  }

  v155 = 0;
LABEL_26:
  v40 = v31();
  if (v40)
  {
    v156 = sub_1E373E010(41, v40);
  }

  else
  {
    v156 = 0;
  }

  v41 = sub_1E3FEC2C8();
  v42 = MEMORY[0x1E69E7CC0];
  v162[0] = MEMORY[0x1E69E7CC0];
  v43 = [v25 isSearchEnabled];
  v158 = v41;
  if (v29 && v43)
  {
    if (v41)
    {
      v44 = v156;

      v45 = sub_1E37BD068();
    }

    else
    {
      v44 = v156;

      v45 = 0;
    }

    type metadata accessor for RichTextViewModel(0);
    v46 = sub_1E3AF46D0();
    v47 = sub_1E3AF46DC();

    sub_1E3AF46E0(v48, v45, v46, v47, 0, 1);
    v49 = sub_1E3ABC5C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    v42 = v49;
    v156 = v44;
    if (v51 >= v50 >> 1)
    {
      v124 = OUTLINED_FUNCTION_20_121(v50);
      v42 = sub_1E3ABC5C0(v124, v125, v126, v42);
    }

    *(v42 + 2) = v51 + 1;
    OUTLINED_FUNCTION_7_214();
    v41 = v158;
  }

  if (v33)
  {

    v52 = [v25 isSearchEnabled];
    if (v29 && v52 && v35 | v37)
    {
      if (!v41)
      {
        type metadata accessor for RichTextViewModel(0);
        goto LABEL_47;
      }

      sub_1E374EA2C();
      OUTLINED_FUNCTION_73_3();
      (*(*v41 + 2056))(1, 0);

      type metadata accessor for RichTextViewModel(0);
    }

    else
    {
      type metadata accessor for RichTextViewModel(0);
      if (!v41)
      {
        goto LABEL_47;
      }
    }

    sub_1E374EA2C();
    OUTLINED_FUNCTION_73_3();
LABEL_47:
    sub_1E3AF46D0();
    sub_1E3AF46DC();

    OUTLINED_FUNCTION_12_158(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = OUTLINED_FUNCTION_4_239();
    }

    v55 = *(v42 + 2);
    v54 = *(v42 + 3);
    if (v55 >= v54 >> 1)
    {
      v42 = OUTLINED_FUNCTION_17_143(v54);
    }

    *(v42 + 2) = v55 + 1;
    OUTLINED_FUNCTION_7_214();
  }

  if (v35)
  {

    if (v41)
    {

      sub_1E374EA94();
      OUTLINED_FUNCTION_73_3();
    }

    type metadata accessor for RichTextViewModel(0);
    sub_1E3AF46D0();
    sub_1E3AF46DC();

    OUTLINED_FUNCTION_12_158(v56);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = OUTLINED_FUNCTION_4_239();
    }

    v58 = *(v42 + 2);
    v57 = *(v42 + 3);
    if (v58 >= v57 >> 1)
    {
      v42 = OUTLINED_FUNCTION_17_143(v57);
    }

    *(v42 + 2) = v58 + 1;
    OUTLINED_FUNCTION_7_214();
  }

  v142 = v33;
  v146 = v29;
  v138 = v35;
  if (v37)
  {
    if (v41)
    {

      v59 = v41;
      sub_1E3AFFB84();
      OUTLINED_FUNCTION_73_3();
    }

    else
    {
      v60 = objc_allocWithZone(VUIMediaTagsViewLayout);

      v59 = [v60 init];
    }

    type metadata accessor for MediaTagsViewModel();

    v61 = v59;
    v62 = sub_1E403C2C0(v37, v59);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = OUTLINED_FUNCTION_4_239();
    }

    v154 = v42;
    v64 = *(v42 + 2);
    v63 = *(v42 + 3);
    if (v64 >= v63 >> 1)
    {
      v121 = OUTLINED_FUNCTION_20_121(v63);
      v154 = sub_1E3ABC5C0(v121, v122, v123, v154);
    }

    v65 = v154;
    *(v154 + 2) = v64 + 1;
    *&v65[8 * v64 + 32] = v62 | 0x8000000000000000;
    v162[0] = v65;
    v66 = [objc_allocWithZone(VUIMediaTagsView) init];
    [v66 elementsArePlacedOnIndividualLines];
  }

  else
  {
    v154 = v42;
  }

  v67 = sub_1E4201D44();
  v68 = v133;
  *v133 = v67;
  *(v68 + 8) = 0;
  *(v68 + 16) = 0;
  v69 = sub_1E4201B84();
  v70 = v131;
  *v131 = v69;
  *(v70 + 8) = 0;
  *(v70 + 16) = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF28);
  sub_1E3FEC408(v155, v41, v156, v162, v70 + *(v71 + 44));
  v72 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF30) + 44);
  sub_1E4203DA4();
  sub_1E4200D94();
  v130 = v162[1];
  v129 = v164;
  v73 = v166;
  v128 = v167;
  v161 = 1;
  v160 = v163;
  v159 = v165;
  v74 = v132;
  sub_1E379D7E4(v70, v132, &qword_1ECF3DEF0);
  v75 = v161;
  v76 = v160;
  v77 = v159;
  sub_1E379D7E4(v74, v72, &qword_1ECF3DEF0);
  v78 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF38) + 48);
  *v78 = 0;
  *(v78 + 8) = v75;
  *(v78 + 16) = v130;
  *(v78 + 24) = v76;
  *(v78 + 32) = v129;
  *(v78 + 40) = v77;
  *(v78 + 48) = v73;
  v79 = v158;
  *(v78 + 56) = v128;
  sub_1E325F6F0(v70, &qword_1ECF3DEF0);
  sub_1E325F6F0(v74, &qword_1ECF3DEF0);
  v80 = *(v157 + *(type metadata accessor for LegacySearchLockupListCell() + 32));
  v81 = sub_1E32752B0(&qword_1ECF3DF40, &qword_1ECF3DEF8);
  v82 = v134;
  v83 = v135;
  sub_1E4187EA8(v80, v135, v81);
  sub_1E325F6F0(v68, &qword_1ECF3DEF8);
  if (v79)
  {
    v84 = *(*v79 + 792);

    v86 = v84(v85);
  }

  else
  {
    v86 = 11;
  }

  v87 = v149;
  v88 = v144;
  v89 = v143;
  v90 = v139;
  memset(v173, 0, sizeof(v173));
  v174 = 1;
  v170 = v83;
  v171 = v81;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = v137;
  sub_1E3A6929C(v86, 0, 0, 1, v173, v137, OpaqueTypeConformance2);
  (*(v136 + 8))(v82, v92);
  if (v79)
  {
    v93 = *(*v79 + 744);

    v95 = v79;
    v93(v94);
    OUTLINED_FUNCTION_73_3();
  }

  else
  {
    v95 = [objc_opt_self() clearColor];
  }

  v96 = sub_1E38F08C4(v95);

  v97 = sub_1E4202734();
  (*(v140 + 32))(v89, v90, v141);
  v98 = v89 + *(v88 + 36);
  *v98 = v96;
  *(v98 + 8) = v97;
  if (v158)
  {
    OUTLINED_FUNCTION_8();
    v100 = *(v99 + 552);

    v100(&v168, v101);

    if ((v169 & 1) == 0)
    {
      v102 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v102, v103, v104, v105);
    }
  }

  v106 = sub_1E3FECF90();
  v107 = v145;
  sub_1E3E361E8();
  sub_1E32DF3A8(v89);
  v108 = v158;

  v170 = v88;
  v171 = v106;
  v109 = swift_getOpaqueTypeConformance2();
  v110 = v148;
  OUTLINED_FUNCTION_32_0();
  v111 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32_0();
  LOBYTE(v106) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32_0();
  v112 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v108, v111 & 1, v106 & 1, 1, v112 & 1, v110, v109);

  (*(v147 + 8))(v107, v110);
  if (v108 && (v113 = *(*v108 + 152), v114 = , v113(&v170, v114), , (v172 & 1) == 0))
  {
    v115.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v115, v116, v117, v118);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  sub_1E4202734();

  v119 = v152;
  (*(v150 + 32))(v152, v87, v151);

  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF50);
  OUTLINED_FUNCTION_7_3(v119 + *(v120 + 36));
}

uint64_t sub_1E3FEC2C8()
{
  if (*(v0 + 186) == 3)
  {
    return 0;
  }

  sub_1E3AFFC64();
  if (sub_1E4205E84())
  {
    type metadata accessor for SearchViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return (*(*result + 1008))();
    }
  }

  else
  {
    if ((sub_1E4205E84() & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for SearchViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return (*(*result + 1032))();
    }
  }

  return result;
}

uint64_t sub_1E3FEC408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v126 = a3;
  v121 = a2;
  v8 = type metadata accessor for StackedTextViews(0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_3(&v115 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF60);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v115 - v18;
  v124 = type metadata accessor for Monogram();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = type metadata accessor for ImageViewWithOverlay();
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v30 - v29);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_6();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v115 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF78);
  v39 = OUTLINED_FUNCTION_17_2(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_17_3(&v115 - v41);
  if (a1)
  {
    v120 = a4;
    v117 = a5;
    OUTLINED_FUNCTION_8();
    v43 = *(v42 + 488);

    v45 = v43(v44);
    if (v45)
    {
      v125 = sub_1E373E010(155, v45);
    }

    else
    {
      v125 = 0;
    }

    v54 = sub_1E3FEC2C8();
    v116 = v16;
    if (v54)
    {

      sub_1E38A86A4();
      OUTLINED_FUNCTION_73_3();
      OUTLINED_FUNCTION_8();
      (*(v55 + 200))();

      v56 = sub_1E38A86A4();

      (*(*v56 + 304))(v57);
    }

    v126 = a1;
    v115 = v19;
    OUTLINED_FUNCTION_24_105();
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0;
    }

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    v113 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_9_177();
    v61 = OUTLINED_FUNCTION_15_160();
    OUTLINED_FUNCTION_6_14(v61, v60, v62, v63, v107, v108, v109, v110, v111, v112, SHIBYTE(v112), v113);

    v64 = v121;
    if (v121)
    {
      v65 = sub_1E38A86A4();
    }

    else
    {
      v65 = 0;
    }

    v119 = v24;
    v66 = OUTLINED_FUNCTION_18();
    v67 = sub_1E3BF493C();
    v69 = v68;
    v71 = v70;
    v72 = v125;

    v74 = v66 & 1;
    v75 = v118;
    sub_1E3FB1C2C(v73, v133, v72, v65, v74, v67, v69, v71 & 1, v118, 0, 0);
    if (v64 && (v76 = sub_1E38A86A4(), (*(*v76 + 152))(&v131), , (v132 & 1) == 0))
    {
      v77.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v77, v78, v79, v80);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v81 = v117;
    v16 = v116;
    v82 = v127;
    v19 = v115;
    sub_1E4202734();
    sub_1E3FB29B8(v75, v34);
    OUTLINED_FUNCTION_7_3(v34 + *(v122 + 36));
    sub_1E3FED598(v34, v37);
    a4 = &qword_1ECF3DF70;
    sub_1E379D7E4(v37, v123, &qword_1ECF3DF70);
    swift_storeEnumTagMultiPayload();
    sub_1E3FED43C();
    OUTLINED_FUNCTION_3_240();
    sub_1E3FED4F8(v83, v84);
    sub_1E4201F44();

    sub_1E325F6F0(v37, &qword_1ECF3DF70);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF80);
    OUTLINED_FUNCTION_25_102(v85);
    a5 = v81;
  }

  else if (v126)
  {
    v119 = v24;
    v120 = a4;

    if (sub_1E3FEC2C8())
    {

      v46 = sub_1E3AFF5D8();

      v48 = (*(*v46 + 1744))(v47);

      (*(*v48 + 200))(v49);

      v50 = sub_1E3AFF5D8();

      v52 = (*(*v50 + 1744))(v51);

      (*(*v52 + 304))(v53);
    }

    OUTLINED_FUNCTION_24_105();
    if (v59)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    v114 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_9_177();
    v89 = OUTLINED_FUNCTION_15_160();
    OUTLINED_FUNCTION_6_14(v89, v88, v90, v91, v107, v108, v109, v110, v111, v112, SHIBYTE(v112), v114);

    if (v121)
    {
      v92 = sub_1E3AFF5D8();
    }

    else
    {
      v92 = 0;
    }

    v82 = v127;

    sub_1E3BD63E4(v93, 0, v133, v92, 0, 0, 0, 0, v23);
    sub_1E3FED3E0(v23, v123, type metadata accessor for Monogram);
    swift_storeEnumTagMultiPayload();
    a4 = sub_1E3FED43C();
    OUTLINED_FUNCTION_3_240();
    sub_1E3FED4F8(v94, v95);
    sub_1E4201F44();

    sub_1E3FED540(v23, type metadata accessor for Monogram);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF80);
    OUTLINED_FUNCTION_25_102(v96);
  }

  else
  {
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF80);
    v82 = v127;
    __swift_storeEnumTagSinglePayload(v127, 1, 1, v86);
  }

  *v19 = sub_1E4201B84();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v97 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF88) + 44)];
  v98 = *a4;

  v100 = sub_1E404034C(v99);
  v101 = v129;
  sub_1E403E1F8(v98, v100, v129);
  v102 = v130;
  sub_1E3FED3E0(v101, v130, type metadata accessor for StackedTextViews);
  sub_1E3FED3E0(v102, v97, type metadata accessor for StackedTextViews);
  v103 = v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF90) + 48);
  *v103 = 0;
  *(v103 + 8) = 1;
  sub_1E3FED540(v101, type metadata accessor for StackedTextViews);
  sub_1E3FED540(v102, type metadata accessor for StackedTextViews);
  v104 = v128;
  sub_1E379D7E4(v82, v128, &qword_1ECF3DF78);
  sub_1E379D7E4(v19, v16, &qword_1ECF3DF60);
  sub_1E379D7E4(v104, a5, &qword_1ECF3DF78);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF98);
  sub_1E379D7E4(v16, a5 + *(v105 + 48), &qword_1ECF3DF60);
  sub_1E325F6F0(v19, &qword_1ECF3DF60);
  sub_1E325F6F0(v82, &qword_1ECF3DF78);
  sub_1E325F6F0(v16, &qword_1ECF3DF60);
  return sub_1E325F6F0(v104, &qword_1ECF3DF78);
}

unint64_t sub_1E3FECF90()
{
  result = qword_1ECF3DF48;
  if (!qword_1ECF3DF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DEF8);
    sub_1E32752B0(&qword_1ECF3DF40, &qword_1ECF3DEF8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DF48);
  }

  return result;
}

void sub_1E3FED144()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3FED270(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel();
      if (v2 <= 0x3F)
      {
        sub_1E3FED270(319, &qword_1EE288650, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3FED270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3FED2D4()
{
  result = qword_1ECF3DF58;
  if (!qword_1ECF3DF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF10);
    sub_1E3FECF90();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DF58);
  }

  return result;
}

uint64_t sub_1E3FED3E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3FED43C()
{
  result = qword_1ECF3DFA0;
  if (!qword_1ECF3DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF70);
    sub_1E3FED4F8(qword_1EE26CB60, type metadata accessor for ImageViewWithOverlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DFA0);
  }

  return result;
}

uint64_t sub_1E3FED4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3FED540(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3FED598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1E3FED608()
{
  v1 = OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 canonicalConfig];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1E3FED6AC(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CanonicalTemplateController();
  objc_msgSendSuper2(&v3, sel_vui_viewDidAppear_, a1 & 1);
  sub_1E3EDC240();
}

uint64_t type metadata accessor for CanonicalTemplateController()
{
  result = qword_1EE294D90;
  if (!qword_1EE294D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FED794(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CanonicalTemplateController();
  objc_msgSendSuper2(&v4, sel_vui_viewDidDisappear_, a1 & 1);
  v3 = [v1 userActivity];
  [v3 resignCurrent];
}

void sub_1E3FED858(void *a1)
{
  sub_1E3ED6400();
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x230))())
  {

    sub_1E3905190();
    if (sub_1E4205E84())
    {
      type metadata accessor for SportsCanonicalBannerCell();
      swift_getObjCClassFromMetadata();
      sub_1E3859230(86);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      type metadata accessor for SportsPlayByPlayCell();
      v4 = 191;
    }

    else
    {
      type metadata accessor for CanonicalBannerViewCell();
      swift_getObjCClassFromMetadata();
      sub_1E3859230(83);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      type metadata accessor for CanonicalFooterViewCell();
      swift_getObjCClassFromMetadata();
      sub_1E3859230(107);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      type metadata accessor for CanonicalInfoCardCell();
      swift_getObjCClassFromMetadata();
      sub_1E3859230(166);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      sub_1E3859230(192);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      sub_1E3859230(168);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      type metadata accessor for VideoItunesExtrasDescriptionCell();
      v4 = 177;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1E3859230(v4);
    v6 = sub_1E4205ED4();

    [a1 vui:ObjCClassFromMetadata registerClass:v6 forCellWithReuseIdentifier:?];
  }
}

void sub_1E3FEDA5C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_6_204();
    sub_1E3AD9330();
    if (v8)
    {
      v9 = v8;
      sub_1E3790540(__dst);
      v10 = __dst[1];
      v11 = __dst[0];
      v12 = __dst[3];
      v13 = __dst[2];
      v14 = __dst[5];
      v15 = __dst[4];
      v16 = __dst[7];
      v17 = __dst[6];
      v18 = __dst[9];
      v19 = __dst[8];
      v21 = *(&__dst[10] + 1);
      v20 = *&__dst[10];
LABEL_11:
      *v7 = v9;
      *(v7 + 8) = v11;
      *(v7 + 24) = v10;
      *(v7 + 40) = v13;
      *(v7 + 56) = v12;
      *(v7 + 72) = v15;
      *(v7 + 88) = v14;
      *(v7 + 104) = v17;
      *(v7 + 120) = v16;
      *(v7 + 136) = v19;
      *(v7 + 152) = v18;
      *(v7 + 168) = v20;
      *(v7 + 176) = v21;
      OUTLINED_FUNCTION_42();
      return;
    }

LABEL_10:
    OUTLINED_FUNCTION_6_204();
    sub_1E3ED6648(v25);
    v9 = *&__dst[0];
    v11 = *(__dst + 8);
    v10 = *(&__dst[1] + 8);
    v13 = *(&__dst[2] + 8);
    v12 = *(&__dst[3] + 8);
    v14 = *(&__dst[5] + 8);
    v15 = *(&__dst[4] + 8);
    v16 = *(&__dst[7] + 8);
    v17 = *(&__dst[6] + 8);
    v18 = *(&__dst[9] + 8);
    v19 = *(&__dst[8] + 8);
    v20 = *(&__dst[10] + 1);
    v21 = v118;
    goto LABEL_11;
  }

  if ((sub_1E373F6E0() & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for CollectionViewModel();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v22;

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x470))(v23, v5, v3);
  if (v3)
  {
    swift_getObjectType();
    v24 = sub_1E40175B0();
  }

  else
  {
    v24 = 0.0;
  }

  v26 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x458))(__dst, v23, v3);
  v27 = __dst[0];
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v24);
  v28 = (*((*v26 & *v0) + 0x460))(v23, v3);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = (*(*v23 + 1040))();
  v36 = MEMORY[0x1E69E7CC0];
  if (!v35)
  {
    v74 = MEMORY[0x1E69E7CC0];
LABEL_50:
    v122[0] = v36;
    v75 = *(v74 + 2);
    if (v75)
    {
      v113 = v34;
      v76 = v32;
      v77 = v30;
      v78 = v28;
      v79 = v74;
      v80 = objc_opt_self();
      v81 = objc_opt_self();
      v82 = objc_opt_self();
      v83 = (v79 + 40);
      v84 = 0.0;
      v85 = 0.0;
      do
      {
        v87 = *(v83 - 1);
        v86 = *v83;
        v88 = [v80 absoluteDimension_];
        v89 = [v80 fractionalHeightDimension_];
        v90 = [v81 sizeWithWidthDimension:v88 heightDimension:v89];

        v91 = [v82 itemWithLayoutSize_];
        MEMORY[0x1E6910BF0]();
        if (*((v122[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        if (--v75)
        {
          v85 = *(&v27 + 1) + v85 + *&v27;
        }

        else
        {
          v85 = v85 + v87;
        }

        if (v84 <= v86)
        {
          v84 = v86;
        }

        v83 += 2;
      }

      while (v75);
      v28 = v78;
      v30 = v77;
      v32 = v76;
      v34 = v113;
    }

    else
    {
      v84 = 0.0;
      v85 = 0.0;
    }

    v92 = objc_opt_self();
    v93 = [v92 absoluteDimension_];
    v94 = [v92 absoluteDimension_];
    v95 = [objc_opt_self() sizeWithWidthDimension:v93 heightDimension:v94];

    v96 = objc_opt_self();
    sub_1E3280A90(0, &unk_1EE23B0A0);
    v97 = sub_1E42062A4();

    v98 = [v96 horizontalGroupWithLayoutSize:v95 subitems:v97];

    v99 = [objc_opt_self() fixedSpacing_];
    [v98 setInterItemSpacing_];

    v9 = [objc_opt_self() sectionWithGroup_];
    [v9 setOrthogonalScrollingBehavior_];
    [v9 setContentInsets_];
    sub_1E3790540(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1E3F3778C(__dst, v9, v120);
    v114 = v120[0];
    v116 = v120[1];
    v109 = v120[2];
    v111 = v120[3];
    v106 = v120[4];
    v107 = v120[5];
    v103 = v120[6];
    v104 = v120[7];
    v101 = v120[8];
    v102 = v120[9];
    v21 = *(&v120[10] + 1);
    v20 = *&v120[10];

    memcpy(v121, v120, sizeof(v121));
    if (sub_1E3AD9318(v121) == 1)
    {
      v114 = __src[0];
      v116 = __src[1];
      v109 = __src[2];
      v111 = __src[3];
      v106 = __src[4];
      v107 = __src[5];
      v103 = __src[6];
      v104 = __src[7];
      v101 = __src[8];
      v102 = __src[9];
      v21 = *(&__src[10] + 1);
      v20 = *&__src[10];
    }

    v11 = v114;
    v10 = v116;
    v13 = v109;
    v12 = v111;
    v15 = v106;
    v14 = v107;
    v17 = v103;
    v16 = v104;
    v19 = v101;
    v18 = v102;
    goto LABEL_11;
  }

  v37 = v35;
  if (!sub_1E32AE9B0(v35))
  {
    goto LABEL_48;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x1E6911E60](0, v37);
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v38 = *(v37 + 32);
  }

  v40 = (*(*v38 + 872))(v39);
  if (!v40)
  {

LABEL_49:
    v74 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  v41 = v40;
  v42 = sub_1E32AE9B0(v40);
  if (!v42)
  {

LABEL_48:

    goto LABEL_49;
  }

  v100 = v38;
  if (v42 >= 1)
  {
    v43 = 0;
    v110 = v41 & 0xC000000000000001;
    v105 = MEMORY[0x1E69E7CC0];
    v108 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
    v115 = v41;
    v112 = v42;
    while (1)
    {
      if (v110)
      {
        v44 = MEMORY[0x1E6911E60](v43, v41);
      }

      else
      {
        v44 = *(v41 + 8 * v43 + 32);
      }

      sub_1E38BAE74(__dst);
      v121[0] = *(__dst + 1);
      v121[1] = *(&__dst[1] + 1);
      *(&v121[1] + 10) = *(&__dst[1] + 11);
      v45 = [v1 vuiTraitCollection];
      v46 = [v45 isAXLargeEnabled];

      v47 = 1.0;
      if ((v46 & 1) == 0)
      {
        v48 = (*(*v44 + 392))();
        if (v48)
        {
          *&v49 = COERCE_DOUBLE((*(*v48 + 1128))(v48));
          v51 = v50;

          if ((v51 & 1) == 0)
          {
            v47 = *&v49;
          }
        }
      }

      v52 = v108();
      sub_1E384EE08(v44[49]);
      v53 = (*((*MEMORY[0x1E69E7D40] & *v52) + 0xE0))();

      if (v53 && (v54 = *&v27 * v47 + *(&v27 + 1) * (v47 + -1.0), (v55 = [swift_getObjCClassFromMetadata() makePrototypeCellWithFrame_]) != 0))
      {
        v56 = v55;
        type metadata accessor for UIFactory();
        v122[0] = v56;
        *(&v120[1] + 1) = &type metadata for CollectionViewCellContext;
        *&v120[2] = &off_1F5D621F8;
        v57 = swift_allocObject();
        *&v120[0] = v57;
        *(v57 + 16) = 1;
        v58 = v121[1];
        *(v57 + 17) = v121[0];
        *(v57 + 33) = v58;
        *(v57 + 43) = *(&v121[1] + 10);
        v59 = sub_1E3280A90(0, &qword_1EE23B120);
        v60 = v56;

        sub_1E38E5240(v61, v122, v120, 0, 0, v59, __src);

        sub_1E325F748(v120, &qword_1ECF296C0);
        v62 = *&__src[0];
        if (*&__src[0])
        {
          objc_opt_self();
          v63 = swift_dynamicCastObjCClass();
          if (v63)
          {
            v64 = v63;
            objc_opt_self();
            v65 = swift_dynamicCastObjCClass();
            if (!v65)
            {
              v65 = v64;
            }

            [v65 vui:v54 sizeThatFits:{1.79769313e308, v100}];
            v67 = v66;
            v69 = v68;
            v70 = v1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v105 = sub_1E3AA7150(0, *(v105 + 2) + 1, 1, v105);
            }

            v72 = *(v105 + 2);
            v71 = *(v105 + 3);
            if (v72 >= v71 >> 1)
            {
              v105 = sub_1E3AA7150((v71 > 1), v72 + 1, 1, v105);
            }

            *(v105 + 2) = v72 + 1;
            v73 = &v105[16 * v72];
            *(v73 + 4) = v67;
            *(v73 + 5) = v69;
            v1 = v70;
            goto LABEL_43;
          }
        }
      }

      else
      {
      }

LABEL_43:
      ++v43;
      v41 = v115;
      if (v112 == v43)
      {

        v36 = MEMORY[0x1E69E7CC0];
        v74 = v105;
        goto LABEL_50;
      }
    }
  }

LABEL_67:
  __break(1u);
}

void sub_1E3FEE68C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v52.receiver = v1;
  v52.super_class = type metadata accessor for CanonicalTemplateController();
  objc_msgSendSuper2(&v52, sel_vuiScrollViewDidScroll_, v3);
  v5 = MEMORY[0x1E6909190](0, 0);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
  v8 = (v7)(v5);
  v9 = sub_1E41FE7E4();
  v10 = [v8 vui:v9 cellForItemAtIndexPath:?];

  if (!v10)
  {
    goto LABEL_30;
  }

  type metadata accessor for CanonicalBannerViewCell();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = (*((*v6 & *v11) + 0x4E8))();
  v13 = v7();
  [v13 vuiBounds];
  v49 = v15;
  v50 = v14;
  v48 = v16;
  v18 = v17;

  v19 = v7();
  v20 = sub_1E41FE7E4();
  v21 = [v19 layoutAttributesForItemAtIndexPath_];

  if (v21)
  {
    [v21 frame];
  }

  v53.origin.x = OUTLINED_FUNCTION_51_0();
  Height = CGRectGetHeight(v53);
  v23 = sub_1E3FED608();
  [v23 videoViewOffscreenThresholdToStopPlayback];
  v25 = v24;

  v26 = Height * v25;
  v54.origin.x = OUTLINED_FUNCTION_51_0();
  MinX = CGRectGetMinX(v54);
  v55.origin.x = OUTLINED_FUNCTION_51_0();
  MinY = CGRectGetMinY(v55);
  v56.origin.x = OUTLINED_FUNCTION_51_0();
  v58.size.width = CGRectGetWidth(v56);
  v57.origin.y = v49;
  v57.origin.x = v50;
  v57.size.width = v48;
  v57.size.height = v18;
  v58.origin.x = MinX;
  v58.origin.y = MinY;
  v58.size.height = v26;
  if (!CGRectIntersectsRect(v57, v58))
  {
    if (!v12)
    {
LABEL_15:
      v35 = OUTLINED_FUNCTION_3_241();
      v36(v35);
LABEL_18:

      goto LABEL_31;
    }

    v29 = [v12 player];
    if (!v29)
    {
      v39 = OUTLINED_FUNCTION_3_241();
      v40(v39);

      goto LABEL_18;
    }

    v30 = v29;
    v31 = [v29 state];
    v51 = objc_opt_self();
    v32 = [v51 playing];
    v33 = v32;
    if (v31)
    {
      if (v32)
      {
        sub_1E3280A90(0, &qword_1EE23B280);
        v34 = sub_1E4206F64();

        if (v34)
        {
          goto LABEL_28;
        }

LABEL_23:
        v41 = [v30 state];
        v42 = [v51 loading];
        v43 = v42;
        if (v41)
        {
          if (v42)
          {
            sub_1E3280A90(0, &qword_1EE23B280);
            v44 = sub_1E4206F64();

            if ((v44 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_28:
            *(v1 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying) = 1;
            v45 = v12;
            [v45 pause];

            goto LABEL_29;
          }

          v43 = v41;
        }

        else if (!v42)
        {
          goto LABEL_28;
        }

LABEL_34:
        goto LABEL_30;
      }

      v33 = v31;
    }

    else if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying) = 0;
    if (v12)
    {
      [v12 play];

LABEL_29:
LABEL_30:
      v46 = OUTLINED_FUNCTION_3_241();
      v47(v46);
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  v37 = OUTLINED_FUNCTION_3_241();
  v38(v37);

LABEL_31:
  OUTLINED_FUNCTION_42();
}

void sub_1E3FEEBDC()
{
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = MEMORY[0x1E6909190](0, 0);
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v8);
  v11 = sub_1E41FE7E4();
  v12 = [v10 vui:v11 cellForItemAtIndexPath:?];

  if (!v12)
  {
    goto LABEL_6;
  }

  type metadata accessor for CanonicalBannerViewCell();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_5:

LABEL_6:
    (*(v3 + 8))(v7, v1);
    return;
  }

  v14 = (*((*v9 & *v13) + 0x4E8))();
  if (v14)
  {
    v15 = v14;
    [v14 setPlaybackEnabled_];

    goto LABEL_5;
  }

  (*(v3 + 8))(v7, v1);
}

id sub_1E3FEEDB4(uint64_t a1, char a2)
{
  sub_1E3FEEE10();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CanonicalTemplateController();
  return objc_msgSendSuper2(&v6, sel_vuiScrollViewDidEndDragging_willDecelerate_, a1, a2 & 1);
}

void sub_1E3FEEE10()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 applicationState];

  if (v2 == 1)
  {
    v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))();
    v6 = [v3 collectionViewLayout];

    v4 = [v6 _invalidationContextForRefreshingVisibleElementAttributes];
    if (v4)
    {
      v5 = v4;
      [v6 invalidateLayoutWithContext_];
    }
  }
}

id sub_1E3FEEFA8(uint64_t a1)
{
  sub_1E3FEEE10();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CanonicalTemplateController();
  return objc_msgSendSuper2(&v4, sel_vuiScrollViewDidEndDecelerating_, a1);
}

uint64_t sub_1E3FEF09C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig) = 0;
  return sub_1E3ED15A8(a1);
}

id sub_1E3FEF0B8(void *a1)
{
  v1[OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CanonicalTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  return v3;
}

id sub_1E3FEF15C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3FEF1A4()
{
  v13 = &unk_1F5D7BE68;
  v14 = &off_1F5D7BC48;
  LOBYTE(v12[0]) = 0;
  sub_1E3F9F164(v12);
  if (!v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_1E325F748(v15, &unk_1ECF296E0);
    return 0;
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1E384EE08(35);
  v13 = v0;
  v12[0] = v11;
  v3 = sub_1E3A7CD30(v1, v2, v12, 0);

  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v3)
  {
    return 0;
  }

  v4 = *(*v3 + 392);

  v6 = v4(v5);

  if (v6)
  {
    v7 = [objc_opt_self() current];
    sub_1E3C2AE10();
    v9 = v8;
    (*(*v6 + 1640))();
  }

  type metadata accessor for ImageViewModel();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

char *sub_1E3FEF39C(uint64_t a1, void *a2)
{
  if (a1 || sub_1E41FE824())
  {
    goto LABEL_7;
  }

  v5 = sub_1E41FE854();
  result = [a2 numberOfSections];
  if (!__OFSUB__(result, 1))
  {
    if (v5 == result - 1)
    {
      v7 = sub_1E41FE7E4();
      v8 = [a2 cellForItemAtIndexPath_];

      if (!v8)
      {
        return 0;
      }

      type metadata accessor for CanonicalFooterViewCell();
      v9 = swift_dynamicCastClass() != 0;

      return v9;
    }

LABEL_7:
    v10 = sub_1E41FE7E4();
    v11.receiver = v2;
    v11.super_class = type metadata accessor for CanonicalTemplateController();
    v9 = objc_msgSendSuper2(&v11, sel_shouldRubberbandElementWithCategory_in_at_, a1, a2, v10);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FEF670(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1E3FEF6A4()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 152);

  v11[1] = v1;
  v9 = v3(v4);
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFA8);
  sub_1E3FEF7B0();
  sub_1E38D2054(&v9, v11);
  v5 = v11[0];

  if (!v5)
  {
    v3(v6);
    OUTLINED_FUNCTION_111();
    return (*(v7 + 184))();
  }

  return v5;
}

unint64_t sub_1E3FEF7B0()
{
  result = qword_1ECF3DFB0;
  if (!qword_1ECF3DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DFB0);
  }

  return result;
}

uint64_t sub_1E3FEF814(int64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (sub_1E32AE9B0(*(v1 + 24)) <= a1)
  {
    result = sub_1E32AE9B0(*(v1 + 24));
    v5 = a1 - result;
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else
    {
      v6 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        sub_1E4204964();
        v7 = sub_1E4204954();
        v8 = sub_1E3FEF930(v7, v6);
        swift_beginAccess();
        sub_1E3FEF9BC(v8);
        swift_endAccess();
        goto LABEL_5;
      }
    }

    __break(1u);
    return result;
  }

LABEL_5:
  v9 = *(v1 + 24);
  sub_1E34AF4E4(a1, (v9 & 0xC000000000000001) == 0, *(v2 + 24));
  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x1E6911E60](a1, v9);
  }

  else
  {
    v10 = *(v9 + 8 * a1 + 32);
  }

  return v10;
}

uint64_t sub_1E3FEF930(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_1E4204964();
      v4 = sub_1E4206314();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1E3FEF9BC(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3FF16A0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E3FEFA68()
{
  OUTLINED_FUNCTION_5_10();
  v0 = swift_allocObject();
  sub_1E3289DE4();
  return v0;
}

uint64_t sub_1E3FEFA9C(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_6();
    v3 = *(v2 + 112);

    v5 = v3(v4);
    return (*(*v1 + 296))(v5);
  }

  return result;
}

uint64_t sub_1E3FEFB24(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_8();
  (*(v5 + 232))();
  OUTLINED_FUNCTION_6_6();
  v7 = *(v6 + 104);
  if (!v7() || (OUTLINED_FUNCTION_26_0(), v9 = (*(v8 + 128))(), , !v9))
  {
    if (v7())
    {
      OUTLINED_FUNCTION_26_0();
      v9 = (*(v10 + 152))();
    }

    else
    {

      v9 = 0;
    }
  }

  type metadata accessor for Metrics();
  v11 = (*(*a1 + 176))();
  sub_1E3BA5D04(v11, v2, a2, v9);
}

uint64_t sub_1E3FEFCA4()
{
  OUTLINED_FUNCTION_26_0();
  result = (*(v0 + 576))();
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_26_0();
    if ((*(v3 + 176))())
    {

      type metadata accessor for Metrics();
      OUTLINED_FUNCTION_31_4();
      v4 = sub_1E3BA7AA8();
      OUTLINED_FUNCTION_111();
      (*(v5 + 208))(v2, v4);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E3FEFDC0()
{
  type metadata accessor for MetricsJetEngine();
  static MetricsJetEngine.convertClickDataToLocationData(_:index:)();
  OUTLINED_FUNCTION_144_0();
  type metadata accessor for Metrics();
  v1 = sub_1E3BA54D0();
  OUTLINED_FUNCTION_26_0();
  v3 = *(v2 + 184);

  v3(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4297BE0;
  *(v5 + 32) = v0;
  OUTLINED_FUNCTION_111();
  (*(v6 + 208))(v1, v5);
}

uint64_t sub_1E3FEFED4()
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_6_6();
  (*(v0 + 176))();
  static BaseImpressionManager.getSnapshotImpressionsFromTracker(_:)();
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1E3FEFF3C()
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 176))();
  static BaseImpressionManager.getRecordedImpressionsFromTracker(_:)();
  v3 = v2;
  result = swift_unknownObjectRelease();
  if (v3)
  {
    if (*(v3 + 16))
    {
      v5 = (*(*v0 + 104))(result);
      if (v5)
      {
        v6 = v5;
        OUTLINED_FUNCTION_26_0();
        v8 = (*(v7 + 128))();
        if (!v8)
        {
          v8 = (*(*v6 + 152))();
        }

        type metadata accessor for Metrics();
        v9 = OUTLINED_FUNCTION_50();
        sub_1E3BA5A94(v9, v8);
      }
    }
  }

  return result;
}

void sub_1E3FF0088(char a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 240))();
  v3 = [objc_opt_self() sharedInstance];
  v5 = v3;
  v4 = &selRef_recordAppWillTerminate;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_recordAppWillBackground;
  }

  [v3 *v4];
}

void sub_1E3FF0128(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v12;
  v13 = sub_1E3940F84(a3);
  v14 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v16;
  *(inited + 120) = v14;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1E4297BE0;
  *(v18 + 32) = sub_1E4205F14();
  *(v18 + 40) = v19;

  v20 = sub_1E394B988(a4, a5);
  *(v18 + 72) = v14;
  *(v18 + 48) = v20;
  *(v18 + 56) = v21;
  v22 = sub_1E4205CB4();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *(inited + 144) = v22;
  sub_1E4205CB4();
  OUTLINED_FUNCTION_6_6();
  if ((*(v23 + 104))())
  {
    OUTLINED_FUNCTION_26_0();
    v5 = (*(v24 + 128))();

    if (v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = inited;
      sub_1E394C48C(v5, sub_1E394C454, 0, isUniquelyReferenced_nonNull_native, &v29);
    }
  }

  v26 = [objc_opt_self() sharedInstance];
  v27 = OUTLINED_FUNCTION_50();
  sub_1E3744600(v27);

  v28 = sub_1E4205C44();

  [v5 recordSearch_];
}

unint64_t sub_1E3FF03C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    swift_dynamicCast();
    sub_1E329504C(&v22, v24);
    sub_1E329504C(v24, v25);
    sub_1E329504C(v25, &v23);
    result = sub_1E327D33C(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_1E329504C(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1E329504C(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E3FF0644(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1E4204724();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E3B2A208(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1E325F748(v9, &qword_1ECF2B7B0);
  }

  (*(v11 + 32))(v13, v9, v10);
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_8();
  v16 = (*(v15 + 176))();
  v18 = v17;
  (*(v11 + 16))(v6, v13, v10);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  a2(v16, v18, v6);
  swift_unknownObjectRelease();
  sub_1E325F748(v6, &qword_1ECF2B7B0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E3FF0884()
{
  sub_1E37BF908();
  OUTLINED_FUNCTION_5_10();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3FF09E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;

  return sub_1E3FF0A34();
}

uint64_t sub_1E3FF0A34()
{
  v1 = v0;
  type metadata accessor for Metrics();
  sub_1E3BA54D0();
  v2 = OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData;
  OUTLINED_FUNCTION_15_0();
  if (!*(v1 + v2) || (v3 = , sub_1E374BD08(v3), OUTLINED_FUNCTION_31_4(), , !v2))
  {
    v2 = sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_111();
  (*(v4 + 136))(v2);
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 112);

  v6(v7);
}

uint64_t (*sub_1E3FF0B40(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_66();
  return sub_1E3FF0B98;
}

uint64_t sub_1E3FF0B98(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3FF0A34();
  }

  return result;
}

uint64_t sub_1E3FF0BCC()
{
  OUTLINED_FUNCTION_144_0();
  type metadata accessor for Metrics();
  sub_1E3BA54D0();
  if (!sub_1E374BD08(v0))
  {
    sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_111();
  (*(v1 + 136))();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 200);

  v3(v4);
}

uint64_t sub_1E3FF0D14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Metrics();
  v4 = sub_1E3BA54D0();
  if (!sub_1E374BD08(a1))
  {
    sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_111();
  (*(v5 + 184))();
  if (a2)
  {
    a2 = sub_1E396AB60(a2);
  }

  OUTLINED_FUNCTION_8();
  (*(v6 + 208))(v4, a2);
}

unint64_t sub_1E3FF0EC0(uint64_t a1, uint64_t a2)
{
  result = sub_1E374BD08(a1);
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_8();
      (*(v4 + 224))();
    }
  }

  return result;
}

uint64_t sub_1E3FF0FF8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  result = OUTLINED_FUNCTION_12_159();
  if (result)
  {
    OUTLINED_FUNCTION_144_0();
    result = type metadata accessor for MetricsJetEngine();
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_13_173();
      OUTLINED_FUNCTION_31_4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = sub_1E3BA363C(2);
      *(inited + 40) = v9;
      *(inited + 48) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      v10 = sub_1E4205CB4();
      v11 = sub_1E3FF03C0(v10);

      sub_1E3F6B7FC(0, v11, v3);

      (*(**(v4 + OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_viewMetricsRecorder) + 264))(v3);
      return sub_1E325F748(v3, &qword_1ECF2B7B0);
    }
  }

  return result;
}

uint64_t sub_1E3FF11A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  result = OUTLINED_FUNCTION_12_159();
  if (result)
  {
    OUTLINED_FUNCTION_144_0();
    result = type metadata accessor for MetricsJetEngine();
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_13_173();
      OUTLINED_FUNCTION_31_4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = sub_1E3BA363C(2);
      *(inited + 40) = v9;
      *(inited + 48) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      v10 = sub_1E4205CB4();
      v11 = sub_1E3FF03C0(v10);

      sub_1E3F6B7FC(0, v11, v3);

      (*(**(v4 + OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_viewMetricsRecorder) + 272))(v3);
      return sub_1E325F748(v3, &qword_1ECF2B7B0);
    }
  }

  return result;
}

uint64_t sub_1E3FF1350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = OUTLINED_FUNCTION_14_168();
  v9 = a1;
  a5(v8, a4);
}

id sub_1E3FF13D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsRecorderObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MetricsRecorderFactoryObjC.makeViewMetricsRecorder()()
{
  v0 = objc_allocWithZone(type metadata accessor for MetricsRecorderObjC());

  return [v0 init];
}

id MetricsRecorderFactoryObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MetricsRecorderFactoryObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3FF154C()
{
  result = qword_1ECF3DFC8;
  if (!qword_1ECF3DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DFC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExitType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3FF16A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E4204964();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3FEF7B0();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFA8);
          v9 = sub_1E3797EB0(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FF1808()
{
  v3 = OUTLINED_FUNCTION_31_84();
  v4 = v3[7];
  *(v0 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v5 = v3[8];
  *(v0 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  v6 = (v0 + v3[9]);
  type metadata accessor for ViewInteractionStates();
  sub_1E3B1E0A8(0);
  sub_1E42038E4();
  *v6 = v11;
  v6[1] = v12;
  *v0 = v1;
  memcpy(v0 + 1, v2, 0xC3uLL);
  v7 = *(*v1 + 392);

  v9 = v7(v8);

  if (!v9)
  {
    goto LABEL_4;
  }

  if (*v9 != _TtC8VideosUI23CanonicalInfoCardLayout)
  {

LABEL_4:
    type metadata accessor for CanonicalInfoCardLayout();
    result = sub_1E418442C();
    v9 = result;
  }

  v0[26] = v9;
  return result;
}

uint64_t type metadata accessor for CanonicalInfoCard()
{
  result = qword_1EE2A2440;
  if (!qword_1EE2A2440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FF19F4()
{
  OUTLINED_FUNCTION_21_5();
  v37 = v1;
  v35 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFD8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  v12 = *(v0 + 208);
  OUTLINED_FUNCTION_36();
  v14 = (*(v13 + 552))(v38);
  if ((v39 & 1) == 0)
  {
    sub_1E3952BE8(v38[0], v38[1], v38[2], v38[3]);
  }

  (*(*v12 + 176))(v40, v14);
  if ((v41 & 1) == 0)
  {
    v17.n128_u64[0] = v40[2];
    v18.n128_u64[0] = v40[3];
    v15.n128_u64[0] = v40[0];
    v16.n128_u64[0] = v40[1];
    j_nullsub_1(v15, v16, v17, v18);
  }

  *v10 = sub_1E4201D44();
  *(v10 + 1) = 0;
  v10[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFE0);
  sub_1E3FF1DB4();
  sub_1E4202474();
  sub_1E32752B0(&qword_1ECF3DFE8, &qword_1ECF3DFD0);
  sub_1E4203224();
  (*(v3 + 8))(v7, v35);
  sub_1E325F6F0(v10, &qword_1ECF3DFD0);
  OUTLINED_FUNCTION_36();
  if ((*(v19 + 392))() && (OUTLINED_FUNCTION_30(), (*(v20 + 152))(v42), v21 = v42[0], v22 = v42[1], v23 = v42[2], v24 = v42[3], , (v43 & 1) == 0))
  {
    v25.n128_u64[0] = v21;
    v26.n128_u64[0] = v22;
    v27.n128_u64[0] = v23;
    v28.n128_u64[0] = v24;
    j_nullsub_1(v25, v26, v27, v28);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v29 = sub_1E4202734();
  v30 = v37;
  v31 = OUTLINED_FUNCTION_63_0();
  v32(v31);
  v33 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFF0) + 36));
  *v33 = v29;
  OUTLINED_FUNCTION_11_4(v33);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3FF1DB4()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v70 = v11;
  v12 = type metadata accessor for CanonicalInfoCard();
  v13 = OUTLINED_FUNCTION_8_0(v12);
  v69 = v14;
  v68 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17_3(&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E000);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E008) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E010);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E018);
  OUTLINED_FUNCTION_0_10();
  v64 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E020);
  OUTLINED_FUNCTION_0_10();
  v65 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_17_3(&v60 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E028);
  OUTLINED_FUNCTION_0_10();
  v66 = v36;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_17_3(&v60 - v38);
  *v20 = sub_1E4201D54();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E030);
  sub_1E3FF24A0(v10, &v20[*(v39 + 44)]);
  sub_1E4203D44();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v20, v24, &qword_1ECF3E000);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E038);
  memcpy(&v24[*(v40 + 36)], v73, 0x70uLL);
  LOBYTE(v20) = sub_1E4202734();
  v41 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E040) + 36)];
  *v41 = v20;
  *(v41 + 1) = v8;
  *(v41 + 2) = v6;
  *(v41 + 3) = v4;
  *(v41 + 4) = v2;
  v41[40] = 0;
  *&v24[*(v21 + 44)] = 256;
  sub_1E4203D44();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  v42 = OUTLINED_FUNCTION_63_0();
  sub_1E3741EA0(v42, v43, &qword_1ECF3E008);
  v44 = memcpy((v0 + *(v25 + 36)), v74, 0x70uLL);
  v45 = v10[26];
  v46 = (*(*v45 + 744))(v44);
  v47 = sub_1E3FF45E4();
  sub_1E39B87A4(v46);

  sub_1E325F6F0(v0, &qword_1ECF3E010);
  v71 = v25;
  v72 = v47;
  v48 = OUTLINED_FUNCTION_22_96();
  v49 = v62;
  v50 = v61;
  sub_1E3E361E8();
  v51 = v50;
  (*(v64 + 8))(v30, v50);
  v52 = v67;
  sub_1E3FF4840(v10, v67);
  v53 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v54 = swift_allocObject();
  sub_1E3FF48A4(v52, v54 + v53);
  v71 = v51;
  v72 = v48;
  v55 = OUTLINED_FUNCTION_22_96();
  v56 = j__OUTLINED_FUNCTION_18();
  v57 = v63;
  sub_1E383F5C4(v56 & 1, sub_1E3FF4908, v54, 0, 0, v31, v55);

  (*(v65 + 8))(v49, v31);
  v71 = v31;
  v72 = v55;
  v58 = OUTLINED_FUNCTION_22_96();
  OUTLINED_FUNCTION_242();
  LOBYTE(v53) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_242();
  LOBYTE(v54) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_242();
  LOBYTE(v48) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_242();
  v59 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v45, v53 & 1, v54 & 1, v48 & 1, v59 & 1, v35, v58);
  (*(v66 + 8))(v57, v35);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3FF24A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E070);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v80 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v87 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v97 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E078);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v96 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v80 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v80 - v32;
  v85 = a1[26];
  sub_1E374E9C4();
  OUTLINED_FUNCTION_30();
  (*(v34 + 152))(v98);

  if (v99)
  {
    v35 = 0;
  }

  else
  {
    v35 = v98[3];
  }

  *v30 = sub_1E4201B84();
  *(v30 + 1) = v35;
  v30[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E080);
  sub_1E3FF32C0(a1, v36, v37, v38, v39, v40, v41, v42, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v95 = v33;
  v43 = sub_1E3741EA0(v30, v33, &qword_1ECF3E078);
  v44 = *(**a1 + 488);
  v45 = v44(v43);
  if (!v45)
  {
    goto LABEL_12;
  }

  v46 = sub_1E373E010(15, v45);

  if (!v46)
  {
    goto LABEL_12;
  }

  if (*v46 != _TtC8VideosUI13TextViewModel)
  {

LABEL_12:
    v54 = 1;
    v50 = v89;
    goto LABEL_13;
  }

  sub_1E374EA94();
  OUTLINED_FUNCTION_30();
  (*(v47 + 152))(v100);

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v48 = sub_1E4202744();
  v49 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v48)
  {
    v49 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  (*(v87 + 32))(v16, v86, v88);
  v50 = v89;
  v51 = &v16[*(v89 + 36)];
  *v51 = v49;
  OUTLINED_FUNCTION_11_4(v51);
  v52 = v16;
  v53 = v81;
  sub_1E3741EA0(v52, v81, &qword_1ECF28CC0);
  sub_1E3741EA0(v53, v97, &qword_1ECF28CC0);
  v54 = 0;
LABEL_13:
  v55 = 1;
  v56 = __swift_storeEnumTagSinglePayload(v97, v54, 1, v50);
  v57 = v44(v56);
  if (v57)
  {
    v58 = sub_1E373E010(9, v57);

    if (v58)
    {
      if (*v58 == _TtC8VideosUI13TextViewModel)
      {
        sub_1E374EAFC();
        OUTLINED_FUNCTION_30();
        (*(v59 + 152))(v101);

        OUTLINED_FUNCTION_18();
        v60 = v84;
        sub_1E3F23370();
        v61 = sub_1E4202744();
        v62 = sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v61)
        {
          v62 = sub_1E4202774();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();

        v63 = v83;
        (*(v87 + 32))(v83, v60, v88);
        v64 = (v63 + *(v50 + 36));
        *v64 = v62;
        OUTLINED_FUNCTION_11_4(v64);
        v65 = v63;
        v66 = v82;
        OUTLINED_FUNCTION_8_85(v65, v82);
        OUTLINED_FUNCTION_8_85(v66, v94);
        v55 = 0;
      }

      else
      {
      }
    }
  }

  v67 = v94;
  __swift_storeEnumTagSinglePayload(v94, v55, 1, v50);
  sub_1E3FF2DBC(v7);
  v68 = v96;
  sub_1E3743538(v95, v96, &qword_1ECF3E078);
  v69 = v97;
  v70 = v90;
  OUTLINED_FUNCTION_29_12(v97, v90);
  v71 = v91;
  OUTLINED_FUNCTION_29_12(v67, v91);
  v72 = v92;
  sub_1E3743538(v7, v92, &qword_1ECF3E070);
  v73 = v68;
  v74 = v7;
  v75 = v93;
  sub_1E3743538(v73, v93, &qword_1ECF3E078);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E088);
  OUTLINED_FUNCTION_29_12(v70, v75 + v76[12]);
  OUTLINED_FUNCTION_29_12(v71, v75 + v76[16]);
  sub_1E3743538(v72, v75 + v76[20], &qword_1ECF3E070);
  sub_1E325F6F0(v74, &qword_1ECF3E070);
  sub_1E325F6F0(v67, &qword_1ECF2F9A8);
  sub_1E325F6F0(v69, &qword_1ECF2F9A8);
  sub_1E325F6F0(v95, &qword_1ECF3E078);
  sub_1E325F6F0(v72, &qword_1ECF3E070);
  sub_1E325F6F0(v71, &qword_1ECF2F9A8);
  v77 = OUTLINED_FUNCTION_63_0();
  sub_1E325F6F0(v77, v78);
  return sub_1E325F6F0(v96, &qword_1ECF3E078);
}

uint64_t sub_1E3FF2DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E090);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v54 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E098);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v54 - v13;
  OUTLINED_FUNCTION_36();
  v16 = (*(v15 + 552))();
  if (!v16)
  {
    goto LABEL_32;
  }

  sub_1E3277E60(0x656D6F74616D6F74, 0xEB00000000726574, v16, &v61);

  if (!*(&v62 + 1))
  {
    sub_1E329505C(&v61);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  OUTLINED_FUNCTION_25_103();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v39 = a1;
    v40 = 1;
    return __swift_storeEnumTagSinglePayload(v39, v40, 1, v7);
  }

  v54[1] = v1;
  v55 = v14;
  v56 = v11;
  v57 = v6;
  v58 = v7;
  v59 = a1;
  v17 = *(v63 + 16);
  v54[0] = v63;
  if (v17)
  {
    v60 = MEMORY[0x1E69E7CC0];
    v18 = (v63 + 32);
    while (1)
    {
      v19 = *v18;
      v20 = *(*v18 + 16);

      if (v20 && (v21 = OUTLINED_FUNCTION_33_82(), (v22 & 1) != 0) && (OUTLINED_FUNCTION_23_97(v21), OUTLINED_FUNCTION_25_103(), swift_dynamicCast()))
      {
        v24 = v63;
        v23 = v64;
      }

      else
      {
        v24 = 0;
        v23 = 0xE000000000000000;
      }

      if (*(v19 + 16) && (v25 = OUTLINED_FUNCTION_33_82(), (v26 & 1) != 0) && (OUTLINED_FUNCTION_23_97(v25), OUTLINED_FUNCTION_25_103(), swift_dynamicCast()))
      {
        v28 = v63;
        v27 = v64;
      }

      else
      {
        v28 = 0;
        v27 = 0xE000000000000000;
      }

      if (*(v19 + 16) && (v29 = sub_1E327D33C(0x65756C6176, 0xE500000000000000), (v30 & 1) != 0))
      {
        OUTLINED_FUNCTION_23_97(v29);
      }

      else
      {
        v61 = 0u;
        v62 = 0u;
      }

      if (!*(&v62 + 1))
      {
        break;
      }

      OUTLINED_FUNCTION_25_103();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v32 = v63;
      v31 = v64;
LABEL_25:
      v33 = v23;
      v34 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1E3FF4A98(0, *(v60 + 2) + 1, 1, v60);
      }

      v36 = *(v60 + 2);
      v35 = *(v60 + 3);
      if (v36 >= v35 >> 1)
      {
        v60 = sub_1E3FF4A98((v35 > 1), v36 + 1, 1, v60);
      }

      v37 = v60;
      *(v60 + 2) = v36 + 1;
      v38 = &v37[48 * v36];
      *(v38 + 4) = v34;
      *(v38 + 5) = v33;
      *(v38 + 6) = v28;
      *(v38 + 7) = v27;
      *(v38 + 8) = v32;
      *(v38 + 9) = v31;
      ++v18;
      if (!--v17)
      {
        goto LABEL_35;
      }
    }

    sub_1E329505C(&v61);
LABEL_24:
    v32 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_25;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_35:

  sub_1E374EAFC();
  OUTLINED_FUNCTION_30();
  (*(v42 + 152))(&v61);

  v43 = sub_1E4201D44();
  v44 = v57;
  *v57 = v43;
  v44[1] = 0;
  *(v44 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0A0);
  sub_1E3FF3828();

  v45 = sub_1E4202744();
  v46 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v45)
  {
    v46 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v47 = v44;
  v48 = v56;
  sub_1E3741EA0(v47, v56, &qword_1ECF3E090);
  v7 = v58;
  v49 = (v48 + *(v58 + 36));
  *v49 = v46;
  OUTLINED_FUNCTION_11_4(v49);
  v50 = v48;
  v51 = v55;
  OUTLINED_FUNCTION_8_85(v50, v55);
  v52 = v51;
  v53 = v59;
  OUTLINED_FUNCTION_8_85(v52, v59);
  v39 = v53;
  v40 = 0;
  return __swift_storeEnumTagSinglePayload(v39, v40, 1, v7);
}

void sub_1E3FF32C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0F0);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  sub_1E3FF3598();
  *v33 = sub_1E4201D54();
  *(v33 + 1) = 0;
  v42 = 1;
  v33[16] = 1;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0F8) + 44);
  v44 = (*(**v23 + 488))();
  if (v44)
  {
    v45 = sub_1E373E010(23, v44);

    if (v45)
    {
      if (*v45 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();
        v42 = 0;
      }
    }
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  __swift_storeEnumTagSinglePayload(&v33[v43], v42, 1, v46);
  sub_1E3743538(v41, v38, &qword_1ECF29938);
  sub_1E3743538(v33, v30, &qword_1ECF3E0F0);
  sub_1E3743538(v38, v25, &qword_1ECF29938);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E100);
  sub_1E3743538(v30, v25 + *(v47 + 48), &qword_1ECF3E0F0);
  sub_1E325F6F0(v33, &qword_1ECF3E0F0);
  sub_1E325F6F0(v41, &qword_1ECF29938);
  sub_1E325F6F0(v30, &qword_1ECF3E0F0);
  sub_1E325F6F0(v38, &qword_1ECF29938);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FF3598()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v10 = (*(v9 + 488))();
  if (v10)
  {
    v11 = sub_1E373E010(39, v10);

    if (v11)
    {
      type metadata accessor for ImageViewModel();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v2 + 136);
        v25 = *(v2 + 128);
        v15 = *(v2 + 144);
        v16 = j__OUTLINED_FUNCTION_51_1();
        v17 = j__OUTLINED_FUNCTION_18();
        v18 = j__OUTLINED_FUNCTION_18();
        sub_1E3EB9C0C(v25, v14, v15, 0, 0, 1, v16 & 1, 2, &v33, 0, 1, 0, 1, 0, 2, v17 & 1, v18 & 1);
        v26 = v33;
        *v27 = *v34;
        *&v27[9] = *(&v34[4] + 1);
        v29 = *&v34[13];
        v30 = *&v34[21];
        v31 = *&v34[29];
        v32 = v35;
        v28 = 1;
        v19 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v13, &v26, 0, v19 & 1, 0, 0, v1);

        sub_1E375C31C(&v26);
        (*(v7 + 32))(v4, v1, v5);
        __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t sub_1E3FF3828()
{
  v2 = OUTLINED_FUNCTION_31_84();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for CanonicalInfoCardLayout.RowLayout();
  v8 = sub_1E41845C0();
  v16 = v0;
  sub_1E3FF4840(v1, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1E3FF48A4(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0B0);
  sub_1E32752B0(&qword_1ECF3E0B8, &qword_1ECF3E0A8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E0C0);
  OUTLINED_FUNCTION_9_0();
  v13 = sub_1E32752B0(v12, &qword_1ECF3E0C0);
  v15[1] = v11;
  v15[2] = v13;
  swift_getOpaqueTypeConformance2();
  sub_1E3FF4A44();
  return sub_1E4203B44();
}

void sub_1E3FF3A40()
{
  OUTLINED_FUNCTION_31_1();
  v13[1] = v0;
  v1 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_63_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  *v11 = sub_1E4201B84();
  *(v11 + 1) = 0;
  v11[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0D8);
  sub_1E3FF3BD4();
  sub_1E4202484();
  OUTLINED_FUNCTION_9_0();
  sub_1E32752B0(v12, &qword_1ECF3E0C0);
  sub_1E4203224();
  (*(v3 + 8))(v7, v1);
  sub_1E325F6F0(v11, &qword_1ECF3E0C0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FF3BD4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v58 = v2;
  v62 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v65 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v53 = v6 - v5;
  v61 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v64 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v60 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v63 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_0_10();
  v57 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v56 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v55 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  v54 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v59 = v26;
  sub_1E32822E0();

  v48 = sub_1E4202C44();
  v47 = v27;
  v46 = v28 & 1;
  v29 = v1;
  v30 = (*(*v1 + 96))();
  type metadata accessor for CanonicalInfoCard();
  v31 = v16;
  sub_1E3746E10(v16);
  sub_1E374709C(v11);
  v32 = MEMORY[0x1E6981148];
  v33 = MEMORY[0x1E6981138];
  v34 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v53);
  v35 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v30, v31, v11, v34, v53, v35 & 1, v32, v33, v59);

  v51 = *(v65 + 8);
  v51(v53, v62);
  v50 = *(v64 + 8);
  v50(v11, v61);
  v49 = *(v63 + 8);
  v49(v31, v60);
  sub_1E37434B8(v48, v47, v46);

  v52 = sub_1E4202C44();
  v37 = v36;
  LOBYTE(v30) = v38 & 1;
  v39 = (*(*v29 + 120))();
  sub_1E3746E10(v31);
  sub_1E374709C(v11);
  v40 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v53);
  v41 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v39, v31, v11, v40, v53, v41 & 1, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v54);

  v51(v53, v62);
  v50(v11, v61);
  v49(v31, v60);
  sub_1E37434B8(v52, v37, v30);

  v42 = *(v57 + 16);
  v42(v55, v59, v17);
  v42(v56, v54, v17);
  v42(v58, v55, v17);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0E0);
  v44 = v58 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  v42(v58 + *(v43 + 64), v56, v17);
  v45 = *(v57 + 8);
  v45(v54, v17);
  v45(v59, v17);
  v45(v56, v17);
  v45(v55, v17);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3FF427C(double a1, double a2, double a3)
{
  if (a1 < 1.0)
  {
    return (a2 - (floor(1.0 / a1) + -1.0) * a3) * a1;
  }

  if (a1 > 1.0)
  {
    return a1 * a2 + (a1 + -1.0) * a3;
  }

  return a2;
}

void sub_1E3FF4310()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CanonicalInfoCardLayout();
    if (v1 <= 0x3F)
    {
      sub_1E3FF4474(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1E3FF4474(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1E3FF4474(319, &qword_1EE288688, type metadata accessor for ViewInteractionStates, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3FF4474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3FF44E8()
{
  result = qword_1ECF3DFF8;
  if (!qword_1ECF3DFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DFD0);
    sub_1E32752B0(&qword_1ECF3DFE8, &qword_1ECF3DFD0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DFF8);
  }

  return result;
}

unint64_t sub_1E3FF45E4()
{
  result = qword_1ECF3E048;
  if (!qword_1ECF3E048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E010);
    sub_1E3FF4670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E048);
  }

  return result;
}

unint64_t sub_1E3FF4670()
{
  result = qword_1ECF3E050;
  if (!qword_1ECF3E050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E008);
    sub_1E3FF46FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E050);
  }

  return result;
}

unint64_t sub_1E3FF46FC()
{
  result = qword_1ECF3E058;
  if (!qword_1ECF3E058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E040);
    sub_1E3FF4788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E058);
  }

  return result;
}

unint64_t sub_1E3FF4788()
{
  result = qword_1ECF3E060;
  if (!qword_1ECF3E060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E038);
    sub_1E32752B0(&qword_1ECF3E068, &qword_1ECF3E000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E060);
  }

  return result;
}

uint64_t sub_1E3FF4840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalInfoCard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FF48A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanonicalInfoCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FF4908()
{
  v0 = type metadata accessor for CanonicalInfoCard();
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD0);
  sub_1E42038F4();
  sub_1E3B1E260();
}

void sub_1E3FF49AC()
{
  v0 = type metadata accessor for CanonicalInfoCard();
  OUTLINED_FUNCTION_8_0(v0);
  sub_1E3FF3A40();
}

unint64_t sub_1E3FF4A44()
{
  result = qword_1ECF3E0D0;
  if (!qword_1ECF3E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E0D0);
  }

  return result;
}

char *sub_1E3FF4A98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t type metadata accessor for OrdinalCardView()
{
  result = qword_1EE2A3E20;
  if (!qword_1EE2A3E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FF4BFC@<X0>(uint64_t a1@<X8>)
{
  v262 = a1;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v260 = v7;
  v261 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v259 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E108);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v230 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v264 = v14;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v265 = v16;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E118);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v255 = v18;
  v19 = type metadata accessor for StackedTextViews(0);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v241 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v240 = v23;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v227 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  v229 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v236 = &v227 - v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25_3();
  v228 = v32;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v233 = v34;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v231 = v36;
  v232 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E128);
  v41 = OUTLINED_FUNCTION_17_2(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_5();
  v247 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_25_3();
  v245 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v46 = OUTLINED_FUNCTION_17_2(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_5();
  v244 = v47;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v227 - v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_25_3();
  v268 = v52;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E130);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  v269 = v54;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E138);
  OUTLINED_FUNCTION_0_10();
  v249 = v55;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_44();
  v246 = v57;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44();
  v252 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E148);
  OUTLINED_FUNCTION_0_10();
  v256 = v61;
  v257 = v60;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  v254 = v63;
  v64 = v1;
  v65 = *v1;
  v267 = (*(**v1 + 488))();
  if ((*(*v65 + 392))())
  {
    type metadata accessor for OrdinalCellLayout();
    v66 = swift_dynamicCastClass();
    if (v66)
    {
      OUTLINED_FUNCTION_99();
      v68 = *(v67 + 176);

      v68(v274, v69);
      v2 = v274[0];
      v70 = v274[1];
      v71 = v274[2];
      v72 = v274[3];

      if ((v275 & 1) == 0)
      {
        v73.n128_u64[0] = v2;
        v74.n128_u64[0] = v70;
        v75.n128_u64[0] = v71;
        v76.n128_u64[0] = v72;
        v77 = j_nullsub_1(v73, v74, v75, v76);
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  else
  {
    v66 = 0;
  }

  v77 = OUTLINED_FUNCTION_5_8();
LABEL_8:
  v239 = v77;
  v81 = v78;
  v82 = v79;
  v83 = v80;
  LOBYTE(v278) = 2;
  (*(*v65 + 776))(__dst, &v278, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (__dst[3])
  {
    v84 = swift_dynamicCast();
    v85 = v267;
    if (v84)
    {
      if (!v267)
      {
        goto LABEL_15;
      }

LABEL_13:

      v86 = sub_1E373E010(23, v85);

      v87 = sub_1E373E010(15, v85);

      v88 = sub_1E373E010(222, v85);

      goto LABEL_16;
    }

    if (v267)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E329505C(__dst);
    v85 = v267;
    if (v267)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v88 = 0;
  v87 = 0;
  v86 = 0;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFF0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1E4297BD0;
  *(v89 + 32) = v86;
  *(v89 + 40) = v87;
  v266 = v89;
  *(v89 + 48) = v88;
  v237 = v87;
  v235 = v88;
  if (v66)
  {
    v90 = *(*v66 + 1824);

    v92 = v90(v91);
  }

  else
  {
    v93 = objc_allocWithZone(VUIMediaTagsViewLayout);

    v92 = [v93 initWithType_];
  }

  v238 = v86;
  v94 = sub_1E4201D54();
  v95 = v269;
  *v269 = v94;
  v95[1] = 0;
  *(v95 + 16) = 0;
  if (v85)
  {
    v96 = sub_1E373E010(39, v85);
  }

  else
  {
    v96 = 0;
  }

  memcpy(__dst, v64 + 1, 0x5BuLL);
  if (v66)
  {
    OUTLINED_FUNCTION_99();
    v98 = (*(v97 + 1800))();
    if (v96)
    {
LABEL_24:
      type metadata accessor for ImageViewModel();
      v99 = swift_dynamicCastClass();
      if (v99)
      {
        v100 = v99;

        v101 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v100, __dst, v98, v101 & 1, 0, 0, v50);

        v102 = 0;
      }

      else
      {
        v102 = 1;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v98 = 0;
    if (v96)
    {
      goto LABEL_24;
    }
  }

  v102 = 1;
LABEL_30:

  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  __swift_storeEnumTagSinglePayload(v50, v102, 1, v103);
  sub_1E329E454(v50, v268, &qword_1ECF29938);
  type metadata accessor for OrdinalCardView();
  sub_1E3746E10(v39);
  v104 = sub_1E3B0352C();
  (*(v231 + 8))(v39, v232);
  v243 = v66;
  v263 = v92;
  if (v104)
  {
    v105 = sub_1E4201D54();
    v106 = v233;
    *v233 = v105;
    v106[1] = 0;
    *(v106 + 16) = 0;
    if (v85)
    {
      v107 = sub_1E373E010(17, v85);
    }

    else
    {
      v107 = 0;
    }

    if (!v66 || (OUTLINED_FUNCTION_99(), v114 = (*(v113 + 1728))(), (*(*v114 + 152))(&v278), (v282 & 1) != 0))
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v117.n128_u64[0] = v280;
      v118.n128_u64[0] = v281;
      v115.n128_u64[0] = v278;
      v116.n128_u64[0] = v279;
      j_nullsub_1(v115, v116, v117, v118);
    }

    OUTLINED_FUNCTION_14_169();
    if (v107 && *v107 == _TtC8VideosUI13TextViewModel)
    {

      OUTLINED_FUNCTION_18();
      v126 = v227;
      sub_1E3F23370();
      v127 = sub_1E4202734();

      v128 = v234;
      v129 = v126 + *(v234 + 36);
      *v129 = v127;
      *(v129 + 8) = v3;
      *(v129 + 16) = v4;
      *(v129 + 24) = v5;
      *(v129 + 32) = v2;
      *(v129 + 40) = 0;
      v130 = v228;
      sub_1E329E454(v126, v228, &qword_1ECF28CC0);
      v131 = v130;
      v132 = 0;
      v133 = v128;
    }

    else
    {
      v130 = v228;
      v131 = v228;
      v132 = 1;
      v133 = v234;
    }

    __swift_storeEnumTagSinglePayload(v131, v132, 1, v133);

    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1A0);
    v135 = v233;
    v136 = v233 + *(v134 + 44);

    v137 = v92;
    sub_1E403E274();
    j__OUTLINED_FUNCTION_18();
    v138 = v240;
    OUTLINED_FUNCTION_31_14();
    sub_1E403E278(v139, v140, v141, v142);
    sub_1E3294EE4(v130, v236, &qword_1ECF2F9A8);
    v143 = v241;
    sub_1E38F84AC(v138, v241);
    OUTLINED_FUNCTION_82();
    sub_1E3294EE4(v144, v145, v146);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1A8);
    sub_1E38F84AC(v143, &v136[*(v147 + 48)]);
    sub_1E38F8510(v138);
    OUTLINED_FUNCTION_31_14();
    sub_1E325F6F0(v148, v149);
    sub_1E38F8510(v143);
    OUTLINED_FUNCTION_31_14();
    sub_1E325F6F0(v150, v151);
    OUTLINED_FUNCTION_17_144(v135);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_82();
    sub_1E32752B0(v152, v153);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v154, v155);
    OUTLINED_FUNCTION_10_160();
  }

  else
  {
    v108 = sub_1E4201B64();
    v109 = v265;
    *v265 = v108;
    v109[1] = 0;
    *(v109 + 16) = 0;
    v110 = sub_1E4201D44();
    v111 = v264;
    *v264 = v110;
    v111[1] = 0;
    *(v111 + 16) = 1;
    if (v85)
    {
      v112 = sub_1E373E010(17, v85);
    }

    else
    {
      v112 = 0;
    }

    v119 = v229;
    if (!v66 || (OUTLINED_FUNCTION_99(), v121 = (*(v120 + 1728))(), (*(*v121 + 152))(v276), (v277 & 1) != 0))
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v124.n128_u64[0] = v276[2];
      v125.n128_u64[0] = v276[3];
      v122.n128_u64[0] = v276[0];
      v123.n128_u64[0] = v276[1];
      j_nullsub_1(v122, v123, v124, v125);
    }

    OUTLINED_FUNCTION_14_169();
    if (v112 && *v112 == _TtC8VideosUI13TextViewModel)
    {

      OUTLINED_FUNCTION_18();
      v156 = v227;
      sub_1E3F23370();
      v157 = sub_1E4202734();

      v158 = v234;
      v159 = v156 + *(v234 + 36);
      *v159 = v157;
      *(v159 + 8) = v3;
      *(v159 + 16) = v4;
      *(v159 + 24) = v5;
      *(v159 + 32) = v2;
      *(v159 + 40) = 0;
      sub_1E329E454(v156, v119, &qword_1ECF28CC0);
      v160 = v119;
      v161 = 0;
      v162 = v158;
    }

    else
    {
      v160 = v119;
      v161 = 1;
      v162 = v234;
    }

    __swift_storeEnumTagSinglePayload(v160, v161, 1, v162);

    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E150);
    v234 = v265 + *(v163 + 44);
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E158);
    v165 = v264 + *(v164 + 44);
    sub_1E4203DA4();
    sub_1E4200D94();
    v166 = v280;
    v232 = v282;
    v233 = v278;
    v231 = v283;
    LOBYTE(v270) = 1;
    v273 = v279;
    v272 = v281;
    v167 = v119;
    v168 = v119;
    v169 = v236;
    sub_1E3294EE4(v167, v236, &qword_1ECF2F9A8);
    v170 = v270;
    v171 = v273;
    v172 = v272;
    OUTLINED_FUNCTION_31_14();
    sub_1E3294EE4(v173, v174, v175);
    v176 = &v165[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E160) + 48)];
    *v176 = 0;
    v176[8] = v170;
    v177 = v232;
    *(v176 + 2) = v233;
    v176[24] = v171;
    *(v176 + 4) = v166;
    v176[40] = v172;
    v178 = v231;
    *(v176 + 6) = v177;
    *(v176 + 7) = v178;
    sub_1E325F6F0(v168, &qword_1ECF2F9A8);
    sub_1E325F6F0(v169, &qword_1ECF2F9A8);

    v179 = v263;
    sub_1E403E274();
    j__OUTLINED_FUNCTION_18();
    v180 = v240;
    OUTLINED_FUNCTION_31_14();
    sub_1E403E278(v181, v182, v183, v184);
    v130 = v230;
    sub_1E3294EE4(v264, v230, &qword_1ECF3E108);
    v185 = v241;
    sub_1E38F84AC(v180, v241);
    v186 = v234;
    sub_1E3294EE4(v130, v234, &qword_1ECF3E108);
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E168);
    sub_1E38F84AC(v185, v186 + *(v187 + 48));
    sub_1E38F8510(v180);
    OUTLINED_FUNCTION_31_14();
    sub_1E325F6F0(v188, v189);
    sub_1E38F8510(v185);
    OUTLINED_FUNCTION_31_14();
    sub_1E325F6F0(v190, v191);
    OUTLINED_FUNCTION_17_144(v265);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v192, v193);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_82();
    sub_1E32752B0(v194, v195);
    OUTLINED_FUNCTION_10_160();
  }

  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v196, v197);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E180);
  v199 = v269 + *(v198 + 44);
  v200 = v244;
  sub_1E3294EE4(v268, v244, &qword_1ECF29938);
  v201 = v247;
  sub_1E3294EE4(v130, v247, &qword_1ECF3E128);
  sub_1E3294EE4(v200, v199, &qword_1ECF29938);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E188);
  sub_1E3294EE4(v201, v199 + *(v202 + 48), &qword_1ECF3E128);
  sub_1E325F6F0(v130, &qword_1ECF3E128);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v203, v204);
  sub_1E325F6F0(v201, &qword_1ECF3E128);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v205, v206);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_14();
  v209 = sub_1E32752B0(v207, v208);
  v210 = v243;

  v211 = v250;
  v212 = j__OUTLINED_FUNCTION_18();
  v213 = j__OUTLINED_FUNCTION_18();
  v214 = OUTLINED_FUNCTION_51_1();
  v215 = v212 & 1;
  v216 = v246;
  sub_1E383F6D4(v210, v215, v213 & 1, 1, v214 & 1, v211, v209);

  OUTLINED_FUNCTION_31_14();
  sub_1E325F6F0(v217, v218);
  LOBYTE(v209) = sub_1E4202734();
  v219 = v252;
  (*(v249 + 32))(v252, v216, v251);
  v220 = v253;
  v221 = v219 + *(v253 + 36);
  *v221 = v209;
  *(v221 + 8) = v239;
  *(v221 + 16) = v81;
  *(v221 + 24) = v82;
  *(v221 + 32) = v83;
  *(v221 + 40) = 0;
  v222 = v259;
  sub_1E4202474();
  v223 = sub_1E3FF6064();
  v224 = v254;
  sub_1E4203224();
  (*(v260 + 8))(v222, v261);
  sub_1E325F6F0(v219, &qword_1ECF3E140);
  v270 = v220;
  v271 = v223;
  swift_getOpaqueTypeConformance2();
  v225 = v257;
  sub_1E4203374();

  return (*(v256 + 8))(v224, v225);
}

unint64_t sub_1E3FF6064()
{
  result = qword_1ECF3E198;
  if (!qword_1ECF3E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E130);
    sub_1E32752B0(&qword_1ECF3E190, &qword_1ECF3E130);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E198);
  }

  return result;
}

void sub_1E3FF61A4()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E38D5D68();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3FF6248()
{
  result = qword_1ECF3E1B0;
  if (!qword_1ECF3E1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E1B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E140);
    sub_1E3FF6064();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E1B0);
  }

  return result;
}

uint64_t sub_1E3FF6348(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_layout;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
}

void sub_1E3FF6430(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews;
  OUTLINED_FUNCTION_3_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v4)
  {
    if (v6)
    {

      v7 = sub_1E3FF7C44(v4, v6);

      if (v7)
      {
        goto LABEL_23;
      }
    }

    v8 = sub_1E32AE9B0(v4);
    for (i = 0; v8 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v10 = *(v4 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      [v10 removeFromSuperview];
    }

    v6 = *&v1[v5];
  }

  if (!v6)
  {
LABEL_23:
    [v1 vui_setNeedsLayout];

    return;
  }

  v12 = sub_1E32AE9B0(v6);

  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      goto LABEL_23;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E6911E60](j, v6);
    }

    else
    {
      if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v14 = *(v6 + 8 * j + 32);
    }

    v15 = v14;
    if (__OFADD__(j, 1))
    {
      break;
    }

    v16 = [v1 vuiContentView];
    [v16 addSubview_];

    [v15 vui_setNeedsLayout];
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void (*sub_1E3FF663C())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v3);

  return sub_1E3FF66AC;
}

void sub_1E3FF66AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3FF6430(v4);
  }

  else
  {
    sub_1E3FF6430(v3);
  }

  free(v2);
}

void *sub_1E3FF6710()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_airingView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1E3FF6758())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_airingView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3FF67C8;
}

void *sub_1E3FF67E0()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3FF6828(void *a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_3_0();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  swift_beginAccess();
  [v2 vui:*&v2[v7] addSubview:v6 oldView:?];
}

void (*sub_1E3FF68BC())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3FF692C;
}

void sub_1E3FF6944(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

char *sub_1E3FF69C4()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_airingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = [objc_opt_self() isTV];
  v3 = 60.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_bottomPadding) = v3;
  aBlock[9] = v0;
  aBlock[10] = type metadata accessor for CanonicalFooterViewCell();
  v4 = OUTLINED_FUNCTION_2_0();
  v7 = objc_msgSendSuper2(v5, v6, v4);
  type metadata accessor for SeparatorView();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = v7;
  v10 = [v8 init];
  v11 = OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView;
  OUTLINED_FUNCTION_3_0();
  v12 = *&v9[v11];
  *&v9[v11] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E4297BE0;
  *(v13 + 32) = sub_1E3F65410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v14 = sub_1E42062A4();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1E3FF6C40;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3790FBC;
  aBlock[3] = &block_descriptor_153;
  v16 = _Block_copy(aBlock);

  [v9 vui:v14 registerForTraitChanges:v16 withHandler:?];
  _Block_release(v16);

  return v9;
}

void sub_1E3FF6C40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize];
    *v1 = 0;
    *(v1 + 1) = 0;
    v1[16] = 1;
  }
}

void sub_1E3FF6CBC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_sectionViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_airingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_separatorView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = [objc_opt_self() isTV];
  v3 = 60.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_bottomPadding) = v3;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3FF6DB8(char a1, double a2)
{
  v3 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v5 = &v2[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize];
    if ((v2[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize + 16] & 1) != 0 || *v5 != a2)
    {
      type metadata accessor for LayoutGrid();
      sub_1E3A258E4(a2);
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = a2 - sub_1E3952BE0(v28, v30, v32, v34);
      v36 = sub_1E3FF7A44();
      sub_1E3FF7A8C();
      v37 = sub_1E3952BD8(v29, v31, v33);
      if (sub_1E3FF7AF8())
      {
        VUIRoundValue();
        v39 = v38;
        OUTLINED_FUNCTION_24_1();
        v41 = (*(v40 + 176))();
        if (v41)
        {
          v42 = v41;
          [v2 vuiBounds];
          Width = CGRectGetWidth(v150);
          v44 = sub_1E3A2579C(Width);
          if (sub_1E3A2511C(v44))
          {
            v45 = v35;
          }

          else
          {
            v45 = v39;
          }

          [v42 vui:v45 sizeThatFits:0.0];
          v47 = v46;

          v37 = v37 + v47;
        }

        OUTLINED_FUNCTION_24_1();
        v49 = (*(v48 + 152))();
        if (v49)
        {
          v50 = v49;
          v149 = v5;
          v51 = sub_1E32AE9B0(v49);
          v52 = 0;
          v53 = 0.0;
          while (v51 != v52)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v54 = MEMORY[0x1E6911E60](v52, v50);
            }

            else
            {
              if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_124;
              }

              v54 = *(v50 + 8 * v52 + 32);
            }

            v55 = v54;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_123;
            }

            [v54 vui:v39 sizeThatFits:0.0];
            if (v53 <= v56)
            {
              v53 = v56;
            }

            if (3 * (v52 / 3) + 2 == v52)
            {

              v37 = v37 + v36 + v53;
              v53 = 0.0;
            }

            else
            {
              if (v50 >> 62)
              {
                v57 = sub_1E4207384();
              }

              else
              {
                v57 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (__OFSUB__(v57, 1))
              {
                goto LABEL_125;
              }

              if (v52 == v57 - 1)
              {
                v37 = v36 + v37;
              }
            }

            ++v52;
          }

          v5 = v149;
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        v77 = (*(v76 + 152))();
        if (v77)
        {
          v78 = v77;
          v79 = sub_1E32AE9B0(v77);
          for (i = 0; v79 != i; ++i)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = MEMORY[0x1E6911E60](i, v78);
            }

            else
            {
              if (i >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_122;
              }

              v81 = *(v78 + 8 * i + 32);
            }

            v82 = v81;
            if (__OFADD__(i, 1))
            {
              goto LABEL_121;
            }

            [v81 vui:v35 sizeThatFits:0.0];
            v84 = v83;

            v37 = v37 + v36 + v84;
          }
        }

        OUTLINED_FUNCTION_24_1();
        v86 = (*(v85 + 176))();
        if (v86)
        {
          v87 = v86;
          [v86 vui:v35 sizeThatFits:0.0];
        }
      }

      VUIRoundValue();
      *v5 = a2;
      *(v5 + 1) = v88;
      v5[16] = 0;
    }

    return;
  }

  v6 = [v2 vuiIsRTL];
  [v2 vuiBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v12);
  v16 = v15;
  v18 = v17;
  v21 = sub_1E3952BE0(v15, v17, v19, v20);
  v148 = sub_1E3FF7A44();
  sub_1E3FF7A8C();
  v144 = v22;
  v23 = [objc_opt_self() isTV];
  OUTLINED_FUNCTION_24_1();
  v25 = *(v24 + 200);
  v26 = v25();
  if (v26)
  {
    v27 = v26;
    v146 = (*((*v3 & *v26) + 0x70))();
  }

  else
  {
    v146 = 1.0;
  }

  v58 = v12 - v21;
  if (sub_1E3FF7AF8())
  {
    rect = v14;
    VUIRoundValue();
    v60 = v59;
    OUTLINED_FUNCTION_24_1();
    v62 = *(v61 + 176);
    v63 = v62();
    if (v63)
    {
      v64 = v63;
      v151.origin.x = v8;
      v151.origin.y = v10;
      v151.size.width = v12;
      v151.size.height = rect;
      v65 = CGRectGetWidth(v151);
      v66 = sub_1E3A2579C(v65);
      if (sub_1E3A2511C(v66))
      {
        v67 = v12 - v21;
      }

      else
      {
        v67 = v60;
      }

      [v64 vui:v67 sizeThatFits:0.0];
      v69 = v68;
      v142 = v70;

      if (v23)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v69 = 0.0;
      v142 = 0.0;
      if (v23)
      {
        goto LABEL_75;
      }
    }

    v89 = 0.0;
    v90 = v18;
    v143 = v69;
    v91 = v142;
    if (v6)
    {
      OUTLINED_FUNCTION_1_275();
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v69 = v92;
    }

    v138 = v91;
    v139 = v69;
    v140 = v89;
    v93 = v90;
    v94 = v62();
    if (v94)
    {
      v95 = v94;
      [v94 setFrame_];
    }

    v152.origin.y = 0.0;
    v152.origin.x = v18;
    v152.size.height = v142;
    v152.size.width = v143;
    v16 = v16 + CGRectGetMaxY(v152);
    if (v6)
    {
      OUTLINED_FUNCTION_6_205();
      OUTLINED_FUNCTION_1_275();
      v96 = VUIRectWithFlippedOriginRelativeToBoundingRect();
      v141 = v97;
      v99 = v98;
      v58 = v100;
      v146 = v101;
    }

    else
    {
      v141 = v18;
      v99 = v16;
    }

    v110 = (v25)(v96);
    if (v110)
    {
      v111 = v110;
      [v110 setFrame_];
    }

LABEL_75:
    OUTLINED_FUNCTION_24_1();
    v113 = (*(v112 + 152))();
    if (v113)
    {
      v114 = v113;
      v138 = *&v62;
      LODWORD(v139) = v23;
      v115 = sub_1E32AE9B0(v113);
      v116 = 0;
LABEL_77:
      v117 = v18;
      v118 = 0.0;
      while (1)
      {
        if (v115 == v116)
        {

          v23 = LODWORD(v139);
          *&v62 = v138;
          goto LABEL_91;
        }

        if ((v114 & 0xC000000000000001) != 0)
        {
          v119 = MEMORY[0x1E6911E60](v116, v114);
        }

        else
        {
          if (v116 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_119;
          }

          v119 = *(v114 + 8 * v116 + 32);
        }

        v120 = v119;
        v121 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          break;
        }

        [v119 vui:v60 sizeThatFits:0.0];
        if (v118 <= v122)
        {
          v118 = v122;
        }

        v154.origin.x = v117;
        v154.origin.y = v16;
        v154.size.width = v60;
        v154.size.height = v118;
        v155 = CGRectIntegral(v154);
        if (v6)
        {
          VUIRectWithFlippedOriginRelativeToBoundingRect();
        }

        [v120 setFrame_];

        v123 = v116 % 3;
        v117 = v144 + v60 + v117;
        ++v116;
        if (v123 == 2)
        {
          v16 = v16 + v148 + v118;
          v116 = v121;
          goto LABEL_77;
        }
      }

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
    }

    else
    {
LABEL_91:
      v124 = v62();
      if (v124)
      {
        v125 = v124;
        if (v23)
        {
          if (v6)
          {
            VUIRectWithFlippedOriginRelativeToBoundingRect();
          }

          else
          {
            v126 = v18;
          }

          [v125 setFrame_];
        }
      }
    }

    return;
  }

  OUTLINED_FUNCTION_24_1();
  v72 = (*(v71 + 176))();
  if (v72)
  {
    v73 = v72;
    if ((v23 & 1) == 0)
    {
      [v72 vui:v12 - v21 sizeThatFits:0.0];
      v102 = OUTLINED_FUNCTION_5_223();
      if (v6)
      {
        OUTLINED_FUNCTION_5_223();
        OUTLINED_FUNCTION_1_275();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
      }

      [v73 setFrame_];
      v153.origin.x = OUTLINED_FUNCTION_5_223();
      v16 = v16 + CGRectGetMaxY(v153);
      if (v6)
      {
        OUTLINED_FUNCTION_6_205();
        OUTLINED_FUNCTION_1_275();
        v103 = VUIRectWithFlippedOriginRelativeToBoundingRect();
        v145 = v104;
        v146 = v105;
        v107 = v106;
        v109 = v108;
      }

      else
      {
        v145 = v18;
        v107 = v16;
        v109 = v12 - v21;
      }

      v127 = (v25)(v103);
      if (v127)
      {
        v128 = v127;
        [v127 setFrame_];
      }

      v75 = &selRef_vui_disableLocalAsset;
      goto LABEL_99;
    }
  }

  v74 = v25();
  if (!v74)
  {
    v75 = &selRef_vui_disableLocalAsset;
    goto LABEL_100;
  }

  v73 = v74;
  [v74 setFrame_];
  v75 = &selRef_vui_disableLocalAsset;
LABEL_99:

LABEL_100:
  OUTLINED_FUNCTION_24_1();
  v130 = (*(v129 + 152))();
  if (v130)
  {
    v131 = v130;
    v132 = sub_1E32AE9B0(v130);
    for (j = 0; v132 != j; ++j)
    {
      if ((v131 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x1E6911E60](j, v131);
      }

      else
      {
        if (j >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v134 = *(v131 + 8 * j + 32);
      }

      v135 = v134;
      if (__OFADD__(j, 1))
      {
        goto LABEL_118;
      }

      [v134 v75[132]];
      v137 = v136;
      v156.origin.x = OUTLINED_FUNCTION_6_205();
      v156.size.height = v137;
      v157 = CGRectIntegral(v156);
      if (v6)
      {
        OUTLINED_FUNCTION_1_275();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
      }

      [v135 setFrame_];

      v16 = v16 + v148 + v137;
    }
  }
}

id sub_1E3FF7910()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CanonicalFooterViewCell();
  result = objc_msgSendSuper2(&v3, sel_vui_prepareForReuse);
  v2 = &v0[OBJC_IVAR____TtC8VideosUI23CanonicalFooterViewCell_cachedSize];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  return result;
}

id sub_1E3FF79A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalFooterViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1E3FF7A44()
{
  v0 = [objc_opt_self() isTV];
  result = 0.0;
  if ((v0 & 1) == 0)
  {
    v2 = sub_1E3FF7AF8();
    result = 16.0;
    if (v2)
    {
      return 20.0;
    }
  }

  return result;
}

void sub_1E3FF7A8C()
{
  if (([objc_opt_self() isTV] & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    [v0 vuiBounds];
    Width = CGRectGetWidth(v2);
    sub_1E3A25950(Width);
  }
}

uint64_t sub_1E3FF7AF8()
{
  v1 = [v0 vuiTraitCollection];
  v2 = [v1 isAXEnabled];

  if (v2)
  {
    return 0;
  }

  v4 = objc_opt_self();
  if ([v4 isMac])
  {
    return 1;
  }

  type metadata accessor for LayoutGrid();
  [v0 vuiBounds];
  Width = CGRectGetWidth(v7);
  sub_1E3A2579C(Width);
  if (sub_1E373F630())
  {
    return 1;
  }

  if (sub_1E373F630() & 1) != 0 && ([v4 isPad])
  {
    return 0;
  }

  sub_1E37F99D4();
  if (sub_1E4205E84())
  {
    return 0;
  }

  v3 = 1;
  if (sub_1E4205E84())
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1E3FF7C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for CanonicalFooterSectionView();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x1E6911E60](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_1E4206F64();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FF7E04(uint64_t (*a1)(void))
{
  sub_1E4205004();
  v2 = sub_1E4204FF4();
  v3 = a1();

  return v3;
}

void sub_1E3FF7EF0()
{
  v0 = [objc_opt_self() sharedPreferences];
  type metadata accessor for SportsSpoilersManager();
  v1 = swift_allocObject();
  v2 = v0;
  v3 = sub_1E3FF85D0(v2, v1);

  qword_1EE2AAD78 = v3;
}

uint64_t *sub_1E3FF7F7C()
{
  if (qword_1EE29B2D0 != -1)
  {
    OUTLINED_FUNCTION_0_316();
  }

  return &qword_1EE2AAD78;
}

uint64_t sub_1E3FF7FBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = a3(v13, v20, v5, v9, v15, v8, v16);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

uint64_t sub_1E3FF8174()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B568);
  sub_1E3FF882C();
  sub_1E4200844();

  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();
}

uint64_t sub_1E3FF8268(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  if ((*(v6 + 8))(v5, v6))
  {
    return 1;
  }

  v8 = v2[12];

  v9 = sub_1E3862230(a1, a2, v8);

  return v9;
}

uint64_t sub_1E3FF8308()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return v0;
}

uint64_t sub_1E3FF8340()
{
  sub_1E3FF8308();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1E3FF8374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v29 - v24;
  (*(v18 + 32))(&v29 - v24, v23);
  (*(v11 + 32))(v16, a2, a5);
  type metadata accessor for SportsSpoilersManager();
  v26 = swift_allocObject();
  (*(v18 + 16))(v21, v25, a4);
  (*(v11 + 16))(v13, v16, a5);
  v27 = sub_1E3FF8694(v21, v13, v26, a4, a5, a6, v30);
  (*(v11 + 8))(v16, a5);
  (*(v18 + 8))(v25, a4);
  return v27;
}

uint64_t sub_1E3FF85D0(uint64_t a1, uint64_t a2)
{
  v9 = &type metadata for SportsKitActivitiesProvider;
  v10 = &off_1F5D919E8;
  v7[3] = sub_1E3FF8890();
  v7[4] = &off_1F5D919B8;
  v7[0] = a1;
  *(a2 + 104) = MEMORY[0x1E69E7CD0];
  sub_1E327F454(v8, a2 + 16);
  sub_1E327F454(v7, a2 + 56);
  sub_1E4205004();
  v4 = sub_1E4204FF4();
  v5 = sub_1E4204F74();

  *(a2 + 96) = v5;
  sub_1E3FF8174();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a2;
}

uint64_t sub_1E3FF8694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a4;
  v18[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17[3] = a5;
  v17[4] = a7;
  v15 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a5 - 8) + 32))(v15, a2, a5);
  *(a3 + 104) = MEMORY[0x1E69E7CD0];
  sub_1E327F454(v18, a3 + 16);
  sub_1E327F454(v17, a3 + 56);
  *(a3 + 96) = (*(a6 + 8))(a4, a6);
  sub_1E3FF8174();
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return a3;
}

uint64_t sub_1E3FF87F0()
{

  *(v0 + 96) = sub_1E32772D8(v1);
}

unint64_t sub_1E3FF882C()
{
  result = qword_1EE28A1D8;
  if (!qword_1EE28A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A1D8);
  }

  return result;
}

unint64_t sub_1E3FF8890()
{
  result = qword_1EE23AFC0;
  if (!qword_1EE23AFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AFC0);
  }

  return result;
}

void sub_1E3FF8928()
{
  if (!sub_1E41C8EFC())
  {
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = v1;
  (*(v0 + 464))();
  OUTLINED_FUNCTION_14_15();
  if (!v2)
  {
    return;
  }

  if (!sub_1E32AE9B0(v2))
  {
LABEL_16:

    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v3)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  type metadata accessor for CollectionViewModel();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
LABEL_14:

    return;
  }

  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1040);

  v6(v7);
  OUTLINED_FUNCTION_14_15();
  if (!sub_1E32AE9B0(v4))
  {

    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_34_0();
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = *(v4 + 32);

    goto LABEL_12;
  }

LABEL_21:
  OUTLINED_FUNCTION_41_1();
  v9 = v13;
LABEL_12:

  v10 = *(*v9 + 872);

  v12 = v10(v11);

  if (v12)
  {
    sub_1E32AE9B0(v12);
    OUTLINED_FUNCTION_31_4();

    goto LABEL_14;
  }
}

double sub_1E3FF8B3C()
{
  v0 = sub_1E41C85FC();
  [v0 contentSize];
  v2 = v1;

  return v2;
}

uint64_t sub_1E3FF8D64(uint64_t *a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_33_9(*a1);
  OUTLINED_FUNCTION_5_0();
  v3 = OUTLINED_FUNCTION_67_0();
  a2(v3);
  return OUTLINED_FUNCTION_67_0();
}

uint64_t sub_1E3FF8E60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_33_9(*a3);
  swift_beginAccess();
  v8 = *v4;
  v9 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return a4(v8, v9);
}

id sub_1E3FF8EBC(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

uint64_t sub_1E3FF8F14()
{
  if (!sub_1E41C8EFC())
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  v2 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v0 + 776))(&v3, &v2, &unk_1F5D5E578, &off_1F5D5CBF8);

  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_1E325F748(&v3, &unk_1ECF296E0);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1E3FF8FEC()
{
  if (!sub_1E41C8EFC())
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_26_0();
  v3 = v2;
  (*(v1 + 464))();
  OUTLINED_FUNCTION_14_15();
  if (!v3)
  {
    goto LABEL_16;
  }

  if (!sub_1E32AE9B0(v3))
  {

    goto LABEL_16;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v4)
    {
      __break(1u);
LABEL_23:
      MEMORY[0x1E6911E60](0, v0);
LABEL_13:

      OUTLINED_FUNCTION_8();
      v10 = *(v9 + 872);

      v12 = v10(v11);

      if (v12)
      {

        return v12;
      }

LABEL_16:

      return MEMORY[0x1E69E7CC0];
    }
  }

  type metadata accessor for CollectionViewModel();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    goto LABEL_16;
  }

  v6 = *(*v5 + 1040);

  v0 = v6(v7);

  if (!v0)
  {
    goto LABEL_16;
  }

  result = sub_1E32AE9B0(v0);
  if (!result)
  {

    goto LABEL_16;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FF92C0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void sub_1E3FF9320()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v56 = sub_1E42069E4();
  OUTLINED_FUNCTION_0_10();
  v54 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v50 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E8);
  OUTLINED_FUNCTION_0_10();
  v51 = v7;
  v52 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v48 = v44 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E1F0);
  OUTLINED_FUNCTION_0_10();
  v55 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v49 = v44 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - v15;
  v17 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v45 = v24;
  v46 = v25;
  OUTLINED_FUNCTION_5_7();
  *&v27 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
  v29 = v44 - v28;
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, sel_vui_viewDidLoad, v27);
  v30 = sub_1E41C85FC();
  [v30 vui:2 setOverrideUserInterfaceStyle:?];

  v31 = sub_1E41C85FC();
  v32 = [v31 layer];

  [v32 setMasksToBounds_];
  v33 = objc_opt_self();
  v47 = @"VUIMultiviewPlayerDidStopNotification";
  v34 = [v33 defaultCenter];
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v35 = sub_1E4206A04();
  v58 = v35;
  sub_1E42069A4();
  OUTLINED_FUNCTION_37_76();
  sub_1E3FFE2D8(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  v44[2] = sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F748(v16, &unk_1ECF2D2B0);

  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_23_9();
  v44[1] = MEMORY[0x1E695BE98];
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00);
  v36 = v45;
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  (*(v46 + 8))(v29, v36);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  v58 = *&v1[OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationSubject];

  v37 = sub_1E4206A04();
  v57 = v37;
  OUTLINED_FUNCTION_37_76();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0);
  sub_1E32752B0(&qword_1ECF2A2A0, &qword_1ECF3E1E0);
  v38 = v48;
  sub_1E42007D4();
  sub_1E325F748(v16, &unk_1ECF2D2B0);

  v39 = v50;
  sub_1E42069B4();
  v40 = sub_1E4206A04();
  v58 = v40;
  sub_1E32752B0(&qword_1ECF3E200, &qword_1ECF3E1E8);
  v41 = v49;
  v42 = v51;
  sub_1E4200804();

  (*(v54 + 8))(v39, v56);
  (*(v52 + 8))(v38, v42);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1ECF3E208, &unk_1ECF3E1F0);
  v43 = v53;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v55 + 8))(v41, v43);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FF9A68()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v13 = *v1;
  v12 = v1[1];
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v15 = Strong;
  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1E3797E30(0xD000000000000033, 0x80000001E428D5E0, v16);
    v20 = v19;

    if (v20)
    {
      if (TVAppFeature.isEnabled.getter(12))
      {
        v21 = sub_1E4206474();
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v21);
        sub_1E4206434();

        v22 = sub_1E4206424();
        v23 = swift_allocObject();
        v24 = MEMORY[0x1E69E85E0];
        v23[2] = v22;
        v23[3] = v24;
        v23[4] = v13;
        v23[5] = v12;
        v23[6] = v18;
        v23[7] = v20;
        v23[8] = MEMORY[0x1E69E7CC8];
        sub_1E376FE58(0, 0, v4, &unk_1E42E5038, v23);
      }

      else
      {
        v29 = [objc_opt_self() defaultCenter];
        v30 = sub_1E3744600(MEMORY[0x1E69E7CC8]);
        sub_1E3FFDD68(v13, v12, v18, v20, 0, v30, v29);
      }
    }

    else
    {
      v25 = sub_1E324FBDC();
      (*(v7 + 16))(v11, v25, v5);
      v26 = sub_1E41FFC94();
      v27 = sub_1E42067E4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1E323F000, v26, v27, "MultiViewPlayerHUDTemplateController:: won't deliver notification without title.", v28, 2u);
        OUTLINED_FUNCTION_21_0();
      }

      (*(v7 + 8))(v11, v5);
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1E3FF9D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_1E41FFCB4();
  v8[2] = v14;
  v8[3] = *(v14 - 8);
  v8[4] = swift_task_alloc();
  v8[5] = sub_1E4206434();
  v8[6] = sub_1E4206424();
  type metadata accessor for LocalNotificationService();
  v15 = swift_task_alloc();
  v8[7] = v15;
  *v15 = v8;
  v15[1] = sub_1E3FF9ECC;

  return static LocalNotificationService.deliverNotification(identifier:title:body:options:)(a4, a5, a6, a7, 0, 0, a8);
}

uint64_t sub_1E3FF9ECC()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 64) = v0;

  v6 = sub_1E42063B4();
  if (v0)
  {
    v7 = sub_1E3FFA07C;
  }

  else
  {
    v7 = sub_1E3FFA01C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E3FFA01C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FFA07C()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = sub_1E324FBDC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067F4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1E323F000, v7, v8, "MultiViewPlayerHUDTemplateController:: failed to deliver notification: %@", v11, 0xCu);
    sub_1E325F748(v12, &unk_1ECF28E30);
    OUTLINED_FUNCTION_21_0();
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  OUTLINED_FUNCTION_54();

  return v15();
}

void sub_1E3FFA260(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_vui_viewWillAppear_, a1 & 1);
  v3 = sub_1E41C85FC();
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];
}

id sub_1E3FFA344()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_38();
  return sub_1E3FFA384();
}

id sub_1E3FFA384()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationTimeout) = 0x4014000000000000;
  v1 = OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0);
  swift_allocObject();
  *(v0 + v1) = sub_1E4200544();
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v2 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_cancellables) = v2;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_focusedViewModelIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_shouldDismissOnSelect) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract);
  *v5 = 0;
  v5[1] = 0;
  swift_unknownObjectWeakInit();

  sub_1E378C3B0(v6);
  v8 = v7;
  sub_1E3FFA4B4();

  return v8;
}

void sub_1E3FFA4B4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  if (!sub_1E41C8EFC())
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_26_0();
  v4 = (*(v3 + 464))();
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  if (!sub_1E32AE9B0(v4))
  {

LABEL_17:
    OUTLINED_FUNCTION_25_2();

    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v6)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass() || (OUTLINED_FUNCTION_26_0(), v8 = *(v7 + 1040), v9 = , v1 = v8(v9), , !v1))
  {

LABEL_21:
    OUTLINED_FUNCTION_25_2();

    return;
  }

  if (!sub_1E32AE9B0(v1))
  {

    goto LABEL_17;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v10 = MEMORY[0x1E6911E60](0, v1);
LABEL_13:

    OUTLINED_FUNCTION_8();
    v12 = *(v11 + 872);

    v14 = v12(v13);

    MEMORY[0x1EEE9AC00](v15);
    v22[2] = v2;
    v16 = *(*v10 + 1064);

    v17 = v16(sub_1E3FFE000, v22);
    v18 = v12(v17);

    if (v14)
    {
      if (v18)
      {

        sub_1E38BBA04(v19, v18);

        swift_bridgeObjectRelease_n();
LABEL_29:
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_29;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v1 + 32);

    goto LABEL_13;
  }

  __break(1u);
}

void sub_1E3FFA800()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationTimeout) = 0x4014000000000000;
  v1 = OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_notificationSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0);
  swift_allocObject();
  *(v0 + v1) = sub_1E4200544();
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v2 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_cancellables) = v2;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_focusedViewModelIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_shouldDismissOnSelect) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract);
  *v5 = 0;
  v5[1] = 0;
  swift_unknownObjectWeakInit();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3FFA950(void *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_vuiScrollViewDidScroll_, a1);
  result = sub_1E3FF8F14();
  if (result)
  {
    [a1 contentOffset];
    return [a1 setContentOffset_];
  }

  return result;
}

void sub_1E3FFAA2C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v58 - v8;
  v10 = sub_1E41C8EFC();
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = v10;
  OUTLINED_FUNCTION_26_0();
  v14 = v13;
  (*(v12 + 464))();
  OUTLINED_FUNCTION_38();

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_25;
  }

  if (!sub_1E32AE9B0(v14))
  {

    goto LABEL_25;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_34_0();
  if (v16)
  {
    v1 = *(v14 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_51:
  v52 = OUTLINED_FUNCTION_35(v16);
  v15 = sub_1E3B1DC54(v52, v14, 1, v15);
LABEL_11:
  *(v15 + 2) = v14;
  sub_1E329504C(&v60, &v15[32 * v11 + 32]);
  while (2)
  {
    v21 = *(*v0 + 576);
    v3 = *v0 + 576;

    v23 = v21(v22);
    if (v23)
    {
      OUTLINED_FUNCTION_26_0();
      v26 = v25;
      (*(v24 + 200))();
      OUTLINED_FUNCTION_31_4();

      if (v26)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        *&v60 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = OUTLINED_FUNCTION_27();
          v15 = sub_1E3B1DC54(v53, v54, v55, v15);
        }

        v28 = *(v15 + 2);
        v27 = *(v15 + 3);
        if (v28 >= v27 >> 1)
        {
          v56 = OUTLINED_FUNCTION_35(v27);
          v15 = sub_1E3B1DC54(v56, v28 + 1, 1, v15);
        }

        *(v15 + 2) = v28 + 1;
        v23 = sub_1E329504C(&v60, &v15[32 * v28 + 32]);
      }
    }

    v29 = v21(v23);

    if (v29)
    {
      OUTLINED_FUNCTION_8();
      (*(v30 + 224))();

      v31 = sub_1E4204724();
      if (__swift_getEnumTagSinglePayload(v9, 1, v31))
      {
        sub_1E325F748(v9, &qword_1ECF2B7B0);
      }

      else
      {
        v32 = sub_1E4204714();
        sub_1E325F748(v9, &qword_1ECF2B7B0);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        *&v60 = v32;
        v33 = sub_1E3B1DC54(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v57 = OUTLINED_FUNCTION_35(v34);
          v33 = sub_1E3B1DC54(v57, v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        sub_1E329504C(&v60, &v33[32 * v35 + 32]);
        v62 = v33;
      }
    }

    v58[0] = v1;
    v58[1] = v15;
    v36 = sub_1E3FF8FEC();
    v37 = sub_1E32AE9B0(v36);
    v38 = 0;
    v9 = (v36 & 0xC000000000000001);
    v59 = MEMORY[0x1E69E7CC0];
    v15 = &unk_1E429EC30;
    while (1)
    {
      if (v37 == v38)
      {

        v50 = sub_1E3FFB0A8(v59);

        sub_1E3FFB1BC(v50);

        goto LABEL_25;
      }

      if (v9)
      {
        v40 = MEMORY[0x1E6911E60](v38, v36);
        v39 = v40;
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v3 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if ((*(*v39 + 576))(v40))
      {
        OUTLINED_FUNCTION_26_0();
        (*(v41 + 224))();

        v42 = sub_1E4204724();
        if (__swift_getEnumTagSinglePayload(v6, 1, v42))
        {

          sub_1E325F748(v6, &qword_1ECF2B7B0);
          goto LABEL_39;
        }

        sub_1E4204714();
        OUTLINED_FUNCTION_31_4();

        sub_1E325F748(v6, &qword_1ECF2B7B0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = OUTLINED_FUNCTION_27();
          v59 = sub_1E39239C8(v46, v47, v48, v49);
        }

        v44 = v59[2];
        v43 = v59[3];
        if (v44 >= v43 >> 1)
        {
          v59 = sub_1E39239C8((v43 > 1), v44 + 1, 1, v59);
        }

        v45 = v59;
        v59[2] = v44 + 1;
        v45[v44 + 4] = v6;
        v38 = v3;
      }

      else
      {

LABEL_39:
        ++v38;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    OUTLINED_FUNCTION_41_1();
    v1 = v51;
LABEL_7:

    type metadata accessor for CollectionViewModel();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v0 = v17;
      v62 = v15;
      if (!(*(*v3 + 576))())
      {
        continue;
      }

      OUTLINED_FUNCTION_26_0();
      v20 = v19;
      (*(v18 + 200))();
      OUTLINED_FUNCTION_31_4();

      if (!v20)
      {
        continue;
      }

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      *&v60 = v20;
      v15 = sub_1E3B1DC54(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v11 = *(v15 + 2);
      v16 = *(v15 + 3);
      v14 = v11 + 1;
      if (v11 >= v16 >> 1)
      {
        goto LABEL_51;
      }

      goto LABEL_11;
    }

    break;
  }

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FFB0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1E37EBF70(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E37EBF70((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1E329504C(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

int64_t sub_1E3FFB1BC(uint64_t a1)
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

  result = sub_1E3FFD248(result, 1);
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

void sub_1E3FFB280()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v84 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - v9;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v85 = v12;
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *(v2 + 24);
  v17 = (v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_focusedViewModelIdentifier);
  v87 = *(v2 + 16);
  *v17 = v87;
  v17[1] = v16;

  if (!v16 || (sub_1E378CB90() & 1) == 0 && (sub_1E378CB90() & 1) == 0 || (sub_1E3FF8F14() & 1) == 0)
  {
    j__OUTLINED_FUNCTION_3_24();
    OUTLINED_FUNCTION_25_2();

    sub_1E378D8AC(v29, v30, v31, v32);
    return;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_shouldDismissOnSelect) = 0;
  sub_1E3FFAA2C();
  v19 = v18;
  v20 = sub_1E3FFBD3C(v2);
  if (!v20)
  {

    if (!sub_1E41C8EFC())
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_26_0();
    v35 = (*(v34 + 464))();

    if (!v35)
    {
      goto LABEL_60;
    }

    if (sub_1E32AE9B0(v35))
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
LABEL_63:
        OUTLINED_FUNCTION_41_1();
        v37 = v77;
      }

      else
      {
        OUTLINED_FUNCTION_34_0();
        if (!v36)
        {
          __break(1u);
          goto LABEL_65;
        }

        v37 = *(v35 + 32);
      }

      type metadata accessor for CollectionViewModel();
      if (!swift_dynamicCastClass() || (OUTLINED_FUNCTION_26_0(), (v39 = (*(v38 + 1040))()) == 0))
      {
LABEL_59:

        goto LABEL_60;
      }

      v40 = v39;
      if (sub_1E32AE9B0(v39))
      {
        v85 = v37;
        if ((v40 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_34_0();
          if (!v41)
          {
            __break(1u);
            return;
          }

          v86 = *(v40 + 32);

          goto LABEL_24;
        }

LABEL_65:
        OUTLINED_FUNCTION_41_1();
        v86 = v78;
LABEL_24:

        v42 = sub_1E324FBDC();
        v43 = *(v84 + 2);
        v81 = v42;
        v82 = v84 + 16;
        v80 = v43;
        (v43)(v10);
        v44 = sub_1E41FFC94();
        v45 = sub_1E42067F4();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1E323F000, v44, v45, "MultiViewPlayerHUDTemplateController:: cannot add game because the playable is missing", v46, 2u);
          OUTLINED_FUNCTION_36_70();
        }

        v83 = *(v84 + 1);
        v84 += 8;
        v83(v10, v3);
        (*(*v86 + 1032))(sub_1E3FFDEA8, v2);
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        sub_1E404B22C();
        v47 = objc_opt_self();
        v48 = [v47 sharedInstance];
        v49 = sub_1E4205ED4();
        v50 = [v48 multiviewContainsMediaItemWithIdentifier_];

        if (v50)
        {
          v80(v7, v81, v3);

          v51 = sub_1E41FFC94();
          v52 = sub_1E42067F4();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v88[0] = v54;
            *v53 = 136315138;
            *(v53 + 4) = sub_1E3270FC8(v87, v16, v88);
            _os_log_impl(&dword_1E323F000, v51, v52, "MultiViewPlayerHUDTemplateController:: remove %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v54);
            OUTLINED_FUNCTION_36_70();
            OUTLINED_FUNCTION_21_0();
          }

          v83(v7, v3);
          v55 = [v47 sharedInstance];
          v56 = sub_1E4205ED4();
          [v55 removeFromMultiviewWithIdentifier:v56 animated:1];
        }

        goto LABEL_59;
      }
    }

LABEL_52:

    goto LABEL_60;
  }

  v83 = v20;
  v84 = [v20 tvpPlaylist];
  v21 = objc_opt_self();
  v22 = [v21 sharedInstance];
  v23 = OUTLINED_FUNCTION_31_85();
  v24 = [v19 multiviewContainsMediaItemWithIdentifier_];

  if (v24)
  {
    OUTLINED_FUNCTION_5_0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = OUTLINED_FUNCTION_31_85();
      v26 = sub_1E42062A4();

      v27 = sub_1E42062A4();

      OUTLINED_FUNCTION_38_70(v28, sel_multiPlayerDetailsViewControllerDidDeselectLockupWithIdentifier_impressionsData_locationData_);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v62 = [v21 sharedInstance];
    v61 = v84;
    [v62 removePlaylistFromMultiview:v84 animated:1];

    v16 = 0;
  }

  else
  {
    v57 = sub_1E3FF8EBC(&selRef_multiviewPlayerCount);
    if (v57 >= sub_1E3FF8EBC(&selRef_maxMultiviewPlayerCount))
    {

      v16 = 0;
      v61 = v84;
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = OUTLINED_FUNCTION_31_85();
        v58 = sub_1E42062A4();

        v59 = sub_1E42062A4();

        OUTLINED_FUNCTION_38_70(v60, sel_multiPlayerDetailsViewControllerDidSelectLockupWithIdentifier_impressionsData_locationData_);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v63 = [v21 sharedInstance];
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_23_9();
      v88[4] = sub_1E3FFDEB4;
      v88[5] = v16;
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 1107296256;
      v88[2] = sub_1E37EB82C;
      v88[3] = &block_descriptor_154;
      v64 = _Block_copy(v88);

      v16 = 1;
      v61 = v84;
      [v63 addPlaylistToMultiview:v84 animated:1 completion:v64];
      _Block_release(v64);
    }
  }

  v65 = sub_1E3FF8FEC();
  v10 = sub_1E32AE9B0(v65);
  v66 = 0;
  v3 = v65 & 0xC000000000000001;
  v7 = (v65 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v10 == v66)
    {

      goto LABEL_52;
    }

    if (v3)
    {
      break;
    }

    if (v66 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (*(v65 + 8 * v66 + 32) == v2)
    {
      goto LABEL_48;
    }

LABEL_43:
    if (__OFADD__(v66++, 1))
    {
      goto LABEL_62;
    }
  }

  v68 = MEMORY[0x1E6911E60](v66, v65);
  swift_unknownObjectRelease();
  v69 = v68 == v2;
  v61 = v84;
  if (!v69)
  {
    goto LABEL_43;
  }

LABEL_48:

  v70 = sub_1E41C85FC();
  MEMORY[0x1E6909190](v66, 0);
  v71 = sub_1E41FE7E4();
  (*(v85 + 8))(v15, v86);
  v72 = [v70 cellForItemAtIndexPath_];

  if (!v72)
  {

    goto LABEL_54;
  }

  type metadata accessor for CardCollectionViewCell();
  v73 = swift_dynamicCastClass();
  v74 = v83;
  if (v73)
  {
    v75 = v73;
    v76 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v73) + 0xE0))(v16);
    (*((*v76 & *v75) + 0xB0))(v16);

LABEL_54:
    goto LABEL_60;
  }

LABEL_60:
  OUTLINED_FUNCTION_25_2();
}