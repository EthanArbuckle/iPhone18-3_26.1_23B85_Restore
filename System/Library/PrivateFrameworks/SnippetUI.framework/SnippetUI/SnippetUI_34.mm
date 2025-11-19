id sub_26A807CB4(void *a1)
{
  v2 = AFEffectiveSiriBundlePathForLocation();
  if (v2)
  {
    v3 = v2;
    v4 = sub_26A8517B8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_26A4EC5B0(0, &qword_28157D830);
  v7 = sub_26A851F28();
  objc_allocWithZone(MEMORY[0x277CBFC10]);
  v8 = a1;
  result = sub_26A80A244(v4, v6, a1, v7);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_26A807D6C(uint64_t a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B93C8);
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0FF0);
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = OBJC_IVAR____TtC9SnippetUI12MapViewModel__didFinishLoading;
  LOBYTE(v62) = 0;
  sub_26A84EBD8();
  v15 = *(v10 + 32);
  v15(v1 + v14, v13, v8);
  v16 = OBJC_IVAR____TtC9SnippetUI12MapViewModel__canShowUserLocation;
  LOBYTE(v62) = 0;
  sub_26A84EBD8();
  v15(v1 + v16, v13, v8);
  v17 = OBJC_IVAR____TtC9SnippetUI12MapViewModel__userLocation;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B9310);
  sub_26A84EBD8();
  (*(v4 + 32))(v1 + v17, v7, v60);
  v18 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SnippetUI12MapViewModel_mapItems) = MEMORY[0x277D84F90];
  v55 = v1;
  v56 = v18;
  *(v1 + OBJC_IVAR____TtC9SnippetUI12MapViewModel____lazy_storage___locationManager) = 0;
  v62 = v18;
  v19 = sub_26A73670C(a1);
  v20 = 0;
  v21 = a1;
  v59 = a1 & 0xFFFFFFFFFFFFFF8;
  v60 = a1 & 0xC000000000000001;
  v57 = xmmword_26A8571A0;
  while (v19 != v20)
  {
    if (v60)
    {
      v22 = MEMORY[0x26D6644E0](v20, v21);
    }

    else
    {
      if (v20 >= *(v59 + 16))
      {
        goto LABEL_19;
      }

      v22 = *(v21 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v25 = [objc_opt_self() sharedService];
    if (!v25)
    {
      goto LABEL_20;
    }

    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150);
    v27 = swift_allocObject();
    *(v27 + 16) = v57;
    *(v27 + 32) = v23;
    sub_26A4EC5B0(0, &qword_2803B0EA0);
    v28 = v23;
    v29 = sub_26A851A88();

    v30 = [objc_opt_self() sharedService];
    if (!v30)
    {
      goto LABEL_21;
    }

    v31 = v30;
    v32 = [v30 defaultTraits];

    v33 = [v26 ticketForIdentifiers:v29 traits:v32];
    ++v20;
    if (v33)
    {
      MEMORY[0x26D663CE0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26A851B08();
      }

      sub_26A851B28();
      v56 = v62;
      v20 = v24;
    }
  }

  v34 = OBJC_IVAR____TtC9SnippetUI12MapViewModel_mapServiceTickets;
  v35 = v55;
  *&v55[OBJC_IVAR____TtC9SnippetUI12MapViewModel_mapServiceTickets] = v56;
  v36 = sub_26A73670C(v21);

  v37 = sub_26A73670C(*&v35[v34]);
  if (v37 >= v36)
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_100();
    sub_26A7ADED4(v45, v46, v47, v48, v49, 41, v50, 25, v53, v36, v55, v56, v57, *(&v57 + 1), v58, v59, v60, v61.receiver, v61.super_class, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  }

  else
  {
    v38 = v37;
    sub_26A851E98();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_100();
    sub_26A7ADBEC(v39, v40, v41, v42, v43, 39, v44, 25, v52, v36, v38, v54, v55, v56, v57, *(&v57 + 1), v58, v59, v60, v61.receiver, v61.super_class, v62, v63, v64, v65, v66, v67, v68);
  }

  v51 = type metadata accessor for MapViewModel();
  v61.receiver = v35;
  v61.super_class = v51;
  objc_msgSendSuper2(&v61, sel_init);
}

uint64_t sub_26A808244()
{
  OUTLINED_FUNCTION_6_10();
  v1 = *(v0[3] + OBJC_IVAR____TtC9SnippetUI12MapViewModel_mapServiceTickets);
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9390);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  v0[6] = v4;
  *v4 = v5;
  v4[1] = sub_26A808350;

  return MEMORY[0x282200740](v0 + 2, v2, v2, 0, 0, &unk_26A888540, v3, v2);
}

uint64_t sub_26A808350()
{
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_2_48();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    v4 = &sub_26A808660;
  }

  else
  {

    v4 = &sub_26A808490;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_26A808598()
{
  OUTLINED_FUNCTION_6_10();
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[3];

  sub_26A80930C(v3, v1);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_26A80864C, 0, 0);
  }
}

uint64_t sub_26A808750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B93A8);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26A808864, 0, 0);
}

uint64_t sub_26A808864()
{
  v1 = sub_26A73670C();
  if (v1)
  {
    v2 = v1;
    if (v1 < 1)
    {
      __break(1u);
      return MEMORY[0x282200308](v1);
    }

    v3 = 0;
    v4 = *(v0 + 128);
    v20 = **(v0 + 120);
    v21 = v4 & 0xC000000000000001;
    v19 = v4 + 32;
    do
    {
      if (v21)
      {
        v5 = MEMORY[0x26D6644E0](v3, *(v0 + 128));
      }

      else
      {
        v5 = *(v19 + 8 * v3);
        swift_unknownObjectRetain();
      }

      v7 = *(v0 + 160);
      v6 = *(v0 + 168);
      v8 = sub_26A851C18();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v5;
      sub_26A520DB0(v6, v7);
      LODWORD(v7) = __swift_getEnumTagSinglePayload(v7, 1, v8);
      swift_unknownObjectRetain();
      v10 = *(v0 + 160);
      if (v7 == 1)
      {
        sub_26A520E20(*(v0 + 160));
      }

      else
      {
        sub_26A851C08();
        (*(*(v8 - 8) + 8))(v10, v8);
      }

      if (v9[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v11 = sub_26A851B78();
        v13 = v12;
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9390);
      v14 = v13 | v11;
      if (v13 | v11)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        v14 = v0 + 16;
        *(v0 + 32) = v11;
        *(v0 + 40) = v13;
      }

      ++v3;
      v15 = *(v0 + 168);
      *(v0 + 80) = 1;
      *(v0 + 88) = v14;
      *(v0 + 96) = v20;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_26A520E20(v15);
    }

    while (v2 != v3);
  }

  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088);
  sub_26A851CA8();
  *(v0 + 184) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_82(&qword_2803B93B0, &qword_2803B93A8);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  *(v0 + 192) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_3_92(v16);
  v1 = v0 + 104;

  return MEMORY[0x282200308](v1);
}

uint64_t sub_26A808BA0()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  OUTLINED_FUNCTION_2_48();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_12();
  *v6 = v5;
  v3[25] = v0;

  if (v0)
  {
    (*(v3[18] + 8))(v3[19], v3[17]);

    v7 = sub_26A809074;
  }

  else
  {
    v7 = sub_26A808CC4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26A808CC4()
{
  v2 = v0 + 13;
  v1 = v0[13];
  if (v1)
  {
    if (v1 >> 62)
    {
      v3 = sub_26A852168();
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v0[23];
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_26A852168();
    }

    else
    {
      isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = isUniquelyReferenced_nonNull_bridgeObject + v3;
    if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v3))
    {
      __break(1u);
      goto LABEL_39;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v5)
      {
        v8 = v4 & 0xFFFFFFFFFFFFFF8;
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v9 >= v7)
        {
          v30 = v0[23];
          goto LABEL_18;
        }

LABEL_17:
        isUniquelyReferenced_nonNull_bridgeObject = sub_26A852288();
        v30 = isUniquelyReferenced_nonNull_bridgeObject;
        v8 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
        v9 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_18:
        v14 = *(v8 + 16);
        v15 = v9 - v14;
        if (v1 >> 62)
        {
          v17 = sub_26A852168();
          if (v17)
          {
            v18 = v17;
            isUniquelyReferenced_nonNull_bridgeObject = sub_26A852168();
            if (v15 < isUniquelyReferenced_nonNull_bridgeObject)
            {
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            if (v18 < 1)
            {
LABEL_43:
              __break(1u);
              return MEMORY[0x282200308](isUniquelyReferenced_nonNull_bridgeObject);
            }

            v16 = isUniquelyReferenced_nonNull_bridgeObject;
            v29 = v8;
            v19 = v8 + 8 * v14 + 32;
            sub_26A4DBCC8(&unk_2803B93B8, &qword_2803B9390);
            for (i = 0; i != v18; ++i)
            {
              v21 = sub_26A80A6CC(v0 + 6, i, v1);
              v23 = *v22;
              (v21)(v0 + 6, 0);
              *(v19 + 8 * i) = v23;
            }

            v2 = v0 + 13;
            v8 = v29;
            goto LABEL_28;
          }
        }

        else
        {
          v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16)
          {
            if (v15 < v16)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            sub_26A4EC5B0(0, &qword_2803B93A0);
            swift_arrayInitWithCopy();
LABEL_28:

            if (v16 >= v3)
            {
              if (v16 <= 0)
              {
                goto LABEL_33;
              }

              v24 = *(v8 + 16);
              v25 = __OFADD__(v24, v16);
              v26 = v24 + v16;
              if (!v25)
              {
                *(v8 + 16) = v26;
                goto LABEL_33;
              }

              goto LABEL_40;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        if (v3 <= 0)
        {
LABEL_33:
          v0[23] = v30;
          OUTLINED_FUNCTION_5_82(&qword_2803B93B0, &qword_2803B93A8);
          swift_task_alloc();
          OUTLINED_FUNCTION_16_23();
          v0[24] = v27;
          *v27 = v28;
          OUTLINED_FUNCTION_3_92();
          isUniquelyReferenced_nonNull_bridgeObject = v2;

          return MEMORY[0x282200308](isUniquelyReferenced_nonNull_bridgeObject);
        }

        goto LABEL_39;
      }
    }

    else if (!v5)
    {
      goto LABEL_17;
    }

    sub_26A852168();
    goto LABEL_17;
  }

  v10 = v0[23];
  v11 = v0[14];
  (*(v0[18] + 8))(v0[19], v0[17]);
  *v11 = v10;

  v12 = v0[1];

  return v12();
}

uint64_t sub_26A809074()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A8090E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26A809108, 0, 0);
}

uint64_t sub_26A809108()
{
  OUTLINED_FUNCTION_1_10();
  if (qword_2803A9010 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_26A8091D0;
  v2 = *(v0 + 24);

  return sub_26A80986C(v2);
}

uint64_t sub_26A8091D0()
{
  OUTLINED_FUNCTION_6_10();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  v5 = v4;
  OUTLINED_FUNCTION_2_48();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_12();
  *v8 = v7;

  if (v0)
  {

    v9 = sub_26A8092F8;
  }

  else
  {
    *(v5 + 40) = v3;
    v9 = sub_26A8092E8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26A80930C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  if (a2)
  {
    v2 = a2;
  }

  *(a1 + OBJC_IVAR____TtC9SnippetUI12MapViewModel_mapItems) = v2;

  return sub_26A807B34();
}

id sub_26A8094B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MapViewModel()
{
  result = qword_2803B92F0;
  if (!qword_2803B92F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A809658()
{
  sub_26A80973C();
  if (v0 <= 0x3F)
  {
    sub_26A80978C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A80973C()
{
  if (!qword_28157FEE0)
  {
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_28157FEE0);
    }
  }
}

void sub_26A80978C()
{
  if (!qword_2803B9308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B9310);
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B9308);
    }
  }
}

uint64_t sub_26A8097F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MapViewModel();
  result = sub_26A84EB88();
  *a1 = result;
  return result;
}

uint64_t sub_26A809830()
{
  type metadata accessor for MKMapItemLoader();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2803D2750 = v0;
  return result;
}

uint64_t sub_26A80986C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_8_70(sub_26A809888, v1);
}

uint64_t sub_26A809888()
{
  OUTLINED_FUNCTION_5_9();
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_26A80A300();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9390);
  *v5 = v0;
  v5[1] = sub_26A80999C;

  return MEMORY[0x2822008A0](v0 + 2, v1, v3, 0xD000000000000014, 0x800000026A8931D0, sub_26A80A354, v4, v6);
}

uint64_t sub_26A80999C()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  OUTLINED_FUNCTION_2_48();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_12();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = *(v3 + 32);
    v8 = sub_26A809AC8;
  }

  else
  {
    v9 = *(v3 + 32);

    v8 = sub_26A809AAC;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26A809AC8()
{
  OUTLINED_FUNCTION_1_10();

  v1 = *(v0 + 8);

  return v1();
}

void sub_26A809B28(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9398);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_26A80A35C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A809EA0;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);

  [a2 submitWithHandler:v11 networkActivity:0];
  _Block_release(v11);
}

uint64_t sub_26A809CDC(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9398);
    return sub_26A851B88();
  }

  else
  {
    if (!a1 || !sub_26A809D9C(a1, &qword_2803B93A0))
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9398);
    return sub_26A851B98();
  }
}

uint64_t sub_26A809D9C(uint64_t a1, unint64_t *a2)
{
  v8 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  sub_26A8522F8();
  v5 = a1 + 32;
  if (!v4)
  {
    return v8;
  }

  while (1)
  {
    sub_26A5136A0(v5, v7);
    sub_26A4EC5B0(0, a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_26A8522C8();
    sub_26A852308();
    sub_26A852318();
    sub_26A8522D8();
    v5 += 32;
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_26A809EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_26A851A98();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_26A809F3C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_26A809F90(void *a1)
{
  v3 = sub_26A807C50();
  v4 = [v3 authorizationStatus];

  if (v4 - 1 < 2)
  {

    sub_26A807B5C();
  }

  else
  {
    if (v4 - 3 >= 2)
    {
      if (v4)
      {
        return;
      }

      sub_26A807B5C();
      v8 = sel_requestWhenInUseAuthorization;
      v7 = a1;
    }

    else
    {
      v5 = OBJC_IVAR____TtC9SnippetUI12MapViewModel____lazy_storage___locationManager;
      [*(v1 + OBJC_IVAR____TtC9SnippetUI12MapViewModel____lazy_storage___locationManager) accuracyAuthorization];
      sub_26A807B5C();
      v6 = [*(v1 + v5) location];
      sub_26A807BE4();
      v7 = *(v1 + v5);
      v8 = sel_startUpdatingLocation;
    }

    [v7 v8];
  }
}

uint64_t sub_26A80A100(id a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_26A852168();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  [a1 stopUpdatingLocation];
  sub_26A736710(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D6644E0](0, a2);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  return sub_26A807BE4();
}

id sub_26A80A244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_26A851788();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundlePath:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

unint64_t sub_26A80A300()
{
  result = qword_2803B9388;
  if (!qword_2803B9388)
  {
    type metadata accessor for MKMapItemLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9388);
  }

  return result;
}

uint64_t sub_26A80A35C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9398);

  return sub_26A809CDC(a1, a2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A80A400()
{
  OUTLINED_FUNCTION_6_10();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_26A80A75C;

  return sub_26A808750(v5, v3, v6);
}

uint64_t sub_26A80A4A8()
{
  OUTLINED_FUNCTION_6_10();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_16_23();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_26A80A554;

  return sub_26A8090E8(v3, v4, v5, v6);
}

uint64_t sub_26A80A554()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void (*sub_26A80A638(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_26A4BFE6C(a3);
  sub_26A736710(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D6644E0](a2, a3);
  }

  *a1 = v7;
  return sub_26A80A6C4;
}

void (*sub_26A80A6CC(void *a1, uint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_26A4BFE6C(a3);
  sub_26A736710(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D6644E0](a2, a3);
  }

  *a1 = v7;
  return sub_26A80A758;
}

uint64_t OUTLINED_FUNCTION_5_82(unint64_t *a1, uint64_t *a2)
{

  return sub_26A4DBCC8(a1, a2);
}

BOOL sub_26A80A884()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4DBD10(v4, &qword_2803AAD50);
  return v5 != 0;
}

id sub_26A80A96C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for SummaryItemButtonView();
  OUTLINED_FUNCTION_46();
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [v3 text_1];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [v3 button_1];
  if (!v12)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v28 = v3;
    *(v28 + 8) = &unk_287B13748;
    *(v28 + 16) = 0;
    swift_willThrow();
    return v3;
  }

  v13 = v12;
  v83 = a1;
  v115 = v2;
  v82 = v11;
  RFTextProperty.asPartialText()(v111);
  sub_26A6F9608(0, 0, v14, v15, v16, v17, v18, v19, v110);
  v20 = [v3 button_2];
  if (v20)
  {
    v21 = v20;
    *(&v108 + 1) = &type metadata for SearchUIButtonView;
    v109 = &off_287B20490;
    *&v107 = swift_allocObject();
    sub_26A6F9608(0, 0, v22, v23, v24, v25, v26, v27, v107 + 16);
  }

  else
  {
    v109 = 0;
    v108 = 0u;
    v107 = 0u;
  }

  v30 = [v3 button_3];
  if (v30)
  {
    v31 = v30;
    *(&v105 + 1) = &type metadata for SearchUIButtonView;
    v106 = &off_287B20490;
    *&v104 = swift_allocObject();
    sub_26A6F9608(0, 0, v32, v33, v34, v35, v36, v37, v104 + 16);
  }

  else
  {
    v106 = 0;
    v105 = 0u;
    v104 = 0u;
  }

  v38 = sub_26A54AB40(v3, &selRef_text_2);
  if (v38)
  {
    sub_26A51B744(v38, v112);
    memcpy(v95, v112, 0x41uLL);
    sub_26A54AAEC();
    v38 = sub_26A851248();
    v39 = &protocol witness table for AnyView;
    v40 = MEMORY[0x277CE11C8];
  }

  else
  {
    v40 = 0;
    v39 = 0;
    v103[2] = 0;
    v103[1] = 0;
  }

  v103[0] = v38;
  v103[3] = v40;
  v103[4] = v39;
  v41 = sub_26A54AB40(v3, &selRef_text_3);
  if (v41)
  {
    sub_26A51B744(v41, v113);
    memcpy(v95, v113, 0x41uLL);
    sub_26A54AAEC();
    v41 = sub_26A851248();
    v42 = &protocol witness table for AnyView;
    v43 = MEMORY[0x277CE11C8];
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v102[2] = 0;
    v102[1] = 0;
  }

  v102[0] = v41;
  v102[3] = v43;
  v102[4] = v42;
  v44 = [v3 text_4];
  if (v44)
  {
    v45 = v44;
    *(&v100 + 1) = &type metadata for PartialText;
    v101 = &protocol witness table for PartialText;
    *&v99 = swift_allocObject();
    RFTextProperty.asPartialText()(v99 + 16);
  }

  else
  {
    v101 = 0;
    v100 = 0u;
    v99 = 0u;
  }

  v46 = [v3 thumbnail];
  if (v46)
  {
    v47 = v46;
    *(&v97 + 1) = sub_26A84BD28();
    v98 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v96);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v98 = 0;
    v97 = 0u;
    v96 = 0u;
  }

  v81 = v13;
  v80 = [v3 buttonItemsAreTrailing];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v89[0] = xmmword_281588758[0];
  v89[1] = unk_281588768;
  v89[2] = xmmword_281588778;
  v89[3] = xmmword_281588788;
  v90 = xmmword_281588758[0];
  v91 = unk_281588768;
  v92 = xmmword_281588778;
  v93 = xmmword_281588788;
  v78 = xmmword_281588788;
  v79 = xmmword_281588778;
  sub_26A51D0F8(v89, v95, &qword_2803A91B0);
  sub_26A6AEE74(v94);
  memcpy(v9, v94, 0xC0uLL);
  v48 = v78;
  v9[12] = v79;
  v9[13] = v48;
  v49 = v93;
  v9[16] = v92;
  v9[17] = v49;
  v50 = v91;
  v9[14] = v90;
  v9[15] = v50;
  v51 = v9 + *(v5 + 20);
  v52 = v5;
  v53 = v9;
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v55 = __swift_project_value_buffer(v54, qword_281588798);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v57 = &v51[*(v56 + 32)];
  sub_26A51D0F8(v55, v57, &qword_2803B3890);
  sub_26A6AEE74(v114);
  memcpy(v51, v114, 0xBFuLL);
  sub_26A4DB4E0(v57 + *(v54 + 36), &v51[*(v56 + 28)]);
  v58 = v52[6];
  *(v53 + v58) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v59 = v53 + v52[7];
  *v59 = swift_getKeyPath();
  *(v59 + 8) = 0;
  v60 = v52[8];
  *(v53 + v60) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  memcpy(v95, v111, 0xFAuLL);
  OUTLINED_FUNCTION_3_93();
  sub_26A4EC458(v95, v84);
  sub_26A4EC4B4();
  *(v53 + v52[9]) = sub_26A851248();
  sub_26A5376B0(v110, v87);
  sub_26A53770C();
  *(v53 + v52[10]) = sub_26A851248();
  sub_26A51D0F8(&v107, v87, &qword_2803A91B8);
  v61 = v52;
  if (v88)
  {
    v62 = OUTLINED_FUNCTION_0_101();
    v63(v62);
    OUTLINED_FUNCTION_4_87();
  }

  else
  {
    sub_26A4DBD10(v87, &qword_2803A91B8);
    v60 = 0;
  }

  v64 = v82;
  *(v53 + v61[11]) = v60;
  sub_26A51D0F8(&v104, v87, &qword_2803A91B8);
  if (v88)
  {
    v65 = OUTLINED_FUNCTION_0_101();
    v66(v65);
    OUTLINED_FUNCTION_4_87();
  }

  else
  {
    sub_26A4DBD10(v87, &qword_2803A91B8);
    v60 = 0;
  }

  *(v53 + v61[12]) = v60;
  sub_26A51D0F8(v103, v87, &qword_2803A91B8);
  if (v88)
  {
    v67 = OUTLINED_FUNCTION_0_101();
    v68(v67);
    OUTLINED_FUNCTION_4_87();
  }

  else
  {
    sub_26A4DBD10(v87, &qword_2803A91B8);
    v60 = 0;
  }

  *(v53 + v61[13]) = v60;
  sub_26A51D0F8(v102, v87, &qword_2803A91B8);
  if (v88)
  {
    v69 = OUTLINED_FUNCTION_0_101();
    v70(v69);
    OUTLINED_FUNCTION_4_87();
  }

  else
  {
    sub_26A4DBD10(v87, &qword_2803A91B8);
    v60 = 0;
  }

  *(v53 + v61[14]) = v60;
  sub_26A51D0F8(&v99, v87, &qword_2803A91B8);
  if (v88)
  {
    v71 = OUTLINED_FUNCTION_0_101();
    v72(v71);
    OUTLINED_FUNCTION_4_87();
  }

  else
  {
    sub_26A4DBD10(v87, &qword_2803A91B8);
    v60 = 0;
  }

  *(v53 + v61[15]) = v60;
  sub_26A51D0F8(&v96, v84, &qword_2803A91B8);
  v73 = v85;
  if (v85)
  {
    v74 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v75 = (*(v74 + 8))(v73, v74);

    sub_26A537760(v110);
    OUTLINED_FUNCTION_3_93();
    sub_26A4EC508(v87);
    OUTLINED_FUNCTION_27_9(&v96);
    OUTLINED_FUNCTION_27_9(&v99);
    OUTLINED_FUNCTION_27_9(v102);
    OUTLINED_FUNCTION_27_9(v103);
    __swift_destroy_boxed_opaque_existential_1(v84);
  }

  else
  {
    sub_26A537760(v110);

    OUTLINED_FUNCTION_3_93();
    sub_26A4EC508(v87);
    OUTLINED_FUNCTION_18_0(&v96);
    OUTLINED_FUNCTION_18_0(&v99);
    OUTLINED_FUNCTION_18_0(v102);
    OUTLINED_FUNCTION_18_0(v103);
    OUTLINED_FUNCTION_18_0(v84);
    v75 = 0;
  }

  *(v53 + v61[16]) = v75;
  if (v80)
  {
    v76 = 1;
    v77 = v83;
  }

  else
  {
    v77 = v83;
    if (*(&v108 + 1))
    {
      v76 = 0;
    }

    else
    {
      v76 = *(&v105 + 1) == 0;
    }
  }

  *(v53 + v61[17]) = v76;
  sub_26A80B3F8(v53, v77);
  OUTLINED_FUNCTION_18_0(&v104);
  return OUTLINED_FUNCTION_18_0(&v107);
}

unint64_t sub_26A80B3A0()
{
  result = qword_2803AF4E8;
  if (!qword_2803AF4E8)
  {
    type metadata accessor for SummaryItemButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF4E8);
  }

  return result;
}

uint64_t sub_26A80B3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_3_93()
{

  return memcpy((v0 + 320), (v0 + 1544), 0xFAuLL);
}

uint64_t OUTLINED_FUNCTION_4_87()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 320);
}

void sub_26A80B4C4(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v34 = a1;
  v4 = sub_26A851618();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A851648();
  OUTLINED_FUNCTION_15();
  v37 = v11;
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A851668();
  OUTLINED_FUNCTION_15();
  v35 = v15;
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v21 = objc_opt_self();
  v22 = [v21 currentThread];
  v23 = [v21 mainThread];
  sub_26A4EC5B0(0, qword_2803B93D8);
  v24 = sub_26A851FF8();

  if ((v24 & 1) == 0)
  {
    v25 = sub_26A851E98();
    LOBYTE(v31) = 2;
    sub_26A7BF854(v25, 1, "SnippetUI/Throttler.swift", 25, 2, 21, "throttle(_:)", 12, v31, v32, v33, v34, v35, v36, v37, v38, aBlock, v40, v41, v42, v43, v44);
  }

  if (*(v3 + 16))
  {
    v26 = sub_26A851E88();
    sub_26A7BFA38(v26, 1, "SnippetUI/Throttler.swift", 25, 2, 25, "throttle(_:)", 12, 2);
  }

  else
  {
    *(v3 + 16) = 1;
    v34();
    sub_26A4EC5B0(0, &qword_28157D830);
    v34 = sub_26A851F28();
    sub_26A851658();
    sub_26A851678();
    v35 = *(v35 + 8);
    v27 = v17;
    v28 = v36;
    (v35)(v27, v36);
    v43 = sub_26A80B9AC;
    v44 = v3;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_26A4F8A68;
    v42 = &block_descriptor_7;
    v29 = _Block_copy(&aBlock);

    sub_26A851638();
    aBlock = MEMORY[0x277D84F90];
    sub_26A72A7A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
    sub_26A655800();
    sub_26A852118();
    v30 = v34;
    MEMORY[0x26D664140](v20, v13, v9, v29);
    _Block_release(v29);

    (*(v6 + 8))(v9, v4);
    (*(v37 + 8))(v13, v38);
    (v35)(v20, v28);
  }
}

uint64_t sub_26A80B93C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Throttler();
  result = sub_26A84EB88();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A80B9D0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v23 = *(a2 - 8);
  v24 = a2;
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  v21 = 1;
  if (__swift_getEnumTagSinglePayload(v18, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v18, v10);
    v26(v14, v8);
    (*(v11 + 8))(v14, v10);
    if (v5)
    {
      return (*(v23 + 32))(v25, v8, v24);
    }

    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v21, 1, v27);
}

uint64_t View.draggableContent<A>(_:)()
{
  type metadata accessor for DraggableContent();
  OUTLINED_FUNCTION_1_107();
  swift_getWitnessTable();

  return sub_26A850958();
}

uint64_t View.makeDraggable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DraggableModifier();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  sub_26A80BE04(a3);
  MEMORY[0x26D662ED0](v12, a2, v7, a4);
  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_26A80BE04(uint64_t a1)
{
  sub_26A852068();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  __swift_storeEnumTagSinglePayload(&v6 - v3, 1, 1, a1);
  return sub_26A80BE98(v4);
}

uint64_t sub_26A80BE98(uint64_t a1)
{
  v2 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_0_47(v6, v10);
  v8(v7);
  sub_26A851048();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_26A80BF60(uint64_t a1)
{
  v2 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_0_47(v6, v10);
  v8(v7);
  sub_26A851088();
  sub_26A851068();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_26A80C030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v63 = a3;
  v60 = *(a2 - 8);
  v62 = *(v60 + 64);
  MEMORY[0x28223BE20](a1);
  v59 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v54 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  OUTLINED_FUNCTION_2_102();
  swift_getWitnessTable();
  v12 = sub_26A84FE88();
  OUTLINED_FUNCTION_2_31();
  WitnessTable = swift_getWitnessTable();
  v64 = *(a2 + 24);
  v75 = v12;
  v76 = v6;
  v77 = WitnessTable;
  v78 = v64;
  v46 = MEMORY[0x277CDEF48];
  swift_getOpaqueTypeMetadata2();
  v47 = sub_26A852068();
  v49 = sub_26A84FE08();
  v58 = *(v49 - 8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v45 = &v43 - v14;
  v15 = type metadata accessor for DraggableContent();
  OUTLINED_FUNCTION_1_107();
  v51 = v15;
  v53 = swift_getWitnessTable();
  v16 = *(a2 + 32);
  v74 = v16;
  v43 = v16;
  OUTLINED_FUNCTION_7_76();
  v52 = swift_getWitnessTable();
  v56 = sub_26A850028();
  v17 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v57 = v18;
  MEMORY[0x28223BE20](v19);
  v44 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v55 = &v43 - v22;
  v23 = v50;
  sub_26A5B2D40();
  __swift_getEnumTagSinglePayload(v11, 1, v6);
  (v54[1])(v11, v7);
  v54 = &v43;
  v65 = v6;
  v66 = v64;
  v67 = v16;
  v68 = v23;
  v75 = v12;
  v76 = v6;
  v24 = WitnessTable;
  v77 = WitnessTable;
  v78 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_88();
  v25 = swift_getWitnessTable();
  v26 = v45;
  v27 = v24;
  View.if<A>(_:transform:)();
  v28 = v60;
  v29 = v59;
  (*(v60 + 16))(v59, v23, a2);
  v30 = v28;
  v31 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = v64;
  *(v32 + 2) = v6;
  *(v32 + 3) = v33;
  *(v32 + 4) = v43;
  (*(v30 + 32))(&v32[v31], v29, a2);
  v71 = v25;
  v72 = v27;
  OUTLINED_FUNCTION_6_14();
  v34 = v49;
  v35 = swift_getWitnessTable();
  v36 = v44;
  sub_26A850B38();

  (*(v58 + 8))(v26, v34);
  OUTLINED_FUNCTION_5_83();
  v37 = swift_getWitnessTable();
  v69 = v35;
  v70 = v37;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  v38 = v55;
  OUTLINED_FUNCTION_14_5();
  sub_26A80757C(v39);
  v40 = *(v57 + 8);
  v40(v36, v17);
  OUTLINED_FUNCTION_14_5();
  sub_26A80757C(v41);
  return (v40)(v38, v17);
}

uint64_t sub_26A80C644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_26A852068();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-v12];
  type metadata accessor for DraggableModifier();
  sub_26A5B2D40();
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a1;
  swift_getWitnessTable();
  v14 = sub_26A84FE88();
  WitnessTable = swift_getWitnessTable();
  v24 = v14;
  v25 = a2;
  v26 = WitnessTable;
  v27 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_26A80B9D0(sub_26A80D324, MEMORY[0x277D84A98], OpaqueTypeMetadata2, v17, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_26A80C810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  *(v12 + 4) = a5;
  (*(v8 + 32))(&v12[v11], &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  type metadata accessor for DraggableModifier();
  swift_getWitnessTable();
  sub_26A84FE88();
  swift_getWitnessTable();
  sub_26A850CD8();
}

uint64_t sub_26A80C9DC(uint64_t a1)
{
  v2 = sub_26A852068();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  type metadata accessor for DraggableModifier();
  return sub_26A80BF60(v5);
}

uint64_t static DraggableContent.reduce(value:nextValue:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  v17 = *(v9 + 32);
  v17(v12, a1, v7, v14);
  if (__swift_getEnumTagSinglePayload(v12, 1, a4) == 1)
  {
    a2();
    if (__swift_getEnumTagSinglePayload(v12, 1, a4) != 1)
    {
      (*(v9 + 8))(v12, v7);
    }
  }

  else
  {
    (*(*(a4 - 8) + 32))(v16, v12, a4);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, a4);
  }

  return (v17)(a1, v16, v7);
}

uint64_t sub_26A80CC90(uint64_t a1, uint64_t a2)
{
  sub_26A852068();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130CA8](a1, a2, WitnessTable);
}

_BYTE *sub_26A80CD18(_BYTE *result, int a2, int a3)
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

uint64_t sub_26A80CDB4()
{
  sub_26A852068();
  result = sub_26A851088();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A80CE30(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_31:
    if (v6 < 0x7FFFFFFE)
    {
      v18 = *((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
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
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(result, v5, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v7;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

LABEL_27:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v7 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_26A80CFA8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 < a3)
  {
    v13 = a3 - v10;
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_58:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v9 < 0x7FFFFFFE)
          {
            v21 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v21 = 0;
              *v21 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v21 = a2;
            }
          }

          else if (v9 >= a2)
          {
            v22 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v22, v8, v7);
          }

          else
          {
            if (v11 <= 3)
            {
              v18 = ~(-1 << (8 * v11));
            }

            else
            {
              v18 = -1;
            }

            if (v11)
            {
              v19 = v18 & (~v9 + a2);
              if (v11 <= 3)
              {
                v20 = v11;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v11);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v12);
      *a1 = v17;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A80D284(uint64_t a1)
{
  type metadata accessor for DraggableModifier();

  return sub_26A80C9DC(a1);
}

uint64_t sub_26A80D548@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = sub_26A827BD8;
  *(a2 + 8) = 0;
  v12 = OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_33_18();
  sub_26A4DBCC8(v13, v14);
  sub_26A8516A8();
  OUTLINED_FUNCTION_22_36();

  *(a2 + 16) = a1;
  sub_26A817A80();
  OUTLINED_FUNCTION_22_36();

  OUTLINED_FUNCTION_64_4();
  result = sub_26A816FC4(v15, v16, v17);
  if (a1)
  {

    __break(1u);
  }

  else
  {
    *(a2 + 24) = &qword_2803B1D80;
    *(a2 + 32) = a3;
    *(a2 + 40) = a4;
    *(a2 + 48) = a5;
    *(a2 + 56) = a6;
  }

  return result;
}

void sub_26A80D690()
{
  OUTLINED_FUNCTION_18_31();
  *v2 = sub_26A80EC50;
  v2[1] = 0;
  v3 = OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_33_18();
  sub_26A4DBCC8(v4, v5);
  sub_26A8516A8();
  OUTLINED_FUNCTION_22_36();

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_11_61();
  sub_26A817A80();
  OUTLINED_FUNCTION_22_36();

  v14 = OUTLINED_FUNCTION_50_9(v6, v7, v8, v9, v10, v11, v12, v13, v23, &qword_2803B1D80);
  v15 = sub_26A817080(v14);
  if (v1)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_24_28(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
  }
}

uint64_t sub_26A80D9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_125_1(v6);
  sub_26A8516A8();

  sub_26A817A80();
  v12 = v7;
  OUTLINED_FUNCTION_64_4();
  result = sub_26A8172A4(v8, v9, v10);
  if (&qword_2803B1D80)
  {

    __break(1u);
  }

  else
  {
    *a2 = sub_26A827EF4;
    *(a2 + 8) = 0;
    *(a2 + 16) = a1;
    *(a2 + 24) = v12;
    *(a2 + 32) = a3;
  }

  return result;
}

uint64_t sub_26A80DC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  OUTLINED_FUNCTION_0_102();
  sub_26A4DBCC8(v12, &qword_2803B1D80);
  sub_26A8516A8();

  sub_26A817A80();
  v18 = v13;
  OUTLINED_FUNCTION_64_4();
  result = sub_26A817360(v14, v15, v16);
  if (&qword_2803B1D80)
  {

    __break(1u);
  }

  else
  {
    *a4 = sub_26A827C5C;
    *(a4 + 8) = 0;
    *(a4 + 16) = a1;
    *(a4 + 24) = v18;
    *(a4 + 32) = a5;
    *(a4 + 40) = a2;
    *(a4 + 48) = a3 & 1;
    *(a4 + 56) = a6;
  }

  return result;
}

uint64_t sub_26A80DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_125_1(v6);
  sub_26A8516A8();

  sub_26A817A80();
  v12 = v7;
  OUTLINED_FUNCTION_64_4();
  result = sub_26A81741C(v8, v9, v10);
  if (&qword_2803B1D80)
  {

    __break(1u);
  }

  else
  {
    *a2 = sub_26A827EF4;
    *(a2 + 8) = 0;
    *(a2 + 16) = a1;
    *(a2 + 24) = v12;
    *(a2 + 32) = a3;
  }

  return result;
}

void *sub_26A80E124()
{
  OUTLINED_FUNCTION_18_31();
  *v2 = sub_26A80F794;
  v2[1] = 0;
  v3 = OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_33_18();
  sub_26A4DBCC8(v4, v5);
  sub_26A8516A8();
  OUTLINED_FUNCTION_22_36();

  *(v0 + 16) = v1;
  sub_26A817A80();
  OUTLINED_FUNCTION_22_36();

  v14 = OUTLINED_FUNCTION_50_9(v6, v7, v8, v9, v10, v11, v12, v13, v26, &qword_2803B1D80);
  v15 = sub_26A8174D8(v14);
  if (v1)
  {

    __break(1u);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_30_18(v15, v16, v17, v18, v19, v20, v21, v22, v27, v28);

    return memcpy(v23, v24, 0x168uLL);
  }

  return result;
}

void *sub_26A80E5C4()
{
  OUTLINED_FUNCTION_18_31();
  *v2 = sub_26A80FAE0;
  v2[1] = 0;
  v3 = OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_33_18();
  sub_26A4DBCC8(v4, v5);
  sub_26A8516A8();
  OUTLINED_FUNCTION_22_36();

  *(v0 + 16) = v1;
  sub_26A817A80();
  OUTLINED_FUNCTION_22_36();

  v14 = OUTLINED_FUNCTION_50_9(v6, v7, v8, v9, v10, v11, v12, v13, v26, &qword_2803B1D80);
  v15 = sub_26A817638(v14);
  if (v1)
  {

    __break(1u);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_30_18(v15, v16, v17, v18, v19, v20, v21, v22, v27, v28);

    return memcpy(v23, v24, 0x58uLL);
  }

  return result;
}

void *sub_26A80E820()
{
  OUTLINED_FUNCTION_18_31();
  *v2 = sub_26A80FDA0;
  v2[1] = 0;
  v3 = OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_33_18();
  sub_26A4DBCC8(v4, v5);
  sub_26A8516A8();
  OUTLINED_FUNCTION_22_36();

  *(v0 + 16) = v1;
  sub_26A817A80();
  OUTLINED_FUNCTION_22_36();

  v14 = OUTLINED_FUNCTION_50_9(v6, v7, v8, v9, v10, v11, v12, v13, v26, &qword_2803B1D80);
  v15 = sub_26A8176DC(v14);
  if (v1)
  {

    __break(1u);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_30_18(v15, v16, v17, v18, v19, v20, v21, v22, v27, v28);

    return memcpy(v23, v24, 0x68uLL);
  }

  return result;
}

uint64_t sub_26A80E940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_125_1(v10);
  sub_26A8516A8();

  sub_26A817A80();
  v16 = v11;
  OUTLINED_FUNCTION_64_4();
  result = sub_26A817780(v12, v13, v14);
  if (&qword_2803B1D80)
  {

    __break(1u);
  }

  else
  {
    *a2 = sub_26A827CE0;
    *(a2 + 8) = 0;
    *(a2 + 16) = a1;
    *(a2 + 24) = v16;
    *(a2 + 32) = a3;
    *(a2 + 40) = a4;
    *(a2 + 48) = a5;
  }

  return result;
}

BOOL sub_26A80EBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A6AF1BC(a1);
  if (sub_26A6AF1BC(a2) < v4)
  {
    return 1;
  }

  v6 = sub_26A6AF1BC(a1);
  if (v6 != sub_26A6AF1BC(a2))
  {
    return 0;
  }

  v7 = sub_26A6AF268(a1);
  return v7 < sub_26A6AF268(a2);
}

uint64_t sub_26A80EC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  sub_26A4F20CC(a2, &v21);
  v18 = a3;
  sub_26A4F20CC(a4, &v19);
  sub_26A4D7E54();

  v6 = sub_26A6AF1BC(v16);

  sub_26A4D7E54();
  v7 = sub_26A6AF1BC(v14);

  sub_26A57E57C(v15);
  sub_26A57E57C(v17);
  if (v7 >= v6)
  {
    sub_26A4D7E54();
    v9 = sub_26A6AF1BC(v16);

    sub_26A4D7E54();
    v10 = sub_26A6AF1BC(v14);

    sub_26A57E57C(v15);
    sub_26A57E57C(v17);
    if (v9 == v10)
    {
      sub_26A4D7E54();
      v11 = sub_26A6AF268(v16);

      sub_26A4D7E54();
      v12 = sub_26A6AF268(v14);

      sub_26A4DBD10(&v18, &qword_2803B2748);
      sub_26A4DBD10(&v20, &qword_2803B2748);
      v8 = v11 < v12;
      sub_26A57E57C(v15);
      sub_26A57E57C(v17);
    }

    else
    {
      sub_26A4DBD10(&v18, &qword_2803B2748);
      sub_26A4DBD10(&v20, &qword_2803B2748);
      return 0;
    }
  }

  else
  {
    sub_26A4DBD10(&v18, &qword_2803B2748);
    sub_26A4DBD10(&v20, &qword_2803B2748);
    return 1;
  }

  return v8;
}

void sub_26A80EF10()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v45 = v7;
  v46 = v8;
  v10 = v9;
  v12 = v11;
  v13 = OUTLINED_FUNCTION_145_1(v11, v7, v9, v8, v5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v13);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = (v16 - v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v41 - v21);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_28();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  *(&v41 - v24) = v12;
  sub_26A827E48();
  *v0 = v10;
  sub_26A827E48();
  v44 = v25;
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_31_7();
  v26 = *v22;
  v43 = *(v14 + 48);

  v27 = sub_26A6AF1BC(v26);

  OUTLINED_FUNCTION_22_33();
  v45 = v6;
  v46 = v4;
  OUTLINED_FUNCTION_31_7();
  v28 = *(v14 + 48);
  v29 = sub_26A6AF1BC(*v18);

  sub_26A827E9C(v18 + v28, v2);
  v30 = v43 + v22;
  v43 = v2;
  sub_26A827E9C(v30, v2);
  if (v29 >= v27)
  {
    v31 = v44;
    sub_26A4D7E54();
    v32 = *(v14 + 48);
    v33 = sub_26A6AF1BC(*v22);

    OUTLINED_FUNCTION_22_33();
    sub_26A4D7E54();
    v34 = *(v14 + 48);
    v35 = sub_26A6AF1BC(*v18);

    v36 = v18 + v34;
    v37 = v43;
    sub_26A827E9C(v36, v43);
    sub_26A827E9C(v22 + v32, v37);
    if (v33 == v35)
    {
      sub_26A4D7E54();
      v38 = *v22;
      v42 = *(v14 + 48);
      sub_26A6AF268(v38);

      OUTLINED_FUNCTION_22_33();
      sub_26A4D7E54();
      v39 = *(v14 + 48);
      sub_26A6AF268(*v18);

      OUTLINED_FUNCTION_126_1(v0);
      OUTLINED_FUNCTION_126_1(v31);
      v40 = v43;
      sub_26A827E9C(v18 + v39, v43);
      sub_26A827E9C(v22 + v42, v40);
    }

    else
    {
      OUTLINED_FUNCTION_126_1(v0);
      OUTLINED_FUNCTION_126_1(v31);
    }
  }

  else
  {
    OUTLINED_FUNCTION_126_1(v0);
    OUTLINED_FUNCTION_126_1(v44);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A80F208(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(__src, a4, sizeof(__src));
  v33 = a1;
  memcpy(v34, a2, sizeof(v34));
  memcpy(v30, a2, sizeof(v30));

  sub_26A54DFFC(a2, &v35);

  sub_26A54DFFC(a4, &v35);
  sub_26A4D7E54();
  v8 = sub_26A6AF1BC(a1);

  v35 = a3;
  memcpy(v36, __src, sizeof(v36));
  sub_26A4D7E54();
  v9 = sub_26A6AF1BC(a3);

  memcpy(v37, __src, sizeof(v37));
  sub_26A638BC8(v37);
  memcpy(v38, v30, sizeof(v38));
  sub_26A638BC8(v38);
  if (v9 >= v8)
  {
    v27 = a1;
    memcpy(v28, __dst, sizeof(v28));
    sub_26A4D7E54();
    v11 = sub_26A6AF1BC(a1);

    v29 = a3;
    memcpy(v30, __src, sizeof(v30));
    sub_26A4D7E54();
    v12 = sub_26A6AF1BC(a3);

    memcpy(v25, __src, sizeof(v25));
    sub_26A638BC8(v25);
    memcpy(v26, __dst, sizeof(v26));
    sub_26A638BC8(v26);
    if (v11 == v12)
    {
      memcpy(v16, __dst, sizeof(v16));
      sub_26A4D7E54();
      v13 = sub_26A6AF268(a1);

      v17 = a3;
      memcpy(v18, __src, sizeof(v18));
      sub_26A4D7E54();
      v14 = sub_26A6AF268(a3);

      v21 = a3;
      memcpy(v22, __src, sizeof(v22));
      sub_26A4DBD10(&v21, &qword_2803B8790);
      v23 = a1;
      memcpy(v24, __dst, sizeof(v24));
      sub_26A4DBD10(&v23, &qword_2803B8790);
      v10 = v13 < v14;
      memcpy(v19, __src, sizeof(v19));
      sub_26A638BC8(v19);
      memcpy(v20, __dst, sizeof(v20));
      sub_26A638BC8(v20);
    }

    else
    {
      v21 = a3;
      memcpy(v22, __src, sizeof(v22));
      sub_26A4DBD10(&v21, &qword_2803B8790);
      v23 = a1;
      memcpy(v24, __dst, sizeof(v24));
      sub_26A4DBD10(&v23, &qword_2803B8790);
      return 0;
    }
  }

  else
  {
    v27 = a3;
    memcpy(v28, __src, sizeof(v28));
    sub_26A4DBD10(&v27, &qword_2803B8790);
    v29 = a1;
    memcpy(v30, __dst, sizeof(v30));
    sub_26A4DBD10(&v29, &qword_2803B8790);
    return 1;
  }

  return v10;
}

BOOL sub_26A80F634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26A6AF1BC(a1);
  if (sub_26A6AF1BC(a4) < v6)
  {
    return 1;
  }

  v8 = sub_26A6AF1BC(a1);
  if (v8 != sub_26A6AF1BC(a4))
  {
    return 0;
  }

  v9 = sub_26A6AF268(a1);
  return v9 < sub_26A6AF268(a4);
}

BOOL sub_26A80F6E8(uint64_t a1, uint64_t a2)
{
  sub_26A6AF1BC(a1);
  v5 = OUTLINED_FUNCTION_118_1();
  if (sub_26A6AF1BC(v5) < v2)
  {
    return 1;
  }

  sub_26A6AF1BC(a1);
  v7 = OUTLINED_FUNCTION_118_1();
  if (v2 != sub_26A6AF1BC(v7))
  {
    return 0;
  }

  v8 = sub_26A6AF268(a1);
  return v8 < sub_26A6AF268(a2);
}

uint64_t sub_26A80F794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  sub_26A5D1AF8(a2, &v21);
  v18 = a3;
  sub_26A5D1AF8(a4, &v19);
  sub_26A4D7E54();

  v6 = sub_26A6AF1BC(v16);

  sub_26A4D7E54();
  v7 = sub_26A6AF1BC(v14);

  sub_26A827CF8(v15);
  sub_26A827CF8(v17);
  if (v7 >= v6)
  {
    sub_26A4D7E54();
    v9 = sub_26A6AF1BC(v16);

    sub_26A4D7E54();
    v10 = sub_26A6AF1BC(v14);

    sub_26A827CF8(v15);
    sub_26A827CF8(v17);
    if (v9 == v10)
    {
      sub_26A4D7E54();
      v11 = sub_26A6AF268(v16);

      sub_26A4D7E54();
      v12 = sub_26A6AF268(v14);

      sub_26A4DBD10(&v18, &qword_2803B86E8);
      sub_26A4DBD10(&v20, &qword_2803B86E8);
      v8 = v11 < v12;
      sub_26A827CF8(v15);
      sub_26A827CF8(v17);
    }

    else
    {
      sub_26A4DBD10(&v18, &qword_2803B86E8);
      sub_26A4DBD10(&v20, &qword_2803B86E8);
      return 0;
    }
  }

  else
  {
    sub_26A4DBD10(&v18, &qword_2803B86E8);
    sub_26A4DBD10(&v20, &qword_2803B86E8);
    return 1;
  }

  return v8;
}

BOOL sub_26A80FA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26A6AF1BC(a1);
  if (sub_26A6AF1BC(a3) < v5)
  {
    return 1;
  }

  v7 = sub_26A6AF1BC(a1);
  if (v7 != sub_26A6AF1BC(a3))
  {
    return 0;
  }

  v8 = sub_26A6AF268(a1);
  return v8 < sub_26A6AF268(a3);
}

uint64_t sub_26A80FAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  sub_26A5D2400(a2, &v21);
  v18 = a3;
  sub_26A5D2400(a4, &v19);
  sub_26A4D7E54();

  v6 = sub_26A6AF1BC(v16);

  sub_26A4D7E54();
  v7 = sub_26A6AF1BC(v14);

  sub_26A827DA0(v15);
  sub_26A827DA0(v17);
  if (v7 >= v6)
  {
    sub_26A4D7E54();
    v9 = sub_26A6AF1BC(v16);

    sub_26A4D7E54();
    v10 = sub_26A6AF1BC(v14);

    sub_26A827DA0(v15);
    sub_26A827DA0(v17);
    if (v9 == v10)
    {
      sub_26A4D7E54();
      v11 = sub_26A6AF268(v16);

      sub_26A4D7E54();
      v12 = sub_26A6AF268(v14);

      sub_26A4DBD10(&v18, &qword_2803B8738);
      sub_26A4DBD10(&v20, &qword_2803B8738);
      v8 = v11 < v12;
      sub_26A827DA0(v15);
      sub_26A827DA0(v17);
    }

    else
    {
      sub_26A4DBD10(&v18, &qword_2803B8738);
      sub_26A4DBD10(&v20, &qword_2803B8738);
      return 0;
    }
  }

  else
  {
    sub_26A4DBD10(&v18, &qword_2803B8738);
    sub_26A4DBD10(&v20, &qword_2803B8738);
    return 1;
  }

  return v8;
}

uint64_t sub_26A80FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  sub_26A6088C0(a2, &v21);
  v18 = a3;
  sub_26A6088C0(a4, &v19);
  sub_26A4D7E54();

  v6 = sub_26A6AF1BC(v16);

  sub_26A4D7E54();
  v7 = sub_26A6AF1BC(v14);

  sub_26A827D4C(v15);
  sub_26A827D4C(v17);
  if (v7 >= v6)
  {
    sub_26A4D7E54();
    v9 = sub_26A6AF1BC(v16);

    sub_26A4D7E54();
    v10 = sub_26A6AF1BC(v14);

    sub_26A827D4C(v15);
    sub_26A827D4C(v17);
    if (v9 == v10)
    {
      sub_26A4D7E54();
      v11 = sub_26A6AF268(v16);

      sub_26A4D7E54();
      v12 = sub_26A6AF268(v14);

      sub_26A4DBD10(&v18, &qword_2803B8730);
      sub_26A4DBD10(&v20, &qword_2803B8730);
      v8 = v11 < v12;
      sub_26A827D4C(v15);
      sub_26A827D4C(v17);
    }

    else
    {
      sub_26A4DBD10(&v18, &qword_2803B8730);
      sub_26A4DBD10(&v20, &qword_2803B8730);
      return 0;
    }
  }

  else
  {
    sub_26A4DBD10(&v18, &qword_2803B8730);
    sub_26A4DBD10(&v20, &qword_2803B8730);
    return 1;
  }

  return v8;
}

BOOL sub_26A810038(uint64_t a1)
{

  sub_26A6AF1BC(a1);
  v4 = OUTLINED_FUNCTION_118_1();
  if (sub_26A6AF1BC(v4) >= v1)
  {
    sub_26A6AF1BC(a1);
    v6 = OUTLINED_FUNCTION_118_1();
    if (v1 == sub_26A6AF1BC(v6))
    {
      sub_26A6AF268(a1);
      v7 = OUTLINED_FUNCTION_118_1();
      sub_26A6AF268(v7);
      OUTLINED_FUNCTION_66_5();

      return v1 < v2;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 1;
  }
}

void sub_26A8100F8()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v63 = v2;
  v64 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8713E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v5 = swift_initStackObject();
  OUTLINED_FUNCTION_137_1(v5, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v6 = OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_76_3(v6, v7);
  *(inited + 32) = v8;
  v9 = sub_26A8502F8();
  OUTLINED_FUNCTION_27_18(v9);
  v10 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v10);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v11 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v11, v12);
  *(inited + 88) = v13;
  sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v14 = sub_26A84FEA8();
  v15 = MEMORY[0x277CE04F8];
  v16 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v16;
  v17 = v16;
  *(inited + 104) = v14;
  *(inited + 96) = v1;
  v18 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v18);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v19 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v19, v20);
  *(inited + 144) = v21;
  v22 = sub_26A8502F8();
  OUTLINED_FUNCTION_59_6(v22);
  v23 = swift_initStackObject();
  OUTLINED_FUNCTION_137_1(v23, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v24 = OUTLINED_FUNCTION_5_84(&qword_281588978);
  v23[3].n128_u64[0] = 1;
  OUTLINED_FUNCTION_47_5(v24, v25);
  *(inited + 200) = v26;
  v27 = sub_26A8502D8();
  v28 = sub_26A84FEA8();
  *(inited + 240) = v15;
  *(inited + 248) = v17;
  *(inited + 216) = v28;
  *(inited + 208) = v27;
  v29 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v29);
  v30 = OUTLINED_FUNCTION_16_36();
  v29[3].n128_u64[0] = 1;
  v29[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_76_3(v30, v31);
  *(inited + 256) = v32;
  v33 = sub_26A8502F8();
  v34 = sub_26A84FEA8();
  *(inited + 296) = v15;
  *(inited + 304) = v17;
  *(inited + 272) = v34;
  *(inited + 264) = v33;
  v35 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v35);
  v36 = qword_281588998;
  v35[2].n128_u64[0] = qword_281588998;
  v37 = byte_2815889A0;
  v35[2].n128_u8[8] = byte_2815889A0;
  v35[3].n128_u64[0] = 1;
  v35[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_76_3(v36, v37);
  *(inited + 312) = v38;
  sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v39 = *MEMORY[0x277CE0A10];
  v40 = *(v64 + 104);
  v61 = *MEMORY[0x277CE0A10];
  v40(v0, v39, v63);
  v62 = v40;
  sub_26A850478();
  OUTLINED_FUNCTION_84_4();
  v65 = *(v64 + 8);
  v41 = OUTLINED_FUNCTION_15_4();
  v42(v41);
  v43 = sub_26A84FEA8();
  *(inited + 352) = MEMORY[0x277CE04F8];
  OUTLINED_FUNCTION_131_1(v43, MEMORY[0x277CE04E8]);
  *(inited + 320) = 3;
  *(swift_initStackObject() + 16) = xmmword_26A857110;
  v44 = OUTLINED_FUNCTION_10_57(&qword_281588998);
  OUTLINED_FUNCTION_36_11(v44, v45);
  *(inited + 368) = v46;
  sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_84_4();
  v40(v0, v39, v63);
  v47 = sub_26A850478();

  v48 = OUTLINED_FUNCTION_15_4();
  v65(v48);
  v49 = sub_26A84FEA8();
  v50 = MEMORY[0x277CE04F8];
  *(inited + 408) = MEMORY[0x277CE04F8];
  v51 = MEMORY[0x277CE04E8];
  *(inited + 416) = MEMORY[0x277CE04E8];
  *(inited + 384) = v49;
  *(inited + 376) = v47;
  v52 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v52);
  v53 = OUTLINED_FUNCTION_11_12(&qword_281588938);
  v52[3].n128_u64[0] = 1;
  v52[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_120_1(v53, v54);
  *(inited + 424) = v55;
  v56 = sub_26A8502F8();
  v57 = sub_26A84FEA8();
  *(inited + 464) = v50;
  *(inited + 472) = v51;
  *(inited + 440) = v57;
  *(inited + 432) = v56;
  v58 = OUTLINED_FUNCTION_72_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v58);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_129_1(v59);
  OUTLINED_FUNCTION_110_1();
  sub_26A8502D8();
  v62(v0, v61, v63);
  OUTLINED_FUNCTION_3_32();
  sub_26A850478();
  OUTLINED_FUNCTION_36_9();
  v60 = OUTLINED_FUNCTION_15_4();
  v65(v60);
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A810638()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A850448();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v42 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v8 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v8, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v9 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_76_3(v9, v10);
  *(inited + 32) = v11;
  v12 = sub_26A8502F8();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  v13 = sub_26A573830();
  *(inited + 80) = v13;
  *(inited + 48) = 1;
  *(inited + 40) = v12;
  v14 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v14);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v15 = qword_281588998;
  v14[2].n128_u64[0] = qword_281588998;
  v16 = byte_2815889A0;
  v14[2].n128_u8[8] = byte_2815889A0;
  OUTLINED_FUNCTION_107_1(v15, v16);
  *(inited + 88) = v17;
  sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_84_4();
  v18 = sub_26A84FED8();
  v19 = MEMORY[0x277CE04F8];
  v20 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v20;
  *(inited + 104) = v18;
  *(inited + 96) = v0;
  v21 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v21);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v22 = OUTLINED_FUNCTION_10_57(&qword_281588938);
  OUTLINED_FUNCTION_107_1(v22, v23);
  *(inited + 144) = v24;
  v25 = sub_26A8502F8();
  v26 = sub_26A84FED8();
  *(inited + 184) = v19;
  *(inited + 192) = MEMORY[0x277CE04E8];
  *(inited + 160) = v26;
  *(inited + 152) = v25;
  v27 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v27, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v28 = OUTLINED_FUNCTION_10_57(&qword_281588978);
  v27[3].n128_u64[0] = 1;
  v27[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_107_1(v28, v29);
  *(inited + 200) = v30;
  v31 = sub_26A8502D8();
  *(inited + 240) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 248) = v13;
  *(inited + 216) = 1;
  *(inited + 208) = v31;
  v32 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v32);
  v33 = qword_281588998;
  v32[2].n128_u64[0] = qword_281588998;
  v34 = byte_2815889A0;
  v32[2].n128_u8[8] = byte_2815889A0;
  v32[3].n128_u64[0] = 1;
  v32[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_120_1(v33, v34);
  *(inited + 256) = v35;
  sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_36_9();
  v43 = *(v3 + 104);
  OUTLINED_FUNCTION_132_1();
  v36();
  sub_26A850478();
  OUTLINED_FUNCTION_75_3();
  v41 = *(v3 + 8);
  v41(v42, v1);
  v37 = sub_26A84FED8();
  *(inited + 296) = MEMORY[0x277CE04F8];
  *(inited + 304) = MEMORY[0x277CE04E8];
  OUTLINED_FUNCTION_133_1(v37);
  v38 = OUTLINED_FUNCTION_114_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v38);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_44_12();
  sub_26A4DBCC8(v39, v40);
  OUTLINED_FUNCTION_110_1();
  sub_26A8502D8();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_132_1();
  v43();
  sub_26A850478();
  OUTLINED_FUNCTION_152_1();
  v41(v42, v1);
  sub_26A84FED8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A810A8C()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v52 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A85C600;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v4 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v4, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v5 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_76_3(v5, v6);
  *(inited + 32) = v7;
  sub_26A850468();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v8 = sub_26A84FED8();
  v9 = MEMORY[0x277CE04F8];
  v10 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v10;
  *(inited + 48) = v8;
  *(inited + 40) = v0;
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v11);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v12 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v12, v13);
  *(inited + 88) = v14;
  sub_26A850468();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v15 = sub_26A850308();

  v16 = sub_26A84FED8();
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 104) = v16;
  *(inited + 96) = v15;
  v17 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v17);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v18 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v18, v19);
  *(inited + 144) = v20;
  sub_26A8504A8();
  v21 = sub_26A84FED8();
  *(inited + 184) = v9;
  *(inited + 192) = v10;
  v22 = OUTLINED_FUNCTION_148_1(v21);
  OUTLINED_FUNCTION_42_12(v22, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588978);
  OUTLINED_FUNCTION_48_8();
  v22[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_76_3(v23, v24);
  *(inited + 200) = v25;
  sub_26A850498();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  *(inited + 240) = &type metadata for TextVibrancyShapeStyle;
  v26 = sub_26A573830();
  *(inited + 248) = v26;
  *(inited + 216) = 1;
  *(inited + 208) = v0;
  v27 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v27);
  v28 = OUTLINED_FUNCTION_10_57(&qword_281588968);
  v27[3].n128_u64[0] = 1;
  v27[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_107_1(v28, v29);
  *(inited + 256) = v30;
  v31 = sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_84_4();
  *(inited + 296) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 304) = v26;
  *(inited + 272) = 1;
  *(inited + 264) = 1;
  v32 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v32);
  v33 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  *(v26 + 48) = 1;
  *(v26 + 56) = 3;
  OUTLINED_FUNCTION_76_3(v33, v34);
  *(inited + 312) = v35;
  sub_26A850468();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_139_1();
  v51 = v36;
  v37 = OUTLINED_FUNCTION_38_14();
  v38(v37);
  OUTLINED_FUNCTION_154_1();
  OUTLINED_FUNCTION_84_4();
  v53 = *(v52 + 8);
  v39 = OUTLINED_FUNCTION_73_2();
  v40(v39);
  v41 = sub_26A84FED8();
  *(inited + 352) = MEMORY[0x277CE04F8];
  OUTLINED_FUNCTION_131_1(v41, MEMORY[0x277CE04E8]);
  *(inited + 320) = 1;
  v42 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v42);
  v43 = OUTLINED_FUNCTION_11_12(&qword_281588938);
  v42[3].n128_u64[0] = 1;
  v42[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_120_1(v43, v44);
  *(inited + 368) = v45;
  sub_26A850468();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_143_1();

  v46 = sub_26A84FED8();
  *(inited + 408) = MEMORY[0x277CE04F8];
  *(inited + 416) = MEMORY[0x277CE04E8];
  *(inited + 384) = v46;
  *(inited + 376) = v31;
  v47 = OUTLINED_FUNCTION_72_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v47);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_129_1(v48);
  OUTLINED_FUNCTION_110_1();
  sub_26A850468();
  v49 = OUTLINED_FUNCTION_38_14();
  v51(v49);
  sub_26A850478();
  OUTLINED_FUNCTION_36_9();
  v50 = OUTLINED_FUNCTION_73_2();
  v53(v50);
  sub_26A850308();

  sub_26A84FED8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A810F90()
{
  OUTLINED_FUNCTION_28_0();
  v94 = sub_26A850448();
  OUTLINED_FUNCTION_15();
  v96 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v93 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8830C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  *(swift_initStackObject() + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588988);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_47_5(v7, v8);
  *(inited + 32) = v9;
  v10 = sub_26A8502F8();
  OUTLINED_FUNCTION_27_18(v10);
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_63_4(v11, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v12 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_76_3(v12, v13);
  *(inited + 88) = v14;
  sub_26A8502F8();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_113_1();
  v15 = swift_initStackObject();
  OUTLINED_FUNCTION_14_48(v15);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v16 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v16, v17);
  *(inited + 144) = v18;
  sub_26A850458();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v19 = sub_26A84FEA8();
  v20 = MEMORY[0x277CE04E8];
  v21 = MEMORY[0x277CE04F8];
  *(inited + 184) = MEMORY[0x277CE04F8];
  *(inited + 192) = v20;
  *(inited + 160) = v19;
  *(inited + 152) = v0;
  v22 = swift_initStackObject();
  OUTLINED_FUNCTION_14_48(v22);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v23 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v23, v24);
  *(inited + 200) = v25;
  v26 = sub_26A8504A8();
  *(inited + 216) = 0u;
  *(inited + 232) = 0u;
  *(inited + 248) = 0;
  *(inited + 208) = v26;
  v27 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_40_14(v27);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_28_15();
  OUTLINED_FUNCTION_136_1();
  OUTLINED_FUNCTION_71_5(v28, v29);
  *(inited + 256) = v30;
  v31 = sub_26A850418();
  v32 = sub_26A84FEA8();
  *(inited + 296) = v21;
  v33 = MEMORY[0x277CE04E8];
  *(inited + 304) = MEMORY[0x277CE04E8];
  v34 = v33;
  *(inited + 272) = v32;
  *(inited + 264) = v31;
  v35 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_40_14(v35);
  v36 = OUTLINED_FUNCTION_16_36();
  *(v31 + 48) = v1;
  OUTLINED_FUNCTION_71_5(v36, v37);
  *(inited + 312) = v38;
  v39 = sub_26A850408();
  v40 = sub_26A84FEA8();
  *(inited + 352) = v21;
  *(inited + 360) = v34;
  *(inited + 328) = v40;
  *(inited + 320) = v39;
  v41 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_40_14(v41);
  v42 = OUTLINED_FUNCTION_28_15();
  *(v39 + 48) = v1;
  *(v39 + 56) = 3;
  OUTLINED_FUNCTION_76_3(v42, v43);
  *(inited + 368) = v44;
  v45 = sub_26A8502F8();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v46 = sub_26A84FEA8();
  *(inited + 408) = v21;
  *(inited + 416) = v34;
  *(inited + 384) = v46;
  *(inited + 376) = v34;
  v47 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_40_14(v47);
  v48 = OUTLINED_FUNCTION_16_36();
  *(v45 + 48) = v1;
  *(v45 + 56) = 3;
  OUTLINED_FUNCTION_76_3(v48, v49);
  *(inited + 424) = v50;
  v51 = sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v52 = sub_26A84FEA8();
  *(inited + 464) = v21;
  *(inited + 472) = v34;
  v53 = v34;
  *(inited + 440) = v52;
  *(inited + 432) = v34;
  v54 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_40_14(v54);
  v55 = OUTLINED_FUNCTION_28_15();
  *(v51 + 48) = v1;
  *(v51 + 56) = 3;
  OUTLINED_FUNCTION_76_3(v55, v56);
  *(inited + 480) = v57;
  sub_26A850458();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v58 = sub_26A84FEA8();
  *(inited + 520) = v21;
  *(inited + 528) = v34;
  *(inited + 496) = v58;
  *(inited + 488) = v34;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26A857110;
  OUTLINED_FUNCTION_28_15();
  OUTLINED_FUNCTION_48_8();
  *(v59 + 56) = 3;
  *(v59 + 64) = v60;
  *(v59 + 72) = 5;
  OUTLINED_FUNCTION_76_3(v61, v62);
  *(inited + 536) = v63;
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v95 = *MEMORY[0x277CE0A10];
  OUTLINED_FUNCTION_139_1();
  v92 = v64;
  v64(v93);
  sub_26A850478();
  OUTLINED_FUNCTION_84_4();
  v65 = *(v96 + 8);
  v66 = OUTLINED_FUNCTION_15_4();
  v67(v66);
  v68 = sub_26A84FEA8();
  v69 = MEMORY[0x277CE04F8];
  *(inited + 576) = MEMORY[0x277CE04F8];
  v70 = MEMORY[0x277CE04E8];
  *(inited + 584) = MEMORY[0x277CE04E8];
  *(inited + 552) = v68;
  *(inited + 544) = v34;
  v71 = OUTLINED_FUNCTION_43_10();
  *(v71 + 16) = xmmword_26A8570F0;
  v72 = OUTLINED_FUNCTION_10_57(&qword_281588938);
  *(v71 + 48) = 1;
  *(v71 + 56) = 3;
  OUTLINED_FUNCTION_107_1(v72, v73);
  *(inited + 592) = v74;
  sub_26A8504A8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_84_4();
  v75 = sub_26A84FEA8();
  *(inited + 632) = v69;
  *(inited + 640) = v70;
  *(inited + 608) = v75;
  *(inited + 600) = v53;
  v76 = OUTLINED_FUNCTION_43_10();
  *(v76 + 16) = xmmword_26A8570F0;
  v77 = qword_281588968;
  *(v76 + 32) = qword_281588968;
  v78 = byte_281588970;
  *(v76 + 40) = byte_281588970;
  *(v76 + 48) = 0;
  *(v76 + 56) = 1;
  OUTLINED_FUNCTION_107_1(v77, v78);
  *(inited + 648) = v79;
  v80 = sub_26A8502F8();
  v81 = sub_26A84FEA8();
  v82 = MEMORY[0x277CE04F8];
  *(inited + 688) = MEMORY[0x277CE04F8];
  *(inited + 696) = v70;
  *(inited + 664) = v81;
  *(inited + 656) = v80;
  v83 = OUTLINED_FUNCTION_43_10();
  *(v83 + 16) = xmmword_26A8570F0;
  v84 = qword_281588968;
  *(v83 + 32) = qword_281588968;
  v85 = byte_281588970;
  *(v83 + 40) = byte_281588970;
  *(v83 + 48) = 3;
  *(v83 + 56) = 1;
  OUTLINED_FUNCTION_120_1(v84, v85);
  *(inited + 704) = v86;
  v87 = sub_26A8502F8();
  v88 = sub_26A84FEA8();
  *(inited + 744) = v82;
  *(inited + 752) = v70;
  *(inited + 720) = v88;
  *(inited + 712) = v87;
  v89 = OUTLINED_FUNCTION_72_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v89);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_129_1(v90);
  OUTLINED_FUNCTION_110_1();
  sub_26A8502F8();
  v92(v93, v95, v94);
  OUTLINED_FUNCTION_3_32();
  sub_26A850478();
  OUTLINED_FUNCTION_36_9();
  v91 = OUTLINED_FUNCTION_15_4();
  v65(v91);
  sub_26A850308();

  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A811654()
{
  OUTLINED_FUNCTION_28_0();
  v38 = sub_26A850448();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v8 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v8, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v9 = OUTLINED_FUNCTION_5_84(&qword_281588978);
  v8[3].n128_u64[0] = 1;
  v8[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_76_3(v9, v10);
  *(inited + 32) = v11;
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  v12 = sub_26A573830();
  *(inited + 80) = v12;
  *(inited + 48) = 1;
  *(inited + 40) = v0;
  v13 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v13);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v14 = OUTLINED_FUNCTION_10_57(&qword_281588968);
  v13[3].n128_u64[0] = 1;
  v13[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_107_1(v14, v15);
  *(inited + 88) = v16;
  sub_26A850458();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_84_4();
  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 136) = v12;
  *(inited + 104) = 1;
  *(inited + 96) = 3;
  v17 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v17);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_47_5(v18, v19);
  *(inited + 144) = v20;
  sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  (*(v2 + 104))(v6, *MEMORY[0x277CE0A10], v38);
  OUTLINED_FUNCTION_72_5();
  v21 = sub_26A850478();

  v22 = OUTLINED_FUNCTION_14_29();
  v23(v22);
  v24 = sub_26A84FED8();
  v25 = MEMORY[0x277CE04F8];
  v26 = MEMORY[0x277CE04E8];
  *(inited + 184) = MEMORY[0x277CE04F8];
  *(inited + 192) = v26;
  *(inited + 160) = v24;
  *(inited + 152) = v21;
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v27 = OUTLINED_FUNCTION_11_1(&qword_281588938);
  OUTLINED_FUNCTION_5_14(v27, v28);
  *(inited + 200) = v29;
  v30 = sub_26A8502F8();
  v31 = sub_26A84FED8();
  *(inited + 240) = v25;
  *(inited + 248) = v26;
  *(inited + 216) = v31;
  *(inited + 208) = v30;
  v32 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v32);
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  v33 = OUTLINED_FUNCTION_2_17(&qword_281588988);
  OUTLINED_FUNCTION_79_3(v33, v34);
  *(inited + 256) = v35;
  sub_26A850498();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  v36 = sub_26A84FEA8();
  *(inited + 296) = v25;
  *(inited + 304) = v26;
  *(inited + 272) = v36;
  *(inited + 264) = v30;
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_125_1(v37);
  OUTLINED_FUNCTION_31_11();
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A84FED8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A811A58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(inited, xmmword_26A8570F0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v4 = swift_initStackObject();
  OUTLINED_FUNCTION_21_33(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v13 = OUTLINED_FUNCTION_2_17(&qword_281588978);
  *(v0 + 48) = 1;
  *(v0 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v13, v14);
  inited[2].n128_u64[0] = v15;
  v16 = sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  v17 = sub_26A84FEA8();
  v18 = MEMORY[0x277CE04F8];
  v19 = MEMORY[0x277CE04E8];
  inited[4].n128_u64[1] = MEMORY[0x277CE04F8];
  inited[5].n128_u64[0] = v19;
  inited[3].n128_u32[0] = v17;
  inited[2].n128_u64[1] = v1;
  v20 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v29 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  *(v3 + 48) = 1;
  *(v3 + 56) = 3;
  OUTLINED_FUNCTION_95_1(v29, v30);
  inited[5].n128_u64[1] = v31;
  sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_98_0();

  v32 = sub_26A84FEA8();
  inited[8].n128_u64[0] = v18;
  inited[8].n128_u64[1] = v19;
  inited[6].n128_u32[2] = v32;
  inited[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v33);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  if (qword_2803A9018 != -1)
  {
    OUTLINED_FUNCTION_14_9();
  }

  sub_26A4F20CC(&unk_2803D2780, v35);
  sub_26A850388();
  v34 = sub_26A850428();
  sub_26A4D7E54();
  v35[6] = v34;
  sub_26A57E57C(v35);
  sub_26A80D690();
}

void sub_26A811CA4()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v67 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v3 = swift_initStackObject();
  OUTLINED_FUNCTION_63_4(v3, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588978);
  OUTLINED_FUNCTION_48_8();
  v3[3].n128_u8[8] = 11;
  OUTLINED_FUNCTION_76_3(v4, v5);
  *(inited + 32) = v6;
  v7 = sub_26A850418();
  v8 = sub_26A84FEA8();
  v9 = MEMORY[0x277CE04F8];
  v10 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v10;
  v11 = v10;
  *(inited + 48) = v8;
  *(inited + 40) = v7;
  v12 = swift_initStackObject();
  OUTLINED_FUNCTION_14_48(v12);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_48_8();
  *(v7 + 56) = 11;
  OUTLINED_FUNCTION_76_3(v13, v14);
  *(inited + 88) = v15;
  v16 = sub_26A850408();
  v17 = sub_26A84FEA8();
  *(inited + 128) = v9;
  *(inited + 136) = v11;
  *(inited + 104) = v17;
  *(inited + 96) = v16;
  v18 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v18, xmmword_26A8570D0);
  v19 = OUTLINED_FUNCTION_16_36();
  OUTLINED_FUNCTION_76_3(v19, v20);
  *(inited + 144) = v21;
  sub_26A850458();
  v22 = sub_26A84FED8();
  *(inited + 184) = v9;
  *(inited + 192) = v11;
  v23 = OUTLINED_FUNCTION_148_1(v22);
  OUTLINED_FUNCTION_15_42(v23);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v24 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v24, v25);
  *(inited + 200) = v26;
  sub_26A850468();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v27 = sub_26A84FED8();
  *(inited + 240) = v9;
  *(inited + 248) = v11;
  *(inited + 216) = v27;
  *(inited + 208) = v9;
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v28);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v29 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v29, v30);
  *(inited + 256) = v31;
  v32 = sub_26A8502F8();
  v33 = sub_26A84FED8();
  *(inited + 296) = v9;
  *(inited + 304) = v11;
  *(inited + 272) = v33;
  *(inited + 264) = v32;
  v34 = swift_initStackObject();
  OUTLINED_FUNCTION_14_48(v34);
  OUTLINED_FUNCTION_5_84(&qword_281588978);
  OUTLINED_FUNCTION_136_1();
  *(v32 + 56) = 3;
  OUTLINED_FUNCTION_76_3(v35, v36);
  *(inited + 312) = v37;
  v38 = sub_26A8502D8();
  *(inited + 352) = &type metadata for TextVibrancyShapeStyle;
  v39 = sub_26A573830();
  *(inited + 360) = v39;
  *(inited + 328) = v11;
  *(inited + 320) = v38;
  v40 = swift_initStackObject();
  OUTLINED_FUNCTION_14_48(v40);
  v41 = OUTLINED_FUNCTION_16_36();
  *(v38 + 48) = v11;
  OUTLINED_FUNCTION_71_5(v41, v42);
  *(inited + 368) = v43;
  v44 = sub_26A850458();
  *(inited + 408) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 416) = v39;
  *(inited + 384) = v11;
  *(inited + 376) = v44;
  v45 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_14_48(v45);
  v46 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  *(v38 + 48) = v11;
  OUTLINED_FUNCTION_71_5(v46, v47);
  *(inited + 424) = v48;
  sub_26A850468();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_139_1();
  v69 = v49;
  v50 = OUTLINED_FUNCTION_38_14();
  v51(v50);
  OUTLINED_FUNCTION_154_1();
  OUTLINED_FUNCTION_84_4();
  v68 = *(v67 + 8);
  v52 = OUTLINED_FUNCTION_73_2();
  v53(v52);
  v54 = sub_26A84FED8();
  *(inited + 464) = MEMORY[0x277CE04F8];
  *(inited + 472) = MEMORY[0x277CE04E8];
  *(inited + 440) = v54;
  *(inited + 432) = &qword_281588968;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26A857110;
  v56 = OUTLINED_FUNCTION_11_12(&qword_281588998);
  *(v55 + 48) = 1;
  *(v55 + 56) = 3;
  *(v55 + 64) = 1;
  *(v55 + 72) = 5;
  OUTLINED_FUNCTION_120_1(v56, v57);
  *(inited + 480) = v58;
  sub_26A850468();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_143_1();

  v59 = OUTLINED_FUNCTION_38_14();
  v69(v59);
  v60 = OUTLINED_FUNCTION_154_1();

  v61 = OUTLINED_FUNCTION_73_2();
  v68(v61);
  v62 = sub_26A84FED8();
  *(inited + 520) = MEMORY[0x277CE04F8];
  *(inited + 528) = MEMORY[0x277CE04E8];
  *(inited + 496) = v62;
  *(inited + 488) = v60;
  v63 = OUTLINED_FUNCTION_72_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v63);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_129_1(v64);
  OUTLINED_FUNCTION_110_1();
  sub_26A850498();
  v65 = OUTLINED_FUNCTION_38_14();
  v69(v65);
  sub_26A850478();
  OUTLINED_FUNCTION_36_9();
  v66 = OUTLINED_FUNCTION_73_2();
  v68(v66);
  sub_26A84FED8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A812214()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8830D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v4 = qword_281588978;
  *(v3 + 32) = qword_281588978;
  v5 = byte_281588980;
  *(v3 + 40) = byte_281588980;
  *(v3 + 48) = 1;
  *(v3 + 56) = 11;
  OUTLINED_FUNCTION_12_25(v4, v5);
  *(inited + 32) = v6;
  sub_26A850498();
  sub_26A8503B8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  v7 = sub_26A573830();
  *(inited + 80) = v7;
  *(inited + 48) = 1;
  *(inited + 40) = v0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_26A857110;
  v9 = OUTLINED_FUNCTION_140_1();
  *(v8 + 48) = 1;
  *(v8 + 56) = 11;
  *(v8 + 64) = 1;
  *(v8 + 72) = 10;
  OUTLINED_FUNCTION_5_14(v9, v10);
  *(inited + 88) = v11;
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_46_8();

  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 136) = v7;
  *(inited + 104) = 1;
  *(inited + 96) = v1;
  v12 = swift_initStackObject();
  OUTLINED_FUNCTION_90_3(v12, v13, v14, v15, v16, v17, v18, v19, v103, v109, v20);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v21 = OUTLINED_FUNCTION_11_1(&qword_281588968);
  v12[3].n128_u64[0] = 1;
  v12[3].n128_u8[8] = 11;
  OUTLINED_FUNCTION_5_14(v21, v22);
  *(inited + 144) = v23;
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_46_8();

  *(inited + 184) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 192) = v7;
  *(inited + 160) = 1;
  *(inited + 152) = v1;
  v24 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v24, xmmword_26A8570D0);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v25 = OUTLINED_FUNCTION_11_1(&qword_281588998);
  OUTLINED_FUNCTION_5_14(v25, v26);
  *(inited + 200) = v27;
  sub_26A850468();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_46_8();

  v28 = sub_26A84FEC8();
  v29 = MEMORY[0x277CE04F8];
  v30 = MEMORY[0x277CE04E8];
  *(inited + 240) = MEMORY[0x277CE04F8];
  *(inited + 248) = v30;
  *(inited + 216) = v28;
  *(inited + 208) = v1;
  *(swift_initStackObject() + 16) = v104;
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v31 = OUTLINED_FUNCTION_11_1(&qword_281588938);
  OUTLINED_FUNCTION_5_14(v31, v32);
  *(inited + 256) = v33;
  v34 = sub_26A850468();
  v35 = sub_26A84FEC8();
  *(inited + 296) = v29;
  *(inited + 304) = v30;
  *(inited + 272) = v35;
  *(inited + 264) = v34;
  v36 = swift_initStackObject();
  OUTLINED_FUNCTION_90_3(v36, v37, v38, v39, v40, v41, v42, v43, v104, *(&v104 + 1), v44);
  v45 = OUTLINED_FUNCTION_140_1();
  v36[3].n128_u64[0] = 1;
  v36[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_5_14(v45, v46);
  *(inited + 312) = v47;
  v48 = sub_26A850498();
  *(inited + 352) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 360) = v7;
  *(inited + 328) = 2;
  *(inited + 320) = v48;
  v49 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_90_3(v49, v50, v51, v52, v53, v54, v55, v56, v105, v110, v57);
  v58 = OUTLINED_FUNCTION_11_1(&qword_281588968);
  v49[3].n128_u64[0] = 1;
  v49[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_5_14(v58, v59);
  *(inited + 368) = v60;
  v61 = sub_26A8502D8();
  *(inited + 408) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 416) = v7;
  *(inited + 384) = 2;
  *(inited + 376) = v61;
  v62 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_90_3(v62, v63, v64, v65, v66, v67, v68, v69, v106, v111, v70);
  v71 = OUTLINED_FUNCTION_2_17(&qword_281588998);
  v62[3].n128_u64[0] = 1;
  v62[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_12_25(v71, v72);
  *(inited + 424) = v73;
  sub_26A850488();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  v74 = sub_26A84FEC8();
  *(inited + 464) = v29;
  *(inited + 472) = v30;
  *(inited + 440) = v74;
  *(inited + 432) = v49;
  v75 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_90_3(v75, v76, v77, v78, v79, v80, v81, v82, v107, v112, v83);
  v84 = OUTLINED_FUNCTION_2_17(&qword_281588938);
  v75[3].n128_u64[0] = 1;
  v75[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_12_25(v84, v85);
  *(inited + 480) = v86;
  v87 = sub_26A850488();
  v88 = sub_26A84FEC8();
  *(inited + 520) = v29;
  *(inited + 528) = v30;
  *(inited + 496) = v88;
  *(inited + 488) = v87;
  v89 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_90_3(v89, v90, v91, v92, v93, v94, v95, v96, v108, v113, v97);
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  v98 = OUTLINED_FUNCTION_12_9(&qword_281588988);
  v89[3].n128_u64[0] = 1;
  v89[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_95_1(v98, v99);
  *(inited + 536) = v100;
  sub_26A850498();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_98_0();

  v101 = sub_26A84FED8();
  *(inited + 576) = v29;
  *(inited + 584) = v30;
  *(inited + 552) = v101;
  *(inited + 544) = v87;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v102);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A850488();
  sub_26A84FEC8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A812714()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A850448();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A85E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_63_4(v9, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v10 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_76_3(v10, v11);
  *(inited + 32) = v12;
  v13 = sub_26A8502C8();
  OUTLINED_FUNCTION_27_18(v13);
  v14 = swift_initStackObject();
  OUTLINED_FUNCTION_14_48(v14);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v15 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v15, v16);
  *(inited + 88) = v17;
  sub_26A850408();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v18 = sub_26A84FEA8();
  v19 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v19;
  *(inited + 104) = v18;
  *(inited + 96) = v0;
  v20 = swift_initStackObject();
  OUTLINED_FUNCTION_14_48(v20);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v21 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v21, v22);
  *(inited + 144) = v23;
  v24 = sub_26A850328();
  OUTLINED_FUNCTION_59_6(v24);
  v25 = swift_initStackObject();
  OUTLINED_FUNCTION_63_4(v25, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588978);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_47_5(v26, v27);
  *(inited + 200) = v28;
  sub_26A8502C8();
  v47 = *MEMORY[0x277CE0A10];
  v46 = *(v3 + 104);
  v46(v7);
  sub_26A850478();
  OUTLINED_FUNCTION_84_4();
  v45 = *(v3 + 8);
  v45(v7, v1);
  v29 = sub_26A84FEA8();
  v30 = MEMORY[0x277CE04F8];
  *(inited + 240) = MEMORY[0x277CE04F8];
  v31 = MEMORY[0x277CE04E8];
  *(inited + 248) = MEMORY[0x277CE04E8];
  *(inited + 216) = v29;
  *(inited + 208) = v1;
  v32 = swift_initStackObject();
  OUTLINED_FUNCTION_32_13(v32);
  v33 = OUTLINED_FUNCTION_10_57(&qword_281588968);
  v32[3].n128_u64[0] = 1;
  v32[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_107_1(v33, v34);
  *(inited + 256) = v35;
  sub_26A8502C8();
  v36 = sub_26A84FEA8();
  *(inited + 296) = v30;
  *(inited + 304) = v31;
  OUTLINED_FUNCTION_133_1(v36);
  v37 = swift_initStackObject();
  OUTLINED_FUNCTION_32_13(v37);
  v38 = OUTLINED_FUNCTION_11_12(&qword_281588938);
  v37[3].n128_u64[0] = 1;
  v37[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_120_1(v38, v39);
  *(inited + 312) = v40;
  v41 = sub_26A850328();
  v42 = sub_26A84FEA8();
  *(inited + 352) = v30;
  OUTLINED_FUNCTION_131_1(v42, MEMORY[0x277CE04E8]);
  *(inited + 320) = v41;
  v43 = OUTLINED_FUNCTION_72_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v43);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_129_1(v44);
  OUTLINED_FUNCTION_110_1();
  sub_26A8502C8();
  (v46)(v7, v47, v1);
  OUTLINED_FUNCTION_31_11();
  sub_26A850478();
  OUTLINED_FUNCTION_36_9();
  v45(v7, v1);
  OUTLINED_FUNCTION_96_0();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A812B3C()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A864670;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v3 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v3, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v4 = qword_281588968;
  v3[2].n128_u64[0] = qword_281588968;
  v5 = byte_281588970;
  v3[2].n128_u8[8] = byte_281588970;
  OUTLINED_FUNCTION_12_25(v4, v5);
  *(inited + 32) = v6;
  sub_26A850458();
  sub_26A850308();
  OUTLINED_FUNCTION_22_36();

  v7 = sub_26A84FED8();
  v8 = MEMORY[0x277CE04F8];
  v9 = MEMORY[0x277CE04E8];
  OUTLINED_FUNCTION_89_3(v7);
  *(inited + 40) = v0;
  v10 = swift_initStackObject();
  OUTLINED_FUNCTION_21_33(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  if (qword_28157E788 != -1)
  {
    swift_once();
  }

  v19 = OUTLINED_FUNCTION_2_17(&qword_2815889A8);
  OUTLINED_FUNCTION_12_25(v19, v20);
  *(inited + 88) = v21;
  v22 = sub_26A850408();
  v23 = sub_26A84FEA8();
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 104) = v23;
  *(inited + 96) = v22;
  v24 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v24, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v25 = OUTLINED_FUNCTION_2_17(&qword_281588978);
  v24[3].n128_u64[0] = 1;
  v24[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_12_25(v25, v26);
  *(inited + 144) = v27;
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  *(inited + 184) = &type metadata for TextVibrancyShapeStyle;
  v28 = sub_26A573830();
  *(inited + 192) = v28;
  *(inited + 160) = 1;
  *(inited + 152) = v0;
  v29 = OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_3_30(v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v38 = qword_281588968;
  *(v2 + 32) = qword_281588968;
  v39 = byte_281588970;
  *(v2 + 40) = byte_281588970;
  *(v2 + 48) = 1;
  *(v2 + 56) = 3;
  OUTLINED_FUNCTION_95_1(v38, v39);
  *(inited + 200) = v40;
  sub_26A850458();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_66_5();

  *(inited + 240) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 248) = v28;
  *(inited + 216) = 1;
  *(inited + 208) = v0;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v41);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A850308();
  OUTLINED_FUNCTION_98_0();

  sub_26A84FED8();
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A812E04()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v42 = v4;
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A85E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v6 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v6, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v7 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_76_3(v7, v8);
  *(inited + 32) = v9;
  sub_26A850408();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v10 = OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_15_42(v10);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v11 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v11, v12);
  *(inited + 88) = v13;
  sub_26A850418();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_113_1();
  v14 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v14);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v15 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v15, v16);
  *(inited + 144) = v17;
  if (qword_2803A8CE8 != -1)
  {
    swift_once();
  }

  sub_26A5737D4(&qword_2803D1FD0, v44);
  v18 = v44[1];
  *(inited + 152) = v44[0];
  *(inited + 168) = v18;
  *(inited + 184) = v44[2];
  v19 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v19, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588978);
  OUTLINED_FUNCTION_136_1();
  v19[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_76_3(v20, v21);
  *(inited + 200) = v22;
  v23 = sub_26A850408();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v24 = sub_26A84FEA8();
  v25 = MEMORY[0x277CE04F8];
  v26 = MEMORY[0x277CE04E8];
  *(inited + 240) = MEMORY[0x277CE04F8];
  *(inited + 248) = v26;
  *(inited + 216) = v24;
  *(inited + 208) = v1;
  v27 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v27);
  v28 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  *(v23 + 48) = v2;
  *(v23 + 56) = 3;
  OUTLINED_FUNCTION_76_3(v28, v29);
  *(inited + 256) = v30;
  v31 = sub_26A850408();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v32 = sub_26A84FEA8();
  *(inited + 296) = v25;
  *(inited + 304) = v26;
  OUTLINED_FUNCTION_133_1(v32);
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v33);
  v34 = OUTLINED_FUNCTION_11_12(&qword_281588938);
  v33[3].n128_u64[0] = v2;
  v33[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_120_1(v34, v35);
  *(inited + 312) = v36;
  sub_26A850418();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_36_9();
  v37 = sub_26A84FEA8();
  *(inited + 352) = v25;
  *(inited + 360) = v26;
  *(inited + 328) = v37;
  *(inited + 320) = v31;
  v38 = OUTLINED_FUNCTION_24_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(v38);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_74_3();
  sub_26A4DBCC8(v39, v40);
  sub_26A8516A8();
  v41 = sub_26A850408();
  sub_26A850308();
  OUTLINED_FUNCTION_36_9();
  (*(v42 + 104))(v0, *MEMORY[0x277CE0A10], v43);
  sub_26A850478();
  OUTLINED_FUNCTION_152_1();
  (*(v42 + 8))(v0, v43);
  memset(v44 + 8, 0, 40);
  *&v44[0] = v41;
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A813230()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A85E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v5 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v5, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v6 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_76_3(v6, v7);
  *(inited + 32) = v8;
  sub_26A850418();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v9 = OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_15_42(v9);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v10 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v10, v11);
  *(inited + 88) = v12;
  sub_26A850458();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v13 = sub_26A850308();

  v14 = sub_26A84FEA8();
  v15 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v15;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  v16 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v16);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v17 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v17, v18);
  *(inited + 144) = v19;
  sub_26A850418();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  *(inited + 192) = 0;
  *(inited + 160) = 0u;
  *(inited + 176) = 0u;
  *(inited + 152) = v1;
  v20 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v20, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v21 = OUTLINED_FUNCTION_5_84(&qword_281588978);
  v20[3].n128_u64[0] = 1;
  v20[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_76_3(v21, v22);
  *(inited + 200) = v23;
  v24 = sub_26A850418();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v25 = sub_26A84FEA8();
  v26 = MEMORY[0x277CE04F8];
  *(inited + 240) = MEMORY[0x277CE04F8];
  v27 = MEMORY[0x277CE04E8];
  *(inited + 248) = MEMORY[0x277CE04E8];
  *(inited + 216) = v25;
  *(inited + 208) = v1;
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v28);
  v29 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  *(v24 + 48) = 1;
  *(v24 + 56) = 3;
  OUTLINED_FUNCTION_76_3(v29, v30);
  *(inited + 256) = v31;
  sub_26A850418();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v32 = sub_26A84FEA8();
  *(inited + 296) = v26;
  *(inited + 304) = v27;
  OUTLINED_FUNCTION_133_1(v32);
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v33);
  v34 = OUTLINED_FUNCTION_11_12(&qword_281588998);
  v33[3].n128_u64[0] = 1;
  v33[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_120_1(v34, v35);
  *(inited + 312) = v36;
  sub_26A850458();
  sub_26A850308();
  OUTLINED_FUNCTION_36_9();
  v45 = *(v43 + 104);
  OUTLINED_FUNCTION_132_1();
  v37();
  sub_26A850478();
  OUTLINED_FUNCTION_75_3();
  v44 = *(v43 + 8);
  v44(v0, v42);
  v38 = sub_26A84FEA8();
  *(inited + 352) = MEMORY[0x277CE04F8];
  OUTLINED_FUNCTION_131_1(v38, MEMORY[0x277CE04E8]);
  *(inited + 320) = v1;
  v39 = OUTLINED_FUNCTION_114_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v39);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_44_12();
  sub_26A4DBCC8(v40, v41);
  OUTLINED_FUNCTION_110_1();
  sub_26A850418();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_132_1();
  v45();
  sub_26A850478();

  v44(v0, v42);
  OUTLINED_FUNCTION_101_1();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A8136B0()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v37 = v3;
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v8 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v8, xmmword_26A8570D0);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v9 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v9, v10);
  *(inited + 32) = v11;
  sub_26A850458();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v12 = sub_26A84FEA8();
  v13 = MEMORY[0x277CE04F8];
  v14 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v14;
  *(inited + 48) = v12;
  *(inited + 40) = v0;
  v15 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v15);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v16 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v16, v17);
  *(inited + 88) = v18;
  sub_26A8502F8();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  *(inited + 136) = 0;
  *(inited + 120) = 0u;
  *(inited + 104) = 0u;
  *(inited + 96) = v0;
  v19 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v19, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588978);
  OUTLINED_FUNCTION_48_8();
  v19[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_76_3(v20, v21);
  *(inited + 144) = v22;
  v23 = sub_26A8504A8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v24 = sub_26A84FEA8();
  *(inited + 184) = v13;
  *(inited + 192) = v14;
  *(inited + 160) = v24;
  *(inited + 152) = v0;
  v25 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v25);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_136_1();
  *(v23 + 56) = 3;
  OUTLINED_FUNCTION_76_3(v26, v27);
  *(inited + 200) = v28;
  sub_26A8504A8();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v29 = sub_26A84FEA8();
  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 216) = v29;
  *(inited + 208) = v0;
  v30 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v30);
  v31 = OUTLINED_FUNCTION_11_12(&qword_281588998);
  v30[3].n128_u64[0] = v1;
  v30[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_120_1(v31, v32);
  *(inited + 256) = v33;
  v34 = sub_26A850458();
  sub_26A850308();
  OUTLINED_FUNCTION_36_9();
  (*(v37 + 104))(v6, *MEMORY[0x277CE0A10], v38);
  sub_26A850478();
  OUTLINED_FUNCTION_152_1();
  (*(v37 + 8))(v6, v38);
  v35 = sub_26A84FEA8();
  *(inited + 296) = v13;
  *(inited + 304) = v14;
  *(inited + 272) = v35;
  *(inited + 264) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  OUTLINED_FUNCTION_0_102();
  sub_26A4DBCC8(v36, &qword_2803B1D80);
  OUTLINED_FUNCTION_3_32();
  sub_26A8516A8();
  sub_26A8504A8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A813A80()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A8514D8();
  OUTLINED_FUNCTION_15();
  v52 = v2;
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v51 = v4 - v3;
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v49 = v6;
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A85E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_137_1(v11, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v12 = qword_281588968;
  v11[2].n128_u64[0] = qword_281588968;
  v13 = byte_281588970;
  v11[2].n128_u8[8] = byte_281588970;
  sub_26A4E324C(v12, v13);
  sub_26A621A9C(v11);
  *(inited + 32) = v14;
  sub_26A8502F8();
  sub_26A850308();
  OUTLINED_FUNCTION_153_1();
  v15 = sub_26A84FED8();
  v16 = MEMORY[0x277CE04F8];
  v17 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v17;
  *(inited + 48) = v15;
  *(inited + 40) = v0;
  v18 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v18);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v19 = OUTLINED_FUNCTION_26_21(&qword_281588998);
  sub_26A4E324C(v19, v20);
  sub_26A621A9C(v18);
  *(inited + 88) = v21;
  sub_26A8502F8();
  sub_26A850308();
  OUTLINED_FUNCTION_153_1();
  v22 = sub_26A84FED8();
  *(inited + 128) = v16;
  *(inited + 136) = v17;
  *(inited + 104) = v22;
  *(inited + 96) = v0;
  v23 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v23);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v24 = OUTLINED_FUNCTION_26_21(&qword_281588938);
  sub_26A4E324C(v24, v25);
  sub_26A621A9C(v23);
  *(inited + 144) = v26;
  v27 = sub_26A8502F8();
  OUTLINED_FUNCTION_59_6(v27);
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_137_1(v28, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v29 = OUTLINED_FUNCTION_26_21(&qword_281588978);
  v28[3].n128_u64[0] = 1;
  v28[3].n128_u8[8] = 3;
  sub_26A4E324C(v29, v30);
  sub_26A621A9C(v28);
  *(inited + 200) = v31;
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_153_1();
  *(inited + 240) = &type metadata for TextVibrancyShapeStyle;
  v32 = sub_26A573830();
  *(inited + 248) = v32;
  *(inited + 216) = 1;
  *(inited + 208) = v0;
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v33);
  v34 = qword_281588968;
  v33[2].n128_u64[0] = qword_281588968;
  v35 = byte_281588970;
  v33[2].n128_u8[8] = byte_281588970;
  v33[3].n128_u64[0] = 1;
  v33[3].n128_u8[8] = 3;
  sub_26A4E324C(v34, v35);
  sub_26A621A9C(v33);
  *(inited + 256) = v36;
  sub_26A8502F8();
  sub_26A8503C8();
  v37 = sub_26A850428();

  *(inited + 296) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 304) = v32;
  *(inited + 272) = 1;
  *(inited + 264) = v37;
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_58_7(v38);
  v39 = OUTLINED_FUNCTION_10_57(&qword_281588998);
  v38[3].n128_u64[0] = 1;
  v38[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_107_1(v39, v40);
  *(inited + 312) = v41;
  sub_26A8502F8();
  sub_26A850308();
  OUTLINED_FUNCTION_84_4();
  (*(v49 + 104))(v9, *MEMORY[0x277CE0A10], v50);
  OUTLINED_FUNCTION_141_1();
  v42 = sub_26A850478();

  (*(v49 + 8))(v9, v50);
  v43 = sub_26A84FED8();
  (*(v52 + 104))(v51, *MEMORY[0x277CE13B8], v53);
  v44 = OUTLINED_FUNCTION_141_1();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v44);
  *(inited + 352) = v45;
  OUTLINED_FUNCTION_49_8();
  *(inited + 360) = sub_26A4DBCC8(v46, &qword_2803B94E0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  (*(v52 + 16))(boxed_opaque_existential_1 + *(v45 + 36), v51, v53);
  *boxed_opaque_existential_1 = v43;
  (*(v52 + 8))(v51, v53);
  *(inited + 320) = v42;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v48);
  OUTLINED_FUNCTION_58_1();
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A850308();
  OUTLINED_FUNCTION_22_36();

  sub_26A84FED8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A814008()
{
  OUTLINED_FUNCTION_28_0();
  v37 = sub_26A8514D8();
  OUTLINED_FUNCTION_15();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v36 = v4 - v3;
  v35 = sub_26A850448();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v12 = swift_initStackObject();
  OUTLINED_FUNCTION_63_4(v12, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v13 = OUTLINED_FUNCTION_26_21(&qword_281588978);
  v12[3].n128_u64[0] = 1;
  v12[3].n128_u8[8] = 3;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(v12);
  *(inited + 32) = v15;
  sub_26A850468();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_153_1();
  v16 = sub_26A8504C8();

  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  v17 = sub_26A573830();
  *(inited + 80) = v17;
  *(inited + 48) = 1;
  *(inited + 40) = v16;
  v18 = swift_initStackObject();
  OUTLINED_FUNCTION_32_13(v18);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v19 = qword_281588968;
  v18[2].n128_u64[0] = qword_281588968;
  v20 = byte_281588970;
  v18[2].n128_u8[8] = byte_281588970;
  v18[3].n128_u64[0] = 1;
  v18[3].n128_u8[8] = 3;
  sub_26A4E324C(v19, v20);
  sub_26A621A9C(v18);
  *(inited + 88) = v21;
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();

  v22 = sub_26A8504C8();

  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 136) = v17;
  *(inited + 104) = 1;
  *(inited + 96) = v22;
  v23 = swift_initStackObject();
  OUTLINED_FUNCTION_32_13(v23);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v24 = OUTLINED_FUNCTION_10_57(&qword_281588998);
  v23[3].n128_u64[0] = 1;
  v23[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_107_1(v24, v25);
  *(inited + 144) = v26;
  sub_26A850468();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_84_4();
  (*(v6 + 104))(v10, *MEMORY[0x277CE0A10], v35);
  OUTLINED_FUNCTION_141_1();
  sub_26A850478();

  (*(v6 + 8))(v10, v35);
  v27 = sub_26A8504C8();

  v28 = sub_26A84FED8();
  (*(v1 + 104))(v36, *MEMORY[0x277CE13B8], v37);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B94E0);
  *(inited + 184) = v29;
  OUTLINED_FUNCTION_49_8();
  *(inited + 192) = sub_26A4DBCC8(v30, &qword_2803B94E0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  (*(v1 + 16))(boxed_opaque_existential_1 + *(v29 + 36), v36, v37);
  *boxed_opaque_existential_1 = v28;
  v32 = OUTLINED_FUNCTION_73_2();
  v33(v32);
  *(inited + 152) = v27;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v34);
  OUTLINED_FUNCTION_58_1();
  sub_26A8516A8();
  sub_26A850468();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  sub_26A8504C8();

  sub_26A84FED8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A8144F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(inited, xmmword_26A8570F0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v4 = swift_initStackObject();
  OUTLINED_FUNCTION_21_33(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v13 = OUTLINED_FUNCTION_2_17(&qword_281588978);
  *(v0 + 48) = 1;
  *(v0 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v13, v14);
  inited[2].n128_u64[0] = v15;
  v16 = sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  inited[4].n128_u64[1] = &type metadata for TextVibrancyShapeStyle;
  v17 = sub_26A573830();
  v18 = OUTLINED_FUNCTION_108_1(v17);
  OUTLINED_FUNCTION_3_30(v18, v19, v20, v21, v22, v23, v24, v25, v26);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v27 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  *(v3 + 48) = 1;
  *(v3 + 56) = 3;
  OUTLINED_FUNCTION_95_1(v27, v28);
  inited[5].n128_u64[1] = v29;
  sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_66_5();

  inited[8].n128_u64[0] = &type metadata for TextVibrancyShapeStyle;
  inited[8].n128_u64[1] = v16;
  inited[6].n128_u16[4] = 1;
  inited[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v30);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_98_0();

  sub_26A84FED8();
  sub_26A80D690();
}

void sub_26A8146E8()
{
  OUTLINED_FUNCTION_28_0();
  v51 = sub_26A850448();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A85E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v8 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v8, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v9 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_76_3(v9, v10);
  *(inited + 32) = v11;
  v12 = sub_26A8502F8();
  v13 = sub_26A84FED8();
  v14 = MEMORY[0x277CE04F8];
  v15 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v15;
  *(inited + 48) = v13;
  *(inited + 40) = v12;
  v16 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v16);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v17 = OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_76_3(v17, v18);
  *(inited + 88) = v19;
  sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v20 = sub_26A84FED8();
  *(inited + 128) = v14;
  *(inited + 136) = v15;
  *(inited + 104) = v20;
  *(inited + 96) = v0;
  v21 = swift_initStackObject();
  OUTLINED_FUNCTION_15_42(v21);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v22 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v22, v23);
  *(inited + 144) = v24;
  v25 = sub_26A8502F8();
  v26 = sub_26A84FED8();
  *(inited + 184) = v14;
  *(inited + 192) = v15;
  *(inited + 160) = v26;
  *(inited + 152) = v25;
  v27 = swift_initStackObject();
  OUTLINED_FUNCTION_42_12(v27, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588978);
  OUTLINED_FUNCTION_48_8();
  v27[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_76_3(v28, v29);
  *(inited + 200) = v30;
  v31 = sub_26A8502D8();
  *(inited + 240) = &type metadata for TextVibrancyShapeStyle;
  v32 = sub_26A573830();
  *(inited + 248) = v32;
  *(inited + 216) = 1;
  *(inited + 208) = v31;
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v33);
  v34 = OUTLINED_FUNCTION_10_57(&qword_281588968);
  v33[3].n128_u64[0] = 1;
  v33[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_107_1(v34, v35);
  *(inited + 256) = v36;
  v37 = sub_26A8502F8();
  *(inited + 296) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 304) = v32;
  *(inited + 272) = 1;
  *(inited + 264) = v37;
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_23_27(v38);
  v39 = OUTLINED_FUNCTION_11_12(&qword_281588998);
  v38[3].n128_u64[0] = 1;
  v38[3].n128_u8[8] = 3;
  OUTLINED_FUNCTION_120_1(v39, v40);
  *(inited + 312) = v41;
  sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_143_1();

  v42 = *MEMORY[0x277CE0A10];
  OUTLINED_FUNCTION_139_1();
  v52 = v43;
  v43(v6, v42, v51);
  OUTLINED_FUNCTION_154_1();
  OUTLINED_FUNCTION_84_4();
  v50 = *(v2 + 8);
  v44 = OUTLINED_FUNCTION_73_2();
  v45(v44);
  *(inited + 352) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 360) = v32;
  *(inited + 328) = 1;
  *(inited + 320) = 3;
  v46 = OUTLINED_FUNCTION_114_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v46);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_44_12();
  sub_26A4DBCC8(v47, v48);
  OUTLINED_FUNCTION_110_1();
  sub_26A8502D8();
  v52(v6, v42, v51);
  sub_26A850478();
  OUTLINED_FUNCTION_152_1();
  v49 = OUTLINED_FUNCTION_73_2();
  v50(v49);
  sub_26A84FED8();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A814B48()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v2 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v2, xmmword_26A8570D0);
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  v3 = OUTLINED_FUNCTION_2_17(&qword_281588988);
  OUTLINED_FUNCTION_12_25(v3, v4);
  *(inited + 32) = v5;
  sub_26A850498();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  v6 = sub_26A84FED8();
  v7 = MEMORY[0x277CE04F8];
  v8 = MEMORY[0x277CE04E8];
  OUTLINED_FUNCTION_89_3(v6);
  *(inited + 40) = v0;
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_21_33(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v18 = OUTLINED_FUNCTION_2_17(&qword_281588968);
  OUTLINED_FUNCTION_12_25(v18, v19);
  *(inited + 88) = v20;
  sub_26A850458();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 136) = sub_26A573830();
  *(inited + 104) = 1;
  *(inited + 96) = v0;
  v21 = OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_3_30(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v30 = OUTLINED_FUNCTION_12_9(&qword_281588998);
  OUTLINED_FUNCTION_95_1(v30, v31);
  *(inited + 144) = v32;
  sub_26A8502F8();
  sub_26A850358();
  sub_26A850428();
  OUTLINED_FUNCTION_66_5();

  v33 = sub_26A84FED8();
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 160) = v33;
  *(inited + 152) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  OUTLINED_FUNCTION_0_102();
  sub_26A4DBCC8(v34, &qword_2803B1D80);
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A814DB8()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v2 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v2, xmmword_26A8570D0);
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  v3 = OUTLINED_FUNCTION_2_17(&qword_281588988);
  OUTLINED_FUNCTION_12_25(v3, v4);
  *(inited + 32) = v5;
  sub_26A850498();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  v6 = sub_26A8504C8();

  v7 = sub_26A84FED8();
  v8 = MEMORY[0x277CE04F8];
  v9 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v9;
  *(inited + 48) = v7;
  *(inited + 40) = v6;
  v10 = swift_initStackObject();
  OUTLINED_FUNCTION_21_33(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v19 = OUTLINED_FUNCTION_2_17(&qword_281588968);
  OUTLINED_FUNCTION_12_25(v19, v20);
  *(inited + 88) = v21;
  sub_26A850458();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  sub_26A8504C8();
  OUTLINED_FUNCTION_46_8();

  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 136) = sub_26A573830();
  *(inited + 104) = 1;
  *(inited + 96) = v0;
  v22 = OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_3_30(v22, v23, v24, v25, v26, v27, v28, v29, v30);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v31 = OUTLINED_FUNCTION_12_9(&qword_281588998);
  OUTLINED_FUNCTION_95_1(v31, v32);
  *(inited + 144) = v33;
  sub_26A8502F8();
  sub_26A850358();
  sub_26A850428();
  OUTLINED_FUNCTION_66_5();

  v34 = sub_26A8504C8();

  v35 = sub_26A84FED8();
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v35;
  *(inited + 152) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  OUTLINED_FUNCTION_0_102();
  sub_26A4DBCC8(v36, &qword_2803B1D80);
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_66_5();

  sub_26A8504C8();

  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A815078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v2 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v2, xmmword_26A8570D0);
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  v3 = OUTLINED_FUNCTION_2_17(&qword_281588988);
  OUTLINED_FUNCTION_12_25(v3, v4);
  *(inited + 32) = v5;
  sub_26A850458();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  v6 = sub_26A84FEA8();
  v7 = MEMORY[0x277CE04F8];
  v8 = MEMORY[0x277CE04E8];
  OUTLINED_FUNCTION_89_3(v6);
  *(inited + 40) = v0;
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_21_33(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v18 = OUTLINED_FUNCTION_2_17(&qword_281588968);
  OUTLINED_FUNCTION_12_25(v18, v19);
  *(inited + 88) = v20;
  v21 = sub_26A850418();
  v22 = sub_26A84FEA8();
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v22;
  *(inited + 96) = v21;
  v23 = OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_3_30(v23, v24, v25, v26, v27, v28, v29, v30, v31);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v32 = OUTLINED_FUNCTION_12_9(&qword_281588998);
  OUTLINED_FUNCTION_95_1(v32, v33);
  *(inited + 144) = v34;
  sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_98_0();

  v35 = sub_26A84FEA8();
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 160) = v35;
  *(inited + 152) = v21;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v36);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A8502F8();
  sub_26A84FEA8();
  OUTLINED_FUNCTION_121_1();
}

void sub_26A8152A4()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v54 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8713E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v3 = swift_initStackObject();
  OUTLINED_FUNCTION_63_4(v3, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v4 = OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_76_3(v4, v5);
  *(inited + 32) = v6;
  v7 = sub_26A8502F8();
  v8 = OUTLINED_FUNCTION_106_1(v7);
  OUTLINED_FUNCTION_14_48(v8);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v9 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v9, v10);
  *(inited + 88) = v11;
  sub_26A850468();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v12 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_63_4(v12, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v13 = OUTLINED_FUNCTION_25_28();
  v12[3].n128_u64[0] = 2;
  v12[3].n128_u8[8] = 2;
  OUTLINED_FUNCTION_76_3(v13, v14);
  *(inited + 144) = v15;
  v16 = sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v17 = sub_26A84FEA8();
  v18 = OUTLINED_FUNCTION_124_1(v17);
  OUTLINED_FUNCTION_14_48(v18);
  v19 = OUTLINED_FUNCTION_25_28();
  *(v16 + 48) = 1;
  OUTLINED_FUNCTION_47_5(v19, v20);
  *(inited + 200) = v21;
  v22 = sub_26A8502F8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v23 = sub_26A84FEA8();
  v24 = OUTLINED_FUNCTION_123_0(v23);
  OUTLINED_FUNCTION_14_48(v24);
  v25 = OUTLINED_FUNCTION_29_22();
  *(v22 + 48) = 1;
  OUTLINED_FUNCTION_71_5(v25, v26);
  *(inited + 256) = v27;
  sub_26A8502F8();
  v28 = sub_26A84FEA8();
  v29 = OUTLINED_FUNCTION_122_1(v28);
  OUTLINED_FUNCTION_14_48(v29);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_71_5(v30, v31);
  *(inited + 312) = v32;
  sub_26A8504A8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v53 = *(v54 + 104);
  v33 = OUTLINED_FUNCTION_62_6();
  v34(v33);
  OUTLINED_FUNCTION_72_5();
  sub_26A850478();
  OUTLINED_FUNCTION_84_4();
  v55 = *(v54 + 8);
  v35 = OUTLINED_FUNCTION_14_29();
  v36(v35);
  v37 = sub_26A84FEA8();
  *(inited + 352) = MEMORY[0x277CE04F8];
  *(OUTLINED_FUNCTION_104_1(v37, MEMORY[0x277CE04E8]) + 16) = xmmword_26A857110;
  v38 = OUTLINED_FUNCTION_10_57(&qword_281588998);
  OUTLINED_FUNCTION_36_11(v38, v39);
  *(inited + 368) = v40;
  sub_26A850458();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_84_4();
  v41 = OUTLINED_FUNCTION_62_6();
  v53(v41);
  sub_26A850478();

  v42 = OUTLINED_FUNCTION_14_29();
  v55(v42);
  v43 = sub_26A84FEA8();
  v44 = MEMORY[0x277CE04F8];
  *(inited + 408) = MEMORY[0x277CE04F8];
  v45 = MEMORY[0x277CE04E8];
  *(inited + 416) = MEMORY[0x277CE04E8];
  v46 = OUTLINED_FUNCTION_149_1(v43);
  OUTLINED_FUNCTION_32_13(v46);
  v47 = OUTLINED_FUNCTION_2_17(&qword_281588938);
  OUTLINED_FUNCTION_79_3(v47, v48);
  *(inited + 424) = v49;
  v50 = sub_26A850488();
  v51 = sub_26A84FEA8();
  *(inited + 464) = v44;
  *(inited + 472) = v45;
  *(inited + 440) = v51;
  *(inited + 432) = v50;
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_125_1(v52);
  OUTLINED_FUNCTION_31_11();
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  OUTLINED_FUNCTION_96_0();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A81570C()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A850448();
  OUTLINED_FUNCTION_15();
  v53 = v1;
  v55 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8713E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v3 = swift_initStackObject();
  OUTLINED_FUNCTION_63_4(v3, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v4 = OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_76_3(v4, v5);
  *(inited + 32) = v6;
  v7 = sub_26A8502F8();
  v8 = OUTLINED_FUNCTION_106_1(v7);
  OUTLINED_FUNCTION_14_48(v8);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v9 = OUTLINED_FUNCTION_5_84(&qword_281588938);
  OUTLINED_FUNCTION_76_3(v9, v10);
  *(inited + 88) = v11;
  sub_26A850468();
  sub_26A850308();
  OUTLINED_FUNCTION_75_3();
  v12 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_63_4(v12, xmmword_26A8570F0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v13 = OUTLINED_FUNCTION_25_28();
  v12[3].n128_u64[0] = 2;
  v12[3].n128_u8[8] = 2;
  OUTLINED_FUNCTION_76_3(v13, v14);
  *(inited + 144) = v15;
  v16 = sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v17 = sub_26A84FEA8();
  v18 = OUTLINED_FUNCTION_124_1(v17);
  OUTLINED_FUNCTION_14_48(v18);
  v19 = OUTLINED_FUNCTION_25_28();
  *(v16 + 48) = 1;
  OUTLINED_FUNCTION_47_5(v19, v20);
  *(inited + 200) = v21;
  v22 = sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v23 = sub_26A84FEA8();
  v24 = OUTLINED_FUNCTION_123_0(v23);
  OUTLINED_FUNCTION_14_48(v24);
  v25 = OUTLINED_FUNCTION_29_22();
  *(v22 + 48) = 1;
  OUTLINED_FUNCTION_71_5(v25, v26);
  *(inited + 256) = v27;
  sub_26A8502F8();
  v28 = sub_26A84FEA8();
  v29 = OUTLINED_FUNCTION_122_1(v28);
  OUTLINED_FUNCTION_14_48(v29);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  OUTLINED_FUNCTION_5_84(&qword_281588998);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_71_5(v30, v31);
  *(inited + 312) = v32;
  sub_26A8504A8();
  sub_26A850358();
  sub_26A850428();
  OUTLINED_FUNCTION_75_3();
  v52 = *(v53 + 104);
  v33 = OUTLINED_FUNCTION_62_6();
  v34(v33);
  OUTLINED_FUNCTION_72_5();
  sub_26A850478();
  OUTLINED_FUNCTION_84_4();
  v54 = *(v53 + 8);
  v35 = OUTLINED_FUNCTION_14_29();
  v36(v35);
  v37 = sub_26A84FEA8();
  *(inited + 352) = MEMORY[0x277CE04F8];
  *(OUTLINED_FUNCTION_104_1(v37, MEMORY[0x277CE04E8]) + 16) = xmmword_26A857110;
  v38 = OUTLINED_FUNCTION_10_57(&qword_281588998);
  OUTLINED_FUNCTION_36_11(v38, v39);
  *(inited + 368) = v40;
  sub_26A850458();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_84_4();
  v41 = OUTLINED_FUNCTION_62_6();
  v52(v41);
  sub_26A850478();

  v42 = OUTLINED_FUNCTION_14_29();
  v54(v42);
  v43 = sub_26A84FEA8();
  v44 = MEMORY[0x277CE04F8];
  *(inited + 408) = MEMORY[0x277CE04F8];
  v45 = MEMORY[0x277CE04E8];
  *(inited + 416) = MEMORY[0x277CE04E8];
  v46 = OUTLINED_FUNCTION_149_1(v43);
  OUTLINED_FUNCTION_32_13(v46);
  v47 = OUTLINED_FUNCTION_2_17(&qword_281588938);
  OUTLINED_FUNCTION_79_3(v47, v48);
  *(inited + 424) = v49;
  sub_26A850488();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_22_36();

  v50 = sub_26A84FEA8();
  *(inited + 464) = v44;
  *(inited + 472) = v45;
  *(inited + 440) = v50;
  *(inited + 432) = v55;
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_125_1(v51);
  OUTLINED_FUNCTION_31_11();
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A850308();
  OUTLINED_FUNCTION_22_36();

  OUTLINED_FUNCTION_96_0();
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A815B80()
{
  sub_26A8502F8();
  sub_26A84FEA8();
  v0 = OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_0_102();
  sub_26A4DBCC8(v1, &qword_2803B1D80);
  sub_26A8516A8();
  sub_26A80D690();
}

void sub_26A815C34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  *(swift_initStackObject() + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v1 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  OUTLINED_FUNCTION_80_4(v1, v2);
  *(inited + 32) = v3;
  v4 = sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_98_0();

  sub_26A8504C8();
  OUTLINED_FUNCTION_128_1();
  v5 = sub_26A84FEA8();
  OUTLINED_FUNCTION_89_3(v5);
  *(inited + 40) = v4;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v6);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A8504C8();
  OUTLINED_FUNCTION_98_0();

  sub_26A84FEA8();
  sub_26A80D690();
}

void sub_26A815DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  *(swift_initStackObject() + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v1 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  OUTLINED_FUNCTION_80_4(v1, v2);
  *(inited + 32) = v3;
  v4 = sub_26A8502F8();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_98_0();

  sub_26A8504C8();
  OUTLINED_FUNCTION_128_1();
  v5 = sub_26A84FEA8();
  OUTLINED_FUNCTION_89_3(v5);
  *(inited + 40) = v4;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v6);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A850408();
  sub_26A8503A8();
  sub_26A850428();
  OUTLINED_FUNCTION_98_0();

  sub_26A8504C8();
  OUTLINED_FUNCTION_128_1();
  sub_26A84FEA8();
  sub_26A80D690();
}

void sub_26A815F50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(inited, xmmword_26A8570F0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v3 = swift_initStackObject();
  OUTLINED_FUNCTION_21_33(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v12 = OUTLINED_FUNCTION_2_17(&qword_281588968);
  *(v0 + 48) = 1;
  *(v0 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v12, v13);
  inited[2].n128_u64[0] = v14;
  sub_26A850488();
  inited[4].n128_u64[1] = &type metadata for TextVibrancyShapeStyle;
  v15 = sub_26A573830();
  v16 = OUTLINED_FUNCTION_108_1(v15);
  OUTLINED_FUNCTION_3_30(v16, v17, v18, v19, v20, v21, v22, v23, v24);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v25 = OUTLINED_FUNCTION_12_9(&qword_281588978);
  *(v2 + 48) = 1;
  *(v2 + 56) = 3;
  OUTLINED_FUNCTION_95_1(v25, v26);
  inited[5].n128_u64[1] = v27;
  v28 = sub_26A850488();
  inited[8].n128_u64[0] = &type metadata for TextVibrancyShapeStyle;
  inited[8].n128_u64[1] = v0;
  inited[6].n128_u16[4] = 1;
  inited[6].n128_u64[0] = v28;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v29);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A850488();
  sub_26A84FED8();
  sub_26A80D690();
}

void sub_26A816108()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  *(swift_initStackObject() + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v1 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  OUTLINED_FUNCTION_80_4(v1, v2);
  *(inited + 32) = v3;
  v4 = sub_26A850458();
  v5 = sub_26A84FEA8();
  OUTLINED_FUNCTION_89_3(v5);
  *(inited + 40) = v4;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v6);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A850498();
  sub_26A8503C8();
  sub_26A850428();
  OUTLINED_FUNCTION_98_0();

  sub_26A84FEA8();
  sub_26A80D690();
}

void sub_26A816274()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A850448();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v6 = OUTLINED_FUNCTION_5_84(&qword_281588968);
  OUTLINED_FUNCTION_76_3(v6, v7);
  *(inited + 32) = v8;
  v9 = sub_26A8502F8();
  OUTLINED_FUNCTION_27_18(v9);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v10 = OUTLINED_FUNCTION_11_12(&qword_281588998);
  OUTLINED_FUNCTION_120_1(v10, v11);
  *(inited + 88) = v12;
  v13 = sub_26A850458();
  v14 = sub_26A84FEA8();
  v15 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v15;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  v16 = OUTLINED_FUNCTION_24_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_74_3();
  sub_26A4DBCC8(v17, v18);
  sub_26A8516A8();
  sub_26A8502F8();
  (*(v3 + 104))(v0, *MEMORY[0x277CE0A10], v1);
  OUTLINED_FUNCTION_3_32();
  sub_26A850478();
  OUTLINED_FUNCTION_36_9();
  (*(v3 + 8))(v0, v1);
  sub_26A80D690();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A8164E4()
{
  if (qword_2803A9058 != -1)
  {
    swift_once();
  }

  return sub_26A4D7E54();
}

void sub_26A81654C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v1, xmmword_26A8570D0);
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v2 = OUTLINED_FUNCTION_2_17(&qword_281588978);
  OUTLINED_FUNCTION_12_25(v2, v3);
  *(inited + 32) = v4;
  v5 = sub_26A850498();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  v6 = sub_26A573830();
  *(inited + 80) = v6;
  *(inited + 48) = 1;
  *(inited + 40) = v5;
  v7 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v16 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  OUTLINED_FUNCTION_95_1(v16, v17);
  *(inited + 88) = v18;
  v19 = sub_26A850458();
  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 136) = v6;
  *(inited + 104) = 1;
  *(inited + 96) = v19;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v20);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A850498();
  sub_26A84FED8();
  sub_26A80D690();
}

void sub_26A816714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(inited, xmmword_26A8570D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v10 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  OUTLINED_FUNCTION_95_1(v10, v11);
  inited[2].n128_u64[0] = v12;
  v13 = sub_26A8502F8();
  sub_26A8504C8();
  OUTLINED_FUNCTION_98_0();

  sub_26A850308();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_101_1();
  inited[2].n128_u64[1] = v13;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v14);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A8502D8();
  sub_26A8504C8();
  OUTLINED_FUNCTION_98_0();

  sub_26A850308();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_121_1();
}

void sub_26A81686C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(inited, xmmword_26A8570D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v2 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v11 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  OUTLINED_FUNCTION_95_1(v11, v12);
  inited[2].n128_u64[0] = v13;
  sub_26A850458();
  sub_26A8504C8();
  OUTLINED_FUNCTION_98_0();

  OUTLINED_FUNCTION_101_1();
  inited[2].n128_u64[1] = v0;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_86_3(v14);
  OUTLINED_FUNCTION_41_15();
  sub_26A8516A8();
  sub_26A850498();
  sub_26A8504C8();
  OUTLINED_FUNCTION_98_0();

  OUTLINED_FUNCTION_121_1();
}

uint64_t sub_26A8169AC()
{
  if (qword_2803A9018 != -1)
  {
    OUTLINED_FUNCTION_14_9();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_31_7();
  v0 = sub_26A850308();
  sub_26A4DBD10(__dst, &qword_2803AA880);
  sub_26A4D7E54();
  *&__src[0] = v0;
  sub_26A65710C(__src, &v73[2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_9_24(v1, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v2 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  OUTLINED_FUNCTION_95_1(v2, v3);
  sub_26A4D7E54();
  sub_26A5075B0();
  if (v68)
  {
    __dst[0] = v68;
    __dst[1] = v69;
    __dst[2] = v70;

    sub_26A850308();
    v4 = sub_26A4D7E54();
    OUTLINED_FUNCTION_37_19(v4, v5, v6, v7, v8, v9, v10, v11, v56, *(&v56 + 1), v57, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, *(&v68 + 1), v69, *(&v69 + 1), v70);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_98_1();
    sub_26A654DCC();

    *&__src[1] = v58;
    sub_26A57E57C(__dst);
  }

  else
  {
    sub_26A4DBD10(&v68, &qword_2803ABAC0);
  }

  v12 = v73[0];
  OUTLINED_FUNCTION_11_61();
  sub_26A817A80();
  *&__dst[0] = v13;
  sub_26A674F68(__dst, v12, *(&v12 + 1));

  v14 = *&__dst[0];

  *(&__src[1] + 1) = v14;
  memcpy(__dst, __src, sizeof(__dst));
  sub_26A4DBD10(v73, &qword_2803AA880);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_3_30(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v24 = OUTLINED_FUNCTION_12_9(&qword_281588998);
  OUTLINED_FUNCTION_95_1(v24, v25);
  sub_26A4D7E54();
  sub_26A5075B0();
  if (v68)
  {
    v73[0] = v68;
    v73[1] = v69;
    v73[2] = v70;

    sub_26A850308();
    v26 = sub_26A4D7E54();
    OUTLINED_FUNCTION_37_19(v26, v27, v28, v29, v30, v31, v32, v33, v56, *(&v56 + 1), v57, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, *(&v68 + 1), v69, *(&v69 + 1), v70);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_98_1();
    sub_26A654DCC();

    *&__src[1] = v58;
    sub_26A57E57C(v73);
  }

  else
  {
    sub_26A4DBD10(&v68, &qword_2803ABAC0);
  }

  OUTLINED_FUNCTION_11_61();
  sub_26A817A80();
  *&v73[0] = v34;
  OUTLINED_FUNCTION_74_3();
  sub_26A674F68(v35, v36, v37);

  v38 = *&v73[0];

  *(&__src[1] + 1) = v38;
  memcpy(v73, __src, sizeof(v73));
  sub_26A4DBD10(__dst, &qword_2803AA880);
  v39 = swift_allocObject();
  *(v39 + 16) = v56;
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v40 = qword_281588938;
  *(v39 + 32) = qword_281588938;
  v41 = byte_281588940;
  *(v39 + 40) = byte_281588940;
  sub_26A4E324C(v40, v41);
  sub_26A621A9C(v39);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_211();
  sub_26A5075B0();
  if (v68)
  {
    __src[0] = v68;
    __src[1] = v69;
    __src[2] = v70;

    sub_26A850308();
    v42 = sub_26A4D7E54();
    OUTLINED_FUNCTION_37_19(v42, v43, v44, v45, v46, v47, v48, v49, v56, *(&v56 + 1), v57, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, *(&v68 + 1), v69, *(&v69 + 1), v70);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_98_1();
    sub_26A654DCC();

    *&__dst[1] = v59;
    sub_26A57E57C(__src);
  }

  else
  {
    sub_26A4DBD10(&v68, &qword_2803ABAC0);
  }

  OUTLINED_FUNCTION_11_61();
  sub_26A817A80();
  *&__src[0] = v50;
  OUTLINED_FUNCTION_33_18();
  sub_26A674F68(v51, v52, v53);

  v54 = *&__src[0];

  *(&__dst[1] + 1) = v54;
  memcpy(&unk_2803D3020, __dst, 0x50uLL);
  return sub_26A4DBD10(v73, &qword_2803AA880);
}

uint64_t sub_26A816FC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A544F58();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_26A8187D8(v10, a2, a3, &qword_2803B86E0, &unk_26A8863F8, sub_26A81AF40, sub_26A81940C);
  *a1 = v6;
  return result;
}

uint64_t sub_26A817080(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A544F70();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26A8192F0(v6, &qword_2803B2748, &unk_26A870E00, sub_26A81B6F0, sub_26A819568);
  *a1 = v2;
  return result;
}

uint64_t sub_26A817124(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void *))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = a5(v12);
  *a1 = v9;
  return result;
}

uint64_t sub_26A8171E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A544FA0();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_26A8187D8(v10, a2, a3, &qword_2803B8790, &unk_26A886540, sub_26A81C1A4, sub_26A819D64);
  *a1 = v6;
  return result;
}

uint64_t sub_26A8172A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A5450E8();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_26A8187D8(v10, a2, a3, &qword_2803B8688, &unk_26A886380, sub_26A81CAEC, sub_26A819F28);
  *a1 = v6;
  return result;
}

uint64_t sub_26A817360(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545118();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_26A8187D8(v10, a2, a3, &qword_2803B8748, &unk_26A8864C8, sub_26A81D244, sub_26A81A054);
  *a1 = v6;
  return result;
}

uint64_t sub_26A81741C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545148();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_26A8187D8(v10, a2, a3, &qword_2803B86F0, &unk_26A886418, sub_26A81CAEC, sub_26A819F28);
  *a1 = v6;
  return result;
}

uint64_t sub_26A8174D8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545190();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26A8192F0(v6, &qword_2803B86E8, &unk_26A886408, sub_26A81DA70, sub_26A81A1DC);
  *a1 = v2;
  return result;
}

uint64_t sub_26A81757C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A5451D8();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_26A8187D8(v10, a2, a3, &qword_2803B8740, &unk_26A8864B8, sub_26A81E4FC, sub_26A81A4E8);
  *a1 = v6;
  return result;
}

uint64_t sub_26A817638(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A5451F0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26A8192F0(v6, &qword_2803B8738, &unk_26A8864A8, sub_26A81ECC8, sub_26A81A650);
  *a1 = v2;
  return result;
}

uint64_t sub_26A8176DC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545220();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_26A8192F0(v6, &qword_2803B8730, &unk_26A886498, sub_26A8205CC, sub_26A81A95C);
  *a1 = v2;
  return result;
}

uint64_t sub_26A817780(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545250();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_26A8187D8(v10, a2, a3, &qword_2803B86F8, &unk_26A886428, sub_26A821060, sub_26A81AC68);
  *a1 = v6;
  return result;
}

uint64_t sub_26A81783C(uint64_t *a1, uint64_t (*a2)(uint64_t, _OWORD *, uint64_t, _OWORD *), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v14 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = a4(v14);
  }

  v15 = *(v14 + 16);
  v17[0] = v14 + 32;
  v17[1] = v15;
  result = sub_26A819008(v17, a2, a3, a5, a6, a7);
  *a1 = v14;
  return result;
}

size_t sub_26A8178F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_26A7A3048(*(a1 + 16), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD20);
  sub_26A826A34();
  v4 = v3;

  sub_26A55E6A0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_26A817A80()
{
  OUTLINED_FUNCTION_125_0();
  if (*(v1 + 16))
  {
    v2 = v0;
    v3 = OUTLINED_FUNCTION_98_0();
    v4(v3, 0);
    OUTLINED_FUNCTION_119_1();
    v2();
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_44_12();
    OUTLINED_FUNCTION_156_1();
    if (!v5)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_109_0();
}

size_t sub_26A817AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_26A7A3094(*(a1 + 16), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD08);
  sub_26A826A34();
  v4 = v3;

  sub_26A55E6A0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

size_t sub_26A817C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_26A7A312C(*(a1 + 16), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD18);
  sub_26A826A34();
  v4 = v3;

  sub_26A55E6A0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

size_t sub_26A817D6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_26A7A31B8(*(a1 + 16), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD10);
  sub_26A826A34();
  v4 = v3;

  sub_26A55E6A0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_26A817EA4()
{
  OUTLINED_FUNCTION_125_0();
  if (*(v0 + 16))
  {
    v1 = OUTLINED_FUNCTION_98_0();
    sub_26A7A31F0(v1, 0);
    v2 = OUTLINED_FUNCTION_58_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2);
    sub_26A826A34();
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_44_12();
    OUTLINED_FUNCTION_156_1();
    if (!v3)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_109_0();
}

void sub_26A817FC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1880);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 72);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 72 * a3), 72 * v5);
      return;
    }

    goto LABEL_10;
  }
}

size_t sub_26A818094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_26A7A32E0(*(a1 + 16), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD00);
  sub_26A826A34();
  v4 = v3;

  sub_26A55E6A0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_26A8181CC()
{
  OUTLINED_FUNCTION_125_0();
  if (*(v0 + 16))
  {
    v1 = OUTLINED_FUNCTION_98_0();
    v2(v1, 0);
    OUTLINED_FUNCTION_119_1();
    sub_26A827A78();
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_44_12();
    OUTLINED_FUNCTION_156_1();
    if (!v3)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_109_0();
}

size_t sub_26A818240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_26A7A33D8(*(a1 + 16), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF8);
  sub_26A826A34();
  v4 = v3;

  sub_26A55E6A0();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_26A818378(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_26A7A3550();
    if (v4 != a3)
    {
      type metadata accessor for TableCell();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_26A818458(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD20);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD20) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26A81F75C(v8, v9, a1, v4, &qword_2803ACD20, &unk_26A85C550, sub_26A80EB9C, type metadata accessor for SummaryItemConstants, sub_26A822004);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A819874(0, v2, 1, a1, &qword_2803ACD20, &unk_26A85C550, type metadata accessor for SummaryItemConstants);
  }
}

void sub_26A818618(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD08);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD08) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26A81F75C(v8, v9, a1, v4, &qword_2803ACD08, &unk_26A85C538, sub_26A80EEE8, type metadata accessor for SimpleItemConstants, sub_26A822B44);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A819874(0, v2, 1, a1, &qword_2803ACD08, &unk_26A85C538, type metadata accessor for SimpleItemConstants);
  }
}

uint64_t sub_26A8187D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a1 + 8);
  result = sub_26A852558();
  if (result < v12)
  {
    if (v12 >= -1)
    {
      if (v12 <= 1)
      {
        v21 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a4);
        result = sub_26A851B18();
        v21 = result;
        *(result + 16) = v12 / 2;
      }

      v22 = OUTLINED_FUNCTION_115_1(result, v14, v15, v16, v17, v18, v19, v20, a3, a6, v21 + 32);
      v24(v22);
      *(v21 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v12 < 0)
  {
    goto LABEL_12;
  }

  if (v12)
  {
    return a7(0, v12, 1, a1, a2, a3);
  }

  return result;
}

void sub_26A818908(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD18);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD18) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26A81F75C(v8, v9, a1, v4, &qword_2803ACD18, &unk_26A884B40, sub_26A80F60C, type metadata accessor for FactItemConstants, sub_26A823884);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A819874(0, v2, 1, a1, &qword_2803ACD18, &unk_26A884B40, type metadata accessor for FactItemConstants);
  }
}

void sub_26A818AC8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD10);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD10) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26A81F75C(v8, v9, a1, v4, &qword_2803ACD10, &unk_26A85C540, sub_26A80F6C0, type metadata accessor for ReferenceConstants, sub_26A8240F8);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A819874(0, v2, 1, a1, &qword_2803ACD10, &unk_26A85C540, type metadata accessor for ReferenceConstants);
  }
}

void sub_26A818C88(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26A81F75C(v8, v9, a1, v4, &qword_2803ACCF0, &unk_26A85C520, sub_26A80F76C, type metadata accessor for ImageStyleAppearance, sub_26A8245A8);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A819874(0, v2, 1, a1, &qword_2803ACCF0, &unk_26A85C520, type metadata accessor for ImageStyleAppearance);
  }
}

void sub_26A818E48(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD00);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD00) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26A81F75C(v8, v9, a1, v4, &qword_2803ACD00, &unk_26A85C530, sub_26A80FA2C, type metadata accessor for NavigationHeaderConstants, sub_26A824CF0);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A819874(0, v2, 1, a1, &qword_2803ACD00, &unk_26A85C530, type metadata accessor for NavigationHeaderConstants);
  }
}

uint64_t sub_26A819008(uint64_t *a1, uint64_t (*a2)(uint64_t, _OWORD *, uint64_t, _OWORD *), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = a1[1];
  result = sub_26A852558();
  if (result < v11)
  {
    if (v11 >= -1)
    {
      v28 = a6;
      v20 = v11 / 2;
      if (v11 <= 1)
      {
        v21 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a4);
        result = sub_26A851B18();
        v21 = result;
        *(result + 16) = v20;
      }

      v22 = OUTLINED_FUNCTION_115_1(result, v13, v14, v15, v16, v17, v18, v19, v27, v28, v21 + 32);
      sub_26A8217E4(v22, v23, v24, v25, v26, a3, v29);
      *(v21 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v11 < 0)
  {
    goto LABEL_12;
  }

  if (v11)
  {
    return sub_26A81ADB0(0, v11, 1, a1, a2);
  }

  return result;
}

void sub_26A819130(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26A852558();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF8);
        v6 = sub_26A851B18();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26A81F75C(v8, v9, a1, v4, &qword_2803ACCF8, &unk_26A8849F0, sub_26A80FD78, type metadata accessor for CompositionParameterConstants, sub_26A8257E8);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26A819874(0, v2, 1, a1, &qword_2803ACCF8, &unk_26A8849F0, type metadata accessor for CompositionParameterConstants);
  }
}

uint64_t sub_26A8192F0(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = sub_26A852558();
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v13 = sub_26A851B18();
        *(v13 + 16) = v12;
      }

      v14[0] = v13 + 32;
      v14[1] = v12;
      a4(v14, v15, a1, v11);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

uint64_t sub_26A81940C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, _OWORD *, uint64_t, _OWORD *))
{
  v24 = a5;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v20 = v7;
    v21 = a3;
    v9 = (v6 + 40 * a3);
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 3);
    v19 = v8;
    while (1)
    {
      v13 = *(v7 - 32);
      v23[0] = v11;
      v23[1] = v12;
      v14 = *(v7 - 8);
      v22[0] = *(v7 - 24);
      v22[1] = v14;

      v15 = v24(v10, v23, v13, v22);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v7 + 8);
        v11 = *(v7 + 16);
        v12 = *(v7 + 32);
        v16 = *(v7 - 16);
        *(v7 + 8) = *(v7 - 32);
        *(v7 + 24) = v16;
        *(v7 + 40) = *v7;
        *(v7 - 32) = v10;
        *(v7 - 24) = v11.i64[0];
        *(v7 - 16) = vextq_s8(v11, v12, 8uLL);
        *v7 = v12.i64[1];
        v7 -= 40;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v21 + 1;
      v7 = v20 + 40;
      v8 = v19 - 1;
      if (v21 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26A819568(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v27 = *a4;
  v4 = *a4 + 56 * a3 + 8;
  v5 = result - a3;
  while (2)
  {
    v25 = v4;
    v26 = a3;
    v24 = v5;
    result = v4;
    while (1)
    {
      v6 = result - 8;
      v7 = result - 64;
      v8 = *(result - 64);
      v9 = result - 56;
      v34 = *(result - 8);
      sub_26A4F20CC(result, &v35);
      v32 = v8;
      v36 = v9;
      sub_26A4F20CC(v9, &v33);
      sub_26A4D7E54();
      v10 = v30;

      v11 = sub_26A6AF1BC(v10);

      sub_26A4D7E54();
      v12 = sub_26A6AF1BC(v28);

      sub_26A57E57C(v29);
      sub_26A57E57C(v31);
      if (v12 >= v11)
      {
        break;
      }

      sub_26A4DBD10(&v32, &qword_2803B2748);
      result = sub_26A4DBD10(&v34, &qword_2803B2748);
LABEL_8:
      if (!v27)
      {
        __break(1u);
        return result;
      }

      v17 = *(v6 + 48);
      v19 = *(v6 + 16);
      v18 = *(v6 + 32);
      v20 = *v6;
      v21 = *(v7 + 16);
      *v6 = *v7;
      *(v6 + 16) = v21;
      *(v6 + 32) = *(v7 + 32);
      *(v6 + 48) = *(v7 + 48);
      *v7 = v20;
      *(v7 + 16) = v19;
      *(v7 + 32) = v18;
      result = v36;
      *(v7 + 48) = v17;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_13;
      }
    }

    sub_26A4D7E54();
    v13 = sub_26A6AF1BC(v30);

    sub_26A4D7E54();
    v14 = sub_26A6AF1BC(v28);

    sub_26A57E57C(v29);
    sub_26A57E57C(v31);
    if (v13 == v14)
    {
      sub_26A4D7E54();
      v15 = sub_26A6AF268(v30);

      sub_26A4D7E54();
      v16 = sub_26A6AF268(v28);

      sub_26A4DBD10(&v32, &qword_2803B2748);
      sub_26A4DBD10(&v34, &qword_2803B2748);
      sub_26A57E57C(v29);
      result = sub_26A57E57C(v31);
      if (v15 >= v16)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    sub_26A4DBD10(&v32, &qword_2803B2748);
    result = sub_26A4DBD10(&v34, &qword_2803B2748);
LABEL_13:
    a3 = v26 + 1;
    v4 = v25 + 56;
    v5 = v24 - 1;
    if (v26 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

void sub_26A819874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v99 = a7;
  v8 = a3;
  v79 = a5;
  v80 = a6;
  v11 = OUTLINED_FUNCTION_145_1(a1, a2, a3, a4, a5);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v87 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v90 = (v77 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = (v77 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v77 - v20;
  MEMORY[0x28223BE20](v19);
  v98 = (v77 - v24);
  v78 = a2;
  if (v8 == a2)
  {
    return;
  }

  v25 = *a4;
  v26 = *(v22 + 72);
  v89 = v26 * (v8 - 1);
  v85 = -v26;
  v27 = a1 - v8;
  v77[2] = v26;
  v88 = v26 * v8;
  v86 = v25;
  v91 = v23;
  v92 = v21;
  while (2)
  {
    v82 = v27;
    v83 = v8;
    v28 = v27;
    v81 = v25;
    v29 = v25;
    v30 = v23;
    while (1)
    {
      v95 = v29;
      v96 = v28;
      v31 = v29 + v88;
      v32 = v21;
      v33 = v29 + v89;
      v97 = *(v29 + v88);
      v34 = v30;
      v35 = *(v29 + v89);
      *v98 = v97;
      v93 = v31;
      sub_26A827E48();
      *v32 = v35;
      v94 = v33;
      sub_26A827E48();
      v36 = v100;
      OUTLINED_FUNCTION_70_2();
      sub_26A4D7E54();
      v37 = *v36;
      v38 = *(v34 + 48);

      v97 = sub_26A6AF1BC(v37);

      v39 = v90;
      OUTLINED_FUNCTION_70_2();
      sub_26A4D7E54();
      v40 = *(v34 + 48);
      v41 = sub_26A6AF1BC(*v39);

      v42 = v100;
      sub_26A827E9C(v39 + v40, v99);
      sub_26A827E9C(v42 + v38, v99);
      if (v41 >= v97)
      {
        break;
      }

      v43 = v92;
      OUTLINED_FUNCTION_33_18();
      sub_26A4DBD10(v44, v45);
      OUTLINED_FUNCTION_33_18();
      sub_26A4DBD10(v46, v47);
      v30 = v91;
      v21 = v43;
      v49 = v95;
      v48 = v96;
LABEL_8:
      if (!v86)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_70_2();
      sub_26A4D7EA8();
      swift_arrayInitWithTakeFrontToBack();
      OUTLINED_FUNCTION_70_2();
      sub_26A4D7EA8();
      v29 = v49 + v85;
      v69 = __CFADD__(v48, 1);
      v28 = v48 + 1;
      if (v69)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_70_2();
    sub_26A4D7E54();
    v50 = v91;
    v51 = *(v91 + 48);
    v52 = sub_26A6AF1BC(*v42);

    OUTLINED_FUNCTION_70_2();
    sub_26A4D7E54();
    v53 = *(v50 + 48);
    v54 = sub_26A6AF1BC(*v39);

    v55 = v99;
    sub_26A827E9C(v39 + v53, v99);
    v56 = v100 + v51;
    v57 = v100;
    sub_26A827E9C(v56, v55);
    if (v52 == v54)
    {
      OUTLINED_FUNCTION_114_1();
      OUTLINED_FUNCTION_70_2();
      sub_26A4D7E54();
      v58 = *v57;
      v59 = v91;
      v97 = *(v91 + 48);
      v84 = sub_26A6AF268(v58);

      v60 = v92;
      OUTLINED_FUNCTION_70_2();
      sub_26A4D7E54();
      v61 = *(v59 + 48);
      v62 = sub_26A6AF268(*v39);

      OUTLINED_FUNCTION_33_18();
      sub_26A4DBD10(v63, v64);
      OUTLINED_FUNCTION_33_18();
      sub_26A4DBD10(v65, v66);
      v67 = v39 + v61;
      v68 = v99;
      sub_26A827E9C(v67, v99);
      sub_26A827E9C(v100 + v97, v68);
      v21 = v60;
      v30 = v59;
      v49 = v95;
      v48 = v96;
      if (v84 >= v62)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v70 = v92;
    OUTLINED_FUNCTION_33_18();
    sub_26A4DBD10(v71, v72);
    OUTLINED_FUNCTION_33_18();
    sub_26A4DBD10(v73, v74);
    v21 = v70;
LABEL_13:
    v8 = v83 + 1;
    OUTLINED_FUNCTION_81_4();
    v25 = v81 + v75;
    v27 = v76 - 1;
    if (v8 != v78)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_26A819D64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, _BYTE *, uint64_t, _BYTE *))
{
  if (a3 != a2)
  {
    v20 = *a4;
    v7 = v20 + 184 * a3 - 184;
    v8 = result - a3 + 1;
LABEL_4:
    v14 = v7;
    v15 = a3;
    v13 = v8;
    while (1)
    {
      memcpy(__dst, (v7 + 184), sizeof(__dst));
      memcpy(v19, v7, 0xB8uLL);
      v9 = __dst[0];
      memcpy(__src, __dst, sizeof(__src));
      v10 = v19[0];
      memcpy(v16, v7, sizeof(v16));
      sub_26A4D7E54();
      sub_26A4D7E54();
      v11 = a5(v9, &__src[8], v10, &v16[8]);
      sub_26A4DBD10(v19, &qword_2803B8790);
      result = sub_26A4DBD10(__dst, &qword_2803B8790);
      if (v5)
      {
        break;
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }

      if (!v20)
      {
        __break(1u);
        return result;
      }

      memcpy(__src, (v7 + 184), sizeof(__src));
      memcpy((v7 + 184), v7, 0xB8uLL);
      result = memcpy(v7, __src, 0xB8uLL);
      if (!v8)
      {
LABEL_10:
        a3 = v15 + 1;
        v7 = v14 + 184;
        v8 = v13 - 1;
        if (v15 + 1 != a2)
        {
          goto LABEL_4;
        }

        return result;
      }

      v7 -= 184;
      ++v8;
    }
  }

  return result;
}

uint64_t sub_26A819F28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 16 * a3);
    v8 = result - a3;
LABEL_4:
    v18 = v7;
    v19 = a3;
    v9 = (v6 + 16 * a3);
    v10 = *v9;
    v11 = v9[1];
    v17 = v8;
    while (1)
    {
      v12 = *(v7 - 2);
      v13 = *(v7 - 1);
      v22 = v11;
      v21 = v13;

      v14 = a5(v10, &v22, v12, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v7;
        v11 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v11;
        *(v7 - 2) = v10;
        v7 -= 2;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v19 + 1;
      v7 = v18 + 2;
      v8 = v17 - 1;
      if (v19 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26A81A054(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void *, uint64_t, void *))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 40 * a3 - 40;
    v9 = result - a3;
LABEL_4:
    v33 = a3;
    v10 = (v7 + 40 * a3);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = *(v10 + 24);
    v15 = v10[4];
    v25 = v9;
    v26 = v8;
    while (1)
    {
      v16 = *v8;
      v17 = *(v8 + 8);
      v18 = *(v8 + 16);
      v19 = *(v8 + 24);
      v29 = *(v8 + 32);
      v30[0] = v12;
      v30[1] = v13;
      v31 = v14 & 1;
      v32 = v15;
      v27[0] = v17;
      v27[1] = v18;
      v28 = v19;

      v20 = a5(v11, v30, v16, v27);

      if (v5)
      {
        break;
      }

      if (v20)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v12 = *(v8 + 48);
        v13 = *(v8 + 56);
        v14 = *(v8 + 64);
        v21 = *(v8 + 16);
        v22 = *(v8 + 32);
        v11 = *(v8 + 40);
        *(v8 + 40) = *v8;
        v15 = *(v8 + 72);
        *(v8 + 56) = v21;
        *(v8 + 72) = v22;
        *v8 = v11;
        *(v8 + 8) = v12;
        *(v8 + 16) = v13;
        *(v8 + 24) = v14;
        *(v8 + 32) = v15;
        v8 -= 40;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v8 = v26 + 40;
      v9 = v25 - 1;
      if (v33 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26A81A1DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v22 = *a4;
  v4 = *a4 + 368 * a3 + 8;
  v5 = result - a3;
  while (2)
  {
    v20 = v4;
    v21 = a3;
    v19 = v5;
    result = v4;
    while (1)
    {
      v6 = (result - 8);
      v7 = (result - 376);
      v8 = *(result - 376);
      v9 = result - 368;
      __dst[0] = *(result - 8);
      sub_26A5D1AF8(result, &__dst[1]);
      v27 = v8;
      v30 = v9;
      sub_26A5D1AF8(v9, &v28);
      sub_26A4D7E54();
      v10 = v25;

      v11 = sub_26A6AF1BC(v10);

      sub_26A4D7E54();
      v12 = sub_26A6AF1BC(v23);

      sub_26A827CF8(v24);
      sub_26A827CF8(v26);
      if (v12 >= v11)
      {
        break;
      }

      sub_26A4DBD10(&v27, &qword_2803B86E8);
      result = sub_26A4DBD10(__dst, &qword_2803B86E8);
LABEL_8:
      if (!v22)
      {
        __break(1u);
        return result;
      }

      memcpy(__dst, v6, 0x170uLL);
      memcpy(v6, v7, 0x170uLL);
      memcpy(v7, __dst, 0x170uLL);
      result = v30;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_13;
      }
    }

    sub_26A4D7E54();
    v13 = sub_26A6AF1BC(v25);

    sub_26A4D7E54();
    v14 = sub_26A6AF1BC(v23);

    sub_26A827CF8(v24);
    sub_26A827CF8(v26);
    if (v13 == v14)
    {
      sub_26A4D7E54();
      v15 = sub_26A6AF268(v25);

      sub_26A4D7E54();
      v16 = sub_26A6AF268(v23);

      sub_26A4DBD10(&v27, &qword_2803B86E8);
      sub_26A4DBD10(__dst, &qword_2803B86E8);
      sub_26A827CF8(v24);
      result = sub_26A827CF8(v26);
      if (v15 >= v16)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    sub_26A4DBD10(&v27, &qword_2803B86E8);
    result = sub_26A4DBD10(__dst, &qword_2803B86E8);
LABEL_13:
    a3 = v21 + 1;
    v4 = v20 + 368;
    v5 = v19 - 1;
    if (v21 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_26A81A4E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, _OWORD *, uint64_t, _OWORD *))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 48 * a3 - 48;
    v9 = result - a3;
LABEL_4:
    v28 = a3;
    v10 = (v7 + 48 * a3);
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 3);
    v14 = v10[5];
    v22 = v9;
    v23 = v8;
    while (1)
    {
      v15 = *v8;
      v16 = *(v8 + 40);
      v26[0] = v12;
      v26[1] = v13;
      v27 = v14;
      v17 = *(v8 + 24);
      v24[0] = *(v8 + 8);
      v24[1] = v17;
      v25 = v16;

      v18 = a5(v11, v26, v15, v24);

      if (v5)
      {
        break;
      }

      if (v18)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + 48);
        v12 = *(v8 + 56);
        v13 = *(v8 + 72);
        v14 = *(v8 + 88);
        v19 = *(v8 + 16);
        *(v8 + 48) = *v8;
        *(v8 + 64) = v19;
        *(v8 + 80) = *(v8 + 32);
        *v8 = v11;
        *(v8 + 8) = v12;
        *(v8 + 24) = v13;
        *(v8 + 40) = v14;
        v8 -= 48;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v28 + 1;
      v8 = v23 + 48;
      v9 = v22 - 1;
      if (v28 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26A81A650(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v22 = *a4;
  v4 = *a4 + 96 * a3 + 8;
  v5 = result - a3;
  while (2)
  {
    v20 = v4;
    v21 = a3;
    v19 = v5;
    result = v4;
    while (1)
    {
      v6 = (result - 8);
      v8 = (result - 104);
      v7 = *(result - 104);
      v9 = result - 96;
      __dst[0] = *(result - 8);
      sub_26A5D2400(result, &__dst[1]);
      v27 = v7;
      v30 = v9;
      sub_26A5D2400(v9, &v28);
      sub_26A4D7E54();
      v10 = v25;

      v11 = sub_26A6AF1BC(v10);

      sub_26A4D7E54();
      v12 = sub_26A6AF1BC(v23);

      sub_26A827DA0(v24);
      sub_26A827DA0(v26);
      if (v12 >= v11)
      {
        break;
      }

      sub_26A4DBD10(&v27, &qword_2803B8738);
      result = sub_26A4DBD10(__dst, &qword_2803B8738);
LABEL_8:
      if (!v22)
      {
        __break(1u);
        return result;
      }

      memcpy(__dst, v6, 0x60uLL);
      memcpy(v6, v8, 0x60uLL);
      memcpy(v8, __dst, 0x60uLL);
      result = v30;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_13;
      }
    }

    sub_26A4D7E54();
    v13 = sub_26A6AF1BC(v25);

    sub_26A4D7E54();
    v14 = sub_26A6AF1BC(v23);

    sub_26A827DA0(v24);
    sub_26A827DA0(v26);
    if (v13 == v14)
    {
      sub_26A4D7E54();
      v15 = sub_26A6AF268(v25);

      sub_26A4D7E54();
      v16 = sub_26A6AF268(v23);

      sub_26A4DBD10(&v27, &qword_2803B8738);
      sub_26A4DBD10(__dst, &qword_2803B8738);
      sub_26A827DA0(v24);
      result = sub_26A827DA0(v26);
      if (v15 >= v16)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    sub_26A4DBD10(&v27, &qword_2803B8738);
    result = sub_26A4DBD10(__dst, &qword_2803B8738);
LABEL_13:
    a3 = v21 + 1;
    v4 = v20 + 96;
    v5 = v19 - 1;
    if (v21 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_26A81A95C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v22 = *a4;
  v4 = *a4 + 112 * a3 + 8;
  v5 = result - a3;
  while (2)
  {
    v20 = v4;
    v21 = a3;
    v19 = v5;
    result = v4;
    while (1)
    {
      v6 = (result - 8);
      v8 = (result - 120);
      v7 = *(result - 120);
      v9 = result - 112;
      __dst[0] = *(result - 8);
      sub_26A6088C0(result, &__dst[1]);
      v27 = v7;
      v30 = v9;
      sub_26A6088C0(v9, &v28);
      sub_26A4D7E54();
      v10 = v25;

      v11 = sub_26A6AF1BC(v10);

      sub_26A4D7E54();
      v12 = sub_26A6AF1BC(v23);

      sub_26A827D4C(v24);
      sub_26A827D4C(v26);
      if (v12 >= v11)
      {
        break;
      }

      sub_26A4DBD10(&v27, &qword_2803B8730);
      result = sub_26A4DBD10(__dst, &qword_2803B8730);
LABEL_8:
      if (!v22)
      {
        __break(1u);
        return result;
      }

      memcpy(__dst, v6, 0x70uLL);
      memcpy(v6, v8, 0x70uLL);
      memcpy(v8, __dst, 0x70uLL);
      result = v30;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_13;
      }
    }

    sub_26A4D7E54();
    v13 = sub_26A6AF1BC(v25);

    sub_26A4D7E54();
    v14 = sub_26A6AF1BC(v23);

    sub_26A827D4C(v24);
    sub_26A827D4C(v26);
    if (v13 == v14)
    {
      sub_26A4D7E54();
      v15 = sub_26A6AF268(v25);

      sub_26A4D7E54();
      v16 = sub_26A6AF268(v23);

      sub_26A4DBD10(&v27, &qword_2803B8730);
      sub_26A4DBD10(__dst, &qword_2803B8730);
      sub_26A827D4C(v24);
      result = sub_26A827D4C(v26);
      if (v15 >= v16)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    sub_26A4DBD10(&v27, &qword_2803B8730);
    result = sub_26A4DBD10(__dst, &qword_2803B8730);
LABEL_13:
    a3 = v21 + 1;
    v4 = v20 + 112;
    v5 = v19 - 1;
    if (v21 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_26A81AC68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, __int128 *, uint64_t, __int128 *))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 32 * a3 - 32;
    v9 = result - a3;
LABEL_4:
    v26 = a3;
    v10 = (v7 + 32 * a3);
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = v10[3];
    v20 = v9;
    v21 = v8;
    while (1)
    {
      v14 = *v8;
      v15 = *(v8 + 24);
      v24 = v12;
      v25 = v13;
      v22 = *(v8 + 8);
      v23 = v15;

      v16 = a5(v11, &v24, v14, &v22);

      if (v5)
      {
        break;
      }

      if (v16)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + 32);
        v12 = *(v8 + 40);
        v13 = *(v8 + 56);
        v17 = *(v8 + 16);
        *(v8 + 32) = *v8;
        *(v8 + 48) = v17;
        *v8 = v11;
        *(v8 + 8) = v12;
        *(v8 + 24) = v13;
        v8 -= 32;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v26 + 1;
      v8 = v21 + 32;
      v9 = v20 - 1;
      if (v26 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26A81ADB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, _OWORD *, uint64_t, _OWORD *))
{
  v27 = a5;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v22 = v7;
    v23 = a3;
    v9 = (v6 + 56 * a3);
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 3);
    v13 = *(v9 + 5);
    v21 = v8;
    while (1)
    {
      v14 = v7 - 48;
      v15 = *(v7 - 48);
      v25 = v10;
      v26[0] = v11;
      v26[1] = v12;
      v26[2] = v13;
      v24[0] = *(v7 - 40);
      v24[1] = *(v7 - 24);
      v24[2] = *(v7 - 8);

      v16 = v27(v10, v26, v15, v24);

      if (v5)
      {
        break;
      }

      if (v16)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v7 + 8);
        v11 = *(v7 + 16);
        v12 = *(v7 + 32);
        v13 = *(v7 + 48);
        v17 = *(v7 - 32);
        *(v7 + 8) = *(v7 - 48);
        *(v7 + 24) = v17;
        *(v7 + 40) = *(v7 - 16);
        v18 = *v7;
        *(v7 - 48) = v10;
        *(v7 - 40) = v11.i64[0];
        *(v7 - 32) = vextq_s8(v11, v12, 8uLL);
        *(v7 - 16) = vextq_s8(v12, v13, 8uLL);
        *v7 = v13.i64[1];
        v7 -= 56;
        *(v14 + 104) = v18;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v23 + 1;
      v7 = v22 + 56;
      v8 = v21 - 1;
      if (v23 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_26A81AF40(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, __int128 *, uint64_t, __int128 *), uint64_t a6)
{
  v7 = v6;
  v128 = a6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_96:
    v119 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_98;
    }

    goto LABEL_141;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v120 = v10;
      v12 = *a3;
      v13 = *a3 + 40 * v9;
      v14 = *v13;
      v15 = *a3 + 40 * v11;
      v16 = *v15;
      v17 = *(v13 + 24);
      v126 = *(v13 + 8);
      v127 = v17;
      v18 = *(v15 + 24);
      v124 = *(v15 + 8);
      v125 = v18;

      LODWORD(v119) = a5(v14, v126.i8, v16, &v124);
      if (v7)
      {
LABEL_109:

        goto LABEL_110;
      }

      v114 = 40 * v11;
      v19 = v12 + 40 * v11 + 64;
      v117 = v11;
      v20 = v11 + 2;
      while (1)
      {
        v21 = v20;
        if (v9 + 1 >= v8)
        {
          break;
        }

        v22 = v8;
        v23 = *(v19 + 16);
        v24 = *(v19 - 24);
        v25 = *(v19 + 40);
        v126 = *(v19 + 24);
        v127 = v25;
        v26 = *v19;
        v124 = *(v19 - 16);
        v125 = v26;

        v27 = a5(v23, v126.i8, v24, &v124);

        v28 = v119 ^ v27;
        v19 += 40;
        ++v9;
        v20 = v21 + 1;
        v8 = v22;
        if (v28)
        {
          goto LABEL_10;
        }
      }

      v9 = v8;
LABEL_10:
      if (v119)
      {
        if (v9 < v117)
        {
          goto LABEL_135;
        }

        v10 = v120;
        if (v117 >= v9)
        {
          v11 = v117;
        }

        else
        {
          if (v8 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v8;
          }

          v30 = 40 * v29 - 40;
          v31 = v114 + 24;
          v32 = v9;
          v33 = v117;
          v11 = v117;
          do
          {
            if (v33 != --v32)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v35 = (v34 + v31);
              v36 = *(v34 + v31 - 24);
              v37 = v34 + v30;
              v38 = *(v35 - 1);
              v39 = *v35;
              v40 = *(v37 + 32);
              v41 = *(v37 + 16);
              *(v35 - 24) = *v37;
              *(v35 - 8) = v41;
              *(v35 + 1) = v40;
              *v37 = v36;
              *(v37 + 8) = v38;
              *(v37 + 24) = v39;
            }

            ++v33;
            v30 -= 40;
            v31 += 40;
          }

          while (v33 < v32);
        }
      }

      else
      {
        v10 = v120;
        v11 = v117;
      }
    }

    v42 = a3[1];
    if (v9 >= v42)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_131;
    }

    if (v9 - v11 >= a4)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      return;
    }

    if (v11 + a4 >= v42)
    {
      v43 = a3[1];
    }

    else
    {
      v43 = (v11 + a4);
    }

    if (v43 < v11)
    {
      goto LABEL_134;
    }

    if (v9 != v43)
    {
      v121 = v10;
      v89 = *a3;
      v90 = *a3 + 40 * v9 - 8;
      v91 = v11 - v9;
      v112 = v43;
      do
      {
        v119 = v9;
        v92 = v89 + 40 * v9;
        v93 = *v92;
        v94 = *(v92 + 8);
        v95 = *(v92 + 24);
        v113 = v91;
        v115 = v90;
        while (1)
        {
          v96 = v89;
          v97 = *(v90 - 32);
          v126 = v94;
          v127 = v95;
          v98 = *(v90 - 8);
          v124 = *(v90 - 24);
          v125 = v98;

          v99 = a5(v93, v126.i8, v97, &v124);
          if (v7)
          {
            goto LABEL_109;
          }

          v100 = v99;

          if ((v100 & 1) == 0)
          {
            break;
          }

          if (!v96)
          {
            goto LABEL_138;
          }

          v89 = v96;
          v93 = *(v90 + 8);
          v94 = *(v90 + 16);
          v95 = *(v90 + 32);
          v101 = *(v90 - 16);
          *(v90 + 8) = *(v90 - 32);
          *(v90 + 24) = v101;
          *(v90 + 40) = *v90;
          *(v90 - 32) = v93;
          *(v90 - 24) = v94.i64[0];
          *(v90 - 16) = vextq_s8(v94, v95, 8uLL);
          *v90 = v95.i64[1];
          v90 -= 40;
          if (__CFADD__(v91++, 1))
          {
            goto LABEL_93;
          }
        }

        v89 = v96;
LABEL_93:
        v9 = (v119 + 1);
        v90 = v115 + 40;
        v91 = v113 - 1;
      }

      while (v119 + 1 != v112);
      v9 = v112;
      v10 = v121;
    }

LABEL_33:
    if (v9 < v11)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v10 = v103;
    }

    v44 = *(v10 + 2);
    v45 = v44 + 1;
    if (v44 >= *(v10 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v10 = v104;
    }

    *(v10 + 2) = v45;
    v46 = v10 + 32;
    v47 = &v10[16 * v44 + 32];
    *v47 = v11;
    *(v47 + 1) = v9;
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (v44)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_96;
    }
  }

  while (1)
  {
    v48 = v45 - 1;
    v49 = &v46[16 * v45 - 16];
    v50 = &v10[16 * v45];
    if (v45 >= 4)
    {
      v55 = &v46[16 * v45];
      v56 = *(v55 - 8);
      v57 = *(v55 - 7);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 6);
      v59 = *(v55 - 5);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = *(v50 + 1);
      v63 = v62 - *v50;
      if (__OFSUB__(v62, *v50))
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v63);
      v64 = v53 + v63;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v64 >= v58)
      {
        v78 = *v49;
        v77 = *(v49 + 1);
        v61 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v53 < v79)
        {
          v48 = v45 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v45 == 3)
    {
      v51 = *(v10 + 4);
      v52 = *(v10 + 5);
      v61 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      v54 = v61;
LABEL_53:
      if (v54)
      {
        goto LABEL_120;
      }

      v66 = *v50;
      v65 = *(v50 + 1);
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_123;
      }

      v70 = *(v49 + 1);
      v71 = v70 - *v49;
      if (__OFSUB__(v70, *v49))
      {
        goto LABEL_126;
      }

      if (__OFADD__(v68, v71))
      {
        goto LABEL_128;
      }

      if (v68 + v71 >= v53)
      {
        if (v53 < v71)
        {
          v48 = v45 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v45 < 2)
    {
      goto LABEL_122;
    }

    v73 = *v50;
    v72 = *(v50 + 1);
    v61 = __OFSUB__(v72, v73);
    v68 = v72 - v73;
    v69 = v61;
LABEL_68:
    if (v69)
    {
      goto LABEL_125;
    }

    v75 = *v49;
    v74 = *(v49 + 1);
    v61 = __OFSUB__(v74, v75);
    v76 = v74 - v75;
    if (v61)
    {
      goto LABEL_127;
    }

    if (v76 < v68)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v48 - 1 >= v45)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_136;
    }

    v80 = &v46[16 * v48 - 16];
    v81 = *v80;
    v82 = v48;
    v83 = &v46[16 * v48];
    v84 = *(v83 + 1);
    sub_26A8224B4((*a3 + 40 * *v80), (*a3 + 40 * *v83), *a3 + 40 * v84, v119, a5);
    if (v7)
    {
      goto LABEL_110;
    }

    if (v84 < v81)
    {
      goto LABEL_112;
    }

    v7 = v46;
    v85 = v9;
    v86 = v10;
    v87 = *(v10 + 2);
    if (v82 > v87)
    {
      goto LABEL_113;
    }

    *v80 = v81;
    *(v80 + 1) = v84;
    if (v82 >= v87)
    {
      goto LABEL_114;
    }

    v45 = v87 - 1;
    sub_26A544D9C(v83 + 16, v87 - 1 - v82, v83);
    *(v86 + 2) = v87 - 1;
    v88 = v87 > 2;
    v10 = v86;
    v9 = v85;
    v46 = v7;
    v7 = 0;
    if (!v88)
    {
      goto LABEL_82;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  v10 = sub_26A544B3C();
LABEL_98:
  v105 = (v10 + 16);
  for (i = *(v10 + 2); i >= 2; *v105 = i)
  {
    if (!*a3)
    {
      goto LABEL_137;
    }

    v107 = &v10[16 * i];
    v108 = *v107;
    v109 = &v105[2 * i];
    v110 = *(v109 + 1);
    sub_26A8224B4((*a3 + 40 * *v107), (*a3 + 40 * *v109), *a3 + 40 * v110, v119, a5);
    if (v7)
    {
      break;
    }

    if (v110 < v108)
    {
      goto LABEL_115;
    }

    if (i - 2 >= *v105)
    {
      goto LABEL_116;
    }

    *v107 = v108;
    *(v107 + 1) = v110;
    v111 = *v105 - i;
    if (*v105 < i)
    {
      goto LABEL_117;
    }

    i = *v105 - 1;
    sub_26A544D9C(v109 + 16, v111, v109);
  }

LABEL_110:
}

void sub_26A81B6F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_100:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_102;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
LABEL_3:
  if ((v5 + 1) >= v4)
  {
    v12 = (v5 + 1);
    goto LABEL_24;
  }

  v117 = v4;
  v119 = v6;
  v7 = v5;
  v8 = *a3;
  sub_26A4D7E54();
  v9 = v8 + 56 * v7;
  sub_26A4D7E54();
  LODWORD(v133) = sub_26A80EC50(v131, v132, v129, v130);
  sub_26A4DBD10(&v129, &qword_2803B2748);
  sub_26A4DBD10(&v131, &qword_2803B2748);
  v10 = v7 + 2;
  for (i = v9 + 120; ; i += 56)
  {
    v12 = v117;
    if (v10 >= v117)
    {
      goto LABEL_16;
    }

    v13 = *(i - 64);
    v131 = *(i - 8);
    sub_26A4F20CC(i, v132);
    v129 = v13;
    sub_26A4F20CC(i - 56, v130);
    sub_26A4D7E54();
    v14 = v127;

    v15 = sub_26A6AF1BC(v14);

    sub_26A4D7E54();
    v16 = sub_26A6AF1BC(v125);

    sub_26A57E57C(v126);
    sub_26A57E57C(v128);
    if (v16 >= v15)
    {
      break;
    }

    sub_26A4DBD10(&v129, &qword_2803B2748);
    sub_26A4DBD10(&v131, &qword_2803B2748);
    if ((v133 & 1) == 0)
    {
      v12 = v10;
      v5 = v7;
      v6 = v119;
      goto LABEL_24;
    }

LABEL_13:
    ++v10;
  }

  sub_26A4D7E54();
  v17 = sub_26A6AF1BC(v127);

  sub_26A4D7E54();
  v18 = sub_26A6AF1BC(v125);

  sub_26A57E57C(v126);
  sub_26A57E57C(v128);
  if (v17 != v18)
  {
    sub_26A4DBD10(&v129, &qword_2803B2748);
    sub_26A4DBD10(&v131, &qword_2803B2748);
    if (v133)
    {
      v12 = v10;
      v5 = v7;
      v6 = v119;
      v21 = 56 * v7;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  sub_26A4D7E54();
  v19 = sub_26A6AF268(v127);

  sub_26A4D7E54();
  v20 = sub_26A6AF268(v125);

  sub_26A4DBD10(&v129, &qword_2803B2748);
  sub_26A4DBD10(&v131, &qword_2803B2748);
  sub_26A57E57C(v126);
  sub_26A57E57C(v128);
  if (((v133 ^ (v19 < v20)) & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = v10;
LABEL_16:
  v6 = v119;
  v5 = v7;
  v21 = 56 * v7;
  if (v133)
  {
LABEL_17:
    if (v12 >= v5)
    {
      if (v5 < v12)
      {
        v22 = 56 * v12 - 56;
        v23 = v12;
        v24 = v5;
        do
        {
          if (v24 != --v23)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_139;
            }

            v26 = (v25 + v21);
            v27 = *(v25 + v21 + 48);
            v28 = (v25 + v22);
            v30 = v26[1];
            v29 = v26[2];
            v31 = *v26;
            v33 = v28[1];
            v32 = v28[2];
            v34 = *v28;
            *(v26 + 6) = *(v28 + 6);
            v26[1] = v33;
            v26[2] = v32;
            *v26 = v34;
            *v28 = v31;
            v28[1] = v30;
            v28[2] = v29;
            *(v28 + 6) = v27;
          }

          ++v24;
          v22 -= 56;
          v21 += 56;
        }

        while (v24 < v23);
      }

      goto LABEL_24;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    v6 = sub_26A544B3C();
LABEL_102:
    v122 = v6;
    v103 = *(v6 + 2);
    v102 = (v6 + 16);
    for (j = v103; j >= 2; *v102 = j)
    {
      if (!*a3)
      {
        goto LABEL_138;
      }

      v104 = &v122[16 * j];
      v105 = *v104;
      v106 = &v102[2 * j];
      v107 = *(v106 + 1);
      sub_26A822864((*a3 + 56 * *v104), (*a3 + 56 * *v106), *a3 + 56 * v107, v5);
      if (v123)
      {
        break;
      }

      if (v107 < v105)
      {
        goto LABEL_126;
      }

      if (j - 2 >= *v102)
      {
        goto LABEL_127;
      }

      *v104 = v105;
      *(v104 + 1) = v107;
      v108 = *v102 - j;
      if (*v102 < j)
      {
        goto LABEL_128;
      }

      j = *v102 - 1;
      sub_26A544D9C(v106 + 16, v108, v106);
    }

LABEL_110:

    return;
  }

LABEL_24:
  v35 = a3[1];
  if (v12 >= v35)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(v12, v5))
  {
    goto LABEL_131;
  }

  if (v12 - v5 >= a4)
  {
    goto LABEL_33;
  }

  if (__OFADD__(v5, a4))
  {
    goto LABEL_132;
  }

  if (&v5[a4] >= v35)
  {
    v36 = a3[1];
  }

  else
  {
    v36 = &v5[a4];
  }

  if (v36 < v5)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v12 == v36)
  {
LABEL_33:
    v37 = v12;
    goto LABEL_34;
  }

  v121 = v6;
  v124 = *a3;
  v80 = (*a3 + 56 * v12 + 8);
  v110 = v5;
  v81 = &v5[-v12];
  v113 = v36;
  while (2)
  {
    v118 = v12;
    v114 = v81;
    v115 = v80;
LABEL_88:
    v82 = v80 - 8;
    v83 = v80 - 64;
    v84 = *(v80 - 8);
    v85 = v80 - 56;
    v131 = *(v80 - 1);
    sub_26A4F20CC(v80, v132);
    v129 = v84;
    v133 = v85;
    sub_26A4F20CC(v85, v130);
    sub_26A4D7E54();
    v86 = v127;

    v87 = sub_26A6AF1BC(v86);

    sub_26A4D7E54();
    v88 = sub_26A6AF1BC(v125);

    sub_26A57E57C(v126);
    sub_26A57E57C(v128);
    if (v88 < v87)
    {
      sub_26A4DBD10(&v129, &qword_2803B2748);
      sub_26A4DBD10(&v131, &qword_2803B2748);
      goto LABEL_92;
    }

    sub_26A4D7E54();
    v89 = sub_26A6AF1BC(v127);

    sub_26A4D7E54();
    v90 = sub_26A6AF1BC(v125);

    sub_26A57E57C(v126);
    sub_26A57E57C(v128);
    if (v89 != v90)
    {
      sub_26A4DBD10(&v129, &qword_2803B2748);
      sub_26A4DBD10(&v131, &qword_2803B2748);
LABEL_97:
      v12 = v118 + 1;
      v80 = v115 + 56;
      v81 = v114 - 1;
      v37 = v113;
      if ((v118 + 1) != v113)
      {
        continue;
      }

      v6 = v121;
      v5 = v110;
LABEL_34:
      if (v37 < v5)
      {
        goto LABEL_130;
      }

      v112 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A0DBC();
        v6 = v99;
      }

      v38 = *(v6 + 2);
      v39 = v38 + 1;
      if (v38 >= *(v6 + 3) >> 1)
      {
        sub_26A7A0DBC();
        v6 = v100;
      }

      *(v6 + 2) = v39;
      v40 = v6 + 32;
      v41 = &v6[16 * v38 + 32];
      *v41 = v5;
      v41[1] = v112;
      v133 = *a1;
      if (!v133)
      {
        goto LABEL_140;
      }

      if (!v38)
      {
LABEL_84:
        v4 = a3[1];
        v5 = v112;
        if (v112 >= v4)
        {
          goto LABEL_100;
        }

        goto LABEL_3;
      }

      v120 = v6;
      while (1)
      {
        v42 = v39 - 1;
        v43 = &v40[16 * v39 - 16];
        v44 = &v6[16 * v39];
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v45 = *(v6 + 4);
          v46 = *(v6 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_55:
          if (v48)
          {
            goto LABEL_117;
          }

          v60 = *v44;
          v59 = *(v44 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_120;
          }

          v64 = *(v43 + 1);
          v65 = v64 - *v43;
          if (__OFSUB__(v64, *v43))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v62, v65))
          {
            goto LABEL_125;
          }

          if (v62 + v65 >= v47)
          {
            if (v47 < v65)
            {
              v42 = v39 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        if (v39 < 2)
        {
          goto LABEL_119;
        }

        v67 = *v44;
        v66 = *(v44 + 1);
        v55 = __OFSUB__(v66, v67);
        v62 = v66 - v67;
        v63 = v55;
LABEL_70:
        if (v63)
        {
          goto LABEL_122;
        }

        v69 = *v43;
        v68 = *(v43 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_124;
        }

        if (v70 < v62)
        {
          goto LABEL_84;
        }

LABEL_77:
        if (v42 - 1 >= v39)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v74 = &v40[16 * v42 - 16];
        v75 = *v74;
        v76 = &v40[16 * v42];
        v77 = *(v76 + 1);
        sub_26A822864((*a3 + 56 * *v74), (*a3 + 56 * *v76), *a3 + 56 * v77, v133);
        if (v123)
        {
          goto LABEL_110;
        }

        if (v77 < v75)
        {
          goto LABEL_112;
        }

        v5 = v40;
        v78 = *(v120 + 2);
        if (v42 > v78)
        {
          goto LABEL_113;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        if (v42 >= v78)
        {
          goto LABEL_114;
        }

        v39 = v78 - 1;
        sub_26A544D9C(v76 + 16, v78 - 1 - v42, v76);
        v6 = v120;
        *(v120 + 2) = v78 - 1;
        v79 = v78 > 2;
        v40 = v5;
        if (!v79)
        {
          goto LABEL_84;
        }
      }

      v49 = &v40[16 * v39];
      v50 = *(v49 - 8);
      v51 = *(v49 - 7);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_115;
      }

      v54 = *(v49 - 6);
      v53 = *(v49 - 5);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_116;
      }

      v56 = *(v44 + 1);
      v57 = v56 - *v44;
      if (__OFSUB__(v56, *v44))
      {
        goto LABEL_118;
      }

      v55 = __OFADD__(v47, v57);
      v58 = v47 + v57;
      if (v55)
      {
        goto LABEL_121;
      }

      if (v58 >= v52)
      {
        v72 = *v43;
        v71 = *(v43 + 1);
        v55 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v73)
        {
          v42 = v39 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_55;
    }

    break;
  }

  sub_26A4D7E54();
  v91 = sub_26A6AF268(v127);

  sub_26A4D7E54();
  v92 = sub_26A6AF268(v125);

  sub_26A4DBD10(&v129, &qword_2803B2748);
  sub_26A4DBD10(&v131, &qword_2803B2748);
  sub_26A57E57C(v126);
  sub_26A57E57C(v128);
  if (v91 >= v92)
  {
    goto LABEL_97;
  }

LABEL_92:
  if (v124)
  {
    v93 = *(v82 + 6);
    v95 = *(v82 + 1);
    v94 = *(v82 + 2);
    v96 = *v82;
    v97 = *(v83 + 1);
    *v82 = *v83;
    *(v82 + 1) = v97;
    *(v82 + 2) = *(v83 + 2);
    *(v82 + 6) = *(v83 + 6);
    *v83 = v96;
    *(v83 + 1) = v95;
    *(v83 + 2) = v94;
    v80 = v133;
    *(v83 + 6) = v93;
    if (__CFADD__(v81++, 1))
    {
      goto LABEL_97;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_26A81C1A4(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t (*a5)(uint64_t, _BYTE *, uint64_t, _BYTE *), uint64_t a6)
{
  v114[25] = a6;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_95:
    v106 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_97;
    }

    goto LABEL_138;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v106 = v7;
      v12 = *a3;
      v101 = v8 + 1;
      memcpy(__dst, &(*a3)[184 * v8 + 184], sizeof(__dst));
      v13 = v10;
      v14 = &v12[184 * v10];
      memcpy(v114, v14, 0xB8uLL);
      v15 = __dst[0];
      memcpy(v112, __dst, sizeof(v112));
      v16 = v114[0];
      memcpy(__src, v14, sizeof(__src));
      sub_26A4D7E54();
      sub_26A4D7E54();
      v104 = a5(v15, &v112[1], v16, &__src[1]);
      if (v6)
      {
LABEL_106:
        sub_26A4DBD10(v114, &qword_2803B8790);
        sub_26A4DBD10(__dst, &qword_2803B8790);
        goto LABEL_107;
      }

      v99 = v9;
      sub_26A4DBD10(v114, &qword_2803B8790);
      sub_26A4DBD10(__dst, &qword_2803B8790);
      v94 = 184 * v13;
      v17 = &v12[184 * v13 + 184];
      v97 = v13;
      v18 = v13 + 2;
      v11 = v101;
      v19 = v106;
      while (1)
      {
        v20 = v11;
        v21 = v18;
        if (v11 + 1 >= v19)
        {
          break;
        }

        v22 = v17 + 184;
        memcpy(__src, (v17 + 184), sizeof(__src));
        memcpy(v112, v17, sizeof(v112));
        v23 = __src[0];
        memcpy(v110, __src, sizeof(v110));
        v24 = v112[0];
        memcpy(v109, v17, sizeof(v109));
        sub_26A4D7E54();
        sub_26A4D7E54();
        v25 = a5(v23, &v110[8], v24, &v109[8]);
        sub_26A4DBD10(v112, &qword_2803B8790);
        sub_26A4DBD10(__src, &qword_2803B8790);
        v26 = v104 ^ v25;
        v11 = v20 + 1;
        v18 = v21 + 1;
        v17 = v22;
        v19 = v106;
        if (v26)
        {
          goto LABEL_10;
        }
      }

      v11 = v19;
LABEL_10:
      if (v104)
      {
        v10 = v13;
        if (v11 < v13)
        {
          goto LABEL_132;
        }

        if (v13 > v20)
        {
          v9 = v99;
          goto LABEL_25;
        }

        if (v19 >= v21)
        {
          v27 = v21;
        }

        else
        {
          v27 = v19;
        }

        v28 = 184 * v27 - 184;
        v29 = v11;
        v9 = v99;
        v30 = v94;
        do
        {
          if (v10 != --v11)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_136;
            }

            memcpy(v112, &v31[v30], sizeof(v112));
            memmove(&v31[v30], &v31[v28], 0xB8uLL);
            memcpy(&v31[v28], v112, 0xB8uLL);
          }

          ++v10;
          v28 -= 184;
          v30 += 184;
        }

        while (v10 < v11);
        v11 = v29;
      }

      else
      {
        v9 = v99;
      }

      v10 = v97;
    }

LABEL_25:
    v32 = a3[1];
    if (v11 >= v32)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_128;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_34;
    }

    if (__OFADD__(v10, a4))
    {
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
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v10 + a4 >= v32)
    {
      v33 = a3[1];
    }

    else
    {
      v33 = (v10 + a4);
    }

    if (v33 < v10)
    {
      goto LABEL_131;
    }

    if (v11 != v33)
    {
      v98 = v10;
      v106 = *a3;
      v77 = &(*a3)[184 * v11 - 184];
      v78 = v10 - v11 + 1;
      v95 = v33;
      do
      {
        v79 = v11;
        v103 = v78;
        v105 = v77;
        while (1)
        {
          memcpy(__dst, (v77 + 184), sizeof(__dst));
          memcpy(v114, v77, 0xB8uLL);
          v80 = __dst[0];
          memcpy(v112, __dst, sizeof(v112));
          v81 = v114[0];
          memcpy(__src, v77, sizeof(__src));
          sub_26A4D7E54();
          sub_26A4D7E54();
          v82 = a5(v80, &v112[1], v81, &__src[1]);
          if (v6)
          {
            goto LABEL_106;
          }

          v83 = v82;
          sub_26A4DBD10(v114, &qword_2803B8790);
          sub_26A4DBD10(__dst, &qword_2803B8790);
          if ((v83 & 1) == 0)
          {
            break;
          }

          if (!v106)
          {
            goto LABEL_135;
          }

          memcpy(v112, (v77 + 184), sizeof(v112));
          memcpy((v77 + 184), v77, 0xB8uLL);
          memcpy(v77, v112, 0xB8uLL);
          if (!v78)
          {
            break;
          }

          v77 -= 184;
          ++v78;
        }

        v11 = v79 + 1;
        v77 = v105 + 184;
        v78 = v103 - 1;
      }

      while ((v79 + 1) != v95);
      v11 = v95;
      v10 = v98;
    }

LABEL_34:
    if (v11 < v10)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v9 = v84;
    }

    v34 = *(v9 + 2);
    v35 = v34 + 1;
    if (v34 >= *(v9 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v9 = v85;
    }

    *(v9 + 2) = v35;
    v36 = v9 + 32;
    v37 = &v9[16 * v34 + 32];
    *v37 = v10;
    *(v37 + 1) = v11;
    v106 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    v102 = v11;
    if (v34)
    {
      break;
    }

LABEL_83:
    v7 = a3[1];
    v8 = v102;
    if (v102 >= v7)
    {
      goto LABEL_95;
    }
  }

  while (1)
  {
    v38 = v35 - 1;
    v39 = &v36[16 * v35 - 16];
    v40 = &v9[16 * v35];
    if (v35 >= 4)
    {
      v45 = &v36[16 * v35];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_115;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_116;
      }

      v52 = *(v40 + 1);
      v53 = v52 - *v40;
      if (__OFSUB__(v52, *v40))
      {
        goto LABEL_118;
      }

      v51 = __OFADD__(v43, v53);
      v54 = v43 + v53;
      if (v51)
      {
        goto LABEL_121;
      }

      if (v54 >= v48)
      {
        v68 = *v39;
        v67 = *(v39 + 1);
        v51 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v51)
        {
          goto LABEL_126;
        }

        if (v43 < v69)
        {
          v38 = v35 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_54;
    }

    if (v35 == 3)
    {
      v41 = *(v9 + 4);
      v42 = *(v9 + 5);
      v51 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      v44 = v51;
LABEL_54:
      if (v44)
      {
        goto LABEL_117;
      }

      v56 = *v40;
      v55 = *(v40 + 1);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_120;
      }

      v60 = *(v39 + 1);
      v61 = v60 - *v39;
      if (__OFSUB__(v60, *v39))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v58, v61))
      {
        goto LABEL_125;
      }

      if (v58 + v61 >= v43)
      {
        if (v43 < v61)
        {
          v38 = v35 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    if (v35 < 2)
    {
      goto LABEL_119;
    }

    v63 = *v40;
    v62 = *(v40 + 1);
    v51 = __OFSUB__(v62, v63);
    v58 = v62 - v63;
    v59 = v51;
LABEL_69:
    if (v59)
    {
      goto LABEL_122;
    }

    v65 = *v39;
    v64 = *(v39 + 1);
    v51 = __OFSUB__(v64, v65);
    v66 = v64 - v65;
    if (v51)
    {
      goto LABEL_124;
    }

    if (v66 < v58)
    {
      goto LABEL_83;
    }

LABEL_76:
    if (v38 - 1 >= v35)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v70 = &v36[16 * v38 - 16];
    v71 = *v70;
    v72 = &v36[16 * v38];
    v73 = *(v72 + 1);
    sub_26A822FF4(&(*a3)[184 * *v70], &(*a3)[184 * *v72], &(*a3)[184 * v73], v106, a5);
    if (v6)
    {
      goto LABEL_107;
    }

    if (v73 < v71)
    {
      goto LABEL_109;
    }

    v74 = v9;
    v75 = *(v9 + 2);
    if (v38 > v75)
    {
      goto LABEL_110;
    }

    *v70 = v71;
    *(v70 + 1) = v73;
    if (v38 >= v75)
    {
      goto LABEL_111;
    }

    v35 = v75 - 1;
    sub_26A544D9C(v72 + 16, v75 - 1 - v38, &v36[16 * v38]);
    *(v74 + 2) = v75 - 1;
    v76 = v75 > 2;
    v9 = v74;
    if (!v76)
    {
      goto LABEL_83;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  v9 = sub_26A544B3C();
LABEL_97:
  v86 = v9 + 16;
  v87 = *(v9 + 2);
  while (v87 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v88 = v9;
    v89 = &v9[16 * v87];
    v90 = *v89;
    v91 = &v86[2 * v87];
    v92 = *(v91 + 1);
    sub_26A822FF4(&(*a3)[184 * *v89], &(*a3)[184 * *v91], &(*a3)[184 * v92], v106, a5);
    if (v6)
    {
      break;
    }

    if (v92 < v90)
    {
      goto LABEL_112;
    }

    if (v87 - 2 >= *v86)
    {
      goto LABEL_113;
    }

    *v89 = v90;
    *(v89 + 1) = v92;
    v93 = *v86 - v87;
    if (*v86 < v87)
    {
      goto LABEL_114;
    }

    v87 = *v86 - 1;
    sub_26A544D9C(v91 + 16, v93, v91);
    *v86 = v87;
    v9 = v88;
  }

LABEL_107:
}

void sub_26A81CAEC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_94:
    v115 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_96;
    }

    goto LABEL_139;
  }

  v115 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v115++;
    if (v115 < v6)
    {
      v9 = (*a3 + 16 * v115);
      v10 = *v9;
      v11 = (*a3 + 16 * v8);
      v12 = *v11;
      v13 = v11[1];
      v117 = v9[1];
      v116 = v13;

      v111 = a5(v10, &v117, v12, &v116);
      if (v5)
      {
LABEL_106:

        goto LABEL_107;
      }

      v108 = v7;

      v102 = 16 * v8;
      v14 = v11 + 3;
      v105 = v8;
      v15 = v8 + 2;
      while (1)
      {
        v16 = v15;
        if (v115 + 1 >= v6)
        {
          break;
        }

        v17 = v6;
        v18 = v14[1];
        v19 = *(v14 - 1);
        v20 = *v14;
        v117 = v14[2];
        v116 = v20;

        v21 = a5(v18, &v117, v19, &v116);

        v22 = v111 ^ v21;
        v14 += 2;
        ++v115;
        v15 = v16 + 1;
        v6 = v17;
        if (v22)
        {
          goto LABEL_10;
        }
      }

      v115 = v6;
LABEL_10:
      if (v111)
      {
        v23 = v105;
        if (v115 < v105)
        {
          goto LABEL_133;
        }

        v7 = v108;
        if (v105 >= v115)
        {
          v8 = v105;
          goto LABEL_25;
        }

        if (v6 >= v16)
        {
          v24 = v16;
        }

        else
        {
          v24 = v6;
        }

        v25 = 16 * v24;
        v26 = v115;
        v27 = v102;
        do
        {
          if (v23 != --v26)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_137;
            }

            v29 = (v28 + v27);
            v30 = v28 + v25;
            v31 = *v29;
            v32 = v29[1];
            *v29 = *(v30 - 16);
            *(v30 - 16) = v31;
            *(v30 - 8) = v32;
          }

          ++v23;
          v25 -= 16;
          v27 += 16;
        }

        while (v23 < v26);
      }

      else
      {
        v7 = v108;
      }

      v8 = v105;
    }

LABEL_25:
    v33 = a3[1];
    if (v115 >= v33)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v115, v8))
    {
      goto LABEL_129;
    }

    if (v115 - v8 >= a4)
    {
      goto LABEL_33;
    }

    v34 = (v8 + a4);
    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_132:
      __break(1u);
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
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return;
    }

    if (v34 >= v33)
    {
      v34 = a3[1];
    }

    if (v34 < v8)
    {
      goto LABEL_132;
    }

    if (v115 != v34)
    {
      v110 = v7;
      v79 = *a3;
      v80 = *a3 + 16 * v115;
      v106 = v8;
      v81 = v8 - v115;
      v101 = v34;
      do
      {
        v82 = (v79 + 16 * v115);
        v83 = *v82;
        v84 = v82[1];
        v103 = v81;
        v112 = v80;
        v85 = v80;
        do
        {
          v86 = *(v85 - 2);
          v87 = *(v85 - 1);
          v117 = v84;
          v116 = v87;

          v88 = a5(v83, &v117, v86, &v116);
          if (v5)
          {
            goto LABEL_106;
          }

          v89 = v88;

          if ((v89 & 1) == 0)
          {
            break;
          }

          if (!v79)
          {
            goto LABEL_136;
          }

          v83 = *v85;
          v84 = v85[1];
          *v85 = *(v85 - 1);
          *(v85 - 1) = v84;
          *(v85 - 2) = v83;
          v85 -= 2;
        }

        while (!__CFADD__(v81++, 1));
        v80 = v112 + 16;
        v81 = v103 - 1;
        ++v115;
      }

      while (v115 != v101);
      v115 = v101;
      v7 = v110;
      v8 = v106;
    }

LABEL_33:
    if (v115 < v8)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v7 = v91;
    }

    v35 = *(v7 + 2);
    v36 = v35 + 1;
    if (v35 >= *(v7 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v7 = v92;
    }

    *(v7 + 2) = v36;
    v37 = v7 + 32;
    v38 = &v7[16 * v35 + 32];
    *v38 = v8;
    *(v38 + 1) = v115;
    v109 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if (v35)
    {
      break;
    }

LABEL_82:
    v6 = a3[1];
    if (v115 >= v6)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    v40 = &v37[16 * v36 - 16];
    v41 = &v7[16 * v36];
    if (v36 >= 4)
    {
      v46 = &v37[16 * v36];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_116;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_117;
      }

      v53 = *(v41 + 1);
      v54 = v53 - *v41;
      if (__OFSUB__(v53, *v41))
      {
        goto LABEL_119;
      }

      v52 = __OFADD__(v44, v54);
      v55 = v44 + v54;
      if (v52)
      {
        goto LABEL_122;
      }

      if (v55 >= v49)
      {
        v69 = *v40;
        v68 = *(v40 + 1);
        v52 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v52)
        {
          goto LABEL_127;
        }

        if (v44 < v70)
        {
          v39 = v36 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v36 == 3)
    {
      v42 = *(v7 + 4);
      v43 = *(v7 + 5);
      v52 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      v45 = v52;
LABEL_53:
      if (v45)
      {
        goto LABEL_118;
      }

      v57 = *v41;
      v56 = *(v41 + 1);
      v58 = __OFSUB__(v56, v57);
      v59 = v56 - v57;
      v60 = v58;
      if (v58)
      {
        goto LABEL_121;
      }

      v61 = *(v40 + 1);
      v62 = v61 - *v40;
      if (__OFSUB__(v61, *v40))
      {
        goto LABEL_124;
      }

      if (__OFADD__(v59, v62))
      {
        goto LABEL_126;
      }

      if (v59 + v62 >= v44)
      {
        if (v44 < v62)
        {
          v39 = v36 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v36 < 2)
    {
      goto LABEL_120;
    }

    v64 = *v41;
    v63 = *(v41 + 1);
    v52 = __OFSUB__(v63, v64);
    v59 = v63 - v64;
    v60 = v52;
LABEL_68:
    if (v60)
    {
      goto LABEL_123;
    }

    v66 = *v40;
    v65 = *(v40 + 1);
    v52 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v52)
    {
      goto LABEL_125;
    }

    if (v67 < v59)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v71 = &v37[16 * v39 - 16];
    v72 = *v71;
    v73 = v39;
    v74 = &v37[16 * v39];
    v75 = *(v74 + 1);
    sub_26A823524((*a3 + 16 * *v71), (*a3 + 16 * *v74), *a3 + 16 * v75, v109, a5);
    if (v5)
    {
      goto LABEL_107;
    }

    if (v75 < v72)
    {
      goto LABEL_110;
    }

    v76 = v7;
    v77 = *(v7 + 2);
    if (v73 > v77)
    {
      goto LABEL_111;
    }

    *v71 = v72;
    *(v71 + 1) = v75;
    if (v73 >= v77)
    {
      goto LABEL_112;
    }

    v36 = v77 - 1;
    sub_26A544D9C(v74 + 16, v77 - 1 - v73, v74);
    *(v76 + 2) = v77 - 1;
    v78 = v77 > 2;
    v7 = v76;
    if (!v78)
    {
      goto LABEL_82;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  v7 = sub_26A544B3C();
LABEL_96:
  v93 = v7 + 16;
  v94 = *(v7 + 2);
  while (v94 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_135;
    }

    v95 = v7;
    v96 = &v7[16 * v94];
    v97 = *v96;
    v98 = &v93[2 * v94];
    v99 = *(v98 + 1);
    sub_26A823524((*a3 + 16 * *v96), (*a3 + 16 * *v98), *a3 + 16 * v99, v115, a5);
    if (v5)
    {
      break;
    }

    if (v99 < v97)
    {
      goto LABEL_113;
    }

    if (v94 - 2 >= *v93)
    {
      goto LABEL_114;
    }

    *v96 = v97;
    *(v96 + 1) = v99;
    v100 = *v93 - v94;
    if (*v93 < v94)
    {
      goto LABEL_115;
    }

    v94 = *v93 - 1;
    sub_26A544D9C(v98 + 16, v100, v98);
    *v93 = v94;
    v7 = v95;
  }

LABEL_107:
}

void sub_26A81D244(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v149 = a6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_94:
    v136 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_96;
    }

    goto LABEL_139;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v137 = v10;
      v12 = *a3;
      v13 = *a3 + 40 * v9;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *a3 + 40 * v11;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v144 = *(v19 + 32);
      v145 = v15;
      v146 = v16;
      v147 = v17;
      v148 = v18;
      v141 = v21;
      v142 = v22;
      v143 = v23;

      LODWORD(v136) = a5(v14, &v145, v20, &v141);
      if (v7)
      {
LABEL_107:

        goto LABEL_108;
      }

      v130 = 40 * v11;
      v24 = (v12 + 40 * v11 + 112);
      v133 = v11;
      v25 = v11 + 2;
      while (1)
      {
        v26 = v25;
        if (v9 + 1 >= v8)
        {
          break;
        }

        v27 = v8;
        v28 = *(v24 - 4);
        v29 = *(v24 - 3);
        v30 = *(v24 - 2);
        v31 = *(v24 - 8);
        v32 = *v24;
        v33 = *(v24 - 9);
        v34 = *(v24 - 8);
        v35 = *(v24 - 7);
        v36 = *(v24 - 48);
        v144 = *(v24 - 5);
        v145 = v29;
        v146 = v30;
        v147 = v31;
        v148 = v32;
        v141 = v34;
        v142 = v35;
        v143 = v36;

        v37 = a5(v28, &v145, v33, &v141);

        v38 = v136 ^ v37;
        v24 += 5;
        ++v9;
        v25 = v26 + 1;
        v8 = v27;
        if (v38)
        {
          goto LABEL_10;
        }
      }

      v9 = v8;
LABEL_10:
      if (v136)
      {
        if (v9 < v133)
        {
          goto LABEL_133;
        }

        v10 = v137;
        if (v133 >= v9)
        {
          v11 = v133;
        }

        else
        {
          if (v8 >= v26)
          {
            v39 = v26;
          }

          else
          {
            v39 = v8;
          }

          v40 = 40 * v39 - 16;
          v41 = v130 + 32;
          v42 = v9;
          v43 = v133;
          v11 = v133;
          do
          {
            if (v43 != --v42)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_137;
              }

              v45 = (v44 + v41);
              v46 = *(v44 + v41 - 32);
              v47 = v44 + v40;
              v48 = *(v45 - 3);
              v49 = *(v45 - 2);
              v50 = *(v45 - 8);
              v51 = *v45;
              v52 = *(v47 + 8);
              v53 = *(v47 - 8);
              *(v45 - 2) = *(v47 - 24);
              *(v45 - 1) = v53;
              *v45 = v52;
              *(v47 - 24) = v46;
              *(v47 - 16) = v48;
              *(v47 - 8) = v49;
              *v47 = v50;
              *(v47 + 8) = v51;
            }

            ++v43;
            v40 -= 40;
            v41 += 40;
          }

          while (v43 < v42);
        }
      }

      else
      {
        v10 = v137;
        v11 = v133;
      }
    }

    v54 = a3[1];
    if (v9 >= v54)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_129;
    }

    if (v9 - v11 >= a4)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_132:
      __break(1u);
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
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return;
    }

    if (v11 + a4 >= v54)
    {
      v55 = a3[1];
    }

    else
    {
      v55 = v11 + a4;
    }

    if (v55 < v11)
    {
      goto LABEL_132;
    }

    if (v9 != v55)
    {
      v101 = v11;
      v138 = v10;
      v102 = *a3;
      v103 = *a3 + 40 * v9 - 40;
      v134 = v101;
      v104 = v101 - v9;
      v129 = v55;
      do
      {
        v105 = v102 + 40 * v9;
        v106 = *v105;
        v107 = *(v105 + 8);
        v108 = *(v105 + 16);
        v109 = *(v105 + 24);
        v110 = *(v105 + 32);
        v131 = v104;
        v136 = v103;
        do
        {
          v111 = *v103;
          v112 = *(v103 + 8);
          v113 = *(v103 + 16);
          v114 = *(v103 + 24);
          v144 = *(v103 + 32);
          v145 = v107;
          v146 = v108;
          v147 = v109 & 1;
          v148 = v110;
          v141 = v112;
          v142 = v113;
          v143 = v114;

          v115 = a5(v106, &v145, v111, &v141);
          if (v7)
          {
            goto LABEL_107;
          }

          v116 = v115;

          if ((v116 & 1) == 0)
          {
            break;
          }

          if (!v102)
          {
            goto LABEL_136;
          }

          v107 = *(v103 + 48);
          v108 = *(v103 + 56);
          v109 = *(v103 + 64);
          v117 = *(v103 + 16);
          v118 = *(v103 + 32);
          v106 = *(v103 + 40);
          *(v103 + 40) = *v103;
          v110 = *(v103 + 72);
          *(v103 + 56) = v117;
          *(v103 + 72) = v118;
          *v103 = v106;
          *(v103 + 8) = v107;
          *(v103 + 16) = v108;
          *(v103 + 24) = v109;
          *(v103 + 32) = v110;
          v103 -= 40;
        }

        while (!__CFADD__(v104++, 1));
        ++v9;
        v103 = (v136 + 40);
        v104 = v131 - 1;
      }

      while (v9 != v129);
      v9 = v129;
      v10 = v138;
      v11 = v134;
    }

LABEL_33:
    if (v9 < v11)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v10 = v120;
    }

    v56 = *(v10 + 2);
    v57 = v56 + 1;
    if (v56 >= *(v10 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v10 = v121;
    }

    *(v10 + 2) = v57;
    v58 = v10 + 32;
    v59 = &v10[16 * v56 + 32];
    *v59 = v11;
    *(v59 + 1) = v9;
    v136 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if (v56)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v60 = v57 - 1;
    v61 = &v58[16 * v57 - 16];
    v62 = &v10[16 * v57];
    if (v57 >= 4)
    {
      v67 = &v58[16 * v57];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_116;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_117;
      }

      v74 = *(v62 + 1);
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_119;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_122;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = *(v61 + 1);
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_127;
        }

        if (v65 < v91)
        {
          v60 = v57 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v57 == 3)
    {
      v63 = *(v10 + 4);
      v64 = *(v10 + 5);
      v73 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      v66 = v73;
LABEL_53:
      if (v66)
      {
        goto LABEL_118;
      }

      v78 = *v62;
      v77 = *(v62 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_121;
      }

      v82 = *(v61 + 1);
      v83 = v82 - *v61;
      if (__OFSUB__(v82, *v61))
      {
        goto LABEL_124;
      }

      if (__OFADD__(v80, v83))
      {
        goto LABEL_126;
      }

      if (v80 + v83 >= v65)
      {
        if (v65 < v83)
        {
          v60 = v57 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v57 < 2)
    {
      goto LABEL_120;
    }

    v85 = *v62;
    v84 = *(v62 + 1);
    v73 = __OFSUB__(v84, v85);
    v80 = v84 - v85;
    v81 = v73;
LABEL_68:
    if (v81)
    {
      goto LABEL_123;
    }

    v87 = *v61;
    v86 = *(v61 + 1);
    v73 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v73)
    {
      goto LABEL_125;
    }

    if (v88 < v80)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v60 - 1 >= v57)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v92 = &v58[16 * v60 - 16];
    v93 = *v92;
    v94 = v60;
    v95 = &v58[16 * v60];
    v96 = *(v95 + 1);
    sub_26A823D34((*a3 + 40 * *v92), (*a3 + 40 * *v95), *a3 + 40 * v96, v136, a5);
    if (v7)
    {
      goto LABEL_108;
    }

    if (v96 < v93)
    {
      goto LABEL_110;
    }

    v7 = v58;
    v97 = v9;
    v98 = v10;
    v99 = *(v10 + 2);
    if (v94 > v99)
    {
      goto LABEL_111;
    }

    *v92 = v93;
    *(v92 + 1) = v96;
    if (v94 >= v99)
    {
      goto LABEL_112;
    }

    v57 = v99 - 1;
    sub_26A544D9C(v95 + 16, v99 - 1 - v94, v95);
    *(v98 + 2) = v99 - 1;
    v100 = v99 > 2;
    v10 = v98;
    v9 = v97;
    v58 = v7;
    v7 = 0;
    if (!v100)
    {
      goto LABEL_82;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  v10 = sub_26A544B3C();
LABEL_96:
  v122 = (v10 + 16);
  for (i = *(v10 + 2); i >= 2; *v122 = i)
  {
    if (!*a3)
    {
      goto LABEL_135;
    }

    v124 = &v10[16 * i];
    v125 = *v124;
    v126 = &v122[2 * i];
    v127 = *(v126 + 1);
    sub_26A823D34((*a3 + 40 * *v124), (*a3 + 40 * *v126), *a3 + 40 * v127, v136, a5);
    if (v7)
    {
      break;
    }

    if (v127 < v125)
    {
      goto LABEL_113;
    }

    if (i - 2 >= *v122)
    {
      goto LABEL_114;
    }

    *v124 = v125;
    *(v124 + 1) = v127;
    v128 = *v122 - i;
    if (*v122 < i)
    {
      goto LABEL_115;
    }

    i = *v122 - 1;
    sub_26A544D9C(v126 + 16, v128, v126);
  }

LABEL_108:
}

void sub_26A81DA70(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_99:
    v112 = *a1;
    if (!v112)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_101;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 + 1 >= v4)
    {
      v20 = v5 + 1;
      goto LABEL_26;
    }

    v101 = v4;
    v7 = *a3;
    sub_26A4D7E54();
    v8 = v7 + 368 * v5;
    sub_26A4D7E54();
    LODWORD(v112) = sub_26A80F794(__dst[0], &__dst[1], v109, v110);
    sub_26A4DBD10(&v109, &qword_2803B86E8);
    sub_26A4DBD10(__dst, &qword_2803B86E8);
    v9 = v5 + 2;
    v10 = v8 + 376;
    while (v9 < v101)
    {
      v11 = *(v10 - 8);
      __dst[0] = *(v10 + 360);
      sub_26A5D1AF8(v10 + 368, &__dst[1]);
      v109 = v11;
      sub_26A5D1AF8(v10, v110);
      sub_26A4D7E54();
      v12 = v107;

      v13 = sub_26A6AF1BC(v12);

      sub_26A4D7E54();
      v14 = sub_26A6AF1BC(v105);

      sub_26A827CF8(v106);
      sub_26A827CF8(v108);
      if (v14 >= v13)
      {
        sub_26A4D7E54();
        v15 = sub_26A6AF1BC(v107);

        sub_26A4D7E54();
        v16 = sub_26A6AF1BC(v105);

        sub_26A827CF8(v106);
        sub_26A827CF8(v108);
        if (v15 == v16)
        {
          sub_26A4D7E54();
          v17 = sub_26A6AF268(v107);

          sub_26A4D7E54();
          v18 = sub_26A6AF268(v105);

          sub_26A4DBD10(&v109, &qword_2803B86E8);
          sub_26A4DBD10(__dst, &qword_2803B86E8);
          sub_26A827CF8(v106);
          sub_26A827CF8(v108);
          if ((v112 ^ (v17 < v18)))
          {
            v20 = v9;
            goto LABEL_16;
          }
        }

        else
        {
          sub_26A4DBD10(&v109, &qword_2803B86E8);
          sub_26A4DBD10(__dst, &qword_2803B86E8);
          if (v112)
          {
            v20 = v9;
            v19 = 368 * v5;
LABEL_19:
            if (v20 >= v5)
            {
              if (v5 < v20)
              {
                v21 = 368 * v20 - 368;
                v22 = v20;
                v23 = v5;
                do
                {
                  if (v23 != --v22)
                  {
                    v24 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_138;
                    }

                    memcpy(__dst, (v24 + v19), 0x170uLL);
                    memmove((v24 + v19), (v24 + v21), 0x170uLL);
                    memcpy((v24 + v21), __dst, 0x170uLL);
                  }

                  ++v23;
                  v21 -= 368;
                  v19 += 368;
                }

                while (v23 < v22);
              }

              goto LABEL_26;
            }

LABEL_133:
            __break(1u);
LABEL_134:
            v6 = sub_26A544B3C();
LABEL_101:
            v85 = v6 + 16;
            v86 = *(v6 + 2);
            while (v86 >= 2)
            {
              if (!*a3)
              {
                goto LABEL_137;
              }

              v87 = v6;
              v88 = &v6[16 * v86];
              v89 = *v88;
              v90 = &v85[2 * v86];
              v91 = *(v90 + 1);
              sub_26A824A58((*a3 + 368 * *v88), (*a3 + 368 * *v90), (*a3 + 368 * v91), v112);
              if (v103)
              {
                break;
              }

              if (v91 < v89)
              {
                goto LABEL_125;
              }

              if (v86 - 2 >= *v85)
              {
                goto LABEL_126;
              }

              *v88 = v89;
              *(v88 + 1) = v91;
              v92 = *v85 - v86;
              if (*v85 < v86)
              {
                goto LABEL_127;
              }

              v86 = *v85 - 1;
              sub_26A544D9C(v90 + 16, v92, v90);
              *v85 = v86;
              v6 = v87;
            }

LABEL_109:

            return;
          }
        }
      }

      else
      {
        sub_26A4DBD10(&v109, &qword_2803B86E8);
        sub_26A4DBD10(__dst, &qword_2803B86E8);
        if ((v112 & 1) == 0)
        {
          v20 = v9;
          goto LABEL_26;
        }
      }

      ++v9;
      v10 += 368;
    }

    v20 = v101;
LABEL_16:
    v19 = 368 * v5;
    if (v112)
    {
      goto LABEL_19;
    }

LABEL_26:
    v25 = a3[1];
    if (v20 < v25)
    {
      if (__OFSUB__(v20, v5))
      {
        goto LABEL_130;
      }

      if (v20 - v5 < a4)
      {
        break;
      }
    }

LABEL_47:
    if (v20 < v5)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v6 = v83;
    }

    v40 = *(v6 + 2);
    v41 = v40 + 1;
    v97 = v20;
    if (v40 >= *(v6 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v6 = v84;
    }

    *(v6 + 2) = v41;
    v42 = v6 + 32;
    v43 = &v6[16 * v40 + 32];
    *v43 = v5;
    *(v43 + 1) = v97;
    v112 = *a1;
    if (!v112)
    {
      goto LABEL_139;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        v45 = &v42[16 * v41 - 16];
        v46 = &v6[16 * v41];
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(v6 + 4);
          v48 = *(v6 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_67:
          if (v50)
          {
            goto LABEL_116;
          }

          v62 = *v46;
          v61 = *(v46 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_119;
          }

          v66 = *(v45 + 1);
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_124;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v41 < 2)
        {
          goto LABEL_118;
        }

        v69 = *v46;
        v68 = *(v46 + 1);
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_82:
        if (v65)
        {
          goto LABEL_121;
        }

        v71 = *v45;
        v70 = *(v45 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_123;
        }

        if (v72 < v64)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v44 - 1 >= v41)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v76 = &v42[16 * v44 - 16];
        v77 = *v76;
        v78 = &v42[16 * v44];
        v79 = *(v78 + 1);
        sub_26A824A58((*a3 + 368 * *v76), (*a3 + 368 * *v78), (*a3 + 368 * v79), v112);
        if (v103)
        {
          goto LABEL_109;
        }

        if (v79 < v77)
        {
          goto LABEL_111;
        }

        v80 = v6;
        v81 = *(v6 + 2);
        if (v44 > v81)
        {
          goto LABEL_112;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        if (v44 >= v81)
        {
          goto LABEL_113;
        }

        v41 = v81 - 1;
        sub_26A544D9C(v78 + 16, v81 - 1 - v44, &v42[16 * v44]);
        *(v80 + 2) = v81 - 1;
        v82 = v81 > 2;
        v6 = v80;
        if (!v82)
        {
          goto LABEL_96;
        }
      }

      v51 = &v42[16 * v41];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_114;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_115;
      }

      v58 = *(v46 + 1);
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_117;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_120;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = *(v45 + 1);
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v4 = a3[1];
    v5 = v97;
    if (v97 >= v4)
    {
      goto LABEL_99;
    }
  }

  if (__OFADD__(v5, a4))
  {
    goto LABEL_131;
  }

  if (v5 + a4 < v25)
  {
    v25 = v5 + a4;
  }

  if (v25 < v5)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v96 = v25;
  if (v20 == v25)
  {
    goto LABEL_47;
  }

  v94 = v5;
  v104 = *a3;
  v26 = (*a3 + 368 * v20 + 8);
  v27 = v5 - v20;
LABEL_35:
  v102 = v20;
  v98 = v27;
  v99 = v26;
  while (1)
  {
    v28 = v26 - 8;
    v29 = v26 - 376;
    v30 = *(v26 - 47);
    v31 = v26 - 368;
    __dst[0] = *(v26 - 1);
    sub_26A5D1AF8(v26, &__dst[1]);
    v109 = v30;
    v112 = v31;
    sub_26A5D1AF8(v31, v110);
    sub_26A4D7E54();
    v32 = v107;

    v33 = sub_26A6AF1BC(v32);

    sub_26A4D7E54();
    v34 = sub_26A6AF1BC(v105);

    sub_26A827CF8(v106);
    sub_26A827CF8(v108);
    if (v34 >= v33)
    {
      sub_26A4D7E54();
      v35 = sub_26A6AF1BC(v107);

      sub_26A4D7E54();
      v36 = sub_26A6AF1BC(v105);

      sub_26A827CF8(v106);
      sub_26A827CF8(v108);
      if (v35 != v36)
      {
        sub_26A4DBD10(&v109, &qword_2803B86E8);
        sub_26A4DBD10(__dst, &qword_2803B86E8);
LABEL_45:
        ++v20;
        v26 = v99 + 368;
        v27 = v98 - 1;
        if (v102 + 1 == v96)
        {
          v5 = v94;
          v20 = v96;
          goto LABEL_47;
        }

        goto LABEL_35;
      }

      sub_26A4D7E54();
      v37 = sub_26A6AF268(v107);

      sub_26A4D7E54();
      v38 = sub_26A6AF268(v105);

      sub_26A4DBD10(&v109, &qword_2803B86E8);
      sub_26A4DBD10(__dst, &qword_2803B86E8);
      sub_26A827CF8(v106);
      sub_26A827CF8(v108);
      if (v37 >= v38)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_26A4DBD10(&v109, &qword_2803B86E8);
      sub_26A4DBD10(__dst, &qword_2803B86E8);
    }

    if (!v104)
    {
      break;
    }

    memcpy(__dst, v28, 0x170uLL);
    memcpy(v28, v29, 0x170uLL);
    memcpy(v29, __dst, 0x170uLL);
    v26 = v112;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

void sub_26A81E4FC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, __int128 *, uint64_t, __int128 *), uint64_t a6)
{
  v7 = v6;
  v137 = a6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_94:
    v126 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_96;
    }

    goto LABEL_139;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v127 = v10;
      v12 = *a3;
      v13 = *a3 + 48 * v9;
      v14 = *v13;
      v15 = *(v13 + 40);
      v16 = *a3 + 48 * v11;
      v17 = *v16;
      v18 = *(v16 + 40);
      v19 = *(v13 + 24);
      v134 = *(v13 + 8);
      v135 = v19;
      v136 = v15;
      v20 = *(v16 + 24);
      v131 = *(v16 + 8);
      v132 = v20;
      v133 = v18;

      LODWORD(v126) = a5(v14, &v134, v17, &v131);
      if (v7)
      {
LABEL_107:

        goto LABEL_108;
      }

      v120 = 48 * v11;
      v21 = (v12 + 48 * v11 + 136);
      v123 = v11;
      v22 = v11 + 2;
      while (1)
      {
        v23 = v22;
        if (v9 + 1 >= v8)
        {
          break;
        }

        v24 = v8;
        v25 = *(v21 - 5);
        v26 = *v21;
        v27 = *(v21 - 11);
        v28 = *(v21 - 6);
        v29 = *(v21 - 1);
        v134 = *(v21 - 2);
        v135 = v29;
        v136 = v26;
        v30 = *(v21 - 4);
        v131 = *(v21 - 5);
        v132 = v30;
        v133 = v28;

        v31 = a5(v25, &v134, v27, &v131);

        v32 = v126 ^ v31;
        v21 += 6;
        ++v9;
        v22 = v23 + 1;
        v8 = v24;
        if (v32)
        {
          goto LABEL_10;
        }
      }

      v9 = v8;
LABEL_10:
      if (v126)
      {
        if (v9 < v123)
        {
          goto LABEL_133;
        }

        v10 = v127;
        if (v123 >= v9)
        {
          v11 = v123;
        }

        else
        {
          if (v8 >= v23)
          {
            v33 = v23;
          }

          else
          {
            v33 = v8;
          }

          v34 = 48 * v33;
          v35 = v120 + 40;
          v36 = v9;
          v37 = v123;
          v11 = v123;
          do
          {
            if (v37 != --v36)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_137;
              }

              v39 = (v38 + v35);
              v40 = *(v38 + v35 - 40);
              v41 = v38 + v34;
              v42 = *v39;
              v43 = *(v39 - 2);
              v44 = *(v39 - 1);
              v46 = *(v41 - 32);
              v45 = *(v41 - 16);
              *(v39 - 5) = *(v41 - 48);
              *(v39 - 3) = v46;
              *(v39 - 1) = v45;
              *(v41 - 48) = v40;
              *(v41 - 40) = v43;
              *(v41 - 24) = v44;
              *(v41 - 8) = v42;
            }

            ++v37;
            v34 -= 48;
            v35 += 48;
          }

          while (v37 < v36);
        }
      }

      else
      {
        v10 = v127;
        v11 = v123;
      }
    }

    v47 = a3[1];
    if (v9 >= v47)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_129;
    }

    if (v9 - v11 >= a4)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_132:
      __break(1u);
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
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return;
    }

    if (v11 + a4 >= v47)
    {
      v48 = a3[1];
    }

    else
    {
      v48 = v11 + a4;
    }

    if (v48 < v11)
    {
      goto LABEL_132;
    }

    if (v9 != v48)
    {
      v94 = v11;
      v128 = v10;
      v95 = *a3;
      v96 = *a3 + 48 * v9 - 48;
      v124 = v94;
      v97 = v94 - v9;
      v119 = v48;
      do
      {
        v98 = v95 + 48 * v9;
        v99 = *v98;
        v100 = *(v98 + 8);
        v101 = *(v98 + 24);
        v102 = *(v98 + 40);
        v121 = v97;
        v126 = v96;
        do
        {
          v103 = *v96;
          v104 = *(v96 + 40);
          v134 = v100;
          v135 = v101;
          v136 = v102;
          v105 = *(v96 + 24);
          v131 = *(v96 + 8);
          v132 = v105;
          v133 = v104;

          v106 = a5(v99, &v134, v103, &v131);
          if (v7)
          {
            goto LABEL_107;
          }

          v107 = v106;

          if ((v107 & 1) == 0)
          {
            break;
          }

          if (!v95)
          {
            goto LABEL_136;
          }

          v99 = *(v96 + 48);
          v100 = *(v96 + 56);
          v101 = *(v96 + 72);
          v102 = *(v96 + 88);
          v108 = *(v96 + 16);
          *(v96 + 48) = *v96;
          *(v96 + 64) = v108;
          *(v96 + 80) = *(v96 + 32);
          *v96 = v99;
          *(v96 + 8) = v100;
          *(v96 + 24) = v101;
          *(v96 + 40) = v102;
          v96 -= 48;
        }

        while (!__CFADD__(v97++, 1));
        ++v9;
        v96 = (v126 + 48);
        v97 = v121 - 1;
      }

      while (v9 != v119);
      v9 = v119;
      v10 = v128;
      v11 = v124;
    }

LABEL_33:
    if (v9 < v11)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v10 = v110;
    }

    v49 = *(v10 + 2);
    v50 = v49 + 1;
    if (v49 >= *(v10 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v10 = v111;
    }

    *(v10 + 2) = v50;
    v51 = v10 + 32;
    v52 = &v10[16 * v49 + 32];
    *v52 = v11;
    *(v52 + 1) = v9;
    v126 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if (v49)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v53 = v50 - 1;
    v54 = &v51[16 * v50 - 16];
    v55 = &v10[16 * v50];
    if (v50 >= 4)
    {
      v60 = &v51[16 * v50];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_116;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_117;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_119;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_122;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_127;
        }

        if (v58 < v84)
        {
          v53 = v50 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v50 == 3)
    {
      v56 = *(v10 + 4);
      v57 = *(v10 + 5);
      v66 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      v59 = v66;
LABEL_53:
      if (v59)
      {
        goto LABEL_118;
      }

      v71 = *v55;
      v70 = *(v55 + 1);
      v72 = __OFSUB__(v70, v71);
      v73 = v70 - v71;
      v74 = v72;
      if (v72)
      {
        goto LABEL_121;
      }

      v75 = *(v54 + 1);
      v76 = v75 - *v54;
      if (__OFSUB__(v75, *v54))
      {
        goto LABEL_124;
      }

      if (__OFADD__(v73, v76))
      {
        goto LABEL_126;
      }

      if (v73 + v76 >= v58)
      {
        if (v58 < v76)
        {
          v53 = v50 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v50 < 2)
    {
      goto LABEL_120;
    }

    v78 = *v55;
    v77 = *(v55 + 1);
    v66 = __OFSUB__(v77, v78);
    v73 = v77 - v78;
    v74 = v66;
LABEL_68:
    if (v74)
    {
      goto LABEL_123;
    }

    v80 = *v54;
    v79 = *(v54 + 1);
    v66 = __OFSUB__(v79, v80);
    v81 = v79 - v80;
    if (v66)
    {
      goto LABEL_125;
    }

    if (v81 < v73)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v53 - 1 >= v50)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v85 = &v51[16 * v53 - 16];
    v86 = *v85;
    v87 = v53;
    v88 = &v51[16 * v53];
    v89 = *(v88 + 1);
    sub_26A8251A0((*a3 + 48 * *v85), (*a3 + 48 * *v88), *a3 + 48 * v89, v126, a5);
    if (v7)
    {
      goto LABEL_108;
    }

    if (v89 < v86)
    {
      goto LABEL_110;
    }

    v7 = v51;
    v90 = v9;
    v91 = v10;
    v92 = *(v10 + 2);
    if (v87 > v92)
    {
      goto LABEL_111;
    }

    *v85 = v86;
    *(v85 + 1) = v89;
    if (v87 >= v92)
    {
      goto LABEL_112;
    }

    v50 = v92 - 1;
    sub_26A544D9C(v88 + 16, v92 - 1 - v87, v88);
    *(v91 + 2) = v92 - 1;
    v93 = v92 > 2;
    v10 = v91;
    v9 = v90;
    v51 = v7;
    v7 = 0;
    if (!v93)
    {
      goto LABEL_82;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  v10 = sub_26A544B3C();
LABEL_96:
  v112 = (v10 + 16);
  for (i = *(v10 + 2); i >= 2; *v112 = i)
  {
    if (!*a3)
    {
      goto LABEL_135;
    }

    v114 = &v10[16 * i];
    v115 = *v114;
    v116 = &v112[2 * i];
    v117 = *(v116 + 1);
    sub_26A8251A0((*a3 + 48 * *v114), (*a3 + 48 * *v116), *a3 + 48 * v117, v126, a5);
    if (v7)
    {
      break;
    }

    if (v117 < v115)
    {
      goto LABEL_113;
    }

    if (i - 2 >= *v112)
    {
      goto LABEL_114;
    }

    *v114 = v115;
    *(v114 + 1) = v117;
    v118 = *v112 - i;
    if (*v112 < i)
    {
      goto LABEL_115;
    }

    i = *v112 - 1;
    sub_26A544D9C(v116 + 16, v118, v116);
  }

LABEL_108:
}

void sub_26A81ECC8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_99:
    v112 = *a1;
    if (!v112)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_101;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 + 1 >= v4)
    {
      v20 = v5 + 1;
      goto LABEL_26;
    }

    v101 = v4;
    v7 = *a3;
    sub_26A4D7E54();
    v8 = v7 + 96 * v5;
    sub_26A4D7E54();
    LODWORD(v112) = sub_26A80FAE0(__dst[0], &__dst[1], v109, v110);
    sub_26A4DBD10(&v109, &qword_2803B8738);
    sub_26A4DBD10(__dst, &qword_2803B8738);
    v9 = v5 + 2;
    v10 = v8 + 200;
    while (v9 < v101)
    {
      v11 = *(v10 - 104);
      __dst[0] = *(v10 - 8);
      sub_26A5D2400(v10, &__dst[1]);
      v109 = v11;
      sub_26A5D2400(v10 - 96, v110);
      sub_26A4D7E54();
      v12 = v107;

      v13 = sub_26A6AF1BC(v12);

      sub_26A4D7E54();
      v14 = sub_26A6AF1BC(v105);

      sub_26A827DA0(v106);
      sub_26A827DA0(v108);
      if (v14 >= v13)
      {
        sub_26A4D7E54();
        v15 = sub_26A6AF1BC(v107);

        sub_26A4D7E54();
        v16 = sub_26A6AF1BC(v105);

        sub_26A827DA0(v106);
        sub_26A827DA0(v108);
        if (v15 == v16)
        {
          sub_26A4D7E54();
          v17 = sub_26A6AF268(v107);

          sub_26A4D7E54();
          v18 = sub_26A6AF268(v105);

          sub_26A4DBD10(&v109, &qword_2803B8738);
          sub_26A4DBD10(__dst, &qword_2803B8738);
          sub_26A827DA0(v106);
          sub_26A827DA0(v108);
          if ((v112 ^ (v17 < v18)))
          {
            v20 = v9;
            goto LABEL_16;
          }
        }

        else
        {
          sub_26A4DBD10(&v109, &qword_2803B8738);
          sub_26A4DBD10(__dst, &qword_2803B8738);
          if (v112)
          {
            v20 = v9;
            v19 = 96 * v5;
LABEL_19:
            if (v20 >= v5)
            {
              if (v5 < v20)
              {
                v21 = 96 * v20 - 96;
                v22 = v20;
                v23 = v5;
                do
                {
                  if (v23 != --v22)
                  {
                    v24 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_138;
                    }

                    memcpy(__dst, (v24 + v19), 0x60uLL);
                    memmove((v24 + v19), (v24 + v21), 0x60uLL);
                    memcpy((v24 + v21), __dst, 0x60uLL);
                  }

                  ++v23;
                  v21 -= 96;
                  v19 += 96;
                }

                while (v23 < v22);
              }

              goto LABEL_26;
            }

LABEL_133:
            __break(1u);
LABEL_134:
            v6 = sub_26A544B3C();
LABEL_101:
            v85 = v6 + 16;
            v86 = *(v6 + 2);
            while (v86 >= 2)
            {
              if (!*a3)
              {
                goto LABEL_137;
              }

              v87 = v6;
              v88 = &v6[16 * v86];
              v89 = *v88;
              v90 = &v85[2 * v86];
              v91 = *(v90 + 1);
              sub_26A825550((*a3 + 96 * *v88), (*a3 + 96 * *v90), (*a3 + 96 * v91), v112);
              if (v103)
              {
                break;
              }

              if (v91 < v89)
              {
                goto LABEL_125;
              }

              if (v86 - 2 >= *v85)
              {
                goto LABEL_126;
              }

              *v88 = v89;
              *(v88 + 1) = v91;
              v92 = *v85 - v86;
              if (*v85 < v86)
              {
                goto LABEL_127;
              }

              v86 = *v85 - 1;
              sub_26A544D9C(v90 + 16, v92, v90);
              *v85 = v86;
              v6 = v87;
            }

LABEL_109:

            return;
          }
        }
      }

      else
      {
        sub_26A4DBD10(&v109, &qword_2803B8738);
        sub_26A4DBD10(__dst, &qword_2803B8738);
        if ((v112 & 1) == 0)
        {
          v20 = v9;
          goto LABEL_26;
        }
      }

      ++v9;
      v10 += 96;
    }

    v20 = v101;
LABEL_16:
    v19 = 96 * v5;
    if (v112)
    {
      goto LABEL_19;
    }

LABEL_26:
    v25 = a3[1];
    if (v20 < v25)
    {
      if (__OFSUB__(v20, v5))
      {
        goto LABEL_130;
      }

      if (v20 - v5 < a4)
      {
        break;
      }
    }

LABEL_47:
    if (v20 < v5)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v6 = v83;
    }

    v40 = *(v6 + 2);
    v41 = v40 + 1;
    v97 = v20;
    if (v40 >= *(v6 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v6 = v84;
    }

    *(v6 + 2) = v41;
    v42 = v6 + 32;
    v43 = &v6[16 * v40 + 32];
    *v43 = v5;
    *(v43 + 1) = v97;
    v112 = *a1;
    if (!v112)
    {
      goto LABEL_139;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        v45 = &v42[16 * v41 - 16];
        v46 = &v6[16 * v41];
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(v6 + 4);
          v48 = *(v6 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_67:
          if (v50)
          {
            goto LABEL_116;
          }

          v62 = *v46;
          v61 = *(v46 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_119;
          }

          v66 = *(v45 + 1);
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_124;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v41 < 2)
        {
          goto LABEL_118;
        }

        v69 = *v46;
        v68 = *(v46 + 1);
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_82:
        if (v65)
        {
          goto LABEL_121;
        }

        v71 = *v45;
        v70 = *(v45 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_123;
        }

        if (v72 < v64)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v44 - 1 >= v41)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v76 = &v42[16 * v44 - 16];
        v77 = *v76;
        v78 = &v42[16 * v44];
        v79 = *(v78 + 1);
        sub_26A825550((*a3 + 96 * *v76), (*a3 + 96 * *v78), (*a3 + 96 * v79), v112);
        if (v103)
        {
          goto LABEL_109;
        }

        if (v79 < v77)
        {
          goto LABEL_111;
        }

        v80 = v6;
        v81 = *(v6 + 2);
        if (v44 > v81)
        {
          goto LABEL_112;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        if (v44 >= v81)
        {
          goto LABEL_113;
        }

        v41 = v81 - 1;
        sub_26A544D9C(v78 + 16, v81 - 1 - v44, &v42[16 * v44]);
        *(v80 + 2) = v81 - 1;
        v82 = v81 > 2;
        v6 = v80;
        if (!v82)
        {
          goto LABEL_96;
        }
      }

      v51 = &v42[16 * v41];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_114;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_115;
      }

      v58 = *(v46 + 1);
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_117;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_120;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = *(v45 + 1);
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v4 = a3[1];
    v5 = v97;
    if (v97 >= v4)
    {
      goto LABEL_99;
    }
  }

  if (__OFADD__(v5, a4))
  {
    goto LABEL_131;
  }

  if (v5 + a4 < v25)
  {
    v25 = v5 + a4;
  }

  if (v25 < v5)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v96 = v25;
  if (v20 == v25)
  {
    goto LABEL_47;
  }

  v94 = v5;
  v104 = *a3;
  v26 = (*a3 + 96 * v20 + 8);
  v27 = v5 - v20;
LABEL_35:
  v102 = v20;
  v98 = v27;
  v99 = v26;
  while (1)
  {
    v28 = v26 - 8;
    v30 = v26 - 104;
    v29 = *(v26 - 13);
    v31 = v26 - 96;
    __dst[0] = *(v26 - 1);
    sub_26A5D2400(v26, &__dst[1]);
    v109 = v29;
    v112 = v31;
    sub_26A5D2400(v31, v110);
    sub_26A4D7E54();
    v32 = v107;

    v33 = sub_26A6AF1BC(v32);

    sub_26A4D7E54();
    v34 = sub_26A6AF1BC(v105);

    sub_26A827DA0(v106);
    sub_26A827DA0(v108);
    if (v34 >= v33)
    {
      sub_26A4D7E54();
      v35 = sub_26A6AF1BC(v107);

      sub_26A4D7E54();
      v36 = sub_26A6AF1BC(v105);

      sub_26A827DA0(v106);
      sub_26A827DA0(v108);
      if (v35 != v36)
      {
        sub_26A4DBD10(&v109, &qword_2803B8738);
        sub_26A4DBD10(__dst, &qword_2803B8738);
LABEL_45:
        ++v20;
        v26 = v99 + 96;
        v27 = v98 - 1;
        if (v102 + 1 == v96)
        {
          v5 = v94;
          v20 = v96;
          goto LABEL_47;
        }

        goto LABEL_35;
      }

      sub_26A4D7E54();
      v37 = sub_26A6AF268(v107);

      sub_26A4D7E54();
      v38 = sub_26A6AF268(v105);

      sub_26A4DBD10(&v109, &qword_2803B8738);
      sub_26A4DBD10(__dst, &qword_2803B8738);
      sub_26A827DA0(v106);
      sub_26A827DA0(v108);
      if (v37 >= v38)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_26A4DBD10(&v109, &qword_2803B8738);
      sub_26A4DBD10(__dst, &qword_2803B8738);
    }

    if (!v104)
    {
      break;
    }

    memcpy(__dst, v28, 0x60uLL);
    memcpy(v28, v30, 0x60uLL);
    memcpy(v30, __dst, 0x60uLL);
    v26 = v112;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

void sub_26A81F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void (*a8)(void), void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v210 = a8;
  v176[0] = a7;
  v176[1] = a4;
  v177 = a1;
  v185 = a9;
  v13 = OUTLINED_FUNCTION_145_1(a1, a2, a3, a4, a5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v13);
  OUTLINED_FUNCTION_15();
  v186 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v178 = v17 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v196 = v176 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (v176 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_28();
  v28 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  v33 = (v176 - v29);
  v187 = a3;
  v34 = *(a3 + 8);
  if (v34 < 1)
  {
    v36 = MEMORY[0x277D84F90];
    goto LABEL_111;
  }

  v200 = v32;
  v190 = v31;
  v208 = v30;
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v199 = a6;
  v192 = a5;
  v209 = v14;
  v201 = (v176 - v29);
  v202 = v25;
  v189 = v9;
LABEL_3:
  v188 = v34;
  v181 = v36;
  v179 = v35;
  if (v35 + 1 >= v34)
  {
    goto LABEL_33;
  }

  v37 = *v187;
  v198 = *(v186 + 72);
  v207 = v37 + v198 * (v35 + 1);
  OUTLINED_FUNCTION_52_9();
  sub_26A4D7E54();
  v38 = v200;
  OUTLINED_FUNCTION_52_9();
  sub_26A4D7E54();
  LODWORD(v197) = (v176[0])(*v33, v33 + *(v14 + 48), *v38, v38 + *(v14 + 48));
  OUTLINED_FUNCTION_109_1(v38);
  OUTLINED_FUNCTION_109_1(v33);
  v39 = v35 + 2;
  v35 = v207;
  v40 = (v37 + v198 * v39);
  v41 = v188;
  while (1)
  {
    if (v39 >= v41)
    {
      goto LABEL_14;
    }

    v206 = v39;
    v42 = *v40;
    v203 = v40;
    v204 = v42;
    v25 = *v35;
    *v9 = v42;
    v43 = v210;
    sub_26A827E48();
    *v190 = v25;
    v207 = v35;
    sub_26A827E48();
    v44 = v201;
    OUTLINED_FUNCTION_52_9();
    sub_26A4D7E54();
    v45 = *v44;
    v205 = *(v14 + 48);

    sub_26A6AF1BC(v45);
    OUTLINED_FUNCTION_66_5();

    v46 = v200;
    v47 = a6;
    sub_26A4D7E54();
    v48 = *(v14 + 48);
    sub_26A6AF1BC(*v46);
    OUTLINED_FUNCTION_144_1();

    sub_26A827E9C(v46 + v48, v43);
    sub_26A827E9C(v44 + v205, v43);
    if (a6 >= v25)
    {
      break;
    }

    v35 = v192;
    sub_26A4DBD10(v190, v192);
    v9 = v189;
    OUTLINED_FUNCTION_60_4();
    sub_26A4DBD10(v49, v50);
    OUTLINED_FUNCTION_111_1();
    if ((v52 & 1) == 0)
    {
      OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_99_1();
      goto LABEL_33;
    }

LABEL_13:
    v39 = v51 + 1;
    v40 = (v203 + v198);
    v35 = v207 + v198;
    v14 = v209;
  }

  v53 = v201;
  v54 = v192;
  sub_26A4D7E54();
  v14 = v209;
  v55 = *(v209 + 48);
  sub_26A6AF1BC(*v53);
  OUTLINED_FUNCTION_66_5();

  OUTLINED_FUNCTION_74_3();
  sub_26A4D7E54();
  v56 = *(v14 + 48);
  sub_26A6AF1BC(*v46);
  OUTLINED_FUNCTION_144_1();

  v57 = v210;
  sub_26A827E9C(v46 + v56, v210);
  sub_26A827E9C(v53 + v55, v57);
  if (v25 != v54)
  {
    v35 = v192;
    OUTLINED_FUNCTION_60_4();
    sub_26A4DBD10(v67, v68);
    v9 = v189;
    OUTLINED_FUNCTION_60_4();
    sub_26A4DBD10(v69, v70);
    a6 = v47;
    OUTLINED_FUNCTION_111_1();
    if (v71)
    {
      OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_99_1();
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v58 = v189;
  v59 = v201;
  sub_26A4D7E54();
  v60 = *v59;
  v61 = v209;
  v205 = *(v209 + 48);
  v204 = sub_26A6AF268(v60);

  OUTLINED_FUNCTION_58_1();
  sub_26A4D7E54();
  v62 = *(v61 + 48);
  sub_26A6AF268(*v46);
  OUTLINED_FUNCTION_144_1();

  OUTLINED_FUNCTION_60_4();
  sub_26A4DBD10(v63, v64);
  OUTLINED_FUNCTION_60_4();
  sub_26A4DBD10(v65, v66);
  LODWORD(v60) = v204 < v61;
  v35 = v210;
  sub_26A827E9C(v46 + v62, v210);
  sub_26A827E9C(v59 + v205, v35);
  a6 = v47;
  v25 = v202;
  v9 = v58;
  v41 = v188;
  v51 = v206;
  if (((v197 ^ v60) & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_55_6();
  v14 = v209;
LABEL_14:
  if (v197)
  {
LABEL_17:
    if (v41 >= v179)
    {
      if (v179 < v41)
      {
        v72 = v41;
        v35 = v198 * (v41 - 1);
        v73 = v41 * v198;
        v188 = v41;
        v14 = v179;
        v74 = v179 * v198;
        do
        {
          if (v14 != --v72)
          {
            OUTLINED_FUNCTION_81_4();
            v76 = *v75;
            if (!*v75)
            {
              goto LABEL_150;
            }

            sub_26A4D7EA8();
            v77 = v74 < v35 || v76 + v74 >= (v76 + v73);
            if (v77)
            {
              OUTLINED_FUNCTION_130_1();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != v35)
            {
              OUTLINED_FUNCTION_130_1();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_26A4D7EA8();
          }

          ++v14;
          v35 -= v198;
          v73 -= v198;
          v74 += v198;
        }

        while (v14 < v72);
        OUTLINED_FUNCTION_99_1();
        v25 = v202;
        v9 = v189;
      }

      goto LABEL_33;
    }

LABEL_145:
    __break(1u);
LABEL_146:
    v164 = sub_26A544B3C();
LABEL_113:
    v165 = v164 + 16;
    v166 = *(v164 + 2);
    while (v166 >= 2)
    {
      OUTLINED_FUNCTION_81_4();
      v168 = *v167;
      if (!v168)
      {
        goto LABEL_149;
      }

      v169 = v164;
      v170 = &v164[16 * v166];
      v171 = *v170;
      v172 = &v165[2 * v166];
      v173 = *(v172 + 1);
      v174 = v191;
      v185(v168 + *(v186 + 72) * *v170, v168 + *(v186 + 72) * *v172, v168 + *(v186 + 72) * v173, v35);
      v191 = v174;
      if (v174)
      {
        break;
      }

      if (v173 < v171)
      {
        goto LABEL_137;
      }

      if (v166 - 2 >= *v165)
      {
        goto LABEL_138;
      }

      *v170 = v171;
      *(v170 + 1) = v173;
      v175 = *v165 - v166;
      if (*v165 < v166)
      {
        goto LABEL_139;
      }

      v166 = *v165 - 1;
      sub_26A544D9C(v172 + 16, v175, v172);
      *v165 = v166;
      v164 = v169;
    }

LABEL_121:

    return;
  }

LABEL_33:
  OUTLINED_FUNCTION_81_4();
  v81 = *(v80 + 8);
  if (v79 >= v81)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v79, v179))
  {
    goto LABEL_142;
  }

  if (v79 - v179 >= v78)
  {
    goto LABEL_42;
  }

  if (__OFADD__(v179, v78))
  {
    goto LABEL_143;
  }

  if (v179 + v78 >= v81)
  {
    v35 = v81;
  }

  else
  {
    v35 = v179 + v78;
  }

  if (v35 < v179)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v79 == v35)
  {
LABEL_42:
    v35 = v79;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_81_4();
  v135 = *v134;
  v136 = *(v186 + 72);
  v198 = v136 * (v133 - 1);
  v194 = -v136;
  v137 = v179 - v133;
  v180 = v136;
  v197 = v133 * v136;
  v195 = v135;
  v182 = v35;
LABEL_95:
  v188 = v133;
  v184 = v137;
  v138 = v137;
  v183 = v135;
  while (1)
  {
    v205 = v135;
    v206 = v138;
    v139 = v197;
    v140 = v135 + v198;
    v141 = *(v135 + v198);
    *v25 = *(v135 + v197);
    v203 = (v135 + v139);
    sub_26A827E48();
    *v208 = v141;
    v204 = v140;
    sub_26A827E48();
    v142 = v201;
    sub_26A4D7E54();
    v143 = *v142;
    OUTLINED_FUNCTION_100_1();

    v144 = sub_26A6AF1BC(v143);

    v145 = v200;
    OUTLINED_FUNCTION_52_9();
    sub_26A4D7E54();
    v146 = *(v14 + 48);
    sub_26A6AF1BC(*v145);
    OUTLINED_FUNCTION_143_1();

    v147 = v210;
    sub_26A827E9C(v145 + v146, v210);
    sub_26A827E9C(v142 + v207, v147);
    if (v14 >= v144)
    {
      OUTLINED_FUNCTION_52_9();
      sub_26A4D7E54();
      v148 = v209;
      v149 = OUTLINED_FUNCTION_100_1();
      v150 = sub_26A6AF1BC(v149);

      v151 = v208;
      OUTLINED_FUNCTION_22_33();
      OUTLINED_FUNCTION_52_9();
      sub_26A4D7E54();
      v152 = *(v148 + 48);
      v153 = sub_26A6AF1BC(*v145);

      v154 = v210;
      sub_26A827E9C(v145 + v152, v210);
      sub_26A827E9C(v142 + v207, v154);
      if (v150 != v153)
      {
        OUTLINED_FUNCTION_109_1(v151);
        v25 = v202;
        OUTLINED_FUNCTION_109_1(v202);
LABEL_105:
        v14 = v209;
LABEL_106:
        v133 = v188 + 1;
        v135 = v183 + v180;
        v137 = v184 - 1;
        v35 = v182;
        if (v188 + 1 == v182)
        {
          v9 = v189;
LABEL_43:
          if (v35 < v179)
          {
            goto LABEL_141;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v82 = v181;
          }

          else
          {
            sub_26A7A0DBC();
            v82 = v162;
          }

          v84 = *(v82 + 2);
          v83 = *(v82 + 3);
          v85 = v84 + 1;
          v33 = v201;
          v182 = v35;
          if (v84 >= v83 >> 1)
          {
            sub_26A7A0DBC();
            v82 = v163;
            v33 = v201;
          }

          *(v82 + 2) = v85;
          v35 = (v82 + 32);
          v86 = &v82[16 * v84 + 32];
          v87 = v182;
          *v86 = v179;
          v86[1] = v87;
          v207 = *v177;
          if (!v207)
          {
            goto LABEL_151;
          }

          if (v84)
          {
            while (2)
            {
              v88 = v85 - 1;
              v89 = (v35 + 16 * (v85 - 1));
              v90 = &v82[16 * v85];
              if (v85 >= 4)
              {
                v95 = v35 + 16 * v85;
                v96 = *(v95 - 64);
                v97 = *(v95 - 56);
                v101 = __OFSUB__(v97, v96);
                v98 = v97 - v96;
                if (v101)
                {
                  goto LABEL_126;
                }

                v100 = *(v95 - 48);
                v99 = *(v95 - 40);
                v101 = __OFSUB__(v99, v100);
                v93 = v99 - v100;
                v94 = v101;
                if (v101)
                {
                  goto LABEL_127;
                }

                v102 = *(v90 + 1);
                v103 = v102 - *v90;
                if (__OFSUB__(v102, *v90))
                {
                  goto LABEL_129;
                }

                v101 = __OFADD__(v93, v103);
                v104 = v93 + v103;
                if (v101)
                {
                  goto LABEL_132;
                }

                if (v104 >= v98)
                {
                  v118 = *v89;
                  v117 = v89[1];
                  v101 = __OFSUB__(v117, v118);
                  v119 = v117 - v118;
                  if (v101)
                  {
                    goto LABEL_140;
                  }

                  if (v93 < v119)
                  {
                    v88 = v85 - 2;
                  }
                }

                else
                {
LABEL_63:
                  if (v94)
                  {
                    goto LABEL_128;
                  }

                  v106 = *v90;
                  v105 = *(v90 + 1);
                  v107 = __OFSUB__(v105, v106);
                  v108 = v105 - v106;
                  v109 = v107;
                  if (v107)
                  {
                    goto LABEL_131;
                  }

                  v110 = v89[1];
                  v111 = v110 - *v89;
                  if (__OFSUB__(v110, *v89))
                  {
                    goto LABEL_134;
                  }

                  if (__OFADD__(v108, v111))
                  {
                    goto LABEL_136;
                  }

                  if (v108 + v111 < v93)
                  {
                    goto LABEL_78;
                  }

                  if (v93 < v111)
                  {
                    v88 = v85 - 2;
                  }
                }
              }

              else
              {
                if (v85 == 3)
                {
                  v91 = *(v82 + 4);
                  v92 = *(v82 + 5);
                  v101 = __OFSUB__(v92, v91);
                  v93 = v92 - v91;
                  v94 = v101;
                  goto LABEL_63;
                }

                if (v85 < 2)
                {
                  goto LABEL_130;
                }

                v113 = *v90;
                v112 = *(v90 + 1);
                v101 = __OFSUB__(v112, v113);
                v108 = v112 - v113;
                v109 = v101;
LABEL_78:
                if (v109)
                {
                  goto LABEL_133;
                }

                v115 = *v89;
                v114 = v89[1];
                v101 = __OFSUB__(v114, v115);
                v116 = v114 - v115;
                if (v101)
                {
                  goto LABEL_135;
                }

                if (v116 < v108)
                {
                  break;
                }
              }

              if (v88 - 1 >= v85)
              {
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
LABEL_128:
                __break(1u);
LABEL_129:
                __break(1u);
LABEL_130:
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
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
                goto LABEL_144;
              }

              OUTLINED_FUNCTION_81_4();
              v123 = *v122;
              if (!v123)
              {
                goto LABEL_148;
              }

              v124 = v120;
              v125 = (v35 + 16 * v121);
              v126 = *v125;
              v127 = v35 + 16 * v88;
              v128 = *(v127 + 8);
              v129 = v191;
              v185(v123 + *(v186 + 72) * *v125, v123 + *(v186 + 72) * *v127, v123 + *(v186 + 72) * v128, v207);
              v191 = v129;
              if (v129)
              {
                goto LABEL_121;
              }

              if (v128 < v126)
              {
                goto LABEL_123;
              }

              v130 = *(v124 + 2);
              if (v88 > v130)
              {
                goto LABEL_124;
              }

              *v125 = v126;
              v125[1] = v128;
              if (v88 >= v130)
              {
                goto LABEL_125;
              }

              v85 = v130 - 1;
              sub_26A544D9C((v127 + 16), v130 - 1 - v88, (v35 + 16 * v88));
              v82 = v124;
              *(v124 + 2) = v130 - 1;
              v131 = v130 > 2;
              v14 = v209;
              v33 = v201;
              v25 = v202;
              v9 = v189;
              if (!v131)
              {
                break;
              }

              continue;
            }
          }

          OUTLINED_FUNCTION_81_4();
          v34 = *(v132 + 8);
          v35 = v182;
          a6 = v199;
          if (v182 >= v34)
          {
LABEL_111:
            v35 = *v177;
            if (!*v177)
            {
              goto LABEL_152;
            }

            v164 = v36;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_113;
            }

            goto LABEL_146;
          }

          goto LABEL_3;
        }

        goto LABEL_95;
      }

      v155 = v202;
      OUTLINED_FUNCTION_52_9();
      sub_26A4D7E54();
      v156 = v209;
      v157 = OUTLINED_FUNCTION_100_1();
      v193 = sub_26A6AF268(v157);

      OUTLINED_FUNCTION_22_33();
      OUTLINED_FUNCTION_52_9();
      sub_26A4D7E54();
      v158 = *(v156 + 48);
      v159 = sub_26A6AF268(*v145);

      OUTLINED_FUNCTION_109_1(v151);
      OUTLINED_FUNCTION_109_1(v155);
      v160 = v210;
      sub_26A827E9C(v145 + v158, v210);
      sub_26A827E9C(v142 + v207, v160);
      v25 = v155;
      if (v193 >= v159)
      {
        goto LABEL_105;
      }
    }

    else
    {
      OUTLINED_FUNCTION_109_1(v208);
      v25 = v202;
      OUTLINED_FUNCTION_109_1(v202);
    }

    v161 = v206;
    if (!v195)
    {
      break;
    }

    OUTLINED_FUNCTION_52_9();
    sub_26A4D7EA8();
    v14 = v209;
    swift_arrayInitWithTakeFrontToBack();
    OUTLINED_FUNCTION_52_9();
    sub_26A4D7EA8();
    v135 = v205 + v194;
    v77 = __CFADD__(v161, 1);
    v138 = v161 + 1;
    if (v77)
    {
      goto LABEL_106;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_26A8205CC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_99:
    v112 = *a1;
    if (!v112)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_101;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 + 1 >= v4)
    {
      v20 = v5 + 1;
      goto LABEL_26;
    }

    v101 = v4;
    v7 = *a3;
    sub_26A4D7E54();
    v8 = v7 + 112 * v5;
    sub_26A4D7E54();
    LODWORD(v112) = sub_26A80FDA0(__dst[0], &__dst[1], v109, v110);
    sub_26A4DBD10(&v109, &qword_2803B8730);
    sub_26A4DBD10(__dst, &qword_2803B8730);
    v9 = v5 + 2;
    v10 = v8 + 232;
    while (v9 < v101)
    {
      v11 = *(v10 - 120);
      __dst[0] = *(v10 - 8);
      sub_26A6088C0(v10, &__dst[1]);
      v109 = v11;
      sub_26A6088C0(v10 - 112, v110);
      sub_26A4D7E54();
      v12 = v107;

      v13 = sub_26A6AF1BC(v12);

      sub_26A4D7E54();
      v14 = sub_26A6AF1BC(v105);

      sub_26A827D4C(v106);
      sub_26A827D4C(v108);
      if (v14 >= v13)
      {
        sub_26A4D7E54();
        v15 = sub_26A6AF1BC(v107);

        sub_26A4D7E54();
        v16 = sub_26A6AF1BC(v105);

        sub_26A827D4C(v106);
        sub_26A827D4C(v108);
        if (v15 == v16)
        {
          sub_26A4D7E54();
          v17 = sub_26A6AF268(v107);

          sub_26A4D7E54();
          v18 = sub_26A6AF268(v105);

          sub_26A4DBD10(&v109, &qword_2803B8730);
          sub_26A4DBD10(__dst, &qword_2803B8730);
          sub_26A827D4C(v106);
          sub_26A827D4C(v108);
          if ((v112 ^ (v17 < v18)))
          {
            v20 = v9;
            goto LABEL_16;
          }
        }

        else
        {
          sub_26A4DBD10(&v109, &qword_2803B8730);
          sub_26A4DBD10(__dst, &qword_2803B8730);
          if (v112)
          {
            v20 = v9;
            v19 = 112 * v5;
LABEL_19:
            if (v20 >= v5)
            {
              if (v5 < v20)
              {
                v21 = 112 * v20 - 112;
                v22 = v20;
                v23 = v5;
                do
                {
                  if (v23 != --v22)
                  {
                    v24 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_138;
                    }

                    memcpy(__dst, (v24 + v19), 0x70uLL);
                    memmove((v24 + v19), (v24 + v21), 0x70uLL);
                    memcpy((v24 + v21), __dst, 0x70uLL);
                  }

                  ++v23;
                  v21 -= 112;
                  v19 += 112;
                }

                while (v23 < v22);
              }

              goto LABEL_26;
            }

LABEL_133:
            __break(1u);
LABEL_134:
            v6 = sub_26A544B3C();
LABEL_101:
            v85 = v6 + 16;
            v86 = *(v6 + 2);
            while (v86 >= 2)
            {
              if (!*a3)
              {
                goto LABEL_137;
              }

              v87 = v6;
              v88 = &v6[16 * v86];
              v89 = *v88;
              v90 = &v85[2 * v86];
              v91 = *(v90 + 1);
              sub_26A825C98((*a3 + 112 * *v88), (*a3 + 112 * *v90), (*a3 + 112 * v91), v112);
              if (v103)
              {
                break;
              }

              if (v91 < v89)
              {
                goto LABEL_125;
              }

              if (v86 - 2 >= *v85)
              {
                goto LABEL_126;
              }

              *v88 = v89;
              *(v88 + 1) = v91;
              v92 = *v85 - v86;
              if (*v85 < v86)
              {
                goto LABEL_127;
              }

              v86 = *v85 - 1;
              sub_26A544D9C(v90 + 16, v92, v90);
              *v85 = v86;
              v6 = v87;
            }

LABEL_109:

            return;
          }
        }
      }

      else
      {
        sub_26A4DBD10(&v109, &qword_2803B8730);
        sub_26A4DBD10(__dst, &qword_2803B8730);
        if ((v112 & 1) == 0)
        {
          v20 = v9;
          goto LABEL_26;
        }
      }

      ++v9;
      v10 += 112;
    }

    v20 = v101;
LABEL_16:
    v19 = 112 * v5;
    if (v112)
    {
      goto LABEL_19;
    }

LABEL_26:
    v25 = a3[1];
    if (v20 < v25)
    {
      if (__OFSUB__(v20, v5))
      {
        goto LABEL_130;
      }

      if (v20 - v5 < a4)
      {
        break;
      }
    }

LABEL_47:
    if (v20 < v5)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v6 = v83;
    }

    v40 = *(v6 + 2);
    v41 = v40 + 1;
    v97 = v20;
    if (v40 >= *(v6 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v6 = v84;
    }

    *(v6 + 2) = v41;
    v42 = v6 + 32;
    v43 = &v6[16 * v40 + 32];
    *v43 = v5;
    *(v43 + 1) = v97;
    v112 = *a1;
    if (!v112)
    {
      goto LABEL_139;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        v45 = &v42[16 * v41 - 16];
        v46 = &v6[16 * v41];
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(v6 + 4);
          v48 = *(v6 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_67:
          if (v50)
          {
            goto LABEL_116;
          }

          v62 = *v46;
          v61 = *(v46 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_119;
          }

          v66 = *(v45 + 1);
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_124;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v41 < 2)
        {
          goto LABEL_118;
        }

        v69 = *v46;
        v68 = *(v46 + 1);
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_82:
        if (v65)
        {
          goto LABEL_121;
        }

        v71 = *v45;
        v70 = *(v45 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_123;
        }

        if (v72 < v64)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v44 - 1 >= v41)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v76 = &v42[16 * v44 - 16];
        v77 = *v76;
        v78 = &v42[16 * v44];
        v79 = *(v78 + 1);
        sub_26A825C98((*a3 + 112 * *v76), (*a3 + 112 * *v78), (*a3 + 112 * v79), v112);
        if (v103)
        {
          goto LABEL_109;
        }

        if (v79 < v77)
        {
          goto LABEL_111;
        }

        v80 = v6;
        v81 = *(v6 + 2);
        if (v44 > v81)
        {
          goto LABEL_112;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        if (v44 >= v81)
        {
          goto LABEL_113;
        }

        v41 = v81 - 1;
        sub_26A544D9C(v78 + 16, v81 - 1 - v44, &v42[16 * v44]);
        *(v80 + 2) = v81 - 1;
        v82 = v81 > 2;
        v6 = v80;
        if (!v82)
        {
          goto LABEL_96;
        }
      }

      v51 = &v42[16 * v41];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_114;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_115;
      }

      v58 = *(v46 + 1);
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_117;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_120;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = *(v45 + 1);
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v4 = a3[1];
    v5 = v97;
    if (v97 >= v4)
    {
      goto LABEL_99;
    }
  }

  if (__OFADD__(v5, a4))
  {
    goto LABEL_131;
  }

  if (v5 + a4 < v25)
  {
    v25 = v5 + a4;
  }

  if (v25 < v5)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v96 = v25;
  if (v20 == v25)
  {
    goto LABEL_47;
  }

  v94 = v5;
  v104 = *a3;
  v26 = (*a3 + 112 * v20 + 8);
  v27 = v5 - v20;
LABEL_35:
  v102 = v20;
  v98 = v27;
  v99 = v26;
  while (1)
  {
    v28 = v26 - 8;
    v30 = v26 - 120;
    v29 = *(v26 - 15);
    v31 = v26 - 112;
    __dst[0] = *(v26 - 1);
    sub_26A6088C0(v26, &__dst[1]);
    v109 = v29;
    v112 = v31;
    sub_26A6088C0(v31, v110);
    sub_26A4D7E54();
    v32 = v107;

    v33 = sub_26A6AF1BC(v32);

    sub_26A4D7E54();
    v34 = sub_26A6AF1BC(v105);

    sub_26A827D4C(v106);
    sub_26A827D4C(v108);
    if (v34 >= v33)
    {
      sub_26A4D7E54();
      v35 = sub_26A6AF1BC(v107);

      sub_26A4D7E54();
      v36 = sub_26A6AF1BC(v105);

      sub_26A827D4C(v106);
      sub_26A827D4C(v108);
      if (v35 != v36)
      {
        sub_26A4DBD10(&v109, &qword_2803B8730);
        sub_26A4DBD10(__dst, &qword_2803B8730);
LABEL_45:
        ++v20;
        v26 = v99 + 112;
        v27 = v98 - 1;
        if (v102 + 1 == v96)
        {
          v5 = v94;
          v20 = v96;
          goto LABEL_47;
        }

        goto LABEL_35;
      }

      sub_26A4D7E54();
      v37 = sub_26A6AF268(v107);

      sub_26A4D7E54();
      v38 = sub_26A6AF268(v105);

      sub_26A4DBD10(&v109, &qword_2803B8730);
      sub_26A4DBD10(__dst, &qword_2803B8730);
      sub_26A827D4C(v106);
      sub_26A827D4C(v108);
      if (v37 >= v38)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_26A4DBD10(&v109, &qword_2803B8730);
      sub_26A4DBD10(__dst, &qword_2803B8730);
    }

    if (!v104)
    {
      break;
    }

    memcpy(__dst, v28, 0x70uLL);
    memcpy(v28, v30, 0x70uLL);
    memcpy(v30, __dst, 0x70uLL);
    v26 = v112;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

void sub_26A821060(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, __int128 *, uint64_t, __int128 *), uint64_t a6)
{
  v7 = v6;
  v128 = a6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_95:
    v121 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_97;
    }

    goto LABEL_140;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v12 = *a3 + 32 * v9;
      v13 = *v12;
      v14 = *(v12 + 24);
      v15 = *a3 + 32 * v11;
      v16 = *v15;
      v17 = *(v15 + 24);
      v126 = *(v12 + 8);
      v127 = v14;
      v124 = *(v15 + 8);
      v125 = v17;

      LODWORD(v121) = a5(v13, &v126, v16, &v124);
      if (v7)
      {
LABEL_107:

        goto LABEL_108;
      }

      v118 = v10;

      v112 = 32 * v11;
      v18 = (v15 + 88);
      v115 = v11;
      v19 = v11 + 2;
      while (1)
      {
        v20 = v19;
        if (v9 + 1 >= v8)
        {
          break;
        }

        v21 = v8;
        v22 = *(v18 - 3);
        v23 = *v18;
        v24 = *(v18 - 7);
        v25 = *(v18 - 4);
        v126 = *(v18 - 1);
        v127 = v23;
        v124 = *(v18 - 3);
        v125 = v25;

        v26 = a5(v22, &v126, v24, &v124);

        v27 = v121 ^ v26;
        v18 += 4;
        ++v9;
        v19 = v20 + 1;
        v8 = v21;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      v9 = v8;
LABEL_10:
      if (v121)
      {
        v28 = v115;
        if (v9 < v115)
        {
          goto LABEL_134;
        }

        v10 = v118;
        if (v115 >= v9)
        {
          v11 = v115;
          goto LABEL_25;
        }

        if (v8 >= v20)
        {
          v29 = v20;
        }

        else
        {
          v29 = v8;
        }

        v30 = 32 * v29 - 8;
        v31 = v9;
        v32 = v112;
        do
        {
          if (v28 != --v31)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v34 = (v33 + v32);
            v35 = (v33 + v30);
            v36 = *v34;
            v37 = v34[3];
            v38 = *(v34 + 1);
            v39 = *(v35 - 1);
            *v34 = *(v35 - 3);
            *(v34 + 1) = v39;
            *(v35 - 3) = v36;
            *(v35 - 1) = v38;
            *v35 = v37;
          }

          ++v28;
          v30 -= 32;
          v32 += 32;
        }

        while (v28 < v31);
      }

      else
      {
        v10 = v118;
      }

      v11 = v115;
    }

LABEL_25:
    v40 = a3[1];
    if (v9 >= v40)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_130;
    }

    if (v9 - v11 >= a4)
    {
      goto LABEL_34;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
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
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      return;
    }

    if (v11 + a4 >= v40)
    {
      v41 = a3[1];
    }

    else
    {
      v41 = v11 + a4;
    }

    if (v41 < v11)
    {
      goto LABEL_133;
    }

    if (v9 != v41)
    {
      v120 = v10;
      v87 = v11;
      v88 = *a3;
      v89 = *a3 + 32 * v9 - 32;
      v116 = v87;
      v90 = v87 - v9;
      v111 = v41;
      do
      {
        v91 = v88 + 32 * v9;
        v92 = *v91;
        v93 = *(v91 + 8);
        v94 = *(v91 + 24);
        v113 = v90;
        v121 = v89;
        do
        {
          v95 = *v89;
          v96 = *(v89 + 24);
          v126 = v93;
          v127 = v94;
          v124 = *(v89 + 8);
          v125 = v96;

          v97 = a5(v92, &v126, v95, &v124);
          if (v7)
          {
            goto LABEL_107;
          }

          v98 = v97;

          if ((v98 & 1) == 0)
          {
            break;
          }

          if (!v88)
          {
            goto LABEL_137;
          }

          v92 = *(v89 + 32);
          v93 = *(v89 + 40);
          v94 = *(v89 + 56);
          v99 = *(v89 + 16);
          *(v89 + 32) = *v89;
          *(v89 + 48) = v99;
          *v89 = v92;
          *(v89 + 8) = v93;
          *(v89 + 24) = v94;
          v89 -= 32;
        }

        while (!__CFADD__(v90++, 1));
        ++v9;
        v89 = (v121 + 32);
        v90 = v113 - 1;
      }

      while (v9 != v111);
      v9 = v111;
      v10 = v120;
      v11 = v116;
    }

LABEL_34:
    if (v9 < v11)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v10 = v101;
    }

    v42 = *(v10 + 2);
    v43 = v42 + 1;
    if (v42 >= *(v10 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v10 = v102;
    }

    *(v10 + 2) = v43;
    v44 = v10 + 32;
    v45 = &v10[16 * v42 + 32];
    *v45 = v11;
    *(v45 + 1) = v9;
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    if (v42)
    {
      break;
    }

LABEL_83:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_95;
    }
  }

  while (1)
  {
    v46 = v43 - 1;
    v47 = &v44[16 * v43 - 16];
    v48 = &v10[16 * v43];
    if (v43 >= 4)
    {
      v53 = &v44[16 * v43];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_117;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_118;
      }

      v60 = *(v48 + 1);
      v61 = v60 - *v48;
      if (__OFSUB__(v60, *v48))
      {
        goto LABEL_120;
      }

      v59 = __OFADD__(v51, v61);
      v62 = v51 + v61;
      if (v59)
      {
        goto LABEL_123;
      }

      if (v62 >= v56)
      {
        v76 = *v47;
        v75 = *(v47 + 1);
        v59 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v77)
        {
          v46 = v43 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_54;
    }

    if (v43 == 3)
    {
      v49 = *(v10 + 4);
      v50 = *(v10 + 5);
      v59 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      v52 = v59;
LABEL_54:
      if (v52)
      {
        goto LABEL_119;
      }

      v64 = *v48;
      v63 = *(v48 + 1);
      v65 = __OFSUB__(v63, v64);
      v66 = v63 - v64;
      v67 = v65;
      if (v65)
      {
        goto LABEL_122;
      }

      v68 = *(v47 + 1);
      v69 = v68 - *v47;
      if (__OFSUB__(v68, *v47))
      {
        goto LABEL_125;
      }

      if (__OFADD__(v66, v69))
      {
        goto LABEL_127;
      }

      if (v66 + v69 >= v51)
      {
        if (v51 < v69)
        {
          v46 = v43 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    if (v43 < 2)
    {
      goto LABEL_121;
    }

    v71 = *v48;
    v70 = *(v48 + 1);
    v59 = __OFSUB__(v70, v71);
    v66 = v70 - v71;
    v67 = v59;
LABEL_69:
    if (v67)
    {
      goto LABEL_124;
    }

    v73 = *v47;
    v72 = *(v47 + 1);
    v59 = __OFSUB__(v72, v73);
    v74 = v72 - v73;
    if (v59)
    {
      goto LABEL_126;
    }

    if (v74 < v66)
    {
      goto LABEL_83;
    }

LABEL_76:
    if (v46 - 1 >= v43)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_135;
    }

    v78 = &v44[16 * v46 - 16];
    v79 = *v78;
    v80 = v46;
    v81 = &v44[16 * v46];
    v82 = *(v81 + 1);
    sub_26A825F30((*a3 + 32 * *v78), (*a3 + 32 * *v81), *a3 + 32 * v82, v119, a5);
    if (v7)
    {
      goto LABEL_108;
    }

    if (v82 < v79)
    {
      goto LABEL_111;
    }

    v121 = 0;
    v7 = v44;
    v83 = v9;
    v84 = v10;
    v85 = *(v10 + 2);
    if (v80 > v85)
    {
      goto LABEL_112;
    }

    *v78 = v79;
    *(v78 + 1) = v82;
    if (v80 >= v85)
    {
      goto LABEL_113;
    }

    v43 = v85 - 1;
    sub_26A544D9C(v81 + 16, v85 - 1 - v80, v81);
    *(v84 + 2) = v85 - 1;
    v86 = v85 > 2;
    v10 = v84;
    v9 = v83;
    v44 = v7;
    v7 = 0;
    if (!v86)
    {
      goto LABEL_83;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  v10 = sub_26A544B3C();
LABEL_97:
  v103 = v10 + 16;
  v104 = *(v10 + 2);
  while (v104 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_136;
    }

    v105 = v10;
    v106 = &v10[16 * v104];
    v107 = *v106;
    v108 = &v103[2 * v104];
    v109 = *(v108 + 1);
    sub_26A825F30((*a3 + 32 * *v106), (*a3 + 32 * *v108), *a3 + 32 * v109, v121, a5);
    if (v7)
    {
      break;
    }

    if (v109 < v107)
    {
      goto LABEL_114;
    }

    if (v104 - 2 >= *v103)
    {
      goto LABEL_115;
    }

    *v106 = v107;
    *(v106 + 1) = v109;
    v110 = *v103 - v104;
    if (*v103 < v104)
    {
      goto LABEL_116;
    }

    v104 = *v103 - 1;
    sub_26A544D9C(v108 + 16, v110, v108);
    *v103 = v104;
    v10 = v105;
  }

LABEL_108:
}

void sub_26A8217E4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(unint64_t, uint64_t, char *))
{
  v8 = v7;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_96:
    v118 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_98;
    }

    goto LABEL_141;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10++;
    if (v10 >= v9)
    {
      goto LABEL_23;
    }

    v118 = v9;
    v13 = *a3;

    OUTLINED_FUNCTION_57_4();
    OUTLINED_FUNCTION_97_1();
    v15 = v14();
    v8 = v7;
    if (v7)
    {
LABEL_108:

      goto LABEL_109;
    }

    v16 = v15;
    v119 = v11;

    v112 = 56 * v12;
    v17 = v12;
    v18 = v13 + 56 * v12 + 80;
    v115 = v17;
    v19 = v17 + 2;
    v20 = v118;
    do
    {
      v21 = v19;
      if (v10 + 1 >= v20)
      {
        v10 = v20;
        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v12 = v115;
        if (v10 >= v115)
        {
          if (v115 >= v10)
          {
            v11 = v119;
          }

          else
          {
            if (v20 >= v21)
            {
              v24 = v21;
            }

            else
            {
              v24 = v20;
            }

            v25 = 56 * v24 - 56;
            v26 = v112 + 40;
            v27 = v10;
            v28 = v115;
            v11 = v119;
            do
            {
              if (v28 != --v27)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_139;
                }

                v30 = (v29 + v26);
                v31 = *(v29 + v26 - 40);
                v32 = v29 + v25;
                v33 = *(v30 - 2);
                v34 = *(v30 - 1);
                v35 = *v30;
                v37 = *(v32 + 16);
                v36 = *(v32 + 32);
                v38 = *(v32 + 48);
                *(v30 - 40) = *v32;
                *(v30 + 1) = v38;
                *(v30 - 8) = v36;
                *(v30 - 24) = v37;
                *v32 = v31;
                *(v32 + 8) = v33;
                *(v32 + 24) = v34;
                *(v32 + 40) = v35;
              }

              ++v28;
              v25 -= 56;
              v26 += 56;
            }

            while (v28 < v27);
          }

          goto LABEL_23;
        }

        goto LABEL_135;
      }

      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_97_1();
      v8 = 0;
      v23 = v22();

      v18 += 56;
      ++v10;
      v19 = v21 + 1;
      v20 = v118;
    }

    while (((v16 ^ v23) & 1) == 0);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_21:
    v11 = v119;
    v12 = v115;
LABEL_23:
    v39 = a3[1];
    if (v10 < v39)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_131;
      }

      if (v10 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          __break(1u);
        }

        else
        {
          if (v12 + a4 >= v39)
          {
            v40 = a3[1];
          }

          else
          {
            v40 = (v12 + a4);
          }

          if (v40 >= v12)
          {
            if (v10 != v40)
            {
              v121 = v11;
              v85 = *a3;
              v86 = *a3 + 56 * v10 - 8;
              v116 = v12;
              v87 = v12 - v10;
              v110 = v40;
              do
              {
                v118 = v10;
                v111 = v87;
                v113 = v86;
                v88 = v86;
                while (1)
                {
                  v89 = v85;
                  v90 = v88 - 48;

                  OUTLINED_FUNCTION_57_4();
                  OUTLINED_FUNCTION_97_1();
                  v92 = v91();
                  v8 = v7;
                  if (v7)
                  {
                    goto LABEL_108;
                  }

                  v93 = v92;

                  if ((v93 & 1) == 0)
                  {
                    break;
                  }

                  if (!v89)
                  {
                    goto LABEL_138;
                  }

                  v85 = v89;
                  v94 = *(v88 + 8);
                  v95 = *(v88 + 16);
                  v96 = *(v88 + 32);
                  v97 = *(v88 + 48);
                  v98 = *(v88 - 32);
                  *(v88 + 8) = *(v88 - 48);
                  *(v88 + 24) = v98;
                  *(v88 + 40) = *(v88 - 16);
                  v99 = *v88;
                  *(v88 - 48) = v94;
                  *(v88 - 40) = v95.i64[0];
                  *(v88 - 32) = vextq_s8(v95, v96, 8uLL);
                  *(v88 - 16) = vextq_s8(v96, v97, 8uLL);
                  *v88 = v97.i64[1];
                  v88 -= 56;
                  *(v90 + 104) = v99;
                  if (__CFADD__(v87++, 1))
                  {
                    goto LABEL_93;
                  }
                }

                v85 = v89;
LABEL_93:
                v10 = (v118 + 1);
                v86 = v113 + 56;
                v87 = v111 - 1;
              }

              while (v118 + 1 != v110);
              v10 = v110;
              v11 = v121;
              v12 = v116;
            }

            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        return;
      }
    }

LABEL_32:
    if (v10 < v12)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A0DBC();
      v11 = v101;
    }

    v41 = *(v11 + 2);
    v42 = v41 + 1;
    if (v41 >= *(v11 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v11 = v102;
    }

    *(v11 + 2) = v42;
    v43 = v11 + 32;
    v44 = &v11[16 * v41 + 32];
    *v44 = v12;
    *(v44 + 1) = v10;
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (v41)
    {
      break;
    }

LABEL_82:
    v9 = a3[1];
    if (v10 >= v9)
    {
      goto LABEL_96;
    }
  }

  v118 = v10;
  while (1)
  {
    v45 = v42 - 1;
    v46 = &v43[16 * v42 - 16];
    v47 = &v11[16 * v42];
    if (v42 >= 4)
    {
      v52 = &v43[16 * v42];
      v53 = *(v52 - 8);
      v54 = *(v52 - 7);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_118;
      }

      v57 = *(v52 - 6);
      v56 = *(v52 - 5);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v59 = *(v47 + 1);
      v60 = v59 - *v47;
      if (__OFSUB__(v59, *v47))
      {
        goto LABEL_121;
      }

      v58 = __OFADD__(v50, v60);
      v61 = v50 + v60;
      if (v58)
      {
        goto LABEL_124;
      }

      if (v61 >= v55)
      {
        v75 = *v46;
        v74 = *(v46 + 1);
        v58 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v58)
        {
          goto LABEL_129;
        }

        if (v50 < v76)
        {
          v45 = v42 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v42 == 3)
    {
      v48 = *(v11 + 4);
      v49 = *(v11 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_53:
      if (v51)
      {
        goto LABEL_120;
      }

      v63 = *v47;
      v62 = *(v47 + 1);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      v66 = v64;
      if (v64)
      {
        goto LABEL_123;
      }

      v67 = *(v46 + 1);
      v68 = v67 - *v46;
      if (__OFSUB__(v67, *v46))
      {
        goto LABEL_126;
      }

      if (__OFADD__(v65, v68))
      {
        goto LABEL_128;
      }

      if (v65 + v68 >= v50)
      {
        if (v50 < v68)
        {
          v45 = v42 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v42 < 2)
    {
      goto LABEL_122;
    }

    v70 = *v47;
    v69 = *(v47 + 1);
    v58 = __OFSUB__(v69, v70);
    v65 = v69 - v70;
    v66 = v58;
LABEL_68:
    if (v66)
    {
      goto LABEL_125;
    }

    v72 = *v46;
    v71 = *(v46 + 1);
    v58 = __OFSUB__(v71, v72);
    v73 = v71 - v72;
    if (v58)
    {
      goto LABEL_127;
    }

    if (v73 < v65)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v45 - 1 >= v42)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_136;
    }

    v77 = v11;
    v78 = &v43[16 * v45 - 16];
    v79 = *v78;
    v80 = v45;
    v81 = &v43[16 * v45];
    v82 = *(v81 + 1);
    v7 = v8;
    sub_26A8262BC(*a3 + 56 * *v78, *a3 + 56 * *v81, *a3 + 56 * v82, v120, a5, a6, a7);
    if (v8)
    {
      goto LABEL_109;
    }

    if (v82 < v79)
    {
      goto LABEL_112;
    }

    v8 = v43;
    v83 = *(v77 + 2);
    if (v80 > v83)
    {
      goto LABEL_113;
    }

    *v78 = v79;
    *(v78 + 1) = v82;
    if (v80 >= v83)
    {
      goto LABEL_114;
    }

    v42 = v83 - 1;
    sub_26A544D9C(v81 + 16, v83 - 1 - v80, v81);
    v11 = v77;
    *(v77 + 2) = v83 - 1;
    v84 = v83 > 2;
    v10 = v118;
    v43 = v8;
    v8 = 0;
    if (!v84)
    {
      goto LABEL_82;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  v11 = sub_26A544B3C();
LABEL_98:
  v103 = (v11 + 16);
  for (i = *(v11 + 2); i >= 2; *v103 = i)
  {
    if (!*a3)
    {
      goto LABEL_137;
    }

    v105 = &v11[16 * i];
    v106 = *v105;
    v107 = &v103[2 * i];
    v108 = *(v107 + 1);
    sub_26A8262BC(*a3 + 56 * *v105, *a3 + 56 * *v107, *a3 + 56 * v108, v118, a5, a6, a7);
    if (v8)
    {
      break;
    }

    if (v108 < v106)
    {
      goto LABEL_115;
    }

    if (i - 2 >= *v103)
    {
      goto LABEL_116;
    }

    *v105 = v106;
    *(v105 + 1) = v108;
    v109 = *v103 - i;
    if (*v103 < i)
    {
      goto LABEL_117;
    }

    i = *v103 - 1;
    sub_26A544D9C(v107 + 16, v109, v107);
  }

LABEL_109:
}

uint64_t sub_26A822004(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD20);
  v8 = MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_63;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_64;
  }

  v19 = v15 / v14;
  v56 = a1;
  v55 = a4;
  v20 = v17 / v14;
  if (v15 / v14 < v17 / v14)
  {
    sub_26A7A3730(a1, v15 / v14, a4);
    v50 = a3;
    v51 = a4 + v19 * v14;
    v54 = v51;
    v21 = v14;
    while (1)
    {
      if (a4 >= v51 || a2 >= a3)
      {
        goto LABEL_61;
      }

      v23 = v21;
      sub_26A4D7E54();
      v24 = v52;
      sub_26A4D7E54();
      sub_26A80EB9C();
      v26 = v25;
      sub_26A4DBD10(v24, &qword_2803ACD20);
      sub_26A4DBD10(v12, &qword_2803ACD20);
      if ((v26 & 1) == 0)
      {
        break;
      }

      if (a1 < a2 || a1 >= a2 + v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v21 = v23;
      a2 += v23;
LABEL_36:
      a1 += v21;
      v56 = a1;
      a3 = v50;
    }

    if (a1 < a4 || a1 >= a4 + v23)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v21 = v23;
      if (a1 == a4)
      {
LABEL_35:
        v55 = a4 + v23;
        a4 += v23;
        goto LABEL_36;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v21 = v23;
    goto LABEL_35;
  }

  sub_26A7A3730(a2, v17 / v14, a4);
  v29 = a4 + v20 * v14;
  v30 = -v14;
  v31 = v29;
  v51 = v30;
  v48 = a1;
LABEL_38:
  v32 = a3;
  v46 = v31;
  v49 = a2 + v30;
  v50 = a2;
  while (1)
  {
    if (v29 <= a4)
    {
      v56 = a2;
      goto LABEL_60;
    }

    if (a2 <= a1)
    {
      break;
    }

    v47 = v31;
    v33 = a4;
    a3 = v32 + v51;
    v34 = v29 + v51;
    v35 = v32;
    sub_26A4D7E54();
    v36 = v12;
    v37 = v52;
    sub_26A4D7E54();
    sub_26A80EB9C();
    v39 = v38;
    v40 = v37;
    v12 = v36;
    sub_26A4DBD10(v40, &qword_2803ACD20);
    sub_26A4DBD10(v36, &qword_2803ACD20);
    if (v39)
    {
      v42 = v35 < v50 || a3 >= v50;
      a4 = v33;
      if (v42)
      {
        a2 = v49;
        swift_arrayInitWithTakeFrontToBack();
        v31 = v47;
        a1 = v48;
        v30 = v51;
      }

      else
      {
        v31 = v47;
        v16 = v35 == v50;
        a1 = v48;
        v43 = v49;
        a2 = v49;
        v30 = v51;
        if (!v16)
        {
          v44 = v47;
          swift_arrayInitWithTakeBackToFront();
          a2 = v43;
          v31 = v44;
        }
      }

      goto LABEL_38;
    }

    v41 = v35 < v29 || a3 >= v29;
    a4 = v33;
    if (v41)
    {
      swift_arrayInitWithTakeFrontToBack();
      v32 = a3;
      v29 = v34;
      v31 = v34;
      a2 = v50;
      a1 = v48;
    }

    else
    {
      v31 = v34;
      v16 = v29 == v35;
      v32 = a3;
      v29 = v34;
      a2 = v50;
      a1 = v48;
      if (!v16)
      {
        swift_arrayInitWithTakeBackToFront();
        v32 = a3;
        v29 = v34;
        v31 = v34;
      }
    }
  }

  v56 = a2;
  v31 = v46;
LABEL_60:
  v54 = v31;
LABEL_61:
  sub_26A544B54(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_26A8224B4(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t, __int128 *, uint64_t, __int128 *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 40;
  v10 = (a3 - a2) / 40;
  if (v9 >= v10)
  {
    sub_26A4C23DC(a2, (a3 - a2) / 40, a4);
    v58 = &v5[40 * v10];
    __src = v5;
LABEL_15:
    v26 = 0;
    v55 = v7 - 40;
    while (1)
    {
      v11 = &v58[v26];
      if (&v58[v26] <= v5 || v7 <= a1)
      {
LABEL_29:
        v45 = (v11 - v5) / 40;
        if (v7 < v5 || v7 >= &v5[40 * v45])
        {
          v47 = 40 * v45;
          v48 = v7;
          goto LABEL_43;
        }

        if (v7 != v5)
        {
          v47 = 40 * v45;
          v48 = v7;
          goto LABEL_52;
        }

        return 1;
      }

      v28 = v7;
      v29 = v6;
      v30 = v11 - 40;
      v31 = *(v11 - 5);
      v32 = *(v28 - 40);
      v33 = *(v11 - 1);
      v62 = *(v11 - 2);
      v63 = v33;
      v34 = *(v28 - 16);
      v35 = v28;
      v60 = *(v28 - 32);
      v61 = v34;

      v36 = v64;
      v37 = a5(v31, &v62, v32, &v60);
      v64 = v36;
      if (v36)
      {
        break;
      }

      v38 = v37;

      v39 = v29 + v26;
      v40 = v29 + v26 - 40;
      if (v38)
      {
        v58 += v26;
        v6 = v29 + v26 - 40;
        v5 = __src;
        v7 = v55;
        if (v39 != v35)
        {
          v43 = *v55;
          v44 = *(v55 + 16);
          *(v40 + 32) = *(v55 + 32);
          *v40 = v43;
          *(v40 + 16) = v44;
          v7 = v55;
          v6 = v40;
        }

        goto LABEL_15;
      }

      v6 = v29;
      v23 = &v58[v26] == (v29 + v26);
      v7 = v35;
      if (!v23)
      {
        v41 = *v30;
        v42 = *(v30 + 1);
        *(v40 + 32) = *(v30 + 4);
        *v40 = v41;
        *(v40 + 16) = v42;
      }

      v26 -= 40;
      v5 = __src;
    }

    v51 = __src;
    v52 = (v58 - __src + v26) / 40;
    if (v35 < __src || v35 >= &__src[40 * v52])
    {
      v47 = 40 * v52;
      v48 = v35;
      goto LABEL_55;
    }

    if (v35 != __src)
    {
      v47 = 40 * v52;
      v48 = v35;
      goto LABEL_55;
    }
  }

  else
  {
    sub_26A4C23DC(a1, (a2 - a1) / 40, a4);
    v11 = &v5[40 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v13 = v6;
      v14 = *v7;
      v15 = *v5;
      v16 = *(v7 + 24);
      v17 = *(v5 + 8);
      v18 = *(v5 + 24);
      v62 = *(v7 + 8);
      v63 = v16;
      v60 = v17;
      v61 = v18;

      v19 = v64;
      v20 = a5(v14, &v62, v15, &v60);
      v64 = v19;
      if (v19)
      {
        break;
      }

      v21 = v20;

      if (v21)
      {
        v22 = v7;
        v23 = v8 == v7;
        v7 += 40;
      }

      else
      {
        v22 = v5;
        v23 = v8 == v5;
        v5 += 40;
      }

      v6 = v13;
      if (!v23)
      {
        v24 = *v22;
        v25 = *(v22 + 16);
        *(v8 + 32) = *(v22 + 32);
        *v8 = v24;
        *(v8 + 16) = v25;
      }

      v8 += 40;
    }

    v49 = (v11 - v5) / 40;
    if (v8 < v5 || v8 >= &v5[40 * v49])
    {
      v47 = 40 * v49;
      v48 = v8;
LABEL_43:
      v51 = v5;
LABEL_55:
      memmove(v48, v51, v47);
      return 1;
    }

    if (v8 != v5)
    {
      v47 = 40 * v49;
      v48 = v8;
LABEL_52:
      v51 = v5;
      goto LABEL_55;
    }
  }

  return 1;
}

uint64_t sub_26A822864(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v7 < v9)
  {
    sub_26A4C2444(a1, (a2 - a1) / 56, a4);
    v10 = &v4[56 * v7];
    while (1)
    {
      if (v4 >= v10 || v5 >= a3)
      {
        v5 = v6;
        goto LABEL_28;
      }

      sub_26A4D7E54();
      sub_26A4D7E54();
      v12 = sub_26A80EC50(v38, v39, v36, v37);
      sub_26A4DBD10(&v36, &qword_2803B2748);
      sub_26A4DBD10(&v38, &qword_2803B2748);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v5;
      v14 = v6 == v5;
      v5 += 56;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 56;
    }

    v13 = v4;
    v14 = v6 == v4;
    v4 += 56;
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v6 + 6) = *(v13 + 6);
    *(v6 + 1) = v16;
    *(v6 + 2) = v17;
    *v6 = v15;
    goto LABEL_13;
  }

  sub_26A4C2444(a2, (a3 - a2) / 56, a4);
  v18 = &v4[56 * v9];
  v19 = a3;
  v40 = v6;
LABEL_15:
  v20 = v5 - 56;
  v21 = v19 - 56;
  for (i = v18 - 56; ; i -= 56)
  {
    v10 = i + 56;
    if (i + 56 <= v4 || v5 <= v6)
    {
      break;
    }

    v24 = v21;
    sub_26A4D7E54();
    v25 = v20;
    sub_26A4D7E54();
    v26 = sub_26A80EC50(v38, v39, v36, v37);
    sub_26A4DBD10(&v36, &qword_2803B2748);
    sub_26A4DBD10(&v38, &qword_2803B2748);
    v19 = v24;
    if (v26)
    {
      v18 = i + 56;
      v14 = v24 + 56 == v5;
      v5 = v25;
      v6 = v40;
      if (!v14)
      {
        v30 = *v25;
        v31 = *(v25 + 1);
        v32 = *(v25 + 2);
        *(v24 + 48) = *(v25 + 6);
        *(v24 + 16) = v31;
        *(v24 + 32) = v32;
        *v24 = v30;
        v5 = v25;
      }

      goto LABEL_15;
    }

    if (i + 56 != (v24 + 56))
    {
      v27 = *i;
      v28 = *(i + 1);
      v29 = *(i + 2);
      *(v24 + 48) = *(i + 6);
      *(v24 + 16) = v28;
      *(v24 + 32) = v29;
      *v24 = v27;
    }

    v21 = v24 - 56;
    v20 = v25;
    v6 = v40;
  }

LABEL_28:
  v33 = (v10 - v4) / 56;
  if (v5 != v4 || v5 >= &v4[56 * v33])
  {
    memmove(v5, v4, 56 * v33);
  }

  return 1;
}

uint64_t sub_26A822B44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD08);
  v8 = MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_63;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_64;
  }

  v19 = v15 / v14;
  v56 = a1;
  v55 = a4;
  v20 = v17 / v14;
  if (v15 / v14 < v17 / v14)
  {
    sub_26A7A3744(a1, v15 / v14, a4);
    v50 = a3;
    v51 = a4 + v19 * v14;
    v54 = v51;
    v21 = v14;
    while (1)
    {
      if (a4 >= v51 || a2 >= a3)
      {
        goto LABEL_61;
      }

      v23 = v21;
      sub_26A4D7E54();
      v24 = v52;
      sub_26A4D7E54();
      sub_26A80EEE8();
      v26 = v25;
      sub_26A4DBD10(v24, &qword_2803ACD08);
      sub_26A4DBD10(v12, &qword_2803ACD08);
      if ((v26 & 1) == 0)
      {
        break;
      }

      if (a1 < a2 || a1 >= a2 + v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v21 = v23;
      a2 += v23;
LABEL_36:
      a1 += v21;
      v56 = a1;
      a3 = v50;
    }

    if (a1 < a4 || a1 >= a4 + v23)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v21 = v23;
      if (a1 == a4)
      {
LABEL_35:
        v55 = a4 + v23;
        a4 += v23;
        goto LABEL_36;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v21 = v23;
    goto LABEL_35;
  }

  sub_26A7A3744(a2, v17 / v14, a4);
  v29 = a4 + v20 * v14;
  v30 = -v14;
  v31 = v29;
  v51 = v30;
  v48 = a1;
LABEL_38:
  v32 = a3;
  v46 = v31;
  v49 = a2 + v30;
  v50 = a2;
  while (1)
  {
    if (v29 <= a4)
    {
      v56 = a2;
      goto LABEL_60;
    }

    if (a2 <= a1)
    {
      break;
    }

    v47 = v31;
    v33 = a4;
    a3 = v32 + v51;
    v34 = v29 + v51;
    v35 = v32;
    sub_26A4D7E54();
    v36 = v12;
    v37 = v52;
    sub_26A4D7E54();
    sub_26A80EEE8();
    v39 = v38;
    v40 = v37;
    v12 = v36;
    sub_26A4DBD10(v40, &qword_2803ACD08);
    sub_26A4DBD10(v36, &qword_2803ACD08);
    if (v39)
    {
      v42 = v35 < v50 || a3 >= v50;
      a4 = v33;
      if (v42)
      {
        a2 = v49;
        swift_arrayInitWithTakeFrontToBack();
        v31 = v47;
        a1 = v48;
        v30 = v51;
      }

      else
      {
        v31 = v47;
        v16 = v35 == v50;
        a1 = v48;
        v43 = v49;
        a2 = v49;
        v30 = v51;
        if (!v16)
        {
          v44 = v47;
          swift_arrayInitWithTakeBackToFront();
          a2 = v43;
          v31 = v44;
        }
      }

      goto LABEL_38;
    }

    v41 = v35 < v29 || a3 >= v29;
    a4 = v33;
    if (v41)
    {
      swift_arrayInitWithTakeFrontToBack();
      v32 = a3;
      v29 = v34;
      v31 = v34;
      a2 = v50;
      a1 = v48;
    }

    else
    {
      v31 = v34;
      v16 = v29 == v35;
      v32 = a3;
      v29 = v34;
      a2 = v50;
      a1 = v48;
      if (!v16)
      {
        swift_arrayInitWithTakeBackToFront();
        v32 = a3;
        v29 = v34;
        v31 = v34;
      }
    }
  }

  v56 = a2;
  v31 = v46;
LABEL_60:
  v54 = v31;
LABEL_61:
  sub_26A544B68(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_26A822FF4(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t, _BYTE *, uint64_t, _BYTE *))
{
  v6 = v5;
  v63 = a5;
  v7 = a4;
  v9 = a1;
  v10 = (a2 - a1) / 184;
  v11 = (a3 - a2) / 184;
  if (v10 < v11)
  {
    sub_26A7A3758(a1, (a2 - a1) / 184, a4);
    v12 = (v7 + 184 * v10);
    v13 = a2;
    while (1)
    {
      if (v7 >= v12 || v13 >= a3)
      {
        v27 = v9;
        goto LABEL_44;
      }

      v15 = v12;
      v16 = v9;
      v17 = v13;
      memcpy(__dst, v13, sizeof(__dst));
      v18 = v7;
      memcpy(__src, v7, 0xB8uLL);
      v19 = __dst[0];
      memcpy(v60, __dst, sizeof(v60));
      v20 = __src[0];
      memcpy(v59, __src, sizeof(v59));
      sub_26A4D7E54();
      sub_26A4D7E54();
      v21 = v63(v19, &v60[8], v20, &v59[8]);
      if (v5)
      {
        sub_26A4DBD10(__src, &qword_2803B8790);
        sub_26A4DBD10(__dst, &qword_2803B8790);
        v47 = (v15 - v18) / 184;
        v48 = v16 < v18 || v16 >= &v18[184 * v47];
        if (v48 || v16 != v18)
        {
          v45 = 184 * v47;
          v27 = v16;
          v46 = v18;
          goto LABEL_64;
        }

        return 1;
      }

      v22 = v21;
      sub_26A4DBD10(__src, &qword_2803B8790);
      sub_26A4DBD10(__dst, &qword_2803B8790);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v17;
      v24 = v17;
      v17 += 184;
      v25 = v16;
      v7 = v18;
      if (v16 != v23)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 = v25 + 184;
      v13 = v17;
      v12 = v15;
    }

    v24 = v18;
    v7 = (v18 + 184);
    v25 = v16;
    if (v16 == v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v25, v24, 0xB8uLL);
    goto LABEL_13;
  }

  sub_26A7A3758(a2, (a3 - a2) / 184, a4);
  v12 = (v7 + 184 * v11);
  v26 = -v7;
  v27 = a2;
  v28 = a3;
  v52 = -v7;
  v53 = v7;
LABEL_15:
  v54 = v27;
  v55 = v27 - 184;
  v29 = v28 - 184;
  v30 = &v12[v26];
  while (1)
  {
    if (v12 <= v7 || v27 <= v9)
    {
LABEL_44:
      v43 = &v12[-v7] / 184;
      v44 = v27 < v7 || v27 >= v7 + 184 * v43;
      if (v44 || v27 != v7)
      {
        v45 = 184 * v43;
        v46 = v7;
        goto LABEL_64;
      }

      return 1;
    }

    v56 = v30;
    v58 = v6;
    v32 = v29;
    v33 = v9;
    v34 = v12;
    v35 = v12 - 184;
    memcpy(__dst, v12 - 184, sizeof(__dst));
    memcpy(__src, v55, 0xB8uLL);
    v36 = __dst[0];
    memcpy(v60, __dst, sizeof(v60));
    v37 = __src[0];
    memcpy(v59, v55, sizeof(v59));
    sub_26A4D7E54();
    sub_26A4D7E54();
    v38 = v63(v36, &v60[8], v37, &v59[8]);
    if (v58)
    {
      break;
    }

    v39 = v38;
    sub_26A4DBD10(__src, &qword_2803B8790);
    sub_26A4DBD10(__dst, &qword_2803B8790);
    v28 = v32;
    v40 = v32 + 184;
    if (v39)
    {
      if (v40 < v54 || v32 >= v54)
      {
        memmove(v32, v55, 0xB8uLL);
        v28 = v32;
        v27 = v55;
        v7 = v53;
        v9 = v33;
      }

      else
      {
        v7 = v53;
        v9 = v33;
        if (v40 != v54)
        {
          memmove(v32, v55, 0xB8uLL);
          v28 = v32;
        }

        v27 = v55;
      }

      v12 = v34;
      v6 = 0;
      v26 = v52;
      goto LABEL_15;
    }

    if (v40 < v34 || v32 >= v34)
    {
      memmove(v32, v35, 0xB8uLL);
      v28 = v32;
      v7 = v53;
      v9 = v33;
    }

    else
    {
      v7 = v53;
      v9 = v33;
      if (v34 != v40)
      {
        memmove(v32, v35, 0xB8uLL);
        v28 = v32;
      }
    }

    v27 = v54;
    v6 = 0;
    v29 = v28 - 184;
    v30 = v56 - 184;
    v12 = v35;
  }

  sub_26A4DBD10(__src, &qword_2803B8790);
  sub_26A4DBD10(__dst, &qword_2803B8790);
  v49 = v56 / 184;
  v46 = v53;
  v27 = v54;
  if (v54 < v53 || v54 >= &v53[184 * (v56 / 184)])
  {
    memmove(v54, v53, 184 * v49);
  }

  else if (v54 != v53)
  {
    v45 = 184 * v49;
LABEL_64:
    memmove(v27, v46, v45);
  }

  return 1;
}

uint64_t sub_26A823524(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 >= v10)
  {
    sub_26A4C2424(a2, (a3 - a2) / 16, a4);
    v48 = &v5[16 * v10];
    __src = v5;
LABEL_15:
    v21 = 0;
    v45 = v7 - 16;
    while (1)
    {
      v11 = &v48[v21];
      if (&v48[v21] <= v5 || v7 <= a1)
      {
LABEL_29:
        v35 = (v11 - v5) / 16;
        if (v7 < v5 || v7 >= &v5[16 * v35])
        {
          v37 = 16 * v35;
          v38 = v7;
          goto LABEL_43;
        }

        if (v7 != v5)
        {
          v37 = 16 * v35;
          v38 = v7;
          goto LABEL_52;
        }

        return 1;
      }

      v23 = v7;
      v24 = v6;
      v25 = v11 - 16;
      v26 = *(v11 - 2);
      v27 = *(v11 - 1);
      v28 = *(v23 - 2);
      v29 = v23;
      v30 = *(v23 - 1);
      v52 = v27;
      v51 = v30;

      v31 = a5(v26, &v52, v28, &v51);
      if (v50)
      {
        break;
      }

      v32 = v31;

      v33 = v24 + v21;
      v34 = (v24 + v21 - 16);
      if (v32)
      {
        v48 += v21;
        v6 = v24 + v21 - 16;
        v5 = __src;
        v7 = v45;
        if (v33 != v29)
        {
          *v34 = *v45;
          v7 = v45;
          v6 = v34;
        }

        goto LABEL_15;
      }

      v6 = v24;
      v20 = &v48[v21] == (v24 + v21);
      v7 = v29;
      if (!v20)
      {
        *v34 = *v25;
      }

      v21 -= 16;
      v5 = __src;
    }

    v41 = __src;
    v42 = (v48 - __src + v21) / 16;
    if (v29 < __src || v29 >= &__src[16 * v42])
    {
      v37 = 16 * v42;
      v38 = v29;
      goto LABEL_55;
    }

    if (v29 != __src)
    {
      v37 = 16 * v42;
      v38 = v29;
      goto LABEL_55;
    }
  }

  else
  {
    sub_26A4C2424(a1, (a2 - a1) / 16, a4);
    v11 = &v5[16 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v13 = v6;
      v14 = *v7;
      v15 = *v5;
      v16 = *(v5 + 1);
      v52 = *(v7 + 1);
      v51 = v16;

      v17 = a5(v14, &v52, v15, &v51);
      if (v50)
      {
        break;
      }

      v18 = v17;

      if (v18)
      {
        v19 = v7;
        v20 = v8 == v7;
        v7 += 16;
      }

      else
      {
        v19 = v5;
        v20 = v8 == v5;
        v5 += 16;
      }

      v6 = v13;
      if (!v20)
      {
        *v8 = *v19;
      }

      v8 += 16;
    }

    v39 = (v11 - v5) / 16;
    if (v8 < v5 || v8 >= &v5[16 * v39])
    {
      v37 = 16 * v39;
      v38 = v8;
LABEL_43:
      v41 = v5;
LABEL_55:
      memmove(v38, v41, v37);
      return 1;
    }

    if (v8 != v5)
    {
      v37 = 16 * v39;
      v38 = v8;
LABEL_52:
      v41 = v5;
      goto LABEL_55;
    }
  }

  return 1;
}

void sub_26A823884(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD18);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_63;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_64;
  }

  v18 = v14 / v13;
  v55 = a1;
  v54 = a4;
  v19 = v16 / v13;
  if (v14 / v13 < v16 / v13)
  {
    sub_26A7A3838(a1, v14 / v13, a4);
    v49 = a3;
    v50 = a4 + v18 * v13;
    v53 = v50;
    v20 = v13;
    while (1)
    {
      if (a4 >= v50 || a2 >= a3)
      {
        goto LABEL_61;
      }

      v22 = v20;
      sub_26A4D7E54();
      v23 = v51;
      sub_26A4D7E54();
      sub_26A80F60C();
      v25 = v24;
      sub_26A4DBD10(v23, &qword_2803ACD18);
      sub_26A4DBD10(v11, &qword_2803ACD18);
      if ((v25 & 1) == 0)
      {
        break;
      }

      if (a1 < a2 || a1 >= a2 + v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = v22;
      a2 += v22;
LABEL_36:
      a1 += v20;
      v55 = a1;
      a3 = v49;
    }

    if (a1 < a4 || a1 >= a4 + v22)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v20 = v22;
      if (a1 == a4)
      {
LABEL_35:
        v54 = a4 + v22;
        a4 += v22;
        goto LABEL_36;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v20 = v22;
    goto LABEL_35;
  }

  sub_26A7A3838(a2, v16 / v13, a4);
  v28 = a4 + v19 * v13;
  v29 = -v13;
  v30 = v28;
  v50 = v29;
  v47 = a1;
LABEL_38:
  v31 = a3;
  v45 = v30;
  v48 = a2 + v29;
  v49 = a2;
  while (1)
  {
    if (v28 <= a4)
    {
      v55 = a2;
      goto LABEL_60;
    }

    if (a2 <= a1)
    {
      break;
    }

    v46 = v30;
    v32 = a4;
    a3 = v31 + v50;
    v33 = v28 + v50;
    v34 = v31;
    sub_26A4D7E54();
    v35 = v11;
    v36 = v51;
    sub_26A4D7E54();
    sub_26A80F60C();
    v38 = v37;
    v39 = v36;
    v11 = v35;
    sub_26A4DBD10(v39, &qword_2803ACD18);
    sub_26A4DBD10(v35, &qword_2803ACD18);
    if (v38)
    {
      v41 = v34 < v49 || a3 >= v49;
      a4 = v32;
      if (v41)
      {
        a2 = v48;
        swift_arrayInitWithTakeFrontToBack();
        v30 = v46;
        a1 = v47;
        v29 = v50;
      }

      else
      {
        v30 = v46;
        v15 = v34 == v49;
        a1 = v47;
        v42 = v48;
        a2 = v48;
        v29 = v50;
        if (!v15)
        {
          v43 = v46;
          swift_arrayInitWithTakeBackToFront();
          a2 = v42;
          v30 = v43;
        }
      }

      goto LABEL_38;
    }

    v40 = v34 < v28 || a3 >= v28;
    a4 = v32;
    if (v40)
    {
      swift_arrayInitWithTakeFrontToBack();
      v31 = a3;
      v28 = v33;
      v30 = v33;
      a2 = v49;
      a1 = v47;
    }

    else
    {
      v30 = v33;
      v15 = v28 == v34;
      v31 = a3;
      v28 = v33;
      a2 = v49;
      a1 = v47;
      if (!v15)
      {
        swift_arrayInitWithTakeBackToFront();
        v31 = a3;
        v28 = v33;
        v30 = v33;
      }
    }
  }

  v55 = a2;
  v30 = v45;
LABEL_60:
  v53 = v30;
LABEL_61:
  sub_26A544C5C(&v55, &v54, &v53);
}

uint64_t sub_26A823D34(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 40;
  v10 = (a3 - a2) / 40;
  if (v9 < v10)
  {
    sub_26A4C23DC(a1, (a2 - a1) / 40, a4);
    for (i = &v5[40 * v9]; ; i = v13)
    {
      if (v5 >= i || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_30;
      }

      v13 = i;
      v14 = *v7;
      v15 = *(v7 + 8);
      v16 = *(v7 + 16);
      v17 = *(v7 + 24);
      v18 = *(v7 + 32);
      v19 = *v5;
      v20 = *(v5 + 1);
      v21 = *(v5 + 2);
      v22 = v5[24];
      v69 = *(v5 + 4);
      v70 = v15;
      v71 = v16;
      v72 = v17;
      v73 = v18;
      v66 = v20;
      v67 = v21;
      v68 = v22;

      v23 = v74;
      v24 = a5(v14, &v70, v19, &v66);
      v74 = v23;
      if (v23)
      {

        v56 = (v13 - v5) / 40;
        v57 = v8 < v5 || v8 >= &v5[40 * v56];
        if (v57 || v8 != v5)
        {
          v53 = 40 * v56;
          v54 = v8;
          v55 = v5;
          goto LABEL_48;
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v7;
      v27 = v8 == v7;
      v7 += 40;
      if (!v27)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 += 40;
    }

    v26 = v5;
    v27 = v8 == v5;
    v5 += 40;
    if (v27)
    {
      goto LABEL_14;
    }

LABEL_13:
    v28 = *v26;
    v29 = *(v26 + 16);
    *(v8 + 32) = *(v26 + 32);
    *v8 = v28;
    *(v8 + 16) = v29;
    goto LABEL_14;
  }

  sub_26A4C23DC(a2, (a3 - a2) / 40, a4);
  v63 = v5;
  v64 = &v5[40 * v10];
  v62 = v8;
LABEL_16:
  v30 = 0;
  v61 = v7 - 40;
  while (1)
  {
    i = &v64[v30];
    if (&v64[v30] <= v5 || v7 <= v8)
    {
LABEL_30:
      v51 = (i - v5) / 40;
      v52 = v7 < v5 || v7 >= &v5[40 * v51];
      if (v52 || v7 != v5)
      {
        v53 = 40 * v51;
        v54 = v7;
        v55 = v5;
        goto LABEL_48;
      }

      return 1;
    }

    v32 = i - 40;
    v33 = *(i - 5);
    v34 = *(i - 4);
    v35 = *(i - 3);
    v36 = v32[24];
    v37 = *(v32 + 4);
    v38 = *(v7 - 40);
    v39 = *(v7 - 32);
    v40 = *(v7 - 24);
    v41 = *(v7 - 16);
    v69 = *(v7 - 8);
    v70 = v34;
    v71 = v35;
    v72 = v36;
    v73 = v37;
    v66 = v39;
    v67 = v40;
    v68 = v41;

    v42 = v74;
    v43 = a5(v33, &v70, v38, &v66);
    v74 = v42;
    if (v42)
    {
      break;
    }

    v44 = v43;

    v45 = v6 + v30;
    v46 = v6 + v30 - 40;
    if (v44)
    {
      v5 = v63;
      v64 += v30;
      v6 = v6 + v30 - 40;
      v27 = v45 == v7;
      v8 = v62;
      v7 -= 40;
      if (!v27)
      {
        v49 = *v61;
        v50 = *(v61 + 16);
        *(v46 + 32) = *(v61 + 32);
        *v46 = v49;
        *(v46 + 16) = v50;
        v7 = v61;
        v6 = v46;
      }

      goto LABEL_16;
    }

    if (&v64[v30] != (v6 + v30))
    {
      v47 = *v32;
      v48 = *(v32 + 1);
      *(v6 + v30 - 8) = *(v32 + 4);
      *v46 = v47;
      *(v6 + v30 - 24) = v48;
    }

    v30 -= 40;
    v8 = v62;
    v5 = v63;
  }

  v55 = v63;
  v58 = (v64 - v63 + v30) / 40;
  if (v7 < v63 || v7 >= &v63[40 * v58])
  {
    v53 = 40 * v58;
    v54 = v7;
  }

  else
  {
    if (v7 == v63)
    {
      return 1;
    }

    v53 = 40 * v58;
    v54 = v7;
  }

LABEL_48:
  memmove(v54, v55, v53);
  return 1;
}

void sub_26A8240F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD10);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_63;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_64;
  }

  v18 = v14 / v13;
  v55 = a1;
  v54 = a4;
  v19 = v16 / v13;
  if (v14 / v13 < v16 / v13)
  {
    sub_26A7A384C(a1, v14 / v13, a4);
    v49 = a3;
    v50 = a4 + v18 * v13;
    v53 = v50;
    v20 = v13;
    while (1)
    {
      if (a4 >= v50 || a2 >= a3)
      {
        goto LABEL_61;
      }

      v22 = v20;
      sub_26A4D7E54();
      v23 = v51;
      sub_26A4D7E54();
      sub_26A80F6C0();
      v25 = v24;
      sub_26A4DBD10(v23, &qword_2803ACD10);
      sub_26A4DBD10(v11, &qword_2803ACD10);
      if ((v25 & 1) == 0)
      {
        break;
      }

      if (a1 < a2 || a1 >= a2 + v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = v22;
      a2 += v22;
LABEL_36:
      a1 += v20;
      v55 = a1;
      a3 = v49;
    }

    if (a1 < a4 || a1 >= a4 + v22)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v20 = v22;
      if (a1 == a4)
      {
LABEL_35:
        v54 = a4 + v22;
        a4 += v22;
        goto LABEL_36;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v20 = v22;
    goto LABEL_35;
  }

  sub_26A7A384C(a2, v16 / v13, a4);
  v28 = a4 + v19 * v13;
  v29 = -v13;
  v30 = v28;
  v50 = v29;
  v47 = a1;
LABEL_38:
  v31 = a3;
  v45 = v30;
  v48 = a2 + v29;
  v49 = a2;
  while (1)
  {
    if (v28 <= a4)
    {
      v55 = a2;
      goto LABEL_60;
    }

    if (a2 <= a1)
    {
      break;
    }

    v46 = v30;
    v32 = a4;
    a3 = v31 + v50;
    v33 = v28 + v50;
    v34 = v31;
    sub_26A4D7E54();
    v35 = v11;
    v36 = v51;
    sub_26A4D7E54();
    sub_26A80F6C0();
    v38 = v37;
    v39 = v36;
    v11 = v35;
    sub_26A4DBD10(v39, &qword_2803ACD10);
    sub_26A4DBD10(v35, &qword_2803ACD10);
    if (v38)
    {
      v41 = v34 < v49 || a3 >= v49;
      a4 = v32;
      if (v41)
      {
        a2 = v48;
        swift_arrayInitWithTakeFrontToBack();
        v30 = v46;
        a1 = v47;
        v29 = v50;
      }

      else
      {
        v30 = v46;
        v15 = v34 == v49;
        a1 = v47;
        v42 = v48;
        a2 = v48;
        v29 = v50;
        if (!v15)
        {
          v43 = v46;
          swift_arrayInitWithTakeBackToFront();
          a2 = v42;
          v30 = v43;
        }
      }

      goto LABEL_38;
    }

    v40 = v34 < v28 || a3 >= v28;
    a4 = v32;
    if (v40)
    {
      swift_arrayInitWithTakeFrontToBack();
      v31 = a3;
      v28 = v33;
      v30 = v33;
      a2 = v49;
      a1 = v47;
    }

    else
    {
      v30 = v33;
      v15 = v28 == v34;
      v31 = a3;
      v28 = v33;
      a2 = v49;
      a1 = v47;
      if (!v15)
      {
        swift_arrayInitWithTakeBackToFront();
        v31 = a3;
        v28 = v33;
        v30 = v33;
      }
    }
  }

  v55 = a2;
  v30 = v45;
LABEL_60:
  v53 = v30;
LABEL_61:
  sub_26A544C70(&v55, &v54, &v53);
}

uint64_t sub_26A8245A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  v8 = MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_63;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_64;
  }

  v19 = v15 / v14;
  v56 = a1;
  v55 = a4;
  v20 = v17 / v14;
  if (v15 / v14 < v17 / v14)
  {
    sub_26A7A38A0(a1, v15 / v14, a4);
    v50 = a3;
    v51 = a4 + v19 * v14;
    v54 = v51;
    v21 = v14;
    while (1)
    {
      if (a4 >= v51 || a2 >= a3)
      {
        goto LABEL_61;
      }

      v23 = v21;
      sub_26A4D7E54();
      v24 = v52;
      sub_26A4D7E54();
      sub_26A80F76C();
      v26 = v25;
      sub_26A4DBD10(v24, &qword_2803ACCF0);
      sub_26A4DBD10(v12, &qword_2803ACCF0);
      if ((v26 & 1) == 0)
      {
        break;
      }

      if (a1 < a2 || a1 >= a2 + v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v21 = v23;
      a2 += v23;
LABEL_36:
      a1 += v21;
      v56 = a1;
      a3 = v50;
    }

    if (a1 < a4 || a1 >= a4 + v23)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v21 = v23;
      if (a1 == a4)
      {
LABEL_35:
        v55 = a4 + v23;
        a4 += v23;
        goto LABEL_36;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v21 = v23;
    goto LABEL_35;
  }

  sub_26A7A38A0(a2, v17 / v14, a4);
  v29 = a4 + v20 * v14;
  v30 = -v14;
  v31 = v29;
  v51 = v30;
  v48 = a1;
LABEL_38:
  v32 = a3;
  v46 = v31;
  v49 = a2 + v30;
  v50 = a2;
  while (1)
  {
    if (v29 <= a4)
    {
      v56 = a2;
      goto LABEL_60;
    }

    if (a2 <= a1)
    {
      break;
    }

    v47 = v31;
    v33 = a4;
    a3 = v32 + v51;
    v34 = v29 + v51;
    v35 = v32;
    sub_26A4D7E54();
    v36 = v12;
    v37 = v52;
    sub_26A4D7E54();
    sub_26A80F76C();
    v39 = v38;
    v40 = v37;
    v12 = v36;
    sub_26A4DBD10(v40, &qword_2803ACCF0);
    sub_26A4DBD10(v36, &qword_2803ACCF0);
    if (v39)
    {
      v42 = v35 < v50 || a3 >= v50;
      a4 = v33;
      if (v42)
      {
        a2 = v49;
        swift_arrayInitWithTakeFrontToBack();
        v31 = v47;
        a1 = v48;
        v30 = v51;
      }

      else
      {
        v31 = v47;
        v16 = v35 == v50;
        a1 = v48;
        v43 = v49;
        a2 = v49;
        v30 = v51;
        if (!v16)
        {
          v44 = v47;
          swift_arrayInitWithTakeBackToFront();
          a2 = v43;
          v31 = v44;
        }
      }

      goto LABEL_38;
    }

    v41 = v35 < v29 || a3 >= v29;
    a4 = v33;
    if (v41)
    {
      swift_arrayInitWithTakeFrontToBack();
      v32 = a3;
      v29 = v34;
      v31 = v34;
      a2 = v50;
      a1 = v48;
    }

    else
    {
      v31 = v34;
      v16 = v29 == v35;
      v32 = a3;
      v29 = v34;
      a2 = v50;
      a1 = v48;
      if (!v16)
      {
        swift_arrayInitWithTakeBackToFront();
        v32 = a3;
        v29 = v34;
        v31 = v34;
      }
    }
  }

  v56 = a2;
  v31 = v46;
LABEL_60:
  v54 = v31;
LABEL_61:
  sub_26A544C84(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_26A824A58(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 368;
  v9 = (a3 - a2) / 368;
  if (v8 < v9)
  {
    sub_26A7A3910(a1, (a2 - a1) / 368, a4);
    v10 = &v4[368 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_26A4D7E54();
      sub_26A4D7E54();
      v12 = sub_26A80F794(v26, v27, v24, v25);
      sub_26A4DBD10(&v24, &qword_2803B86E8);
      sub_26A4DBD10(&v26, &qword_2803B86E8);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 368;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 368;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 368;
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v13, 0x170uLL);
    goto LABEL_13;
  }

  sub_26A7A3910(a2, (a3 - a2) / 368, a4);
  v15 = &v4[368 * v9];
LABEL_15:
  v28 = v6 - 368;
  v5 -= 368;
  for (i = v15 - 368; ; i -= 368)
  {
    v10 = i + 368;
    if (i + 368 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_26A4D7E54();
    sub_26A4D7E54();
    v18 = sub_26A80F794(v26, v27, v24, v25);
    sub_26A4DBD10(&v24, &qword_2803B86E8);
    sub_26A4DBD10(&v26, &qword_2803B86E8);
    v19 = v5 + 368;
    if (v18)
    {
      v15 = i + 368;
      v14 = v19 == v6;
      v20 = v28;
      v6 = v28;
      if (!v14)
      {
        memmove(v5, v28, 0x170uLL);
        v6 = v20;
      }

      goto LABEL_15;
    }

    if (v10 != v19)
    {
      memmove(v5, i, 0x170uLL);
    }

    v5 -= 368;
  }

LABEL_28:
  v21 = (v10 - v4) / 368;
  if (v6 != v4 || v6 >= &v4[368 * v21])
  {
    memmove(v6, v4, 368 * v21);
  }

  return 1;
}

void sub_26A824CF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD00);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_63;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_64;
  }

  v18 = v14 / v13;
  v55 = a1;
  v54 = a4;
  v19 = v16 / v13;
  if (v14 / v13 < v16 / v13)
  {
    sub_26A7A3938(a1, v14 / v13, a4);
    v49 = a3;
    v50 = a4 + v18 * v13;
    v53 = v50;
    v20 = v13;
    while (1)
    {
      if (a4 >= v50 || a2 >= a3)
      {
        goto LABEL_61;
      }

      v22 = v20;
      sub_26A4D7E54();
      v23 = v51;
      sub_26A4D7E54();
      sub_26A80FA2C();
      v25 = v24;
      sub_26A4DBD10(v23, &qword_2803ACD00);
      sub_26A4DBD10(v11, &qword_2803ACD00);
      if ((v25 & 1) == 0)
      {
        break;
      }

      if (a1 < a2 || a1 >= a2 + v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = v22;
      a2 += v22;
LABEL_36:
      a1 += v20;
      v55 = a1;
      a3 = v49;
    }

    if (a1 < a4 || a1 >= a4 + v22)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v20 = v22;
      if (a1 == a4)
      {
LABEL_35:
        v54 = a4 + v22;
        a4 += v22;
        goto LABEL_36;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v20 = v22;
    goto LABEL_35;
  }

  sub_26A7A3938(a2, v16 / v13, a4);
  v28 = a4 + v19 * v13;
  v29 = -v13;
  v30 = v28;
  v50 = v29;
  v47 = a1;
LABEL_38:
  v31 = a3;
  v45 = v30;
  v48 = a2 + v29;
  v49 = a2;
  while (1)
  {
    if (v28 <= a4)
    {
      v55 = a2;
      goto LABEL_60;
    }

    if (a2 <= a1)
    {
      break;
    }

    v46 = v30;
    v32 = a4;
    a3 = v31 + v50;
    v33 = v28 + v50;
    v34 = v31;
    sub_26A4D7E54();
    v35 = v11;
    v36 = v51;
    sub_26A4D7E54();
    sub_26A80FA2C();
    v38 = v37;
    v39 = v36;
    v11 = v35;
    sub_26A4DBD10(v39, &qword_2803ACD00);
    sub_26A4DBD10(v35, &qword_2803ACD00);
    if (v38)
    {
      v41 = v34 < v49 || a3 >= v49;
      a4 = v32;
      if (v41)
      {
        a2 = v48;
        swift_arrayInitWithTakeFrontToBack();
        v30 = v46;
        a1 = v47;
        v29 = v50;
      }

      else
      {
        v30 = v46;
        v15 = v34 == v49;
        a1 = v47;
        v42 = v48;
        a2 = v48;
        v29 = v50;
        if (!v15)
        {
          v43 = v46;
          swift_arrayInitWithTakeBackToFront();
          a2 = v42;
          v30 = v43;
        }
      }

      goto LABEL_38;
    }

    v40 = v34 < v28 || a3 >= v28;
    a4 = v32;
    if (v40)
    {
      swift_arrayInitWithTakeFrontToBack();
      v31 = a3;
      v28 = v33;
      v30 = v33;
      a2 = v49;
      a1 = v47;
    }

    else
    {
      v30 = v33;
      v15 = v28 == v34;
      v31 = a3;
      v28 = v33;
      a2 = v49;
      a1 = v47;
      if (!v15)
      {
        swift_arrayInitWithTakeBackToFront();
        v31 = a3;
        v28 = v33;
        v30 = v33;
      }
    }
  }

  v55 = a2;
  v30 = v45;
LABEL_60:
  v53 = v30;
LABEL_61:
  sub_26A544C98(&v55, &v54, &v53);
}

uint64_t sub_26A8251A0(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t, __int128 *, uint64_t, __int128 *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 48;
  v10 = (a3 - a2) / 48;
  if (v9 >= v10)
  {
    sub_26A7A3964(a2, (a3 - a2) / 48, a4);
    v60 = &v5[48 * v10];
    __src = v5;
LABEL_15:
    v29 = 0;
    v57 = (v7 - 48);
    while (1)
    {
      i = &v60[v29];
      if (&v60[v29] <= v5 || v7 <= a1)
      {
LABEL_29:
        v47 = (i - v5) / 48;
        v48 = v7 < v5 || v7 >= &v5[48 * v47];
        if (v48 || v7 != v5)
        {
          v49 = 48 * v47;
          v50 = v7;
          v51 = v5;
          goto LABEL_47;
        }

        return 1;
      }

      v31 = v6;
      v32 = i - 48;
      v33 = *(i - 6);
      v34 = *(i - 1);
      v35 = *(v7 - 48);
      v36 = *(v7 - 8);
      v37 = *(i - 24);
      v65 = *(i - 40);
      v66 = v37;
      v67 = v34;
      v38 = *(v7 - 24);
      v62 = *(v7 - 40);
      v63 = v38;
      v64 = v36;

      v39 = v68;
      v40 = a5(v33, &v65, v35, &v62);
      v68 = v39;
      if (v39)
      {
        break;
      }

      v41 = v40;

      v42 = (v31 + v29 - 48);
      if (v41)
      {
        v60 += v29;
        v6 = v31 + v29 - 48;
        v26 = v31 + v29 == v7;
        v5 = __src;
        v7 -= 48;
        if (!v26)
        {
          v45 = *v57;
          v46 = v57[2];
          *(v31 + v29 - 32) = v57[1];
          *(v31 + v29 - 16) = v46;
          *v42 = v45;
          v7 = v57;
          v6 = v31 + v29 - 48;
        }

        goto LABEL_15;
      }

      v6 = v31;
      if (&v60[v29] != (v31 + v29))
      {
        v43 = *v32;
        v44 = *(v32 + 2);
        *(v31 + v29 - 32) = *(v32 + 1);
        *(v31 + v29 - 16) = v44;
        *v42 = v43;
      }

      v29 -= 48;
      v5 = __src;
    }

    v51 = __src;
    v54 = (v60 - __src + v29) / 48;
    if (v7 < __src || v7 >= &__src[48 * v54])
    {
      v49 = 48 * v54;
      v50 = v7;
      goto LABEL_47;
    }

    if (v7 != __src)
    {
      v49 = 48 * v54;
      v50 = v7;
      goto LABEL_47;
    }
  }

  else
  {
    sub_26A7A3964(a1, (a2 - a1) / 48, a4);
    for (i = &v5[48 * v9]; ; i = v13)
    {
      if (v5 >= i || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v13 = i;
      v14 = v6;
      v15 = *v7;
      v16 = *(v7 + 40);
      v17 = *v5;
      v18 = *(v5 + 5);
      v19 = *(v7 + 24);
      v20 = *(v5 + 8);
      v21 = *(v5 + 24);
      v65 = *(v7 + 8);
      v66 = v19;
      v67 = v16;
      v62 = v20;
      v63 = v21;
      v64 = v18;

      v22 = v68;
      v23 = a5(v15, &v65, v17, &v62);
      v68 = v22;
      if (v22)
      {
        break;
      }

      v24 = v23;

      if (v24)
      {
        v25 = v7;
        v26 = v8 == v7;
        v7 += 48;
      }

      else
      {
        v25 = v5;
        v26 = v8 == v5;
        v5 += 48;
      }

      v6 = v14;
      if (!v26)
      {
        v27 = *v25;
        v28 = v25[2];
        *(v8 + 1) = v25[1];
        *(v8 + 2) = v28;
        *v8 = v27;
      }

      v8 += 48;
    }

    v52 = (v13 - v5) / 48;
    v53 = v8 < v5 || v8 >= &v5[48 * v52];
    if (v53 || v8 != v5)
    {
      v49 = 48 * v52;
      v50 = v8;
      v51 = v5;
LABEL_47:
      memmove(v50, v51, v49);
    }
  }

  return 1;
}

uint64_t sub_26A825550(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 96;
  v9 = (a3 - a2) / 96;
  if (v8 < v9)
  {
    sub_26A7A398C(a1, (a2 - a1) / 96, a4);
    v10 = &v4[96 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_26A4D7E54();
      sub_26A4D7E54();
      v12 = sub_26A80FAE0(v26, v27, v24, v25);
      sub_26A4DBD10(&v24, &qword_2803B8738);
      sub_26A4DBD10(&v26, &qword_2803B8738);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 96;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 96;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 96;
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v13, 0x60uLL);
    goto LABEL_13;
  }

  sub_26A7A398C(a2, (a3 - a2) / 96, a4);
  v15 = &v4[96 * v9];
LABEL_15:
  v28 = v6 - 96;
  v5 -= 96;
  for (i = v15 - 96; ; i -= 96)
  {
    v10 = i + 96;
    if (i + 96 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_26A4D7E54();
    sub_26A4D7E54();
    v18 = sub_26A80FAE0(v26, v27, v24, v25);
    sub_26A4DBD10(&v24, &qword_2803B8738);
    sub_26A4DBD10(&v26, &qword_2803B8738);
    v19 = v5 + 96;
    if (v18)
    {
      v15 = i + 96;
      v14 = v19 == v6;
      v20 = v28;
      v6 = v28;
      if (!v14)
      {
        memmove(v5, v28, 0x60uLL);
        v6 = v20;
      }

      goto LABEL_15;
    }

    if (v10 != v19)
    {
      memmove(v5, i, 0x60uLL);
    }

    v5 -= 96;
  }

LABEL_28:
  v21 = (v10 - v4) / 96;
  if (v6 != v4 || v6 >= &v4[96 * v21])
  {
    memmove(v6, v4, 96 * v21);
  }

  return 1;
}

void sub_26A8257E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF8);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_63;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_64;
  }

  v18 = v14 / v13;
  v55 = a1;
  v54 = a4;
  v19 = v16 / v13;
  if (v14 / v13 < v16 / v13)
  {
    sub_26A7A39B4(a1, v14 / v13, a4);
    v49 = a3;
    v50 = a4 + v18 * v13;
    v53 = v50;
    v20 = v13;
    while (1)
    {
      if (a4 >= v50 || a2 >= a3)
      {
        goto LABEL_61;
      }

      v22 = v20;
      sub_26A4D7E54();
      v23 = v51;
      sub_26A4D7E54();
      sub_26A80FD78();
      v25 = v24;
      sub_26A4DBD10(v23, &qword_2803ACCF8);
      sub_26A4DBD10(v11, &qword_2803ACCF8);
      if ((v25 & 1) == 0)
      {
        break;
      }

      if (a1 < a2 || a1 >= a2 + v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = v22;
      a2 += v22;
LABEL_36:
      a1 += v20;
      v55 = a1;
      a3 = v49;
    }

    if (a1 < a4 || a1 >= a4 + v22)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v20 = v22;
      if (a1 == a4)
      {
LABEL_35:
        v54 = a4 + v22;
        a4 += v22;
        goto LABEL_36;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v20 = v22;
    goto LABEL_35;
  }

  sub_26A7A39B4(a2, v16 / v13, a4);
  v28 = a4 + v19 * v13;
  v29 = -v13;
  v30 = v28;
  v50 = v29;
  v47 = a1;
LABEL_38:
  v31 = a3;
  v45 = v30;
  v48 = a2 + v29;
  v49 = a2;
  while (1)
  {
    if (v28 <= a4)
    {
      v55 = a2;
      goto LABEL_60;
    }

    if (a2 <= a1)
    {
      break;
    }

    v46 = v30;
    v32 = a4;
    a3 = v31 + v50;
    v33 = v28 + v50;
    v34 = v31;
    sub_26A4D7E54();
    v35 = v11;
    v36 = v51;
    sub_26A4D7E54();
    sub_26A80FD78();
    v38 = v37;
    v39 = v36;
    v11 = v35;
    sub_26A4DBD10(v39, &qword_2803ACCF8);
    sub_26A4DBD10(v35, &qword_2803ACCF8);
    if (v38)
    {
      v41 = v34 < v49 || a3 >= v49;
      a4 = v32;
      if (v41)
      {
        a2 = v48;
        swift_arrayInitWithTakeFrontToBack();
        v30 = v46;
        a1 = v47;
        v29 = v50;
      }

      else
      {
        v30 = v46;
        v15 = v34 == v49;
        a1 = v47;
        v42 = v48;
        a2 = v48;
        v29 = v50;
        if (!v15)
        {
          v43 = v46;
          swift_arrayInitWithTakeBackToFront();
          a2 = v42;
          v30 = v43;
        }
      }

      goto LABEL_38;
    }

    v40 = v34 < v28 || a3 >= v28;
    a4 = v32;
    if (v40)
    {
      swift_arrayInitWithTakeFrontToBack();
      v31 = a3;
      v28 = v33;
      v30 = v33;
      a2 = v49;
      a1 = v47;
    }

    else
    {
      v30 = v33;
      v15 = v28 == v34;
      v31 = a3;
      v28 = v33;
      a2 = v49;
      a1 = v47;
      if (!v15)
      {
        swift_arrayInitWithTakeBackToFront();
        v31 = a3;
        v28 = v33;
        v30 = v33;
      }
    }
  }

  v55 = a2;
  v30 = v45;
LABEL_60:
  v53 = v30;
LABEL_61:
  sub_26A544CAC(&v55, &v54, &v53);
}

uint64_t sub_26A825C98(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 112;
  v9 = (a3 - a2) / 112;
  if (v8 < v9)
  {
    sub_26A7A3A90(a1, (a2 - a1) / 112, a4);
    v10 = &v4[112 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_26A4D7E54();
      sub_26A4D7E54();
      v12 = sub_26A80FDA0(v26, v27, v24, v25);
      sub_26A4DBD10(&v24, &qword_2803B8730);
      sub_26A4DBD10(&v26, &qword_2803B8730);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 112;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 112;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 112;
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v13, 0x70uLL);
    goto LABEL_13;
  }

  sub_26A7A3A90(a2, (a3 - a2) / 112, a4);
  v15 = &v4[112 * v9];
LABEL_15:
  v28 = v6 - 112;
  v5 -= 112;
  for (i = v15 - 112; ; i -= 112)
  {
    v10 = i + 112;
    if (i + 112 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_26A4D7E54();
    sub_26A4D7E54();
    v18 = sub_26A80FDA0(v26, v27, v24, v25);
    sub_26A4DBD10(&v24, &qword_2803B8730);
    sub_26A4DBD10(&v26, &qword_2803B8730);
    v19 = v5 + 112;
    if (v18)
    {
      v15 = i + 112;
      v14 = v19 == v6;
      v20 = v28;
      v6 = v28;
      if (!v14)
      {
        memmove(v5, v28, 0x70uLL);
        v6 = v20;
      }

      goto LABEL_15;
    }

    if (v10 != v19)
    {
      memmove(v5, i, 0x70uLL);
    }

    v5 -= 112;
  }

LABEL_28:
  v21 = (v10 - v4) / 112;
  if (v6 != v4 || v6 >= &v4[112 * v21])
  {
    memmove(v6, v4, 112 * v21);
  }

  return 1;
}

uint64_t sub_26A825F30(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t, __int128 *, uint64_t, __int128 *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 32;
  v10 = (a3 - a2) / 32;
  if (v9 >= v10)
  {
    sub_26A7A37E0(a2, (a3 - a2) / 32, a4);
    v55 = &v5[32 * v10];
    __src = v5;
LABEL_15:
    v25 = 0;
    v52 = (v7 - 32);
    while (1)
    {
      v11 = &v55[v25];
      if (&v55[v25] <= v5 || v7 <= a1)
      {
LABEL_29:
        v42 = (v11 - v5) / 32;
        if (v7 < v5 || v7 >= &v5[32 * v42])
        {
          v44 = 32 * v42;
          v45 = v7;
          goto LABEL_43;
        }

        if (v7 != v5)
        {
          v44 = 32 * v42;
          v45 = v7;
          goto LABEL_52;
        }

        return 1;
      }

      v27 = v7;
      v28 = v6;
      v29 = v11 - 32;
      v30 = *(v11 - 4);
      v31 = *(v11 - 1);
      v32 = *(v27 - 32);
      v33 = *(v27 - 8);
      v59 = *(v11 - 24);
      v60 = v31;
      v34 = v27;
      v57 = *(v27 - 24);
      v58 = v33;

      v35 = v61;
      v36 = a5(v30, &v59, v32, &v57);
      v61 = v35;
      if (v35)
      {
        break;
      }

      v37 = v36;

      v38 = v28 + v25;
      v39 = (v28 + v25 - 32);
      if (v37)
      {
        v55 += v25;
        v6 = v28 + v25 - 32;
        v5 = __src;
        v7 = v52;
        if (v38 != v34)
        {
          v41 = v52[1];
          *v39 = *v52;
          v39[1] = v41;
          v7 = v52;
          v6 = v39;
        }

        goto LABEL_15;
      }

      v6 = v28;
      v23 = &v55[v25] == (v28 + v25);
      v7 = v34;
      if (!v23)
      {
        v40 = *(v29 + 1);
        *v39 = *v29;
        v39[1] = v40;
      }

      v25 -= 32;
      v5 = __src;
    }

    v48 = __src;
    v49 = (v55 - __src + v25) / 32;
    if (v34 < __src || v34 >= &__src[32 * v49])
    {
      v44 = 32 * v49;
      v45 = v34;
      goto LABEL_55;
    }

    if (v34 != __src)
    {
      v44 = 32 * v49;
      v45 = v34;
      goto LABEL_55;
    }
  }

  else
  {
    sub_26A7A37E0(a1, (a2 - a1) / 32, a4);
    v11 = &v5[32 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v13 = v6;
      v14 = *v7;
      v15 = *(v7 + 24);
      v16 = *v5;
      v17 = *(v5 + 3);
      v18 = *(v5 + 8);
      v59 = *(v7 + 8);
      v60 = v15;
      v57 = v18;
      v58 = v17;

      v19 = v61;
      v20 = a5(v14, &v59, v16, &v57);
      v61 = v19;
      if (v19)
      {
        break;
      }

      v21 = v20;

      if (v21)
      {
        v22 = v7;
        v23 = v8 == v7;
        v7 += 32;
      }

      else
      {
        v22 = v5;
        v23 = v8 == v5;
        v5 += 32;
      }

      v6 = v13;
      if (!v23)
      {
        v24 = v22[1];
        *v8 = *v22;
        *(v8 + 1) = v24;
      }

      v8 += 32;
    }

    v46 = (v11 - v5) / 32;
    if (v8 < v5 || v8 >= &v5[32 * v46])
    {
      v44 = 32 * v46;
      v45 = v8;
LABEL_43:
      v48 = v5;
LABEL_55:
      memmove(v45, v48, v44);
      return 1;
    }

    if (v8 != v5)
    {
      v44 = 32 * v46;
      v45 = v8;
LABEL_52:
      v48 = v5;
      goto LABEL_55;
    }
  }

  return 1;
}

uint64_t sub_26A8262BC(unint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(unint64_t, uint64_t, char *))
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = (a2 - a1) / 56;
  v13 = (a3 - a2) / 56;
  if (v12 >= v13)
  {
    a7(a2, (a3 - a2) / 56, a4);
    v55 = &v8[56 * v13];
    v53 = v8;
LABEL_15:
    v28 = 0;
    v52 = v10 - 56;
    while (1)
    {
      i = &v55[v28];
      if (&v55[v28] <= v8 || v10 <= a1)
      {
LABEL_29:
        v44 = &v8[56 * ((i - v8) / 56)];
        v45 = v10 < v8 || v10 >= v44;
        if (v45 || v10 != v8)
        {
          v46 = OUTLINED_FUNCTION_103_1();
          v48 = v8;
          goto LABEL_47;
        }

        return 1;
      }

      v30 = v9;
      v31 = i - 56;
      OUTLINED_FUNCTION_134_0();

      v32 = OUTLINED_FUNCTION_69_4();
      v34 = v33(v32);
      if (v7)
      {
        break;
      }

      v35 = v34;

      v36 = v9 + v28;
      v37 = (v9 + v28 - 56);
      if (v35)
      {
        v55 += v28;
        v9 = v9 + v28 - 56;
        v24 = v36 == v10;
        v8 = v53;
        v10 -= 56;
        if (!v24)
        {
          v41 = *v52;
          v42 = *(v52 + 16);
          v43 = *(v52 + 32);
          *(v30 + v28 - 8) = *(v52 + 48);
          *(v30 + v28 - 40) = v42;
          *(v30 + v28 - 24) = v43;
          *v37 = v41;
          v10 = v52;
          v9 = v30 + v28 - 56;
        }

        goto LABEL_15;
      }

      if (&v55[v28] != (v9 + v28))
      {
        v38 = *v31;
        v39 = *(v31 + 1);
        v40 = *(v31 + 2);
        *(v9 + v28 - 8) = *(v31 + 6);
        *(v9 + v28 - 40) = v39;
        *(v9 + v28 - 24) = v40;
        *v37 = v38;
      }

      v28 -= 56;
      v8 = v53;
    }

    v50 = v10 < v53 || v10 >= v53 + 56 * (&v55[v28 - v53] / 56);
    if (v50 || v10 != v53)
    {
      v46 = OUTLINED_FUNCTION_103_1();
      goto LABEL_47;
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_114_1();
    v15(v14);
    for (i = &v8[56 * v12]; ; i = v18)
    {
      if (v8 >= i || v10 >= v9)
      {
        v10 = v11;
        goto LABEL_29;
      }

      v18 = i;
      OUTLINED_FUNCTION_134_0();

      v19 = OUTLINED_FUNCTION_69_4();
      v21 = v20(v19);
      if (v7)
      {
        break;
      }

      v22 = v21;

      if (v22)
      {
        v23 = v10;
        v24 = v11 == v10;
        v10 += 56;
      }

      else
      {
        v23 = v8;
        v24 = v11 == v8;
        v8 += 56;
      }

      if (!v24)
      {
        v25 = *v23;
        v26 = *(v23 + 16);
        v27 = *(v23 + 32);
        *(v11 + 48) = *(v23 + 48);
        *(v11 + 16) = v26;
        *(v11 + 32) = v27;
        *v11 = v25;
      }

      v11 += 56;
    }

    v49 = v11 < v8 || v11 >= &v8[56 * ((v18 - v8) / 56)];
    if (v49 || v11 != v8)
    {
      v46 = OUTLINED_FUNCTION_141_1();
LABEL_47:
      memmove(v46, v48, v47);
    }
  }

  return 1;
}

void *sub_26A826640(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A826728(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = *(*(a4 + 48) + 8 * v16);
      v18 = (*(a4 + 56) + 32 * v16);
      v19 = *v18;
      v20 = v18[1];
      v9 &= v9 - 1;
      *v11 = v17;
      *(v11 + 8) = v19;
      *(v11 + 24) = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 40;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A82688C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v23 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v16 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      sub_26A4F20CC(*(a4 + 56) + 48 * v18, &v24 + 8);
      *&v24 = v19;
      v20 = v27;
      v31 = v27;
      v21 = v26;
      v22 = v25;
      v29 = v25;
      v30 = v26;
      v28 = v24;
      *v11 = v24;
      *(v11 + 16) = v22;
      *(v11 + 32) = v21;
      *(v11 + 48) = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 56;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v23;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_26A826A34()
{
  OUTLINED_FUNCTION_28_0();
  v41 = v0;
  v42 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v39 = v10;
  v40 = v11;
  v12 = OUTLINED_FUNCTION_145_1(v8, v6, v4, v2, v10);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  OUTLINED_FUNCTION_15();
  v35 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v37 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  v36 = &v31 - v18;
  v19 = v3 + 64;
  v20 = -1 << *(v3 + 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v3 + 64);
  if (!v7)
  {
    v24 = 0;
LABEL_21:
    *v9 = v3;
    v9[1] = v19;
    v9[2] = ~v20;
    v9[3] = v24;
    v9[4] = v22;
    OUTLINED_FUNCTION_27_0();
    return;
  }

  if (!v5)
  {
    v24 = 0;
    goto LABEL_21;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v31 = -1 << *(v3 + 32);
    v32 = v9;
    v23 = 0;
    v24 = 0;
    v25 = (63 - v20) >> 6;
    v33 = v3;
    v34 = v5;
    while (1)
    {
      if (v23 >= v5)
      {
        goto LABEL_24;
      }

      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_25;
      }

      if (!v22)
      {
        while (1)
        {
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v27 >= v25)
          {
            v22 = 0;
            v9 = v32;
            goto LABEL_19;
          }

          v22 = *(v19 + 8 * v27);
          ++v24;
          if (v22)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v27 = v24;
LABEL_15:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = *(*(v3 + 48) + 8 * (v28 | (v27 << 6)));
      v41(0);
      v30 = v37;
      sub_26A827E48();
      *v30 = v29;
      sub_26A4D7EA8();
      OUTLINED_FUNCTION_33_18();
      sub_26A4D7EA8();
      v5 = v34;
      if (v26 == v34)
      {
        break;
      }

      v7 += *(v35 + 72);

      v23 = v26;
      v24 = v27;
      v3 = v33;
    }

    v24 = v27;
    v9 = v32;
    v3 = v33;
LABEL_19:
    v20 = v31;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void *sub_26A826CA8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v20 = -1 << *(a4 + 32);
    v21 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = *(*(a4 + 48) + 8 * v16);
      v19 = (*(a4 + 56) + 176 * v16);
      memcpy(__dst, v19, sizeof(__dst));
      memcpy(__src, v19, sizeof(__src));
      *v9 = v18;
      memcpy(v9 + 1, __src, 0xB0uLL);
      if (v13 == v8)
      {
        break;
      }

      v9 += 23;

      result = sub_26A54DFFC(__dst, v22);
      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    sub_26A54DFFC(__dst, v22);
    v11 = v14;
    a4 = v17;
LABEL_19:
    v5 = v20;
    result = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26A826E68(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (v15 << 9) | (8 * __clz(__rbit64(v9)));
      v17 = *(*(a4 + 56) + v16);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v16);
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A826FC8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = *(*(a4 + 48) + 8 * v16);
      v9 &= v9 - 1;
      v18 = *(a4 + 56) + 32 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      *v11 = v17;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 32) = v22;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 40;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26A827140(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26A8271C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v13 = *(*(a4 + 56) + v12);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v12);
      a2[1] = v13;
      a2 += 2;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A8272BC(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v20 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v16 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      sub_26A5D1AF8(*(a4 + 56) + 360 * v18, &__src[1]);
      __src[0] = v19;
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v11, __dst, 0x170uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 368;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v20;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26A82745C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      v19 = *(a4 + 56) + 40 * v17;
      v20 = *(v19 + 32);
      v21 = *v19;
      v22 = *(v19 + 16);
      *v11 = v18;
      *(v11 + 8) = v21;
      *(v11 + 24) = v22;
      *(v11 + 40) = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 48;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A8275CC(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v20 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v16 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      sub_26A5D2400(*(a4 + 56) + 88 * v18, &__src[1]);
      __src[0] = v19;
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v11, __dst, 0x60uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 96;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v20;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26A82776C(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v20 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v16 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      sub_26A6088C0(*(a4 + 56) + 104 * v18, &__src[1]);
      __src[0] = v19;
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v11, __dst, 0x70uLL);
      if (v15 == v10)
      {
        break;
      }

      v11 += 112;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v20;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26A82790C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      v19 = *(a4 + 56) + 24 * v17;
      v20 = *(v19 + 16);
      v21 = *v19;
      *v11 = v18;
      *(v11 + 8) = v21;
      *(v11 + 24) = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 32;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26A827A78()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_27_0();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v15 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = (*(v3 + 56) + 48 * v17);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      *v11 = v18;
      *(v11 + 8) = v20;
      *(v11 + 24) = v21;
      *(v11 + 40) = v22;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 56;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26A827BF0(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  memcpy(v8, a2, sizeof(v8));
  memcpy(__dst, a4, sizeof(__dst));
  return sub_26A80F208(a1, v8, a3, __dst) & 1;
}

BOOL sub_26A827C94(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v8 = *(a2 + 32);
  v5 = a4[1];
  v9 = *a4;
  v10 = v5;
  v11 = *(a4 + 4);
  return sub_26A80FA54(a1, v7, a3);
}

uint64_t sub_26A827DF4()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A827E48()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A827E9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_84@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_57@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_14_48(__n128 *a1)
{
  result = v1[2];
  a1[1] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_15_42(__n128 *a1)
{
  result = v1[1];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_36()
{
  result = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = *(v1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_21_33(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

__n128 OUTLINED_FUNCTION_23_27(__n128 *a1)
{
  result = v1[1];
  a1[1] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_24_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 24) = a10;
  v12 = *(v10 + 16);
  *(v11 + 32) = *v10;
  *(v11 + 48) = v12;
  result = *(v10 + 32);
  *(v11 + 64) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_28()
{
  result = *v0;
  *(v1 + 32) = *v0;
  *(v1 + 40) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_21@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

double OUTLINED_FUNCTION_27_18(uint64_t a1)
{
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 40) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_15()
{
  result = *v0;
  *(v1 + 32) = *v0;
  *(v1 + 40) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_22()
{
  result = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = *(v1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_32_13(__n128 *a1)
{
  result = v1[2];
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_36_11(uint64_t a1, char a2)
{
  *(v2 + 48) = 1;
  *(v2 + 56) = 3;
  *(v2 + 64) = 1;
  *(v2 + 72) = 5;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

__n128 OUTLINED_FUNCTION_40_14(__n128 *a1)
{
  result = v1[4];
  a1[1] = result;
  return result;
}

__n128 *OUTLINED_FUNCTION_42_12(__n128 *result, __n128 a2)
{
  v2[1] = a2;
  result[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_47_5(uint64_t a1, char a2)
{
  *(v2 + 56) = 3;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

uint64_t OUTLINED_FUNCTION_51_9()
{

  return sub_26A827DF4();
}

__n128 OUTLINED_FUNCTION_58_7(__n128 *a1)
{
  result = v1[3];
  a1[1] = result;
  return result;
}

double OUTLINED_FUNCTION_59_6(uint64_t a1)
{
  result = 0.0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0;
  *(v1 + 152) = a1;
  return result;
}

__n128 *OUTLINED_FUNCTION_63_4(__n128 *result, __n128 a2)
{
  v2[2] = a2;
  result[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_4()
{
}

void OUTLINED_FUNCTION_71_5(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v3);
}

uint64_t OUTLINED_FUNCTION_75_3()
{
}

void OUTLINED_FUNCTION_76_3(uint64_t a1, char a2)
{
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

void OUTLINED_FUNCTION_79_3(uint64_t a1, char a2)
{
  *(v2 + 48) = 1;
  *(v2 + 56) = 3;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

void OUTLINED_FUNCTION_80_4(uint64_t a1, char a2)
{
  *(v2 + 48) = 1;
  *(v2 + 56) = 3;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

uint64_t OUTLINED_FUNCTION_84_4()
{
}

uint64_t OUTLINED_FUNCTION_85_3()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_86_3(unint64_t *a1)
{

  return sub_26A4DBCC8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_88_2()
{
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 96) = v1;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_89_3(uint64_t result)
{
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 48) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_90_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

void OUTLINED_FUNCTION_95_1(uint64_t a1, char a2)
{
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

double OUTLINED_FUNCTION_96_0()
{
  *(v0 + 96) = 0;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

double OUTLINED_FUNCTION_101_1()
{
  *(v0 + 80) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_104_1@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(v2 + 360) = a2;
  *(v2 + 328) = a1;
  *(v2 + 320) = v3;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_105_1()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 40) = v1;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_106_1(uint64_t a1)
{
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 40) = a1;

  return swift_initStackObject();
}

void OUTLINED_FUNCTION_107_1(uint64_t a1, char a2)
{
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

uint64_t OUTLINED_FUNCTION_108_1(uint64_t a1)
{
  *(v1 + 80) = a1;
  *(v1 + 48) = v3;
  *(v1 + 40) = v2;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_109_1(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_26A8516A8();
}

double OUTLINED_FUNCTION_113_1()
{
  *(v0 + 136) = 0;
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 96) = v1;
  return result;
}

void OUTLINED_FUNCTION_120_1(uint64_t a1, char a2)
{
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

void OUTLINED_FUNCTION_121_1()
{

  sub_26A80D690();
}

uint64_t OUTLINED_FUNCTION_122_1(int a1)
{
  *(v1 + 296) = v2;
  *(v1 + 304) = v4;
  *(v1 + 272) = a1;
  *(v1 + 264) = v3;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_123_0(int a1)
{
  *(v1 + 240) = v2;
  *(v1 + 248) = v4;
  *(v1 + 216) = a1;
  *(v1 + 208) = v3;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_124_1(int a1)
{
  *(v1 + 184) = v2;
  *(v1 + 192) = v4;
  *(v1 + 160) = a1;
  *(v1 + 152) = v3;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_125_1(unint64_t *a1)
{

  return sub_26A4DBCC8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_126_1(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_127_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_128_1()
{
}

uint64_t OUTLINED_FUNCTION_129_1(unint64_t *a1)
{

  return sub_26A4DBCC8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_131_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 360) = a2;
  *(v2 + 328) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t result)
{
  *(v1 + 272) = result;
  *(v1 + 264) = v2;
  return result;
}

__n128 *OUTLINED_FUNCTION_137_1(__n128 *result, __n128 a2)
{
  v2[3] = a2;
  result[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_140_1()
{
  result = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_148_1(int a1)
{
  *(v1 + 160) = a1;
  *(v1 + 152) = v2;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_149_1(int a1)
{
  *(v1 + 384) = a1;
  *(v1 + 376) = v2;

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_151_1()
{

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_152_1()
{
}

uint64_t OUTLINED_FUNCTION_153_1()
{
}

uint64_t OUTLINED_FUNCTION_154_1()
{

  return sub_26A850478();
}

BOOL sub_26A828988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50);
  return v5 != 0;
}

id sub_26A828A70@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = [v1 text_1];
  if (v5)
  {
    v6 = v5;
    v124 = v2;
    v122[3] = &type metadata for PartialText;
    v122[4] = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v122[0] = swift_allocObject();
    v90 = v6;
    RFTextProperty.asPartialText()(v122[0] + 16);
    v7 = [v3 text_2];
    if (v7)
    {
      v8 = v7;
      *(&v120 + 1) = &type metadata for PartialText;
      v121 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v119 = swift_allocObject();
      RFTextProperty.asPartialText()(v119 + 16);
    }

    else
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
    }

    v11 = [v3 text_3];
    if (v11)
    {
      v12 = v11;
      *(&v117 + 1) = &type metadata for PartialText;
      v118 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v116 = swift_allocObject();
      RFTextProperty.asPartialText()(v116 + 16);
    }

    else
    {
      v118 = 0;
      v116 = 0u;
      v117 = 0u;
    }

    v13 = sub_26A54AB40(v3, &selRef_text_4);
    if (v13)
    {
      sub_26A51B744(v13, __dst);
      sub_26A54AAEC();
      v14 = sub_26A851248();
      v15 = &protocol witness table for AnyView;
      v16 = MEMORY[0x277CE11C8];
    }

    else
    {
      OUTLINED_FUNCTION_3_94();
      v115[2] = 0;
      v115[1] = 0;
    }

    v115[0] = v14;
    v115[3] = v16;
    v115[4] = v15;
    v17 = sub_26A54AB40(v3, &selRef_text_5);
    if (v17)
    {
      sub_26A51B744(v17, __dst);
      sub_26A54AAEC();
      v18 = sub_26A851248();
      v19 = &protocol witness table for AnyView;
      v20 = MEMORY[0x277CE11C8];
    }

    else
    {
      OUTLINED_FUNCTION_3_94();
      v114[2] = 0;
      v114[1] = 0;
    }

    v114[0] = v18;
    v114[3] = v20;
    v114[4] = v19;
    v21 = [v3 thumbnail];
    if (v21)
    {
      v22 = v21;
      *(&v112 + 1) = sub_26A84BD28();
      v113 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v111);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v113 = 0;
      v111 = 0u;
      v112 = 0u;
    }

    v23 = [v3 thumbnail2];
    if (v23)
    {
      v24 = v23;
      *(&v109 + 1) = sub_26A84BD28();
      v110 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v108);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v110 = 0;
      v108 = 0u;
      v109 = 0u;
    }

    if (qword_28157E660 != -1)
    {
      swift_once();
    }

    v102[0] = xmmword_281588758[0];
    v102[1] = unk_281588768;
    v102[2] = xmmword_281588778;
    v102[3] = xmmword_281588788;
    v103 = xmmword_281588758[0];
    v104 = unk_281588768;
    v105 = xmmword_281588778;
    v106 = xmmword_281588788;
    v76 = xmmword_281588788;
    v83 = xmmword_281588778;
    sub_26A4EA070(v102, __dst, &qword_2803A91B0);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xC0uLL);
    a1[12] = v83;
    a1[13] = v76;
    v25 = v104;
    a1[14] = v103;
    a1[15] = v25;
    v26 = v106;
    a1[16] = v105;
    a1[17] = v26;
    v27 = type metadata accessor for FactItemStandardView(0);
    v28 = a1 + v27[5];
    if (qword_2803A8A80 != -1)
    {
      swift_once();
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
    v30 = __swift_project_value_buffer(v29, qword_2803D1A70);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
    v32 = &v28[*(v31 + 32)];
    sub_26A4EA070(v30, v32, &qword_2803AB6F0);
    sub_26A6AEE74(v123);
    memcpy(v28, v123, 0xBFuLL);
    sub_26A60E54C(v32 + *(v29 + 36), &v28[*(v31 + 28)]);
    v33 = v27[6];
    *(a1 + v33) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v34 = a1 + v27[7];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = v27[8];
    *(a1 + v35) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    sub_26A50429C(v122, __dst);
    OUTLINED_FUNCTION_80();
    v36 = swift_allocObject();
    sub_26A4C2314(__dst, v36 + 16);
    v37 = (a1 + v27[9]);
    *v37 = sub_26A504300;
    v37[1] = v36;
    sub_26A4EA070(&v119, __dst, &qword_2803AB700);
    OUTLINED_FUNCTION_80();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_5_85(v38, v39, v40, v41, v42, v43, v44, v45, v76, *(&v76 + 1), v83, *(&v83 + 1), v90, *v95, *&v95[8], *&v95[16], *&v95[24], *&v95[32], *&v95[40], *&v95[48], *&v95[56], *&v95[64], *&v95[72], *&v95[80], *&v95[88], *&v95[96], *&v95[104], *&v95[112], *&v95[120], *&v95[128], *&v95[136], *&v95[144], *&v95[152], *&v95[160], *&v95[168], *&v95[176], *&v95[184], *&v95[192], *&v95[200], *&v95[208], *&v95[216], *&v95[224], *&v95[232], *&v95[240], *&v95[248], v96, v97, v98, v99, v100, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2]);
    v46 = (a1 + v27[10]);
    *v46 = sub_26A8293D8;
    v46[1] = v47;
    sub_26A4EA070(&v116, __dst, &qword_2803AB700);
    OUTLINED_FUNCTION_80();
    v48 = swift_allocObject();
    OUTLINED_FUNCTION_5_85(v48, v49, v50, v51, v52, v53, v54, v55, v77, v80, v84, v87, v91, *v95, *&v95[8], *&v95[16], *&v95[24], *&v95[32], *&v95[40], *&v95[48], *&v95[56], *&v95[64], *&v95[72], *&v95[80], *&v95[88], *&v95[96], *&v95[104], *&v95[112], *&v95[120], *&v95[128], *&v95[136], *&v95[144], *&v95[152], *&v95[160], *&v95[168], *&v95[176], *&v95[184], *&v95[192], *&v95[200], *&v95[208], *&v95[216], *&v95[224], *&v95[232], *&v95[240], *&v95[248], v96, v97, v98, v99, v100, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2]);
    v56 = (a1 + v27[11]);
    *v56 = sub_26A8293D8;
    v56[1] = v57;
    sub_26A4EA070(v115, &v96, &qword_2803AB700);
    if (v99)
    {
      __swift_project_boxed_opaque_existential_1(&v96, v99);
      v58 = OUTLINED_FUNCTION_1_108();
      v59(v58);
      nullsub_1(v95);
      __swift_destroy_boxed_opaque_existential_1(&v96);
      memcpy(__dst, v95, 0xFAuLL);
    }

    else
    {
      sub_26A4E2544(&v96, &qword_2803AB700);
      sub_26A504324(__dst);
    }

    memcpy(a1 + v27[12], __dst, 0xFAuLL);
    sub_26A4EA070(v114, v95, &qword_2803AB700);
    OUTLINED_FUNCTION_80();
    v60 = swift_allocObject();
    v61 = *&v95[16];
    *(v60 + 16) = *v95;
    *(v60 + 32) = v61;
    *(v60 + 48) = *&v95[32];
    v62 = (a1 + v27[13]);
    *v62 = sub_26A8293D8;
    v62[1] = v60;
    sub_26A4EA070(&v111, v95, &qword_2803A91B8);
    if (*&v95[24])
    {
      __swift_project_boxed_opaque_existential_1(v95, *&v95[24]);
      v63 = OUTLINED_FUNCTION_1_108();
      v64(v63);
      __swift_destroy_boxed_opaque_existential_1(v95);
      v65 = &protocol witness table for AnyView;
    }

    else
    {
      sub_26A4E2544(v95, &qword_2803A91B8);
      OUTLINED_FUNCTION_3_94();
      *&v95[8] = 0;
      *&v95[16] = 0;
    }

    v66 = OUTLINED_FUNCTION_6_74(v65, v78, v81, v85, v88, v92, *v95, *&v95[8], *&v95[16], *&v95[24], *&v95[32]);
    v67 = a1 + v27[14];
    *v67 = v66;
    v67[8] = v68;
    sub_26A4EA070(&v108, v95, &qword_2803A91B8);
    if (*&v95[24])
    {
      __swift_project_boxed_opaque_existential_1(v95, *&v95[24]);
      v69 = OUTLINED_FUNCTION_1_108();
      v70(v69);
      __swift_destroy_boxed_opaque_existential_1(v95);
      v71 = &protocol witness table for AnyView;
    }

    else
    {
      sub_26A4E2544(v95, &qword_2803A91B8);
      OUTLINED_FUNCTION_3_94();
      *&v95[8] = 0;
      *&v95[16] = 0;
    }

    v72 = OUTLINED_FUNCTION_6_74(v71, v79, v82, v86, v89, v93, *v95, *&v95[8], *&v95[16], *&v95[24], *&v95[32]);
    v74 = v73;

    OUTLINED_FUNCTION_2_103(&v108);
    OUTLINED_FUNCTION_2_103(&v111);
    OUTLINED_FUNCTION_2_103(v114);
    OUTLINED_FUNCTION_2_103(v115);
    OUTLINED_FUNCTION_2_103(&v116);
    OUTLINED_FUNCTION_2_103(&v119);
    result = __swift_destroy_boxed_opaque_existential_1(v122);
    v75 = a1 + v27[15];
    *v75 = v72;
    v75[8] = v74;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v9 = v1;
    *(v9 + 8) = &unk_287B13658;
    *(v9 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A829380()
{
  result = qword_2803ABAF8;
  if (!qword_2803ABAF8)
  {
    type metadata accessor for FactItemStandardView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABAF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_103(uint64_t a1)
{

  return sub_26A4E2544(a1, v1);
}

__n128 OUTLINED_FUNCTION_5_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  result = *v55;
  v57 = *(v55 + 16);
  *(a1 + 16) = *v55;
  *(a1 + 32) = v57;
  *(a1 + 48) = a55;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_74@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a7 = v12;
  a10 = v11;
  a11 = a1;

  return sub_26A6A8134(&a7);
}

uint64_t sub_26A82945C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VisualElementView.body.getter@<X0>(void *a1@<X8>)
{
  result = sub_26A829504(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_26A829504@<X0>(uint64_t *a1@<X8>)
{
  v89 = a1;
  v71 = type metadata accessor for CoreChartElementView();
  MEMORY[0x28223BE20](v71);
  v68 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_26A84C078();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for CustomCanvasView();
  MEMORY[0x28223BE20](v76);
  v73 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26A84B9B8();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A84B048();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_26A84DFA8();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A84B0E8();
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for ImageElementView();
  MEMORY[0x28223BE20](v87);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_26A84B718();
  v13 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v65 - v20;
  v22 = sub_26A84BA88();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - v27;
  v90 = &sub_26A82A034;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
  sub_26A551788();
  v29 = sub_26A851248();
  sub_26A82945C(v88, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    result = sub_26A82A1C0(v21);
    *v89 = v29;
    return result;
  }

  v88 = v29;
  (*(v23 + 32))(v28, v21, v22);
  (*(v23 + 16))(v25, v28, v22);
  v31 = (*(v23 + 88))(v25, v22);
  v32 = v23;
  if (v31 == *MEMORY[0x277D62E98])
  {
    (*(v23 + 96))(v25, v22);
    v33 = *(v13 + 32);
    v34 = v18;
    v35 = v18;
    v66 = v18;
    v36 = v86;
    v33(v35, v25, v86);
    (*(v13 + 16))(v15, v34, v36);
    *v12 = sub_26A725F68;
    *(v12 + 1) = 0;
    v12[16] = 0;
    sub_26A5E9128(&v12[*(v87 + 24)]);
    v37 = sub_26A84B2D8();
    v38 = *(v13 + 8);
    v38(v15, v36);
    *(v12 + 3) = v37;
    sub_26A82A2A4(qword_28157F000, type metadata accessor for ImageElementView);
    v39 = sub_26A851248();

    v38(v66, v36);
    result = (*(v32 + 8))(v28, v22);
LABEL_7:
    *v89 = v39;
    return result;
  }

  v40 = v31;
  v41 = v22;
  if (v31 == *MEMORY[0x277D62E90])
  {
    (*(v23 + 96))(v25, v22);
    v43 = v82;
    v42 = v83;
    v44 = v78;
    (*(v82 + 32))(v78, v25, v83);
    v45 = v77;
    sub_26A84B0D8();
    v46 = v80;
    sub_26A84DF78();
    v47 = _ProtoColor.swiftValue.getter();
    (*(v84 + 8))(v46, v85);
    (*(v79 + 8))(v45, v81);
    v90 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CA0);
    sub_26A82A228();
    v39 = sub_26A851248();

    (*(v43 + 8))(v44, v42);
    result = (*(v32 + 8))(v28, v41);
    goto LABEL_7;
  }

  v48 = v89;
  v49 = v28;
  if (v31 == *MEMORY[0x277D62EA0])
  {
    (*(v23 + 96))(v25, v41);
    v51 = v74;
    v50 = v75;
    v52 = v72;
    (*(v74 + 32))(v72, v25, v75);
    v53 = v73;
    sub_26A84B9A8();
    v54 = v76;
    v55 = &v53[*(v76 + 20)];
    *v55 = 0xD000000000000023;
    *(v55 + 1) = 0x800000026A88B1A0;
    v56 = &v53[*(v54 + 24)];
    *v56 = swift_getKeyPath();
    v56[8] = 0;
    v57 = &v53[*(v54 + 28)];
    *v57 = swift_getKeyPath();
    v57[8] = 0;
    v58 = &qword_2803ABC08;
    v59 = type metadata accessor for CustomCanvasView;
LABEL_13:
    sub_26A82A2A4(v58, v59);
    v62 = sub_26A851248();

    (*(v51 + 8))(v52, v50);
    result = (*(v32 + 8))(v49, v41);
    *v48 = v62;
    return result;
  }

  if (v31 == *MEMORY[0x277D62E88])
  {
    (*(v23 + 96))(v25, v41);
    v51 = v69;
    v52 = v67;
    v50 = v70;
    (*(v69 + 32))(v67, v25, v70);
    v60 = v68;
    sub_26A84C068();
    v61 = &v60[*(v71 + 20)];
    *v61 = swift_getKeyPath();
    v61[8] = 0;
    v58 = &unk_2803B94F0;
    v59 = type metadata accessor for CoreChartElementView;
    goto LABEL_13;
  }

  v63 = *MEMORY[0x277D62EA8];
  v64 = *(v23 + 8);
  result = v64(v28, v41);
  *v48 = v88;
  if (v40 != v63)
  {
    return v64(v25, v41);
  }

  return result;
}

uint64_t type metadata accessor for VisualElementView()
{
  result = qword_28157EBD0;
  if (!qword_28157EBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A82A0FC()
{
  sub_26A82A168();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A82A168()
{
  if (!qword_28157FFB0)
  {
    sub_26A84BA88();
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_28157FFB0);
    }
  }
}

uint64_t sub_26A82A1C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A82A228()
{
  result = qword_2803B94F8;
  if (!qword_2803B94F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B94F8);
  }

  return result;
}

uint64_t sub_26A82A2A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t storeEnumTagSinglePayload for TextVibrancyShapeStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A82A3E4(char a1)
{
  switch(a1)
  {
    case 1:
      result = sub_26A84FED8();
      break;
    case 2:
      result = sub_26A84FEC8();
      break;
    case 3:
      result = sub_26A84FE98();
      break;
    case 4:
      result = sub_26A84FEB8();
      break;
    default:
      result = sub_26A84FEA8();
      break;
  }

  return result;
}

uint64_t sub_26A82A41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v80 = a3;
  v81 = a2;
  sub_26A8514D8();
  OUTLINED_FUNCTION_15();
  v74 = v5;
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v70 = (v6 - v7);
  MEMORY[0x28223BE20](v8);
  v69 = v64 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1838);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_0();
  v68 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v67 = (v64 - v13);
  sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v78 = v15;
  v79 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v77 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v64 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B15A0);
  MEMORY[0x28223BE20](v66);
  v22 = (v64 - v21);
  v23 = sub_26A84FBC8();
  OUTLINED_FUNCTION_15();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v64 - v31;
  sub_26A84F818();
  v33 = *(v25 + 104);
  v72 = *MEMORY[0x277CE0220];
  v71 = v33;
  v33(v29);
  v34 = sub_26A84EE58();
  v35 = *(v25 + 8);
  v35(v29, v23);
  v73 = v35;
  v35(v32, v23);
  if (v34)
  {
    sub_26A5DB15C();
    OUTLINED_FUNCTION_2_104();
    sub_26A84F998();
    switch(v82)
    {
      case 1:
        goto LABEL_16;
      case 3:
        v63 = sub_26A84FEA8();
        sub_26A850DD8();
        sub_26A850E68();

        sub_26A84EEC8();

        *v22 = v63;
        sub_26A4DBCC8(&qword_2803B15A8, &qword_2803B15A0);
        break;
      default:
        goto LABEL_3;
    }
  }

  else
  {
LABEL_3:
    sub_26A5D7B44();
    OUTLINED_FUNCTION_2_104();
    sub_26A84F998();
    if (v82 & 1) != 0 || (sub_26A5D7744(), OUTLINED_FUNCTION_2_104(), sub_26A84F998(), (v82) || (v81 & 0x100) != 0)
    {
      sub_26A5D7744();
      OUTLINED_FUNCTION_2_104();
      sub_26A84F998();
      v36 = MEMORY[0x277CDF3D0];
      if (v82 == 1)
      {
        sub_26A84F6D8();
        v37 = *v36;
        v39 = v78;
        v38 = v79;
        v40 = *(v78 + 104);
        v66 = v20;
        v41 = v77;
        v40(v77, v37, v79);
        v64[1] = sub_26A84EE58();
        v65 = a1;
        v42 = *(v39 + 8);
        v43 = v41;
        v20 = v66;
        v42(v43, v38);
        v42(v20, v38);
        v36 = MEMORY[0x277CDF3D0];
      }

      sub_26A84F818();
      v71(v29, v72, v23);
      sub_26A84EE58();
      v44 = v29;
      v45 = v73;
      v73(v44, v23);
      v45(v32, v23);
      OUTLINED_FUNCTION_2_104();
      sub_26A84F998();
      if (v82 == 1 && (sub_26A4D3394(), OUTLINED_FUNCTION_2_104(), sub_26A84F998(), v82 <= 8))
      {
        v46 = 0x1E6u >> v82;
      }

      else
      {
        LOBYTE(v46) = 0;
      }

      sub_26A84F6D8();
      v48 = v77;
      v47 = v78;
      v49 = v79;
      (*(v78 + 104))(v77, *v36, v79);
      v50 = sub_26A84EE58();
      v51 = *(v47 + 8);
      v51(v48, v49);
      v51(v20, v49);
      v52 = (v74 + 104);
      v53 = (v74 + 32);
      if (v50)
      {
        sub_26A850DD8();
        v54 = sub_26A850E68();

        v55 = MEMORY[0x277CE13B0];
        if ((v46 & 1) == 0)
        {
          v55 = MEMORY[0x277CE13D8];
        }

        v56 = v69;
        v57 = v75;
        (*v52)(v69, *v55, v75);
        v58 = v67;
        (*v53)(v67 + *(v76 + 36), v56, v57);
      }

      else
      {
        sub_26A850E18();
        v54 = sub_26A850E68();

        v59 = MEMORY[0x277CE13B8];
        if ((v46 & 1) == 0)
        {
          v59 = MEMORY[0x277CE13D8];
        }

        v60 = v70;
        v61 = v75;
        (*v52)(v70, *v59, v75);
        v58 = v68;
        (*v53)(v68 + *(v76 + 36), v60, v61);
      }

      *v58 = v54;
      sub_26A4DBCC8(&qword_28157FC28, &qword_2803B1838);
    }

    else
    {
LABEL_16:
      LODWORD(v82) = sub_26A82A3E4(v81);
    }
  }

  result = sub_26A84F038();
  *v80 = result;
  return result;
}

uint64_t sub_26A82AC08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_26A82A41C(a1, v3 | *v2, a2);
}

_BYTE *storeEnumTagSinglePayload for TextVibrancyShapeStyle.Hierarchical(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A82AD04()
{
  result = qword_2803B9500;
  if (!qword_2803B9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9500);
  }

  return result;
}

uint64_t SimpleItemReverseRichView.init(text1:text2:text3:text4:thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = type metadata accessor for SimpleItemReverseRichView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = (v11 - v10);
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  v14 = __swift_project_value_buffer(v13, qword_2803D1900);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  v16 = &v12[*(v15 + 32)];
  sub_26A4DBD68(v14, v16, &qword_2803AADC8);
  sub_26A6AEE74(__src);
  memcpy(v12, __src, 0xBFuLL);
  sub_26A5375E4(v16 + *(v13 + 36), &v12[*(v15 + 28)]);
  v17 = v8[5];
  *&v12[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v18 = v8[6];
  *&v12[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v19 = &v12[v8[7]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  *&v12[v8[8]] = (*(v21 + 8))(v20, v21);
  sub_26A4DBD68(a2, v39, &qword_2803A91B8);
  OUTLINED_FUNCTION_12_55();
  if (&unk_26A85B990)
  {
    v22 = OUTLINED_FUNCTION_0_76();
    v24 = v23(v22);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_26A4DBD10(v39, &qword_2803A91B8);
    v24 = 0;
  }

  *&v12[v8[9]] = v24;
  sub_26A4DBD68(a3, v39, &qword_2803A91B8);
  OUTLINED_FUNCTION_12_55();
  if (&unk_26A85B990)
  {
    v25 = OUTLINED_FUNCTION_0_76();
    v27 = v26(v25);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_26A4DBD10(v39, &qword_2803A91B8);
    v27 = 0;
  }

  *&v12[v8[10]] = v27;
  sub_26A4DBD68(a4, v39, &qword_2803A91B8);
  OUTLINED_FUNCTION_12_55();
  if (&unk_26A85B990)
  {
    v28 = OUTLINED_FUNCTION_0_76();
    v30 = v29(v28);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_26A4DBD10(v39, &qword_2803A91B8);
    v30 = 0;
  }

  *&v12[v8[11]] = v30;
  sub_26A4DBD68(a5, v39, &qword_2803A91B8);
  OUTLINED_FUNCTION_12_55();
  if (&unk_26A85B990)
  {
    v31 = OUTLINED_FUNCTION_0_76();
    v33 = v32(v31);
    OUTLINED_FUNCTION_36_3(a5);
    OUTLINED_FUNCTION_36_3(a4);
    OUTLINED_FUNCTION_36_3(a3);
    OUTLINED_FUNCTION_36_3(a2);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(a5);
    OUTLINED_FUNCTION_9_0(a4);
    OUTLINED_FUNCTION_9_0(a3);
    OUTLINED_FUNCTION_9_0(a2);
    OUTLINED_FUNCTION_9_0(v39);
    v33 = 0;
  }

  *&v12[v8[12]] = v33;
  sub_26A82B1F0(v12, a6);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SimpleItemReverseRichView()
{
  result = qword_2803B95C0;
  if (!qword_2803B95C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A82B1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleItemReverseRichView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A82B254@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SimpleItemReverseRichView();
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A82B43C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SimpleItemReverseRichView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A82B644()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemReverseRichView() + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t SimpleItemReverseRichView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9530);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B95A8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B95B0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  sub_26A82B254(v9);
  if (*(v1 + *(type metadata accessor for SimpleItemReverseRichView() + 48)))
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28);
    v23 = (v1 + *(type metadata accessor for SimpleItemConstants() + 40) + v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = *(v23 + 32);
  }

  else
  {
    v24 = 0uLL;
    v26 = 1;
    v25 = 0uLL;
  }

  v37 = v24;
  v38 = v25;
  v39 = v26;
  sub_26A82B644();
  sub_26A82B43C(v5);
  v27 = sub_26A84F3A8();
  v28 = __swift_storeEnumTagSinglePayload(v5, 0, 1, v27);
  MEMORY[0x28223BE20](v28);
  sub_26A4CFB1C();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26A68CD04;
  *(v29 + 24) = 0;
  v30 = &v17[*(v14 + 36)];
  *(v30 + 2) = swift_getKeyPath();
  v30[24] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v32 = *(v31 + 40);
  *&v30[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v33 = &v30[*(v31 + 44)];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  *v30 = sub_26A4D1F7C;
  *(v30 + 1) = v29;
  sub_26A4DBDB4(v13, v17, &qword_2803A9530);
  sub_26A4DBDB4(v17, v21, &qword_2803B95A8);
  v21[*(v18 + 36)] = 48;
  return sub_26A4DBDB4(v21, v36, &qword_2803B95B0);
}

uint64_t sub_26A82BB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9578);
  MEMORY[0x28223BE20](v26);
  v4 = &v23 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B95E8);
  MEMORY[0x28223BE20](v25);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9568);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9558);
  MEMORY[0x28223BE20](v23);
  v11 = &v23 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9548);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - v12;
  v14 = sub_26A84F3A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  sub_26A82B43C(v17);
  LOBYTE(a1) = sub_26A84F388();
  (*(v15 + 8))(v17, v14);
  if (a1)
  {
    *v9 = sub_26A84FA78();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B95F0);
    sub_26A82CB28(v18, &v9[*(v19 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4DBDB4(v9, v11, &qword_2803A9568);
    memcpy(&v11[*(v23 + 36)], __src, 0x70uLL);
    sub_26A4DBDB4(v11, v13, &qword_2803A9558);
    *&v13[*(v24 + 36)] = 256;
    v20 = &qword_2803A9548;
    sub_26A4DBD68(v13, v6, &qword_2803A9548);
    swift_storeEnumTagMultiPayload();
    sub_26A82D7D0(&qword_2803A9540, &qword_2803A9548, &unk_26A888E30, sub_26A4D3634);
    sub_26A4D36EC();
    sub_26A84FDF8();
    v21 = v13;
  }

  else
  {
    sub_26A82C01C(v4);
    v20 = &qword_2803A9578;
    sub_26A4DBD68(v4, v6, &qword_2803A9578);
    swift_storeEnumTagMultiPayload();
    sub_26A82D7D0(&qword_2803A9540, &qword_2803A9548, &unk_26A888E30, sub_26A4D3634);
    sub_26A4D36EC();
    sub_26A84FDF8();
    v21 = v4;
  }

  return sub_26A4DBD10(v21, v20);
}

uint64_t sub_26A82C01C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A95A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9598);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9588);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &__src[-v13];
  *v6 = sub_26A84FA58();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9600);
  sub_26A82C290(v2, &v6[*(v15 + 44)]);
  sub_26A851458();
  sub_26A84F628();
  sub_26A4DBDB4(v6, v10, &unk_2803A95A8);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  sub_26A4DBDB4(v10, v14, &qword_2803A9598);
  *&v14[*(v12 + 44)] = 256;
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  sub_26A4DBDB4(v14, a1, &qword_2803A9588);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9578);
  v19 = a1 + *(result + 36);
  *v19 = KeyPath;
  *(v19 + 8) = 0;
  *(v19 + 16) = v17;
  *(v19 + 24) = 256;
  return result;
}

uint64_t sub_26A82C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v32 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v36[0] = sub_26A84FC08();
  v36[1] = 0;
  LOBYTE(v36[2]) = 1;
  sub_26A82C68C(a1, &v36[3]);
  sub_26A851448();
  sub_26A84F628();
  memcpy(v35, v36, 0x4B8uLL);
  memcpy(v36, v35, 0x528uLL);
  v17 = *(a1 + *(type metadata accessor for SimpleItemReverseRichView() + 48));
  if (v17)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D62B00], v4);
    KeyPath = swift_getKeyPath();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v32 = v7;
    v19 = v18;
    v20 = *(v18 + 36);
    v34 = v17;
    v21 = (v13 + v20);
    v22 = v16;
    v23 = v10;
    v24 = a2;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v5 + 32))(v21 + v25, v32, v4);
    v26 = v21 + v25;
    a2 = v24;
    v10 = v23;
    v16 = v22;
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v4);
    *v21 = KeyPath;
    *v13 = v34;
    v27 = v13;
    v28 = 0;
    v29 = v19;
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v27 = v13;
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
  sub_26A4DBDB4(v13, v16, &qword_2803AAF98);
  sub_26A4DBD68(v36, v35, &qword_2803B0020);
  sub_26A4DBD68(v16, v10, &qword_2803AAF98);
  sub_26A4DBD68(v35, a2, &qword_2803B0020);
  *(a2 + 1320) = 0;
  *(a2 + 1328) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9608);
  sub_26A4DBD68(v10, a2 + *(v30 + 64), &qword_2803AAF98);

  sub_26A4DBD10(v16, &qword_2803AAF98);
  sub_26A4DBD10(v36, &qword_2803B0020);
  sub_26A4DBD10(v10, &qword_2803AAF98);
  return sub_26A4DBD10(v35, &qword_2803B0020);
}

uint64_t sub_26A82C68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SimpleItemReverseRichView();
  v5 = *(a1 + v4[11]);
  if (v5)
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588848, &v19[25], &qword_2803AA880);
    sub_26A6AEE74(__src);
    memcpy(&v19[1], __src, 0xBFuLL);
    v19[36] = 0;
    v19[35] = sub_26A80A810;
    v19[0] = v5;
  }

  else
  {
    bzero(v19, 0x128uLL);
  }

  memcpy(__dst, v19, sizeof(__dst));
  v6 = *(a1 + v4[8]);
  v7 = qword_2803A9110;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803B9508, v18, &qword_2803AA880);
  sub_26A4DBD68(v18, &v19[25], &qword_2803AA880);
  sub_26A6AEE74(v22);
  sub_26A4DBD10(v18, &qword_2803AA880);
  memcpy(&v19[1], v22, 0xBFuLL);
  v19[36] = 0;
  v19[35] = sub_26A80A810;
  v19[0] = v6;
  v8 = *(a1 + v4[9]);
  if (v8)
  {
    v9 = qword_2803A9118;

    if (v9 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803B9558, &v17[25], &qword_2803AA880);
    sub_26A6AEE74(v23);
    memcpy(&v17[1], v23, 0xBFuLL);
    v17[36] = 0;
    v17[35] = sub_26A80A810;
    v17[0] = v8;
  }

  else
  {
    bzero(v17, 0x128uLL);
  }

  memcpy(v18, v17, sizeof(v18));
  v10 = *(a1 + v4[10]);
  if (v10)
  {
    v11 = qword_28157E6A8;

    if (v11 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588848, &v16[25], &qword_2803AA880);
    sub_26A6AEE74(v24);
    memcpy(&v16[1], v24, 0xBFuLL);
    v16[36] = 0;
    v16[35] = sub_26A80A810;
    v16[0] = v10;
  }

  else
  {
    bzero(v16, 0x128uLL);
  }

  memcpy(v17, v16, sizeof(v17));
  sub_26A4DBD68(__dst, v16, &qword_2803AA888);
  sub_26A4DBD68(v19, v15, &qword_2803A99A0);
  sub_26A4DBD68(v18, v14, &qword_2803AA888);
  sub_26A4DBD68(v17, v13, &qword_2803AA888);
  sub_26A4DBD68(v16, a2, &qword_2803AA888);
  sub_26A4DBD68(v15, a2 + 296, &qword_2803A99A0);
  sub_26A4DBD68(v14, a2 + 592, &qword_2803AA888);
  sub_26A4DBD68(v13, a2 + 888, &qword_2803AA888);

  sub_26A4DBD10(v17, &qword_2803AA888);
  sub_26A4DBD10(v18, &qword_2803AA888);
  sub_26A4DBD10(v19, &qword_2803A99A0);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(v13, &qword_2803AA888);
  sub_26A4DBD10(v14, &qword_2803AA888);
  sub_26A4DBD10(v15, &qword_2803A99A0);
  return sub_26A4DBD10(v16, &qword_2803AA888);
}

uint64_t sub_26A82CB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SimpleItemConstants();
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD620);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v44 = &v40 - v17;
  v46[0] = sub_26A84FC08();
  v46[1] = 0;
  LOBYTE(v46[2]) = 1;
  sub_26A82D004(a1, &v46[3]);
  sub_26A851448();
  sub_26A84F628();
  memcpy(v45, v46, 0x4B8uLL);
  memcpy(v46, v45, 0x528uLL);
  v18 = *(a1 + *(type metadata accessor for SimpleItemReverseRichView() + 48));
  if (v18)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
    sub_26A5375E4(a1 + *(v19 + 28), v6);
    v43 = a2;
    v20 = *(v4 + 32);
    KeyPath = swift_getKeyPath();
    v21 = &v9[*(v7 + 36)];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
    v42 = v12;
    v23 = *(v22 + 28);
    v24 = sub_26A84B1D8();
    v25 = v9;
    v26 = v6;
    v27 = *(v24 - 8);
    (*(v27 + 16))(v21 + v23, &v26[v20], v24);
    __swift_storeEnumTagSinglePayload(v21 + v23, 0, 1, v24);
    *v21 = KeyPath;
    *v25 = v18;
    v28 = *(v27 + 8);

    v29 = &v26[v20];
    a2 = v43;
    v28(v29, v24);
    v12 = v42;
    v30 = swift_getKeyPath();
    sub_26A4DBDB4(v25, v15, &qword_2803AAFA0);
    v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308) + 36)];
    *v31 = v30;
    v31[8] = 1;
    v32 = swift_getKeyPath();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
    v34 = &v15[*(v33 + 36)];
    *v34 = v32;
    v34[8] = 0;
    v35 = v15;
    v36 = 0;
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
    v35 = v15;
    v36 = 1;
  }

  __swift_storeEnumTagSinglePayload(v35, v36, 1, v33);
  v37 = v44;
  sub_26A4DBDB4(v15, v44, &qword_2803AD620);
  sub_26A4DBD68(v46, v45, &qword_2803B0020);
  sub_26A4DBD68(v37, v12, &qword_2803AD620);
  sub_26A4DBD68(v45, a2, &qword_2803B0020);
  *(a2 + 1320) = 0;
  *(a2 + 1328) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B95F8);
  sub_26A4DBD68(v12, a2 + *(v38 + 64), &qword_2803AD620);
  sub_26A4DBD10(v37, &qword_2803AD620);
  sub_26A4DBD10(v46, &qword_2803B0020);
  sub_26A4DBD10(v12, &qword_2803AD620);
  return sub_26A4DBD10(v45, &qword_2803B0020);
}

uint64_t sub_26A82D004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SimpleItemReverseRichView();
  v5 = *(a1 + v4[11]);
  if (v5)
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, &v19[25], &qword_2803AA880);
    sub_26A6AEE74(__src);
    memcpy(&v19[1], __src, 0xBFuLL);
    v19[36] = 0;
    v19[35] = sub_26A80A810;
    v19[0] = v5;
  }

  else
  {
    bzero(v19, 0x128uLL);
  }

  memcpy(__dst, v19, sizeof(__dst));
  v6 = *(a1 + v4[8]);
  v7 = qword_28157E6C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, &v19[25], &qword_2803AA880);
  sub_26A6AEE74(v22);
  memcpy(&v19[1], v22, 0xBFuLL);
  v19[36] = 0;
  v19[35] = sub_26A80A810;
  v19[0] = v6;
  v8 = *(a1 + v4[9]);
  if (v8)
  {
    v9 = qword_2803A9018;

    if (v9 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D2760, &v17[25], &qword_2803AA880);
    sub_26A6AEE74(v23);
    memcpy(&v17[1], v23, 0xBFuLL);
    v17[36] = 0;
    v17[35] = sub_26A80A810;
    v17[0] = v8;
  }

  else
  {
    bzero(v17, 0x128uLL);
  }

  memcpy(v18, v17, sizeof(v18));
  v10 = *(a1 + v4[10]);
  if (v10)
  {
    v11 = qword_28157E6A0;

    if (v11 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, &v16[25], &qword_2803AA880);
    sub_26A6AEE74(v24);
    memcpy(&v16[1], v24, 0xBFuLL);
    v16[36] = 0;
    v16[35] = sub_26A80A810;
    v16[0] = v10;
  }

  else
  {
    bzero(v16, 0x128uLL);
  }

  memcpy(v17, v16, sizeof(v17));
  sub_26A4DBD68(__dst, v16, &qword_2803AA888);
  sub_26A4DBD68(v19, v15, &qword_2803A99A0);
  sub_26A4DBD68(v18, v14, &qword_2803AA888);
  sub_26A4DBD68(v17, v13, &qword_2803AA888);
  sub_26A4DBD68(v16, a2, &qword_2803AA888);
  sub_26A4DBD68(v15, a2 + 296, &qword_2803A99A0);
  sub_26A4DBD68(v14, a2 + 592, &qword_2803AA888);
  sub_26A4DBD68(v13, a2 + 888, &qword_2803AA888);

  sub_26A4DBD10(v17, &qword_2803AA888);
  sub_26A4DBD10(v18, &qword_2803AA888);
  sub_26A4DBD10(v19, &qword_2803A99A0);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(v13, &qword_2803AA888);
  sub_26A4DBD10(v14, &qword_2803AA888);
  sub_26A4DBD10(v15, &qword_2803A99A0);
  return sub_26A4DBD10(v16, &qword_2803AA888);
}

uint64_t sub_26A82D478(uint64_t a1)
{
  result = sub_26A82E8F8(&qword_2803B95B8, MEMORY[0x277D634F0]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A82D4F8()
{
  sub_26A5EFF28(319, &qword_2803AE500, type metadata accessor for SimpleItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4D27F4();
    if (v1 <= 0x3F)
    {
      sub_26A5EFF28(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A5EFF28(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A4E5E18();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A82D660()
{
  result = qword_2803B95D0;
  if (!qword_2803B95D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B95B0);
    sub_26A82D6EC();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B95D0);
  }

  return result;
}

unint64_t sub_26A82D6EC()
{
  result = qword_2803B95D8;
  if (!qword_2803B95D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B95A8);
    sub_26A4DBCC8(&qword_2803B95E0, &qword_2803A9530);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B95D8);
  }

  return result;
}

uint64_t sub_26A82D7D0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A82D854()
{
  v119 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v106 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v105 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v118 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v114 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v108 = &v105 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v107 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v105 - v23;
  v25 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  v110 = type metadata accessor for SimpleItemReverseRichView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  v35 = (v33 - v34);
  MEMORY[0x28223BE20](v36);
  v112 = &v105 - v37;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB70);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v38);
  v113 = &v105 - v39;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB78);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v116 = v41 - v42;
  MEMORY[0x28223BE20](v43);
  v115 = &v105 - v44;
  sub_26A84D198();
  v109 = TextProperty.asAnyView()();
  v45 = *(v27 + 8);
  v45(v31, v25);
  v120 = v0;
  sub_26A84D1A8();
  OUTLINED_FUNCTION_26_0(v24);
  if (v46)
  {
    sub_26A4DBD10(v24, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v126[1] = 0;
    v126[2] = 0;
  }

  else
  {
    v0 = TextProperty.asAnyView()();
    v45(v24, v25);
    v47 = &protocol witness table for AnyView;
    v48 = MEMORY[0x277CE11C8];
  }

  v126[0] = v0;
  v126[3] = v48;
  v126[4] = v47;
  v49 = v120;
  v50 = v120;
  sub_26A84D1B8();
  v51 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v17, 1, v51) == 1)
  {
    sub_26A4DBD10(v17, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v125[1] = 0;
    v125[2] = 0;
  }

  else
  {
    v50 = v17;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v54 + 8))(v17, v51);
    v52 = &protocol witness table for AnyView;
    v53 = MEMORY[0x277CE11C8];
  }

  v125[0] = v50;
  v125[3] = v53;
  v125[4] = v52;
  v55 = v107;
  v56 = v49;
  sub_26A84D1C8();
  OUTLINED_FUNCTION_26_0(v55);
  if (v46)
  {
    sub_26A4DBD10(v55, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v124[1] = 0;
    v124[2] = 0;
  }

  else
  {
    v56 = TextProperty.asAnyView()();
    v45(v55, v25);
    v57 = &protocol witness table for AnyView;
    v58 = MEMORY[0x277CE11C8];
  }

  v59 = v110;
  v124[0] = v56;
  v124[3] = v58;
  v124[4] = v57;
  v60 = v108;
  v61 = v49;
  sub_26A84D1E8();
  v62 = sub_26A84BD28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v62);
  v64 = v112;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v60, &qword_2803AAD50);
    OUTLINED_FUNCTION_2_0();
    v123[1] = 0;
    v123[2] = 0;
  }

  else
  {
    v61 = v60;
    VisualProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v67 + 8))(v60, v62);
    v65 = &protocol witness table for AnyView;
    v66 = MEMORY[0x277CE11C8];
  }

  v123[0] = v61;
  v123[3] = v66;
  v123[4] = v65;
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  v69 = __swift_project_value_buffer(v68, qword_2803D1900);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  v71 = &v35[*(v70 + 32)];
  sub_26A4DBD68(v69, v71, &qword_2803AADC8);
  sub_26A6AEE74(v127);
  memcpy(v35, v127, 0xBFuLL);
  sub_26A5375E4(v71 + *(v68 + 36), &v35[*(v70 + 28)]);
  v72 = v59[5];
  *&v35[v72] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v73 = v59[6];
  *&v35[v73] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v74 = &v35[v59[7]];
  *v74 = swift_getKeyPath();
  v74[8] = 0;
  *&v35[v59[8]] = v109;
  sub_26A4DBD68(v126, v121, &qword_2803A91B8);
  if (v122)
  {
    v75 = OUTLINED_FUNCTION_1_109();
    v77 = v76(v75);
    __swift_destroy_boxed_opaque_existential_1(v121);
  }

  else
  {
    sub_26A4DBD10(v121, &qword_2803A91B8);
    v77 = 0;
  }

  v78 = v119;
  v79 = v113;
  *&v35[v59[9]] = v77;
  sub_26A4DBD68(v125, v121, &qword_2803A91B8);
  if (v122)
  {
    v80 = OUTLINED_FUNCTION_1_109();
    v82 = v81(v80);
    __swift_destroy_boxed_opaque_existential_1(v121);
  }

  else
  {
    sub_26A4DBD10(v121, &qword_2803A91B8);
    v82 = 0;
  }

  *&v35[v59[10]] = v82;
  sub_26A4DBD68(v124, v121, &qword_2803A91B8);
  if (v122)
  {
    v83 = OUTLINED_FUNCTION_1_109();
    v85 = v84(v83);
    __swift_destroy_boxed_opaque_existential_1(v121);
  }

  else
  {
    sub_26A4DBD10(v121, &qword_2803A91B8);
    v85 = 0;
  }

  *&v35[v59[11]] = v85;
  sub_26A4DBD68(v123, v121, &qword_2803A91B8);
  if (v122)
  {
    v86 = OUTLINED_FUNCTION_1_109();
    v88 = v87(v86);
    OUTLINED_FUNCTION_19_0(v123);
    OUTLINED_FUNCTION_19_0(v124);
    OUTLINED_FUNCTION_19_0(v125);
    OUTLINED_FUNCTION_19_0(v126);
    __swift_destroy_boxed_opaque_existential_1(v121);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(v123);
    OUTLINED_FUNCTION_9_0(v124);
    OUTLINED_FUNCTION_9_0(v125);
    OUTLINED_FUNCTION_9_0(v126);
    OUTLINED_FUNCTION_9_0(v121);
    v88 = 0;
  }

  *&v35[v59[12]] = v88;
  sub_26A82B1F0(v35, v64);
  v89 = v114;
  sub_26A84D1D8();
  v90 = v118;
  sub_26A4DBDB4(v89, v118, &qword_2803B3800);
  OUTLINED_FUNCTION_26_0(v90);
  if (v46)
  {
    sub_26A4DBD10(v90, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v92 = (v79 + *(v111 + 36));
    v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v94 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v92 + v93, 1, 1, v94);
    *v92 = KeyPath;
  }

  else
  {
    v95 = v105;
    v96 = *(v106 + 32);
    v96(v105, v90, v78);
    v97 = swift_getKeyPath();
    v98 = (v79 + *(v111 + 36));
    v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v96(v98 + v99, v95, v78);
    v100 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v98 + v99, 0, 1, v100);
    *v98 = v97;
  }

  sub_26A82B1F0(v64, v79);
  v101 = sub_26A84D168();
  v102 = v115;
  sub_26A4DDE44(v101);

  sub_26A4DBD10(v79, &qword_2803AAB70);
  sub_26A84D178();

  sub_26A4DBD68(v102, v116, &qword_2803AAB78);
  sub_26A82E6CC();
  v103 = sub_26A851248();
  OUTLINED_FUNCTION_9_0(v102);
  return v103;
}

uint64_t sub_26A82E3F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(a3, v22, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v8 = qword_281588998;
  *(v7 + 32) = qword_281588998;
  v9 = byte_2815889A0;
  *(v7 + 40) = byte_2815889A0;
  sub_26A4E324C(v8, v9);
  sub_26A621A9C(v7);
  *(inited + 32) = v10;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2760, v20, &qword_2803AA880);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_26A8570D0;
  v12 = qword_281588998;
  *(v11 + 32) = qword_281588998;
  v13 = byte_2815889A0;
  *(v11 + 40) = byte_2815889A0;
  sub_26A4E324C(v12, v13);

  sub_26A58787C(v14);
  sub_26A5075B0();

  if (v17)
  {
    *(inited + 40) = v17;
    *(inited + 56) = v18;
    *(inited + 72) = v19;
  }

  else
  {
    sub_26A4F20CC(v21, inited + 40);
  }

  sub_26A4DBD10(v20, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v15 = sub_26A8516A8();
  v21[0] = 0u;
  memset(v20, 0, sizeof(v20));
  sub_26A66DDEC(v15, a4);

  sub_26A4DBD10(v20, &qword_2803ABAC0);
  return sub_26A4DBD10(v22, &qword_2803AA880);
}

unint64_t sub_26A82E6CC()
{
  result = qword_2803B9610;
  if (!qword_2803B9610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB78);
    sub_26A82E784();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9610);
  }

  return result;
}

unint64_t sub_26A82E784()
{
  result = qword_2803B9618;
  if (!qword_2803B9618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB68);
    sub_26A82E810();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9618);
  }

  return result;
}

unint64_t sub_26A82E810()
{
  result = qword_2803B9620;
  if (!qword_2803B9620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB70);
    sub_26A82E8F8(&qword_2803B4220, type metadata accessor for SimpleItemReverseRichView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9620);
  }

  return result;
}

uint64_t sub_26A82E8F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TableCell()
{
  result = qword_2803B9628;
  if (!qword_2803B9628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A82E9F4()
{
  sub_26A84ACC8();
  if (v0 <= 0x3F)
  {
    sub_26A538008(319, &qword_2803A9240);
    if (v1 <= 0x3F)
    {
      sub_26A538008(319, &qword_2803B9638);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26A82EB20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a4;
  v101 = type metadata accessor for TableCell();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a3;
  v10 = sub_26A82F48C(a1, a3);
  v102 = a1;
  v11 = [a1 column_span];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 integerValue];
  }

  else
  {
    v13 = 1;
  }

  v14 = v102;
  v15 = sub_26A628614([v102 horizontal_alignment]);
  v16 = [v14 applySmallCaps];
  sub_26A84ACB8();
  v17 = v101;
  *&v9[*(v101 + 20)] = v10;
  *&v9[v17[6]] = a2;
  *&v9[v17[7]] = v13;
  v9[v17[8]] = v15;
  v9[v17[9]] = v16;
  *&v9[v17[10]] = 0;
  v18 = v100;
  sub_26A625DE4(v9, v100);
  v19 = [v14 text];
  if (v19)
  {
    v20 = v19;
    v21 = sub_26A7364C8(v19);
    if (v21)
    {
      v22 = v21;
      v98 = v20;
      v23 = sub_26A73670C(v21);
      v24 = 0;
      v25 = v22 & 0xC000000000000001;
      v26 = v22 & 0xFFFFFFFFFFFFFF8;
      v27 = MEMORY[0x277D84F90];
LABEL_7:
      while (v23 != v24)
      {
        if (v25)
        {
          v28 = MEMORY[0x26D6644E0](v24, v22);
        }

        else
        {
          if (v24 >= *(v26 + 16))
          {
            goto LABEL_121;
          }

          v28 = *(v22 + 8 * v24 + 32);
        }

        v29 = v28;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_120;
        }

        v30 = sub_26A589524(v28);
        if (v30)
        {
          v31 = v30;
          v104 = v29;
          v92 = v24 + 1;
          v93 = v26;
          v94 = v25;
          v95 = v23;
          v96 = v22;
          v25 = sub_26A73670C(v30);
          v26 = 0;
          v23 = v31 & 0xFFFFFFFFFFFFFF8;
          v105 = MEMORY[0x277D84F90];
          v97 = v27;
          while (v25 != v26)
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x26D6644E0](v26, v31);
            }

            else
            {
              if (v26 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

              v32 = *(v31 + 8 * v26 + 32);
            }

            v33 = v32;
            v22 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_125;
            }

            v34 = sub_26A58945C(v32);
            v36 = v35;

            ++v26;
            if (v36)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_0_53();
                sub_26A7A110C();
                v105 = v40;
              }

              v37 = *(v105 + 16);
              if (v37 >= *(v105 + 24) >> 1)
              {
                sub_26A7A110C();
                v105 = v41;
              }

              v38 = v105;
              *(v105 + 16) = v37 + 1;
              v39 = v38 + 16 * v37;
              *(v39 + 32) = v34;
              *(v39 + 40) = v36;
              v26 = v22;
            }
          }

          v42 = 0;
          v43 = v104;
          v44 = *(v105 + 16);
          v103 = v105 + 32;
          v45 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v42 == v44)
            {

              v27 = v97;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_0_53();
                sub_26A7A1E58();
                v27 = v66;
              }

              v65 = *(v27 + 16);
              if (v65 >= *(v27 + 24) >> 1)
              {
                sub_26A7A1E58();
                v27 = v67;
              }

              *(v27 + 16) = v65 + 1;
              *(v27 + 8 * v65 + 32) = v45;
              v23 = v95;
              v22 = v96;
              v25 = v94;
              v26 = v93;
              v24 = v92;
              goto LABEL_7;
            }

            if (v42 >= *(v105 + 16))
            {
              goto LABEL_127;
            }

            v46 = (v103 + 16 * v42);
            v47 = *v46;
            v26 = v46[1];

            v48 = sub_26A851858();
            v22 = *(v45 + 16);
            v23 = v22 + v48;
            if (__OFADD__(v22, v48))
            {
              goto LABEL_128;
            }

            v25 = v48;
            if (!swift_isUniquelyReferenced_nonNull_native() || (v49 = *(v45 + 24) >> 1, v49 < v23))
            {
              sub_26A7A1E7C();
              v45 = v50;
              v49 = *(v50 + 24) >> 1;
            }

            v51 = *(v45 + 16);
            v52 = HIBYTE(v26) & 0xF;
            if ((v26 & 0x2000000000000000) == 0)
            {
              v52 = v47 & 0xFFFFFFFFFFFFLL;
            }

            v106 = v47;
            v107 = v26;
            *&v108 = 0;
            *(&v108 + 1) = v52;
            v53 = 0;
            v23 = v49 - v51;
            if (v49 != v51)
            {
              break;
            }

            *&v56 = 0;
            *(&v56 + 1) = v52;
LABEL_45:
            v109 = v47;
            v110 = v26;
            v111 = v56;
            if (v53 < v25)
            {
              goto LABEL_129;
            }

            if (v53 > 0)
            {
              v57 = *(v45 + 16);
              v58 = __OFADD__(v57, v53);
              v59 = v57 + v53;
              if (v58)
              {
                goto LABEL_131;
              }

              *(v45 + 16) = v59;
            }

            if (v53 == v23)
            {
              v23 = *(v45 + 16);
              v60 = sub_26A8518A8();
              v43 = v104;
              if (v61)
              {
                v62 = v60;
                v25 = v61;
LABEL_54:
                v22 = *(v45 + 24) >> 1;
                if (v22 < v23 + 1)
                {
                  sub_26A7A1E7C();
                  v45 = v64;
                  v22 = *(v64 + 24) >> 1;
                }

                v26 = v45 + 16 * v23 + 40;
                do
                {
                  if (v23 >= v22)
                  {
                    *(v45 + 16) = v23;
                    goto LABEL_54;
                  }

                  *(v26 - 8) = v62;
                  *v26 = v25;
                  ++v23;
                  v62 = sub_26A8518A8();
                  v25 = v63;
                  v26 += 16;
                }

                while (v63);
                *(v45 + 16) = v23;
              }
            }

            else
            {
              v43 = v104;
            }

            ++v42;
          }

          v22 = v45 + 16 * v51 + 32;
          v26 = v23 & ~(v23 >> 63);
          while (v26 != v53)
          {
            v54 = sub_26A8518A8();
            if (!v55)
            {
              v47 = v106;
              v26 = v107;
              goto LABEL_44;
            }

            ++v53;
            *v22 = v54;
            *(v22 + 8) = v55;
            v22 += 16;
            if (v23 == v53)
            {
              v47 = v106;
              v26 = v107;
              v53 = v23;
LABEL_44:
              v56 = v108;
              goto LABEL_45;
            }
          }

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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        ++v24;
      }

      v25 = 0;
      v26 = *(v27 + 16);
      v68 = MEMORY[0x277D84F90];
      while (v26 != v25)
      {
        if (v25 >= *(v27 + 16))
        {
          goto LABEL_122;
        }

        v23 = *(v27 + 8 * v25 + 32);
        v22 = *(v23 + 16);
        v69 = *(v68 + 16);
        if (__OFADD__(v69, v22))
        {
          goto LABEL_123;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v69 + v22 > *(v68 + 24) >> 1)
        {
          sub_26A7A1E7C();
          v68 = v70;
        }

        if (*(v23 + 16))
        {
          if ((*(v68 + 24) >> 1) - *(v68 + 16) < v22)
          {
            goto LABEL_130;
          }

          swift_arrayInitWithCopy();

          if (v22)
          {
            v71 = *(v68 + 16);
            v58 = __OFADD__(v71, v22);
            v72 = v71 + v22;
            if (v58)
            {
              goto LABEL_133;
            }

            *(v68 + 16) = v72;
          }
        }

        else
        {

          if (v22)
          {
            goto LABEL_124;
          }
        }

        ++v25;
      }

      v22 = *(v68 + 16);
      if (!v22)
      {
LABEL_111:

        goto LABEL_117;
      }

      v23 = 0;
      v73 = 0;
      v26 = v68 + 32;
      v74 = MEMORY[0x277D84F90];
      while (v73 < *(v68 + 16))
      {
        result = sub_26A830178(*(v26 + 16 * v73), *(v26 + 16 * v73 + 8));
        if ((result & 0x100000000) != 0)
        {
          __break(1u);
          return result;
        }

        v76 = (result - 14) <= 0xFFFFFFFB && (result - 8232) >= 2;
        if (!v76 || result == 133)
        {
          if (v23 == v73)
          {
            ++v23;
          }

          else
          {
            if (v73 < v23)
            {
              goto LABEL_134;
            }

            if (v23 < 0)
            {
              goto LABEL_135;
            }

            v77 = *(v68 + 16);
            if (v77 < v23 || v77 < v73)
            {
              goto LABEL_136;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_0_53();
              sub_26A7A1D60();
              v74 = v81;
            }

            v79 = *(v74 + 16);
            v25 = v79 + 1;
            if (v79 >= *(v74 + 24) >> 1)
            {
              sub_26A7A1D60();
              v74 = v82;
            }

            *(v74 + 16) = v25;
            v80 = (v74 + 32 * v79);
            v80[4] = v68;
            v80[5] = v26;
            v80[6] = v23;
            v80[7] = (2 * v73) | 1;
            v23 = v73 + 1;
            if (v79 == 0x7FFFFFFFFFFFFFFELL)
            {
LABEL_109:
              if (v23 == v22)
              {

                goto LABEL_111;
              }

              if (v22 < v23)
              {
                goto LABEL_137;
              }

              v22 = sub_26A8496F8(v23, v22, v68);
              v23 = v83;
              v25 = v84;
              v26 = v85;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_138;
              }

              goto LABEL_114;
            }
          }

          v73 = v23;
        }

        else
        {
          ++v73;
        }

        if (v73 == v22)
        {
          goto LABEL_109;
        }
      }

LABEL_132:
      __break(1u);
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
LABEL_138:
      OUTLINED_FUNCTION_0_53();
      sub_26A7A1D60();
      v74 = v90;
LABEL_114:
      v86 = *(v74 + 16);
      if (v86 >= *(v74 + 24) >> 1)
      {
        sub_26A7A1D60();
        v74 = v91;
      }

      *(v74 + 16) = v86 + 1;
      v87 = (v74 + 32 * v86);
      v87[4] = v22;
      v87[5] = v23;
      v87[6] = v25;
      v87[7] = v26;

LABEL_117:
      v18 = v100;
    }

    else
    {
    }
  }

  v88 = v102;
  v89 = sub_26A55CB10();

  *(v18 + *(v101 + 40)) = v89;
  return result;
}

uint64_t sub_26A82F430@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TableCell();
  v4 = *(v1 + *(v3 + 36));
  *a1 = *(v1 + *(v3 + 20));
  *(a1 + 8) = v4;
}

uint64_t sub_26A82F48C(void *a1, uint64_t a2)
{
  v95 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9640);
  MEMORY[0x28223BE20](v92);
  v93 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v94 = &v82 - v5;
  *&v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9648);
  MEMORY[0x28223BE20](v101);
  v96 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v82 - v8;
  v9 = sub_26A84BA88();
  v99 = *(v9 - 8);
  *&v100 = v9;
  MEMORY[0x28223BE20](v9);
  v91 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9650);
  MEMORY[0x28223BE20](v97);
  v98 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v21 = sub_26A84BD28();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x28223BE20](v25).n128_u64[0];
  v28 = &v82 - v27;
  v29 = [a1 text];
  if (!v29)
  {
    v87 = v17;
    v88 = v20;
    v85 = v14;
    v86 = v24;
    v89 = v22;
    v32 = v100;
    v33 = v101;
    v34 = [a1 visual];
    if (!v34)
    {
      v44 = sub_26A850DF8();
      sub_26A851448();
      sub_26A84F628();
      v107[0] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06E8);
      sub_26A601C38();
      return sub_26A851248();
    }

    v84 = v34;
    RFVisualProperty.asVisualProperty()();
    v35 = sub_26A84BCE8();
    v36 = *(v89 + 8);
    v82 = v21;
    v83 = v36;
    v36(v28, v21);
    v37 = v88;
    sub_26A7DBC8C(v35, v88);

    v38 = v87;
    (*(v99 + 104))(v87, *MEMORY[0x277D62EA8], v32);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v32);
    v39 = v98;
    v40 = *(v97 + 48);
    sub_26A51D0F8(v37, v98, &qword_2803AD160);
    sub_26A51D0F8(v38, v39 + v40, &qword_2803AD160);
    if (__swift_getEnumTagSinglePayload(v39, 1, v32) == 1)
    {
      sub_26A4DBD10(v38, &qword_2803AD160);
      sub_26A4DBD10(v37, &qword_2803AD160);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39 + v40, 1, v32);
      v42 = v33;
      v43 = v86;
      if (EnumTagSinglePayload == 1)
      {
        sub_26A4DBD10(v39, &qword_2803AD160);
LABEL_21:
        v80 = sub_26A850DF8();
        sub_26A851448();
        sub_26A84F628();
        v107[0] = v80;
        memcpy(v106, v107, sizeof(v106));
        sub_26A51D0F8(v107, &v102, &qword_2803B06E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B06E8);
        sub_26A601C38();
        v31 = sub_26A851248();

        v60 = v107;
        v76 = &qword_2803B06E8;
LABEL_22:
        sub_26A4DBD10(v60, v76);
        return v31;
      }
    }

    else
    {
      v45 = v85;
      sub_26A51D0F8(v39, v85, &qword_2803AD160);
      v46 = __swift_getEnumTagSinglePayload(v39 + v40, 1, v32);
      v47 = v32;
      v43 = v86;
      if (v46 != 1)
      {
        v77 = v99;
        v78 = v91;
        (*(v99 + 32))(v91, v39 + v40, v47);
        sub_26A830704(&qword_2803B9678, MEMORY[0x277D62EB8]);
        LODWORD(v97) = sub_26A851758();
        v79 = *(v77 + 8);
        v79(v78, v47);
        sub_26A4DBD10(v87, &qword_2803AD160);
        sub_26A4DBD10(v88, &qword_2803AD160);
        v79(v45, v47);
        sub_26A4DBD10(v39, &qword_2803AD160);
        v48 = v96;
        v49 = v89;
        v42 = v101;
        if (v97)
        {
          goto LABEL_21;
        }

LABEL_11:
        if (v95 && *(*(v95 + 16) + 72) == 2)
        {
          ImageView = type metadata accessor for TableCellDelayedLoadImageView();
          v51 = v90;
          v52 = v84;
          RFVisualProperty.asVisualProperty()();
          *v51 = swift_getKeyPath();
          *(v51 + 8) = 0;
          v53 = v51 + *(ImageView + 24);
          v106[0] = 0;
          sub_26A851048();
          v54 = v107[1];
          *v53 = v107[0];
          *(v53 + 8) = v54;
          if (qword_2803A8B28 != -1)
          {
            swift_once();
          }

          v102 = xmmword_2803D1C60;
          v103 = *algn_2803D1C70;
          v104 = xmmword_2803D1C80;
          v105 = unk_2803D1C90;
          *v106 = xmmword_2803D1C60;
          *&v106[16] = *algn_2803D1C70;
          *&v106[32] = xmmword_2803D1C80;
          *&v106[48] = unk_2803D1C90;
          v100 = unk_2803D1C90;
          v101 = xmmword_2803D1C80;
          sub_26A51D0F8(&v102, v107, &qword_2803A91B0);
          sub_26A6AEE74(v107);
          v55 = (v51 + *(v42 + 36));
          memcpy(v55, v107, 0xC0uLL);
          v56 = v100;
          v55[12] = v101;
          v55[13] = v56;
          v57 = *&v106[16];
          v55[14] = *v106;
          v55[15] = v57;
          v58 = *&v106[48];
          v55[16] = *&v106[32];
          v55[17] = v58;
          v59 = &qword_2803B9648;
          sub_26A51D0F8(v51, v48, &qword_2803B9648);
          sub_26A830648();
          v31 = sub_26A851248();

          v60 = v51;
        }

        else
        {
          v61 = v84;
          RFVisualProperty.asVisualProperty()();
          v62 = v94;
          v63 = v82;
          (*(v49 + 16))(v94, v43, v82);
          v64 = v43;
          v65 = type metadata accessor for VisualPropertyView();
          v66 = v62 + v65[5];
          *v66 = swift_getKeyPath();
          *(v66 + 9) = 0;
          swift_unknownObjectWeakInit();
          v67 = v62 + v65[6];
          *v67 = swift_getKeyPath();
          *(v67 + 8) = 0;
          v68 = v62 + v65[7];
          *v68 = swift_getKeyPath();
          *(v68 + 8) = 0;
          v69 = v65[8];
          *(v62 + v69) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
          swift_storeEnumTagMultiPayload();
          v70 = v62 + v65[9];
          v106[0] = 0;
          sub_26A851048();
          v83(v64, v63);
          v71 = v107[1];
          *v70 = v107[0];
          *(v70 + 8) = v71;
          if (qword_2803A8B28 != -1)
          {
            swift_once();
          }

          v102 = xmmword_2803D1C60;
          v103 = *algn_2803D1C70;
          v104 = xmmword_2803D1C80;
          v105 = unk_2803D1C90;
          *v106 = xmmword_2803D1C60;
          *&v106[16] = *algn_2803D1C70;
          *&v106[32] = xmmword_2803D1C80;
          *&v106[48] = unk_2803D1C90;
          v100 = unk_2803D1C90;
          v101 = xmmword_2803D1C80;
          sub_26A51D0F8(&v102, v107, &qword_2803A91B0);
          sub_26A6AEE74(v107);
          v72 = (v62 + *(v92 + 36));
          memcpy(v72, v107, 0xC0uLL);
          v73 = v100;
          v72[12] = v101;
          v72[13] = v73;
          v74 = *&v106[16];
          v72[14] = *v106;
          v72[15] = v74;
          v75 = *&v106[48];
          v72[16] = *&v106[32];
          v72[17] = v75;
          v59 = &qword_2803B9640;
          sub_26A51D0F8(v62, v93, &qword_2803B9640);
          sub_26A830538();
          v31 = sub_26A851248();

          v60 = v62;
        }

        v76 = v59;
        goto LABEL_22;
      }

      sub_26A4DBD10(v87, &qword_2803AD160);
      sub_26A4DBD10(v88, &qword_2803AD160);
      (*(v99 + 8))(v45, v32);
      v42 = v101;
    }

    sub_26A4DBD10(v39, &qword_2803B9650);
    v48 = v96;
    v49 = v89;
    goto LABEL_11;
  }

  v30 = v29;
  v31 = sub_26A735A8C();

  return v31;
}

__n128 sub_26A83001C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A850248();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9680);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9688) + 36);
  *v7 = v5;
  result = *(v2 + 192);
  *(v7 + 24) = *(v2 + 208);
  *(v7 + 8) = result;
  *(v7 + 40) = 0;
  return result;
}

double sub_26A8300C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, v2, sizeof(v6));
  *&result = sub_26A83001C(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_26A83011C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_26A8518F8();
    OUTLINED_FUNCTION_2_105(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x26D663B40](15, a1 >> 16);
    OUTLINED_FUNCTION_2_105(v3);
    return v4 | 8;
  }
}

unint64_t sub_26A830178(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_26A83030C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_26A852238();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_26A8522B8();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_26A83030C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_26A8303AC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_26A83041C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_26A8303AC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_26A83011C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26A83041C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_26A8522B8();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_26A830538()
{
  result = qword_2803B9658;
  if (!qword_2803B9658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9640);
    sub_26A830704(&qword_28157E9E0, type metadata accessor for VisualPropertyView);
    sub_26A8305F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9658);
  }

  return result;
}

unint64_t sub_26A8305F4()
{
  result = qword_2803B9660;
  if (!qword_2803B9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9660);
  }

  return result;
}

unint64_t sub_26A830648()
{
  result = qword_2803B9668;
  if (!qword_2803B9668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9648);
    sub_26A830704(&qword_2803B9670, type metadata accessor for TableCellDelayedLoadImageView);
    sub_26A8305F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9668);
  }

  return result;
}

uint64_t sub_26A830704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A830754(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 224);
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

uint64_t sub_26A830794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 224) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A83084C()
{
  result = qword_2803B9690;
  if (!qword_2803B9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9688);
    sub_26A8308D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9690);
  }

  return result;
}

unint64_t sub_26A8308D8()
{
  result = qword_2803B9698;
  if (!qword_2803B9698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9698);
  }

  return result;
}

BOOL sub_26A830980()
{
  if (sub_26A55DE04(v0) && (v1 = sub_26A73670C(), , v1))
  {
    return [v0 separatorStyle] == 1;
  }

  else
  {
    return 1;
  }
}

id sub_26A8309E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for TableRowViewModel();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_26A559E0C(v2, a1, v8);

    if (!v3)
    {
      sub_26A83D898(a2);
    }
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v10 = v2;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    swift_willThrow();
    return v2;
  }
}

uint64_t type metadata accessor for AppIconView()
{
  result = qword_28157F9A0;
  if (!qword_28157F9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A830BD4()
{
  sub_26A830E8C(319, &qword_2803B7628, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26A830E8C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A830E8C(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A830E28(319, &qword_2803AFE48, &qword_2803AFE50, &unk_26A867F20, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A4EEA20();
          if (v4 <= 0x3F)
          {
            sub_26A830E28(319, &qword_2803B96B8, &qword_2803B48D0, &unk_26A8781F8, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_26A830E8C(319, &qword_2803B96C0, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_26A4EC5B0(319, &qword_2803B96C8);
                if (v7 <= 0x3F)
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

void sub_26A830E28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_26A830E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A830F0C()
{
  v1 = objc_opt_self();
  v2 = [v1 currentTraitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 0;
  }

  v4 = [v1 currentTraitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 3)
  {
    return 0;
  }

  v8 = [v1 currentTraitCollection];
  v9 = [v8 userInterfaceStyle];

  v6 = v9 != 1;
  v10 = [v0 homeScreenIconStyleConfiguration];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 configurationType];
    if (v12 == 2)
    {
      v14 = [v11 tintColor];
      v15 = [v14 CGColor];

      if (!v15)
      {
        return v6;
      }

      v6 = 2;
      v11 = v15;
    }

    else
    {
      v13 = v12 != 4 && v9 != 1;
      v6 = v12 == 5 || v13;
    }
  }

  return v6;
}

id sub_26A831080()
{
  v1 = [v0 homeScreenIconStyleConfiguration];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 configurationType] != 2)
  {
    goto LABEL_6;
  }

  v3 = [v2 tintColor];
  v4 = v3;
  if (!v3)
  {

    return v4;
  }

  v5 = [v3 CGColor];

  if (!v5)
  {
LABEL_6:

    return 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];

  return v4;
}

id sub_26A83115C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  EnvironmentImageStyle.init()((a6 + 2));
  v12 = type metadata accessor for AppIconView();
  v13 = v12[6];
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CE8);
  OUTLINED_FUNCTION_29_23();
  v14 = a6 + v12[7];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v12[8];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_29_23();
  v16 = v12[9];
  *(a6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  OUTLINED_FUNCTION_29_23();
  v17 = a6 + v12[10];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v12[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B48D0);
  sub_26A851048();
  *(a6 + v18) = v22;
  v19 = v12[13];
  result = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
  *(a6 + v19) = result;
  *a6 = a1;
  a6[1] = a2;
  if (qword_28157F9E0 != -1)
  {
    result = swift_once();
  }

  v21 = a6 + v12[12];
  *v21 = a3;
  *(v21 + 1) = a4;
  v21[16] = a5 & 1;
  return result;
}

uint64_t sub_26A831344()
{
  OUTLINED_FUNCTION_16_37();
  v1 = OUTLINED_FUNCTION_5_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  sub_26A8516C8();
  swift_endAccess();
  *(v0 + 56) = 0;

  *(v0 + 64) = 0;
}

uint64_t sub_26A8313B8()
{
  OUTLINED_FUNCTION_1_10();
  *(v0 + 40) = sub_26A851BD8();
  *(v0 + 48) = sub_26A851BC8();

  return MEMORY[0x2822009F8](sub_26A83142C, 0, 0);
}

uint64_t sub_26A83142C()
{
  OUTLINED_FUNCTION_1_10();
  *(v0 + 56) = sub_26A851BC8();
  OUTLINED_FUNCTION_19_30();
  sub_26A851B78();
  OUTLINED_FUNCTION_15_43();
  v1 = OUTLINED_FUNCTION_3_95();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26A8314A4()
{
  OUTLINED_FUNCTION_6_10();

  if (qword_28157FA00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9760);
  sub_26A8516C8();
  swift_endAccess();
  if (qword_28157F9E8 != -1)
  {
    OUTLINED_FUNCTION_9_66();
  }

  sub_26A831344();

  sub_26A851B78();
  OUTLINED_FUNCTION_15_43();
  v0 = OUTLINED_FUNCTION_3_95();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26A8315E4()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

uint64_t sub_26A831664(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_26A851F98();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  if (sub_26A73670C(MEMORY[0x277D84F90]))
  {
    sub_26A621FB8(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  *(v6 + 16) = v19;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9750);
  *(v6 + 48) = sub_26A8516A8();
  v20 = [objc_opt_self() defaultCenter];
  sub_26A851FA8();

  OUTLINED_FUNCTION_7_77();
  sub_26A836DA4(v21, v22);
  OUTLINED_FUNCTION_19_30();

  sub_26A84EC98();
  OUTLINED_FUNCTION_19_30();

  (*(v14 + 8))(v18, v12);
  swift_beginAccess();
  sub_26A84EB58();
  swift_endAccess();

  return v6;
}

uint64_t sub_26A8318A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6)
{
  v9 = v6;
  v15 = sub_26A851F98();
  OUTLINED_FUNCTION_15();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_32_14();
  if (sub_26A73670C(MEMORY[0x277D84F90]))
  {
    sub_26A621FB8(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  *(v9 + 16) = v19;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a6;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  *(v9 + 48) = sub_26A8516A8();
  v20 = [objc_opt_self() defaultCenter];
  sub_26A851FA8();

  OUTLINED_FUNCTION_7_77();
  sub_26A836DA4(v21, v22);
  OUTLINED_FUNCTION_19_30();

  sub_26A84EC98();
  OUTLINED_FUNCTION_19_30();

  (*(v17 + 8))(v7, v15);
  swift_beginAccess();
  sub_26A84EB58();
  swift_endAccess();

  return v9;
}

void sub_26A831B48()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26A84AC58();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_34();
  sub_26A8324E0(v5, v3, &qword_2803B1CF0, &unk_26A86E6F8, &qword_2803B9740);

  (*(v0 + 24))(v16);
  sub_26A84AC18();
  v22 = *(v10 + 8);
  v22(v14, v8);
  sub_26A5136A0(v7, v23);
  (*(v10 + 16))(v14, v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9740);
  swift_allocObject();
  v17 = sub_26A832E08(v5, v3, v23, v14);
  v18 = *(v0 + 64);
  if (v18 && (v19 = sub_26A4C1080(), (*(v0 + 80) & 1) == 0) && v19 == *(v0 + 72))
  {
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);

    sub_26A8324E0(v20, v21, &qword_2803B1CF0, &unk_26A86E6F8, &qword_2803B9740);
  }

  else
  {
  }

  sub_26A832854(v17, sub_26A655620);

  v22(v1, v8);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A831DA4()
{
  OUTLINED_FUNCTION_28_0();
  v4 = v3;
  v5 = type metadata accessor for ImageSourceModel();
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_32_14();
  v7 = sub_26A84AC58();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_34();
  sub_26A83227C(v4);

  (*(v0 + 24))(v15);
  sub_26A84AC18();
  v16 = *(v9 + 8);
  v16(v13, v7);
  sub_26A837114();
  (*(v9 + 16))(v13, v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9750);
  swift_allocObject();
  v17 = sub_26A832EE8(v4, v2, v13);
  v18 = *(v0 + 64);
  if (v18)
  {
    v19 = sub_26A4C1080();
    if ((*(v0 + 80) & 1) == 0 && v19 == *(v0 + 72))
    {
      v20 = *(v18 + 16);

      sub_26A83227C(v20);
    }
  }

  sub_26A832754(v17);

  v16(v1, v7);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A831FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v6 = sub_26A84AC58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_26A8324E0(a2, a3, &qword_2803B1CC0, &unk_26A86E6C8, &qword_2803B9708);

  (*(v3 + 24))(v13);
  sub_26A84AC18();
  v22 = *(v7 + 8);
  v22(v9, v6);
  (*(v7 + 16))(v9, v12, v6);
  v14 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9708);
  swift_allocObject();
  v15 = sub_26A832FE4(a2, a3, v14, v9);
  v16 = *(v3 + 64);
  if (v16 && (v17 = sub_26A4C1080(), (*(v3 + 80) & 1) == 0) && v17 == *(v3 + 72))
  {
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);

    sub_26A8324E0(v18, v19, &qword_2803B1CC0, &unk_26A86E6C8, &qword_2803B9708);
  }

  else
  {
  }

  sub_26A832854(v15, sub_26A655CFC);

  return (v22)(v12, v6);
}

uint64_t sub_26A83227C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_26A5484D4(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + 48);
    *(v1 + 48) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D88);
    sub_26A8523E8();
    v7 = *(*(v11 + 56) + 8 * v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9750);
    sub_26A852408();
    *(v1 + 48) = v11;
    swift_endAccess();
    v8 = *(v1 + 64);
    if (v8 && v7 == v8)
    {
      *(v2 + 64) = swift_weakLoadStrong();
    }

    v9 = *(v2 + 56);
    if (v9 && v7 == v9)
    {
      *(v2 + 56) = swift_weakLoadStrong();
    }

    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }

    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }

    swift_weakAssign();
    swift_weakAssign();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v7;
}

uint64_t sub_26A8324E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v8 = v5;
  OUTLINED_FUNCTION_16_37();
  v11 = sub_26A548510(a1, a2);
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v5 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    sub_26A8523E8();

    v14 = *(*(v18 + 56) + 8 * v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    sub_26A852408();
    *(v5 + 48) = v18;
    swift_endAccess();
    v15 = *(v5 + 64);
    if (v15 && v14 == v15)
    {
      *(v8 + 64) = swift_weakLoadStrong();
    }

    v16 = *(v8 + 56);
    if (v16 && v14 == v16)
    {
      *(v8 + 56) = swift_weakLoadStrong();
    }

    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }

    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }

    swift_weakAssign();
    swift_weakAssign();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v14;
}

uint64_t sub_26A832754(uint64_t a1)
{
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v4 = v1[6];
  sub_26A655864();
  v1[6] = v4;
  swift_endAccess();
  if (!v1[8])
  {
    v1[8] = a1;
  }

  if (v1[7])
  {
    swift_weakAssign();
    swift_weakAssign();
  }

  v1[7] = a1;
}

uint64_t sub_26A832854(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  OUTLINED_FUNCTION_16_37();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v2[6];
  a2(a1, v5, v6, isUniquelyReferenced_nonNull_native);
  v2[6] = v9;
  swift_endAccess();
  if (!v2[8])
  {
    v2[8] = a1;
  }

  if (v2[7])
  {
    swift_weakAssign();
    swift_weakAssign();
  }

  v2[7] = a1;
}

void sub_26A832958(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = sub_26A84AC58();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_32_14();
  v13 = sub_26A8324E0(a1, a2, &qword_2803B1CF0, &unk_26A86E6F8, &qword_2803B9740);
  if (v13)
  {
    v14 = v13;
    (*(v5 + 24))();
    v15 = sub_26A84AC38();
    (*(v11 + 8))(v4, v9);
    if (v15)
    {
      sub_26A832854(v14, sub_26A655620);
      sub_26A5136A0(v14 + 32, a3);
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A832AD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_26A84AC58();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_32_14();
  v11 = sub_26A83227C(a1);
  if (v11)
  {
    v12 = v11;
    (*(v4 + 24))();
    v13 = sub_26A84AC38();
    (*(v9 + 8))(v3, v7);
    if (v13)
    {
      sub_26A832754(v12);
      sub_26A837114();

      v14 = type metadata accessor for ImageSourceModel();
      __swift_storeEnumTagSinglePayload(a2, 0, 1, v14);
    }

    else
    {
      type metadata accessor for ImageSourceModel();
      v20 = OUTLINED_FUNCTION_24_2();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    }

    OUTLINED_FUNCTION_61_2();
  }

  else
  {
    type metadata accessor for ImageSourceModel();
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_61_2();

    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

uint64_t sub_26A832C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26A84AC58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A8324E0(a1, a2, &qword_2803B1CC0, &unk_26A86E6C8, &qword_2803B9708);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  (*(v3 + 24))();
  v12 = sub_26A84AC38();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {

    return 0;
  }

  sub_26A832854(v11, sub_26A655CFC);
  v13 = *(v11 + 32);

  return v13;
}

uint64_t sub_26A832E08(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  swift_weakInit();
  swift_weakInit();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_26A576F3C(a3, (v4 + 32));
  v9 = *(*v4 + 120);
  v10 = sub_26A84AC58();
  (*(*(v10 - 8) + 32))(v4 + v9, a4, v10);
  return v4;
}

char *sub_26A832EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  swift_weakInit();
  *(v3 + 2) = a1;
  sub_26A837168();
  v6 = *(*v3 + 120);
  v7 = sub_26A84AC58();
  (*(*(v7 - 8) + 32))(&v3[v6], a3, v7);
  return v3;
}

char *sub_26A832FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_weakInit();
  swift_weakInit();
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  v9 = *(*v4 + 120);
  v10 = sub_26A84AC58();
  (*(*(v10 - 8) + 32))(&v4[v9], a4, v10);
  return v4;
}

void sub_26A83344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_41();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CE8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  type metadata accessor for AppIconView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84FBC8();
    OUTLINED_FUNCTION_46();
    (*(v34 + 32))(v23, v33);
  }

  else
  {
    sub_26A851EA8();
    v35 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v26 + 8))(v30, v24);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A83361C()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for AppIconView() + 28);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

void sub_26A83375C()
{
  v0 = sub_26A851F98();
  __swift_allocate_value_buffer(v0, qword_2803B96A0);
  __swift_project_value_buffer(v0, qword_2803B96A0);
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D77548];
  sub_26A851FA8();
}

void sub_26A833808()
{
  v0 = sub_26A851F98();
  __swift_allocate_value_buffer(v0, qword_28157F9C0);
  __swift_project_value_buffer(v0, qword_28157F9C0);
  v1 = [objc_opt_self() defaultCenter];
  if (qword_28157D818 != -1)
  {
    swift_once();
  }

  v2 = qword_28157D820;
  sub_26A851FA8();
}

uint64_t sub_26A8338E0()
{
  sub_26A84E2D8();
  sub_26A836DA4(&qword_28157FFA0, MEMORY[0x277D637A8]);
  result = sub_26A8516A8();
  qword_28157FA08 = result;
  return result;
}

uint64_t sub_26A833960()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9710);
  swift_allocObject();
  result = sub_26A8318A0(16, 0, sub_26A69396C, 0, &qword_2803B9708, 300.0);
  qword_28157F9F0 = result;
  return result;
}

void sub_26A8339F8()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AppIconView();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B96D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B96D8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v45 = v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B96E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v46 = v39 - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B96E8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v48 = v39 - v16;
  v17 = sub_26A83361C();
  if (sub_26A61B05C(v17, &unk_287B131A0))
  {
    v41 = 0x6867696C746F7053;
    sub_26A4EC5B0(0, &qword_28157D880);
    switch(sub_26A63CD18())
    {
      case 1u:
      case 2u:
      case 3u:
        v18 = sub_26A852598();

        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_4;
      case 4u:
LABEL_4:
        switch(sub_26A63CD18())
        {
          case 1u:
            v41 = 1769105747;
            break;
          case 2u:
            v41 = 0xD000000000000010;
            break;
          case 3u:
            goto LABEL_6;
          case 4u:
            goto LABEL_13;
          default:
            break;
        }

        v19 = sub_26A852598();

        if (v19)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      default:
LABEL_6:

LABEL_9:
        if (qword_2803A8BF0 != -1)
        {
          swift_once();
        }

        if (byte_2803B0440 != 1)
        {
          goto LABEL_13;
        }

        swift_storeEnumTagMultiPayload();
        sub_26A8369E8();
        sub_26A84FDF8();
        break;
    }
  }

  else
  {
LABEL_13:
    v40 = v12;
    v41 = v3;
    *v9 = sub_26A84FBF8();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B96F0);
    sub_26A83414C(v0, &v9[*(v20 + 44)]);
    sub_26A837114();
    v21 = swift_allocObject();
    sub_26A837168();
    v22 = &v9[*(v42 + 36)];
    sub_26A84F198();
    sub_26A851BF8();
    *v22 = &unk_26A889520;
    *(v22 + 1) = v21;
    if (qword_28157F9B8 != -1)
    {
      swift_once();
    }

    v23 = sub_26A851F98();
    v43 = __swift_project_value_buffer(v23, qword_28157F9C0);
    OUTLINED_FUNCTION_6_75();
    sub_26A837114();
    v24 = swift_allocObject();
    sub_26A837168();
    v39[1] = v1;
    v39[2] = v6;
    v25 = v45;
    sub_26A4D7E54();
    v26 = v43;
    v27 = v44;
    v28 = *(v23 - 8);
    v29 = *(v28 + 16);
    v30 = v25 + *(v44 + 52);
    v42 = v28 + 16;
    v43 = v29;
    v29(v30, v26, v23);
    v31 = OUTLINED_FUNCTION_5_21();
    sub_26A4DBD10(v31, v32);
    v33 = (v25 + *(v27 + 56));
    *v33 = sub_26A836720;
    v33[1] = v24;
    if (qword_2803A9120 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v23, qword_2803B96A0);
    sub_26A837114();
    v35 = swift_allocObject();
    sub_26A837168();
    v36 = v46;
    sub_26A4D7E54();
    v37 = v40;
    v43(v36 + *(v40 + 52), v34, v23);
    sub_26A4DBD10(v25, &qword_2803B96D8);
    v38 = (v36 + *(v37 + 56));
    *v38 = sub_26A836950;
    v38[1] = v35;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A8369E8();
    sub_26A84FDF8();
    sub_26A4DBD10(v36, &qword_2803B96E0);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A83414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A850F28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9730);
  MEMORY[0x28223BE20](v8);
  v10 = (v26 - v9);
  if (qword_28157F9E8 != -1)
  {
    swift_once();
  }

  v11 = sub_26A8344C4();
  v13 = sub_26A832C84(v11, v12);

  if (v13 || (v27 = *(a1 + *(type metadata accessor for AppIconView() + 44)), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9700), sub_26A851058(), v26[1]))
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v14 = sub_26A850F98();

    (*(v5 + 8))(v7, v4);
    v15 = sub_26A834568();
    v16 = (v10 + *(v8 + 36));
    v17 = *(sub_26A84F5F8() + 20);
    v18 = *MEMORY[0x277CE0118];
    v19 = sub_26A84FB88();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = v15;
    v16[1] = v15;
    *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)) = 256;
    *v10 = v14;
    sub_26A8347C0();
    sub_26A8347C0();
    sub_26A851448();
    sub_26A84F028();
    sub_26A4D7EA8();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9738);
    v21 = (a2 + *(v20 + 36));
    v22 = v28;
    *v21 = v27;
    v21[1] = v22;
    v21[2] = v29;
    v23 = a2;
    v24 = 0;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9738);
    v23 = a2;
    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v20);
}

uint64_t sub_26A8344C4()
{
  v4 = *v0;

  MEMORY[0x26D663B00](95, 0xE100000000000000);
  sub_26A8347C0();
  v1 = sub_26A851CC8();
  MEMORY[0x26D663B00](v1);

  MEMORY[0x26D663B00](95, 0xE100000000000000);
  sub_26A8347C0();
  v2 = sub_26A851CC8();
  MEMORY[0x26D663B00](v2);

  return v4;
}

double sub_26A834568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_26A84B1D8();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 224);
  v30 = *(v0 + 208);
  v31 = v10;
  v11 = *(v0 + 232);
  v12 = *(v0 + 233);
  v13 = *(v0 + 234);
  v14 = *(v0 + 235);
  v15 = *(v0 + 236);
  v16 = *(v0 + 237);
  LODWORD(v10) = *(v0 + 216);
  v28 = *(v0 + 238);
  v29 = v10;
  sub_26A835C38(v6);
  sub_26A77F8A4(v6, v3);
  v17 = 256;
  if ((v12 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = v17 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v19 = 0x10000;
  if ((v13 & 1) == 0)
  {
    v19 = 0;
  }

  v20 = 0x1000000;
  if ((v14 & 1) == 0)
  {
    v20 = 0;
  }

  v21 = v18 | v19 | v20;
  v22 = 0x100000000;
  if ((v15 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = 0x10000000000;
  if ((v16 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0x1000000000000;
  if ((v28 & 1) == 0)
  {
    v24 = 0;
  }

  sub_26A647150(v30, v29, v31, v21 | v22 | v23 | v24, v9);
  sub_26A4DBD10(v3, &unk_2803ABFF0);
  (*(v32 + 8))(v6, v33);
  v25 = v9[2](*(v9 + 1), *v9);
  sub_26A51DA28(v9);
  return v25;
}

double sub_26A8347C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28[-v2];
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (v0 + *(type metadata accessor for AppIconView() + 48));
  if ((v11[16] & 1) == 0)
  {
    return *v11;
  }

  v12 = *(v0 + 224);
  v32 = *(v0 + 208);
  v33 = v12;
  v13 = *(v0 + 232);
  v14 = *(v0 + 233);
  v15 = *(v0 + 234);
  v16 = *(v0 + 235);
  v34 = v4;
  v17 = *(v0 + 236);
  LODWORD(v12) = *(v0 + 238);
  v29 = *(v0 + 237);
  v30 = v12;
  v31 = *(v0 + 216);
  sub_26A835C38(v7);
  sub_26A77F8A4(v7, v3);
  v18 = 256;
  if ((v14 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v18 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v20 = 0x10000;
  if ((v15 & 1) == 0)
  {
    v20 = 0;
  }

  v21 = 0x1000000;
  if ((v16 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = v19 | v20 | v21;
  v23 = 0x100000000;
  if ((v17 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0x10000000000;
  if ((v29 & 1) == 0)
  {
    v24 = 0;
  }

  v25 = 0x1000000000000;
  if ((v30 & 1) == 0)
  {
    v25 = 0;
  }

  sub_26A647150(v32, v31, v33, v22 | v23 | v24 | v25, v10);
  sub_26A4DBD10(v3, &unk_2803ABFF0);
  (*(v5 + 8))(v7, v34);
  v26 = v10[1];
  sub_26A51DA28(v10);
  return v26;
}

uint64_t sub_26A834A3C()
{
  v0[2] = sub_26A851BD8();
  v0[3] = sub_26A851BC8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26A834AE8;

  return sub_26A834C08();
}

uint64_t sub_26A834AE8()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  sub_26A851B78();
  OUTLINED_FUNCTION_15_43();
  v3 = OUTLINED_FUNCTION_3_95();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26A834C08()
{
  v1[6] = v0;
  v2 = sub_26A84FBC8();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_26A84F988();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = sub_26A851BD8();
  v1[15] = sub_26A851BC8();
  v5 = sub_26A851B78();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x2822009F8](sub_26A834D68, v5, v4);
}

uint64_t sub_26A834EF0()
{
  v1 = *(v0 + 192);
  v22 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 264);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  sub_26A4EC5B0(0, &qword_28157D7F0);
  v9 = sub_26A836B54();
  *(v0 + 208) = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v5 scale:{v4, v2}];
  v11 = v10;
  *(v0 + 216) = v10;
  if (v3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  [v10 setShape_];
  v13 = [objc_opt_self() currentTraitCollection];
  v14 = [v13 layoutDirection];

  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [v11 setLanguageDirection_];
  (*(v8 + 104))(v6, *MEMORY[0x277CE0220], v7);
  v16 = sub_26A84EE58();
  v17 = *(v8 + 8);
  *(v0 + 224) = v17;
  *(v0 + 232) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v6, v7);
  [v11 setContrast_];
  [v11 setAppearance_];
  if (v22)
  {
    [v11 setTintColor_];
  }

  *(v0 + 240) = [v9 prepareImageForDescriptor_];
  *(v0 + 248) = sub_26A851BC8();
  OUTLINED_FUNCTION_19_30();
  sub_26A851B78();
  OUTLINED_FUNCTION_15_43();
  v18 = OUTLINED_FUNCTION_3_95();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26A835248()
{
  OUTLINED_FUNCTION_30_19();

  v4(v1, v0);
  v7 = *(v3 + 128);
  v8 = *(v3 + 136);

  return MEMORY[0x2822009F8](sub_26A8352D8, v7, v8);
}

uint64_t sub_26A8352D8()
{
  OUTLINED_FUNCTION_6_10();
  v1 = *(v0 + 256);
  v2 = *(v0 + 176);
  v3 = *(v0 + 48);

  *(v0 + 16) = *(v3 + *(v2 + 44));
  *(v0 + 40) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9700);
  sub_26A851068();
  if (qword_28157F9E8 != -1)
  {
    OUTLINED_FUNCTION_9_66();
  }

  v4 = *(v0 + 256);

  v5 = sub_26A8344C4();
  sub_26A831FC8(v4, v5, v6);

  OUTLINED_FUNCTION_2_9();

  return v7();
}

uint64_t sub_26A835414()
{
  OUTLINED_FUNCTION_30_19();

  v4(v1, v0);
  v7 = *(v3 + 128);
  v8 = *(v3 + 136);

  return MEMORY[0x2822009F8](sub_26A8354A4, v7, v8);
}

uint64_t sub_26A8354A4()
{
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

uint64_t sub_26A835524()
{
  v0[2] = sub_26A851BD8();
  v0[3] = sub_26A851BC8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26A834AE8;

  return sub_26A834C08();
}

void sub_26A8355D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AppIconView();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  OUTLINED_FUNCTION_6_75();
  sub_26A837114();
  sub_26A851BD8();
  v11 = sub_26A851BC8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  sub_26A837168();
  sub_26A601D48(0, 0, v9, a4, v12);

  OUTLINED_FUNCTION_61_2();
}

uint64_t sub_26A835760()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9720);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_26A84E2D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  sub_26A8363E4();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_26A4DBD10(v3, &qword_2803B9720);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    if (qword_28157FA00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = sub_26A507D14(v7, qword_28157FA08);
    if (v10)
    {
      v8 = v9;
    }

    else
    {
      v11 = swift_endAccess();
      v8 = sub_26A8330BC(v11);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v13 = qword_28157FA08;
      sub_26A655E08();
      qword_28157FA08 = v13;
    }

    swift_endAccess();
    (*(v5 + 8))(v7, v4);
  }

  return v8;
}

BOOL sub_26A8359C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_26A84B1D8();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 224);
  v32 = *(v0 + 208);
  v33 = v10;
  v11 = *(v0 + 232);
  v12 = *(v0 + 233);
  v13 = *(v0 + 234);
  v14 = *(v0 + 235);
  v15 = *(v0 + 236);
  v16 = *(v0 + 237);
  LODWORD(v10) = *(v0 + 216);
  v30 = *(v0 + 238);
  v31 = v10;
  sub_26A835C38(v6);
  sub_26A77F8A4(v6, v3);
  v17 = 256;
  if ((v12 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = v17 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v19 = 0x10000;
  if ((v13 & 1) == 0)
  {
    v19 = 0;
  }

  v20 = 0x1000000;
  if ((v14 & 1) == 0)
  {
    v20 = 0;
  }

  v21 = v18 | v19 | v20;
  v22 = 0x100000000;
  if ((v15 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = 0x10000000000;
  if ((v16 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0x1000000000000;
  if ((v30 & 1) == 0)
  {
    v24 = 0;
  }

  sub_26A647150(v32, v31, v33, v21 | v22 | v23 | v24, v9);
  sub_26A4DBD10(v3, &unk_2803ABFF0);
  v25 = (*(v34 + 8))(v6, v35);
  v26 = v9[1];
  v27 = v26 == *v9 && v26 * 0.5 == (*(v9 + 2))(v25);
  sub_26A51DA28(v9);
  return v27;
}

uint64_t sub_26A835C38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  type metadata accessor for AppIconView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A4D7EA8();
  }

  else
  {
    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v11 = sub_26A84B1D8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  (*(*(v11 - 8) + 104))(a1, *MEMORY[0x277D62BD8], v11);
  result = __swift_getEnumTagSinglePayload(v9, 1, v11);
  if (result != 1)
  {
    return sub_26A4DBD10(v9, &qword_2803AFE50);
  }

  return result;
}

void sub_26A835F34()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = v0;
  if (qword_28157D818 != -1)
  {
    swift_once();
    v0 = v1;
  }

  CFNotificationCenterAddObserver(v0, 0, sub_26A836348, qword_28157D820, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_26A835FD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  sub_26A851BD8();
  v4 = sub_26A851BC8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_26A601D48(0, 0, v2, &unk_26A8896A0, v5);

  v7 = [objc_opt_self() defaultCenter];
  if (qword_28157D818 != -1)
  {
    swift_once();
  }

  [v7 postNotificationName:qword_28157D820 object:0];
}

uint64_t sub_26A83612C()
{
  v0[2] = sub_26A851BD8();
  v0[3] = sub_26A851BC8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26A8361D0;

  return sub_26A8313B8();
}

uint64_t sub_26A8361D0()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  sub_26A851B78();
  OUTLINED_FUNCTION_15_43();
  v3 = OUTLINED_FUNCTION_3_95();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26A8362F0()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

void sub_26A836348(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_26A835FD0();
}

void sub_26A8363E4()
{
  OUTLINED_FUNCTION_28_0();
  v35 = v0;
  v36 = v1;
  v30 = v2;
  v3 = sub_26A84E2D8();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v33 = &v30 - v11;
  v12 = sub_26A84E2C8();
  v13 = v12;
  v14 = v12 + 56;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 56);
  v18 = (v15 + 63) >> 6;
  v37 = v5 + 32;
  v34 = v5;
  v31 = (v5 + 8);
  v32 = v5 + 16;

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      v22 = v33;
      v21 = v34;
      (*(v34 + 16))(v33, *(v13 + 48) + *(v34 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v3);
      v23 = *(v21 + 32);
      v23(v9, v22, v3);
      v24 = v9;
      if (sub_26A84E2B8() == v35 && v25 == v36)
      {

        goto LABEL_18;
      }

      v27 = sub_26A852598();

      if (v27)
      {
        break;
      }

      v17 &= v17 - 1;
      v9 = v24;
      (*v31)(v24, v3);
      v19 = v20;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    v29 = v30;
    v23(v30, v24, v3);
    v28 = 0;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v29, v28, 1, v3);

    OUTLINED_FUNCTION_27_0();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        v28 = 1;
        v29 = v30;
        goto LABEL_19;
      }

      v17 = *(v14 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_26A836664()
{
  OUTLINED_FUNCTION_1_10();
  v0 = type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_79(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_9(v1);
  *v2 = v3;
  v2[1] = sub_26A5213F4;

  return sub_26A834A3C();
}

uint64_t objectdestroyTm_32()
{
  type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_37_0();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  OUTLINED_FUNCTION_4_89();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CE8);
  if (OUTLINED_FUNCTION_38_15() == 1)
  {
    sub_26A84FBC8();
    OUTLINED_FUNCTION_46();
    (*(v5 + 8))(v4 + v2);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_33(v0[7]);
  v6 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (OUTLINED_FUNCTION_38_15() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  v8 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84B1D8();
    if (!OUTLINED_FUNCTION_37_20(v9))
    {
      (*(*(v6 - 8) + 8))(v4 + v8, v6);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_33(v0[10]);

  OUTLINED_FUNCTION_61_2();

  return swift_deallocObject();
}

void sub_26A836970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_79(v7);
  sub_26A8355D0(a1, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a2, a3);
}

unint64_t sub_26A8369E8()
{
  result = qword_2803B96F8;
  if (!qword_2803B96F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B96E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B96F8);
  }

  return result;
}

uint64_t sub_26A836A4C()
{
  v0 = type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_79(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_18_32(v2);

  return sub_26A835524();
}

uint64_t sub_26A836B1C()
{
  result = sub_26A851788();
  qword_28157D820 = result;
  return result;
}

id sub_26A836B54()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_5_21();
  v1 = sub_26A851788();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

id sub_26A836BC4(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26A84AB58();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_26A84AB98();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_26A84AAE8();

    swift_willThrow();
    v11 = sub_26A84AB98();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_26A836D50()
{
  result = qword_2803B9728;
  if (!qword_2803B9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9728);
  }

  return result;
}

uint64_t sub_26A836DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_10Tm_1()
{
  type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_37_0();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;

  OUTLINED_FUNCTION_4_89();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CE8);
  if (OUTLINED_FUNCTION_38_15() == 1)
  {
    sub_26A84FBC8();
    OUTLINED_FUNCTION_46();
    (*(v6 + 8))(v5 + v2);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_33(v0[7]);
  v7 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  if (OUTLINED_FUNCTION_38_15() == 1)
  {
    sub_26A84EE68();
    OUTLINED_FUNCTION_46();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  v9 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26A84B1D8();
    if (!OUTLINED_FUNCTION_37_20(v10))
    {
      (*(*(v7 - 8) + 8))(v5 + v9, v7);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_17_33(v0[10]);

  OUTLINED_FUNCTION_61_2();

  return swift_deallocObject();
}

uint64_t sub_26A837004()
{
  v0 = type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_79(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_9(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_18_32(v2);

  return sub_26A835524();
}

uint64_t sub_26A837114()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A837168()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A8371FC()
{
  OUTLINED_FUNCTION_6_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v1[1] = sub_26A5206A8;

  return sub_26A83612C();
}

_BYTE *_s5ErrorOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A837348()
{
  result = qword_2803B9768;
  if (!qword_2803B9768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9770);
    sub_26A8369E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9768);
  }

  return result;
}

unint64_t sub_26A8373D8()
{
  result = qword_2803B9778;
  if (!qword_2803B9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9778);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_89()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A49035C(*(v0 + 64), *(v0 + 72));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));
  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  sub_26A49035C(*(v0 + 144), *(v0 + 152));
  return sub_26A49035C(*(v0 + 160), *(v0 + 168));
}

uint64_t OUTLINED_FUNCTION_9_66()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_37()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_33@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_26A49035C(v4, v5);
}

uint64_t OUTLINED_FUNCTION_29_23()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_30_19()
{
  v2 = *(v0 + 216);
}

uint64_t OUTLINED_FUNCTION_36_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_37_20(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_38_15()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_26A8376F4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_26A73670C();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6644E0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_26A837818(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *(a4(0) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

void sub_26A8379A0(id a1)
{
  v3 = [v1 metadata];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 effectiveBundleIdentifiers];

    v6 = [v5 array];
    v7 = sub_26A851A98();

    v8 = sub_26A809D88(v7);

    if (v8)
    {
      v9 = sub_26A73670C();
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          return;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x26D6644E0](i, v8);
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v11 type] == a1)
        {

          v13 = [v12 bundleIdentifier];
          sub_26A8517B8();

          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }
}

uint64_t LNAction.fetchArchive(snippetEnvironmentProvider:)()
{
  OUTLINED_FUNCTION_1_10();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  sub_26A851BD8();
  v1[7] = sub_26A851BC8();
  v6 = sub_26A851B78();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x2822009F8](&sub_26A837BF4, v6, v5);
}

uint64_t sub_26A837EAC()
{
  OUTLINED_FUNCTION_1_10();
  v2 = *v1;
  v2[13] = v3;
  v2[14] = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26A838140;
  }

  else
  {

    v4 = v2[8];
    v5 = v2[9];
    v6 = &sub_26A837FC4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26A838140()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_2_9();

  return v2();
}

unint64_t sub_26A8381AC()
{
  result = qword_2803B9780;
  if (!qword_2803B9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9780);
  }

  return result;
}

unint64_t sub_26A838200()
{
  result = qword_2803B9788;
  if (!qword_2803B9788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B9788);
  }

  return result;
}

uint64_t sub_26A83828C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A838340;

  return LNAction.fetchArchive(snippetEnvironmentProvider:)();
}

uint64_t sub_26A838340()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

uint64_t sub_26A838520(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_26A838724(a4, a5);
  return sub_26A851758() & 1;
}

_BYTE *_s19LNActionSourceErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A8386D0()
{
  result = qword_2803B9790;
  if (!qword_2803B9790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9790);
  }

  return result;
}

uint64_t sub_26A838724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PrimaryHeaderStackedImageView.init(images:text1:text2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_2803A9138 != -1)
  {
    swift_once();
  }

  v35 = xmmword_2803B9798[0];
  v36 = unk_2803B97A8;
  v37 = xmmword_2803B97B8;
  v38 = unk_2803B97C8;
  v39 = xmmword_2803B9798[0];
  v40 = unk_2803B97A8;
  v41 = xmmword_2803B97B8;
  v42 = unk_2803B97C8;
  v29 = unk_2803B97C8;
  v30 = xmmword_2803B97B8;
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(a4, __src, 0xC0uLL);
  *(a4 + 192) = v30;
  *(a4 + 208) = v29;
  v8 = v40;
  *(a4 + 224) = v39;
  *(a4 + 240) = v8;
  v9 = v42;
  *(a4 + 256) = v41;
  *(a4 + 272) = v9;
  *(a4 + 288) = swift_getKeyPath();
  *(a4 + 296) = 0;
  v10 = type metadata accessor for PrimaryHeaderStackedImageView(0);
  v11 = v10[6];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v12 = v10[7];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = (a4 + v10[8]);
  type metadata accessor for Context();
  sub_26A5928CC();
  *v13 = sub_26A84F678();
  v13[1] = v14;
  v15 = a4 + v10[9];
  LOBYTE(v34) = 0;
  sub_26A851048();
  v16 = v31[1];
  *v15 = v31[0];
  *(v15 + 8) = v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v34 = MEMORY[0x277D84F90];
    sub_26A8522F8();
    v18 = a1 + 32;
    do
    {
      sub_26A50429C(v18, v31);
      v19 = v32;
      v20 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v20 + 8))(v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v31);
      sub_26A8522C8();
      sub_26A852308();
      sub_26A852318();
      sub_26A8522D8();
      v18 += 40;
      --v17;
    }

    while (v17);

    v21 = v34;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *(a4 + v10[10]) = v21;
  sub_26A4D7E54();
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v22 = OUTLINED_FUNCTION_2_106();
    v24 = v23(v22);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_26A4DBD10(v31, &qword_2803A91B8);
    v24 = 0;
  }

  *(a4 + v10[11]) = v24;
  sub_26A4D7E54();
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v25 = OUTLINED_FUNCTION_2_106();
    v27 = v26(v25);
    sub_26A4DBD10(a3, &qword_2803A91B8);
    sub_26A4DBD10(a2, &qword_2803A91B8);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_26A4DBD10(a3, &qword_2803A91B8);
    sub_26A4DBD10(a2, &qword_2803A91B8);
    result = sub_26A4DBD10(v31, &qword_2803A91B8);
    v27 = 0;
  }

  *(a4 + v10[12]) = v27;
  return result;
}

uint64_t sub_26A838C40()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 288);
  if ((*(v1 + 296) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v3 + 8))(v6, v0);
    return v10[1];
  }

  return v7;
}

uint64_t sub_26A838D74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for PrimaryHeaderStackedImageView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A838F7C()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  type metadata accessor for PrimaryHeaderStackedImageView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v2 + 8))(v5, v0);
}

uint64_t PrimaryHeaderStackedImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A838F7C();
  v7 = *(v1 + 208);
  v17 = *(v1 + 192);
  v18 = v7;
  v19 = 0;
  sub_26A838C40();
  sub_26A838D74(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4D0300();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCD4;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B97D8) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B97E0);
  *(a1 + *(result + 36)) = 21;
  return result;
}

uint64_t sub_26A8393A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FBF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9810);
  return sub_26A8393F8(a1, a2 + *(v4 + 44));
}

uint64_t sub_26A8393F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for PrimaryHeaderStackedImageView.Constants(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9818);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v25[-1] - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9820);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25[-1] - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v25[-1] - v18;
  v20 = sub_26A8397A8();
  *v9 = sub_26A84FA78();
  v9[1] = v20;
  *(v9 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9828);
  sub_26A83989C(a1);
  sub_26A851448();
  sub_26A84F628();
  sub_26A4D7EA8();
  memcpy(&v16[*(v11 + 44)], __src, 0x70uLL);
  sub_26A4D7EA8();
  v21 = sub_26A84FBF8();
  sub_26A839BD4();
  v22 = *&v6[*(v4 + 36)];
  sub_26A83A798(v6);
  v25[0] = v21;
  v25[1] = v22;
  LOBYTE(v25[2]) = 0;
  sub_26A839D2C();
  sub_26A851448();
  sub_26A84F628();
  memcpy(v26, v25, 0x281uLL);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9838);
  sub_26A4D7E54();
  sub_26A4DBD10(v26, &qword_2803B9830);
  sub_26A4DBD10(v19, &qword_2803B9820);
  sub_26A4DBD10(v25, &qword_2803B9830);
  return sub_26A4DBD10(v13, &qword_2803B9820);
}

double sub_26A8397A8()
{
  v1 = type metadata accessor for PrimaryHeaderStackedImageView.Constants(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_26A839BD4();
  v8 = *&v7[*(v2 + 28)];
  sub_26A83A798(v7);
  v9 = (*(*(v0 + *(type metadata accessor for PrimaryHeaderStackedImageView(0) + 40)) + 16) - 2);
  sub_26A839BD4();
  v10 = *&v4[*(v2 + 32)];
  sub_26A83A798(v4);
  return v8 - v10 * v9;
}

uint64_t sub_26A83989C(uint64_t a1)
{
  v2 = type metadata accessor for PrimaryHeaderStackedImageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = *(*(a1 + *(v5 + 48)) + 16);
  v10[0] = 0;
  v10[1] = v6;
  swift_getKeyPath();
  sub_26A83A978();
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_26A83A7F4(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  sub_26A4EEF40();
  sub_26A52E814();
  return sub_26A8512F8();
}

uint64_t sub_26A839A38@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_26A84B1D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = type metadata accessor for PrimaryHeaderStackedImageView(0);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a2 + *(result + 40));
    if (v10 < *(v12 + 16))
    {
      v13 = *(v12 + 8 * v10 + 32);
      (*(v7 + 104))(v9, *MEMORY[0x277D62AA8], v6);
      KeyPath = swift_getKeyPath();
      v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0) + 36));
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
      (*(v7 + 32))(v15 + v16, v9, v6);
      __swift_storeEnumTagSinglePayload(v15 + v16, 0, 1, v6);
      *v15 = KeyPath;
      *a3 = v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A839BD4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 288);
  if ((*(v0 + 296) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v9[1];
  }

  return sub_26A5A07F4(v6, v3);
}

uint64_t sub_26A839D2C()
{
  sub_26A839E10(v4);
  sub_26A839F1C(v3);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4DBD10(v3, &qword_2803AE5F8);
  sub_26A4DBD10(v4, &qword_2803AE5F8);
  sub_26A4DBD10(&v1, &qword_2803AE5F8);
  return sub_26A4DBD10(v2, &qword_2803AE5F8);
}

uint64_t sub_26A839E10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PrimaryHeaderStackedImageView(0) + 44));
  if (v3)
  {
    if (qword_2803A90E8 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(__src);
    memcpy(&v6[1], __src, 0xBFuLL);
    v6[35] = sub_26A80A810;
    v6[36] = 0;
    v6[0] = v3;
    KeyPath = swift_getKeyPath();
    memcpy(a1, v6, 0x128uLL);
    *(a1 + 296) = KeyPath;
    *(a1 + 304) = 1;
  }

  else
  {
    bzero(a1, 0x131uLL);
  }
}

uint64_t sub_26A839F1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PrimaryHeaderStackedImageView(0) + 48));
  if (v3)
  {
    if (qword_28157E6B0 != -1)
    {
      swift_once();
    }

    sub_26A4D7E54();
    sub_26A6AEE74(__src);
    memcpy(&v6[1], __src, 0xBFuLL);
    v6[35] = sub_26A80A810;
    v6[36] = 0;
    v6[0] = v3;
    KeyPath = swift_getKeyPath();
    memcpy(a1, v6, 0x128uLL);
    *(a1 + 296) = KeyPath;
    *(a1 + 304) = 1;
  }

  else
  {
    bzero(a1, 0x131uLL);
  }
}

uint64_t sub_26A83A028()
{
  v0 = type metadata accessor for PrimaryHeaderStackedImageView.Constants(0);
  __swift_allocate_value_buffer(v0, qword_2803D3070);
  v1 = OUTLINED_FUNCTION_211();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = *MEMORY[0x277D62AA8];
  sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  result = (*(v5 + 104))(v3, v4);
  *(v3 + v0[5]) = 0xC024000000000000;
  *(v3 + v0[6]) = 0x4008000000000000;
  *(v3 + v0[7]) = 0x4008000000000000;
  return result;
}

uint64_t sub_26A83A0D4(uint64_t a1)
{
  if (qword_2803A9130 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803D3070);
  return sub_26A83A978();
}

uint64_t sub_26A83A158()
{
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v14[0] = xmmword_281588758[0];
  v14[1] = unk_281588768;
  v14[2] = xmmword_281588778;
  v14[3] = xmmword_281588788;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  sub_26A4D7E54();
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 1;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  __asm { FMOV            V0.2D, #16.0 }

  *(inited + 40) = _Q0;
  *(inited + 56) = xmmword_26A889850;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v10 = sub_26A8516A8();
  memset(v12, 0, sizeof(v12));
  v13 = 1;
  sub_26A66E640(v10, v12, xmmword_2803B9798);

  return sub_26A4DBD10(v14, &qword_2803A91B0);
}

void sub_26A83A3DC()
{
  sub_26A83A5B8(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_26A4D27F4();
        if (v3 <= 0x3F)
        {
          sub_26A58F564();
          if (v4 <= 0x3F)
          {
            sub_26A83A5B8(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_26A83A5B8(319, &qword_2803AECB0, MEMORY[0x277CE11C8], MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_26A83A5B8(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void sub_26A83A5B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A83A608()
{
  result = qword_2803B97F8;
  if (!qword_2803B97F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B97E0);
    sub_26A83A694();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B97F8);
  }

  return result;
}

unint64_t sub_26A83A694()
{
  result = qword_2803B9800;
  if (!qword_2803B9800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B97D8);
    sub_26A4DBCC8(&qword_2803B9808, &qword_2803A9510);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9800);
  }

  return result;
}

uint64_t sub_26A83A798(uint64_t a1)
{
  v2 = type metadata accessor for PrimaryHeaderStackedImageView.Constants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A83A7F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryHeaderStackedImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A83A858@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PrimaryHeaderStackedImageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A839A38(a1, v6, a2);
}

uint64_t sub_26A83A900()
{
  result = sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A83A978()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_86()
{

  return sub_26A84B1D8();
}

void sub_26A83AA04()
{
  v1 = [v0 text];
  if (v1 && (v2 = v1, v3 = [v1 coordinate], v2, v3) || (v4 = objc_msgSend(v0, sel_image)) != 0 && (v5 = v4, v3 = objc_msgSend(v4, sel_coordinate), v5, v3))
  {
    [v3 lat];
    [v3 lng];
  }

  OUTLINED_FUNCTION_5_87();
}

uint64_t sub_26A83AAEC()
{
  v1 = [v0 text];
  if (v1)
  {

    v2 = [v0 text];
    v3 = [v2 monogram];

    if (!v3)
    {
      sub_26A83B3CC();
      sub_26A83AA04();
      sub_26A53ACC8();
      v9 = OUTLINED_FUNCTION_5_87();
      MEMORY[0x26D660A20](v9);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D80);
      return OUTLINED_FUNCTION_5_51(v10);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0D80);
  v4 = OUTLINED_FUNCTION_24_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A83AC0C@<X0>(uint64_t a1@<X8>)
{
  sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v27 = v3;
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  v7 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  v14 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = [v1 text];
  if (v21 && (v21, v22 = [v1 text], v23 = objc_msgSend(v22, sel_monogram), v22, v23))
  {
    sub_26A83B3CC();
    RFTextProperty.asTextProperty()(v20);
    (*(v9 + 104))(v13, *MEMORY[0x277D62A28], v7);
    sub_26A84B858();
    _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
    (*(v27 + 8))(v6, v28);
    (*(v9 + 8))(v13, v7);
    (*(v16 + 8))(v20, v14);
    sub_26A83AA04();
    sub_26A53ACC8();
    OUTLINED_FUNCTION_5_87();
    sub_26A84E7D8();

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E68);
    return OUTLINED_FUNCTION_5_51(v24);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E68);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v26);
  }
}

uint64_t sub_26A83AF4C()
{
  v1 = [v0 image];
  if (v1)
  {

    sub_26A83B3CC();
    sub_26A83B488();
    sub_26A83AA04();
    sub_26A53ACC8();
    OUTLINED_FUNCTION_5_87();
    sub_26A84E7C8();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E78);
    return OUTLINED_FUNCTION_5_51(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0E78);
    v4 = OUTLINED_FUNCTION_24_2();

    return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

id RFMapMarker.init(muid:resultProviderID:tint:)()
{
  OUTLINED_FUNCTION_3_96();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = objc_allocWithZone(MEMORY[0x277D4C020]);
  v7 = v5;
  v8 = [v6 init];
  sub_26A67B650(v4, v3, v8, &selRef_setMuid_);
  sub_26A67B650(v2, v1, v8, &selRef_setResultProviderID_);
  [v7 setIdentifier_];
  [v7 setTint_];

  return v7;
}

id RFMapMarker.init(coordinate:title:monogram:tint:)(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5, double a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = objc_allocWithZone(MEMORY[0x277D4C030]);
  v14 = v12;
  v15 = [v13 init];
  v16 = [objc_allocWithZone(MEMORY[0x277D4C408]) init];
  [v16 setLat_];
  [v16 setLng_];
  [v15 setCoordinate_];
  sub_26A67B650(a1, a2, v15, &selRef_setTitle_);
  if (a3)
  {
    [v15 setMonogram_];
  }

  [v14 setText_];
  [v14 setTint_];

  return v14;
}

id RFMapMarker.init(coordinate:title:image:tint:)()
{
  OUTLINED_FUNCTION_3_96();
  v6 = v5;
  v8 = v7;
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = objc_allocWithZone(MEMORY[0x277D4C028]);
  v11 = v9;
  v12 = [v10 init];
  v13 = [objc_allocWithZone(MEMORY[0x277D4C408]) init];
  [v13 setLat_];
  [v13 setLng_];
  [v12 setCoordinate_];
  sub_26A67B650(v4, v3, v12, &selRef_setTitle_);
  sub_26A67B650(v2, v1, v12, &selRef_setSystemImage_);
  [v11 setImage_];
  [v11 setTint_];

  return v11;
}

uint64_t sub_26A83B3CC()
{
  v1 = [v0 text];
  if (v1)
  {
    v2 = sub_26A5E1964(v1, &selRef_title);
    if (v3)
    {
      return v2;
    }
  }

  v5 = [v0 image];
  if (v5 && (v6 = sub_26A5E1964(v5, &selRef_title), v7))
  {
    v4 = v6;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    return 0;
  }

  return v4;
}

uint64_t sub_26A83B488()
{
  v1 = [v0 image];
  if (!v1 || (result = sub_26A5E1964(v1, &selRef_systemImage), !v3))
  {

    return 0;
  }

  return result;
}

uint64_t RFMapMarker.id.getter()
{
  v1 = [v0 text];
  if (v1 || (v1 = [v0 image]) != 0)
  {
    v2 = v1;
    v3 = [v1 coordinate];
    if (v3)
    {
      v4 = v3;
      v5 = SFLatLng.isoDescription.getter();
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v6 = [v0 identifier];
    v7 = 0xE000000000000000;
    if (v6)
    {
      v8 = v6;
      v9 = sub_26A67C23C(v6, &selRef_resultProviderID);
      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      v16 = v11;

      MEMORY[0x26D663B00](58, 0xE100000000000000);

      v5 = v16;
      v12 = sub_26A67C23C(v8, &selRef_muid);
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v7 = v13;
      }

      MEMORY[0x26D663B00](v14, v7);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_26A83B66C@<X0>(uint64_t *a1@<X8>)
{
  result = RFMapMarker.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A83B6D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_26A83B714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A83B768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v52 = a5;
  v59 = a2;
  v8 = sub_26A84F218();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF8A8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45[-v13];
  v55 = sub_26A84F2E8();
  MEMORY[0x28223BE20](v55);
  v54 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v50 = &v45[-v17];
  MEMORY[0x28223BE20](v18);
  v49 = &v45[-v19];
  v20 = 0;
  v21 = *(a1 + 16);
  v57 = (v9 + 8);
  v58 = (v9 + 16);
  v51 = v22;
  v53 = (v22 + 32);
  v23 = a1 + 72;
  v56 = MEMORY[0x277D84F90];
  v46 = a6 & 1;
  v47 = a1 + 72;
  for (i = v21; ; v21 = i)
  {
    v24 = ~v20;
    v25 = (v23 + 56 * v20);
    v26 = v21 - v20;
    if (!v26)
    {
      break;
    }

    while (1)
    {
      v27 = *v25;
      v28 = type metadata accessor for TableRowLayout.Cache();
      (*v58)(v11, v59 + *(v28 + 20), v8);
      v61 = v27;
      sub_26A746D10();
      sub_26A851DA8();
      if (v27 < v60[0] || v27 >= v60[1])
      {
        v32 = sub_26A84F108();
        v33 = v14;
        v34 = 1;
      }

      else
      {
        v29 = sub_26A851E18();
        v31 = v30;
        v32 = sub_26A84F108();
        (*(*(v32 - 8) + 16))(v14, v31, v32);
        v29(v60, 0);
        v33 = v14;
        v34 = 0;
      }

      __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
      (*v57)(v11, v8);
      sub_26A84F108();
      if (__swift_getEnumTagSinglePayload(v14, 1, v32) != 1)
      {
        break;
      }

      sub_26A83CF38(v14);
      --v24;
      v25 += 7;
      if (!--v26)
      {
        return v56;
      }
    }

    LOBYTE(v60[0]) = 0;
    LOBYTE(v61) = v46;
    v35 = v50;
    sub_26A84F0D8();
    (*(*(v32 - 8) + 8))(v14, v32);
    v36 = *v53;
    v37 = v49;
    v38 = v55;
    (*v53)(v49, v35, v55);
    v36(v54, v37, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A2D2C();
      v56 = v42;
    }

    v23 = v47;
    v39 = *(v56 + 16);
    if (v39 >= *(v56 + 24) >> 1)
    {
      sub_26A7A2D2C();
      v56 = v43;
    }

    v20 = -v24;
    v40 = v55;
    v41 = v56;
    *(v56 + 16) = v39 + 1;
    v36((v41 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39), v54, v40);
  }

  return v56;
}

uint64_t sub_26A83BC70(uint64_t a1, int a2, void (*a3)(char *, char *, uint64_t), char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v54 = a3;
  v55 = a6;
  v10 = sub_26A84F2E8();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF898);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v49 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v49 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v49 - v26;
  v51 = a2;
  v28 = a2 & 1;
  v29 = a1;
  v57 = v28;
  v56 = a4 & 1;
  v30 = sub_26A83C0A0(a1, v28, v54, a4 & 1);
  v31 = v30;
  if (*(v30 + 16))
  {
    (*(v12 + 16))(v27, v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v10);
    v32 = 0;
    v33 = 1;
  }

  else
  {
    v33 = 0;
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v27, v32, 1, v10);
  sub_26A83CFEC(v27, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
  {

    v35 = v50;
LABEL_17:
    v45 = *(v35 + 16);
    if (v45)
    {
      v46 = (v35 + 32);
      v47 = 0.0;
      do
      {
        v48 = *v46;
        v46 += 9;
        v47 = v47 + v48;
        --v45;
      }

      while (v45);
    }

    return result;
  }

  v49[1] = v29;
  v54 = *(v12 + 32);
  v55 = v12 + 32;
  v54(v15, v24, v10);

  v36 = v31;
  sub_26A84F2C8();
  v38 = v37;
  v53 = v12;
  v39 = v12 + 8;
  v40 = *(v12 + 8);
  result = v40(v15, v10);
  v41 = *(v31 + 16);
  v52 = v39 + 8;
  while (1)
  {
    if (v33 == v41)
    {
      v42 = 1;
      v33 = v41;
      goto LABEL_12;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v33 >= *(v31 + 16))
    {
      goto LABEL_23;
    }

    (*(v53 + 16))(v21, v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v33, v10);
    v42 = 0;
    ++v33;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v21, v42, 1, v10);
    sub_26A83CFEC(v21, v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, v10) == 1)
    {
      result = swift_bridgeObjectRelease_n();
      v35 = v50;
      goto LABEL_17;
    }

    v54(v15, v18, v10);
    sub_26A84F2C8();
    v31 = v36;
    v44 = v43;
    result = v40(v15, v10);
    if (v38 < v44)
    {
      v38 = v44;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26A83C0A0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for TableRowLayout.Cache();
  v10 = v9;
  v11 = v4 + *(v9 + 28);
  if (*(v11 + 25))
  {
    goto LABEL_5;
  }

  v12 = *(v4 + *(v9 + 32));
  if (!v12)
  {
    goto LABEL_5;
  }

  if ((sub_26A84F5A8() & 1) == 0)
  {

LABEL_5:

    v12 = sub_26A83B768(v13, v4, a1, a2 & 1, a3, a4 & 1);

    v14 = *(v10 + 32);

    *(v4 + v14) = v12;
    *v11 = a1;
    *(v11 + 8) = a2 & 1;
    *(v11 + 16) = a3;
    *(v11 + 24) = a4 & 1;
    *(v11 + 25) = 0;
  }

  return v12;
}

uint64_t sub_26A83C1F4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, char a14, char a15)
{
  v25 = a2 & 1;
  v49 = a2 & 1;
  v26 = a4 & 1;
  v48 = a4 & 1;
  sub_26A83C310(a1, a2 & 1, a3, a4 & 1);
  v27 = *a6;
  v32 = a5;
  v33 = a1;
  v34 = v25;
  v35 = a3;
  v36 = v26;
  v37 = v28;
  v38 = a7;
  v39 = a8;
  v40 = a13;
  v41 = a14 & 1;
  v42 = a15;
  v43 = a9;
  v44 = a10;
  v45 = a11;
  v46 = a12;
  v47 = a6;

  sub_26A55D008(sub_26A83CED4, v31, v27);
}

uint64_t sub_26A83C310(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v47 = a3;
  v8 = sub_26A84F2E8();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF898);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v20);
  v46 = (&v40 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v49 = a2 & 1;
  v48 = a4 & 1;
  v25 = sub_26A83C0A0(a1, a2 & 1, v47, a4 & 1);
  v26 = type metadata accessor for TableRowLayout.Cache();
  v47 = sub_26A63D150(*(v4 + *(v26 + 24)));
  v27 = *(v25 + 16);
  v45 = v10;
  if (v27)
  {
    (*(v10 + 16))(v24, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8);
    v28 = 0;
    v29 = 1;
  }

  else
  {
    v29 = 0;
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v28, 1, v8);
  v30 = v24;
  v31 = v46;
  sub_26A83CFEC(v30, v46);
  if (__swift_getEnumTagSinglePayload(v31, 1, v8) == 1)
  {

    v33 = 0.0;
LABEL_17:
    v39 = v4 + *(v26 + 36);
    *v39 = v33;
    *(v39 + 8) = 0;
    return result;
  }

  v41 = v26;
  v42 = v4;
  v34 = v45;
  v46 = *(v45 + 32);
  (v46)(v13, v31, v8);

  v33 = MEMORY[0x26D661560](v47);
  v35 = *(v34 + 8);
  result = v35(v13, v8);
  v44 = v25;
  v36 = *(v25 + 16);
  v43 = v34 + 16;
  while (1)
  {
    if (v29 == v36)
    {
      v37 = 1;
      v29 = v36;
      goto LABEL_12;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *(v44 + 16))
    {
      goto LABEL_19;
    }

    (*(v45 + 16))(v19, v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v29, v8);
    v37 = 0;
    ++v29;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v19, v37, 1, v8);
    sub_26A83CFEC(v19, v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v8) == 1)
    {
      result = swift_bridgeObjectRelease_n();
      v26 = v41;
      v4 = v42;
      goto LABEL_17;
    }

    (v46)(v13, v16, v8);
    v38 = MEMORY[0x26D661560](v47);
    result = v35(v13, v8);
    if (v33 < v38)
    {
      v33 = v38;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_26A83C6DC(uint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, unsigned __int16 a15, uint64_t *a16)
{
  v65 = a12;
  v46 = a9;
  v48 = sub_26A84F2E8();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF8A8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v43 - v26;
  v28 = sub_26A84F108();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 32);
  v62[1] = *(a1 + 16);
  v62[2] = v32;
  v62[0] = *a1;
  v33 = *(a1 + 48);
  v35 = v34;
  v63 = v33;
  sub_26A83D798();
  if (__swift_getEnumTagSinglePayload(v27, 1, v35) == 1)
  {
    return sub_26A83CF38(v27);
  }

  v45 = v16;
  v44 = a15;
  (*(v29 + 32))(v31, v27, v35);
  v37 = v46;
  LOBYTE(v56) = 0;
  v38 = a11;
  v39 = v65;
  LOBYTE(v50) = v65 & 1;
  sub_26A84F0D8();
  v46 = v38;
  v43[1] = v37;
  if (BYTE8(v62[0]))
  {
    if (BYTE8(v62[0]) == 1)
    {
      v40 = sub_26A84FBF8();
    }

    else
    {
      v40 = sub_26A84FC18();
    }
  }

  else
  {
    v40 = sub_26A84FC08();
  }

  v41 = v44;
  MEMORY[0x26D661570](v40);
  v42 = sub_26A63D150(SHIBYTE(v41));
  MEMORY[0x26D661560](v42);
  v66.origin.x = a4;
  v66.origin.y = a5;
  v66.size.width = a6;
  v66.size.height = a7;
  CGRectGetMinX(v66);
  v67.origin.x = a4;
  v67.origin.y = a5;
  v67.size.width = a6;
  v67.size.height = a7;
  CGRectGetMinY(v67);
  if (v41)
  {
    sub_26A565580(*a16, &v50);
    if (v51 != 3)
    {
      v56 = v50;
      v57 = v51;
      v58 = v52;
      v59 = v53 & 1;
      v60 = v54;
      v61 = v55;
      sub_26A65797C(&v56, v62);
    }
  }

  sub_26A851568();
  v64 = 0;
  v49 = v39 & 1;
  sub_26A84F0F8();
  (*(v47 + 8))(v24, v48);
  return (*(v29 + 8))(v31, v35);
}

void sub_26A83CB78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, char *a5@<X8>, double a6@<D0>)
{
  v8 = a4 >> 8;
  sub_26A657A04(a2, a3, a4 & 0xFFFFFF01, 2.0, a6);
  v10 = v9;
  v11 = type metadata accessor for TableRowLayout.Cache();
  v12 = v11[5];
  sub_26A84F218();
  OUTLINED_FUNCTION_5_0();
  (*(v13 + 16))(&a5[v12], a1);
  OUTLINED_FUNCTION_0_104(&a5[v11[7]]);
  *&a5[v11[8]] = 0;
  v14 = &a5[v11[9]];
  *v14 = 0;
  v14[8] = 1;
  *a5 = v10;
  a5[v11[6]] = v8;
}

uint64_t sub_26A83CC44(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v12 = type metadata accessor for TableRowLayout.Cache();
  v13 = v12[5];
  sub_26A84F218();
  OUTLINED_FUNCTION_5_0();
  (*(v14 + 24))(&a1[v13], a2);
  OUTLINED_FUNCTION_0_104(&a1[v12[7]]);
  v15 = v12[8];

  *&a1[v15] = 0;
  v16 = &a1[v12[9]];
  *v16 = 0;
  v16[8] = 1;
  sub_26A657A04(a3, a4, a5 & 0xFFFFFF01, 2.0, a6);
  v18 = v17;

  *a1 = v18;
  return result;
}

void (*sub_26A83CE08(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

unint64_t sub_26A83CE80()
{
  result = qword_2803B9850;
  if (!qword_2803B9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9850);
  }

  return result;
}

uint64_t sub_26A83CF38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF8A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TableRowLayout.Cache()
{
  result = qword_2803B9858;
  if (!qword_2803B9858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A83CFEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26A83D084()
{
  sub_26A83D228(319, &qword_2803B9868, &_s12ResolvedCellVN, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A84F218();
    if (v1 <= 0x3F)
    {
      sub_26A83D228(319, &qword_2803B35D8, MEMORY[0x277CDFB90], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A83D1C4();
        if (v3 <= 0x3F)
        {
          sub_26A83D228(319, &qword_2803B9880, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A83D1C4()
{
  if (!qword_2803B9870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9878);
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B9870);
    }
  }
}

void sub_26A83D228(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void OUTLINED_FUNCTION_0_104(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 256;
  *(a1 + 16) = 0;
}

void sub_26A83D2D4()
{
  type metadata accessor for TableRowViewModel();
  if (v0 <= 0x3F)
  {
    sub_26A83D484(319, &qword_2803A9238);
    if (v1 <= 0x3F)
    {
      sub_26A83D484(319, &qword_2803AD138);
      if (v2 <= 0x3F)
      {
        sub_26A8495D8(319, &qword_2803B6128, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26A83D4D0();
          if (v4 <= 0x3F)
          {
            sub_26A8495D8(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_26A8495D8(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
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

void sub_26A83D484(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for EnvironmentConstant();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26A83D4D0()
{
  if (!qword_2803B9898)
  {
    type metadata accessor for TableRowScaleToFitHeight();
    sub_26A8496A0();
    v0 = sub_26A84EF08();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B9898);
    }
  }
}

double sub_26A83D580@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || *(a2 + 16) <= a1)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    sub_26A50429C(a2 + 40 * a1 + 32, a3);
  }

  return result;
}

uint64_t sub_26A83D5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for TableCell();
  v7 = 1;
  if ((a1 & 0x8000000000000000) == 0 && v5 > a1)
  {
    OUTLINED_FUNCTION_33_19();
    sub_26A848030();
    v7 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v7, 1, v6);
}

uint64_t sub_26A83D698()
{
  OUTLINED_FUNCTION_44_13();
  sub_26A84FF28();
  sub_26A8496A0();
  OUTLINED_FUNCTION_50_10();
  if (v8[0] > v0 || v8[1] <= v0)
  {
    sub_26A84FF08();
    v3 = OUTLINED_FUNCTION_10_34();
  }

  else
  {
    v1 = OUTLINED_FUNCTION_42_13();
    sub_26A84FF08();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_7_0();
    v2();
    v1(v8, 0);
    v3 = OUTLINED_FUNCTION_46_9();
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A83D798()
{
  OUTLINED_FUNCTION_44_13();
  sub_26A84F218();
  sub_26A8496A0();
  OUTLINED_FUNCTION_50_10();
  if (v8[0] > v0 || v8[1] <= v0)
  {
    sub_26A84F108();
    v3 = OUTLINED_FUNCTION_10_34();
  }

  else
  {
    v1 = OUTLINED_FUNCTION_42_13();
    sub_26A84F108();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_7_0();
    v2();
    v1(v8, 0);
    v3 = OUTLINED_FUNCTION_46_9();
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A83D898@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ResolvedTableLayout();
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v5 = OUTLINED_FUNCTION_6_50();
  v6 = type metadata accessor for TableRowV2View(v5);
  v7 = (a1 + v6[5]);
  if (qword_2803A8B20 != -1)
  {
    swift_once();
  }

  v21 = xmmword_2803D1C20;
  v22 = *algn_2803D1C30;
  v23 = xmmword_2803D1C40;
  v24 = unk_2803D1C50;
  v19 = unk_2803D1C50;
  v20 = xmmword_2803D1C40;
  sub_26A4D7E54();
  v8 = sub_26A6AEE74(v25);
  OUTLINED_FUNCTION_43_11(v8, v25);
  v7[12] = v20;
  v7[13] = v19;
  v7[16] = v23;
  v7[17] = v24;
  v7[14] = v21;
  v7[15] = v22;
  if (qword_2803A8B30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_35();

  v9 = sub_26A6AEE74(v26);
  OUTLINED_FUNCTION_43_11(v9, v26);
  OUTLINED_FUNCTION_10_58();
  if (qword_2803A8B38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_35();

  v10 = sub_26A6AEE74(v27);
  OUTLINED_FUNCTION_43_11(v10, v27);
  OUTLINED_FUNCTION_10_58();
  if (qword_2803A8B40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_35();

  v11 = sub_26A6AEE74(v28);
  OUTLINED_FUNCTION_43_11(v11, v28);
  OUTLINED_FUNCTION_10_58();
  if (qword_2803A8B48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_35();

  v12 = sub_26A6AEE74(v29);
  OUTLINED_FUNCTION_43_11(v12, v29);
  OUTLINED_FUNCTION_10_58();
  v13 = a1 + v6[11];
  *v13 = sub_26A83E0C8;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = v6[12];
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v15 = a1 + v6[13];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  OUTLINED_FUNCTION_31_22();
  sub_26A848030();
  type metadata accessor for TableRowViewModel();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  v16 = a1 + v6[10];
  sub_26A84ACC8();
  OUTLINED_FUNCTION_46();
  (*(v17 + 16))(v16, v1);
  OUTLINED_FUNCTION_4_90();
  sub_26A848F54();
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110) + 28)) = 0;
  return sub_26A848F54();
}

void sub_26A83DCD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    v6 = sub_26A851878();
    if (v7)
    {
      v6 = v5;
    }

    if (4 * v3 >= v6 >> 14)
    {
      sub_26A851978();
      OUTLINED_FUNCTION_8_69();

      OUTLINED_FUNCTION_7_0();
      return;
    }
  }

  __break(1u);
}

void sub_26A83DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5 >> 1;
    v6 = sub_26A849014(a4, a1, a5 >> 1);
    if (v7)
    {
      v6 = v5;
    }

    if (v5 >= v6)
    {
      sub_26A796B98(v6);
      OUTLINED_FUNCTION_8_69();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_7_0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_26A83DE3C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_26A849014(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_26A83DFD8(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A83DED4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_26A849014(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_26A83DF6C(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26A83DF6C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_26A83DFD8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for TableCell();
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_26A83E080@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_26A83E0C8()
{
  type metadata accessor for TableRowScaleToFitHeight();
  swift_allocObject();
  return sub_26A6CCB44();
}

uint64_t sub_26A83E100@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26A84FA78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98A0);
  return sub_26A83E154(v1, a1 + *(v3 + 44));
}

uint64_t sub_26A83E154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v79 = type metadata accessor for TableRowV2View(0);
  v68 = *(v79 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v79);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98A8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v67 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98B0) - 8;
  MEMORY[0x28223BE20](v72);
  v9 = &v67 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98B8);
  MEMORY[0x28223BE20](v69);
  v73 = &v67 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98C0);
  MEMORY[0x28223BE20](v71);
  v75 = &v67 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98C8);
  MEMORY[0x28223BE20](v74);
  v77 = &v67 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98D0);
  MEMORY[0x28223BE20](v76);
  v78 = &v67 - v13;
  sub_26A83E930(v7);
  v70 = type metadata accessor for TableRowViewModel();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65E8);
  sub_26A84EBE8();
  swift_endAccess();
  sub_26A848030();
  v68 = v3;
  v14 = swift_allocObject();
  sub_26A848084();
  v15 = &v7[*(v5 + 64)];
  *v15 = sub_26A847AE8;
  v15[1] = v14;
  sub_26A851458();
  sub_26A84F628();
  sub_26A4D7EA8();
  v16 = *(v72 + 44);
  v72 = v9;
  memcpy(&v9[v16], __src, 0x70uLL);
  v17 = sub_26A851448();
  v19 = v18;
  if (sub_26A842084())
  {
    sub_26A848030();
    v20 = swift_allocObject();
    sub_26A848084();
    v81 = sub_26A847DD4;
    v82 = v20;
    v83 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98F0);
    sub_26A847E40();
  }

  else
  {
    v81 = sub_26A850DF8();
  }

  v21 = sub_26A851248();
  v22 = &v73[*(v69 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);
  sub_26A851058();
  *v22 = v21;
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98E0) + 36));
  *v23 = v17;
  v23[1] = v19;
  sub_26A4D7EA8();
  LOBYTE(v22) = sub_26A850278();
  sub_26A84ED48();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v75;
  sub_26A4D7EA8();
  v33 = &v32[*(v71 + 36)];
  *v33 = v22;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  LOBYTE(v22) = sub_26A850298();
  sub_26A84ED48();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v77;
  sub_26A4D7EA8();
  v43 = &v42[*(v74 + 36)];
  *v43 = v22;
  *(v43 + 1) = v35;
  *(v43 + 2) = v37;
  *(v43 + 3) = v39;
  *(v43 + 4) = v41;
  v43[40] = 0;
  v44 = sub_26A850258();
  if ((*(a1 + *(v70 + 36)) & 1) == 0)
  {
    sub_26A83FB78();
  }

  sub_26A84ED48();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v78;
  sub_26A4D7EA8();
  v54 = &v53[*(v76 + 36)];
  *v54 = v44;
  *(v54 + 1) = v46;
  *(v54 + 2) = v48;
  *(v54 + 3) = v50;
  *(v54 + 4) = v52;
  v54[40] = 0;
  v55 = sub_26A850268();
  sub_26A83FAD4();
  sub_26A84ED48();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v80;
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B98E8);
  v66 = v64 + *(result + 36);
  *v66 = v55;
  *(v66 + 8) = v57;
  *(v66 + 16) = v59;
  *(v66 + 24) = v61;
  *(v66 + 32) = v63;
  *(v66 + 40) = 0;
  return result;
}

uint64_t sub_26A83E930@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99C8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v98 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_0(v92 - v5);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  v107 = v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99D8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_82();
  v109 = v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99E0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v11);
  v93 = type metadata accessor for TableRowV2View.FlowLayoutCells(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v14 - v13);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99E8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v16);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99F0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v18);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99F8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v20);
  v21 = type metadata accessor for TableRowV2View(0);
  OUTLINED_FUNCTION_15();
  v92[1] = v22;
  MEMORY[0x28223BE20](v23);
  v92[2] = v24;
  OUTLINED_FUNCTION_10_0(v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A00);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v26);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A08);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_82();
  v117 = v28;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A10);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_82();
  v112 = v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A18);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v32);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A20);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v34);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A28);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_82();
  v114 = v36;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A30);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v38);
  v39 = type metadata accessor for ResolvedTableLayout();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_41();
  v43 = v42 - v41;
  v44 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_41();
  v50 = v49 - v48;
  v51 = v1 + *(v21 + 52);
  v52 = *v51;
  if ((*(v51 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v53 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v52, 0);
    (*(v46 + 8))(v50, v44);
    v52 = v120;
  }

  v54 = 0.0;
  if (!sub_26A61B05C(v52, &unk_287B133E0))
  {
    v54 = *(v1 + *(v21 + 32) + 192) * 0.5;
  }

  v55 = type metadata accessor for TableRowViewModel();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  v56 = v43 + *(v39 + 20);
  v57 = *v56;
  v58 = *(v56 + 8);

  OUTLINED_FUNCTION_4_90();
  sub_26A848F54();
  if (!v58)
  {
    if (sub_26A83FB78())
    {
      v63 = sub_26A84FC08();
      v64 = v92[0];
      *v92[0] = v63;
      *(v64 + 8) = v54;
      *(v64 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B40);
      sub_26A83FE68(v57, v1);

      OUTLINED_FUNCTION_23_28();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_14_5();
      sub_26A52EF88();
      sub_26A8488C8();
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_27_19();
LABEL_14:
      swift_storeEnumTagMultiPayload();
      sub_26A848810();
      sub_26A848D2C();
      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_7_0();
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_25_29();
      swift_storeEnumTagMultiPayload();
      sub_26A848784();
      sub_26A848DE4();
      OUTLINED_FUNCTION_39_13();
      OUTLINED_FUNCTION_7_0();
      sub_26A4D6FD8();
      goto LABEL_22;
    }

    v80 = sub_26A62575C();
    sub_26A848030();
    v81 = swift_allocObject();
    sub_26A848084();
    sub_26A84034C(v80, v57, 0, sub_26A848FA8, v81, v94);

    OUTLINED_FUNCTION_23_28();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_7();
    sub_26A52EF88();
    sub_26A8488C8();
    OUTLINED_FUNCTION_36_13();
    OUTLINED_FUNCTION_27_19();
    swift_storeEnumTagMultiPayload();
    sub_26A848810();
    sub_26A848D2C();
    OUTLINED_FUNCTION_35_15();
    OUTLINED_FUNCTION_7_0();
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_25_29();
LABEL_21:
    swift_storeEnumTagMultiPayload();
    sub_26A848784();
    sub_26A848DE4();
    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_7_0();
    sub_26A4D6FD8();
    goto LABEL_22;
  }

  if (v58 != 1)
  {
    if (sub_26A83FB78())
    {
      v65 = sub_26A84FC08();
      v66 = v96;
      *v96 = v65;
      *(v66 + 1) = v54;
      *(v66 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B30);
      v67 = OUTLINED_FUNCTION_31_22();
      sub_26A841B8C(v67, v68, v69);

      OUTLINED_FUNCTION_23_28();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_14_5();
      sub_26A52EF88();
      OUTLINED_FUNCTION_37();
    }

    else
    {
      v82 = sub_26A62575C();
      v83 = *(v1 + *(v55 + 36));
      v84 = sub_26A845AE0(v57);

      v85 = *(v1 + *(v55 + 44));
      if (v85 == 6)
      {
        v86 = sub_26A84FA78();
      }

      else
      {
        v86 = sub_26A63D150(v85);
      }

      v87 = v86;
      v88 = sub_26A83FD24();
      v89 = v98;
      *v98 = v87;
      v89[1] = v88;
      *(v89 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A38);
      v120 = v82;
      v90 = swift_allocObject();
      *(v90 + 16) = v84;
      *(v90 + 24) = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
      sub_26A84ACC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A40);
      OUTLINED_FUNCTION_1_8();
      sub_26A52EF88();
      sub_26A52EF88();
      OUTLINED_FUNCTION_16_38();
      sub_26A8496A0();
      sub_26A851308();
      sub_26A4D7EA8();
      OUTLINED_FUNCTION_23_28();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_7();
      sub_26A52EF88();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_14_5();
    }

    sub_26A52EF88();
    sub_26A84FDF8();
    OUTLINED_FUNCTION_25_29();
    goto LABEL_21;
  }

  if ((*(v1 + *(v55 + 36)) & 1) == 0)
  {
    v70 = v95;
    sub_26A844690(v57, v95);

    v71 = v93;
    v72 = *(v70 + *(v93 + 24));
    v73 = *(v70 + *(v93 + 28));

    v74 = sub_26A8455B8(v72, v73);
    v75 = sub_26A8455B8(*(v70 + *(v71 + 20)), v73);
    sub_26A56D040(v74, v75, v73);

    v76 = sub_26A84FA58();
    v77 = sub_26A83FD24();
    v78 = v97;
    *v97 = v76;
    *(v78 + 1) = v77;
    *(v78 + 16) = 0;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B38);
    sub_26A844DB4(v1, v78 + *(v79 + 44));

    sub_26A848F54();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF790);
    sub_26A5CF8B0();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_14_5();
    sub_26A52EF88();
    sub_26A84FDF8();
    OUTLINED_FUNCTION_27_19();
    goto LABEL_14;
  }

  sub_26A851448();
  sub_26A84F028();
  v59 = v121;
  v60 = v122;
  v61 = v123;
  v62 = v103;
  *v103 = v120;
  *(v62 + 8) = v59;
  v62[2] = v60;
  *(v62 + 24) = v61;
  *(v62 + 2) = v124;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF790);
  sub_26A5CF8B0();
  OUTLINED_FUNCTION_37();
  sub_26A52EF88();
  sub_26A84FDF8();
  OUTLINED_FUNCTION_23_28();
  swift_storeEnumTagMultiPayload();
  sub_26A848810();
  sub_26A848D2C();
  sub_26A84FDF8();
  OUTLINED_FUNCTION_14_5();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_23_28();
  swift_storeEnumTagMultiPayload();
  sub_26A848784();
  sub_26A848DE4();
  sub_26A84FDF8();
LABEL_22:
  OUTLINED_FUNCTION_14_5();
  return sub_26A4D6FD8();
}

uint64_t sub_26A83F9D8(uint64_t a1)
{
  v2 = sub_26A84ACC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TableRowV2View(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);
  return sub_26A851068();
}

double sub_26A83FAD4()
{
  v1 = type metadata accessor for TableRowViewModel();
  if (*(*(*(v0 + *(v1 + 40)) + 48) + 16) && (v2 = *(v0 + *(v1 + 20)), v3 = , LOBYTE(v2) = sub_26A75736C(v3, v2), , (v2 & 1) != 0))
  {
    return *(v0 + *(type metadata accessor for TableRowV2View(0) + 20) + 208);
  }

  else
  {
    return *(v0 + *(type metadata accessor for TableRowV2View(0) + 32) + 192) * 0.5;
  }
}

BOOL sub_26A83FB78()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v6 = OUTLINED_FUNCTION_6_50();
  v7 = v0 + *(type metadata accessor for TableRowV2View(v6) + 52);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v4 + 8))(v1, v2);
    v8 = v14;
  }

  if (!sub_26A61B05C(v8, &unk_287B133E0) && (*(*(v0 + *(type metadata accessor for TableRowViewModel() + 40)) + 40) & 1) != 0)
  {
    return 0;
  }

  v11 = type metadata accessor for TableRowViewModel();
  result = 0;
  v12 = v0 + *(v11 + 52);
  if ((*(v12 + 8) & 1) == 0 && !*v12)
  {
    v13 = *(sub_26A625870() + 16);

    return v13 != 0;
  }

  return result;
}

double sub_26A83FD24()
{
  v1 = v0;
  v2 = type metadata accessor for ResolvedTableLayout();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  v7 = *(v0 + *(type metadata accessor for TableRowViewModel() + 40));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  v8 = *(v6 + *(v3 + 28) + 8);

  OUTLINED_FUNCTION_4_90();
  sub_26A848F54();

  if (v8)
  {
    if (v8 != 1)
    {
      v11 = type metadata accessor for TableRowV2View(0);
      goto LABEL_8;
    }

    v9 = sub_26A73BB3C(*(v7 + 16));
  }

  else
  {
    v9 = sub_26A73B798(*(v7 + 16));
  }

  v10 = v9;
  v11 = type metadata accessor for TableRowV2View(0);
  if (!v10)
  {
LABEL_8:
    v12 = (v11 + 24);
    return *(v1 + *v12 + 192);
  }

  v12 = (v11 + 28);
  return *(v1 + *v12 + 192);
}

uint64_t sub_26A83FE68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B48);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = sub_26A84F988();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B50);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B58);
  MEMORY[0x28223BE20](v14 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  if (*(a1 + 16))
  {
    v31 = v13;
    v18 = *(type metadata accessor for TableRowV2View(0) + 52);
    v32 = v11;
    v33 = a2;
    v19 = a2 + v18;
    v20 = *v19;
    if ((*(v19 + 8) & 1) == 0)
    {

      sub_26A851EA8();
      v21 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v20, 0);
      (*(v34 + 8))(v10, v35);
      v20 = v36;
    }

    v22 = sub_26A61B05C(v20, &unk_287B133E0);
    v23 = v33;
    if (v22 || sub_26A625670())
    {
      v24 = sub_26A625870();
      v25 = v31;
    }

    else
    {
      v24 = *(v23 + *(type metadata accessor for TableRowViewModel() + 28));
      v25 = v31;
      if (v24)
      {
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }
    }

    KeyPath = swift_getKeyPath();

    sub_26A840B6C(v24, a1, 0, sub_26A8496FC, KeyPath, v25);

    sub_26A4D7EA8();
    v27 = 0;
    v11 = v32;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v27, 1, v11);
  v28 = sub_26A62575C();
  v29 = swift_getKeyPath();

  sub_26A84137C(v28, a1, 0, sub_26A8496FC, v29, v7);

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B60);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A84034C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a4;
  v71 = a5;
  v68 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A88);
  MEMORY[0x28223BE20](v75);
  v64 = &v61[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C40);
  MEMORY[0x28223BE20](v10);
  v74 = &v61[-v11];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AA8);
  MEMORY[0x28223BE20](v73);
  v63 = &v61[-v12];
  v13 = type metadata accessor for TableCell();
  MEMORY[0x28223BE20](v13);
  v15 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v77 = &v61[-v17];
  MEMORY[0x28223BE20](v18);
  v22 = &v61[-v20];
  v23 = *(a1 + 16);
  v76 = a6;
  v72 = v10;
  v65 = a1;
  v66 = v21;
  v62 = a3;
  v67 = v23;
  if (!v23)
  {
    v26 = MEMORY[0x277D84F98];
LABEL_14:
    v39 = v68;
    v40 = *(v68 + 16);
    if (v40)
    {
      v41 = (v68 + 64);
      v42 = MEMORY[0x277D84F90];
      v43 = v67;
      do
      {
        if ((*v41 & 1) == 0)
        {
          if (*(v26 + 16))
          {
            sub_26A5484D4(*(v41 - 1));
            if (v44)
            {
              sub_26A848030();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26A7A2598();
                v42 = v46;
              }

              v45 = *(v42 + 16);
              if (v45 >= *(v42 + 24) >> 1)
              {
                sub_26A7A2598();
                v42 = v47;
              }

              *(v42 + 16) = v45 + 1;
              sub_26A848084();
            }
          }
        }

        v41 += 72;
        --v40;
      }

      while (v40);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
      v43 = v67;
    }

    if (!v43 || *(v42 + 16))
    {
      v51 = v69;
      v52 = sub_26A83FD24();
      v53 = *(v51 + *(type metadata accessor for TableRowViewModel() + 44));
      if (v53 == 6)
      {
        LOBYTE(v53) = 3;
      }

      v54 = v63;
      *v63 = v39;
      *(v54 + 1) = v42;
      v54[2] = v52;
      *(v54 + 24) = v62 & 1;
      *(v54 + 25) = v53;
      v80 = v42;
      v55 = swift_allocObject();
      v56 = v71;
      *(v55 + 16) = v70;
      *(v55 + 24) = v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
      sub_26A84ACC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AD8);
      sub_26A52EF88();
      sub_26A848AF0();
      sub_26A8496A0();
      sub_26A851308();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A848954();
      sub_26A848A0C();
      sub_26A84FDF8();
      return sub_26A4D6FD8();
    }

    v48 = type metadata accessor for TableRowViewModel();
    v49 = v69;
    if (v43 == *(*(v69 + *(v48 + 20)) + 16))
    {
      v50 = v65;
      if (*(v69 + *(v48 + 24)))
      {

LABEL_37:
        v57 = sub_26A84FBF8();
        v58 = v64;
        *v64 = v57;
        v58[1] = 0;
        *(v58 + 16) = 0;
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C48);
        sub_26A842574(v49, v50, v70, v71, v58 + *(v59 + 44));

        *(v58 + *(v75 + 36)) = 0;
        sub_26A4D7E54();
        swift_storeEnumTagMultiPayload();
        sub_26A848954();
        sub_26A848A0C();
        sub_26A84FDF8();
        return sub_26A4D6FD8();
      }
    }

    else
    {
      v50 = v65;
    }

    goto LABEL_37;
  }

  v79 = *(v19 + 24);
  v24 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v25 = *(v21 + 72);
  v26 = MEMORY[0x277D84F98];
  v27 = v23;
  v78 = &v61[-v20];
  while (1)
  {
    sub_26A848030();
    v28 = *&v22[v79];
    v29 = v15;
    sub_26A848030();
    swift_isUniquelyReferenced_nonNull_native();
    v80 = v26;
    v30 = sub_26A5484D4(v28);
    if (__OFADD__(*(v26 + 16), (v31 & 1) == 0))
    {
      break;
    }

    v32 = v30;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1120);
    if (sub_26A8523E8())
    {
      v34 = sub_26A5484D4(v28);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_41;
      }

      v32 = v34;
    }

    v26 = v80;
    if (v33)
    {
      v15 = v29;
      sub_26A625EA0(v29, *(v80 + 56) + v32 * v25);
      v22 = v78;
      sub_26A848F54();
    }

    else
    {
      *(v80 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      *(*(v26 + 48) + 8 * v32) = v28;
      v15 = v29;
      sub_26A848084();
      v22 = v78;
      sub_26A848F54();
      v36 = *(v26 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_40;
      }

      *(v26 + 16) = v38;
    }

    v24 += v25;
    if (!--v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_26A852618();
  __break(1u);
  return result;
}

uint64_t sub_26A840B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a4;
  v70 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BD8);
  MEMORY[0x28223BE20](v77);
  v65 = &v62[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BE0);
  MEMORY[0x28223BE20](v11);
  v76 = &v62[-v12];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BE8);
  MEMORY[0x28223BE20](v75);
  v64 = &v62[-v13];
  v14 = type metadata accessor for TableCell();
  MEMORY[0x28223BE20](v14);
  v16 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v67 = &v62[-v18];
  MEMORY[0x28223BE20](v19);
  v23 = &v62[-v21];
  v24 = *(a1 + 16);
  v78 = a6;
  v73 = a5;
  v74 = v11;
  v66 = a1;
  v63 = a3;
  v68 = v22;
  v69 = v24;
  if (!v24)
  {
    v27 = MEMORY[0x277D84F98];
LABEL_14:
    v40 = v70;
    v41 = *(v70 + 16);
    if (v41)
    {
      v42 = (v70 + 64);
      v43 = MEMORY[0x277D84F90];
      do
      {
        if ((*v42 & 1) == 0)
        {
          if (*(v27 + 16))
          {
            sub_26A5484D4(*(v42 - 1));
            if (v44)
            {
              sub_26A848030();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26A7A2598();
                v43 = v46;
              }

              v45 = *(v43 + 16);
              if (v45 >= *(v43 + 24) >> 1)
              {
                sub_26A7A2598();
                v43 = v47;
              }

              *(v43 + 16) = v45 + 1;
              sub_26A848084();
            }
          }
        }

        v42 += 72;
        --v41;
      }

      while (v41);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }

    if (!v69 || *(v43 + 16))
    {
      v52 = v71;
      v53 = sub_26A83FD24();
      v54 = *(v52 + *(type metadata accessor for TableRowViewModel() + 44));
      if (v54 == 6)
      {
        LOBYTE(v54) = 3;
      }

      v55 = v64;
      *v64 = v40;
      *(v55 + 1) = v43;
      v55[2] = v53;
      *(v55 + 24) = v63 & 1;
      *(v55 + 25) = v54;
      v81 = v43;
      v56 = swift_allocObject();
      v57 = v73;
      *(v56 + 16) = v72;
      *(v56 + 24) = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
      sub_26A84ACC8();
      sub_26A52EF88();
      sub_26A84851C();
      sub_26A8496A0();
      sub_26A851308();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A849264();
      sub_26A84931C();
      sub_26A84FDF8();
      return sub_26A4D6FD8();
    }

    v48 = v69;

    v49 = type metadata accessor for TableRowViewModel();
    v50 = v71;
    if (v48 == *(*(v71 + *(v49 + 20)) + 16))
    {
      v51 = v66;
      if (*(v71 + *(v49 + 24)))
      {

LABEL_37:
        v58 = sub_26A84FBF8();
        v59 = v65;
        *v65 = v58;
        v59[1] = 0;
        *(v59 + 16) = 0;
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C20);
        sub_26A843B60(v50, v51, v72, v73, v59 + *(v60 + 44));

        *(v59 + *(v77 + 36)) = 0;
        sub_26A4D7E54();
        swift_storeEnumTagMultiPayload();
        sub_26A849264();
        sub_26A84931C();
        sub_26A84FDF8();
        return sub_26A4D6FD8();
      }
    }

    else
    {
      v51 = v66;
    }

    goto LABEL_37;
  }

  v80 = *(v20 + 24);
  v25 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v26 = *(v22 + 72);
  v27 = MEMORY[0x277D84F98];
  v28 = v24;
  v79 = &v62[-v21];
  while (1)
  {
    sub_26A848030();
    v29 = *&v23[v80];
    v30 = v16;
    sub_26A848030();
    swift_isUniquelyReferenced_nonNull_native();
    v81 = v27;
    v31 = sub_26A5484D4(v29);
    if (__OFADD__(*(v27 + 16), (v32 & 1) == 0))
    {
      break;
    }

    v33 = v31;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1120);
    if (sub_26A8523E8())
    {
      v35 = sub_26A5484D4(v29);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_41;
      }

      v33 = v35;
    }

    v27 = v81;
    if (v34)
    {
      v16 = v30;
      sub_26A625EA0(v30, *(v81 + 56) + v33 * v26);
      v23 = v79;
      sub_26A848F54();
    }

    else
    {
      *(v81 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      *(*(v27 + 48) + 8 * v33) = v29;
      v16 = v30;
      sub_26A848084();
      v23 = v79;
      sub_26A848F54();
      v37 = *(v27 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_40;
      }

      *(v27 + 16) = v39;
    }

    v25 += v26;
    if (!--v28)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_26A852618();
  __break(1u);
  return result;
}

uint64_t sub_26A84137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a4;
  v70 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B68);
  MEMORY[0x28223BE20](v77);
  v65 = &v62[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B70);
  MEMORY[0x28223BE20](v11);
  v76 = &v62[-v12];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B78);
  MEMORY[0x28223BE20](v75);
  v64 = &v62[-v13];
  v14 = type metadata accessor for TableCell();
  MEMORY[0x28223BE20](v14);
  v16 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v67 = &v62[-v18];
  MEMORY[0x28223BE20](v19);
  v23 = &v62[-v21];
  v24 = *(a1 + 16);
  v78 = a6;
  v73 = a5;
  v74 = v11;
  v66 = a1;
  v63 = a3;
  v68 = v22;
  v69 = v24;
  if (!v24)
  {
    v27 = MEMORY[0x277D84F98];
LABEL_14:
    v40 = v70;
    v41 = *(v70 + 16);
    if (v41)
    {
      v42 = (v70 + 64);
      v43 = MEMORY[0x277D84F90];
      do
      {
        if ((*v42 & 1) == 0)
        {
          if (*(v27 + 16))
          {
            sub_26A5484D4(*(v42 - 1));
            if (v44)
            {
              sub_26A848030();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26A7A2598();
                v43 = v46;
              }

              v45 = *(v43 + 16);
              if (v45 >= *(v43 + 24) >> 1)
              {
                sub_26A7A2598();
                v43 = v47;
              }

              *(v43 + 16) = v45 + 1;
              sub_26A848084();
            }
          }
        }

        v42 += 72;
        --v41;
      }

      while (v41);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }

    if (!v69 || *(v43 + 16))
    {
      v52 = v71;
      v53 = sub_26A83FD24();
      v54 = *(v52 + *(type metadata accessor for TableRowViewModel() + 44));
      if (v54 == 6)
      {
        LOBYTE(v54) = 3;
      }

      v55 = v64;
      *v64 = v40;
      *(v55 + 1) = v43;
      v55[2] = v53;
      *(v55 + 24) = v63 & 1;
      *(v55 + 25) = v54;
      v81 = v43;
      v56 = swift_allocObject();
      v57 = v73;
      *(v56 + 16) = v72;
      *(v56 + 24) = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
      sub_26A84ACC8();
      sub_26A52EF88();
      sub_26A663C6C();
      sub_26A8496A0();
      sub_26A851308();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A849058();
      sub_26A849110();
      sub_26A84FDF8();
      return sub_26A4D6FD8();
    }

    v48 = v69;

    v49 = type metadata accessor for TableRowViewModel();
    v50 = v71;
    if (v48 == *(*(v71 + *(v49 + 20)) + 16))
    {
      v51 = v66;
      if (*(v71 + *(v49 + 24)))
      {

LABEL_37:
        v58 = sub_26A84FBF8();
        v59 = v65;
        *v65 = v58;
        v59[1] = 0;
        *(v59 + 16) = 0;
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BB0);
        sub_26A843088(v50, v51, v72, v73, v59 + *(v60 + 44));

        *(v59 + *(v77 + 36)) = 0;
        sub_26A4D7E54();
        swift_storeEnumTagMultiPayload();
        sub_26A849058();
        sub_26A849110();
        sub_26A84FDF8();
        return sub_26A4D6FD8();
      }
    }

    else
    {
      v51 = v66;
    }

    goto LABEL_37;
  }

  v80 = *(v20 + 24);
  v25 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v26 = *(v22 + 72);
  v27 = MEMORY[0x277D84F98];
  v28 = v24;
  v79 = &v62[-v21];
  while (1)
  {
    sub_26A848030();
    v29 = *&v23[v80];
    v30 = v16;
    sub_26A848030();
    swift_isUniquelyReferenced_nonNull_native();
    v81 = v27;
    v31 = sub_26A5484D4(v29);
    if (__OFADD__(*(v27 + 16), (v32 & 1) == 0))
    {
      break;
    }

    v33 = v31;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1120);
    if (sub_26A8523E8())
    {
      v35 = sub_26A5484D4(v29);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_41;
      }

      v33 = v35;
    }

    v27 = v81;
    if (v34)
    {
      v16 = v30;
      sub_26A625EA0(v30, *(v81 + 56) + v33 * v26);
      v23 = v79;
      sub_26A848F54();
    }

    else
    {
      *(v81 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      *(*(v27 + 48) + 8 * v33) = v29;
      v16 = v30;
      sub_26A848084();
      v23 = v79;
      sub_26A848F54();
      v37 = *(v27 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_40;
      }

      *(v27 + 16) = v39;
    }

    v25 += v26;
    if (!--v28)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_26A852618();
  __break(1u);
  return result;
}

uint64_t sub_26A841B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99C8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = v39 - v8;
  MEMORY[0x28223BE20](v9);
  v39[0] = v39 - v10;
  MEMORY[0x28223BE20](v11);
  v44 = v39 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (v39 - v14);
  MEMORY[0x28223BE20](v16);
  v48 = v39 - v17;
  v18 = type metadata accessor for TableRowViewModel();
  v19 = v18[7];
  if (*(a1 + v19))
  {
    v20 = *(a1 + v19);
  }

  else
  {
    if (*(a1 + v18[8]))
    {
      v20 = *(a1 + v18[8]);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }
  }

  v43 = a2;
  v21 = sub_26A845AE0(a2);
  v22 = *(a1 + v18[11]);
  v40 = v22;
  if (v22 == 6)
  {
    v23 = sub_26A84FA78();
  }

  else
  {
    v23 = sub_26A63D150(v22);
  }

  v24 = v23;
  v25 = sub_26A83FD24();
  *v15 = v24;
  v15[1] = v25;
  *(v15 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A38);
  v27 = *(v26 + 44);
  v41 = v26;
  v42 = v27;
  v49 = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  *(v28 + 24) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
  sub_26A84ACC8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9A40);
  sub_26A52EF88();
  sub_26A52EF88();
  sub_26A8496A0();
  v42 = v29;
  v39[1] = v30;
  sub_26A851308();
  sub_26A4D7EA8();
  v31 = sub_26A62575C();
  v32 = sub_26A845AE0(v43);
  if (v40 == 6)
  {
    v33 = sub_26A84FA78();
  }

  else
  {
    v33 = sub_26A63D150(v40);
  }

  v34 = v33;
  v35 = sub_26A83FD24();
  v36 = v39[0];
  *v39[0] = v34;
  *(v36 + 8) = v35;
  *(v36 + 16) = 0;
  v49 = v31;
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  *(v37 + 24) = 0;
  sub_26A851308();
  sub_26A4D7EA8();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9CA8);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

BOOL sub_26A842084()
{
  v1 = type metadata accessor for ResolvedTableLayout();
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_6_50();
  type metadata accessor for TableRowViewModel();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_31_22();
  sub_26A84EC18();

  v3 = *(v0 + *(v2 + 28) + 8);

  OUTLINED_FUNCTION_4_90();
  sub_26A848F54();

  return v3 < 2;
}

double sub_26A842170@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TableRowViewModel();
  if (*(a1 + *(v4 + 36)) == 1)
  {
    type metadata accessor for TableCell();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AF8);
    sub_26A84851C();
    sub_26A848C20();
    sub_26A84FDF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AE8);
    sub_26A848BA8(&qword_2803B9AE0, &qword_2803B9AE8);
    sub_26A663C6C();
    sub_26A84FDF8();
  }

  else
  {
    v5 = *(a1 + *(v4 + 48));
    type metadata accessor for TableCell();
    if (v5 != 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AE8);
      sub_26A848BA8(&qword_2803B9AE0, &qword_2803B9AE8);
      sub_26A663C6C();
      sub_26A84FDF8();
      goto LABEL_7;
    }

    type metadata accessor for TableRowScaleToFitHeight();
    sub_26A8496A0();

    sub_26A84F678();
    type metadata accessor for TableRowV2View(0);
    sub_26A84EEF8();
    sub_26A84EB78();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AF8);
    sub_26A84851C();
    sub_26A848C20();
    sub_26A84FDF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AE8);
    sub_26A848BA8(&qword_2803B9AE0, &qword_2803B9AE8);
    sub_26A663C6C();
    sub_26A84FDF8();
  }

LABEL_7:
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 41) = v11;
  return result;
}

uint64_t sub_26A842574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v67 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BB8);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = v55 - v9;
  v10 = type metadata accessor for TableRowHeightPreCalculationLayout(0);
  MEMORY[0x28223BE20](v10);
  v62 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v55 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v55 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C50);
  MEMORY[0x28223BE20](v66);
  v64 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v63 = v55 - v20;
  MEMORY[0x28223BE20](v21);
  v58 = v55 - v22;
  v23 = sub_26A84F988();
  v57 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C58);
  MEMORY[0x28223BE20](v26 - 8);
  v61 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v55 - v29;
  v31 = sub_26A83FB78();
  v65 = a5;
  if (!v31)
  {
    goto LABEL_5;
  }

  v59 = v10;
  v32 = a1 + *(type metadata accessor for TableRowV2View(0) + 52);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v56 = a1;
  if ((v32 & 1) == 0)
  {

    sub_26A851EA8();
    v34 = sub_26A8501F8();
    sub_26A84EA78();

    a1 = v56;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v33, 0);
    (*(v57 + 8))(v25, v23);
    v33 = __src[0];
  }

  v35 = sub_26A61B05C(v33, &unk_287B133E0);
  v10 = v59;
  if (!v35)
  {
    v36 = MEMORY[0x277D84F90];
    v37 = *(a1 + *(type metadata accessor for TableRowViewModel() + 28));
    if (v37)
    {
      v36 = v37;
    }

    sub_26A848030();

    v38 = sub_26A83FD24();
    v39 = v10;
    if (qword_2803A8B40 != -1)
    {
      swift_once();
    }

    v40 = xmmword_2803D1CF0;
    v41 = qword_2803D1D00;
    v42 = unk_2803D1D08;
    v43 = qword_2803D1D10;

    sub_26A6AEE74(__src);
    memcpy(v17, __src, 0xC0uLL);
    *(v17 + 24) = v43;
    *(v17 + 200) = v40;
    *(v17 + 27) = v41;
    *(v17 + 28) = v42;
    *(v17 + 29) = v43;
    *(v17 + 30) = swift_getKeyPath();
    v17[248] = 0;
    *&v17[v39[8]] = 0x4032000000000000;
    *&v17[v39[7]] = v36;
    *&v17[v39[9]] = v38;
    sub_26A848084();
    sub_26A848030();
    sub_26A4D7E54();
    v55[1] = *(v66 + 44);
    v70 = a2;
    v44 = swift_allocObject();
    v45 = v68;
    *(v44 + 16) = v67;
    *(v44 + 24) = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
    v57 = a2;
    sub_26A84ACC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AD8);
    sub_26A52EF88();
    sub_26A848AF0();
    sub_26A8496A0();
    a2 = v57;
    v46 = v66;
    sub_26A851308();
    sub_26A4D6FD8();
    sub_26A848F54();
    sub_26A4D7EA8();
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v46);
    v10 = v59;
  }

  else
  {
LABEL_5:
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v66);
  }

  v60 = v30;
  sub_26A848030();
  v47 = sub_26A83FD24();
  if (qword_2803A8B40 != -1)
  {
    swift_once();
  }

  v48 = xmmword_2803D1CF0;
  v49 = qword_2803D1D00;
  v50 = unk_2803D1D08;
  v51 = qword_2803D1D10;

  sub_26A6AEE74(__src);
  memcpy(v14, __src, 0xC0uLL);
  *(v14 + 24) = v51;
  *(v14 + 200) = v48;
  *(v14 + 27) = v49;
  *(v14 + 28) = v50;
  *(v14 + 29) = v51;
  *(v14 + 30) = swift_getKeyPath();
  v14[248] = 0;
  *&v14[v10[8]] = 0x4032000000000000;
  *&v14[v10[7]] = a2;
  *&v14[v10[9]] = v47;
  sub_26A848084();
  sub_26A848030();
  sub_26A4D7E54();
  v70 = a2;
  v52 = swift_allocObject();
  v53 = v68;
  *(v52 + 16) = v67;
  *(v52 + 24) = v53;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
  sub_26A84ACC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9AD8);
  sub_26A52EF88();
  sub_26A848AF0();
  sub_26A8496A0();
  sub_26A851308();
  sub_26A4D6FD8();
  sub_26A848F54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C60);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A843088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BB8);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v53 - v10;
  v11 = type metadata accessor for TableRowHeightPreCalculationLayout(0);
  MEMORY[0x28223BE20](v11);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BC0);
  MEMORY[0x28223BE20](v63);
  v61 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v60 = &v53 - v21;
  MEMORY[0x28223BE20](v22);
  v56 = &v53 - v23;
  v24 = sub_26A84F988();
  v55 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BC8);
  MEMORY[0x28223BE20](v27 - 8);
  v58 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v66 = &v53 - v30;
  v31 = sub_26A83FB78();
  v62 = a5;
  if (!v31)
  {
    goto LABEL_5;
  }

  v57 = a4;
  v32 = a1 + *(type metadata accessor for TableRowV2View(0) + 52);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v54 = a1;
  if ((v32 & 1) == 0)
  {

    sub_26A851EA8();
    v34 = sub_26A8501F8();
    sub_26A84EA78();

    a1 = v54;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v33, 0);
    (*(v55 + 8))(v26, v24);
    v33 = __src[0];
  }

  v35 = sub_26A61B05C(v33, &unk_287B133E0);
  a4 = v57;
  if (!v35)
  {
    v36 = MEMORY[0x277D84F90];
    v37 = *(a1 + *(type metadata accessor for TableRowViewModel() + 28));
    if (v37)
    {
      v36 = v37;
    }

    sub_26A848030();

    v38 = sub_26A83FD24();
    if (qword_2803A8B40 != -1)
    {
      swift_once();
    }

    v39 = xmmword_2803D1CF0;
    v40 = qword_2803D1D00;
    v41 = unk_2803D1D08;
    v42 = qword_2803D1D10;

    sub_26A6AEE74(__src);
    memcpy(v18, __src, 0xC0uLL);
    *(v18 + 24) = v42;
    *(v18 + 200) = v39;
    *(v18 + 27) = v40;
    *(v18 + 28) = v41;
    *(v18 + 29) = v42;
    *(v18 + 30) = swift_getKeyPath();
    v18[248] = 0;
    *&v18[v11[8]] = 0x4032000000000000;
    *&v18[v11[7]] = v36;
    *&v18[v11[9]] = v38;
    sub_26A848084();
    sub_26A848030();
    sub_26A4D7E54();
    v53 = *(v63 + 44);
    v67 = a2;
    v43 = swift_allocObject();
    a4 = v57;
    *(v43 + 16) = v64;
    *(v43 + 24) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
    v55 = a2;
    sub_26A84ACC8();
    sub_26A52EF88();
    sub_26A663C6C();
    sub_26A8496A0();
    a2 = v55;
    v44 = v63;
    sub_26A851308();
    sub_26A4D6FD8();
    sub_26A848F54();
    v45 = v66;
    sub_26A4D7EA8();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
  }

  else
  {
LABEL_5:
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v63);
  }

  sub_26A848030();
  v46 = sub_26A83FD24();
  if (qword_2803A8B40 != -1)
  {
    swift_once();
  }

  v47 = xmmword_2803D1CF0;
  v48 = qword_2803D1D00;
  v49 = unk_2803D1D08;
  v50 = qword_2803D1D10;

  sub_26A6AEE74(__src);
  memcpy(v15, __src, 0xC0uLL);
  *(v15 + 24) = v50;
  *(v15 + 200) = v47;
  *(v15 + 27) = v48;
  *(v15 + 28) = v49;
  *(v15 + 29) = v50;
  *(v15 + 30) = swift_getKeyPath();
  v15[248] = 0;
  *&v15[v11[8]] = 0x4032000000000000;
  *&v15[v11[7]] = a2;
  *&v15[v11[9]] = v46;
  sub_26A848084();
  sub_26A848030();
  sub_26A4D7E54();
  v67 = a2;
  v51 = swift_allocObject();
  *(v51 + 16) = v64;
  *(v51 + 24) = a4;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
  sub_26A84ACC8();
  sub_26A52EF88();
  sub_26A663C6C();
  sub_26A8496A0();
  sub_26A851308();
  sub_26A4D6FD8();
  sub_26A848F54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BD0);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A843B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9BB8);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v53 - v10;
  v11 = type metadata accessor for TableRowHeightPreCalculationLayout(0);
  MEMORY[0x28223BE20](v11);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C28);
  MEMORY[0x28223BE20](v63);
  v61 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v60 = &v53 - v21;
  MEMORY[0x28223BE20](v22);
  v56 = &v53 - v23;
  v24 = sub_26A84F988();
  v55 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C30);
  MEMORY[0x28223BE20](v27 - 8);
  v58 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v66 = &v53 - v30;
  v31 = sub_26A83FB78();
  v62 = a5;
  if (!v31)
  {
    goto LABEL_5;
  }

  v57 = a4;
  v32 = a1 + *(type metadata accessor for TableRowV2View(0) + 52);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v54 = a1;
  if ((v32 & 1) == 0)
  {

    sub_26A851EA8();
    v34 = sub_26A8501F8();
    sub_26A84EA78();

    a1 = v54;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v33, 0);
    (*(v55 + 8))(v26, v24);
    v33 = __src[0];
  }

  v35 = sub_26A61B05C(v33, &unk_287B133E0);
  a4 = v57;
  if (!v35)
  {
    v36 = MEMORY[0x277D84F90];
    v37 = *(a1 + *(type metadata accessor for TableRowViewModel() + 28));
    if (v37)
    {
      v36 = v37;
    }

    sub_26A848030();

    v38 = sub_26A83FD24();
    if (qword_2803A8B40 != -1)
    {
      swift_once();
    }

    v39 = xmmword_2803D1CF0;
    v40 = qword_2803D1D00;
    v41 = unk_2803D1D08;
    v42 = qword_2803D1D10;

    sub_26A6AEE74(__src);
    memcpy(v18, __src, 0xC0uLL);
    *(v18 + 24) = v42;
    *(v18 + 200) = v39;
    *(v18 + 27) = v40;
    *(v18 + 28) = v41;
    *(v18 + 29) = v42;
    *(v18 + 30) = swift_getKeyPath();
    v18[248] = 0;
    *&v18[v11[8]] = 0x4032000000000000;
    *&v18[v11[7]] = v36;
    *&v18[v11[9]] = v38;
    sub_26A848084();
    sub_26A848030();
    sub_26A4D7E54();
    v53 = *(v63 + 44);
    v67 = a2;
    v43 = swift_allocObject();
    a4 = v57;
    *(v43 + 16) = v64;
    *(v43 + 24) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
    v55 = a2;
    sub_26A84ACC8();
    sub_26A52EF88();
    sub_26A84851C();
    sub_26A8496A0();
    a2 = v55;
    v44 = v63;
    sub_26A851308();
    sub_26A4D6FD8();
    sub_26A848F54();
    v45 = v66;
    sub_26A4D7EA8();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
  }

  else
  {
LABEL_5:
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v63);
  }

  sub_26A848030();
  v46 = sub_26A83FD24();
  if (qword_2803A8B40 != -1)
  {
    swift_once();
  }

  v47 = xmmword_2803D1CF0;
  v48 = qword_2803D1D00;
  v49 = unk_2803D1D08;
  v50 = qword_2803D1D10;

  sub_26A6AEE74(__src);
  memcpy(v15, __src, 0xC0uLL);
  *(v15 + 24) = v50;
  *(v15 + 200) = v47;
  *(v15 + 27) = v48;
  *(v15 + 28) = v49;
  *(v15 + 29) = v50;
  *(v15 + 30) = swift_getKeyPath();
  v15[248] = 0;
  *&v15[v11[8]] = 0x4032000000000000;
  *&v15[v11[7]] = a2;
  *&v15[v11[9]] = v46;
  sub_26A848084();
  sub_26A848030();
  sub_26A4D7E54();
  v67 = a2;
  v51 = swift_allocObject();
  *(v51 + 16) = v64;
  *(v51 + 24) = a4;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
  sub_26A84ACC8();
  sub_26A52EF88();
  sub_26A84851C();
  sub_26A8496A0();
  sub_26A851308();
  sub_26A4D6FD8();
  sub_26A848F54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C38);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

double sub_26A844638@<D0>(void (*a1)(_OWORD *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v8);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 41) = v5;
  return result;
}

void sub_26A844690(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19();
  v78 = v5;
  MEMORY[0x28223BE20](v6);
  v77 = &v75 - v7;
  v81 = type metadata accessor for TableCell();
  OUTLINED_FUNCTION_15();
  v75 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v76 = v11 - v10;
  v12 = 0;
  v13 = 0;
  v14 = a1 + 32;
  v15 = MEMORY[0x277D84F90];
  v82 = a1;
  while (2)
  {
    v16 = 0;
    v17 = v12 - 16;
    v18 = v15;
LABEL_3:
    v19 = v17 + 72 * v16;
    while (1)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v20 = *(v12 + 16);
      if (v16 == v20)
      {
        break;
      }

      if (v16 >= v20)
      {
        __break(1u);
LABEL_34:
        sub_26A8525B8();
        swift_unknownObjectRetain_n();
        v60 = swift_dynamicCastClass();
        if (!v60)
        {
          swift_unknownObjectRelease();
          v60 = MEMORY[0x277D84F90];
        }

        v61 = *(v60 + 16);

        if (__OFSUB__(a1 >> 1, v14))
        {
          __break(1u);
        }

        else if (v61 == (a1 >> 1) - v14)
        {
          v15 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          a1 = v82;
          if (!v15)
          {
            v15 = MEMORY[0x277D84F90];
LABEL_40:
            swift_unknownObjectRelease();
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_42:
            if (*(a1 + 16))
            {
              *(a1 + 32) = v15;

              goto LABEL_62;
            }

            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_73:
          sub_26A848F2C();
          a1 = v73;
          goto LABEL_42;
        }

        swift_unknownObjectRelease();
LABEL_21:
        v37 = OUTLINED_FUNCTION_31_22();
        sub_26A817FC4(v37, v38, v14, a1);
        v15 = v39;
        a1 = v82;
        goto LABEL_40;
      }

      ++v16;
      v21 = (v19 + 72);
      v22 = *(v19 + 80);
      v19 += 72;
      if ((v22 & 1) == 0)
      {
        v23 = *v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A1810();
          v18 = v25;
        }

        v24 = *(v18 + 16);
        if (v24 >= *(v18 + 24) >> 1)
        {
          sub_26A7A1810();
          v18 = v26;
        }

        *(v18 + 16) = v24 + 1;
        *(v18 + 8 * v24 + 32) = v23;
        a1 = v82;
        goto LABEL_3;
      }
    }

    v15 = v18;
LABEL_14:
    v27 = *(a1 + 16);
    if (v13 != v27)
    {
      if (v13 < v27)
      {
        v28 = *(v14 + 8 * v13);

        v12 = v28;
        ++v13;
        continue;
      }

      __break(1u);
      goto LABEL_73;
    }

    break;
  }

  v29 = type metadata accessor for TableRowViewModel();
  v30 = v80;
  v16 = sub_26A6258D4(*(v80 + *(v29 + 20)), v15);
  v12 = sub_26A625870();
  v18 = sub_26A6258D4(v12, v15);

  v31 = *(v30 + *(v29 + 40));
  if (*(v31 + 64))
  {
    v32 = v77;
    sub_26A7DBDAC(v18, v77);
    v33 = v81;
    if (__swift_getEnumTagSinglePayload(v32, 1, v81) == 1)
    {
      sub_26A4D6FD8();
      if (v13)
      {
        goto LABEL_20;
      }

LABEL_61:

LABEL_62:
      sub_26A7DBDAC(v16, v78);
      sub_26A83DE3C(1, v16);
      v12 = v63;
      v14 = v64;
      if (v64)
      {
        v17 = a1;
        sub_26A8525B8();
        swift_unknownObjectRetain_n();
        v70 = swift_dynamicCastClass();
        if (!v70)
        {
          swift_unknownObjectRelease();
          v70 = MEMORY[0x277D84F90];
        }

        v71 = *(v70 + 16);

        if (__OFSUB__(v14 >> 1, v12))
        {
          goto LABEL_75;
        }

        if (v71 == (v14 >> 1) - v12)
        {
          v68 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v69 = v79;
          if (v68)
          {
LABEL_71:
            sub_26A4D7EA8();
            v72 = type metadata accessor for TableRowV2View.FlowLayoutCells(0);
            *(v69 + v72[5]) = v68;
            *(v69 + v72[6]) = v18;
            *(v69 + v72[7]) = a1;
            OUTLINED_FUNCTION_27_0();
            return;
          }

          v68 = MEMORY[0x277D84F90];
LABEL_70:
          swift_unknownObjectRelease();
          goto LABEL_71;
        }

LABEL_76:
        swift_unknownObjectRelease();
        a1 = v17;
      }

      v65 = OUTLINED_FUNCTION_31_22();
      sub_26A818378(v65, v66, v12, v14);
      v68 = v67;
      v69 = v79;
      goto LABEL_70;
    }

    v12 = v76;
    sub_26A848084();
    v46 = *(v12 + *(v33 + 28));
    v47 = __OFSUB__(v46, 1);
    v48 = v46 - 1;
    if (!v48)
    {
      sub_26A83DE3C(1, v18);
      a1 = v49;
      v29 = v50;
      if ((v50 & 1) == 0)
      {
LABEL_26:
        v51 = OUTLINED_FUNCTION_31_22();
        sub_26A818378(v51, v52, a1, v29);
        v18 = v53;
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_22_38();
        goto LABEL_60;
      }

      sub_26A8525B8();
      swift_unknownObjectRetain_n();
      v62 = swift_dynamicCastClass();
      if (!v62)
      {
        swift_unknownObjectRelease();
        v62 = MEMORY[0x277D84F90];
      }

      v17 = *(v62 + 16);

      if (!__OFSUB__(v29 >> 1, a1))
      {
        if (v17 == (v29 >> 1) - a1)
        {
          v18 = swift_dynamicCastClass();
          if (!v18)
          {
            swift_unknownObjectRelease();
            v18 = MEMORY[0x277D84F90];
          }

          sub_26A848F54();
          swift_unknownObjectRelease();
LABEL_60:
          a1 = v82;
          if (!v13)
          {
            goto LABEL_61;
          }

LABEL_20:
          v34 = *(a1 + 32);

          sub_26A83DED4(1, v34);
          v14 = v35;
          a1 = v36;
          if (v36)
          {
            goto LABEL_34;
          }

          goto LABEL_21;
        }

        goto LABEL_84;
      }

LABEL_83:
      __break(1u);
LABEL_84:
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    if (v47)
    {
      __break(1u);
    }

    else
    {
      if (v48 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v48;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_49;
      }
    }

    sub_26A848F40();
    v18 = v74;
LABEL_49:
    if (*(v18 + 16))
    {
      v17 = v18 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      *(v17 + *(v33 + 28)) = v32;
      OUTLINED_FUNCTION_22_38();
      if (*(v18 + 16))
      {
        *(v17 + *(v33 + 24)) = 1;
        if (!v13)
        {
          goto LABEL_61;
        }

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_83;
  }

  v40 = v79;
  if (*(v31 + 65) & 1) == 0 && ((v54 = v30 + *(v29 + 52), (*(v54 + 8)) || *v54))
  {

    v55 = OUTLINED_FUNCTION_10_34();
    v44 = OUTLINED_FUNCTION_52_10(v55, v56, v57);
    *(v40 + v58) = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = OUTLINED_FUNCTION_10_34();
    v44 = OUTLINED_FUNCTION_52_10(v41, v42, v43);
    *(v40 + v45) = v18;
  }

  *(v40 + *(v44 + 28)) = a1;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A844DB4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v16[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C68);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for TableCell();
  MEMORY[0x28223BE20](v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_26A4D6FD8();
LABEL_6:
    v14 = 0;
    v13 = 1;
    goto LABEL_7;
  }

  sub_26A848084();
  v13 = *&v12[*(v10 + 20)];
  if (!v13)
  {
    sub_26A848F54();
    goto LABEL_6;
  }

  v14 = v12[*(v10 + 36)];

  sub_26A848F54();

LABEL_7:
  *v6 = sub_26A84FC08();
  *(v6 + 1) = 0;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C70);
  sub_26A8450B8();
  sub_26A4D7E54();
  *a2 = v13;
  *(a2 + 8) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C78);
  sub_26A4D7E54();
  sub_26A51A2D0(v13);
  sub_26A51A2E0(v13);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A51A2E0(v13);
}

uint64_t sub_26A8450B8()
{
  v0 = type metadata accessor for TableRowV2View(0);
  MEMORY[0x28223BE20](v0 - 8);
  swift_getKeyPath();
  sub_26A848030();
  v1 = swift_allocObject();
  sub_26A848084();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_26A849410;
  *(v2 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9C88);
  sub_26A52EF88();
  sub_26A52EF88();
  return sub_26A8512F8();
}

uint64_t sub_26A8452F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[0] = a2;
  v17[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B48);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9B50);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  KeyPath = swift_getKeyPath();

  sub_26A840B6C(a1, a3, 1, sub_26A8494A8, KeyPath, v13);

  v15 = swift_getKeyPath();

  sub_26A84137C(v17[0], a3, 1, sub_26A8496FC, v15, v9);

  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9CA0);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A8455B8(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v50 = type metadata accessor for TableCell();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v45 - v5;
  MEMORY[0x28223BE20](v6);
  v47 = &v45 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = 0;
  v15 = MEMORY[0x277D84F98];
  v16 = *(a1 + 16);
  v51 = a1;
  v52 = v16;
  while (v52 != v14)
  {
    v17 = *(v53 + 72);
    sub_26A848030();
    v18 = *&v13[*(v50 + 24)];
    sub_26A848030();
    swift_isUniquelyReferenced_nonNull_native();
    v54 = v15;
    v19 = sub_26A5484D4(v18);
    if (__OFADD__(*(v15 + 16), (v20 & 1) == 0))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_26A852618();
      __break(1u);
      return result;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1120);
    if (sub_26A8523E8())
    {
      v23 = sub_26A5484D4(v18);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_40;
      }

      v21 = v23;
    }

    v15 = v54;
    if (v22)
    {
      sub_26A625EA0(v10, *(v54 + 56) + v21 * v17);
    }

    else
    {
      *(v54 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      *(*(v15 + 48) + 8 * v21) = v18;
      sub_26A848084();
      v25 = *(v15 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v15 + 16) = v27;
    }

    sub_26A848F54();
    ++v14;
  }

  v51 = *(v46 + 16);
  if (v51)
  {
    v28 = 0;
    v50 = v46 + 32;
    v29 = MEMORY[0x277D84F90];
    do
    {
      v30 = *(v50 + 8 * v28++);
      v31 = *(v30 + 16);

      v32 = 0;
      v33 = v30 + 64;
      v34 = MEMORY[0x277D84F90];
LABEL_15:
      v35 = (v33 + 72 * v32);
      while (v31 != v32)
      {
        if (v32 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (*(v15 + 16))
        {
          v36 = *v35 ? -1 : *(v35 - 1);
          sub_26A5484D4(v36);
          if (v37)
          {
            v52 = v33;
            sub_26A848030();
            sub_26A848084();
            sub_26A848084();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26A7A2598();
              v34 = v39;
            }

            v38 = *(v34 + 16);
            if (v38 >= *(v34 + 24) >> 1)
            {
              sub_26A7A2598();
              v34 = v40;
            }

            ++v32;
            *(v34 + 16) = v38 + 1;
            sub_26A848084();
            v33 = v52;
            goto LABEL_15;
          }
        }

        v35 += 72;
        ++v32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A2574();
        v29 = v42;
      }

      v41 = *(v29 + 16);
      if (v41 >= *(v29 + 24) >> 1)
      {
        sub_26A7A2574();
        v29 = v43;
      }

      *(v29 + 16) = v41 + 1;
      *(v29 + 8 * v41 + 32) = v34;
    }

    while (v28 != v51);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  return v29;
}

uint64_t sub_26A845AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = (a1 + 56);
  v4 = v1 - 1;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *v3;
    v3 += 6;
    v6 = v7;
    if (!v2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A2F14();
        v5 = v9;
      }

      v8 = *(v5 + 16);
      if (v8 >= *(v5 + 24) >> 1)
      {
        sub_26A7A2F14();
        v5 = v10;
      }

      *(v5 + 16) = v8 + 1;
      *(v5 + v8 + 32) = (v6 & 0xFF00) == 512;
    }

    if (!v4)
    {
      break;
    }

    v2 = (v6 & 0xFF00) == 512;
    --v4;
  }

  return v5;
}

uint64_t sub_26A845BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for TableCell() + 24));
  if (v5 < 0 || *(a2 + 16) <= v5 || (*(a2 + v5 + 32) & 1) == 0)
  {
    v7 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  sub_26A84851C();
  sub_26A663C6C();

  sub_26A84FDF8();
  *a3 = 0;
  *(a3 + 8) = v7;
  *(a3 + 9) = v6;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 25) = v11;
  j__swift_retain_1();
  return j__swift_release();
}

uint64_t sub_26A845D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v52 = a3;
  v49 = sub_26A84F088();
  v47 = *(v49 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A84F3A8();
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  MEMORY[0x28223BE20](v5);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TableRowV2View(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9910);
  MEMORY[0x28223BE20](v42);
  v12 = (&v34 - v11);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9918);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v34 - v13;
  *v12 = sub_26A851448();
  v12[1] = v14;
  v15 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9920) + 44));
  v38 = a2;
  sub_26A8462D0(a2, v15);
  sub_26A84F068();
  v53 = v16;
  v54 = v17;
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A848030();
  v18 = *(v9 + 80);
  v19 = ((v18 + 16) & ~v18) + v10;
  v39 = v18 | 7;
  swift_allocObject();
  sub_26A848084();
  type metadata accessor for CGSize();
  v36 = v20;
  v35 = sub_26A52EF88();
  v34 = sub_26A8496A0();
  v21 = v42;
  sub_26A850C78();

  sub_26A4D6FD8();
  v22 = v43;
  sub_26A72003C(v43);
  sub_26A848030();
  v23 = v47;
  v24 = v45;
  v25 = v49;
  (*(v47 + 16))(v45, v41, v49);
  v26 = v23;
  v27 = (v19 + *(v23 + 80)) & ~*(v23 + 80);
  v28 = swift_allocObject();
  sub_26A848084();
  (*(v26 + 32))(v28 + v27, v24, v25);
  v53 = v21;
  v54 = v36;
  v55 = v35;
  v56 = v34;
  swift_getOpaqueTypeConformance2();
  sub_26A8496A0();
  v29 = v22;
  v30 = v44;
  v31 = v50;
  v32 = v40;
  sub_26A850C88();

  (*(v51 + 8))(v29, v31);
  return (*(v46 + 8))(v32, v30);
}

uint64_t sub_26A8462D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v86 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9938);
  MEMORY[0x28223BE20](v84);
  v78 = &KeyPath - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9940);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &KeyPath - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9948);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &KeyPath - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9950);
  MEMORY[0x28223BE20](v88);
  v83 = &KeyPath - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9958);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &KeyPath - v15;
  v102 = sub_26A84F988();
  v94 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v92 = (&KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for TableRowV2View(0);
  v17 = *(v104 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v104);
  v19 = type metadata accessor for TableRowViewModel();
  v20 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v107 = sub_26A62575C();
  sub_26A848030();
  v21 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v100 = swift_allocObject();
  v103 = v21;
  sub_26A848084();
  sub_26A848030();
  v22 = *(v17 + 80);
  v23 = (v22 + 16) & ~v22;
  v81 = v18;
  v79 = v22;
  v90 = swift_allocObject();
  v80 = v23;
  v82 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A848084();
  v24 = *(a1 + v19[9]);
  if ((v24 & 1) != 0 || sub_26A83FB78())
  {
    if (sub_26A625580() || (v101 = *(a1 + v19[8])) == 0)
    {
      v101 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      if (v24)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_26A848030();
      v25 = swift_allocObject();
      sub_26A848084();
      v26 = swift_allocObject();
      *(v26 + 16) = v101;
      swift_bridgeObjectRetain_n();
      v99 = v25;

      v98 = v26;

      v97 = sub_26A8483A4;
      v96 = sub_26A848480;
      if (v24)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v101 = 0;
  }

  if (sub_26A625670())
  {
LABEL_11:
    v27 = 0;
LABEL_12:
    v105 = 0;
    v106 = 0;
    v87 = 0;
    v89 = 0;
    goto LABEL_13;
  }

  v27 = *(a1 + v19[6]);
  if (!v27)
  {
    goto LABEL_12;
  }

  sub_26A848030();
  v48 = swift_allocObject();
  sub_26A848084();
  v49 = swift_allocObject();
  *(v49 + 16) = v27;
  swift_bridgeObjectRetain_n();
  v106 = v48;

  v89 = v49;

  v87 = sub_26A848444;
  v105 = sub_26A8496E8;
LABEL_13:
  v28 = a1 + *(v104 + 52);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  v95 = v27;
  if ((v28 & 1) == 0)
  {

    sub_26A851EA8();
    v30 = sub_26A8501F8();
    sub_26A84EA78();

    v31 = v92;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v29, 0);
    (*(v94 + 8))(v31, v102);
    v29 = v108;
  }

  if (sub_26A61B05C(v29, &unk_287B133E0) || !sub_26A83FB78())
  {
    v32 = 0;
    goto LABEL_20;
  }

  v32 = *(a1 + v19[7]);
  if (!v32)
  {
LABEL_20:
    v35 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    goto LABEL_21;
  }

  sub_26A848030();
  v33 = swift_allocObject();
  sub_26A848084();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  swift_bridgeObjectRetain_n();
  v102 = v33;

  v104 = v34;

  v103 = sub_26A8483A4;
  v35 = sub_26A84838C;
LABEL_21:
  v36 = a1 + v19[13];
  v37 = *(v36 + 8);
  v38 = 1;
  v94 = v32;
  v92 = v35;
  if ((v37 & 1) == 0 && !*v36)
  {
    v39 = *(a1 + v19[10]);
    v40 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_longestCells;
    if (*(v39 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_longestCells))
    {

      v41 = sub_26A6BDA44();

      if (*(v41 + 16))
      {
        v108 = v41;
        KeyPath = swift_getKeyPath();
        sub_26A848030();
        swift_allocObject();
        sub_26A848084();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9970);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9978);
        sub_26A52EF88();
        sub_26A84820C();
        sub_26A52EF88();
        sub_26A8512F8();
        if (*(v39 + v40))
        {

          v42 = sub_26A6BDA80();

          if (*(v42 + 16))
          {
            v108 = v42;
            swift_getKeyPath();
            sub_26A848030();
            swift_allocObject();
            sub_26A848084();
            v43 = v73;
            sub_26A8512F8();
            v44 = v75;
            v45 = v74;
            v46 = v76;
            (*(v75 + 32))(v74, v43, v76);
            v47 = 0;
LABEL_34:
            __swift_storeEnumTagSinglePayload(v45, v47, 1, v46);
            v51 = *(v44 + 16);
            v51(v43, v85, v46);
            sub_26A4D7E54();
            v51(v78, v43, v46);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9998);
            sub_26A4D7E54();
            sub_26A4D6FD8();
            v52 = *(v44 + 8);
            v52(v85, v46);
            sub_26A4D6FD8();
            v52(v43, v46);
            v50 = v83;
            sub_26A4D7EA8();
            v38 = 0;
            goto LABEL_35;
          }
        }

        v47 = 1;
        v46 = v76;
        v44 = v75;
        v45 = v74;
        v43 = v73;
        goto LABEL_34;
      }

      v38 = 1;
    }

    v50 = v83;
LABEL_35:
    __swift_storeEnumTagSinglePayload(v50, v38, 1, v84);
    sub_26A4D7EA8();
    v38 = 0;
    v35 = v92;
  }

  __swift_storeEnumTagSinglePayload(v93, v38, 1, v88);
  sub_26A4D7E54();
  v53 = v86;
  *v86 = v107;
  v53[1] = sub_26A8496EC;
  v53[2] = v100;
  v53[3] = sub_26A8480D8;
  v53[4] = v90;
  v54 = v96;
  v55 = v97;
  v53[5] = v101;
  v53[6] = v54;
  v56 = v54;
  v57 = v99;
  v53[7] = v99;
  v53[8] = v55;
  v58 = v57;
  v59 = v98;
  v53[9] = v98;
  v60 = v59;
  v61 = v105;
  v62 = v106;
  v53[10] = v95;
  v53[11] = v61;
  v63 = v87;
  v53[12] = v62;
  v53[13] = v63;
  v64 = v94;
  v53[14] = v89;
  v53[15] = v64;
  v65 = v102;
  v66 = v103;
  v53[16] = v35;
  v53[17] = v65;
  v67 = v104;
  v53[18] = v66;
  v53[19] = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B9960);
  sub_26A4D7E54();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v96 = v56;
  v97 = v55;
  v98 = v60;
  v99 = v58;
  sub_26A848138(v101);
  v68 = v95;
  sub_26A848138(v95);
  v69 = v94;
  sub_26A848138(v94);
  sub_26A848184(v69);
  sub_26A848184(v68);
  v70 = v101;
  sub_26A848184(v101);

  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A848184(v94);
  sub_26A848184(v95);
  sub_26A848184(v70);
}

uint64_t sub_26A8472C4()
{
  v0 = type metadata accessor for TableRowV2View(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A62575C();
  sub_26A848030();
  swift_allocObject();
  sub_26A848084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
  sub_26A84ACC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B99B8);
  sub_26A52EF88();
  sub_26A848BA8(&qword_2803B99C0, &qword_2803B99B8);
  sub_26A8496A0();
  return sub_26A851308();
}

uint64_t sub_26A8474F8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TableRowViewModel();
  type metadata accessor for TableCell();
  sub_26A84851C();
  sub_26A663C6C();

  result = sub_26A84FDF8();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
  return result;
}

uint64_t sub_26A8475D4(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for TableRowViewModel();
  swift_beginAccess();
  sub_26A69662C(a1, a2, a3);
  return swift_endAccess();
}

uint64_t sub_26A847664(uint64_t a1, void (*a2)(void))
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110);
  sub_26A84ACC8();
  OUTLINED_FUNCTION_1_8();
  sub_26A52EF88();
  a2();
  OUTLINED_FUNCTION_16_38();
  sub_26A8496A0();
  return sub_26A851308();
}

uint64_t sub_26A84775C(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for TableRowViewModel();
  swift_beginAccess();
  sub_26A69662C(a1, a2, a3);
  return swift_endAccess();
}

void sub_26A8477E8(uint64_t *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v7 = type metadata accessor for TableRowViewModel();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = *a1;
  sub_26A848030();
  v9 = swift_allocObject();
  sub_26A848084();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *a4 = v8;
  a4[1] = a2;
  a4[2] = v9;
  a4[3] = a3;
  a4[4] = v10;
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A847938()
{
  OUTLINED_FUNCTION_21_35();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_28_16();
  sub_26A69662C(v0, v1, v2);
  return swift_endAccess();
}

uint64_t sub_26A8479CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TableCell();
  v5 = *(a1 + *(v4 + 36));
  *a2 = *(a1 + *(v4 + 20));
  *(a2 + 8) = v5;
}

uint64_t sub_26A847A24(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *a2;
  result = type metadata accessor for TableRowV2View(0);
  if (*(a3 + *(result + 36) + 192) < v5)
  {
    v7 = a2[1];
    type metadata accessor for TableRowViewModel();
    return sub_26A73B330(v5, v7);
  }

  return result;
}

uint64_t sub_26A847A90()
{
  sub_26A84F068();
  v1 = v0;
  v3 = v2;
  type metadata accessor for TableRowViewModel();
  return sub_26A73B330(v1, v3);
}

uint64_t sub_26A847AE8(uint64_t a1)
{
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_33_0();

  return sub_26A83F9D8(a1);
}

uint64_t objectdestroyTm_33()
{
  v1 = type metadata accessor for TableRowV2View(0);
  OUTLINED_FUNCTION_33_19();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = sub_26A84ACC8();
  OUTLINED_FUNCTION_46();
  v6 = *(v5 + 8);
  v6(v3, v4);
  type metadata accessor for TableRowViewModel();

  OUTLINED_FUNCTION_1_110(v1[5]);

  OUTLINED_FUNCTION_1_110(v1[6]);

  OUTLINED_FUNCTION_1_110(v1[7]);

  OUTLINED_FUNCTION_1_110(v1[8]);

  OUTLINED_FUNCTION_1_110(v1[9]);

  v6(v3 + v1[10], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);

  sub_26A492280();
  v7 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  sub_26A49035C(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A847DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_33_0();

  return sub_26A845D00(a1, v4, a2);
}

unint64_t sub_26A847E40()
{
  result = qword_2803B98F8;
  if (!qword_2803B98F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B98F0);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B98F8);
  }

  return result;
}

uint64_t sub_26A847EF8(uint64_t a1, double *a2)
{
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_11_3();

  return sub_26A847A24(a1, a2, v2 + v5);
}

uint64_t sub_26A847F68()
{
  type metadata accessor for TableRowV2View(0);
  v0 = sub_26A84F088();
  OUTLINED_FUNCTION_79(v0);

  return sub_26A847A90();
}

uint64_t sub_26A848030()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A848084()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A8480D8()
{
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_11_3();

  return sub_26A8472C4();
}

uint64_t sub_26A848138(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A848184(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26A84820C()
{
  result = qword_2803B9988;
  if (!qword_2803B9988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC1D8);
    sub_26A8496A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9988);
  }

  return result;
}

void sub_26A8482FC(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_33_0();
  sub_26A8477E8(a1, a2, a3, a4);
}

uint64_t sub_26A8483E0()
{
  v0 = OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_28_16();
  return sub_26A847938();
}

uint64_t sub_26A848498(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_11_3();
  v4 = OUTLINED_FUNCTION_28_16();

  return a3(v4);
}

unint64_t sub_26A84851C()
{
  result = qword_2803B99A8;
  if (!qword_2803B99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B99A8);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(type metadata accessor for TableRowViewModel() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_26A84ACC8();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_26A848688()
{
  v0 = OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_11_3();
  v1 = OUTLINED_FUNCTION_28_16();
  return sub_26A6253D0(v1, v2, v3);
}

uint64_t sub_26A8486EC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_33_0();

  return sub_26A8474F8(a1);
}

unint64_t sub_26A848784()
{
  result = qword_2803B9A60;
  if (!qword_2803B9A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9A28);
    sub_26A848810();
    sub_26A848D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9A60);
  }

  return result;
}

unint64_t sub_26A848810()
{
  result = qword_2803B9A68;
  if (!qword_2803B9A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9A20);
    sub_26A52EF88();
    sub_26A8488C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9A68);
  }

  return result;
}

unint64_t sub_26A8488C8()
{
  result = qword_2803B9A78;
  if (!qword_2803B9A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9A00);
    sub_26A848954();
    sub_26A848A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9A78);
  }

  return result;
}

unint64_t sub_26A848954()
{
  result = qword_2803B9A80;
  if (!qword_2803B9A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9A88);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9A80);
  }

  return result;
}

unint64_t sub_26A848A0C()
{
  result = qword_2803B9AA0;
  if (!qword_2803B9AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9AA8);
    sub_26A52EF88();
    sub_26A8491F4(&qword_2803B9AC0, &qword_2803B9AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9AA0);
  }

  return result;
}

unint64_t sub_26A848AF0()
{
  result = qword_2803B9AD0;
  if (!qword_2803B9AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9AD8);
    sub_26A848BA8(&qword_2803B9AE0, &qword_2803B9AE8);
    sub_26A663C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9AD0);
  }

  return result;
}

uint64_t sub_26A848BA8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, a2);
    sub_26A84851C();
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A848C20()
{
  result = qword_2803B9AF0;
  if (!qword_2803B9AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9AF8);
    sub_26A848CD8();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9AF0);
  }

  return result;
}

unint64_t sub_26A848CD8()
{
  result = qword_2803B9B00;
  if (!qword_2803B9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9B00);
  }

  return result;
}

unint64_t sub_26A848D2C()
{
  result = qword_2803B9B18;
  if (!qword_2803B9B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B99F8);
    sub_26A5CF8B0();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9B18);
  }

  return result;
}

unint64_t sub_26A848DE4()
{
  result = qword_2803B9B28;
  if (!qword_2803B9B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B99D8);
    sub_26A52EF88();
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9B28);
  }

  return result;
}

uint64_t sub_26A848F54()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

double sub_26A848FA8@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_33_0();

  return sub_26A842170(v2, a1);
}

uint64_t sub_26A849014(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0)
    {
      v6 = __OFSUB__(v3, a2);
      v4 = v3 == a2;
      v5 = v3 - a2 < 0;
    }

    else
    {
      v6 = 0;
      v4 = 1;
      v5 = 0;
    }

    if (!(v5 ^ v6 | v4))
    {
      return OUTLINED_FUNCTION_41_0();
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return OUTLINED_FUNCTION_41_0();
  }

  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_26A849058()
{
  result = qword_2803B9B80;
  if (!qword_2803B9B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9B68);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9B80);
  }

  return result;
}

unint64_t sub_26A849110()
{
  result = qword_2803B9B98;
  if (!qword_2803B9B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9B78);
    sub_26A52EF88();
    sub_26A8491F4(&qword_2803B9BA0, &qword_2803B9BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9B98);
  }

  return result;
}

uint64_t sub_26A8491F4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, a2);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A849264()
{
  result = qword_2803B9BF0;
  if (!qword_2803B9BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9BD8);
    sub_26A52EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9BF0);
  }

  return result;
}

unint64_t sub_26A84931C()
{
  result = qword_2803B9C08;
  if (!qword_2803B9C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B9BE8);
    sub_26A52EF88();
    sub_26A8491F4(&qword_2803B9C10, &qword_2803B9C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B9C08);
  }

  return result;
}

uint64_t sub_26A849410@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_11_3();

  return sub_26A8452F0(a1, a2, a3, a4);
}

void sub_26A8494DC()
{
  sub_26A8495D8(319, &qword_2803B9CC0, type metadata accessor for TableCell, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A8495D8(319, &qword_2803B1100, type metadata accessor for TableCell, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26A84963C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A8495D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A84963C()
{
  if (!qword_2803B9CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7A68);
    v0 = sub_26A851B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B9CC8);
    }
  }
}

unint64_t sub_26A8496A0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_105@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  sub_26A49035C(*(v1 + a1), *(v1 + a1 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);

  return sub_26A49035C(v3, v4);
}

uint64_t OUTLINED_FUNCTION_1_110@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  sub_26A49035C(*(v1 + a1), *(v1 + a1 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);

  return sub_26A49035C(v3, v4);
}

void OUTLINED_FUNCTION_10_58()
{
  v0[24] = v5;
  v0[25] = v4;
  v0[26] = v1;
  v0[27] = v2;
  v0[28] = v3;
  v0[29] = v5;
}

uint64_t OUTLINED_FUNCTION_20_35()
{
}

uint64_t OUTLINED_FUNCTION_21_35()
{

  return type metadata accessor for TableRowViewModel();
}

uint64_t OUTLINED_FUNCTION_22_38()
{

  return sub_26A848F54();
}

uint64_t OUTLINED_FUNCTION_23_28()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_25_29()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_27_19()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_35_15()
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_36_13()
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_39_13()
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_42_13()
{

  return sub_26A851E18();
}

void *OUTLINED_FUNCTION_43_11(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_50_10()
{

  return sub_26A851DA8();
}

uint64_t OUTLINED_FUNCTION_52_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v4);
  result = type metadata accessor for TableRowV2View.FlowLayoutCells(0);
  *(v3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for CompositionParameterConstants()
{
  result = qword_2803B9CF0;
  if (!qword_2803B9CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A849B54()
{
  result = sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A849BF4(uint64_t *a1, int a2)
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

uint64_t sub_26A849C34(uint64_t result, int a2, int a3)
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

uint64_t sub_26A849C9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26A849CDC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_26A849D40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A849D60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void *sub_26A849DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v0 = sub_26A8516A8();
  v2[0] = xmmword_26A88A0A0;
  v2[1] = xmmword_26A88A0A0;
  v3 = 0x4010000000000000;
  return sub_26A80E4AC(qword_2803D3088, v0, v2);
}

uint64_t sub_26A849E30()
{
  v0 = type metadata accessor for CompositionParameterConstants();
  MEMORY[0x28223BE20](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4228);
  __swift_allocate_value_buffer(v3, qword_2803D30D0);
  __swift_project_value_buffer(v3, qword_2803D30D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v4 = sub_26A8516A8();
  v5 = v0[5];
  v6 = *MEMORY[0x277D62B20];
  v7 = sub_26A84B1D8();
  (*(*(v7 - 8) + 104))(&v2[v5], v6, v7);
  sub_26A8502F8();
  sub_26A8503A8();
  v8 = sub_26A850428();

  v9 = &v2[v0[6]];
  *(v9 + 5) = 0;
  *(v9 + 24) = 0u;
  *(v9 + 8) = 0u;
  *v9 = v8;
  if (qword_2803A9148 != -1)
  {
    swift_once();
  }

  v10 = qword_2803B9CE0;
  *v2 = xmmword_26A88A0B0;
  *(v2 + 1) = xmmword_26A88A0B0;
  *&v2[v0[7]] = 0x404B000000000000;
  v11 = &v2[v0[8]];
  __asm { FMOV            V0.2D, #2.0 }

  *v11 = _Q0;
  *(v11 + 1) = _Q0;
  *&v2[v0[9]] = v10;
  *&v2[v0[10]] = 0x4000000000000000;

  return sub_26A80E6E4(v4, v2);
}

uint64_t sub_26A84A038(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_opt_self() tertiaryLabelColor];
  result = sub_26A850D38();
  *a2 = result;
  return result;
}

void *sub_26A84A080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  sub_26A8516A8();
  if (qword_2803A9158 != -1)
  {
    swift_once();
  }

  sub_26A850408();
  return sub_26A80E5C4();
}

void *sub_26A84A154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  sub_26A8516A8();
  sub_26A850408();
  sub_26A850E78();
  sub_26A850E68();

  sub_26A850E78();
  sub_26A850E68();

  __asm { FMOV            V0.2D, #5.0 }

  return sub_26A80E820();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_2803D18E8 == -1)
  {
    if (qword_2803D18F0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2803D18F0)
    {
      return _availability_version_check();
    }
  }

  if (qword_2803D18E0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2803D18D4 > a3)
      {
        return 1;
      }

      if (dword_2803D18D4 >= a3)
      {
        return dword_2803D18D8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_2803D18F0;
  if (qword_2803D18F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2803D18F0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26D664E10](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_2803D18D4, &dword_2803D18D8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}