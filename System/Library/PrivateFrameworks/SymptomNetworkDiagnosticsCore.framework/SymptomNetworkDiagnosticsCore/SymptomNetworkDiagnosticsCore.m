uint64_t dispatch thunk of NDFAdminController.noteIPAddressAcquisitionFailed(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 280);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2324C290C;

  return v12(a1, a2, a3);
}

uint64_t sub_2324C1A78(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 80) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324C1B1C, v3, 0);
}

uint64_t sub_2324C1B1C()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v11 = (*v2 + 384);
  v12 = (*v11 + **v11);
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2324C2780;
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 80);

  return v12(v9, v6, v7, v8);
}

uint64_t sub_2324C1C94()
{
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);

  return __swift_project_value_buffer(v0, qword_2814D7008);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2324C1D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324C1DAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = a1;
  return MEMORY[0x2822009F8](sub_2324C1DD4, v4, 0);
}

uint64_t sub_2324C1DD4()
{
  v19 = v0;
  if ((*(**(v0 + 40) + 392))(*(v0 + 24), *(v0 + 32)))
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);

    v3 = sub_232545888();
    v4 = sub_232546208();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 24);
      v5 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2324C2220(v6, v5, &v18);
      _os_log_impl(&dword_2324C0000, v3, v4, "Ignoring IP address acquisition failure notification for interface %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x238386450](v8, -1, -1);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(**(v0 + 40) + 416);
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 48) = v13;
    *v13 = v0;
    v13[1] = sub_23250489C;
    v14 = *(v0 + 40);
    v15 = *(v0 + 16);
    v16 = *(v0 + 56);

    return v17(1, 2, v16, v15);
  }
}

BOOL sub_2324C2068(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 216))();
  LOBYTE(a2) = sub_2324C2128(a1, a2, v5);

  return (a2 & 1) == 0;
}

uint64_t sub_2324C20E0()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_interfacesOfInterest;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2324C2128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2325466F8();
  sub_232545FC8();
  v7 = sub_232546738();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_232546628() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2324C2220(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2324C24DC(v11, 0, 0, 1, a1, a2);
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
    sub_2324C26D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_2324C22EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2324C23AC(a1, a2);
  sub_2324C25EC(&unk_28478DB70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_2324C2338(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93900, qword_232547990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2324C23AC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2324C2338(v5, 0);
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

  result = sub_232546428();
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
        v10 = sub_232545FE8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2324C2338(v10, 0);
        result = sub_2325463C8();
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

unint64_t sub_2324C24DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2324C22EC(a5, a6);
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
    result = sub_232546428();
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

uint64_t sub_2324C25EC(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2324C81D0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2324C26D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2324C2784()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  sub_2324C28AC(v2, &unk_27DD932E0, qword_2325472E0);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2324C28AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2324C2910()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2324C2A08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2A40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C2A80()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C2AC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2324C2B00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2B48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2B90()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2BD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324C2C10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2C50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2324C2D30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C2D68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2324C2DA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324C2DE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2324C2E30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2E78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C2EB8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C2EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2324C2F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2324C2FF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324C3034()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C3070(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_232545688();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_2324C3200(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_232545688();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2324C3388()
{
  v1 = type metadata accessor for NDFDevice();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v3;
  v7 = sub_2325456F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3, v7);
  v10 = v1[5];
  v11 = sub_232545688();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v1[6] + 8);

  v13 = v1[7];
  if (!(*(v8 + 48))(v0 + v3 + v13, 1, v7))
  {
    v9(v6 + v13, v7);
  }

  v14 = (v6 + v1[8]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_2324DB44C(*v14, v15);
  }

  v16 = (v6 + v1[9]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2324DB44C(*v16, v17);
  }

  v18 = *(v6 + v1[10] + 8);

  v19 = *(v6 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v21, v2 | 7);
}

uint64_t sub_2324C3590()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_2324C35D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = sub_2325456F8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2324C36F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C3748()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C3780()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C37C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324C3800()
{
  v1 = sub_232545BA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_232545688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v18 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v10);

  v15 = *(v0 + v11);

  v16 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v18 | 7);
}

uint64_t sub_2324C3994()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C39CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2324C3A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NDFActorRequestType(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2324C3B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NDFActorRequestType(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2324C3C08(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_232545688();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2325456F8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_2324C3D78(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_232545688();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2325456F8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2324C3EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2324C3F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2324C3FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2324C4090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2324C4154()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C41AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2324C41E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2324C42D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2324C4318()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_232545F68();
  v4 = v3;

  if (v2 == 0xD000000000000010 && 0x800000023254BFE0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_232546628();
  }

  byte_2814D62F8 = v6 & 1;
  return result;
}

uint64_t sub_2324C43EC()
{
  if (qword_2814D6830 != -1)
  {
    result = swift_once();
  }

  byte_2814D6730 = (byte_2814D62F8 & 1) == 0;
  return result;
}

uint64_t sub_2324C444C()
{
  result = sub_2325458E8();
  byte_2814D6C00 = result;
  return result;
}

uint64_t sub_2324C4470()
{
  v0 = sub_2324F5690();
  v2 = *v0;
  v1 = v0[1];
  qword_2814D6818 = v2;
  qword_2814D6810 = v1;
}

uint64_t sub_2324C44AC()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_2814D6D78);
  v1 = __swift_project_value_buffer(v0, qword_2814D6D78);
  v2 = sub_2324F4410();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_2324C4538()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_2814D6808 != -1)
  {
    swift_once();
  }

  v1 = sub_232545F58();
  [v0 addSuiteNamed_];

  qword_2814D6D98 = v0;
}

uint64_t sub_2324C45E0()
{
  type metadata accessor for NDFConfiguration();
  v0 = swift_allocObject();
  if (qword_2814D6E40 != -1)
  {
    swift_once();
  }

  if (byte_2814D6730 == 1)
  {
    v1 = sub_23254546C();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 16) = v1 & 1;
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v2 = qword_2814D6D98;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E0, &qword_232547190);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = v2;
  *(v0 + 24) = sub_232545B18();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = v6;
  *(v0 + 32) = sub_232545B18();
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  swift_allocObject();
  v13 = v10;
  *(v0 + 40) = sub_232545B18();
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  swift_allocObject();
  v16 = v13;
  *(v0 + 48) = sub_232545B18();
  v17 = *(v7 + 48);
  v18 = *(v7 + 52);
  swift_allocObject();
  v19 = v16;
  *(v0 + 56) = sub_232545B18();
  v20 = *(v7 + 48);
  v21 = *(v7 + 52);
  swift_allocObject();
  v22 = v19;
  *(v0 + 64) = sub_232545B18();
  v23 = *(v3 + 48);
  v24 = *(v3 + 52);
  swift_allocObject();
  v25 = v22;
  *(v0 + 72) = sub_232545B18();
  v26 = *(v3 + 48);
  v27 = *(v3 + 52);
  swift_allocObject();
  v28 = v25;
  *(v0 + 80) = sub_232545B18();
  v29 = *(v7 + 48);
  v30 = *(v7 + 52);
  swift_allocObject();
  v31 = v28;
  *(v0 + 88) = sub_232545B18();
  v32 = *(v7 + 48);
  v33 = *(v7 + 52);
  swift_allocObject();
  v34 = v31;
  *(v0 + 96) = sub_232545B18();
  v35 = *(v7 + 48);
  v36 = *(v7 + 52);
  swift_allocObject();
  v37 = v34;
  *(v0 + 104) = sub_232545B18();
  if (qword_2814D6C08 != -1)
  {
    swift_once();
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F0, &qword_2325471A0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v37;
  *(v0 + 112) = sub_232545B18();
  v42 = *(v3 + 48);
  v43 = *(v3 + 52);
  swift_allocObject();
  v44 = v41;
  *(v0 + 120) = sub_232545B18();
  v45 = *(v7 + 48);
  v46 = *(v7 + 52);
  swift_allocObject();
  v47 = v44;
  *(v0 + 128) = sub_232545B18();
  v48 = *(v7 + 48);
  v49 = *(v7 + 52);
  swift_allocObject();
  v50 = v47;
  *(v0 + 136) = sub_232545B18();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F8, &qword_2325471A8);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  *(v0 + 144) = sub_232545B18();
  v54 = *(v51 + 48);
  v55 = *(v51 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_232545B18();
  if (qword_2814D6D70 != -1)
  {
    swift_once();
  }

  v56 = sub_2325458A8();
  __swift_project_value_buffer(v56, qword_2814D6D78);
  v57 = sub_232545888();
  v58 = sub_232546208();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_2324C0000, v57, v58, "Initialized NDF Configuration", v59, 2u);
    MEMORY[0x238386450](v59, -1, -1);
  }

  result = (*(*v0 + 664))();
  qword_2814D6D68 = v0;
  return result;
}

uint64_t *sub_2324C4D38()
{
  if (qword_2814D6D60 != -1)
  {
    swift_once();
  }

  return &qword_2814D6D68;
}

uint64_t static NDFConfiguration.shared.getter()
{
  if (qword_2814D6D60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2324C4DE4()
{
  if (qword_2814D6E40 != -1)
  {
    swift_once();
  }

  if (byte_2814D6730 != 1)
  {
    return 0;
  }

  return sub_23254546C();
}

uint64_t sub_2324C4E50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2324C4F1C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2324C501C()
{
  v1 = *(v0 + 24);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C5060()
{
  v1 = *(v0 + 24);

  sub_232545B48();
}

uint64_t (*sub_2324C50A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 24);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

double sub_2324C5154()
{
  v1 = *(v0 + 32);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C5198()
{
  v1 = *(v0 + 32);

  sub_232545B48();
}

uint64_t (*sub_2324C51DC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 32);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C5260;
}

uint64_t sub_2324C5290()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C5350()
{
  v1 = *(v0 + 40);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C5394()
{
  v1 = *(v0 + 40);

  sub_232545B48();
}

uint64_t (*sub_2324C53D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 40);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C545C()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C5520()
{
  v1 = *(v0 + 48);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C5564()
{
  v1 = *(v0 + 48);

  sub_232545B48();
}

uint64_t (*sub_2324C55A8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 48);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C563C()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C5700()
{
  v1 = *(v0 + 56);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C5744()
{
  v1 = *(v0 + 56);

  sub_232545B48();
}

uint64_t (*sub_2324C5788(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 56);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5814()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C58D8()
{
  v1 = *(v0 + 64);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C591C()
{
  v1 = *(v0 + 64);

  sub_232545B48();
}

uint64_t (*sub_2324C5960(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 64);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5A18()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E0, &qword_232547190);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

uint64_t sub_2324C5AD8()
{
  v1 = *(v0 + 72);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C5B1C()
{
  v1 = *(v0 + 72);

  sub_232545B48();
}

uint64_t (*sub_2324C5B60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 72);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5BE4()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E0, &qword_232547190);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

uint64_t sub_2324C5CA8()
{
  v1 = *(v0 + 80);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C5CEC()
{
  v1 = *(v0 + 80);

  sub_232545B48();
}

uint64_t (*sub_2324C5D30(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 80);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5DB4()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C5E78()
{
  v1 = *(v0 + 88);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C5EBC()
{
  v1 = *(v0 + 88);

  sub_232545B48();
}

uint64_t (*sub_2324C5F00(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 88);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C5F84()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C6048()
{
  v1 = *(v0 + 96);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C608C()
{
  v1 = *(v0 + 96);

  sub_232545B48();
}

uint64_t (*sub_2324C60D0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 96);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C6160()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C6224()
{
  v1 = *(v0 + 104);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C6268()
{
  v1 = *(v0 + 104);

  sub_232545B48();
}

uint64_t (*sub_2324C62AC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 104);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C6330()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F0, &qword_2325471A0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

uint64_t sub_2324C63F0()
{
  v1 = *(v0 + 112);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C6434()
{
  v1 = *(v0 + 112);

  sub_232545B48();
}

uint64_t (*sub_2324C6478(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 112);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C64FC()
{
  if (qword_2814D6C08 != -1)
  {
    swift_once();
  }

  return byte_2814D6C00;
}

uint64_t sub_2324C654C()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E0, &qword_232547190);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

uint64_t sub_2324C6610()
{
  v1 = *(v0 + 120);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C6654()
{
  v1 = *(v0 + 120);

  sub_232545B48();
}

uint64_t (*sub_2324C6698(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 120);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C671C()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C67E0()
{
  v1 = *(v0 + 128);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C6824()
{
  v1 = *(v0 + 128);

  sub_232545B48();
}

uint64_t (*sub_2324C6868(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 128);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C68FC()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931E8, &qword_232547198);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

double sub_2324C69C0()
{
  v1 = *(v0 + 136);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C6A04()
{
  v1 = *(v0 + 136);

  sub_232545B48();
}

uint64_t (*sub_2324C6A48(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 136);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C6ADC()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F8, &qword_2325471A8);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

uint64_t sub_2324C6B9C()
{
  v1 = *(v0 + 144);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C6BE0()
{
  v1 = *(v0 + 144);

  sub_232545B48();
}

uint64_t (*sub_2324C6C24(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 144);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

uint64_t sub_2324C6CB0()
{
  if (qword_2814D6D90 != -1)
  {
    swift_once();
  }

  v0 = qword_2814D6D98;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD931F8, &qword_2325471A8);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_232545B18();
}

uint64_t sub_2324C6D70()
{
  v1 = *(v0 + 152);

  sub_232545B38();

  return v3;
}

uint64_t sub_2324C6DB4()
{
  v1 = *(v0 + 152);

  sub_232545B48();
}

uint64_t (*sub_2324C6DF8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 152);

  *(v4 + 40) = sub_232545B28();
  return sub_2324C83D0;
}

void sub_2324C6E7C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

void sub_2324C6ED0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_232547150;
  v3 = (*(*v0 + 272))();
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v5;
  *(v2 + 32) = v3;
  v109 = sub_232545F78();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_232547150;
  v9 = (*(*v0 + 344))();
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v112 = sub_232545F78();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_232547150;
  v13 = (*(*v0 + 368))();
  *(v12 + 56) = v4;
  *(v12 + 64) = v5;
  *(v12 + 32) = v13;
  v111 = sub_232545F78();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_232547150;
  v17 = (*(*v0 + 440))();
  *(v16 + 56) = v4;
  *(v16 + 64) = v5;
  *(v16 + 32) = v17;
  v110 = sub_232545F78();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_232547150;
  v21 = (*(*v0 + 296))();
  *(v20 + 56) = v4;
  *(v20 + 64) = v5;
  *(v20 + 32) = v21;
  v113 = sub_232545F78();
  v120 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_232547150;
  v24 = (*(*v0 + 320))();
  *(v23 + 56) = v4;
  *(v23 + 64) = v5;
  *(v23 + 32) = v24;
  v114 = sub_232545F78();
  v121 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_232547150;
  v27 = (*(*v0 + 464))();
  *(v26 + 56) = v4;
  *(v26 + 64) = v5;
  *(v26 + 32) = v27;
  v116 = sub_232545F78();
  v123 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_232547150;
  v30 = (*(*v0 + 488))();
  *(v29 + 56) = v4;
  *(v29 + 64) = v5;
  *(v29 + 32) = v30;
  v115 = sub_232545F78();
  v122 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_232547150;
  v33 = (*(*v0 + 560))();
  *(v32 + 56) = v4;
  *(v32 + 64) = v5;
  *(v32 + 32) = v33;
  v118 = sub_232545F78();
  v124 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_232547150;
  v36 = (*(*v0 + 584))();
  *(v35 + 56) = v4;
  *(v35 + 64) = v5;
  *(v35 + 32) = v36;
  v117 = sub_232545F78();
  if (qword_2814D6D70 != -1)
  {
    v108 = v37;
    swift_once();
    v37 = v108;
  }

  v119 = v11;
  v125 = v37;
  v38 = sub_2325458A8();
  __swift_project_value_buffer(v38, qword_2814D6D78);
  v39 = sub_232545888();
  v40 = sub_232546208();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2324C0000, v39, v40, " \t========== [ Begin NDF Configuration Dump ] ========== ", v41, 2u);
    MEMORY[0x238386450](v41, -1, -1);
  }

  v42 = sub_232545888();
  v43 = sub_232546208();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v52 = v44;
    *v44 = 67110144;
    if (qword_2814D6E40 != -1)
    {
      v44 = swift_once();
    }

    v52[1] = byte_2814D6730;
    *(v52 + 4) = 1024;
    *(v52 + 10) = (*(*v1 + 224))(v44, v45, v46, v47, v48, v49, v50, v51, v109, v110) & 1;
    *(v52 + 7) = 1024;
    if (qword_2814D6830 != -1)
    {
      swift_once();
    }

    v52[4] = byte_2814D62F8;
    *(v52 + 10) = 1024;
    *(v52 + 22) = (*(*v1 + 392))() & 1;
    *(v52 + 13) = 1024;
    v52[7] = (*(*v1 + 248))() & 1;

    _os_log_impl(&dword_2324C0000, v42, v43, " \t\t supported: %{BOOL}d, enabled: %{BOOL}d, isHelper: %{BOOL}d, polling allowed: %{BOOL}d, discovery allowed: %{BOOL}d", v52, 0x20u);
    MEMORY[0x238386450](v52, -1, -1);
  }

  else
  {
  }

  v53 = sub_232545888();
  v54 = sub_232546208();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v127[0] = v56;
    *v55 = 136315394;
    v57 = sub_2324C2220(v109, v7, v127);

    *(v55 + 4) = v57;
    *(v55 + 12) = 256;
    *(v55 + 14) = (*(*v1 + 512))(v58);

    _os_log_impl(&dword_2324C0000, v53, v54, " \t\t browse duration: %ss, discover device type: %hhd", v55, 0xFu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x238386450](v56, -1, -1);
    MEMORY[0x238386450](v55, -1, -1);
  }

  else
  {
  }

  v59 = sub_232545888();
  v60 = sub_232546208();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v127[0] = v62;
    *v61 = 136315650;
    v63 = sub_2324C2220(v112, v119, v127);

    *(v61 + 4) = v63;
    *(v61 + 12) = 2080;
    v64 = sub_2324C2220(v111, v15, v127);

    *(v61 + 14) = v64;
    *(v61 + 22) = 2080;
    v65 = sub_2324C2220(v110, v19, v127);

    *(v61 + 24) = v65;
    _os_log_impl(&dword_2324C0000, v59, v60, " \t\t inter-polling discovery cadence: between %s-%ss, minimum duration between polls: %ss", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v62, -1, -1);
    MEMORY[0x238386450](v61, -1, -1);
  }

  else
  {
  }

  v66 = sub_232545888();
  v67 = sub_232546208();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 67109120;
    *(v68 + 4) = (*(*v1 + 416))() & 1;

    _os_log_impl(&dword_2324C0000, v66, v67, " \t\t misconfigured network detection allowed: %{BOOL}d", v68, 8u);
    MEMORY[0x238386450](v68, -1, -1);
  }

  else
  {
  }

  v69 = sub_232545888();
  v70 = sub_232546208();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v127[0] = v72;
    *v71 = 136315138;
    v73 = sub_2324C2220(v113, v120, v127);

    *(v71 + 4) = v73;
    _os_log_impl(&dword_2324C0000, v69, v70, " \t\t bonjour probe timeout: %ss", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x238386450](v72, -1, -1);
    MEMORY[0x238386450](v71, -1, -1);
  }

  else
  {
  }

  v74 = sub_232545888();
  v75 = sub_232546208();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v127[0] = v77;
    *v76 = 136315138;
    v78 = sub_2324C2220(v114, v121, v127);

    *(v76 + 4) = v78;
    _os_log_impl(&dword_2324C0000, v74, v75, " \t\t cloudkit sync interval: every %ss", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x238386450](v77, -1, -1);
    MEMORY[0x238386450](v76, -1, -1);
  }

  else
  {
  }

  v79 = sub_232545888();
  v80 = sub_232546208();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v127[0] = v82;
    *v81 = 136315394;
    v83 = sub_2324C2220(v116, v123, v127);

    *(v81 + 4) = v83;
    *(v81 + 12) = 2080;
    v84 = sub_2324C2220(v115, v122, v127);

    *(v81 + 14) = v84;
    _os_log_impl(&dword_2324C0000, v79, v80, " \t\t debounce interval upon primary resident change: %ss, report telemetry: every %ss", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v82, -1, -1);
    MEMORY[0x238386450](v81, -1, -1);
  }

  else
  {
  }

  v85 = sub_232545888();
  v86 = sub_232546208();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v127[0] = v88;
    *v87 = 136315138;
    v89 = sub_2324C2220(v117, v125, v127);

    *(v87 + 4) = v89;
    _os_log_impl(&dword_2324C0000, v85, v86, " \t\t self record update threshold: %ss", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x238386450](v88, -1, -1);
    MEMORY[0x238386450](v87, -1, -1);
  }

  else
  {
  }

  v90 = sub_232545888();
  v91 = sub_232546208();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v127[0] = v93;
    *v92 = 136315138;
    v94 = sub_2324C2220(v118, v124, v127);

    *(v92 + 4) = v94;
    _os_log_impl(&dword_2324C0000, v90, v91, " \t\t stale record cleanup threshold: %ss", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x238386450](v93, -1, -1);
    MEMORY[0x238386450](v92, -1, -1);
  }

  else
  {
  }

  v95 = (*v1 + 608);
  v96 = *v95;
  v97 = (*v95)();
  if (v97 >= 1)
  {

    v98 = sub_232545888();
    v99 = sub_232546208();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 134217984;
      *(v100 + 4) = v96();

      _os_log_impl(&dword_2324C0000, v98, v99, " \t\t (Override present)cleanup activity interval: %llds", v100, 0xCu);
      MEMORY[0x238386450](v100, -1, -1);
    }

    else
    {
    }
  }

  v101 = (*v1 + 632);
  v102 = *v101;
  if ((*v101)(v97) >= 1)
  {

    v103 = sub_232545888();
    v104 = sub_232546208();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 134217984;
      *(v105 + 4) = v102();

      _os_log_impl(&dword_2324C0000, v103, v104, " \t\t (Override present)cleanup activity delay: %llds", v105, 0xCu);
      MEMORY[0x238386450](v105, -1, -1);
    }

    else
    {
    }
  }

  v126 = sub_232545888();
  v106 = sub_232546208();
  if (os_log_type_enabled(v126, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_2324C0000, v126, v106, " \t========== [ End NDF Configuration Dump ] ========== ", v107, 2u);
    MEMORY[0x238386450](v107, -1, -1);
  }
}

void *NDFConfiguration.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[11];

  v10 = v0[12];

  v11 = v0[13];

  v12 = v0[14];

  v13 = v0[15];

  v14 = v0[16];

  v15 = v0[17];

  v16 = v0[18];

  v17 = v0[19];

  return v0;
}

uint64_t NDFConfiguration.__deallocating_deinit()
{
  NDFConfiguration.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

char *sub_2324C81D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93900, qword_232547990);
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

char *sub_2324C83D4()
{
  v0 = type metadata accessor for NDFAdminController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2324C8840(0);
  qword_2814D6CC8 = result;
  return result;
}

uint64_t *sub_2324C8418()
{
  if (qword_2814D6CC0 != -1)
  {
    swift_once();
  }

  return &qword_2814D6CC8;
}

uint64_t static NDFAdminController.shared.getter()
{
  if (qword_2814D6CC0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2324C84F4()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t sub_2324C852C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t sub_2324C85C4()
{
  v1 = v0;
  v2 = sub_2325458A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 168))
  {
    v7 = *(v1 + 168);
  }

  else
  {
    v8 = sub_2324F491C();
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_232545AC8();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v7 = sub_232545AA8();
    v12 = *(v1 + 168);
    *(v1 + 168) = v7;
  }

  return v7;
}

uint64_t sub_2324C86E0(uint64_t a1)
{
  v2 = *(v1 + 168);
  *(v1 + 168) = a1;
}

uint64_t (*sub_2324C86F0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2324C85C4();
  return sub_2324C8738;
}

uint64_t sub_2324C8738(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 168);
  *(v1 + 168) = v2;
}

uint64_t sub_2324C8748@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F43A8();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324C87B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *sub_2324C8840(int a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_2325458A8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v29 - v10;
  swift_defaultActor_initialize();
  *(v1 + 20) = 0;
  *(v1 + 21) = 0;
  v11 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v12 = sub_2324F43A8();
  v13 = v4[2];
  v13(&v1[v11], v12, v3);
  v14 = *(**sub_2324C4D38() + 224);

  LOBYTE(v14) = v14(v15);

  v16 = v14 | v30;
  v1[OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_ndfEnabled] = (v14 | v30) & 1;
  if (v16)
  {
    type metadata accessor for NDFClientController();
    *(v1 + 14) = sub_2324D293C();
    type metadata accessor for NDFActorManager();
    *(v1 + 15) = sub_232527D10();
    type metadata accessor for NDFDeviceManager();
    *(v1 + 16) = sub_2324FC1E4();
    type metadata accessor for NDFDetectionManager();
    *(v1 + 17) = sub_2324F4084();
    type metadata accessor for NDFEventController();
    *(v1 + 18) = sub_2324E699C();
    type metadata accessor for NDFDistributionController();
    *(v1 + 19) = sub_2324DC04C();
    v17 = sub_2325460F8();
    v18 = v29;
    (*(*(v17 - 8) + 56))(v29, 1, 1, v17);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v2;

    sub_2324C8F70(0, 0, v18, &unk_2325474F8, v19);
  }

  else
  {
    v13(v7, &v1[v11], v3);
    v20 = sub_232545888();
    v21 = sub_2325461F8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2324C0000, v20, v21, "NDF is not enabled", v22, 2u);
      MEMORY[0x238386450](v22, -1, -1);
    }

    v23 = v4[1];
    v23(v7, v3);
    v24 = *(v2 + 20);

    v25 = *(v2 + 21);

    v23(&v2[v11], v3);
    type metadata accessor for NDFAdminController();
    swift_defaultActor_destroy();
    v26 = *(*v2 + 48);
    v27 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_2324C8C34()
{
  v1 = v0[8];
  sub_2324CF4E4();
  v2 = sub_232546248();
  v3 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_2324CF530;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2324CDDC0;
  v0[5] = &block_descriptor;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  os_state_add_handler();
  _Block_release(v4);

  return MEMORY[0x2822009F8](sub_2324C8D5C, 0, 0);
}

uint64_t sub_2324C8D5C()
{
  v1 = *(**(*(v0 + 64) + 120) + 312);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2324C8E7C;

  return v5();
}

uint64_t sub_2324C8E7C()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2324C8F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2324CF3C4(a3, v26 - v10, &qword_27DD93630, &qword_232547550);
  v12 = sub_2325460F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2324C28AC(v11, &qword_27DD93630, &qword_232547550);
  }

  else
  {
    sub_2325460E8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_232546098();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_232545FA8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2324C28AC(a3, &qword_27DD93630, &qword_232547550);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2324C28AC(a3, &qword_27DD93630, &qword_232547550);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2324C9270(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2324C9290, v1, 0);
}

uint64_t sub_2324C9290()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_ndfEnabled);
  v0[4] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v2 = sub_232545888();
  if (v1 == 1)
  {
    v3 = sub_232546208();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2324C0000, v2, v3, "Initializing NDF persistent storage", v4, 2u);
      MEMORY[0x238386450](v4, -1, -1);
    }

    v6 = v0[2];
    v5 = v0[3];

    type metadata accessor for NDFCorePersistenceController();
    v7 = sub_2324D3708(v6);
    (*(*v5 + 176))(v7);
    v8 = v5[16];
    v0[5] = v8;
    v15 = (*v8 + 296);
    v16 = (*v15 + **v15);
    v9 = (*v15)[1];
    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_2324C9530;

    return v16();
  }

  else
  {
    v12 = sub_2325461F8();
    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2324C0000, v2, v12, "NDF is not enabled (not setting up persistent store)", v13, 2u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2324C9530()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v10 = *v0;

  v8 = (*v3 + 304);
  v9 = (*v8 + **v8);
  v4 = (*v8)[1];
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v10;
  v5[1] = sub_2324C9710;
  v6 = *(v1 + 40);

  return v9();
}

uint64_t sub_2324C9710()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v10 = *v0;

  v8 = (*v3 + 504);
  v9 = (*v8 + **v8);
  v4 = (*v8)[1];
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v10;
  v5[1] = sub_2324C98F0;
  v6 = *(v1 + 40);

  return v9();
}

uint64_t sub_2324C98F0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2324C9A00, v2, 0);
}

uint64_t sub_2324C9A00()
{
  v1 = *(**sub_2324C4D38() + 536);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v3 = *(**(v0 + 40) + 312);
    v13 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_2324C9C1C;
    v6 = *(v0 + 40);

    return v13();
  }

  else
  {
    v8 = *(v0 + 24) + *(v0 + 32);
    v9 = sub_232545888();
    v10 = sub_232546208();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2324C0000, v9, v10, "Background task to clean up records are not required on this platform", v11, 2u);
      MEMORY[0x238386450](v11, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_2324C9C1C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2324C9D2C, v2, 0);
}

uint64_t sub_2324C9D2C()
{
  v1 = v0[3] + v0[4];
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "Initializing background task manager and scheduling NDFDevicRecord cleanup task", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(*v5 + 192);
  v6();
  if ((*(*v5 + 168))())
  {
    sub_2324CDE50();
  }

  v7 = v0[3];
  sub_232545AB8();

  (v6)(v8);
  sub_232545A98();

  v9 = v0[1];

  return v9();
}

uint64_t sub_2324C9EC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2324C9EE0, v1, 0);
}

uint64_t sub_2324C9EE0()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = (*v1 + 120) & 0xFFFFFFFFFFFFLL | 0x5B04000000000000;
  v0[5] = *(*v1 + 120);
  v0[6] = v2;
  return MEMORY[0x2822009F8](sub_2324C9F20, v1, 0);
}

uint64_t sub_2324C9F20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 40))(*(v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2324C9F88(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](sub_2324C9FAC, v2, 0);
}

uint64_t sub_2324C9FAC()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = (*v1 + 128) & 0xFFFFFFFFFFFFLL | 0x8676000000000000;
  v0[5] = *(*v1 + 128);
  v0[6] = v2;
  return MEMORY[0x2822009F8](sub_2324C9FEC, v1, 0);
}

uint64_t sub_2324C9FEC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 40))(*(v0 + 56), *(v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2324CA058(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CA0F4, v1, 0);
}

uint64_t sub_2324CA0F4()
{
  v1 = v0[7];
  v2 = *(v0[6] + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v9 = (*v2 + 376);
  v10 = (*v9 + **v9);
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2324CF640;
  v6 = v0[7];
  v7 = v0[5];

  return v10(v7, v6);
}

uint64_t sub_2324CA268(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 80) = a3;
  *(v4 + 40) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CA30C, v3, 0);
}

uint64_t sub_2324CA30C()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v11 = (*v2 + 424);
  v12 = (*v11 + **v11);
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2324C2784;
  v6 = *(v0 + 64);
  v7 = *(v0 + 80);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  return v12(v9, v8, v7, v6);
}

uint64_t sub_2324CA484(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CA520, v1, 0);
}

uint64_t sub_2324CA520()
{
  v1 = v0[7];
  v2 = *(v0[6] + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v9 = (*v2 + 432);
  v10 = (*v9 + **v9);
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2324CA694;
  v6 = v0[7];
  v7 = v0[5];

  return v10(v7, v6);
}

uint64_t sub_2324CA694()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  sub_2324C28AC(v2, &unk_27DD932E0, qword_2325472E0);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2324CA7BC(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 64) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CA85C, v1, 0);
}

uint64_t sub_2324CA85C()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v9 = (*v2 + 400);
  v10 = (*v9 + **v9);
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2324CA9D0;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);

  return v10(v7, v6);
}

uint64_t sub_2324CA9D0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  sub_2324C28AC(v2, &unk_27DD932E0, qword_2325472E0);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2324CAAF8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2324CAB20, v3, 0);
}

uint64_t sub_2324CAB20()
{
  v1 = *(**(*(v0 + 32) + 128) + 320);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2324CAC4C;
  v4 = *(v0 + 48);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return v8(v6, v5, v4);
}

uint64_t sub_2324CAC4C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2324CAD40(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 64) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CADE0, v1, 0);
}

uint64_t sub_2324CADE0()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) + 128);
  v3 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v3, v1, &unk_27DD932E0, qword_2325472E0);
  v9 = (*v2 + 408);
  v10 = (*v9 + **v9);
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2324CF644;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);

  return v10(v7, v6);
}

uint64_t sub_2324CAF54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2324CAF78, v2, 0);
}

uint64_t sub_2324CAF78()
{
  v1 = *(**(v0[4] + 128) + 488);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2324CF63C;
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v4);
}

uint64_t sub_2324CB0A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2324CB0C0, v1, 0);
}

uint64_t sub_2324CB0C0()
{
  v1 = *(**(v0[3] + 128) + 480);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2324CB1E8;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_2324CB1E8()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2324CB2FC()
{
  v1 = *(**(*(v0 + 16) + 136) + 104);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2324CB414;

  return v5();
}

uint64_t sub_2324CB414(char a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

char *NDFAdminController.deinit()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = *(v0 + 17);

  v5 = *(v0 + 18);

  v6 = *(v0 + 19);

  v7 = *(v0 + 20);

  v8 = *(v0 + 21);

  v9 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v10 = sub_2325458A8();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t NDFAdminController.__deallocating_deinit()
{
  NDFAdminController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t NDFAdminController.ping(endpoints:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2324CB628, v1, 0);
}

uint64_t sub_2324CB628()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[3];
    }

    result = sub_232546488();
    v0[5] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v0[2] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v8 = sub_232545F28();
    v10 = v9;

    v11 = v0[1];

    return v11(v8, v10);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[5] = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v3 = v0[3];
  v0[6] = MEMORY[0x277D84F90];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383859D0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v0[7] = v4;
  v0[8] = 1;
  v5 = *(v0[4] + 120);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2324CB7E0;

  return sub_23252FBA8(v4);
}

uint64_t sub_2324CB7E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 72);
  v11 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  if (v2)
  {
    v6 = v4[6];
    v7 = v4[4];

    v8 = sub_2324CBB30;
    v9 = v7;
  }

  else
  {
    v9 = v4[4];
    v8 = sub_2324CB90C;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_2324CB90C()
{
  v1 = *(v0 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 48);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2324CE098(0, *(v3 + 2) + 1, 1, *(v0 + 48));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2324CE098((v4 > 1), v5 + 1, 1, v3);
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  result = swift_unknownObjectRelease();
  *(v3 + 2) = v5 + 1;
  v12 = &v3[16 * v5];
  *(v12 + 4) = v7;
  *(v12 + 5) = v6;
  if (v9 == v10)
  {
    *(v0 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v13 = sub_232545F28();
    v15 = v14;

    v16 = *(v0 + 8);

    return v16(v13, v15);
  }

  v17 = *(v0 + 64);
  *(v0 + 48) = v3;
  v18 = *(v0 + 24);
  if ((v18 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2383859D0](v17);
    v19 = result;
  }

  else
  {
    if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v19 = *(v18 + 8 * v17 + 32);
    result = swift_unknownObjectRetain();
  }

  *(v0 + 56) = v19;
  *(v0 + 64) = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = *(*(v0 + 32) + 120);
  v21 = swift_task_alloc();
  *(v0 + 72) = v21;
  *v21 = v0;
  v21[1] = sub_2324CB7E0;

  return sub_23252FBA8(v19);
}

uint64_t sub_2324CBB30()
{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t NDFAdminController.sendMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_2324CBBB8, v3, 0);
}

uint64_t sub_2324CBBB8()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = v0[5];
    }

    result = sub_232546488();
    v0[7] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v0[2] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v10 = sub_232545F28();
    v12 = v11;

    v13 = v0[1];

    return v13(v10, v12);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[7] = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v3 = v0[5];
  v0[8] = MEMORY[0x277D84F90];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383859D0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v0[9] = v4;
  v0[10] = 1;
  v5 = *(v0[6] + 120);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_2324CBD74;
  v7 = v0[3];
  v8 = v0[4];

  return sub_232531230(v4, v7, v8);
}

uint64_t sub_2324CBD74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v11 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v6 = v4[8];
    v7 = v4[6];

    v8 = sub_2324CC0C8;
    v9 = v7;
  }

  else
  {
    v9 = v4[6];
    v8 = sub_2324CBEA0;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_2324CBEA0()
{
  v1 = *(v0 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 64);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2324CE098(0, *(v3 + 2) + 1, 1, *(v0 + 64));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2324CE098((v4 > 1), v5 + 1, 1, v3);
  }

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 56);
  result = swift_unknownObjectRelease();
  *(v3 + 2) = v5 + 1;
  v12 = &v3[16 * v5];
  *(v12 + 4) = v7;
  *(v12 + 5) = v6;
  if (v9 == v10)
  {
    *(v0 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324CE1A4();
    v13 = sub_232545F28();
    v15 = v14;

    v16 = *(v0 + 8);

    return v16(v13, v15);
  }

  v17 = *(v0 + 80);
  *(v0 + 64) = v3;
  v18 = *(v0 + 40);
  if ((v18 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2383859D0](v17);
    v19 = result;
  }

  else
  {
    if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v19 = *(v18 + 8 * v17 + 32);
    result = swift_unknownObjectRetain();
  }

  *(v0 + 72) = v19;
  *(v0 + 80) = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = *(*(v0 + 48) + 120);
  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_2324CBD74;
  v22 = *(v0 + 24);
  v23 = *(v0 + 32);

  return sub_232531230(v19, v22, v23);
}

uint64_t sub_2324CC0C8()
{
  v1 = v0[9];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_2324CC14C()
{
  v1 = *(**(*(v0 + 16) + 152) + 328);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2324CC26C;

  return v5();
}

uint64_t sub_2324CC26C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t NDFAdminController.triggerSendPayloadToDistributedSymptomsWithInterval(_:leeway:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2324CC38C, v2, 0);
}

uint64_t sub_2324CC38C()
{
  v1 = *(**(v0[4] + 152) + 336);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2324CC4B4;
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v4);
}

uint64_t sub_2324CC4B4(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t NDFAdminController.fetchNDFDeviceRecords()()
{
  v1[2] = v0;
  v2 = type metadata accessor for NDFDevice();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CC6B4, v0, 0);
}

uint64_t sub_2324CC6B4()
{
  v27 = v0;
  v1 = v0[2];
  v0[8] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v2 = sub_232545888();
  v3 = sub_2325461D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    v7 = sub_232545018();
    sub_2324CF3C4(v7, v4, &unk_27DD932E0, qword_2325472E0);
    v8 = sub_2325456F8();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v4, 1, v8);
    v11 = v0[7];
    if (v10 == 1)
    {
      sub_2324C28AC(v0[7], &unk_27DD932E0, qword_2325472E0);
      v12 = 0xE90000000000003ELL;
      v13 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v14 = v0[7];
      v15 = sub_2325456A8();
      v12 = v16;
      (*(v9 + 8))(v11, v8);
      v13 = v15;
    }

    v17 = sub_2324C2220(v13, v12, &v26);

    *(v5 + 4) = v17;
    _os_log_impl(&dword_2324C0000, v2, v3, "Fetching persisted NDF device records... (self:%s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  v19 = (*(*v0[2] + 168))(v18);
  v0[9] = v19;
  if (v19)
  {
    v20 = (*v19 + 152) & 0xFFFFFFFFFFFFLL | 0x562B000000000000;
    v0[10] = *(*v19 + 152);
    v0[11] = v20;

    return MEMORY[0x2822009F8](sub_2324CC990, v19, 0);
  }

  else
  {
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];

    v24 = v0[1];

    return v24(1);
  }
}

uint64_t sub_2324CC990()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  *(v0 + 96) = (*(v0 + 80))();
  *(v0 + 104) = 0;
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_2324CCA34, v4, 0);
}

uint64_t sub_2324CCA34()
{
  v29 = v0;
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v27 = v5;
    do
    {
      v15 = v0[8];
      v16 = v0[2];
      sub_2324CE250(v4, v0[6]);
      v17 = sub_232545888();
      v18 = sub_232546208();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[6];
      if (v19)
      {
        v6 = v0[5];
        v7 = v0[3];
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v28 = v9;
        *v8 = 136315138;
        sub_2324CE250(v20, v6);
        v10 = sub_232545F88();
        v12 = v11;
        sub_2324CE2B4(v20);
        v13 = sub_2324C2220(v10, v12, &v28);

        *(v8 + 4) = v13;
        _os_log_impl(&dword_2324C0000, v17, v18, "Device: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x238386450](v9, -1, -1);
        v14 = v8;
        v5 = v27;
        MEMORY[0x238386450](v14, -1, -1);
      }

      else
      {

        sub_2324CE2B4(v20);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
    v21 = v0[12];
  }

  v23 = v0[6];
  v22 = v0[7];
  v24 = v0[5];

  v25 = v0[1];

  return v25(1);
}

uint64_t sub_2324CCC34()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[2];

  v5 = v1;
  v6 = sub_232545888();
  v7 = sub_2325461F8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2324C0000, v6, v7, "Failed to fetch NDF device records: %@", v10, 0xCu);
    sub_2324C28AC(v11, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v11, -1, -1);
    MEMORY[0x238386450](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];

  v17 = v0[1];

  return v17(0);
}

uint64_t NDFAdminController.cleanupNDFDeviceRecords()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CCE5C, v0, 0);
}

uint64_t sub_2324CCE5C()
{
  v25 = v0;
  v1 = (*(**(v0 + 16) + 168))();
  *(v0 + 32) = v1;
  v2 = *(v0 + 16) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v3 = sub_232545888();
  if (v1)
  {
    v4 = sub_2325461D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 24);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136315138;
      v8 = sub_232545018();
      sub_2324CF3C4(v8, v5, &unk_27DD932E0, qword_2325472E0);
      v9 = sub_2325456F8();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {
        sub_2324C28AC(*(v0 + 24), &unk_27DD932E0, qword_2325472E0);
        v11 = 0xE90000000000003ELL;
        v12 = 0x6E776F6E6B6E753CLL;
      }

      else
      {
        v23 = v7;
        v18 = *(v0 + 24);
        v19 = sub_2325456A8();
        v11 = v20;
        v21 = v18;
        v7 = v23;
        (*(v10 + 8))(v21, v9);
        v12 = v19;
      }

      v22 = sub_2324C2220(v12, v11, &v24);

      *(v6 + 4) = v22;
      _os_log_impl(&dword_2324C0000, v3, v4, "Cleaning up stale persisted NDF device records... (self:%s)", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x238386450](v7, -1, -1);
      MEMORY[0x238386450](v6, -1, -1);
    }

    return MEMORY[0x2822009F8](sub_2324CD178, v1, 0);
  }

  else
  {
    v13 = sub_2325461F8();
    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2324C0000, v3, v13, "Persistence controller is not ready. Cannot clean up stale NDF device records", v14, 2u);
      MEMORY[0x238386450](v14, -1, -1);
    }

    v15 = *(v0 + 24);

    v16 = *(v0 + 8);

    return v16(0);
  }
}

uint64_t sub_2324CD178()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = sub_2324D7D5C();

  return MEMORY[0x2822009F8](sub_2324CD1EC, v2, 0);
}

uint64_t sub_2324CD1EC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t NDFAdminController.listNDFDeviceObjects(identifier:)()
{
  v1[2] = v0;
  v2 = type metadata accessor for NDFDevice();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324CD360, v0, 0);
}

uint64_t sub_2324CD360()
{
  v22 = v0;
  v1 = v0[2];
  v0[8] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v2 = sub_232545888();
  v3 = sub_2325461D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = sub_232545018();
    sub_2324CF3C4(v7, v4, &unk_27DD932E0, qword_2325472E0);
    v8 = sub_2325456F8();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 48))(v4, 1, v8);
    v11 = v0[7];
    if (v10 == 1)
    {
      sub_2324C28AC(v0[7], &unk_27DD932E0, qword_2325472E0);
      v12 = 0xE90000000000003ELL;
      v13 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v14 = v0[7];
      v15 = sub_2325456A8();
      v12 = v16;
      (*(v9 + 8))(v11, v8);
      v13 = v15;
    }

    v17 = sub_2324C2220(v13, v12, &v21);

    *(v5 + 4) = v17;
    _os_log_impl(&dword_2324C0000, v2, v3, "Listing current NDF devices... (self:%s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  v18 = *(v0[2] + 128);
  v0[9] = v18;
  v19 = *v18 + 328;
  v0[10] = *v19;
  v0[11] = v19 & 0xFFFFFFFFFFFFLL | 0x5A19000000000000;

  return MEMORY[0x2822009F8](sub_2324CD5BC, v18, 0);
}

uint64_t sub_2324CD5BC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);
  *(v0 + 96) = (*(v0 + 80))();

  return MEMORY[0x2822009F8](sub_2324CD630, v3, 0);
}

uint64_t sub_2324CD630()
{
  v34 = v0;
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[4];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v32 = v5;
    do
    {
      v15 = v0[8];
      v16 = v0[2];
      sub_2324CE250(v4, v0[6]);
      v17 = sub_232545888();
      v18 = sub_232546208();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[6];
      if (v19)
      {
        v6 = v0[5];
        v7 = v0[3];
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v33 = v9;
        *v8 = 136315138;
        sub_2324CE250(v20, v6);
        v10 = sub_232545F88();
        v12 = v11;
        sub_2324CE2B4(v20);
        v13 = sub_2324C2220(v10, v12, &v33);

        *(v8 + 4) = v13;
        _os_log_impl(&dword_2324C0000, v17, v18, "Device: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x238386450](v9, -1, -1);
        v14 = v8;
        v5 = v32;
        MEMORY[0x238386450](v14, -1, -1);
      }

      else
      {

        sub_2324CE2B4(v20);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
    v21 = v0[12];
  }

  else
  {
    v22 = v0[8];
    v23 = v0[2];

    v24 = sub_232545888();
    v25 = sub_232546208();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2324C0000, v24, v25, "No NDF devices are currently known", v26, 2u);
      MEMORY[0x238386450](v26, -1, -1);
    }
  }

  v28 = v0[6];
  v27 = v0[7];
  v29 = v0[5];

  v30 = v0[1];

  return v30(1);
}

void sub_2324CD8B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(a1 + 16) == 3)
    {
      sub_2325460D8();
      v8 = sub_2325460F8();
      (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v7;

      sub_2324C8F70(0, 0, v5, &unk_232547520, v9);
    }

    else
    {
      v10 = sub_232545888();
      v11 = sub_2325461E8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2324C0000, v10, v11, "Not dumping state for a non-sysdiagnose trigger", v12, 2u);
        MEMORY[0x238386450](v12, -1, -1);
      }
    }
  }
}

uint64_t sub_2324CDAB0()
{
  v1 = v0[2];
  v0[3] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore18NDFAdminController_logger;
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "========== [Begin NDF State Dump] ==========", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(v5 + 128);
  v0[4] = v6;
  v7 = *v6;
  v0[5] = *(*v6 + 536);
  v0[6] = (v7 + 536) & 0xFFFFFFFFFFFFLL | 0xA7AD000000000000;

  return MEMORY[0x2822009F8](sub_2324CDBD4, v6, 0);
}

uint64_t sub_2324CDBD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 40))();

  return MEMORY[0x2822009F8](sub_2324CDC40, 0, 0);
}

uint64_t sub_2324CDC40()
{
  v1 = *(v0[2] + 144);
  v0[7] = v1;
  v2 = (*v1 + 216) & 0xFFFFFFFFFFFFLL | 0x36F8000000000000;
  v0[8] = *(*v1 + 216);
  v0[9] = v2;
  return MEMORY[0x2822009F8](sub_2324CDC80, v1, 0);
}

uint64_t sub_2324CDC80()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  (*(v0 + 64))();

  return MEMORY[0x2822009F8](sub_2324CDCEC, 0, 0);
}

uint64_t sub_2324CDCEC()
{
  v1 = v0[2] + v0[3];
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "========== [ End NDF State Dump ] ==========", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2324CDDC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

char *sub_2324CDE10(int a1)
{
  v2 = type metadata accessor for NDFAdminController();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_2324C8840(a1);
}

unint64_t sub_2324CDE50()
{
  result = qword_27DD93208;
  if (!qword_27DD93208)
  {
    type metadata accessor for NDFCorePersistenceController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93208);
  }

  return result;
}

uint64_t sub_2324CDEA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2324CDFA0;

  return v7(a1);
}

uint64_t sub_2324CDFA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_2324CE098(char *result, int64_t a2, char a3, char *a4)
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

unint64_t sub_2324CE1A4()
{
  result = qword_2814D4C68;
  if (!qword_2814D4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD93210, &qword_232547A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C68);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2324CE250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324CE2B4(uint64_t a1)
{
  v2 = type metadata accessor for NDFDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for NDFAdminController()
{
  result = qword_2814D6CB0;
  if (!qword_2814D6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324CE364()
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

uint64_t dispatch thunk of NDFAdminController.setupPersistentStorage(withCoordinator:)(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return v8(a1);
}

uint64_t dispatch thunk of NDFAdminController.clientCheckIn(withConnection:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C2910;

  return v8(a1);
}

uint64_t dispatch thunk of NDFAdminController.clientHasActiveSubscription(_:for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 240);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2324C290C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of NDFAdminController.noteDNSConfiguration(with:)(uint64_t a1)
{
  v4 = *(*v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return v8(a1);
}

uint64_t dispatch thunk of NDFAdminController.noteDNSServer(_:isResponding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2324C290C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of NDFAdminController.noteDNSAllOut(_:)(uint64_t a1)
{
  v4 = *(*v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return v8(a1);
}

uint64_t dispatch thunk of NDFAdminController.noteBackhaulIsBroken(_:)(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return v8(a1);
}

uint64_t dispatch thunk of NDFAdminController.noteInterfaceOfInterest(_:isRemoved:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 288);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2324C290C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of NDFAdminController.noteWiFiIsDisassociated(_:)(uint64_t a1)
{
  v4 = *(*v1 + 296);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return v8(a1);
}

uint64_t dispatch thunk of NDFAdminController.updateDeviceFromDictionary(withState:removalKeys:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 304);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2324C290C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of NDFAdminController.noteDeviceRecordUpdates(_:)(uint64_t a1)
{
  v4 = *(*v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C2910;

  return v8(a1);
}

uint64_t dispatch thunk of NDFAdminController.networkRestrictsMulticastTraffic()()
{
  v2 = *(*v0 + 320);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324CF234;

  return v6();
}

uint64_t sub_2324CF234(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2324CF330()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_2324C8C14(v3, v4, v5, v2);
}

uint64_t sub_2324CF3C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2324CF42C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return sub_2324CDEA8(a1, v5);
}

unint64_t sub_2324CF4E4()
{
  result = qword_2814D4EC0;
  if (!qword_2814D4EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D4EC0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2324CF5A8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_2324CDA90(v3, v4, v5, v2);
}

uint64_t sub_2324CF654()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_2324CF68C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_2324CF724()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_2814D6EF0);
  v1 = __swift_project_value_buffer(v0, qword_2814D6EF0);
  v2 = sub_2324F4478();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2324CF7B0()
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v0 = sub_2325458A8();

  return __swift_project_value_buffer(v0, qword_2814D6EF0);
}

uint64_t sub_2324CF814@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  v3 = __swift_project_value_buffer(v2, qword_2814D6EF0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2324CF8D4(uint64_t a1)
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  v3 = __swift_project_value_buffer(v2, qword_2814D6EF0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_2324CF9C8())()
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v0 = sub_2325458A8();
  __swift_project_value_buffer(v0, qword_2814D6EF0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_2324CFA5C()
{
  v0 = objc_opt_self();
  v1 = &unk_2847938B0;
  v2 = [v0 interfaceWithProtocol_];

  qword_2814D6600 = v2;
}

uint64_t sub_2324CFAC4(void *a1)
{
  v3 = *v1;
  v4 = sub_2325458A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93228, &qword_232547540);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_232547150;
  v13 = sub_232545878();
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93230, &qword_232547548);
  *(v12 + 32) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v15 = sub_232546048();

  v16 = [v14 initWithArray_];

  aBlock = 0;
  sub_232546198();

  if (aBlock)
  {
    if (qword_2814D65F8 != -1)
    {
      swift_once();
    }

    [a1 setRemoteObjectInterface_];
    v17 = [a1 remoteObjectInterface];
    v38 = v4;
    if (v17)
    {
      v18 = v17;
      v19 = sub_232546188();

      [v18 setClasses:v19 forSelector:sel_didReceiveEvent_ argumentIndex:0 ofReply:0];
    }

    else
    {
    }

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a1;
    v25[4] = v3;
    v43 = sub_2324D29AC;
    v44 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2324D0160;
    v42 = &block_descriptor_0;
    v26 = _Block_copy(&aBlock);
    v27 = a1;

    [v27 setInterruptionHandler_];
    _Block_release(v26);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v27;
    v29[4] = v3;
    v43 = sub_2324D2A3C;
    v44 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2324D0160;
    v42 = &block_descriptor_10;
    v30 = _Block_copy(&aBlock);
    v31 = v27;

    [v31 setInvalidationHandler_];
    _Block_release(v30);
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v4 = v38;
    v32 = __swift_project_value_buffer(v38, qword_2814D6EF0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v32, v4);
    v33 = v31;
    v21 = sub_232545888();
    v34 = sub_232546208();
    if (os_log_type_enabled(v21, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109120;
      *(v35 + 4) = [v33 processIdentifier];

      _os_log_impl(&dword_2324C0000, v21, v34, "Received check-in from client with pid %d", v35, 8u);
      MEMORY[0x238386450](v35, -1, -1);
    }

    else
    {

      v21 = v33;
    }
  }

  else
  {
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v4, qword_2814D6EF0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v20, v4);
    v21 = sub_232545888();
    v22 = sub_2325461F8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2324C0000, v21, v22, "Cannot convert list of allowed classes to NSSet representation", v23, 2u);
      MEMORY[0x238386450](v23, -1, -1);
    }

    v11 = v9;
  }

  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2324D0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 136) & 0xFFFFFFFFFFFFLL | 0x2D94000000000000;
  v5[4] = *(*a4 + 136);
  v5[5] = v6;
  return MEMORY[0x2822009F8](sub_2324D35E4, a4, 0);
}

uint64_t sub_2324D0160(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2324D01A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v29 - v9;
  v11 = sub_2325458A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v11, qword_2814D6EF0);
    swift_beginAccess();
    (*(v12 + 16))(v15, v18, v11);
    v19 = a2;
    v20 = sub_232545888();
    v21 = sub_232546208();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29[1] = a3;
      v23 = a4;
      v24 = v22;
      *v22 = 67109120;
      *(v22 + 1) = [v19 processIdentifier];

      _os_log_impl(&dword_2324C0000, v20, v21, "Client with pid %d has disconnected", v24, 8u);
      v25 = v24;
      a4 = v23;
      MEMORY[0x238386450](v25, -1, -1);
    }

    else
    {

      v20 = v19;
    }

    (*(v12 + 8))(v15, v11);
    v26 = sub_2325460F8();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v17;
    v27[5] = v19;
    v28 = v19;
    sub_2324C8F70(0, 0, v10, a4, v27);
  }

  return result;
}

uint64_t sub_2324D0498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 136) & 0xFFFFFFFFFFFFLL | 0x2D94000000000000;
  v5[4] = *(*a4 + 136);
  v5[5] = v6;
  return MEMORY[0x2822009F8](sub_2324D04D4, a4, 0);
}

uint64_t sub_2324D04D4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  (*(v0 + 32))(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2324D0538(char a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v61 - v8;
  v9 = sub_2325458A8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v66 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_2814D6EF0);
  swift_beginAccess();
  v62 = v10[2];
  v63 = v10 + 2;
  v62(v15, v16, v9);
  v17 = a2;
  v67 = v15;
  v18 = sub_232545888();
  v19 = sub_232546208();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v64 = v9;
    v21 = v20;
    v61 = swift_slowAlloc();
    v68[0] = v61;
    *v21 = 67109378;
    *(v21 + 4) = [v17 processIdentifier];

    *(v21 + 8) = 2080;
    if (a1)
    {
      v22 = 1701670771;
    }

    else
    {
      v22 = 28526;
    }

    v23 = v16;
    v24 = a1;
    if (a1)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE200000000000000;
    }

    v26 = v17;
    v27 = v3;
    v28 = v10;
    v29 = sub_2324C2220(v22, v25, v68);
    a1 = v24;
    v16 = v23;

    *(v21 + 10) = v29;
    v10 = v28;
    v3 = v27;
    v17 = v26;
    _os_log_impl(&dword_2324C0000, v18, v19, "Client with pid %d has %s active subscriptions", v21, 0x12u);
    v30 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x238386450](v30, -1, -1);
    v31 = v21;
    v9 = v64;
    MEMORY[0x238386450](v31, -1, -1);
  }

  else
  {
  }

  v32 = v10[1];
  v32(v67, v9);
  v33 = *v3;
  if ((a1 & 1) == 0)
  {
    return (*(v33 + 136))(v17);
  }

  v67 = v10;
  v34 = v9;
  v35 = (*(v33 + 112))(v68);
  v37 = v36;
  v38 = v17;
  MEMORY[0x238385620]();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v60 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_232546078();
  }

  sub_232546088();
  v35(v68, 0);
  v39 = v66;
  v40 = v34;
  v62(v66, v16, v34);

  v41 = sub_232545888();
  v42 = sub_232546208();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v64 = v40;
    v45 = v44;
    v68[0] = v44;
    *v43 = 136315138;
    v46 = (*(*v3 + 96))();
    v47 = sub_2324D2B84();
    v48 = MEMORY[0x238385650](v46, v47);
    v50 = v49;

    v51 = sub_2324C2220(v48, v50, v68);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_2324C0000, v41, v42, "Active subscriptions: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x238386450](v45, -1, -1);
    MEMORY[0x238386450](v43, -1, -1);

    v52 = v66;
    v53 = v64;
  }

  else
  {

    v52 = v39;
    v53 = v34;
  }

  v32(v52, v53);
  v55 = sub_2325460F8();
  v56 = v65;
  (*(*(v55 - 8) + 56))(v65, 1, 1, v55);
  v57 = sub_2324D2A74();
  v58 = swift_allocObject();
  v58[2] = v3;
  v58[3] = v57;
  v58[4] = v3;
  v58[5] = v38;
  swift_retain_n();
  v59 = v38;
  sub_2324C8F70(0, 0, v56, &unk_232547560, v58);
}

uint64_t sub_2324D0B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = *(*a4 + 176);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_2324D0C74;

  return v11(a5);
}

uint64_t sub_2324D0C74()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v10 = *v0;

  v4 = *(*v3 + 144);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v10;
  v6[1] = sub_2324CB1E8;
  v7 = *(v1 + 16);

  return v9();
}

uint64_t sub_2324D0E40(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27[-v7];
  v9 = *(v4 + 112);
  v10 = a1;
  v11 = v9(v27);
  v13 = v12;
  v14 = sub_2324D2DF4(v12, v10);

  v15 = *v13;
  if (!(*v13 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= v14)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v15 < 0)
  {
    v24 = *v13;
  }

  v16 = sub_232546488();
  if (v16 < v14)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_2324D3118(v14, v16);
  v17 = v11(v27, 0);
  v18 = (*(*v2 + 96))(v17);
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v19)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_11:
  v25 = sub_232546488();

  if (!v25)
  {
LABEL_5:
    v21 = sub_2325460F8();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = sub_2324D2A74();
    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = v22;
    v23[4] = v2;
    v23[5] = v4;
    swift_retain_n();
    sub_2324C8F70(0, 0, v8, &unk_232547570, v23);
  }

  return result;
}

uint64_t sub_2324D10A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = sub_2325458A8();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324D1168, a4, 0);
}

uint64_t sub_2324D1168()
{
  if (qword_2814D65F0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_2814D6EF0);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_232545888();
  v6 = sub_232546208();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2324C0000, v5, v6, "No more active clients, stopping polling", v7, 2u);
    MEMORY[0x238386450](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = *(*v11 + 152);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_2324D1390;
  v15 = v0[5];

  return v17();
}

uint64_t sub_2324D1390()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2324D14BC()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 120);
    v0[2] = v2;
    v3 = *v2 + 320;
    v0[3] = *v3;
    v0[4] = v3 & 0xFFFFFFFFFFFFLL | 0xBCEB000000000000;

    return MEMORY[0x2822009F8](sub_2324D35DC, v2, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2324D15AC()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 120);
    v0[2] = v2;
    v3 = *v2 + 336;
    v0[3] = *v3;
    v0[4] = v3 & 0xFFFFFFFFFFFFLL | 0x3C10000000000000;

    return MEMORY[0x2822009F8](sub_2324D1680, v2, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2324D1680()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2324D16EC(uint64_t a1)
{
  v3 = (*(*v1 + 96))();
  v6 = v1;
  v7 = a1;
  sub_2324D1774(sub_2324D3284, &v5, v3);
}

void sub_2324D1774(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_232546488())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383859D0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_2324D1874(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for NDFEvent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2325458A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = [a2 remoteObjectProxy];
  sub_232546338();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93238, qword_232547590);
  if (swift_dynamicCast())
  {
    v43 = v2;
    v18 = v44;
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v9, qword_2814D6EF0);
    swift_beginAccess();
    (*(v10 + 16))(v16, v19, v9);
    sub_2324D32DC(a1, v8);
    v20 = a2;
    v21 = sub_232545888();
    v22 = sub_232546208();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v42 = a1;
      v24 = v23;
      v25 = swift_slowAlloc();
      v41 = v18;
      v26 = v25;
      v44 = v25;
      *v24 = 67109378;
      *(v24 + 4) = [v20 processIdentifier];

      *(v24 + 8) = 2080;
      v27 = sub_2325384B0();
      v29 = v28;
      sub_2324D3340(v8);
      v30 = sub_2324C2220(v27, v29, &v44);

      *(v24 + 10) = v30;
      _os_log_impl(&dword_2324C0000, v21, v22, "Sending update to client with pid %d for %s", v24, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v31 = v26;
      v18 = v41;
      MEMORY[0x238386450](v31, -1, -1);
      v32 = v24;
      a1 = v42;
      MEMORY[0x238386450](v32, -1, -1);
    }

    else
    {

      sub_2324D3340(v8);
    }

    (*(v10 + 8))(v16, v9);
    v40 = (*(*v43 + 192))(a1);
    [v18 didReceiveEvent_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v9, qword_2814D6EF0);
    swift_beginAccess();
    (*(v10 + 16))(v14, v33, v9);
    v34 = a2;
    v35 = sub_232545888();
    v36 = sub_2325461F8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_2324C0000, v35, v36, "Failed to obtain remote object proxy for connection %@", v37, 0xCu);
      sub_2324C28AC(v38, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v38, -1, -1);
      MEMORY[0x238386450](v37, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
  }
}

uint64_t sub_2324D1D70(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_2325458A8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(type metadata accessor for NDFEvent(0) - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324D1E88, v1, 0);
}

uint64_t sub_2324D1E88()
{
  v1 = sub_2324C8418();
  if (*v1)
  {
    v2 = *(*v1 + 144);
    v0[12] = v2;
    v3 = (*v2 + 192) & 0xFFFFFFFFFFFFLL | 0xB55A000000000000;
    v0[13] = *(*v2 + 192);
    v0[14] = v3;

    return MEMORY[0x2822009F8](sub_2324D20BC, v2, 0);
  }

  else
  {
    if (qword_2814D65F0 != -1)
    {
      swift_once();
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    v7 = v0[5];
    v8 = __swift_project_value_buffer(v6, qword_2814D6EF0);
    swift_beginAccess();
    (*(v5 + 16))(v4, v8, v6);
    v9 = v7;
    v10 = sub_232545888();
    v11 = sub_2325461E8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[5];
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = [v12 processIdentifier];

      _os_log_impl(&dword_2324C0000, v10, v11, "Client with pid %d did not miss any in-flight events", v13, 8u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    else
    {

      v10 = v0[5];
    }

    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];

    (*(v15 + 8))(v14, v16);
    v17 = v0[11];
    v18 = v0[9];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2324D20BC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  *(v0 + 120) = (*(v0 + 104))();

  return MEMORY[0x2822009F8](sub_2324D2138, v3, 0);
}

uint64_t sub_2324D2138()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(**(v0 + 48) + 168);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 88);
      v9 = *(v0 + 40);
      v8 = *(v0 + 48);
      sub_2324D32DC(v5, v7);
      v4(v7, v9);
      sub_2324D3340(v7);
      v5 += v6;
      --v2;
    }

    while (v2);
    v10 = *(v0 + 120);
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 72);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2324D2240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_2325456F8();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v48 - v10;
  v54 = sub_232545688();
  v52 = *(v54 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v61 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93240, &qword_2325475B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - v15;
  v17 = sub_232545828();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v51 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  v24 = sub_232545808();
  v60 = *(v24 - 8);
  v25 = *(v60 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v48 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v48 - v30;
  v32 = *(a1 + 8);
  v58 = v5;
  v59 = v33;
  if (v32)
  {
    if (v32 == 1)
    {
      v34 = MEMORY[0x277D6B288];
    }

    else
    {
      v34 = qword_278988A70[*a1];
    }
  }

  else
  {
    v34 = MEMORY[0x277D6B290];
  }

  v35 = v60;
  (*(v60 + 104))(v29, *v34, v24);
  v36 = v31;
  (*(v35 + 32))(v31, v29, v24);
  sub_232537EA0(*(a1 + 9));
  sub_232545818();
  v37 = *(v18 + 48);
  if (v37(v16, 1, v17) == 1)
  {
    (*(v18 + 104))(v23, *MEMORY[0x277D6B298], v17);
    if (v37(v16, 1, v17) != 1)
    {
      sub_2324C28AC(v16, &qword_27DD93240, &qword_2325475B0);
    }
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
  }

  v49 = v23;
  v38 = type metadata accessor for NDFEvent(0);
  (*(v52 + 16))(v61, a1 + v38[6], v54);
  v39 = v60;
  v40 = *(v60 + 16);
  v50 = v36;
  v40(v59, v36, v24);
  v41 = *(v18 + 16);
  v48 = v17;
  v41(v51, v23, v17);
  v42 = *(v55 + 16);
  v43 = a1 + v38[7];
  v55 = v24;
  v44 = v56;
  v42(v53, v43, v56);
  sub_2324CF3C4(a1 + v38[8], v58, &unk_27DD932E0, qword_2325472E0);
  v42(v57, a1 + v38[9], v44);
  v45 = objc_allocWithZone(sub_232545878());
  v46 = sub_232545858();
  (*(v18 + 8))(v49, v48);
  (*(v39 + 8))(v50, v55);
  return v46;
}

uint64_t sub_2324D2824(uint64_t a1)
{
  v3 = (*(*v1 + 184))();
  v4 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1)
      {
        v5 = *a1;
      }

      sub_2324D339C(v4);
      sub_232545848();
    }
  }

  else
  {
    *a1;
    sub_2325457F8();
    sub_232545868();
    sub_232545838();
  }

  return v3;
}

uint64_t sub_2324D28DC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324D2904()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324D293C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_2324D2980()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2324D2A74()
{
  result = qword_2814D4DD0;
  if (!qword_2814D4DD0)
  {
    type metadata accessor for NDFClientController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4DD0);
  }

  return result;
}

uint64_t sub_2324D2AEC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324D0B48(v4, v5, v6, v2, v3);
}

unint64_t sub_2324D2B84()
{
  result = qword_2814D4C58;
  if (!qword_2814D4C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D4C58);
  }

  return result;
}

uint64_t sub_2324D2BD0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_232546488();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_2325463F8();
    *v1 = result;
  }

  return result;
}

uint64_t sub_2324D2C8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_232546488();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2325463F8();
}

unint64_t sub_2324D2CF0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_232546488();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x2383859D0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_2324D2DF4(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_2324D2CF0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_232546488();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_232546488())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x2383859D0](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x2383859D0](v10, v7);
        v17 = MEMORY[0x2383859D0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_2324D2C8C(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_2324D2C8C(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_232546488();
}

uint64_t sub_2324D3018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2324D2B84();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_232546488();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_232546488();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2324D3118(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_232546488();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_232546488();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2324D2BD0(result);

  return sub_2324D3018(v4, v2, 0);
}

uint64_t sub_2324D31F0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C2910;

  return sub_2324D10A4(v3, v4, v5, v2);
}

uint64_t sub_2324D32DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324D3340(uint64_t a1)
{
  v2 = type metadata accessor for NDFEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2324D339C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2324D33AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C2910;

  return sub_2324CDEA8(a1, v5);
}

uint64_t sub_2324D3464()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324D0498(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2324D3544()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324D0124(v4, v5, v6, v2, v3);
}

uint64_t sub_2324D35F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F47B8();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324D3660@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *sub_2324D36D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_storeCoordinator);
  v2 = v1;
  return v1;
}

uint64_t sub_2324D3708(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_2324D3744(a1);
}

uint64_t sub_2324D3744(void *a1)
{
  v2 = v1;
  v4 = sub_2325458A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v10 = sub_2324F47B8();
  v11 = *(v5 + 16);
  v11(v2 + v9, v10, v4);
  *(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext) = 1;
  v11(v8, v2 + v9, v4);
  v12 = a1;
  v13 = sub_232545888();
  v14 = sub_232546208();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_2324C0000, v13, v14, "Initializing persistenceController with %@", v15, 0xCu);
    sub_2324C28AC(v16, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v16, -1, -1);
    MEMORY[0x238386450](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  *(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_storeCoordinator) = v12;
  v18 = v12;
  v19 = sub_232545888();
  v20 = sub_232546208();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2324C0000, v19, v20, "Finished initializing the persistenceController", v21, 2u);
    MEMORY[0x238386450](v21, -1, -1);
  }

  return v2;
}

id sub_2324D39CC()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext;
  v2 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_storeCoordinator);
    if (v4)
    {
      v5 = objc_allocWithZone(MEMORY[0x277CBE440]);
      v6 = v4;
      v3 = [v5 initWithConcurrencyType_];
      [v3 setAutomaticallyMergesChangesFromParent_];
      [v3 setPersistentStoreCoordinator_];
      [v3 setMergePolicy_];
      [v3 setUndoManager_];

      v7 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
      v7 = 1;
    }

    *(v0 + v1) = v3;
    v8 = v3;
    sub_2324DA610(v7);
  }

  sub_2324DA620(v2);
  return v3;
}

void sub_2324D3AD4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext) = a1;
  sub_2324DA610(v2);
}

void (*sub_2324D3AEC(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2324D39CC();
  return sub_2324D3B34;
}

void sub_2324D3B34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext);
  *(v3 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_2324DA610(v4);
  }

  else
  {

    sub_2324DA610(v4);
  }
}

void sub_2324D3BB8(uint64_t a1)
{
  v3 = (*(*v1 + 120))();
  if (v3)
  {
    v4 = v3;

    v5 = sub_232545888();
    v6 = sub_2325461E8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(a1 + 16);

      _os_log_impl(&dword_2324C0000, v5, v6, "Attempting to persist %ld devices...", v7, 0xCu);
      MEMORY[0x238386450](v7, -1, -1);
    }

    else
    {
    }

    MEMORY[0x28223BE20](v8);
    sub_2325462D8();
  }

  else
  {
    v9 = sub_232545888();
    v10 = sub_2325461F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2324C0000, v9, v10, "Failed to get valid MOC", v11, 2u);
      MEMORY[0x238386450](v11, -1, -1);
    }
  }
}

id sub_2324D3DB4(uint64_t a1, void *a2, uint64_t a3)
{
  v314 = a3;
  v321[1] = *MEMORY[0x277D85DE8];
  v292 = sub_232545688();
  v5 = *(v292 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v292);
  v273 = &v267 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93288, &qword_2325477D8);
  v8 = *(*(v291 - 8) + 64);
  MEMORY[0x28223BE20](v291);
  v290 = &v267 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v267 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v302 = &v267 - v16;
  MEMORY[0x28223BE20](v15);
  v297 = &v267 - v17;
  v304 = sub_232545A88();
  v18 = *(v304 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v304);
  v282 = &v267 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v276 = &v267 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v275 = &v267 - v25;
  MEMORY[0x28223BE20](v24);
  v303 = &v267 - v26;
  v307 = sub_2325456F8();
  v27 = *(v307 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v307);
  v272 = &v267 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  v30 = *(*(v289 - 8) + 64);
  MEMORY[0x28223BE20](v289);
  v294 = &v267 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v281 = &v267 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v283 = &v267 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v288 = &v267 - v39;
  MEMORY[0x28223BE20](v38);
  v296 = &v267 - v40;
  v320 = type metadata accessor for NDFDevice();
  v41 = *(v320 - 1);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x28223BE20](v320);
  v305 = &v267 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v45);
  v48 = &v267 - v47;
  v49 = *(a1 + 16);
  v316 = a2;
  v269 = a1;
  v268 = v49;
  if (v49)
  {
    v280 = v46;
    v279 = v14;
    v312 = objc_opt_self();
    v311 = sub_2324DB388(0, &qword_2814D4C60, 0x277CCAC30);
    v50 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v313 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
    v287 = (v27 + 56);
    v308 = *(v41 + 72);
    v300 = (v27 + 48);
    v271 = (v27 + 32);
    v293 = (v27 + 8);
    v301 = (v18 + 8);
    v286 = (v5 + 56);
    v285 = (v5 + 16);
    v284 = (v5 + 48);
    v270 = (v5 + 32);
    v278 = (v5 + 8);
    v310 = xmmword_232547670;
    *(&v51 + 1) = 3;
    v309 = xmmword_232547680;
    *&v51 = 136315138;
    v299 = v51;
    *&v51 = 138412290;
    v277 = v51;
    *&v51 = 136315394;
    v267 = v51;
    v52 = v49;
    v53 = a1 + v50;
    v298 = v48;
    do
    {
      sub_2324CE250(v53, v48);
      v54 = [v312 fetchRequest];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
      v55 = swift_allocObject();
      *(v55 + 16) = v310;
      v56 = sub_232545238();
      v58 = *v56;
      v57 = *(v56 + 1);
      v59 = MEMORY[0x277D837D0];
      *(v55 + 56) = MEMORY[0x277D837D0];
      v60 = sub_2324DB334();
      *(v55 + 64) = v60;
      *(v55 + 32) = v58;
      *(v55 + 40) = v57;

      v61 = sub_2325456A8();
      *(v55 + 96) = v59;
      *(v55 + 104) = v60;
      *(v55 + 72) = v61;
      *(v55 + 80) = v62;
      v63 = sub_2325461C8();
      [v54 setPredicate_];

      [v54 setFetchLimit_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93298, &qword_2325477E8);
      v64 = swift_allocObject();
      *(v64 + 16) = v309;
      v65 = sub_23254525C();
      v66 = *v65;
      v67 = *(v65 + 1);
      v68 = objc_allocWithZone(MEMORY[0x277CCAC98]);

      v69 = sub_232545F58();

      v70 = [v68 initWithKey:v69 ascending:0];

      *(v64 + 32) = v70;
      sub_2324DB388(0, &qword_2814D4C50, 0x277CCAC98);
      v71 = sub_232546048();

      [v54 setSortDescriptors_];

      sub_2324DB388(0, &qword_2814D4ED8, 0x277D6B520);
      v72 = v316;
      v73 = v319;
      v74 = sub_2325462E8();
      if (v73)
      {
        v75 = v305;
        sub_2324CE250(v48, v305);
        v76 = sub_232545888();
        v77 = sub_2325461F8();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v315 = v53;
          v318 = v54;
          v79 = v48;
          v80 = v52;
          v81 = v75;
          v82 = v78;
          v83 = swift_slowAlloc();
          v319 = v73;
          v84 = v83;
          v321[0] = v83;
          *v82 = v299;
          sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0]);
          v85 = sub_232546608();
          v87 = v86;
          v88 = v81;
          v52 = v80;
          v48 = v79;
          v89 = v315;
          sub_2324CE2B4(v88);
          v90 = sub_2324C2220(v85, v87, v321);
          v53 = v89;

          *(v82 + 4) = v90;
          _os_log_impl(&dword_2324C0000, v76, v77, "Error fetching device record with identifier %s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x238386450](v84, -1, -1);
          MEMORY[0x238386450](v82, -1, -1);
        }

        else
        {

          sub_2324CE2B4(v75);
        }

        v319 = 0;
        goto LABEL_5;
      }

      if (v74 >> 62)
      {
        v258 = v74;
        v91 = sub_232546488();
        v74 = v258;
      }

      else
      {
        v91 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v318 = v54;
      v319 = 0;
      v306 = v52;
      if (!v91)
      {
        v119 = v53;

        v120 = v280;
        sub_2324CE250(v48, v280);
        v121 = sub_232545888();
        v122 = sub_2325461D8();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v321[0] = v124;
          *v123 = v299;
          sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0]);
          v125 = sub_232546608();
          v127 = v126;
          sub_2324CE2B4(v120);
          v128 = sub_2324C2220(v125, v127, v321);
          v129 = v316;

          *(v123 + 4) = v128;
          _os_log_impl(&dword_2324C0000, v121, v122, "Creating new entity for ID: %s", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v124);
          v130 = v124;
          v72 = v129;
          MEMORY[0x238386450](v130, -1, -1);
          MEMORY[0x238386450](v123, -1, -1);
        }

        else
        {

          sub_2324CE2B4(v120);
        }

        v131 = v282;
        v132 = [objc_allocWithZone(MEMORY[0x277D6B520]) initWithContext_];
        v133 = sub_2325456B8();
        [v132 setDeviceID_];

        v134 = &v48[v320[6]];
        v53 = v119;
        v52 = v306;
        if (*(v134 + 1))
        {
          v135 = *v134;
          v136 = sub_232545F58();
        }

        else
        {
          v136 = 0;
        }

        [v132 setDeviceModel_];

        v137 = v281;
        sub_2324CF3C4(&v48[v320[7]], v281, &unk_27DD932E0, qword_2325472E0);
        v138 = v307;
        if ((*v300)(v137, 1, v307) == 1)
        {
          v139 = 0;
        }

        else
        {
          v139 = sub_2325456B8();
          (*v293)(v137, v138);
        }

        v140 = v318;
        [v132 setHomeKitGroupID_];

        v141 = &v48[v320[10]];
        if (*(v141 + 1))
        {
          v142 = *v141;
          v143 = sub_232545F58();
        }

        else
        {
          v143 = 0;
        }

        [v132 setNwObscuredSSID_];

        v144 = &v48[v320[8]];
        if (*(v144 + 1) >> 60 == 15)
        {
          v145 = 0;
        }

        else
        {
          v146 = *v144;
          v145 = sub_2325455C8();
        }

        [v132 setNwSignatureIPv4_];

        v147 = &v48[v320[9]];
        if (*(v147 + 1) >> 60 == 15)
        {
          v148 = 0;
        }

        else
        {
          v149 = *v147;
          v148 = sub_2325455C8();
        }

        [v132 setNwSignatureIPv6_];

        v150 = v320;
        [v132 setIsHomeKitPrimaryResident_];
        v151 = v48[v150[12]];
        [v132 setCanReachHomeKitPrimaryResident_];
        v152 = &v48[v150[14]];
        if (v152[2])
        {
          v153 = 0;
        }

        else
        {
          v153 = *v152;
        }

        [v132 setNwNATCount_];
        v321[0] = 0;
        sub_2324DB288(&unk_27DD93300, MEMORY[0x277D6B300]);
        v154 = v131;
        v155 = v304;
        sub_232546798();
        v156 = v48[v150[15]];
        if (v156 != 2 && (v156 & 1) != 0)
        {
          v157 = v276;
          sub_232545A58();
          v315 = v53;
          v158 = v275;
          sub_2324D5F90(v275, v157);
          v159 = *v301;
          v160 = v157;
          v140 = v318;
          (*v301)(v160, v155);
          v161 = v158;
          v53 = v315;
          v159(v161, v155);
        }

        [v132 setNwNetworkProperties_];
        v162 = &v48[v320[5]];
        v163 = sub_232545608();
        [v132 setLastUpdated_];

        (*v301)(v154, v155);
        goto LABEL_5;
      }

      if ((v74 & 0xC000000000000001) != 0)
      {
        v92 = MEMORY[0x2383859D0](0);
      }

      else
      {
        if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v92 = *(v74 + 32);
      }

      v93 = v92;

      v94 = v93;
      v95 = sub_232545888();
      v96 = sub_2325461D8();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v97 = v277;
        *(v97 + 4) = v94;
        *v98 = v94;
        v99 = v94;
        _os_log_impl(&dword_2324C0000, v95, v96, "Updating entity: %@", v97, 0xCu);
        sub_2324C28AC(v98, &qword_27DD93218, &qword_232547360);
        MEMORY[0x238386450](v98, -1, -1);
        MEMORY[0x238386450](v97, -1, -1);
      }

      v100 = [v94 deviceModel];
      v315 = v53;
      if (v100)
      {
        v101 = v100;
        v102 = sub_232545F68();
        v104 = v103;

        v105 = &v48[v320[6]];
        v106 = v105[1];
        if (v106)
        {
          v107 = *v105;
          if (v102 != *v105 || v106 != v104)
          {
            v108 = *v105;
            v109 = v105[1];
            if ((sub_232546628() & 1) == 0)
            {

              v251 = sub_232545888();
              v252 = sub_2325461F8();

              if (os_log_type_enabled(v251, v252))
              {
                v253 = swift_slowAlloc();
                LODWORD(v295) = v252;
                v254 = v253;
                v317 = swift_slowAlloc();
                v321[0] = v317;
                *v254 = v267;
                v255 = sub_2324C2220(v102, v104, v321);

                *(v254 + 4) = v255;
                *(v254 + 12) = 2080;
                v256 = sub_2324C2220(v107, v106, v321);

                *(v254 + 14) = v256;
                _os_log_impl(&dword_2324C0000, v251, v295, "DeviceModelError: incoming device model %s does not match existing %s", v254, 0x16u);
                v257 = v317;
                swift_arrayDestroy();
                MEMORY[0x238386450](v257, -1, -1);
                MEMORY[0x238386450](v254, -1, -1);
              }

              else
              {
              }

              goto LABEL_56;
            }
          }
        }
      }

      v110 = &v48[v320[6]];
      v111 = *(v110 + 1);
      if (!v111)
      {
        goto LABEL_56;
      }

      v112 = *v110;
      v113 = *(v110 + 1);

      v114 = [v94 deviceModel];
      if (!v114)
      {

LABEL_55:
        v165 = sub_232545F58();
        [v94 setDeviceModel_];

        goto LABEL_56;
      }

      v115 = v114;
      v116 = sub_232545F68();
      v118 = v117;

      if (v112 == v116 && v111 == v118)
      {

        goto LABEL_56;
      }

      v164 = sub_232546628();

      if ((v164 & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_56:
      v166 = [v94 homeKitGroupID];
      v317 = v94;
      if (v166)
      {
        v167 = v296;
        v168 = v166;
        sub_2325456D8();

        v169 = 0;
        v170 = v288;
      }

      else
      {
        v169 = 1;
        v170 = v288;
        v167 = v296;
      }

      v171 = v307;
      (*v287)(v167, v169, 1, v307);
      v172 = v320[7];
      v173 = *(v289 + 48);
      v174 = v294;
      sub_2324CF3C4(v167, v294, &unk_27DD932E0, qword_2325472E0);
      v295 = v172;
      sub_2324CF3C4(&v48[v172], v174 + v173, &unk_27DD932E0, qword_2325472E0);
      v175 = *v300;
      if ((*v300)(v174, 1, v171) == 1)
      {
        sub_2324C28AC(v167, &unk_27DD932E0, qword_2325472E0);
        v176 = v171;
        if (v175(v174 + v173, 1, v171) == 1)
        {
          sub_2324C28AC(v174, &unk_27DD932E0, qword_2325472E0);
          v177 = v317;
          goto LABEL_69;
        }
      }

      else
      {
        sub_2324CF3C4(v174, v170, &unk_27DD932E0, qword_2325472E0);
        v176 = v171;
        if (v175(v174 + v173, 1, v171) != 1)
        {
          v189 = v272;
          (*v271)(v272, v174 + v173, v176);
          sub_2324DB288(&qword_2814D4E80, MEMORY[0x277CC95F0]);
          v190 = v170;
          v191 = sub_232545F48();
          v192 = *v293;
          (*v293)(v189, v307);
          sub_2324C28AC(v296, &unk_27DD932E0, qword_2325472E0);
          v192(v190, v307);
          v176 = v307;
          sub_2324C28AC(v294, &unk_27DD932E0, qword_2325472E0);
          v177 = v317;
          if (v191)
          {
            goto LABEL_69;
          }

          goto LABEL_65;
        }

        sub_2324C28AC(v296, &unk_27DD932E0, qword_2325472E0);
        (*v293)(v170, v171);
      }

      sub_2324C28AC(v174, &qword_27DD93290, &qword_2325477E0);
      v177 = v317;
LABEL_65:
      v178 = v283;
      sub_2324CF3C4(&v298[v295], v283, &unk_27DD932E0, qword_2325472E0);
      if (v175(v178, 1, v176) == 1)
      {
        v179 = 0;
      }

      else
      {
        v179 = sub_2325456B8();
        (*v293)(v178, v176);
      }

      [v177 setHomeKitGroupID_];

LABEL_69:
      v180 = [v177 nwObscuredSSID];
      if (!v180)
      {
        v48 = v298;
        v187 = &v298[v320[10]];
        if (!*(v187 + 1))
        {
          goto LABEL_82;
        }

        v188 = *v187;
LABEL_80:
        v186 = sub_232545F58();
LABEL_81:
        [v177 setNwObscuredSSID_];

        goto LABEL_82;
      }

      v181 = v180;
      v182 = sub_232545F68();
      v184 = v183;

      v48 = v298;
      v185 = &v298[v320[10]];
      v186 = *(v185 + 1);
      if (!v186)
      {

        goto LABEL_81;
      }

      if (v182 == *v185 && v186 == v184)
      {

        goto LABEL_82;
      }

      v193 = *v185;
      v194 = *(v185 + 1);
      v195 = sub_232546628();

      if ((v195 & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_82:
      v196 = [v177 nwSignatureIPv4];
      if (!v196)
      {
        v198 = 0;
        v201 = &v48[v320[8]];
        v202 = *v201;
        v204 = v201 + 1;
        v203 = v201[1];
        v200 = 0xF000000000000000;
LABEL_88:
        if (v203 >> 60 == 15)
        {
          sub_2324DB3D0(v202, v203);
          sub_2324DB438(v198, v200);
          goto LABEL_95;
        }

        goto LABEL_90;
      }

      v197 = v196;
      v198 = sub_2325455D8();
      v200 = v199;

      v201 = &v48[v320[8]];
      v202 = *v201;
      v204 = v201 + 1;
      v203 = v201[1];
      if (v200 >> 60 == 15)
      {
        goto LABEL_88;
      }

      if (v203 >> 60 != 15)
      {
        sub_2324DB3D0(*v201, v203);
        sub_2324DB3D0(v198, v200);
        LODWORD(v295) = sub_2324DA960(v198, v200, v202, v203);
        sub_2324DB438(v198, v200);
        sub_2324DB438(v202, v203);
        sub_2324DB438(v198, v200);
        if (v295)
        {
          goto LABEL_95;
        }

        goto LABEL_91;
      }

LABEL_90:
      sub_2324DB3D0(v202, v203);
      sub_2324DB438(v198, v200);
      sub_2324DB438(v202, v203);
LABEL_91:
      if (*v204 >> 60 == 15)
      {
        v205 = 0;
      }

      else
      {
        v206 = *v201;
        v205 = sub_2325455C8();
      }

      [v177 setNwSignatureIPv4_];

LABEL_95:
      v207 = [v177 nwSignatureIPv6];
      if (!v207)
      {
        v209 = 0;
        v212 = &v48[v320[9]];
        v213 = *v212;
        v215 = v212 + 1;
        v214 = v212[1];
        v211 = 0xF000000000000000;
LABEL_101:
        if (v214 >> 60 == 15)
        {
          sub_2324DB3D0(v213, v214);
          sub_2324DB438(v209, v211);
          v216 = v292;
          goto LABEL_108;
        }

        goto LABEL_103;
      }

      v208 = v207;
      v209 = sub_2325455D8();
      v211 = v210;

      v212 = &v48[v320[9]];
      v213 = *v212;
      v215 = v212 + 1;
      v214 = v212[1];
      if (v211 >> 60 == 15)
      {
        goto LABEL_101;
      }

      if (v214 >> 60 != 15)
      {
        sub_2324DB3D0(*v212, v214);
        sub_2324DB3D0(v209, v211);
        LODWORD(v295) = sub_2324DA960(v209, v211, v213, v214);
        sub_2324DB438(v209, v211);
        sub_2324DB438(v213, v214);
        sub_2324DB438(v209, v211);
        v216 = v292;
        if (v295)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      }

LABEL_103:
      sub_2324DB3D0(v213, v214);
      sub_2324DB438(v209, v211);
      sub_2324DB438(v213, v214);
      v216 = v292;
LABEL_104:
      if (*v215 >> 60 == 15)
      {
        v217 = 0;
      }

      else
      {
        v218 = *v212;
        v217 = sub_2325455C8();
      }

      [v177 setNwSignatureIPv6_];

LABEL_108:
      v219 = v48[v320[11]];
      if (v219 != 2)
      {
        v220 = v219 & 1;
        if ([v177 isHomeKitPrimaryResident] != v220)
        {
          [v177 setIsHomeKitPrimaryResident_];
        }
      }

      v221 = v48[v320[12]];
      v222 = v304;
      if (v221 != 2)
      {
        v223 = v221 & 1;
        if ([v317 canReachHomeKitPrimaryResident] != v223)
        {
          [v317 setCanReachHomeKitPrimaryResident_];
        }
      }

      v224 = &v48[v320[14]];
      if ((v224[2] & 1) == 0)
      {
        v225 = *v224;
        if (v225 != [v317 nwNATCount])
        {
          [v317 setNwNATCount_];
        }
      }

      v321[0] = 0;
      sub_2324DB288(&unk_27DD93300, MEMORY[0x277D6B300]);
      sub_232546798();
      v226 = v48[v320[15]];
      if (v226 != 2 && (v226 & 1) != 0)
      {
        v227 = v276;
        sub_232545A58();
        v228 = v275;
        sub_2324D5F90(v275, v227);
        v229 = *v301;
        (*v301)(v227, v222);
        v229(v228, v222);
      }

      v230 = v317;
      v231 = [v317 nwNetworkProperties];
      if (v231 != sub_232545A78())
      {
        [v230 setNwNetworkProperties_];
      }

      v232 = [v230 lastUpdated];
      if (v232)
      {
        v233 = v297;
        v234 = v232;
        sub_232545658();

        v235 = 0;
      }

      else
      {
        v235 = 1;
        v233 = v297;
      }

      v236 = *v286;
      (*v286)(v233, v235, 1, v216);
      v237 = *v285;
      v295 = v320[5];
      v238 = v302;
      v237(v302, &v48[v295], v216);
      v236(v238, 0, 1, v216);
      v239 = *(v291 + 48);
      v240 = v290;
      sub_2324CF3C4(v233, v290, &qword_27DD93440, &qword_232547AE0);
      sub_2324CF3C4(v238, v240 + v239, &qword_27DD93440, &qword_232547AE0);
      v241 = v233;
      v242 = *v284;
      if ((*v284)(v240, 1, v216) == 1)
      {
        sub_2324C28AC(v302, &qword_27DD93440, &qword_232547AE0);
        sub_2324C28AC(v241, &qword_27DD93440, &qword_232547AE0);
        v243 = v242(v240 + v239, 1, v216);
        v53 = v315;
        if (v243 == 1)
        {
          sub_2324C28AC(v240, &qword_27DD93440, &qword_232547AE0);
          v244 = v304;
          v246 = v317;
          v245 = v318;
LABEL_133:
          (*v301)(v303, v244);

          v52 = v306;
          goto LABEL_5;
        }

        goto LABEL_130;
      }

      v247 = v279;
      sub_2324CF3C4(v240, v279, &qword_27DD93440, &qword_232547AE0);
      if (v242(v240 + v239, 1, v216) == 1)
      {
        sub_2324C28AC(v302, &qword_27DD93440, &qword_232547AE0);
        sub_2324C28AC(v297, &qword_27DD93440, &qword_232547AE0);
        (*v278)(v247, v216);
        v53 = v315;
LABEL_130:
        sub_2324C28AC(v240, &qword_27DD93288, &qword_2325477D8);
        v244 = v304;
        v246 = v317;
        v245 = v318;
        goto LABEL_131;
      }

      v249 = v273;
      (*v270)(v273, v240 + v239, v216);
      sub_2324DB288(&qword_27DD932A0, MEMORY[0x277CC9578]);
      v274 = sub_232545F48();
      v250 = *v278;
      (*v278)(v249, v216);
      sub_2324C28AC(v302, &qword_27DD93440, &qword_232547AE0);
      sub_2324C28AC(v297, &qword_27DD93440, &qword_232547AE0);
      v250(v247, v216);
      sub_2324C28AC(v240, &qword_27DD93440, &qword_232547AE0);
      v244 = v304;
      v53 = v315;
      v246 = v317;
      v245 = v318;
      if (v274)
      {
        goto LABEL_133;
      }

LABEL_131:
      v248 = sub_232545608();
      [v246 setLastUpdated_];

      (*v301)(v303, v244);
      v52 = v306;
LABEL_5:
      sub_2324CE2B4(v48);
      v53 += v308;
      --v52;
    }

    while (v52);
  }

  v259 = v316;
  if (([v316 hasChanges] & 1) == 0)
  {
    goto LABEL_146;
  }

  v321[0] = 0;
  if ([v259 save_])
  {
    v260 = v321[0];

    v261 = sub_232545888();
    v262 = sub_232546208();
    if (os_log_type_enabled(v261, v262))
    {
      v263 = swift_slowAlloc();
      *v263 = 134217984;
      *(v263 + 4) = v268;

      _os_log_impl(&dword_2324C0000, v261, v262, "Persisted %ld updated devices", v263, 0xCu);
      MEMORY[0x238386450](v263, -1, -1);
    }

    else
    {
    }

LABEL_146:
    result = [v259 reset];
    goto LABEL_147;
  }

  v264 = v321[0];
  sub_2325455A8();

  result = swift_willThrow();
LABEL_147:
  v266 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2324D5F90(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932A8, &unk_2325477F0);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_232545A88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x277D6B300];
  v27 = sub_2324DB288(&qword_27DD93278, MEMORY[0x277D6B300]);
  sub_232546358();
  v19 = v18;
  v20 = v30;
  sub_2324DB288(&qword_27DD93310, v19);
  v28 = a2;
  v21 = sub_232545F48();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    sub_232546368();
  }

  v24 = v31;
  sub_2324DB4A0(v8, v31);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_2324D6284()
{
  v1 = (*(*v0 + 120))();
  if (!v1)
  {
    v11 = sub_232545888();
    v12 = sub_2325461F8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2324C0000, v11, v12, "Failed to get valid MOC", v13, 2u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v15 = MEMORY[0x277D84F90];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = &v15;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2324DA650;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2324DA658;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2324D7C14;
  aBlock[3] = &block_descriptor_1;
  v5 = _Block_copy(aBlock);

  [v2 performBlockAndWait_];
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v7 = sub_232545888();
    v8 = sub_232546208();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      swift_beginAccess();
      *(v9 + 4) = *(v15 + 16);
      _os_log_impl(&dword_2324C0000, v7, v8, "Loaded %ld devices from persistence", v9, 0xCu);
      MEMORY[0x238386450](v9, -1, -1);
    }

    swift_beginAccess();
    v10 = v15;

    return v10;
  }

  __break(1u);
  return result;
}

void sub_2324D6560(uint64_t a1, size_t *a2)
{
  v186 = a2;
  v200 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v154 - v5;
  v165 = sub_232545688();
  v7 = *(v165 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v165);
  v185 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NDFDevice();
  v164 = *(v10 - 8);
  v11 = *(v164 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v184 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v183 = &v154 - v14;
  v182 = sub_232545A88();
  v15 = *(v182 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v182);
  v163 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v168 = &v154 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v181 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v166 = &v154 - v24;
  v25 = sub_2325456F8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v180 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v188 = &v154 - v30;
  sub_2324DB388(0, &qword_2814D4ED8, 0x277D6B520);
  v31 = [swift_getObjCClassFromMetadata() entityName];
  if (!v31)
  {
    sub_232545F68();
    v31 = sub_232545F58();
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  [v32 setResultType_];
  *&v198 = 0;
  v156 = v32;
  v33 = [v32 execute_];
  v34 = v198;
  if (v33)
  {
    v35 = v33;
    v179 = v7;
    v36 = v15;
    sub_2324DB388(0, &qword_2814D4EE0, 0x277CBEAC0);
    v37 = sub_232546058();
    v38 = v34;

    v39 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;

    v187 = v39;
    v40 = sub_232545888();
    v41 = sub_2325461D8();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v37 >> 62;
    v191 = v25;
    v192 = v37;
    if (!v42)
    {

      goto LABEL_11;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    if (v43)
    {
      goto LABEL_124;
    }

    v37 = v192;
    for (i = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232546488())
    {
      *(v25 + 4) = i;

      _os_log_impl(&dword_2324C0000, v40, v41, "Fetched %ld device records", v25, 0xCu);
      MEMORY[0x238386450](v25, -1, -1);

      v25 = v191;
LABEL_11:
      v55 = v37;
      if (v43)
      {
        v40 = v37;
        v56 = sub_232546488();
        v55 = v37;
        if (!v56)
        {
LABEL_121:

          goto LABEL_122;
        }
      }

      else
      {
        v56 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v56)
        {
          goto LABEL_121;
        }
      }

      if (v56 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_124:
      v37 = v192;
    }

    v57 = 0;
    v189 = v55 & 0xC000000000000001;
    v193 = (v26 + 56);
    v178 = (v26 + 48);
    v160 = (v26 + 32);
    v159 = (v26 + 16);
    v158 = (v179 + 7);
    v167 = (v179 + 6);
    v155 = (v179 + 4);
    v179 = (v36 + 8);
    v157 = (v26 + 8);
    *&v45 = 138412290;
    v162 = v45;
    v161 = v6;
    v58 = v166;
    v190 = v56;
    while (1)
    {
      if (v189)
      {
        v59 = MEMORY[0x2383859D0](v57);
      }

      else
      {
        v59 = *(v55 + 8 * v57 + 32);
      }

      v60 = v59;
      v61 = sub_232545238();
      v63 = *v61;
      v62 = *(v61 + 1);
      *&v196 = v63;
      *(&v196 + 1) = v62;

      v64 = [v60 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v64)
      {
        sub_232546338();
        swift_unknownObjectRelease();
      }

      else
      {
        v196 = 0u;
        v197 = 0u;
      }

      v198 = v196;
      v199 = v197;
      if (*(&v197 + 1))
      {
        v65 = swift_dynamicCast();
        v66 = *v193;
        (*v193)(v58, v65 ^ 1u, 1, v25);
        if ((*v178)(v58, 1, v25) != 1)
        {
          (*v160)(v188, v58, v25);
          v67 = sub_23254539C();
          v69 = *v67;
          v68 = v67[1];
          *&v198 = v69;
          *(&v198 + 1) = v68;

          v70 = [v60 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v70)
          {
            sub_232546338();
            swift_unknownObjectRelease();
          }

          else
          {
            v196 = 0u;
            v197 = 0u;
          }

          v198 = v196;
          v199 = v197;
          if (*(&v197 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
          }

          sub_232545A68();
          (*v159)(v180, v188, v25);
          v78 = sub_23254525C();
          v80 = *v78;
          v79 = *(v78 + 1);
          *&v196 = v80;
          *(&v196 + 1) = v79;

          v81 = [v60 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v81)
          {
            sub_232546338();
            swift_unknownObjectRelease();
          }

          else
          {
            v196 = 0u;
            v197 = 0u;
          }

          v82 = v165;
          v198 = v196;
          v199 = v197;
          if (*(&v197 + 1))
          {
            v83 = swift_dynamicCast();
            (*v158)(v6, v83 ^ 1u, 1, v82);
            if ((*v167)(v6, 1, v82) != 1)
            {
              (*v155)(v185, v6, v82);
LABEL_43:
              v84 = sub_232545288();
              v86 = *v84;
              v85 = *(v84 + 1);
              *&v198 = v86;
              *(&v198 + 1) = v85;

              v87 = [v60 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v87)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v196 = 0u;
                v197 = 0u;
              }

              v198 = v196;
              v199 = v197;
              if (*(&v197 + 1))
              {
                v88 = swift_dynamicCast();
                v89 = v194;
                if (!v88)
                {
                  v89 = 0;
                }

                v177 = v89;
                if (v88)
                {
                  v90 = v195;
                }

                else
                {
                  v90 = 0;
                }

                v176 = v90;
              }

              else
              {
                sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
                v177 = 0;
                v176 = 0;
              }

              v91 = sub_2325452B4();
              v93 = *v91;
              v92 = *(v91 + 1);
              *&v196 = v93;
              *(&v196 + 1) = v92;

              v94 = [v60 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v94)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v196 = 0u;
                v197 = 0u;
              }

              v95 = v191;
              v198 = v196;
              v199 = v197;
              if (*(&v197 + 1))
              {
                v96 = v181;
                v97 = swift_dynamicCast() ^ 1;
                v98 = v96;
              }

              else
              {
                sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
                v98 = v181;
                v97 = 1;
              }

              v66(v98, v97, 1, v95);
              v99 = sub_2325452E4();
              v101 = *v99;
              v100 = v99[1];
              *&v198 = v101;
              *(&v198 + 1) = v100;

              v102 = [v60 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v102)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v196 = 0u;
                v197 = 0u;
              }

              v198 = v196;
              v199 = v197;
              if (*(&v197 + 1))
              {
                v103 = swift_dynamicCast();
                v104 = v194;
                if (!v103)
                {
                  v104 = 0;
                }

                v175 = v104;
                v105 = 0xF000000000000000;
                if (v103)
                {
                  v105 = v195;
                }
              }

              else
              {
                sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
                v175 = 0;
                v105 = 0xF000000000000000;
              }

              v174 = v105;
              v106 = sub_232545314();
              v108 = *v106;
              v107 = v106[1];
              *&v198 = v108;
              *(&v198 + 1) = v107;

              v109 = [v60 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v109)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v196 = 0u;
                v197 = 0u;
              }

              v198 = v196;
              v199 = v197;
              if (*(&v197 + 1))
              {
                v110 = swift_dynamicCast();
                v111 = v194;
                if (!v110)
                {
                  v111 = 0;
                }

                v173 = v111;
                v112 = 0xF000000000000000;
                if (v110)
                {
                  v112 = v195;
                }
              }

              else
              {
                sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
                v173 = 0;
                v112 = 0xF000000000000000;
              }

              v172 = v112;
              v113 = sub_232545344();
              v115 = *v113;
              v114 = *(v113 + 1);
              *&v198 = v115;
              *(&v198 + 1) = v114;

              v116 = [v60 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v116)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v196 = 0u;
                v197 = 0u;
              }

              v198 = v196;
              v199 = v197;
              if (*(&v197 + 1))
              {
                v117 = swift_dynamicCast();
                v118 = v194;
                if (!v117)
                {
                  v118 = 0;
                }

                v171 = v118;
                if (v117)
                {
                  v119 = v195;
                }

                else
                {
                  v119 = 0;
                }

                v170 = v119;
              }

              else
              {
                sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
                v171 = 0;
                v170 = 0;
              }

              v120 = sub_2325453C4();
              v122 = *v120;
              v121 = v120[1];
              *&v198 = v122;
              *(&v198 + 1) = v121;

              v123 = [v60 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v123)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v196 = 0u;
                v197 = 0u;
              }

              v198 = v196;
              v199 = v197;
              if (*(&v197 + 1))
              {
                v124 = swift_dynamicCast();
                v125 = v194;
                if (!v124)
                {
                  v125 = 2;
                }
              }

              else
              {
                sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
                v125 = 2;
              }

              v169 = v125;
              v126 = sub_2325453EC();
              v128 = *v126;
              v127 = v126[1];
              *&v198 = v128;
              *(&v198 + 1) = v127;

              v129 = [v60 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v129)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v196 = 0u;
                v197 = 0u;
              }

              v130 = a1;
              v198 = v196;
              v199 = v197;
              if (*(&v197 + 1))
              {
                if (swift_dynamicCast())
                {
                  v131 = v194;
                }

                else
                {
                  v131 = 2;
                }
              }

              else
              {
                sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
                v131 = 2;
              }

              v132 = sub_232545374();
              v134 = *v132;
              v133 = *(v132 + 1);
              *&v198 = v134;
              *(&v198 + 1) = v133;

              v135 = [v60 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v135)
              {
                sub_232546338();
                swift_unknownObjectRelease();
              }

              else
              {
                v196 = 0u;
                v197 = 0u;
              }

              v198 = v196;
              v199 = v197;
              if (*(&v197 + 1))
              {
                v136 = swift_dynamicCast();
                v137 = v136 ^ 1;
                if (v136)
                {
                  v138 = v194;
                }

                else
                {
                  v138 = 0;
                }
              }

              else
              {
                sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
                v138 = 0;
                v137 = 1;
              }

              v139 = v163;
              sub_232545A58();
              sub_2324DB288(&qword_27DD93278, MEMORY[0x277D6B300]);
              v140 = v182;
              v141 = sub_232546348();
              v142 = *v179;
              (*v179)(v139, v140);
              v153 = v141 & 1;
              v143 = v183;
              sub_2324FA5C0(v180, v185, v177, v176, v181, v175, v174, v173, v183, v172, v171, v170, v169, v131, 0, v138, (v138 | (v137 << 16)) >> 16, (v138 | (v137 << 16)) >> 24, v153);
              sub_2324CE250(v143, v184);
              v144 = v186;
              v145 = *v186;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v144 = v145;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v145 = sub_2324DA434(0, v145[2] + 1, 1, v145, &qword_27DD93280, &qword_2325477D0, type metadata accessor for NDFDevice);
                *v186 = v145;
              }

              a1 = v130;
              v148 = v145[2];
              v147 = v145[3];
              v6 = v161;
              v149 = v168;
              if (v148 >= v147 >> 1)
              {
                v151 = sub_2324DA434(v147 > 1, v148 + 1, 1, v145, &qword_27DD93280, &qword_2325477D0, type metadata accessor for NDFDevice);
                *v186 = v151;
              }

              sub_2324CE2B4(v183);
              v142(v149, v182);
              v25 = v191;
              (*v157)(v188, v191);
              v150 = *v186;
              *(v150 + 16) = v148 + 1;
              sub_2324DB2D0(v184, v150 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v148);
              v58 = v166;
              goto LABEL_16;
            }
          }

          else
          {
            sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
            (*v158)(v6, 1, 1, v82);
          }

          sub_2325455E8();
          if ((*v167)(v6, 1, v82) != 1)
          {
            sub_2324C28AC(v6, &qword_27DD93440, &qword_232547AE0);
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_2324C28AC(&v198, &qword_27DD93248, &unk_2325477B0);
        (*v193)(v58, 1, 1, v25);
      }

      sub_2324C28AC(v58, &unk_27DD932E0, qword_2325472E0);
      v71 = v60;
      v72 = sub_232545888();
      v73 = sub_2325461F8();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = v162;
        *(v74 + 4) = v71;
        *v75 = v71;
        v76 = v71;
        _os_log_impl(&dword_2324C0000, v72, v73, "Device record does not have a valid deviceID: %@", v74, 0xCu);
        sub_2324C28AC(v75, &qword_27DD93218, &qword_232547360);
        MEMORY[0x238386450](v75, -1, -1);
        v77 = v74;
        v25 = v191;
        MEMORY[0x238386450](v77, -1, -1);
      }

      else
      {
      }

LABEL_16:
      ++v57;
      v55 = v192;
      if (v190 == v57)
      {
        goto LABEL_121;
      }
    }
  }

  v46 = v198;
  v47 = sub_2325455A8();

  swift_willThrow();
  v48 = v47;
  v49 = sub_232545888();
  v50 = sub_2325461F8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    v53 = v47;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 4) = v54;
    *v52 = v54;
    _os_log_impl(&dword_2324C0000, v49, v50, "Failed to fetch all device records: %@", v51, 0xCu);
    sub_2324C28AC(v52, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v52, -1, -1);
    MEMORY[0x238386450](v51, -1, -1);
  }

  else
  {
  }

LABEL_122:
  v152 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2324D7C3C()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2324DA610(*(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324D7CC4()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2324DA610(*(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController____lazy_storage___currentContext));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

BOOL sub_2324D7D5C()
{
  v1 = v0;
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "Preparing to clean up stale NDFDeviceRecord records", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = (*(*v1 + 120))();
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_2324DA698;
    *(v7 + 24) = v6;
    v14[4] = sub_2324DB514;
    v14[5] = v7;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2324D7C14;
    v14[3] = &block_descriptor_13;
    v8 = _Block_copy(v14);

    v9 = v5;

    [v9 performBlockAndWait_];

    _Block_release(v8);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return v5 != 0;
    }

    __break(1u);
  }

  v10 = sub_232545888();
  v11 = sub_2325461F8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2324C0000, v10, v11, "Failed to get current MOC", v12, 2u);
    MEMORY[0x238386450](v12, -1, -1);
  }

  return v5 != 0;
}

void sub_2324D7FE0(uint64_t a1, void *a2)
{
  v204 = a2;
  v222 = a1;
  v229 = *MEMORY[0x277D85DE8];
  v221 = sub_232545688();
  v188 = *(v221 - 8);
  v2 = *(v188 + 64);
  v3 = MEMORY[0x28223BE20](v221);
  v5 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v193 = &v187 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v201 = &v187 - v9;
  MEMORY[0x28223BE20](v8);
  v219 = &v187 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v223 = (&v187 - v13);
  v14 = sub_2325456F8();
  v211 = *(v14 - 8);
  v15 = *(v211 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v209 = &v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v192 = &v187 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v200 = &v187 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v218 = &v187 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v214 = &v187 - v25;
  MEMORY[0x28223BE20](v24);
  v213 = &v187 - v26;
  sub_2324DB388(0, &qword_2814D4ED8, 0x277D6B520);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [ObjCClassFromMetadata entityName];
  if (!v27)
  {
    sub_232545F68();
    v27 = sub_232545F58();
  }

  v28 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  [v28 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93228, &qword_232547540);
  v29 = swift_allocObject();
  v220 = xmmword_232547150;
  *(v29 + 16) = xmmword_232547150;
  v30 = sub_232545238();
  v32 = *v30;
  v31 = *(v30 + 1);
  v33 = MEMORY[0x277D837D0];
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 32) = v32;
  *(v29 + 40) = v31;

  v34 = sub_232546048();

  [v28 setPropertiesToGroupBy_];

  v35 = swift_allocObject();
  *(v35 + 16) = v220;
  v37 = *v30;
  v36 = *(v30 + 1);
  *&v220 = v30;
  *(v35 + 56) = v33;
  *(v35 + 32) = v37;
  *(v35 + 40) = v36;

  v38 = sub_232546048();

  [v28 setPropertiesToFetch_];

  *&v227 = 0;
  v190 = v28;
  v39 = [v28 execute_];
  v40 = v227;
  if (!v39)
  {
    v69 = v227;
    v70 = sub_2325455A8();

    swift_willThrow();
    v71 = v70;
    v72 = sub_232545888();
    v73 = sub_2325461F8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      v76 = v70;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 4) = v77;
      *v75 = v77;
      _os_log_impl(&dword_2324C0000, v72, v73, "Failed to fetch list of deviceIDs: (%@)", v74, 0xCu);
      sub_2324C28AC(v75, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v75, -1, -1);
      MEMORY[0x238386450](v74, -1, -1);
    }

    else
    {
    }

    goto LABEL_70;
  }

  v41 = v39;
  sub_2324DB388(0, &qword_2814D4EE0, 0x277CBEAC0);
  v42 = sub_232546058();
  v43 = v40;

  v215 = v42;
  if (v42 >> 62)
  {
LABEL_74:
    v45 = sub_232546488();
  }

  else
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v202 = v5;
  if (v45)
  {
    v5 = v215;
    if (v45 < 1)
    {
      __break(1u);
    }

    v46 = 0;
    v217 = (v215 & 0xC000000000000001);
    v216 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
    v47 = (v211 + 56);
    v210 = (v211 + 48);
    v212 = (v211 + 32);
    v207 = (v211 + 16);
    v206 = (v211 + 8);
    v48 = MEMORY[0x277D84F90];
    *&v44 = 138412290;
    v208 = v44;
    while (1)
    {
      if (v217)
      {
        v49 = MEMORY[0x2383859D0](v46, v5);
      }

      else
      {
        v49 = *&v5[8 * v46 + 32];
      }

      v50 = v49;
      v51 = sub_232545888();
      v52 = sub_2325461E8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = v14;
        v55 = v48;
        v56 = swift_slowAlloc();
        *v53 = v208;
        *(v53 + 4) = v50;
        *v56 = v50;
        v57 = v50;
        _os_log_impl(&dword_2324C0000, v51, v52, "Result dict %@", v53, 0xCu);
        sub_2324C28AC(v56, &qword_27DD93218, &qword_232547360);
        v58 = v56;
        v48 = v55;
        v14 = v54;
        MEMORY[0x238386450](v58, -1, -1);
        v59 = v53;
        v5 = v215;
        MEMORY[0x238386450](v59, -1, -1);
      }

      v60 = *(v220 + 8);
      *&v225 = *v220;
      *(&v225 + 1) = v60;

      v61 = [v50 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v61)
      {
        sub_232546338();
        swift_unknownObjectRelease();
      }

      else
      {
        v225 = 0u;
        v226 = 0u;
      }

      v227 = v225;
      v228 = v226;
      if (*(&v226 + 1))
      {
        v62 = v223;
        v63 = swift_dynamicCast();
        (*v47)(v62, v63 ^ 1u, 1, v14);
        if ((*v210)(v62, 1, v14) != 1)
        {
          v64 = *v212;
          v65 = v213;
          (*v212)(v213, v223, v14);
          (*v207)(v214, v65, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_2324DA434(0, v48[2] + 1, 1, v48, &qword_27DD93270, &unk_2325477C0, MEMORY[0x277CC95F0]);
          }

          v67 = v48[2];
          v66 = v48[3];
          if (v67 >= v66 >> 1)
          {
            v48 = sub_2324DA434(v66 > 1, v67 + 1, 1, v48, &qword_27DD93270, &unk_2325477C0, MEMORY[0x277CC95F0]);
          }

          v68 = v211;
          (*(v211 + 8))(v213, v14);
          v48[2] = v67 + 1;
          v64(v48 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v67, v214, v14);
          v5 = v215;
          goto LABEL_11;
        }
      }

      else
      {

        sub_2324C28AC(&v227, &qword_27DD93248, &unk_2325477B0);
        (*v47)(v223, 1, 1, v14);
      }

      sub_2324C28AC(v223, &unk_27DD932E0, qword_2325472E0);
LABEL_11:
      if (v45 == ++v46)
      {
        goto LABEL_31;
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
  v5 = v215;
LABEL_31:

  v216 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore28NDFCorePersistenceController_logger;
  v78 = sub_232545888();
  v79 = sub_232546208();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v227 = v81;
    *v80 = 134218242;
    *(v80 + 4) = v48[2];
    *(v80 + 12) = 2080;

    v83 = MEMORY[0x238385650](v82, v14);
    v85 = v84;

    v86 = sub_2324C2220(v83, v85, &v227);

    *(v80 + 14) = v86;
    _os_log_impl(&dword_2324C0000, v78, v79, "Ready to process %ld deviceIDs: %s", v80, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x238386450](v81, -1, -1);
    MEMORY[0x238386450](v80, -1, -1);
  }

  v87 = v221;
  v88 = v218;
  v89 = v201;
  v90 = *(**sub_2324C4D38() + 560);

  v90(v91);

  sub_232545628();
  v194 = v48[2];
  if (!v194)
  {
LABEL_61:
    [v204 reset];

    (*(v188 + 8))(v219, v87);
    goto LABEL_69;
  }

  v197 = sub_2324DB388(0, &qword_2814D4C60, 0x277CCAC30);
  v196 = v48 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
  v214 = (v211 + 16);
  v213 = (v188 + 16);
  v215 = v188 + 8;
  v223 = (v211 + 8);

  v92 = 0;
  *&v93 = 136315394;
  v191 = v93;
  *(&v93 + 1) = 4;
  v195 = xmmword_232547670;
  *&v93 = 136315650;
  v189 = v93;
  *&v93 = 134218498;
  v187 = v93;
  v94 = v200;
  v203 = v48;
  while (1)
  {
    if (v92 >= v48[2])
    {
      __break(1u);
      goto LABEL_74;
    }

    v97 = *(v211 + 72);
    v205 = v92;
    v98 = *(v211 + 16);
    v98(v88, &v196[v97 * v92], v14);
    v98(v94, v88, v14);
    v210 = *v213;
    v210(v89, v219, v87);
    v99 = sub_232545888();
    v100 = sub_2325461E8();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v227 = v102;
      *v101 = v191;
      sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v103 = sub_232546608();
      v105 = v104;
      v217 = *v223;
      v217(v94, v14);
      v106 = sub_2324C2220(v103, v105, &v227);

      *(v101 + 4) = v106;
      *(v101 + 12) = 2080;
      sub_2324DB288(&qword_2814D62B8, MEMORY[0x277CC9578]);
      v107 = sub_232546608();
      v109 = v108;
      v212 = *v215;
      v212(v89, v221);
      v110 = sub_2324C2220(v107, v109, &v227);

      *(v101 + 14) = v110;
      _os_log_impl(&dword_2324C0000, v99, v100, "Cleaning up records for %s created before %s", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v102, -1, -1);
      v111 = v101;
      v48 = v203;
      MEMORY[0x238386450](v111, -1, -1);
    }

    else
    {

      v212 = *v215;
      v212(v89, v87);
      v217 = *v223;
      v217(v94, v14);
    }

    v207 = v98;
    v112 = [ObjCClassFromMetadata entityName];
    v113 = v209;
    if (!v112)
    {
      sub_232545F68();
      v112 = sub_232545F58();
    }

    v114 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

    *&v227 = 0;
    *(&v227 + 1) = 0xE000000000000000;
    sub_2325463D8();
    v116 = *v220;
    v115 = *(v220 + 8);

    *&v227 = v116;
    *(&v227 + 1) = v115;
    MEMORY[0x2383855C0](0x41204025203D3D20, 0xEB0000000020444ELL);
    v117 = sub_23254525C();
    v118 = *v117;
    v119 = *(v117 + 1);

    MEMORY[0x2383855C0](v118, v119);

    MEMORY[0x2383855C0](0x4025203C20, 0xE500000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93200, &qword_2325471B0);
    v120 = swift_allocObject();
    *(v120 + 16) = v195;
    v121 = sub_2325456B8();
    *(v120 + 56) = sub_2324DB388(0, &qword_27DD93250, 0x277CCAD78);
    *(v120 + 64) = sub_2324DB238(&qword_27DD93258, &qword_27DD93250, 0x277CCAD78);
    *(v120 + 32) = v121;
    v122 = sub_232545608();
    *(v120 + 96) = sub_2324DB388(0, &qword_27DD93260, 0x277CBEAA8);
    *(v120 + 104) = sub_2324DB238(&qword_27DD93268, &qword_27DD93260, 0x277CBEAA8);
    *(v120 + 72) = v122;
    v123 = sub_2325461C8();

    [v114 setPredicate_];

    v124 = objc_allocWithZone(MEMORY[0x277CBE360]);
    *&v208 = v114;
    v125 = [v124 initWithFetchRequest_];
    [v125 setResultType_];
    *&v227 = 0;
    v126 = [v204 executeRequest:v125 error:&v227];
    v127 = v227;
    v206 = v125;
    if (!v126)
    {
      v134 = v227;
      v135 = sub_2325455A8();

      swift_willThrow();
      v88 = v218;
      v87 = v221;
      v5 = v207;
      (v207)(v113, v218, v14);
      goto LABEL_57;
    }

    v128 = v126;
    objc_opt_self();
    v129 = swift_dynamicCastObjCClass();
    v87 = v221;
    v5 = v207;
    if (!v129)
    {
      v176 = v127;

      v177 = sub_232545888();
      v178 = sub_2325461F8();
      v179 = os_log_type_enabled(v177, v178);
      v180 = v218;
      if (v179)
      {
        v181 = v125;
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&dword_2324C0000, v177, v178, "Unable to cast NSBatchDeleteResult", v182, 2u);
        MEMORY[0x238386450](v182, -1, -1);
      }

      else
      {
      }

      v217(v180, v14);
      v212(v219, v87);
      goto LABEL_69;
    }

    v130 = v129;
    v131 = v127;
    v132 = [v130 result];
    v133 = v218;
    if (v132)
    {
      sub_232546338();
      swift_unknownObjectRelease();
    }

    else
    {
      v225 = 0u;
      v226 = 0u;
    }

    v136 = v193;
    v137 = v192;
    v227 = v225;
    v228 = v226;
    if (!*(&v226 + 1))
    {

      sub_2324C28AC(&v227, &qword_27DD93248, &unk_2325477B0);
      goto LABEL_66;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v198 = v128;
    v138 = v224;
    (v5)(v137, v133, v14);
    v210(v136, v219, v87);
    v139 = sub_232545888();
    v140 = sub_232546208();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *&v227 = v142;
      *v141 = v187;
      *(v141 + 4) = v138;
      *(v141 + 12) = 2080;
      sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v143 = sub_232546608();
      v145 = v144;
      v217(v137, v14);
      v146 = sub_2324C2220(v143, v145, &v227);

      *(v141 + 14) = v146;
      *(v141 + 22) = 2080;
      sub_2324DB288(&qword_2814D62B8, MEMORY[0x277CC9578]);
      v147 = sub_232546608();
      v149 = v148;
      v212(v136, v221);
      v150 = sub_2324C2220(v147, v149, &v227);

      *(v141 + 24) = v150;
      _os_log_impl(&dword_2324C0000, v139, v140, "Completed batch deletion of %ld device records for %s older than %s", v141, 0x20u);
      swift_arrayDestroy();
      v151 = v142;
      v87 = v221;
      MEMORY[0x238386450](v151, -1, -1);
      MEMORY[0x238386450](v141, -1, -1);
    }

    else
    {

      v212(v136, v87);
      v217(v137, v14);
    }

    v152 = v198;
    *&v227 = 0;
    v153 = [v204 save_];
    v154 = v227;
    v88 = v218;
    v113 = v209;
    v48 = v203;
    if (!v153)
    {
      v155 = v154;
      v135 = sub_2325455A8();

      swift_willThrow();
      (v5)(v113, v88, v14);
LABEL_57:
      v156 = v202;
      v210(v202, v219, v87);
      v157 = v135;
      v158 = sub_232545888();
      v159 = v113;
      v160 = sub_2325461F8();

      if (os_log_type_enabled(v158, v160))
      {
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        *&v227 = v210;
        *v161 = v189;
        sub_2324DB288(&qword_2814D62A0, MEMORY[0x277CC95F0]);
        v163 = sub_232546608();
        v165 = v164;
        v5 = v217;
        v217(v209, v14);
        v166 = sub_2324C2220(v163, v165, &v227);

        *(v161 + 4) = v166;
        *(v161 + 12) = 2080;
        sub_2324DB288(&qword_2814D62B8, MEMORY[0x277CC9578]);
        v167 = sub_232546608();
        v169 = v168;
        v212(v202, v221);
        v170 = sub_2324C2220(v167, v169, &v227);
        v48 = v203;

        *(v161 + 14) = v170;
        *(v161 + 22) = 2112;
        v171 = v135;
        v172 = _swift_stdlib_bridgeErrorToNSError();
        *(v161 + 24) = v172;
        *v162 = v172;
        _os_log_impl(&dword_2324C0000, v158, v160, "Failed to batch delete device records matching %s older than %s: %@", v161, 0x20u);
        sub_2324C28AC(v162, &qword_27DD93218, &qword_232547360);
        v173 = v162;
        v88 = v218;
        MEMORY[0x238386450](v173, -1, -1);
        v174 = v210;
        swift_arrayDestroy();
        MEMORY[0x238386450](v174, -1, -1);
        v175 = v161;
        v87 = v221;
        MEMORY[0x238386450](v175, -1, -1);

        (v5)(v88, v14);
      }

      else
      {

        v212(v156, v87);
        v95 = v159;
        v96 = v217;
        v217(v95, v14);
        v96(v88, v14);
      }

      goto LABEL_36;
    }

    v217(v218, v14);

LABEL_36:
    v94 = v200;
    v92 = v205 + 1;
    v89 = v201;
    if (v194 == v205 + 1)
    {

      goto LABEL_61;
    }
  }

LABEL_66:
  v183 = sub_232545888();
  v184 = sub_2325461F8();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    *v185 = 0;
    _os_log_impl(&dword_2324C0000, v183, v184, "Unable to cast Int from NSBatchDeleteResult", v185, 2u);
    MEMORY[0x238386450](v185, -1, -1);
  }

  v217(v133, v14);
  v212(v219, v87);
LABEL_69:

LABEL_70:
  v186 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2324D9CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2324D9CEC, a4, 0);
}

uint64_t sub_2324D9CEC()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = sub_2324D7D5C();

  return MEMORY[0x2822009F8](sub_2324D9D5C, 0, 0);
}

uint64_t sub_2324D9D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2324CF3C4(a3, v27 - v11, &qword_27DD93630, &qword_232547550);
  v13 = sub_2325460F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2324C28AC(v12, &qword_27DD93630, &qword_232547550);
  }

  else
  {
    sub_2325460E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_232546098();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_232545FA8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2324C28AC(a3, &qword_27DD93630, &qword_232547550);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2324C28AC(a3, &qword_27DD93630, &qword_232547550);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2324DA074@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_232545578();
    if (v10)
    {
      v11 = sub_232545598();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_232545588();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_232545578();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_232545598();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_232545588();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}