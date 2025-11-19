id ManageStorageAppsListViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageAppsListViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static ManageStorageAppsListViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v4 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  swift_getKeyPath();
  v5 = v4;
  sub_2759B8638();

  v6 = *(a2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  v7 = v6 == 0;
  if (v4)
  {
    if (v6)
    {
      type metadata accessor for ManageStorageAppsListDataModel();
      v8 = v6;
      v7 = sub_2759BA788();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

void *sub_2758AC6F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_2758AC780(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for ManageStorageAppViewModel();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_2758AC864(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0F540, &qword_2759C26B0);
      v7 = *(sub_2759B82B8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_2759B82B8() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void (*sub_2758ACA04(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C846A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2758ACA84;
  }

  __break(1u);
  return result;
}

uint64_t sub_2758ACA8C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2759BAAC8() & 1;
  }
}

id sub_2758ACAE4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = type metadata accessor for DefaultIconLoader();
  v13[4] = &off_28847F800;
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage] = 0;
  v9 = &a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID];
  *v9 = 0;
  v9[1] = 0;
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage] = 0;
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages] = 0;
  v13[3] = v8;
  v13[0] = a3;
  a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented] = 0;
  sub_2759B8668();
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] = a1;
  a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading] = 0;
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_index] = a2;
  sub_27586E058(v13, &a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_iconLoader]);
  v12.receiver = a4;
  v12.super_class = type metadata accessor for ManageStorageAppViewModel();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t sub_2758ACC08(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_27585A8EC(a1, a2);
  }

  return a1;
}

uint64_t sub_2758ACC18(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_27585A8D8(a1, a2);
  }

  return a1;
}

uint64_t sub_2758ACC28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585F7A0;

  return sub_2758A850C(a1, a2, v6);
}

uint64_t sub_2758ACCF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758A9DCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2758ACDE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2758ACE28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel) = v2;
  v4 = v2;
}

uint64_t sub_2758ACE90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758ACEC8()
{
  result = sub_2759B8678();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2758ACFA0()
{
  result = sub_2759B8678();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2758AD0C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_27585A7E4;

  return sub_2758AAB08(v2, v3, v5, v4);
}

uint64_t sub_2758AD198()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 56);
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

double sub_2758AD1D8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_2758AD1E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t keypath_set_82Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_2758AD258()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_2758AD2AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2758AD2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758A8B8C(a1, v4, v5, v6);
}

uint64_t sub_2758AD388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758AD3F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_275893544(a1, v5);
}

uint64_t sub_2758AD4B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758A906C(a1, v4, v5, v6);
}

uint64_t sub_2758AD564(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585A7E4;

  return sub_275893544(a1, v5);
}

uint64_t sub_2758AD61C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2759BAAC8() & 1;
  }
}

uint64_t sub_2758AD68C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections) = *(v0 + 24);
}

uint64_t sub_2758AD740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2758AD788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2758AD7E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5A0, &qword_2759C4008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  v5 = type metadata accessor for MessagesDrilldownModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel__daysUntilDelete;
  v11 = 0;
  v12 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5A8, &qword_2759C4010);
  sub_2759B8CD8();
  (*(v1 + 32))(v8 + v9, v4, v0);
  *(v8 + OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel_messagesDeleteCompletedObserver) = 0;
  sub_2759B4DFC();
  sub_2759B5634();
  return v8;
}

uint64_t sub_2758AD924@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  type metadata accessor for MessagesDrilldownModel();
  sub_2758AE454(&qword_280A0F588, type metadata accessor for MessagesDrilldownModel);
  sub_2759B8DC8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2759B8CE8();

  result = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if ((v17 & 1) == 0)
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_2759B83C8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ED80, &unk_2759C4BC0);
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D83B88];
    *(v12 + 16) = xmmword_2759C17A0;
    v14 = MEMORY[0x277D83C10];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = v16;
    sub_2759BA2B8();

    sub_27589F2D4();
    result = sub_2759B99C8();
    v8 = v15 & 1;
  }

  *a1 = result;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  return result;
}

uint64_t sub_2758ADB54()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758ADBA8()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758ADBEC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2758ADC5C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2759BAA48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2758ADCC0(uint64_t a1)
{
  v2 = sub_2758AE49C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2758ADCFC(uint64_t a1)
{
  v2 = sub_2758AE49C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2758ADD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758ADF38();

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2758ADD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758ADF8C();

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2758ADDD8(uint64_t a1)
{
  v2 = sub_2758ADF8C();

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2758ADE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758AE090();

  return MEMORY[0x282182160](a1, a2, v4);
}

double sub_2758ADE7C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2758AE0E4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2758ADEDC()
{
  sub_2758ADF38();
  sub_2758ADF8C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2758ADF38()
{
  result = qword_280A0F560;
  if (!qword_280A0F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F560);
  }

  return result;
}

unint64_t sub_2758ADF8C()
{
  result = qword_280A0F568;
  if (!qword_280A0F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F568);
  }

  return result;
}

unint64_t sub_2758ADFE4()
{
  result = qword_280A0F570;
  if (!qword_280A0F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F570);
  }

  return result;
}

unint64_t sub_2758AE03C()
{
  result = qword_280A0F578;
  if (!qword_280A0F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F578);
  }

  return result;
}

unint64_t sub_2758AE090()
{
  result = qword_280A0F580;
  if (!qword_280A0F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F580);
  }

  return result;
}

uint64_t sub_2758AE0E4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v47 = sub_2759B85A8();
  v32 = *(v47 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v47);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F590, &qword_2759C4000);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v46 = 0;
  sub_2759B8C08();
  sub_2758AE454(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v10 = sub_2759B9168();
  v12 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2758AE49C();
  sub_2759BAC18();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v34;
    v15 = v35;
    v31 = v12;
    v16 = v47;
    v17 = sub_2759BAA58();
    v20 = v18;
    v30 = v6;
    if (v18)
    {
      v21 = v17;
    }

    else
    {
      sub_2759B8598();
      v22 = sub_2759B8588();
      v20 = v23;
      v21 = v22;
      (*(v32 + 8))(v15, v16);
    }

    (*(v14 + 8))(v9, v30);
    *&v36 = v21;
    *(&v36 + 1) = v20;
    *&v37 = MEMORY[0x277D84F90];
    *(&v37 + 1) = sub_2758AD7E8;
    *&v38 = 0;
    v24 = v46;
    BYTE8(v38) = v46;
    *(&v38 + 9) = *v45;
    HIDWORD(v38) = *&v45[3];
    v25 = v31;
    *&v39 = v10;
    *(&v39 + 1) = v31;
    sub_2758AE4F0(&v36, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40[0] = v21;
    v40[1] = v20;
    v40[2] = MEMORY[0x277D84F90];
    v40[3] = sub_2758AD7E8;
    v40[4] = 0;
    v41 = v24;
    *v42 = *v45;
    *&v42[3] = *&v45[3];
    v43 = v10;
    v44 = v25;
    result = sub_2758AE528(v40);
    v26 = v37;
    v27 = v33;
    *v33 = v36;
    v27[1] = v26;
    v28 = v39;
    v27[2] = v38;
    v27[3] = v28;
  }

  return result;
}

uint64_t sub_2758AE454(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2758AE49C()
{
  result = qword_280A0F598;
  if (!qword_280A0F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F598);
  }

  return result;
}

unint64_t sub_2758AE570()
{
  result = qword_280A0F5B0;
  if (!qword_280A0F5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F5B8, &qword_2759C4028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F5B0);
  }

  return result;
}

unint64_t sub_2758AE5F0()
{
  result = qword_280A0F5C0;
  if (!qword_280A0F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F5C0);
  }

  return result;
}

unint64_t sub_2758AE648()
{
  result = qword_280A0F5C8;
  if (!qword_280A0F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F5C8);
  }

  return result;
}

unint64_t sub_2758AE6A0()
{
  result = qword_280A0F5D0;
  if (!qword_280A0F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F5D0);
  }

  return result;
}

id sub_2758AE6F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel);
  *a2 = v4;

  return v4;
}

uint64_t sub_2758AE7E0(uint64_t a1)
{
  v2 = MEMORY[0x277CDDF78];
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(*(*(v3 + *MEMORY[0x277CDDF78]) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  sub_2759B9518();
  v5 = *(v3 + *v2 + 8);
  return sub_2759B9E68();
}

uint64_t sub_2758AE8B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2759B93D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_27586FBC8(v2, &v17 - v11, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B94D8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t type metadata accessor for ADPSection()
{
  result = qword_280A0F5E0;
  if (!qword_280A0F5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758AEB60()
{
  sub_2758AEC44(319, &qword_280A0F5F0, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2758AEC44(319, &qword_280A0F5F8, type metadata accessor for iCloudHomeViewModel, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2758AEC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2758AECC4@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F608, &qword_2759C4218);
  v4 = *(v34 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F610, &qword_2759C4220);
  v32 = *(v10 - 8);
  v11 = v32;
  v12 = *(v32 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v37 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F618, &qword_2759C4228);
  sub_2758B1A88();
  v31 = v17;
  sub_2759B9F38();
  v36 = v1;
  sub_2758B0878(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F648, &qword_2759C4240);
  sub_2758B1B74();
  sub_2758B1D14();
  v29 = v9;
  sub_2759B9F48();
  v18 = *(v11 + 16);
  v30 = v15;
  v18(v15, v17, v10);
  v19 = v4[2];
  v20 = v33;
  v21 = v9;
  v22 = v34;
  v19(v33, v21, v34);
  v23 = v35;
  v18(v35, v15, v10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F698, &unk_2759C4260);
  v19(&v23[*(v24 + 48)], v20, v22);
  v25 = v4[1];
  v25(v29, v22);
  v26 = *(v32 + 8);
  v26(v31, v10);
  v25(v20, v22);
  return (v26)(v30, v10);
}

uint64_t sub_2758AF06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ADPSection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2758B2010(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2758B2074(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6F0, &qword_2759C4360);
  sub_2758B2140();
  sub_2759B9DB8();
  LODWORD(a1) = sub_2759B9668();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F618, &qword_2759C4228);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_2758AF1D8(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ADPSection() + 20);
  v2 = *v1;
  v3 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  sub_2759B9D68();
  type metadata accessor for iCloudHomeViewModel();
  sub_2759B9D58();
  sub_27591BCD4(v2, v3);
}

uint64_t sub_2758AF2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F718, &qword_2759C4370);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v37 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F720, &qword_2759C4378);
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F728, &qword_2759C4380);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F708, &qword_2759C4368);
  v15 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v17 = &v37 - v16;
  v18 = sub_2759B94D8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v37 = a1;
  sub_2758AE8B4(&v37 - v24);
  (*(v19 + 104))(v23, *MEMORY[0x277CE0280], v18);
  v26 = sub_2758B2220(v25, v23);
  v27 = *(v19 + 8);
  v27(v23, v18);
  v27(v25, v18);
  v28 = sub_2759B9418();
  if (v26)
  {
    *v17 = v28;
    *(v17 + 1) = 0;
    v17[16] = 1;
    v29 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F738, &qword_2759C4390) + 44)];
    *v14 = sub_2759B94F8();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F740, &qword_2759C4398);
    sub_2758B12E0(v37, &v14[*(v30 + 44)]);
    sub_27586FBC8(v14, v12, &qword_280A0F728, &qword_2759C4380);
    sub_27586FBC8(v12, v29, &qword_280A0F728, &qword_2759C4380);
    v31 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F748, &qword_2759C43A0) + 48);
    *v31 = 0;
    *(v31 + 8) = 1;
    sub_27586BF04(v14, &qword_280A0F728, &qword_2759C4380);
    sub_27586BF04(v12, &qword_280A0F728, &qword_2759C4380);
    v32 = &qword_280A0F708;
    v33 = &qword_2759C4368;
    sub_27586FBC8(v17, v40, &qword_280A0F708, &qword_2759C4368);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A0F700, &qword_280A0F708, &qword_2759C4368);
    sub_27589B02C(&qword_280A0F710, &qword_280A0F718, &qword_2759C4370);
    sub_2759B95E8();
    v34 = v17;
  }

  else
  {
    *v5 = v28;
    *(v5 + 1) = 0;
    v5[16] = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F730, &qword_2759C4388);
    sub_2758B0B30(v37, &v5[*(v35 + 44)]);
    v32 = &qword_280A0F718;
    v33 = &qword_2759C4370;
    sub_27586FBC8(v5, v40, &qword_280A0F718, &qword_2759C4370);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A0F700, &qword_280A0F708, &qword_2759C4368);
    sub_27589B02C(&qword_280A0F710, &qword_280A0F718, &qword_2759C4370);
    sub_2759B95E8();
    v34 = v5;
  }

  return sub_27586BF04(v34, v32, v33);
}

uint64_t sub_2758AF7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F680, &qword_2759C4258);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F670, &qword_2759C4250);
  v7 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v35 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A8, &qword_2759C4298);
  v10 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v35 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F660, &qword_2759C4248);
  v13 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v35 - v14;
  v16 = *(type metadata accessor for ADPSection() + 20);
  v37 = a1;
  v17 = (a1 + v16);
  v18 = *v17;
  v19 = v17[1];
  v48 = *v17;
  v49 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v20 = v45;
  swift_getKeyPath();
  v48 = v20;
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v21 = *&v20[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel];

  swift_getKeyPath();
  v48 = v21;
  sub_2758B1EFC(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  LODWORD(a1) = v21[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading];

  if (a1 == 1)
  {
    *v15 = sub_2759B9418();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6C0, &unk_2759C4300);
    sub_2758AFE0C(v37, &v15[*(v22 + 44)]);
    sub_27586FBC8(v15, v12, &qword_280A0F660, &qword_2759C4248);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A0F658, &qword_280A0F660, &qword_2759C4248);
    sub_2758B1C2C();
    sub_2759B95E8();
    v23 = v15;
    v24 = &qword_280A0F660;
    v25 = &qword_2759C4248;
  }

  else
  {
    v45 = v18;
    v46 = v19;
    sub_2759B9D88();
    v26 = v48;
    v27 = v49;
    v28 = v50;
    swift_getKeyPath();
    v48 = v26;
    v49 = v27;
    v50 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6B0, &qword_2759C42C8);
    sub_2759B9E98();

    v29 = v45;
    v30 = v46;
    v31 = v47;

    swift_getKeyPath();
    v42 = v29;
    v43 = v30;
    v44 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6B8, &qword_2759C42F8);
    sub_2759B9E98();

    MEMORY[0x28223BE20](v32);
    *(&v35 - 2) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
    sub_2758B1D14();
    sub_2759B9E18();
    sub_27589B02C(&qword_280A0F678, &qword_280A0F680, &qword_2759C4258);
    v33 = v36;
    sub_2759B9B38();
    (*(v35 + 8))(v6, v33);
    sub_27586FBC8(v9, v12, &qword_280A0F670, &qword_2759C4250);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A0F658, &qword_280A0F660, &qword_2759C4248);
    sub_2758B1C2C();
    sub_2759B95E8();
    v23 = v9;
    v24 = &qword_280A0F670;
    v25 = &qword_2759C4250;
  }

  return sub_27586BF04(v23, v24, v25);
}

uint64_t sub_2758AFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6C8, &qword_2759CC590);
  v3 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6D0, &qword_2759C4310);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - v9;
  v10 = sub_2759B85C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = sub_2759B8458();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v45);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2759BA248();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_2759B8468();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - v25;
  v27 = (a1 + *(type metadata accessor for ADPSection() + 20));
  v29 = *v27;
  v28 = v27[1];
  v51 = v29;
  v52 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v30 = v55;
  swift_getKeyPath();
  v51 = v30;
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v15 = type metadata accessor for iCloudHomeViewModel();
  (*(v12 + 104))(v15, *MEMORY[0x277CC9120], v45);
  sub_2759B85B8();
  sub_2759B8478();
  v31 = sub_2759B99B8();
  v33 = v32;
  v51 = v31;
  v52 = v32;
  LOBYTE(v12) = v34 & 1;
  v53 = v34 & 1;
  v54 = v35;
  sub_2759B9B38();
  sub_27589F328(v31, v33, v12);

  v36 = v47;
  sub_2759B8E88();
  v37 = v36 + *(v48 + 52);
  sub_2759B8598();
  sub_27589B02C(&qword_280A0F6D8, &qword_280A0F6C8, &qword_2759CC590);
  v38 = v46;
  sub_2759B9B38();
  sub_27586BF04(v36, &qword_280A0F6C8, &qword_2759CC590);
  sub_27586FBC8(v26, v24, &qword_280A0F600, &qword_2759C4210);
  v39 = v38;
  v40 = v49;
  sub_27586FBC8(v38, v49, &qword_280A0F6D0, &qword_2759C4310);
  v41 = v50;
  sub_27586FBC8(v24, v50, &qword_280A0F600, &qword_2759C4210);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E0, &unk_2759C4318);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_27586FBC8(v40, v41 + *(v42 + 64), &qword_280A0F6D0, &qword_2759C4310);
  sub_27586BF04(v39, &qword_280A0F6D0, &qword_2759C4310);
  sub_27586BF04(v26, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v40, &qword_280A0F6D0, &qword_2759C4310);
  return sub_27586BF04(v24, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_2758B0404(char *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = *a1;
  v9 = *a2;
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_2759BA4C8();
  v11 = v9;
  v12 = sub_2759BA4B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v11;
  *(v13 + 40) = v8;
  sub_27587D460(0, 0, v7, &unk_2759C4328, v13);
}

uint64_t sub_2758B0538(uint64_t a1)
{
  v2 = sub_2759B85C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2759B8458();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2759BA248();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2759B8468();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (a1 + *(type metadata accessor for ADPSection() + 20));
  v15 = *v13;
  v14 = v13[1];
  v24 = v15;
  v25 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v16 = v28;
  swift_getKeyPath();
  v24 = v16;
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v8 = type metadata accessor for iCloudHomeViewModel();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9120], v4);
  sub_2759B85B8();
  sub_2759B8478();
  v17 = sub_2759B99B8();
  v19 = v18;
  v24 = v17;
  v25 = v18;
  v21 = v20 & 1;
  v26 = v20 & 1;
  v27 = v22;
  sub_2759B9B38();
  sub_27589F328(v17, v19, v21);
}

uint64_t sub_2758B0878(uint64_t a1)
{
  v2 = sub_2759B83B8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ADPSection() + 20));
  v8 = *v6;
  v7 = v6[1];
  v30 = v8;
  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v9 = v34;
  swift_getKeyPath();
  v30 = v9;
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v10 = *&v9[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel];

  sub_2758DCF68(v5);
  v11 = sub_2759B99A8();
  v13 = v12;
  v15 = v14;
  sub_2759B98E8();
  v16 = sub_2759B9988();
  v18 = v17;
  v20 = v19;

  sub_27589F328(v11, v13, v15 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v30 = qword_280A239C0;

  v21 = sub_2759B9958();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_27589F328(v16, v18, v20 & 1);

  v30 = v21;
  v31 = v23;
  v32 = v25 & 1;
  v33 = v27;
  sub_2759B9B38();
  sub_27589F328(v21, v23, v25 & 1);
}

uint64_t sub_2758B0B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_2759B85C8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2759B8458();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2759BA248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2759B8468();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v75 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = v70 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v73 = v70 - v21;
  MEMORY[0x28223BE20](v20);
  v77 = v70 - v22;
  v23 = (a1 + *(type metadata accessor for ADPSection() + 20));
  v24 = *v23;
  v71 = v23[1];
  v72 = v24;
  v78 = v24;
  v79 = v71;
  v70[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v25 = v82;
  swift_getKeyPath();
  v78 = v25;
  v70[0] = sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v9 = type metadata accessor for iCloudHomeViewModel();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v5);
  sub_2759B85B8();
  sub_2759B8478();
  v26 = sub_2759B99B8();
  v28 = v27;
  LOBYTE(v6) = v29;
  sub_2759B9858();
  v30 = sub_2759B9988();
  v32 = v31;
  v34 = v33;

  sub_27589F328(v26, v28, v6 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v78 = qword_280A239B8;

  v35 = sub_2759B9958();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_27589F328(v30, v32, v34 & 1);

  v78 = v35;
  v79 = v37;
  v80 = v39 & 1;
  v81 = v41;
  sub_2759B9B38();
  sub_27589F328(v35, v37, v39 & 1);

  v78 = v72;
  v79 = v71;
  sub_2759B9D68();
  v42 = v82;
  swift_getKeyPath();
  v78 = v42;
  sub_2759B8638();

  v43 = *&v42[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel];

  sub_2758DDADC();
  v44 = sub_2759B99B8();
  v46 = v45;
  v48 = v47;
  sub_2759B9858();
  v49 = sub_2759B9988();
  v51 = v50;
  v53 = v52;

  sub_27589F328(v44, v46, v48 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v78 = qword_280A239C0;

  v54 = sub_2759B9958();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_27589F328(v49, v51, v53 & 1);

  v78 = v54;
  v79 = v56;
  v61 = v58 & 1;
  v80 = v58 & 1;
  v81 = v60;
  v62 = v73;
  sub_2759B9B38();
  sub_27589F328(v54, v56, v61);

  v63 = v77;
  v64 = v74;
  sub_27586FBC8(v77, v74, &qword_280A0F600, &qword_2759C4210);
  v65 = v75;
  sub_27586FBC8(v62, v75, &qword_280A0F600, &qword_2759C4210);
  v66 = v76;
  sub_27586FBC8(v64, v76, &qword_280A0F600, &qword_2759C4210);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F758, &qword_2759C43B0);
  v68 = v66 + *(v67 + 48);
  *v68 = 0x4020000000000000;
  *(v68 + 8) = 0;
  sub_27586FBC8(v65, v66 + *(v67 + 64), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v62, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v63, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v65, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v64, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_2758B12E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_2759B85C8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2759B8458();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2759BA248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2759B8468();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v74 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = v69 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v72 = v69 - v21;
  MEMORY[0x28223BE20](v20);
  v76 = v69 - v22;
  v23 = (a1 + *(type metadata accessor for ADPSection() + 20));
  v24 = *v23;
  v70 = v23[1];
  v71 = v24;
  v77 = v24;
  v78 = v70;
  v69[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v25 = v81;
  swift_getKeyPath();
  v77 = v25;
  v69[0] = sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v9 = type metadata accessor for iCloudHomeViewModel();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v5);
  sub_2759B85B8();
  sub_2759B8478();
  v26 = sub_2759B99B8();
  v28 = v27;
  LOBYTE(v6) = v29;
  sub_2759B9858();
  v30 = sub_2759B9988();
  v32 = v31;
  v34 = v33;

  sub_27589F328(v26, v28, v6 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v77 = qword_280A239B8;

  v35 = sub_2759B9958();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_27589F328(v30, v32, v34 & 1);

  v77 = v35;
  v78 = v37;
  v79 = v39 & 1;
  v80 = v41;
  sub_2759B9B38();
  sub_27589F328(v35, v37, v39 & 1);

  v77 = v71;
  v78 = v70;
  sub_2759B9D68();
  v42 = v81;
  swift_getKeyPath();
  v77 = v42;
  sub_2759B8638();

  v43 = *&v42[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel];

  sub_2758DDADC();
  v44 = sub_2759B99B8();
  v46 = v45;
  v48 = v47;
  sub_2759B9858();
  v49 = sub_2759B9988();
  v51 = v50;
  v53 = v52;

  sub_27589F328(v44, v46, v48 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v77 = qword_280A239C0;

  v54 = sub_2759B9958();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_27589F328(v49, v51, v53 & 1);

  v77 = v54;
  v78 = v56;
  v61 = v58 & 1;
  v79 = v58 & 1;
  v80 = v60;
  v62 = v72;
  sub_2759B9B38();
  sub_27589F328(v54, v56, v61);

  v63 = v76;
  v64 = v73;
  sub_27586FBC8(v76, v73, &qword_280A0F600, &qword_2759C4210);
  v65 = v74;
  sub_27586FBC8(v62, v74, &qword_280A0F600, &qword_2759C4210);
  v66 = v75;
  sub_27586FBC8(v64, v75, &qword_280A0F600, &qword_2759C4210);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F750, &qword_2759C43A8);
  sub_27586FBC8(v65, v66 + *(v67 + 48), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v62, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v63, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v65, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v64, &qword_280A0F600, &qword_2759C4210);
}

unint64_t sub_2758B1A88()
{
  result = qword_280A0F620;
  if (!qword_280A0F620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F618, &qword_2759C4228);
    sub_27589B02C(&qword_280A0F628, &qword_280A0F630, &unk_2759C4230);
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F620);
  }

  return result;
}

unint64_t sub_2758B1B74()
{
  result = qword_280A0F650;
  if (!qword_280A0F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F648, &qword_2759C4240);
    sub_27589B02C(&qword_280A0F658, &qword_280A0F660, &qword_2759C4248);
    sub_2758B1C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F650);
  }

  return result;
}

unint64_t sub_2758B1C2C()
{
  result = qword_280A0F668;
  if (!qword_280A0F668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F670, &qword_2759C4250);
    sub_27589B02C(&qword_280A0F678, &qword_280A0F680, &qword_2759C4258);
    sub_2758B1EFC(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F668);
  }

  return result;
}

unint64_t sub_2758B1D14()
{
  result = qword_280A0F690;
  if (!qword_280A0F690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F600, &qword_2759C4210);
    sub_2758B1EFC(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F690);
  }

  return result;
}

uint64_t sub_2758B1DE4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_2758B1EFC(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel);
  sub_2759B8638();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_2758B1EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2758B1F4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758DF664(a1, v4, v5, v6, v7);
}

uint64_t sub_2758B2010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ADPSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758B2074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ADPSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758B20D8()
{
  v1 = *(type metadata accessor for ADPSection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2758AF1D8(v2);
}

unint64_t sub_2758B2140()
{
  result = qword_280A0F6F8;
  if (!qword_280A0F6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F6F0, &qword_2759C4360);
    sub_27589B02C(&qword_280A0F700, &qword_280A0F708, &qword_2759C4368);
    sub_27589B02C(&qword_280A0F710, &qword_280A0F718, &qword_2759C4370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F6F8);
  }

  return result;
}

BOOL sub_2758B2220(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_2759B94D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x277CE0268];
  if (v13 != *MEMORY[0x277CE0268])
  {
    if (v13 == *MEMORY[0x277CE0298])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE02A0])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x277CE0260])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x277CE0270])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x277CE0248])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x277CE0280])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x277CE0278])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x277CE0288])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x277CE0250])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x277CE0298])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x277CE02A0])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x277CE0290])
    {
      if (v16 == *MEMORY[0x277CE0260])
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0270])
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0248])
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0280])
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0278])
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0288])
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0250])
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x277CE0258])
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

id sub_2758B2638()
{
  result = [objc_allocWithZone(type metadata accessor for iCloudHomeDataModelCache()) init];
  qword_2815ADE88 = result;
  return result;
}

void *sub_2758B26E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock));
  v7 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_dataModelCache;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_27586F8A0(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(*(v3 + v6));
  return v11;
}

id sub_2758B27A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudHomeDataModelCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2758B280C()
{
  swift_getKeyPath();
  sub_2758B4C40(&qword_280A0F7A8, type metadata accessor for FeatureViewModel);
  sub_2759B8638();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_2758B28B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758B4C40(&qword_280A0F7A8, type metadata accessor for FeatureViewModel);
  sub_2759B8638();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_2758B296C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758B4C40(&qword_280A0F7A8, type metadata accessor for FeatureViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0F7B0, 0x277D1B1A8);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void sub_2758B2AFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_2759B8508();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = sub_2758B318C();
  if (v17)
  {
  }

  else
  {
    sub_2758B2EF4(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_27586BF04(v9, &unk_280A0EB10, &qword_2759C0740);
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v18 = sub_2759B89A8();
      __swift_project_value_buffer(v18, qword_2815ADE70);
      v19 = sub_2759B8988();
      v20 = sub_2759BA648();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_275819000, v19, v20, "No icon url found. Bailing.", v21, 2u);
        MEMORY[0x277C85860](v21, -1, -1);
      }
    }

    else
    {
      v28 = *(v11 + 32);
      v28(v16, v9, v10);
      v22 = sub_2759BA518();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      (*(v11 + 16))(v14, v16, v10);
      sub_2759BA4C8();

      v27 = sub_2759BA4B8();
      v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      *(v25 + 16) = v27;
      *(v25 + 24) = v26;
      v28((v25 + v23), v14, v10);
      *(v25 + v24) = v1;
      sub_27587D460(0, 0, v5, &unk_2759C4548, v25);

      (*(v11 + 8))(v16, v10);
    }
  }
}

uint64_t sub_2758B2EF4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *(*(v1 + 16) + OBJC_IVAR____TtC14iCloudSettings7Feature_icons);
  if (!v10)
  {
    v13 = sub_2759B8508();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
LABEL_7:
    sub_27586BF04(v9, &unk_280A0EB10, &qword_2759C0740);
    sub_2759B8508();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v11 = [v10 iconURL];
  if (v11)
  {
    v12 = v11;
    sub_2759B84C8();

    v13 = sub_2759B8508();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v13 = sub_2759B8508();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_2758B4BD0(v7, v9);
  sub_2759B8508();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  (*(v14 + 32))(a1, v9, v13);
  return (*(v14 + 56))(a1, 0, 1, v13);
}

id sub_2758B318C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId);
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  iCloudPlusFeature.init(rawValue:)(v4);
  if (v9 > 3u && (v9 - 6 < 2 || v9 == 4 && (sub_2759B9F98() & 1) == 0))
  {
    return 0;
  }

  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v6 = sub_2759BA258();
  v7 = [v5 initWithType_];

  return v7;
}

uint64_t sub_2758B32F0()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  sub_2759BA4C8();
  v1[4] = sub_2759BA4B8();
  v4 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758B33C0, v4, v3);
}

uint64_t sub_2758B33C0()
{
  v40 = v0;
  v1 = v0[4];
  v2 = v0[2];

  v3 = *(v2 + 16);
  v4 = *&v3[OBJC_IVAR____TtC14iCloudSettings7Feature_action];
  if (v4)
  {
    v5 = qword_2815ADD30;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v8 = v6;
    v9 = sub_2759B8988();
    v10 = sub_2759BA668();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v4;
      v13 = v8;
      _os_log_impl(&dword_275819000, v9, v10, "Will perform iCloud feature action: %{public}@", v11, 0xCu);
      sub_27586BF04(v12, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v14 = v0[2];

    v15 = *(v14 + 24);
    v38 = 10;
    v16 = &v3[OBJC_IVAR____TtC14iCloudSettings7Feature_featureId];
    if (v16[1])
    {
      v17 = *v16;
      v18 = v16[1];
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v26 = v0[3];

    v27._countAndFlagsBits = v17;
    v27._object = v18;
    iCloudPlusFeature.init(rawValue:)(v27);
    sub_27590A460(v8, 1, &v38, &v39, 0);
    v28 = *(v15 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
    v30 = *v16;
    v29 = v16[1];
    swift_bridgeObjectRetain_n();
    v31 = v28;
    sub_2759BA4D8();
    v32 = sub_2759BA518();
    (*(*(v32 - 8) + 56))(v26, 0, 1, v32);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v33;
    *(v34 + 40) = xmmword_2759C43F0;
    strcpy((v34 + 56), "\n\n");
    *(v34 + 64) = 1;
    *(v34 + 72) = 0;
    *(v34 + 80) = v30;
    *(v34 + 88) = v29;
    *(v34 + 96) = 6;

    sub_275931D20(0, 0, v26, &unk_2759C4530, v34);

    swift_bridgeObjectRelease_n();
    sub_27586BF04(v26, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v19 = v0[2];
    v20 = sub_2759B89A8();
    __swift_project_value_buffer(v20, qword_2815ADE70);

    v21 = sub_2759B8988();
    v22 = sub_2759BA648();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v3;
      *v24 = v3;
      v25 = v3;
      _os_log_impl(&dword_275819000, v21, v22, "No action found for feature: %@", v23, 0xCu);
      sub_27586BF04(v24, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v24, -1, -1);
      MEMORY[0x277C85860](v23, -1, -1);
    }
  }

  v35 = v0[3];

  v36 = v0[1];

  return v36();
}

uint64_t sub_2758B3844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = sub_2759B8508();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = sub_2759BA4C8();
  v5[11] = sub_2759BA4B8();
  v11 = sub_2759BA468();
  v5[12] = v11;
  v5[13] = v10;

  return MEMORY[0x2822009F8](sub_2758B398C, v11, v10);
}

uint64_t sub_2758B398C()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  v0[14] = __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Downloading icons.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v0[15] = [objc_opt_self() sharedSession];
  v5 = *(MEMORY[0x277CC9D50] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_2758B3B14;
  v7 = v0[9];
  v8 = v0[2];

  return MEMORY[0x28211ED30](v7, v8, 0);
}

uint64_t sub_2758B3B14(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v11 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v6 = v4[12];
    v7 = v4[13];
    v8 = sub_2758B3FB0;
  }

  else
  {
    v9 = v4[15];

    v6 = v4[12];
    v7 = v4[13];
    v8 = sub_2758B3C40;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2758B3C40()
{
  v43 = v0;
  v1 = v0[11];
  v2 = v0[9];

  v3 = sub_2759B84B8();
  v4 = CGImageSourceCreateWithURL(v3, 0);
  if (v4)
  {
    v5 = v4;
    if (CGImageSourceGetCount(v4) >= 1)
    {
      v6 = v0[10];
      v40 = v0[9];
      v8 = v0[5];
      v7 = v0[6];
      v10 = v0[3];
      v9 = v0[4];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
      v12 = sub_2759BA518();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);

      v13 = ImageAtIndex;
      v14 = sub_2759BA4B8();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v10;
      v15[5] = ImageAtIndex;
      sub_27587D460(0, 0, v9, &unk_2759C4558, v15);

      (*(v7 + 8))(v40, v8);
      goto LABEL_8;
    }
  }

  v17 = v0[14];
  (*(v0[6] + 16))(v0[8], v0[2], v0[5]);
  v18 = sub_2759B8988();
  v19 = sub_2759BA648();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[8];
  v22 = v0[9];
  v24 = v0[5];
  v23 = v0[6];
  if (v20)
  {
    v41 = v0[9];
    v25 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v25 = 136315138;
    sub_2758B4C40(&qword_280A10300, MEMORY[0x277CC9260]);
    v26 = sub_2759BAA98();
    v38 = v3;
    v28 = v27;
    v29 = *(v23 + 8);
    v29(v21, v24);
    v30 = sub_2758937B8(v26, v28, &v42);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_275819000, v18, v19, "Failed to create cgImage for url: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x277C85860](v39, -1, -1);
    MEMORY[0x277C85860](v25, -1, -1);

    v29(v41, v24);
  }

  else
  {

    v31 = *(v23 + 8);
    v31(v21, v24);
    v31(v22, v24);
  }

LABEL_8:
  v33 = v0[8];
  v32 = v0[9];
  v34 = v0[7];
  v35 = v0[4];

  v36 = v0[1];

  return v36();
}

uint64_t sub_2758B3FB0()
{
  v33 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[2];

  (*(v6 + 16))(v5, v8, v7);
  v9 = v1;
  v10 = sub_2759B8988();
  v11 = sub_2759BA648();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[17];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v17 = 136315394;
    sub_2758B4C40(&qword_280A10300, MEMORY[0x277CC9260]);
    v18 = sub_2759BAA98();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_2758937B8(v18, v20, &v32);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v30 = v23;
    _os_log_impl(&dword_275819000, v10, v11, "Failed to download icon for url: %s, with error: %@", v17, 0x16u);
    sub_27586BF04(v30, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x277C85860](v31, -1, -1);
    MEMORY[0x277C85860](v17, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[7];
  v27 = v0[4];

  v28 = v0[1];

  return v28();
}

uint64_t sub_2758B4254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758B42EC, v7, v6);
}

uint64_t sub_2758B42EC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2759C2410;
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v2 scale:1.0];
  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  sub_275861AF8(0, &qword_280A0EC90, 0x277D1B160);
  v6 = sub_2759BA3D8();

  v7 = [v5 initWithImages_];

  sub_2758B296C(v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_2758B4410()
{
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC14iCloudSettings16FeatureViewModel___observationRegistrar;
  v3 = sub_2759B8678();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeatureViewModel()
{
  result = qword_280A0F790;
  if (!qword_280A0F790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758B4520()
{
  result = sub_2759B8678();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2758B45D4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings7Feature_title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

id sub_2758B4634()
{
  v1 = *(v0 + 16);
  result = sub_27588723C(v1);
  if (!v3)
  {
    v4 = (v1 + OBJC_IVAR____TtC14iCloudSettings7Feature_subtitle);
    swift_beginAccess();
    v6 = *v4;
    v5 = v4[1];

    return v6;
  }

  return result;
}

BOOL sub_2758B46A4()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_2758B4C40(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  return sub_2759AA55C(*(v0 + 16), *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview));
}

uint64_t sub_2758B4768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_2758B32F0();
}

uint64_t sub_2758B47F4()
{
  v1 = *v0;
  sub_2759BABD8();
  v2 = v1[5];
  v3 = v1[6];
  sub_2759BA328();
  v4 = v1[2];
  sub_2759BA798();
  return sub_2759BAC08();
}

uint64_t sub_2758B4848()
{
  v1 = *v0;
  v2 = v1[5];
  v3 = v1[6];
  sub_2759BA328();
  v4 = v1[2];
  return sub_2759BA798();
}

uint64_t sub_2758B4880()
{
  v1 = *v0;
  sub_2759BABD8();
  v2 = v1[5];
  v3 = v1[6];
  sub_2759BA328();
  v4 = v1[2];
  sub_2759BA798();
  return sub_2759BAC08();
}

uint64_t sub_2758B48D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 40) == *(*a2 + 40) && *(*a1 + 48) == *(v3 + 48);
  if (!v4 && (sub_2759BAAC8() & 1) == 0)
  {
    return 0;
  }

  sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
  v5 = *(v2 + 16);
  v6 = *(v3 + 16);
  return sub_2759BA788() & 1;
}

uint64_t sub_2758B4998(uint64_t a1)
{
  result = sub_2758B4C40(&qword_280A0F7A8, type metadata accessor for FeatureViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2758B49F0(uint64_t a1)
{
  v4 = *(sub_2759B8508() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2758B3844(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2758B4B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758B4254(a1, v4, v5, v7, v6);
}

uint64_t sub_2758B4BD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758B4C40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2758B4C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = sub_2759B8328();
  v6[30] = v7;
  v8 = *(v7 - 8);
  v6[31] = v8;
  v9 = *(v8 + 64) + 15;
  v6[32] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10D80, &qword_2759C4618) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v12 = sub_2759B8508();
  v6[35] = v12;
  v13 = *(v12 - 8);
  v6[36] = v13;
  v14 = *(v13 + 64) + 15;
  v6[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758B4E1C, 0, 0);
}

uint64_t sub_2758B4E1C()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = sub_2759BA258();
  v5 = [v3 URLForKey_];
  v0[38] = v5;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_2758B4F74;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7D0, &unk_2759C4620);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2758B6808;
  v0[13] = &block_descriptor_13_0;
  v0[14] = v6;
  [v5 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2758B4F74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_2758B55F8;
  }

  else
  {
    v3 = sub_2758B5084;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2758B5084()
{
  v57 = v0;
  v1 = *(v0 + 168);

  v2 = [v1 absoluteURL];
  if (v2)
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 272);
    v5 = *(v0 + 232);
    v6 = v2;
    sub_2759B84C8();

    sub_2759B82F8();
    if (v5)
    {
      v7 = *(v0 + 232);
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = *(v0 + 224) & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = *(v0 + 232);

        v10 = sub_2759BA368();
        v11 = *(v0 + 224);
        if (v10)
        {
          v12 = sub_2758B6B00(1, *(v0 + 224), v7);
          v14 = v13;
          v16 = v15;
          v18 = v17;

          MEMORY[0x277C840B0](v12, v14, v16, v18);
        }

        if ((*(*(v0 + 248) + 48))(*(v0 + 272), 1, *(v0 + 240)))
        {
        }

        else
        {
          sub_2759B82E8();
        }
      }
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 240);
    v29 = *(v0 + 248);
    v30 = (*(v29 + 48))(v27, 1, v28);
    v31 = *(v0 + 280);
    v32 = *(v0 + 288);
    v33 = *(v0 + 264);
    if (v30)
    {
      (*(v32 + 56))(*(v0 + 264), 1, 1, *(v0 + 280));
    }

    else
    {
      v34 = *(v0 + 256);
      (*(v29 + 16))(v34, v27, v28);
      sub_2759B8308();
      (*(v29 + 8))(v34, v28);
      if ((*(v32 + 48))(v33, 1, v31) != 1)
      {
        v51 = *(v0 + 288);
        v53 = *(v0 + 272);
        v52 = *(v0 + 280);
        v54 = *(v0 + 264);
        v55 = *(v0 + 192);
        (*(v51 + 8))(*(v0 + 296), v52);

        (*(v51 + 32))(v55, v54, v52);
        (*(v51 + 56))(v55, 0, 1, v52);
        v44 = v53;
LABEL_24:
        sub_27586BF04(v44, &unk_280A10D80, &qword_2759C4618);
        goto LABEL_25;
      }
    }

    sub_27586BF04(*(v0 + 264), &unk_280A0EB10, &qword_2759C0740);
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v35 = sub_2759B89A8();
    __swift_project_value_buffer(v35, qword_280A238E8);
    v36 = sub_2759B8988();
    v37 = sub_2759BA648();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_275819000, v36, v37, "Failed to create URL from components.", v38, 2u);
      MEMORY[0x277C85860](v38, -1, -1);
    }

    v40 = *(v0 + 288);
    v39 = *(v0 + 296);
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = *(v0 + 192);

    (*(v40 + 8))(v39, v41);
    (*(v40 + 56))(v43, 1, 1, v41);
    v44 = v42;
    goto LABEL_24;
  }

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 216);
  v20 = sub_2759B89A8();
  __swift_project_value_buffer(v20, qword_280A238E8);

  v21 = sub_2759B8988();
  v22 = sub_2759BA648();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v56 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2758937B8(v24, v23, &v56);
    _os_log_impl(&dword_275819000, v21, v22, "URL for key %s is missing. Unable to prepare presentation URL.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x277C85860](v26, -1, -1);
    MEMORY[0x277C85860](v25, -1, -1);
  }

  (*(*(v0 + 288) + 56))(*(v0 + 192), 1, 1, *(v0 + 280));
LABEL_25:
  v45 = *(v0 + 296);
  v46 = *(v0 + 264);
  v47 = *(v0 + 272);
  v48 = *(v0 + 256);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_2758B55F8()
{
  v25 = v0;
  v1 = v0[38];
  v2 = v0[39];
  swift_willThrow();

  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v3 = v0[39];
  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = v3;
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[39];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[20];
    v15 = sub_2759BAB78();
    v17 = sub_2758937B8(v15, v16, &v24);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_275819000, v6, v7, "Failed to get url from Bag. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[36] + 56))(v0[24], 1, 1, v0[35]);
  v18 = v0[37];
  v19 = v0[33];
  v20 = v0[34];
  v21 = v0[32];

  v22 = v0[1];

  return v22();
}

void sub_2758B580C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - v7;
  v9 = sub_2759B8508();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 24);
  v14 = sub_2759B84B8();
  v24 = [v13 typeForURL_];

  (*(v10 + 16))(v12, a3, v9);
  v15 = v22;
  (*(v5 + 16))(v8, v23, v22);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, v12, v9);
  (*(v5 + 32))(v18 + v17, v8, v15);
  aBlock[4] = sub_2758B694C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2758B6BB8;
  aBlock[3] = &block_descriptor_3;
  v19 = _Block_copy(aBlock);

  v20 = v24;
  [v24 addFinishBlock_];
  _Block_release(v19);
}

uint64_t sub_2758B5AC8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a2;
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_280A238E8);
    (*(v9 + 16))(v12, a3, v8);
    v15 = a2;
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315394;
      v21 = sub_2759B8488();
      v23 = v22;
      (*(v9 + 8))(v12, v8);
      v24 = sub_2758937B8(v21, v23, &v31);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_2759BAB78();
      v27 = sub_2758937B8(v25, v26, &v31);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_275819000, v16, v17, "Unable to parse url to determine view controller. %s error: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C85860](v20, -1, -1);
      MEMORY[0x277C85860](v19, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v31 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600);
    return sub_2759BA478();
  }

  else
  {
    if (a1)
    {
      v28 = [a1 integerValue];
    }

    else
    {
      v28 = 1;
    }

    v31 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600);
    return sub_2759BA488();
  }
}

uint64_t sub_2758B5DEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2758B5E0C, 0, 0);
}

uint64_t sub_2758B5E0C()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v3 = objc_allocWithZone(MEMORY[0x277CEE440]);
  v4 = v2;
  v5 = sub_2759B84B8();
  v6 = [v3 initWithURL:v5 bag:v4];
  v0[4] = v6;

  v7 = [v6 perform];
  v0[5] = v7;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *(v8 + 16) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_2758B5F6C;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000001BLL, 0x80000002759DF970, sub_2758B6A54, v8, v11);
}

uint64_t sub_2758B5F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2758B60F0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2758B6088;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2758B6088()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2758B60F0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3();
}

void sub_2758B6164(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2758B6A5C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2758B6BB8;
  aBlock[3] = &block_descriptor_10;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

uint64_t sub_2758B6314(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  if (a2)
  {
    v11 = a2;
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_280A238E8);
    v13 = a2;
    v14 = sub_2759B8988();
    v15 = sub_2759BA648();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = a2;
      v38 = v17;
      *v16 = 136315138;
      v18 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
      v19 = sub_2759BA2F8();
      v21 = sub_2758937B8(v19, v20, &v38);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_275819000, v14, v15, "Error returned in campaignAttributionTask: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x277C85860](v17, -1, -1);
      MEMORY[0x277C85860](v16, -1, -1);
    }

    v38 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
    return sub_2759BA478();
  }

  else
  {
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v23 = sub_2759B89A8();
    __swift_project_value_buffer(v23, qword_280A238E8);
    v24 = a1;
    v25 = sub_2759B8988();
    v26 = sub_2759BA628();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      if (a1)
      {
        v29 = [v24 redirectURL];
        if (v29)
        {
          v30 = v29;
          sub_2759B84C8();

          v31 = sub_2759B8508();
          (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
        }

        else
        {
          v33 = sub_2759B8508();
          (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
        }

        sub_2758B4BD0(v8, v10);
      }

      else
      {
        v32 = sub_2759B8508();
        (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
      }

      v34 = sub_2759BA2F8();
      v36 = sub_2758937B8(v34, v35, &v38);

      *(v27 + 4) = v36;
      _os_log_impl(&dword_275819000, v25, v26, "Result returned in campaignAttributionTask: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x277C85860](v28, -1, -1);
      MEMORY[0x277C85860](v27, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
    return sub_2759BA488();
  }
}

void sub_2758B677C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2758B6808(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v9 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;
    v7 = v9;
    v8 = v10;

    return MEMORY[0x282200958](v7, v8);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v7, v8);
  }

  v13 = *(v9[8] + 40);
  *v13 = a2;
  *(v13 + 8) = a3;
  v14 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_2758B68E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2758B694C(void *a1, void *a2)
{
  v5 = *(sub_2759B8508() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2758B5AC8(a1, a2, v2 + v6, v9);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2758B6A5C(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608) - 8) + 80);

  return sub_2758B6314(a1, a2);
}

uint64_t sub_2758B6B00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

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
  v6 = sub_2759BA338();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_2758B6BBC()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 96) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2758B6C4C, 0, 0);
}

uint64_t sub_2758B6C4C()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D84F98];
  v0[9] = MEMORY[0x277D84F98];
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  if (v3)
  {
    v4 = [v3 ams_DSID];
    if (v4)
    {
      v5 = v4;
      if (qword_2815ADD20 != -1)
      {
        swift_once();
      }

      v6 = sub_2759B89A8();
      __swift_project_value_buffer(v6, qword_2815ADE58);
      v7 = v5;
      v8 = sub_2759B8988();
      v9 = sub_2759BA668();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v5;
        v12 = v7;
        _os_log_impl(&dword_275819000, v8, v9, "Sending iTunes account dsid: %@", v10, 0xCu);
        sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
        MEMORY[0x277C85860](v11, -1, -1);
        MEMORY[0x277C85860](v10, -1, -1);
      }

      v13 = [v7 stringValue];
      v14 = sub_2759BA298();
      v16 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_275906750(v14, v16, 0xD000000000000013, 0x80000002759DFA80, isUniquelyReferenced_nonNull_native);

      v0[9] = v1;
    }

    else
    {
    }
  }

  v18 = v0[12];
  if (*(v18 + 24))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v18 + 24))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  sub_2758CDE88(v19, v20, 0xD000000000000019, 0x80000002759DFA40);
  v21 = v0[9];
  v0[13] = v21;
  swift_beginAccess();
  v22 = *(MEMORY[0x277CE4800] + 4);
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_2758B6FD0;
  v24 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282137738](0x6F4864756F6C4369, 0xED00004C5255656DLL, v21);
}

uint64_t sub_2758B6FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *(*v4 + 112);
  v12 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v5[18] = v3;

  if (v3)
  {
    v7 = sub_2758B759C;
  }

  else
  {
    v8 = v5[13];
    swift_endAccess();

    v7 = sub_2758B7130;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2758B7130()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE58);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2759BA298();
    v13 = v12;

    v14 = sub_2758937B8(v11, v13, v44);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_275819000, v4, v5, "iCloudNetworkRequest: fetchiCloudHomeData: response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = objc_opt_self();
  v18 = sub_2759B8528();
  v0[10] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:0 error:v0 + 10];

  v20 = v0[10];
  if (v19)
  {
    v21 = v20;
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v22 = v0[11];
    }

    else
    {
      v22 = sub_2758A2A88(MEMORY[0x277D84F90]);
    }

    v30 = sub_2759B8988();
    v31 = sub_2759BA668();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315138;
      v34 = sub_2759BA1E8();
      v36 = sub_2758937B8(v34, v35, v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_275819000, v30, v31, "iCloudNetworkRequest: fetchiCloudHomeData: jsonObject: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x277C85860](v33, -1, -1);
      MEMORY[0x277C85860](v32, -1, -1);
    }

    v37 = v0[16];
    v38 = v0[17];
    v39 = v0[15];
    v40 = objc_allocWithZone(type metadata accessor for iCloudHomeDataModel());
    v41 = iCloudHomeDataModel.init(_:)(v22);

    sub_27585A900(v39, v37);
    v42 = v0[1];
    v43 = *MEMORY[0x277D85DE8];

    return v42(v41);
  }

  else
  {
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[15];
    v26 = v20;
    sub_2759B8448();

    swift_willThrow();
    sub_27585A900(v25, v23);
    v27 = v0[1];
    v28 = *MEMORY[0x277D85DE8];

    return v27();
  }
}

uint64_t sub_2758B759C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  swift_endAccess();

  v2 = v0[18];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_2758B7638()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 152) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2758B76C8, 0, 0);
}

uint64_t sub_2758B76C8()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7D8, &qword_2759C4698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0xD000000000000019;
  v3 = inited + 32;
  *(inited + 40) = 0x80000002759DFA40;
  v4 = 1702195828;
  if (!*(v1 + 24))
  {
    v4 = 0x65736C6166;
  }

  v5 = 0xE500000000000000;
  if (*(v1 + 24))
  {
    v5 = 0xE400000000000000;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_2758A30D4(inited);
  v0[20] = v6;
  swift_setDeallocating();
  sub_27586BF04(v3, &qword_280A0FDF0, &unk_2759C46A0);
  swift_beginAccess();
  v7 = *(MEMORY[0x277CE4800] + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_2758B7880;
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282137738](0xD000000000000019, 0x80000002759DFA60, v6);
}

uint64_t sub_2758B7880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *(*v4 + 168);
  v12 = *v4;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = a3;
  v5[25] = v3;

  if (v3)
  {
    v7 = sub_2758B7E4C;
  }

  else
  {
    v8 = v5[20];
    swift_endAccess();

    v7 = sub_2758B79E0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2758B79E0()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE58);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2759BA298();
    v13 = v12;

    v14 = sub_2758937B8(v11, v13, v44);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_275819000, v4, v5, "iCloudNetworkRequest: fetchAppsListData: response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v16 = v0[22];
  v15 = v0[23];
  v17 = objc_opt_self();
  v18 = sub_2759B8528();
  v0[17] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:0 error:v0 + 17];

  v20 = v0[17];
  if (v19)
  {
    v21 = v20;
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v22 = v0[18];
    }

    else
    {
      v22 = sub_2758A2A88(MEMORY[0x277D84F90]);
    }

    v30 = sub_2759B8988();
    v31 = sub_2759BA668();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315138;
      v34 = sub_2759BA1E8();
      v36 = sub_2758937B8(v34, v35, v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_275819000, v30, v31, "iCloudNetworkRequest: fetchAppsListData: jsonObject: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x277C85860](v33, -1, -1);
      MEMORY[0x277C85860](v32, -1, -1);
    }

    v37 = v0[23];
    v38 = v0[24];
    v39 = v0[22];
    v40 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListDataModel());
    v41 = ManageStorageAppsListDataModel.init(_:)(v22);

    sub_27585A900(v39, v37);
    v42 = v0[1];
    v43 = *MEMORY[0x277D85DE8];

    return v42(v41);
  }

  else
  {
    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[22];
    v26 = v20;
    sub_2759B8448();

    swift_willThrow();
    sub_27585A900(v25, v23);
    v27 = v0[1];
    v28 = *MEMORY[0x277D85DE8];

    return v27();
  }
}

uint64_t sub_2758B7E4C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  swift_endAccess();

  v2 = v0[25];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_2758B7EE8(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2758B7F7C, 0, 0);
}

uint64_t sub_2758B7F7C()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v4 = sub_2759B84B8();
  v5 = [v3 initWithURL_];
  *(v0 + 72) = v5;

  v6 = sub_2759BA258();
  [v5 setHTTPMethod_];

  v7 = objc_opt_self();
  v8 = sub_2759BA1C8();
  *(v0 + 40) = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v0 + 40];

  v10 = *(v0 + 40);
  if (v9)
  {
    v11 = *(v0 + 64);
    v12 = sub_2759B8538();
    v14 = v13;

    v15 = sub_2759B8528();
    sub_27585A900(v12, v14);
    [v5 setHTTPBody_];

    swift_beginAccess();
    v16 = *(MEMORY[0x277CE47F8] + 4);
    v17 = swift_task_alloc();
    *(v0 + 80) = v17;
    *v17 = v0;
    v17[1] = sub_2758B820C;
    v18 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282137730](v5);
  }

  else
  {
    v19 = v10;
    sub_2759B8448();

    swift_willThrow();
    v20 = *(v0 + 8);
    v21 = *MEMORY[0x277D85DE8];

    return v20(0);
  }
}

uint64_t sub_2758B820C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = *v4;
  v8 = *(*v4 + 80);
  v13 = *v4;
  *(v7 + 88) = a3;
  *(v7 + 96) = v3;

  if (v3)
  {
    v9 = sub_2758B85E0;
  }

  else
  {
    swift_endAccess();
    sub_27585A900(a1, a2);
    v9 = sub_2758B8378;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2758B8378()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 88);
  v2 = [*(v0 + 88) statusCode];
  if (v2 == 200)
  {
    if (qword_2815ADD20 != -1)
    {
      swift_once();
    }

    v3 = sub_2759B89A8();
    __swift_project_value_buffer(v3, qword_2815ADE58);
    v4 = sub_2759B8988();
    v5 = sub_2759BA668();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_11;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = v6;
LABEL_10:
    MEMORY[0x277C85860](v7, -1, -1);
LABEL_11:
    v1 = (v0 + 72);
    goto LABEL_13;
  }

  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v8 = *v1;
  v9 = sub_2759B89A8();
  __swift_project_value_buffer(v9, qword_2815ADE58);
  v10 = v8;
  v4 = sub_2759B8988();
  v11 = sub_2759BA648();
  if (os_log_type_enabled(v4, v11))
  {
    v12 = *(v0 + 88);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = [v12 statusCode];

    v7 = v13;
    goto LABEL_10;
  }

  v4 = *(v0 + 72);
LABEL_13:
  v14 = *v1;

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15(v2 == 200);
}

uint64_t sub_2758B85E0()
{
  v5 = *MEMORY[0x277D85DE8];
  swift_endAccess();
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2(0);
}

uint64_t sub_2758B867C()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings20iCloudNetworkRequest_networkController;
  v2 = sub_2759B8708();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for iCloudNetworkRequest()
{
  result = qword_2815ADE40;
  if (!qword_2815ADE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758B8774()
{
  result = sub_2759B8708();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id ManageStorageAppsListDataModel.init(_:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel__rawJsonObject] = a1;
  v4 = *(a1 + 16);

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = sub_27586F8A0(1936748641, 0xE400000000000000);
    if (v7 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v6, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast()))
    {
      v8 = v33;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v36 = v5;
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    v11 = type metadata accessor for ManageStorageApp();
    do
    {
      v12 = *v10;
      v13 = objc_allocWithZone(v11);
      swift_bridgeObjectRetain_n();
      ManageStorageApp.init(_:)(v12);
      MEMORY[0x277C84160]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v5 = v36;

      ++v10;
      --v9;
    }

    while (v9);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps] = v5;
  if (!*(a1 + 16))
  {

LABEL_17:
    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_18;
  }

  v15 = sub_27586F8A0(0xD000000000000013, 0x80000002759DFAA0);
  if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_275864C94(*(a1 + 56) + 32 * v15, v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = v33;
  v18 = v34;
LABEL_18:
  v19 = &v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_genericErrorMessage];
  *v19 = v17;
  *(v19 + 1) = v18;
  if (*(a1 + 16) && (v20 = sub_27586F8A0(0xD000000000000017, 0x80000002759DFAC0), (v21 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v20, v37), swift_dynamicCast()))
  {
    v22 = v33;
  }

  else
  {
    v22 = 4;
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount] = v22;
  if (*(a1 + 16) && (v23 = sub_27586F8A0(0xD000000000000019, 0x80000002759DFAE0), (v24 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v23, v37), (swift_dynamicCast() & 1) != 0))
  {
    v25 = v33;
    v26 = v34;
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = &v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_secondaryAppsSectionLabel];
  *v27 = v25;
  *(v27 + 1) = v26;
  if (!*(a1 + 16) || (v28 = sub_27586F8A0(0x656D6F6D72656874, 0xEB00000000726574), (v29 & 1) == 0))
  {

    goto LABEL_33;
  }

  sub_275864C94(*(a1 + 56) + 32 * v28, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v30 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_34;
  }

  v30 = v33;
LABEL_34:
  v31 = objc_allocWithZone(type metadata accessor for ManageStorageThermometer());
  *&v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer] = ManageStorageThermometer.init(_:)(v30);

  v35.receiver = v2;
  v35.super_class = type metadata accessor for ManageStorageAppsListDataModel();
  return objc_msgSendSuper2(&v35, sel_init);
}

unint64_t sub_2758B8DE4()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2759BA2D8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = objc_opt_self();
  v4 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel__rawJsonObject);
  v5 = sub_2759BA1C8();
  v6 = [v3 isValidJSONObject_];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_2759BA1C8();
  v20[0] = 0;
  v8 = [v3 dataWithJSONObject:v7 options:1 error:v20];

  v9 = v20[0];
  if (!v8)
  {
    v17 = v9;
    v18 = sub_2759B8448();

    swift_willThrow();
    goto LABEL_6;
  }

  v10 = sub_2759B8538();
  v12 = v11;

  sub_2759BA2C8();
  v13 = sub_2759BA2A8();
  v15 = v14;
  sub_27585A900(v10, v12);
  if (!v15)
  {
LABEL_6:
    result = 0xD000000000000020;
    goto LABEL_7;
  }

  result = v13;
LABEL_7:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2758B90EC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v4 = *(a1 + *a3);
  a4();

  v5 = sub_2759BA3D8();

  return v5;
}

id ManageStorageThermometer.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0xD000000000000015, 0x80000002759DF2B0), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v33), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v30;
    v7 = v31;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_otherAppsDisplayLabel];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0xD000000000000012, 0x80000002759DFB60), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v33), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v30;
    v12 = v31;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_dimmedSectionColor];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x62614C6567617375, 0xEA00000000006C65), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v33), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v30;
    v17 = v31;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_usageLabel];
  *v18 = v16;
  *(v18 + 1) = v17;
  v19 = MEMORY[0x277D84F90];
  if (*(a1 + 16) && (v20 = sub_27586F8A0(0x736E6F6974636573, 0xE800000000000000), (v21 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v20, v33);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
    if (swift_dynamicCast())
    {
      v22 = v30;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v22 = MEMORY[0x277D84F90];
LABEL_22:
  v33[0] = v19;
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 32);
    v25 = type metadata accessor for ManageStorageThermometerSection();
    do
    {
      v26 = *v24;
      v27 = objc_allocWithZone(v25);
      swift_bridgeObjectRetain_n();
      ManageStorageThermometerSection.init(_:)(v26);
      MEMORY[0x277C84160]();
      if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v19 = v33[0];

      ++v24;
      --v23;
    }

    while (v23);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_sections] = v19;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for ManageStorageThermometer();
  return objc_msgSendSuper2(&v32, sel_init);
}

id ManageStorageThermometerSection.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x6449656C646E7562, 0xE800000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v21), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v18;
    v7 = v19;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_bundleId];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x4C79616C70736964, 0xEC0000006C656261), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v21), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v18;
    v12 = v19;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (!*(a1 + 16) || (v14 = sub_27586F8A0(0xD000000000000011, 0x80000002759DFBB0), (v15 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_275864C94(*(a1 + 56) + 32 * v14, v21);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v16 = v18;
LABEL_17:
  *&v2[OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_storagePercentage] = v16;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for ManageStorageThermometerSection();
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_2758B9928@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManageStorageThermometerSection();
  result = sub_2759BA8D8();
  *a1 = result;
  return result;
}

uint64_t sub_2758B9968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = a1 == 0x70756B636162 && a2 == 0xE600000000000000;
  if (v9 || (sub_2759BAAC8() & 1) != 0)
  {

    a3 = 0;
    a4 = 0;
  }

  else if (a1 == 0x735F796C696D6166 && a2 == 0xEE00676E69726168 || (sub_2759BAAC8() & 1) != 0)
  {

    a3 = 0;
    a4 = 1;
  }

  else if (a1 == 0x68746C616568 && a2 == 0xE600000000000000 || (sub_2759BAAC8() & 1) != 0)
  {

    a3 = 0;
    a4 = 2;
  }

  else
  {
    if ((a1 != 0x736567617373656DLL || a2 != 0xE800000000000000) && (sub_2759BAAC8() & 1) == 0)
    {
      if (a1 == 1769105779 && a2 == 0xE400000000000000)
      {
      }

      else
      {
        v12 = sub_2759BAAC8();

        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      a3 = 0;
      a4 = 4;
      goto LABEL_7;
    }

    a3 = 0;
    a4 = 3;
  }

LABEL_7:
  *a5 = a3;
  a5[1] = a4;
  return result;
}

unint64_t sub_2758B9CB4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0x79726F6765746163;
    if (a1 != 10)
    {
      v7 = 0x70416E49776F6873;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    if (a1 != 7)
    {
      v8 = 0x6E6F69746361;
    }

    if (a1 == 6)
    {
      v8 = 0x734C52556E6F6369;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C6562616CLL;
    v2 = 0x6449656C646E7562;
    v3 = 0x636F4C6863746566;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x614C6C6961746564;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id ManageStorageApp.init(_:)(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (*(a1 + 16) && (a1 = sub_27586F8A0(0x614C6C6961746564, 0xEB000000006C6562), (v4 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * a1, v67), a1 = swift_dynamicCast(), (a1 & 1) != 0))
  {
    v5 = v64;
    v6 = v65;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel];
  *v7 = v5;
  v7[1] = v6;
  if (*(v3 + 16) && (a1 = sub_27586F8A0(0xD000000000000010, 0x80000002759DFC00), (v8 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * a1, v67), a1 = swift_dynamicCast(), (a1 & 1) != 0))
  {
    v9 = v64;
    v10 = v65;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabelColor];
  *v11 = v9;
  v11[1] = v10;
  if (*(v3 + 16) && (a1 = sub_27586F8A0(0x6449656C646E7562, 0xE900000000000073), (v12 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * a1, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2F8, &qword_2759C3760), a1 = swift_dynamicCast(), (a1 & 1) != 0))
  {
    v13 = v64;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds;
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds] = v13;
  *&v67[0] = 0xD000000000000010;
  *(&v67[0] + 1) = 0x80000002759DF530;
  MEMORY[0x28223BE20](a1);
  v63 = v67;

  v15 = sub_2758A34DC(sub_275875530, &v62, v13);

  if ((v15 & 1) != 0 && (v16 = [objc_opt_self() sharedManager], v17 = objc_msgSend(v16, sel_appIsNeitherInstalledOrPlaceholder_, *MEMORY[0x277CB89A0]), v16, v17))
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v63 = 0x80000002759DFC60;
    v20 = sub_2759B83C8();
    v22 = v21;
  }

  else if (*(v3 + 16) && (v23 = sub_27586F8A0(0x6C6562616CLL, 0xE500000000000000), (v24 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v23, v67), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v64;
    v22 = v65;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v25 = &v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label];
  *v25 = v20;
  v25[1] = v22;
  if (*(v3 + 16) && (v26 = sub_27586F8A0(0x636F4C6863746566, 0xEC000000796C6C61), (v27 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v26, v67), swift_dynamicCast()))
  {
    v28 = v64;
  }

  else
  {
    v28 = 1;
  }

  v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_fetchLocally] = v28;
  v29 = *(v3 + 16);
  if (v29)
  {
    v30 = sub_27586F8A0(0xD000000000000010, 0x80000002759DCD70);
    if ((v31 & 1) != 0 && (sub_275864C94(*(v3 + 56) + 32 * v30, v67), swift_dynamicCast()))
    {
      LOBYTE(v29) = v64;
    }

    else
    {
      LOBYTE(v29) = 0;
    }
  }

  v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_applySystemStyle] = v29;
  if (*(v3 + 16) && (v32 = sub_27586F8A0(0x734C52556E6F6369, 0xE800000000000000), (v33 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v32, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v34 = v64;
  }

  else
  {
    v34 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v35 = type metadata accessor for ManageStorageAppIconURL();
  v36 = objc_allocWithZone(v35);
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_iconUrls] = ManageStorageAppIconURL.init(_:)(v34);
  if (*(v3 + 16) && (v37 = sub_27586F8A0(0xD000000000000012, 0x80000002759DFC20), (v38 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v37, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v39 = v64;
  }

  else
  {
    v39 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v40 = objc_allocWithZone(v35);
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailViewIconUrls] = ManageStorageAppIconURL.init(_:)(v39);
  if (*(v3 + 16) && (v41 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v42 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v41, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v43 = v64;
  }

  else
  {
    v43 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v44 = objc_allocWithZone(type metadata accessor for ManageStorageAction());
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_action] = ManageStorageAction.init(_:)(v43);
  if (*(v3 + 16) && (v45 = sub_27586F8A0(0xD000000000000015, 0x80000002759DFC40), (v46 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v45, v67), (swift_dynamicCast() & 1) != 0))
  {
    v47 = v64;
    v48 = v65;
  }

  else
  {
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = &v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_thermometerUsageLabel];
  *v49 = v47;
  v49[1] = v48;
  if (*(v3 + 16) && (v50 = sub_27586F8A0(0x70416E49776F6873, 0xED00007473694C70), (v51 & 1) != 0) && (sub_275864C94(*(v3 + 56) + 32 * v50, v67), swift_dynamicCast()))
  {
    v52 = v64;
  }

  else
  {
    v52 = 1;
  }

  v53 = 0x746C7561666564;
  v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList] = v52;
  if (*(v3 + 16) && (v54 = sub_27586F8A0(0x79726F6765746163, 0xE800000000000000), (v55 & 1) != 0))
  {
    sub_275864C94(*(v3 + 56) + 32 * v54, v67);

    if (swift_dynamicCast())
    {
      v57 = v64;
      v56 = v65;
      goto LABEL_65;
    }
  }

  else
  {
  }

  v56 = 0xE700000000000000;
  v57 = 0x746C7561666564;
LABEL_65:
  v58 = *&v2[v14];
  if (v58[2])
  {
    v53 = v58[4];
    v59 = v58[5];
  }

  else
  {
    v59 = 0xE700000000000000;
  }

  sub_2758B9968(v57, v56, v53, v59, v67);
  *&v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category] = v67[0];
  v60 = type metadata accessor for ManageStorageApp();
  v66.receiver = v2;
  v66.super_class = v60;
  return objc_msgSendSuper2(&v66, sel_init);
}

id ManageStorageApp.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2758BA840(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2758BA948@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManageStorageApp();
  result = sub_2759BA8D8();
  *a1 = result;
  return result;
}

id sub_2758BA9AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  sub_2758BB4AC(a1 + *a3, &v15 - v7);
  v9 = sub_2759B8508();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2759B84B8();
    (*(v10 + 8))(v8, v9);
    v12 = v13;
  }

  return v12;
}

id ManageStorageAppIconURL.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(30769, 0xE200000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v24), (swift_dynamicCast() & 1) != 0))
  {
    sub_2759B84F8();

    sub_2758B4BD0(v8, &v2[OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url1x]);
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url1x;
    v12 = sub_2759B8508();
    (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v13 = sub_27586F8A0(30770, 0xE200000000000000);
  if (v14)
  {
    sub_275864C94(*(a1 + 56) + 32 * v13, v24);
    if (swift_dynamicCast())
    {
      sub_2759B84F8();

      sub_2758B4BD0(v8, &v2[OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url2x]);
      if (!*(a1 + 16))
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  v15 = OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url2x;
  v16 = sub_2759B8508();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  if (!*(a1 + 16))
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_12:
  v17 = sub_27586F8A0(30771, 0xE200000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_275864C94(*(a1 + 56) + 32 * v17, v24);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v19 = OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url3x;
    v20 = sub_2759B8508();
    (*(*(v20 - 8) + 56))(&v2[v19], 1, 1, v20);
    goto LABEL_17;
  }

  sub_2759B84F8();

  sub_2758B4BD0(v8, &v2[OBJC_IVAR____TtC14iCloudSettings23ManageStorageAppIconURL_url3x]);
LABEL_17:
  v23.receiver = v2;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

id ManageStorageAppIconURL.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s14iCloudSettings24ManageStorageAppCategoryO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (!v5)
      {
        sub_27585A8EC(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (v3 == 1)
    {
      if (v5 == 1)
      {
        v8 = 1;
        sub_27585A8EC(*a1, 1uLL);
        sub_27585A8EC(v4, 1uLL);
        return v8;
      }

LABEL_18:
      sub_27585A8D8(*a2, *(a2 + 8));
      sub_27585A8D8(v2, v3);
      sub_27585A8EC(v2, v3);
      sub_27585A8EC(v4, v5);
      return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        if (v5 == 2)
        {
          sub_27585A8EC(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
          goto LABEL_22;
        }

        goto LABEL_18;
      case 3:
        if (v5 == 3)
        {
          sub_27585A8EC(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_22;
        }

        goto LABEL_18;
      case 4:
        if (v5 == 4)
        {
          sub_27585A8EC(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
LABEL_22:
          sub_27585A8EC(v6, v7);
          return 1;
        }

        goto LABEL_18;
    }
  }

  if (v5 < 5)
  {
    goto LABEL_18;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_27585A8D8(*a1, v3);
    sub_27585A8D8(v2, v3);
    sub_27585A8EC(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_22;
  }

  v10 = *a1;
  v11 = sub_2759BAAC8();
  sub_27585A8D8(v4, v5);
  sub_27585A8D8(v2, v3);
  sub_27585A8EC(v2, v3);
  sub_27585A8EC(v4, v5);
  return v11 & 1;
}

uint64_t type metadata accessor for ManageStorageAppIconURL()
{
  result = qword_280A0F8A8;
  if (!qword_280A0F8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14iCloudSettings24ManageStorageAppCategoryO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2758BB288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2758BB2E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_2758BB330(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_2758BB394()
{
  sub_2758BB454();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2758BB454()
{
  if (!qword_2815ADE50)
  {
    sub_2759B8508();
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2815ADE50);
    }
  }
}

uint64_t sub_2758BB4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758BB52C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ManageStorageDrilldownAnimationView();
  sub_27586FBC8(v1 + *(v12 + 60), v11, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_2758BB734@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v105 = a6;
  v104 = a5;
  v12 = sub_2759B8508();
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = *(v109 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v98 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v106 = v92 - v17;
  MEMORY[0x28223BE20](v16);
  v93 = v92 - v18;
  v112 = 0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C70, qword_2759C1240);
  sub_2759B9D58();
  v99 = v114;
  v112 = 0;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_2759B9D58();
  v101 = v114;
  v112 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8B8, &qword_2759C4900);
  sub_2759B9D58();
  v20 = *(&v114 + 1);
  v92[1] = v114;
  *(a7 + 32) = v114;
  *(a7 + 40) = v20;
  v92[2] = v20;
  v112 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8C0, &qword_2759C4908);
  sub_2759B9D58();
  v22 = *(&v114 + 1);
  v92[3] = v114;
  *(a7 + 48) = v114;
  *(a7 + 56) = v22;
  v92[4] = v22;
  v112 = 0;
  v107 = v19;
  sub_2759B9D58();
  v23 = *(&v114 + 1);
  v94 = v114;
  *(a7 + 104) = v114;
  *(a7 + 112) = v23;
  v95 = v23;
  v112 = 0;
  v108 = v21;
  sub_2759B9D58();
  v24 = *(&v114 + 1);
  v96 = v114;
  *(a7 + 120) = v114;
  *(a7 + 128) = v24;
  v97 = v24;
  v112 = 0xD000000000000015;
  v113 = 0x80000002759E00F0;
  sub_2759B9D58();
  v25 = v115;
  *(a7 + 136) = v114;
  *(a7 + 152) = v25;
  v26 = type metadata accessor for ManageStorageDrilldownAnimationView();
  v27 = v26[15];
  *(a7 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  v28 = (a7 + v26[16]);
  sub_2759B8C08();
  sub_2758BF284(&qword_280A0E6E0, MEMORY[0x277D23330]);
  *v28 = sub_2759B9168();
  v28[1] = v29;
  v103 = v26;
  v30 = (a7 + v26[17]);
  sub_2759B8BB8();
  sub_2758BF284(&qword_280A0F8C8, MEMORY[0x277D232E8]);
  *v30 = sub_2759B9168();
  v30[1] = v31;
  if (a2)
  {
    v32 = *&a2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_index];
    if (v32 <= 4)
    {
      v33 = v32 + 1;
    }

    else
    {
      v33 = 6;
    }
  }

  else
  {
    v33 = 6;
  }

  *(a7 + 96) = v33;
  type metadata accessor for ManageStorageAppsListViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v111 = [objc_opt_self() bundleForClass_];
  v35 = sub_2759BA258();

  v36 = sub_2759BA258();
  v37 = &unk_27A667000;
  v38 = [v111 URLForResource:v35 withExtension:v36];

  v39 = MEMORY[0x277CDA710];
  if (v38)
  {
    v40 = v93;
    sub_2759B84C8();

    v41 = a1;
    v42 = a2;
    v43 = a3;
    v44 = a4;
    v45 = v106;
    (*(v109 + 16))(v106, v40, v110);
    v46 = *v39;
    v47 = type metadata accessor for MicaPlayerModel();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    v50 = v46;
    v51 = v45;
    a4 = v44;
    a3 = v43;
    a2 = v42;
    a1 = v41;
    v52 = sub_275865450(v51, 1, v50);

    v112 = v52;

    sub_2759B9D58();

    *(a7 + 32) = v114;
    v53 = type metadata accessor for InteractiveStorageMicaController();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();

    v57 = sub_27586A5E4(v56);

    v112 = v57;
    sub_2759B9D58();

    v58 = v40;
    v37 = &unk_27A667000;
    (*(v109 + 8))(v58, v110);

    *(a7 + 48) = v114;
    v59 = a2;
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v60 = sub_2759B89A8();
    __swift_project_value_buffer(v60, qword_2815ADE70);
    v59 = a2;
    v61 = sub_2759B8988();
    v62 = sub_2759BA648();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = a1;
      v64 = -1;
      v65 = swift_slowAlloc();
      *v65 = 134217984;
      if (a2)
      {
        v64 = *&v59[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_index];
      }

      *(v65 + 4) = v64;
      v66 = v65;

      _os_log_impl(&dword_275819000, v61, v62, "ManageStorageDrilldownAnimationView Unable to resolve caar file url, index: %ld", v66, 0xCu);
      MEMORY[0x277C85860](v66, -1, -1);

      a1 = v63;
    }

    else
    {
    }
  }

  v112 = a1;
  v67 = a1;
  sub_2759B9D58();

  *a7 = v114;
  v112 = a2;
  v68 = v59;
  sub_2759B9D58();

  *(a7 + 16) = v114;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  v69 = sub_2759BA258();
  v70 = sub_2759BA258();
  v71 = [v111 v37[489]];

  if (v71)
  {
    v72 = v98;
    sub_2759B84C8();

    v74 = v109;
    v73 = v110;
    v75 = v106;
    (*(v109 + 16))(v106, v72, v110);
    v76 = *MEMORY[0x277CDA710];
    v77 = type metadata accessor for MicaPlayerModel();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v80 = v76;
    v81 = sub_275865450(v75, 1, v80);

    v112 = v81;

    sub_2759B9D58();

    *(a7 + 104) = v114;
    v82 = type metadata accessor for InteractiveStorageMicaController();
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();

    v86 = sub_27586A5E4(v85);

    v112 = v86;
    sub_2759B9D58();

    (*(v74 + 8))(v72, v73);

    *(a7 + 120) = v114;
  }

  v87 = v103;
  *(a7 + 160) = v104;
  v88 = (v105 & 1) == 0;
  *(a7 + v87[18]) = v105 & 1;
  v89 = 0.0;
  if (!v88)
  {
    v89 = 1.0;
  }

  v112 = *&v89;
  sub_2759B9D58();

  v91 = *(&v114 + 1);
  result = *&v114;
  *(a7 + 64) = v114;
  *(a7 + 72) = v91;
  return result;
}

uint64_t sub_2758BC118@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F938, &qword_2759C49E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v27 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F940, &qword_2759C49E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F948, &qword_2759C49F0);
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  *v6 = sub_2759BA028();
  v6[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F950, &qword_2759C49F8);
  sub_2758BC394(v1, v6 + *(v14 + 44));
  v12(v6, 0, 1, v11);
  sub_2758BEC5C(v6, v10);
  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  CGRectGetHeight(v28);
  sub_2759BA028();
  sub_2759B8F18();
  sub_27586FBC8(v10, a1, &qword_280A0F940, &qword_2759C49E8);
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F958, &unk_2759C4A00) + 36));
  v25 = v27[1];
  *v24 = v27[0];
  v24[1] = v25;
  v24[2] = v27[2];
  return sub_27586BF04(v10, &qword_280A0F940, &qword_2759C49E8);
}

uint64_t sub_2758BC394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v3 = sub_2759B9608();
  v122 = *(v3 - 8);
  v123 = v3;
  v4 = *(v122 + 64);
  MEMORY[0x28223BE20](v3);
  v121 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F960, &qword_2759CA1E0);
  v125 = *(v6 - 8);
  v126 = v6;
  v7 = *(v125 + 64);
  MEMORY[0x28223BE20](v6);
  v124 = &v118 - v8;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F968, &qword_2759C4A10);
  v9 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v137 = &v118 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F970, &qword_2759C4A18);
  v135 = *(v11 - 8);
  v136 = v11;
  v12 = *(v135 + 64);
  MEMORY[0x28223BE20](v11);
  v127 = &v118 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F978, &qword_2759C4A20);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v139 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v141 = &v118 - v18;
  v120 = type metadata accessor for ManageStorageDrilldownAnimationView();
  v143 = *(v120 - 8);
  v19 = *(v143 + 64);
  MEMORY[0x28223BE20](v120);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F980, &qword_2759C4A28);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v138 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v142 = &v118 - v24;
  v25 = *(a1 + 88);
  *&v154[0] = *(a1 + 80);
  *(&v154[0] + 1) = v25;
  sub_27589F2D4();

  v26 = sub_2759B99C8();
  v28 = v27;
  v30 = v29;
  LODWORD(v154[0]) = sub_2759B9688();
  v31 = sub_2759B9958();
  v133 = v32;
  v134 = v31;
  v34 = v33;
  v132 = v35;
  sub_27589F328(v26, v28, v30 & 1);

  v128 = objc_opt_self();
  v36 = [v128 mainScreen];
  [v36 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v156.origin.x = v38;
  v156.origin.y = v40;
  v156.size.width = v42;
  v156.size.height = v44;
  v45 = CGRectGetHeight(v156) * 0.085;
  v46 = *(a1 + 72);
  *&v154[0] = *(a1 + 64);
  *(&v154[0] + 1) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F988, &qword_2759C4A30);
  sub_2759B9D68();
  v47 = v145;
  sub_2758BECCC(a1, &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *(v143 + 80);
  v49 = (v48 + 16) & ~v48;
  v129 = v19;
  v50 = swift_allocObject();
  v130 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2758BED30(v130, v50 + v49);
  LOBYTE(v151) = v34 & 1;
  *&v145 = v134;
  *(&v145 + 1) = v133;
  LOBYTE(v146) = v34 & 1;
  *(&v146 + 1) = v132;
  *&v147 = 0;
  *(&v147 + 1) = v45;
  *&v148 = v47;
  *(&v148 + 1) = sub_2758BED94;
  v149 = v50;
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F990, &qword_2759C4A38);
  sub_2758BEDAC();
  sub_2759B9B38();
  v154[2] = v147;
  v154[3] = v148;
  v154[4] = v149;
  v155 = v150;
  v154[0] = v145;
  v154[1] = v146;
  sub_27586BF04(v154, &qword_280A0F990, &qword_2759C4A38);
  v143 = a1;
  v145 = *(a1 + 32);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C0, &qword_2759C4A50);
  sub_2759B9D68();
  v118 = v48;
  v119 = v49;
  if (v151)
  {
    type metadata accessor for MicaPlayerModel();
    sub_2758BF284(&qword_280A0EA68, type metadata accessor for MicaPlayerModel);

    v51 = v137;
    sub_2759B9F78();
    v52 = [v128 mainScreen];
    [v52 bounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    v157.origin.x = v54;
    v157.origin.y = v56;
    v157.size.width = v58;
    v157.size.height = v60;
    CGRectGetHeight(v157);
    sub_2759BA028();
    sub_2759B8F18();
    v61 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9D8, &unk_2759C4A90) + 36));
    v62 = v152;
    *v61 = v151;
    v61[1] = v62;
    v61[2] = v153;
    *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E0, &qword_2759CA1F0) + 36)) = 256;
    v63 = sub_2759B90B8();
    v64 = sub_2759B97D8();
    v65 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E8, &unk_2759C4AA0) + 36);
    *v65 = v63;
    *(v65 + 8) = v64;
    v66 = v143;
    v67 = v130;
    sub_2758BECCC(v143, v130);
    v68 = swift_allocObject();
    sub_2758BED30(v67, v68 + v49);
    v69 = (v51 + *(v131 + 36));
    *v69 = sub_2758BF48C;
    v69[1] = v68;
    v69[2] = 0;
    v69[3] = 0;
    v70 = *(v66 + 152);
    v145 = *(v66 + 136);
    *&v146 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
    sub_2759B9D68();
    sub_2758BF024();
    v71 = v127;
    sub_2759B9B38();

    sub_27586BF04(v51, &qword_280A0F968, &qword_2759C4A10);
    v72 = v71;
    v73 = v141;
    sub_2758BF518(v72, v141);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v141;
    v51 = v137;
  }

  (*(v135 + 56))(v73, v74, 1, v136);
  v145 = *(v143 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C8, &qword_2759C4A58);
  sub_2759B9D68();
  v75 = v144;
  if (!v144)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  *&v145 = v75;
  sub_2758BF284(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel);
  sub_2759B8638();

  v76 = *&v75[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages];

  if (!v76)
  {
    goto LABEL_11;
  }

  v145 = *(v143 + 104);
  sub_2759B9D68();
  v77 = v144;
  if (!v144)
  {

LABEL_11:
    v143 = 0;
    goto LABEL_12;
  }

  v78 = v118;
  v79 = ~v118;
  type metadata accessor for MicaPlayerModel();
  sub_2758BF284(&qword_280A0EA68, type metadata accessor for MicaPlayerModel);

  v137 = v77;
  sub_2759B9F78();
  v80 = [v128 mainScreen];
  [v80 bounds];
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;

  v158.origin.x = v82;
  v158.origin.y = v84;
  v158.size.width = v86;
  v158.size.height = v88;
  CGRectGetHeight(v158);
  sub_2759BA028();
  sub_2759B8F18();
  v89 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9D8, &unk_2759C4A90) + 36));
  v90 = v146;
  *v89 = v145;
  v89[1] = v90;
  v89[2] = v147;
  *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E0, &qword_2759CA1F0) + 36)) = 256;
  v91 = sub_2759B90B8();
  v92 = sub_2759B97D8();
  v93 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E8, &unk_2759C4AA0) + 36);
  *v93 = v91;
  *(v93 + 8) = v92;
  v94 = v143;
  v95 = v130;
  sub_2758BECCC(v143, v130);
  v96 = swift_allocObject();
  *(v96 + 16) = v76;
  sub_2758BED30(v95, v96 + ((v78 + 24) & v79));
  v97 = (v51 + *(v131 + 36));
  *v97 = sub_2758BEF48;
  v97[1] = v96;
  v97[2] = 0;
  v97[3] = 0;
  sub_2758BECCC(v94, v95);
  v98 = v119;
  v99 = swift_allocObject();
  sub_2758BED30(v95, v99 + v98);
  v100 = v121;
  sub_2759B96C8();
  sub_2758BF024();
  v101 = v51;
  v102 = v124;
  v103 = v123;
  sub_2759B9A98();

  (*(v122 + 8))(v100, v103);
  sub_27586BF04(v101, &qword_280A0F968, &qword_2759C4A10);
  v104 = sub_27595CE18(*(v94 + 160));
  v105 = (v94 + *(v120 + 64));
  if (*v105)
  {
    v106 = (v143 + *(v120 + 68));
    v73 = v141;
    if (*v106)
    {
      v107 = v104;

      v108 = sub_275964AD0(v107);

      (*(v125 + 8))(v102, v126);
      v143 = v108;

LABEL_12:
      v109 = v142;
      v110 = v138;
      sub_27586FBC8(v142, v138, &qword_280A0F980, &qword_2759C4A28);
      v111 = v139;
      sub_27586FBC8(v73, v139, &qword_280A0F978, &qword_2759C4A20);
      v112 = v73;
      v113 = v140;
      sub_27586FBC8(v110, v140, &qword_280A0F980, &qword_2759C4A28);
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9D0, &qword_2759C4A88);
      sub_27586FBC8(v111, v113 + *(v114 + 48), &qword_280A0F978, &qword_2759C4A20);
      *(v113 + *(v114 + 64)) = v143;
      sub_27586BF04(v112, &qword_280A0F978, &qword_2759C4A20);
      sub_27586BF04(v109, &qword_280A0F980, &qword_2759C4A28);

      sub_27586BF04(v111, &qword_280A0F978, &qword_2759C4A20);
      return sub_27586BF04(v110, &qword_280A0F980, &qword_2759C4A28);
    }
  }

  else
  {
    v116 = v105[1];
    sub_2759B8C08();
    sub_2758BF284(&qword_280A0E6E0, MEMORY[0x277D23330]);
    sub_2759B9158();
    __break(1u);
  }

  v117 = v106[1];
  sub_2759B8BB8();
  sub_2758BF284(&qword_280A0F8C8, MEMORY[0x277D232E8]);

  result = sub_2759B9158();
  __break(1u);
  return result;
}

uint64_t sub_2758BD20C()
{
  sub_2759BA078();
  sub_2759BA068();

  sub_2759B9008();
}

uint64_t sub_2758BD2A0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
  sub_2759B9D68();
  if (v7)
  {
    v4 = sub_2758BD388();
    sub_275868374(v4);
  }

  result = type metadata accessor for ManageStorageDrilldownAnimationView();
  if (*(a1 + *(result + 72)) == 1)
  {
    result = sub_2759B9D68();
    if (v7)
    {
      v6 = *(v7 + 16);
      sub_275864E2C(1000000.0);
    }
  }

  return result;
}

uint64_t sub_2758BD388()
{
  v3 = v0;
  v4 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  sub_2758BF588();
  v5 = sub_2759BA408();
  v6 = (v5 & 0xFFFFFFFFFFFFFF8);
  v6[2] = 5;
  v6[4] = v4;
  v6[5] = v4;
  v6[6] = v4;
  v6[7] = v4;
  v6[8] = v4;
  v46 = v5;
  v51 = v5;
  v7 = v4;
  v50 = *v3;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  v9 = &v50;
  sub_2759B9D68();
  v45 = v3;
  if (!v48)
  {
    sub_2758BE504(MEMORY[0x277D84F90]);
    v11 = v15;
    v17 = v16;
    v2 = v18;
    goto LABEL_23;
  }

  v10 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v9 = *&v48[v10];

  v11 = v9 >> 62;
  if (v9 >> 62)
  {
LABEL_52:
    v43 = sub_2759BA9E8();
    if (sub_2759BA9E8() < 0)
    {
      __break(1u);
LABEL_54:
      sub_2759BA3F8();
      goto LABEL_43;
    }

    if (v43 >= 5)
    {
      v44 = 5;
    }

    else
    {
      v44 = v43;
    }

    if (v43 >= 0)
    {
      v13 = v44;
    }

    else
    {
      v13 = 5;
    }

    result = sub_2759BA9E8();
    if (result >= v13)
    {
      goto LABEL_7;
    }

LABEL_62:
    __break(1u);
    return result;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 5)
  {
    v13 = 5;
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v13)
  {
    goto LABEL_62;
  }

LABEL_7:
  if ((v9 & 0xC000000000000001) == 0 || v13 == 0)
  {
  }

  else
  {
    type metadata accessor for ManageStorageAppViewModel();

    sub_2759BA8F8();
    if (v13 != 1)
    {
      sub_2759BA8F8();
      if (v13 != 2)
      {
        sub_2759BA8F8();
        if (v13 != 3)
        {
          sub_2759BA8F8();
          if (v13 != 4)
          {
            sub_2759BA8F8();
            if (v13 != 5)
            {
              sub_2759BA8F8();
              sub_2759BA8F8();
            }
          }
        }
      }
    }
  }

  if (v11)
  {
    sub_2759BA9F8();
    v11 = v19;
    v17 = v20;
    v2 = v21;
  }

  else
  {
    v17 = 0;
    v11 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v2 = 2 * v13;
  }

LABEL_23:
  v22 = 0;
  v23 = v2 >> 1;
  v1 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  v24 = v17;
LABEL_24:
  v25 = v24;
  while (v23 != v25)
  {
    if (v24 < v17 || v25 >= v23)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_50;
    }

    v27 = v25 + 1;
    v28 = *(v11 + 8 * v25);
    v9 = *&v28[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage];
    ++v22;
    ++v25;
    if (v9)
    {
      v2 = v28;
      v9 = v9;
      if ((v46 & 0x8000000000000000) != 0 || (v46 & 0x4000000000000000) != 0)
      {
        v46 = sub_275893F08(v46);
      }

      if ((v22 - 1) < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *((v46 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x18);
        *((v46 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x18) = v9;
        v9 = v46;

        v51 = v46;
        v22 = v26;
        v24 = v27;
        goto LABEL_24;
      }

      goto LABEL_51;
    }
  }

  swift_unknownObjectRelease();
  v2 = v45;
  if (*(v45 + 96) > 3u)
  {
    if (*(v45 + 96) == 6)
    {

      goto LABEL_40;
    }
  }

  else
  {
    *(v45 + 96);
  }

  v30 = sub_2759BAAC8();

  if ((v30 & 1) == 0)
  {
    v35 = *(v45 + 2);
    v36 = *(v45 + 3);
    goto LABEL_45;
  }

LABEL_40:
  v31 = *(v45 + 2);
  v32 = *(v45 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C8, &qword_2759C4A58);
  sub_2759B9D68();
  if (v47)
  {
    v33 = *&v47[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage];
    v34 = v33;

    if (v33)
    {
      v1 = v34;
      MEMORY[0x277C84160]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_54;
      }

LABEL_43:
      sub_2759BA418();

      v46 = v51;
    }
  }

LABEL_45:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C8, &qword_2759C4A58);
  sub_2759B9D68();
  if (v49)
  {
    v37 = *&v49[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel];

    v39 = *&v37[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label];
    v38 = *&v37[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label + 8];
  }

  else
  {
    v38 = 0xE700000000000000;
    v39 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x277C840E0](v39, v38);

  v41 = *(v2 + 136);
  v40 = *(v2 + 144);
  v42 = *(v2 + 152);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
  sub_2759B9D68();
  MEMORY[0x277C840E0](45, 0xE100000000000000);

  sub_2759B9D78();

  return v46;
}

uint64_t sub_2758BDA24(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v41 = sub_2759B8DA8();
  v3 = *(v41 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v41);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v44 = MEMORY[0x277D84F90];
    sub_2759BA968();
    v11 = (a1 + 32);
    v12 = v9;
    do
    {
      v13 = *v11;
      v11 += 2;
      v14 = v13;
      sub_2759BA948();
      v15 = *(v44 + 16);
      sub_2759BA978();
      sub_2759BA988();
      sub_2759BA958();
      --v12;
    }

    while (v12);
    v16 = v44;
    v44 = v10;
    sub_2759BA968();
    v17 = (a1 + 40);
    do
    {
      v18 = *v17;
      v17 += 2;
      v19 = v18;
      sub_2759BA948();
      v20 = *(v44 + 16);
      sub_2759BA978();
      sub_2759BA988();
      sub_2759BA958();
      --v9;
    }

    while (v9);
    v10 = v44;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v21 = v42;
  v22 = *(v42 + 120);
  v23 = *(v42 + 128);
  v44 = v22;
  v45 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
  sub_2759B9D68();
  if (v43)
  {
    v38 = v24;
    v25 = v8;
    sub_2758BB52C(v8);
    v26 = *MEMORY[0x277CDF3D0];
    v27 = v3[13];
    v39 = v16;
    v28 = v23;
    v29 = v22;
    v30 = v40;
    v31 = v41;
    v27(v40, v26, v41);
    v32 = sub_2759B8D98();
    v33 = v3[1];
    v34 = v30;
    v22 = v29;
    v23 = v28;
    v35 = v39;
    v33(v34, v31);
    v33(v25, v31);
    v21 = v42;
    if ((v32 & 1) == 0)
    {
      v35 = v10;
    }

    sub_275868374(v35);
  }

  else
  {
  }

  result = type metadata accessor for ManageStorageDrilldownAnimationView();
  if (*(v21 + *(result + 72)) == 1)
  {
    v44 = v22;
    v45 = v23;
    result = sub_2759B9D68();
    if (v43)
    {
      v37 = *(v43 + 16);
      sub_275864E2C(1000000.0);
    }
  }

  return result;
}

uint64_t sub_2758BDD2C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v6 = type metadata accessor for ManageStorageDrilldownAnimationView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v29 - v12;
  v30 = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
  result = sub_2759B9D68();
  if (v29[1])
  {
    sub_2758697F0(a2, a3);
    v16 = v15;
    v18 = v17;

    if ((v18 & 1) == 0 && v16 < *(*(a1 + 160) + 16))
    {
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v19 = sub_2759B89A8();
      __swift_project_value_buffer(v19, qword_2815ADE70);
      v20 = sub_2759B8988();
      v21 = sub_2759BA668();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v16;
        _os_log_impl(&dword_275819000, v20, v21, "User tapped drilldown animation overlay index %ld", v22, 0xCu);
        MEMORY[0x277C85860](v22, -1, -1);
      }

      sub_2759BA4E8();
      v23 = sub_2759BA518();
      (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
      sub_2758BECCC(a1, v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2759BA4C8();
      v24 = sub_2759BA4B8();
      v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      v28 = MEMORY[0x277D85700];
      *(v27 + 16) = v24;
      *(v27 + 24) = v28;
      sub_2758BED30(v9, v27 + v25);
      *(v27 + v26) = v16;
      sub_27590A1A4(0, 0, v13, &unk_2759C4AD8, v27);
    }
  }

  return result;
}

uint64_t sub_2758BE040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_2759BA4C8();
  v5[9] = sub_2759BA4B8();
  v7 = sub_2759BA468();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_2758BE0D8, v7, v6);
}

uint64_t sub_2758BE0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[8];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v4[7];
  v7 = *(v6 + 160);
  if (*(v7 + 16) <= v5)
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x2821820A8](a1, a2, a3, a4);
  }

  sub_27586E058(v7 + 40 * v5 + 32, (v4 + 2));
  v8 = v4[5];
  v9 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v8);
  v10 = type metadata accessor for ManageStorageDrilldownAnimationView();
  v11 = (v6 + *(v10 + 64));
  v12 = *v11;
  v4[12] = *v11;
  if (v12)
  {
    v13 = (v4[7] + *(v10 + 68));
    v14 = *v13;
    v4[13] = *v13;
    if (v14)
    {
      v15 = *(MEMORY[0x277D231D0] + 4);

      v16 = swift_task_alloc();
      v4[14] = v16;
      *v16 = v4;
      v16[1] = sub_2758BE2F4;
      a1 = v12;
      a2 = v14;
      a3 = v8;
      a4 = v9;

      return MEMORY[0x2821820A8](a1, a2, a3, a4);
    }

    v18 = v13[1];
    sub_2759B8BB8();
    sub_2758BF284(&qword_280A0F8C8, MEMORY[0x277D232E8]);
  }

  else
  {
    v17 = v11[1];
    sub_2759B8C08();
    sub_2758BF284(&qword_280A0E6E0, MEMORY[0x277D23330]);
  }

  return sub_2759B9158();
}

uint64_t sub_2758BE2F4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_2758BE484;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_2758BE418;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2758BE418()
{
  v1 = v0[9];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2758BE484()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_2758BE504(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_2759BA9E8();
    if (v4)
    {
      v5 = v4;
      v6 = sub_2758AC6F8(v4, 0);
      sub_2758BE5FC((v6 + 4), v5, a1);
      v8 = v7;

      result = v6;
      if (v8 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    result = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  result = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_3:
  v2 = (2 * *(result + 16)) | 1;
  return result;
}

uint64_t type metadata accessor for ManageStorageDrilldownAnimationView()
{
  result = qword_280A0F8D8;
  if (!qword_280A0F8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758BE5FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2759BA9E8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2759BA9E8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_27589B02C(&qword_280A0FA38, &qword_280A0FA30, &unk_2759C4AC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA30, &unk_2759C4AC0);
            v9 = sub_2758ACA04(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ManageStorageAppViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2758BE7C8()
{
  sub_2758BEAF0(319, &qword_280A0F8E8, &unk_280A11C70, qword_2759C1240, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_2758BEAF0(319, &qword_280A0F8F0, &qword_280A0E808, &qword_2759CC1E0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2758BEAF0(319, &qword_280A0F8F8, &qword_280A0F8B8, &qword_2759C4900, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2758BEAF0(319, &qword_280A0F900, &qword_280A0F8C0, &qword_2759C4908, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2758BEAA4(319, &qword_280A0F908);
          if (v4 <= 0x3F)
          {
            sub_2758BEAA4(319, &qword_280A0F910);
            if (v5 <= 0x3F)
            {
              sub_2758BEAF0(319, &qword_280A0F918, &qword_280A0F920, &qword_2759D0380, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_2758BEB54();
                if (v7 <= 0x3F)
                {
                  sub_2758BEBAC(319, &qword_280A0E6D8, MEMORY[0x277D23330], &qword_280A0E6E0, MEMORY[0x277D23330]);
                  if (v8 <= 0x3F)
                  {
                    sub_2758BEBAC(319, &qword_280A0F930, MEMORY[0x277D232E8], &qword_280A0F8C8, MEMORY[0x277D232E8]);
                    if (v9 <= 0x3F)
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
}

void sub_2758BEAA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2759B9D98();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2758BEAF0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2758BEB54()
{
  if (!qword_280A0F928)
  {
    sub_2759B8DA8();
    v0 = sub_2759B8DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0F928);
    }
  }
}

void sub_2758BEBAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2758BF284(a4, a5);
    v8 = sub_2759B9178();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2758BEC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F938, &qword_2759C49E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758BECCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageDrilldownAnimationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758BED30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageDrilldownAnimationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758BEDAC()
{
  result = qword_280A0F998;
  if (!qword_280A0F998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F990, &qword_2759C4A38);
    sub_2758BEE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F998);
  }

  return result;
}

unint64_t sub_2758BEE38()
{
  result = qword_280A0F9A0;
  if (!qword_280A0F9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9A8, &qword_2759C4A40);
    sub_2758BEEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F9A0);
  }

  return result;
}

unint64_t sub_2758BEEC4()
{
  result = qword_280A0F9B0;
  if (!qword_280A0F9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9B8, &qword_2759C4A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F9B0);
  }

  return result;
}

uint64_t sub_2758BEF48()
{
  v1 = *(type metadata accessor for ManageStorageDrilldownAnimationView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2758BDA24(v2, v3);
}

uint64_t sub_2758BEFAC(CGFloat a1, CGFloat a2)
{
  v5 = *(type metadata accessor for ManageStorageDrilldownAnimationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2758BDD2C(v6, a1, a2);
}

unint64_t sub_2758BF024()
{
  result = qword_280A0F9F0;
  if (!qword_280A0F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F968, &qword_2759C4A10);
    sub_2758BF0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F9F0);
  }

  return result;
}

unint64_t sub_2758BF0B0()
{
  result = qword_280A0F9F8;
  if (!qword_280A0F9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9E8, &unk_2759C4AA0);
    sub_2758BF13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F9F8);
  }

  return result;
}

unint64_t sub_2758BF13C()
{
  result = qword_280A0FA00;
  if (!qword_280A0FA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9E0, &qword_2759CA1F0);
    sub_2758BF1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA00);
  }

  return result;
}

unint64_t sub_2758BF1C8()
{
  result = qword_280A0FA08;
  if (!qword_280A0FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F9D8, &unk_2759C4A90);
    sub_2758BF284(&qword_280A0E970, type metadata accessor for MicaPlayerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA08);
  }

  return result;
}

uint64_t sub_2758BF284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for ManageStorageDrilldownAnimationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 56);

  v12 = *(v0 + v3 + 72);

  v13 = *(v0 + v3 + 88);

  v14 = *(v0 + v3 + 104);

  v15 = *(v0 + v3 + 112);

  v16 = *(v0 + v3 + 120);

  v17 = *(v0 + v3 + 128);

  v18 = *(v0 + v3 + 144);

  v19 = *(v0 + v3 + 152);

  v20 = *(v0 + v3 + 160);

  v21 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_2759B8DA8();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  else
  {
    v23 = *(v5 + v21);
  }

  v24 = *(v5 + v1[16]);

  v25 = *(v5 + v1[17]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758BF4A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ManageStorageDrilldownAnimationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2758BF518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F970, &qword_2759C4A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2758BF588()
{
  result = qword_280A0FA20;
  if (!qword_280A0FA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0FA20);
  }

  return result;
}

uint64_t sub_2758BF5D4(uint64_t a1)
{
  v4 = *(type metadata accessor for ManageStorageDrilldownAnimationView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2758BE040(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2758BF6F4()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F988, &qword_2759C4A30);
  return sub_2759B9D78();
}

unint64_t sub_2758BF760()
{
  result = qword_280A0FA40;
  if (!qword_280A0FA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F958, &unk_2759C4A00);
    sub_27589B02C(&qword_280A0FA48, &qword_280A0F940, &qword_2759C49E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA40);
  }

  return result;
}

uint64_t sub_2758BF818(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v53[4] = *MEMORY[0x277D85DE8];
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v6 = (v2 + 16);
  v7 = objc_opt_self();
  v8 = sub_2759B8528();
  v53[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:v53];

  if (v9)
  {
    v10 = v53[0];
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v11 = v52;
      if (!*(v52 + 16))
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v12 = v53[0];
    v13 = sub_2759B8448();

    swift_willThrow();
  }

  v11 = sub_2758A2A88(MEMORY[0x277D84F90]);
  if (!*(v11 + 16))
  {
LABEL_11:

LABEL_12:
    v16 = sub_2758A2A88(MEMORY[0x277D84F90]);
    if (*(v16 + 16))
    {
      goto LABEL_13;
    }

LABEL_16:
    v19 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_17;
  }

LABEL_7:
  v14 = sub_27586F8A0(1635017060, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_275864C94(*(v11 + 56) + 32 * v14, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = v52;
  if (!*(v52 + 16))
  {
    goto LABEL_16;
  }

LABEL_13:
  v17 = sub_27586F8A0(0x726564616568, 0xE600000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_275864C94(*(v16 + 56) + 32 * v17, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = v52;
LABEL_17:
  v20 = MEMORY[0x277D84F90];
  v51 = a1;
  if (*(v19 + 16) && (v21 = sub_27586F8A0(0x734C52556E6F6369, 0xE800000000000000), (v22 & 1) != 0))
  {
    sub_275864C94(*(v19 + 56) + 32 * v21, v53);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
    if (swift_dynamicCast())
    {
      v23 = v52;
      goto LABEL_23;
    }
  }

  else
  {
  }

  v23 = MEMORY[0x277D84F90];
LABEL_23:
  v24 = 0;
  v53[0] = v20;
  p_prots = *(v23 + 16);
LABEL_24:
  v26 = v24;
  while (p_prots != v26)
  {
    if (v26 >= *(v23 + 16))
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_40;
    }

    v24 = (v26 + 1);
    v27 = *(v23 + 8 * v26 + 32);
    objc_allocWithZone(type metadata accessor for ManageStorageAppIconURL());

    v29 = ManageStorageAppIconURL.init(_:)(v28);
    v26 = v24;
    if (v29)
    {
      MEMORY[0x277C84160]();
      if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v20 = v53[0];
      goto LABEL_24;
    }
  }

  *(v3 + 32) = v20;
  p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
  if (*(v16 + 16))
  {
    v31 = sub_27586F8A0(0x6553656369766564, 0xED00006E6F697463);
    if (v32)
    {
      sub_275864C94(*(v16 + 56) + 32 * v31, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      if (swift_dynamicCast())
      {
        if (*(v52 + 16) && (v33 = sub_27586F8A0(0x73656369766564, 0xE700000000000000), (v34 & 1) != 0))
        {
          sub_275864C94(*(v52 + 56) + 32 * v33, v53);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA80, &unk_2759C4BD0);
          if (swift_dynamicCast())
          {
            v35 = *(v52 + 16);

            *v6 = v35;
            goto LABEL_43;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_280A0E338 != -1)
  {
    goto LABEL_59;
  }

LABEL_40:
  v36 = sub_2759B89A8();
  __swift_project_value_buffer(v36, qword_280A238A0);
  v37 = sub_2759B8988();
  v38 = sub_2759BA648();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_275819000, v37, v38, "ManageStorageBackupsDataModel: Missing a device section key", v39, 2u);
    MEMORY[0x277C85860](v39, -1, -1);
  }

LABEL_43:
  if (!*(v16 + 16))
  {
    goto LABEL_50;
  }

  v40 = sub_27586F8A0(0xD000000000000016, 0x80000002759E01C0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_275864C94(*(v16 + 56) + 32 * v40, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  if (!*(v52 + 16) || (v42 = sub_27586F8A0(0x73656369766564, 0xE700000000000000), (v43 & 1) == 0))
  {
LABEL_50:

    goto LABEL_51;
  }

  sub_275864C94(*(v52 + 56) + 32 * v42, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA80, &unk_2759C4BD0);
  if (swift_dynamicCast())
  {
    sub_27585A900(v51, a2);
    v44 = *(v52 + 16);

    *(v3 + 24) = v44;
    goto LABEL_56;
  }

LABEL_51:
  if (p_prots[103] != -1)
  {
    swift_once();
  }

  v45 = sub_2759B89A8();
  __swift_project_value_buffer(v45, qword_280A238A0);
  v46 = sub_2759B8988();
  v47 = sub_2759BA648();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_275819000, v46, v47, "ManageStorageBackupsDataModel: Missing a temporary device section key", v48, 2u);
    MEMORY[0x277C85860](v48, -1, -1);
  }

  sub_27585A900(v51, a2);

LABEL_56:
  v49 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2758BFFA4(uint64_t a1)
{
  v3 = sub_2759B8AF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v172 = (v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v173 = v168 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v181 = (v168 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v175 = v168 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v170 = v168 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v171 = v168 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v179 = v168 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v174 = v168 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v193 = v168 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v168 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v195 = v168 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v168 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v168 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v168 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v180 = v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v178 = v168 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = v168 - v43;
  v184 = v1;
  *(v1 + 16) = 0;
  v169 = (v1 + 16);
  *(v1 + 24) = 0;
  sub_2759B8C18();
  v185 = *(v4 + 48);
  v186 = v4 + 48;
  v45 = v185(v44, 1, v3);
  v182 = a1;
  v183 = v4;
  if (v45)
  {
    sub_27586BF04(v44, &qword_280A10DE0, &unk_2759CF4C0);
LABEL_6:
    v49 = sub_2758A289C(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v194 = v31;
  v46 = *(v4 + 16);
  v46(v36, v44, v3);
  sub_27586BF04(v44, &qword_280A10DE0, &unk_2759CF4C0);
  v46(v34, v36, v3);
  v47 = (*(v4 + 88))(v34, v3);
  v48 = *(v4 + 8);
  if (v47 != *MEMORY[0x277D23270])
  {
    v50 = *(v4 + 8);
    v48(v34, v3);
    type metadata accessor for DecodableStateError();
    sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError);
    v51 = swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
    v46(v53, v36, v3);
    *&v53[v54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
    swift_willThrow();
    v50(v36, v3);

    v31 = v194;
    goto LABEL_6;
  }

  v48(v36, v3);
  (*(v4 + 96))(v34, v3);
  v49 = *(*v34 + 16);

  v31 = v194;
LABEL_7:
  v55 = MEMORY[0x277D84F90];
  v56 = *(v49 + 16);
  v194 = v3;
  if (v56)
  {
    v57 = sub_27586F8A0(0x734C52556E6F6369, 0xE800000000000000);
    if (v58)
    {
      v59 = *(v49 + 56);
      v60 = v183;
      v192 = v183[9];
      v62 = v183 + 2;
      v61 = v183[2];
      v61(v31, v59 + v192 * v57, v3);

      v63 = v195;
      v61(v195, v31, v3);
      v190 = v60[11];
      v191 = v60 + 11;
      if (v190(v63, v3) == *MEMORY[0x277D23278])
      {
        v64 = v60[12];
        v177 = v60 + 12;
        v176 = v64;
        v64(v63, v3);
        v65 = *(*v63 + 16);

        v66 = v65;
        v67 = v183;

        v68 = v67[1];
        v195 = (v67 + 1);
        v189 = v68;
        v68(v31, v3);
        v69 = *(v66 + 16);
        if (v69)
        {
          v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v71 = MEMORY[0x277D84F90];
          v168[1] = v66;
          v72 = v66 + v70;
          v187 = *MEMORY[0x277D23270];
          v73 = v193;
          v188 = v62;
          do
          {
            v61(v26, v72, v3);
            v61(v73, v26, v3);
            v80 = v190(v73, v3);
            if (v80 == v187)
            {
              v189(v26, v3);
              v176(v73, v3);
              v81 = *(*v73 + 16);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v71 = sub_275870B4C(0, *(v71 + 2) + 1, 1, v71);
              }

              v83 = *(v71 + 2);
              v82 = *(v71 + 3);
              if (v83 >= v82 >> 1)
              {
                v71 = sub_275870B4C((v82 > 1), v83 + 1, 1, v71);
              }

              *(v71 + 2) = v83 + 1;
              *&v71[8 * v83 + 32] = v81;
            }

            else
            {
              v74 = v61;
              v75 = v189;
              v189(v73, v3);
              type metadata accessor for DecodableStateError();
              sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError);
              v76 = swift_allocError();
              v78 = v77;
              v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
              v74(v78, v26, v3);
              *(v78 + v79) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
              swift_willThrow();
              v75(v26, v3);
              v61 = v74;
            }

            v73 = v193;
            v72 += v192;
            --v69;
            v3 = v194;
          }

          while (v69);
          v195 = 0;

          goto LABEL_25;
        }

        v195 = 0;
      }

      else
      {
        v84 = v31;
        v85 = v60[1];
        v85(v63, v3);
        type metadata accessor for DecodableStateError();
        sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError);
        v86 = swift_allocError();
        v88 = v87;
        v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
        v61(v88, v84, v3);
        *&v88[v89] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA60, &qword_2759C4B50);
        swift_willThrow();

        v85(v84, v3);
        v195 = 0;
      }

      v71 = MEMORY[0x277D84F90];
LABEL_25:
      v55 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }
  }

  v195 = 0;

  v71 = MEMORY[0x277D84F90];
LABEL_26:
  v90 = 0;
  v91 = v55;
  v196 = v55;
  p_prots = *(v71 + 2);
  v93 = v184;
LABEL_27:
  v94 = v90;
  while (p_prots != v94)
  {
    if (v94 >= *(v71 + 2))
    {
      __break(1u);
LABEL_68:
      swift_once();
      goto LABEL_45;
    }

    v90 = (v94 + 1);
    v95 = *&v71[8 * v94 + 32];

    v97 = sub_2758C17A4(v96);
    v98 = objc_allocWithZone(type metadata accessor for ManageStorageAppIconURL());
    v99 = ManageStorageAppIconURL.init(_:)(v97);

    v94 = v90;
    if (v99)
    {
      MEMORY[0x277C84160](v100);
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v101 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v91 = v196;
      goto LABEL_27;
    }
  }

  *(v93 + 32) = v91;
  v102 = v178;
  sub_2759B8C18();
  v103 = v185(v102, 1, v3);
  p_prots = (&OBJC_PROTOCOL___RUIObjectModelDelegate + 16);
  v104 = v179;
  if (v103)
  {
    sub_27586BF04(v102, &qword_280A10DE0, &unk_2759CF4C0);
  }

  else
  {
    v105 = v183;
    v106 = v183[2];
    v107 = v174;
    v106(v174, v102, v3);
    sub_27586BF04(v102, &qword_280A10DE0, &unk_2759CF4C0);
    v106(v104, v107, v3);
    v108 = v105[11];
    v109 = v108(v104, v3);
    v110 = v105[1];
    if (v109 == *MEMORY[0x277D23270])
    {
      v195 = v105[1];
      v110(v107, v3);
      v111 = v105[12];
      v111(v104, v3);
      v112 = *(*v104 + 16);

      if (*(v112 + 16) && (v113 = sub_27586F8A0(0x73656369766564, 0xE700000000000000), (v114 & 1) != 0))
      {
        v115 = v171;
        v116 = v194;
        v106(v171, *(v112 + 56) + v183[9] * v113, v194);

        v117 = v170;
        v106(v170, v115, v116);
        if (v108(v117, v116) == *MEMORY[0x277D23278])
        {
          v111(v117, v116);
          v118 = *(*v117 + 16);

          (v195)(v115, v116);
          v119 = *(v118 + 16);

          *v169 = v119;
          v93 = v184;
          v90 = v181;
          v3 = v116;
          v71 = v180;
          p_prots = (&OBJC_PROTOCOL___RUIObjectModelDelegate + 16);
          goto LABEL_48;
        }

        v155 = v195;
        (v195)(v117, v116);
        type metadata accessor for DecodableStateError();
        sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError);
        v156 = v115;
        v157 = swift_allocError();
        v159 = v158;
        v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
        v106(v159, v156, v116);
        *&v159[v160] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA60, &qword_2759C4B50);
        swift_willThrow();

        v155(v156, v116);
        v93 = v184;
        v3 = v116;
      }

      else
      {

        v93 = v184;
        v3 = v194;
      }
    }

    else
    {
      v120 = v105[1];
      v110(v104, v3);
      type metadata accessor for DecodableStateError();
      sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError);
      v121 = swift_allocError();
      v122 = v107;
      v124 = v123;
      v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
      v106(v124, v122, v3);
      *&v124[v125] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
      swift_willThrow();
      v120(v122, v3);
    }

    p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
  }

  v71 = v180;
  v90 = v181;
  if (p_prots[103] != -1)
  {
    goto LABEL_68;
  }

LABEL_45:
  v126 = sub_2759B89A8();
  __swift_project_value_buffer(v126, qword_280A238A0);
  v127 = sub_2759B8988();
  v128 = sub_2759BA648();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 0;
    _os_log_impl(&dword_275819000, v127, v128, "ManageStorageBackupsDataModel: Missing a device section key", v129, 2u);
    MEMORY[0x277C85860](v129, -1, -1);
  }

LABEL_48:
  sub_2759B8C18();
  if (v185(v71, 1, v3))
  {
    sub_27586BF04(v71, &qword_280A10DE0, &unk_2759CF4C0);
  }

  else
  {
    v130 = v183;
    v131 = v183[2];
    v132 = v175;
    v131(v175, v71, v3);
    sub_27586BF04(v71, &qword_280A10DE0, &unk_2759CF4C0);
    v131(v90, v132, v3);
    v133 = v130[11];
    v134 = v133(v90, v3);
    v135 = v130[1];
    if (v134 == *MEMORY[0x277D23270])
    {
      v195 = v130[1];
      v135(v132, v3);
      v193 = v130[12];
      (v193)(v90, v3);
      count = (*v90)[2].count;

      if (*(count + 16) && (v137 = sub_27586F8A0(0x73656369766564, 0xE700000000000000), (v138 & 1) != 0))
      {
        v139 = v173;
        v140 = v194;
        v131(v173, (*(count + 56) + v183[9] * v137), v194);

        v141 = v172;
        v131(v172, v139, v140);
        if (v133(v141, v140) == *MEMORY[0x277D23278])
        {

          (v193)(v141, v140);
          v142 = (*v141)[2].count;

          (v195)(v173, v140);
          v143 = *(v142 + 16);

          v93 = v184;
          *(v184 + 24) = v143;
          return v93;
        }

        v161 = v195;
        (v195)(v141, v140);
        type metadata accessor for DecodableStateError();
        sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError);
        v162 = swift_allocError();
        v164 = v163;
        v165 = v140;
        v166 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
        v167 = v173;
        v131(v164, v173, v165);
        *&v164[v166] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA60, &qword_2759C4B50);
        swift_willThrow();

        v161(v167, v165);
      }

      else
      {
      }

      v93 = v184;
    }

    else
    {
      v144 = v130[1];
      v135(v90, v3);
      type metadata accessor for DecodableStateError();
      sub_2758C496C(&qword_280A0FA50, type metadata accessor for DecodableStateError);
      v145 = swift_allocError();
      v146 = v132;
      v148 = v147;
      v149 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
      v131(v148, v146, v3);
      *&v148[v149] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
      swift_willThrow();
      v144(v146, v3);
    }

    p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
  }

  if (p_prots[103] != -1)
  {
    swift_once();
  }

  v150 = sub_2759B89A8();
  __swift_project_value_buffer(v150, qword_280A238A0);
  v151 = sub_2759B8988();
  v152 = sub_2759BA648();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_275819000, v151, v152, "ManageStorageBackupsDataModel: Missing a temporary device section key", v153, 2u);
    MEMORY[0x277C85860](v153, -1, -1);
  }

  return v93;
}

uint64_t sub_2758C14DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D8, &qword_2759C4BE0);
    v2 = sub_2759BAA28();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_275864C94(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2758A2ECC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2758A2ECC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2758A2ECC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2759BA858();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2758A2ECC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2758C17A4(uint64_t a1)
{
  v2 = sub_2759B8AF8();
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
  v6 = *(*(v49 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v49);
  v48 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v47 = &v41 - v9;
  v53 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F400, &unk_2759C39C0);
    v10 = sub_2759BAA28();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v53 + 64;
  v12 = 1 << *(v53 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v53 + 64);
  v15 = (v12 + 63) >> 6;
  v46 = v52 + 16;
  v45 = v52 + 32;
  v42 = v10 + 8;

  v17 = 0;
  v44 = v11;
  v43 = v15;
  while (v14)
  {
    v21 = v17;
LABEL_14:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = v22 | (v21 << 6);
    v24 = v52;
    v25 = (*(v53 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v49;
    v29 = v47;
    v30 = v51;
    (*(v52 + 16))(&v47[*(v49 + 48)], *(v53 + 56) + *(v52 + 72) * v23, v51);
    *v29 = v27;
    v29[1] = v26;
    v31 = v48;
    sub_2758C3B0C(v29, v48);
    v32 = *(v28 + 48);
    v34 = *v31;
    v33 = v31[1];
    (*(v24 + 32))(v50, v31 + v32, v30);

    swift_dynamicCast();
    sub_2758A2ECC(&v54, v56);
    sub_2758A2ECC(v56, v57);
    sub_2758A2ECC(v57, &v55);
    result = sub_27586F8A0(v34, v33);
    v35 = result;
    if (v36)
    {
      v18 = (v10[6] + 16 * result);
      v19 = v18[1];
      *v18 = v34;
      v18[1] = v33;

      v20 = (v10[7] + 32 * v35);
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = sub_2758A2ECC(&v55, v20);
    }

    else
    {
      if (v10[2] >= v10[3])
      {
        goto LABEL_20;
      }

      *(v42 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v10[6] + 16 * result);
      *v37 = v34;
      v37[1] = v33;
      result = sub_2758A2ECC(&v55, (v10[7] + 32 * result));
      v38 = v10[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v10[2] = v40;
    }

    v17 = v21;
    v11 = v44;
    v15 = v43;
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v17;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2758C1BAC()
{
  v1 = sub_2759B8AF8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v30 - v7);
  v32 = v0;
  v9 = sub_2758C1F20();
  v11 = MEMORY[0x277D84F98];
  if (v10)
  {
    v12 = v10;
    v30 = "BACKUP_CAPTION_DEVICES";
    v31 = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = 1;
    *v8 = v13;
    v14 = v2[13];
    v14(v8, *MEMORY[0x277D23258], v1);
    v15 = v2[4];
    v15(v6, v8, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v11;
    sub_2759068D8(v6, 0xD000000000000010, v30 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
    v17 = v33;
    v30 = "backupHasCaption";
    v18 = swift_allocObject();
    *(v18 + 16) = v31;
    *(v18 + 24) = v12;
    *v8 = v18;
    v14(v8, *MEMORY[0x277D232A0], v1);
    v15(v6, v8, v1);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v17;
    sub_2759068D8(v6, 0xD000000000000011, v30 | 0x8000000000000000, v19);
    v11 = v33;
  }

  v20 = swift_allocObject();
  v21 = v32;
  *(v20 + 16) = *(v32 + 16);
  *v8 = v20;
  v22 = *MEMORY[0x277D23248];
  v23 = v2[13];
  v23(v8, v22, v1);
  v24 = v2[4];
  v24(v6, v8, v1);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v11;
  sub_2759068D8(v6, 0x6F43656369766564, 0xEB00000000746E75, v25);
  v26 = v33;
  v31 = "del";
  v27 = swift_allocObject();
  *(v27 + 16) = *(v21 + 24);
  *v8 = v27;
  v23(v8, v22, v1);
  v24(v6, v8, v1);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v26;
  sub_2759068D8(v6, 0xD000000000000014, v31 | 0x8000000000000000, v28);
  return v33;
}

uint64_t sub_2758C1F20()
{
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_2759B83C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ED80, &unk_2759C4BC0);
  result = swift_allocObject();
  *(result + 16) = xmmword_2759C17A0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v8;
    *(result + 32) = v7;
    v9 = sub_2759BA268();

    return v9;
  }

  return result;
}

uint64_t sub_2758C2094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA68, &qword_2759C4B58);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA70, &qword_2759C4B60);
  v3 = *(MEMORY[0x277D858E8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2758C2190;
  v5 = *(v0 + 24);

  return MEMORY[0x282200600](v0 + 16, v1, v2, 0, 0, &unk_2759C4B70, v5, v1);
}

uint64_t sub_2758C2190()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2758C228C, 0, 0);
}

void *sub_2758C228C()
{
  v33 = v1;
  v32 = *(v1 + 16);

  sub_2758C300C(&v32);

  v2 = 0;
  v3 = v32;
  v4 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v5 = v3[2];
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = 16 * v2 + 40;
  while (v5 != v2)
  {
    if (v2 >= v3[2])
    {
      __break(1u);
LABEL_23:
      v10 = sub_2759BA9E8();
      if (!v10)
      {
        goto LABEL_24;
      }

      goto LABEL_11;
    }

    v8 = *(v3 + v7);
    v7 += 16;
    ++v2;
    if (v8)
    {
      v0 = v8;
      MEMORY[0x277C84160]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v6 = v32;
      goto LABEL_2;
    }
  }

  v0 = v6;

  if (v0 >> 62)
  {
    goto LABEL_23;
  }

  v10 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_24:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_11:
  v29 = v1;
  v32 = v4;
  result = sub_275950970(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = v32;
  v31 = objc_opt_self();
  sub_2758C3C28();
  v13 = 0;
  v14 = v0;
  v30 = v0 & 0xC000000000000001;
  v15 = v0;
  do
  {
    if (v30)
    {
      v16 = MEMORY[0x277C846A0](v13, v14);
    }

    else
    {
      v16 = *(v14 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = [v31 whiteColor];
    v19 = [v18 CGColor];

    v20 = sub_275908060(v19, 40.0, 40.0);
    if (!sub_27594991C())
    {
      sub_2759B9C28();
    }

    v21 = sub_2759BA748();
    v22 = [v21 CGColor];

    v23 = sub_275908060(v22, 40.0, 40.0);
    v32 = v12;
    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      sub_275950970((v24 > 1), v25 + 1, 1);
      v12 = v32;
    }

    ++v13;
    v12[2] = v25 + 1;
    v26 = &v12[2 * v25];
    v26[4] = v20;
    v26[5] = v23;
    v14 = v15;
  }

  while (v10 != v13);

  v1 = v29;
LABEL_25:
  v27 = sub_27595CF50(v12);

  v28 = *(v1 + 8);

  return v28(v27);
}

uint64_t sub_2758C2620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA78, &qword_2759C4B90);
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758C2734, 0, 0);
}

uint64_t sub_2758C2734()
{
  v1 = *(*(v0 + 104) + 32);
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2759BA9E8())
  {
    v3 = 0;
    v30 = i;
    v32 = v1 & 0xFFFFFFFFFFFFFF8;
    v33 = v1 & 0xC000000000000001;
    v31 = v1;
    while (1)
    {
      if (v33)
      {
        v5 = MEMORY[0x277C846A0](v3, v1);
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_18;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v34 = v3 + 1;
      v8 = *(v0 + 112);
      v7 = *(v0 + 120);
      v9 = *(v0 + 104);
      v10 = sub_2759BA518();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v7, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v9;
      v12[5] = v6;
      v12[6] = v3;
      sub_2758AD388(v7, v8);
      LODWORD(v7) = (*(v11 + 48))(v8, 1, v10);

      v14 = v6;
      v15 = *(v0 + 112);
      if (v7 == 1)
      {
        sub_27586BF04(*(v0 + 112), &unk_280A0E510, &qword_2759C33C0);
        if (!*v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_2759BA508();
        (*(v11 + 8))(v15, v10);
        if (!*v13)
        {
LABEL_13:
          v17 = 0;
          v19 = 0;
          goto LABEL_14;
        }
      }

      v16 = v12[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_2759BA468();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_14:
      v20 = **(v0 + 96);
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_2759C4BA0;
      *(v21 + 24) = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA68, &qword_2759C4B58);
      v22 = v19 | v17;
      if (v19 | v17)
      {
        v22 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      v4 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v22;
      *(v0 + 64) = v20;
      swift_task_create();

      sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
      ++v3;
      v1 = v31;
      if (v34 == v30)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v23 = *(v0 + 144);
  v24 = **(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA68, &qword_2759C4B58);
  sub_2759BA498();
  *(v0 + 152) = MEMORY[0x277D84F90];
  v25 = *(MEMORY[0x277D856B0] + 4);
  v26 = swift_task_alloc();
  *(v0 + 160) = v26;
  *v26 = v0;
  v26[1] = sub_2758C2B28;
  v27 = *(v0 + 144);
  v28 = *(v0 + 128);

  return MEMORY[0x2822002E8](v0 + 72, 0, 0, v28);
}

uint64_t sub_2758C2B28()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2758C2C24, 0, 0);
}

uint64_t sub_2758C2C24()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v2 == 2)
  {
    v13 = *(v0 + 152);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v16 = *(v0 + 88);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    *v16 = v13;

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    if (v2 != 1)
    {
      v20 = *(v0 + 72);
      v3 = *(v0 + 152);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v0 + 152);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_275870DA8(0, v5[2] + 1, 1, v5);
      }

      v7 = v5[2];
      v6 = v5[3];
      v8 = v20;
      if (v7 >= v6 >> 1)
      {
        v18 = sub_275870DA8((v6 > 1), v7 + 1, 1, v5);
        v8 = v20;
        v5 = v18;
      }

      v5[2] = v7 + 1;
      *&v5[2 * v7 + 4] = v8;
      *(v0 + 152) = v5;
    }

    v9 = *(MEMORY[0x277D856B0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_2758C2B28;
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);

    return MEMORY[0x2822002E8](v0 + 72, 0, 0, v12);
  }
}

uint64_t sub_2758C2DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_2758C2E90;

  return sub_2758C3DF4();
}

uint64_t sub_2758C2E90(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2758C2F90, 0, 0);
}

uint64_t sub_2758C2F90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 24);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2758C2FB0()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2758C300C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2758C38F0(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_2759BAA88();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB0, &qword_2759C2688);
      v7 = sub_2759BA408();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2758C3160(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2758C3160(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2758C38DC(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_2758C36D8((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_275870CA4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_275870CA4((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_2758C36D8((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2758C36D8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_2758C3904(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_2758C39F8;

  return v6(v2 + 16);
}

uint64_t sub_2758C39F8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2758C3B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758C3B7C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_27585F7A0;

  return sub_2758C2620(a1, a2, v2);
}

unint64_t sub_2758C3C28()
{
  result = qword_280A0EF48;
  if (!qword_280A0EF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0EF48);
  }

  return result;
}

uint64_t sub_2758C3C74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2758C2DE4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2758C3D3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585A7E4;

  return sub_2758C3904(a1, v5);
}

uint64_t sub_2758C3DF4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  v0[2] = v2;
  v3 = sub_2759B8508();
  v0[3] = v3;
  v4 = *(v3 - 8);
  v0[4] = v4;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2758C3F44;

  return sub_2758F6610(v2);
}

uint64_t sub_2758C3F44()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2758C4040, 0, 0);
}

uint64_t sub_2758C4040()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_27586BF04(v3, &unk_280A0EB10, &qword_2759C0740);
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = v0[2];

    v8 = v0[1];

    return v8(0);
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
    v0[9] = [objc_opt_self() sharedSession];
    v10 = *(MEMORY[0x277CC9D20] + 4);
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_2758C41D0;
    v12 = v0[7];

    return MEMORY[0x28211ED00](v12, 0);
  }
}

uint64_t sub_2758C41D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v9 = *v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 112) = v3;

  if (v3)
  {
    v7 = sub_2758C4644;
  }

  else
  {

    v7 = sub_2758C42F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2758C42F0()
{
  v43 = v0;
  v2 = v0[11];
  v1 = v0[12];
  sub_2758755BC(v2, v1);
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_2759B8528();
  v5 = [v3 initWithData_];

  sub_27585A900(v2, v1);
  if (v5)
  {
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[11];
    (*(v0[4] + 8))(v0[7], v0[3]);
    sub_27585A900(v8, v6);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[3];
    v12 = v0[4];
    v13 = sub_2759B89A8();
    __swift_project_value_buffer(v13, qword_2815ADE70);
    (*(v12 + 16))(v9, v10, v11);
    v14 = sub_2759B8988();
    v15 = sub_2759BA648();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    v20 = v0[6];
    v21 = v0[7];
    v22 = v0[3];
    v23 = v0[4];
    if (v16)
    {
      v41 = v0[12];
      v24 = swift_slowAlloc();
      v40 = v19;
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136315138;
      sub_2758C496C(&qword_280A10300, MEMORY[0x277CC9260]);
      v38 = v17;
      v39 = v21;
      v26 = sub_2759BAA98();
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v20, v22);
      v30 = sub_2758937B8(v26, v28, &v42);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_275819000, v14, v15, "ManageStorageDrilldownAnimateOverlayImageDataModel, unable to create image from data, url: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x277C85860](v25, -1, -1);
      MEMORY[0x277C85860](v24, -1, -1);

      sub_27585A900(v40, v41);
      v29(v39, v22);
    }

    else
    {

      sub_27585A900(v19, v18);
      v31 = *(v23 + 8);
      v31(v20, v22);
      v31(v21, v22);
    }

    v5 = 0;
  }

  v33 = v0[6];
  v32 = v0[7];
  v34 = v0[5];
  v35 = v0[2];

  v36 = v0[1];

  return v36(v5);
}

uint64_t sub_2758C4644()
{
  v35 = v0;

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  (*(v4 + 16))(v3, v2, v5);
  v7 = v1;
  v8 = sub_2759B8988();
  v9 = sub_2759BA648();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 112);
  v12 = *(v0 + 56);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v15 = *(v0 + 24);
  if (v10)
  {
    v33 = *(v0 + 56);
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v16 = 136315394;
    sub_2758C496C(&qword_280A10300, MEMORY[0x277CC9260]);
    v17 = sub_2759BAA98();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_2758937B8(v17, v19, &v34);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v31 = v23;
    _os_log_impl(&dword_275819000, v8, v9, "ManageStorageDrilldownAnimateOverlayImageDataModel, error loading icon from url: %s, error: %@", v16, 0x16u);
    sub_27586BF04(v31, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x277C85860](v32, -1, -1);
    MEMORY[0x277C85860](v16, -1, -1);

    v20(v33, v15);
  }

  else
  {

    v24 = *(v14 + 8);
    v24(v13, v15);
    v24(v12, v15);
  }

  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 40);
  v28 = *(v0 + 16);

  v29 = *(v0 + 8);

  return v29(0);
}

uint64_t sub_2758C496C(unint64_t *a1, void (*a2)(uint64_t))
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

const char *FeatureFlag.domain.getter()
{
  if (*v0)
  {
    return "StorageManagement";
  }

  else
  {
    return "iCloudSettings";
  }
}

const char *FeatureFlag.feature.getter()
{
  if (*v0)
  {
    return "StorageUIV2";
  }

  else
  {
    return "stelvio";
  }
}

uint64_t FeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for FeatureFlag;
  v4[4] = sub_2758C4A6C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2759B86A8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_2758C4A6C()
{
  result = qword_280A0FA88;
  if (!qword_280A0FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FA88);
  }

  return result;
}

uint64_t FeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}

uint64_t sub_2758C4B64()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}