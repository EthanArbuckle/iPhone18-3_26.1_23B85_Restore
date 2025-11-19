uint64_t sub_275626C40()
{
  v0 = sub_275796280();
  __swift_allocate_value_buffer(v0, qword_280C4FEF8);
  __swift_project_value_buffer(v0, qword_280C4FEF8);
  sub_275626D60();
  sub_275798530();
  return sub_275796290();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_275626D60()
{
  result = qword_280C4FED8;
  if (!qword_280C4FED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C4FED8);
  }

  return result;
}

void _s13iCloudQuotaUI9AnalyticsC3logyyAC5EventVFZ_0()
{
  if (qword_280C4FEF0 != -1)
  {
    swift_once();
  }

  v0 = sub_275796280();
  __swift_project_value_buffer(v0, qword_280C4FEF8);

  oslog = sub_275796270();
  v1 = sub_2757982D0();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;

    v4 = Analytics.Event.description.getter();
    v6 = v5;

    v7 = sub_27562792C(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_275623000, oslog, v1, "User hit event: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x277C81E50](v3, -1, -1);
    MEMORY[0x277C81E50](v2, -1, -1);
  }
}

uint64_t Analytics.Event.description.getter()
{
  v1 = 0x3E6C696E3CLL;
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  sub_275798710();

  v13 = v3;
  v14 = v2;
  MEMORY[0x277C80130](0x656E72756F6A203ALL, 0xEA00000000002079);
  if (v5)
  {
    strcpy(v12, "inAppBanner_");
    BYTE5(v12[1]) = 0;
    HIWORD(v12[1]) = -5120;
    MEMORY[0x277C80130](v4, v5);
    v7 = v12[0];
    v8 = v12[1];
  }

  else
  {
    v8 = 0xE500000000000000;
    v7 = 0x3E6C696E3CLL;
  }

  MEMORY[0x277C80130](v7, v8);

  MEMORY[0x277C80130](0x626972747461202CLL, 0xEE00203A73657475);
  if (v6)
  {
    v1 = sub_275797EC0();
    v10 = v9;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x277C80130](v1, v10);

  return v13;
}

void sub_275627760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

unint64_t sub_27562792C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2756279F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_275627B04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2756279F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2756C5718(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_275798760();
    a6 = v11;
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

uint64_t sub_275627B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_275627C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
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

void sub_275627F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275628260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_2756289F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275628A38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275628A7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275628AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_275796530();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_275628BE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_275796530();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275628D2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275628D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2757978D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275628DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2757978D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_275628E48(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_275796530();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_275628FCC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_275796530();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_27562915C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275629194()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2756291D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_275629290(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27562934C()
{

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2756293DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_275629498(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275629590()
{
  v1 = (type metadata accessor for MeterView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_275796810();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_275796710();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v11 | 7);
}

uint64_t sub_275629750()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275629788()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2756297CC()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_275796E90();

    return sub_275796990();
  }

  else
  {
    sub_275796A50();
    swift_getWitnessTable();
    sub_275796E40();
    sub_275796990();
    sub_275798550();
    swift_getWitnessTable();
    sub_275796A50();
    swift_getWitnessTable();
    sub_275796E40();
    return sub_275796990();
  }
}

uint64_t sub_275629930()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_275796E90();
    sub_275796990();
  }

  else
  {
    sub_275796A50();
    swift_getWitnessTable();
    sub_275796E40();
    sub_275796990();
    sub_275798550();
    swift_getWitnessTable();
    sub_275796A50();
    swift_getWitnessTable();
    sub_275796E40();
    sub_275796990();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_275629B30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDCF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDCF0);
  sub_2757969F0();
  sub_2756CFA44(&qword_2809FDD18, &qword_2809FDCF0);
  sub_2756E1084(&qword_2809FDD20, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD30);
  sub_2756CFA44(&qword_2809FDD38, &qword_2809FDD30);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2756DC79C();
  sub_2756E0944();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275629D80()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275629DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275629E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275629E98()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_275629EF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275629F38()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_275629FF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562A028()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_27562A078()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562A0C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562A100()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562A138()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562A180()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562A1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27562A28C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27562A33C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562A378()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562A3B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE1D0);
  type metadata accessor for ManageStorageDestination();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE1D8);
  sub_2756F50C0();
  sub_2756F66C8(&qword_2809FE220, type metadata accessor for ManageStorageDestination);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27562A4B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562A4EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562A528()
{
  v1 = type metadata accessor for IconWithBundleIdentifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_275796530();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[9], v8);
  v9(v0 + v3 + v1[10], v8);
  v10 = v1[11];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE378);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = v1[12];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v16, v2 | 7);
}

uint64_t sub_27562A78C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_275796530();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_27562A910(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_275796530();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_27562AA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_27562ABD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE360);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_27562AD10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE398);
  sub_2756CFA44(&qword_2809FE3A0, &qword_2809FE398);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27562ADB8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562ADF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27562AE68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27562AEDC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE4D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE4F0);
  sub_275702F08();
  sub_2756DC79C();
  sub_2756CFA44(&qword_2809FE500, &qword_2809FE4F0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27562AFC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562B000()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27562B040()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27562B080()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562B0C4()
{
  v1 = type metadata accessor for PhotoGridView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[5];
  v6 = sub_2757962E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v9 = v1[6];
  if (!v8(v4 + v9, 1, v6))
  {
    (*(v7 + 8))(v4 + v9, v6);
  }

  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = v1[8];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  v15 = v1[9];
  if (!v13(v4 + v15, 1, v11))
  {
    (*(v12 + 8))(v4 + v15, v11);
  }

  v16 = v1[10];
  v17 = sub_2757964D0();
  (*(*(v17 - 8) + 8))(v4 + v16, v17);

  return MEMORY[0x2821FE8E8](v0, v3 + v19, v2 | 7);
}

uint64_t sub_27562B39C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_2757964D0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_27562B520(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_2757964D0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_27562B774()
{
  v1 = sub_275796060();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_27562B83C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE890);
  sub_27570FE38();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27562B904()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562B93C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE8A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27562B9B0()
{
  MEMORY[0x277C81EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562B9F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEA10);
  sub_275796990();
  sub_2756CFA44(&qword_2809FEA18, &qword_2809FEA10);
  return swift_getWitnessTable();
}

uint64_t sub_27562BAA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562BAD8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562BB1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB48);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_27562BBD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27562BC8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEB20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE4F0);
  sub_275717380();
  sub_2756DC79C();
  sub_2756CFA44(&qword_2809FE500, &qword_2809FE4F0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27562BD78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEB98);
  sub_275796990();
  sub_2756CFA44(&qword_2809FEBA0, &qword_2809FEB98);
  return swift_getWitnessTable();
}

uint64_t sub_27562BE24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562BE5C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27562BE9C()
{
  v1 = (type metadata accessor for ManageStorageSpecifierView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3;

  v6 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2757967F0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_27562C128()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECC0);
  sub_275720758();
  sub_2756DC79C();
  sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27562C2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27562C374(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27562C4AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562C4EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562C570()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_2757967F0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27562C690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF128);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_27562C758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF128);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27562C84C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF1D8);
  sub_275796990();
  sub_2756CFA44(&qword_2809FF1E0, &qword_2809FF1D8);
  return swift_getWitnessTable();
}

uint64_t sub_27562C8F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27562C944(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2D8);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[15]];

  return v16(v17, a2, v15);
}

char *sub_27562CB28(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2D8);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[15]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_27562CD10()
{
  v1 = type metadata accessor for AppMessageTextView();
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);

  sub_27573E818(*(v3 + 24), *(v3 + 32));
  sub_27573E6A4(*(v3 + 40), *(v3 + 48));

  v4 = v1[9];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v8 = v1[10];
  v9 = *(v6 + 48);
  if (!v9(v3 + v8, 1, v5))
  {
    v7(v3 + v8, v5);
  }

  v10 = v1[11];
  if (!v9(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[12];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v15 = v1[13];
  if (!v14(v3 + v15, 1, v12))
  {
    (*(v13 + 8))(v3 + v15, v12);
  }

  v16 = v1[14];
  if (!v14(v3 + v16, 1, v12))
  {
    (*(v13 + 8))(v3 + v16, v12);
  }

  v17 = v1[15];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v3 + v17, v18);
  }

  return MEMORY[0x2821FE8E8](v0, ((v2 + 24) & ~v2) + v21, v2 | 7);
}

uint64_t sub_27562D060()
{
  v1 = type metadata accessor for AppMessageTextView();
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);

  sub_27573E818(*(v3 + 24), *(v3 + 32));
  sub_27573E6A4(*(v3 + 40), *(v3 + 48));

  v4 = v1[9];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v8 = v1[10];
  v9 = *(v6 + 48);
  if (!v9(v3 + v8, 1, v5))
  {
    v7(v3 + v8, v5);
  }

  v10 = v1[11];
  if (!v9(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v11 = v1[12];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v15 = v1[13];
  if (!v14(v3 + v15, 1, v12))
  {
    (*(v13 + 8))(v3 + v15, v12);
  }

  v16 = v1[14];
  if (!v14(v3 + v16, 1, v12))
  {
    (*(v13 + 8))(v3 + v16, v12);
  }

  v17 = v1[15];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v3 + v17, 1, v18))
  {
    (*(v19 + 8))(v3 + v17, v18);
  }

  return MEMORY[0x2821FE8E8](v0, ((v2 + 24) & ~v2) + v21, v2 | 7);
}

uint64_t sub_27562D3C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562D408()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562D450()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562D498()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562D4D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562D520()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562D558()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562D590()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562D5E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562D620()
{
  v1 = sub_2757967F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_27562D6E4()
{
  sub_275796990();
  sub_275796990();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF490);
  type metadata accessor for TipView.Action();
  sub_275798140();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECC0);
  swift_getWitnessTable();
  sub_2757977D0();
  sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  swift_getWitnessTable();
  sub_275797670();
  swift_getTupleTypeMetadata2();
  sub_275797860();
  swift_getWitnessTable();
  sub_275797710();
  swift_getTupleTypeMetadata2();
  sub_275797860();
  swift_getWitnessTable();
  sub_275797670();
  return swift_getWitnessTable();
}

uint64_t sub_27562D910()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TipView();
  v3 = *(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v3 + 32) & ~v3;
  (*(*(v1 - 8) + 8))(v0 + v5, v1);

  if (*(v0 + v5 + *(v2 + 52)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_27562DA4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF538);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27562DABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27562DBD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562DC0C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_27562DC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27562DCC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27562DD34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27562DD74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562DEEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF888);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF890);
  sub_275760130();
  sub_275760464();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27562DFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_27562E094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_27562E1A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27562E1F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_27562E254(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_275796530();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_27562E400(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_275796530();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_27562E5C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562E608()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562E650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_275796530();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_27562E74C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_275796530();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_27562E85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275796530();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_27562E974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_275796530();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_27562EA88()
{
  v1 = type metadata accessor for ManageStorageView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2757967F0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_275779B38(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8), *(v5 + *(v1 + 28) + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27562EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFD50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27562EC88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFD50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27562ED74()
{
  v1 = type metadata accessor for ManageStorageAlertButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  v7 = sub_2757966E0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v5 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27562EEC8()
{
  v1 = type metadata accessor for ManageStorageView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2757967F0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_275779B38(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8), *(v5 + *(v1 + 28) + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27562F014()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562F054()
{
  v1 = sub_2757967F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_27562F118()
{
  MEMORY[0x277C81EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562F150()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562F190()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562F1C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562F208()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27562F240()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562F2AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27562F310()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_27562F358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27562F414(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27562F4C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A00240);
  sub_2757969F0();
  sub_2756CFA44(&qword_280A00258, &qword_280A00240);
  sub_27578DD44(&qword_2809FDD20, MEMORY[0x277CDDAB8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27562F5A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_27562F5C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_27562FA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __DiskSpaceDiagnosticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DiskSpaceDiagnosticsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_275632840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2756369D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_275637A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, char a15)
{
  _Block_object_dispose(&a15, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2756387F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose((v9 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getFALaunchServicesHookClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FALaunchServicesHook");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFALaunchServicesHookClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFALaunchServicesHookClass_block_invoke_cold_1();
    return FamilyCircleUILibrary();
  }

  return result;
}

uint64_t FamilyCircleUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FamilyCircleUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27A65AA18;
    v5 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FamilyCircleUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getINDaemonConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65AA30;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFACircleStateControllerClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleStateControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFACircleStateControllerClass_block_invoke_cold_1();
    return __getFACircleContextClass_block_invoke(v3);
  }

  return result;
}

Class __getFACircleContextClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FACircleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFACircleContextClass_block_invoke_cold_1();
    return __getFACircleEventTypeInitiateSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getFACircleEventTypeInitiateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FamilyCircleUILibrary();
  result = dlsym(v2, "FACircleEventTypeInitiate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleEventTypeInitiateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_27563BC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27563C710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27563C9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSUManagerClientClass_block_invoke(uint64_t a1)
{
  SoftwareUpdateServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SUManagerClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSUManagerClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSUManagerClientClass_block_invoke_cold_1();
    SoftwareUpdateServicesLibrary();
  }
}

void SoftwareUpdateServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SoftwareUpdateServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SoftwareUpdateServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27A65ABA0;
    v3 = 0;
    SoftwareUpdateServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SoftwareUpdateServicesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SoftwareUpdateServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SoftwareUpdateServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSUScanOptionsClass_block_invoke(uint64_t a1)
{
  SoftwareUpdateServicesLibrary();
  result = objc_getClass("SUScanOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSUScanOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSUScanOptionsClass_block_invoke_cold_1();
    return __getSUDownloadPolicyFactoryClass_block_invoke(v3);
  }

  return result;
}

Class __getSUDownloadPolicyFactoryClass_block_invoke(uint64_t a1)
{
  SoftwareUpdateServicesLibrary();
  result = objc_getClass("SUDownloadPolicyFactory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSUDownloadPolicyFactoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSUDownloadPolicyFactoryClass_block_invoke_cold_1();
    return [(_ICQUIHelperFunctions *)v3 scaledImageURL:v4, v5];
  }

  return result;
}

Class __getINDaemonConnectionClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65AC18;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_27564053C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275640B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _handleNSPDarwinNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = a3;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Received darwin notification %@, new account ", buf, 0xCu);
  }

  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___handleNSPDarwinNotification_block_invoke;
    block[3] = &unk_27A65A820;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

Class __getINDaemonConnectionClass_block_invoke_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65AE90;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_1 = result;
  return result;
}

uint64_t _handlePushReceivedDarwinNotification(uint64_t a1, void *a2)
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "received push received darwin notification for Banner View", v5, 2u);
  }

  return [a2 _handlePushReceivedDarwinNotification];
}

id _DynamicFontWithStyleTraits(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a1 addingSymbolicTraits:a2 options:1];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

id _PointImageOfColor(void *a1)
{
  v1 = a1;
  v5.width = 1.0;
  v5.height = 1.0;
  UIGraphicsBeginImageContext(v5);
  [v1 set];

  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  UIRectFill(v6);
  v2 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v2;
}

id ICQUSLogForCategory(uint64_t a1)
{
  if (a1)
  {
    ICQUSLogForCategory_cold_1();
  }

  if (ICQUSLogForCategory_loggingToken != -1)
  {
    ICQUSLogForCategory_cold_2();
  }

  v1 = ICQUSLogForCategory_logObjects_0;

  return v1;
}

void __ICQUSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.iCloudQuotaUI.UsageSettings", "Base");
  v1 = ICQUSLogForCategory_logObjects_0;
  ICQUSLogForCategory_logObjects_0 = v0;
}

id getPSGBackupUtilsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPSGBackupUtilsClass_softClass;
  v7 = getPSGBackupUtilsClass_softClass;
  if (!getPSGBackupUtilsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPSGBackupUtilsClass_block_invoke;
    v3[3] = &unk_27A65A9F8;
    v3[4] = &v4;
    __getPSGBackupUtilsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_27565C3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSGBackupUtilsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!GeneralSettingsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __GeneralSettingsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65B238;
    v6 = 0;
    GeneralSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (GeneralSettingsUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSGBackupUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSGBackupUtilsClass_block_invoke_cold_1();
  }

  getPSGBackupUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GeneralSettingsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GeneralSettingsUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_275660DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275662790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2756637A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_275665774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

Class __getFACircleStateControllerClass_block_invoke_0(uint64_t a1)
{
  FamilyCircleUILibrary_0();
  result = objc_getClass("FACircleStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleStateControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFACircleStateControllerClass_block_invoke_cold_1();
    return FamilyCircleUILibrary_0();
  }

  return result;
}

uint64_t FamilyCircleUILibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FamilyCircleUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27A65B708;
    v5 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = FamilyCircleUILibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!FamilyCircleUILibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getFACircleContextClass_block_invoke_0(uint64_t a1)
{
  FamilyCircleUILibrary_0();
  result = objc_getClass("FACircleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleContextClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFACircleContextClass_block_invoke_cold_1();
    return __getFACircleEventTypeInitiateSymbolLoc_block_invoke_0(v3);
  }

  return result;
}

void *__getFACircleEventTypeInitiateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = FamilyCircleUILibrary_0();
  result = dlsym(v2, "FACircleEventTypeInitiate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleEventTypeInitiateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getINDaemonConnectionClass_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65B748;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_27566D08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2756703BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPSGBackupUtilsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPSGBackupUtilsClass_softClass_0;
  v7 = getPSGBackupUtilsClass_softClass_0;
  if (!getPSGBackupUtilsClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPSGBackupUtilsClass_block_invoke_0;
    v3[3] = &unk_27A65A9F8;
    v3[4] = &v4;
    __getPSGBackupUtilsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_275671270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275672000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getPSGBackupUtilsClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!GeneralSettingsUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __GeneralSettingsUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65B9C0;
    v6 = 0;
    GeneralSettingsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (GeneralSettingsUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSGBackupUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSGBackupUtilsClass_block_invoke_cold_1();
  }

  getPSGBackupUtilsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GeneralSettingsUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  GeneralSettingsUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65B9D8;
    v6 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (HealthKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
  }

  getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_275678DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27567C89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27567CA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBRGetFileNameFromServerInfoBlobSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudDocsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A65BB40;
    v7 = 0;
    CloudDocsLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = CloudDocsLibraryCore_frameworkLibrary;
    if (CloudDocsLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CloudDocsLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BRGetFileNameFromServerInfoBlob");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBRGetFileNameFromServerInfoBlobSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudDocsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudDocsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAFUICloudStorageViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AssistantUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AssistantUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65BB58;
    v6 = 0;
    AssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AssistantUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AFUICloudStorageViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFUICloudStorageViewControllerClass_block_invoke_cold_1();
  }

  getAFUICloudStorageViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getHKHealthManageStorageViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65BB70;
    v6 = 0;
    HealthUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (HealthUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKHealthManageStorageViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthManageStorageViewControllerClass_block_invoke_cold_1();
  }

  getHKHealthManageStorageViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_27567F918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2756838A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275683D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65BCB0;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_3)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_3 = result;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_275686130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275687138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2756879F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AppDeleted(uint64_t a1, uint64_t a2)
{
  v3 = +[ICQUsageStorageMonitor sharedMonitor];
  [v3 fetchSystemSizeStrings];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"AppDeletionCompleted" object:a2];
}

void sub_27568BF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27568C490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27568D034(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_27568D188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27568E128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A65C118;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_4)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_4 = result;
  return result;
}

id getFACircleStateControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFACircleStateControllerClass_softClass_1;
  v7 = getFACircleStateControllerClass_softClass_1;
  if (!getFACircleStateControllerClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFACircleStateControllerClass_block_invoke_1;
    v3[3] = &unk_27A65A9F8;
    v3[4] = &v4;
    __getFACircleStateControllerClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_27568ECF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27568FB10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_27568FD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFACircleStateControllerClass_block_invoke_1(uint64_t a1)
{
  FamilyCircleUILibrary_1();
  result = objc_getClass("FACircleStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleStateControllerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFACircleStateControllerClass_block_invoke_cold_1();
    return FamilyCircleUILibrary_1();
  }

  return result;
}

uint64_t FamilyCircleUILibrary_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FamilyCircleUILibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27A65C180;
    v5 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = FamilyCircleUILibraryCore_frameworkLibrary_1;
  v1 = v3[0];
  if (!FamilyCircleUILibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getFACircleContextClass_block_invoke_1(uint64_t a1)
{
  FamilyCircleUILibrary_1();
  result = objc_getClass("FACircleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleContextClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFACircleContextClass_block_invoke_cold_1();
    return __getFACircleEventTypeInitiateSymbolLoc_block_invoke_1(v3);
  }

  return result;
}

void *__getFACircleEventTypeInitiateSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = FamilyCircleUILibrary_1();
  result = dlsym(v2, "FACircleEventTypeInitiate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleEventTypeInitiateSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void backupStateChanged()
{
  v0 = +[ICQQuotaRequestManager sharedManager];
  [v0 noteQuotaInfoChanged];
}

__CFString *NSPPrivacyProxyUserTierDecription(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"Free";
  }

  else if (a1 == 2)
  {
    v2 = @"Subscriber";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", a1];
  }

  return v2;
}

__CFString *NSPPrivacyProxyAccountTypeDescription(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"Free";
  }

  else if (a1 == 2)
  {
    v2 = @"Subscriber";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", a1];
  }

  return v2;
}

__CFString *ICQInternetPrivacyViewModelStatusDescription(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"None";
  }

  else
  {
    return off_27A65C3F0[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2756A1B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2756A2588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2756A5804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2756A69AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2756A74D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void AuthSubmitted(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 pushSpinner];
  [v2 unregisterAuthNotification];
}

void sub_2756AC6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2756B0F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2756B4368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _handleReceivedDarwinNotification(uint64_t a1, void *a2, const __CFString *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = a3;
    v13 = 2112;
    v14 = a2;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "received darwin notification %@ %@", &v11, 0x16u);
  }

  v6 = a2;
  if (v6)
  {
    if (CFStringCompare(a3, @"kSSPurchaseRequestFinishedNotification", 1uLL) == kCFCompareEqualTo)
    {
      [v6 _handlePurchaseRequestSucceededNotification];
      goto LABEL_18;
    }
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "observer is nil", &v11, 2u);
    }

    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Unable to cast observer to ICQUpgradeStorageHook", &v11, 2u);
    }
  }

  if (CFStringCompare(a3, @"kSSPurchaseRequestFinishedNotification", 1uLL))
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "did not match notification name", &v11, 2u);
    }
  }

  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = a3;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Invalid darwin notification : %@ received", &v11, 0xCu);
  }

LABEL_18:
}

void sub_2756BBBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getFACircleContextClass_block_invoke_2(uint64_t a1)
{
  FamilyCircleUILibrary_2();
  result = objc_getClass("FACircleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleContextClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFACircleContextClass_block_invoke_cold_1();
    return FamilyCircleUILibrary_2();
  }

  return result;
}

uint64_t FamilyCircleUILibrary_2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __FamilyCircleUILibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27A65CA20;
    v5 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = FamilyCircleUILibraryCore_frameworkLibrary_2;
  v1 = v3[0];
  if (!FamilyCircleUILibraryCore_frameworkLibrary_2)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getFACircleEventTypeInitiateSymbolLoc_block_invoke_2(uint64_t a1)
{
  v2 = FamilyCircleUILibrary_2();
  result = dlsym(v2, "FACircleEventTypeInitiate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFACircleEventTypeInitiateSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getFACircleStateControllerClass_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  FamilyCircleUILibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FACircleStateController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFACircleStateControllerClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = __getFACircleStateControllerClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_1_4(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id sub_2756C2E6C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_2756C2EB0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
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

uint64_t sub_2756C2FBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2756C3008(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_2756C3074(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_275796610();
  return sub_2756C5BC4;
}

uint64_t sub_2756C313C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD668);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD660);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2756C3274(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD668);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI9ICQFPItem__parent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD660);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C5BC8;
}

uint64_t sub_2756C3454()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2756C34C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_2756C350C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2756C3578()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t (*sub_2756C35E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_275796610();
  return sub_2756C3688;
}

void sub_2756C368C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2756C3710(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_2757965F0();
  return swift_endAccess();
}

uint64_t sub_2756C3788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD680);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD678);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2756C38C0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD680);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI9ICQFPItem__image;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD678);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C3A30;
}

void sub_2756C3A34(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_275796600();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_275796600();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_2756C3B9C(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD658);
  sub_2757965E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD670);
  sub_2757965E0();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_2756C3C48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD678);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD660);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC13iCloudQuotaUI9ICQFPItem__parent;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD658);
  sub_2757965E0();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC13iCloudQuotaUI9ICQFPItem__image;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD670);
  sub_2757965E0();
  (*(v4 + 32))(v1 + v12, v6, v3);
  *(v1 + 16) = a1;
  return v1;
}

void sub_2756C3E30()
{
  v1 = (*(*v0 + 128))();
  if (v1)
  {
  }

  else
  {
    v2 = (*(*v0 + 248))();
  }

  v3 = (*(*v0 + 176))(v2);
  if (v3)
  {
  }

  else
  {
    v4 = *(*v0 + 240);

    v4();
  }
}

void sub_2756C3F08()
{
  v1 = (*(*v0 + 104))();
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [objc_allocWithZone(MEMORY[0x277CDAAD8]) initWithFPItem:v1 size:-1 scale:60.0 representationTypes:{60.0, v4}];
  v6 = [objc_opt_self() sharedGenerator];
  v8[4] = sub_2756C457C;
  v9 = v0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2756C45C8;
  v8[3] = &block_descriptor;
  v7 = _Block_copy(v8);

  [v6 generateBestRepresentationForRequest:v5 completionHandler:v7];
  _Block_release(v7);
}

id sub_2756C40A0(void *a1, void *a2, uint64_t a3)
{
  v37 = a3;
  v38 = a1;
  v4 = sub_2757978A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2757978C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275796280();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
    v17 = sub_275700E70();
    (*(v13 + 16))(v15, v17, v12);
    v18 = a2;
    v19 = sub_275796270();
    v20 = sub_2757982F0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_2757989F0();
      v25 = sub_27562792C(v23, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_275623000, v19, v20, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x277C81E50](v22, -1, -1);
      MEMORY[0x277C81E50](v21, -1, -1);
    }

    else
    {
    }

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v27 = v37;
    result = v38;
    v35 = v8;
    v36 = v9;
    v34 = v5;
    if (v38)
    {
      result = [v38 UIImage];
      if (result)
      {
        v28 = result;
        sub_2756C557C(0, &qword_2809FEE60);
        v29 = sub_275798340();
        v30 = swift_allocObject();
        *(v30 + 16) = v27;
        *(v30 + 24) = v28;
        aBlock[4] = sub_2756C5B54;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2756C4584;
        aBlock[3] = &block_descriptor_20;
        v31 = _Block_copy(aBlock);

        v32 = v28;

        sub_2757978B0();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_2756C566C(&qword_2809FD6A8, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
        sub_2756C56B4();
        sub_2757985B0();
        MEMORY[0x277C80470](0, v11, v7, v31);
        _Block_release(v31);

        (*(v34 + 8))(v7, v4);
        return (*(v36 + 8))(v11, v35);
      }
    }
  }

  return result;
}

uint64_t sub_2756C4584(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2756C45C8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2756C466C()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = (*(*v0 + 104))();
  v3 = [v2 itemID];

  v5[4] = sub_2756C4CDC;
  v6 = v0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2756C4CE4;
  v5[3] = &block_descriptor_9;
  v4 = _Block_copy(v5);

  [v1 fetchParentsForItemID:v3 recursively:0 completionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_2756C47AC(uint64_t a1, void *a2, uint64_t a3)
{
  v39 = a1;
  v5 = sub_2757978A0();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2757978C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275796280();
  v13 = *(v12 - 8);
  result = MEMORY[0x28223BE20]();
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = a2;
    v18 = sub_275700E70();
    (*(v13 + 16))(v16, v18, v12);
    v19 = a2;

    v20 = sub_275796270();
    v21 = sub_2757982F0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v22 = 138412546;
      v24 = (*(*a3 + 104))();
      *(v22 + 4) = v24;
      *v23 = v24;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_2757989F0();
      v27 = sub_27562792C(v25, v26, aBlock);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_275623000, v20, v21, "Unable to get parent for item %@, error: %s", v22, 0x16u);
      sub_2756C5AE8(v23);
      MEMORY[0x277C81E50](v23, -1, -1);
      v28 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x277C81E50](v28, -1, -1);
      MEMORY[0x277C81E50](v22, -1, -1);
    }

    else
    {
    }

    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v36 = v5;
    v37 = v9;
    v29 = v39;
    if (v39)
    {
      sub_2756C557C(0, &qword_2809FEE60);
      v30 = v38;

      v31 = sub_275798340();
      v32 = swift_allocObject();
      *(v32 + 16) = a3;
      *(v32 + 24) = v29;
      aBlock[4] = sub_2756C55C4;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2756C4584;
      aBlock[3] = &block_descriptor_14;
      v33 = _Block_copy(aBlock);

      sub_2757978B0();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2756C566C(&qword_2809FD6A8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
      sub_2756C56B4();
      v34 = v7;
      v35 = v36;
      sub_2757985B0();
      MEMORY[0x277C80470](0, v11, v34, v33);
      _Block_release(v33);

      (*(v30 + 8))(v34, v35);
      return (*(v37 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_2756C4CE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2756C557C(0, &qword_2809FD6A0);
    v4 = sub_2757980E0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_2756C4D88()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI9ICQFPItem__parent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD660);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI9ICQFPItem__image;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD678);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_2756C4E48()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI9ICQFPItem__parent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD660);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI9ICQFPItem__image;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD678);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2756C4F44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ICQFPItem();
  result = sub_2757965C0();
  *a1 = result;
  return result;
}

uint64_t sub_2756C4F84(uint64_t a1, uint64_t a2)
{
  sub_2756C557C(0, &qword_2809FD688);
  v4 = (*(*a1 + 104))();
  v5 = (*(*a2 + 104))();
  LOBYTE(a1) = sub_2757983D0();

  return a1 & 1;
}

void sub_2756C5040()
{
  v1 = (*(*v0 + 104))();
  sub_2757983E0();
}

uint64_t sub_2756C50B4()
{
  v1 = sub_275798A40();
  v2 = (*(*v0 + 104))(v1);
  sub_2757983E0();

  return sub_275798A70();
}

uint64_t sub_2756C5120()
{
  v1 = *v0;
  v2 = sub_275798A40();
  v3 = (*(*v1 + 104))(v2);
  sub_2757983E0();

  return sub_275798A70();
}

void sub_2756C5190()
{
  v1 = (*(**v0 + 104))();
  sub_2757983E0();
}

uint64_t type metadata accessor for ICQFPItem()
{
  result = qword_280A006C0;
  if (!qword_280A006C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2756C52A8()
{
  v1 = sub_275798A40();
  v2 = (*(**v0 + 104))(v1);
  sub_2757983E0();

  return sub_275798A70();
}

uint64_t sub_2756C5314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2756C557C(0, &qword_2809FD688);
  v4 = (*(*v2 + 104))();
  v5 = (*(*v3 + 104))();
  LOBYTE(v2) = sub_2757983D0();

  return v2 & 1;
}

void sub_2756C53D8()
{
  sub_2756C5528(319, &qword_2809FD690, &qword_2809FD658);
  if (v0 <= 0x3F)
  {
    sub_2756C5528(319, &qword_2809FD698, &qword_2809FD670);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
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

void sub_2756C5528(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_275796640();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2756C557C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_2756C55C4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    result = sub_275798640();
    if (!result)
    {
      return (*(*v2 + 136))(result);
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return (*(*v2 + 136))(result);
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x277C80840](0, v3);
    return (*(*v2 + 136))(result);
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
    return (*(*v2 + 136))(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_2756C566C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2756C56B4()
{
  result = qword_2809FD6B0;
  if (!qword_2809FD6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809FEE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD6B0);
  }

  return result;
}

uint64_t sub_2756C5718(uint64_t a1, unint64_t a2)
{
  v3 = sub_2756C5764(a1, a2);
  sub_2756C5894(&unk_288449080);
  return v3;
}

uint64_t sub_2756C5764(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2756C5980(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_275798760();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_275798020();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2756C5980(v10, 0);
        result = sub_275798700();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2756C5894(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2756C59F4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2756C5980(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2756C59F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_2756C5AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2756C5B54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 184);
  v4 = v2;
  return v3(v2);
}

uint64_t sub_2756C5BCC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2756C5C10(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2756C5C60()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    sub_275796500();
    sub_2756C9C74(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2756C5CEC()
{
  sub_275796500();
  sub_2756C9C74(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return sub_275796AA0();
}

uint64_t sub_2756C5D60()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_275796500();
  v4 = sub_2756C9C74(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

uint64_t sub_2756C5DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScaledAsyncImageView() + 28);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScaledAsyncImageView()
{
  result = qword_280A00960;
  if (!qword_280A00960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2756C5EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScaledAsyncImageView() + 32);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756C5F2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScaledAsyncImageView() + 36);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756C5FA8()
{
  type metadata accessor for ScaledAsyncImageView();
}

uint64_t sub_2756C6024@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C8);
  v75 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v74 = &v69 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6D0);
  MEMORY[0x28223BE20](v76);
  v77 = &v69 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6D8);
  MEMORY[0x28223BE20](v88);
  v78 = (&v69 - v5);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6E0);
  v73 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v72 = &v69 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6E8);
  MEMORY[0x28223BE20](v91);
  v93 = &v69 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6F0);
  MEMORY[0x28223BE20](v81);
  v82 = &v69 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6F8);
  MEMORY[0x28223BE20](v92);
  v83 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v85 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v69 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD708);
  v80 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v79 = &v69 - v14;
  v15 = sub_2757962E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD710);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v69 - v23;
  v25 = sub_2756C6EC0();
  v26 = type metadata accessor for ScaledAsyncImageView();
  v27 = *(v1 + *(v26 + 40));
  v28 = *(v22 + 56);
  sub_2756C9074(v1 + *(v26 + 44), &v24[v28], &qword_2809FD6C0);
  if (v27)
  {
    if ((*(v16 + 48))(&v24[v28], 1, v15) == 1)
    {
      type metadata accessor for ICQUISwiftHelperFunctions();

      v29 = v86;
      sub_275761980(v25, v86);
      v30 = swift_allocObject();
      *(v30 + 16) = v27;
      sub_2756C9074(v29, v85, &qword_2809FD700);
      v31 = swift_allocObject();
      v31[2] = sub_2756C8E20;
      v31[3] = v30;
      v31[4] = nullsub_1;
      v31[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD758);
      sub_2756C8FF0();
      v32 = v72;
      sub_275796680();
      sub_2756C92B4(v29, &qword_2809FD700);
      v33 = v73;
      v34 = v84;
      (*(v73 + 16))(v82, v32, v84);
      swift_storeEnumTagMultiPayload();
      sub_2756C74C0(&qword_2809FD718, &qword_2809FD708);
      sub_2756C74C0(&qword_2809FD730, &qword_2809FD6E0);
      v35 = v83;
      sub_275796D80();
      sub_2756C9074(v35, v93, &qword_2809FD6F8);
      swift_storeEnumTagMultiPayload();
      sub_2756C7404();
      sub_2756C7514();
      sub_275796D80();

      sub_2756C92B4(v35, &qword_2809FD6F8);
      return (*(v33 + 8))(v32, v34);
    }

    v78 = *(v16 + 32);
    v42 = &v24[v28];
    v43 = v87;
    v44 = v15;
    v78(v87, v42, v15);
    type metadata accessor for ICQUISwiftHelperFunctions();

    v45 = v86;
    v71 = v25;
    sub_275761980(v25, v86);
    v46 = swift_allocObject();
    *(v46 + 16) = v27;
    v70 = v16;
    v47 = *(v16 + 16);
    v48 = v44;
    v69 = v44;
    v47(v19, v43, v44);
    v49 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v50 = swift_allocObject();
    v78((v50 + v49), v19, v48);
    sub_2756C9074(v45, v85, &qword_2809FD700);
    v51 = swift_allocObject();
    v51[2] = sub_2756C9CBC;
    v51[3] = v46;
    v51[4] = sub_2756C9164;
    v51[5] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD740);
    sub_2756C8D64();
    v52 = v79;
    sub_275796680();
    sub_2756C92B4(v45, &qword_2809FD700);
    v53 = v80;
    v54 = v90;
    (*(v80 + 16))(v82, v52, v90);
    swift_storeEnumTagMultiPayload();
    sub_2756C74C0(&qword_2809FD718, &qword_2809FD708);
    sub_2756C74C0(&qword_2809FD730, &qword_2809FD6E0);
    v55 = v83;
    sub_275796D80();
    sub_2756C9074(v55, v93, &qword_2809FD6F8);
    swift_storeEnumTagMultiPayload();
    sub_2756C7404();
    sub_2756C7514();
    sub_275796D80();

    sub_2756C92B4(v55, &qword_2809FD6F8);
    (*(v53 + 8))(v52, v54);
    return (*(v70 + 8))(v87, v69);
  }

  v37 = v2;
  v39 = v74;
  v38 = v75;
  v84 = v37;
  if ((*(v16 + 48))(&v24[v28], 1, v15) != 1)
  {
    v56 = *(v16 + 32);
    v57 = &v24[v28];
    v58 = v87;
    v59 = v15;
    v56(v87, v57, v15);
    type metadata accessor for ICQUISwiftHelperFunctions();
    v60 = v86;
    v71 = v25;
    sub_275761980(v25, v86);
    v70 = v16;
    v61 = *(v16 + 16);
    v69 = v59;
    v61(v19, v58, v59);
    v62 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v63 = swift_allocObject();
    v56((v63 + v62), v19, v59);
    sub_2756C9074(v60, v85, &qword_2809FD700);
    v64 = swift_allocObject();
    v64[2] = sub_2756C75D0;
    v64[3] = 0;
    v64[4] = sub_2756C9CC4;
    v64[5] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD740);
    sub_2756C8D64();
    v65 = v79;
    sub_275796680();
    sub_2756C92B4(v60, &qword_2809FD700);
    v66 = v80;
    v67 = v90;
    (*(v80 + 16))(v77, v65, v90);
    swift_storeEnumTagMultiPayload();
    sub_2756C74C0(&qword_2809FD718, &qword_2809FD708);
    sub_2756C74C0(&qword_2809FD720, &qword_2809FD6C8);
    v68 = v78;
    sub_275796D80();
    sub_2756C9074(v68, v93, &qword_2809FD6D8);
    swift_storeEnumTagMultiPayload();
    sub_2756C7404();
    sub_2756C7514();
    sub_275796D80();

    sub_2756C92B4(v68, &qword_2809FD6D8);
    (*(v66 + 8))(v65, v67);
    return (*(v70 + 8))(v87, v69);
  }

  type metadata accessor for ICQUISwiftHelperFunctions();
  sub_275761980(v25, v86);
  sub_275796690();
  v40 = v84;
  (*(v38 + 16))(v77, v39, v84);
  swift_storeEnumTagMultiPayload();
  sub_2756C74C0(&qword_2809FD718, &qword_2809FD708);
  sub_2756C74C0(&qword_2809FD720, &qword_2809FD6C8);
  v41 = v78;
  sub_275796D80();
  sub_2756C9074(v41, v93, &qword_2809FD6D8);
  swift_storeEnumTagMultiPayload();
  sub_2756C7404();
  sub_2756C7514();
  sub_275796D80();

  sub_2756C92B4(v41, &qword_2809FD6D8);
  return (*(v38 + 8))(v39, v40);
}

uint64_t sub_2756C6EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v1 = (MEMORY[0x28223BE20])();
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v29 - v4;
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = sub_275795CB0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v29 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v33 = [objc_allocWithZone(MEMORY[0x277D7F360]) init];
  if (*(v0 + 24))
  {
    v34 = type metadata accessor for ScaledAsyncImageView();

    v35 = v0;
    sub_275796520();
    v30 = v12;

    sub_275795CA0();

    v17 = *(v9 + 48);
    v18 = v17(v7, 1, v8);
    v31 = v9;
    if (v18 == 1)
    {
      sub_2756C92B4(v7, &qword_2809FD700);
    }

    else
    {
      (*(v9 + 32))(v16, v7, v8);
      v19 = sub_275795C70();
      [v33 setURL1x_];

      (*(v9 + 8))(v16, v8);
    }

    sub_275796520();

    v20 = v33;
    sub_275795CA0();

    if (v17(v5, 1, v8) == 1)
    {
      sub_2756C92B4(v5, &qword_2809FD700);
    }

    else
    {
      v21 = v31;
      v22 = v29;
      (*(v31 + 32))(v29, v5, v8);
      v23 = sub_275795C70();
      [v20 setURL2x_];

      (*(v21 + 8))(v22, v8);
    }

    sub_275796520();

    v24 = v32;
    sub_275795CA0();

    if (v17(v24, 1, v8) == 1)
    {
      sub_2756C92B4(v24, &qword_2809FD700);
    }

    else
    {
      v26 = v30;
      v25 = v31;
      (*(v31 + 32))(v30, v24, v8);
      v27 = sub_275795C70();
      [v20 setURL3x_];

      (*(v25 + 8))(v26, v8);
    }

    return v20;
  }

  else
  {
    sub_275796500();
    sub_2756C9C74(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

unint64_t sub_2756C7404()
{
  result = qword_2809FD728;
  if (!qword_2809FD728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD6F8);
    sub_2756C74C0(&qword_2809FD718, &qword_2809FD708);
    sub_2756C74C0(&qword_2809FD730, &qword_2809FD6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD728);
  }

  return result;
}

uint64_t sub_2756C74C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2756C7514()
{
  result = qword_2809FD738;
  if (!qword_2809FD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD6D8);
    sub_2756C74C0(&qword_2809FD718, &qword_2809FD708);
    sub_2756C74C0(&qword_2809FD720, &qword_2809FD6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD738);
  }

  return result;
}

uint64_t sub_2756C75E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x78336C7275;
  v7 = 0x6C6F686563616C70;
  v8 = 0xEB00000000726564;
  if (a1 != 4)
  {
    v7 = 0x646F4D6567616D69;
    v8 = 0xEE00737265696669;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x78316C7275;
  if (a1 != 1)
  {
    v9 = 0x78326C7275;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      v13 = 862745205;
      goto LABEL_27;
    }

    if (a2 == 4)
    {
      v12 = 0xEB00000000726564;
      if (v10 != 0x6C6F686563616C70)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = 0xEE00737265696669;
      if (v10 != 0x646F4D6567616D69)
      {
LABEL_32:
        v14 = sub_275798980();
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      v12 = 0xE500000000000000;
      if (a2 == 1)
      {
        v13 = 829190773;
      }

      else
      {
        v13 = 845967989;
      }

LABEL_27:
      if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7800000000))
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v12 = 0xE200000000000000;
    if (v10 != 25705)
    {
      goto LABEL_32;
    }
  }

LABEL_30:
  if (v11 != v12)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_2756C77C0()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756C78C4()
{
  sub_275797FF0();
}

uint64_t sub_2756C79B8()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756C7AB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756C9C28();
  *a1 = result;
  return result;
}

void sub_2756C7AE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x78336C7275;
  v7 = 0xEB00000000726564;
  v8 = 0x6C6F686563616C70;
  if (v2 != 4)
  {
    v8 = 0x646F4D6567616D69;
    v7 = 0xEE00737265696669;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x78316C7275;
  if (v2 != 1)
  {
    v9 = 0x78326C7275;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2756C7BA4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x78336C7275;
  v4 = 0x6C6F686563616C70;
  if (v1 != 4)
  {
    v4 = 0x646F4D6567616D69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x78316C7275;
  if (v1 != 1)
  {
    v5 = 0x78326C7275;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2756C7C5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756C9C28();
  *a1 = result;
  return result;
}

uint64_t sub_2756C7C9C(uint64_t a1)
{
  v2 = sub_2756C9260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756C7CD8(uint64_t a1)
{
  v2 = sub_2756C9260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2756C7D14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_275796590();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v56 - v7;
  v8 = sub_275796530();
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v69 = &v56 - v14;
  v15 = sub_275795D60();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v72 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD768);
  v73 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for ScaledAsyncImageView();
  MEMORY[0x28223BE20](v20);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[2] = MEMORY[0x277D84F90];
  sub_275796500();
  sub_2756C9C74(&qword_2809FD6B8, MEMORY[0x277D23330]);
  v23 = sub_275796AA0();
  v22[3] = v23;
  v22[4] = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2756C9260();
  v25 = v74;
  sub_275798A80();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v26 = v72;
    v59 = v23;
    v57 = v22;
    v58 = v20;
    v74 = a1;
    LOBYTE(v75) = 0;
    v27 = sub_2757988D0();
    v29 = v19;
    if (!v28)
    {
      sub_275795D50();
      v31 = sub_275795D40();
      v33 = v32;
      (*(v66 + 8))(v26, v67);
      v28 = v33;
      v27 = v31;
    }

    v34 = v58;
    v35 = v57;
    v36 = v70;
    *v57 = v27;
    v35[1] = v28;
    v72 = v28;
    LOBYTE(v75) = 1;
    sub_2756C9C74(&qword_2809FD770, MEMORY[0x277D23340]);
    v37 = v69;
    sub_275798910();
    v38 = v35 + v34[7];
    v67 = *(v71 + 32);
    v67(v38, v37, v36);
    LOBYTE(v75) = 2;
    v39 = v68;
    v69 = 0;
    sub_275798910();
    v40 = v39;
    v41 = v67;
    v67(v57 + v34[8], v40, v36);
    LOBYTE(v75) = 3;
    sub_275798910();
    v42 = v57;
    v41(v57 + v34[9], v65, v36);
    sub_2757962E0();
    LOBYTE(v75) = 4;
    sub_2756C9C74(&qword_2809FD778, MEMORY[0x277D231A8]);
    v43 = v61;
    sub_2757988E0();
    sub_2756C9314(v43, v42 + v34[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD780);
    LOBYTE(v75) = 5;
    sub_2756C9384();
    sub_2757988E0();
    v44 = v42;
    v45 = v77;
    if (v77)
    {
      v46 = *(v77 + 16);
      v47 = v73;
      if (v46)
      {
        v69 = v17;
        v70 = v29;
        v76 = MEMORY[0x277D84F90];
        sub_2756C8E50(0, v46, 0);
        v48 = v76;
        v49 = v63;
        v50 = *(v64 + 16);
        v51 = v45 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v71 = *(v64 + 72);
        v72 = v50;
        v52 = (v64 + 8);
        v64 += 16;
        do
        {
          v53 = v62;
          (v72)(v62, v51, v49);
          sub_275796580();
          v49 = v63;
          (*v52)(v53, v63);
          v76 = v48;
          v55 = *(v48 + 16);
          v54 = *(v48 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_2756C8E50((v54 > 1), v55 + 1, 1);
            v49 = v63;
            v48 = v76;
          }

          *(v48 + 16) = v55 + 1;
          sub_27562F5A8(&v75, v48 + 40 * v55 + 32);
          v51 += v71;
          --v46;
        }

        while (v46);
        (*(v73 + 8))(v70, v69);

        v44 = v57;
      }

      else
      {

        (*(v47 + 8))(v29, v17);
        v48 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      (*(v73 + 8))(v29, v17);
      v48 = 0;
    }

    *(v44 + v58[10]) = v48;
    sub_2756C9438(v44, v60);
    __swift_destroy_boxed_opaque_existential_0(v74);
    return sub_2756C949C(v44);
  }
}

uint64_t sub_2756C87A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756C9C74(&qword_2809FD798, type metadata accessor for ScaledAsyncImageView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2756C8828(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756C9C74(&qword_2809FD7A0, type metadata accessor for ScaledAsyncImageView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2756C88A4(uint64_t a1)
{
  v2 = sub_2756C9C74(&qword_2809FD7A0, type metadata accessor for ScaledAsyncImageView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2756C8920(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756C9C74(&qword_2809FD7F0, type metadata accessor for ScaledAsyncImageView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2756C89C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (sub_275796960())
  {
    a2(&v7);
    swift_retain_n();
    sub_275796D80();
  }

  else
  {
    a4();
    sub_275796D80();
  }

  return v7;
}

uint64_t sub_2756C8ACC@<X0>(void (*a1)(uint64_t *__return_ptr)@<X1>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v13 = a3;
  v5 = sub_2757962E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD808);
  MEMORY[0x28223BE20](v9);
  v11 = (&v13 - v10);
  if (sub_275796960())
  {
    a1(&v14);
    *v11 = v14;
    swift_storeEnumTagMultiPayload();
    sub_2756C9C74(&qword_2809FD750, MEMORY[0x277D231A8]);
    swift_retain_n();
    sub_275796D80();
  }

  else
  {
    a2(0);
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_2756C9C74(&qword_2809FD750, MEMORY[0x277D231A8]);
    sub_275796D80();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_2756C8D64()
{
  result = qword_2809FD748;
  if (!qword_2809FD748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD740);
    sub_2756C9C74(&qword_2809FD750, MEMORY[0x277D231A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD748);
  }

  return result;
}

uint64_t sub_2756C8E20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275797540();
  *a1 = result;
  return result;
}

void *sub_2756C8E50(void *a1, int64_t a2, char a3)
{
  result = sub_2756C8E70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2756C8E70(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD7F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2756C8FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2756C89C0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

unint64_t sub_2756C8FF0()
{
  result = qword_2809FD760;
  if (!qword_2809FD760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD760);
  }

  return result;
}

uint64_t sub_2756C9074(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = sub_2757962E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2756C9168@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2757962E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2756C9260()
{
  result = qword_280A006D0[0];
  if (!qword_280A006D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A006D0);
  }

  return result;
}

uint64_t sub_2756C92B4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2756C9314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2756C9384()
{
  result = qword_2809FD788;
  if (!qword_2809FD788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD780);
    sub_2756C9C74(&qword_2809FD790, MEMORY[0x277D23390]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD788);
  }

  return result;
}

uint64_t sub_2756C9438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScaledAsyncImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756C949C(uint64_t a1)
{
  v2 = type metadata accessor for ScaledAsyncImageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2756C94F8()
{
  sub_2756C9C74(&qword_2809FD798, type metadata accessor for ScaledAsyncImageView);
  sub_2756C9C74(&qword_2809FD7A0, type metadata accessor for ScaledAsyncImageView);
  return swift_getOpaqueTypeConformance2();
}

void sub_2756C9684()
{
  sub_2756C98C0(319, &qword_2809FD7B8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2756C97C8();
    if (v1 <= 0x3F)
    {
      sub_275796530();
      if (v2 <= 0x3F)
      {
        sub_2756C985C();
        if (v3 <= 0x3F)
        {
          sub_2756C98C0(319, &qword_2809FD7D8, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2756C97C8()
{
  if (!qword_2809FD7C0)
  {
    sub_275796500();
    sub_2756C9C74(&qword_2809FD6B8, MEMORY[0x277D23330]);
    v0 = sub_275796AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD7C0);
    }
  }
}

void sub_2756C985C()
{
  if (!qword_2809FD7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD7D0);
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD7C8);
    }
  }
}

void sub_2756C98C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2756C9924()
{
  result = qword_2809FD7E0;
  if (!qword_2809FD7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD7E8);
    sub_2756C7404();
    sub_2756C7514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD7E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScaledAsyncImageView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScaledAsyncImageView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2756C9B24()
{
  result = qword_280A00AF0;
  if (!qword_280A00AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A00AF0);
  }

  return result;
}

unint64_t sub_2756C9B7C()
{
  result = qword_280A00C00;
  if (!qword_280A00C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A00C00);
  }

  return result;
}

unint64_t sub_2756C9BD4()
{
  result = qword_280A00C08[0];
  if (!qword_280A00C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A00C08);
  }

  return result;
}

uint64_t sub_2756C9C28()
{
  v0 = sub_2757988A0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2756C9C74(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2756C9CC8()
{
  v0 = objc_opt_self();
  result = [v0 defaultStore];
  if (result)
  {
    v2 = result;
    v3 = [result aa_primaryAppleAccount];

    v4 = [v0 defaultStore];
    v5 = [objc_allocWithZone(MEMORY[0x277CECA90]) initWithAppleAccount:v3 store:v4];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2756C9DB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2756C9E24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2756C9E70(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  sub_2756CB458(*a1);
  return v3(v2);
}

uint64_t sub_2756C9ECC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

void (*sub_2756C9F3C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_275796610();
  return sub_2756C368C;
}

uint64_t sub_2756C9FE0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD810);
  sub_2757965F0();
  return swift_endAccess();
}

uint64_t sub_2756CA054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD818);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD810);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_2756CA18C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD818);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI19ProfilePictureModel__imageState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD810);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C3A34;
}

void sub_2756CA2FC(char a1)
{
  v3 = sub_275796280();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7)
  {
    if (a1)
    {
      v18 = sub_2756CB0B8;
      v19 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_2756CA594;
      v17 = &block_descriptor_5;
      v8 = _Block_copy(&aBlock);
      v9 = v7;

      [v9 fetchRawImageAndCropRectForAccountOwner_];
    }

    else
    {
      v18 = sub_2756CB068;
      v19 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_2756C45C8;
      v17 = &block_descriptor_0;
      v8 = _Block_copy(&aBlock);
      v9 = v7;

      [v9 fetchProfilePictureForAccountOwner_];
    }

    _Block_release(v8);
  }

  else
  {
    v10 = sub_275700E70();
    (*(v4 + 16))(v6, v10, v3);
    v11 = sub_275796270();
    v12 = sub_2757982F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275623000, v11, v12, "Tried to fetch user profile picture but AAUIProfilePictureStore was nil.", v13, 2u);
      MEMORY[0x277C81E50](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_2756CA594(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v15 = a2;
  v14 = a3;
  v13(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2756CA650(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v68 = a2;
  v7 = sub_2757978A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2757978C0();
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x28223BE20](v11);
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_275796280();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  if (a3)
  {
    v64 = a1;
    v67 = v10;
    v20 = a3;
    v21 = sub_275700E70();
    (*(v14 + 16))(v19, v21, v13);
    v22 = a3;
    v23 = sub_275796270();
    v24 = sub_2757982F0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v66 = v4;
      v26 = v25;
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v26 = 136315138;
      swift_getErrorValue();
      v65 = v13;
      v27 = sub_2757989F0();
      v29 = v8;
      v30 = v7;
      v31 = sub_27562792C(v27, v28, aBlock);

      *(v26 + 4) = v31;
      v7 = v30;
      v8 = v29;
      _os_log_impl(&dword_275623000, v23, v24, "Could not get user image %s", v26, 0xCu);
      v32 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x277C81E50](v32, -1, -1);
      v33 = v26;
      v4 = v66;
      MEMORY[0x277C81E50](v33, -1, -1);

      (*(v14 + 8))(v19, v65);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }

    v10 = v67;
    v39 = v64;
  }

  else
  {
    v66 = v4;
    v34 = sub_275700E70();
    v35 = *(v14 + 16);
    v65 = v13;
    v35(v17, v34, v13);
    v36 = a1;
    v37 = sub_275796270();
    v38 = sub_2757982D0();

    v39 = a1;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v67 = v10;
      v42 = v41;
      *v40 = 138412290;
      *(v40 + 4) = v36;
      *v41 = v39;
      v43 = v36;
      _os_log_impl(&dword_275623000, v37, v38, "Finished getting image - %@", v40, 0xCu);
      sub_2756C5AE8(v42);
      v44 = v42;
      v10 = v67;
      MEMORY[0x277C81E50](v44, -1, -1);
      MEMORY[0x277C81E50](v40, -1, -1);
    }

    (*(v14 + 8))(v17, v65);
    v4 = v66;
  }

  if (*(v68 + 32))
  {
    v45 = v39;
LABEL_19:
    v57 = v45;
    goto LABEL_20;
  }

  if (v39)
  {
    v46 = *v68;
    v47 = *(v68 + 8);
    v48 = *(v68 + 16);
    v49 = *(v68 + 24);
    v50 = [v39 CGImage];
    if (v50 && (v51 = v50, v73.origin.x = v46, v73.origin.y = v47, v73.size.width = v48, v73.size.height = v49, v52 = CGImageCreateWithImageInRect(v50, v73), v51, v52))
    {
      v53 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
    }

    else
    {
      v54 = [v39 CIImage];
      if (!v54 || (v55 = v54, v52 = [v54 imageByCroppingToRect_], v55, !v52))
      {
        v39 = 0;
        goto LABEL_20;
      }

      v53 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
    }

    v56 = v53;

    v45 = v56;
    v39 = v56;
    goto LABEL_19;
  }

LABEL_20:
  sub_2756CB330();
  v58 = sub_275798340();
  v59 = swift_allocObject();
  *(v59 + 16) = v39;
  *(v59 + 24) = v4;
  aBlock[4] = sub_2756CB37C;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_12;
  v60 = _Block_copy(aBlock);

  v61 = v69;
  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2756CB400();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756C56B4();
  sub_2757985B0();
  MEMORY[0x277C80470](0, v61, v10, v60);
  _Block_release(v60);

  (*(v8 + 8))(v10, v7);
  return (*(v70 + 8))(v61, v71);
}

uint64_t sub_2756CAD3C()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI19ProfilePictureModel__imageState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD810);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2756CADB0()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI19ProfilePictureModel__imageState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD810);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2756CAE60()
{
  v0 = swift_allocObject();
  sub_2756CAE98();
  return v0;
}

id sub_2756CAE98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD810);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - v3;
  v5 = objc_opt_self();
  result = [v5 defaultStore];
  if (result)
  {
    v7 = result;
    v8 = [result aa_primaryAppleAccount];

    v9 = [v5 defaultStore];
    v10 = [objc_allocWithZone(MEMORY[0x277CECA90]) initWithAppleAccount:v8 store:v9];

    *(v0 + 16) = v10;
    v11 = OBJC_IVAR____TtC13iCloudQuotaUI19ProfilePictureModel__imageState;
    v12[1] = 0;
    sub_2757965E0();
    (*(v2 + 32))(v0 + v11, v4, v1);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2756CB028@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProfilePictureModel();
  result = sub_2757965C0();
  *a1 = result;
  return result;
}

uint64_t sub_2756CB068(void *a1, void *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 1;
  return sub_2756CA650(a1, v3, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2756CB0B8(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  v8 = 0;
  return sub_2756CA650(a1, v7, a2);
}

uint64_t get_enum_tag_for_layout_string_13iCloudQuotaUI24ProfilePictureImageStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2756CB110(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2756CB164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2756CB1C0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t type metadata accessor for ProfilePictureModel()
{
  result = qword_280A00D30;
  if (!qword_280A00D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2756CB244()
{
  sub_2756CB2E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2756CB2E0()
{
  if (!qword_2809FD820)
  {
    v0 = sub_275796640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD820);
    }
  }
}

unint64_t sub_2756CB330()
{
  result = qword_2809FEE60;
  if (!qword_2809FEE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FEE60);
  }

  return result;
}

uint64_t sub_2756CB37C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (!v1)
  {
    return (*(*v2 + 128))(1);
  }

  v3 = *(*v2 + 128);
  v4 = v1;
  return v3(v1);
}

unint64_t sub_2756CB400()
{
  result = qword_2809FD6A8;
  if (!qword_2809FD6A8)
  {
    sub_2757978A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD6A8);
  }

  return result;
}

id sub_2756CB458(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2756CB48C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2757978D0();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_27A65CB90 + a1);

  return v5(a2, v6, v4);
}

unint64_t sub_2756CB50C(unsigned __int8 a1)
{
  v1 = 0x6772614C6D726F66;
  v2 = 0xD000000000000010;
  v3 = 0x4C72616265646973;
  if (a1 != 3)
  {
    v3 = 0x4172616265646973;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6964654D6D726F66;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2756CB5D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6964654D6D726F66;
    }

    else
    {
      v3 = 0x6772614C6D726F66;
    }

    if (v2)
    {
      v4 = 0xEA00000000006D75;
    }

    else
    {
      v4 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002757B8180;
  }

  else if (a1 == 3)
  {
    v3 = 0x4C72616265646973;
    v4 = 0xEC00000065677261;
  }

  else
  {
    v3 = 0x4172616265646973;
    v4 = 0xEF65766974706164;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6964654D6D726F66;
    }

    else
    {
      v9 = 0x6772614C6D726F66;
    }

    if (a2)
    {
      v8 = 0xEA00000000006D75;
    }

    else
    {
      v8 = 0xE900000000000065;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x4C72616265646973;
    v6 = 0xEC00000065677261;
    if (a2 != 3)
    {
      v5 = 0x4172616265646973;
      v6 = 0xEF65766974706164;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000002757B8180;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_275798980();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2756CB798()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756CB89C()
{
  sub_275797FF0();
}

uint64_t sub_2756CB98C()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756CBA8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756CC13C();
  *a1 = result;
  return result;
}

void sub_2756CBABC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6772614C6D726F66;
  v5 = 0x80000002757B8180;
  v6 = 0xD000000000000010;
  v7 = 0xEC00000065677261;
  v8 = 0x4C72616265646973;
  if (v2 != 3)
  {
    v8 = 0x4172616265646973;
    v7 = 0xEF65766974706164;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6964654D6D726F66;
    v3 = 0xEA00000000006D75;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2756CBC2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2757978D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2756CBC9C()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_2756CBD00()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_2756CBD4C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2756CBDCC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2756CBE30(uint64_t a1)
{
  v2 = sub_2756CC1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756CBE6C(uint64_t a1)
{
  v2 = sub_2756CC1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2756CBEA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD828);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SettingsIconSizeModifier();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2756CC1D4();
  sub_275798A80();
  if (!v2)
  {
    v11 = v16;
    sub_2756CC228();
    sub_275798910();
    (*(v5 + 8))(v7, v4);
    v12 = v17;
    v13 = sub_2757978D0();
    (*(*(v13 - 8) + 104))(v10, **(&unk_27A65CB90 + v12), v13);
    sub_2756CC27C(v10, v11);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2756CC13C()
{
  v0 = sub_2757988A0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for SettingsIconSizeModifier()
{
  result = qword_280A010D0;
  if (!qword_280A010D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2756CC1D4()
{
  result = qword_280A00D40[0];
  if (!qword_280A00D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A00D40);
  }

  return result;
}

unint64_t sub_2756CC228()
{
  result = qword_2809FD830;
  if (!qword_2809FD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD830);
  }

  return result;
}

uint64_t sub_2756CC27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsIconSizeModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756CC2E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2756CC348()
{
  result = qword_2809FD838;
  if (!qword_2809FD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD838);
  }

  return result;
}

unint64_t sub_2756CC3A0()
{
  result = qword_2809FD840;
  if (!qword_2809FD840)
  {
    type metadata accessor for SettingsIconSizeModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD840);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsIconViewStyleString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsIconViewStyleString(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2756CC570()
{
  result = sub_2757978D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsIconSizeModifier.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SettingsIconSizeModifier.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2756CC6C8()
{
  result = qword_280A01260[0];
  if (!qword_280A01260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A01260);
  }

  return result;
}

unint64_t sub_2756CC720()
{
  result = qword_280A01370;
  if (!qword_280A01370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A01370);
  }

  return result;
}

unint64_t sub_2756CC778()
{
  result = qword_280A01378;
  if (!qword_280A01378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A01378);
  }

  return result;
}

unint64_t sub_2756CC7CC()
{
  result = qword_2809FD848;
  if (!qword_2809FD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD848);
  }

  return result;
}

uint64_t sub_2756CC820()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    sub_275796500();
    sub_2756CF980(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2756CC8AC()
{
  sub_275796500();
  sub_2756CF980(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return sub_275796AA0();
}

uint64_t sub_2756CC920()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_275796500();
  v4 = sub_2756CF980(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

uint64_t type metadata accessor for DrilldownIconView()
{
  result = qword_280A01690;
  if (!qword_280A01690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2756CCA3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DrilldownIconView() + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756CCAC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DrilldownIconView() + 36);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756CCB40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DrilldownIconView() + 40);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756CCBBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DrilldownIconView() + 44);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756CCC38()
{
  type metadata accessor for DrilldownIconView();
}

uint64_t sub_2756CCC6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = sub_275795CB0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v30 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v34 = [objc_allocWithZone(MEMORY[0x277D7F360]) init];
  if (*(v0 + 24))
  {
    v35 = type metadata accessor for DrilldownIconView();

    v36 = v0;
    sub_275796520();
    v31 = v13;

    sub_275795CA0();

    v18 = *(v10 + 48);
    v19 = v18(v8, 1, v9);
    v32 = v10;
    if (v19 == 1)
    {
      sub_2756C92B4(v8, &qword_2809FD700);
    }

    else
    {
      (*(v10 + 32))(v17, v8, v9);
      v20 = sub_275795C70();
      [v34 setURL1x_];

      (*(v10 + 8))(v17, v9);
    }

    sub_275796520();

    v21 = v34;
    sub_275795CA0();

    if (v18(v6, 1, v9) == 1)
    {
      sub_2756C92B4(v6, &qword_2809FD700);
    }

    else
    {
      v22 = v32;
      v23 = v30;
      (*(v32 + 32))(v30, v6, v9);
      v24 = sub_275795C70();
      [v21 setURL2x_];

      (*(v22 + 8))(v23, v9);
    }

    sub_275796520();

    v25 = v33;
    sub_275795CA0();

    if (v18(v25, 1, v9) == 1)
    {
      sub_2756C92B4(v25, &qword_2809FD700);
    }

    else
    {
      v27 = v31;
      v26 = v32;
      (*(v32 + 32))(v31, v25, v9);
      v28 = sub_275795C70();
      [v21 setURL3x_];

      (*(v26 + 8))(v27, v9);
    }

    return v21;
  }

  else
  {
    sub_275796500();
    sub_2756CF980(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2756CD1B0@<X0>(uint64_t *a1@<X8>)
{
  sub_2756CD2A0(v8);
  v2 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_275797720();
  result = __swift_destroy_boxed_opaque_existential_0(v8);
  *a1 = v5;
  return result;
}

uint64_t sub_2756CD2A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v59 = sub_2757963E0();
  v61 = *(v59 - 8);
  v8 = MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for DrilldownIconView();
  v16 = MEMORY[0x277D84F90];
  if (*(v2 + *(v15 + 48)))
  {
    v16 = *(v2 + *(v15 + 48));
  }

  v49 = v16;
  sub_2756C9074(v2 + *(v15 + 28), v14, &qword_2809FD850);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v14, 1, v17);
  v51 = v2;
  if (v19 == 1)
  {

    sub_2756C92B4(v14, &qword_2809FD850);
    v20 = v52;
  }

  else
  {
    if (!*(v2 + 24))
    {
      goto LABEL_26;
    }

    sub_275796390();

    (*(v18 + 8))(v14, v17);
    v2 = v51;
    v20 = v52;
    if ((v62 & 1) == 0)
    {
LABEL_24:
      v43 = sub_2756CCC6C();
      type metadata accessor for ICQUISwiftHelperFunctions();
      sub_275761980(v43, v7);
      v44 = swift_allocObject();
      *(v44 + 16) = v49;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD6E0);
      v46 = v50;
      v50[3] = v45;
      v46[4] = sub_2756CFA44(&qword_2809FD730, &qword_2809FD6E0);
      __swift_allocate_boxed_opaque_existential_1(v46);
      sub_2756C9074(v7, v20, &qword_2809FD700);
      v47 = swift_allocObject();
      v47[2] = sub_2756C8E20;
      v47[3] = v44;
      v47[4] = nullsub_1;
      v47[5] = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD758);
      sub_2756C8FF0();
      sub_275796680();

      return sub_2756C92B4(v7, &qword_2809FD700);
    }
  }

  if (*(v2 + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
    sub_2756CF9C8();
    sub_275796390();

    v53 = v62;
    v21 = *(v62 + 16);
    if (v21)
    {
      v48 = v7;
      v22 = v61 + 16;
      v23 = *(v61 + 16);
      v24 = v53 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v61 = *(v61 + 72);
      v25 = (v22 + 16);
      v26 = (v22 + 72);
      v60 = *MEMORY[0x277D232A0];
      v54 = (v22 + 80);
      v55 = (v22 - 8);
      v27 = MEMORY[0x277D84F90];
      v29 = v58;
      v28 = v59;
      v56 = v23;
      v57 = v11;
      v23(v11, v24, v59);
      while (1)
      {
        (*v25)(v29, v11, v28);
        v30 = (*v26)(v29, v28);
        if (v30 == v60)
        {
          v31 = v22;
          (*v54)(v29, v28);
          v32 = *v29;
          v34 = *(*v29 + 16);
          v33 = *(v32 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_2756CF148(0, *(v27 + 2) + 1, 1, v27);
          }

          v36 = *(v27 + 2);
          v35 = *(v27 + 3);
          if (v36 >= v35 >> 1)
          {
            v27 = sub_2756CF148((v35 > 1), v36 + 1, 1, v27);
          }

          *(v27 + 2) = v36 + 1;
          v37 = &v27[16 * v36];
          *(v37 + 4) = v34;
          *(v37 + 5) = v33;
          v22 = v31;
          v29 = v58;
          v28 = v59;
          v23 = v56;
          v11 = v57;
        }

        else
        {
          (*v55)(v29, v28);
        }

        v24 += v61;
        if (!--v21)
        {
          break;
        }

        v23(v11, v24, v28);
      }

      v7 = v48;
      v20 = v52;
    }

    else
    {
    }

    type metadata accessor for ICQUISwiftHelperFunctions();
    v38 = sub_2756C3118();

    if (v38)
    {
      v39 = sub_275797540();

      v40 = MEMORY[0x277CE1078];
      v41 = v50;
      v50[3] = MEMORY[0x277CE1088];
      v41[4] = v40;

      *v41 = v39;
      return result;
    }

    goto LABEL_24;
  }

  sub_275796500();
  sub_2756CF980(&qword_2809FD6B8, MEMORY[0x277D23330]);
  sub_275796A90();
  __break(1u);
LABEL_26:
  sub_275796500();
  sub_2756CF980(&qword_2809FD6B8, MEMORY[0x277D23330]);

  result = sub_275796A90();
  __break(1u);
  return result;
}

uint64_t sub_2756CDAA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6449656C646E7562;
  v6 = 0xE900000000000073;
  if (a1 != 5)
  {
    v5 = 0x646F4D6567616D69;
    v6 = 0xEE00737265696669;
  }

  v7 = 0xE500000000000000;
  v8 = 0x78336C7275;
  if (a1 != 3)
  {
    v8 = 0x636F4C6863746566;
    v7 = 0xEC000000796C6C61;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x78316C7275;
  if (a1 != 1)
  {
    v9 = 0x78326C7275;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v12 = 0xE500000000000000;
      if (a2 == 1)
      {
        v13 = 829190773;
      }

      else
      {
        v13 = 845967989;
      }

LABEL_30:
      if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7800000000))
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v12 = 0xE200000000000000;
    if (v10 != 25705)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 != 3)
      {
        v12 = 0xEC000000796C6C61;
        if (v10 != 0x636F4C6863746566)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v12 = 0xE500000000000000;
      v13 = 862745205;
      goto LABEL_30;
    }

    if (a2 == 5)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x6449656C646E7562)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v12 = 0xEE00737265696669;
      if (v10 != 0x646F4D6567616D69)
      {
LABEL_37:
        v14 = sub_275798980();
        goto LABEL_38;
      }
    }
  }

LABEL_35:
  if (v11 != v12)
  {
    goto LABEL_37;
  }

  v14 = 1;
LABEL_38:

  return v14 & 1;
}

uint64_t sub_2756CDCD8()
{
  sub_275797FF0();
}

uint64_t sub_2756CDDF0()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756CDF14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756CF934();
  *a1 = result;
  return result;
}

void sub_2756CDF44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000073;
  v6 = 0x6449656C646E7562;
  if (v2 != 5)
  {
    v6 = 0x646F4D6567616D69;
    v5 = 0xEE00737265696669;
  }

  v7 = 0xE500000000000000;
  v8 = 0x78336C7275;
  if (v2 != 3)
  {
    v8 = 0x636F4C6863746566;
    v7 = 0xEC000000796C6C61;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x78316C7275;
  if (v2 != 1)
  {
    v9 = 0x78326C7275;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2756CE024()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6449656C646E7562;
  if (v1 != 5)
  {
    v3 = 0x646F4D6567616D69;
  }

  v4 = 0x78336C7275;
  if (v1 != 3)
  {
    v4 = 0x636F4C6863746566;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x78316C7275;
  if (v1 != 1)
  {
    v5 = 0x78326C7275;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2756CE100@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756CF934();
  *a1 = result;
  return result;
}

uint64_t sub_2756CE134(uint64_t a1)
{
  v2 = sub_2756CEDAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756CE170(uint64_t a1)
{
  v2 = sub_2756CEDAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2756CE1AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = sub_275796590();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v68 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v58 - v7;
  v78 = sub_275796530();
  v76 = *(v78 - 8);
  v8 = MEMORY[0x28223BE20](v78);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v58 - v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v58 - v12;
  v13 = sub_275795D60();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v77 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD860);
  v79 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v18 = type metadata accessor for DrilldownIconView();
  MEMORY[0x28223BE20](v18);
  v20 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20[2] = MEMORY[0x277D84F90];
  sub_275796500();
  sub_2756CF980(&qword_2809FD6B8, MEMORY[0x277D23330]);
  v21 = sub_275796AA0();
  v20[3] = v21;
  v20[4] = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2756CEDAC();
  v23 = v80;
  sub_275798A80();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v80 = v21;
    v24 = v77;
    v25 = v78;
    v60 = v20;
    v61 = v18;
    v62 = a1;
    LOBYTE(v81) = 0;
    v26 = sub_2757988D0();
    v59 = v17;
    if (!v27)
    {
      sub_275795D50();
      v29 = sub_275795D40();
      v31 = v30;
      (*(v70 + 8))(v24, v71);
      v27 = v31;
      v26 = v29;
    }

    v32 = v75;
    v33 = v60;
    *v60 = v26;
    v33[1] = v27;
    v77 = v27;
    LOBYTE(v81) = 1;
    sub_2756CF980(&qword_2809FD770, MEMORY[0x277D23340]);
    v34 = v25;
    v35 = v59;
    sub_275798910();
    v75 = 0;
    v36 = v32;
    v37 = *(v76 + 32);
    v37(v33 + v61[9], v36, v25);
    LOBYTE(v81) = 2;
    v38 = v72;
    v71 = v15;
    sub_275798910();
    v37(v33 + v61[10], v38, v34);
    LOBYTE(v81) = 3;
    v39 = v69;
    sub_275798910();
    v37(v33 + v61[11], v39, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
    LOBYTE(v81) = 4;
    sub_2756CFA44(&qword_2809FD870, &qword_2809FD868);
    v40 = v67;
    sub_2757988E0();
    sub_2756CEE00(v40, v33 + v61[7]);
    LOBYTE(v81) = 5;
    sub_2756CFA44(&qword_2809FD878, &qword_2809FD858);
    v41 = v66;
    v42 = v74;
    v43 = v71;
    sub_275798910();
    (*(v73 + 32))(v33 + v61[8], v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD780);
    LOBYTE(v81) = 6;
    sub_2756C9384();
    sub_2757988E0();
    v44 = v83;
    v45 = v79;
    if (v83)
    {
      v46 = *(v83 + 16);
      if (v46)
      {
        v82 = MEMORY[0x277D84F90];
        sub_2756C8E50(0, v46, 0);
        v47 = v82;
        v48 = v63 + 16;
        v80 = *(v63 + 16);
        v49 = v44 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        v78 = *(v63 + 72);
        v76 = v44;
        v77 = (v63 + 8);
        v50 = v64;
        v51 = v68;
        do
        {
          v52 = v48;
          v80(v51, v49, v50);
          sub_275796580();
          v51 = v68;
          (*v77)(v68, v50);
          v82 = v47;
          v54 = *(v47 + 16);
          v53 = *(v47 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2756C8E50((v53 > 1), v54 + 1, 1);
            v51 = v68;
            v47 = v82;
          }

          *(v47 + 16) = v54 + 1;
          sub_27562F5A8(&v81, v47 + 40 * v54 + 32);
          v49 += v78;
          --v46;
          v48 = v52;
        }

        while (v46);
        (*(v79 + 8))(v59, v71);
      }

      else
      {

        (*(v45 + 8))(v35, v71);
        v47 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      (*(v79 + 8))(v35, v43);
      v47 = 0;
    }

    v55 = v62;
    v56 = v65;
    v57 = v60;
    *(v60 + v61[12]) = v47;
    sub_2756CEE70(v57, v56);
    __swift_destroy_boxed_opaque_existential_0(v55);
    return sub_2756CEED4(v57);
  }
}

unint64_t sub_2756CEDAC()
{
  result = qword_280A01400[0];
  if (!qword_280A01400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A01400);
  }

  return result;
}

uint64_t sub_2756CEE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756CEE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrilldownIconView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756CEED4(uint64_t a1)
{
  v2 = type metadata accessor for DrilldownIconView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2756CEF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756CF980(&qword_2809FD880, type metadata accessor for DrilldownIconView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2756CEFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756CF980(&qword_2809FD888, type metadata accessor for DrilldownIconView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2756CF030(uint64_t a1)
{
  v2 = sub_2756CF980(&qword_2809FD888, type metadata accessor for DrilldownIconView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2756CF0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756CF980(&qword_2809FD8C8, type metadata accessor for DrilldownIconView);

  return MEMORY[0x282182160](a1, a2, v4);
}

char *sub_2756CF148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2756CF254()
{
  sub_2756CF980(&qword_2809FD880, type metadata accessor for DrilldownIconView);
  sub_2756CF980(&qword_2809FD888, type metadata accessor for DrilldownIconView);
  return swift_getOpaqueTypeConformance2();
}

void sub_2756CF3E0()
{
  sub_2756CF50C();
  if (v0 <= 0x3F)
  {
    sub_2756C97C8();
    if (v1 <= 0x3F)
    {
      sub_2756CF688(319, &qword_2809FD8A0, &qword_2809FD868);
      if (v2 <= 0x3F)
      {
        sub_2756CF564();
        if (v3 <= 0x3F)
        {
          sub_275796530();
          if (v4 <= 0x3F)
          {
            sub_2756CF688(319, &qword_2809FD7C8, &qword_2809FD7D0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2756CF50C()
{
  if (!qword_2809FD7B8)
  {
    sub_275796400();
    v0 = sub_275798140();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD7B8);
    }
  }
}

void sub_2756CF564()
{
  if (!qword_2809FD8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD8B0);
    sub_2756CF5D4();
    v0 = sub_2757963A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD8A8);
    }
  }
}

unint64_t sub_2756CF5D4()
{
  result = qword_2809FD8B8;
  if (!qword_2809FD8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD8B0);
    sub_2756CF980(&qword_2809FD8C0, MEMORY[0x277D232B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD8B8);
  }

  return result;
}

void sub_2756CF688(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_275798550();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DrilldownIconView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DrilldownIconView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2756CF830()
{
  result = qword_280A01820[0];
  if (!qword_280A01820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A01820);
  }

  return result;
}

unint64_t sub_2756CF888()
{
  result = qword_280A01930;
  if (!qword_280A01930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A01930);
  }

  return result;
}

unint64_t sub_2756CF8E0()
{
  result = qword_280A01938[0];
  if (!qword_280A01938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A01938);
  }

  return result;
}

uint64_t sub_2756CF934()
{
  v0 = sub_2757988A0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2756CF980(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2756CF9C8()
{
  result = qword_2809FD8D0;
  if (!qword_2809FD8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD8D0);
  }

  return result;
}

uint64_t sub_2756CFA44(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2756CFAF8(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2756CFB44()
{
  if (*(v0 + 8))
  {
  }

  else
  {
    sub_275796500();
    sub_2756D4A40(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2756CFBD0()
{
  sub_275796500();
  sub_2756D4A40(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return sub_275796AA0();
}

uint64_t sub_2756CFC44()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = sub_275796500();
  v4 = sub_2756D4A40(&qword_2809FD6B8, MEMORY[0x277D23330]);

  return MEMORY[0x282131550](v1, v2, v3, v4);
}

uint64_t sub_2756CFD4C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = type metadata accessor for ProfilePictureModel();
  v6 = sub_2756D4A40(&qword_2809FD8E0, type metadata accessor for ProfilePictureModel);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t sub_2756CFDF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return v1;
}

uint64_t (*sub_2756CFEA4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 48);
  *(v3 + 50) = v5;
  v6 = *(v1 + 56);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return sub_2756D542C;
}

uint64_t sub_2756CFF50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_2756CFFEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return v1;
}

uint64_t (*sub_2756D00A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 64);
  *(v3 + 50) = v5;
  v6 = *(v1 + 72);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return sub_2756D014C;
}

void sub_2756D0150(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_2757975C0();

  free(v1);
}

uint64_t sub_2756D01B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_2756D0214()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t type metadata accessor for AccountImage()
{
  result = qword_280A01C50;
  if (!qword_280A01C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2756D0320()
{
  type metadata accessor for AccountImage();
}

uint64_t sub_2756D0354()
{
  type metadata accessor for AccountImage();
}