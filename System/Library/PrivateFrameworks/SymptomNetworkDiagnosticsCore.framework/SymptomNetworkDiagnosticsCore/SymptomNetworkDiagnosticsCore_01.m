uint64_t sub_2324DA2A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2324DA8A8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2324DB44C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2324DA074(v14, a3, a4, &v13);
  v10 = v4;
  sub_2324DB44C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

size_t sub_2324DA434(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_2324DA610(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2324DA620(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2324DA658()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2324DA6A0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2324DA794;

  return v6(v2 + 32);
}

uint64_t sub_2324DA794()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2324DA8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_232545578();
  v11 = result;
  if (result)
  {
    result = sub_232545598();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_232545588();
  sub_2324DA074(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2324DA960(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2324DB3E4(a3, a4);
          return sub_2324DA2A4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

xpc_object_t sub_2324DAAC8(_xpc_activity_s *a1)
{
  v2 = sub_2324C4D38();
  v3 = *(**v2 + 608);

  v5 = v3(v4);

  if (v5 < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = *(**v2 + 608);

    v8 = v6(v7);
  }

  v9 = *(**v2 + 632);

  v11 = v9(v10);

  if (v11 > 0)
  {
    v12 = *(**v2 + 632);

    v14 = v12(v13);

    result = xpc_activity_copy_criteria(a1);
    if (!result)
    {
      return result;
    }

    v16 = result;
    if (v5 <= 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

LABEL_11:
    v17 = swift_unknownObjectRetain();
    xpc_dictionary_set_int64(v17, "com.apple.activity.interval", v8);
    if (v11 < 1)
    {
LABEL_13:
      swift_unknownObjectRelease();
      return v16;
    }

LABEL_12:
    xpc_dictionary_set_int64(v16, "com.apple.activity.delay", v14);
    goto LABEL_13;
  }

  if (v5 > 0)
  {
    v16 = xpc_activity_copy_criteria(a1);
    result = 0;
    if (!v16)
    {
      return result;
    }

    v14 = 0;
    goto LABEL_11;
  }

  return 0;
}

void sub_2324DACC0(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  if (a1 == 0xD000000000000031 && 0x800000023254C000 == a2 || (sub_232546628() & 1) != 0)
  {
    v9 = sub_2325460F8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v2;

    sub_2324D9D7C(0, 0, v8, &unk_232547788, v10);
  }

  else
  {

    v15 = sub_232545888();
    v11 = sub_2325461F8();

    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2324C2220(a1, a2, &v16);
      _os_log_impl(&dword_2324C0000, v15, v11, "Cannot perform work for unknown XPC activity identifier: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x238386450](v13, -1, -1);
      MEMORY[0x238386450](v12, -1, -1);
    }

    else
    {
      v14 = v15;
    }
  }
}

uint64_t type metadata accessor for NDFCorePersistenceController()
{
  result = qword_2814D6C10;
  if (!qword_2814D6C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324DAF78()
{
  result = sub_2325458A8();
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

uint64_t sub_2324DB028(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2324C2910;

  return sub_2324D9CCC(a1, v5, v6, v4);
}

uint64_t sub_2324DB0C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return sub_2324DA6A0(a1, v5);
}

uint64_t sub_2324DB180(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C2910;

  return sub_2324DA6A0(a1, v5);
}

uint64_t sub_2324DB238(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2324DB388(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2324DB288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2324DB2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFDevice();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324DB334()
{
  result = qword_2814D4C70;
  if (!qword_2814D4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C70);
  }

  return result;
}

uint64_t sub_2324DB388(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2324DB3D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2324DB3E4(a1, a2);
  }

  return a1;
}

uint64_t sub_2324DB3E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2324DB438(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2324DB44C(a1, a2);
  }

  return a1;
}

uint64_t sub_2324DB44C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2324DB4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932A8, &unk_2325477F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2324DB51C()
{
  v0 = objc_opt_self();
  v1 = &unk_284793910;
  v2 = [v0 interfaceWithProtocol_];

  qword_2814D6EE8 = v2;
}

uint64_t *sub_2324DB584()
{
  if (qword_2814D6460 != -1)
  {
    swift_once();
  }

  return &qword_2814D6EE8;
}

id sub_2324DB5D4()
{
  if (qword_2814D6460 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D6EE8;

  return v1;
}

uint64_t sub_2324DB630@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F4750();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324DB6A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_2324DB718()
{
  v1 = v0;
  v2 = sub_232546238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232546218();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_232545EA8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue;
  v12 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue);
  }

  else
  {
    v14 = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
    v21 = "com.apple.activity.interval";
    v22 = v14;
    sub_232545E98();
    v23 = MEMORY[0x277D84F90];
    v19[1] = sub_2324E25F8(&qword_2814D4ED0, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
    v20 = v2;
    sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
    sub_232546378();
    (*(v3 + 104))(v6, *MEMORY[0x277D85260], v20);
    v15 = sub_232546258();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

uint64_t sub_2324DB9B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_2324DB9C4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2324DB718();
  return sub_2324DBA0C;
}

void sub_2324DBA0C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue) = v2;
}

id sub_2324DBA9C()
{
  v1 = v0;
  v2 = sub_232546238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232546218();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_232545EA8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue;
  v12 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue);
  }

  else
  {
    v14 = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
    v21 = "msd.distribution.timer";
    v22 = v14;
    sub_232545E98();
    v23 = MEMORY[0x277D84F90];
    v19[1] = sub_2324E25F8(&qword_2814D4ED0, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
    v20 = v2;
    sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
    sub_232546378();
    (*(v3 + 104))(v6, *MEMORY[0x277D85260], v20);
    v15 = sub_232546258();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

uint64_t sub_2324DBD34(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_2324DBD48(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2324DBA9C();
  return sub_2324DBD90;
}

void sub_2324DBD90(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue) = v2;
}

uint64_t sub_2324DBDB4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_2324DBE04(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_2324DBEB8()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitDeviceUpdates;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2324DBF00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitDeviceUpdates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2324DBFB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsQueueContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2324DC04C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2324DC084();
  return v3;
}

uint64_t sub_2324DC084()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v36 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D0, &unk_2325480E0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v30 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v33 = *(v35 - 8);
  v8 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v37 = &v30 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v16 = sub_2324F4750();
  v17 = sub_2325458A8();
  (*(*(v17 - 8) + 16))(v0 + v15, v16, v17);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___timerQueue) = 0;
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_periodicTimer) = 0;
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController____lazy_storage___cloudKitQueue) = 0;
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitTimer) = 0;
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitDeviceUpdates) = MEMORY[0x277D84F90];
  sub_232545B08();
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v3);
  v31 = v14;
  v18 = v37;
  sub_232546108();
  (*(v4 + 8))(v7, v3);
  v19 = v33;
  v20 = v35;
  (*(v33 + 16))(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsQueueContinuation, v18, v35);
  v21 = sub_2325460F8();
  v22 = v36;
  (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  v23 = v32;
  v24 = v14;
  v25 = v34;
  (*(v10 + 16))(v32, v24, v34);
  v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v10 + 32))(v27 + v26, v23, v25);
  v28 = sub_2324C8F70(0, 0, v22, &unk_232547820, v27);
  (*(v19 + 8))(v37, v20);
  (*(v10 + 8))(v31, v25);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsTask) = v28;
  return v0;
}

uint64_t sub_2324DC518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_232545B08();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93330, &unk_2325479B0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93338, qword_232548330);
  v4[10] = v12;
  v13 = *(v12 - 8);
  v4[11] = v13;
  v14 = *(v13 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324DC6E0, 0, 0);
}

uint64_t sub_2324DC6E0()
{
  v1 = v0[12];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  sub_232546138();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2324DC7A8;
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_2324DC7A8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2324DC8A4, 0, 0);
}

uint64_t sub_2324DC8A4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
    v8 = sub_232545AF8();
    v0[14] = v9;
    v12 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_2324DCA70;

    return v12();
  }
}

uint64_t sub_2324DCA70()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2324DCB88, 0, 0);
}

uint64_t sub_2324DCB88()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_232545AE8();
  sub_2325460B8();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_2324DC7A8;
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  return MEMORY[0x2822003E8](v10, 0, 0, v11);
}

uint64_t sub_2324DCC98()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324DC518(v4, v5, v6, v0 + v3);
}

uint64_t sub_2324DCD6C()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsTask;
  v2 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsTask);

  sub_232546158();

  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v4 = sub_2325458A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_periodicTimer);
  swift_unknownObjectRelease();

  v6 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitTimer);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitDeviceUpdates);

  v8 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_cloudKitOperationRequestsQueueContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324DCEBC()
{
  sub_2324DCD6C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324DCEE8()
{
  v1[9] = v0;
  v2 = sub_232545E68();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = sub_232545EA8();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = sub_232545E58();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v11 = sub_232545EC8();
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v14 = sub_232546268();
  v1[23] = v14;
  v15 = *(v14 - 8);
  v1[24] = v15;
  v16 = *(v15 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324DD124, v0, 0);
}

uint64_t sub_2324DD124()
{
  v1 = *(*v0[9] + 224);
  if (v1())
  {
    v2 = v0[9];
    swift_unknownObjectRelease();
    v3 = sub_232545888();
    v4 = sub_2325461D8();
    if (!os_log_type_enabled(v3, v4))
    {
LABEL_5:

      goto LABEL_10;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "CloudKit timer is already running";
LABEL_4:
    _os_log_impl(&dword_2324C0000, v3, v4, v6, v5, 2u);
    MEMORY[0x238386450](v5, -1, -1);
    goto LABEL_5;
  }

  v49 = v0[24];
  v45 = v0[25];
  v47 = v0[23];
  v7 = v0[9];
  sub_2324DB388(0, &unk_2814D4EA0, 0x277D85CA0);
  v8 = (*(*v7 + 200))();
  v0[8] = MEMORY[0x277D84F90];
  sub_2324E25F8(&unk_2814D4EB0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93430, qword_232547860);
  sub_2324E2640(&unk_2814D4EF0, &unk_27DD93430, qword_232547860);
  sub_232546378();
  v9 = sub_232546278();

  (*(v49 + 8))(v45, v47);
  v10 = (*(*v7 + 232))(v9);
  if (!(v1)(v10))
  {
    v37 = v0[9] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
    v3 = sub_232545888();
    v4 = sub_2325461F8();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_5;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Failed to create CloudKit timer";
    goto LABEL_4;
  }

  v11 = v0[21];
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[20];
  v38 = v13;
  v16 = v0[17];
  v15 = v0[18];
  v42 = v0[15];
  v48 = v0[14];
  v50 = v0[13];
  v43 = v0[12];
  v44 = v0[11];
  v46 = v0[10];
  v40 = v0[16];
  v41 = v0[9];
  ObjectType = swift_getObjectType();
  sub_232545EB8();
  sub_232545ED8();
  v17 = *(v14 + 8);
  v17(v11, v13);
  v18 = *(**sub_2324C4D38() + 320);

  v20 = v18(v19);

  *v15 = 0;
  v21 = *MEMORY[0x277D85168];
  v22 = sub_232545E58();
  (*(*(v22 - 8) + 104))(v15, v21, v22);
  MEMORY[0x2383858F0](v12, v15, ObjectType, v20);
  (*(v16 + 8))(v15, v40);
  v17(v12, v38);
  v23 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_2324E24B8;
  v0[7] = v23;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2324D0160;
  v0[5] = &block_descriptor_27;
  v24 = _Block_copy(v0 + 2);

  sub_232545E78();
  sub_2324DDFC0();
  sub_232546298();
  _Block_release(v24);
  (*(v44 + 8))(v43, v46);
  (*(v48 + 8))(v42, v50);
  v25 = v0[7];

  sub_2325462C8();
  v26 = sub_232545888();
  v27 = sub_232546208();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2324C0000, v26, v27, "Activated CloudKit timer", v28, 2u);
    MEMORY[0x238386450](v28, -1, -1);
  }

  swift_unknownObjectRelease();
LABEL_10:
  v29 = v0[25];
  v30 = v0[21];
  v31 = v0[22];
  v32 = v0[18];
  v33 = v0[15];
  v34 = v0[12];

  v35 = v0[1];

  return v35();
}

uint64_t sub_2324DD744()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_2325460F8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_2324C8F70(0, 0, v3, &unk_232547930, v7);
  }

  return result;
}

uint64_t sub_2324DD864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2324DD884, 0, 0);
}

uint64_t sub_2324DD884()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2324CB1E8;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000014, 0x800000023254C570, sub_2324E2560, v4, v5);
}

uint64_t sub_2324DD95C(uint64_t a1)
{
  v19 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93318, &qword_232547938);
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = sub_232545B08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  (*(v6 + 16))(v9, v19, v5);

  sub_232545AD8();
  (*(v11 + 16))(v15, v17, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  sub_232546118();
  (*(v1 + 8))(v4, v20);
  return (*(v11 + 8))(v17, v10);
}

uint64_t sub_2324DDC28()
{
  v1 = v0[4];
  v0[5] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v2 = sub_232545888();
  v3 = sub_2325461D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "Ready to send updates to CloudKit", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2324DDD40;
  v6 = v0[4];

  return sub_2324DE098();
}

uint64_t sub_2324DDD40(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;
  v4 = *(v2 + 48);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_2324DDE44, 0, 0);
}

uint64_t sub_2324DDE44()
{
  v13 = v0;
  v1 = *(v0 + 32) + *(v0 + 40);
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0x6673736563637573;
    }

    else
    {
      v7 = 0x6363757320746F6ELL;
    }

    if (v4)
    {
      v8 = 0xEA00000000006C75;
    }

    else
    {
      v8 = 0xEE006C7566737365;
    }

    v9 = sub_2324C2220(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2324C0000, v2, v3, "Updates to CloudKit was %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2324DDFC0()
{
  sub_232545E68();
  sub_2324E25F8(&qword_2814D4F30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93328, &qword_232547960);
  sub_2324E2640(&qword_2814D4F10, &qword_27DD93328, &qword_232547960);
  return sub_232546378();
}

uint64_t sub_2324DE098()
{
  v1[29] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932A8, &unk_2325477F0);
  v1[30] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v4 = sub_232545A88();
  v1[33] = v4;
  v5 = *(v4 - 8);
  v1[34] = v5;
  v6 = *(v5 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v8 = sub_2325456F8();
  v1[40] = v8;
  v9 = *(v8 - 8);
  v1[41] = v9;
  v10 = *(v9 + 64) + 15;
  v1[42] = swift_task_alloc();
  v11 = sub_232545688();
  v1[43] = v11;
  v12 = *(v11 - 8);
  v1[44] = v12;
  v13 = *(v12 + 64) + 15;
  v1[45] = swift_task_alloc();
  v14 = sub_232545B68();
  v1[46] = v14;
  v15 = *(v14 - 8);
  v1[47] = v15;
  v16 = *(v15 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v17 = sub_2325458C8();
  v1[51] = v17;
  v18 = *(v17 - 8);
  v1[52] = v18;
  v19 = *(v18 + 64) + 15;
  v1[53] = swift_task_alloc();
  v20 = type metadata accessor for NDFDevice();
  v1[54] = v20;
  v21 = *(v20 - 8);
  v1[55] = v21;
  v22 = *(v21 + 64) + 15;
  v1[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324DE3E0, v0, 0);
}

uint64_t sub_2324DE3E0()
{
  v150 = v0;
  v1 = v0[29];
  v2 = *(*v1 + 248);
  v3 = (*v1 + 248) & 0xFFFFFFFFFFFFLL | 0x2357000000000000;
  v0[57] = v2;
  v0[58] = v3;
  v4 = *(v2() + 16);

  v0[59] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  if (v4)
  {
    v5 = v0[29];

    v6 = sub_232545888();
    v7 = sub_232546208();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[29];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      v11 = *(v2() + 16);

      *(v10 + 4) = v11;

      _os_log_impl(&dword_2324C0000, v6, v7, "=> Preparing to send %ld CloudKit update(s) to symptomsd-distributed", v10, 0xCu);
      MEMORY[0x238386450](v10, -1, -1);
    }

    else
    {
      v15 = v0[29];
    }

    sub_232545FB8();
    v16 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v17 = sub_232545F58();

    v18 = [v16 initWithMachServiceName:v17 options:4096];
    v0[60] = v18;

    if (qword_2814D6460 != -1)
    {
      swift_once();
    }

    [v18 setRemoteObjectInterface_];
    [v18 activate];
    v19 = [v18 remoteObjectProxy];
    sub_232546338();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93880, &qword_232547840);
    if (swift_dynamicCast())
    {
      v20 = v0[29];
      v119 = v0[26];
      v0[61] = v119;
      v0[27] = MEMORY[0x277D84F90];
      v21 = v2();
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v0[55];
        v147 = v0[54];
        v24 = v0[52];
        v25 = v0[47];
        v26 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v134 = (v24 + 104);
        v133 = (v25 + 104);
        v27 = (v25 + 32);
        v131 = (v0[44] + 16);
        v130 = (v0[41] + 16);
        v28 = v0[34];
        v129 = *(v23 + 72);
        v128 = *MEMORY[0x277D6B2D0];
        v124 = *MEMORY[0x277D6B320];
        v123 = *MEMORY[0x277D6B338];
        v121 = (v28 + 16);
        v135 = (v28 + 8);
        v120 = (v28 + 32);
        v127 = (v25 + 8);
        v122 = *MEMORY[0x277D6B328];
        v125 = v0[30];
        v126 = (v24 + 8);
        v132 = (v25 + 32);
        do
        {
          v143 = v26;
          v145 = v22;
          v29 = v0[56];
          v30 = v0[53];
          v31 = v0[51];
          sub_2324CE250(v26, v29);
          (*v134)(v30, v128, v31);
          v32 = *(v29 + v147[12]);
          v33 = v0[49];
          if (v32 == 2)
          {
            (*v133)(v0[49], v122, v0[46]);
            v34 = *v27;
          }

          else
          {
            v35 = v0[48];
            v36 = v0[46];
            if (v32)
            {
              v37 = v123;
            }

            else
            {
              v37 = v124;
            }

            (*v133)(v0[48], v37, v0[46]);
            v34 = *v27;
            (*v27)(v33, v35, v36);
          }

          v38 = v0[56];
          v39 = v0[53];
          v40 = v0[45];
          v41 = v0[42];
          v42 = v0[43];
          v43 = v0[40];
          v140 = v0[38];
          v136 = v0[39];
          v138 = v0[33];
          v34(v0[50], v0[49], v0[46]);
          v44 = v147;
          (*v131)(v40, v38 + v147[5], v42);
          (*v130)(v41, v38, v43);
          sub_2325458B8();
          v45 = objc_allocWithZone(sub_232545A48());
          v46 = sub_232545A38();
          sub_2325458B8();
          sub_2325459A8();
          v47 = (v38 + v147[6]);
          v48 = *v47;
          v49 = v47[1];

          sub_232545918();
          sub_2324CF3C4(v38 + v147[7], v136, &unk_27DD932E0, qword_2325472E0);
          sub_232545968();
          sub_2324DB3D0(*(v38 + v44[8]), *(v38 + v44[8] + 8));
          sub_2325459F8();
          sub_2324DB3D0(*(v38 + v44[9]), *(v38 + v44[9] + 8));
          sub_232545A18();
          v50 = (v38 + v147[10]);
          v52 = *v50;
          v51 = v50[1];

          sub_232545938();
          v53 = (v38 + v147[14]);
          v54 = *v53;
          v55 = *(v53 + 2);
          sub_2325459D8();
          v0[28] = 0;
          sub_2324E25F8(&unk_27DD93300, MEMORY[0x277D6B300]);
          sub_232546798();
          v56 = *(v38 + v147[15]);
          if (v56 != 2 && (v56 & 1) != 0)
          {
            v58 = v0[37];
            v57 = v0[38];
            v60 = v0[35];
            v59 = v0[36];
            v61 = v0[33];
            v141 = v0[32];
            sub_232545A58();
            v62 = *v121;
            (*v121)(v60, v57, v61);
            v63 = MEMORY[0x277D6B300];
            sub_2324E25F8(&qword_27DD93278, MEMORY[0x277D6B300]);
            sub_232546358();
            sub_2324E25F8(&qword_27DD93310, v63);
            v64 = sub_232545F48();
            v65 = *(v125 + 48);
            *v141 = (v64 & 1) == 0;
            v66 = *v135;
            if (v64)
            {
              v67 = v0[36];
              v68 = v0[33];
              v66(v0[37], v68);
              (*v120)(&v141[v65], v67, v68);
            }

            else
            {
              v69 = v0[37];
              v137 = v0[38];
              v70 = v0[35];
              v71 = v0[33];
              v66(v0[36], v71);
              v62(&v141[v65], v69, v71);
              v62(v70, v69, v71);
              sub_232546368();
              v66(v69, v71);
            }

            v72 = v0[33];
            v73 = v0[31];
            sub_2324DB4A0(v0[32], v73);
            v66(v73 + *(v125 + 48), v72);
          }

          v74 = v0[38];
          sub_232545A78();
          sub_232545988();
          v75 = v46;
          MEMORY[0x238385620]();
          if (*((v0[27] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[27] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v83 = *((v0[27] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_232546078();
          }

          v76 = v0[56];
          v77 = v0[53];
          v79 = v0[50];
          v78 = v0[51];
          v80 = v0[46];
          v81 = v0[38];
          v82 = v0[33];
          sub_232546088();

          (*v135)(v81, v82);
          (*v127)(v79, v80);
          (*v126)(v77, v78);
          sub_2324CE2B4(v76);
          v26 = v143 + v129;
          v22 = v145 - 1;
          v27 = v132;
        }

        while (v145 != 1);
        v99 = v0[27];
      }

      else
      {

        v99 = MEMORY[0x277D84F90];
      }

      v0[62] = v99;
      v100 = sub_232545888();
      v101 = sub_232546208();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 134217984;
        if (v99 >> 62)
        {
          v118 = v102;
          v103 = sub_232546488();
          v102 = v118;
        }

        else
        {
          v103 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v102 + 4) = v103;
        v104 = v101;
        v105 = v102;
        _os_log_impl(&dword_2324C0000, v100, v104, "==> Ready to send %ld CloudKit update(s) to symptomsd-distributed", v102, 0xCu);
        MEMORY[0x238386450](v105, -1, -1);
      }

      v106 = sub_232545888();
      v107 = sub_2325461D8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v149 = v109;
        *v108 = 136315138;
        v110 = sub_232545A48();

        v112 = MEMORY[0x238385650](v111, v110);
        v114 = v113;

        v115 = sub_2324C2220(v112, v114, &v149);

        *(v108 + 4) = v115;
        _os_log_impl(&dword_2324C0000, v106, v107, "    Sending payloads to symptomsd-distributed: %s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x238386450](v109, -1, -1);
        MEMORY[0x238386450](v108, -1, -1);
      }

      sub_232545A48();

      v116 = sub_232546048();
      v0[63] = v116;

      v0[2] = v0;
      v0[7] = v0 + 64;
      v0[3] = sub_2324DF1B8;
      v117 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932F0, qword_232547848);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2324DF5A0;
      v0[13] = &block_descriptor_23;
      v0[14] = v117;
      [v119 deliverCloudKitDevicePayloads:v116 completionHandler:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    v84 = sub_232545888();
    v85 = sub_2325461F8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2324C0000, v84, v85, "Failed to obtain remoteObjectProxy while contacting symptomsd-distributed", v86, 2u);
      MEMORY[0x238386450](v86, -1, -1);
    }

    v12 = v0[60];
    [v12 invalidate];
  }

  else
  {
    v12 = sub_232545888();
    v13 = sub_2325461D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2324C0000, v12, v13, "No pending updates to send to CloudKit", v14, 2u);
      MEMORY[0x238386450](v14, -1, -1);
    }
  }

  v148 = v4 == 0;

  v87 = v0[56];
  v88 = v0[53];
  v90 = v0[49];
  v89 = v0[50];
  v91 = v0[48];
  v92 = v0[45];
  v93 = v0[42];
  v95 = v0[38];
  v94 = v0[39];
  v96 = v0[37];
  v139 = v0[36];
  v142 = v0[35];
  v144 = v0[32];
  v146 = v0[31];

  v97 = v0[1];

  return v97(v148);
}

uint64_t sub_2324DF1B8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2324DF2AC, v1, 0);
}

uint64_t sub_2324DF2AC()
{
  v1 = *(v0 + 512);

  v44 = v1;
  if (v1 == 1)
  {
    v2 = *(v0 + 472);
    v3 = (*(**(v0 + 232) + 264))(v0 + 176);
    v5 = *v4;
    *v4 = MEMORY[0x277D84F90];

    v3(v0 + 176, 0);

    v6 = sub_232545888();
    v7 = sub_232546208();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 488);
    v9 = *(v0 + 496);
    if (v8)
    {
      v12 = *(v0 + 456);
      v11 = *(v0 + 464);
      v13 = *(v0 + 232);
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = *(v12() + 16);

      *(v14 + 4) = v15;

      v16 = "   Sending payloads to symptomsd-distributed was successful. Pending updates: %ld";
LABEL_6:
      _os_log_impl(&dword_2324C0000, v6, v7, v16, v14, 0xCu);
      MEMORY[0x238386450](v14, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *(v0 + 472);
    v18 = *(v0 + 232);

    v6 = sub_232545888();
    v7 = sub_2325461F8();
    v19 = os_log_type_enabled(v6, v7);
    v21 = *(v0 + 488);
    v20 = *(v0 + 496);
    if (v19)
    {
      v23 = *(v0 + 456);
      v22 = *(v0 + 464);
      v24 = *(v0 + 232);
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v25 = *(v23() + 16);

      *(v14 + 4) = v25;

      v16 = "   Failed sending payloads to symptomsd-distributed. Retaining %ld pending updates for future retries";
      goto LABEL_6;
    }
  }

  v26 = *(v0 + 232);

LABEL_8:

  swift_unknownObjectRelease();

  v27 = *(v0 + 480);
  [v27 invalidate];

  v28 = *(v0 + 448);
  v29 = *(v0 + 424);
  v31 = *(v0 + 392);
  v30 = *(v0 + 400);
  v32 = *(v0 + 384);
  v33 = *(v0 + 360);
  v34 = *(v0 + 336);
  v36 = *(v0 + 304);
  v35 = *(v0 + 312);
  v37 = *(v0 + 296);
  v40 = *(v0 + 288);
  v41 = *(v0 + 280);
  v42 = *(v0 + 256);
  v43 = *(v0 + 248);

  v38 = *(v0 + 8);

  return v38(v44);
}

uint64_t sub_2324DF5A0(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_2324DF5FC()
{
  v1[26] = v0;
  v2 = *(*(sub_232545688() - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v3 = sub_2325458C8();
  v1[28] = v3;
  v4 = *(v3 - 8);
  v1[29] = v4;
  v5 = *(v4 + 64) + 15;
  v1[30] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v7 = sub_2325456F8();
  v1[32] = v7;
  v8 = *(v7 - 8);
  v1[33] = v8;
  v9 = *(v8 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324DF794, v0, 0);
}

uint64_t sub_2324DF794()
{
  v73 = v0;
  sub_232545FB8();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_232545F58();

  v3 = [v1 initWithMachServiceName:v2 options:4096];
  v0[37] = v3;

  if (qword_2814D6460 != -1)
  {
    swift_once();
  }

  [v3 setRemoteObjectInterface_];
  [v3 activate];
  v4 = [v3 remoteObjectProxy];
  sub_232546338();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93880, &qword_232547840);
  if (!swift_dynamicCast())
  {
    v14 = v0[26] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
    v15 = sub_232545888();
    v16 = sub_2325461F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2324C0000, v15, v16, "Failed to obtain remoteObjectProxy while contacting symptomsd-distributed", v17, 2u);
      MEMORY[0x238386450](v17, -1, -1);
    }

    goto LABEL_11;
  }

  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = v0[25];
  v0[38] = v8;
  v9 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v9, v7, &unk_27DD932E0, qword_2325472E0);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    v10 = v0[26];
    sub_2324C28AC(v0[31], &unk_27DD932E0, qword_2325472E0);
    v11 = sub_232545888();
    v12 = sub_2325461F8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2324C0000, v11, v12, "Unable to obtain a valid device identifier", v13, 2u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_11:
    v18 = v0[37];
    v20 = v0[34];
    v19 = v0[35];
    v22 = v0[30];
    v21 = v0[31];
    v23 = v0[27];
    [v18 invalidate];

    v24 = v0[1];

    return v24(0);
  }

  v27 = v0[35];
  v26 = v0[36];
  v28 = v0[33];
  v70 = v0[34];
  v71 = v8;
  v29 = v0[32];
  v31 = v0[29];
  v30 = v0[30];
  v33 = v0[27];
  v32 = v0[28];
  v34 = v0[26];
  (*(v28 + 32))(v26, v0[31], v29);
  (*(v31 + 104))(v30, *MEMORY[0x277D6B2D0], v32);
  v35 = *(v28 + 16);
  v35(v27, v26, v29);
  sub_2325458B8();
  sub_232545668();
  v36 = objc_allocWithZone(sub_232545A48());
  v37 = sub_232545A38();
  v38 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
  v0[39] = v37;
  v0[40] = v38;
  v35(v70, v26, v29);
  v39 = v37;
  v40 = sub_232545888();
  v41 = sub_232546208();

  v42 = os_log_type_enabled(v40, v41);
  v44 = v0[33];
  v43 = v0[34];
  v45 = v0[32];
  if (v42)
  {
    v46 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v72 = v69;
    *v46 = 136315394;
    sub_2324E25F8(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v67 = v41;
    v47 = sub_232546608();
    v48 = v39;
    v50 = v49;
    v51 = *(v44 + 8);
    v51(v43, v45);
    v52 = sub_2324C2220(v47, v50, &v72);
    v39 = v48;

    *(v46 + 4) = v52;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v48;
    *v68 = v48;
    v53 = v48;
    _os_log_impl(&dword_2324C0000, v40, v67, "Created payload with identifier %s: %@", v46, 0x16u);
    sub_2324C28AC(v68, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v68, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x238386450](v69, -1, -1);
    MEMORY[0x238386450](v46, -1, -1);
  }

  else
  {

    v51 = *(v44 + 8);
    v51(v43, v45);
  }

  v0[41] = v51;
  v54 = MobileGestalt_get_current_device();
  if (v54)
  {
    v55 = v54;
    v56 = MobileGestalt_copy_productType_obj();
    if (v56)
    {
      v57 = v56;
      sub_232545F68();
    }

    sub_232545918();
  }

  else
  {
    v55 = sub_232545888();
    v58 = sub_232546208();
    if (os_log_type_enabled(v55, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2324C0000, v55, v58, "Unable to access MobileGestalt. Cannot determine device model", v59, 2u);
      MEMORY[0x238386450](v59, -1, -1);
    }
  }

  v60 = v39;
  v61 = sub_232545888();
  v62 = sub_232546208();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    *(v63 + 4) = v60;
    *v64 = v60;
    v65 = v60;
    _os_log_impl(&dword_2324C0000, v61, v62, "Ready to send payload to symptomsd-distributed: %@", v63, 0xCu);
    sub_2324C28AC(v64, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v64, -1, -1);
    MEMORY[0x238386450](v63, -1, -1);
  }

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_2324E0024;
  v66 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932F0, qword_232547848);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2324DF5A0;
  v0[13] = &block_descriptor_2;
  v0[14] = v66;
  [v71 deliverCloudKitDevicePayload:v60 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2324E0024()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2324E0118, v1, 0);
}

uint64_t sub_2324E0118()
{
  v38 = *(v0 + 336);
  if (v38)
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 312);
    v3 = sub_232545888();
    v4 = sub_232546208();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 312);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&dword_2324C0000, v3, v4, "Successfully delivered payload to symptomsd-distributed: %@", v6, 0xCu);
      sub_2324C28AC(v7, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v7, -1, -1);
      MEMORY[0x238386450](v6, -1, -1);
    }

    v9 = *(v0 + 328);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v16 = *(v0 + 224);

    swift_unknownObjectRelease();
    (*(v15 + 8))(v14, v16);
    v9(v11, v12);
  }

  else
  {
    v17 = *(v0 + 208) + *(v0 + 320);
    v18 = sub_232545888();
    v19 = sub_2325461F8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2324C0000, v18, v19, "Failed to deliver payload to symptomsd-distributed", v20, 2u);
      MEMORY[0x238386450](v20, -1, -1);
    }

    v37 = *(v0 + 328);
    v21 = *(v0 + 304);
    v22 = *(v0 + 312);
    v23 = *(v0 + 288);
    v25 = *(v0 + 256);
    v24 = *(v0 + 264);
    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    v28 = *(v0 + 224);

    swift_unknownObjectRelease();
    (*(v27 + 8))(v26, v28);
    v37(v23, v25);
  }

  v29 = *(v0 + 296);
  v31 = *(v0 + 272);
  v30 = *(v0 + 280);
  v33 = *(v0 + 240);
  v32 = *(v0 + 248);
  v34 = *(v0 + 216);
  [v29 invalidate];

  v35 = *(v0 + 8);

  return v35(v38);
}

uint64_t sub_2324E0404(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_232545E68();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = sub_232545EA8();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = sub_232545E58();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v13 = sub_232545EC8();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v15 = *(v14 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v16 = sub_232546268();
  v3[26] = v16;
  v17 = *(v16 - 8);
  v3[27] = v17;
  v18 = *(v17 + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324E0650, v2, 0);
}

void sub_2324E0650()
{
  v102 = v0;
  v1 = *(*v0[11] + 176);
  if (v1())
  {
    swift_getObjectType();
    sub_2325462A8();
    swift_unknownObjectRelease();
  }

  if (v0[9] <= 0)
  {
    v76 = v0[11] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
    v77 = sub_232545888();
    v78 = sub_232546208();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_2324C0000, v77, v78, "Stopping periodic payload sending", v79, 2u);
      MEMORY[0x238386450](v79, -1, -1);
    }

    v75 = 1;
    goto LABEL_25;
  }

  v99 = v1;
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[11];
  sub_2324DB388(0, &unk_2814D4EA0, 0x277D85CA0);
  v6 = (*(*v5 + 152))();
  v0[8] = MEMORY[0x277D84F90];
  sub_2324E25F8(&unk_2814D4EB0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93430, qword_232547860);
  sub_2324E2640(&unk_2814D4EF0, &unk_27DD93430, qword_232547860);
  sub_232546378();
  v7 = sub_232546278();

  (*(v3 + 8))(v2, v4);
  v8 = (*(*v5 + 184))(v7);
  if (!(v99)(v8))
  {
    v80 = v0[11] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDistributionController_logger;
    v81 = sub_232545888();
    v82 = sub_2325461F8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_2324C0000, v81, v82, "Failed to create periodic timer", v83, 2u);
      MEMORY[0x238386450](v83, -1, -1);
    }

    v75 = 0;
    goto LABEL_25;
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
    goto LABEL_29;
  }

  v12 = __OFADD__(v10, v9);
  v13 = v10 + v9;
  if (v12)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v11;
  v15 = v13;
  v100 = v0[11];
  v16 = sub_232545888();
  v17 = sub_2325461E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v101 = v19;
    *v18 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D839F8];
    *(v20 + 16) = xmmword_232547150;
    v22 = MEMORY[0x277D83A80];
    *(v20 + 56) = v21;
    *(v20 + 64) = v22;
    *(v20 + 32) = v14;
    v23 = sub_232545F78();
    v25 = sub_2324C2220(v23, v24, &v101);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_232547150;
    *(v26 + 56) = MEMORY[0x277D839F8];
    *(v26 + 64) = v22;
    *(v26 + 32) = v15;
    v27 = sub_232545F78();
    v29 = sub_2324C2220(v27, v28, &v101);

    *(v18 + 14) = v29;
    _os_log_impl(&dword_2324C0000, v16, v17, "Choosing random interval between %s and %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v19, -1, -1);
    MEMORY[0x238386450](v18, -1, -1);
  }

  if (v14 > v15)
  {
    goto LABEL_30;
  }

  if (COERCE__INT64(fabs(v15 - v14)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v30 = v0[24];
  v31 = v0[25];
  v33 = v0[22];
  v32 = v0[23];
  v34 = v0[20];
  v92 = v31;
  v93 = v0[21];
  v35 = v0[19];
  v96 = v0[18];
  v36 = sub_2324E2058(0x20000000000001uLL);
  v37 = (v15 - v14) * vcvtd_n_f64_u64(v36, 0x35uLL) + v14;
  if (v36 == 0x20000000000000)
  {
    v38 = v15;
  }

  else
  {
    v38 = v37;
  }

  ObjectType = swift_getObjectType();
  sub_232545EB8();
  sub_232545ED8();
  v94 = *(v32 + 8);
  v94(v30, v33);
  v39 = *MEMORY[0x277D85180];
  v40 = sub_232545E58();
  v41 = *(*(v40 - 8) + 104);
  v41(v93, v39, v40);
  *v34 = 0;
  v41(v34, *MEMORY[0x277D85168], v40);
  MEMORY[0x2383858E0](v92, v93, v34, ObjectType);
  v42 = *(v35 + 8);
  v42(v34, v96);
  v42(v93, v96);
  v94(v92, v33);
  v43 = sub_232545888();
  v44 = sub_2325461E8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v101 = v46;
    *v45 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
    v47 = swift_allocObject();
    v48 = MEMORY[0x277D839F8];
    *(v47 + 16) = xmmword_232547150;
    v49 = MEMORY[0x277D83A80];
    *(v47 + 56) = v48;
    *(v47 + 64) = v49;
    *(v47 + 32) = v38;
    v50 = sub_232545F78();
    v52 = sub_2324C2220(v50, v51, &v101);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_2324C0000, v43, v44, "Current publishing interval is %s seconds", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x238386450](v46, -1, -1);
    MEMORY[0x238386450](v45, -1, -1);
  }

  v53 = v0[16];
  v54 = v0[17];
  v55 = v0[14];
  v56 = v0[13];
  v95 = v0[12];
  v97 = v0[15];
  v57 = v0[10];
  v58 = v0[11];
  v59 = v0[9];
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  v61 = swift_allocObject();
  swift_weakInit();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = v60;
  v62[4] = v59;
  v62[5] = v57;
  v0[6] = sub_2324E20E4;
  v0[7] = v62;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2324D0160;
  v0[5] = &block_descriptor_15;
  v63 = _Block_copy(v0 + 2);

  sub_232545E78();
  sub_2324DDFC0();
  sub_232546298();
  _Block_release(v63);
  (*(v56 + 8))(v55, v95);
  (*(v53 + 8))(v54, v97);
  v64 = v0[7];

  sub_2325462C8();
  v65 = sub_232545888();
  v66 = sub_232546208();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v101 = v68;
    *v67 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
    v69 = swift_allocObject();
    v70 = MEMORY[0x277D839F8];
    *(v69 + 16) = xmmword_232547150;
    v71 = MEMORY[0x277D83A80];
    *(v69 + 56) = v70;
    *(v69 + 64) = v71;
    *(v69 + 32) = v38;
    v72 = sub_232545F78();
    v74 = sub_2324C2220(v72, v73, &v101);

    *(v67 + 4) = v74;
    _os_log_impl(&dword_2324C0000, v65, v66, "Started periodic/random record creating [current interval: %s seconds]", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x238386450](v68, -1, -1);
    MEMORY[0x238386450](v67, -1, -1);
  }

  swift_unknownObjectRelease();

  v75 = 1;
LABEL_25:
  v84 = v0[28];
  v86 = v0[24];
  v85 = v0[25];
  v88 = v0[20];
  v87 = v0[21];
  v89 = v0[17];
  v90 = v0[14];

  v91 = v0[1];

  v91(v75);
}

uint64_t sub_2324E10EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    result = swift_beginAccess();
    v13 = *(a2 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      *(a2 + 16) = v15;
      v16 = sub_2325460F8();
      (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v12;
      v17[5] = a2;
      v17[6] = a3;
      v17[7] = a4;

      sub_2324D9D7C(0, 0, v10, &unk_232547970, v17);
    }
  }

  return result;
}

uint64_t sub_2324E1260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_2324E1288, 0, 0);
}

uint64_t sub_2324E1288()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = sub_232545888();
  v4 = sub_232546208();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_2324C0000, v3, v4, "Performing record creation [iteration %ld]", v6, 0xCu);
    MEMORY[0x238386450](v6, -1, -1);
  }

  else
  {
    v7 = v0[7];
  }

  v8 = *(*v0[6] + 328);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_2324E1474;
  v11 = v0[6];

  return v13();
}

uint64_t sub_2324E1474()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v4 = *v0;

  v11 = (*v3 + 336);
  v12 = (*v11 + **v11);
  v5 = (*v11)[1];
  v6 = swift_task_alloc();
  v1[11] = v6;
  *v6 = v4;
  v6[1] = sub_2324E1684;
  v7 = v1[9];
  v8 = v1[8];
  v9 = v1[6];

  return v12(v8, v7);
}

uint64_t sub_2324E1684(char a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_2324E1784, 0, 0);
}

uint64_t sub_2324E17A4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(type metadata accessor for NDFDevice() - 8);
  v2[12] = v3;
  v4 = *(v3 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324E1884, v1, 0);
}

uint64_t sub_2324E1884()
{
  v46 = v0;
  v1 = *((*(**(v0 + 88) + 248))() + 16);

  if (v1)
  {
    result = (*(**(v0 + 88) + 264))(v0 + 48);
    if (!*(*v3 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 88);
    v8 = *(*(v0 + 96) + 80);
    sub_2324CE250(*v3 + ((v8 + 32) & ~v8), v5);
    sub_2324E2250(0, 1);
    v4(v0 + 48, 0);
    sub_2324CE250(v5, v6);
    v9 = sub_232545888();
    v10 = sub_232546208();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    if (v11)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v45 = v15;
      *v14 = 136315138;
      v16 = sub_2324F6270();
      v18 = v17;
      sub_2324CE2B4(v12);
      v19 = sub_2324C2220(v16, v18, &v45);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2324C0000, v9, v10, "Removed a pending CloudKit update for: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x238386450](v15, -1, -1);
      MEMORY[0x238386450](v14, -1, -1);
    }

    else
    {

      sub_2324CE2B4(v12);
    }

    sub_2324CE2B4(v13);
  }

  v20 = *(v0 + 88);
  sub_2324CE250(*(v0 + 80), *(v0 + 112));
  v21 = (*(*v20 + 264))(v0 + 16);
  v23 = v22;
  v24 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_2324E1E80(0, v24[2] + 1, 1, v24);
    *v23 = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_2324E1E80(v26 > 1, v27 + 1, 1, v24);
    *v23 = v24;
  }

  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v31 = *(v0 + 88);
  v30 = *(v0 + 96);
  v32 = *(v0 + 80);
  v24[2] = v27 + 1;
  sub_2324DB2D0(v28, v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27);
  v21(v0 + 16, 0);
  sub_2324CE250(v32, v29);
  v33 = sub_232545888();
  v34 = sub_232546208();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 104);
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45 = v38;
    *v37 = 136315138;
    v39 = sub_2324F6270();
    v41 = v40;
    sub_2324CE2B4(v36);
    v42 = sub_2324C2220(v39, v41, &v45);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_2324C0000, v33, v34, "Queued pending CloudKit update for: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x238386450](v38, -1, -1);
    MEMORY[0x238386450](v37, -1, -1);
  }

  else
  {

    sub_2324CE2B4(v36);
  }

  v43 = swift_task_alloc();
  *(v0 + 136) = v43;
  *v43 = v0;
  v43[1] = sub_2324E1CFC;
  v44 = *(v0 + 88);

  return sub_2324DCEE8();
}

uint64_t sub_2324E1CFC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

size_t sub_2324E1E80(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93280, &qword_2325477D0);
  v10 = *(type metadata accessor for NDFDevice() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NDFDevice() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2324E2058(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x238386460](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x238386460](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2324E2108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for NDFDevice();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2324E2250(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2324E1E80(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2324E2108(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t type metadata accessor for NDFDistributionController()
{
  result = qword_2814D6C30;
  if (!qword_2814D6C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2324E2364()
{
  v0 = sub_2325458A8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2324E2460();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2324E2460()
{
  if (!qword_27DD932F8)
  {
    sub_232545B08();
    v0 = sub_232546128();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD932F8);
    }
  }
}

uint64_t sub_2324E24C0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2324C2910;

  return sub_2324DD864(a1, v5, v6, v4);
}

uint64_t sub_2324E2568()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2324C290C;

  return sub_2324DDC08(v0);
}

uint64_t sub_2324E25F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2324E2640(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2324E2694(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2324C290C;

  return sub_2324E1260(a1, v8, v9, v4, v5, v7, v6);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2324E27BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F46E8();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324E282C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2324E28B0()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2324E28F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2324E29B0()
{
  v0 = *sub_2324E8FA0();
}

void sub_2324E29EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v103 = a1;
  v7 = sub_232545688();
  v95 = *(v7 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v99 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v100 = v87 - v12;
  v105 = type metadata accessor for NDFEvent(0);
  v13 = *(v105 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v105);
  v17 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v106 = v87 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v87 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v104 = v87 - v24;
  MEMORY[0x28223BE20](v23);
  v107 = (v87 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v87 - v28;
  v30 = sub_2325456F8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v97 = v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v34 = 0xE500000000000000;
    goto LABEL_5;
  }

  sub_232545698();
  if ((*(v31 + 48))(v29, 1, v30) != 1)
  {
    v41 = v97;
    v42 = (*(v31 + 32))(v97, v29, v30);
    v43 = (*(*v4 + 112))(v42);
    v44 = *(v43 + 16);
    v45 = v31;
    v90 = v30;
    if (v44 && (v46 = sub_2324E6CD4(v41), (v47 & 1) != 0) && (v48 = *(*(v43 + 56) + 8 * v46), , , (v102 = *(v48 + 16)) != 0))
    {
      v88 = v45;
      v94 = v7;
      v50 = 0;
      v98 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
      v51 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v87[1] = v48;
      v101 = v48 + v51;
      v52 = v13;
      v53 = *(v13 + 72);
      v91 = v103 + v51;
      v89 = v52;
      v95 += 40;
      v96 = (v52 + 56);
      *&v49 = 136315138;
      v92 = v49;
      v93 = v4;
      v54 = v100;
      v55 = v104;
      v56 = v107;
      do
      {
        sub_2324D32DC(v101 + v53 * v50, v56);
        v58 = *(v56 + 8);
        if (v58)
        {
          v59 = *(v103 + 16);
          if (v59)
          {
            v60 = *v107;
            v61 = v91;
            while (1)
            {
              sub_2324D32DC(v61, v22);
              if (sub_232536950(*v22, v22[8], v60, v58))
              {
                break;
              }

              sub_2324D3340(v22);
              v61 += v53;
              if (!--v59)
              {
                goto LABEL_23;
              }
            }

            sub_2324E6D6C(v22, v54);
            (*v96)(v54, 0, 1, v105);
            sub_2324C28AC(v54, &qword_27DD93400, &qword_2325479C0);
          }

          else
          {
LABEL_23:
            (*v96)(v54, 1, 1, v105);
            v62 = v106;
            sub_2324D32DC(v107, v106);
            v63 = sub_232545888();
            v64 = sub_232546208();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v108 = v66;
              *v65 = v92;
              swift_beginAccess();
              v67 = sub_2325384B0();
              v69 = sub_2324C2220(v67, v68, &v108);

              *(v65 + 4) = v69;
              v4 = v93;
              _os_log_impl(&dword_2324C0000, v63, v64, "Assume event %s has ended", v65, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v66);
              v70 = v66;
              v62 = v106;
              MEMORY[0x238386450](v70, -1, -1);
              v71 = v65;
              v54 = v100;
              MEMORY[0x238386450](v71, -1, -1);
            }

            v57 = v99;
            sub_232545668();
            swift_beginAccess();
            (*v95)(v62 + *(v105 + 24), v57, v94);
            *(v62 + 9) = 3;
            (*(*v4 + 144))(v62);
            sub_2324C28AC(v54, &qword_27DD93400, &qword_2325479C0);
            sub_2324D3340(v62);
          }

          v55 = v104;
        }

        else
        {
          sub_2324D32DC(v56, v55);
          v72 = sub_232545888();
          v73 = sub_232546208();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v108 = v75;
            *v74 = v92;
            v76 = sub_2325384B0();
            v78 = v77;
            sub_2324D3340(v104);
            v79 = sub_2324C2220(v76, v78, &v108);
            v55 = v104;

            *(v74 + 4) = v79;
            _os_log_impl(&dword_2324C0000, v72, v73, "Not prematurely ending misconfigured event %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v75);
            v80 = v75;
            v4 = v93;
            MEMORY[0x238386450](v80, -1, -1);
            v81 = v74;
            v54 = v100;
            MEMORY[0x238386450](v81, -1, -1);
          }

          else
          {

            sub_2324D3340(v55);
          }
        }

        v56 = v107;
        ++v50;
        sub_2324D3340(v107);
      }

      while (v50 != v102);

      v82 = v103;
      v13 = v89;
      v45 = v88;
      v83 = *(v103 + 16);
      if (!v83)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v82 = v103;
      v83 = *(v103 + 16);
      if (!v83)
      {
LABEL_32:
        (*(v45 + 8))(v97, v90);
        return;
      }
    }

    v84 = *(*v4 + 144);
    v85 = v82 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v86 = *(v13 + 72);
    do
    {
      sub_2324D32DC(v85, v17);
      v84(v17);
      sub_2324D3340(v17);
      v85 += v86;
      --v83;
    }

    while (v83);
    goto LABEL_32;
  }

  sub_2324C28AC(v29, &unk_27DD932E0, qword_2325472E0);
  v34 = a3;
LABEL_5:

  v35 = sub_232545888();
  v36 = sub_2325461F8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v109 = v38;
    *v37 = 136315138;
    if (a3)
    {
      v39 = a2;
    }

    else
    {
      v39 = 0x3E6C696E3CLL;
    }

    v40 = sub_2324C2220(v39, v34, &v109);

    *(v37 + 4) = v40;
    _os_log_impl(&dword_2324C0000, v35, v36, "Failed to process polled events: invalid deviceID %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x238386450](v38, -1, -1);
    MEMORY[0x238386450](v37, -1, -1);
  }
}

uint64_t sub_2324E33C0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for NDFEvent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_2324D32DC(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return sub_2324D3340(v11);
      }

      if (v15)
      {
        break;
      }

      sub_2324D3340(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_2324E6D6C(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

void sub_2324E353C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v120 = &v107 - v6;
  v7 = sub_232545688();
  v115 = *(v7 - 8);
  v8 = v115[8];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v107 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v114 = &v107 - v15;
  v16 = type metadata accessor for NDFEvent(0);
  v122 = *(v16 - 8);
  v123 = v16;
  v17 = *(v122 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v107 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v112 = &v107 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v111 = &v107 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v121 = &v107 - v28;
  v118 = v29;
  MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  v32 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v124 = a1;
  sub_2324D32DC(a1, &v107 - v30);
  v33 = sub_232545888();
  v34 = sub_232546208();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v117 = v2;
    v113 = v7;
    v37 = v32;
    v38 = v36;
    v128[0] = v36;
    *v35 = 136315138;
    v39 = sub_2325384B0();
    v40 = v11;
    v41 = v22;
    v43 = v42;
    sub_2324D3340(v31);
    v44 = sub_2324C2220(v39, v43, v128);
    v22 = v41;
    v11 = v40;

    *(v35 + 4) = v44;
    _os_log_impl(&dword_2324C0000, v33, v34, "Noted event %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v45 = v38;
    v32 = v37;
    v7 = v113;
    v2 = v117;
    MEMORY[0x238386450](v45, -1, -1);
    MEMORY[0x238386450](v35, -1, -1);
  }

  else
  {

    v46 = sub_2324D3340(v31);
  }

  v47 = (*v2 + 112);
  v117 = *v47;
  v48 = (v117)(v46);
  v49 = v124;
  if (!*(v48 + 16) || (v50 = sub_2324E6CD4(v124 + *(v123 + 28)), (v51 & 1) == 0))
  {

    LOBYTE(v128[0]) = *(v49 + 9);
    LOBYTE(v125) = 3;
    sub_2324E6DD0();
    if (sub_232545F48())
    {
LABEL_11:
      v56 = 1;
      goto LABEL_12;
    }

LABEL_10:
    (*(*v2 + 184))(v49);
    goto LABEL_11;
  }

  v110 = v47;
  v52 = *(*(v48 + 56) + 8 * v50);

  MEMORY[0x28223BE20](v53);
  *(&v107 - 2) = v49;
  v54 = v114;
  sub_2324E33C0(sub_2324E8E28, v52, v114);
  v55 = v123;

  if ((*(v122 + 48))(v54, 1, v55) == 1)
  {
    sub_2324C28AC(v54, &qword_27DD93400, &qword_2325479C0);
    LOBYTE(v128[0]) = *(v49 + 9);
    LOBYTE(v125) = 3;
    sub_2324E6DD0();
    if (sub_232545F48())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v109 = v32;
  v83 = v121;
  sub_2324E6D6C(v54, v121);
  v84 = *(v83 + 9);
  v85 = v115[2];
  v85(v116, v83 + *(v55 + 24), v7);
  v86 = *(v49 + 9);
  v85(v11, v49 + *(v55 + 24), v7);
  LOBYTE(v128[0]) = v86;
  LOBYTE(v125) = v84;
  sub_2324E6DD0();
  v87 = sub_232545F48();
  v108 = v11;
  if ((v87 & 1) != 0 && (sub_232545618() & 1) == 0)
  {
    v56 = 0;
  }

  else
  {
    LODWORD(v123) = v86;
    v88 = v111;
    sub_2324D32DC(v121, v111);
    v89 = v112;
    sub_2324D32DC(v49, v112);
    v90 = sub_232545888();
    v91 = sub_232546208();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v113 = v7;
      v93 = v92;
      v94 = swift_slowAlloc();
      v128[0] = v94;
      *v93 = 136315394;
      v95 = sub_2325384B0();
      v96 = v88;
      v97 = v89;
      v99 = v98;
      sub_2324D3340(v96);
      v100 = sub_2324C2220(v95, v99, v128);

      *(v93 + 4) = v100;
      *(v93 + 12) = 2080;
      v101 = sub_2325384B0();
      v103 = v102;
      sub_2324D3340(v97);
      v104 = sub_2324C2220(v101, v103, v128);

      *(v93 + 14) = v104;
      _os_log_impl(&dword_2324C0000, v90, v91, "Updating event %s to %s", v93, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v94, -1, -1);
      v105 = v93;
      v7 = v113;
      MEMORY[0x238386450](v105, -1, -1);
    }

    else
    {

      sub_2324D3340(v89);
      sub_2324D3340(v88);
    }

    (*(*v2 + 176))(v121);
    (*(*v2 + 184))(v49);
    v56 = 1;
    LOBYTE(v86) = v123;
  }

  v127 = v86;
  v126 = 3;
  sub_2324E6F6C();
  sub_232546008();
  sub_232546008();
  if (LODWORD(v128[0]) == v125)
  {
    (*(*v2 + 176))(v49);
    v56 = 1;
  }

  v106 = v115[1];
  v106(v108, v7);
  v106(v116, v7);
  sub_2324D3340(v121);
LABEL_12:
  sub_2324D32DC(v49, v22);
  v57 = sub_232545888();
  v58 = sub_232546208();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v128[0] = v60;
    *v59 = 136315394;
    v61 = sub_2325384B0();
    v63 = v62;
    sub_2324D3340(v22);
    v64 = sub_2324C2220(v61, v63, v128);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    if (v56)
    {
      v65 = 7562617;
    }

    else
    {
      v65 = 28526;
    }

    if (v56)
    {
      v66 = 0xE300000000000000;
    }

    else
    {
      v66 = 0xE200000000000000;
    }

    v67 = sub_2324C2220(v65, v66, v128);

    *(v59 + 14) = v67;
    _os_log_impl(&dword_2324C0000, v57, v58, "Done noting event %s [update clients? %s]", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v60, -1, -1);
    MEMORY[0x238386450](v59, -1, -1);
  }

  else
  {

    sub_2324D3340(v22);
  }

  v68 = sub_232545888();
  v69 = sub_2325461E8();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v128[0] = v71;
    *v70 = 136315138;
    v117();
    sub_2325456F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
    sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0]);
    v72 = sub_232545EF8();
    v74 = v73;

    v75 = sub_2324C2220(v72, v74, v128);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_2324C0000, v68, v69, "All known events: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x238386450](v71, -1, -1);
    MEMORY[0x238386450](v70, -1, -1);
  }

  v76 = v124;
  if (v56)
  {
    (*(*v2 + 208))(v124);
    v77 = sub_2325460F8();
    v78 = v120;
    (*(*(v77 - 8) + 56))(v120, 1, 1, v77);
    v79 = v119;
    sub_2324D32DC(v76, v119);
    v80 = sub_2324E8DE0(qword_2814D4DD8, type metadata accessor for NDFEventController);
    v81 = (*(v122 + 80) + 40) & ~*(v122 + 80);
    v82 = swift_allocObject();
    v82[2] = v2;
    v82[3] = v80;
    v82[4] = v2;
    sub_2324E6D6C(v79, v82 + v81);
    swift_retain_n();
    sub_2324C8F70(0, 0, v78, &unk_2325479D0, v82);
  }
}

uint64_t sub_2324E4200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2324E4220, a4, 0);
}

uint64_t sub_2324E4220()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_telemetryController);
  v0[4] = v1;
  v2 = (*v1 + 248) & 0xFFFFFFFFFFFFLL | 0x42F9000000000000;
  v0[5] = *(*v1 + 248);
  v0[6] = v2;
  return MEMORY[0x2822009F8](sub_2324E4268, v1, 0);
}

uint64_t sub_2324E4268()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 40))(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2324E42CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  (*(*v4 + 168))(a1, a2, a3);
  v17 = type metadata accessor for NDFEvent(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    sub_2324C28AC(v12, &qword_27DD93400, &qword_2325479C0);
    v18 = sub_2325456F8();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v16, 1, 1, v18);
    sub_2325456E8();
    result = (*(v19 + 48))(v16, 1, v18);
    if (result != 1)
    {
      return sub_2324C28AC(v16, &unk_27DD932E0, qword_2325472E0);
    }
  }

  else
  {
    v21 = *(v17 + 36);
    v22 = sub_2325456F8();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v16, &v12[v21], v22);
    sub_2324D3340(v12);
    (*(v23 + 56))(v16, 0, 1, v22);
    return (*(v23 + 32))(a4, v16, v22);
  }

  return result;
}

uint64_t sub_2324E4598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v27 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_2325456F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = sub_232545688();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2324E6FC0(a1, a2);
  sub_232545668();
  (*(v14 + 16))(v20, a3, v13);
  sub_2324CF3C4(v26, v12, &unk_27DD932E0, qword_2325472E0);
  (*(*v5 + 152))(a1, a2, a3);
  return sub_232538370(a1, a2, 1, v24, v20, v12, v18, v27);
}

uint64_t sub_2324E47B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for NDFEvent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  v18 = (*(*v4 + 112))(v15);
  if (*(v18 + 16) && (v19 = sub_2324E6CD4(a3), (v20 & 1) != 0) && (v21 = *(*(v18 + 56) + 8 * v19), , result = , (v23 = *(v21 + 16)) != 0))
  {
    v24 = 0;
    while (v24 < *(v21 + 16))
    {
      sub_2324D32DC(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v14);
      if (sub_232536950(*v14, v14[8], a1, a2))
      {

        sub_2324E6D6C(v14, v17);
        sub_2324E6D6C(v17, a4);
        v25 = 0;
        return (*(v10 + 56))(a4, v25, 1, v9);
      }

      ++v24;
      result = sub_2324D3340(v14);
      if (v23 == v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v25 = 1;
    return (*(v10 + 56))(a4, v25, 1, v9);
  }

  return result;
}

int64_t sub_2324E49B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2325456F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NDFEvent(0);
  v10 = *(v5 + 16);
  v28 = *(v9 + 28);
  v10(v8, a1 + v28, v4);
  v11 = *(*v1 + 128);
  v26 = *v1 + 128;
  v27 = v11;
  v12 = v11(v30);
  v13 = sub_2324E4CB0(v29);
  v15 = v13;
  if (*v14)
  {
    v16 = v14;
    MEMORY[0x28223BE20](v13);
    *(&v26 - 2) = a1;
    result = sub_2324E73C8(sub_2324E6FD4, (&v26 - 4));
    v18 = *(*v16 + 16);
    if (v18 < result)
    {
      __break(1u);
      return result;
    }

    sub_2324E88F0(result, v18);
    v15(v29, 0);
    (*(v5 + 8))(v8, v4);
    v19 = v12(v30, 0);
  }

  else
  {
    (v13)(v29, 0);
    (*(v5 + 8))(v8, v4);
    v19 = v12(v30, 0);
  }

  v20 = (*(*v2 + 112))(v19);
  if (!*(v20 + 16))
  {
  }

  v21 = sub_2324E6CD4(a1 + v28);
  if ((v22 & 1) == 0)
  {
  }

  v23 = *(*(v20 + 56) + 8 * v21);

  v24 = *(v23 + 16);

  if (!v24)
  {
    v25 = v27(v30);
    sub_2324E4E40(a1 + v28);

    return v25(v30, 0);
  }

  return result;
}

void (*sub_2324E4CB0(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_2325456F8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2324E71F4(v4, v9);
  return sub_2324E4DC8;
}

void sub_2324E4DC8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_2324E4E40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_2324E6CD4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2324E7D94();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_2325456F8();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_2324E7A74(v6, v9);
  *v2 = v9;
  return v12;
}

void sub_2324E4F08(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NDFEvent(0);
  v5 = v4 - 8;
  v42 = *(v4 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2325456F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 36);
  v16 = *(*v2 + 112);
  v40[1] = *v2 + 112;
  v41 = v16;
  if (!*((v16)(v12) + 16))
  {

    goto LABEL_5;
  }

  sub_2324E6CD4(a1 + v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_5:
    v19 = (*(*v2 + 128))(v44);
    v21 = v20;
    v22 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = *v21;
    *v21 = 0x8000000000000000;
    sub_2324E849C(MEMORY[0x277D84F90], a1 + v15, isUniquelyReferenced_nonNull_native);
    *v21 = v43[0];
    v19(v44, 0);
  }

  (*(v10 + 16))(v14, a1 + v15, v9);
  v24 = (*(*v2 + 128))(v44);
  v26 = sub_2324E4CB0(v43);
  if (*v25)
  {
    v27 = v25;
    v40[0] = v9;
    sub_2324D32DC(a1, v8);
    v28 = *v27;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_2324E6AFC(0, v28[2] + 1, 1, v28);
      *v27 = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_2324E6AFC(v30 > 1, v31 + 1, 1, v28);
      *v27 = v28;
    }

    v28[2] = v31 + 1;
    sub_2324E6D6C(v8, v28 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v31);
    (v26)(v43, 0);
    (*(v10 + 8))(v14, v40[0]);
  }

  else
  {
    (v26)(v43, 0);
    (*(v10 + 8))(v14, v9);
  }

  v24(v44, 0);

  v32 = sub_232545888();
  v33 = sub_2325461E8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v34 = 136315138;
    v41();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
    sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0]);
    v36 = sub_232545EF8();
    v38 = v37;

    v39 = sub_2324C2220(v36, v38, v44);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_2324C0000, v32, v33, "All known events: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x238386450](v35, -1, -1);
    MEMORY[0x238386450](v34, -1, -1);
  }
}

uint64_t sub_2324E5428()
{
  v1 = type metadata accessor for NDFEvent(0);
  v54 = *(v1 - 8);
  v2 = *(v54 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v69 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v68 = &v53 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - v7;
  v66 = sub_2325456F8();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93410, &qword_2325479E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v53 - v18;
  result = (*(*v0 + 112))(v17);
  v21 = 0;
  v23 = result + 64;
  v22 = *(result + 64);
  v57 = v9;
  v58 = result;
  v24 = 1 << *(result + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v55 = v9 + 32;
  v56 = v9 + 16;
  v59 = (v9 + 8);
  v28 = MEMORY[0x277D84F90];
  v63 = v19;
  v64 = v16;
  v60 = v27;
  v61 = result + 64;
  while (v26)
  {
    v30 = v21;
LABEL_16:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v30 << 6);
    v36 = v57;
    v35 = v58;
    v37 = v66;
    (*(v57 + 16))(v65, *(v58 + 48) + *(v57 + 72) * v34, v66);
    v38 = *(*(v35 + 56) + 8 * v34);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
    v40 = *(v39 + 48);
    v41 = *(v36 + 32);
    v16 = v64;
    v41(v64, v65, v37);
    *&v16[v40] = v38;
    (*(*(v39 - 8) + 56))(v16, 0, 1, v39);

    v19 = v63;
LABEL_17:
    sub_2324E89B0(v16, v19);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
    if ((*(*(v42 - 8) + 48))(v19, 1, v42) == 1)
    {

      return v28;
    }

    v43 = *&v19[*(v42 + 48)];
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = *(v54 + 80);
      v62 = v43;
      v67 = (v45 + 32) & ~v45;
      v46 = v43 + v67;
      v47 = *(v54 + 72);
      do
      {
        sub_2324D32DC(v46, v8);
        v48 = v8[9];
        v73 = v48;
        v72 = 0;
        sub_2324E6DD0();
        if (sub_232545F48() & 1) != 0 || (v71 = v48, v70 = 3, (sub_232545F48()))
        {
          sub_2324D3340(v8);
        }

        else
        {
          v49 = v68;
          sub_2324D32DC(v8, v68);
          *(v49 + 9) = 2;
          sub_2324D32DC(v49, v69);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_2324E6AFC(0, v28[2] + 1, 1, v28);
          }

          v51 = v28[2];
          v50 = v28[3];
          if (v51 >= v50 >> 1)
          {
            v28 = sub_2324E6AFC(v50 > 1, v51 + 1, 1, v28);
          }

          sub_2324D3340(v68);
          sub_2324D3340(v8);
          v28[2] = v51 + 1;
          sub_2324E6D6C(v69, v28 + v67 + v51 * v47);
        }

        v46 += v47;
        --v44;
      }

      while (v44);

      v29 = v66;
      v19 = v63;
      v16 = v64;
    }

    else
    {

      v29 = v66;
    }

    result = (*v59)(v19, v29);
    v27 = v60;
    v23 = v61;
  }

  if (v27 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v27;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
      (*(*(v52 - 8) + 56))(v16, 1, 1, v52);
      v26 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v26 = *(v23 + 8 * v30);
    ++v21;
    if (v26)
    {
      v21 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2324E5A10(uint64_t a1)
{
  v3 = (*(*v1 + 112))();
  if (*(v3 + 16) && (v4 = sub_2324E6CD4(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2324E5A90(uint64_t a1)
{
  v3 = type metadata accessor for NDFEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_2325460F8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_2324D32DC(a1, v6);
  v12 = sub_2324E8DE0(qword_2814D4DD8, type metadata accessor for NDFEventController);
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v12;
  v14[4] = v1;
  sub_2324E6D6C(v6, v14 + v13);
  swift_retain_n();
  sub_2324C8F70(0, 0, v10, &unk_2325479F8, v14);
}

uint64_t sub_2324E5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = *(*(type metadata accessor for NDFEvent(0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324E5D08, a4, 0);
}

uint64_t sub_2324E5D08()
{
  v19 = v0;
  v1 = v0[2];
  sub_2324D32DC(v0[3], v0[4]);
  v2 = sub_232545888();
  v3 = sub_232546208();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = sub_2325384B0();
    v10 = v9;
    sub_2324D3340(v5);
    v11 = sub_2324C2220(v8, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2324C0000, v2, v3, "Delivering event %s to all clients", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x238386450](v7, -1, -1);
    MEMORY[0x238386450](v6, -1, -1);
  }

  else
  {

    sub_2324D3340(v5);
  }

  v12 = *sub_2324C8418();
  if (v12)
  {
    v13 = *(v12 + 112);
    v0[5] = v13;
    v14 = (*v13 + 160) & 0xFFFFFFFFFFFFLL | 0xDF24000000000000;
    v0[6] = *(*v13 + 160);
    v0[7] = v14;

    return MEMORY[0x2822009F8](sub_2324E5F00, v13, 0);
  }

  else
  {
    v15 = v0[4];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2324E5F00()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 24));

  v3 = *(v0 + 32);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2324E5F78()
{
  v1 = type metadata accessor for NDFEvent(0);
  v77 = *(v1 - 8);
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v100 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2325456F8();
  v91 = *(v4 - 8);
  v5 = *(v91 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v87 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v89 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93410, &qword_2325479E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v76 - v17;
  v86 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v88 = v0;
  v19 = sub_232545888();
  v20 = sub_232546208();
  v21 = os_log_type_enabled(v19, v20);
  v98 = v16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2324C0000, v19, v20, "\tKnown Events:", v22, 2u);
    v23 = v22;
    v16 = v98;
    MEMORY[0x238386450](v23, -1, -1);
  }

  result = (*(*v88 + 112))();
  v26 = 0;
  v28 = result + 64;
  v27 = *(result + 64);
  v90 = result;
  v29 = 1 << *(result + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  v96 = (v91 + 16);
  v97 = (v91 + 32);
  v95 = (v91 + 8);
  *&v25 = 136315394;
  v78 = v25;
  v93 = result + 64;
  v94 = v18;
  v92 = v32;
  v76 = v4;
  v79 = v10;
  if ((v30 & v27) == 0)
  {
    goto LABEL_10;
  }

  do
  {
    while (1)
    {
      v33 = v26;
LABEL_18:
      v99 = (v31 - 1) & v31;
      v36 = __clz(__rbit64(v31)) | (v33 << 6);
      v37 = v90;
      v38 = v91;
      v39 = v89;
      (*(v91 + 16))(v89, *(v90 + 48) + *(v91 + 72) * v36, v4);
      v40 = *(*(v37 + 56) + 8 * v36);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
      v42 = *(v41 + 48);
      v43 = *(v38 + 32);
      v16 = v98;
      v44 = v39;
      v45 = v4;
      v43(v98, v44, v4);
      *&v16[v42] = v40;
      (*(*(v41 - 8) + 56))(v16, 0, 1, v41);

      v18 = v94;
LABEL_19:
      sub_2324E89B0(v16, v18);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
      if ((*(*(v46 - 8) + 48))(v18, 1, v46) == 1)
      {
      }

      v47 = *&v18[*(v46 + 48)];
      v4 = v45;
      (*v97)(v10, v18, v45);
      if (*(v47 + 16))
      {
        break;
      }

      (*v95)(v10, v45);

      v32 = v92;
      v28 = v93;
LABEL_8:
      v16 = v98;
      v31 = v99;
      if (!v99)
      {
        goto LABEL_10;
      }
    }

    v48 = v87;
    (*v96)(v87, v10, v45);

    v49 = sub_232545888();
    v50 = sub_232546208();

    if (!os_log_type_enabled(v49, v50))
    {

      v68 = *v95;
      (*v95)(v48, v45);
      result = (v68)(v10, v45);
      v32 = v92;
      v28 = v93;
      goto LABEL_8;
    }

    v84 = v50;
    v51 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v102[0] = v83;
    *v51 = v78;
    sub_2324E8DE0(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v52 = sub_232546608();
    v54 = v53;
    v82 = *v95;
    v82(v48, v45);
    v55 = sub_2324C2220(v52, v54, v102);

    *(v51 + 4) = v55;
    v85 = v51;
    *(v51 + 12) = 2080;
    v56 = *(v47 + 16);
    if (v56)
    {
      v81 = v49;
      v101 = MEMORY[0x277D84F90];
      sub_2324E8668(0, v56, 0);
      v57 = v101;
      v58 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v80 = v47;
      v59 = v47 + v58;
      v60 = *(v77 + 72);
      do
      {
        v61 = v100;
        sub_2324D32DC(v59, v100);
        v62 = sub_2325384B0();
        v64 = v63;
        sub_2324D3340(v61);
        v101 = v57;
        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_2324E8668((v65 > 1), v66 + 1, 1);
          v57 = v101;
        }

        *(v57 + 16) = v66 + 1;
        v67 = v57 + 16 * v66;
        *(v67 + 32) = v62;
        *(v67 + 40) = v64;
        v59 += v60;
        --v56;
      }

      while (v56);

      v4 = v76;
      v16 = v98;
      v18 = v94;
      v49 = v81;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
      v16 = v98;
    }

    v101 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v70 = sub_232545F28();
    v72 = v71;

    v73 = sub_2324C2220(v70, v72, v102);

    v74 = v85;
    *(v85 + 14) = v73;
    _os_log_impl(&dword_2324C0000, v49, v84, "\t\tDevice %s: %s", v74, 0x16u);
    v75 = v83;
    swift_arrayDestroy();
    MEMORY[0x238386450](v75, -1, -1);
    MEMORY[0x238386450](v74, -1, -1);

    v10 = v79;
    result = (v82)(v79, v4);
    v32 = v92;
    v28 = v93;
    v31 = v99;
  }

  while (v99);
LABEL_10:
  if (v32 <= v26 + 1)
  {
    v34 = v26 + 1;
  }

  else
  {
    v34 = v32;
  }

  v35 = v34 - 1;
  while (1)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v33 >= v32)
    {
      v45 = v4;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93418, &qword_2325479E8);
      (*(*(v69 - 8) + 56))(v16, 1, 1, v69);
      v99 = 0;
      v26 = v35;
      goto LABEL_19;
    }

    v31 = *(v28 + 8 * v33);
    ++v26;
    if (v31)
    {
      v26 = v33;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2324E687C()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents);

  v4 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_telemetryController);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324E6904()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents);

  v4 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_telemetryController);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324E699C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v5 = sub_2324F46E8();
  v6 = sub_2325458A8();
  (*(*(v6 - 8) + 16))(v3 + v4, v5, v6);
  *(v3 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents) = MEMORY[0x277D84F98];
  v7 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_telemetryController;
  *(v3 + v7) = *sub_2324E8FA0();

  return v3;
}

uint64_t sub_2324E6A54()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_logger;
  v2 = sub_2324F46E8();
  v3 = sub_2325458A8();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_knownEvents) = MEMORY[0x277D84F98];
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFEventController_telemetryController;
  *(v0 + v4) = *sub_2324E8FA0();

  return v0;
}

size_t sub_2324E6AFC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93420, &qword_232547A88);
  v10 = *(type metadata accessor for NDFEvent(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NDFEvent(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2324E6CD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2325456F8();
  sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0]);
  v5 = sub_232545F08();

  return sub_2324E7034(a1, v5);
}

uint64_t sub_2324E6D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324E6DD0()
{
  result = qword_2814D4C80;
  if (!qword_2814D4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C80);
  }

  return result;
}

uint64_t type metadata accessor for NDFEventController()
{
  result = qword_2814D6CA0;
  if (!qword_2814D6CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324E6E70(uint64_t result, char a2)
{
  if (a2 == 1)
  {
    return sub_2324E6E84(result);
  }

  return result;
}

uint64_t sub_2324E6E84(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2324E6E94()
{
  v2 = *(type metadata accessor for NDFEvent(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2324C290C;

  return sub_2324E4200(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_2324E6F6C()
{
  result = qword_2814D4C78;
  if (!qword_2814D4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C78);
  }

  return result;
}

uint64_t sub_2324E6FC0(uint64_t result, char a2)
{
  if (a2 == 1)
  {
    return sub_2324D339C(result);
  }

  return result;
}

unint64_t sub_2324E7034(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2325456F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2324E8DE0(&qword_2814D4E80, MEMORY[0x277CC95F0]);
      v16 = sub_232545F48();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void (*sub_2324E71F4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_2325456F8();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_2324E83B0(v7);
  v7[12] = sub_2324E8100(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_2324E7330;
}

void sub_2324E7330(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t sub_2324E73C8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for NDFEvent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *v2;
  result = sub_2324E8014(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v19)
    {
      return *(v17 + 16);
    }

    v40 = v16;
    v41 = a1;
    v36 = v14;
    v37 = v11;
    v35 = v2;
    v43 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v43;
      }

      v38 = v7;
      v39 = a2;
      while (v20 < v21)
      {
        v23 = v17;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v42;
        v25 = *(v7 + 72);
        v26 = v25 * v20;
        v27 = v40;
        sub_2324D32DC(v24 + v25 * v20, v40);
        v28 = v44;
        v29 = v41(v27);
        result = sub_2324D3340(v27);
        v44 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          v7 = v38;
          v17 = v23;
        }

        else
        {
          v30 = v43;
          if (v20 == v43)
          {
            v7 = v38;
            v17 = v23;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v22;
            if (v43 >= *v22)
            {
              goto LABEL_27;
            }

            v32 = v25 * v43;
            result = sub_2324D32DC(v24 + v25 * v43, v36);
            if (v20 >= v31)
            {
              goto LABEL_28;
            }

            sub_2324D32DC(v24 + v26, v37);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_2324E8794(v23);
            }

            v33 = v17 + v42;
            result = sub_2324E8D7C(v37, v17 + v42 + v32);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_29;
            }

            result = sub_2324E8D7C(v36, v33 + v26);
            *v35 = v17;
            v7 = v38;
            v30 = v43;
          }

          v43 = v30 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2324E7698(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93428, qword_232547A90);
  v43 = a2;
  result = sub_2325464A8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0]);
      result = sub_232545F08();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_2324E7A74(int64_t a1, uint64_t a2)
{
  v43 = sub_2325456F8();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_232546398();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2324E8DE0(&qword_2814D62B0, MEMORY[0x277CC95F0]);
      v26 = sub_232545F08();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

char *sub_2324E7D94()
{
  v1 = v0;
  v34 = sub_2325456F8();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93428, qword_232547A90);
  v4 = *v0;
  v5 = sub_232546498();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2324E8014(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for NDFEvent(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void (*sub_2324E8100(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_2325456F8();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_2324E6CD4(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_2324E7D94();
      v15 = v23;
      goto LABEL_14;
    }

    sub_2324E7698(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_2324E6CD4(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_2324E82B0;
}

void sub_2324E82B0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_2324E83E4(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_2324E7A74(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_2324E83B0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2324E83D8;
}

uint64_t sub_2324E83E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2325456F8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2324E849C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2324E6CD4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2324E7D94();
      goto LABEL_7;
    }

    sub_2324E7698(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2324E6CD4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2324E83E4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

char *sub_2324E8668(char *a1, int64_t a2, char a3)
{
  result = sub_2324E8688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2324E8688(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93220, &qword_232547530);
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

unint64_t sub_2324E87A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for NDFEvent(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2324E88F0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2324E6AFC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2324E87A8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2324E89B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93410, &qword_2325479E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for NDFEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v3;
  sub_2324E6E70(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[6];
  v8 = sub_232545688();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[7];
  v10 = sub_2325456F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v3 + v9, v10);
  v13 = v1[8];
  if (!(*(v11 + 48))(v0 + v3 + v13, 1, v10))
  {
    v12(v6 + v13, v10);
  }

  v12(v6 + v1[9], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t sub_2324E8BE4()
{
  v2 = *(type metadata accessor for NDFEvent(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2324C2910;

  return sub_2324E5C74(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_2324E8CC4()
{
  result = sub_2325458A8();
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

uint64_t sub_2324E8D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324E8DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2324E8E44()
{
  v0 = *(**sub_2324C4D38() + 488);

  v2 = v0(v1);

  v3 = type metadata accessor for NDFPeriodicTelemetryController(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  result = sub_2324E9320(v2);
  qword_2814D6EE0 = v6;
  return result;
}

double sub_2324E8EE0()
{
  v0 = *(**sub_2324C4D38() + 488);

  v2 = v0(v1);

  return v2;
}

uint64_t sub_2324E8F58(double a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2324E9320(a1);
  return v5;
}

uint64_t *sub_2324E8FA0()
{
  if (qword_2814D6410 != -1)
  {
    swift_once();
  }

  return &qword_2814D6EE0;
}

uint64_t sub_2324E8FF0()
{
  if (qword_2814D6410 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2324E904C()
{
  v10 = sub_232546238();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232546218();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_232545EA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
  sub_232545E98();
  v11 = MEMORY[0x277D84F90];
  sub_2324F22A8(&qword_2814D4ED0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324F22F0(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
  sub_232546378();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_232546258();
}

uint64_t sub_2324E9320(double a1)
{
  v2 = v1;
  v4 = sub_232545688();
  v21 = *(v4 - 8);
  v22 = v4;
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v20 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_232546238();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_232546218();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_232545EA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v15 = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
  v18[1] = "symptomActiveCount";
  v18[2] = v15;
  sub_232545E98();
  v23 = MEMORY[0x277D84F90];
  sub_2324F22A8(&qword_2814D4ED0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324F22F0(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
  sub_232546378();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v19);
  *(v1 + 120) = sub_232546258();
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_isCollectingTelemetry) = 0;
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics) = MEMORY[0x277D84F98];
  *(v1 + 128) = a1;
  v16 = v20;
  sub_232545668();
  (*(v21 + 32))(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime, v16, v22);
  return v2;
}

uint64_t sub_2324E967C()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_2814D6420);
  v1 = __swift_project_value_buffer(v0, qword_2814D6420);
  v2 = sub_2324F4820();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2324E9708()
{
  v1 = v0;
  v2 = sub_232545E68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_232545EA8();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232545EC8();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v56 - v14;
  v15 = sub_232545E58();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v64 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_232546268();
  v60 = *(v18 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_232545688();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_isCollectingTelemetry))
  {
    if (qword_2814D6418 != -1)
    {
      swift_once();
    }

    v27 = sub_2325458A8();
    __swift_project_value_buffer(v27, qword_2814D6420);
    v69 = sub_232545888();
    v28 = sub_232546208();
    if (os_log_type_enabled(v69, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2324C0000, v69, v28, "Already collecting telemetry, skipping", v29, 2u);
      MEMORY[0x238386450](v29, -1, -1);
    }

    v30 = v69;
  }

  else
  {
    v57 = v6;
    v59 = v2;
    *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_isCollectingTelemetry) = 1;
    if (qword_2814D6418 != -1)
    {
      swift_once();
    }

    v58 = v3;
    v31 = sub_2325458A8();
    __swift_project_value_buffer(v31, qword_2814D6420);

    v32 = sub_232545888();
    v33 = sub_232546208();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v1[16];
      _os_log_impl(&dword_2324C0000, v32, v33, "Report NDF telemetry every %fs", v34, 0xCu);
      MEMORY[0x238386450](v34, -1, -1);
    }

    sub_232545668();
    v35 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime;
    swift_beginAccess();
    (*(v23 + 40))(v1 + v35, v26, v22);
    swift_endAccess();
    v36 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
    swift_beginAccess();
    v37 = *(v1 + v36);
    *(v1 + v36) = MEMORY[0x277D84F98];

    if (v1[14])
    {
      v38 = v1[14];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_2325462A8();
      swift_unknownObjectRelease();
      v39 = v1[14];
      v1[14] = 0;
      swift_unknownObjectRelease();
    }

    sub_2324DB388(0, &unk_2814D4EA0, 0x277D85CA0);
    v40 = v1[15];
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2324F22A8(&unk_2814D4EB0, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93430, qword_232547860);
    sub_2324F22F0(&unk_2814D4EF0, &unk_27DD93430, qword_232547860);
    sub_232546378();
    v41 = sub_232546278();
    (*(v60 + 8))(v21, v18);
    v42 = v64;
    v43 = v65;
    *v64 = 5;
    v44 = v66;
    (*(v43 + 104))(v42, *MEMORY[0x277D85188], v66);
    ObjectType = swift_getObjectType();
    sub_232545EB8();
    v46 = *(v1 + 16);
    v47 = v61;
    sub_232545ED8();
    v48 = *(v62 + 8);
    v49 = v13;
    v50 = v63;
    v48(v49, v63);
    MEMORY[0x2383858F0](v47, v42, ObjectType, v46);
    v48(v47, v50);
    v51 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2324EA114;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2324D0160;
    aBlock[3] = &block_descriptor_3;
    v52 = _Block_copy(aBlock);

    v53 = v67;
    sub_232545E78();
    v54 = v69;
    sub_2324DDFC0();
    sub_232546298();
    _Block_release(v52);
    (*(v58 + 8))(v54, v59);
    (*(v68 + 8))(v53, v57);

    v55 = v1[14];
    v1[14] = v41;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_2325462B8();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v42, v44);
  }
}

uint64_t sub_2324E9FF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_2325460F8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_2324C8F70(0, 0, v3, &unk_232547D80, v7);
  }

  return result;
}

uint64_t sub_2324EA13C()
{
  v1 = *(v0 + 16);
  sub_2324EA19C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2324EA19C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v181 - v3;
  v225 = type metadata accessor for NDFMetricsPayload(0);
  v5 = *(v225 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v225);
  v204 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v202 = &v181 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v201 = &v181 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v203 = &v181 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v218 = &v181 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v228 = &v181 - v18;
  MEMORY[0x28223BE20](v17);
  v213 = &v181 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93448, &qword_232547AE8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v196 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v185 = &v181 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v181 - v27;
  MEMORY[0x28223BE20](v26);
  v226 = &v181 - v29;
  v194 = sub_2325456F8();
  v191 = *(v194 - 8);
  v30 = *(v191 + 64);
  v31 = MEMORY[0x28223BE20](v194);
  v200 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v187 = &v181 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93450, &qword_232547AF0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v193 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v192 = &v181 - v38;
  v39 = sub_232545688();
  v40 = *(v39 - 8);
  v41 = v40[8];
  v42 = MEMORY[0x28223BE20](v39);
  v217 = &v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v181 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v181 - v47;
  sub_232545668();
  v49 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime;
  swift_beginAccess();
  v50 = v40[2];
  v195 = v0;
  v181 = v49;
  v209 = v40 + 2;
  v208 = v50;
  v50(v46, (v0 + v49), v39);
  v212 = v48;
  sub_2325455F8();
  v52 = v51;
  v182 = v40;
  v53 = v40[1];
  v211 = v40 + 1;
  v210 = v53;
  v53(v46, v39);
  v54 = *(**sub_2324C4D38() + 416);

  v224 = v54(v55);

  if (qword_2814D6418 != -1)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v56 = sub_2325458A8();
    __swift_project_value_buffer(v56, qword_2814D6420);
    v57 = sub_232545888();
    v58 = sub_232546208();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      *(v59 + 4) = v52;
      _os_log_impl(&dword_2324C0000, v57, v58, "Submitting telemetry (%fs)", v59, 0xCu);
      MEMORY[0x238386450](v59, -1, -1);
    }

    v231 = MEMORY[0x277D84FA0];
    v60 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
    v61 = v195;
    swift_beginAccess();
    v190 = v60;
    v62 = *(v61 + v60);
    v63 = *(v62 + 64);
    v184 = v62 + 64;
    v64 = 1 << *(v62 + 32);
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v66 = v65 & v63;
    v183 = (v64 + 63) >> 6;
    v186 = v191 + 16;
    v199 = (v191 + 32);
    v219 = (v182 + 6);
    v207 = (v182 + 4);
    v206 = (v182 + 7);
    v189 = (v191 + 8);
    v188 = v62;

    v216 = 0;
    v215 = 0;
    v67 = 0;
    v221 = MEMORY[0x277D84F98];
    v68 = 0.0;
    v223 = v5;
    v227 = v39;
    v69 = v194;
    v220 = v4;
    v222 = v28;
LABEL_9:
    if (!v66)
    {
      if (v183 <= v67 + 1)
      {
        v76 = v67 + 1;
      }

      else
      {
        v76 = v183;
      }

      v77 = v76 - 1;
      while (1)
      {
        v75 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v75 >= v183)
        {
          v85 = v69;
          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
          v39 = v193;
          (*(*(v155 - 8) + 56))(v193, 1, 1, v155);
          v198 = 0;
          goto LABEL_19;
        }

        v66 = *(v184 + 8 * v75);
        ++v67;
        if (v66)
        {
          goto LABEL_18;
        }
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v75 = v67;
LABEL_18:
    v198 = (v66 - 1) & v66;
    v78 = __clz(__rbit64(v66)) | (v75 << 6);
    v79 = v188;
    v80 = v191;
    (*(v191 + 16))(v187, *(v188 + 48) + *(v191 + 72) * v78, v69);
    v81 = *(*(v79 + 56) + 8 * v78);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
    v83 = *(v82 + 48);
    v84 = *(v80 + 32);
    v39 = v193;
    v85 = v69;
    v84();
    *(v39 + v83) = v81;
    (*(*(v82 - 8) + 56))(v39, 0, 1, v82);

    v77 = v75;
LABEL_19:
    v86 = v192;
    sub_2324F1C98(v39, v192, &qword_27DD93450, &qword_232547AF0);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
    if ((*(*(v87 - 8) + 48))(v86, 1, v87) != 1)
    {
      break;
    }

LABEL_88:

    v5 = (v221 + 8);
    v156 = 1 << *(v221 + 32);
    v157 = -1;
    if (v156 < 64)
    {
      v157 = ~(-1 << v156);
    }

    v158 = v157 & v221[8];
    v28 = (v156 + 63) >> 6;

    v159 = 0;
    v160 = v185;
    while (1)
    {
      v161 = v196;
      if (!v158)
      {
        break;
      }

      v162 = v159;
LABEL_100:
      v164 = __clz(__rbit64(v158));
      v158 &= v158 - 1;
      v165 = v164 | (v162 << 6);
      v166 = *(v221[6] + v165);
      v167 = v213;
      sub_2324F1A48(v221[7] + *(v223 + 72) * v165, v213, type metadata accessor for NDFMetricsPayload);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
      v168 = *(v39 + 48);
      v161 = v196;
      *v196 = v166;
      sub_2324F0C18(v167, v161 + v168);
      (*(*(v39 - 8) + 56))(v161, 0, 1, v39);
      v4 = v162;
      v160 = v185;
LABEL_101:
      sub_2324F1C98(v161, v160, &qword_27DD93448, &qword_232547AE8);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
      if ((*(*(v169 - 8) + 48))(v160, 1, v169) == 1)
      {

        if ((v224 & 1) == 0)
        {
          sub_2324F159C(9u, v216, v68, v52);
          sub_2324EF3C4(&v230, 9);
        }

        sub_2324F17DC(v231, v52);

        v175 = v195;
        sub_2324EE0B4();
        v176 = v181;
        swift_beginAccess();
        v177 = v175 + v176;
        v178 = v212;
        v179 = v227;
        (v182[3])(v177, v212, v227);
        swift_endAccess();
        v210(v178, v179);
      }

      v170 = &v160[*(v169 + 48)];
      v171 = *(v170 + *(v225 + 20));
      v172 = *(v170 + *(v225 + 24));
      v173 = *v160;
      sub_2324F1AB0(v170, type metadata accessor for NDFMetricsPayload);
      sub_2324F159C(v173, v172, v171, v52);
      sub_2324EF3C4(&v230, v173);
      v159 = v4;
    }

    if (v28 <= v159 + 1)
    {
      v163 = v159 + 1;
    }

    else
    {
      v163 = v28;
    }

    v4 = v163 - 1;
    while (1)
    {
      v162 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
        break;
      }

      if (v162 >= v28)
      {
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
        (*(*(v174 - 8) + 56))(v161, 1, 1, v174);
        v158 = 0;
        goto LABEL_101;
      }

      v158 = *(v5 + 8 * v162);
      ++v159;
      if (v158)
      {
        goto LABEL_100;
      }
    }

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
    swift_once();
  }

  v197 = v77;
  v88 = *(v86 + *(v87 + 48));
  (*v199)(v200, v86, v85);
  v89 = v88 + 64;
  v90 = 1 << *(v88 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & *(v88 + 64);
  v205 = (v90 + 63) >> 6;

  v93 = 0;
  v214 = v88;
  v94 = v88;
  v95 = v226;
  v39 = v227;
  while (2)
  {
    if (!v92)
    {
      if (v205 <= v93 + 1)
      {
        v99 = v93 + 1;
      }

      else
      {
        v99 = v205;
      }

      v100 = v99 - 1;
      while (1)
      {
        v98 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          break;
        }

        if (v98 >= v205)
        {
          v4 = qword_232547B00;
          v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
          (*(*(v142 - 8) + 56))(v28, 1, 1, v142);
          v92 = 0;
          v93 = v100;
          goto LABEL_38;
        }

        v92 = *(v89 + 8 * v98);
        ++v93;
        if (v92)
        {
          v97 = v28;
          v93 = v98;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_88;
    }

    v97 = v28;
    v98 = v93;
LABEL_37:
    v101 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v102 = v101 | (v98 << 6);
    v103 = *(*(v214 + 48) + v102);
    v104 = v213;
    sub_2324F1A48(*(v214 + 56) + *(v5 + 72) * v102, v213, type metadata accessor for NDFMetricsPayload);
    v4 = qword_232547B00;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
    v106 = *(v105 + 48);
    *v97 = v103;
    v107 = v104;
    v28 = v97;
    sub_2324F0C18(v107, &v97[v106]);
    (*(*(v105 - 8) + 56))(v97, 0, 1, v105);
    v95 = v226;
    v39 = v227;
LABEL_38:
    sub_2324F1C98(v28, v95, &qword_27DD93448, &qword_232547AE8);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
    if ((*(*(v108 - 8) + 48))(v95, 1, v108) == 1)
    {

      v70 = v195;
      v71 = v190;
      swift_beginAccess();
      v72 = *(v70 + v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v229 = *(v70 + v71);
      *(v70 + v71) = 0x8000000000000000;
      v74 = v200;
      sub_2324F08E0(v94, v200, isUniquelyReferenced_nonNull_native);
      *(v70 + v71) = v229;
      swift_endAccess();
      v69 = v194;
      (*v189)(v74, v194);
      v67 = v197;
      v5 = v223;
      v66 = v198;
      goto LABEL_9;
    }

    v109 = v95;
    v110 = *v95;
    v4 = v228;
    sub_2324F0C18(&v109[*(v108 + 48)], v228);
    v111 = v220;
    sub_2324CF3C4(v4, v220, &qword_27DD93440, &qword_232547AE0);
    if ((*v219)(v111, 1, v39) == 1)
    {
      sub_2324C28AC(v111, &qword_27DD93440, &qword_232547AE0);
      v96 = v4;
      v28 = v222;
      v112 = v225;
      v5 = v223;
      if (v224)
      {
        goto LABEL_41;
      }

LABEL_54:
      if ((v110 - 9) <= 0xFCu)
      {
        goto LABEL_55;
      }

LABEL_26:
      sub_2324F1AB0(v96, type metadata accessor for NDFMetricsPayload);
      v95 = v226;
      continue;
    }

    break;
  }

  (*v207)(v217, v111, v39);
  v113 = v212;
  sub_2325455F8();
  *(v4 + *(v225 + 20)) = v114 + *(v4 + *(v225 + 20));
  sub_2324C28AC(v4, &qword_27DD93440, &qword_232547AE0);
  v208(v4, v113, v39);
  (*v206)(v4, 0, 1, v39);
  sub_2324F1A48(v4, v218, type metadata accessor for NDFMetricsPayload);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v230 = v94;
  v28 = sub_2324EF2E0(v110);
  v116 = v94[2];
  v117 = (v115 & 1) == 0;
  v118 = v116 + v117;
  if (__OFADD__(v116, v117))
  {
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v4 = v115;
  if (v94[3] >= v118)
  {
    if ((v5 & 1) == 0)
    {
      sub_2324F0F90();
    }
  }

  else
  {
    sub_2324F00BC(v118, v5);
    v119 = sub_2324EF2E0(v110);
    if ((v4 & 1) != (v120 & 1))
    {
      goto LABEL_118;
    }

    v28 = v119;
  }

  v5 = v223;
  v94 = v230;
  if (v4)
  {
    sub_2324F1954(v218, v230[7] + *(v223 + 72) * v28);
    v39 = v227;
    v210(v217, v227);
  }

  else
  {
    v230[(v28 >> 6) + 8] |= 1 << v28;
    *(v94[6] + v28) = v110;
    sub_2324F0C18(v218, v94[7] + *(v5 + 72) * v28);
    v39 = v227;
    v210(v217, v227);
    v121 = v94[2];
    v122 = __OFADD__(v121, 1);
    v123 = v121 + 1;
    if (v122)
    {
      goto LABEL_109;
    }

    v94[2] = v123;
  }

  v112 = v225;
  v96 = v228;
  v28 = v222;
  if ((v224 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_41:
  if ((v110 - 6) >= 3)
  {
    goto LABEL_26;
  }

LABEL_55:
  v39 = v28;
  v28 = *(v96 + *(v112 + 24));
  v216 = v215 + v28;
  if (__OFADD__(v215, v28))
  {
    goto LABEL_108;
  }

  v124 = *(v112 + 20);
  v125 = *(v96 + v124);
  if (v68 <= v125)
  {
    v68 = *(v96 + v124);
  }

  if ((((v110 - 6) < 3) & v224) != 1)
  {
    sub_2324F159C(v110, v28, v125, v52);
    sub_2324EF3C4(&v230, v110);
LABEL_25:
    v215 = v216;
    v96 = v228;
    v28 = v39;
    v39 = v227;
    goto LABEL_26;
  }

  v126 = v221;
  if (v221[2])
  {
    v127 = sub_2324EF2E0(v110);
    v126 = v221;
    if (v128)
    {
      v4 = v225;
      v39 = *(v5 + 72);
      v129 = v201;
      sub_2324F1A48(v221[7] + v39 * v127, v201, type metadata accessor for NDFMetricsPayload);
      v130 = v129;
      v5 = v203;
      sub_2324F0C18(v130, v203);
      v131 = *(v4 + 24);
      v132 = *(v5 + v131);
      v122 = __OFADD__(v132, v28);
      v133 = v132 + v28;
      if (v122)
      {
        goto LABEL_114;
      }

      *(v5 + v131) = v133;
      v134 = *(v4 + 20);
      v135 = *(v5 + v134);
      if (v135 <= v125)
      {
        v135 = v125;
      }

      *(v5 + v134) = v135;
      sub_2324F1A48(v5, v202, type metadata accessor for NDFMetricsPayload);
      v5 = swift_isUniquelyReferenced_nonNull_native();
      v230 = v126;
      v136 = sub_2324EF2E0(v110);
      v138 = v126[2];
      v139 = (v137 & 1) == 0;
      v122 = __OFADD__(v138, v139);
      v140 = v138 + v139;
      if (v122)
      {
        goto LABEL_115;
      }

      v28 = v137;
      if (v126[3] >= v140)
      {
        if ((v5 & 1) == 0)
        {
          v154 = v136;
          sub_2324F0F90();
          v136 = v154;
        }
      }

      else
      {
        sub_2324F00BC(v140, v5);
        v136 = sub_2324EF2E0(v110);
        if ((v28 & 1) != (v141 & 1))
        {
          goto LABEL_118;
        }
      }

      v5 = v223;
      v221 = v230;
      if (v28)
      {
        sub_2324F1954(v202, v230[7] + v136 * v39);
        sub_2324F1AB0(v203, type metadata accessor for NDFMetricsPayload);
      }

      else
      {
        v230[(v136 >> 6) + 8] |= 1 << v136;
        *(v221[6] + v136) = v110;
        sub_2324F0C18(v202, v221[7] + v136 * v39);
        sub_2324F1AB0(v203, type metadata accessor for NDFMetricsPayload);
        v151 = v221[2];
        v122 = __OFADD__(v151, 1);
        v152 = v151 + 1;
        if (v122)
        {
          goto LABEL_116;
        }

        v221[2] = v152;
      }

      v215 = v216;
      v39 = v227;
      v96 = v228;
      v28 = v222;
      goto LABEL_26;
    }
  }

  sub_2324F1A48(v228, v204, type metadata accessor for NDFMetricsPayload);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v230 = v126;
  v143 = sub_2324EF2E0(v110);
  v145 = v126[2];
  v146 = (v144 & 1) == 0;
  v122 = __OFADD__(v145, v146);
  v147 = v145 + v146;
  if (v122)
  {
    goto LABEL_112;
  }

  v28 = v144;
  if (v126[3] >= v147)
  {
    if ((v5 & 1) == 0)
    {
      v153 = v143;
      sub_2324F0F90();
      v143 = v153;
    }

LABEL_75:
    v5 = v223;
    v221 = v230;
    if (v28)
    {
      sub_2324F1954(v204, v230[7] + *(v223 + 72) * v143);
    }

    else
    {
      v230[(v143 >> 6) + 8] |= 1 << v143;
      *(v221[6] + v143) = v110;
      sub_2324F0C18(v204, v221[7] + *(v5 + 72) * v143);
      v149 = v221[2];
      v122 = __OFADD__(v149, 1);
      v150 = v149 + 1;
      if (v122)
      {
        goto LABEL_113;
      }

      v221[2] = v150;
    }

    goto LABEL_25;
  }

  sub_2324F00BC(v147, v5);
  v143 = sub_2324EF2E0(v110);
  if ((v28 & 1) == (v148 & 1))
  {
    goto LABEL_75;
  }

LABEL_118:
  result = sub_232546668();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2324EB95C(uint64_t *a1)
{
  v2 = type metadata accessor for NDFEvent(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v75 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v67[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v73 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v67[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v67[-v18];
  v20 = sub_2325456F8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v72 = &v67[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v69 = &v67[-v26];
  MEMORY[0x28223BE20](v25);
  v28 = &v67[-v27];
  v76 = sub_2324F19B8(a1);
  v29 = *(v3 + 36);
  v30 = *(v21 + 16);
  v74 = a1;
  v30(v28, a1 + v29, v20);
  v77 = v28;
  v70 = v30;
  v71 = v21 + 16;
  v30(v19, v28, v20);
  (*(v21 + 56))(v19, 0, 1, v20);
  v31 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v31, v17, &unk_27DD932E0, qword_2325472E0);
  v32 = *(v7 + 56);
  sub_2324CF3C4(v19, v10, &unk_27DD932E0, qword_2325472E0);
  sub_2324CF3C4(v17, &v10[v32], &unk_27DD932E0, qword_2325472E0);
  v78 = v21;
  v33 = *(v21 + 48);
  if (v33(v10, 1, v20) == 1)
  {
    sub_2324C28AC(v17, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v19, &unk_27DD932E0, qword_2325472E0);
    v34 = v20;
    v35 = v33(&v10[v32], 1, v20);
    v36 = v77;
    if (v35 == 1)
    {
      sub_2324C28AC(v10, &unk_27DD932E0, qword_2325472E0);
      v37 = v76;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v38 = v73;
  sub_2324CF3C4(v10, v73, &unk_27DD932E0, qword_2325472E0);
  if (v33(&v10[v32], 1, v20) == 1)
  {
    sub_2324C28AC(v17, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v19, &unk_27DD932E0, qword_2325472E0);
    v34 = v20;
    (*(v78 + 8))(v38, v20);
    v36 = v77;
LABEL_6:
    sub_2324C28AC(v10, &qword_27DD93290, &qword_2325477E0);
    v37 = v76;
    goto LABEL_8;
  }

  v39 = v78;
  v40 = v69;
  (*(v78 + 32))(v69, &v10[v32], v20);
  sub_2324F22A8(&qword_2814D4E80, MEMORY[0x277CC95F0]);
  v68 = sub_232545F48();
  v41 = *(v39 + 8);
  v41(v40, v20);
  sub_2324C28AC(v17, &unk_27DD932E0, qword_2325472E0);
  sub_2324C28AC(v19, &unk_27DD932E0, qword_2325472E0);
  v34 = v20;
  v41(v38, v20);
  sub_2324C28AC(v10, &unk_27DD932E0, qword_2325472E0);
  v36 = v77;
  v37 = v76;
  if (v68)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v37 - 6) < 3u)
  {
LABEL_14:
    v55 = v74;
    v56 = *(v74 + 9);
    if (v56 > 1)
    {
      v57 = v75;
      if (v56 != 2)
      {
        sub_2324ECB4C(v74, v37);
        return (*(v78 + 8))(v36, v34);
      }
    }

    else
    {
      v57 = v75;
      if (*(v74 + 9))
      {
        sub_2324EC284(v74, v37);
        return (*(v78 + 8))(v36, v34);
      }
    }

    if (qword_2814D6418 != -1)
    {
      swift_once();
    }

    v58 = sub_2325458A8();
    __swift_project_value_buffer(v58, qword_2814D6420);
    sub_2324F1A48(v55, v57, type metadata accessor for NDFEvent);
    v59 = sub_232545888();
    v60 = sub_232546208();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v79 = v62;
      *v61 = 136315138;
      v63 = sub_2325384B0();
      v65 = v64;
      sub_2324F1AB0(v57, type metadata accessor for NDFEvent);
      v66 = sub_2324C2220(v63, v65, &v79);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_2324C0000, v59, v60, "Skipping metrics processing for %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x238386450](v62, -1, -1);
      MEMORY[0x238386450](v61, -1, -1);
    }

    else
    {

      sub_2324F1AB0(v57, type metadata accessor for NDFEvent);
    }

    return (*(v78 + 8))(v36, v34);
  }

  if (qword_2814D6418 != -1)
  {
    swift_once();
  }

  v42 = sub_2325458A8();
  __swift_project_value_buffer(v42, qword_2814D6420);
  v43 = v72;
  v70(v72, v36, v34);
  v44 = sub_232545888();
  v45 = sub_2325461E8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v79 = v47;
    *v46 = 136315138;
    sub_2324F22A8(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v48 = sub_232546608();
    v49 = v43;
    v51 = v50;
    v52 = *(v78 + 8);
    v52(v49, v34);
    v53 = sub_2324C2220(v48, v51, &v79);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_2324C0000, v44, v45, "Ignoring irrelevant device event %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x238386450](v47, -1, -1);
    MEMORY[0x238386450](v46, -1, -1);
  }

  else
  {

    v52 = *(v78 + 8);
    v52(v43, v34);
  }

  return (v52)(v36, v34);
}

uint64_t sub_2324EC284(uint64_t a1, int a2)
{
  v3 = v2;
  v96 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E0, &qword_232547D38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v89 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v88 - v12;
  v98 = type metadata accessor for NDFMetricsPayload(0);
  v91 = *(v98 - 8);
  v14 = *(v91 + 64);
  v15 = MEMORY[0x28223BE20](v98);
  v92 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v88 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v88 - v20;
  v22 = sub_2325456F8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v94 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v95 = &v88 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v88 - v29;
  v31 = *(type metadata accessor for NDFEvent(0) + 28);
  v97 = v23;
  v32 = *(v23 + 16);
  v93 = v22;
  v32(v30, a1 + v31, v22);
  v33 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  if (!*(*(v3 + v33) + 16) || (v34 = *(v3 + v33), , sub_2324E6CD4(v30), v36 = v35, , (v36 & 1) == 0))
  {
    swift_beginAccess();
    v37 = *(v3 + v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100[0] = *(v3 + v33);
    *(v3 + v33) = 0x8000000000000000;
    sub_2324F08E0(MEMORY[0x277D84F98], v30, isUniquelyReferenced_nonNull_native);
    *(v3 + v33) = v100[0];
    swift_endAccess();
  }

  v39 = *(v3 + v33);
  v40 = *(v39 + 16);
  v99 = v30;
  if (v40)
  {

    v41 = sub_2324E6CD4(v30);
    if (v42)
    {
      v43 = *(*(v39 + 56) + 8 * v41);

      if (*(v43 + 16))
      {
        v44 = sub_2324EF2E0(v96);
        if (v45)
        {
          v46 = v19;
          v47 = v32;
          sub_2324F1A48(*(v43 + 56) + *(v91 + 72) * v44, v46, type metadata accessor for NDFMetricsPayload);

          sub_2324F0C18(v46, v21);
          goto LABEL_11;
        }
      }
    }
  }

  v47 = v32;
  v48 = sub_232545688();
  (*(*(v48 - 8) + 56))(v21, 1, 1, v48);
  v49 = v98;
  *&v21[*(v98 + 20)] = 0;
  *&v21[*(v49 + 24)] = 0;
LABEL_11:
  sub_2324CF3C4(v21, v13, &qword_27DD93440, &qword_232547AE0);
  v50 = sub_232545688();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 48))(v13, 1, v50);
  sub_2324C28AC(v13, &qword_27DD93440, &qword_232547AE0);
  v53 = v52 == 1;
  v54 = v47;
  v55 = v95;
  if (v53)
  {
    v56 = v89;
    sub_232545668();
    (*(v51 + 56))(v56, 0, 1, v50);
    result = sub_2324F1B10(v56, v21);
    v58 = *(v98 + 24);
    v59 = *&v21[v58];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      __break(1u);
      return result;
    }

    *&v21[v58] = v61;
  }

  v62 = v92;
  sub_2324F1A48(v21, v92, type metadata accessor for NDFMetricsPayload);
  sub_2324F1AB0(v21, type metadata accessor for NDFMetricsPayload);
  sub_2324F0C18(v62, v21);
  v63 = v93;
  v54(v55, v99, v93);
  v64 = sub_2324E92C0();
  v65 = sub_2324EDD28(v100);
  if (*v66)
  {
    v67 = v90;
    sub_2324F1A48(v21, v90, type metadata accessor for NDFMetricsPayload);
    (*(v91 + 56))(v67, 0, 1, v98);
    sub_2324ED8D0(v67, v96);
  }

  (v65)(v100, 0);
  v68 = *(v97 + 8);
  v68(v55, v63);
  (v64)(v101, 0);
  v69 = v99;
  v70 = v94;
  if (qword_2814D6418 != -1)
  {
    swift_once();
  }

  v71 = sub_2325458A8();
  __swift_project_value_buffer(v71, qword_2814D6420);
  v54(v70, v69, v63);
  v72 = sub_232545888();
  v73 = sub_2325461E8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v98 = v68;
    v75 = v70;
    v76 = v74;
    v77 = swift_slowAlloc();
    v101[0] = v77;
    *v76 = 136315394;
    v78 = sub_2324EEC60(v96);
    v80 = v63;
    v81 = sub_2324C2220(v78, v79, v101);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2080;
    sub_2324F22A8(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v82 = sub_232546608();
    v84 = v83;
    v85 = v75;
    v86 = v98;
    (v98)(v85, v80);
    v87 = sub_2324C2220(v82, v84, v101);

    *(v76 + 14) = v87;
    _os_log_impl(&dword_2324C0000, v72, v73, "Event started: %s for device %s", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v77, -1, -1);
    MEMORY[0x238386450](v76, -1, -1);

    v86(v99, v80);
  }

  else
  {

    v68(v70, v63);
    v68(v69, v63);
  }

  return sub_2324F1AB0(v21, type metadata accessor for NDFMetricsPayload);
}

uint64_t sub_2324ECB4C(uint64_t a1, int a2)
{
  v3 = v2;
  v118 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E0, &qword_232547D38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v105 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v106 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v104 - v12;
  v14 = sub_232545688();
  v15 = *(v14 - 8);
  v114 = v14;
  v115 = v15;
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v111 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v104 - v20;
  MEMORY[0x28223BE20](v19);
  v113 = &v104 - v22;
  v110 = type metadata accessor for NDFMetricsPayload(0);
  v112 = *(v110 - 8);
  v23 = *(v112 + 64);
  v24 = MEMORY[0x28223BE20](v110);
  v107 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v104 - v27;
  MEMORY[0x28223BE20](v26);
  v116 = &v104 - v29;
  v30 = sub_2325456F8();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v109 = &v104 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v108 = &v104 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v104 - v40;
  v42 = a1 + *(type metadata accessor for NDFEvent(0) + 28);
  v119 = v31[2];
  v119(v41, v42, v30);
  v43 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  v44 = *(v3 + v43);
  if (!*(v44 + 16))
  {
    goto LABEL_10;
  }

  v45 = sub_2324E6CD4(v41);
  if ((v46 & 1) == 0)
  {

LABEL_10:
    if (qword_2814D6418 != -1)
    {
      swift_once();
    }

    v53 = sub_2325458A8();
    __swift_project_value_buffer(v53, qword_2814D6420);
    v119(v35, v41, v30);
    v54 = sub_232545888();
    v55 = sub_2325461F8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v117 = v41;
      v58 = v57;
      v121[0] = v57;
      *v56 = 136315394;
      v59 = sub_2324EEC60(v118);
      v61 = sub_2324C2220(v59, v60, v121);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2080;
      sub_2324F22A8(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v62 = sub_232546608();
      v64 = v63;
      v65 = v31[1];
      v65(v35, v30);
      v66 = sub_2324C2220(v62, v64, v121);

      *(v56 + 14) = v66;
      _os_log_impl(&dword_2324C0000, v54, v55, "Missing start for %s on %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v58, -1, -1);
      MEMORY[0x238386450](v56, -1, -1);

      return (v65)(v117, v30);
    }

    else
    {

      v68 = v31[1];
      v68(v35, v30);
      return (v68)(v41, v30);
    }
  }

  v117 = v41;
  v47 = *(*(v44 + 56) + 8 * v45);

  if (!*(v47 + 16) || (v48 = sub_2324EF2E0(v118), (v49 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_2324F1A48(*(v47 + 56) + *(v112 + 72) * v48, v28, type metadata accessor for NDFMetricsPayload);

  v50 = v116;
  sub_2324F0C18(v28, v116);
  sub_2324CF3C4(v50, v13, &qword_27DD93440, &qword_232547AE0);
  v51 = v114;
  v52 = v115[6];
  if (v52(v13, 1, v114) == 1)
  {
    sub_2324F1AB0(v116, type metadata accessor for NDFMetricsPayload);
    sub_2324C28AC(v13, &qword_27DD93440, &qword_232547AE0);
LABEL_9:
    v41 = v117;
    goto LABEL_10;
  }

  v104 = v115[4];
  v104(v113, v13, v51);
  v69 = v106;
  sub_2324CF3C4(v116, v106, &qword_27DD93440, &qword_232547AE0);
  if (v52(v69, 1, v51) == 1)
  {
    sub_2324C28AC(v69, &qword_27DD93440, &qword_232547AE0);
    v70 = v116;
  }

  else
  {
    v104(v21, v69, v51);
    v71 = v111;
    sub_232545668();
    sub_2325455F8();
    v73 = v72;
    v74 = v115;
    v75 = v115[1];
    v75(v71, v51);
    v75(v21, v51);
    v70 = v116;
    *(v116 + *(v110 + 20)) = v73 + *(v116 + *(v110 + 20));
    sub_2324C28AC(v70, &qword_27DD93440, &qword_232547AE0);
    (v74[7])(v70, 1, 1, v51);
  }

  v76 = v108;
  v77 = v107;
  sub_2324F1A48(v70, v107, type metadata accessor for NDFMetricsPayload);
  sub_2324F1AB0(v70, type metadata accessor for NDFMetricsPayload);
  sub_2324F0C18(v77, v70);
  v78 = v117;
  v119(v76, v117, v30);
  v79 = sub_2324E92C0();
  v80 = sub_2324EDD28(v120);
  if (*v81)
  {
    v82 = v70;
    v83 = v105;
    sub_2324F1A48(v82, v105, type metadata accessor for NDFMetricsPayload);
    (*(v112 + 56))(v83, 0, 1, v110);
    sub_2324ED8D0(v83, v118);
  }

  (v80)(v120, 0);
  v84 = v31[1];
  v84(v76, v30);
  (v79)(v121, 0);
  v85 = v111;
  sub_232545668();
  sub_2325455F8();
  v87 = v86;
  v88 = v115 + 1;
  v112 = v115[1];
  (v112)(v85, v114);
  v89 = v109;
  if (qword_2814D6418 != -1)
  {
    swift_once();
  }

  v90 = sub_2325458A8();
  __swift_project_value_buffer(v90, qword_2814D6420);
  v119(v89, v78, v30);
  v91 = sub_232545888();
  v92 = sub_2325461E8();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = v89;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v115 = v88;
    v96 = v95;
    v121[0] = v95;
    *v94 = 136315650;
    v97 = sub_2324EEC60(v118);
    v99 = sub_2324C2220(v97, v98, v121);

    *(v94 + 4) = v99;
    *(v94 + 12) = 2080;
    sub_2324F22A8(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v100 = sub_232546608();
    v102 = v101;
    v84(v93, v30);
    v103 = sub_2324C2220(v100, v102, v121);

    *(v94 + 14) = v103;
    *(v94 + 22) = 2048;
    *(v94 + 24) = v87;
    _os_log_impl(&dword_2324C0000, v91, v92, "Event ended: %s for device %s, duration: %fs", v94, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v96, -1, -1);
    MEMORY[0x238386450](v94, -1, -1);

    (v112)(v113, v114);
    v84(v117, v30);
  }

  else
  {

    v84(v89, v30);
    (v112)(v113, v114);
    v84(v78, v30);
  }

  return sub_2324F1AB0(v116, type metadata accessor for NDFMetricsPayload);
}

uint64_t sub_2324ED7B0()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime;
  v3 = sub_232545688();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324ED838()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_lastTelemetrySubmissionTime;
  v3 = sub_232545688();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324ED8D0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E0, &qword_232547D38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NDFMetricsPayload(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2324C28AC(a1, &qword_27DD934E0, &qword_232547D38);
    v15 = *v3;
    v16 = sub_2324EF2E0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2324F0F90();
        v21 = v26;
      }

      sub_2324F0C18(*(v21 + 56) + *(v11 + 72) * v18, v9);
      sub_2324F0710(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2324C28AC(v9, &qword_27DD934E0, &qword_232547D38);
  }

  else
  {
    sub_2324F0C18(a1, v14);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_2324F0AAC(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_2324EDAFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_232545688();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for NDFMetricsPayload(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_2324EDB74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_2324CF3C4(v1, &v18 - v8, &qword_27DD93440, &qword_232547AE0);
  v10 = sub_232545688();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  sub_2324C28AC(v9, &qword_27DD93440, &qword_232547AE0);
  if (v12 != 1)
  {
    return sub_2324F1A48(v1, a1, type metadata accessor for NDFMetricsPayload);
  }

  sub_232545668();
  (*(v11 + 56))(v7, 0, 1, v10);
  sub_2324F1B10(v7, v1);
  result = type metadata accessor for NDFMetricsPayload(0);
  v14 = *(result + 24);
  v15 = *(v1 + v14);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v1 + v14) = v17;
    return sub_2324F1A48(v1, a1, type metadata accessor for NDFMetricsPayload);
  }

  __break(1u);
  return result;
}

void (*sub_2324EDD28(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_2325456F8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2324F11B0(v4, v9);
  return sub_2324E4DC8;
}

uint64_t sub_2324EDE40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_232545688();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_2324CF3C4(v2, v7, &qword_27DD93440, &qword_232547AE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2324C28AC(v7, &qword_27DD93440, &qword_232547AE0);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_232545668();
    sub_2325455F8();
    v17 = v16;
    v18 = *(v9 + 8);
    v18(v13, v8);
    v18(v15, v8);
    v19 = type metadata accessor for NDFMetricsPayload(0);
    *(v2 + *(v19 + 20)) = v17 + *(v2 + *(v19 + 20));
    sub_2324C28AC(v2, &qword_27DD93440, &qword_232547AE0);
    (*(v9 + 56))(v2, 1, 1, v8);
  }

  return sub_2324F1A48(v2, a1, type metadata accessor for NDFMetricsPayload);
}

uint64_t sub_2324EE0B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v115 = &v92 - v3;
  v114 = type metadata accessor for NDFMetricsPayload(0);
  v116 = *(v114 - 8);
  v4 = *(v116 + 64);
  v5 = MEMORY[0x28223BE20](v114);
  v117 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v92 - v8;
  MEMORY[0x28223BE20](v7);
  v110 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93448, &qword_232547AE8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v92 - v16;
  v107 = sub_2325456F8();
  v18 = *(v107 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v95 = &v92 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93450, &qword_232547AF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v101 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v92 - v27;
  v29 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  v100 = v0;
  v99 = v29;
  v30 = *(v0 + v29);
  v31 = *(v30 + 64);
  v93 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v31;
  v92 = (v32 + 63) >> 6;
  v94 = v18 + 16;
  v105 = (v18 + 32);
  v96 = v18;
  v98 = (v18 + 8);
  v97 = v30;

  v35 = 0;
  v102 = v28;
  v112 = v17;
  v113 = v15;
LABEL_6:
  if (v34)
  {
    v41 = v35;
LABEL_15:
    v104 = (v34 - 1) & v34;
    v44 = __clz(__rbit64(v34)) | (v41 << 6);
    v45 = v97;
    v46 = v96;
    v47 = v95;
    v48 = v107;
    (*(v96 + 16))(v95, *(v97 + 48) + *(v96 + 72) * v44, v107);
    v49 = *(*(v45 + 56) + 8 * v44);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
    v51 = *(v50 + 48);
    v52 = *(v46 + 32);
    v43 = v101;
    v52(v101, v47, v48);
    *(v43 + v51) = v49;
    (*(*(v50 - 8) + 56))(v43, 0, 1, v50);

    v103 = v41;
    v28 = v102;
LABEL_16:
    sub_2324F1C98(v43, v28, &qword_27DD93450, &qword_232547AF0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
    if ((*(*(v53 - 8) + 48))(v28, 1, v53) != 1)
    {
      v54 = *&v28[*(v53 + 48)];
      (*v105)(v106, v28, v107);
      v55 = *(v54 + 64);
      v109 = v54 + 64;
      v56 = 1 << *(v54 + 32);
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = v57 & v55;
      v108 = (v56 + 63) >> 6;

      v59 = 0;
      v111 = v54;
      while (v58)
      {
        v60 = v59;
LABEL_32:
        v63 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v64 = v63 | (v60 << 6);
        v65 = v110;
        v66 = *(*(v111 + 48) + v64);
        sub_2324F1A48(*(v111 + 56) + *(v116 + 72) * v64, v110, type metadata accessor for NDFMetricsPayload);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
        v68 = *(v67 + 48);
        *v15 = v66;
        sub_2324F0C18(v65, &v15[v68]);
        (*(*(v67 - 8) + 56))(v15, 0, 1, v67);
        v62 = v60;
LABEL_33:
        sub_2324F1C98(v15, v17, &qword_27DD93448, &qword_232547AE8);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
        if ((*(*(v69 - 8) + 48))(v17, 1, v69) == 1)
        {

          v36 = v100;
          v37 = v99;
          swift_beginAccess();
          v38 = *(v36 + v37);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v118 = *(v36 + v37);
          *(v36 + v37) = 0x8000000000000000;
          v40 = v106;
          sub_2324F08E0(v54, v106, isUniquelyReferenced_nonNull_native);
          *(v36 + v37) = v118;
          swift_endAccess();
          (*v98)(v40, v107);
          v35 = v103;
          v28 = v102;
          v34 = v104;
          goto LABEL_6;
        }

        v70 = v62;
        v71 = *v17;
        sub_2324F0C18(&v17[*(v69 + 48)], v9);
        v73 = v114;
        v72 = v115;
        *&v9[*(v114 + 20)] = 0;
        sub_2324CF3C4(v9, v72, &qword_27DD93440, &qword_232547AE0);
        v74 = sub_232545688();
        v75 = (*(*(v74 - 8) + 48))(v72, 1, v74) != 1;
        sub_2324C28AC(v72, &qword_27DD93440, &qword_232547AE0);
        v76 = v117;
        *&v9[*(v73 + 24)] = v75;
        sub_2324F1A48(v9, v76, type metadata accessor for NDFMetricsPayload);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v119 = v54;
        v79 = sub_2324EF2E0(v71);
        v80 = *(v54 + 16);
        v81 = (v78 & 1) == 0;
        v82 = v80 + v81;
        if (__OFADD__(v80, v81))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v83 = v78;
        if (*(v54 + 24) >= v82)
        {
          if ((v77 & 1) == 0)
          {
            sub_2324F0F90();
          }
        }

        else
        {
          sub_2324F00BC(v82, v77);
          v84 = sub_2324EF2E0(v71);
          if ((v83 & 1) != (v85 & 1))
          {
            goto LABEL_50;
          }

          v79 = v84;
        }

        v54 = v119;
        if (v83)
        {
          sub_2324F1954(v117, *(v119 + 56) + *(v116 + 72) * v79);
          sub_2324F1AB0(v9, type metadata accessor for NDFMetricsPayload);
        }

        else
        {
          *(v119 + 8 * (v79 >> 6) + 64) |= 1 << v79;
          *(*(v54 + 48) + v79) = v71;
          sub_2324F0C18(v117, *(v54 + 56) + *(v116 + 72) * v79);
          sub_2324F1AB0(v9, type metadata accessor for NDFMetricsPayload);
          v86 = *(v54 + 16);
          v87 = __OFADD__(v86, 1);
          v88 = v86 + 1;
          if (v87)
          {
            goto LABEL_48;
          }

          *(v54 + 16) = v88;
        }

        v59 = v70;
        v17 = v112;
        v15 = v113;
      }

      if (v108 <= v59 + 1)
      {
        v61 = v59 + 1;
      }

      else
      {
        v61 = v108;
      }

      v62 = v61 - 1;
      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v60 >= v108)
        {
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93460, qword_232547B00);
          (*(*(v89 - 8) + 56))(v15, 1, 1, v89);
          v58 = 0;
          goto LABEL_33;
        }

        v58 = *(v109 + 8 * v60);
        ++v59;
        if (v58)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
    }
  }

  else
  {
    if (v92 <= v35 + 1)
    {
      v42 = v35 + 1;
    }

    else
    {
      v42 = v92;
    }

    v43 = v101;
    while (1)
    {
      v41 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v41 >= v92)
      {
        v103 = v42 - 1;
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93458, &qword_232547AF8);
        (*(*(v90 - 8) + 56))(v43, 1, 1, v90);
        v104 = 0;
        goto LABEL_16;
      }

      v34 = *(v93 + 8 * v41);
      ++v35;
      if (v34)
      {
        goto LABEL_15;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    result = sub_232546668();
    __break(1u);
  }

  return result;
}

id sub_2324EEBC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2324DB388(0, &qword_27DD93500, 0x277D82BB8);
    v5 = sub_232545EE8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2324EEC60(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001ALL;
    if (a1 != 8)
    {
      v5 = 5852737;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000019;
    }

    v6 = 0xD000000000000012;
    if (a1 != 5)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736270;
    v2 = 0x6576726553534E44;
    v3 = 0xD000000000000016;
    if (a1 != 3)
    {
      v3 = 0x74656E7265746E49;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
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
}

uint64_t sub_2324EEDD4()
{
  v1 = *v0;
  sub_2325466F8();
  sub_232546718();
  return sub_232546738();
}

uint64_t sub_2324EEE48()
{
  v1 = *v0;
  sub_2325466F8();
  sub_232546718();
  return sub_232546738();
}

uint64_t sub_2324EEE8C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2324F1C84(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2324EEEDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_232545688();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2324EEFCC(double a1)
{
  result = type metadata accessor for NDFMetricsPayload(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_2324EF068(uint64_t a1)
{
  result = type metadata accessor for NDFMetricsPayload(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_2324EF0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_2324F1C98(a1, a3, &qword_27DD93440, &qword_232547AE0);
  result = type metadata accessor for NDFMetricsPayload(0);
  *(a3 + *(result + 20)) = a4;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t sub_2324EF1D0()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2324EF218(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore30NDFPeriodicTelemetryController_eventMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2324EF284()
{
  if (*(v0 + 112))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = sub_232546288();
    swift_unknownObjectRelease();
    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_2324EF2E0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2325466F8();
  sub_232546718();
  v4 = sub_232546738();

  return sub_2324EFBB8(a1, v4);
}

unint64_t sub_2324EF34C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2325466F8();
  sub_232545FC8();
  v6 = sub_232546738();

  return sub_2324EFC28(a1, a2, v6);
}

uint64_t sub_2324EF3C4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2325466F8();
  sub_232546718();
  v7 = sub_232546738();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2324EF70C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2324EF4BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F8, &qword_232547D58);
  result = sub_2325463B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2325466F8();
      sub_232546718();
      result = sub_232546738();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2324EF70C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2324EF4BC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2324EF858();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2324EF998(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2325466F8();
  sub_232546718();
  result = sub_232546738();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_232546658();
  __break(1u);
  return result;
}

void *sub_2324EF858()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F8, &qword_232547D58);
  v2 = *v0;
  v3 = sub_2325463A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2324EF998(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F8, &qword_232547D58);
  result = sub_2325463B8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2325466F8();
      sub_232546718();
      result = sub_232546738();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2324EFBB8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2324EFC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_232546628())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2324EFCE0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E8, &unk_232547D40);
  v43 = a2;
  result = sub_2325464A8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2324F22A8(&qword_2814D62B0, MEMORY[0x277CC95F0]);
      result = sub_232545F08();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_2324F00BC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for NDFMetricsPayload(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F0, &qword_232547D50);
  v40 = a2;
  result = sub_2325464A8();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_2324F0C18(v27, v41);
      }

      else
      {
        sub_2324F1A48(v27, v41, type metadata accessor for NDFMetricsPayload);
      }

      v28 = *(v12 + 40);
      sub_2325466F8();
      sub_232546718();
      result = sub_232546738();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_2324F0C18(v41, *(v12 + 56) + v26 * v20);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_2324F03F0(int64_t a1, uint64_t a2)
{
  v43 = sub_2325456F8();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_232546398();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2324F22A8(&qword_2814D62B0, MEMORY[0x277CC95F0]);
      v26 = sub_232545F08();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_2324F0710(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_232546398() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_2325466F8();
      sub_232546718();
      result = sub_232546738();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for NDFMetricsPayload(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2324F08E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2324E6CD4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2324F0D10();
      goto LABEL_7;
    }

    sub_2324EFCE0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2324E6CD4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2324E83E4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_2324F0AAC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2324EF2E0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2324F0F90();
      goto LABEL_7;
    }

    sub_2324F00BC(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_2324EF2E0(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for NDFMetricsPayload(0) - 8) + 72) * v10;

    return sub_2324F1954(a1, v18);
  }

LABEL_13:

  return sub_2324F0C7C(v10, a2, a1, v16);
}

uint64_t sub_2324F0C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFMetricsPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324F0C7C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for NDFMetricsPayload(0);
  result = sub_2324F0C18(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

char *sub_2324F0D10()
{
  v1 = v0;
  v34 = sub_2325456F8();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934E8, &unk_232547D40);
  v4 = *v0;
  v5 = sub_232546498();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}