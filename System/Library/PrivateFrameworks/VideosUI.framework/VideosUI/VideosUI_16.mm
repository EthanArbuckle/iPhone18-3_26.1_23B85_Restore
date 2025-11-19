void sub_1E3750800()
{
  *(v0 + 184) = 0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3750878()
{
}

uint64_t sub_1E37508F0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3750970()
{
  v0 = sub_1E37508F0();

  return MEMORY[0x1EEE6BDC0](v0, 193, 7);
}

unint64_t sub_1E37509A4()
{
  result = qword_1ECF28EB0;
  if (!qword_1ECF28EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28EB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateEventMonitorController.MonitoringReason(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ListType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for UIEdgeInsets()
{
  if (!qword_1EE23B390)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B390);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3750BF0(uint64_t a1, int a2)
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

uint64_t sub_1E3750C10(uint64_t result, int a2, int a3)
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

uint64_t sub_1E3750C78(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_titleDisplayMode;
  sub_1E42022F4();
  v5 = OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_libViewLayout;
  *(v1 + v5) = *sub_1E3C8DBAC();

  v6 = [a1 contextData];
  if (!v6 || (v7 = sub_1E3751A20(v6)) == 0 || (v8 = sub_1E374BD08(v7), , !v8))
  {

LABEL_17:
    v27 = v1 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_mediaEntity;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0;

    sub_1E4202314();
    OUTLINED_FUNCTION_2();
    (*(v28 + 8))(v1 + v4);

    sub_1E325F6F0(v27, &qword_1ECF28EB8);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = sub_1E4205F14();
  sub_1E3277E60(v9, v10, v8, &v30);

  if (!v31)
  {

    sub_1E325F6F0(&v30, &unk_1ECF296E0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
LABEL_16:
    sub_1E325F6F0(&v32, &qword_1ECF28EB8);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_15;
  }

  if (!*(&v33 + 1))
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1E3251BE8(&v32, v35);
  sub_1E327F454(v35, v1 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_mediaEntity);
  v11 = v36;
  v12 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v13 = (*(v12 + 32))(v11, v12);
  v15 = v14;
  swift_beginAccess();
  *v3 = v13;
  v3[1] = v15;

  sub_1E410D51C();
  v17 = v16;
  if (v16)
  {
    v18 = v36;
    v19 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v20 = (*(v19 + 72))(v18, v19);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      type metadata accessor for TextViewModel();
      *(&v33 + 1) = MEMORY[0x1E69E6158];
      *&v32 = v22;
      *(&v32 + 1) = v23;

      v24 = sub_1E3C27638(9, &v32, v17, 0, 0);
      if (v24)
      {
        v25 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1E4298880;
        *(v26 + 32) = v25;

        ViewModel.children.setter(v26);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v17;
}

uint64_t sub_1E375105C()
{
  v1 = v0;
  v37 = sub_1E4202314();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_5_0();

  v4 = sub_1E39C02B0();

  v34[1] = v3;
  v5 = sub_1E39C02B0();
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_libViewLayout);
  OUTLINED_FUNCTION_5_0();
  v7 = *(v6 + 104);
  sub_1E3751BA0(v1 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_mediaEntity, &v39);
  if (v40)
  {
    sub_1E3251BE8(&v39, v41);
    sub_1E3751C10();
    sub_1E327F454(v41, &v39);

    v8 = sub_1E37FAFF8();
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {

    sub_1E325F6F0(&v39, &qword_1ECF28EB8);
    v8 = 0;
  }

  type metadata accessor for LibViewModel();
  v9 = (v1 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_title);
  OUTLINED_FUNCTION_5_0();
  v11 = *v9;
  v10 = v9[1];
  v12 = v8;

  v13 = sub_1E3B76C80(59, v11, v10, v5, v7, v8, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v15 = sub_1E3C7CCAC(0);
  v16 = MEMORY[0x1E69E6158];
  *(inited + 32) = v15;
  *(inited + 40) = v17;
  *(inited + 72) = v16;
  strcpy((inited + 48), "symbol://xmark");
  *(inited + 63) = -18;
  v18 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();

  v19 = sub_1E3F5321C(39, v18, v13);
  if (!v19)
  {

    if (v13)
    {
      goto LABEL_8;
    }

LABEL_11:
    if (v5)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v20 = v19;
  if (!v13)
  {

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E4298880;
  *(v21 + 32) = v20;
  v22 = (*v13 + 472);
  v34[0] = v7;
  v23 = *v22;

  v23(v21);

LABEL_8:
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E4298880;
    *(v24 + 32) = v13;
    v25 = *(*v5 + 472);

    v25(v24);

LABEL_12:

    v26 = MEMORY[0x1E69E7CC8];
    swift_isUniquelyReferenced_nonNull_native();
    v38 = v26;
    sub_1E37518B8(v5, 101);
    v27 = v38;
    goto LABEL_16;
  }

LABEL_14:
  v27 = MEMORY[0x1E69E7CC8];
  sub_1E3740AE8(101);
  if (v28)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v38 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780);
    sub_1E4207644();
    v27 = v38;
    sub_1E37414E0();
    sub_1E4207664();
  }

LABEL_16:
  if (v4)
  {
    v29 = *(*v4 + 496);

    v29(v27);
  }

  else
  {
  }

  type metadata accessor for NavigationBarObservableModel(0);
  v30 = *(*sub_1E39EE6D8() + 200);

  v30(v31);
  v32 = OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_titleDisplayMode;
  OUTLINED_FUNCTION_5_0();
  (*(v35 + 16))(v36, v1 + v32, v37);
  j__OUTLINED_FUNCTION_18();
  sub_1E39EFBA8();
}

uint64_t sub_1E3751728()
{

  v1 = OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_titleDisplayMode;
  sub_1E4202314();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  return sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_mediaEntity, &qword_1ECF28EB8);
}

uint64_t sub_1E37517C0()
{
  v0 = TemplateViewModel.deinit();

  v1 = OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_titleDisplayMode;
  sub_1E4202314();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI28LibDescriptiveAlertViewModel_mediaEntity, &qword_1ECF28EB8);
  return v0;
}

uint64_t sub_1E3751864()
{
  v0 = sub_1E37517C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E37518B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E3740AE8(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E3740AE8(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1E37519DC(v9, a2, a1, v13);
  }
}

unint64_t sub_1E37519DC(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1E3751A20(void *a1)
{
  v2 = [a1 contextDataDict];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

uint64_t type metadata accessor for LibDescriptiveAlertViewModel()
{
  result = qword_1ECF43C18;
  if (!qword_1ECF43C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3751AEC()
{
  result = sub_1E4202314();
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

uint64_t sub_1E3751BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3751C10()
{
  result = qword_1EE23B140;
  if (!qword_1EE23B140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B140);
  }

  return result;
}

uint64_t sub_1E3751C54(uint64_t result)
{
  if (!result)
  {
    type metadata accessor for ButtonLayout();
    return sub_1E3BBB724();
  }

  return result;
}

uint64_t sub_1E3751C88(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_26_0();
  (*(v3 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v4 || (sub_1E3751DB0(), (sub_1E4205E84() & 1) == 0))
  {
    v5 = 1;
    if (a2 != 2)
    {
      sub_1E3751D5C();
      v5 = sub_1E4205E84() ^ 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1E3751D5C()
{
  result = qword_1ECF28EC0;
  if (!qword_1ECF28EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28EC0);
  }

  return result;
}

unint64_t sub_1E3751DB0()
{
  result = qword_1EE285648[0];
  if (!qword_1EE285648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE285648);
  }

  return result;
}

uint64_t sub_1E3751E04()
{
  OUTLINED_FUNCTION_28_7();
  sub_1E4200B64();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1856))();
  if (v5 == 5)
  {
    OUTLINED_FUNCTION_19_10();

    __asm { BRAA            X3, X16 }
  }

  sub_1E3BC0A2C(v5, v3);
  v7 = OUTLINED_FUNCTION_18_7();
  return v8(v7);
}

uint64_t sub_1E3751F28()
{
  OUTLINED_FUNCTION_28_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28EC8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  OUTLINED_FUNCTION_36();
  (*(v5 + 1880))();
  OUTLINED_FUNCTION_25_13();
  if (v7)
  {
    v8 = sub_1E4201604();
    OUTLINED_FUNCTION_29_3(v8);
    result = __swift_getEnumTagSinglePayload(v4, 1, v1);
    if (result != 1)
    {
      return sub_1E3752044(v4);
    }
  }

  else
  {
    sub_1E3BC0034(v6);
    v9 = sub_1E4201604();
    OUTLINED_FUNCTION_23_10(v9);
    return (*(v10 + 32))(v0, v4, v1);
  }

  return result;
}

uint64_t sub_1E3752044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3752144()
{
  OUTLINED_FUNCTION_26_0();
  (*(v0 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    sub_1E3751DB0();
    v2 = sub_1E4205E84() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1E37521D8(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
  }

  v2 = *(*v1 + 744);
  swift_retain_n();

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_36();
  (*(v5 + 816))();
  OUTLINED_FUNCTION_36();
  (*(v6 + 792))();

  return v1;
}

uint64_t sub_1E375231C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_1E4202354();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28ED0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v10 = v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28ED8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v13 = v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28EE0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v75 = v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28EE8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v76 = v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28EF0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v65 = v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28EF8);
  OUTLINED_FUNCTION_0_10();
  v68 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v67 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F00);
  OUTLINED_FUNCTION_0_10();
  v72 = v24;
  v73 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v71 = v26;
  if ((sub_1E4202374() & 1) == 0 || (v27 = (*a1 + 816), v28 = *v27, (*v27)(), OUTLINED_FUNCTION_13_5(), v29))
  {
    v31 = *(*a1 + 792);
    goto LABEL_7;
  }

  v28();
  OUTLINED_FUNCTION_13_5();
  if (v29)
  {
    v31 = *(*a1 + 792);
LABEL_7:
    v30 = v31();
  }

  v32 = v30;
  (*(*a1 + 792))();
  OUTLINED_FUNCTION_13_5();
  if (!v29)
  {
    v33 = v32;
  }

  v61 = v33;
  sub_1E4202364();
  v34 = sub_1E3752D54();
  sub_1E38838AC(a1, 2u, 2, v34, v10);
  OUTLINED_FUNCTION_15_5();
  v35(v7, v3);
  OUTLINED_FUNCTION_20_15();
  v37 = (*(v36 + 672))();
  OUTLINED_FUNCTION_2_2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E39B95A0(v37);

  OUTLINED_FUNCTION_15_5();
  v39(v10, v62);
  memset(v82, 0, sizeof(v82));
  v83 = 1;
  v77 = *&v62;
  v78 = *&OpaqueTypeConformance2;
  OUTLINED_FUNCTION_4_18();
  v40 = OUTLINED_FUNCTION_30_10();
  sub_1E3A6929C(v61, 0, 0, 1, v82, v63, v40);
  OUTLINED_FUNCTION_15_5();
  v41(v13, v63);
  v42 = sub_1E4202374();
  v43 = *a1;
  if ((v42 & 1) == 0)
  {
    goto LABEL_13;
  }

  v44 = (*(v43 + 864))();
  if (!v44)
  {
    v43 = *a1;
LABEL_13:
    v44 = (*(v43 + 744))();
  }

  OUTLINED_FUNCTION_7_40();
  v45 = OUTLINED_FUNCTION_30_10();
  sub_1E39B87A4(v44);

  OUTLINED_FUNCTION_15_5();
  v46(v75, v64);
  OUTLINED_FUNCTION_20_15();
  (*(v47 + 1784))();
  OUTLINED_FUNCTION_13_5();
  if (v29 || (LOBYTE(v77) = v48, sub_1E3751DB0(), (sub_1E4205E84() & 1) == 0))
  {
    v49 = 11;
  }

  else
  {
    v49 = 4;
  }

  v77 = *&v64;
  v78 = *&v45;
  OUTLINED_FUNCTION_3_16();
  v50 = OUTLINED_FUNCTION_30_10();
  sub_1E3A6929C(v49, 0, 0, 1, v82, v66, v50);
  OUTLINED_FUNCTION_15_5();
  v51(v76, v66);
  OUTLINED_FUNCTION_20_15();
  v53 = (*(v52 + 840))();
  OUTLINED_FUNCTION_7_40();
  v54 = OUTLINED_FUNCTION_30_10();
  sub_1E392F9D0(v53, v69, v54, v67);

  OUTLINED_FUNCTION_15_5();
  v55(v65, v69);
  OUTLINED_FUNCTION_20_15();
  (*(v56 + 552))(&v77);
  if ((v81 & 1) == 0)
  {
    sub_1E3952BE8(v77, v78, v79, v80);
  }

  OUTLINED_FUNCTION_1_47();
  v57 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1E3E361E8();
  (*(v68 + 8))(v67, v70);
  OUTLINED_FUNCTION_20_15();
  v59 = *(v58 + 1880);
  v59();
  OUTLINED_FUNCTION_25_13();
  if (v29 || (v84 = 1, sub_1E3753928(), (OUTLINED_FUNCTION_21_20() & 1) == 0))
  {
    v59();
    OUTLINED_FUNCTION_25_13();
    if (v29 || (v84 = 0, sub_1E3753928(), (OUTLINED_FUNCTION_21_20() & 1) == 0))
    {
      (*(*a1 + 1784))();
      OUTLINED_FUNCTION_13_5();
      if (v29)
      {
        v57 = 0;
      }

      else
      {
        v84 = 7;
        sub_1E3751DB0();
        v57 = OUTLINED_FUNCTION_21_20();
      }
    }

    else
    {
      v57 = 1;
    }
  }

  sub_1E3752DAC(v57 & 1, a2);
  return (*(v72 + 8))(v71, v73);
}

unint64_t sub_1E3752D54()
{
  result = qword_1EE2888A0;
  if (!qword_1EE2888A0)
  {
    sub_1E4202354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2888A0);
  }

  return result;
}

uint64_t sub_1E3752DAC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  if (a1)
  {
    v12 = &v11[*(v8 + 36)];
    v13 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v14 + 104))(v12, v13);
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F20) + 36)] = 256;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F00);
    OUTLINED_FUNCTION_2();
    (*(v16 + 16))(v11, v3, v15);
    sub_1E32AFB50(v11, v7);
    swift_storeEnumTagMultiPayload();
    v47 = sub_1E3753694();
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EF8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EF0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EE8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28ED8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28ED0);
    v21 = sub_1E4202354();
    v22 = sub_1E3752D54();
    v49 = v21;
    v50 = v22;
    OUTLINED_FUNCTION_2_2();
    v23 = OUTLINED_FUNCTION_16_8();
    v49 = v20;
    v50 = v23;
    OUTLINED_FUNCTION_4_18();
    v24 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_8_23(v24);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v19;
    v50 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_3_16();
    v26 = OUTLINED_FUNCTION_16_8();
    v49 = v18;
    v50 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v49 = v17;
    v50 = v27;
    OUTLINED_FUNCTION_1_47();
    v28 = OUTLINED_FUNCTION_16_8();
    v49 = v46;
    v50 = v28;
    OUTLINED_FUNCTION_10_18();
    OUTLINED_FUNCTION_27_3();
    sub_1E4201F44();
    return sub_1E32AFBB8(v11);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F00);
    OUTLINED_FUNCTION_2();
    (*(v31 + 16))(v7, v3, v30);
    swift_storeEnumTagMultiPayload();
    v47 = sub_1E3753694();
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EF8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EF0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EE8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28ED8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28ED0);
    v37 = sub_1E4202354();
    v38 = sub_1E3752D54();
    v49 = v37;
    v50 = v38;
    OUTLINED_FUNCTION_2_2();
    v39 = OUTLINED_FUNCTION_16_8();
    v49 = v36;
    v50 = v39;
    OUTLINED_FUNCTION_4_18();
    v40 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_8_23(v40);
    v41 = swift_getOpaqueTypeConformance2();
    v49 = v35;
    v50 = v41;
    OUTLINED_FUNCTION_3_16();
    v42 = OUTLINED_FUNCTION_16_8();
    v49 = v34;
    v50 = v42;
    v43 = swift_getOpaqueTypeConformance2();
    v49 = v33;
    v50 = v43;
    OUTLINED_FUNCTION_1_47();
    v44 = OUTLINED_FUNCTION_16_8();
    v49 = v32;
    v50 = v44;
    OUTLINED_FUNCTION_10_18();
    OUTLINED_FUNCTION_27_3();
    return sub_1E4201F44();
  }
}

unint64_t sub_1E37531E4(uint64_t a1)
{
  result = sub_1E375320C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E375320C()
{
  result = qword_1ECF28F08;
  if (!qword_1ECF28F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28F08);
  }

  return result;
}

unint64_t sub_1E3753288(uint64_t a1)
{
  result = sub_1E37532B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37532B0()
{
  result = qword_1EE27EF00;
  if (!qword_1EE27EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27EF00);
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

uint64_t sub_1E3753338(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

void *sub_1E3753378(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1E37533D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

void *sub_1E3753414(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 4) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E375345C()
{
  result = qword_1EE288F20;
  if (!qword_1EE288F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28F10);
    sub_1E3753694();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28ED0);
    sub_1E4202354();
    sub_1E3752D54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F20);
  }

  return result;
}

unint64_t sub_1E3753694()
{
  result = qword_1EE289978;
  if (!qword_1EE289978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28ED0);
    sub_1E4202354();
    sub_1E3752D54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E37538C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289978);
  }

  return result;
}

unint64_t sub_1E37538C4()
{
  result = qword_1EE289DF8;
  if (!qword_1EE289DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289DF8);
  }

  return result;
}

unint64_t sub_1E3753928()
{
  result = qword_1EE285638;
  if (!qword_1EE285638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285638);
  }

  return result;
}

void sub_1E37539C4()
{
  OUTLINED_FUNCTION_6_17();
  (*(v1 + 312))(0x4052800000000000, 0);
  sub_1E39537A8();
  OUTLINED_FUNCTION_18_8();
  sub_1E39537A8();
  v50 = v2;
  v51 = v3;
  v52 = v4;
  v53 = v5;
  v54 = 0;
  sub_1E39537A8();
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v48 = v9;
  v49 = 0;
  type metadata accessor for UIEdgeInsets();
  v11 = v10;
  sub_1E3C3DE00(v10);
  v39 = v42;
  v40 = v43;
  v41 = v44;
  sub_1E3C3DE00(v11);
  v33 = v36;
  v34 = v37;
  v35 = v38;
  sub_1E3C3DE00(v11);
  v27 = v30;
  v28 = v31;
  v29 = v32;
  sub_1E3C2FCB8(v26, __src);
  memcpy(v26, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v12 + 1600))(v26, 17, v13 & 1, v11);
  __src[0] = sub_1E3952C28(8.0);
  __src[1] = v14;
  __src[2] = v15;
  __src[3] = v16;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v17 + 184))(__src);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_22_3();
  v18 = *(*v0 + 680);
  v19 = v11;
  v18(v11);
  v20 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v21 = [objc_opt_self() blackColor];
  v22 = [v21 colorWithAlphaComponent_];

  [v20 setShadowColor_];
  [v20 setShadowOffset_];
  [v20 setShadowBlurRadius_];
  OUTLINED_FUNCTION_36();
  v24 = *(v23 + 608);
  v25 = v20;
  v24(v20);
}

uint64_t sub_1E3753D08()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(17);
  v9[0] = sub_1E3952C28(8.0);
  v9[1] = v1;
  v9[2] = v2;
  v9[3] = v3;
  v10 = 0;
  OUTLINED_FUNCTION_8();
  (*(v4 + 184))(v9);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2104))(3, 0);
  OUTLINED_FUNCTION_36();
  return (*(v7 + 2080))(3, 0);
}

uint64_t sub_1E3753E8C()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(19);
  sub_1E3952C94();
  v11[0] = v1;
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v12 = 0;
  OUTLINED_FUNCTION_8();
  (*(v5 + 184))(v11);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2056))(1, 0);
  v7 = [objc_opt_self() systemGray2Color];
  OUTLINED_FUNCTION_36();
  (*(v8 + 680))();
  OUTLINED_FUNCTION_36();
  return (*(v9 + 1792))(10);
}

uint64_t sub_1E3754024()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v3 + 1792))(10);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_22_3();
  v4 = *(*v1 + 680);
  v5 = v0;
  v4(v0);
  OUTLINED_FUNCTION_36();
  return (*(v6 + 2056))(1, 0);
}

uint64_t sub_1E37541C4()
{
  OUTLINED_FUNCTION_6_17();
  v2 = (*(v1 + 208))(0x4008000000000000, 0);
  v2.n128_u64[0] = 1.5;
  v14[0] = j__OUTLINED_FUNCTION_7_78(v2);
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v15 = 0;
  (*(*v0 + 560))(v14);
  sub_1E3952C10(10.0, 10.0);
  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_8();
  (*(v6 + 184))(&v13);
  v7 = objc_opt_self();
  v8 = [v7 blackColor];
  v9 = [v7 whiteColor];
  v10 = [v7 vui:v8 dynamicColorWithLightColor:v9 darkColor:?];

  OUTLINED_FUNCTION_36();
  return (*(v11 + 680))(v10);
}

uint64_t sub_1E3754344(uint64_t *a1)
{
  v1 = *a1;
  sub_1E3755B54();
  v2 = [objc_opt_self() whiteColor];
  v3 = *sub_1E3E6029C();
  v4 = OUTLINED_FUNCTION_34();
  v6 = sub_1E3E5F2F8(v4, v5);

  (*(*v1 + 752))(v6);
  v7 = (*(*v1 + 312))(0x4052800000000000, 0);
  v7.n128_u64[0] = 14.0;
  v13[0] = j__OUTLINED_FUNCTION_7_78(v7);
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v14 = 0;
  (*(*v1 + 560))(v13);
  sub_1E3952C10(8.0, 8.0);
  OUTLINED_FUNCTION_18_8();
  return (*(*v1 + 184))(&v12);
}

uint64_t sub_1E37544D4()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 1696))(21);
  sub_1E3E60364();
  OUTLINED_FUNCTION_22_3();
  v3 = *(*v1 + 680);
  v4 = v0;
  return v3(v0);
}

uint64_t sub_1E3754570(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_6_17();
  (*(v4 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(a2, 0);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_22_3();
  v6 = *(*v2 + 680);
  v7 = a2;
  return v6(a2);
}

uint64_t sub_1E3754644()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(17);
  OUTLINED_FUNCTION_36();
  (*(v1 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  return (*(v2 + 1792))(10);
}

uint64_t sub_1E375473C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3754784(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29008);
    v1 = sub_1E4207744();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v24 = *(*(a1 + 56) + v10);
    v12 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50);
    swift_dynamicCast();
    sub_1E329504C((v25 + 8), v23);
    sub_1E329504C(v23, v25);
    sub_1E4205F14();
    sub_1E4207B44();
    sub_1E4206014();
    v13 = sub_1E4207BA4();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v17) = v12;
    result = sub_1E329504C(v25, (*(v1 + 56) + 32 * v17));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double sub_1E3754A34()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = sub_1E4205F14();
  v4 = v3;
  if (v2 == sub_1E4205F14() && v4 == v5)
  {

    return 40.0;
  }

  else
  {
    v7 = sub_1E42079A4();

    result = 40.0;
    if ((v7 & 1) == 0)
    {
      return 30.0;
    }
  }

  return result;
}

uint64_t sub_1E3754B9C()
{
  v5[0] = sub_1E3952C28(32.0);
  v5[1] = v0;
  v5[2] = v1;
  v5[3] = v2;
  v6 = 0;
  OUTLINED_FUNCTION_8();
  return (*(v3 + 184))(v5);
}

uint64_t sub_1E3754C48()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(7);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1792))(10);
  OUTLINED_FUNCTION_36();
  return (*(v2 + 1984))(1);
}

uint64_t sub_1E3754D48(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v10 = v4;
    v11 = a2();
    v13 = a3();
    sub_1E41E1A64(&v13, a4, v11, &v14);

    v7 = v14;
    *(v10 + v5) = v14;
  }

  return v7;
}

uint64_t sub_1E3754E00()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(19);
  OUTLINED_FUNCTION_36();
  return (*(v1 + 1984))(1);
}

uint64_t sub_1E3754EB4()
{
  v1 = sub_1E4201674();
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = sub_1E42016B4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  sub_1E42016A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F30);
  sub_1E4201684();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_16(v5, xmmword_1E4298AD0);
  OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_16_9();
  sub_1E4201664();
  OUTLINED_FUNCTION_16_9();
  sub_1E4201654();
  OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_15_21();
  sub_1E4201664();
  OUTLINED_FUNCTION_15_21();
  OUTLINED_FUNCTION_34();
  sub_1E42016C4();
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_contentAnimationDuration) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___playItemLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___textLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___playerStatisticsTextLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___battingRecordLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___clockScoreLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___teamBarLayout) = 0;
  type metadata accessor for ViewLayout();
  v6 = sub_1E3C2F968();
  OUTLINED_FUNCTION_27_4(v6);
  OUTLINED_FUNCTION_7_41();

  OUTLINED_FUNCTION_25_14();
  type metadata accessor for TextLayout();
  v7 = sub_1E383BCC0();
  OUTLINED_FUNCTION_27_4(v7);
  OUTLINED_FUNCTION_7_41();

  OUTLINED_FUNCTION_25_14();
  v8 = sub_1E383BCC0();
  OUTLINED_FUNCTION_27_4(v8);
  OUTLINED_FUNCTION_7_41();

  OUTLINED_FUNCTION_25_14();
  v9 = sub_1E383BCC0();
  OUTLINED_FUNCTION_27_4(v9);
  OUTLINED_FUNCTION_7_41();

  OUTLINED_FUNCTION_25_14();
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemVerticalMargin) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalSpacing) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalMargin) = 0x4033000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_highlightedPlayPadding) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_bottomPadding) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_pitchIndexBottomPadding) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalSpacingAX) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalMarginAX) = 0x4037000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___errorItemLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___errorTitleLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout____lazy_storage___errorSubtitleLayout) = 0;
  v10 = sub_1E3C2F9A0();

  sub_1E3952C28(10.0);
  sub_1E3C2CC78();

  return v10;
}

id sub_1E3755264(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  if (a1)
  {
    v4 = [v2 systemGray5Color];
  }

  else
  {
    v4 = *sub_1E3E6029C();
  }

  v5 = v4;
  sub_1E3755B54();
  v6 = sub_1E3E5F2F8(v3, v5);

  return v6;
}

uint64_t sub_1E375530C(uint64_t a1)
{
  v2 = sub_1E41FE124();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E41494A8(*(a1 + 72), *(a1 + 80));
  type metadata accessor for SportsPlayByPlayItemViewData();
  sub_1E41FE114();
  v10[0] = 10;
  v10[1] = 0xE100000000000000;
  sub_1E375473C(&qword_1ECF28F60, MEMORY[0x1E6968678]);
  v7 = sub_1E42061A4();
  if (v7 == 2)
  {
    MEMORY[0x1EEE9AC00](v7);
    *&v9[-16] = v10;
    sub_1E3755EA4(sub_1E3756228, &v9[-32]);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E37554E4()
{
  v1 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_contentTransition;
  sub_1E4201704();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
}

uint64_t sub_1E37555F8()
{
  v0 = sub_1E3C36C6C();
  v1 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_contentTransition;
  sub_1E4201704();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1E375570C()
{
  v0 = sub_1E37555F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3755760()
{
  v0 = sub_1E4205F14();
  v2 = v1;
  if (v0 == sub_1E4205F14() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E42079A4();
  }

  return v5 & 1;
}

uint64_t sub_1E37557F4(uint64_t a1, id *a2)
{
  result = sub_1E4205EF4();
  *a2 = 0;
  return result;
}

uint64_t sub_1E375586C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1E69092C0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1E37558C0(uint64_t a1, id *a2)
{
  v3 = sub_1E4205F04();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E3755940(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1E69092D0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1E3755998()
{
  sub_1E4205F14();
  v0 = sub_1E4205ED4();

  return v0;
}

uint64_t sub_1E3755A0C()
{
  v0 = sub_1E4205F14();
  v1 = MEMORY[0x1E6910AA0](v0);

  return v1;
}

uint64_t sub_1E3755A44()
{
  sub_1E4205F14();
  sub_1E4206014();
}

uint64_t sub_1E3755A98(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x1E69124E0](*&a1);
}

uint64_t sub_1E3755ACC()
{
  sub_1E4205F14();
  sub_1E4207B44();
  sub_1E4206014();
  v0 = sub_1E4207BA4();

  return v0;
}

unint64_t sub_1E3755B54()
{
  result = qword_1EE23AE20;
  if (!qword_1EE23AE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AE20);
  }

  return result;
}

uint64_t sub_1E3755B98()
{
  sub_1E375473C(&qword_1ECF28F58, type metadata accessor for AttributeName);
  sub_1E375473C(&qword_1ECF28FE8, type metadata accessor for AttributeName);

  return sub_1E4207764();
}

uint64_t sub_1E3755C54@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E4205ED4();

  *a1 = v2;
  return result;
}

uint64_t sub_1E3755C9C()
{
  sub_1E375473C(&qword_1ECF28F48, type metadata accessor for TraitKey);
  sub_1E375473C(&qword_1ECF28FE0, type metadata accessor for TraitKey);

  return sub_1E4207764();
}

void *sub_1E3755D58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1E3755D68@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1E3755D74()
{
  sub_1E375473C(&qword_1ECF28FC8, type metadata accessor for Weight);
  sub_1E375473C(&qword_1ECF28FD0, type metadata accessor for Weight);
  sub_1E3756570();
  return sub_1E4207764();
}

uint64_t sub_1E3755E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4() & 1;
  }
}

uint64_t sub_1E3755EA4(uint64_t (*a1)(void *), uint64_t a2)
{
  v4 = v3;
  v28 = a1;
  v29 = a2;
  v32 = sub_1E41FE194();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E41FE124();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28FF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  (*(v8 + 16))(v10, v2, v7, v12);
  v15 = MEMORY[0x1E6968678];
  sub_1E375473C(&qword_1ECF28F60, MEMORY[0x1E6968678]);
  sub_1E4206194();
  sub_1E375473C(&qword_1ECF28FF8, v15);
  v30 = (v5 + 8);
  while (1)
  {
    v16 = v31;
    sub_1E4206724();
    sub_1E375473C(&qword_1ECF29000, MEMORY[0x1E69687E8]);
    v17 = v32;
    v18 = sub_1E4205E84();
    (*v30)(v16, v17);
    if (v18)
    {
LABEL_5:
      sub_1E37565C4(v14);
      v25 = v18 ^ 1;
      return v25 & 1;
    }

    v19 = sub_1E4206764();
    v34 = v4;
    v21 = *v20;
    v22 = v20[1];

    v19(v33, 0);
    sub_1E4206734();
    v33[0] = v21;
    v33[1] = v22;
    v23 = v34;
    v24 = v28(v33);
    v4 = v23;

    if (v23)
    {
      break;
    }

    if (v24)
    {
      goto LABEL_5;
    }
  }

  sub_1E37565C4(v14);
  return v25 & 1;
}

uint64_t type metadata accessor for SportsPlayByPlayLayout()
{
  result = qword_1ECF43D30;
  if (!qword_1ECF43D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E375629C()
{
  result = sub_1E4201704();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1E3756570()
{
  result = qword_1ECF28FD8;
  if (!qword_1ECF28FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF28FD8);
  }

  return result;
}

uint64_t sub_1E37565C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E37566A0()
{
  OUTLINED_FUNCTION_6_17();
  (*(v1 + 1184))(0x4018000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v2 + 336))(0x4051400000000000, 0);
  sub_1E3952C40();
  OUTLINED_FUNCTION_18_8();
  v3 = sub_1E3952C40();
  OUTLINED_FUNCTION_7_11(v3, v4, v5, v6);
  OUTLINED_FUNCTION_38_4();
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_32_17(v8, v9, v10, v11, v12, v13, v14, v15, v49);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v17 = *(v16 + 1600);
  v26 = OUTLINED_FUNCTION_15_22(v18, v19, v20, v21, v22, v23, v24, v25, v50);
  v17(v26);
  sub_1E3952C40();
  OUTLINED_FUNCTION_18_8();
  v27 = sub_1E3952C40();
  OUTLINED_FUNCTION_7_11(v27, v28, v29, v30);
  sub_1E3C3DE00(v0);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_32_17(v31, v32, v33, v34, v35, v36, v37, v38, v51);
  v39 = OUTLINED_FUNCTION_18();
  v47 = OUTLINED_FUNCTION_30_3(v39, v40, v41, v42, v43, v44, v45, v46, v52);
  return (v17)(v47, 0);
}

uint64_t sub_1E375685C()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 336))(0x404E800000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1184))(0x4010000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v2 + 256))(0x4066800000000000, 0);
  sub_1E3952C40();
  OUTLINED_FUNCTION_18_8();
  v3 = sub_1E3952C40();
  OUTLINED_FUNCTION_7_11(v3, v4, v5, v6);
  OUTLINED_FUNCTION_38_4();
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_32_17(v8, v9, v10, v11, v12, v13, v14, v15, v27);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v24 = OUTLINED_FUNCTION_15_22(v16, v17, v18, v19, v20, v21, v22, v23, v28);
  return v25(v24);
}

uint64_t sub_1E37569CC()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 1696))(7);
  OUTLINED_FUNCTION_36();
  (*(v3 + 1792))(10);
  sub_1E37C11CC();
  OUTLINED_FUNCTION_22_3();
  v4 = *(*v1 + 680);
  v5 = v0;
  v4(v0);
  OUTLINED_FUNCTION_36();
  return (*(v6 + 1984))(1);
}

uint64_t sub_1E3756AD0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 136) = v14;
  }

  return v1;
}

uint64_t sub_1E3756B64()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 336))(0x4057C00000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1184))(0x4010000000000000, 0);
  sub_1E3952C40();
  OUTLINED_FUNCTION_6_22();
  return (*(v2 + 184))(v4);
}

uint64_t sub_1E3756C24()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ImageLayout();
    sub_1E3BD61D8();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 144) = v14;
  }

  return v1;
}

uint64_t sub_1E3756CB8()
{
  LOBYTE(v84) = 0;
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_22_7();
  v0 = OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_12_24(v0, v1, v2, v3, v4, v5, v6, v7, 0x4046800000000000, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141);
  OUTLINED_FUNCTION_40_8(v8, v9, v10, v11, v12, v13, v14, v15, v78);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v17 = *(v16 + 1600);
  v26 = OUTLINED_FUNCTION_30_3(v18, v19, v20, v21, v22, v23, v24, v25, v79);
  v17(v26, 2);
  LOBYTE(v85) = 0;
  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_22_7();
  v27 = OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_12_24(v27, v28, v29, v30, v31, v32, v33, v34, 0x4046800000000000, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142);
  OUTLINED_FUNCTION_40_8(v35, v36, v37, v38, v39, v40, v41, v42, v80);
  v43 = OUTLINED_FUNCTION_18();
  v51 = OUTLINED_FUNCTION_30_3(v43, v44, v45, v46, v47, v48, v49, v50, v81);
  v17(v51, 3);
  LOBYTE(v86) = 0;
  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_22_7();
  v52 = OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_12_24(v52, v53, v54, v55, v56, v57, v58, v59, 0x4046800000000000, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143);
  OUTLINED_FUNCTION_40_8(v60, v61, v62, v63, v64, v65, v66, v67, v82);
  v68 = OUTLINED_FUNCTION_18();
  v76 = OUTLINED_FUNCTION_30_3(v68, v69, v70, v71, v72, v73, v74, v75, v83);
  return (v17)(v76, 6);
}

uint64_t sub_1E3756E18()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 152) = v14;
  }

  return v1;
}

uint64_t sub_1E3756EAC()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 1696))(19);
  sub_1E37C11CC();
  OUTLINED_FUNCTION_22_3();
  v3 = *(*v1 + 680);
  v4 = v0;
  v3(v0);
  OUTLINED_FUNCTION_36();
  return (*(v5 + 2056))(1, 0);
}

uint64_t sub_1E3756F7C()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 168) = v14;
  }

  return v1;
}

uint64_t sub_1E3757010()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 1696))(19);
  sub_1E37C11CC();
  OUTLINED_FUNCTION_22_3();
  v3 = *(*v1 + 680);
  v4 = v0;
  v3(v0);
  sub_1E3952C40();
  OUTLINED_FUNCTION_6_22();
  return (*(v5 + 184))(v7);
}

uint64_t sub_1E37570D8()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 176) = v14;
  }

  return v1;
}

uint64_t sub_1E375716C()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 1696))(19);
  sub_1E37C11CC();
  OUTLINED_FUNCTION_22_3();
  v3 = *(*v1 + 680);
  v4 = v0;
  v3(v0);
  OUTLINED_FUNCTION_36();
  return (*(v5 + 1984))(1);
}

uint64_t sub_1E3757238()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ImageLayout();
    sub_1E3BD61D8();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 184) = v14;
  }

  return v1;
}

uint64_t sub_1E37572CC()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 208))(0x4024000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v3 + 312))(0x4024000000000000, 0);
  sub_1E37C11CC();
  OUTLINED_FUNCTION_22_3();
  v4 = *(*v1 + 680);
  v5 = v0;
  v4(v0);
  sub_1E3952C64();
  OUTLINED_FUNCTION_6_22();
  return (*(v6 + 184))(v8);
}

uint64_t sub_1E37573D0()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 192) = v14;
  }

  return v1;
}

uint64_t sub_1E3757464()
{
  sub_1E3952C10(-8.0, 24.0);
  OUTLINED_FUNCTION_18_8();
  v0 = sub_1E3952C10(-12.0, 24.0);
  OUTLINED_FUNCTION_7_11(v0, v1, v2, v3);
  OUTLINED_FUNCTION_38_4();
  sub_1E3C3DE00(v4);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_32_17(v5, v6, v7, v8, v9, v10, v11, v12, v24);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v21 = OUTLINED_FUNCTION_15_22(v13, v14, v15, v16, v17, v18, v19, v20, v25);
  return v22(v21);
}

double sub_1E3757514()
{
  v0 = sub_1E3C2F644();
  result = 12.0;
  if (v0 == 4)
  {
    return 24.0;
  }

  return result;
}

uint64_t sub_1E3757540()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 208) = v14;
  }

  return v1;
}

uint64_t sub_1E37575DC()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout();
    v3 = OUTLINED_FUNCTION_51_1();
    sub_1E382F55C(3, 2, v3 & 1);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);

    v1 = v15;
    *(v2 + 216) = v15;
  }

  return v1;
}

uint64_t sub_1E3757684()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout();
    v3 = OUTLINED_FUNCTION_51_1();
    sub_1E382F55C(4, 2, v3 & 1);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);

    v1 = v15;
    *(v2 + 224) = v15;
  }

  return v1;
}

uint64_t sub_1E3757774()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 232) = v14;
  }

  return v1;
}

uint64_t sub_1E3757808()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(19);
  OUTLINED_FUNCTION_36();
  return (*(v1 + 1792))(7);
}

uint64_t sub_1E3757888()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 240) = v14;
  }

  return v1;
}

uint64_t sub_1E375796C()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v2 = v0;
    _s14ScoreRowLayoutCMa();
    swift_allocObject();
    v1 = sub_1E375807C();
    *(v2 + 248) = v1;
  }

  return v1;
}

uint64_t sub_1E3757A6C()
{
  bzero((v0 + 104), 0x98uLL);
  v1 = sub_1E3C2F9A0();

  v2.n128_u64[0] = 12.0;
  *__dst = j__OUTLINED_FUNCTION_7_78(v2);
  *&__dst[8] = v3;
  *&__dst[16] = v4;
  *&__dst[24] = v5;
  __dst[32] = 0;
  sub_1E39537A8();
  v139 = v6;
  v140 = v7;
  v141 = v8;
  v142 = v9;
  v143 = 0;
  sub_1E39537A8();
  v134 = v10;
  v135 = v11;
  v136 = v12;
  v137 = v13;
  v138 = 0;
  sub_1E39537A8();
  v129 = v14;
  v130 = v15;
  v131 = v16;
  v132 = v17;
  v133 = 0;
  sub_1E39537A8();
  v124 = v18;
  v125 = v19;
  v126 = v20;
  v127 = v21;
  LOBYTE(v128) = 0;
  v22.n128_u64[0] = 18.0;
  v119 = j__OUTLINED_FUNCTION_7_78(v22);
  v120 = v23;
  v121 = v24;
  v122 = v25;
  LOBYTE(v123) = 0;
  OUTLINED_FUNCTION_38_4();
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  v26 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34_12(v26, v27, v28, v29, v30, v31, v32, v33, v73, v78, v83, v88, v93, v98, v103, v108, v113, __dst[0]);
  sub_1E3C2FDFC();
  *__dst = 0x4080C00000000000;
  __dst[8] = 0;
  v139 = 0x4084E00000000000;
  LOBYTE(v140) = 0;
  v34 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_36_10();
  v35 = OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_28_8(v35, v36, v37, v38, v39, v40, v41, v42, v74, v79, v84, v89, v94, v99, v104, v109, v114, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  memcpy(__dst, __src, 0x59uLL);
  v43 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34_12(v43, v44, v45, v46, v47, v48, v49, v50, v75, v80, v85, v90, v95, v100, v105, v110, v115, __dst[0]);
  sub_1E3C2FDFC();
  *__dst = 0x4080C00000000000;
  __dst[8] = 0;
  v139 = 0x4084E00000000000;
  LOBYTE(v140) = 0;
  sub_1E3C3DE00(v34);
  OUTLINED_FUNCTION_37_8();
  OUTLINED_FUNCTION_36_10();
  v51 = OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_28_8(v51, v52, v53, v54, v55, v56, v57, v58, v76, v81, v86, v91, v96, v101, v106, v111, v116, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
  memcpy(__dst, __src, 0x59uLL);
  v59 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34_12(v59, v60, v61, v62, v63, v64, v65, v66, v77, v82, v87, v92, v97, v102, v107, v112, v117, __dst[0]);
  sub_1E3C2FDFC();
  v67 = sub_1E375796C();
  sub_1E3C37CBC(v67, 235);

  v68 = sub_1E3756E18();
  sub_1E3C37CBC(v68, 4);

  v69 = sub_1E37575DC();
  sub_1E3C37CBC(v69, 53);

  v70 = sub_1E3757684();
  sub_1E3C37CBC(v70, 54);

  sub_1E3C37CBC(v71, 3);

  return v1;
}

uint64_t sub_1E3757CC8()
{
}

uint64_t sub_1E3757D80()
{
  sub_1E3C36C6C();
  OUTLINED_FUNCTION_44_12();

  return v0;
}

uint64_t sub_1E3757E38()
{
  v0 = sub_1E3757D80();

  return MEMORY[0x1EEE6BDC0](v0, 256, 7);
}

uint64_t sub_1E3757EA8(uint64_t *a1)
{
  v1 = *a1;
  LOBYTE(v9) = 6;
  v19 = 1;
  sub_1E3C2FC98();
  v17 = v18;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v15 = v16;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v13 = v14;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v11 = v12;
  sub_1E3C2FCB8(&v9, &v20);
  v9 = v20;
  v10 = v21;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v2 + 1600))(&v9, 48, v3 & 1, &qword_1F5D549D8);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_22_3();
  v4 = *(*v1 + 680);
  v5 = &qword_1F5D549D8;
  v4(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  return (*(v7 + 2128))(0x3FE0000000000000, 0);
}

uint64_t sub_1E375807C()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();

  v2 = OUTLINED_FUNCTION_26_12();
  v3 = sub_1E3758180(v2, sub_1E383BCC0);
  sub_1E3C37CBC(v3, 237);

  return v1;
}

uint64_t sub_1E3758100()
{
  sub_1E3C36C6C();
  OUTLINED_FUNCTION_44_12();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1E3758180(void (*a1)(void), uint64_t (*a2)(void))
{
  if (*(v2 + 104))
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v5 = v2;
    a1();
    v6 = a2();
    OUTLINED_FUNCTION_19_11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    v3 = v17;
    *(v5 + 104) = v17;
  }

  return v3;
}

uint64_t sub_1E3758260(void (*a1)(void), uint64_t (*a2)(void))
{
  if (*(v2 + 112))
  {
    v3 = *(v2 + 112);
  }

  else
  {
    v5 = v2;
    a1();
    v6 = a2();
    OUTLINED_FUNCTION_19_11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    v3 = v17;
    *(v5 + 112) = v17;
  }

  return v3;
}

uint64_t sub_1E37582F4()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v3 + 1792))(10);
  sub_1E37C11CC();
  OUTLINED_FUNCTION_22_3();
  v4 = *(*v1 + 680);
  v5 = v0;
  v4(v0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1984))(1);
  OUTLINED_FUNCTION_36();
  return (*(v7 + 256))(0x4070600000000000, 0);
}

uint64_t sub_1E3758450()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    v3 = sub_1E383BCC0();
    OUTLINED_FUNCTION_19_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 120) = v14;
  }

  return v1;
}

uint64_t sub_1E37584D4()
{
  OUTLINED_FUNCTION_6_17();
  (*(v2 + 1696))(19);
  sub_1E37C11CC();
  OUTLINED_FUNCTION_22_3();
  v3 = *(*v1 + 680);
  v4 = v0;
  v3(v0);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1984))(1);
  OUTLINED_FUNCTION_36();
  return (*(v6 + 256))(0x4070600000000000, 0);
}

uint64_t sub_1E3758614()
{
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v1 = sub_1E3C2F9A0();

  v2 = OUTLINED_FUNCTION_25_15();
  v3 = sub_1E3758260(v2, sub_1E383BCC0);
  sub_1E3C37CBC(v3, 23);

  v4 = OUTLINED_FUNCTION_29_4();
  sub_1E3C37CBC(v4, 17);

  return v1;
}

uint64_t sub_1E37586AC()
{
}

uint64_t sub_1E37586E4()
{
  sub_1E3C36C6C();
  OUTLINED_FUNCTION_44_12();

  return v0;
}

uint64_t sub_1E375871C()
{
  v0 = sub_1E37586E4();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1E375874C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1E3758798(double a1, double a2)
{
  v3 = v2;
  v4 = *v2;
  if (!v4)
  {
    return 5.0;
  }

  v6 = *(*v4 + 2408);
  v7 = sub_1E375888C(v3, v15);
  v8 = v6(v7);
  v9 = [objc_opt_self() vui:v8 fontFromTextLayout:?];
  v10 = a2 + a2;
  if (v9)
  {
    v11 = v9;
    [v9 descender];
    v13 = v12;

    sub_1E37588C4(v3);
    return v10 - fabs(v13);
  }

  else
  {

    sub_1E37588C4(v3);
  }

  return v10;
}

double sub_1E37588F4@<D0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = a2;
  *&result = OUTLINED_FUNCTION_27_5(a1).n128_u64[0];
  return result;
}

id sub_1E37588FC()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v3 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1E4297BE0;
  v5 = *MEMORY[0x1E69DB990];
  *(v4 + 32) = *MEMORY[0x1E69DB990];
  OUTLINED_FUNCTION_45_0(v4, *MEMORY[0x1E69DB980]);
  OUTLINED_FUNCTION_2_3();
  sub_1E375874C(v6, v7);
  v8 = v3;
  v9 = v5;
  *(inited + 40) = OUTLINED_FUNCTION_43_5();
  type metadata accessor for AttributeName(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50);
  OUTLINED_FUNCTION_1_0();
  sub_1E375874C(v10, v11);
  v12 = OUTLINED_FUNCTION_41_14();
  v13 = [v1 fontDescriptor];
  sub_1E3754784(v12);

  v14 = OUTLINED_FUNCTION_42_11();

  v15 = [v13 fontDescriptorByAddingAttributes_];

  [v1 pointSize];
  v16 = [v0 fontWithDescriptor:v15 size:?];

  return v16;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E3758BA4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E3758BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
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

uint64_t sub_1E3758C9C(char a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1 & 1);
  return sub_1E4207BA4();
}

void *sub_1E3758D00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_2_20();
  sub_1E375C5EC(v4, v5);
  v6 = sub_1E4201754();
  v8 = v7;
  sub_1E42038E4();
  v51 = v54;
  v9 = v55;
  *__src = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  sub_1E42038E4();
  v49 = v55;
  v50 = v54;
  v48 = v56;
  v10 = objc_opt_self();

  v11 = [v10 vui_keyWindow];
  v46 = v11;
  if (v11)
  {
    v12 = v11;
    [v11 vuiWidth];
    v14 = v13;
    v11 = [v12 vuiHeight];
    v16 = v15;
  }

  else
  {
    v16 = 0;
    v14 = 0;
  }

  if (!(*(*a1 + 392))(v11))
  {
    goto LABEL_7;
  }

  type metadata accessor for OneupTemplateLayout();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

LABEL_7:
    type metadata accessor for OneupTemplateLayout();
    v17 = sub_1E396A0D4();
  }

  v47 = v17;
  v18 = __src;
  v19 = (*(*a1 + 464))();

  v45 = a2;
  if (!v19)
  {
LABEL_38:
    v26 = 0;
    *(v18 + 1) = 0u;
    *__src = 0u;
    v31 = 1;
LABEL_39:
    sub_1E325F6F0(__src, &unk_1ECF296E0);
    if (!v31)
    {
      v30 = 0;
      goto LABEL_42;
    }

    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v41 = v9;
  v42 = v8;
  v43 = v6;
  v44 = a1;
  v9 = sub_1E32AE9B0(v19);
  v20 = 0;
  v6 = v19 & 0xC000000000000001;
  v18 = (v19 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v9 == v20)
    {

      v19 = 0;
      goto LABEL_36;
    }

    if (v6)
    {
      v8 = MEMORY[0x1E6911E60](v20, v19);
    }

    else
    {
      if (v20 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v8 = *(v19 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
      break;
    }

    v52[0] = *(v8 + 98);
    v71[0] = 117;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    a2 = v55;
    if (v54 == *__src && v55 == *&__src[8])
    {

LABEL_24:

      type metadata accessor for CollectionViewModel();
      v22 = swift_dynamicCastClass();
      v19 = v22;
      if (v22)
      {
        v23 = *(*v22 + 1040);

        v20 = v23(v24);

        a1 = v44;
        a2 = v45;
        v8 = v42;
        v6 = v43;
        v9 = v41;
        if (v20)
        {
          result = sub_1E32AE9B0(v20);
          v18 = __src;
          if (result)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              goto LABEL_59;
            }

            if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v26 = *(v20 + 32);

              goto LABEL_30;
            }

            __break(1u);
            return result;
          }

          goto LABEL_38;
        }

LABEL_37:
        v18 = __src;
        goto LABEL_38;
      }

LABEL_36:
      a1 = v44;
      a2 = v45;
      v8 = v42;
      v6 = v43;
      v9 = v41;
      goto LABEL_37;
    }

    a1 = sub_1E42079A4();

    if (a1)
    {
      goto LABEL_24;
    }

    ++v20;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v26 = MEMORY[0x1E6911E60](0, v20);
LABEL_30:

  if (!v26)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_8();
  v28 = *(v27 + 672);

  v28(v29);

  v57 = &type metadata for ViewModelKeys;
  v58 = &off_1F5D7BCA8;
  LOBYTE(v54) = 11;
  sub_1E3F9F164(&v54);

  __swift_destroy_boxed_opaque_existential_1(&v54);
  if (!*&__src[24])
  {
    v31 = 0;
    v18 = __src;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    v30 = v54;
  }

  else
  {
    v30 = 0;
  }

LABEL_42:
  v33 = *(*v26 + 872);

  v32 = v33(v34);

  if (!v32)
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  if (!v30)
  {
    v18 = __src;
LABEL_49:

    *(v18 + 15) = 0u;
    *(v18 + 16) = 0u;
LABEL_50:
    sub_1E325F6F0(v71, &unk_1ECF296E0);
    v35 = 0;
    v36 = v51;
    v38 = v49;
    v37 = v50;
    v40 = v47;
    v39 = v48;
    goto LABEL_54;
  }

  v57 = &unk_1F5D5DAC8;
  v58 = &off_1F5D5C9A8;
  LOBYTE(v54) = 0;
  sub_1E3F9F164(&v54);

  __swift_destroy_boxed_opaque_existential_1(&v54);
  v18 = __src;
  if (!v72)
  {
    a2 = v45;
    goto LABEL_50;
  }

  if (swift_dynamicCast())
  {
    v35 = v54;
  }

  else
  {
    v35 = 0;
  }

  v36 = v51;
  v38 = v49;
  v37 = v50;
  v40 = v47;
  v39 = v48;
  a2 = v45;
LABEL_54:
  *__src = v6;
  *&__src[8] = v8;
  *&__src[16] = a1;
  *&__src[24] = v40;
  *&__src[32] = v19;
  __src[40] = v36;
  *(v18 + 41) = v74[0];
  *&__src[44] = *(v74 + 3);
  *&__src[48] = v9;
  *&__src[56] = v37;
  *&__src[64] = v38;
  *&__src[72] = v39;
  *&__src[80] = v32;
  __src[88] = v35;
  *&__src[92] = *&v73[3];
  *(v18 + 89) = *v73;
  *&__src[96] = v14;
  *&__src[104] = v16;
  *&__src[112] = 0;
  v54 = v6;
  v55 = v8;
  v56 = a1;
  v57 = v40;
  v58 = v19;
  v59 = v36;
  v60 = *(v74 + 3);
  *(v18 + 161) = v74[0];
  v61 = v9;
  v62 = v37;
  v63 = v38;
  v64 = v39;
  v65 = v32;
  v66 = v35;
  v67 = *&v73[3];
  *(v18 + 209) = *v73;
  v68 = v14;
  v69 = v16;
  v70 = 0;
  sub_1E375B52C(__src, v52);
  sub_1E375B564(&v54);
  return memcpy(a2, __src, 0x78uLL);
}

uint64_t sub_1E3759434(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v151 = sub_1E4202064();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v150 = v7 - v6;
  sub_1E4200B84();
  OUTLINED_FUNCTION_0_10();
  v153 = v9;
  v154 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v152 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29010);
  OUTLINED_FUNCTION_0_10();
  v156 = v13;
  v157 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29018);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v162 = &v141 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29020);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v141 - v23;
  v174 = *(v1 + 96);
  v175 = *(v1 + 112);
  v168[0] = *(v1 + 96);
  *&v168[1] = *(v1 + 112);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  v160 = v24;
  v141 = v18;
  v142 = v16;
  if (*v163 <= 0.0)
  {
    if (!*v1)
    {
      goto LABEL_46;
    }

    v28 = v21;
    v29 = v4;
    v30 = v25;
    OUTLINED_FUNCTION_8();
    v32 = *(v31 + 184);

    *&v34 = COERCE_DOUBLE(v32(v33));
    v36 = v35;

    v26 = 0.0;
    v27 = v30;
    v4 = v29;
    v21 = v28;
    if ((v36 & 1) == 0)
    {
      v26 = *&v34;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_20();
    sub_1E42038F4();
    v26 = *v163;
    v27 = v25;
  }

  OUTLINED_FUNCTION_4_20();
  sub_1E42038F4();
  v158 = v27;
  if (*(v163 + 1) <= 0.0)
  {
    if (!*v1)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_8();
    v39 = *(v38 + 184);

    v39(v40);
    v42 = v41;
    v44 = v43;

    if (v44)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v42;
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_20();
    sub_1E42038F4();
    v37 = *(v163 + 1);
  }

  v168[0] = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290E8);
  v45 = sub_1E42038F4();
  v46 = v37;
  v47 = v26;
  if (LOBYTE(v163[0]) == 1)
  {
    v48 = *(v1 + 24);
    v49 = (*v48 + 1704);
    v50 = *v49;
    (*v49)(v45, v37);
    OUTLINED_FUNCTION_30();
    (*(v51 + 176))(v180);

    if (v180[4])
    {
      v53 = 0.0;
    }

    else
    {
      v53 = *&v180[1];
    }

    (v50)(v52);
    OUTLINED_FUNCTION_30();
    (*(v54 + 176))(v177);

    v56 = *(&v177[1] + 1);
    if (v177[2])
    {
      v56 = 0.0;
    }

    v57 = v53 + v56;
    (v50)(v55);
    OUTLINED_FUNCTION_30();
    (*(v58 + 176))(v166);
    v59 = *v166;
    v60 = *&v166[1];
    v61 = *&v166[2];

    v63 = 0.0;
    if ((v166[4] & 1) == 0)
    {
      v63 = sub_1E3952BD8(v59, v60, v61);
    }

    v47 = v26 - v57;
    (*(*v48 + 1728))(v62);
    OUTLINED_FUNCTION_30();
    *&v65 = COERCE_DOUBLE((*(v64 + 304))());
    v67 = v66;

    v68 = *&v65;
    if (v67)
    {
      v68 = 0.0;
    }

    v46 = v37 - (v63 + v68);
  }

  v159 = v21;
  v143 = v4;
  v69 = *&v46;
  v70 = j__OUTLINED_FUNCTION_51_1();
  v71 = j__OUTLINED_FUNCTION_18();
  v72 = j__OUTLINED_FUNCTION_18();
  sub_1E3EB9C0C(*&v47, v69, 0, 0, 0, 1, v70 & 1, 2, v167, *&v26, 0, 0, 1, 0, 2, v71 & 1, v72 & 1);
  sub_1E375C2C0(v167, v168);
  v73 = j__OUTLINED_FUNCTION_18();
  v74 = j__OUTLINED_FUNCTION_18();
  v75 = j__OUTLINED_FUNCTION_51_1();
  sub_1E3EB9DAC(v167, *&v26, *&v37, 0, *&v47, v69, 0, 0, v163, 1, 0, 0, 256, 3, 0, v73 & 1, v74 & 1, v75 & 1);
  v76 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v69) = j__OUTLINED_FUNCTION_18();
  v77 = j_j__OUTLINED_FUNCTION_5_8();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = j__OUTLINED_FUNCTION_51_1();
  v85 = j__OUTLINED_FUNCTION_18();
  v86 = sub_1E3CBD2B8();
  v87 = j__OUTLINED_FUNCTION_18();
  v88 = j__OUTLINED_FUNCTION_5_8();
  sub_1E3EBA150(v163, 0, 0, 1, v76, v69, 0, v84 & 1, v168, v77, v79, v81, v83, v88, v89, v90, v91, 0, 1, v85 & 1, v86, v87 & 1);
  sub_1E375C31C(v167);
  memcpy(v169, v168, sizeof(v169));
  v170 = v26;
  v171 = v37;
  v172 = 0;
  memcpy(v173, &v168[13] + 9, sizeof(v173));
  v149 = sub_1E4201D44();
  v165 = 0;
  memcpy(v179, v169, 0xC3uLL);
  memcpy(v180, v169, 0xC3uLL);
  v178 = *(v2 + 40);
  v163[0] = *(v2 + 40);
  sub_1E375C1CC(v179, v168);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290E8);
  sub_1E4203914();
  v92 = *(&v168[0] + 1);
  v148 = *&v168[0];
  v93 = v168[1];
  v94 = *(v2 + 24);
  v163[0] = *(v2 + 56);
  v95 = *(v2 + 80);
  *&v163[1] = *(v2 + 72);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E4203914();
  v97 = *(&v168[0] + 1);
  v96 = *&v168[0];
  v161 = *(&v168[1] + 1);
  v145 = *&v168[1];
  v163[0] = *(v2 + 56);
  *&v163[1] = *(v2 + 72);
  sub_1E375C1CC(v179, v168);
  sub_1E42038F4();
  v98 = *(&v168[0] + 1);
  v146 = v97;
  v147 = v2;
  if (*(&v168[0] + 1))
  {
    v99 = v92;
    v100 = *&v168[0];
  }

  else
  {
    if (sub_1E32AE9B0(v95))
    {
      if ((v95 & 0xC000000000000001) != 0)
      {

        v137 = v96;
        v138 = MEMORY[0x1E6911E60](0, v95);

        v100 = *(v138 + 16);
        v98 = *(v138 + 24);

        v96 = v137;
        swift_unknownObjectRelease();
      }

      else
      {
        if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v101 = *(v95 + 32);
        v100 = *(v101 + 16);
        v98 = *(v101 + 24);
      }
    }

    else
    {
      v100 = 0;
      v98 = 0;
    }

    v99 = v92;
  }

  *&v163[0] = v100;
  *(&v163[0] + 1) = v98;
  *&v163[1] = v95;
  *(&v163[1] + 1) = v94;
  v102 = v94;
  memcpy(&v163[2], v179, 0xC3uLL);
  *&v168[0] = v100;
  *(&v168[0] + 1) = v98;
  *&v168[1] = v95;
  *(&v168[1] + 1) = v94;
  memcpy(&v168[2], v179, 0xC3uLL);
  sub_1E375C258(v163, v167);
  sub_1E375C290(v168);
  memcpy(v177, v163, 0xE3uLL);
  v168[0] = v178;
  sub_1E42038F4();
  v103 = (v163[0] & 1) == 0;
  v104 = v148;
  *&v163[0] = v148;
  *(&v163[0] + 1) = v99;
  v105 = v99;
  LOBYTE(v163[1]) = v93;
  *(&v163[1] + 1) = v181[0];
  DWORD1(v163[1]) = *(v181 + 3);
  *(&v163[1] + 1) = v102;
  *&v163[2] = v95;
  v106 = v146;
  *(&v163[2] + 1) = v96;
  *&v163[3] = v146;
  v144 = v95;
  v107 = v145;
  *(&v163[3] + 1) = v145;
  *&v163[4] = v161;
  memcpy(&v163[4] + 8, v180, 0xC3uLL);
  memcpy(v176, v163, 0x10BuLL);
  memcpy(v166, v177, 0xE3uLL);
  BYTE3(v166[28]) = v103;
  memcpy(&v176[272], v166, 0xE4uLL);
  memcpy(v167, v177, 0xE3uLL);
  v167[227] = v103;
  sub_1E375C134(v163, v168);
  OUTLINED_FUNCTION_19_12();
  sub_1E325F6F0(v167, &qword_1ECF290F8);
  *&v168[0] = v104;
  *(&v168[0] + 1) = v105;
  LOBYTE(v168[1]) = v93;
  *(&v168[1] + 1) = v181[0];
  DWORD1(v168[1]) = *(v181 + 3);
  *(&v168[1] + 1) = v102;
  *&v168[2] = v144;
  *(&v168[2] + 1) = v96;
  *&v168[3] = v106;
  *(&v168[3] + 1) = v107;
  *&v168[4] = v161;
  memcpy(&v168[4] + 8, v180, 0xC3uLL);
  sub_1E375C228(v168);
  memcpy(v166, v176, 0x1F4uLL);
  memcpy(v167, v176, 0x1F4uLL);
  OUTLINED_FUNCTION_19_12();
  sub_1E325F6F0(v167, &qword_1ECF29030);
  memcpy(&v164[7], v166, 0x1F4uLL);
  v163[0] = v149;
  LOBYTE(v163[1]) = v165;
  memcpy(&v163[1] + 1, v164, 0x1FBuLL);
  sub_1E4202284();
  v108 = v152;
  sub_1E4200B74();
  v109 = swift_allocObject();
  v110 = v147;
  memcpy((v109 + 16), v147, 0x78uLL);
  sub_1E375B52C(v110, v168);
  sub_1E375C5EC(&qword_1ECF29038, MEMORY[0x1E697BEA8]);
  v111 = v154;
  v112 = v155;
  sub_1E4203B64();

  (*(v153 + 8))(v108, v111);
  sub_1E4200BA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29040);
  sub_1E32752B0(&qword_1ECF29048, &qword_1ECF29040);
  sub_1E32752B0(&qword_1ECF29050, &qword_1ECF29010);
  v113 = v157;
  sub_1E42034B4();
  (*(v156 + 8))(v112, v113);
  memcpy(v168, v163, 0x20CuLL);
  sub_1E325F6F0(v168, &qword_1ECF29040);
  if (*v110)
  {
    OUTLINED_FUNCTION_8();
    v115 = *(v114 + 216);

    LOBYTE(v115) = v115(v116);

    v117 = sub_1E3A24FDC(v115);
    v119 = v159;
    v118 = v160;
    if (v117)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1E4297BD0;
      v121 = sub_1E4202744();
      *(v120 + 32) = v121;
      v122 = sub_1E4202764();
      *(v120 + 33) = v122;
      v123 = sub_1E4202784();
      *(v120 + 34) = v123;
      v124 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v121)
      {
        v124 = sub_1E4202774();
      }

      sub_1E4202774();
      if (sub_1E4202774() != v122)
      {
        v124 = sub_1E4202774();
      }

      v125 = v162;

      sub_1E4202774();
      if (sub_1E4202774() == v123)
      {
        v127 = v141;
        v126 = v142;
LABEL_43:
        v130 = sub_1E42013E4();
        (*(v127 + 32))(v118, v125, v126);
        v131 = v118 + *(v119 + 36);
        *v131 = v130;
        *(v131 + 8) = v124;
        v177[0] = v174;
        *&v177[1] = v175;
        sub_1E4203914();
        v132 = v163[0];
        v133 = v163[1];
        v134 = sub_1E375B604();
        v135 = OUTLINED_FUNCTION_51_1();
        sub_1E41DBF30(v132, *(&v132 + 1), v135 & 1, v119, v134, *&v133, *(&v133 + 1));
        sub_1E375B760(v169);

        return sub_1E32AFDA0(v118);
      }

      v127 = v141;
      v126 = v142;
    }

    else
    {
      v128 = sub_1E4202734();
      v124 = sub_1E4202774();
      sub_1E4202774();
      v129 = sub_1E4202774();
      v126 = v142;
      v127 = v141;
      v125 = v162;
      if (v129 == v128)
      {
        goto LABEL_43;
      }
    }

    v124 = sub_1E4202774();
    goto LABEL_43;
  }

LABEL_46:
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_2_20();
  sub_1E375C5EC(v139, v140);
  result = sub_1E4201744();
  __break(1u);
  return result;
}

void sub_1E375A468(uint64_t a1@<X8>)
{
  v40 = a1;
  v37 = sub_1E42014A4();
  OUTLINED_FUNCTION_0_10();
  v36 = v2;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  sub_1E42014C4();
  OUTLINED_FUNCTION_0_10();
  v38 = v8;
  v39 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v33 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29090);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29098);
  OUTLINED_FUNCTION_0_10();
  v34 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v22 = *(v1 + 56);
  v46 = *(v1 + 40);
  v47 = v22;
  v23 = *(v1 + 56);
  v44 = *(v1 + 40);
  v45 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290A0);
  sub_1E4203AB4();
  v44 = v42;
  v45 = v43;
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290A8);
  sub_1E375BEF4();
  sub_1E375BF70();
  sub_1E4203BC4();
  v44 = v46;
  v45 = v47;
  sub_1E4203AB4();
  v44 = v42;
  v45 = v43;
  OUTLINED_FUNCTION_6_23();
  v25 = sub_1E32752B0(v24, &qword_1ECF29090);
  sub_1E4202F54();

  (*(v14 + 8))(v17, v12);
  sub_1E4201494();
  v26 = v36;
  v27 = v37;
  (*(v36 + 16))(v35, v7, v37);
  v28 = v33;
  sub_1E42014B4();
  (*(v26 + 8))(v7, v27);
  *&v44 = v12;
  *(&v44 + 1) = MEMORY[0x1E69E6158];
  *&v45 = v25;
  *(&v45 + 1) = MEMORY[0x1E69E6168];
  OUTLINED_FUNCTION_9_18();
  swift_getOpaqueTypeConformance2();
  v29 = v32;
  v30 = v38;
  sub_1E4202CC4();
  (*(v39 + 8))(v28, v30);
  (*(v34 + 8))(v21, v29);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E375A908(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290C8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290D8);
  OUTLINED_FUNCTION_0_10();
  v34 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = *a1;
  v36 = a2;
  memcpy(__dst, a2 + 72, 0xC3uLL);
  sub_1E40EA03C(v21, __dst, 0, 0, v10);
  v22 = *(v21 + 24);
  if (v22)
  {
    v23 = *(v21 + 16);
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  (*(v7 + 32))(v16, v10, v5);
  v25 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29068) + 36)];
  *v25 = v23;
  *(v25 + 1) = v24;
  v25[16] = 1;

  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v39 = v5;
  *(&v39 + 1) = MEMORY[0x1E69E6158];
  v40 = OpaqueTypeConformance2;
  v41 = MEMORY[0x1E69E6168];
  swift_getOpaqueTypeConformance2();
  sub_1E4203594();
  (*(v13 + 8))(v16, v11);
  v39 = *v36;
  LOBYTE(v40) = *(v36 + 16);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290E0);
  MEMORY[0x1E690E3F0](&v38, v27);
  if (v38)
  {
    v28 = sub_1E4202724();
  }

  else
  {
    v28 = sub_1E4202734();
  }

  v29 = v28;
  v30 = sub_1E42013E4();
  v31 = v37;
  (*(v34 + 32))(v37, v20, v35);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290C0) + 36);
  *v32 = v30;
  *(v32 + 8) = v29;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E375ACE8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StackedTextViews(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29078);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29080);
  OUTLINED_FUNCTION_2();
  v13 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v1[1];
  if (!v17)
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    return;
  }

  v62 = v8;
  v63 = v7;
  v64 = &v61 - v15;
  v65 = v16;
  v66 = v11;
  *&v67 = v14;
  *&v68 = a1;
  v18 = *v2;
  v19 = MEMORY[0x1E69E7CC0];
  *&v71 = MEMORY[0x1E69E7CC0];
  v20 = v2[2];
  v21 = sub_1E32AE9B0(v20);
  for (i = 0; ; i = (i + 1))
  {
    if (v21 == i)
    {
      v34 = v68;
      v35 = v67;
      v36 = v63;
      goto LABEL_37;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1E6911E60](i, v20);
    }

    else
    {
      if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v23 = *(v20 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v24 = v23[3];
    if (v24)
    {
      v25 = v23[2] == v18 && v24 == v17;
      if (v25 || (sub_1E42079A4() & 1) != 0)
      {
        break;
      }
    }
  }

  v31 = (*v23 + 488);
  i = *v31;
  v32 = (*v31)();
  v20 = _TtC8VideosUI13TextViewModel;
  if (v32)
  {
    v33 = sub_1E373E010(23, v32);

    if (v33)
    {
      if (*v33 == _TtC8VideosUI13TextViewModel)
      {
        MEMORY[0x1E6910BF0](v32);
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_23:
          v32 = sub_1E4206324();
          v19 = v71;
          goto LABEL_27;
        }

LABEL_42:
        sub_1E42062F4();
        goto LABEL_23;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v37 = (i)(v32);
  if (!v37)
  {
    v34 = v68;
    v35 = v67;
    goto LABEL_35;
  }

  v38 = sub_1E373E010(15, v37);

  v34 = v68;
  v35 = v67;
  if (!v38)
  {
LABEL_35:
    v36 = v63;
    goto LABEL_36;
  }

  if (*v38 != v20)
  {

    goto LABEL_35;
  }

  MEMORY[0x1E6910BF0](v39);
  v36 = v63;
  if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E42062F4();
  }

  sub_1E4206324();
  v19 = v71;
LABEL_36:

LABEL_37:
  v40 = sub_1E375B30C(v19);

  v41 = sub_1E4201D44();
  v42 = j__OUTLINED_FUNCTION_18();
  sub_1E403E654(v40, v41, v42 & 1, v36);
  v43 = sub_1E4202794();
  v44 = *(*v2[3] + 1728);
  v44();
  OUTLINED_FUNCTION_30();
  (*(v45 + 176))(v69);

  v46 = v70;
  v47 = 0uLL;
  v48 = 0uLL;
  if ((v70 & 1) == 0)
  {
    sub_1E4200A54();
    *(&v48 + 1) = v49;
    *(&v47 + 1) = v50;
  }

  v67 = v48;
  v68 = v47;
  v51 = v66;
  v52 = sub_1E375BD40(v36, v66);
  v53 = v51 + *(v62 + 36);
  *v53 = v43;
  v54 = v68;
  *(v53 + 24) = v67;
  *(v53 + 8) = v54;
  *(v53 + 40) = v46 & 1;
  v55 = *(v44)(v52);
  (*(v55 + 304))();

  sub_1E4203DA4();
  sub_1E4200D94();
  v56 = v65;
  sub_1E329E454(v51, v65, &qword_1ECF29078);
  v57 = (v56 + *(v35 + 36));
  v58 = v72;
  *v57 = v71;
  v57[1] = v58;
  v57[2] = v73;
  v59 = v56;
  v60 = v64;
  sub_1E329E454(v59, v64, &qword_1ECF29080);
  sub_1E329E454(v60, v34, &qword_1ECF29080);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E375B30C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    result = sub_1E4207574();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v4, a1);
        }

        else
        {
        }

        ++v4;
        type metadata accessor for TextViewModel();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
        swift_dynamicCast();
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v2 != v4);
      return v5;
    }
  }

  return result;
}

uint64_t sub_1E375B458@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29070);
  v7 = v6;
  if (a2)
  {
    v8 = 1;
  }

  else
  {
    (*(*(v6 - 8) + 16))(a3, a1, v6);
    v8 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_1E375B594()
{
  sub_1E4203E44();
  sub_1E4200FE4();
}

unint64_t sub_1E375B604()
{
  result = qword_1ECF29058;
  if (!qword_1ECF29058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29010);
    sub_1E32752B0(&qword_1ECF29048, &qword_1ECF29040);
    sub_1E32752B0(&qword_1ECF29050, &qword_1ECF29010);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29058);
  }

  return result;
}

uint64_t sub_1E375B7D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 120))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E375B810(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_10(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaShowcasingStackedButtonLayout.Cache(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1E375B908(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E375B9E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 227))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E375BA20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    result = OUTLINED_FUNCTION_14_22(result, 0);
    *(result + 226) = 0;
    *(result + 224) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 227) = 1;
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

    *(result + 227) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E375BA8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 267))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E375BAC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    result = OUTLINED_FUNCTION_14_22(result, 0);
    *(result + 266) = 0;
    *(result + 264) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 267) = 1;
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

    *(result + 267) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackStatusLayout.Size(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1E375BBC4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E375BCA4()
{
  result = qword_1ECF44640[0];
  if (!qword_1ECF44640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF44640);
  }

  return result;
}

uint64_t sub_1E375BD40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackedTextViews(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E375BDA4()
{
  v1 = *(v0 + 16);
  v5 = v1[4];
  v6 = v5;
  swift_getKeyPath();
  v2 = swift_allocObject();
  memcpy((v2 + 16), v1, 0x10BuLL);
  sub_1E3294EE4(&v6, v4, &unk_1ECF2C790);
  sub_1E375C134(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290C0);
  sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790);
  sub_1E375BEF4();
  sub_1E375BFF4();
  return sub_1E4203B34();
}

unint64_t sub_1E375BEF4()
{
  result = qword_1EE23B5F0;
  if (!qword_1EE23B5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B5F0);
  }

  return result;
}

unint64_t sub_1E375BF70()
{
  result = qword_1ECF290B0;
  if (!qword_1ECF290B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF290A8);
    sub_1E375BFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF290B0);
  }

  return result;
}

unint64_t sub_1E375BFF4()
{
  result = qword_1ECF290B8;
  if (!qword_1ECF290B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF290C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF290C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF290B8);
  }

  return result;
}

unint64_t sub_1E375C370()
{
  result = qword_1ECF29100;
  if (!qword_1ECF29100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29108);
    sub_1E32752B0(&qword_1ECF29110, &qword_1ECF29070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29100);
  }

  return result;
}

unint64_t sub_1E375C420()
{
  result = qword_1ECF29118;
  if (!qword_1ECF29118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29120);
    sub_1E375C4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29118);
  }

  return result;
}

unint64_t sub_1E375C4A4()
{
  result = qword_1ECF29128;
  if (!qword_1ECF29128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29080);
    sub_1E375C530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29128);
  }

  return result;
}

unint64_t sub_1E375C530()
{
  result = qword_1ECF29130;
  if (!qword_1ECF29130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29078);
    sub_1E375C5EC(&qword_1ECF29138, type metadata accessor for StackedTextViews);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29130);
  }

  return result;
}

uint64_t sub_1E375C5EC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1E375C640()
{
  v1 = OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_spacing;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E375C674(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_spacing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E375C74C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1E375C7F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_descriptionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E375C834(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_descriptionView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_descriptionView;
  v6 = a1;
  swift_beginAccess();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

void (*sub_1E375C8D0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_descriptionView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E375C958;
}

void sub_1E375C958(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E375C834(v3);
  }

  else
  {
    sub_1E375C834(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1E375C9C4(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for VideoItunesExtrasDescriptionCell();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = *(*a1 + 392);
      v11 = a2;
      v12 = v10();
      if (v12)
      {
        if (*v12 == _TtC8VideosUI38VideoItunesExtrasDescriptionCellLayout)
        {
          v13 = (*(*a1 + 488))();
          if (v13)
          {
            v14 = v13;
            if (*(v13 + 16))
            {
              OUTLINED_FUNCTION_1_49();
              v16 = *(v15 + 136);

              v16(v17);
              type metadata accessor for UIFactory();
              v18 = sub_1E373E010(9, v14);

              OUTLINED_FUNCTION_1_49();
              v20 = (*(v19 + 152))();
              sub_1E373C4DC();
              memset(v34, 0, sizeof(v34));
              v35 = 0;
              v21 = sub_1E393D92C(v18, v20, v34, 0);

              sub_1E373C624(v34);
              OUTLINED_FUNCTION_1_49();
              (*(v22 + 160))(v21);
            }

            else
            {
            }
          }

          return v9;
        }
      }

      else
      {
      }
    }
  }

  v24 = sub_1E324FBDC();
  v33 = v5;
  (*(v5 + 16))(v7, v24, v4);

  v25 = sub_1E41FFC94();
  v26 = sub_1E4206814();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v34[0] = v28;
    *v27 = 136315138;
    sub_1E384EE08(a1[49]);
    v31 = sub_1E3270FC8(v29, v30, v34);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1E323F000, v25, v26, "VideoItunesExtrasDescriptionCell: Failed to get correct cell for [%s]", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1E69143B0](v28, -1, -1);
    MEMORY[0x1E69143B0](v27, -1, -1);
  }

  (*(v33 + 8))(v7, v4);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

double sub_1E375CDEC(char a1, double a2, double a3)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x98);
  v8 = v7();
  if (v8)
  {
    v9 = v8;
    if (a1)
    {
      v10 = 1.79769313e308;
    }

    else
    {
      v10 = a3;
    }

    [v8 vui:a2 sizeThatFits:v10];
    v12 = v11;

    if (a1 & 1 | (a3 <= 0.0))
    {
      v13 = v12;
    }

    else
    {
      v13 = a2;
    }

    v14 = v13 + 0.0;
  }

  else
  {
    v14 = 0.0;
  }

  if (OUTLINED_FUNCTION_5_32() == a3)
  {
    if (a1)
    {
      return v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_32();
    VUIRoundValue();
    if (a1)
    {
      return v14;
    }
  }

  v15 = v7();
  if (v15)
  {
    v16 = v15;
    [v3 vuiBounds];
    [v3 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v16 setFrame_];
  }

  return v14;
}

id sub_1E375D018()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_spacing) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_descriptionView) = 0;
  v5 = type metadata accessor for VideoItunesExtrasDescriptionCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E375D0AC(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_spacing] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32VideoItunesExtrasDescriptionCell_descriptionView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VideoItunesExtrasDescriptionCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E375D15C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoItunesExtrasDescriptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E375D1DC@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  [v6 vui:a2 sizeThatFits:1.79769313e308];
  v13 = v12;
  v15 = v14;
  sub_1E41A300C(v17);
  sub_1E41A2FE8(v13, v15);
  *&v17[6] = a3;
  *&v17[7] = a4;
  *&v17[8] = a5;
  *&v17[9] = a6;
  return memcpy(a1, v17, 0x50uLL);
}

uint64_t sub_1E375D2E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  ViewModelKeys.rawValue.getter(11);
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1E4297BE0;
  *(v9 + 32) = sub_1E3852604(0);
  *(v9 + 40) = v10;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;

  v11 = sub_1E4205CB4();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *(inited + 96) = v11;
  v12 = sub_1E4205CB4();
  sub_1E384EE08(136);
  v14 = v13;
  v16 = v15;
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v19[0] = v12;
  v17 = sub_1E3A7CD30(v14, v16, v19, 0);

  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v17)
  {
    type metadata accessor for UnifiedMessagingAccountMessageViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1E375D4BC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 accountMessageConfig];

  v2 = sub_1E3A517DC();
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 dialogRequest];

    if (v5)
    {
      v6 = sub_1E375DA2C(v5);
      if (v6)
      {
        v7 = v6;
        v18 = 0x6144746E65696C63;
        sub_1E4207414();
        sub_1E375D7E8(v19, v7, &v20);

        sub_1E375D84C(v19);
        if (*(&v21 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
          if ((OUTLINED_FUNCTION_0_13() & 1) == 0)
          {
LABEL_14:

            goto LABEL_15;
          }

          v8 = v19[0];
          v18 = 0x696C696269736976;
          sub_1E4207414();
          sub_1E375D7E8(v19, v8, &v20);

          sub_1E375D84C(v19);
          if (*(&v21 + 1))
          {
            if (OUTLINED_FUNCTION_0_13())
            {
              v9 = sub_1E4205ED4();

              v10 = VUIAccountMessageVisibilityTypeFromString(v9);

              goto LABEL_16;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {

        v20 = 0u;
        v21 = 0u;
      }

      sub_1E329505C(&v20);
    }
  }

  else
  {
  }

LABEL_15:
  v10 = [v1 fallbackVisibilityType];
LABEL_16:
  v11 = [v1 visibilityBehaviours];
  v12 = sub_1E4205C64();

  v13 = VUIAccountMessageVisibiltyTypeString(v10);
  v14 = sub_1E4205F14();
  v16 = v15;

  *&v20 = v14;
  *(&v20 + 1) = v16;
  sub_1E4207414();
  sub_1E375D7E8(v19, v12, &v20);

  sub_1E375D84C(v19);
  if (*(&v21 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    if (OUTLINED_FUNCTION_0_13())
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E329505C(&v20);
    return 0;
  }
}

double sub_1E375D7E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1E375D924(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1E328438C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E375D8F4()
{
  v0 = sub_1E39EBC28();

  return MEMORY[0x1EEE6BDC0](v0, 290, 7);
}

unint64_t sub_1E375D924(uint64_t a1)
{
  v2 = sub_1E42073F4();

  return sub_1E375D968(a1, v2);
}

unint64_t sub_1E375D968(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1E374E74C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1E6911D60](v8, a1);
    sub_1E375D84C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E375DA2C(void *a1)
{
  v1 = [a1 appearanceInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E375DA98(uint64_t a1, char a2)
{
  v3 = OUTLINED_FUNCTION_36_0();
  v4(v3);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_36_0();
  v6(v5);
  OUTLINED_FUNCTION_36();
  v7 = OUTLINED_FUNCTION_36_0();
  v8(v7);
  v61[32] = 1;
  v89 = j__OUTLINED_FUNCTION_7_78(COERCE_UNSIGNED_INT64(8.0));
  v90 = v9;
  v91 = v10;
  v92 = v11;
  v93 = 0;
  v12.n128_u64[0] = 10.0;
  v84 = j__OUTLINED_FUNCTION_7_78(v12);
  v85 = v13;
  v86 = v14;
  v87 = v15;
  v88 = 0;
  v16.n128_u64[1] = 0x401C000000000000;
  LOBYTE(v82) = 0;
  v16.n128_u64[0] = 8.0;
  v73 = j__OUTLINED_FUNCTION_7_78(v16);
  v74 = v17;
  v75 = v18;
  v76 = v19;
  LOBYTE(v77) = 0;
  type metadata accessor for UIEdgeInsets();
  v21 = v20;
  v22 = sub_1E3C3DE00(v20);
  LOBYTE(v66) = v72;
  OUTLINED_FUNCTION_5_33(v22, v23, v24, v25, v26, v27, v28, v29, 0, 0, 0, 0, *&v61[32], *&v61[40], *&v61[48], *&v61[56], *&v61[64], *&v61[72], *&v61[80], *&v61[88], *&v61[96], *&v61[104], *&v61[112], *&v61[120], *&v61[128], *&v61[136], *&v61[144], *&v61[152], *&v61[160], *&v61[168], *&v61[176], *&v61[184], *&v61[192], *&v61[200], *&v61[208], *&v61[216], *&v61[224], *&v61[232], v68, v69, v70, v71, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, 0x4020000000000000, 0x401C000000000000, 0, 0, v82, v83, v84, v85, v86);
  memcpy(v61, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v31 = *(v30 + 1600);
  v31(v61, 0, v32 & 1, v21);
  v61[0] = 27;
  LOBYTE(v89) = 19;
  LOBYTE(v84) = 21;
  LOBYTE(v78) = 22;
  LOBYTE(v73) = 21;
  v33 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v62) = v68;
  OUTLINED_FUNCTION_5_33(v33, v34, v35, v36, v37, v38, v39, v40, *v61, *&v61[8], *&v61[16], *&v61[24], *&v61[32], *&v61[40], *&v61[48], *&v61[56], *&v61[64], *&v61[72], *&v61[80], *&v61[88], *&v61[96], *&v61[104], *&v61[112], *&v61[120], *&v61[128], *&v61[136], *&v61[144], *&v61[152], *&v61[160], *&v61[168], *&v61[176], *&v61[184], *&v61[192], *&v61[200], *&v61[208], *&v61[216], *&v61[224], *&v61[232], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v41 = OUTLINED_FUNCTION_32_9();
  v31(v61, 96, v41 & 1, &qword_1F5D549D8);
  v61[0] = 11;
  LOBYTE(v89) = 10;
  LOBYTE(v84) = 10;
  LOBYTE(v78) = 5;
  LOBYTE(v73) = 4;
  v42 = sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v62) = v68;
  OUTLINED_FUNCTION_5_33(v42, v43, v44, v45, v46, v47, v48, v49, *v61, *&v61[8], *&v61[16], *&v61[24], *&v61[32], *&v61[40], *&v61[48], *&v61[56], *&v61[64], *&v61[72], *&v61[80], *&v61[88], *&v61[96], *&v61[104], *&v61[112], *&v61[120], *&v61[128], *&v61[136], *&v61[144], *&v61[152], *&v61[160], *&v61[168], *&v61[176], *&v61[184], *&v61[192], *&v61[200], *&v61[208], *&v61[216], *&v61[224], *&v61[232], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v50 = OUTLINED_FUNCTION_32_9();
  v31(v61, 97, v50 & 1, &qword_1F5D54AF8);
  if (a2)
  {
    OUTLINED_FUNCTION_8();
    (*(v51 + 2072))(22);
    v52 = *(MEMORY[0x1E69DDCE0] + 16);
    __src[0] = *MEMORY[0x1E69DDCE0];
    __src[1] = v52;
    LOBYTE(__src[2]) = 0;
    OUTLINED_FUNCTION_8();
    (*(v53 + 160))(__src);
  }

  v54 = objc_opt_self();
  v55 = [v54 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v56 + 680))();
  v57 = [v54 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v58 + 752))();
  OUTLINED_FUNCTION_36();
  return (*(v59 + 2096))(7);
}

void sub_1E375DE78()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v11 = *(type metadata accessor for TeamLockup(0) + 36);
  *(v6 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *v6 = v4;
  v12 = *(*v4 + 392);

  if (!v12(v13))
  {
LABEL_4:
    type metadata accessor for EntityLockupCollectionViewCellLayout();
    sub_1E3B91450();
  }

  type metadata accessor for EntityLockupCollectionViewCellLayout();
  OUTLINED_FUNCTION_20_2();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    goto LABEL_4;
  }

  v6[1] = v14;
  memcpy(v6 + 2, v2, 0xC3uLL);
  type metadata accessor for ContextMenuModel();
  OUTLINED_FUNCTION_38();

  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v9 + 104))(v0, *MEMORY[0x1E697E660], v7);
  v6[27] = sub_1E4188148(v4, v0);
  type metadata accessor for ImageBadgePresenter(0);
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_38();
  v6[28] = sub_1E3760ADC(v15);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E375E0D4()
{
  OUTLINED_FUNCTION_31_1();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29158);
  OUTLINED_FUNCTION_0_10();
  v37 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v36 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29160);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v40 = v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29168);
  OUTLINED_FUNCTION_0_10();
  v35 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v34 = v9;
  v38 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29170);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v39 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29178);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_5();
  type metadata accessor for StandardLockupListView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_36();
  if ((*(v23 + 1792))())
  {
    memcpy(v44, (v0 + 16), 0xC3uLL);

    sub_1E375C1CC(v44, &v43);

    sub_1E3C6E960();
    sub_1E3761C48(v22, v1, type metadata accessor for StandardLockupListView);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_23();
    sub_1E37613C8(v24, v25);
    sub_1E3761258();
    sub_1E4201F44();
    sub_1E3761CA8(v22, type metadata accessor for StandardLockupListView);
  }

  else
  {
    type metadata accessor for TeamLockup(0);
    sub_1E3746E10(v15);
    v26 = sub_1E3B0352C();
    (*(v11 + 8))(v15, v38);
    if (v26)
    {
      v27 = v34;
      sub_1E375E798();
      v28 = v35;
      v29 = v41;
      (*(v35 + 16))(v40, v34, v41);
    }

    else
    {
      v27 = v36;
      sub_1E375E9C0(v36);
      v28 = v37;
      v29 = v42;
      (*(v37 + 16))(v40, v36, v42);
    }

    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29188);
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v30, &qword_1ECF29188);
    OUTLINED_FUNCTION_3_8();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_9_19(OpaqueTypeConformance2);
    swift_getOpaqueTypeConformance2();
    v44[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29198);
    v44[1] = sub_1E3760FDC();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v28 + 8))(v27, v29);
    sub_1E3294EE4(v39, v1, &qword_1ECF29170);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_23();
    sub_1E37613C8(v32, v33);
    sub_1E3761258();
    sub_1E4201F44();
    sub_1E325F6F0(v39, &qword_1ECF29170);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E375E798()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v17 = v4;
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29188);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29180);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_5();
  *v2 = sub_1E4201D44();
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29208);
  sub_1E37601C4();
  v14 = *(v0 + 216);
  OUTLINED_FUNCTION_1();
  v16 = sub_1E328FCF4(v15, &qword_1ECF29188);
  sub_1E4187EA8(v14, v8, v16);
  sub_1E325F6F0(v2, &qword_1ECF29188);
  sub_1E4202474();
  OUTLINED_FUNCTION_3_8();
  swift_getOpaqueTypeConformance2();
  sub_1E4203224();
  (*(v17 + 8))(v7, v18);
  (*(v12 + 8))(v1, v10);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E375E9C0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1;
  v54 = a1;
  v55 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v53 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v52 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291C8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291A8);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29288);
  OUTLINED_FUNCTION_0_10();
  v50 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21_3();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29198);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  *v2 = sub_1E4203D44();
  v2[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29290);
  sub_1E375EF38((v2 + *(v26 + 44)));
  sub_1E4203DA4();
  OUTLINED_FUNCTION_18_9();
  LOBYTE(v49) = v27;
  v48 = 0;
  OUTLINED_FUNCTION_28_9();
  sub_1E42015C4();
  memcpy(v2 + *(v9 + 44), __src, 0x70uLL);
  v28 = v4;
  v29 = *(v4 + 8);
  OUTLINED_FUNCTION_36();
  v32 = (*(v30 + 432))(v31);
  if (v33)
  {
    v34 = *sub_1E418A4F4();
  }

  else
  {
    v34 = v32;
  }

  v35 = sub_1E329E454(v2, v14, &qword_1ECF291C8);
  v36 = &v14[*(v11 + 36)];
  *v36 = v34;
  *(v36 + 4) = 0;
  (*(*v29 + 552))(v59, v35);
  if (v60)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v59[0];
  }

  v38 = sub_1E3761114();
  sub_1E391F8C0(v11, v38, v37);
  sub_1E325F6F0(v14, &qword_1ECF291B0);
  v39 = *(v28 + 216);
  v56 = v11;
  v57 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v48;
  sub_1E4187EA8(v39, v48, OpaqueTypeConformance2);
  (*(v16 + 8))(v19, v41);
  v42 = &v24[*(v49 + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v44 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v45 + 104))(v42 + v43, v44);
  *v42 = swift_getKeyPath();
  (*(v50 + 32))(v24, v3, v51);
  v46 = v52;
  sub_1E4202474();
  sub_1E3760FDC();
  sub_1E4203224();
  (*(v53 + 8))(v46, v55);
  return sub_1E325F6F0(v24, &qword_1ECF29198);
}

void sub_1E375EF38(uint64_t *a1@<X8>)
{
  v45 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29298);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v46 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF292A0);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF292A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_5();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF292B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v43 = v21 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_36();
  v28 = (*(v27 + 744))();
  if (!v28)
  {
    v28 = [objc_opt_self() clearColor];
  }

  v29 = v28;
  v44 = sub_1E38F08C4(v28);

  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF292B8);
  sub_1E375F3A8();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_18_9();
  LOBYTE(v44) = v30;
  v43 = 0;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_28_9();
  sub_1E42015C4();
  sub_1E329E454(v1, v3, &qword_1ECF292A0);
  memcpy((v3 + *(v17 + 36)), __src, 0x70uLL);
  OUTLINED_FUNCTION_8();
  (*(v31 + 176))(v48);
  if (v49)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v34.n128_u64[0] = v48[2];
    v35.n128_u64[0] = v48[3];
    v32.n128_u64[0] = v48[0];
    v33.n128_u64[0] = v48[1];
    j_nullsub_1(v32, v33, v34, v35);
  }

  v36 = OUTLINED_FUNCTION_41_8();
  sub_1E329E454(v3, v26, &qword_1ECF292A8);
  v37 = &v26[*(v19 + 36)];
  *v37 = v36;
  *(v37 + 1) = v4;
  *(v37 + 2) = v5;
  *(v37 + 3) = v6;
  *(v37 + 4) = v7;
  v37[40] = 0;
  sub_1E329E454(v26, v2, &qword_1ECF292B0);
  sub_1E375FE48(v14);
  v38 = v43;
  sub_1E3294EE4(v2, v43, &qword_1ECF292B0);
  v39 = v46;
  sub_1E3294EE4(v14, v46, &qword_1ECF29298);
  v40 = v14;
  v41 = v45;
  *v45 = v44;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF292C0);
  sub_1E3294EE4(v38, v41 + *(v42 + 48), &qword_1ECF292B0);
  sub_1E3294EE4(v39, v41 + *(v42 + 64), &qword_1ECF29298);

  sub_1E325F6F0(v40, &qword_1ECF29298);
  sub_1E325F6F0(v2, &qword_1ECF292B0);
  sub_1E325F6F0(v39, &qword_1ECF29298);
  sub_1E325F6F0(v38, &qword_1ECF292B0);

  OUTLINED_FUNCTION_10_3();
}

void sub_1E375F3A8()
{
  OUTLINED_FUNCTION_31_1();
  v24 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - v13;
  v23 = &v23 - v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF292C8);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_42_13();
  sub_1E375FCEC(23, v0);
  sub_1E375FCEC(15, v14);
  sub_1E3294EE4(v1, v19, &qword_1ECF292C8);
  sub_1E3294EE4(v0, v11, &qword_1ECF29210);
  sub_1E3294EE4(v14, v7, &qword_1ECF29210);
  v21 = v24;
  sub_1E3294EE4(v19, v24, &qword_1ECF292C8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF292D0);
  sub_1E3294EE4(v11, v21 + *(v22 + 48), &qword_1ECF29210);
  sub_1E3294EE4(v7, v21 + *(v22 + 64), &qword_1ECF29210);
  OUTLINED_FUNCTION_44_6(v23);
  OUTLINED_FUNCTION_44_6(v0);
  sub_1E325F6F0(v1, &qword_1ECF292C8);
  OUTLINED_FUNCTION_44_6(v7);
  OUTLINED_FUNCTION_44_6(v11);
  sub_1E325F6F0(v19, &qword_1ECF292C8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E375F5F8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v42 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v45 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29258);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v43 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29260);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v44 = v12;
  type metadata accessor for Monogram();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v14 = sub_1E39C408C(41);
  if (v14)
  {
    v15 = v14;

    v17 = *(v0 + 8);
    v18 = *(*(*v17 + 1888))(v16);
    v19 = (*(v18 + 1744))();

    v21 = (*(*v19 + 1696))(v20);
    v23 = v22;
    v25 = v24;

    if (v25)
    {
      memcpy(v47, (v3 + 16), 0x5BuLL);
      sub_1E375C2C0(v47, &v46);
      v26 = memcpy(v48, v47, 0x5BuLL);
    }

    else
    {
      v32 = j__OUTLINED_FUNCTION_51_1();
      v33 = j__OUTLINED_FUNCTION_18();
      v34 = j__OUTLINED_FUNCTION_18();
      v26 = sub_1E3EB9C0C(v21, v23, 0, 0, 0, 1, v32 & 1, 2, v48, 0, 1, 0, 1, 0, 2, v33 & 1, v34 & 1);
    }

    v35 = (*(*v17 + 1888))(v26);
    sub_1E3BD63E4(v15, 0, v48, v35, 0, 0, 0, 0, v1);
    sub_1E3761C48(v1, v43, type metadata accessor for Monogram);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_10_19();
    sub_1E37613C8(v36, v37);
    OUTLINED_FUNCTION_12_25();
    sub_1E4201F44();
    sub_1E3294EE4(v44, v45, &qword_1ECF29260);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29268);
    sub_1E3761ABC();
    sub_1E3761B90();
    sub_1E4201F44();

    sub_1E325F6F0(v44, &qword_1ECF29260);
    sub_1E3761CA8(v1, type metadata accessor for Monogram);
  }

  else
  {
    v27 = sub_1E39C408C(39);
    if (v27)
    {
      v28 = v27;
      memcpy(v47, (v0 + 16), 0x5BuLL);
      v29 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v28, v47, 0, v29 & 1, 0, 0, v2);
      (*(v42 + 16))(v43, v2, v4);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_10_19();
      sub_1E37613C8(v30, v31);
      OUTLINED_FUNCTION_12_25();
      sub_1E4201F44();
      sub_1E3294EE4(v44, v45, &qword_1ECF29260);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29268);
      sub_1E3761ABC();
      sub_1E3761B90();
      sub_1E4201F44();

      sub_1E325F6F0(v44, &qword_1ECF29260);
      (*(v42 + 8))(v2, v4);
    }

    else
    {
      v38 = sub_1E42036E4();
      OUTLINED_FUNCTION_8();
      v40 = (*(v39 + 432))();
      if (v41)
      {
        v40 = *sub_1E418A4F4();
      }

      *v45 = v38;
      *(v45 + 8) = 256;
      *(v45 + 16) = v40;
      *(v45 + 24) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29268);
      sub_1E3761ABC();
      sub_1E3761B90();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E375FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = sub_1E39C408C(a1);
  if (v9)
  {
    if (*v9 == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();

      (*(v7 + 32))(a2, v2, v5);
      return OUTLINED_FUNCTION_39_5();
    }
  }

  v11 = OUTLINED_FUNCTION_34_5();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void sub_1E375FE48(uint64_t a1@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v44 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_26_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29248);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21_3();
  if (*(v1 + 224) && (v20 = sub_1E3760488()) != 0)
  {
    v21 = v20;
    v43 = v3;
    v22 = sub_1E3760514();
    sub_1E3EB9BB4(v45);
    v23 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v21, v45, v22, v23 & 1, 0, 0, v13);
    sub_1E375C31C(v45);
    if (v22 && (v24 = *v22, v42 = v14, v41 = v18, v25 = a1, v26 = *(v24 + 152), v27 = , v26(v46, v27), a1 = v25, v18 = v41, v14 = v42, v4 = v46[0], v5 = v46[1], v6 = v46[2], v7 = v46[3], , (v47 & 1) == 0))
    {
      v28.n128_u64[0] = v4;
      v29.n128_u64[0] = v5;
      v30.n128_u64[0] = v6;
      v31.n128_u64[0] = v7;
      j_nullsub_1(v28, v29, v30, v31);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    v37 = OUTLINED_FUNCTION_41_8();
    v38 = (*(v44 + 32))(v2, v13, v9);
    v39 = v2 + *(v14 + 36);
    *v39 = v37;
    *(v39 + 8) = v4;
    *(v39 + 16) = v5;
    *(v39 + 24) = v6;
    *(v39 + 32) = v7;
    *(v39 + 40) = 0;
    (*(*v21 + 320))(v38);
    sub_1E3761A18();
    v40 = v43;
    sub_1E3E03180();

    sub_1E325F6F0(v2, &qword_1ECF29240);
    (*(v18 + 32))(a1, v40, v16);
    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  }
}

void sub_1E37601C4()
{
  OUTLINED_FUNCTION_31_1();
  v42 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v41 = v5 - v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29218);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_42_13();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29220) + 36)) = 256;
  v20 = sub_1E4203D44();
  v22 = v21;
  v23 = v1 + *(v15 + 44);
  sub_1E375FE48(v23);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29228) + 36));
  *v24 = v20;
  v24[1] = v22;
  sub_1E375FCEC(23, v0);
  sub_1E375FCEC(15, v13);
  v40 = v18;
  sub_1E3294EE4(v1, v18, &qword_1ECF29218);
  sub_1E3294EE4(v0, v10, &qword_1ECF29210);
  v25 = v41;
  OUTLINED_FUNCTION_18_5();
  sub_1E3294EE4(v26, v27, v28);
  v29 = v18;
  v30 = v42;
  sub_1E3294EE4(v29, v42, &qword_1ECF29218);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29230);
  OUTLINED_FUNCTION_18_5();
  sub_1E3294EE4(v32, v33, v34);
  OUTLINED_FUNCTION_18_5();
  sub_1E3294EE4(v35, v36, v37);
  v38 = v30 + *(v31 + 80);
  *v38 = 0;
  *(v38 + 8) = 0;
  OUTLINED_FUNCTION_45_3(v13);
  OUTLINED_FUNCTION_45_3(v0);
  sub_1E325F6F0(v1, &qword_1ECF29218);
  OUTLINED_FUNCTION_45_3(v25);
  OUTLINED_FUNCTION_45_3(v10);
  sub_1E325F6F0(v40, &qword_1ECF29218);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3760488()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_14();
  sub_1E37613C8(v0, v1);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_15_0();
}

uint64_t sub_1E3760514()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(*v1 + 392);

    v2(v3);
    OUTLINED_FUNCTION_38();

    type metadata accessor for ImageLayout();
    OUTLINED_FUNCTION_20_2();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }
}

uint64_t sub_1E37605C4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_14();
  sub_1E37613C8(v0, v1);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_15_0();
}

uint64_t sub_1E3760650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E37605C4();
  *a1 = result;
  return result;
}

uint64_t sub_1E37606A8(uint64_t a1)
{
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();

  v4 = sub_1E3760780(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_37_9();
    sub_1E3760844();
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

BOOL sub_1E3760780(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for ViewModel();
      sub_1E37613C8(&qword_1EE23BA60, type metadata accessor for ViewModel);

      OUTLINED_FUNCTION_18_5();
      v2 = sub_1E4205E84();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = a2 == 0;
  }

  return (v2 & 1) == 0;
}

uint64_t sub_1E37608FC()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(*v1 + 392);

    v2(v3);
    OUTLINED_FUNCTION_38();

    type metadata accessor for ImageLayout();
    OUTLINED_FUNCTION_20_2();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }
}

uint64_t sub_1E37609AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3760488();
  *a1 = result;
  return result;
}

uint64_t sub_1E3760A04(uint64_t a1)
{
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();

  v4 = sub_1E3760780(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_37_9();
    sub_1E3760844();
  }

  else
  {
    *(v1 + 24) = a1;
  }
}

void *sub_1E3760ADC(uint64_t a1)
{
  v2 = v1;
  v1[3] = 0;
  v4 = v1 + 3;
  v1[5] = MEMORY[0x1E69E7CC0];
  v1[2] = 0;
  v1[4] = 0;
  sub_1E41FE924();
  v5 = *(a1 + 98);
  if (v5 != 206 && v5 != 217)
  {
    v6 = sub_1E39C2CD0();
    v8 = sub_1E41494A8(v6, v7);

    if (v8)
    {
      goto LABEL_15;
    }
  }

  v9 = sub_1E39C2CD0();
  if (!v10)
  {
    goto LABEL_15;
  }

  v38[0] = v9;
  v38[1] = v10;
  sub_1E37614CC();
  sub_1E38D23F0(MEMORY[0x1E69E6158], &v36);

  v11 = v37;
  if (!v37)
  {
    goto LABEL_15;
  }

  v12 = v36;
  v13 = sub_1E39C408C(31);
  if (!v13)
  {

LABEL_15:

    return 0;
  }

  v14 = v13;
  v15 = sub_1E39C26D0(2, 1);
  if (!v15)
  {

LABEL_14:

    goto LABEL_15;
  }

  v16 = v15;
  v35 = sub_1E39C26D0(3, 1);
  if (!v35)
  {

    goto LABEL_14;
  }

  v34 = v16;
  v17 = sub_1E3CFEA54();
  OUTLINED_FUNCTION_8();
  v19 = *(v18 + 144);

  LOBYTE(v19) = v19(v20);

  if (v19)
  {
    v21 = *(**v17 + 376);

    v22 = v21(v12, v11);
  }

  else
  {
    v38[3] = &unk_1F5D5D528;
    v38[4] = &off_1F5D5C858;
    LOBYTE(v38[0]) = 0;
    v24 = j__OUTLINED_FUNCTION_18();
    v22 = sub_1E39C29F0(v38, v24 & 1);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  if (v22)
  {
    v25 = v34;
  }

  else
  {
    v25 = v35;
  }

  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *v4 = v25;

  v27 = (*(*v14 + 392))(v26);
  if (v27)
  {
    type metadata accessor for ImageLayout();
    OUTLINED_FUNCTION_20_2();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {

      v27 = 0;
    }
  }

  v2[4] = v27;

  OUTLINED_FUNCTION_8();
  v29 = *(v28 + 136);

  v33 = v29(v30);

  v36 = v33;
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = v12;
  v32[3] = v11;
  v32[4] = v31;
  v32[5] = v34;
  v32[6] = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32570);
  sub_1E328FCF4(&qword_1EE28A1B0, &unk_1ECF32570);
  sub_1E4200844();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
  sub_1E328FCF4(&qword_1EE23B5E0, &qword_1ECF32580);
  sub_1E42004D4();
  swift_endAccess();

  return v2;
}

unint64_t sub_1E3760FDC()
{
  result = qword_1ECF291A0;
  if (!qword_1ECF291A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291B0);
    sub_1E3761114();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE2887D0, &qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF291A0);
  }

  return result;
}

unint64_t sub_1E3761114()
{
  result = qword_1ECF291B8;
  if (!qword_1ECF291B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291B0);
    sub_1E37611A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF291B8);
  }

  return result;
}

unint64_t sub_1E37611A0()
{
  result = qword_1ECF291C0;
  if (!qword_1ECF291C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291C8);
    sub_1E328FCF4(&qword_1ECF291D0, &qword_1ECF291D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF291C0);
  }

  return result;
}

unint64_t sub_1E3761258()
{
  result = qword_1ECF291E8;
  if (!qword_1ECF291E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29188);
    sub_1E328FCF4(&qword_1ECF29190, &qword_1ECF29188);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29198);
    sub_1E3760FDC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF291E8);
  }

  return result;
}

uint64_t sub_1E37613C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E376140C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t sub_1E376146C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *(v2 + 24) = v1;
}

unint64_t sub_1E37614CC()
{
  result = qword_1EE23B658;
  if (!qword_1EE23B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B658);
  }

  return result;
}

uint64_t sub_1E3761520()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1E3CFEA54();
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 376);

  v4(v1, v2);

  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1E3760A04(v6);
  }

  return result;
}

uint64_t sub_1E37615F0()
{

  v1 = OBJC_IVAR____TtC8VideosUI19ImageBadgePresenter___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3761668()
{
  sub_1E37615F0();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void sub_1E3761710()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EntityLockupCollectionViewCellLayout();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel();
      if (v2 <= 0x3F)
      {
        sub_1E3761844(319, qword_1EE274498, type metadata accessor for ImageBadgePresenter, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E3761844(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3761844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E37618B0()
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

unint64_t sub_1E376195C()
{
  result = qword_1ECF291F8;
  if (!qword_1ECF291F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29200);
    sub_1E37613C8(&qword_1EE25EB50, type metadata accessor for StandardLockupListView);
    sub_1E3761258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF291F8);
  }

  return result;
}

unint64_t sub_1E3761A18()
{
  result = qword_1EE289C40;
  if (!qword_1EE289C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29240);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C40);
  }

  return result;
}

unint64_t sub_1E3761ABC()
{
  result = qword_1ECF29270;
  if (!qword_1ECF29270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29260);
    sub_1E37613C8(&qword_1EE23BF18, type metadata accessor for Monogram);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29270);
  }

  return result;
}

unint64_t sub_1E3761B90()
{
  result = qword_1ECF29278;
  if (!qword_1ECF29278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29268);
    sub_1E328FCF4(&qword_1EE289EF0, &qword_1ECF29280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29278);
  }

  return result;
}

uint64_t sub_1E3761C48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E3761CA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3761D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  (*(v10 + 16))(v6, a1);
  return a6(v6);
}

uint64_t sub_1E3761E08(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_4_21();
      v30 = v9;
      OUTLINED_FUNCTION_5_34();
      v10 = sub_1E4207944();
      MEMORY[0x1E69109E0](v10);

      v11 = 0x7449646C6968432ELL;
      v12 = 0xEB000000002E6D65;
      goto LABEL_12;
    case 2:
    case 4:
    case 5:
      OUTLINED_FUNCTION_0_15();
      goto LABEL_16;
    case 3:
      v4 = 0x614E2E7055657544;
      goto LABEL_8;
    case 6:
      OUTLINED_FUNCTION_0_15();
      v7 = v15 | 4;
      goto LABEL_16;
    case 7:
    case 10:
      OUTLINED_FUNCTION_0_15();
      v7 = v16 + 6;
      goto LABEL_16;
    case 8:
    case 12:
      OUTLINED_FUNCTION_0_15();
      v7 = v17 + 2;
      goto LABEL_16;
    case 9:
      OUTLINED_FUNCTION_0_15();
      v7 = v8 + 3;
      goto LABEL_16;
    case 11:
      OUTLINED_FUNCTION_0_15();
      v7 = v6 + 9;
LABEL_16:
      v30 = v7;
      goto LABEL_17;
    case 13:
      OUTLINED_FUNCTION_0_15();
      v30 = v13;
      OUTLINED_FUNCTION_5_34();
      v14 = sub_1E4207944();
      MEMORY[0x1E69109E0](v14);

      v11 = 0x2E6D6165542ELL;
      v12 = 0xE600000000000000;
LABEL_12:
      MEMORY[0x1E69109E0](v11, v12);
      OUTLINED_FUNCTION_5_34();
      goto LABEL_17;
    case 14:
      result = 0;
      switch(a1)
      {
        case 1:
          return 0x68536E6F69746341;
        case 2:
          OUTLINED_FUNCTION_6_24();
          v25 = 0x4365726F6353;
          return v25 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
        case 3:
          return 0x6567646142;
        case 4:
        case 5:
          return 0x6D616554656D6F48;
        case 6:
          OUTLINED_FUNCTION_1_50();
          return v27 + 1;
        case 7:
          return 0x54726F7469736956;
        case 8:
        case 18:
        case 38:
          OUTLINED_FUNCTION_1_50();
          return v29 - 3;
        case 9:
          OUTLINED_FUNCTION_1_50();
          return v24 | 4;
        case 10:
          return 0x6B636F6C43;
        case 11:
        case 12:
          return OUTLINED_FUNCTION_7_43();
        case 13:
          return 0x746954746E657645;
        case 14:
          return 0x627553746E657645;
        case 15:
          v26 = 0x6E496E65704FLL;
          return v26 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
        case 16:
          OUTLINED_FUNCTION_1_50();
          return v22 - 2;
        case 17:
          v26 = 0x6C6C41656553;
          return v26 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
        case 19:
        case 35:
          OUTLINED_FUNCTION_1_50();
          return v28 - 1;
        case 20:
          v23 = 0x502E79616C50;
          goto LABEL_41;
        case 21:
          v25 = 0x4265736F6C43;
          return v25 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
        case 22:
          OUTLINED_FUNCTION_6_24();
          return 0x676461426576694CLL;
        case 23:
          v26 = 0x776F6C6C6F46;
          return v26 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
        case 24:
          return 0x6E69776F6C6C6F46;
        case 25:
          return 0x6E4972656E6E6957;
        case 26:
          return 0x6F4C65756761654CLL;
        case 27:
          return 0x6962616C69617641;
        case 28:
          return 0x6C616E6946;
        case 29:
          OUTLINED_FUNCTION_6_24();
          v19 = 0x44746E657645;
          goto LABEL_58;
        case 30:
          return 0x6C6C616265736142;
        case 31:
          return 1937012047;
        case 32:
          return 0x676E696E6E49;
        case 33:
          return 0x756F436863746950;
        case 34:
          return 0xD000000000000013;
        case 36:
          OUTLINED_FUNCTION_1_50();
          return v21 + 5;
        case 37:
          OUTLINED_FUNCTION_1_50();
          return v20 + 3;
        case 39:
          return 0x7055657544;
        case 40:
          return 0x65482E7055657544;
        case 41:
          return 0x49676E6964616F4CLL;
        case 42:
          return 0x7453726579616C50;
        case 43:
          OUTLINED_FUNCTION_6_24();
          v19 = 0x74536D616554;
LABEL_58:
          result = v19 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
          break;
        case 44:
          v23 = 0x696176616E55;
LABEL_41:
          result = v23 & 0xFFFFFFFFFFFFLL | 0x616C000000000000;
          break;
        default:
          return result;
      }

      return result;
    default:
      OUTLINED_FUNCTION_4_21();
LABEL_8:
      v30 = v4;
LABEL_17:
      v18 = sub_1E4207944();
      MEMORY[0x1E69109E0](v18);

      return v30;
  }
}

BOOL static SportsAccessibilityIdentifier.Key.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1)
      {
        return a1 == a4 && a2 == a5;
      }

      return 0;
    case 2:
      if (a6 != 2)
      {
        return 0;
      }

      return a1 == a4;
    case 3:
      if (a6 != 3)
      {
        return 0;
      }

      return a1 == a4;
    case 4:
      if (a6 != 4)
      {
        return 0;
      }

      return a1 == a4;
    case 5:
      if (a6 != 5)
      {
        return 0;
      }

      return a1 == a4;
    case 6:
      if (a6 != 6)
      {
        return 0;
      }

      return a1 == a4;
    case 7:
      if (a6 != 7)
      {
        return 0;
      }

      return a1 == a4;
    case 8:
      if (a6 == 8)
      {
        return a1 == a4;
      }

      return 0;
    case 9:
      if (a6 != 9)
      {
        return 0;
      }

      return a1 == a4;
    case 10:
      if (a6 != 10)
      {
        return 0;
      }

      return a1 == a4;
    case 11:
      if (a6 != 11)
      {
        return 0;
      }

      return a1 == a4;
    case 12:
      if (a6 != 12)
      {
        return 0;
      }

      return a1 == a4;
    case 13:
      if (a6 != 13)
      {
        return 0;
      }

      return a1 == a4 && a2 == a5;
    case 14:
      switch(a1)
      {
        case 1:
          v8 = a6 == 14 && a4 == 1;
          goto LABEL_172;
        case 2:
          v8 = a6 == 14 && a4 == 2;
          goto LABEL_172;
        case 3:
          v8 = a6 == 14 && a4 == 3;
          goto LABEL_172;
        case 4:
          v8 = a6 == 14 && a4 == 4;
          goto LABEL_172;
        case 5:
          v8 = a6 == 14 && a4 == 5;
          goto LABEL_172;
        case 6:
          v8 = a6 == 14 && a4 == 6;
          goto LABEL_172;
        case 7:
          v8 = a6 == 14 && a4 == 7;
          goto LABEL_172;
        case 8:
          v8 = a6 == 14 && a4 == 8;
          goto LABEL_172;
        case 9:
          v8 = a6 == 14 && a4 == 9;
          goto LABEL_172;
        case 10:
          v8 = a6 == 14 && a4 == 10;
          goto LABEL_172;
        case 11:
          v8 = a6 == 14 && a4 == 11;
          goto LABEL_172;
        case 12:
          v8 = a6 == 14 && a4 == 12;
          goto LABEL_172;
        case 13:
          v8 = a6 == 14 && a4 == 13;
          goto LABEL_172;
        case 14:
          v8 = a6 == 14 && a4 == 14;
          goto LABEL_172;
        case 15:
          v8 = a6 == 14 && a4 == 15;
          goto LABEL_172;
        case 16:
          v8 = a6 == 14 && a4 == 16;
          goto LABEL_172;
        case 17:
          v8 = a6 == 14 && a4 == 17;
          goto LABEL_172;
        case 18:
          v8 = a6 == 14 && a4 == 18;
          goto LABEL_172;
        case 19:
          v8 = a6 == 14 && a4 == 19;
          goto LABEL_172;
        case 20:
          v8 = a6 == 14 && a4 == 20;
          goto LABEL_172;
        case 21:
          v8 = a6 == 14 && a4 == 21;
          goto LABEL_172;
        case 22:
          v8 = a6 == 14 && a4 == 22;
          goto LABEL_172;
        case 23:
          v8 = a6 == 14 && a4 == 23;
          goto LABEL_172;
        case 24:
          v8 = a6 == 14 && a4 == 24;
          goto LABEL_172;
        case 25:
          v8 = a6 == 14 && a4 == 25;
          goto LABEL_172;
        case 26:
          v8 = a6 == 14 && a4 == 26;
          goto LABEL_172;
        case 27:
          v8 = a6 == 14 && a4 == 27;
          goto LABEL_172;
        case 28:
          v8 = a6 == 14 && a4 == 28;
          goto LABEL_172;
        case 29:
          v8 = a6 == 14 && a4 == 29;
          goto LABEL_172;
        case 30:
          v8 = a6 == 14 && a4 == 30;
          goto LABEL_172;
        case 31:
          v8 = a6 == 14 && a4 == 31;
LABEL_172:
          if (!v8 || a5 != 0)
          {
            return 0;
          }

          goto LABEL_168;
        case 32:
          if (a6 != 14 || a4 != 32)
          {
            return 0;
          }

          goto LABEL_167;
        case 33:
          if (a6 != 14 || a4 != 33)
          {
            return 0;
          }

          goto LABEL_167;
        case 34:
          if (a6 != 14 || a4 != 34)
          {
            return 0;
          }

          goto LABEL_167;
        case 35:
          if (a6 != 14 || a4 != 35)
          {
            return 0;
          }

          goto LABEL_167;
        case 36:
          if (a6 != 14 || a4 != 36)
          {
            return 0;
          }

          goto LABEL_167;
        case 37:
          if (a6 != 14 || a4 != 37)
          {
            return 0;
          }

          goto LABEL_167;
        case 38:
          if (a6 != 14 || a4 != 38)
          {
            return 0;
          }

          goto LABEL_167;
        case 39:
          if (a6 != 14 || a4 != 39)
          {
            return 0;
          }

          goto LABEL_167;
        case 40:
          if (a6 != 14 || a4 != 40)
          {
            return 0;
          }

          goto LABEL_167;
        case 41:
          if (a6 != 14 || a4 != 41)
          {
            return 0;
          }

          goto LABEL_167;
        case 42:
          if (a6 != 14 || a4 != 42)
          {
            return 0;
          }

          goto LABEL_167;
        case 43:
          if (a6 != 14 || a4 != 43)
          {
            return 0;
          }

          goto LABEL_167;
        case 44:
          if (a6 != 14 || a4 != 44)
          {
            return 0;
          }

LABEL_167:
          if (!a5)
          {
            goto LABEL_168;
          }

          return 0;
        default:
          if (a6 != 14 || a5 | a4)
          {
            return 0;
          }

LABEL_168:
          result = 1;
          break;
      }

      return result;
    default:
      if (a6)
      {
        return 0;
      }

      return a1 == a4;
  }
}

uint64_t SportsAccessibilityIdentifier.Key.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2;
  switch(a4)
  {
    case 1:
      v7 = 40;
      goto LABEL_14;
    case 2:
      v6 = 43;
      goto LABEL_18;
    case 3:
      v6 = 44;
      goto LABEL_18;
    case 4:
      v6 = 45;
      goto LABEL_18;
    case 5:
      v6 = 46;
      goto LABEL_18;
    case 6:
      v6 = 49;
      goto LABEL_18;
    case 7:
      v6 = 50;
      goto LABEL_18;
    case 8:
      v6 = 51;
      goto LABEL_18;
    case 9:
      v6 = 52;
      goto LABEL_18;
    case 10:
      v6 = 53;
      goto LABEL_18;
    case 11:
      v6 = 55;
      goto LABEL_18;
    case 12:
      v6 = 56;
      goto LABEL_18;
    case 13:
      v7 = 57;
LABEL_14:
      MEMORY[0x1E69124B0](v7);
      MEMORY[0x1E69124B0](v5);
      v5 = a3;
      return MEMORY[0x1E69124B0](v5);
    case 14:
      v5 = qword_1E4299C58[a2];
      return MEMORY[0x1E69124B0](v5);
    default:
      v6 = 17;
LABEL_18:
      MEMORY[0x1E69124B0](v6);
      return MEMORY[0x1E69124B0](v5);
  }
}

uint64_t SportsAccessibilityIdentifier.Key.hashValue.getter()
{
  OUTLINED_FUNCTION_8_25();
  sub_1E4207B44();
  SportsAccessibilityIdentifier.Key.hash(into:)(v4, v2, v1, v0);
  return sub_1E4207BA4();
}

uint64_t sub_1E3762A8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E4207B44();
  SportsAccessibilityIdentifier.Key.hash(into:)(v5, v1, v2, v3);
  return sub_1E4207BA4();
}

uint64_t sub_1E3762B00()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3762B4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = sub_1E3761E08(a1, a2, a3);
  v7 = v6;

  MEMORY[0x1E69109E0](v5, v7);

  return a4;
}

uint64_t sub_1E3762BB4@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "UIA.TV.Sports.GamePage.";
  v4 = &off_1F5D522F8;
  v5 = &unk_1F5D524F0;
  switch(result)
  {
    case 1:
      v3 = "VisitorTeamScore";
      v2 = 0xD000000000000017;
      v4 = &off_1F5D522E0;
      v5 = &unk_1F5D52470;
      break;
    case 2:
      v3 = "UIA.TV.Sports.SeeAll.";
      v2 = 0xD00000000000001BLL;
      v4 = &off_1F5D52310;
      v5 = &unk_1F5D52570;
      break;
    case 3:
      v3 = "UIA.TV.Sports.LiveActivity.";
      v4 = &off_1F5D52328;
      v5 = &unk_1F5D525F0;
      goto LABEL_6;
    case 4:
      v3 = "UIA.TV.Sports.LiveStats.";
      v4 = &off_1F5D52340;
      v5 = &unk_1F5D52670;
LABEL_6:
      v2 = 0xD000000000000018;
      break;
    default:
      break;
  }

  a2[3] = v5;
  a2[4] = v4;
  *a2 = v2;
  a2[1] = v3 | 0x8000000000000000;
  return result;
}

uint64_t SportsAccessibilityIdentifier.Location.hashValue.getter(unsigned __int8 a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3762D38()
{
  v1 = *v0;
  sub_1E4207B44();
  SportsAccessibilityIdentifier.Location.hash(into:)(v3, v1);
  return sub_1E4207BA4();
}

uint64_t static SportsAccessibilityIdentifier.makeIdentifier(key:location:)()
{
  OUTLINED_FUNCTION_8_25();
  sub_1E3762BB4(v3, v4);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 16))(v2, v1, v0, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

unint64_t sub_1E3762E18()
{
  result = qword_1ECF292D8;
  if (!qword_1ECF292D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF292D8);
  }

  return result;
}

unint64_t sub_1E3762E70()
{
  result = qword_1ECF292E0;
  if (!qword_1ECF292E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF292E0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsAccessibilityIdentifier.Key(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF2 && *(a1 + 17))
    {
      v2 = *a1 + 241;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0xE)
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

uint64_t storeEnumTagSinglePayload for SportsAccessibilityIdentifier.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 16) = 0;
    *result = a2 - 242;
    *(result + 8) = 0;
    if (a3 >= 0xF2)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E3762F68(uint64_t a1)
{
  if (*(a1 + 16) <= 0xDu)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 14);
  }
}

uint64_t sub_1E3762F80(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xE)
  {
    *result = a2 - 14;
    *(result + 8) = 0;
    LOBYTE(a2) = 14;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1E3762FDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E376301C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ViewLayoutEnvironment.Placement(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SportsAccessibilityIdentifier.Location(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1E37631D4()
{
  v0 = type metadata accessor for HTMLMarkupStringGenerator();
  v1 = objc_allocWithZone(v0);
  sub_1E3287754(3);
  v2 = OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_accumulator;
  *&v1[v2] = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  *&v1[OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_fontTraitsStack] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_didParseEverything] = 1;
  sub_1E3280A90(0, &qword_1EE23B150);
  *&v1[OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_parser] = sub_1E3763FC8();
  v7.receiver = v1;
  v7.super_class = v0;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  [*&v3[OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_parser] setDelegate_];
  v4 = sub_1E3763368();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];

  return v5;
}

uint64_t type metadata accessor for HTMLMarkupStringGenerator()
{
  result = qword_1EE296570;
  if (!qword_1EE296570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E3763368()
{
  [*(v0 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_parser) parse];
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_accumulator);

  return v1;
}

id sub_1E37633F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTMLMarkupStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E37634D0()
{
  result = sub_1E41FFCB4();
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

void sub_1E3763590(void *a1)
{
  v3 = a1;
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E323F000, v4, v5, "Parsing failed due to following error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E69143B0](v7, -1, -1);
    MEMORY[0x1E69143B0](v6, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_didParseEverything) = 0;
}

char *sub_1E3763740(uint64_t a1)
{
  v2 = v1;
  result = [*(v2 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_accumulator) beginEditing];
  if (a1 == 1)
  {
    v5 = sub_1E3E93304();
  }

  else
  {
    if (a1)
    {
      return result;
    }

    v5 = sub_1E3E932F8();
  }

  v6 = *v5;
  v7 = OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_fontTraitsStack;
  sub_1E376462C();
  v8 = *(*(v2 + v7) + 16);
  result = sub_1E3764678(v8);
  v9 = *(v2 + v7);
  *(v9 + 16) = v8 + 1;
  *(v9 + 4 * v8 + 32) = v6;
  *(v2 + v7) = v9;
  return result;
}

id sub_1E3763850()
{
  if (*(*(v0 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_fontTraitsStack) + 16))
  {
    sub_1E3763C98();
  }

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_accumulator);

  return [v1 endEditing];
}

void sub_1E3763914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_fontTraitsStack);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v27 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_accumulator);
    sub_1E3280A90(0, &qword_1EE23B1B0);

    v28 = v27;
    v29 = sub_1E3763FC8();
    [v28 appendAttributedString_];

LABEL_11:

    return;
  }

  v8 = 0;
  v9 = (v6 + 32);
  do
  {
    v11 = *v9++;
    v10 = v11;
    if ((v11 & ~v8) == 0)
    {
      v10 = 0;
    }

    v8 |= v10;
    --v7;
  }

  while (v7);
  v12 = [objc_allocWithZone(MEMORY[0x1E69DB880]) init];
  v13 = UIFontDescriptor.vuiWithSymbolicTraits(_:)(v8);

  if (v13)
  {
    sub_1E3280A90(0, &qword_1ECF29388);
    v29 = v13;
    v14 = sub_1E3DA9F68(v29, 0.0);
    if (v14)
    {
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v17 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      *(inited + 40) = v15;
      type metadata accessor for Key(0);
      OUTLINED_FUNCTION_1_51();
      sub_1E37644B8(v18, v19);
      v20 = v17;
      v21 = v15;
      v22 = sub_1E4205CB4();
      v23 = *(v3 + OBJC_IVAR____TtC8VideosUIP33_70C0F06A93052F168F0C06E79A36531E25HTMLMarkupStringGenerator_accumulator);

      v24 = sub_1E3763D14(v22);

      v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v26 = sub_1E376403C(a1, a2, v24);
      [v23 appendAttributedString_];

      return;
    }

    goto LABEL_11;
  }
}

void sub_1E3763C98()
{
  if (*(*v0 + 16))
  {
    if ((sub_1E3764838() & 0x100000000) != 0)
    {
      v1 = *(*v0 + 16) - 1;

      sub_1E37647B8(v1);
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1E3763CE8(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1E3763D14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29398);
    v1 = sub_1E4207744();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v26 = *(*(a1 + 56) + v10);
    v12 = v26;
    sub_1E3280A90(0, &qword_1ECF29388);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1E329504C((v27 + 8), v25);
    sub_1E329504C(v25, v27);
    sub_1E4205F14();
    sub_1E4207B44();
    sub_1E4206014();
    v15 = sub_1E4207BA4();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v19) = v13;
    result = sub_1E329504C(v27, (*(v1 + 56) + 32 * v19));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1E3763FC8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithString_];

  return v2;
}

id sub_1E376403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4205ED4();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1E37644B8(&qword_1EE23B100, type metadata accessor for Key);
    v6 = sub_1E4205C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

_DWORD *sub_1E3764140@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1E376415C@<X0>(_DWORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_18();
  *a1 = result;
  return result;
}

uint64_t sub_1E3764184@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1E37641B4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1E37641BC@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1E37641EC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1E37641F4@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1E3764224(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1E3764234@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E3764268(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1E3764268(unsigned int a1)
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

unint64_t sub_1E37642A8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E37642DC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1E37642DC(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

uint64_t sub_1E3764350@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1E3764380(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1E3764420@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1E37648BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E37644B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3764570()
{
  sub_1E37644B8(&qword_1EE23B100, type metadata accessor for Key);
  sub_1E37644B8(&unk_1ECF3E560, type metadata accessor for Key);

  return sub_1E4207764();
}

char *sub_1E376462C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E37646B8(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E3764678(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E37646B8((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1E37646B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF293A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

uint64_t sub_1E37647B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E37648A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 4 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 36), 4 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_1E3764838()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E37648A8(v1);
    v1 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = *(v1 + 4 * v4 + 32);
    *(v1 + 16) = v4;
    *v0 = v1;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E37648BC(uint64_t a1)
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

uint64_t sub_1E37649D0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_17();
  sub_1E3765C9C(v0, v1);
  OUTLINED_FUNCTION_43();

  swift_beginAccess();
}

uint64_t sub_1E3764A68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E37649D0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3764AC0(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1E376585C(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E3764BA8();
  }
}

uint64_t sub_1E3764BA8()
{
  OUTLINED_FUNCTION_0_17();
  sub_1E3765C9C(v0, v1);
  return sub_1E41FE8E4();
}

uint64_t sub_1E3764C50()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_17();
  sub_1E3765C9C(v1, v2);
  OUTLINED_FUNCTION_43();

  return *(v0 + 32);
}

uint64_t sub_1E3764CD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3764C50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3764D28(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E3764BA8();
  }

  return result;
}

uint64_t sub_1E3764DD0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3764E10(a1);
  return v2;
}

uint64_t sub_1E3764E10(uint64_t a1)
{
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v3 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + 16) = v3;
  sub_1E41FE924();
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;

  sub_1E3764E90();
  sub_1E3764F38();

  return v1;
}

uint64_t sub_1E3764E90()
{
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E4203E14();
  sub_1E4200FE4();
}

uint64_t sub_1E3764F38()
{
  v1 = v0;
  v2 = sub_1E4206C04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v6 = [v13 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  v11 = sub_1E3765C9C(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  sub_1E4200844();

  v12 = *(v3 + 8);
  v12(v5, v2);
  swift_getKeyPath();
  v14 = v1;
  OUTLINED_FUNCTION_0_17();
  sub_1E3765C9C(v7, v8);
  OUTLINED_FUNCTION_1_52();
  sub_1E41FE8F4();

  v14 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_52();
  sub_1E41FE914();

  OUTLINED_FUNCTION_6_25();
  sub_1E42004C4();
  swift_endAccess();

  v14 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_52();
  sub_1E41FE904();

  v9 = [v13 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E4200844();

  v12(v5, v2);
  swift_getKeyPath();
  v14 = v1;
  OUTLINED_FUNCTION_2_21();
  sub_1E41FE8F4();

  v14 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_21();
  sub_1E41FE914();

  OUTLINED_FUNCTION_6_25();
  sub_1E42004C4();
  swift_endAccess();

  v14 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_21();
  sub_1E41FE904();
}

uint64_t sub_1E37652C4()
{

  v1 = OBJC_IVAR____TtC8VideosUI22SportsLockupInteractor___observationRegistrar;
  v2 = sub_1E41FE934();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1E3765334()
{
  sub_1E37652C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1E376538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1E3280A90(0, &qword_1EE23B1C0);
    v8 = sub_1E42062A4();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1E3280A90(0, &qword_1EE23B340);
  v9 = sub_1E42062A4();

  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = sub_1E4205C44();

LABEL_8:
  v11 = [v4 initWithPlaybackContext:a1 videosPlayables:v8 imageProxies:v9 storeDictionary:v10];

  return v11;
}

uint64_t sub_1E37654B0(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35C10);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v18 = sub_1E32AE9B0(v1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = v1;
    v17 = v1 & 0xC000000000000001;
    v15 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v17 == 0, v1);
      if (v17)
      {
        result = MEMORY[0x1E6911E60](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_1E42004F4();
      sub_1E3765C9C(&qword_1ECF28DA0, MEMORY[0x1E695BF10]);
      result = sub_1E4205DA4();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3765C9C(&unk_1ECF35C20, MEMORY[0x1E695BF10]);
        if (sub_1E4205E84())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      v1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t type metadata accessor for SportsLockupInteractor()
{
  result = qword_1EE299D10;
  if (!qword_1EE299D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E376574C()
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

uint64_t sub_1E3765808()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3764E90();
  }

  return result;
}

uint64_t sub_1E376585C(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v6, v5);
    }

    v7 = v5;
    v8 = a2;
  }

  else
  {
    if (!v4)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }

      v10 = 1 << *(a1 + 32);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & *(a1 + 56);
      sub_1E42004F4();
      v13 = 0;
      v14 = (v10 + 63) >> 6;
      v6 = &qword_1ECF28DA0;
      if (v12)
      {
        while (2)
        {
          v21 = (v12 - 1) & v12;
LABEL_33:
          sub_1E3765C9C(&qword_1ECF28DA0, MEMORY[0x1E695BF10]);

          v17 = sub_1E4205DA4();
          v18 = ~(-1 << *(a2 + 32));
          do
          {
            v19 = v17 & v18;
            if (((*(a2 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {

              return 0;
            }

            sub_1E3765C9C(&unk_1ECF35C20, MEMORY[0x1E695BF10]);
            v20 = sub_1E4205E84();
            v17 = v19 + 1;
          }

          while ((v20 & 1) == 0);

          v14 = (v10 + 63) >> 6;
          v12 = v21;
          v6 = &qword_1ECF28DA0;
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v15 = v13;
      while (1)
      {
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return 1;
        }

        v16 = *(a1 + 56 + 8 * v13);
        ++v15;
        if (v16)
        {
          v21 = (v16 - 1) & v16;
          goto LABEL_33;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6A200](v6, v5);
    }

    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
  }

  return sub_1E3765B98(v7, v8);
}

uint64_t sub_1E3765B34()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t sub_1E3765B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1E4207384();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_1E42073D4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3765C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3765CE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    LOBYTE(v50) = 0;
    v3 = (*(*v2 + 776))(v51, &v50, &unk_1F5D5E578, &off_1F5D5CBF8);
    if (v52)
    {
      OUTLINED_FUNCTION_3_19(v3, v4, v5, MEMORY[0x1E69E6370], v6, v7, v8, v9, v41, v44, v47, v50);
      if ((swift_dynamicCast() & 1) == 0 || v50 != 1)
      {
        goto LABEL_15;
      }

      v10 = (**(v1 + 24) + 776);
      v11 = *v10;
      (*v10)(v51, &v50, &unk_1F5D5E578, &off_1F5D5CBF8);
      if (v52)
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        OUTLINED_FUNCTION_3_19(v12, v13, v14, v15, v16, v17, v18, v19, v42, v45, v48, v50);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_15;
        }

        v20 = v50;
        LOBYTE(v50) = 2;
        v21 = v11(v51, &v50, &unk_1F5D5E578, &off_1F5D5CBF8);
        if (v52)
        {
          OUTLINED_FUNCTION_3_19(v21, v22, v23, v24, v25, v26, v27, v28, v43, v46, v49, v50);
          if (swift_dynamicCast())
          {
            v29 = v50;
            v30 = sub_1E3744600(v20);

            v31 = sub_1E3744600(v29);

            v32 = objc_allocWithZone(VUIVideosPlayable);
            v33 = sub_1E37448C4(v30, v31);
            if (v33)
            {
              v34 = v33;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
              v35 = swift_allocObject();
              *(v35 + 16) = xmmword_1E4298880;
              *(v35 + 32) = v34;
              v36 = objc_allocWithZone(VUIMediaInfo);
              v37 = sub_1E376538C(8, v35, MEMORY[0x1E69E7CC0], 0);
              v38 = v37;
              if (!v37)
              {
LABEL_16:
                sub_1E3764D28(v38);
              }

              v39 = [v37 tvpPlaylist];

              if (v39)
              {
                v40 = [objc_opt_self() sharedInstance];
                v38 = [v40 isPlaylistBeingPresentedInMultiview_];

                goto LABEL_16;
              }
            }
          }

          else
          {
          }

LABEL_15:
          v38 = 0;
          goto LABEL_16;
        }
      }
    }

    sub_1E329505C(v51);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1E3766024(uint64_t a1, int a2)
{
  v57 = a2;
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E3C6C2D0(0);
  sub_1E3277E60(v10, v11, a1, &v62);

  v12 = MEMORY[0x1E69E7CA0];
  if (*(&v63[0] + 1))
  {
    v13 = MEMORY[0x1E69E63B0];
    if (swift_dynamicCast())
    {
      v2 = *&v59;
      v14 = sub_1E4205F14();
      sub_1E3277E60(v14, v15, a1, &v62);

      v55 = v4;
      if (*(&v63[0] + 1))
      {
        if (swift_dynamicCast())
        {
          v16 = *(&v59 + 1);
          v17 = v59;
          goto LABEL_23;
        }
      }

      else
      {
        sub_1E329505C(&v62);
      }

      v16 = 0x80000001E425B0F0;
      v17 = 0xD000000000000011;
LABEL_23:
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1E42074B4();

      *&v62 = 0xD000000000000023;
      *(&v62 + 1) = 0x80000001E425B110;
      MEMORY[0x1E69109E0](v17, v16);

      MEMORY[0x1E69109E0](0xA2D2D2D2D20, 0xE600000000000000);
      v64 = v62;
      if (_MergedGlobals_145 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_40;
    }
  }

  else
  {
    sub_1E329505C(&v62);
  }

  *&v64 = 0xD00000000000004ELL;
  *(&v64 + 1) = 0x80000001E425B080;
  v6 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v13 = v19 & *(a1 + 64);
  v20 = (v18 + 63) >> 6;

  v21 = 0;
  if (!v13)
  {
LABEL_11:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        v13 = 0;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        goto LABEL_16;
      }

      v13 = *(v6 + 8 * v22);
      ++v21;
      if (v13)
      {
        v21 = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
LABEL_24:
    v32 = *(qword_1EE28B268 + 16);
    if (v32)
    {
      v33 = v9;
      v54 = (v6 + 8);
      v34 = (qword_1EE28B268 + 40);
      v53 = xmmword_1E4297BE0;
      do
      {
        if (*(a1 + 16))
        {
          v35 = *(v34 - 1);
          v36 = *v34;

          v37 = sub_1E327D33C(v35, v36);
          if (v38)
          {
            sub_1E328438C(*(a1 + 56) + 32 * v37, &v59);
            sub_1E329504C(&v59, &v62);
            sub_1E328438C(&v62, &v59);
            if (swift_dynamicCast())
            {
              v39 = v58[0];
              v40 = v57;
              if (v57)
              {
                v39 = v58[0] - v2;
              }

              v41 = v39 / 1000.0;
              sub_1E41FE564();
              v42 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
              sub_1E3768E10(0x535353532E7373, 0xE700000000000000, v42);
              v56 = v42;
              if (v40)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
                v43 = swift_allocObject();
                *(v43 + 16) = v53;
                *(v43 + 56) = v13;
                *(v43 + 64) = MEMORY[0x1E69E6438];
                *(v43 + 32) = v41;
                v44 = sub_1E4205F44();
                v45 = v33;
                v47 = v46;
              }

              else
              {
                v48 = sub_1E41FE514();
                v49 = [v42 stringFromDate_];

                v44 = sub_1E4205F14();
                v45 = v33;
                v47 = v50;
              }

              *&v59 = v35;
              *(&v59 + 1) = v36;
              MEMORY[0x1E69109E0](8250, 0xE200000000000000);
              MEMORY[0x1E69109E0](v44, v47);

              OUTLINED_FUNCTION_27_7();
              MEMORY[0x1E69109E0](v59, *(&v59 + 1));

              (*v54)(v45, v55);
              __swift_destroy_boxed_opaque_existential_1(&v62);
              v33 = v45;
              v13 = MEMORY[0x1E69E63B0];
            }

            else
            {
              *&v59 = 0;
              *(&v59 + 1) = 0xE000000000000000;
              MEMORY[0x1E69109E0](v35, v36);

              MEMORY[0x1E69109E0](8250, 0xE200000000000000);
              sub_1E4207614();
              OUTLINED_FUNCTION_27_7();
              MEMORY[0x1E69109E0](v59, *(&v59 + 1));

              __swift_destroy_boxed_opaque_existential_1(&v62);
            }
          }

          else
          {
          }
        }

        v34 += 2;
        --v32;
      }

      while (v32);
    }

    goto LABEL_38;
  }

  while (1)
  {
    v22 = v21;
LABEL_15:
    v23 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v24 = v23 | (v22 << 6);
    v25 = (*(a1 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_1E328438C(*(a1 + 56) + 32 * v24, v58);
    *&v59 = v27;
    *(&v59 + 1) = v26;
    sub_1E329504C(v58, &v60);

LABEL_16:
    v62 = v59;
    v63[0] = v60;
    v63[1] = v61;
    v28 = *(&v59 + 1);
    if (!*(&v59 + 1))
    {
      break;
    }

    v29 = v12;
    v30 = v62;
    sub_1E329504C(v63, &v59);
    v58[0] = 0.0;
    v58[1] = -2.68156159e154;
    v31 = v30;
    v12 = v29;
    MEMORY[0x1E69109E0](v31, v28);

    MEMORY[0x1E69109E0](8250, 0xE200000000000000);
    sub_1E4207614();
    OUTLINED_FUNCTION_27_7();
    v9 = *&v58[1];
    MEMORY[0x1E69109E0](*&v58[0], *&v58[1]);

    __swift_destroy_boxed_opaque_existential_1(&v59);
    if (!v13)
    {
      goto LABEL_11;
    }
  }

LABEL_38:
  MEMORY[0x1E69109E0](0xD00000000000001ALL, 0x80000001E425B0D0);
  v51 = v64;

  sub_1E3766754(v51, *(&v51 + 1));

  return v51;
}

uint64_t sub_1E3766754(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E324FBDC();
  (*(v6 + 16))(v9, v10, v4);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1E3270FC8(a1, a2, &v17);
    _os_log_impl(&dword_1E323F000, v11, v12, "PagePerformanceVerfication: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1E376690C(uint64_t a1)
{
  v21 = 0xD000000000000029;
  v22 = 0x80000001E425B140;
  sub_1E3277E60(0x707954746E657665, 0xE900000000000065, a1, &v18);
  if (!v20)
  {
    sub_1E329505C(&v18);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_1E3766754(0xD000000000000031, 0x80000001E425B170);
    v4 = 0;
    goto LABEL_27;
  }

  v2 = v17[0] == 0x646E655265676170 && v17[1] == 0xEA00000000007265;
  if (!v2)
  {
    v3 = sub_1E42079A4();

    if (v3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_12:
  if (qword_1EE28B270 != -1)
  {
LABEL_29:
    swift_once();
  }

  v5 = qword_1EE28B278;
  v6 = *(qword_1EE28B278 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v5 + 40 + 16 * v7;
      while (1)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        v10 = v7 + 1;
        v11 = *(v9 - 8);
        v17[0] = a1;

        v11(&v18, v17);

        if ((v18 & 1) == 0)
        {
          break;
        }

        v9 += 16;
        ++v7;
        if (v6 == v10)
        {
          v4 = v8;
          goto LABEL_27;
        }
      }

      v12 = *(&v18 + 1);
      *&v18 = 0x203A726F727245;
      *(&v18 + 1) = 0xE700000000000000;
      if (v19)
      {
        v13 = v19;
      }

      else
      {
        v12 = 0x206E776F6E6B6E55;
        v13 = 0xED0000726F727265;
      }

      MEMORY[0x1E69109E0](v12, v13);

      v15 = *(&v18 + 1);
      v14 = v18;
      sub_1E3766754(v18, *(&v18 + 1));
      v18 = __PAIR128__(v15, v14);

      OUTLINED_FUNCTION_27_7();

      MEMORY[0x1E69109E0](v18, *(&v18 + 1));

      v8 = 0;
      v4 = 0;
      v2 = v6 - 1 == v7++;
    }

    while (!v2);
  }

  else
  {
    v4 = 1;
  }

LABEL_27:

  return v4 & 1;
}