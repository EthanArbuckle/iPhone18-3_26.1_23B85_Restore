uint64_t sub_27103EF44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27103EF8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27103EFD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_27103EFE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27103F04C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_27103F084()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_27103F0CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27103F104()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27103F150()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27103F188()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for VLPointOfInterestMatcher.Request.DeviceHeading(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VLPointOfInterestMatcher.Request.DeviceHeading(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2710406D0()
{
  v0 = sub_2710F6D4C();
  __swift_allocate_value_buffer(v0, qword_280877410);
  __swift_project_value_buffer(v0, qword_280877410);
  return sub_2710F6D3C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2710407BC()
{
  sub_271040AD8();
  result = sub_2710F71DC();
  qword_280877428 = result;
  return result;
}

uint64_t *sub_271040820()
{
  if (qword_280875598 != -1)
  {
    swift_once();
  }

  return &qword_280877428;
}

uint64_t sub_271040910(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(id))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  if (qword_280875598 != -1)
  {
    swift_once();
  }

  return a4(qword_280877428);
}

uint64_t sub_2710409E4(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
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

unint64_t sub_271040AD8()
{
  result = qword_280874EC0;
  if (!qword_280874EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280874EC0);
  }

  return result;
}

_OWORD *VLPointOfInterestMatcher.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[11] = 0u;
  v0[12] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  return v0;
}

_OWORD *VLPointOfInterestMatcher.init()()
{
  swift_defaultActor_initialize();
  v0[11] = 0u;
  v0[12] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  return v0;
}

id sub_271040B9C()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v1 = result;
    v2 = [result currentCountrySupportsFeature_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_271040C00(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_271040C20, v1, 0);
}

uint64_t sub_271040C20()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 200);
  *(v1 + 200) = v2;
  v4 = v2;

  v5 = v0[1];

  return v5();
}

uint64_t sub_271040C8C()
{
  v1 = v0;
  v2 = sub_2710F6D4C();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  if (*(v1 + 192))
  {

    v10 = sub_27104074C();
    (*(v3 + 16))(v9, v10, v2);
    v11 = sub_2710F6D2C();
    v12 = sub_2710F711C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_27103D000, v11, v12, "Canceling in-flight request", v13, 2u);
      MEMORY[0x2743BDA30](v13, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F38);
    sub_2710F706C();

    *(v1 + 168) = 0u;
    *(v1 + 184) = 0u;
  }

  if (*(v1 + 144) && (*(v1 + 152) & 1) != 0)
  {
    v14 = sub_27104074C();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_2710F6D2C();
    v16 = sub_2710F711C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_27103D000, v15, v16, "Clearing cached candidate results", v17, 2u);
      MEMORY[0x2743BDA30](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v18 = *(v1 + 112);
    v19 = *(v1 + 120);
    v20 = *(v1 + 128);
    v21 = *(v1 + 136);
    v22 = *(v1 + 144);
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0;
    return sub_271040F64(v18, v19, v20, v21, v22);
  }

  return result;
}

uint64_t sub_271040F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_271040FA8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v24 = a1;
  v25 = a2;

  v7 = sub_2710F6F4C();
  v28 = 0;
  v29 = 0xE000000000000000;
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v7;
  v25 = v8;
  v26 = 0;
  v27 = v9;
  v10 = sub_2710F6EFC();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    do
    {
      if ((sub_2710F6DAC() & 1) == 0 && (sub_2710F6D9C() & 1) == 0)
      {
        MEMORY[0x2743BBEE0](v12, v13);
      }

      v12 = sub_2710F6EFC();
      v13 = v14;
    }

    while (v14);
  }

  v15 = sub_2710F6E6C();
  v17 = v16;

  v24 = v15;
  v25 = v17;
  sub_2710F6C2C();
  v18 = sub_2710F6C3C();
  (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
  sub_27104EDB0();
  v19 = sub_2710F723C();
  v21 = v20;
  sub_27104F110(v6, &qword_280875060);

  v24 = v19;
  v25 = v21;
  v22 = sub_2710F722C();

  return v22;
}

uint64_t VLPointOfInterestMatcher.deinit()
{
  sub_271040F64(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VLPointOfInterestMatcher.__deallocating_deinit()
{
  sub_271040F64(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_27104128C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      v6 = v5 && *(v3 - 3) >> 16 == *(i - 3) >> 16;
      v7 = v6 && *(v3 - 2) >> 16 == *(i - 2) >> 16;
      if (!v7 && (sub_2710F745C() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_271041344(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2710F748C() & 1) == 0)
  {
    return 0;
  }

  return sub_27104128C(v2, v3);
}

uint64_t sub_2710413B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x277D84F90];
  sub_2710492C4(0, v1, 0);
  v2 = v30;
  v4 = v3 + 56;
  result = sub_2710F727C();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  v26 = v3 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = v7;
    v28 = *(v3 + 36);
    v10 = (*(v3 + 48) + 16 * v6);
    v11 = v3;
    v12 = *v10;
    v13 = v10[1];
    swift_bridgeObjectRetain_n();
    v29 = sub_27105BCA0(v12, v13);

    v15 = *(v30 + 16);
    v14 = *(v30 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_2710492C4((v14 > 1), v15 + 1, 1);
    }

    *(v30 + 16) = v15 + 1;
    v16 = (v30 + 24 * v15);
    v16[4] = v12;
    v16[5] = v13;
    v16[6] = v29;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = v11;
    v4 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v28 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_27103EFD4(v6, v28, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_27103EFD4(v6, v28, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v8;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_271041604(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v31 = MEMORY[0x277D84F90];
  sub_271049304(0, v1, 0);
  v2 = v31;
  v4 = a1 + 64;
  result = sub_2710F727C();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v28 = v1;
  v29 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(a1 + 48) + 16 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(a1 + 56) + 4 * v6);

    v15 = sub_271040FA8(v12, v13);
    v17 = v16;

    v19 = *(v31 + 16);
    v18 = *(v31 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_271049304((v18 > 1), v19 + 1, 1);
    }

    *(v31 + 16) = v19 + 1;
    v20 = v31 + 24 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    *(v20 + 48) = v14;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v10);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v29;
    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (a1 + 72 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_27103EFD4(v6, v29, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_27103EFD4(v6, v29, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_271041870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2710F751C();
  sub_2710F6EAC();
  v6 = sub_2710F756C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2710F748C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

char *sub_271041968(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
LABEL_24:
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_2710F738C();
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v23 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2743BC2D0](i, a1);
      }

      else
      {
        if (i >= *(v25 + 16))
        {
          goto LABEL_23;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v8 = [v6 value];
      if (v8)
      {
        break;
      }

LABEL_6:
      if (v4 == v3)
      {
        return v23;
      }
    }

    v9 = v8;
    v10 = sub_2710F6E3C();
    v12 = v11;

    v13 = sub_271040FA8(v10, v12);
    v15 = v14;

    v16 = *a2;

    v17 = sub_271041870(v13, v15, v16);

    if (v17)
    {

      goto LABEL_6;
    }

    v18 = sub_27105BCA0(v13, v15);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_27104716C(0, *(v23 + 2) + 1, 1, v23);
    }

    v20 = *(v23 + 2);
    v19 = *(v23 + 3);
    if (v20 >= v19 >> 1)
    {
      v23 = sub_27104716C((v19 > 1), v20 + 1, 1, v23);
    }

    *(v23 + 2) = v20 + 1;
    v21 = &v23[24 * v20];
    *(v21 + 4) = v13;
    *(v21 + 5) = v15;
    *(v21 + 6) = v18;
  }

  while (v4 != v3);
  return v23;
}

id sub_271041BA4@<X0>(void *a1@<X8>)
{
  result = [*v1 _identifier];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_271041BE8(uint64_t a1)
{
  v23 = a1 + 64;
  v1 = -1 << *(a1 + 32);
  if (-v1 < 64)
  {
    v2 = ~(-1 << -v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(a1 + 64);
  v22 = (63 - v1) >> 6;

  v25 = 0;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_23:
    if (v3)
    {
      v17 = v25;
    }

    else
    {
      v18 = v25;
      do
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_37;
        }

        if (v17 >= v22)
        {
          sub_27104EE70();

          return v5;
        }

        v3 = *(v23 + 8 * v17);
        ++v18;
      }

      while (!v3);
      v25 = v17;
    }

    v19 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v20 = *(*(a1 + 56) + ((v17 << 9) | (8 * v19)));

    v21 = v20;
    if (v20)
    {
      v6 = *(v20 + 16);
      if (v6)
      {
        break;
      }
    }
  }

  v7 = 0;
  v8 = (v20 + 48);
  while (v7 < v6)
  {
    v9 = *v8;
    v10 = *(*v8 + 16);
    v11 = *(v5 + 16);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_34;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v12 <= *(v5 + 24) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_27104728C(result, v13, 1, v5);
      v5 = result;
      if (*(v9 + 16))
      {
LABEL_19:
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v10)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = *(v5 + 16);
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_38;
          }

          *(v5 + 16) = v16;
        }

        goto LABEL_8;
      }
    }

    if (v10)
    {
      goto LABEL_35;
    }

LABEL_8:
    ++v7;
    v6 = *(v21 + 16);
    v8 += 3;
    if (v7 == v6)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_271041E34(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 11) | (32 * v9)));
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];

      sub_271047CB4(&v15, v11, v12, v13, v14);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_271041F54(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a4;

  v11 = 0;
  v43 = v9;
  v44 = v5;
  while (v8)
  {
    v12 = v11;
LABEL_11:
    v13 = (*(a2 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v8)))));
    v14 = *v13;
    v15 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v18 = *a3;
    v19 = *(*a3 + 16);

    v20 = 0.0;
    v48 = v17;
    if (v19)
    {
      v21 = sub_271047ED8(v14, v15, v17, v16);
      if (v22)
      {
        v20 = *(*(v18 + 56) + 8 * v21);
      }
    }

    v23 = log(v10 / v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14;
    v47 = v15;
    v26 = v15;
    v27 = v16;
    v29 = sub_271047ED8(v14, v26, v48, v16);
    v30 = a1[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_26;
    }

    v33 = v28;
    if (a1[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27104A56C();
      }

      v34 = v48;
    }

    else
    {
      sub_271049BE4(v32, isUniquelyReferenced_nonNull_native);
      v34 = v48;
      v35 = sub_271047ED8(v25, v47, v48, v27);
      if ((v33 & 1) != (v36 & 1))
      {
        goto LABEL_28;
      }

      v29 = v35;
    }

    v8 &= v8 - 1;
    v37 = v23 + v23 + 1.0;
    if (v33)
    {
      *(a1[7] + 8 * v29) = v37;
    }

    else
    {
      a1[(v29 >> 6) + 8] |= 1 << v29;
      v38 = (a1[6] + 32 * v29);
      *v38 = v25;
      v38[1] = v47;
      v38[2] = v34;
      v38[3] = v27;
      *(a1[7] + 8 * v29) = v37;
      v39 = a1[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_27;
      }

      a1[2] = v41;
    }

    v11 = v12;
    v9 = v43;
    v5 = v44;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return a1;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_2710F74AC();
  __break(1u);
  return result;
}

uint64_t sub_2710421F0(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t VLPointOfInterestMatcher.updateInBackground(location:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v12 = a1;
  v6 = sub_27104F0C8(0, &qword_280874F48);
  v7 = a1;
  sub_271050374(&v12, v6, &v13);
  v8 = v13;
  v9 = sub_2710F704C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = v8;

  sub_271043AE0(0, 0, v5, &unk_271101B40, v10);
}

uint64_t sub_271042448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2710424E4;

  return VLPointOfInterestMatcher.update(location:)(a5);
}

uint64_t sub_2710424E4()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_271042618, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_271042618()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t VLPointOfInterestMatcher.update(location:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F40);
  v2[21] = swift_task_alloc();
  v3 = sub_2710F6D4C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2710427A0, v1, 0);
}

uint64_t sub_2710427A0()
{
  v94 = v0;
  if (((*(**(v0 + 160) + 168))() & 1) == 0)
  {
    sub_27104C930();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();

    v34 = *(v0 + 8);
LABEL_26:

    return v34();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  [v1 coordinate];
  v3 = GEOLocationCoordinate2DMake([v1 coordinate]);
  v5 = v4;
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  GEOMapRectMakeWithRadialDistance();
  v6 = v2[18];
  if (v6)
  {
    v8 = v2[16];
    v7 = v2[17];
    v11 = v2 + 14;
    v10 = v2[14];
    v9 = v11[1];

    GEOMapRectMakeWithRadialDistance();
    v12 = GEOMapRectContainsRect();
    sub_271040F64(v10, v9, v8, v7, v6);
    if (v12)
    {
      v13 = *(v0 + 224);
      v14 = *(v0 + 176);
      v15 = *(v0 + 184);
      v16 = *(v0 + 152);
      v17 = sub_27104074C();
      (*(v15 + 16))(v13, v17, v14);
      v18 = v16;
      v19 = sub_2710F6D2C();
      v20 = sub_2710F711C();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 224);
      v24 = *(v0 + 176);
      v23 = *(v0 + 184);
      if (v21)
      {
        v25 = *(v0 + 152);
        v92 = *(v0 + 224);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v93 = v27;
        *v26 = 136315394;
        [v25 coordinate];
        *(v0 + 104) = v28;
        *(v0 + 112) = v29;
        type metadata accessor for GEOLocationCoordinate2D(0);
        v30 = sub_2710F6E5C();
        v32 = sub_2710475BC(v30, v31, &v93);

        *(v26 + 4) = v32;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 0x4061800000000000;
        _os_log_impl(&dword_27103D000, v19, v20, "Existing cached results are still valid for new location: %s with radius %f meters", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x2743BDA30](v27, -1, -1);
        MEMORY[0x2743BDA30](v26, -1, -1);

        (*(v23 + 8))(v92, v24);
      }

      else
      {

        (*(v23 + 8))(v22, v24);
      }

      v34 = *(v0 + 8);
      goto LABEL_26;
    }
  }

  v35 = *(v0 + 160);
  v36 = *(v35 + 192);
  *(v0 + 232) = v36;
  if (!v36)
  {
    goto LABEL_16;
  }

  GEOMapRectMakeWithRadialDistance();
  if (!GEOMapRectContainsRect())
  {

    if (*(v35 + 192))
    {
      v53 = *(v0 + 208);
      v54 = *(v0 + 176);
      v55 = *(v0 + 184);

      v56 = sub_27104074C();
      (*(v55 + 16))(v53, v56, v54);
      v57 = sub_2710F6D2C();
      v58 = sub_2710F711C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_27103D000, v57, v58, "Canceling existing request", v59, 2u);
        MEMORY[0x2743BDA30](v59, -1, -1);
      }

      v60 = *(v0 + 208);
      v61 = *(v0 + 176);
      v62 = *(v0 + 184);

      (*(v62 + 8))(v60, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F38);
      sub_2710F706C();

      *(v35 + 168) = 0u;
      *(v35 + 184) = 0u;
    }

LABEL_16:
    v63 = *(v0 + 200);
    v64 = *(v0 + 176);
    v65 = *(v0 + 184);
    GEOMapRectMakeWithRadialDistance();
    *(v0 + 72) = v66;
    *(v0 + 80) = v67;
    *(v0 + 88) = v68;
    *(v0 + 96) = v69;
    v70 = sub_27104074C();
    *(v0 + 256) = v70;
    v71 = *(v65 + 16);
    *(v0 + 264) = v71;
    *(v0 + 272) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v71(v63, v70, v64);
    v72 = sub_2710F6D2C();
    v73 = sub_2710F711C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_27103D000, v72, v73, "Issuing new request for nearby map items", v74, 2u);
      MEMORY[0x2743BDA30](v74, -1, -1);
    }

    v75 = *(v0 + 200);
    v76 = *(v0 + 176);
    v77 = *(v0 + 184);

    v78 = *(v77 + 8);
    *(v0 + 280) = v78;
    v78(v75, v76);
    v79 = [objc_opt_self() unsupportedPOICategories];
    if (!v79)
    {
      type metadata accessor for GEOPOICategory(0);
      sub_2710F6F8C();
      v79 = sub_2710F6F7C();
    }

    v80 = *(v0 + 160);
    v81 = *(v0 + 168);
    v82 = [objc_allocWithZone(MEMORY[0x277D0EC28]) initWithCategoriesToInclude:0 categoriesToExclude:v79];
    *(v0 + 288) = v82;

    v83 = [objc_allocWithZone(MEMORY[0x277D0ED68]) initWithCoordinate:v82 radius:0x7FFFFFFFLL poiCategoryFilter:1 maxResultCount:v3 source:{v5, 250.0}];
    *(v0 + 296) = v83;
    v84 = sub_2710F704C();
    (*(*(v84 - 8) + 56))(v81, 1, 1, v84);
    v86 = sub_27104EA88(&qword_280874F58, v85, type metadata accessor for VLPointOfInterestMatcher);
    v87 = swift_allocObject();
    v87[2] = v80;
    v87[3] = v86;
    v87[4] = v83;
    v87[5] = v80;
    swift_retain_n();
    v88 = v83;
    v89 = sub_271044A30(0, 0, v81, &unk_271101B58, v87);
    *(v0 + 304) = v89;
    *(v35 + 168) = v3;
    *(v35 + 176) = v5;
    *(v35 + 184) = 0x406F400000000000;
    *(v35 + 192) = v89;

    v90 = swift_task_alloc();
    *(v0 + 312) = v90;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F30);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F38);
    *v90 = v0;
    v90[1] = sub_2710433AC;
    v50 = MEMORY[0x277D84950];
    v51 = v0 + 136;
    v52 = v89;
    goto LABEL_21;
  }

  v37 = *(v0 + 216);
  v38 = *(v0 + 176);
  v39 = *(v0 + 184);
  v40 = sub_27104074C();
  (*(v39 + 16))(v37, v40, v38);
  v41 = sub_2710F6D2C();
  v42 = sub_2710F711C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_27103D000, v41, v42, "In-flight request will be valid for new location", v43, 2u);
    MEMORY[0x2743BDA30](v43, -1, -1);
  }

  v44 = *(v0 + 216);
  v45 = *(v0 + 176);
  v46 = *(v0 + 184);

  (*(v46 + 8))(v44, v45);

  v47 = swift_task_alloc();
  *(v0 + 240) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F30);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F38);
  *v47 = v0;
  v47[1] = sub_2710431B4;
  v50 = MEMORY[0x277D84950];
  v51 = v0 + 144;
  v52 = v36;
LABEL_21:

  return MEMORY[0x282200430](v51, v52, v48, v49, v50);
}

uint64_t sub_2710431B4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);

    v4 = sub_271043948;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 160);

    v4 = sub_2710432FC;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2710432FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2710433AC()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_2710439F8;
  }

  else
  {
    v4 = sub_2710434D8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2710434D8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;

  if (v2 >> 62)
  {
    v3 = sub_2710F738C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = [*(v0 + 296) maxResultCount];
  if (v3 == v4)
  {
    (*(v0 + 264))(*(v0 + 192), *(v0 + 256), *(v0 + 176));
    v5 = sub_2710F6D2C();
    v6 = sub_2710F710C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_27103D000, v5, v6, "Exceeded max candidate limit. Reducing valid radius for cached response", v7, 2u);
      MEMORY[0x2743BDA30](v7, -1, -1);
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 192);
    v10 = *(v0 + 176);

    v8(v9, v10);
    GEOMapRectMakeWithRadialDistance();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 96);
  }

  v19 = swift_task_alloc();
  *(v0 + 328) = v19;
  *v19 = v0;
  v19[1] = sub_2710436F4;

  return sub_27104CE60(v0 + 16, v2, v3 == v4, v12, v14, v16, v18);
}

uint64_t sub_2710436F4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  v3 = *(v1 + 32);
  *(v1 + 336) = *(v1 + 16);
  *(v1 + 352) = v3;
  *(v1 + 368) = *(v1 + 48);
  *(v1 + 384) = *(v1 + 56);
  *(v1 + 376) = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_27104384C, v2, 0);
}

uint64_t sub_27104384C()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 296);
  v5 = *(v0 + 288);
  v6 = *(v0 + 160);
  v14 = *(v0 + 336);
  v15 = *(v0 + 352);

  v7 = v6[14];
  v8 = v6[15];
  v9 = v6[16];
  v10 = v6[17];
  v11 = v6[18];
  *(v6 + 7) = v14;
  *(v6 + 8) = v15;
  v6[18] = v3;
  v6[19] = v1;
  v6[20] = v2;
  sub_271040F64(v7, v8, v9, v10, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_271043948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2710439F8()
{
  v1 = v0[37];
  v2 = v0[36];
  v3 = v0[20];
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_271043AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_27104EE78(a3, v25 - v10);
  v12 = sub_2710F704C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27104F110(v11, &qword_280874F40);
  }

  else
  {
    sub_2710F703C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2710F6FFC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2710F6E8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_27104F110(a3, &qword_280874F40);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27104F110(a3, &qword_280874F40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_271043E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[23] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875098);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_271043F38, a5, 0);
}

uint64_t sub_271043F38()
{
  v1 = [objc_opt_self() sharedService];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  v4 = v0[24];
  v3 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_271101AE0;
  *(v5 + 32) = v4;
  sub_27104F0C8(0, &qword_2808750A8);
  v6 = v4;
  v7 = sub_2710F6F7C();

  v8 = [v2 ticketForSpatialPlaceLookupParameters:v7 traits:*(v3 + 200)];
  v0[29] = v8;

  if (v8)
  {
    v10 = v0[27];
    v9 = v0[28];
    v11 = v0[26];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_27104424C;
    swift_continuation_init();
    v0[17] = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    sub_27104F0C8(0, &qword_2808750B0);
    v0[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F38);
    sub_2710F700C();
    (*(v10 + 32))(boxed_opaque_existential_0, v9, v11);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_271044980;
    v0[13] = &block_descriptor;
    [v8 submitWithHandler_];
    (*(v10 + 8))(boxed_opaque_existential_0, v11);
    v1 = v0 + 2;

    return MEMORY[0x282200938](v1);
  }

  sub_27104C930();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_27104424C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 200);
  if (v2)
  {
    v4 = sub_27104475C;
  }

  else
  {
    v4 = sub_27104436C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_27104436C()
{
  v1 = *(v0 + 144);
  v2 = [v1 mapItemsForSpatialLookupParameters_];
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750C8);
    v4 = sub_2710F6F8C();

    v31 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
      goto LABEL_29;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v29 = v1;
        v30 = v0;
        v1 = 0;
        v0 = 0x279E2D000uLL;
        while ((v4 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2743BC2D0](v1, v4);
          v7 = (v1 + 1);
          if (__OFADD__(v1, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v0 = v30;
            v8 = v31;
            v1 = v29;
            goto LABEL_31;
          }

LABEL_10:
          if (([v6 _openingHoursOptions] & 0x80) != 0)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            sub_2710F72EC();
            sub_2710F730C();
            sub_2710F731C();
            sub_2710F72FC();
          }

          ++v1;
          if (v7 == v5)
          {
            goto LABEL_15;
          }
        }

        if (v1 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_29:
        v5 = sub_2710F738C();
        if (!v5)
        {
          goto LABEL_30;
        }
      }

      v6 = *(v4 + 8 * v1 + 32);
      swift_unknownObjectRetain();
      v7 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_30:
    v8 = MEMORY[0x277D84F90];
LABEL_31:
    v26 = *(v0 + 184);

    *(v0 + 176) = v8;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750C0);
    sub_271050374(v0 + 176, v27, v26);

    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  sub_27104C930();
  v9 = swift_allocError();
  *v10 = 1;
  swift_willThrow();

  *(v0 + 152) = v9;
  v11 = v9;
  sub_27104F0C8(0, &qword_2808750B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    swift_unknownObjectRelease();

    v25 = *(v0 + 8);
    goto LABEL_33;
  }

  v12 = *(v0 + 160);
  v13 = [v12 domain];
  v14 = sub_2710F6E3C();
  v16 = v15;

  v17 = GEOErrorDomain();
  if (!v17)
  {

    goto LABEL_26;
  }

  v18 = v17;
  v19 = sub_2710F6E3C();
  v21 = v20;

  if (v14 == v19 && v16 == v21)
  {

    goto LABEL_24;
  }

  v22 = sub_2710F748C();

  if ((v22 & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_24:
  if ([v12 code] != -8)
  {
    goto LABEL_26;
  }

  v23 = *(v0 + 184);

  *(v0 + 168) = MEMORY[0x277D84F90];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750C0);
  sub_271050374(v0 + 168, v24, v23);

  swift_unknownObjectRelease();
LABEL_32:

  v25 = *(v0 + 8);
LABEL_33:

  return v25();
}

uint64_t sub_27104475C()
{
  swift_willThrow();
  v1 = *(v0 + 248);
  *(v0 + 152) = v1;
  v2 = v1;
  sub_27104F0C8(0, &qword_2808750B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v3 = *(v0 + 160);
  v4 = [v3 domain];
  v5 = sub_2710F6E3C();
  v7 = v6;

  v8 = GEOErrorDomain();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2710F6E3C();
    v12 = v11;

    if (v5 == v10 && v7 == v12)
    {
    }

    else
    {
      v14 = sub_2710F748C();

      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v3 code] == -8)
    {
      v15 = *(v0 + 184);

      *(v0 + 168) = MEMORY[0x277D84F90];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750C0);
      sub_271050374(v0 + 168, v16, v15);

      swift_unknownObjectRelease();

      v17 = *(v0 + 8);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_14:

LABEL_15:
  swift_unknownObjectRelease();

  v17 = *(v0 + 8);
LABEL_16:

  return v17();
}

void sub_271044980(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875098);
    sub_2710F701C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875098);
    sub_2710F702C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_271044A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_27104EE78(a3, v22 - v9);
  v11 = sub_2710F704C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_27104F110(v10, &qword_280874F40);
  }

  else
  {
    sub_2710F703C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2710F6FFC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2710F6E8C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F30);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_27104F110(a3, &qword_280874F40);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27104F110(a3, &qword_280874F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _s18VisualLocalization24VLPointOfInterestMatcherC11UpdateErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2710F751C();
  MEMORY[0x2743BC530](v1);
  return sub_2710F756C();
}

VisualLocalization::VLPointOfInterestMatcher::Request::DeviceHeading __swiftcall VLPointOfInterestMatcher.Request.DeviceHeading.init(direction:accuracy:)(Swift::Double direction, Swift::Double accuracy)
{
  *v2 = direction;
  v2[1] = accuracy;
  result.accuracy = accuracy;
  result.direction = direction;
  return result;
}

__n128 VLPointOfInterestMatcher.Request.heading.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t VLPointOfInterestMatcher.Request.TextRecognition.text.getter()
{
  v1 = *v0;

  return v1;
}

VisualLocalization::VLPointOfInterestMatcher::Request::TextRecognition::DataDetector __swiftcall VLPointOfInterestMatcher.Request.TextRecognition.DataDetector.init(type:text:)(VisualLocalization::VLPointOfInterestMatcher::Request::TextRecognition::DataDetector::DetectionType type, Swift::String text)
{
  *v2 = *type;
  *(v2 + 8) = text;
  result.text = text;
  result.type = type;
  return result;
}

VisualLocalization::VLPointOfInterestMatcher::Request::TextRecognition __swiftcall VLPointOfInterestMatcher.Request.TextRecognition.init(text:dataDetectors:)(Swift::String text, Swift::OpaquePointer dataDetectors)
{
  *v2 = text;
  *(v2 + 16) = dataDetectors;
  result.text = text;
  result.dataDetectors = dataDetectors;
  return result;
}

uint64_t VLPointOfInterestMatcher.Request.ImageEmbedding.EmbeddingType.hashValue.getter()
{
  sub_2710F751C();
  MEMORY[0x2743BC530](0);
  return sub_2710F756C();
}

uint64_t sub_271044E58()
{
  sub_2710F751C();
  MEMORY[0x2743BC530](0);
  return sub_2710F756C();
}

uint64_t sub_271044EC4()
{
  sub_2710F751C();
  MEMORY[0x2743BC530](0);
  return sub_2710F756C();
}

uint64_t VLPointOfInterestMatcher.Request.ImageEmbedding.modelURN.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void VLPointOfInterestMatcher.Request.ImageEmbedding.init(type:features:)(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0x6E6B6E753A6E7275;
  a2[2] = 0xEB000000006E776FLL;
}

uint64_t VLPointOfInterestMatcher.Request.ImageEmbedding.init(modelURN:features:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = result;
  a4[2] = a2;
  return result;
}

__n128 VLPointOfInterestMatcher.Request.init(detectionType:isLowConfidence:brandClassifications:location:heading:textRecognitions:)@<Q0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a5[1].n128_u8[0];
  *a7 = *a1;
  *(a7 + 1) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  result = *a5;
  *(a7 + 24) = *a5;
  *(a7 + 40) = v7;
  v9 = MEMORY[0x277D84F90];
  *(a7 + 48) = a6;
  *(a7 + 56) = v9;
  return result;
}

__n128 VLPointOfInterestMatcher.Request.init(detectionType:isLowConfidence:brandClassifications:location:heading:textRecognitions:imageEmbeddings:)@<Q0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a5[1].n128_u8[0];
  *a8 = *a1;
  *(a8 + 1) = a2;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  result = *a5;
  *(a8 + 24) = *a5;
  *(a8 + 40) = v8;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

uint64_t VLPointOfInterestMatcher.Match.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *VLPointOfInterestMatcher.Match.styleAttributes.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void VLPointOfInterestMatcher.Match.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_2710F719C();
  sub_2710F6EAC();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x2743BC560](*&v3);
  if (v2)
  {
    sub_2710F753C();
    v4 = v2;
    sub_2710F719C();
  }

  else
  {
    sub_2710F753C();
  }
}

uint64_t VLPointOfInterestMatcher.Match.hashValue.getter()
{
  sub_2710F751C();
  VLPointOfInterestMatcher.Match.hash(into:)();
  return sub_2710F756C();
}

uint64_t sub_271045198()
{
  sub_2710F751C();
  VLPointOfInterestMatcher.Match.hash(into:)();
  return sub_2710F756C();
}

uint64_t sub_271045200()
{
  sub_2710F751C();
  VLPointOfInterestMatcher.Match.hash(into:)();
  return sub_2710F756C();
}

uint64_t sub_271045260()
{
  v1 = *v0;
  sub_2710F751C();
  MEMORY[0x2743BC530](v1);
  return sub_2710F756C();
}

uint64_t sub_2710452A4()
{
  if (*v0)
  {
    return 0x656C676E61;
  }

  else
  {
    return 0x65636E6174736964;
  }
}

uint64_t sub_2710452DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v6 || (sub_2710F748C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2710F748C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2710453CC(uint64_t a1)
{
  v2 = sub_27104D848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_271045408(uint64_t a1)
{
  v2 = sub_27104D848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_271045444(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_27104D848();
  sub_2710F758C();
  v8[15] = 0;
  sub_2710F742C();
  if (!v1)
  {
    v8[14] = 1;
    sub_2710F741C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2710455E0(double a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x2743BC560](*&a1);
  if (a4)
  {
    return sub_2710F753C();
  }

  sub_2710F753C();
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x2743BC560](v7);
}

uint64_t sub_271045648(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_27104568C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2710F751C();
  sub_2710455E0(v1, v5, v2, v3);
  return sub_2710F756C();
}

uint64_t sub_2710456FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2710F751C();
  sub_2710455E0(v1, v5, v2, v3);
  return sub_2710F756C();
}

uint64_t sub_271045758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27104D89C(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v5 & 1;
  }

  return result;
}

uint64_t VLPointOfInterestMatcher.generateMatches(request:)(_OWORD *a1)
{
  *(v2 + 160) = v1;
  v4 = sub_2710F6D4C();
  *(v2 + 168) = v4;
  *(v2 + 176) = *(v4 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  v6 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v6;

  return MEMORY[0x2822009F8](sub_271045904, v1, 0);
}

uint64_t sub_271045904()
{
  v168 = v0;
  if (((*(**(v0 + 160) + 168))() & 1) == 0)
  {
    v53 = 0;
LABEL_30:
    sub_27104DA4C();
    swift_allocError();
    *v64 = v53;
    swift_willThrow();

    v65 = *(v0 + 8);

    return v65();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 32);
  v5 = sub_27104074C();
  v154 = *(v3 + 16);
  v154(v1, v5, v2);
  v6 = v4;
  v7 = sub_2710F6D2C();
  v8 = sub_2710F710C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 192);
  v11 = &selRef_addDescriptors_;
  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v149 = v0;
  if (v9)
  {
    v14 = swift_slowAlloc();
    v150 = v5;
    v15 = swift_slowAlloc();
    *&v164 = v15;
    *v14 = 136315394;
    [v6 coordinate];
    *(v0 + 144) = v16;
    *(v0 + 152) = v17;
    type metadata accessor for GEOLocationCoordinate2D(0);
    v18 = sub_2710F6E5C();
    v20 = v6;
    v21 = sub_2710475BC(v18, v19, &v164);

    *(v14 + 4) = v21;
    v6 = v20;
    v0 = v149;
    *(v14 + 12) = 2048;
    *(v14 + 14) = 0x4061800000000000;
    _os_log_impl(&dword_27103D000, v7, v8, "Generating matches for %s with radius %f meters", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v22 = v15;
    v5 = v150;
    v11 = &selRef_addDescriptors_;
    MEMORY[0x2743BDA30](v22, -1, -1);
    MEMORY[0x2743BDA30](v14, -1, -1);
  }

  v23 = *(v13 + 8);
  v23(v10, v12);
  v24 = v23;
  v25 = *(v0 + 160);
  [v6 v11[41]];
  [v6 v11[41]];
  v26 = v25[18];
  if (!v26)
  {
LABEL_27:
    v154(*(v0 + 184), v5, *(v0 + 168));
    v59 = sub_2710F6D2C();
    v60 = sub_2710F712C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_27103D000, v59, v60, "Results for this location have not yet been fetched", v61, 2u);
      MEMORY[0x2743BDA30](v61, -1, -1);
    }

    v62 = *(v0 + 184);
    v63 = *(v0 + 168);

    v24(v62, v63);
    v53 = 1;
    goto LABEL_30;
  }

  v146 = v6;
  v147 = v24;
  v27 = v25[14];
  v28 = v25[15];
  v29 = v25[16];
  v30 = v25[17];
  sub_27104ED20(v27, v28, v29, v30, v26);
  sub_27104ED20(v27, v28, v29, v30, v26);
  GEOMapRectMakeWithRadialDistance();
  v31 = GEOMapRectContainsRect();
  v32 = sub_271040F64(v27, v28, v29, v30, v26);
  if (!v31)
  {
    sub_271040F64(v27, v28, v29, v30, v26);
    v0 = v149;
    v24 = v147;
    goto LABEL_27;
  }

  v144 = v27;
  v151 = v5;
  v33 = *(v26 + 16);
  if (!v33)
  {
    v148 = MEMORY[0x277D84F90];
    v46 = v30;
    goto LABEL_22;
  }

  v34 = GEOLocationCoordinate2DMake(v32);
  v36 = v35;
  v37 = 0;
  v143 = v33 - 1;
  v148 = MEMORY[0x277D84F90];
  v38 = 0x4061800000000000;
  while (2)
  {
    v39 = v37;
    while (1)
    {
      if (v39 >= *(v26 + 16))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        sub_27104F0C8(0, &qword_280874F80);
        sub_2710F74AC();
        __break(1u);

        __break(1u);
        return result;
      }

      v40 = v28;
      v41 = v29;
      v157 = *(v26 + 32 + 16 * v39);
      v37 = v39 + 1;
      v42 = *(v26 + 32 + 16 * v39);
      swift_unknownObjectRetain();

      v43 = [v42 centerCoordinate];
      if (GEOCoordinateGetDistance(v43, v34, v36, v44, v45) <= 140.0)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v39;
      v28 = v40;
      v46 = v30;
      if (v33 == v37)
      {
        goto LABEL_22;
      }
    }

    v47 = v148;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v164 = v148;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2710492E4(0, *(v148 + 16) + 1, 1);
      v47 = v164;
    }

    v49 = v157;
    v51 = *(v47 + 16);
    v50 = *(v47 + 24);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      sub_2710492E4((v50 > 1), v51 + 1, 1);
      v52 = v51 + 1;
      v49 = v157;
      v47 = v164;
    }

    *(v47 + 16) = v52;
    v148 = v47;
    *(v47 + 16 * v51 + 32) = v49;
    v29 = v41;
    v28 = v40;
    v46 = v30;
    if (v143 != v39)
    {
      continue;
    }

    break;
  }

LABEL_22:

  sub_271040F64(v144, v28, v29, v46, v26);
  v38 = v148;
  v0 = v149;
  v54 = v146;
  v24 = v147;
  v55 = &selRef_addDescriptors_;
  v5 = v151;
  if (!v148)
  {
    goto LABEL_27;
  }

  if ((*(v149 + 16) & 1) != 0 || *(v149 + 17) != 1)
  {
    goto LABEL_38;
  }

  v56 = *(v148 + 16);
  if (!v56)
  {
LABEL_86:

    v53 = 2;
    goto LABEL_30;
  }

  v57 = 0;
  v58 = v148 + 40;
  while (1)
  {
    if (v57 >= *(v38 + 16))
    {
      goto LABEL_91;
    }

    v67 = *(v58 - 8);
    swift_unknownObjectRetain();

    v68 = [v67 _styleAttributes];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 poiType];

      v38 = v148;
      if (v70 == 131)
      {
        break;
      }
    }

    ++v57;

    swift_unknownObjectRelease();
    v58 += 16;
    if (v56 == v57)
    {
      goto LABEL_86;
    }
  }

  swift_unknownObjectRelease();

  v54 = v146;
  v55 = &selRef_addDescriptors_;
LABEL_38:
  v71 = 1;
  if ((*(v149 + 56) & 1) == 0)
  {
    v72 = *(v149 + 48);
    if (v72 > 0.0 && v72 < 45.0)
    {
      v71 = 0;
    }
  }

  [v54 horizontalAccuracy];
  v73 = 0.0;
  if (v74 > 0.0)
  {
    [v54 horizontalAccuracy];
    v73 = v75;
  }

  v76 = sub_27104CD48(MEMORY[0x277D84F90]);
  [v54 v55[41]];
  v78 = v77;
  [v54 v55[41]];
  v80 = *(v38 + 16);
  if (v80)
  {
    v81 = v79;
    v82 = v38 + 40;
    while (1)
    {
      v38 = *(v82 - 8);
      swift_unknownObjectRetain();

      v84 = [v38 centerCoordinate];
      Distance = GEOCoordinateGetDistance(v84, v85, v86, v78, v81);
      v88 = 0.0;
      if (!v71)
      {
        [v38 centerCoordinate];
        GEOBearingFromCoordinateToCoordinate();
        GEOAngleDifferenceDegrees();
        v88 = fabs(v89);
      }

      v90 = v71;
      v91 = [v38 _identifier];
      if (!v91)
      {
        goto LABEL_92;
      }

      v92 = v91;
      v93 = swift_isUniquelyReferenced_nonNull_native();
      *&v164 = v76;
      v94 = sub_271047FF0(v92);
      v96 = v76[2];
      v97 = (v95 & 1) == 0;
      v98 = __OFADD__(v96, v97);
      v99 = v96 + v97;
      if (v98)
      {
        goto LABEL_89;
      }

      v100 = v95;
      if (v76[3] < v99)
      {
        break;
      }

      if (v93)
      {
        goto LABEL_57;
      }

      v106 = v94;
      sub_27104A844();
      v94 = v106;
      v76 = v164;
      v102 = Distance - v73;
      if (v100)
      {
LABEL_47:
        v83 = v76[7] + 24 * v94;
        *v83 = v102;
        *(v83 + 8) = v88;
        v71 = v90;
        *(v83 + 16) = v90;
        swift_unknownObjectRelease();

        goto LABEL_48;
      }

LABEL_58:
      v76[(v94 >> 6) + 8] |= 1 << v94;
      *(v76[6] + 8 * v94) = v92;
      v103 = v76[7] + 24 * v94;
      *v103 = v102;
      *(v103 + 8) = v88;
      v71 = v90;
      *(v103 + 16) = v90;
      swift_unknownObjectRelease();

      v104 = v76[2];
      v98 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (v98)
      {
        goto LABEL_90;
      }

      v76[2] = v105;
LABEL_48:
      v82 += 16;
      if (!--v80)
      {
        goto LABEL_62;
      }
    }

    sub_27104A164(v99, v93);
    v76 = v164;
    v94 = sub_271047FF0(v92);
    if ((v100 & 1) != (v101 & 1))
    {
      goto LABEL_93;
    }

LABEL_57:
    v102 = Distance - v73;
    if (v100)
    {
      goto LABEL_47;
    }

    goto LABEL_58;
  }

LABEL_62:
  v107 = *(v149 + 32);
  v164 = *(v149 + 16);
  v165 = v107;
  v108 = *(v149 + 64);
  v166 = *(v149 + 48);
  v167 = v108;
  sub_27104DAA0(v149 + 16, v149 + 80);
  v152 = sub_27104D56C(&v164);
  v153 = v109;
  v155 = v110;
  v156 = v111;
  v112 = *(v149 + 32);
  v164 = *(v149 + 16);
  v165 = v112;
  v113 = *(v149 + 64);
  v166 = *(v149 + 48);
  v167 = v113;
  v114 = *(v148 + 16);
  if (v114)
  {
    v115 = (v148 + 32);
    v116 = MEMORY[0x277D84F90];
    do
    {
      v163 = *v115;
      swift_unknownObjectRetain();

      sub_2710465F8(&v163, v76, &v164, v152, v153, v155, v156, &v158);
      swift_unknownObjectRelease();

      v118 = v158;
      v117 = v159;
      v119 = v160;
      v120 = v162;
      if (v158)
      {
        v121 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_27104749C(0, *(v116 + 2) + 1, 1, v116);
        }

        v123 = *(v116 + 2);
        v122 = *(v116 + 3);
        if (v123 >= v122 >> 1)
        {
          v116 = sub_27104749C((v122 > 1), v123 + 1, 1, v116);
        }

        *(v116 + 2) = v123 + 1;
        v124 = &v116[40 * v123];
        *(v124 + 4) = v118;
        *(v124 + 5) = v117;
        *(v124 + 6) = v119;
        *(v124 + 7) = v121;
        *(v124 + 8) = v120;
      }

      else
      {
        sub_27104EC70(0, v159, v160, v161, v162);
      }

      ++v115;
      --v114;
    }

    while (v114);
  }

  else
  {
    v116 = MEMORY[0x277D84F90];
  }

  v125 = 0;
  v38 = 0;
  v126 = *(v116 + 2);
  v127 = MEMORY[0x277D84F90];
LABEL_74:
  v128 = 40 * v125;
  while (v126 != v125)
  {
    if (v125 >= *(v116 + 2))
    {
      goto LABEL_88;
    }

    v129 = v128 + 40;
    ++v125;
    v130 = *&v116[v128 + 56];
    v128 += 40;
    if (v130 > 0.0)
    {
      v131 = *&v116[v129 - 8];
      v132 = *&v116[v129];
      v133 = *&v116[v129 + 8];
      v134 = *&v116[v129 + 24];
      v135 = v134;
      v145 = v131;

      v136 = swift_isUniquelyReferenced_nonNull_native();
      v158 = v127;
      v137 = v132;
      if ((v136 & 1) == 0)
      {
        sub_271049344(0, *(v127 + 2) + 1, 1);
        v127 = v158;
      }

      v139 = *(v127 + 2);
      v138 = *(v127 + 3);
      if (v139 >= v138 >> 1)
      {
        sub_271049344((v138 > 1), v139 + 1, 1);
        v127 = v158;
      }

      *(v127 + 2) = v139 + 1;
      v140 = &v127[40 * v139];
      *(v140 + 4) = v145;
      *(v140 + 5) = v137;
      *(v140 + 6) = v133;
      *(v140 + 7) = v130;
      *(v140 + 8) = v134;
      goto LABEL_74;
    }
  }

  v158 = v127;

  sub_27104AD3C(&v158);

  v141 = v158;

  v142 = *(v149 + 8);

  return v142(v141);
}

void sub_2710465F8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a6;
  v79 = a7;
  v76 = a4;
  v77 = a5;
  v12 = sub_2710F6D4C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = [v19 _identifier];
  if (!v21)
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  if (!*(a2 + 16) || (v23 = sub_271047FF0(v21), (v24 & 1) == 0))
  {

    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    return;
  }

  v70 = v16;
  v25 = *(a2 + 56) + 24 * v23;
  v26 = *v25;
  v75 = *(v25 + 8);
  v74 = *(v25 + 16);

  LOBYTE(v80) = *a3;
  v27 = sub_2710511D0(v19);
  v71 = v28;
  v29 = sub_27104074C();
  v72 = *(v13 + 16);
  v73 = v29;
  v72(v18);
  swift_unknownObjectRetain();

  v30 = v20;
  v31 = sub_2710F6D2C();
  v69 = sub_2710F711C();
  if (!os_log_type_enabled(v31, v69))
  {

    swift_unknownObjectRelease();
    v45 = v27;
    v46 = *(v13 + 8);
    v46(v18, v12);
    v40 = v71;
    v47 = v30;
LABEL_9:
    v48 = v70;
    v49 = sub_271051AFC(v19, v47, v76, v77, v78, v79, v75, v74, v26, v45, v40 & 1);
    if (v49 <= 1.0)
    {
      v50 = v49;
    }

    else
    {
      v50 = 1.0;
    }

    (v72)(v48, v73, v12);
    v51 = sub_2710F6D2C();
    v52 = sub_2710F711C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v46;
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = v50;
      _os_log_impl(&dword_27103D000, v51, v52, "→ Final score: %f", v54, 0xCu);
      v55 = v54;
      v46 = v53;
      MEMORY[0x2743BDA30](v55, -1, -1);
    }

    v46(v48, v12);
    v56 = [v19 _identifier];
    if (v56)
    {
      v57 = v56;
      v58 = [v19 name];
      if (v58)
      {
        v59 = v58;
        v60 = sub_2710F6E3C();
        v62 = v61;

        v63 = [v19 _styleAttributes];
        *a8 = v57;
        *(a8 + 8) = v60;
        *(a8 + 16) = v62;
        *(a8 + 24) = v50;
        *(a8 + 32) = v63;
        return;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v64 = v31;
  v66 = v27;
  v67 = v13 + 16;
  v68 = v13;
  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v82[0] = v33;
  *v32 = 136315394;
  v34 = [v19 name];
  v65 = v30;

  swift_unknownObjectRelease();
  if (v34)
  {
    v35 = sub_2710F6E3C();
    v37 = v36;

    v38 = sub_2710475BC(v35, v37, v82);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    v39 = v66;
    v80 = v66;
    v40 = v71;
    v81 = v71 & 1;
    sub_27104ECC8();
    v41 = sub_2710F746C();
    v43 = sub_2710475BC(v41, v42, v82);

    *(v32 + 14) = v43;
    v44 = v64;
    _os_log_impl(&dword_27103D000, v64, v69, "Scoring %s with recipe %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743BDA30](v33, -1, -1);
    MEMORY[0x2743BDA30](v32, -1, -1);

    v45 = v39;
    v46 = *(v68 + 8);
    v46(v18, v12);
    v47 = v65;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_271046B34(uint64_t a1, id *a2)
{
  result = sub_2710F6E1C();
  *a2 = 0;
  return result;
}

uint64_t sub_271046BAC(uint64_t a1, id *a2)
{
  v3 = sub_2710F6E2C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_271046C2C@<X0>(uint64_t *a1@<X8>)
{
  sub_2710F6E3C();
  v2 = sub_2710F6E0C();

  *a1 = v2;
  return result;
}

uint64_t sub_271046C70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2710F6E0C();

  *a1 = v2;
  return result;
}

uint64_t sub_271046CB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2710F6E3C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_271046CE4(uint64_t a1)
{
  v2 = sub_27104EA88(&qword_280874FF0, 255, type metadata accessor for GEOPOICategory);
  v3 = sub_27104EA88(&qword_280874FF8, 255, type metadata accessor for GEOPOICategory);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_271046DA8()
{
  v0 = sub_2710F6E3C();
  v1 = MEMORY[0x2743BBF30](v0);

  return v1;
}

uint64_t sub_271046DE4()
{
  sub_2710F6E3C();
  sub_2710F6EAC();
}

uint64_t sub_271046E38()
{
  sub_2710F6E3C();
  sub_2710F751C();
  sub_2710F6EAC();
  v0 = sub_2710F756C();

  return v0;
}

uint64_t sub_271046EAC()
{
  v0 = sub_2710F6E3C();
  v2 = v1;
  if (v0 == sub_2710F6E3C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2710F748C();
  }

  return v5 & 1;
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

uint64_t sub_271046F7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_271047074;

  return v6(a1);
}

uint64_t sub_271047074()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_27104716C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27104728C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_271047398(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875000);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_27104749C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875008);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

unint64_t sub_2710475BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_271047688(v11, 0, 0, 1, a1, a2);
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
    sub_27104EE04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_271047688(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_271047794(a5, a6);
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
    result = sub_2710F72DC();
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

uint64_t sub_271047794(uint64_t a1, unint64_t a2)
{
  v3 = sub_2710477E0(a1, a2);
  sub_271047910(&unk_2880FD860);
  return v3;
}

uint64_t sub_2710477E0(uint64_t a1, unint64_t a2)
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

  v6 = sub_2710479FC(v5, 0);
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

  result = sub_2710F72DC();
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
        v10 = sub_2710F6F0C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2710479FC(v10, 0);
        result = sub_2710F72AC();
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

uint64_t sub_271047910(uint64_t result)
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

  result = sub_271047A70(result, v11, 1, v3);
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

void *sub_2710479FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_271047A70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875070);
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

uint64_t sub_271047B64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2710F751C();
  sub_2710F6EAC();
  v8 = sub_2710F756C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2710F748C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_27104880C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_271047CB4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  sub_2710F751C();
  sub_2710F6D8C();
  v12 = sub_2710F756C();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  v26 = a3;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = a3 >> 16;
    while (1)
    {
      v17 = (*(v11 + 48) + 32 * v14);
      v18 = v17[2] == a4 && v17[3] == a5;
      v19 = v18 && *v17 >> 16 == a2 >> 16;
      v20 = v19 && v17[1] >> 16 == v16;
      if (v20 || (sub_2710F745C() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = *(v11 + 48) + 32 * v14;
    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    *a1 = *v23;
    *(a1 + 16) = v25;
    *(a1 + 24) = v24;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v27;

    sub_27104898C(a2, v26, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v27 = v28;
    *a1 = a2;
    *(a1 + 8) = v26;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    return 1;
  }
}

unint64_t sub_271047E6C(unsigned __int8 a1)
{
  sub_2710F751C();
  MEMORY[0x2743BC530](a1);
  v2 = sub_2710F756C();

  return sub_271048034(a1, v2);
}

unint64_t sub_271047ED8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2710F751C();
  sub_2710F6D8C();
  v8 = sub_2710F756C();
  return sub_2710480A4(a1, a2, a3, a4, v8);
}

unint64_t sub_271047F78(uint64_t a1, uint64_t a2)
{
  sub_2710F751C();
  sub_2710F6EAC();
  v4 = sub_2710F756C();

  return sub_271048190(a1, a2, v4);
}

unint64_t sub_271047FF0(uint64_t a1)
{
  v2 = sub_2710F717C();

  return sub_271048248(a1, v2);
}

unint64_t sub_271048034(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_2710480A4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    v11 = a1 >> 16;
    v12 = a2 >> 16;
    do
    {
      v13 = (*(v5 + 48) + 32 * v7);
      if (v13[2] == a3 && v13[3] == a4 && *v13 >> 16 == v11 && v13[1] >> 16 == v12)
      {
        break;
      }

      if (sub_2710F745C())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_271048190(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2710F748C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_271048248(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_27104F0C8(0, &qword_280874F80);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2710F718C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_27104831C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875110);
  result = sub_2710F729C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2710F751C();
      sub_2710F6EAC();
      result = sub_2710F756C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_27104857C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875088);
  result = sub_2710F729C();
  v4 = result;
  if (*(v2 + 16))
  {
    v30 = v1;
    v31 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_2710F751C();
      sub_2710F6D8C();
      result = sub_2710F756C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      ++*(v4 + 16);
      v2 = v31;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v2 + 32);
    if (v29 >= 64)
    {
      bzero(v6, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v29;
    }

    v1 = v30;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_27104880C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_27104831C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_271048B70();
      goto LABEL_16;
    }

    sub_271048E30();
  }

  v10 = *v4;
  sub_2710F751C();
  sub_2710F6EAC();
  result = sub_2710F756C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2710F748C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2710F749C();
  __break(1u);
  return result;
}

uint64_t sub_27104898C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = result;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  v30 = result;
  if (v14 > v13 && (a6 & 1) != 0)
  {
LABEL_23:
    v15 = a2;
    goto LABEL_24;
  }

  if (a6)
  {
    sub_27104857C();
    goto LABEL_8;
  }

  if (v14 <= v13)
  {
    sub_271049068();
LABEL_8:
    v16 = *v6;
    sub_2710F751C();
    sub_2710F6D8C();
    result = sub_2710F756C();
    v17 = -1 << *(v16 + 32);
    a5 = result & ~v17;
    if ((*(v16 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v18 = ~v17;
      v19 = v12 >> 16;
      v15 = a2;
      v20 = a2 >> 16;
      while (1)
      {
        v21 = (*(v16 + 48) + 32 * a5);
        v22 = v21[2] == a3 && v21[3] == a4;
        v23 = v22 && *v21 >> 16 == v19;
        if (v23 && v21[1] >> 16 == v20)
        {
          goto LABEL_27;
        }

        result = sub_2710F745C();
        if (result)
        {
          goto LABEL_27;
        }

        a5 = (a5 + 1) & v18;
        if (((*(v16 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_23;
  }

  v15 = a2;
  result = sub_271048CCC();
LABEL_24:
  v25 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v30;
  v26[1] = v15;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_27:
  result = sub_2710F749C();
  __break(1u);
  return result;
}

void *sub_271048B70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875110);
  v2 = *v0;
  v3 = sub_2710F728C();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_271048CCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875088);
  v2 = *v0;
  v3 = sub_2710F728C();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 16) = v20;
        *(v21 + 24) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_271048E30()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875110);
  result = sub_2710F729C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_2710F751C();

      sub_2710F6EAC();
      result = sub_2710F756C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_271049068()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875088);
  result = sub_2710F729C();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v0;
    v30 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_2710F751C();

      sub_2710F6D8C();
      result = sub_2710F756C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v19;
      v13[1] = v18;
      v2 = v30;
      v13[2] = v20;
      v13[3] = v21;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

char *sub_2710492C4(char *a1, int64_t a2, char a3)
{
  result = sub_271049364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2710492E4(char *a1, int64_t a2, char a3)
{
  result = sub_271049484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_271049304(void *a1, int64_t a2, char a3)
{
  result = sub_271049590(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_271049324(char *a1, int64_t a2, char a3)
{
  result = sub_2710496D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_271049344(char *a1, int64_t a2, char a3)
{
  result = sub_2710497F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_271049364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_271049484(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875020);
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

void *sub_271049590(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2710496D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
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

char *sub_2710497F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875008);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

uint64_t sub_271049914(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875080);
  v36 = a2;
  result = sub_2710F73AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[2];
      v25 = v22[3];
      v37 = *(v21 + 8 * v20);
      v38 = v22[1];
      if ((v36 & 1) == 0)
      {
      }

      sub_2710F751C();
      sub_2710F6D8C();
      result = sub_2710F756C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v38;
      v16[2] = v24;
      v16[3] = v25;
      *(*(v7 + 56) + 8 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_271049BE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875078);
  v38 = a2;
  result = sub_2710F73AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v24 = *v22;
      v23 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v27 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
      }

      sub_2710F751C();
      sub_2710F6D8C();
      result = sub_2710F756C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v25;
      v16[3] = v26;
      *(*(v7 + 56) + 8 * v15) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_271049EC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875048);
  v33 = a2;
  result = sub_2710F73AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_2710F751C();
      sub_2710F6EAC();
      result = sub_2710F756C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_27104A164(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875018);
  v36 = a2;
  result = sub_2710F73AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v36 & 1) == 0)
      {
        v26 = v21;
      }

      result = sub_2710F717C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_27104A3FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875080);
  v2 = *v0;
  v3 = sub_2710F739C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 32 * v17;
        *v22 = *v18;
        *(v22 + 16) = v20;
        *(v22 + 24) = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_27104A56C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875078);
  v2 = *v0;
  v3 = sub_2710F739C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 32 * v17;
        *v22 = *v18;
        *(v22 + 16) = v20;
        *(v22 + 24) = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_27104A6DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875048);
  v2 = *v0;
  v3 = sub_2710F739C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

id sub_27104A844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875018);
  v2 = *v0;
  v3 = sub_2710F739C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        LOBYTE(v19) = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        *(v22 + 16) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_27104A9C0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a3;

  v11 = sub_271047F78(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_271049EC0(v16, v6 & 1);
    v11 = sub_271047F78(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_2710F74AC();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_27104A6DC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F38);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + 4 * v11) = v9;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v15)
  {
    v22[2] = v25;
    if (v4 != 1)
    {
      v6 = (a1 + 72);
      v26 = 1;
      while (v26 < *(a1 + 16))
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v27 = *a3;

        v28 = sub_271047F78(v8, v7);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v29;
        if (v27[3] < v32)
        {
          sub_271049EC0(v32, 1);
          v28 = sub_271047F78(v8, v7);
          if ((v17 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v35 = (v34[6] + 16 * v28);
        *v35 = v8;
        v35[1] = v7;
        *(v34[7] + 4 * v28) = v9;
        v36 = v34[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v26;
        v34[2] = v37;
        v6 += 6;
        if (v4 == v26)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_2710F72BC();
  MEMORY[0x2743BBEF0](0xD00000000000001BLL, 0x80000002710FA240);
  sub_2710F732C();
  MEMORY[0x2743BBEF0](39, 0xE100000000000000);
  sub_2710F733C();
  __break(1u);
}

uint64_t sub_27104AD3C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_27104B6E0(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_2710F744C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 56];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 4);
          v17 = *(v13 + 6);
          v18 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v18;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v16;
          *v13 = v11;
          *(v13 + 1) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_2710F6FBC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_27104AEA8(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_27104AEA8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_27104B6CC(v8);
      v8 = result;
    }

    v91 = (v8 + 16);
    v92 = *(v8 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v8 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_27104B490((*a3 + 40 * *v93), (*a3 + 40 * *v95), *a3 + 40 * v96, v100);
        if (v5)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 24);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 24);
      v13 = v9 + 2;
      v14 = (v11 + 104);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v10) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
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
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 32);
            v24 = (v30 + v18);
            v25 = *(v22 - 2);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = v24[1];
            v29 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v24 - 3) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            v24[1] = v27;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
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
      result = sub_271047398(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v44 = *(v8 + 16);
    v43 = *(v8 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_271047398((v43 > 1), v44 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v45;
    v46 = v8 + 32;
    v47 = (v8 + 32 + 16 * v44);
    *v47 = v9;
    v47[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 32);
          v50 = *(v8 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v8 + 16 * v45);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v46 + 16 * v48);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v45 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v8 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v46 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v48 - 1 >= v45)
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

        v86 = (v46 + 16 * (v48 - 1));
        v87 = *v86;
        v88 = (v46 + 16 * v48);
        v89 = v88[1];
        sub_27104B490((*a3 + 40 * *v86), (*a3 + 40 * *v88), *a3 + 40 * v89, v100);
        if (v5)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v48 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v8 + 16);
        if (v48 >= v90)
        {
          goto LABEL_101;
        }

        v45 = v90 - 1;
        result = memmove((v46 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v8 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v46 + 16 * v45;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v8 + 16 * v45);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v46 + 16 * v48);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7;
  v33 = v9 - v7;
LABEL_30:
  v34 = *(v31 + 40 * v7 + 24);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (*(v36 - 2) >= v34)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *v36;
    v38 = *(v36 + 1);
    v39 = *(v36 + 2);
    v40 = *(v36 + 4);
    v41 = *(v36 - 3);
    *v36 = *(v36 - 5);
    *(v36 + 1) = v41;
    v36[4] = *(v36 - 1);
    *(v36 - 4) = v38;
    *(v36 - 3) = v39;
    *(v36 - 2) = v34;
    *(v36 - 1) = v40;
    *(v36 - 5) = v37;
    v36 -= 5;
    if (__CFADD__(v35++, 1))
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

uint64_t sub_27104B490(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v6 - 2) < *(v12 - 2))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t _s18VisualLocalization24VLPointOfInterestMatcherC5MatchV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  sub_27104F0C8(0, &qword_280875030);
  if ((sub_2710F718C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v11 = sub_2710F748C();
  result = 0;
  if ((v11 & 1) != 0 && v4 == v8)
  {
LABEL_10:
    if (v5)
    {
      if (v9)
      {
        sub_27104F0C8(0, &qword_280875038);
        v13 = v9;
        v14 = v5;
        v15 = sub_2710F718C();

        if (v15)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_27104B820(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2743BC080](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_271047B64(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_27104B8B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875100);
  v3 = sub_2710F73BC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_271047E6C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_271047E6C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_27104B9C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750D0);
  MEMORY[0x28223BE20](v2 - 8);
  v160 = &v158 - v3;
  v4 = sub_2710F6B4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v159 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2710F6C3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_271101AF0;
  v12 = [swift_unknownObjectRetain() name];
  if (!v12)
  {
    goto LABEL_86;
  }

  v13 = v12;
  v14 = sub_2710F6E3C();
  v16 = v15;

  v17 = sub_271040FA8(v14, v16);
  v19 = v18;

  *(inited + 32) = v17;
  *(inited + 40) = v19;
  v20 = sub_27104B820(inited);
  swift_setDeallocating();
  sub_27104F074(inited + 32);
  v166 = v20;
  v21 = [a1 secondaryName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2710F6E3C();
    v25 = v24;

    v26 = sub_271040FA8(v23, v25);
    v28 = v27;

    sub_271047B64(v165, v26, v28);
  }

  sub_2710F6C2C();
  sub_2710F6C1C();
  (*(v8 + 8))(v10, v7);
  v29 = sub_2710F6E0C();

  v30 = [a1 spokenNameForLocale_];

  if (v30)
  {
    v31 = sub_2710F6E3C();
    v33 = v32;

    v34 = sub_271040FA8(v31, v33);
    v36 = v35;

    sub_271047B64(v165, v34, v36);
  }

  v162 = v5;
  v37 = [a1 secondarySpokenName];
  if (v37)
  {
    v38 = v37;
    v39 = sub_2710F6E3C();
    v41 = v40;

    v42 = sub_271040FA8(v39, v41);
    v44 = v43;

    sub_271047B64(v165, v42, v44);
  }

  v45 = [a1 alternateNames];
  sub_27104F0C8(0, &qword_2808750E0);
  v46 = sub_2710F6F8C();

  if (v46 >> 62)
  {
    v47 = sub_2710F738C();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = MEMORY[0x277D84FA0];
  if (v47)
  {
    v163 = MEMORY[0x277D84FA0];
    v49 = [a1 alternateNames];
    v50 = sub_2710F6F8C();

    v161 = v4;
    if (v50 >> 62)
    {
      v51 = sub_2710F738C();
      if (v51)
      {
LABEL_13:
        if (v51 >= 1)
        {
          v52 = 0;
          while (1)
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v53 = MEMORY[0x2743BC2D0](v52, v50);
            }

            else
            {
              v53 = *(v50 + 8 * v52 + 32);
            }

            v54 = v53;
            v55 = [v53 stringValue];
            if (v55)
            {
              v56 = v55;
              v57 = sub_2710F6E3C();
              v59 = v58;

              v60 = HIBYTE(v59) & 0xF;
              if ((v59 & 0x2000000000000000) == 0)
              {
                v60 = v57 & 0xFFFFFFFFFFFFLL;
              }

              if (v60)
              {
                sub_271047B64(v165, v57, v59);

                goto LABEL_17;
              }
            }

LABEL_17:
            if (v51 == ++v52)
            {
              goto LABEL_28;
            }
          }
        }

        goto LABEL_85;
      }
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
        goto LABEL_13;
      }
    }

LABEL_28:

    v61 = 0;
    v62 = v163;
    v63 = v163 + 56;
    v64 = 1 << *(v163 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v163 + 56);
    v67 = (v64 + 63) >> 6;
    while (v66)
    {
      v68 = v61;
LABEL_36:
      v69 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
      v70 = (*(v62 + 48) + ((v68 << 10) | (16 * v69)));
      v71 = *v70;
      v72 = v70[1];

      v73 = sub_271040FA8(v71, v72);
      v75 = v74;

      sub_271047B64(v165, v73, v75);
    }

    while (1)
    {
      v68 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v68 >= v67)
      {

        v4 = v161;
        v48 = MEMORY[0x277D84FA0];
        goto LABEL_39;
      }

      v66 = *(v63 + 8 * v68);
      ++v61;
      if (v66)
      {
        v61 = v68;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_39:
  v76 = [a1 _businessURL];
  if (!v76)
  {
LABEL_65:
    v163 = v48;
    v100 = [a1 addressObject];
    if (v100)
    {
      v101 = v100;
      v102 = [v100 address];
      if (v102)
      {
        v103 = v102;
        v104 = [v102 structuredAddress];

        if (v104)
        {
          v105 = [v104 country];
          if (v105)
          {
            v106 = v105;
            v107 = sub_2710F6E3C();
            v109 = v108;

            v110 = sub_271040FA8(v107, v109);
            v112 = v111;

            sub_271047B64(v165, v110, v112);
          }

          v113 = [v104 administrativeArea];
          if (v113)
          {
            v114 = v113;
            v115 = sub_2710F6E3C();
            v117 = v116;

            v118 = sub_271040FA8(v115, v117);
            v120 = v119;

            sub_271047B64(v165, v118, v120);
          }

          v121 = [v104 subAdministrativeArea];
          if (v121)
          {
            v122 = v121;
            v123 = sub_2710F6E3C();
            v125 = v124;

            v126 = sub_271040FA8(v123, v125);
            v128 = v127;

            sub_271047B64(v165, v126, v128);
          }

          v129 = [v104 locality];
          if (v129)
          {
            v130 = v129;
            v131 = sub_2710F6E3C();
            v133 = v132;

            v134 = sub_271040FA8(v131, v133);
            v136 = v135;

            sub_271047B64(v165, v134, v136);
          }

          v137 = [v104 subLocality];
          if (v137)
          {
            v138 = v137;
            v139 = sub_2710F6E3C();
            v141 = v140;

            v142 = sub_271040FA8(v139, v141);
            v144 = v143;

            sub_271047B64(v165, v142, v144);
          }

          v145 = [v104 thoroughfare];
          if (v145)
          {
            v146 = v145;
            v147 = sub_2710F6E3C();
            v149 = v148;

            v150 = sub_271040FA8(v147, v149);
            v152 = v151;

            sub_271047B64(v165, v150, v152);

            goto LABEL_82;
          }
        }
      }
    }

LABEL_82:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750E8);
    v153 = swift_initStackObject();
    *(v153 + 16) = xmmword_271101B00;
    *(v153 + 32) = 0;
    *(v153 + 40) = sub_2710413B8(v166);
    *(v153 + 48) = 1;
    v154 = [a1 visualEvidence];
    sub_27104F0C8(0, &qword_2808750F0);
    v155 = sub_2710F6F8C();

    v156 = sub_271041968(v155, &v166);

    swift_unknownObjectRelease();
    *(v153 + 56) = v156;
    *(v153 + 64) = 2;
    v157 = sub_2710413B8(v163);

    *(v153 + 72) = v157;
    sub_27104B8B8(v153);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750F8);
    swift_arrayDestroy();

    return;
  }

  v77 = v76;
  sub_2710F6E3C();

  v78 = v160;
  sub_2710F6B3C();

  v79 = v162;
  if ((*(v162 + 48))(v78, 1, v4) == 1)
  {
    sub_27104F110(v78, &qword_2808750D0);
LABEL_64:
    v48 = MEMORY[0x277D84FA0];
    goto LABEL_65;
  }

  v80 = v159;
  (*(v79 + 32))(v159, v78, v4);
  v81 = sub_2710F6ADC();
  if (!v82)
  {
    (*(v79 + 8))(v80, v4);
    goto LABEL_64;
  }

  v161 = v4;
  v165[0] = v81;
  v165[1] = v82;
  v163 = 46;
  v164 = 0xE100000000000000;
  sub_27104EDB0();
  v83 = sub_2710F71FC();

  v84 = v83[2];
  if (v84 < 2)
  {
LABEL_48:
    swift_unknownObjectRelease();
    (*(v79 + 8))(v80, v161);
    goto LABEL_64;
  }

  v85 = v84 - 1;
  if (v83[4] == 7829367 && v83[5] == 0xE300000000000000 || (sub_2710F748C() & 1) != 0)
  {
    v86 = 1;
    if (v85 == 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v86 = 0;
    if (!v85)
    {
      goto LABEL_48;
    }
  }

  if (v85 > v86)
  {
    v87 = &v83[2 * v85 + 4];
    v88 = *(v87 - 16);
    v89 = *(v87 - 8);

    v160 = sub_271040FA8(v88, v89);
    v91 = v90;

    v92 = v166 + 56;
    v93 = 1 << *(v166 + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v95 = v94 & *(v166 + 56);
    v96 = (v93 + 63) >> 6;

    v97 = 0;
    while (v95)
    {
LABEL_60:
      v95 &= v95 - 1;

      v99 = sub_2710F6F1C();

      if (v99)
      {

        sub_271047B64(v165, v160, v91);
        swift_unknownObjectRelease();
LABEL_63:

        (*(v162 + 8))(v159, v161);
        goto LABEL_64;
      }
    }

    while (1)
    {
      v98 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_84;
      }

      if (v98 >= v96)
      {

        swift_unknownObjectRelease();
        goto LABEL_63;
      }

      v95 = *(v92 + 8 * v98);
      ++v97;
      if (v95)
      {
        v97 = v98;
        goto LABEL_60;
      }
    }
  }

LABEL_87:
  __break(1u);
}

uint64_t sub_27104C7A4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27104C83C;

  return sub_271042448(v4, v5, v6, v2, v3);
}

uint64_t sub_27104C83C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_27104C930()
{
  result = qword_280874F50;
  if (!qword_280874F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874F50);
  }

  return result;
}

uint64_t sub_27104C9C0(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27104C83C;

  return sub_271043E64(a1, v6, v7, v5, v4);
}

uint64_t sub_27104CA6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2743BC080](v2, MEMORY[0x277D83E40], MEMORY[0x277D83E48]);
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);

      sub_271047CB4(v9, v8, v7, v6, v5);

      v4 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_27104CB18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875080);
    v3 = sub_2710F73BC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_271047ED8(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_27104CC2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875078);
    v3 = sub_2710F73BC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_271047ED8(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_27104CD48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875018);
    v3 = sub_2710F73BC();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 3);
      result = sub_271047FF0(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = v3[7] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_27104CE60(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 65) = a3;
  *(v7 + 56) = a2;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_27104CE90, 0, 0);
}

unint64_t sub_27104CE90()
{
  v93 = v0;
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    v2 = sub_2710F738C();
    v83 = v0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v92 = MEMORY[0x277D84F90];
  result = sub_2710492E4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
LABEL_73:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v92;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2743BC2D0](v4, *(v0 + 56));
    }

    else
    {
      v6 = swift_unknownObjectRetain();
    }

    sub_27104B9C8(v6);
    v92 = v5;
    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      v12 = v7;
      v13 = v8;
      sub_2710492E4((v9 > 1), v10 + 1, 1);
      v8 = v13;
      v0 = v83;
      v7 = v12;
      v5 = v92;
    }

    ++v4;
    v5[2] = v10 + 1;
    v11 = &v5[2 * v10];
    v11[4] = v7;
    v11[5] = v8;
  }

  while (v2 != v4);

LABEL_14:
  *(v0 + 64) = *(v0 + 65);
  v90 = MEMORY[0x277D84FA0];

  result = sub_27104CB18(MEMORY[0x277D84F90]);
  v14 = result;
  v91 = result;
  v82 = v5;
  v80 = v5[2];
  if (v80)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v81 = v5 + 4;
    while (2)
    {
      if (v17 >= v5[2])
      {
        goto LABEL_71;
      }

      v18 = v81[2 * v17 + 1];
      v84 = v17 + 1;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v19 = sub_271041BE8(v18);
      v85 = v15;
      v20 = sub_27104CA6C(v19);

      result = sub_271041E34(v21);
      v22 = 0;
      v24 = v20 + 56;
      v23 = *(v20 + 56);
      v88 = v20;
      v25 = -1 << *(v20 + 32);
      if (-v25 < 64)
      {
        v26 = ~(-1 << -v25);
      }

      else
      {
        v26 = -1;
      }

      v27 = v26 & v23;
      v28 = (63 - v25) >> 6;
      v86 = v20 + 56;
      if ((v26 & v23) != 0)
      {
        while (1)
        {
          v29 = v22;
LABEL_26:
          v30 = (*(v88 + 48) + ((v29 << 11) | (32 * __clz(__rbit64(v27)))));
          v32 = *v30;
          v31 = v30[1];
          v33 = v30[2];
          v34 = v30[3];

          sub_27104EE60(v16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92 = v14;
          result = sub_271047ED8(v32, v31, v33, v34);
          v37 = v14[2];
          v38 = (v36 & 1) == 0;
          v39 = __OFADD__(v37, v38);
          v40 = v37 + v38;
          if (v39)
          {
            goto LABEL_67;
          }

          v41 = v36;
          if (v14[3] >= v40)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v36)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v45 = result;
              sub_27104A3FC();
              result = v45;
              v14 = v92;
              if (v41)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            sub_271049914(v40, isUniquelyReferenced_nonNull_native);
            result = sub_271047ED8(v32, v31, v33, v34);
            if ((v41 & 1) != (v42 & 1))
            {

              return sub_2710F74AC();
            }

            v14 = v92;
            if (v41)
            {
LABEL_33:
              v43 = v14;
              v44 = result;

              result = v44;
              v14 = v43;
              goto LABEL_37;
            }
          }

          v14[(result >> 6) + 8] |= 1 << result;
          v46 = (v14[6] + 32 * result);
          *v46 = v32;
          v46[1] = v31;
          v46[2] = v33;
          v46[3] = v34;
          *(v14[7] + 8 * result) = 0;
          v47 = v14[2];
          v39 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v39)
          {
            goto LABEL_69;
          }

          v14[2] = v48;
LABEL_37:
          v49 = v14[7];
          v50 = *(v49 + 8 * result);
          v39 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v39)
          {
            goto LABEL_68;
          }

          v27 &= v27 - 1;
          *(v49 + 8 * result) = v51;
          v16 = sub_271041F4C;
          v22 = v29;
          v24 = v86;
          if (!v27)
          {
            goto LABEL_23;
          }
        }
      }

      while (1)
      {
LABEL_23:
        v29 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        if (v29 >= v28)
        {
          break;
        }

        v27 = *(v24 + 8 * v29);
        ++v22;
        if (v27)
        {
          goto LABEL_26;
        }
      }

      v91 = v14;
      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();

      v17 = v84;
      v15 = v85;
      v5 = v82;
      v0 = v83;
      if (v84 != v80)
      {
        continue;
      }

      break;
    }

    v52 = v90;
  }

  else
  {

    v16 = 0;
    v52 = MEMORY[0x277D84FA0];
  }

  if (*(v52 + 16))
  {
    v53 = v5[2];
    v54 = sub_27104CC2C(MEMORY[0x277D84F90]);
    v55 = sub_271041F54(v54, v52, &v91, v53);
    v56 = COERCE_DOUBLE(sub_2710421F0(v55));
    if (v57)
    {
      v58 = 1.0;
    }

    else
    {
      v58 = v56;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875078);
    result = sub_2710F739C();
    v59 = result;
    v60 = 0;
    v61 = 1 << *(v55 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v55 + 64);
    v64 = (v61 + 63) >> 6;
    for (i = result + 64; v63; result = )
    {
      v66 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
LABEL_58:
      v69 = v66 | (v60 << 6);
      v70 = *(v55 + 48) + 32 * v69;
      v71 = *(v70 + 16);
      result = *(v70 + 24);
      v72 = *(*(v55 + 56) + 8 * v69) / v58;
      v73 = v59[6] + 32 * v69;
      v74 = *v70;
      *(i + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      *v73 = v74;
      *(v73 + 16) = v71;
      *(v73 + 24) = result;
      *(v59[7] + 8 * v69) = v72;
      v75 = v59[2];
      v39 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v39)
      {
        goto LABEL_72;
      }

      v59[2] = v76;
    }

    v67 = v60;
    while (1)
    {
      v60 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v60 >= v64)
      {

        v5 = v82;
        v0 = v83;
        goto LABEL_63;
      }

      v68 = *(v55 + 64 + 8 * v60);
      ++v67;
      if (v68)
      {
        v66 = __clz(__rbit64(v68));
        v63 = (v68 - 1) & v68;
        goto LABEL_58;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v59 = sub_27104CC2C(MEMORY[0x277D84F90]);
LABEL_63:

  v77 = *(v0 + 16);
  v87 = *(v0 + 40);
  v89 = *(v0 + 24);
  sub_27104EE60(v16);
  v78 = *(v0 + 64);
  *v77 = v89;
  *(v77 + 16) = v87;
  *(v77 + 32) = v5;
  *(v77 + 40) = v78;
  *(v77 + 48) = v59;
  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_27104D56C(uint64_t a1)
{
  v23 = *(a1 + 16);
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v30 = MEMORY[0x277D84F90];
    sub_271049324(0, v2, 0);
    v4 = 0;
    v5 = v30;
    v6 = (v1 + 48);
    v24 = v2;
    v25 = v1;
    while (v4 < *(v1 + 16))
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v27 = *v6;
      v28 = v5;

      swift_bridgeObjectRetain_n();
      sub_271040FA8(v7, v8);
      sub_27104EDB0();
      v9 = sub_2710F721C();
      v11 = v10;

      v26 = sub_27105BCA0(v9, v11);
      v29[0] = v9;
      v29[1] = v11;
      v12 = sub_2710F721C();
      v14 = v13;

      v5 = v28;
      v30 = v28;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_271049324((v15 > 1), v16 + 1, 1);
        v5 = v30;
      }

      ++v4;
      *(v5 + 16) = v16 + 1;
      v17 = (v5 + 48 * v16);
      v17[4] = v9;
      v17[5] = v11;
      v17[6] = v12;
      v17[7] = v14;
      v1 = v25;
      v17[8] = v26;
      v17[9] = v27;
      v6 += 3;
      if (v24 == v4)
      {
        v3 = v5;
        goto LABEL_8;
      }
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_8:

    v19 = sub_271041604(v18);

    if (*(v19 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875048);
      v20 = sub_2710F73BC();
    }

    else
    {
      v20 = MEMORY[0x277D84F98];
    }

    v29[0] = v20;

    sub_27104A9C0(v21, 1, v29);

    return v3;
  }

  return result;
}

unint64_t sub_27104D848()
{
  result = qword_2808755B0[0];
  if (!qword_2808755B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808755B0);
  }

  return result;
}

uint64_t sub_27104D89C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875028);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_27104D848();
  sub_2710F757C();
  if (!v1)
  {
    v11 = 0;
    sub_2710F73FC();
    v10 = 1;
    v7 = sub_2710F73EC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_27104DA4C()
{
  result = qword_280874F68;
  if (!qword_280874F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874F68);
  }

  return result;
}

unint64_t sub_27104DADC()
{
  result = qword_280874F70;
  if (!qword_280874F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874F70);
  }

  return result;
}

unint64_t sub_27104DB34()
{
  result = qword_280874F78;
  if (!qword_280874F78)
  {
    sub_27104F0C8(255, &qword_280874F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874F78);
  }

  return result;
}

unint64_t sub_27104DBA0()
{
  result = qword_280874F88;
  if (!qword_280874F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874F88);
  }

  return result;
}

unint64_t sub_27104DBF8()
{
  result = qword_280874F90;
  if (!qword_280874F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874F90);
  }

  return result;
}

unint64_t sub_27104DC50()
{
  result = qword_280874F98;
  if (!qword_280874F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874F98);
  }

  return result;
}

unint64_t sub_27104DCA8()
{
  result = qword_280874FA0;
  if (!qword_280874FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874FA0);
  }

  return result;
}

unint64_t sub_27104DD00()
{
  result = qword_280874FA8;
  if (!qword_280874FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874FA8);
  }

  return result;
}

unint64_t sub_27104DD58()
{
  result = qword_280874FB0;
  if (!qword_280874FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874FB0);
  }

  return result;
}

unint64_t sub_27104DDB0()
{
  result = qword_280874FB8;
  if (!qword_280874FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280874FB8);
  }

  return result;
}

uint64_t dispatch thunk of VLPointOfInterestMatcher.setTraits(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_27104F25C;

  return v6(a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27104DFA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27104DFEC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27104E0C4(uint64_t a1, int a2)
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

uint64_t sub_27104E10C(uint64_t result, int a2, int a3)
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

uint64_t sub_27104E18C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_27104E1D4(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27104E224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27104E26C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27104E2CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27104E314(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VLPointOfInterestMatcher.Request.ImageEmbedding.EmbeddingType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VLPointOfInterestMatcher.Request.ImageEmbedding.EmbeddingType(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_27104E458(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27104E4A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_27104E504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_27104E54C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27104E5BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27104E604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t getEnumTagSinglePayload for VLPointOfInterestMatcher.RelativePositionEstimate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VLPointOfInterestMatcher.RelativePositionEstimate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StringSimilarityAlgorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}