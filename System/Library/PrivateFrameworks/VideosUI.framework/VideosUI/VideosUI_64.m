void *sub_1E3B53F3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1E3B5441C(v12, v8, v6, a2);
      MEMORY[0x1E69143B0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1E373CBF0(0, v8, v9);
  v10 = sub_1E3B542C4(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_1E3B540C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3B54128(uint64_t a1)
{
  OUTLINED_FUNCTION_2_123();
  result = sub_1E3B540C0(v2, v3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E3B54178()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E3B54234()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E3B542C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v20 = result;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 56) + 8 * v14);
    v16 = *(*(a3 + 48) + 2 * v14);

    v17 = a4(v16, v15);

    if (v17)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1E3B544AC(v20, a2, v21, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1E3B544AC(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E3B5441C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E3B542C4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E3B544AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D20);
  result = sub_1E4207744();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 56) + 8 * v16);
    v28 = *(*(v4 + 48) + 2 * v16);
    sub_1E37414E0();

    result = sub_1E4205DA4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 2 * v21) = v28;
    *(*(v9 + 56) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v10 = v27;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v27 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E3B546F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3B5473C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(**(v1 + 16) + 272))();
  v8 = v5;
  v9 = v6;
  v10 = v7;
  if ((v7 & 0xE000) != 0x6000)
  {
    sub_1E39050C0(v4, v5, v6, v7);
    goto LABEL_5;
  }

  sub_1E37CD868(v8, v9, v10);
  v11 = *(v2 + 24);
  if (v11)
  {
    v12 = *(*v11 + 184);

    v12(v13);

    sub_1E3B54A4C(v14);
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D28);
    sub_1E3B54914();
    result = sub_1E4201F44();
    *a1 = v18;
    *(a1 + 16) = v19;
    *(a1 + 32) = v20;
    *(a1 + 48) = v21;
    return result;
  }

  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_152();
  sub_1E3B546F4(v16, v17);
  result = sub_1E4201744();
  __break(1u);
  return result;
}

unint64_t sub_1E3B54914()
{
  result = qword_1ECF33D30;
  if (!qword_1ECF33D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33D28);
    sub_1E3B549A0();
    sub_1E3B549F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33D30);
  }

  return result;
}

unint64_t sub_1E3B549A0()
{
  result = qword_1ECF33D38;
  if (!qword_1ECF33D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33D38);
  }

  return result;
}

unint64_t sub_1E3B549F4()
{
  result = qword_1ECF56D60[0];
  if (!qword_1ECF56D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF56D60);
  }

  return result;
}

uint64_t sub_1E3B54A4C(uint64_t a1)
{
  v2 = *(*a1 + 192);

  v2(v3);

  type metadata accessor for CGPoint(0);
  sub_1E42038E4();
  return a1;
}

uint64_t sub_1E3B54AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C708);
  sub_1E42038F4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D58);
  (*(*(v12 - 8) + 16))(a4, a1, v12);
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D60) + 36);
  *v13 = 0;
  *(v13 + 8) = fmax(v19, 0.0);
  (*(*a2 + 216))();
  type metadata accessor for CGPoint(0);
  sub_1E3B546F4(&qword_1ECF2C6F8, type metadata accessor for CGPoint);
  v14 = sub_1E3B501F8();

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a5;
  *(v15 + 32) = a6;
  *(v15 + 40) = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D68);
  *(a4 + *(v16 + 52)) = v14;
  v17 = (a4 + *(v16 + 56));
  *v17 = sub_1E3B5515C;
  v17[1] = v15;
}

id sub_1E3B54CE4(double a1, double a2)
{
  v4 = [objc_allocWithZone(VUIProductUberBackgroundView) initWithFrame_];
  [v4 configureBlurWithInterfaceStyle:2 mainRect:{0.0, 0.0, a1, a2}];
  return v4;
}

unint64_t sub_1E3B54D80(uint64_t a1)
{
  result = sub_1E3B54DA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3B54DA8()
{
  result = qword_1ECF33D40;
  if (!qword_1ECF33D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33D40);
  }

  return result;
}

uint64_t sub_1E3B54E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3B551B8();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3B54E4C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3B551B8();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3B54F20()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3B54DA8();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3B54F74()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3B54DA8();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3B54FC8()
{
  sub_1E3B54DA8();
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3B54FF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

void *sub_1E3B55030(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductUberBackground(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_6_105(a1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3B550A8()
{
  result = qword_1ECF33D48;
  if (!qword_1ECF33D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33D50);
    sub_1E3B54914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33D48);
  }

  return result;
}

unint64_t sub_1E3B551B8()
{
  result = qword_1ECF33D70;
  if (!qword_1ECF33D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33D70);
  }

  return result;
}

unint64_t sub_1E3B5520C()
{
  result = qword_1ECF33D78;
  if (!qword_1ECF33D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33D78);
  }

  return result;
}

uint64_t type metadata accessor for LibraryLockup()
{
  result = qword_1EE2A6B90;
  if (!qword_1EE2A6B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B552BC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v56 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v55 - v11;
  v12 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LibraryLockup();
  v19 = v18[10];
  *(v5 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  swift_storeEnumTagMultiPayload();
  v20 = v18[11];
  *(v5 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v21 = (v5 + v18[12]);
  type metadata accessor for Router();
  OUTLINED_FUNCTION_6_106();
  sub_1E3B57C40(v22, v23);
  *v21 = sub_1E4201754();
  v21[1] = v24;
  v25 = v5 + v18[13];
  v58 = 1;
  sub_1E42038E4();
  v26 = v60;
  *v25 = v59;
  *(v25 + 1) = v26;
  *v5 = v3;
  memcpy(v5 + 2, v1, 0xC3uLL);
  type metadata accessor for ContextMenuModel();
  swift_retain_n();
  v27 = sub_1E3E6CDBC();
  v29 = *v27;
  v28 = v27[1];
  v59 = v29;
  v60 = v28;

  sub_1E4207414();
  (*(v14 + 104))(v17, *MEMORY[0x1E697E660], v12);
  v5[27] = sub_1E4188148(v3, v17);
  if ((*(*v3 + 392))())
  {
    type metadata accessor for LibraryLockupLayout();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for LibraryLockupLayout();
  v30 = sub_1E3F6D980();
LABEL_5:
  v5[1] = v30;
  type metadata accessor for TextBadgePresenter();
  v31 = *(*v30 + 1856);

  v33 = v31(v32);

  v5[28] = sub_1E3789F30(v33);
  v34 = sub_1E4200B44();
  v35 = v57;
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v34);
  v36 = sub_1E39C408C(39);

  if (v36)
  {
    type metadata accessor for ImageViewModel();
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = v37;
      OUTLINED_FUNCTION_26_0();
      v40 = *(v39 + 392);

      if (v40(v41))
      {
        OUTLINED_FUNCTION_26_0();
        v43 = (*(v42 + 1560))();
      }

      else
      {
        v43 = 7;
      }

      v35 = v57;
      v44 = (*(*v38 + 1032))(v43);
      if ((v45 & 1) == 0)
      {
        v46 = v44;
        sub_1E325F6F0(v35, &qword_1ECF33D80);
        v47 = MEMORY[0x1E697DBA8];
        if (v46 != 2)
        {
          v47 = MEMORY[0x1E697DBB8];
        }

        v48 = v56;
        (*(*(v34 - 8) + 104))(v56, *v47, v34);
        __swift_storeEnumTagSinglePayload(v48, 0, 1, v34);
        v44 = sub_1E3B558E8(v48, v35);
      }

      v49 = v40(v44);

      if (v49)
      {
        v51 = (*(*v49 + 1560))(v50);
      }

      else
      {
        v51 = 7;
      }

      v52 = j__OUTLINED_FUNCTION_18();
      v53 = (*(*v38 + 1048))(v51, v52 & 1);
      if (!v53)
      {
        v53 = *sub_1E3E60FE8();
      }

      v54 = v53;
      (*(*v30 + 1880))();
    }

    else
    {
    }
  }

  sub_1E3B558E8(v35, v5 + v18[9]);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B558E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3B55958()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v44 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D90);
  OUTLINED_FUNCTION_0_10();
  v42 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v40 = v38 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D98);
  OUTLINED_FUNCTION_0_10();
  v41 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v39 = v38 - v13;
  v14 = *v1;
  v15 = *(*v1 + 24);
  if (v15)
  {
    v16 = *(*v1 + 24);
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v38[1] = v38;
  MEMORY[0x1EEE9AC00](v15);
  v38[-4] = v1;
  v38[-3] = v17;
  v38[-2] = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DA0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33DA8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33DB0);
  v20 = sub_1E3B576D8();
  v45 = v19;
  v46 = v20;
  OUTLINED_FUNCTION_10_6();
  v21 = OUTLINED_FUNCTION_17_12();
  v45 = v18;
  v46 = MEMORY[0x1E69E6158];
  v47 = v21;
  v48 = MEMORY[0x1E69E6168];
  OUTLINED_FUNCTION_17_12();
  v22 = OUTLINED_FUNCTION_51_1();
  sub_1E40424BC(v14, v22 & 1, sub_1E3B576CC, v6);

  v23 = v1[27];
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_90();
  v26 = sub_1E32752B0(v24, v25);
  v27 = v40;
  sub_1E4187EA8(v23, v3, v26);
  OUTLINED_FUNCTION_90();
  sub_1E325F6F0(v28, v29);
  v30 = v1[1];
  v45 = v3;
  v46 = v26;
  OUTLINED_FUNCTION_3_8();
  v31 = OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_34();
  v32 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34();
  LOBYTE(v19) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34();
  v33 = OUTLINED_FUNCTION_51_1();
  v34 = v19 & 1;
  v35 = v39;
  sub_1E383F6D4(v30, v32 & 1, v34, 0, v33 & 1, v7, v31);
  (*(v42 + 8))(v27, v7);
  v45 = v7;
  v46 = v31;
  OUTLINED_FUNCTION_5_15();
  v36 = OUTLINED_FUNCTION_17_12();
  v37 = v43;
  sub_1E4035F10(v14, v43, v36);
  (*(v41 + 8))(v35, v37);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B55D04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DA8);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  sub_1E3B55E34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33DB0);
  sub_1E3B576D8();
  OUTLINED_FUNCTION_10_6();
  swift_getOpaqueTypeConformance2();
  sub_1E4203184();
  return (*(v3 + 8))(v0, v1);
}

void sub_1E3B55E34()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DB8);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__src[-v4 - 8];
  v6 = OUTLINED_FUNCTION_34();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  *v5 = sub_1E4201D44();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E10);
  sub_1E3B5602C(v0, &v5[*(v9 + 44)]);
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E329E454(v5, v1, &qword_1ECF33DB8);
  v10 = memcpy((v1 + *(v7 + 36)), __src, 0x70uLL);
  (*(**(v0 + 8) + 552))(v15, v10);
  if (v16)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v15[0];
  }

  v12 = sub_1E3B576D8();
  sub_1E391F8C0(v7, v12, v11);
  sub_1E325F6F0(v1, &qword_1ECF33DB0);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3B5602C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E18);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v47 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E20);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  sub_1E3B56438(&v47 - v22);
  v24 = *a1;

  v25 = sub_1E39C408C(233);
  if (!v25)
  {
    goto LABEL_7;
  }

  v26 = v25;
  if (*v25 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
  {

LABEL_7:
    sub_1E3B57E18(v56);
    goto LABEL_10;
  }

  v48 = v24;
  v49 = v15;
  v50 = a2;
  v51 = v12;
  v27 = a1 + *(type metadata accessor for LibraryLockup() + 52);
  v28 = *(v27 + 1);
  LOBYTE(v52[0]) = *v27;
  v52[1] = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E4203914();
  sub_1E3F66914(v26, 0, v56[0], v56[1], v56[2], v53);
  OUTLINED_FUNCTION_11_88();
  OUTLINED_FUNCTION_11_88();
  sub_1E4203DA4();
  sub_1E4200D94();
  OUTLINED_FUNCTION_11_88();
  if (LOBYTE(v52[0]) == 1 && (OUTLINED_FUNCTION_8(), (*(v29 + 1808))(), OUTLINED_FUNCTION_26_0(), (*(v30 + 152))(v54), v2 = v54[0], v3 = v54[1], v4 = v54[2], v5 = v54[3], , (v55 & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v31, v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v12 = v51;
  v15 = v49;
  v35 = sub_1E4202734();
  v53[88] = 0;
  v36 = sub_1E417311C();
  v38 = v37;

  v53[96] = v38 & 1;
  memcpy(v52, v53, 0x58uLL);
  LOBYTE(v52[11]) = v35;
  v52[12] = v2;
  v52[13] = v3;
  v52[14] = v4;
  v52[15] = v5;
  LOBYTE(v52[16]) = 0;
  v52[17] = v36;
  LOBYTE(v52[18]) = v38 & 1;
  nullsub_1(v39, v40);
  memcpy(v56, v52, 0x91uLL);
  a2 = v50;
  v24 = v48;
LABEL_10:
  memcpy(v52, v56, 0x91uLL);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E28);
  sub_1E3B57D68();
  sub_1E40933F4(v24, v52, v41, v15);
  sub_1E32C7288(v23, v20);
  OUTLINED_FUNCTION_29_45(v15, v12);
  sub_1E32C7288(v20, a2);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E38);
  OUTLINED_FUNCTION_29_45(v12, a2 + *(v42 + 48));
  OUTLINED_FUNCTION_45_3(v15);
  OUTLINED_FUNCTION_90();
  sub_1E325F6F0(v43, v44);
  OUTLINED_FUNCTION_45_3(v12);
  OUTLINED_FUNCTION_90();
  sub_1E325F6F0(v45, v46);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3B56438(uint64_t a1@<X8>)
{
  v6 = v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  if (sub_1E39C408C(39))
  {
    type metadata accessor for ImageViewModel();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v56 = v8;
      v57 = a1;
      LOBYTE(v68[0]) = 0;
      v71[1] = MEMORY[0x1E69E6370];
      LOBYTE(v69) = 1;
      OUTLINED_FUNCTION_26_0();
      v15 = *(v14 + 784);

      v15(v68, &v69, &unk_1F5D5E7B8, &off_1F5D5CC78);

      sub_1E325F6F0(&v69, &unk_1ECF296E0);
      v54 = v13;
      v55 = v11;
      sub_1E3B56A6C();
      v53 = sub_1E4201B84();
      v61 = 1;
      v16 = *v6;

      v52 = sub_1E39C408C(57);
      v17 = v6[28];

      v18 = sub_1E39C408C(233);
      v19 = v18;
      if (v18 && *v18 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
      {

        v19 = 0;
      }

      v68[0] = 0;
      type metadata accessor for VUIDownloadState(0);
      v20 = sub_1E42038E4();
      v21 = v69;
      v22 = v70;
      if ((*(*v6[1] + 1856))(v20) && (OUTLINED_FUNCTION_26_0(), (*(v23 + 152))(v63), v2 = v63[0], v3 = v63[1], v4 = v63[2], v5 = v63[3], , (v63[4] & 1) == 0))
      {
        OUTLINED_FUNCTION_13_3(v24, v25, v26, v27);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
      }

      OUTLINED_FUNCTION_3();
      v73 = 0;
      v58 = sub_1E4202734();
      v33 = v73;
      v74 = 0;
      if (sub_1E39C408C(57))
      {

        v34 = 0;
        v35 = 0;
      }

      else
      {

        v34 = nullsub_1(v36, v37);
        v35 = v38;
      }

      v39 = v52;
      v59[0] = v16;
      v59[1] = v52;
      v59[2] = v17;
      v59[3] = v19;
      v59[4] = v21;
      v59[5] = v22;
      v51 = sub_1E3B56CA0;
      v59[6] = sub_1E3B56CA0;
      v59[7] = 0;
      v50 = v33;
      LOBYTE(v59[8]) = v33;
      *(&v59[8] + 1) = v62[0];
      HIDWORD(v59[8]) = *(v62 + 3);
      LOBYTE(v59[9]) = v58;
      HIDWORD(v59[9]) = *(v75 + 3);
      *(&v59[9] + 1) = v75[0];
      v59[10] = v2;
      v59[11] = v3;
      v59[12] = v4;
      v59[13] = v5;
      LOBYTE(v59[14]) = 0;
      memcpy(v68, v59, 0x71uLL);
      v72 = 0;
      sub_1E3294EE4(v59, &v69, &qword_1ECF33E60);
      sub_1E3B57E20(v34);
      sub_1E37E6C80(v34);
      v49 = v72;
      sub_1E37E6C80(v34);
      v69 = v16;
      v70 = v39;
      v71[0] = v17;
      v71[1] = v19;
      v71[2] = v21;
      v71[3] = v22;
      v71[4] = v51;
      v71[5] = 0;
      LOBYTE(v71[6]) = v50;
      *(&v71[6] + 1) = v62[0];
      HIDWORD(v71[6]) = *(v62 + 3);
      LOBYTE(v71[7]) = v58;
      *(&v71[7] + 1) = v75[0];
      HIDWORD(v71[7]) = *(v75 + 3);
      v71[8] = v2;
      v71[9] = v3;
      v71[10] = v4;
      v71[11] = v5;
      LOBYTE(v71[12]) = 0;
      sub_1E325F6F0(&v69, &qword_1ECF33E60);
      memcpy(v62, v68, 0x78uLL);
      v62[15] = 0;
      LOBYTE(v62[16]) = v49;
      *(&v62[16] + 1) = v59[0];
      HIDWORD(v62[16]) = *(v59 + 3);
      v62[17] = v34;
      v62[18] = v35;
      memcpy(v63, v68, 0x78uLL);
      v63[15] = 0;
      v64 = v49;
      *v65 = v59[0];
      *&v65[3] = *(v59 + 3);
      v66 = v34;
      v67 = v35;
      OUTLINED_FUNCTION_29_45(v62, &v69);
      OUTLINED_FUNCTION_45_3(v63);
      memcpy(&v60[7], v62, 0x98uLL);
      v40 = v61;
      v41 = sub_1E4203D44();
      v43 = v42;

      v44 = v53;
      v68[0] = v53;
      v68[1] = 0;
      LOBYTE(v68[2]) = v40;
      memcpy(&v68[2] + 1, v60, 0x9FuLL);
      v68[22] = v41;
      v68[23] = v43;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E50);
      v46 = v55;
      memcpy(&v55[*(v45 + 36)], v68, 0xC0uLL);
      v69 = v44;
      v70 = 0;
      LOBYTE(v71[0]) = v40;
      memcpy(v71 + 1, v60, 0x9FuLL);
      v71[20] = v41;
      v71[21] = v43;
      OUTLINED_FUNCTION_29_45(v68, v59);
      OUTLINED_FUNCTION_45_3(&v69);
      v48 = v56;
      v47 = v57;
      *(v46 + *(v56 + 36)) = 256;
      sub_1E329E454(v46, v47, &qword_1ECF33E40);
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
}

void sub_1E3B56A6C()
{
  OUTLINED_FUNCTION_31_1();
  v16 = v2;
  v17 = v1;
  v3 = type metadata accessor for LibraryLockup();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  memcpy(v19, (v0 + 16), 0x5BuLL);
  v6 = *&v19[89];
  OUTLINED_FUNCTION_8();
  v8 = *(v7 + 1736);
  v9 = sub_1E375C2C0(v19, v21);
  v10 = *v8(v9);
  v11 = (*(v10 + 744))();

  sub_1E375C31C(v19);
  memcpy(v20, (v0 + 16), 0x50uLL);
  v20[10] = v11;
  LOBYTE(v20[11]) = 0;
  *(&v20[11] + 1) = v6;
  memcpy(v21, (v0 + 16), sizeof(v21));
  v22 = v11;
  v23 = 0;
  v24 = v6;
  sub_1E375C2C0(v20, v18);
  sub_1E375C31C(v21);
  memcpy(v18, v20, 0x5BuLL);
  sub_1E3B57E60(v0, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_1E3B57EC4(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v17, v18, 0, v14 & 1, sub_1E3B57F28, v13, v16);
  sub_1E375C31C(v18);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B56CCC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DC0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v58 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v58 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DE0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  if (*(v2 + 8))
  {
    v60 = v15;
    v61 = v58 - v25;
    v62 = v18;
    v63 = v24;
    v64 = a1;

    *v7 = sub_1E4201B84();
    *(v7 + 1) = 0;
    v7[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DE8);
    sub_1E3B57328();
    type metadata accessor for LibLockupViewModel();
    if (swift_dynamicCastClass())
    {

      if (sub_1E38BBD0C())
      {
      }

      else
      {
        v67[0] = *(v2 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF8);
        sub_1E42038F4();
        if (v66 == 2 || (v67[0] = *(v2 + 32), sub_1E42038F4(), v66 == 1) || (v59 = *(v2 + 48), v58[3] = *(v2 + 64), type metadata accessor for RentalPresenterWrapper(0), OUTLINED_FUNCTION_7_122(), sub_1E3B57C40(v32, v33), sub_1E4200BC4(), OUTLINED_FUNCTION_26_0(), v35 = (*(v34 + 184))(), , !v35))
        {

          v26 = 0.0;
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_8();
        v37 = (*(v36 + 400))();

        v26 = 0.0;
        if ((v37 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    v26 = 1.0;
LABEL_15:
    sub_1E329E454(v7, v10, &qword_1ECF33DC0);
    *&v10[*(v65 + 36)] = v26;
    v38 = *(v2 + 24);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel;
      swift_beginAccess();
      v40 = *(v38 + v39);
      v41 = sub_1E40A0988();
    }

    else
    {
      type metadata accessor for VUIDownloadState(0);
      v41 = sub_1E3B4F980();
    }

    v42 = v60;
    OUTLINED_FUNCTION_20_62();
    v43 = swift_allocObject();
    memcpy((v43 + 16), v2, 0x41uLL);
    sub_1E329E454(v10, v14, &qword_1ECF33DC8);
    *&v14[*(v11 + 52)] = v41;
    v44 = &v14[*(v11 + 56)];
    *v44 = sub_1E3B57B14;
    v44[1] = v43;
    OUTLINED_FUNCTION_20_62();
    v45 = swift_allocObject();
    memcpy((v45 + 16), v2, 0x41uLL);
    v46 = v14;
    v47 = v62;
    sub_1E329E454(v46, v62, &qword_1ECF33DD0);
    v48 = (v47 + *(v42 + 36));
    *v48 = sub_1E3B57B6C;
    v48[1] = v45;
    v48[2] = 0;
    v48[3] = 0;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF0);
    sub_1E3B57C08(v2, v67);
    sub_1E3B57C08(v2, v67);
    type metadata accessor for RentalPresenterWrapper(0);
    OUTLINED_FUNCTION_7_122();
    sub_1E3B57C40(v50, v51);
    sub_1E4200BC4();
    v52 = sub_1E3D7998C();

    sub_1E329E454(v47, v22, &qword_1ECF33DD8);
    v53 = v63;
    v54 = (v22 + *(v63 + 36));
    *v54 = KeyPath;
    v54[1] = v52;
    v55 = v61;
    sub_1E329E454(v22, v61, &qword_1ECF33DE0);
    v56 = v55;
    v57 = v64;
    sub_1E329E454(v56, v64, &qword_1ECF33DE0);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v53);
    OUTLINED_FUNCTION_54_0();
    return;
  }

  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

void sub_1E3B57328()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v33 = v1;
  v4 = v3;
  v36 = v5;
  v34 = type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8);
  OUTLINED_FUNCTION_0_10();
  v35 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E00);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = v2[2];

  OUTLINED_FUNCTION_18();
  sub_1E3FC96D0(v4, v22, v8);
  v23 = sub_1E3B57C40(qword_1EE23BBE8, type metadata accessor for TextBadge);
  v24 = v34;
  View.accessibilityIdentifier(key:location:)();
  sub_1E3811660(v8);
  OUTLINED_FUNCTION_20_62();
  v25 = swift_allocObject();
  v26 = v33;
  memcpy((v25 + 16), v33, 0x41uLL);
  sub_1E3B57C08(v26, v37);
  v37[0] = v24;
  v37[1] = v23;
  swift_getOpaqueTypeConformance2();
  v27 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v27 & 1);

  (*(v35 + 8))(v0, v9);
  v28 = *(v14 + 16);
  v28(v18, v21, v12);
  v29 = v36;
  v28(v36, v18, v12);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E08) + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = *(v14 + 8);
  v31(v21, v12);
  v31(v18, v12);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3B576D8()
{
  result = qword_1EE289788;
  if (!qword_1EE289788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33DB0);
    sub_1E32752B0(&qword_1EE288490, &qword_1ECF33DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289788);
  }

  return result;
}

void sub_1E3B577D0()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LibraryLockupLayout();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TextBadgePresenter();
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_5_120();
          sub_1E3B57998(319, v4, v5, MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            OUTLINED_FUNCTION_5_120();
            sub_1E3B57998(319, v7, v8, MEMORY[0x1E697DCC0]);
            if (v9 <= 0x3F)
            {
              sub_1E3B57998(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
              if (v10 <= 0x3F)
              {
                sub_1E389B5AC();
                if (v11 <= 0x3F)
                {
                  sub_1E3B57AC4(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                  if (v12 <= 0x3F)
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
}

void sub_1E3B57998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3B57A08(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1E3B57A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3B57AC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E3B57B6C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel;
    swift_beginAccess();
    [*(v1 + v2) downloadState];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF8);
  return sub_1E4203904();
}

uint64_t sub_1E3B57C40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_24()
{

  sub_1E3264CE0();
  OUTLINED_FUNCTION_20_62();

  return swift_deallocObject();
}

uint64_t sub_1E3B57CE8(CGFloat a1, CGFloat a2)
{
  v5 = *(v2 + 32);
  result = swift_beginAccess();
  if ((*(v5 + 104) & 1) != 0 || (v7.origin.x = 0.0, v7.origin.y = 0.0, v7.size.width = a1, v7.size.height = a2, result = CGRectEqualToRect(v7, *(v5 + 72)), (result & 1) == 0))
  {
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = a1;
    *(v5 + 96) = a2;
    *(v5 + 104) = 0;
  }

  return result;
}

unint64_t sub_1E3B57D68()
{
  result = qword_1EE2885A8;
  if (!qword_1EE2885A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33E28);
    sub_1E32752B0(&qword_1EE2885B0, &qword_1ECF33E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2885A8);
  }

  return result;
}

uint64_t sub_1E3B57E20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E3B57E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B57EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryLockup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3B57F28(void *a1, double a2, double a3)
{
  v7 = type metadata accessor for LibraryLockup();
  OUTLINED_FUNCTION_17_2(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));
  if (sub_1E39C408C(57))
  {

    if (a1)
    {
      v10 = *(v9 + 224);
      OUTLINED_FUNCTION_8();
      v12 = *(v11 + 1856);
      v13 = a1;
      v14 = v12();
      sub_1E3788E58(v14);
      swift_beginAccess();
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      *(v10 + 48) = a2;
      *(v10 + 56) = a3;
      *(v10 + 64) = 0;
      v15 = v13;
      sub_1E3788EB8(a1);
    }
  }
}

unint64_t sub_1E3B58034()
{
  result = qword_1EE289638;
  if (!qword_1EE289638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33E68);
    sub_1E3B580B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289638);
  }

  return result;
}

unint64_t sub_1E3B580B8()
{
  result = qword_1EE289640;
  if (!qword_1EE289640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33DE0);
    sub_1E3B58170();
    sub_1E32752B0(&qword_1EE288800, &unk_1ECF33E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289640);
  }

  return result;
}

unint64_t sub_1E3B58170()
{
  result = qword_1EE289A30;
  if (!qword_1EE289A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33DD8);
    sub_1E32752B0(&qword_1EE2893B0, &qword_1ECF33DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A30);
  }

  return result;
}

id sub_1E3B582A0()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_engagement];
  if (v2)
  {
    v3 = v2;
    v4 = v0;
    OUTLINED_FUNCTION_60_17();
    v5 = sub_1E4205ED4();
    [v3 removeObserver:v4 placement:0 serviceType:v5];
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver_];

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_1E3B5845C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_1E3B584A8()
{
  OUTLINED_FUNCTION_31_1();
  v42 = v2;
  v43 = v3;
  v44 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_9_5();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v49 = v8;
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v47 = v10 - v9;
  OUTLINED_FUNCTION_138();
  v48 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v46 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v45 = v14 - v13;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v51 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = sub_1E3286BF0();
  v26 = *((*MEMORY[0x1E69E7D40] & **v25) + 0xE0);
  v27 = *v25;
  LOBYTE(v26) = v26();

  if (v26 & 1) != 0 && (v0 == 0x6C6576654C707061 ? (v28 = v6 == 0xED00007465656853) : (v28 = 0), v28 || (sub_1E42079A4()))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v29(v24);

    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_6_21();
      v33 = OUTLINED_FUNCTION_100();
      v52[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1E3270FC8(v0, v6, v52);
      _os_log_impl(&dword_1E323F000, v30, v31, "UMManager::fetchMessage Ignored since deeplink launched and %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_9();
    }

    (*(v20 + 8))(v24, v51);
  }

  else if (([objc_opt_self() isRunningInTVExtension] & 1) == 0)
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    (*(v17 + 104))(v1, *MEMORY[0x1E69E7F98], v15);
    v34 = sub_1E4206A54();
    (*(v17 + 8))(v1, v15);
    OUTLINED_FUNCTION_4_0();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_44_15();
    v36 = swift_allocObject();
    v36[2] = v0;
    v36[3] = v6;
    v36[4] = v43;
    v36[5] = 0x7654656C707061;
    v36[6] = 0xE700000000000000;
    v36[7] = v35;
    v36[8] = v42;
    v36[9] = v44;
    v52[4] = sub_1E3B58DA0;
    v52[5] = v36;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
    v52[2] = v37;
    v52[3] = &block_descriptor_66;
    _Block_copy(v52);
    OUTLINED_FUNCTION_96_8();

    sub_1E4203FE4();
    OUTLINED_FUNCTION_2_124();
    sub_1E3274B40(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v40, v41);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v45, v47, v1);
    _Block_release(v1);

    (*(v49 + 8))(v47, v50);
    (*(v46 + 8))(v45, v48);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B58A1C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v16(v0);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_6_21();
    v36 = v5;
    v19 = v11;
    v20 = OUTLINED_FUNCTION_26_8();
    v38[0] = v20;
    *v2 = 136315138;
    *(v2 + 4) = sub_1E3270FC8(v19, v9, v38);
    _os_log_impl(&dword_1E323F000, v17, v18, "UMManager::fetchMessage begin fetching message for %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v11 = v19;
    OUTLINED_FUNCTION_6_0();
    v5 = v36;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v14 + 8))(v0, v12);
  if (v7)
  {
    v21 = sub_1E3744600(v7);
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_allocWithZone(MEMORY[0x1E698C900]);

  v23 = sub_1E3B60A18(v11, v9, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  OUTLINED_FUNCTION_5_10();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E4298880;
  *(v24 + 32) = v23;
  objc_allocWithZone(MEMORY[0x1E698C8E0]);

  v25 = v23;
  v26 = sub_1E3B60AB8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v28 = Strong;
  v29 = *(Strong + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_engagement);
  if (!v29)
  {

    v25 = v28;
    goto LABEL_12;
  }

  v30 = v11;
  v31 = v29;

  v32 = [v31 enqueueMessageEvent_];
  if (v32)
  {
    OUTLINED_FUNCTION_89();
    v33 = swift_allocObject();
    v33[2] = v30;
    v33[3] = v9;
    v33[4] = v5;
    v33[5] = v37;
    v33[6] = v2;
    OUTLINED_FUNCTION_10_84(v33);
    v38[1] = 1107296256;
    v38[2] = sub_1E3B618C8;
    v38[3] = &block_descriptor_131;
    v34 = _Block_copy(v38);

    v35 = v32;

    [v35 addFinishBlock_];

    _Block_release(v34);
    v25 = v35;
  }

  else
  {
LABEL_10:
  }

LABEL_12:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B58DB8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v29 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_1E3B59070(v9, v7);
  }

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v18 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v3;
  v19[4] = v11;
  OUTLINED_FUNCTION_10_84(v19);
  v30[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v30[2] = v20;
  v30[3] = &block_descriptor_144_0;
  v21 = _Block_copy(v30);

  v22 = v11;

  sub_1E4203FE4();
  v30[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_124();
  sub_1E3274B40(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v25, v26);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v1, v0, v21);
  _Block_release(v21);

  v27 = OUTLINED_FUNCTION_13_8();
  v28(v27);
  (*(v14 + 8))(v1, v29);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B59070(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_accessQueue];
  OUTLINED_FUNCTION_5_10();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E3B614B0;
  *(v7 + 24) = v6;
  v14[4] = sub_1E37D1918;
  v14[5] = v7;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_27_43();
  v14[2] = v8;
  v14[3] = &block_descriptor_125;
  v9 = _Block_copy(v14);
  v10 = v5;
  v11 = v2;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1E3B591BC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v24 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (!v0 || (sub_1E3B60E88(v0), v7 = v0, v8 = v6, v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33F78), sub_1E32752B0(&qword_1EE23B470, &qword_1ECF33F88), v10 = v9, v6 = v8, v0 = v7, v11 = sub_1E4149048(v10), , (v11 & 1) != 0))
  {
    v12 = sub_1E324FBDC();
    (*(v24 + 16))(v6, v12, v1);

    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_6_21();
      v25 = OUTLINED_FUNCTION_26_8();
      *v6 = 136315138;
      v15 = OUTLINED_FUNCTION_124();
      *(v6 + 4) = sub_1E3270FC8(v15, v16, v17);
      _os_log_impl(&dword_1E323F000, v13, v14, "UMManager::fetchMessage no message actions in response for %s, removing", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_7();
    }

    (*(v24 + 8))(v6, v1);
    sub_1E3B58DB8();
    if (!v0)
    {
      goto LABEL_16;
    }
  }

  v18 = sub_1E3B60E88(v0);
  if (v18)
  {
    v19 = v18;
    v20 = sub_1E32AE9B0(v18);
    for (i = 0; ; ++i)
    {
      if (v20 == i)
      {

        goto LABEL_16;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1E6911E60](i, v19);
      }

      else
      {
        if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1E3B594B4();
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3B594B4()
{
  OUTLINED_FUNCTION_31_1();
  v50 = v1;
  v51 = v0;
  v49 = v2;
  v52 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  v11 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v48 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v46 = v18;
  v47 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1E3B60EF8(*v9);
  if (!v22 || (v23 = sub_1E376EDA8(v7, v5, v22), , !v23))
  {
LABEL_9:
    sub_1E324FBDC();
    v37 = OUTLINED_FUNCTION_101();
    v38(v37);

    v39 = sub_1E41FFC94();
    v40 = sub_1E4206814();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_6_21();
      v42 = OUTLINED_FUNCTION_100();
      v53[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1E3270FC8(v7, v5, v53);
      _os_log_impl(&dword_1E323F000, v39, v40, "UMManager::fetchMessage no service response for %s, removing", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    v43 = OUTLINED_FUNCTION_57();
    v44(v43);
    sub_1E3B58DB8();
    goto LABEL_12;
  }

  if (!sub_1E32AE9B0(v23))
  {

    goto LABEL_9;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1E6911E60](0, v23);
    goto LABEL_7;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v23 + 32);
LABEL_7:
    v25 = v24;

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v45 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    OUTLINED_FUNCTION_44_15();
    v28 = swift_allocObject();
    v28[2] = v25;
    v28[3] = v7;
    v28[4] = v5;
    v28[5] = v26;
    v28[6] = v49;
    v28[7] = v51;
    v28[8] = v50;
    v28[9] = v52;
    OUTLINED_FUNCTION_10_84(v28);
    v53[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v53[2] = v29;
    v53[3] = &block_descriptor_138;
    v30 = _Block_copy(v53);
    v31 = v25;

    v32 = v50;

    sub_1E4203FE4();
    v53[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_124();
    sub_1E3274B40(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v35, v36);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v21, v16, v30);
    _Block_release(v30);

    (*(v48 + 8))(v16, v11);
    (*(v46 + 8))(v21, v47);
LABEL_12:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1E3B59978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E327D33C(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

void sub_1E3B599C8()
{
  OUTLINED_FUNCTION_31_1();
  v87 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v90 = v11;
  v13 = v12;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v89 = v18 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_47_3();
  v88 = [v13 engagementRequest];
  if (v88)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v24(v0);

    v25 = sub_1E41FFC94();
    sub_1E42067E4();
    OUTLINED_FUNCTION_104_5();
    if (os_log_type_enabled(v25, v6))
    {
      OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_10_11();
      v92 = v26;
      *v8 = 136315138;
      v27 = v90;
      *(v8 + 4) = sub_1E3270FC8(v90, v10, &v92);
      _os_log_impl(&dword_1E323F000, v25, v6, "UMManager::fetchMessage handling engagement request for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();

      OUTLINED_FUNCTION_54_22();
      v28 = OUTLINED_FUNCTION_16_0();
      v29(v28);
    }

    else
    {

      OUTLINED_FUNCTION_54_22();
      v48 = OUTLINED_FUNCTION_16_0();
      v49(v48);
      v27 = v90;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v51 = Strong;
      v52 = v88;
      sub_1E3B5A240();
    }

    else
    {
    }

    v53 = v89;
    goto LABEL_35;
  }

  v85 = v1;
  v86 = v8;
  v30 = [v13 makeDialogRequest];
  if (!v30)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v54(v2);

    v55 = sub_1E41FFC94();
    v56 = sub_1E4206814();

    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_6_21();
      v57 = OUTLINED_FUNCTION_26_8();
      v92 = v57;
      *v2 = 136315138;
      v58 = OUTLINED_FUNCTION_109_2();
      *(v2 + 4) = sub_1E3270FC8(v58, v59, v60);
      OUTLINED_FUNCTION_45_34();
      _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      v27 = v90;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_7();

      OUTLINED_FUNCTION_54_22();
      v66(v2, v14);
      v53 = v89;
    }

    else
    {

      OUTLINED_FUNCTION_54_22();
      v67(v2, v14);
      v53 = v89;
      v27 = v90;
    }

    sub_1E3B58DB8();
    goto LABEL_35;
  }

  v31 = v30;
  v32 = sub_1E3B60F74(v30);
  if (!v33)
  {
    v40 = 0;
    v27 = v90;
    v37 = v3;
    goto LABEL_27;
  }

  v34 = v32;
  v35 = v33;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  v37 = v3;
  if (!v36)
  {

    v40 = 0;
    goto LABEL_26;
  }

  v38 = v36;
  v39 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_requestIdMessageMap;
  OUTLINED_FUNCTION_99_7();
  swift_beginAccess();
  v40 = sub_1E3B59978(v34, v35, *&v38[v39]);
  swift_endAccess();

  if (!v40)
  {
LABEL_26:
    v27 = v90;
    goto LABEL_27;
  }

  v27 = v90;
  v41 = v90 == 0xD000000000000011 && 0x80000001E4272A00 == v10;
  if (!v41 && (sub_1E42079A4() & 1) == 0)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v42(v85);

    v43 = sub_1E41FFC94();
    v44 = sub_1E4206814();

    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_6_21();
      v45 = OUTLINED_FUNCTION_10_11();
      v91[0] = v45;
      *v14 = 136315138;
      *(v14 + 4) = sub_1E3270FC8(v90, v10, v91);
      OUTLINED_FUNCTION_81_11(&dword_1E323F000, v46, v44, "UMManager::fetchMessage returning existing controller for %s");
      __swift_destroy_boxed_opaque_existential_1(v45);
      v27 = v90;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      OUTLINED_FUNCTION_54_22();
    }

    else
    {

      OUTLINED_FUNCTION_54_22();
    }

    v70 = v47(v85, v14);
    goto LABEL_34;
  }

LABEL_27:
  if (OUTLINED_FUNCTION_105_7() == 4)
  {
    v68 = MEMORY[0x1E698CC80];
  }

  else if (OUTLINED_FUNCTION_105_7() == 3)
  {
    v68 = MEMORY[0x1E698CC60];
  }

  else
  {
    if (OUTLINED_FUNCTION_105_7() != 7)
    {
      v76 = OUTLINED_FUNCTION_105_7();
      sub_1E324FBDC();
      OUTLINED_FUNCTION_12_7();
      v77(v37);

      v78 = sub_1E41FFC94();
      v79 = sub_1E4206814();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = OUTLINED_FUNCTION_49_0();
        v81 = OUTLINED_FUNCTION_100();
        v82 = v76;
        v83 = v81;
        v91[0] = v81;
        *v80 = 134218242;
        *(v80 + 4) = v82;
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_1E3270FC8(v90, v10, v91);
        _os_log_impl(&dword_1E323F000, v78, v79, "UMManager::fetchMessage unsupported dialogReq.style %ld for %s", v80, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v83);
        OUTLINED_FUNCTION_65_0();
        v27 = v90;
        OUTLINED_FUNCTION_6_0();
      }

      OUTLINED_FUNCTION_54_22();
      v70 = v84(v37, v14);
      goto LABEL_34;
    }

    v68 = MEMORY[0x1E698CC40];
  }

  v69 = [objc_allocWithZone(v68) initWithRequest_];
  v70 = swift_unknownObjectRelease();
  v40 = v69;
LABEL_34:
  v91[0] = v40;
  MEMORY[0x1EEE9AC00](v70);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33F68);
  sub_1E4148DE0(sub_1E3B6177C);
  swift_unknownObjectRelease();
  v86(v40, v87);
  swift_unknownObjectRelease();

  v53 = v89;
LABEL_35:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v71(v53);

  v72 = sub_1E41FFC94();
  v73 = sub_1E4206814();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = OUTLINED_FUNCTION_6_21();
    v75 = OUTLINED_FUNCTION_100();
    v91[0] = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_1E3270FC8(v27, v10, v91);
    _os_log_impl(&dword_1E323F000, v72, v73, "UMManager::fetchMessage fetched message for %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v16 + 8))(v53, v14);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5A240()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  v11 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v43 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v41 = v18;
  v42 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = [objc_opt_self() vui_defaultBag];
  if (v22)
  {
    v23 = v22;
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v24 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_89();
    v26 = swift_allocObject();
    v26[2] = v6;
    v26[3] = v25;
    v26[4] = v4;
    v26[5] = v2;
    v26[6] = v23;
    v44[4] = sub_1E3B61178;
    v44[5] = v26;
    OUTLINED_FUNCTION_12_0();
    v44[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v44[2] = v27;
    v44[3] = &block_descriptor_62;
    v28 = _Block_copy(v44);
    v29 = v6;
    sub_1E34AF604(v4);
    v30 = v23;

    sub_1E4203FE4();
    v44[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_124();
    sub_1E3274B40(v31, v32);
    v33 = OUTLINED_FUNCTION_210();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v34, v35);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v21, v16, v28);
    _Block_release(v28);

    (*(v43 + 8))(v16, v11);
    (*(v41 + 8))(v21, v42);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v36(v0);
    v37 = sub_1E41FFC94();
    v38 = sub_1E42067F4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_125_0();
      *v39 = 0;
      _os_log_impl(&dword_1E323F000, v37, v38, "UMManager:handleEnagagementRequestbyAMS missing AMS bag", v39, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    (*(v9 + 8))(v0, v7);
    if (v4)
    {

      v40 = OUTLINED_FUNCTION_165();
      v4(v40);
      sub_1E34AF594(v4);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B5A634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_accessQueue];
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a5;
  v12[6] = a3;
  v12[7] = a4;
  OUTLINED_FUNCTION_2_4();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E3B61240;
  *(v13 + 24) = v12;
  v20[4] = sub_1E379E500;
  v20[5] = v13;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_27_43();
  v20[2] = v14;
  v20[3] = &block_descriptor_104;
  v15 = _Block_copy(v20);

  v16 = v11;
  v17 = v5;

  swift_unknownObjectRetain();

  dispatch_sync(v16, v15);

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1E3B5A7AC()
{
  OUTLINED_FUNCTION_106();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v2 = sub_1E374BD08(v0);
  if (v2)
  {
    v3 = v2;
    isUniquelyReferenced_nonNull_native = @"eventType";
    v5 = sub_1E4205F14();
    sub_1E3277E60(v5, v6, v3, &v28);

    v7 = *(&v29 + 1);
    sub_1E325F6F0(&v28, &unk_1ECF296E0);
    if (v7)
    {
      v8 = sub_1E4205F14();
      sub_1E3277E60(v8, v9, v3, &v28);

      if (*(&v29 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v26 == sub_1E4205F14() && v27 == v10)
          {

LABEL_18:
            v21 = sub_1E4205F14();
            v23 = sub_1E327D33C(v21, v22);
            if (v24)
            {
              v25 = v23;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v26 = v3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
              sub_1E4207644();

              sub_1E329504C((*(v3 + 56) + 32 * v25), &v28);
              OUTLINED_FUNCTION_67_0();
              sub_1E4207664();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            sub_1E325F6F0(&v28, &unk_1ECF296E0);
            v20 = [objc_opt_self() sharedInstance];
            sub_1E3744600(v3);
            sub_1E4205C44();
            OUTLINED_FUNCTION_96_8();

            [v20 cacheUMImpression_];
            goto LABEL_22;
          }

          v12 = sub_1E42079A4();

          if (v12)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_1E325F6F0(&v28, &unk_1ECF296E0);
      }

      v20 = [objc_opt_self() sharedInstance];
      sub_1E3744600(v3);
      sub_1E4205C44();
      OUTLINED_FUNCTION_96_8();

      [v20 recordRawEvent_];
LABEL_22:

      return;
    }
  }

  sub_1E324FBDC();
  v13 = OUTLINED_FUNCTION_71_21();
  v14(v13);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v16))
  {
    v17 = OUTLINED_FUNCTION_125_0();
    *v17 = 0;
    _os_log_impl(&dword_1E323F000, v15, v16, "UMManager: skipped enqueueing metrics. fields or eventType is missing", v17, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  v18 = OUTLINED_FUNCTION_13_8();
  v19(v18);
}

void sub_1E3B5AB8C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_accessQueue);
  v37 = v0;
  v38 = v5;
  v39 = v3;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33F68);
  sub_1E4206A14();

  v18 = v40;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  if (v18)
  {
    v19(v15);

    v20 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_104_5();
    if (OUTLINED_FUNCTION_110_5())
    {
      OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_26_8();
      v36 = v21;
      *v1 = 136315138;
      v22 = OUTLINED_FUNCTION_53();
      *(v1 + 4) = sub_1E3270FC8(v22, v23, v24);
      _os_log_impl(&dword_1E323F000, v20, v12, "UMManager: returned message is valid for %s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_7_7();
    }

    (*(v8 + 8))(v15, v6);
  }

  else
  {
    v19(v12);

    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();

    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_6_21();
      v27 = OUTLINED_FUNCTION_26_8();
      v36 = v27;
      *v1 = 136315138;
      v28 = OUTLINED_FUNCTION_53();
      *(v1 + 4) = sub_1E3270FC8(v28, v29, v30);
      OUTLINED_FUNCTION_45_34();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_7_7();
    }

    (*(v8 + 8))(v12, v6);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5AE20()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v3 = OUTLINED_FUNCTION_53();
  sub_1E3B59070(v3, v4);
  sub_1E324FBDC();
  v5 = OUTLINED_FUNCTION_71_21();
  v6(v5);

  v7 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_104_5();
  if (OUTLINED_FUNCTION_110_5())
  {
    OUTLINED_FUNCTION_6_21();
    v14 = OUTLINED_FUNCTION_10_11();
    *v1 = 136315138;
    v8 = OUTLINED_FUNCTION_53();
    *(v1 + 4) = sub_1E3270FC8(v8, v9, v10);
    OUTLINED_FUNCTION_81_11(&dword_1E323F000, v11, v0, "UMManager: remove message for %s");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();
  }

  v12 = OUTLINED_FUNCTION_13_8();
  v13(v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5AF70(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if ((a2 & 1) == 0)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v17(v7);
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v19))
    {
      v20 = OUTLINED_FUNCTION_125_0();
      *v20 = 0;
      _os_log_impl(&dword_1E323F000, v18, v19, "UMManager: Use Cache Recently Searched Bubble Tip", v20, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v21 = OUTLINED_FUNCTION_74();
    v22(v21);
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v13 = sub_1E4206A04();
    sub_1E4206A34();
    goto LABEL_7;
  }

  v8 = sub_1E3D54BE8();
  v10 = *v8;
  v9 = *(v8 + 1);
  v11 = objc_opt_self();

  v12 = [v11 defaultLocationManager];
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_10_9();
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = v9;
    v15[4] = v14;
    v15[5] = v2;
    aBlock[4] = sub_1E3B60C34;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E39EBA28;
    aBlock[3] = &block_descriptor_10_3;
    v16 = _Block_copy(aBlock);

    [v13 fetchAuthorizationStatus_];
    _Block_release(v16);
LABEL_7:

    return;
  }

  __break(1u);
}

void sub_1E3B5B1E8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_106();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v7 = *sub_1E3D54C24();
  type metadata accessor for UnifiedMessagingSignalProvider();
  v8 = v7;
  sub_1E3D595AC(v0);
  v9 = sub_1E3D595C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = 0x6C616E676973;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0);
  *(inited + 48) = v9;
  sub_1E4205CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1E4297BE0;
  *(v11 + 32) = sub_1E4205F14();
  *(v11 + 40) = v12;
  strcpy((v11 + 48), "searchLanding");
  *(v11 + 62) = -4864;
  v13 = sub_1E4205CB4();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *&v26 = v13;
  sub_1E329504C(&v26, v25);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1E32A87C0(v25, 0x74656D5F65676170, 0xEC00000073636972);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v14(v1);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v16))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_45_34();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_7_7();
  }

  v22 = OUTLINED_FUNCTION_53();
  v23(v22);
  if (qword_1EE298520 != -1)
  {
    OUTLINED_FUNCTION_14_100();
  }

  OUTLINED_FUNCTION_2_4();
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v3;

  sub_1E3B584A8();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5B560()
{
  OUTLINED_FUNCTION_31_1();
  v30 = v1;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_47_3();
  v10 = sub_1E324FBDC();
  v11 = *(v4 + 16);
  v12 = OUTLINED_FUNCTION_210();
  v11(v12);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_125_0();
    *v15 = 0;
    _os_log_impl(&dword_1E323F000, v13, v14, "UMManager: Fetching Recently Searched Bubble Tip completed", v15, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v16 = *(v4 + 8);
  v16(v0, v2);
  if (v30)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      (v11)(v8, v10, v2);
      swift_unknownObjectRetain();
      v19 = sub_1E41FFC94();
      v20 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v20))
      {
        v21 = OUTLINED_FUNCTION_125_0();
        *v21 = 0;
        _os_log_impl(&dword_1E323F000, v19, v20, "UMManager: Cache Recently Searched Bubble Tip", v21, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v22 = OUTLINED_FUNCTION_124();
      (v16)(v22);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      v24 = Strong;
      v25 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
      OUTLINED_FUNCTION_102_9();
      v26 = *&v24[v25];
      *&v24[v25] = v18;
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v24 = v27;
    v28 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
    OUTLINED_FUNCTION_102_9();
    v26 = *&v24[v28];
    *&v24[v28] = 0;
LABEL_11:
  }

LABEL_12:
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v29 = sub_1E4206A04();
  sub_1E4206A34();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5B81C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  sub_1E4206A14();
}

uint64_t sub_1E3B5BA74()
{
  v1 = v0;
  v2 = sub_1E41FDF24();
  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
    return sub_1E325F6F0(&v8, &unk_1ECF296E0);
  }

  v3 = v2;
  sub_1E4205F14();
  sub_1E4207414();
  sub_1E375D7E8(v7, v3, &v8);

  sub_1E375D84C(v7);
  if (!*(&v9 + 1))
  {
    return sub_1E325F6F0(&v8, &unk_1ECF296E0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v5 = v7[1];
    v6 = (v1 + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_lastTabIdentifier);
    *v6 = v7[0];
    v6[1] = v5;
  }

  return result;
}

void sub_1E3B5BC38()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_87_1();
  v12 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_47_3();
  v44[6] = 0x65746167656C6564;
  v44[7] = 0xEB000000006C7255;
  sub_1E4207414();
  sub_1E375D7E8(v44, v7, &v45);
  sub_1E375D84C(v44);
  if (!v46)
  {
    v20 = &unk_1ECF296E0;
    v21 = &v45;
LABEL_6:
    sub_1E325F6F0(v21, v20);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    sub_1E41FE404();

    if (__swift_getEnumTagSinglePayload(v1, 1, v12) != 1)
    {
      v43 = v9;
      v42 = *(v14 + 32);
      v22 = OUTLINED_FUNCTION_210();
      v23(v22);
      v24 = [objc_opt_self() vui_defaultBag];
      v25 = [objc_allocWithZone(MEMORY[0x1E698CB70]) initWithBag_];

      v26 = sub_1E41FE364();
      v40 = v5;
      v27 = v26;
      v41 = [v25 typeForURL_];

      OUTLINED_FUNCTION_88_4();
      v28(&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v12);
      v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      v42(v31 + v29, v18, v12);
      v32 = (v31 + v30);
      *v32 = v40;
      v32[1] = v3;
      v33 = v43;
      *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v43;
      v44[4] = sub_1E3B60CA0;
      v44[5] = v31;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 1107296256;
      OUTLINED_FUNCTION_11_89();
      v44[2] = v34;
      v44[3] = &block_descriptor_22;
      v35 = _Block_copy(v44);

      v36 = v33;

      v37 = v41;
      [v41 addFinishBlock_];
      _Block_release(v35);

      v38 = OUTLINED_FUNCTION_57();
      v39(v38);
      goto LABEL_8;
    }

    v20 = &unk_1ECF363C0;
    v21 = v1;
    goto LABEL_6;
  }

LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5BFF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_35_3();
  if (a1)
  {
    v15 = a1;
    [v15 integerValue];
    if (!a2)
    {
      v22 = *sub_1E3286BF0();
      v23 = sub_1E41FE414();
      OUTLINED_FUNCTION_2();
      v24 = OUTLINED_FUNCTION_53();
      v25(v24);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v23);
      v26 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x288);
      v27 = v22;
      v26(v6, a4, a5);

      sub_1E325F6F0(v6, &unk_1ECF363C0);
      return;
    }
  }

  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 appController];

  if (v17)
  {
    v28 = [v17 appContext];
  }

  else
  {
    v28 = 0;
  }

  v18 = sub_1E3286BF0();
  v19 = *((*MEMORY[0x1E69E7D40] & **v18) + 0x280);
  v20 = *v18;
  v19(a3, v28, a4, a5);

  v21 = sub_1E4205ED4();
  [a6 setVuiViewControllerIdentifier_];
}

void sub_1E3B5C374(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = sub_1E41FFCB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a4);
  v9 = sub_1E324FBDC();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v10, v11, "UMManager:handleEngagementRequest", v12, 2u);
    MEMORY[0x1E69143B0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  _Block_copy(a4);
  sub_1E3B5C510();
  _Block_release(a4);
  _Block_release(a4);
}

void sub_1E3B5C510()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v74 = v3;
  v82 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - v11;
  v79 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v76 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_124_2();
  v72 = v16;
  v73 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v71 - v18;
  OUTLINED_FUNCTION_138();
  v19 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_4_0();
  v80 = swift_allocObject();
  v81 = v2;
  *(v80 + 16) = v2;
  _Block_copy(v2);
  v27 = sub_1E324FBDC();
  v77 = *(v21 + 16);
  v78 = v27;
  v77(v0);
  v28 = sub_1E41FFC94();
  v29 = sub_1E4206814();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_37_7(v30);
    OUTLINED_FUNCTION_72_16(&dword_1E323F000, v28, v29, "UMManager:handleEngagementRequest full/half sheet processing");
    OUTLINED_FUNCTION_7_9();
  }

  v31 = *(v21 + 8);
  v32 = OUTLINED_FUNCTION_210();
  v31(v32);
  if (!v82)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v79);
LABEL_9:
    sub_1E325F6F0(v12, &unk_1ECF363C0);
    goto LABEL_10;
  }

  v33 = [v82 URL];
  if (v33)
  {
    v34 = v33;
    sub_1E41FE3C4();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v39 = v76;
  v40 = v79;
  __swift_storeEnumTagSinglePayload(v9, v35, 1, v79);
  sub_1E379E528(v9, v12, &unk_1ECF363C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v40) == 1)
  {
    goto LABEL_9;
  }

  v76 = *(v39 + 4);
  v76();
  v46 = *(v74 + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_amsURLParser);
  if (v46)
  {
    v47 = v46;
    v78 = v47;
    v48 = v39;
    v49 = v40;
    v50 = sub_1E41FE364();
    v77 = [v47 typeForURL_];

    OUTLINED_FUNCTION_4_0();
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = v73;
    v53 = OUTLINED_FUNCTION_57();
    v54 = v49;
    v55(v53);
    v56 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v57 = (v72 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v52;
    v61 = v54;
    (v76)(v59 + v56, v60, v54);
    *(v59 + v57) = v51;
    v62 = v82;
    *(v59 + v58) = v82;
    v63 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
    v64 = v80;
    *v63 = sub_1E3B61884;
    v63[1] = v64;
    v83[4] = sub_1E3B61174;
    v83[5] = v59;
    OUTLINED_FUNCTION_12_0();
    v83[1] = 1107296256;
    OUTLINED_FUNCTION_11_89();
    v83[2] = v65;
    v83[3] = &block_descriptor_55;
    v66 = _Block_copy(v83);
    v67 = v62;

    v68 = v77;
    [v77 addFinishBlock_];
    _Block_release(v66);

    (*(v48 + 1))(v75, v61);
    v44 = v81;
    goto LABEL_13;
  }

  v69 = OUTLINED_FUNCTION_13_8();
  v70(v69);
LABEL_10:
  (v77)(v25, v78, v19);
  v41 = sub_1E41FFC94();
  v42 = sub_1E42067F4();
  if (OUTLINED_FUNCTION_104(v42))
  {
    v43 = OUTLINED_FUNCTION_125_0();
    *v43 = 0;
    _os_log_impl(&dword_1E323F000, v41, v42, "UMManager:handleEngagementRequest missing url/amsURLParser for full/half sheet", v43, 2u);
    OUTLINED_FUNCTION_51_2();
  }

  (v31)(v25, v19);
  v44 = v81;
  OUTLINED_FUNCTION_88_4();
  v45(v44, 0, 0);
LABEL_13:

  _Block_release(v44);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5CB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_1E41FE264();
  }

  OUTLINED_FUNCTION_88_4();
  v7 = v5;
  v6(a3, a1);
}

void sub_1E3B5CBC4()
{
  OUTLINED_FUNCTION_31_1();
  v54 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v11 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v53 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_87_1();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  if (v6)
  {
    v52 = v17;
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v21 = v6;
    v51 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_10_9();
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v4;
    v23[5] = v54;
    v55[4] = sub_1E3B60FD8;
    v55[5] = v23;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v55[2] = v24;
    v55[3] = &block_descriptor_29;
    v25 = _Block_copy(v55);
    v26 = v21;

    sub_1E4203FE4();
    v55[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_2_124();
    sub_1E3274B40(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v29, v30);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v20, v1, v25);
    _Block_release(v25);

    (*(v53 + 8))(v1, v11);
    (*(v15 + 8))(v20, v52);
  }

  else
  {
    sub_1E3B59070(v4, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x80000001E4272A40;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x80000001E4272A60;
    v32 = sub_1E4205CB4();
    v33 = objc_opt_self();
    v34 = [v33 defaultCenter];
    v35 = sub_1E4205ED4();
    OUTLINED_FUNCTION_27_0();
    v36 = sub_1E4205ED4();
    v37 = sub_1E3744600(v32);

    sub_1E37E7460(v35, v36, v37, v34);

    v38 = v4 == 0xD000000000000011 && 0x80000001E4272A00 == v54;
    if (v38 || (OUTLINED_FUNCTION_27_0(), (sub_1E42079A4() & 1) != 0))
    {
      v39 = [v33 defaultCenter];
      v40 = sub_1E4205ED4();
      OUTLINED_FUNCTION_27_0();
      v34 = sub_1E4205ED4();
      v41 = OUTLINED_FUNCTION_75_10();
      [v41 v42];
    }

    v43 = sub_1E324FBDC();
    (*(v9 + 16))(v0, v43, v7);

    v44 = sub_1E41FFC94();
    v45 = sub_1E42067E4();

    if (OUTLINED_FUNCTION_110_5())
    {
      OUTLINED_FUNCTION_6_21();
      v46 = OUTLINED_FUNCTION_10_11();
      v55[0] = v46;
      *v34 = 136315138;
      v47 = OUTLINED_FUNCTION_27_0();
      *(v34 + 1) = sub_1E3270FC8(v47, v48, v49);
      OUTLINED_FUNCTION_81_11(&dword_1E323F000, v50, v45, "UMManager: %s removed");
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    (*(v9 + 8))(v0, v7);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5D17C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v67 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_118();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v65 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  v66 = v0;
  v18 = sub_1E3B60F74(v0);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    LOBYTE(v22) = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      v25 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_requestIdMessageMap;
      OUTLINED_FUNCTION_99_7();
      swift_beginAccess();
      v26 = sub_1E3B59978(v20, v21, *&v24[v25]);
      swift_endAccess();

      if (v26)
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_2_26();
        v27(v17);

        v28 = sub_1E41FFC94();
        v29 = sub_1E4206814();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = OUTLINED_FUNCTION_6_21();
          v31 = OUTLINED_FUNCTION_100();
          v68[0] = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_1E3270FC8(v67, v2, v68);
          _os_log_impl(&dword_1E323F000, v28, v29, "UMManager: returning existing controller for %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          OUTLINED_FUNCTION_51_2();
          OUTLINED_FUNCTION_6_0();
        }

        (*(v8 + 8))(v17, v6);
        v32 = v6;
        swift_unknownObjectRetain();
        v33 = v65;
LABEL_16:
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v50 = swift_unknownObjectWeakLoadStrong();
        if (v50)
        {
          v51 = v50;
          sub_1E3B60F74(v66);
          v53 = v52;
          v54 = OUTLINED_FUNCTION_109_2();
          sub_1E3B5A634(v54, v55, v56, v53, v26);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v22 = v66;
  if ([v66 style]!= 4)
  {
    v41 = [v22 style];
    v32 = v6;
    v42 = v67;
    if (v41 == 3)
    {
      v26 = [objc_allocWithZone(MEMORY[0x1E698CC60]) initWithRequest_];
      v43 = [v26 loadPromise];
      OUTLINED_FUNCTION_2_4();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v2;
      OUTLINED_FUNCTION_12_14(v44);
      OUTLINED_FUNCTION_26_50(COERCE_DOUBLE(1107296256));
      v69 = v45;
      v70 = &block_descriptor_95_0;
      _Block_copy(v68);
      OUTLINED_FUNCTION_101_5();

      [v43 addFinishBlock_];
      _Block_release(&selRef_setWaitingForTransactionToStart_);

      swift_unknownObjectRetain();
      v33 = v65;
    }

    else
    {
      v46 = [v22 style];
      v33 = v65;
      if (v46 != 7)
      {
        goto LABEL_19;
      }

      v26 = [objc_allocWithZone(MEMORY[0x1E698CC40]) initWithRequest_];
      v47 = [v26 loadPromise];
      OUTLINED_FUNCTION_2_4();
      v48 = swift_allocObject();
      *(v48 + 16) = v42;
      *(v48 + 24) = v2;
      OUTLINED_FUNCTION_12_14(v48);
      OUTLINED_FUNCTION_26_50(COERCE_DOUBLE(1107296256));
      v69 = v49;
      v70 = &block_descriptor_89;
      _Block_copy(v68);
      OUTLINED_FUNCTION_101_5();

      [v47 addFinishBlock_];
      _Block_release(&selRef_setWaitingForTransactionToStart_);

      swift_unknownObjectRetain();
    }

    goto LABEL_16;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v32 = v6;
  v34(v14);

  v22 = sub_1E41FFC94();
  v35 = sub_1E4206814();

  if (os_log_type_enabled(v22, v35))
  {
    v36 = OUTLINED_FUNCTION_6_21();
    v37 = OUTLINED_FUNCTION_100();
    v68[0] = v37;
    *v36 = 136315138;
    v38 = OUTLINED_FUNCTION_109_2();
    *(v36 + 4) = sub_1E3270FC8(v38, v39, v40);
    _os_log_impl(&dword_1E323F000, v22, v35, "UMManager: bubble tip %s. no push support", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  (*(v8 + 8))(v14, v32);
  v33 = v65;
LABEL_19:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v57(v33);

  v58 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_104_5();
  if (OUTLINED_FUNCTION_110_5())
  {
    v59 = OUTLINED_FUNCTION_6_21();
    v60 = OUTLINED_FUNCTION_100();
    v71 = v60;
    *v59 = 136315138;
    v61 = OUTLINED_FUNCTION_109_2();
    *(v59 + 4) = sub_1E3270FC8(v61, v62, v63);
    _os_log_impl(&dword_1E323F000, v58, v22, "UMManager: %s added", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  swift_unknownObjectRelease();
  (*(v8 + 8))(v33, v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5D7C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  if (v9)
  {
    v20(v19);

    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_6_21();
      v23 = OUTLINED_FUNCTION_10_11();
      *&v45 = v23;
      *v7 = 136315138;
      v24 = OUTLINED_FUNCTION_74();
      *(v7 + 4) = sub_1E3270FC8(v24, v25, v26);
      _os_log_impl(&dword_1E323F000, v21, v22, v3, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_55();
    }

    (*(v12 + 8))(v19, v10);
    v27 = [objc_opt_self() defaultCenter];
    v28 = sub_1E4205ED4();
    OUTLINED_FUNCTION_74();
    v29 = sub_1E4205ED4();
    [v27 postNotificationName:v28 object:v29 userInfo:0];
  }

  else
  {
    v20(v16);

    v30 = v7;
    v31 = sub_1E41FFC94();
    v32 = sub_1E42067F4();

    if (os_log_type_enabled(v31, v32))
    {
      v43 = v1;
      v33 = OUTLINED_FUNCTION_49_0();
      v47 = OUTLINED_FUNCTION_72_0();
      *v33 = 136315394;
      v34 = OUTLINED_FUNCTION_74();
      *(v33 + 4) = sub_1E3270FC8(v34, v35, v36);
      *(v33 + 12) = 2080;
      if (v7)
      {
        swift_getErrorValue();
        v5 = v44;
        *(&v46 + 1) = v44;
        __swift_allocate_boxed_opaque_existential_1(&v45);
        OUTLINED_FUNCTION_37_1();
        (*(v37 + 16))();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      v38 = sub_1E3294FA4(&v45);
      sub_1E3270FC8(v38, v39, &v47);
      OUTLINED_FUNCTION_96_8();

      *(v33 + 14) = v5;
      _os_log_impl(&dword_1E323F000, v31, v32, v43, v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_7();
    }

    v40 = OUTLINED_FUNCTION_16_0();
    v41(v40);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5DBF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, const void *a8)
{
  v25 = a3;
  v26 = a5;
  v13 = sub_1E41FFCB4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a8);
  v17 = sub_1E324FBDC();
  (*(v14 + 16))(v16, v17, v13);

  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24[2] = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v24[1] = a2;
    v23 = v22;
    v27 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1E3270FC8(v25, a4, &v27);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1E3270FC8(v26, a6, &v27);
    _os_log_impl(&dword_1E323F000, v18, v19, "UMManager: %s didUpdate -- serviceType %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E69143B0](v23, -1, -1);
    MEMORY[0x1E69143B0](v21, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  _Block_copy(a8);
  sub_1E3B5C510();
  _Block_release(a8);
  _Block_release(a8);
}

void sub_1E3B5DF6C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v87 = (v8 - v9);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v85 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v85 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v85 - v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_47_3();
  v23 = objc_opt_self();
  v24 = [v23 sharedInstance];
  v25 = [v24 isStillProcessingStartupItems];

  if (v25)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v26(v0);
    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();
    if (OUTLINED_FUNCTION_52_25(v28))
    {
      v29 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_37_7(v29);
      OUTLINED_FUNCTION_72_16(&dword_1E323F000, v27, v19, "UMManager: disallow modal: processing startup items");
      OUTLINED_FUNCTION_7_9();
    }

    goto LABEL_22;
  }

  v30 = objc_opt_self();
  v31 = [v30 topPresentedViewController];
  if (!v31)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v37 = OUTLINED_FUNCTION_77_13();
    v38(v37);
    v27 = sub_1E41FFC94();
    v39 = sub_1E4206814();
    if (OUTLINED_FUNCTION_52_25(v39))
    {
      v40 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_97_9(v40);
      v43 = "UMManager: disallow modal: ApplicationRouter Top Presented is nil";
LABEL_12:
      OUTLINED_FUNCTION_59_15(&dword_1E323F000, v41, v42, v43);
      OUTLINED_FUNCTION_6_0();
    }

LABEL_13:
    v0 = v1;
    goto LABEL_22;
  }

  v27 = v31;
  v32 = [v31 presentedViewController];
  if (v32)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v33(v3);
    v34 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_66_19();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_37_7(v36);
      OUTLINED_FUNCTION_72_16(&dword_1E323F000, v34, v3, "UMManager: disallow modal: we are already presenting (top)");
      OUTLINED_FUNCTION_7_9();
    }

    v0 = v3;
    goto LABEL_22;
  }

  v44 = [objc_opt_self() sharedInstance];
  v45 = [v44 isPlaybackUIBeingShown];

  if (v45)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v46(v19);
    v27 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_66_19();
    if (os_log_type_enabled(v27, v47))
    {
      v48 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_37_7(v48);
      OUTLINED_FUNCTION_72_16(&dword_1E323F000, v27, v19, "UMManager: disallow modal: playback is active");
      OUTLINED_FUNCTION_7_9();
    }

    v0 = v19;
    goto LABEL_22;
  }

  v49 = *sub_1E32A9398();
  v50 = sub_1E3C14D60();

  if ((v50 & 1) == 0)
  {
    v56 = [objc_opt_self() sharedInstance];
    v57 = [v56 openURLHandler];

    LOBYTE(v56) = [v57 isFinished];
    swift_unknownObjectRelease();
    if (v56)
    {
      v58 = [v30 currentNavigationController];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 presentedViewController];
        if (v60)
        {

          sub_1E324FBDC();
          OUTLINED_FUNCTION_21_8();
          v1 = v86;
          v61 = OUTLINED_FUNCTION_77_13();
          v62(v61);
          v27 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_66_19();
          if (!os_log_type_enabled(v27, v63))
          {

            v27 = v59;
            goto LABEL_13;
          }

          v64 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_37_7(v64);
          v65 = "UMManager: disallow modal: we are already presenting (current)";
          v66 = v1;
          v67 = v27;
          goto LABEL_34;
        }
      }

      else
      {
        v72 = [v23 sharedInstance];
        v27 = [v72 appController];

        if (!v27)
        {
          goto LABEL_39;
        }

        v73 = [v27 navigationController];
        v74 = [v73 presentedViewController];

        if (v74)
        {

          sub_1E324FBDC();
          OUTLINED_FUNCTION_21_8();
          v1 = v85;
          v75 = OUTLINED_FUNCTION_77_13();
          v76(v75);
          v59 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_66_19();
          if (!os_log_type_enabled(v59, v77))
          {
LABEL_35:

            goto LABEL_13;
          }

          v78 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_37_7(v78);
          v65 = "UMManager: disallow modal: we are already presenting (app)";
          v66 = v1;
          v67 = v59;
LABEL_34:
          OUTLINED_FUNCTION_72_16(&dword_1E323F000, v67, v66, v65);
          OUTLINED_FUNCTION_7_9();
          goto LABEL_35;
        }

        v59 = v27;
      }

LABEL_39:
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v1 = v87;
      v79 = OUTLINED_FUNCTION_77_13();
      v80(v79);
      v27 = sub_1E41FFC94();
      v81 = sub_1E4206814();
      if (OUTLINED_FUNCTION_52_25(v81))
      {
        v82 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_97_9(v82);
        OUTLINED_FUNCTION_59_15(&dword_1E323F000, v83, v84, "UMManager: allow modal");
        OUTLINED_FUNCTION_6_0();
      }

      goto LABEL_13;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v1 = v88;
    v68 = OUTLINED_FUNCTION_77_13();
    v69(v68);
    v27 = sub_1E41FFC94();
    v70 = sub_1E4206814();
    if (OUTLINED_FUNCTION_52_25(v70))
    {
      v71 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_97_9(v71);
      v43 = "UMManager: disallow modal: processing deeplink";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  v51(v2);
  v27 = sub_1E41FFC94();
  v52 = sub_1E4206814();
  if (OUTLINED_FUNCTION_52_25(v52))
  {
    v53 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_97_9(v53);
    OUTLINED_FUNCTION_59_15(&dword_1E323F000, v54, v55, "UMManager: disallow modal: shared watch might be active");
    OUTLINED_FUNCTION_6_0();
  }

  v0 = v2;
LABEL_22:

  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5E688()
{
  OUTLINED_FUNCTION_31_1();
  v58 = v1;
  v59 = v2;
  v57 = v3;
  v60 = v4;
  v61 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v24);
  if (v9)
  {
    v26 = &v55 - v25;
    v27 = v9;
    [v27 integerValue];
    if (!v7)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_12_7();
      v42(v26);
      (*(v12 + 16))(v19, v60, v10);
      v41 = v27;
      v43 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_66_19();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = OUTLINED_FUNCTION_49_0();
        v60 = v20;
        v56 = v22;
        v46 = v45;
        v55 = OUTLINED_FUNCTION_100();
        v62[0] = v55;
        *v46 = 134218242;
        *(v46 + 4) = [v41 integerValue];

        *(v46 + 12) = 2080;
        OUTLINED_FUNCTION_7_123();
        sub_1E3274B40(v47, v48);
        v49 = sub_1E4207944();
        v51 = v50;
        (*(v12 + 8))(v19, v10);
        v52 = sub_1E3270FC8(v49, v51, v62);

        *(v46 + 14) = v52;
        _os_log_impl(&dword_1E323F000, v43, v26, "UMManager::handleEngagementRequest AMS URL -- returns %ld, %s", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v55);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_51_2();

        (*(v56 + 8))(v26, v60);
      }

      else
      {

        (*(v12 + 8))(v19, v10);
        (*(v22 + 8))(v26, v20);
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v54 = Strong;
        sub_1E3B5A240();
      }

      goto LABEL_14;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v28(v0);
  (*(v12 + 16))(v16, v60, v10);
  v29 = sub_1E41FFC94();
  v30 = sub_1E4206814();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_6_21();
    v56 = v22;
    v32 = v31;
    v33 = OUTLINED_FUNCTION_100();
    v62[0] = v33;
    *v32 = 136315138;
    OUTLINED_FUNCTION_7_123();
    sub_1E3274B40(v34, v35);
    v36 = sub_1E4207944();
    v60 = v20;
    v38 = v37;
    (*(v12 + 8))(v16, v10);
    v39 = sub_1E3270FC8(v36, v38, v62);

    *(v32 + 4) = v39;
    _os_log_impl(&dword_1E323F000, v29, v30, "UMManager::handleEngagementRequest non-AMS URL %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_51_2();

    (*(v56 + 8))(v0, v60);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
    (*(v22 + 8))(v0, v20);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    sub_1E3B5EBA8();
LABEL_14:
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5EBA8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v25 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v14 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = v5;
  v15[4] = v3;
  v26[4] = sub_1E3B61190;
  v26[5] = v15;
  OUTLINED_FUNCTION_12_0();
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v26[2] = v16;
  v26[3] = &block_descriptor_74;
  v17 = _Block_copy(v26);
  v18 = v7;
  sub_1E34AF604(v5);

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_124();
  sub_1E3274B40(v19, v20);
  v21 = OUTLINED_FUNCTION_210();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v22, v23);
  OUTLINED_FUNCTION_95_7();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v1, v0, v17);
  _Block_release(v17);

  (*(v25 + 8))(v0, v8);
  (*(v12 + 8))(v1, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5EE14()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_3();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  if (!v8)
  {
LABEL_27:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  type metadata accessor for UnifiedMessagingManager();
  v61 = v8;
  sub_1E3B5DF6C();
  if (v18)
  {
    v19 = [objc_opt_self() DSID];
    v55 = v13;
    v57 = v2;
    if (v19)
    {
      v20 = v19;
      v21 = [v19 stringValue];

      v22 = sub_1E4205F14();
      v58 = v23;
      v59 = v22;
    }

    else
    {
      v58 = 0;
      v59 = 0;
    }

    v56 = v11;
    v60 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BD0;
    v62 = sub_1E4205F14();
    v63 = v27;
    v28 = MEMORY[0x1E69E6158];
    sub_1E4207414();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      v31 = *(Strong + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_lastTabIdentifier);
      v32 = *(Strong + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_lastTabIdentifier + 8);

      v33 = (inited + 72);
      *(inited + 96) = v28;
      if (v32)
      {
        *v33 = v31;
LABEL_14:
        *(inited + 80) = v32;
        sub_1E4205F14();
        sub_1E4207414();
        v34 = sub_1E4205F14();
        *(inited + 168) = v28;
        *(inited + 144) = v34;
        *(inited + 152) = v35;
        v62 = sub_1E4205F14();
        v63 = v36;
        sub_1E4207414();
        *(inited + 240) = v28;
        v37 = v59;
        if (!v58)
        {
          v37 = 0;
        }

        v38 = 0xE000000000000000;
        if (v58)
        {
          v38 = v58;
        }

        *(inited + 216) = v37;
        *(inited + 224) = v38;
        v39 = sub_1E4205CB4();
        sub_1E3A4A02C(v39, v61);
        v40 = [objc_opt_self() topPresentedViewController];
        if (v40)
        {
          v41 = v40;
          v42 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:v61 bag:v57 presentingViewController:v40];
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v43 = swift_unknownObjectWeakLoadStrong();
          [v42 setDelegate_];

          v44 = [v42 presentEngagement];
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v45 = swift_unknownObjectWeakLoadStrong();
          if (v45)
          {
            v46 = v45;
            sub_1E41FE5C4();
            v47 = sub_1E41FE5D4();
            __swift_storeEnumTagSinglePayload(v0, 0, 1, v47);
            sub_1E329D524();

            sub_1E325F6F0(v0, &unk_1ECF28E20);
          }

          OUTLINED_FUNCTION_2_4();
          v48 = swift_allocObject();
          *(v48 + 16) = v60;
          *(v48 + 24) = v4;
          v66 = sub_1E3B61188;
          v67 = v48;
          v62 = MEMORY[0x1E69E9820];
          v63 = 1107296256;
          v64 = sub_1E3A4D110;
          v65 = &block_descriptor_68;
          v49 = _Block_copy(&v62);
          sub_1E34AF604(v60);

          [v44 addFinishBlock_];
          _Block_release(v49);
        }

        else
        {
          v50 = sub_1E324FBDC();
          (*(v55 + 16))(v17, v50, v56);
          v51 = sub_1E41FFC94();
          v52 = sub_1E42067F4();
          if (OUTLINED_FUNCTION_104(v52))
          {
            v53 = OUTLINED_FUNCTION_125_0();
            OUTLINED_FUNCTION_37_7(v53);
            OUTLINED_FUNCTION_72_16(&dword_1E323F000, v51, v52, "UMManager:handleEnagagementRequestbyAMS invalid presentingVC");
            OUTLINED_FUNCTION_7_9();
          }

          (*(v55 + 8))(v17, v56);
          if (v60)
          {

            v54 = OUTLINED_FUNCTION_165();
            v60(v54);

            sub_1E34AF594(v60);
          }

          else
          {
          }
        }

        goto LABEL_27;
      }
    }

    else
    {
      v33 = (inited + 72);
      *(inited + 96) = v28;
    }

    *v33 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5F3CC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_118();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v6 = OUTLINED_FUNCTION_75_10();
  v7(v6);
  v8 = v0;
  v9 = v4;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v34 = v2;
    v12 = OUTLINED_FUNCTION_49_0();
    v33 = OUTLINED_FUNCTION_72_0();
    v38 = v33;
    *v12 = 136315394;
    if (v0)
    {
      v13 = sub_1E3280A90(0, &qword_1ECF33F48);
      v14 = v8;
    }

    else
    {
      v14 = 0;
      v13 = 0;
      *(&v36 + 1) = 0;
      *&v37 = 0;
    }

    *&v36 = v14;
    *(&v37 + 1) = v13;
    v17 = v8;
    v18 = sub_1E3294FA4(&v36);
    v20 = sub_1E3270FC8(v18, v19, &v38);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    if (v4)
    {
      swift_getErrorValue();
      *(&v37 + 1) = v35;
      __swift_allocate_boxed_opaque_existential_1(&v36);
      OUTLINED_FUNCTION_37_1();
      (*(v21 + 16))();
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    v22 = sub_1E3294FA4(&v36);
    v24 = sub_1E3270FC8(v22, v23, &v38);

    *(v12 + 14) = v24;
    _os_log_impl(&dword_1E323F000, v10, v11, "UMManager:handleEnagagementRequestbyAMS completed:%s error:%s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_79();

    v25 = OUTLINED_FUNCTION_97_1();
    v26(v25);
    v2 = v34;
    if (!v0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v15 = OUTLINED_FUNCTION_97_1();
  v16(v15);
  if (v0)
  {
LABEL_11:
    v27 = v0;
    v28 = objc_opt_self();
    v29 = v8;
    v30 = [v28 sharedInstance];
    v31 = [v30 openURLHandler];

    if (v4)
    {
      v32 = sub_1E41FE264();
    }

    else
    {
      v32 = 0;
    }

    [v31 processEngagementResult:v29 error:{v32, v33}];

    swift_unknownObjectRelease();
    v0 = v27;
  }

LABEL_15:
  if (v2)
  {

    v2(v0, v4);
    sub_1E34AF594(v2);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5F720(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v8 = a2;
  v6 = a3;
  v7 = OUTLINED_FUNCTION_16_0();
  v5(v7);
}

void sub_1E3B5F7A8()
{
  OUTLINED_FUNCTION_31_1();
  v52[1] = v1;
  v3 = v2;
  v5 = v4;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v52 - v13;
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v15);
LABEL_7:
    sub_1E325F6F0(v14, &unk_1ECF363C0);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v25 = OUTLINED_FUNCTION_75_10();
    v26(v25);
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_125_0();
      *v29 = 0;
      _os_log_impl(&dword_1E323F000, v27, v28, "UMManager:handleEnagagementRequestbyDeeplink: missing url in AMSEngagementRequest", v29, 2u);
      OUTLINED_FUNCTION_55();
    }

    v30 = OUTLINED_FUNCTION_97_1();
    v31(v30);
    if (v3)
    {

      v32 = OUTLINED_FUNCTION_165();
      v3(v32);
      v33 = OUTLINED_FUNCTION_67_0();
      sub_1E34AF594(v33);
    }

    goto LABEL_19;
  }

  v19 = [v5 URL];
  if (v19)
  {
    v20 = v19;
    sub_1E41FE3C4();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v21, 1, v15);
  sub_1E379E528(v11, v14, &unk_1ECF363C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  (*(v17 + 32))(v0, v14, v15);
  type metadata accessor for UnifiedMessagingManager();
  sub_1E3B5DF6C();
  if ((v34 & 1) != 0 && (v35 = [objc_opt_self() sharedInstance], v36 = objc_msgSend(v35, sel_appController), v35, v36) && (v37 = objc_msgSend(v36, sel_appContext), v36, v37))
  {
    v38 = [objc_opt_self() sharedInstance];
    v39 = [v38 openURLHandler];

    v40 = sub_1E41FE364();
    v53[4] = sub_1E3B5FC3C;
    v53[5] = 0;
    OUTLINED_FUNCTION_12_0();
    v53[1] = 1107296256;
    OUTLINED_FUNCTION_29_46();
    v53[2] = v41;
    v53[3] = &block_descriptor_77;
    v42 = _Block_copy(v53);
    v43 = v37;
    [v39 processDeeplink:v40 appContext:v43 completion:v42];
    _Block_release(v42);
    swift_unknownObjectRelease();

    if (!v3)
    {
      v50 = OUTLINED_FUNCTION_53();
      v51(v50);

      goto LABEL_19;
    }

    v44 = OUTLINED_FUNCTION_165();
    v3(v44);
    v45 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v45);
  }

  else if (v3)
  {

    v46 = OUTLINED_FUNCTION_165();
    v3(v46);
    v47 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v47);
  }

  v48 = OUTLINED_FUNCTION_53();
  v49(v48);
LABEL_19:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B5FC3C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v29 = v5;
  OUTLINED_FUNCTION_106();
  v6 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_87_1();
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E324FBDC();
  v14 = OUTLINED_FUNCTION_71_21();
  v15(v14);
  (*(v8 + 16))(v2, v0, v6);

  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();

  if (os_log_type_enabled(v16, v17))
  {
    v28 = v4;
    v18 = OUTLINED_FUNCTION_49_0();
    v30 = OUTLINED_FUNCTION_72_0();
    *v18 = 136315394;
    OUTLINED_FUNCTION_7_123();
    sub_1E3274B40(v19, v20);
    sub_1E4207944();
    (*(v8 + 8))(v2, v6);
    v21 = OUTLINED_FUNCTION_16_0();
    v24 = sub_1E3270FC8(v21, v22, v23);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1E3270FC8(v29, v28, &v30);
    _os_log_impl(&dword_1E323F000, v16, v17, "UMManager:handleEnagagementRequestbyDeeplink Action Opened deeplink with url = %s and tabIdentifier = %s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79();

    (*(v12 + 8))(v1, v10);
  }

  else
  {

    (*(v8 + 8))(v2, v6);
    v25 = OUTLINED_FUNCTION_13_8();
    v27(v25, v26);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B5FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E41FE414();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_1E41FE3C4();
  v13 = sub_1E4205F14();
  v15 = v14;

  v12(v11, v13, v15, a4, a5);

  return (*(v9 + 8))(v11, v8);
}

void sub_1E3B60024()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 appController];

  if (v1)
  {
    v2 = [v1 appContext];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 openURLHandler];

  v5 = sub_1E41FE364();
  v8[4] = sub_1E3B60178;
  v8[5] = 0;
  OUTLINED_FUNCTION_3_4();
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_29_46();
  v8[2] = v6;
  v8[3] = &block_descriptor_32_2;
  v7 = _Block_copy(v8);
  [v4 processDeeplink:v5 appContext:v2 completion:v7];
  _Block_release(v7);

  swift_unknownObjectRelease();
}

void sub_1E3B60178()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v54 = v3;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v55 = v15 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = sub_1E324FBDC();
  v21 = *(v13 + 16);
  v51 = v20;
  v52 = v13 + 16;
  v50 = v21;
  (v21)(v19);
  OUTLINED_FUNCTION_88_4();
  v53 = v0;
  v22(v10, v0, v4);

  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_49_0();
    v49 = v13;
    v26 = v25;
    v48 = OUTLINED_FUNCTION_72_0();
    v56 = v48;
    *v26 = 136315394;
    OUTLINED_FUNCTION_7_123();
    sub_1E3274B40(v27, v28);
    v29 = sub_1E4207944();
    v47 = v2;
    v30 = v11;
    v32 = v31;
    (*(v6 + 8))(v10, v4);
    v33 = sub_1E3270FC8(v29, v32, &v56);
    v11 = v30;

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_1E3270FC8(v54, v47, &v56);
    _os_log_impl(&dword_1E323F000, v23, v24, "UnifiedMessaging::handleEnagagementRequestbyAMS Action Opened deeplink with url = %s and tabIdentifier = %s", v26, 0x16u);
    v34 = v48;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v36 = *(v6 + 8);
    v34 = (v6 + 8);
    v36(v10, v4);
  }

  v35 = OUTLINED_FUNCTION_85_9();
  v34(v35);
  v37 = [objc_opt_self() sharedInstance];
  v38 = [v37 deeplinkCompletionHandler];

  if (v38)
  {
    v39 = sub_1E41FE364();
    v40 = sub_1E4205ED4();
    v41 = OUTLINED_FUNCTION_13_8();
    v42(v41);

    _Block_release(v38);
  }

  else
  {
    v50(v55, v51, v11);
    v43 = sub_1E41FFC94();
    v44 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v44))
    {
      v45 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_37_7(v45);
      OUTLINED_FUNCTION_72_16(&dword_1E323F000, v43, v44, "UnifiedMessaging::handleEnagagementRequestbyAMS nil deeplink completion handler");
      OUTLINED_FUNCTION_7_9();
    }

    v46 = OUTLINED_FUNCTION_124();
    v34(v46);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B60598()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 appController];

  if (v2)
  {
    v3 = [v2 appContext];

    if (v3)
    {
      OUTLINED_FUNCTION_4_0();
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v7[4] = sub_1E3B60FE4;
      v7[5] = v4;
      OUTLINED_FUNCTION_3_4();
      v7[1] = 1107296256;
      v7[2] = sub_1E377674C;
      v7[3] = &block_descriptor_38_0;
      v5 = _Block_copy(v7);
      v6 = v0;

      [v3 evaluate_];
      _Block_release(v5);
    }
  }
}

void sub_1E3B606BC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_5();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_47_3();
  if (!sub_1E32AE9B0(v5))
  {
    v34 = 0u;
    v35 = 0u;
LABEL_15:
    sub_1E325F6F0(&v34, &unk_1ECF296E0);
    goto LABEL_16;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1E6911E60](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v11 = *(v5 + 32);
  }

  v12 = v11;
  v13 = [v11 toObject];

  if (v13)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  if (swift_dynamicCast())
  {
    v14 = sub_1E324FBDC();
    (*(v8 + 16))(v1, v14, v6);
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v16))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_45_34();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_7_7();
    }

    (*(v8 + 8))(v1, v6);
    v22 = *(v3 + OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_engagement);
    if (v22)
    {
      v23 = v22;
      v24 = sub_1E4205C44();
    }

    else
    {
    }

    goto LABEL_19;
  }

LABEL_16:
  sub_1E324FBDC();
  v25 = OUTLINED_FUNCTION_101();
  v26(v25);
  v27 = sub_1E41FFC94();
  v28 = sub_1E4206814();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_125_0();
    *v29 = 0;
    _os_log_impl(&dword_1E323F000, v27, v28, "UnifiedMessaging::nil Config. UM Config is disabled", v29, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v30 = OUTLINED_FUNCTION_57();
  v31(v30);
LABEL_19:
  if ([objc_opt_self() valueWithUndefinedInContext_])
  {
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_24:
  __break(1u);
}

id sub_1E3B60A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4205ED4();

  if (a3)
  {
    v6 = sub_1E4205C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithPlacement:v5 context:v6];

  return v7;
}

id sub_1E3B60AB8()
{
  v1 = sub_1E4205ED4();

  sub_1E3280A90(0, &unk_1EE23AFB0);
  v2 = sub_1E42062A4();

  v3 = [v0 initWithServiceType:v1 placementInfo:v2];

  return v3;
}

uint64_t sub_1E3B60B4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33F50);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33F60);
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

uint64_t sub_1E3B60C40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_fullorhalfSheetPromptedAt;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E329E324(v3 + v4, a1);
}

void sub_1E3B60CA0()
{
  OUTLINED_FUNCTION_118();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  v1 = OUTLINED_FUNCTION_13_8();

  sub_1E3B5BFF0(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1E3B60D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33F50);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_1E3B60E88(void *a1)
{
  v1 = [a1 messageActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23AEC8);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3B60EF8(void *a1)
{
  v1 = [a1 placementsMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33F90);
  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3B60F74(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E3B60FE4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [a1 objectForKeyedSubscript_];
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  v7 = sub_1E3280A90(0, &qword_1EE23AE50);
  v8 = v3;
  v9 = sub_1E3A242D8(a1, sub_1E3B611B8, v5);
  *(v6 + 56) = v7;
  *(v6 + 32) = v9;
  if (v4)
  {
    v10 = sub_1E4205F14();
    v12 = sub_1E3780E30(v10, v11, v6, v4);
  }

  else
  {
  }
}

uint64_t sub_1E3B61240()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[7];
  v6 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_placementIdMessageMap;
  OUTLINED_FUNCTION_11_3();
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v6);
  sub_1E3B60D4C(v3, v1, v4);
  *(v2 + v6) = v11;
  result = swift_endAccess();
  if (v5)
  {
    v8 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_requestIdMessageMap;
    OUTLINED_FUNCTION_11_3();
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v8);
    v9 = OUTLINED_FUNCTION_27_0();
    sub_1E3B60D4C(v9, v10, v5);
    *(v2 + v8) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t objectdestroy_51Tm()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

void sub_1E3B613F0()
{
  OUTLINED_FUNCTION_118();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_13_8();

  sub_1E3B5E688();
}

uint64_t sub_1E3B614B0()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_99_7();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_27_0();
  v5 = sub_1E3B59978(v2, v3, v4);
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    v7 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_requestIdMessageMap;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v8 = *(v1 + v7);
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v14 = 0;
    v22 = 0;
    v15 = 0;
    while (v11)
    {
LABEL_10:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = v17 | (v15 << 6);
      if (*(*(v8 + 56) + 8 * v18) == v6)
      {
        v21 = *(*(v8 + 48) + 16 * v18 + 8);
        v22 = *(*(v8 + 48) + 16 * v18);

        v14 = v21;
      }
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v8 + 64 + 8 * v16);
      ++v15;
      if (v11)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    if (v14)
    {
      OUTLINED_FUNCTION_11_3();
      sub_1E3B60B4C(v22, v14);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_11_3();
  v19 = OUTLINED_FUNCTION_27_0();
  sub_1E3B60B4C(v19, v20);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3B616A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_placementIdMessageMap;
  OUTLINED_FUNCTION_99_7();
  swift_beginAccess();
  if (*(*(v3 + v4) + 16) && (v5 = OUTLINED_FUNCTION_124(), sub_1E327D33C(v5, v6), (v7 & 1) != 0))
  {
    v8 = swift_unknownObjectRetain();
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return swift_endAccess();
}

uint64_t sub_1E3B6177C(uint64_t *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1E3B60F74(v4);
    sub_1E3B5A634(v2, v3, v8, v9, v5);
  }

  return result;
}

unint64_t sub_1E3B618F8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1E3B61908(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000030;
  v3 = "rTransitionStyle";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000002FLL;
    }

    else
    {
      v5 = 0xD000000000000032;
    }

    if (v4 == 1)
    {
      v6 = "ionBarTransition";
    }

    else
    {
      v6 = ".manualNavigationBarTransitions";
    }
  }

  else
  {
    v5 = 0xD000000000000030;
    v6 = "rTransitionStyle";
  }

  if (a2)
  {
    v3 = "ionBarTransition";
    v2 = a2 == 1 ? 0xD00000000000002FLL : 0xD000000000000032;
    if (a2 != 1)
    {
      v3 = ".manualNavigationBarTransitions";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B619F0()
{
  sub_1E4206014();
}

uint64_t sub_1E3B61A7C(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3B61AC0()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3B61B58@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E3B618F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E3B61B84@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_13_30(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1E3B61BB0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3B61BFC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000030;
  }

  if (a1 == 1)
  {
    return 0xD00000000000002FLL;
  }

  return 0xD000000000000032;
}

uint64_t sub_1E3B61C74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B61BB0();
  *a1 = result;
  return result;
}

unint64_t sub_1E3B61CA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3B61BFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B61CD0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1ECF33F98);
  swift_endAccess();
  if (v1)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_1E3B61BB0();
    }
  }

  else
  {
    sub_1E329505C(v5);
  }

  return 3;
}

uint64_t sub_1E3B61DA4(char a1)
{
  result = sub_1E3B61CD0();
  if (result == 3)
  {
    switch(a1)
    {
      case 3:
        return result;
      default:
        goto LABEL_6;
    }
  }

  else if (a1 == 3)
  {
    v4 = sub_1E4205ED4();
    swift_beginAccess();
    objc_setAssociatedObject(v1, &unk_1ECF33F98, v4, 1);
    swift_endAccess();

    [v1 _setManualScrollEdgeAppearanceEnabled_];
    [v1 _setAutoScrollEdgeTransitionDistance_];
    return [v1 _setManualScrollEdgeAppearanceEnabled_];
  }

  else
  {
    result = sub_1E3B61908(result, a1);
    if ((result & 1) == 0)
    {
LABEL_6:
      v5 = sub_1E4205ED4();

      swift_beginAccess();
      objc_setAssociatedObject(v1, &unk_1ECF33F98, v5, 1);
      swift_endAccess();

      if (a1)
      {
        [v1 _setManualScrollEdgeAppearanceEnabled_];
        if (a1 == 1)
        {
          [v1 _setAutoScrollEdgeTransitionDistance_];
          [v1 _setManualScrollEdgeAppearanceEnabled_];
          [v1 _setManualScrollEdgeAppearanceProgress_];
          return [v1 _setManualScrollEdgeAppearanceProgress_];
        }

        else
        {
          [v1 _setAutoScrollEdgeTransitionDistance_];
          return [v1 _setManualScrollEdgeAppearanceEnabled_];
        }
      }

      else
      {
        [v1 _setManualScrollEdgeAppearanceEnabled_];
        [v1 _setManualScrollEdgeAppearanceProgress_];
        [v1 _setManualScrollEdgeAppearanceEnabled_];
        return [v1 _setAutoScrollEdgeTransitionDistance_];
      }
    }
  }

  return result;
}

id sub_1E3B62038(double a1)
{
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  return [v1 _setManualScrollEdgeAppearanceProgress_];
}

unint64_t sub_1E3B62064()
{
  result = qword_1EE23B270;
  if (!qword_1EE23B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B270);
  }

  return result;
}

unint64_t sub_1E3B620BC()
{
  result = qword_1ECF33FA8;
  if (!qword_1ECF33FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33FA8);
  }

  return result;
}

_BYTE *_s15TitleVisibilityOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3B62208(uint64_t a1, unint64_t a2)
{
  v2 = 0x2E73733A6D6D3A68;
  switch(a2)
  {
    case 0uLL:
      v2 = 0xD000000000000015;
      break;
    case 1uLL:
      break;
    case 2uLL:
      v2 = 0x79202C64204D4D4DLL;
      break;
    case 3uLL:
      v2 = 0x535353532E7373;
      break;
    default:
      v2 = a1;
      break;
  }

  sub_1E394C830(a1, a2);
  return v2;
}

uint64_t sub_1E3B622D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = sub_1E41FE6C4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E41FE7D4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v33 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1E41FE564();
  v23 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E41FE7C4();
  v24 = sub_1E41FE7B4();
  (*(v12 + 8))(v16, v10);
  [v23 setTimeZone_];

  v25 = [objc_opt_self() currentLocale];
  sub_1E41FE674();

  v26 = sub_1E41FE664();
  (*(v5 + 8))(v9, v3);
  [v23 setLocale_];

  v27 = sub_1E3B62208(a2, a3);
  sub_1E3768E10(v27, v28, v23);
  v29 = sub_1E41FE514();
  v30 = [v23 stringFromDate_];

  v31 = sub_1E4205F14();
  (*(v18 + 8))(v22, v33);
  return v31;
}

id sub_1E3B625A8()
{
  v0 = [objc_opt_self() systemGrayColor];

  return v0;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI32MetricsCellPresentationUtilitiesC10DateFormatO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3B62624(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3B62688(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_allocObject();
  v8 = sub_1E3BBD9C4(a1, a2 & 1, a3, a4 & 1);

  sub_1E3B62704();

  return v8;
}

uint64_t sub_1E3B62704()
{
  v0 = sub_1E37BD068();
  (*(*v0 + 1792))(10);

  v1 = *sub_1E37BD068();
  (*(v1 + 1696))(17);

  v2 = sub_1E37BD068();
  v3 = [objc_opt_self() whiteColor];
  (*(*v2 + 680))(v3);

  sub_1E3C2CD20();
  sub_1E3C2D0A0();
  OUTLINED_FUNCTION_36_0();
  sub_1E3C2CDD0();
  OUTLINED_FUNCTION_36_0();
  sub_1E3C2D150();
  OUTLINED_FUNCTION_36_0();
  sub_1E3C2CE80();
  OUTLINED_FUNCTION_36_0();
  sub_1E3C2D200();
  v4.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v4);
  sub_1E3C2D7EC();
  sub_1E3C2E014(2);
  sub_1E3C2DE50();
  __asm { FMOV            V0.2D, #12.0 }

  return sub_1E3C2C9D4();
}

uint64_t sub_1E3B628A8()
{
  swift_allocObject();
  v0 = sub_1E3BBB754();

  sub_1E3B62704();

  return v0;
}

uint64_t sub_1E3B628F4()
{
  v0 = sub_1E3B20FDC();

  return MEMORY[0x1EEE6BDC0](v0, 201, 7);
}

id LocalNotificationService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E3B6297C()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE28C058);
  __swift_project_value_buffer(v0, qword_1EE28C058);
  return sub_1E41FFCA4();
}

id sub_1E3B629FC()
{
  v0 = type metadata accessor for UNCenterLocalNotification();
  sub_1E3C3F800(v2);
  result = sub_1E3C3F874(v2);
  qword_1EE28C088 = v0;
  unk_1EE28C090 = &off_1F5D791F8;
  qword_1EE28C070 = result;
  return result;
}

uint64_t sub_1E3B62A68()
{
  OUTLINED_FUNCTION_134();
  if (qword_1EE28C050 != -1)
  {
    OUTLINED_FUNCTION_1_150();
  }

  sub_1E327F454(&qword_1EE28C070, v0 + 16);
  OUTLINED_FUNCTION_13_27();
  OUTLINED_FUNCTION_16_81();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1E3B62B94;
  v3 = OUTLINED_FUNCTION_7_32();

  return v5(v3);
}

uint64_t sub_1E3B62B94()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E3B62C88, 0, 0);
}

uint64_t sub_1E3B62C88()
{
  OUTLINED_FUNCTION_24();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_13_7();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1E3B62D50(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E3B62DE4;

  return static LocalNotificationService.authorizationStatus()();
}

uint64_t sub_1E3B62DE4()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  OUTLINED_FUNCTION_39();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v4[2](v4, v2);
  _Block_release(v4);
  OUTLINED_FUNCTION_54();

  return v7();
}

uint64_t static LocalNotificationService.deliverNotification(identifier:title:body:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  return OUTLINED_FUNCTION_6_5(sub_1E3B62F1C);
}

uint64_t sub_1E3B62F1C()
{
  if (![objc_opt_self() isRunningInTVAppExtension])
  {
    if (qword_1EE28C050 != -1)
    {
      OUTLINED_FUNCTION_1_150();
    }

    sub_1E327F454(&qword_1EE28C070, (v0 + 2));
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v9 = *(v8 + 16);

    v11 = v9 + *v9;
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_1E3B63194;

    __asm { BRAA            X8, X16 }
  }

  if (_MergedGlobals_209 != -1)
  {
    OUTLINED_FUNCTION_3_127();
  }

  v1 = sub_1E41FFCB4();
  __swift_project_value_buffer(v1, qword_1EE28C058);
  v2 = sub_1E41FFC94();
  v3 = sub_1E42067F4();
  if (OUTLINED_FUNCTION_16_53(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v4, v5, "VUIJSNotificationCenter:: local notification services not available.");
    OUTLINED_FUNCTION_51_2();
  }

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3B63194()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = sub_1E3B63304;
  }

  else
  {

    v7 = sub_1E3B632A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3B632A8()
{
  OUTLINED_FUNCTION_24();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3B63304()
{
  OUTLINED_FUNCTION_24();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3B63424(int a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v5[2] = _Block_copy(aBlock);
  v8 = sub_1E4205F14();
  v10 = v9;
  v5[3] = v9;
  v11 = sub_1E4205F14();
  v13 = v12;
  v5[4] = v12;
  if (a3)
  {
    a3 = sub_1E4205F14();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v5[5] = v15;
  if (a4)
  {
    a4 = sub_1E4205C64();
  }

  v5[6] = a4;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_1E3B63578;

  return static LocalNotificationService.deliverNotification(identifier:title:body:options:)(v8, v10, v11, v13, a3, v15, a4);
}

uint64_t sub_1E3B63578()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = sub_1E41FE264();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 16), 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1E3B6376C()
{
  OUTLINED_FUNCTION_134();
  if ([objc_opt_self() isRunningInTVAppExtension])
  {
    if (_MergedGlobals_209 != -1)
    {
      OUTLINED_FUNCTION_3_127();
    }

    v1 = sub_1E41FFCB4();
    __swift_project_value_buffer(v1, qword_1EE28C058);
    v2 = sub_1E41FFC94();
    v3 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v4, v5, "VUIJSNotificationCenter:: local notification services not available.");
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_13_7();

    return v6(0);
  }

  else
  {
    if (qword_1EE28C050 != -1)
    {
      OUTLINED_FUNCTION_1_150();
    }

    sub_1E327F454(&qword_1EE28C070, v0 + 16);
    OUTLINED_FUNCTION_13_27();
    OUTLINED_FUNCTION_16_81();
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_11_90(v8);

    return v10(v9);
  }
}

uint64_t sub_1E3B63960()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    v9 = sub_1E3B63AD8;
  }

  else
  {
    *(v5 + 80) = v3 & 1;
    v9 = sub_1E3B63A78;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E3B63A78()
{
  OUTLINED_FUNCTION_24();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_13_7();

  return v1();
}

uint64_t sub_1E3B63AD8()
{
  OUTLINED_FUNCTION_24();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_13_7();

  return v1(0);
}

uint64_t sub_1E3B63B58(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E3B63BF8;

  return static LocalNotificationService.requestAuthorization(options:)(a1);
}

uint64_t sub_1E3B63BF8()
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

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, v4 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1E3B63D7C()
{
  OUTLINED_FUNCTION_134();
  if ([objc_opt_self() isRunningInTVAppExtension])
  {
    if (_MergedGlobals_209 != -1)
    {
      OUTLINED_FUNCTION_3_127();
    }

    v1 = sub_1E41FFCB4();
    __swift_project_value_buffer(v1, qword_1EE28C058);
    v2 = sub_1E41FFC94();
    v3 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v4, v5, "VUIJSNotificationCenter:: local notification services not available.");
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_54();

    return v6();
  }

  else
  {
    if (qword_1EE28C050 != -1)
    {
      OUTLINED_FUNCTION_1_150();
    }

    sub_1E327F454(&qword_1EE28C070, v0 + 16);
    OUTLINED_FUNCTION_13_27();
    OUTLINED_FUNCTION_16_81();
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_11_90(v8);

    return v10(v9);
  }
}

uint64_t sub_1E3B63F6C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1E3B6406C;
  }

  else
  {
    v7 = sub_1E3B646E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3B6406C()
{
  OUTLINED_FUNCTION_24();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3B640E8(uint64_t a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;

  return sub_1E38364EC(a6, v10);
}

uint64_t sub_1E3B64160(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E3B64200;

  return static LocalNotificationService.updateBadgeCount(_:)(a1);
}

uint64_t sub_1E3B64200()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = sub_1E41FE264();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

id LocalNotificationService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalNotificationService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocalNotificationService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalNotificationService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B6440C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_7_32();

  return v4(v3);
}

uint64_t sub_1E3B644B0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_7_32();

  return v4(v3);
}

uint64_t sub_1E3B64554()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;
  v3 = OUTLINED_FUNCTION_7_32();

  return v4(v3);
}

uint64_t sub_1E3B6461C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v3[1] = sub_1E327C238;

  return sub_1E3B62D50(v1);
}

uint64_t sub_1E3B646EC(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7629158;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x4242746966;
      break;
    case 3:
      v5 = 1819044198;
      break;
    case 4:
      v5 = 0x6867696548746966;
      v3 = 0xE900000000000074;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7629158;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x4242746966;
      break;
    case 3:
      v2 = 1819044198;
      break;
    case 4:
      v2 = 0x6867696548746966;
      v6 = 0xE900000000000074;
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B6483C(unsigned __int8 a1, char a2)
{
  v2 = "none";
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 1)
    {
      v5 = "Generic16x9Placeholder";
    }

    else
    {
      v5 = "MonogramPlaceholder";
    }
  }

  else
  {
    v4 = 0xD000000000000016;
    v5 = "none";
  }

  if (a2)
  {
    v2 = "Generic16x9Placeholder";
    if (a2 == 1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a2 != 1)
    {
      v2 = "MonogramPlaceholder";
    }
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B64914(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v5 = 0x6669636570736E75;
      v3 = 0xEB00000000646569;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x6D756964656DLL;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6669636570736E75;
      v6 = 0xEB00000000646569;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x6D756964656DLL;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B64A94(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1E4207B44();
  a2(a1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B64AEC()
{
  sub_1E4206014();
}

uint64_t sub_1E3B64BA0()
{
  sub_1E4206014();
}

uint64_t sub_1E3B64C20()
{
  sub_1E4206014();
}

uint64_t sub_1E3B64D08()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B64D9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B64DF0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E385EBA8(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1E3B64E18()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3B64E64(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 7629158;
      break;
    case 2:
      result = 0x4242746966;
      break;
    case 3:
      result = 1819044198;
      break;
    case 4:
      result = 0x6867696548746966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3B64F58(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3B64E18();
  *v1 = result;
  return result;
}

uint64_t sub_1E3B64F80()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3B64E64(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

id sub_1E3B64FB0()
{
  v0 = objc_opt_self();
  v1 = sub_1E4205ED4();

  v2 = [objc_opt_self() vui_videosUIBundle];
  v3 = [v0 vuiImageNamed:v1 inBundle:v2];

  return v3;
}

unint64_t sub_1E3B65098(char a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000012;
}

uint64_t sub_1E3B650E8()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3B65158(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3B650E8();
  *v1 = result;
  return result;
}

unint64_t sub_1E3B65180()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3B65098(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3B651BC()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3B65208(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6669636570736E75;
      break;
    case 2:
      result = 0x6C6C616D73;
      break;
    case 3:
      result = 0x6D756964656DLL;
      break;
    case 4:
      result = 0x656772616CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3B652A4()
{
  result = qword_1ECF33FC0;
  if (!qword_1ECF33FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33FC0);
  }

  return result;
}

unint64_t sub_1E3B652FC()
{
  result = qword_1ECF33FC8;
  if (!qword_1ECF33FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33FC8);
  }

  return result;
}

unint64_t sub_1E3B65358()
{
  result = qword_1ECF33FD0;
  if (!qword_1ECF33FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33FD0);
  }

  return result;
}

unint64_t sub_1E3B653BC()
{
  result = qword_1ECF33FD8;
  if (!qword_1ECF33FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF33FD8);
  }

  return result;
}

uint64_t sub_1E3B65478(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3B651BC();
  *v1 = result;
  return result;
}

uint64_t sub_1E3B654A0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3B65208(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

_BYTE *sub_1E3B654E0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3B655B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3B65680(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3B6579C(SEL *a1)
{
  result = sub_1E3B69040(v1, a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void ASCNavigationViewController.init(channelDetails:punchoutAction:shouldHandleVPPA:onFlowComplete:)()
{
  OUTLINED_FUNCTION_194();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v7 = v6;
  v9 = v8;
  v10 = (v0 + OBJC_IVAR___VUIASCNavigationViewController_onFlowComplete);
  *v10 = v3;
  v10[1] = v1;
  sub_1E34AF604(v3);
  type metadata accessor for ASCNavigationViewController();
  OUTLINED_FUNCTION_25();
  v13 = objc_msgSendSuper2(v11, v12);
  v14 = [v7 contentTitle];
  v15 = sub_1E4205F14();
  v17 = v16;

  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17 == 0xE000000000000000;
  }

  if (v18 || (sub_1E42079A4() & 1) != 0)
  {

    v15 = 0;
    v17 = 0;
  }

  type metadata accessor for AppInstallerHelper();
  v19 = v7;
  AppInstallerHelper.__allocating_init(punchoutAction:)();
  v21 = v20;
  v22 = v9;
  v23 = [v19 shouldPunchOutAfterAppInstallation];
  v24 = v21;
  v25 = sub_1E3B69120(v22, v15, v17, v30 & 1, v23, v24);
  v26 = *((*MEMORY[0x1E69E7D40] & *v25) + 0xA8);
  sub_1E34AF604(v4);
  v26(v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  OUTLINED_FUNCTION_5_10();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E4298880;
  *(v27 + 32) = v25;
  sub_1E3280A90(0, &qword_1EE23B250);
  v28 = v25;
  v29 = sub_1E42062A4();

  [v13 setViewControllers:v29 animated:0];
  sub_1E34AF594(v4);

  OUTLINED_FUNCTION_192();
}

void ASCNavigationViewController.__allocating_init(appName:appBundleIDs:appAdamIDs:contentTitle:shouldHandleVPPA:shouldPunchOutAfterAppInstallation:)()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_1_151();
  objc_allocWithZone(v0);
  v1 = OUTLINED_FUNCTION_8_91();
  ASCNavigationViewController.init(appName:appBundleIDs:appAdamIDs:contentTitle:shouldHandleVPPA:shouldPunchOutAfterAppInstallation:)(v1);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B65E88()
{
  v1 = (v0 + OBJC_IVAR___VUIASCNavigationViewController_onFlowComplete);
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_13_94();
  __break(1u);
}

Swift::Void __swiftcall ASCNavigationViewController.viewDidLoad()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASCNavigationViewController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id ASCNavigationViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id ASCNavigationViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id sub_1E3B6617C()
{
  v1 = OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    [v4 setTextAlignment_];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    [v4 setTextColor_];
    [v4 setAdjustsFontSizeToFitWidth_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1E3B66288()
{
  OUTLINED_FUNCTION_31_1();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = *(v12 + 24);
  v14 = *(v12 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v12, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v22(v19, v11, v9, v7, v5, v3, v0, v15, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B663B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  OUTLINED_FUNCTION_194();
  v43 = v32;
  v44 = v33;
  OUTLINED_FUNCTION_1_151();
  swift_unknownObjectWeakInit();
  *(v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel) = 0;
  v34 = (v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo);
  v34[3] = &type metadata for ExternalAppInstallerVCConstructor;
  v34[4] = &off_1F5D72D38;
  v35 = swift_allocObject();
  *v34 = v35;
  v35[2] = v31;
  v35[3] = v30;
  v35[4] = v28;
  v35[5] = v29;
  v36 = (v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle);
  *v36 = v27;
  v36[1] = v26;
  *(v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldHandleVPPA) = v43;
  *(v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldPunchOutAfterAppInstallation) = v44;
  *(v25 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper) = a25;
  type metadata accessor for TVAppInstallerViewController();
  v37 = a25;
  OUTLINED_FUNCTION_25();
  v40 = objc_msgSendSuper2(v38, v39);
  v41 = *((*MEMORY[0x1E69E7D40] & *v40) + 0x240);
  v42 = v40;
  v41();
  sub_1E3B66590();
  sub_1E3B66C18();
  sub_1E3B669B0();
  [v42 setModalPresentationStyle_];

  OUTLINED_FUNCTION_192();
}

void sub_1E3B66510()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel) = 0;
  OUTLINED_FUNCTION_13_94();
  __break(1u);
}

void sub_1E3B66590()
{
  v2 = v0;
  sub_1E3B66778();
  OUTLINED_FUNCTION_30_44([objc_allocWithZone(VUILocalizationManager) init]);
  v4 = v3;

  if (v4)
  {
    sub_1E327F454(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v5 = OUTLINED_FUNCTION_15_90();
    v7 = v6(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      __swift_destroy_boxed_opaque_existential_1(v19);
      v11 = *(v2 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle + 8);
      if (v11)
      {
        v12 = *(v2 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1E4299720;
        v14 = MEMORY[0x1E69E6158];
        *(v13 + 56) = MEMORY[0x1E69E6158];
        v15 = sub_1E3283528();
        *(v13 + 32) = v12;
        *(v13 + 40) = v11;
        *(v13 + 96) = v14;
        *(v13 + 104) = v15;
        *(v13 + 64) = v15;
        *(v13 + 72) = v9;
        *(v13 + 80) = v10;

        v16 = sub_1E4205F44();
        v18 = v17;

        (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v16, v18);
      }

      else
      {
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }
}

void *sub_1E3B66778()
{
  sub_1E327F454(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo, v25);
  v1 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v2 = OUTLINED_FUNCTION_50();
  result = v3(v2, v1);
  v5 = 0;
  v6 = result[2];
  v18 = result + 4;
  v19 = result;
  v17 = v6;
  while (v5 != v6)
  {
    if (v5 >= v19[2])
    {
      goto LABEL_24;
    }

    v7 = &v18[2 * v5];
    v9 = *v7;
    v8 = v7[1];
    v10 = objc_opt_self();

    result = [v10 defaultAppLibrary];
    if (!result)
    {
      goto LABEL_25;
    }

    v20 = v5;
    result = sub_1E3B690B8(result);
    if (!result)
    {
      goto LABEL_26;
    }

    v11 = result;
    v12 = result[2];
    if (v12)
    {
      v13 = 0;
      v14 = (result + 4);
      while (v13 < v11[2])
      {
        sub_1E328438C(v14, v24);
        sub_1E328438C(v24, v23);
        if (swift_dynamicCast())
        {
          if (v21 == v9 && v22 == v8)
          {

            __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_20:

            v5 = v20;
            v6 = v17;
            goto LABEL_21;
          }

          v16 = sub_1E42079A4();

          result = __swift_destroy_boxed_opaque_existential_1(v24);
          if (v16)
          {
            goto LABEL_20;
          }
        }

        else
        {
          result = __swift_destroy_boxed_opaque_existential_1(v24);
        }

        ++v13;
        v14 += 32;
        if (v12 == v13)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_18:
    v5 = v20 + 1;

    v6 = v17;
  }

LABEL_21:
  __swift_destroy_boxed_opaque_existential_1(v25);
  return (v5 != v6);
}

void sub_1E3B669B0()
{
  v1 = v0;
  sub_1E327F454(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo, v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (*((*(v3 + 16))(v2, v3) + 16))
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_1E3280A90(0, &qword_1ECF33FE8);
  v4 = sub_1E3B66B3C();
  sub_1E3280A90(0, &qword_1ECF33FF0);
  v5 = *MEMORY[0x1E698B360];
  v6 = *MEMORY[0x1E698B348];
  v7 = v4;
  v8 = sub_1E3B66BB0(v7, v5, v6);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(v8);
}

id sub_1E3B66B3C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithStringValue_];

  return v2;
}

id sub_1E3B66BB0(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithID:a1 kind:a2 context:a3];

  return v6;
}

uint64_t sub_1E3B66C18()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);

  v2(sub_1E3B69990, v1);
}

void sub_1E3B66CC4()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldPunchOutAfterAppInstallation);
    v12 = sub_1E324FBDC();
    v13 = *(v2 + 16);
    if (v11 == 1)
    {
      v13(v8, v12, v0);
      v14 = sub_1E41FFC94();
      v15 = sub_1E4206814();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1E323F000, v14, v15, "AppInstallerViewController: onAppInstall triggered with punchout", v16, 2u);
        MEMORY[0x1E69143B0](v16, -1, -1);
      }

      (*(v2 + 8))(v8, v0);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        sub_1E327F454(v17 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo, v36);

        v19 = v37;
        v20 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v35[2] = (*(v20 + 24))(v19, v20);
        v33 = 0;
        v34 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
        sub_1E383ADA0();
        sub_1E38D2054(&v33, v35);

        v21 = v35[0];
        v22 = v35[1];
        __swift_destroy_boxed_opaque_existential_1(v36);
        if (v22)
        {
          v23 = [objc_opt_self() sharedInstance];
          sub_1E37FB7F0(v21, v22, v23, &selRef_setExitEventDestinationUrl_);
        }
      }

      v24 = *((*MEMORY[0x1E69E7D40] & *v10) + 0xA0);
      v25 = *(v10 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper);
      v26 = v10;
      v24();

      OUTLINED_FUNCTION_75();
      sub_1E3C893A0();
      v27 = OUTLINED_FUNCTION_75();
      sub_1E34AF594(v27);
    }

    else
    {
      v13(v5, v12, v0);
      v28 = sub_1E41FFC94();
      v29 = sub_1E4206814();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1E323F000, v28, v29, "AppInstallerViewController: onAppInstall triggered without punchout", v30, 2u);
        MEMORY[0x1E69143B0](v30, -1, -1);
      }

      (*(v2 + 8))(v5, v0);
      v31 = *((*MEMORY[0x1E69E7D40] & *v10) + 0xA0);
      v25 = v10;
      v32 = v31();

      if (v32)
      {
        v32(1);
        sub_1E34AF594(v32);
      }
    }
  }
}

uint64_t sub_1E3B670F4()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v1[3] = sub_1E4206434();
  v1[4] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3B67188, v3, v2);
}

uint64_t sub_1E3B67188()
{
  OUTLINED_FUNCTION_27_2();
  v2 = sub_1E4206424();
  *(v1 + 56) = v2;
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_32_47(v3);
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  v4[1] = sub_1E3B6728C;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v1 + 80, v2, v5, 0xD000000000000023, 0x80000001E4273180, sub_1E3B697B8, v0, v6);
}

uint64_t sub_1E3B6728C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E3B673D8, v6, v5);
}

uint64_t sub_1E3B673D8()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1E3B67438()
{
  OUTLINED_FUNCTION_31_1();
  v28 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_12_84();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = [Strong presentingViewController], v14, v15))
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationController];
      if (v18)
      {
        v19 = v18;
        type metadata accessor for ASCNavigationViewController();
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
        v19 = v17;
      }
    }

    (*(v3 + 16))(v6, v28, v1);
    v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v25 = swift_allocObject();
    (*(v3 + 32))(v25 + v24, v6, v1);
    v29[4] = sub_1E3B69854;
    v29[5] = v25;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 1107296256;
    v29[2] = sub_1E329EEC4;
    v29[3] = &block_descriptor_57;
    v26 = _Block_copy(v29);

    [v15 dismissViewControllerAnimated:1 completion:v26];
    _Block_release(v26);
  }

  else
  {
    v20 = sub_1E324FBDC();
    (*(v9 + 16))(v12, v20, v7);
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1E323F000, v21, v22, "AppInstallerViewController: Failed to get the navigation controller", v23, 2u);
      MEMORY[0x1E69143B0](v23, -1, -1);
    }

    (*(v9 + 8))(v12, v7);
    LOBYTE(v29[0]) = 0;
    sub_1E42063D4();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B677B8()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v1[3] = sub_1E4206434();
  v1[4] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3B6784C, v3, v2);
}

uint64_t sub_1E3B6784C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = sub_1E4206424();
  *(v1 + 56) = v2;
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_32_47(v3);
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  v4[1] = sub_1E3B67958;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v1 + 80, v2, v5, 0x56746E6573657270, 0xED00002928415050, sub_1E3B69668, v0, v6);
}

uint64_t sub_1E3B67958()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E3B699A0, v6, v5);
}

void sub_1E3B67AA4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_12_84();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-v6];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v9 = Strong;
  v10 = [Strong presentingViewController];

  if (!v10)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11 || (v12 = v11, v13 = swift_unknownObjectWeakLoadStrong(), v12, !v13))
  {

LABEL_8:
    v21[8] = 0;
    sub_1E42063D4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper);

    (*(v4 + 16))(v7, v1, v2);
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v10;
    *(v18 + 24) = v13;
    (*(v4 + 32))(v18 + v17, v7, v2);
    v19 = v10;
    v20 = v13;
    sub_1E3C88978(sub_1E3B69670, v18);
  }

  else
  {
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B67CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_12_84();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_318();
  v36 = sub_1E4206474();
  OUTLINED_FUNCTION_31_41(v36);
  (*(v30 + 16))(v33, v23, v28);
  sub_1E4206434();
  v37 = v27;
  v38 = v25;
  v39 = sub_1E4206424();
  v40 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E69E85E0];
  *(v41 + 2) = v39;
  *(v41 + 3) = v42;
  *(v41 + 4) = v37;
  *(v41 + 5) = v38;
  (*(v30 + 32))(&v41[v40], v33, v28);
  v43 = OUTLINED_FUNCTION_26_51();
  sub_1E376FE58(v43, v44, v45, v46, v41);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B67E7C()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v0[13] = *(v5 + 64);
  v0[14] = swift_task_alloc();
  sub_1E4206434();
  v0[15] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3B67F80, v7, v6);
}

uint64_t sub_1E3B67F80()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  (*(v2 + 16))(v1, v4, v3);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v1, v3);
  v0[6] = sub_1E3B6999C;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E378AEA4;
  v0[5] = &block_descriptor_67;
  v9 = _Block_copy(v0 + 2);

  [v6 presentViewController:v5 animated:1 completion:v9];
  _Block_release(v9);

  OUTLINED_FUNCTION_54();

  return v10();
}

void sub_1E3B68100()
{
  v2 = v0;
  sub_1E3B66778();
  OUTLINED_FUNCTION_30_44([objc_allocWithZone(VUILocalizationManager) init]);
  v4 = v3;

  if (v4)
  {
    sub_1E327F454(&v0[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo], v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v5 = OUTLINED_FUNCTION_15_90();
    v7 = v6(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      __swift_destroy_boxed_opaque_existential_1(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1E4297BE0;
      v12 = MEMORY[0x1E69E6158];
      *(v11 + 56) = MEMORY[0x1E69E6158];
      v13 = sub_1E3283528();
      *(v11 + 64) = v13;
      *(v11 + 32) = v9;
      *(v11 + 40) = v10;

      v14 = sub_1E4205F44();
      sub_1E37FB7F0(v14, v15, v2, &selRef_setTitle_);
      v16 = sub_1E3B6617C();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1E4297BE0;
      *(v17 + 56) = v12;
      *(v17 + 64) = v13;
      *(v17 + 32) = v9;
      *(v17 + 40) = v10;
      sub_1E4205F44();

      v18 = OUTLINED_FUNCTION_75();
      sub_1E37FB7F0(v18, v19, v16, v20);

      v21 = [v2 navigationItem];
      [v21 setTitleView_];
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }
}

id sub_1E3B6831C()
{
  v0 = [objc_opt_self() topPresentedViewController];

  return v0;
}

id _s8VideosUI27ASCNavigationViewControllerC7nibName6bundleACSSSg_So8NSBundleCSgtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1E3B68484(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *))
{
  if (a3)
  {
    sub_1E4205F14();
  }

  a5(a4);
  __break(1u);
}

void sub_1E3B684B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_navigationViewController);

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel);
}

id sub_1E3B68540(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E3B685EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  v8 = sub_1E4205F14();
  v10 = v9;
  if (v8 == sub_1E4205F14() && v10 == v11)
  {
    _Block_copy(a5);
  }

  else
  {
    v13 = sub_1E42079A4();
    _Block_copy(a5);

    if (v13)
    {
      goto LABEL_19;
    }

    v14 = sub_1E4205F14();
    v16 = v15;
    if (v14 != sub_1E4205F14() || v16 != v17)
    {
      v19 = sub_1E42079A4();

      if (v19)
      {
        goto LABEL_19;
      }

      v20 = sub_1E4205F14();
      v22 = v21;
      if (v20 != sub_1E4205F14() || v22 != v23)
      {
        v25 = sub_1E42079A4();

        if ((v25 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_19:
  if (*(a4 + OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldHandleVPPA) == 1)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = sub_1E3B69624;
    v27[3] = v7;
    v27[4] = v26;

    sub_1E3C88C3C();

    goto LABEL_22;
  }

LABEL_21:
  a5[2](a5, 0);
LABEL_22:

  _Block_release(a5);
}

uint64_t sub_1E3B68874(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_318();
  if ((a1 & 1) == 0)
  {
    return a2(v10);
  }

  v11 = sub_1E4206474();
  OUTLINED_FUNCTION_31_41(v11);
  sub_1E4206434();

  v12 = sub_1E4206424();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a4;
  v13[5] = a2;
  v13[6] = a3;
  v15 = OUTLINED_FUNCTION_26_51();
  sub_1E376FE58(v15, v16, v17, v18, v19);
}

uint64_t sub_1E3B6897C()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  sub_1E4206434();
  v0[11] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v5 = sub_1E42063B4();
  v0[12] = v5;
  v0[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E3B68A10, v5, v4);
}

uint64_t sub_1E3B68A10()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_1E3B68AF4;

    return sub_1E3B670F4();
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3B68AF4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *(v0 + 112);
  v5 = *v1;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 144) = v7;

  OUTLINED_FUNCTION_66_1();
  v10 = *(v9 + 104);
  v11 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E3B68C28, v11, v10);
}

uint64_t sub_1E3B68C28()
{
  OUTLINED_FUNCTION_24();
  if (*(v0 + 144) == 1 && (OUTLINED_FUNCTION_25(), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 128) = Strong) != 0))
  {
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_1E3B68D18;

    return sub_1E3B677B8();
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3B68D18()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *(v0 + 128);
  v5 = *v1;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 145) = v7;

  OUTLINED_FUNCTION_66_1();
  v10 = *(v9 + 104);
  v11 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E3B68E4C, v11, v10);
}

uint64_t sub_1E3B68E4C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 145);

  if (v1 == 1)
  {
    (*(v0 + 72))(0);
  }

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3B68F78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1E41FE264();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1E3B68FDC(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3B69040(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1E42062B4();

  return v4;
}

uint64_t sub_1E3B690B8(void *a1)
{
  v2 = [a1 allAppBundleIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

void *sub_1E3B69120(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6)
{
  v12 = type metadata accessor for TVAppInstallerViewController();
  v13 = objc_allocWithZone(v12);
  v22[3] = sub_1E3280A90(0, &qword_1ECF33FF8);
  v22[4] = &off_1F5D72D58;
  v22[0] = a1;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel] = 0;
  sub_1E327F454(v22, &v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo]);
  v14 = &v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle];
  *v14 = a2;
  v14[1] = a3;
  v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldHandleVPPA] = a4;
  v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldPunchOutAfterAppInstallation] = a5;
  *&v13[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper] = a6;
  v21.receiver = v13;
  v21.super_class = v12;
  v15 = a1;
  v16 = a6;
  v17 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x240);
  v19 = v17;
  v18();
  sub_1E3B66590();
  sub_1E3B66C18();
  sub_1E3B669B0();
  [v19 setModalPresentationStyle_];

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v19;
}

void *sub_1E3B692C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a6;
  v14 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  (*(v14 + 32))(&v24 - v19, v18);
  v21 = objc_allocWithZone(type metadata accessor for TVAppInstallerViewController());
  (*(v14 + 16))(v16, v20, a8);
  v22 = sub_1E3B69468(v16, a2, a3, a4, a5, v25, v21, a8, a9);
  (*(v14 + 8))(v20, a8);
  return v22;
}

void *sub_1E3B69468(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v25[3] = a8;
  v25[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a1, a8);
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController____lazy_storage___titleLabel] = 0;
  sub_1E327F454(v25, &a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInfo]);
  v18 = &a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_contentTitle];
  *v18 = a2;
  v18[1] = a3;
  a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldHandleVPPA] = a4;
  a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_shouldPunchOutAfterAppInstallation] = a5;
  *&a7[OBJC_IVAR____TtC8VideosUI28TVAppInstallerViewController_appInstallerHelper] = a6;
  v24.receiver = a7;
  v24.super_class = type metadata accessor for TVAppInstallerViewController();
  v19 = a6;
  v20 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x240);
  v22 = v20;
  v21();
  sub_1E3B66590();
  sub_1E3B66C18();
  sub_1E3B669B0();
  [v22 setModalPresentationStyle_];

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v22;
}

uint64_t objectdestroy_6Tm_1()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

void sub_1E3B69670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_17_2(v21);
  v28 = *(v20 + 16);
  v29 = *(v20 + 24);
  v30 = v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80));

  sub_1E3B67CD0(v28, v29, v30, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1E3B696DC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  v2[1] = sub_1E388EDB0;

  return sub_1E3B67E7C();
}

uint64_t objectdestroy_48Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E3B69858()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  return sub_1E42063D4();
}

uint64_t sub_1E3B698F0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E37E1058;

  return sub_1E3B6897C();
}

uint64_t OUTLINED_FUNCTION_32_47(uint64_t a1)
{
  *(v1 + 64) = a1;

  return swift_unknownObjectWeakInit();
}

uint64_t (*sub_1E3B69A04(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1E3B699CC();
  a1[1] = v3;
  return sub_1E3B69A4C;
}

uint64_t sub_1E3B69A90(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  result = a1();
  if (!v4)
  {
    return a2(result);
  }

  return result;
}

uint64_t (*sub_1E3B69AD0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1E3B69A64();
  a1[1] = v3;
  return sub_1E3B69B18;
}

uint64_t sub_1E3B69B30(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t sub_1E3B69BB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes);
  v3 = v2;
  if (v2 != 1)
  {
LABEL_24:
    sub_1E37C3ADC(v2);
    return v3;
  }

  v4 = v0;
  v5 = [*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity_mediaCollection) items];
  sub_1E3923D18();
  v6 = sub_1E42062B4();

  v7 = sub_1E32AE9B0(v6);
  if (!v7)
  {

    v3 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v15 = *(v4 + v1);
    *(v4 + v1) = v3;

    sub_1E37C3B04(v15);
    goto LABEL_24;
  }

  v8 = v7;
  result = type metadata accessor for LibMediaEntityFactory();
  if (v8 >= 1)
  {
    v10 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E6911E60](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      sub_1E3B46CE8(v11, 0, v19);
      if (v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
        if (swift_dynamicCast())
        {
          if (*(&v17 + 1))
          {
            sub_1E37DADF4(&v16, v19);
            sub_1E327F454(v19, &v16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_1E3AF90C0(0, v3[2] + 1, 1, v3);
            }

            v14 = v3[2];
            v13 = v3[3];
            if (v14 >= v13 >> 1)
            {
              v3 = sub_1E3AF90C0((v13 > 1), v14 + 1, 1, v3);
            }

            __swift_destroy_boxed_opaque_existential_1(v19);
            v3[2] = v14 + 1;
            sub_1E37DADF4(&v16, &v3[5 * v14 + 4]);
            goto LABEL_20;
          }
        }

        else
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
        }
      }

      else
      {

        sub_1E325F748(v19, &qword_1ECF28EB8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0;
      }

      sub_1E325F748(&v16, &qword_1ECF2CE70);
LABEL_20:
      if (v8 == ++v10)
      {

        v4 = v0;
        v2 = 1;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B69E70(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes);
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes) = a1;
  return sub_1E37C3B04(v2);
}

uint64_t (*sub_1E3B69E88(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3B69BB0();
  return sub_1E3B69ED0;
}

uint64_t sub_1E3B69ED0(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes);
  *(v2 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes) = *a1;
  if (a2)
  {

    sub_1E37C3B04(v3);
  }

  else
  {

    return sub_1E37C3B04(v3);
  }
}

uint64_t sub_1E3B69F48()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_];
    if (v5)
    {
      sub_1E4207264();
      v5 = swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    OUTLINED_FUNCTION_0_119(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20, v22, *(&v22 + 1), v23);
    if (v13)
    {
      if (swift_dynamicCast())
      {
        v24[0] = v21;
        v4 = sub_1E4207944();
        v15 = v14;
LABEL_10:
        v16 = *v1;
        v17 = v1[1];
        *v1 = v4;
        v1[1] = v15;

        sub_1E37E9E48(v16, v17);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E325F748(v24, &unk_1ECF296E0);
    }

    v4 = 0;
    v15 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_1E37EA628(v2, v3);
  return v4;
}

id sub_1E3B6A0A4()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title + 8);
  v4 = v2;
  if (v3 != 1)
  {
    goto LABEL_25;
  }

  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem);
  v6 = [v5 valueForProperty_];
  if (v6)
  {
    sub_1E4207264();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v46 = 0u;
  }

  OUTLINED_FUNCTION_0_119(v6, v7, v8, v9, v10, v11, v12, v13, v39, v42, v44, *(&v44 + 1), v46);
  if (v14)
  {
    if (OUTLINED_FUNCTION_3_128())
    {
      v4 = v40;
      v15 = v43;
      v16 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v16 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    sub_1E325F748(v48, &unk_1ECF296E0);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v18 = result;
    v4 = sub_1E3741090(0x255F4E4F53414553, 0xE900000000000040, result);
    v20 = v19;

    if (!v20)
    {
      v15 = 0;
LABEL_24:
      v37 = *v1;
      v38 = v1[1];
      *v1 = v4;
      v1[1] = v15;

      sub_1E37E9E48(v37, v38);
LABEL_25:
      sub_1E37EA628(v2, v3);
      return v4;
    }

    v21 = [v5 valueForProperty_];
    if (v21)
    {
      sub_1E4207264();
      v21 = swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v47 = 0u;
    }

    v29 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_0_119(v21, v22, v23, v24, v25, v26, v27, v28, v40, v43, v45, *(&v45 + 1), v47);
    if (v30)
    {
      if (OUTLINED_FUNCTION_3_128())
      {
        v31 = v41;
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1E4297BE0;
        v48[0] = v31;
        v33 = sub_1E4207944();
        v35 = v34;
        *(v32 + 56) = v29;
        *(v32 + 64) = sub_1E3283528();
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        v4 = sub_1E4205F44();
        v15 = v36;

        goto LABEL_24;
      }
    }

    else
    {
      sub_1E325F748(v48, &unk_1ECF296E0);
    }

    v31 = 1;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B6A398(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes;
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes) = 1;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id);
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id) = xmmword_1E4297170;
  v5 = (v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title);
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title) = xmmword_1E4297170;
  v6 = [a1 representativeItem];
  if (v6)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity_mediaCollection) = a1;
    return sub_1E4028B38(v6);
  }

  else
  {

    sub_1E37C3B04(*(v1 + v3));
    sub_1E37E9E48(*v4, v4[1]);
    sub_1E37E9E48(*v5, v5[1]);
    type metadata accessor for LibMPSeasonMediaEntity();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for LibMPSeasonMediaEntity()
{
  result = qword_1ECF57890;
  if (!qword_1ECF57890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B6A504()
{
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes));

  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id), *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title + 8);

  return sub_1E37E9E48(v1, v2);
}

uint64_t *sub_1E3B6A570()
{
  v0 = sub_1E4028C28();
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage___episodes));

  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id), *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____id + 8));
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title), *(v0 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity____lazy_storage____title + 8));
  return v0;
}

uint64_t sub_1E3B6A5DC()
{
  v0 = sub_1E3B6A570();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3B6A67C(uint64_t a1)
{
  result = sub_1E3B6A6A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3B6A6A4()
{
  result = qword_1ECF34000;
  if (!qword_1ECF34000)
  {
    type metadata accessor for LibMPSeasonMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34000);
  }

  return result;
}

uint64_t sub_1E3B6A798(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 344) = a1;
}

uint64_t sub_1E3B6A830()
{
  result = (*(*v0 + 1184))();
  if (!result)
  {

    return sub_1E382EF1C();
  }

  return result;
}

uint64_t sub_1E3B6A8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a2;
  v5[43] = 0;
  v5[41] = a1;
  return sub_1E37ECC80(39, a3, a4, a5, 0, 0, 0);
}

uint64_t sub_1E3B6A980()
{
}

uint64_t sub_1E3B6A9B0()
{
  v0 = sub_1E37ED784();

  return v0;
}

uint64_t sub_1E3B6A9E8()
{
  v0 = sub_1E3B6A9B0();

  return MEMORY[0x1EEE6BDC0](v0, 352, 7);
}

uint64_t View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  v41 = a2 & 1;
  v40 = a4 & 1;
  v39 = a6 & 1;
  v38 = a8 & 1;
  v37 = a10 & 1;
  v36 = a12 & 1;
  v35 = a15 & 1;
  v19 = a1;
  v20 = a2 & 1;
  v21 = a3;
  v22 = a4 & 1;
  v23 = a5;
  v24 = a6 & 1;
  v25 = a7;
  v26 = a8 & 1;
  v27 = a9;
  v28 = a10 & 1;
  v29 = a11;
  v30 = a12 & 1;
  v31 = a13;
  v32 = a14;
  v33 = a15 & 1;
  v34 = a16;
  return MEMORY[0x1E690DE70](&v19, a17, &type metadata for ConditionalFlexibleFrameModifier, a18);
}

uint64_t View.conditionalFrame(width:height:alignment:condition:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, uint64_t a10)
{
  v21 = a2 & 1;
  v20 = a4 & 1;
  v19 = a7 & 1;
  v11 = a1;
  v12 = a2 & 1;
  v13 = a3;
  v14 = a4 & 1;
  v15 = a5;
  v16 = a6;
  v17 = a7 & 1;
  v18 = a8;
  return MEMORY[0x1E690DE70](&v11, a9, &type metadata for ConditionalFixedFrameModifier, a10);
}

uint64_t View.conditionalDynamicTypeSize(_:condition:)()
{
  v1 = OUTLINED_FUNCTION_8_92();
  v2 = type metadata accessor for ConditionalDynamicTypeSizeInRangeModifier(v1);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E37E93E8(v0, v5 - v4, &qword_1ECF34008);
  sub_1E3B6B098((v6 + *(v2 + 24)));
  OUTLINED_FUNCTION_10_85();
  OUTLINED_FUNCTION_7_124();
  return sub_1E3B6B480(v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_8_92();
  type metadata accessor for ConditionalDynamicTypeSizeModifier(v1);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(v5, v0);
  OUTLINED_FUNCTION_10_85();
  OUTLINED_FUNCTION_6_107();
  return sub_1E3B6B480(v5, v7);
}

uint64_t View.conditionalPadding(edges:length:condition:)(char a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v8 = a2;
  v9 = a3 & 1;
  v10 = a4;
  return MEMORY[0x1E690DE70](v7, a5, &type metadata for ConditionalPaddingModifier, a6);
}

double sub_1E3B6AD48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(v2 + 49) & 1) == 0 || *(v2 + 48) == 1)
  {
    sub_1E4203DA4();
  }

  sub_1E4200D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34028);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34030) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

void *sub_1E3B6AE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 113))
  {
    if (*(v2 + 112) == 1)
    {
      sub_1E4203DA4();
    }

    v11 = *v2;
    if (*(v2 + 8))
    {
      v11 = -INFINITY;
    }

    v6 = *(v2 + 16);
    v12 = *(v2 + 24);
    v10 = v6;
    if (*(v2 + 24))
    {
      v10 = v11;
    }

    v7 = *(v2 + 48);
    v13 = *(v2 + 56);
    v5 = *(v2 + 80);
    v8 = *(v2 + 88);
    v9 = *(v2 + 32);
    if (*(v2 + 40))
    {
      v9 = v10;
    }
  }

  else
  {
    sub_1E4203DA4();
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 1;
    v9 = -INFINITY;
    v10 = -INFINITY;
    v11 = -INFINITY;
    v12 = 1;
    v13 = 1;
  }

  if (v11 > v10 || v10 > v9)
  {
    goto LABEL_26;
  }

  v15 = v7;
  if (v13)
  {
    v15 = -INFINITY;
  }

  v16 = v6;
  if (v12)
  {
    v16 = v15;
  }

  v17 = v5;
  if (v8)
  {
    v17 = v16;
  }

  if (v15 > v16 || v16 > v17)
  {
LABEL_26:
    sub_1E4206804();
    v19 = a2;
    v20 = sub_1E42026D4();
    sub_1E41FFB84();

    a2 = v19;
  }

  sub_1E42015C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34018);
  OUTLINED_FUNCTION_2();
  (*(v21 + 16))(a2, a1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34020);
  return memcpy((a2 + *(v22 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3B6B098@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34070);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  v26 = sub_1E42012E4();
  sub_1E3B6BA80(v26, v15);

  OUTLINED_FUNCTION_23_25(v15);
  if (v27)
  {
    (*(v18 + 104))(v25, *MEMORY[0x1E697E718], v16);
    OUTLINED_FUNCTION_23_25(v15);
    if (!v27)
    {
      sub_1E325F6F0(v15, &qword_1ECF2A250);
    }
  }

  else
  {
    (*(v18 + 32))(v25, v15, v16);
  }

  v28 = sub_1E42012E4();
  sub_1E3B6BCBC(v28, v12);

  OUTLINED_FUNCTION_23_25(v12);
  if (v27)
  {
    (*(v18 + 104))(v22, *MEMORY[0x1E697E728], v16);
    OUTLINED_FUNCTION_23_25(v12);
    if (!v27)
    {
      sub_1E325F6F0(v12, &qword_1ECF2A250);
    }
  }

  else
  {
    (*(v18 + 32))(v22, v12, v16);
  }

  sub_1E3AC6100();
  result = sub_1E4205E34();
  if (result)
  {
    v30 = *(v18 + 32);
    v30(v8, v25, v16);
    v30(&v8[*(v1 + 48)], v22, v16);
    sub_1E37E93E8(v8, v5, &qword_1ECF34070);
    v31 = *(v1 + 48);
    v32 = v37;
    v30(v37, v5, v16);
    v33 = *(v18 + 8);
    v33(v5 + v31, v16);
    sub_1E3B6C31C(v8, v5);
    v34 = *(v1 + 48);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34008);
    v30(&v32[*(v35 + 36)], (v5 + v34), v16);
    return (v33)(v5, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3B6B480(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3B6B4D8()
{
  result = qword_1ECF578A0;
  if (!qword_1ECF578A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF578A0);
  }

  return result;
}

unint64_t sub_1E3B6B52C()
{
  result = qword_1ECF578A8;
  if (!qword_1ECF578A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF578A8);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06VideosB041ConditionalDynamicTypeSizeInRangeModifier33_4559761B36531BADA5588625B8B287C4LLVGAaBHPxAaBHD1__AhA0cM0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1E42013A4();
  sub_1E3B6B604(a3, a4);
  OUTLINED_FUNCTION_60();
  return swift_getWitnessTable();
}

uint64_t sub_1E3B6B604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06VideosB032ConditionalFlexibleFrameModifier33_4559761B36531BADA5588625B8B287C4LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1E42013A4();
  a3();
  OUTLINED_FUNCTION_60();
  return swift_getWitnessTable();
}

unint64_t sub_1E3B6B6A8()
{
  result = qword_1ECF578C0;
  if (!qword_1ECF578C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF578C0);
  }

  return result;
}