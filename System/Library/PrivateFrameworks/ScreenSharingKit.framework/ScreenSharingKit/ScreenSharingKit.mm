__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2649C87A8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2649C8808(uint64_t a1, int a2)
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

uint64_t sub_2649C8828(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2649C8878(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2649C8898(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_2649C88FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2649C895C(uint64_t a1, id *a2)
{
  result = sub_264B41024();
  *a2 = 0;
  return result;
}

uint64_t sub_2649C89D4(uint64_t a1, id *a2)
{
  v3 = sub_264B41034();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2649C8A54@<X0>(uint64_t *a1@<X8>)
{
  sub_264B41044();
  v2 = sub_264B41014();

  *a1 = v2;
  return result;
}

BOOL sub_2649C8AC4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2649C8B4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2649C8B78@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2649C8C3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2649C8C60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2649C9A14(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2649C8D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2649C8E08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264B41014();

  *a2 = v5;
  return result;
}

uint64_t sub_2649C8E50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_264B41044();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2649C8E7C(uint64_t a1)
{
  v2 = sub_2649C8D30(&qword_27FF88640, type metadata accessor for Name);
  v3 = sub_2649C8D30(&qword_27FF88648, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2649C8F38()
{
  v1 = *v0;
  v2 = sub_264B41044();
  v3 = MEMORY[0x2667483C0](v2);

  return v3;
}

uint64_t sub_2649C8F74()
{
  v1 = *v0;
  sub_264B41044();
  sub_264B41084();
}

uint64_t sub_2649C8FC8()
{
  v1 = *v0;
  sub_264B41044();
  sub_264B41B84();
  sub_264B41084();
  v2 = sub_264B41BB4();

  return v2;
}

uint64_t sub_2649C903C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_264B41044();
  v6 = v5;
  if (v4 == sub_264B41044() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();
  }

  return v9 & 1;
}

uint64_t sub_2649C90C4()
{
  v0 = [objc_opt_self() getDaemonProcessInfo];
  v1 = sub_264B40F64();

  v2 = *MEMORY[0x277CE55D0];
  v30 = sub_264B41044();
  sub_264B416F4();
  if (*(v1 + 16) && (v3 = sub_264A20A44(v32), (v4 & 1) != 0))
  {
    sub_2649C964C(*(v1 + 56) + 32 * v3, v33);
    sub_2649C95C0(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    if (swift_dynamicCast())
    {

      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v5 = sub_264B40964();
      __swift_project_value_buffer(v5, qword_27FFA71D0);
      v6 = v30;
      v7 = sub_264B40944();
      v8 = sub_264B41494();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v32[0] = v10;
        *v9 = 136446210;
        swift_getErrorValue();
        v11 = sub_264B41B24();
        v13 = sub_2649CC004(v11, v12, v32);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_2649C6000, v7, v8, "Failed to get Daemon Process info with error=%{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x266749940](v10, -1, -1);
        MEMORY[0x266749940](v9, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  else
  {
    sub_2649C95C0(v32);
  }

  v14 = *MEMORY[0x277CE55D8];
  v31 = sub_264B41044();
  sub_264B416F4();
  if (!*(v1 + 16) || (v15 = sub_264A20A44(v32), (v16 & 1) == 0))
  {

    sub_2649C95C0(v32);
    goto LABEL_18;
  }

  sub_2649C964C(*(v1 + 56) + 32 * v15, v33);
  sub_2649C95C0(v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v26 = sub_264B40964();
    __swift_project_value_buffer(v26, qword_27FFA71D0);
    v27 = sub_264B40944();
    v28 = sub_264B41494();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2649C6000, v27, v28, "Failed to get unique PID", v29, 2u);
      MEMORY[0x266749940](v29, -1, -1);
    }

    return 0;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v17 = sub_264B40964();
  __swift_project_value_buffer(v17, qword_27FFA71D0);
  v18 = sub_264B40944();
  v19 = sub_264B41484();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32[0] = v21;
    *v20 = 136446210;
    v33[0] = v31;
    v22 = sub_264B41A64();
    v24 = sub_2649CC004(v22, v23, v32);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_2649C6000, v18, v19, "Daemon Process UPID: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x266749940](v21, -1, -1);
    MEMORY[0x266749940](v20, -1, -1);
  }

  return v31;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2649C964C(uint64_t a1, uint64_t a2)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2649C975C(uint64_t a1, int a2)
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

uint64_t sub_2649C9A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2649C9A70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2649C9A90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

void sub_2649C9AF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MockDeviceRestrictionPrimitives(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MockDeviceRestrictionPrimitives(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2649C9D58(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2649C9DF8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[10];
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = v2[12];
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v8], v3);
  (*(v2[11] + 16))(&v13, v3);
  (*(v4 + 8))(v7, v3);
  v9 = *&v1[*(*v1 + 104)];
  type metadata accessor for NotifyingPlaybackEventConsumer();
  v10 = swift_allocObject();

  v12 = v13;
  swift_defaultActor_initialize();
  *(v10 + 112) = v12;
  *(v10 + 128) = v9;
  sub_2649CA1A0();
  return v10;
}

uint64_t sub_2649C9FA4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_2649CA030()
{
  sub_2649C9FA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2649CA0A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2649C9DF8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2649CA0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 96);
  swift_beginAccess();
  (*(a3 + 24))(a1, a2, *(v7 + 80), a3);
  return swift_endAccess();
}

unint64_t sub_2649CA1A0()
{
  result = qword_27FF887A0;
  if (!qword_27FF887A0)
  {
    type metadata accessor for NotifyingPlaybackEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF887A0);
  }

  return result;
}

uint64_t sub_2649CA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 200) = 514;
  *(v4 + 208) = MEMORY[0x277D84F90];
  *(v4 + 216) = 0;
  sub_2649CB564(a1, v4 + 16);
  *(v4 + 176) = a2;
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  sub_2649CB5C0(a1, v29);
  v9 = v30;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = type metadata accessor for TimeBackedTaskSleepPrimitives();
  v28[3] = v16;
  v28[4] = &off_28765C058;
  v28[0] = v15;
  type metadata accessor for TaskBackedTimer();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v28, v16);
  v19 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  *(v17 + 40) = v16;
  *(v17 + 48) = &off_28765C058;
  *(v17 + 16) = v23;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0;
  *(v17 + 96) = 1;
  __swift_destroy_boxed_opaque_existential_0(v28);
  sub_2649CB510(a1);
  __swift_destroy_boxed_opaque_existential_0(v29);
  *(v4 + 224) = v17;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v17 + 64);
  v26 = *(v17 + 72);
  *(v17 + 64) = sub_2649CB674;
  *(v17 + 72) = v24;

  swift_retain_n();
  sub_2649CB67C(v25);

  return v4;
}

uint64_t sub_2649CA4B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2649CA6C4();
  }

  return result;
}

uint64_t sub_2649CA528()
{
  v1 = v0;
  *(v0 + 216) = 0;
  v2 = *(v0 + 224);
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 1;
  if (*(v2 + 56))
  {
    v3 = *(v2 + 56);

    sub_264B41304();

    v4 = *(v2 + 56);
  }

  *(v2 + 56) = 0;

  result = swift_beginAccess();
  v6 = *(v0 + 208);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v12 = *(v0 + 208);
    }

    result = sub_264B41884();
    v7 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
LABEL_12:
      v10 = *(v1 + 208);
      *(v1 + 208) = MEMORY[0x277D84F90];

      swift_beginAccess();
      *(v1 + 200) = 514;
      v11 = *(v1 + 176);
      v13 = *(v2 + 56) != 0;
      return sub_264B409C4();
    }
  }

  if (v7 >= 1)
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266748A70](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      sub_264B40994();
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2649CA6C4()
{
  v1 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = sub_264B40944();
  v4 = sub_264B414B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2649C6000, v3, v4, "Policy engine: Inactivity timeout fired", v5, 2u);
    MEMORY[0x266749940](v5, -1, -1);
  }

  sub_2649CA528();
  v7 = *(v1 + 184);
  v6 = *(v1 + 192);

  v7(v8);
}

uint64_t sub_2649CA7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887A8, &qword_264B44010);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v22 = a3;
  sub_2649CB2F0();
  v13 = sub_264B41554();
  v23 = v13;
  v14 = sub_264B41514();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887B0, &qword_264B44018);
  sub_2649CB4C8(&qword_27FF89EB0, &qword_27FF887B0, &qword_264B44018);
  sub_2649CB384();
  sub_264B40B14();
  sub_2649CB3DC(v7);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v18;
  sub_2649CB4C8(&qword_27FF887C0, &qword_27FF887A8, &qword_264B44010);

  sub_264B40B54();

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89EC0, &unk_264B44020);
  sub_2649CB4C8(&qword_27FF887C8, &unk_27FF89EC0, &unk_264B44020);
  sub_264B40984();
  swift_endAccess();
}

uint64_t sub_2649CAB18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2649CAB8C(a3, a4);
  }

  return result;
}

uint64_t sub_2649CAB8C(uint64_t result, unint64_t a2)
{
  if (*(v2 + 216) == 1)
  {
    v3 = *(v2 + 224);
    if (*(v3 + 96))
    {
      v4 = *(v2 + 176);
      v21 = *(v3 + 56) != 0;
    }

    else
    {
      v6 = result;
      v18 = v2;
      v7 = *(v3 + 80);
      v8 = *(v3 + 88);
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v9 = sub_264B40964();
      __swift_project_value_buffer(v9, qword_27FF8AE70);

      v10 = sub_264B40944();
      v11 = sub_264B41474();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_2649CC004(v6, a2, &v19);
        _os_log_impl(&dword_2649C6000, v10, v11, "Policy engine: Inactivity timer deferral condition fired: %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x266749940](v13, -1, -1);
        MEMORY[0x266749940](v12, -1, -1);
      }

      v14 = sub_264B40944();
      v15 = sub_264B41474();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2649C6000, v14, v15, "Policy engine: Pushing out inactivity timer", v16, 2u);
        MEMORY[0x266749940](v16, -1, -1);
      }

      sub_264B0D954(v7, v8);
      v17 = *(v18 + 176);
      v20 = *(v3 + 56) != 0;
    }

    return sub_264B409C4();
  }

  return result;
}

uint64_t sub_2649CADBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 224);
  if (*(v6 + 56) && (*(v6 + 96) & 1) == 0 && (v7 = *(v6 + 80), v8 = *(v6 + 88), (sub_264B41BF4() & 1) != 0))
  {
    v9 = *(v2 + 176);
    v20 = *(v6 + 56) != 0;
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FF8AE70);
    v11 = sub_264B40944();
    v12 = sub_264B414B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136446210;
      v15 = sub_264B41BE4();
      v17 = sub_2649CC004(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2649C6000, v11, v12, "Policy engine: Starting inactivity timer with duration %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    sub_264B0D954(a1, a2);
    v18 = *(v3 + 176);
    v22 = *(v6 + 56) != 0;
  }

  return sub_264B409C4();
}

uint64_t sub_2649CAF8C()
{
  v1 = v0;
  v2 = *(v0 + 224);
  if (*(v2 + 56))
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FF8AE70);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2649C6000, v4, v5, "Policy engine: Stopping inactivity timer", v6, 2u);
      MEMORY[0x266749940](v6, -1, -1);
    }

    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    *(v2 + 96) = 1;
    if (*(v2 + 56))
    {
      v7 = *(v2 + 56);

      sub_264B41304();

      v8 = *(v2 + 56);
    }

    *(v2 + 56) = 0;

    v9 = *(v2 + 56) != 0;
  }

  v10 = *(v1 + 176);
  return sub_264B409C4();
}

uint64_t sub_2649CB0F8()
{
  sub_2649CB510((v0 + 2));
  v1 = v0[22];

  v2 = v0[24];

  v3 = v0[26];

  v4 = v0[28];

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for InactivityTimeoutConditionMonitor.ConditionStorage(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for InactivityTimeoutConditionMonitor.ConditionStorage(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2649CB2F0()
{
  result = qword_27FF89DF0;
  if (!qword_27FF89DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF89DF0);
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

unint64_t sub_2649CB384()
{
  result = qword_27FF887B8;
  if (!qword_27FF887B8)
  {
    sub_2649CB2F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF887B8);
  }

  return result;
}

uint64_t sub_2649CB3DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649CB444()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2649CB47C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2649CB4C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2649CB5C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2649CB67C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2649CB694()
{
  sub_264B41B84();
  MEMORY[0x266748E90](0);
  return sub_264B41BB4();
}

uint64_t sub_2649CB700()
{
  sub_264B41B84();
  MEMORY[0x266748E90](0);
  return sub_264B41BB4();
}

uint64_t CDPStateControllerBackediCloudHealthPrimitives.iCloudHealthNeedsRepair()()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2649CB7E0, 0, 0);
}

uint64_t sub_2649CB7E0()
{
  v51 = v0;
  v50[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() contextForPrimaryAccount];
  v2 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];

  if (!v2)
  {
    sub_2649CBDD0();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  *(v0 + 16) = 0;
  v3 = [v2 isManateeAvailable_];
  v4 = *(v0 + 16);
  if (!v3)
  {
    v9 = v4;
    v10 = sub_264B3FF84();

    swift_willThrow();
    *(v0 + 16) = v10;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    sub_2649CBE24();
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 24);
      v13 = [v12 domain];
      v14 = sub_264B41044();
      v16 = v15;

      v17 = *MEMORY[0x277CFD418];
      if (v14 == sub_264B41044() && v16 == v18)
      {

LABEL_11:

        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v20 = sub_264B40964();
        __swift_project_value_buffer(v20, qword_27FFA71B8);
        v21 = v12;
        v22 = sub_264B40944();
        v23 = sub_264B41494();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v50[0] = v25;
          *v24 = 136446210;
          v26 = v21;
          v27 = [v26 description];
          v28 = sub_264B41044();
          v30 = v29;

          v31 = sub_2649CC004(v28, v30, v50);

          *(v24 + 4) = v31;
          _os_log_impl(&dword_2649C6000, v22, v23, "CDPStateController reports iCloud is unhealthy due to: %{public}s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x266749940](v25, -1, -1);
          MEMORY[0x266749940](v24, -1, -1);
        }

        else
        {
        }

        v8 = 1;
        goto LABEL_30;
      }

      v19 = sub_264B41AA4();

      if (v19)
      {
        goto LABEL_11;
      }
    }

    v32 = sub_264B3FF74();
    v33 = [v32 domain];
    v34 = sub_264B41044();
    v36 = v35;

    if (v34 == 0xD000000000000025 && 0x8000000264B58E20 == v36)
    {

LABEL_28:

      goto LABEL_29;
    }

    v37 = sub_264B41AA4();

    if ((v37 & 1) != 0 || ![v32 code])
    {
      goto LABEL_28;
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v38 = sub_264B40964();
    __swift_project_value_buffer(v38, qword_27FFA71B8);
    v39 = v10;
    v40 = sub_264B40944();
    v41 = sub_264B41494();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50[0] = v43;
      *v42 = 136446210;
      *(v0 + 16) = v10;
      v44 = v10;
      v45 = sub_264B41064();
      v47 = sub_2649CC004(v45, v46, v50);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_2649C6000, v40, v41, "Unable to determine iCloud health state due to: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x266749940](v43, -1, -1);
      MEMORY[0x266749940](v42, -1, -1);
    }

    swift_willThrow();
LABEL_5:
    v6 = *(v0 + 8);
    v7 = *MEMORY[0x277D85DE8];
    v8 = 0;
    goto LABEL_31;
  }

  v5 = v4;

LABEL_29:
  v8 = 0;
LABEL_30:
  v6 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];
LABEL_31:

  return v6(v8);
}

unint64_t sub_2649CBDD0()
{
  result = qword_27FF887D0;
  if (!qword_27FF887D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF887D0);
  }

  return result;
}

unint64_t sub_2649CBE24()
{
  result = qword_27FF887D8;
  if (!qword_27FF887D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF887D8);
  }

  return result;
}

uint64_t sub_2649CBE70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CBEFC;

  return CDPStateControllerBackediCloudHealthPrimitives.iCloudHealthNeedsRepair()();
}

uint64_t sub_2649CBEFC(char a1)
{
  v4 = *(*v2 + 16);
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

uint64_t sub_2649CC004(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2649CC0D0(v11, 0, 0, 1, a1, a2);
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
    sub_2649C964C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2649CC0D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2649CC1DC(a5, a6);
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
    result = sub_264B417B4();
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

uint64_t sub_2649CC1DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2649CC228(a1, a2);
  sub_2649CC358(&unk_287655740);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2649CC228(uint64_t a1, unint64_t a2)
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

  v6 = sub_2649CC444(v5, 0);
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

  result = sub_264B417B4();
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
        v10 = sub_264B410B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2649CC444(v10, 0);
        result = sub_264B41744();
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

uint64_t sub_2649CC358(uint64_t result)
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

  result = sub_2649CC4B8(result, v12, 1, v3);
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

void *sub_2649CC444(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887E8, &unk_264B44140);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2649CC4B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887E8, &unk_264B44140);
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

uint64_t getEnumTagSinglePayload for AnnotationServiceConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnnotationServiceConstants(_WORD *result, int a2, int a3)
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

unint64_t sub_2649CC6B0()
{
  result = qword_27FF887E0;
  if (!qword_27FF887E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF887E0);
  }

  return result;
}

uint64_t sub_2649CC710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.deinit()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    sub_264B41304();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  v4 = OBJC_IVAR____TtC16ScreenSharingKit56ScreenContinuityServicesBackedContinuityDevicePrimitives__continuityDeviceInfo;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.__deallocating_deinit()
{
  if (*(v0 + 3))
  {
    v1 = *(v0 + 3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    sub_264B41304();
  }

  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = OBJC_IVAR____TtC16ScreenSharingKit56ScreenContinuityServicesBackedContinuityDevicePrimitives__continuityDeviceInfo;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.__allocating_init(fetchUnlockabilityStatus:)(int a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ScreenContinuityServicesBackedContinuityDevicePrimitives.init(fetchUnlockabilityStatus:)(a1);
  return v5;
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.init(fetchUnlockabilityStatus:)(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v26 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v9 = &v26 - v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_264B408B4();
  *(v1 + 16) = sub_264B408A4();
  *(v1 + 24) = 0;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit56ScreenContinuityServicesBackedContinuityDevicePrimitives__continuityDeviceInfo;
  v17 = type metadata accessor for ContinuityDeviceInfo(0);
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_2649D046C(v15, v13, &qword_27FF88800, qword_264B4CC90);
  sub_264B40A44();
  sub_2649D04D4(v15, &qword_27FF88800, qword_264B4CC90);
  (*(v6 + 32))(v2 + v16, v9, v5);
  v18 = *(v2 + 16);
  v19 = sub_264B41274();
  v20 = v26;
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v27;
  *(v22 + 40) = v18;
  *(v22 + 48) = v21;

  v23 = sub_2649CD944(0, 0, v20, &unk_264B441A8, v22);
  v24 = *(v2 + 24);
  *(v2 + 24) = v23;

  return v2;
}

uint64_t sub_2649CCCB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2649CCCEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 168) = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88858, &qword_264B442D0);
  *(v6 + 88) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88860, &qword_264B442D8);
  *(v6 + 104) = v9;
  v10 = *(v9 - 8);
  *(v6 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  v12 = sub_264B40884();
  *(v6 + 128) = v12;
  v13 = *(v12 - 8);
  *(v6 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649CCE54, 0, 0);
}

uint64_t sub_2649CCE54()
{
  v1 = *(v0 + 144);
  if (*(v0 + 168) == 1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88888, &qword_264B442E8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_264B44150;
    sub_264B40874();
    *(v0 + 64) = v6;
  }

  else
  {
    *(v0 + 40) = MEMORY[0x277D84F90];
    v7 = *(v0 + 128);
  }

  sub_2649D0534(&qword_27FF88868, MEMORY[0x277D4B7F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88870, &qword_264B442E0);
  sub_2649CB4C8(&qword_27FF88878, &qword_27FF88870, &qword_264B442E0);
  sub_264B41684();
  v8 = *(v0 + 72);
  sub_264B408B4();
  sub_2649D0534(&qword_27FF88880, MEMORY[0x277D4B808]);
  v10 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_2649CD0DC, v10, v9);
}

uint64_t sub_2649CD0DC()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[9];
  sub_264B40894();

  return MEMORY[0x2822009F8](sub_2649CD14C, 0, 0);
}

uint64_t sub_2649CD14C()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v0[19] = swift_getOpaqueTypeConformance2();
  sub_264B41334();
  swift_beginAccess();
  v5 = v0[19];
  v6 = v0[13];
  v7 = v0[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_2649CD278;
  v11 = v0[15];
  v12 = v0[13];

  return MEMORY[0x282200310](v0 + 6, 0, 0, v0 + 7, v12, AssociatedConformanceWitness);
}

uint64_t sub_2649CD278()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2649CD680;
  }

  else
  {
    v3 = sub_2649CD388;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2649CD388()
{
  v27 = v0;
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[10];
    if (swift_weakLoadStrong())
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v3 = sub_264B40964();
      __swift_project_value_buffer(v3, qword_27FFA71B8);

      v4 = sub_264B40944();
      v5 = sub_264B41484();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v26 = v7;
        *v6 = 136315138;
        v8 = sub_264B40864();
        v9 = MEMORY[0x266748460](v1, v8);
        v11 = sub_2649CC004(v9, v10, &v26);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_2649C6000, v4, v5, "Replicator devices array changed: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x266749940](v7, -1, -1);
        MEMORY[0x266749940](v6, -1, -1);
      }

      sub_2649CDBF0(v1);

      v12 = v0[19];
      v13 = v0[13];
      v14 = v0[11];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v16 = *(MEMORY[0x277D856D8] + 4);
      v17 = swift_task_alloc();
      v0[20] = v17;
      *v17 = v0;
      v17[1] = sub_2649CD278;
      v18 = v0[15];
      v19 = v0[13];

      return MEMORY[0x282200310](v0 + 6, 0, 0, v0 + 7, v19, AssociatedConformanceWitness);
    }
  }

  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[16];
  v23 = v0[12];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v21 + 8))(v20, v22);

  v24 = v0[1];

  return v24();
}

uint64_t sub_2649CD680()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v1 + 8))(v2, v3);
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2649CD740()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2649CD788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_2649CCCEC(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_2649CD850()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2649CD944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_2649D046C(a3, v23 - v9, &qword_27FF898C0, &unk_264B44190);
  v11 = sub_264B41274();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2649D04D4(v10, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264B411C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264B41074() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);

      return v21;
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

  sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_2649CDBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v188 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v187 = &v178 - v6;
  v190 = type metadata accessor for ContinuityDevice(0);
  v212 = *(v190 - 8);
  v7 = *(v212 + 64);
  v8 = MEMORY[0x28223BE20](v190);
  v181 = (&v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v178 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v186 = (&v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v189 = &v178 - v16;
  v231 = sub_264B40804();
  v17 = *(v231 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v231);
  v196 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88840, &qword_264B44278);
  v20 = *(*(v230 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v230);
  v23 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v178 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88848, &qword_264B44280);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v209 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v203 = &v178 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v178 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v197 = &v178 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v195 = &v178 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v217 = &v178 - v40;
  MEMORY[0x28223BE20](v39);
  v216 = &v178 - v41;
  v42 = sub_264B40864();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v184 = &v178 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v185 = &v178 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v179 = &v178 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v180 = &v178 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v210 = &v178 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v211 = &v178 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v208 = &v178 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v193 = &v178 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v202 = &v178 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v229 = &v178 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v201 = &v178 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v228 = &v178 - v68;
  v69 = *(a1 + 16);
  v232 = v67;
  v191 = v43;
  v192 = v69;
  v198 = v11;
  if (v69)
  {
    v215 = v34;
    v199 = v23;
    v71 = *(v43 + 16);
    v70 = v43 + 16;
    v225 = v71;
    v72 = (*(v70 + 64) + 32) & ~*(v70 + 64);
    v183 = a1;
    v200 = v72;
    v227 = *(v70 + 56);
    v205 = *MEMORY[0x277D4B7A8];
    v223 = (v17 + 56);
    v224 = (v17 + 104);
    v194 = (v17 + 32);
    v182 = v17;
    v207 = (v17 + 8);
    v226 = v70;
    v213 = (v70 - 8);
    v214 = (v70 + 16);
    v204 = MEMORY[0x277D84F90];
    v73 = &qword_264B44280;
    v74 = a1 + v72;
    v75 = v69;
    v76 = (v17 + 48);
    v218 = (v17 + 48);
    v77 = v217;
    v206 = a1 + v72;
    while (1)
    {
      v219 = v75;
      v225(v228, v74, v232);
      v80 = v231;
      v81 = v73;
      v82 = v216;
      sub_264B40824();
      v222 = *v224;
      v222(v77, v205, v80);
      v221 = *v223;
      v221(v77, 0, 1, v80);
      v83 = *(v230 + 48);
      sub_2649D046C(v82, v25, &qword_27FF88848, v81);
      sub_2649D046C(v77, &v25[v83], &qword_27FF88848, v81);
      v84 = v77;
      v85 = *v76;
      v86 = (*v76)(v25, 1, v80);
      v220 = v85;
      if (v86 == 1)
      {
        break;
      }

      v88 = v195;
      sub_2649D046C(v25, v195, &qword_27FF88848, v81);
      if (v85(&v25[v83], 1, v80) == 1)
      {
        v73 = v81;
        sub_2649D04D4(v217, &qword_27FF88848, v81);
        sub_2649D04D4(v216, &qword_27FF88848, v81);
        (*v207)(v88, v231);
        v78 = v206;
LABEL_4:
        sub_2649D04D4(v25, &qword_27FF88840, &qword_264B44278);
        goto LABEL_5;
      }

      v89 = &v25[v83];
      v90 = v196;
      v91 = v231;
      (*v194)(v196, v89, v231);
      sub_2649D0534(&qword_27FF88850, MEMORY[0x277D4B7B0]);
      v92 = sub_264B40F94();
      v93 = *v207;
      v76 = v218;
      (*v207)(v90, v91);
      sub_2649D04D4(v217, &qword_27FF88848, &qword_264B44280);
      sub_2649D04D4(v216, &qword_27FF88848, &qword_264B44280);
      v93(v88, v91);
      v73 = &qword_264B44280;
      sub_2649D04D4(v25, &qword_27FF88848, &qword_264B44280);
      v78 = v206;
      if (v92)
      {
        goto LABEL_12;
      }

LABEL_5:
      (*v213)(v228, v232);
      v79 = v227;
      v77 = v217;
LABEL_6:
      v74 += v79;
      v75 = v219 - 1;
      if (v219 == 1)
      {
        v219 = MEMORY[0x277D84F90];
        v100 = &qword_264B44280;
        LODWORD(v228) = *MEMORY[0x277D4B7A0];
        v101 = v192;
        v102 = v199;
        v103 = v197;
        while (1)
        {
          v225(v229, v78, v232);
          sub_264B40824();
          v105 = v103;
          v106 = v215;
          v107 = v231;
          v222(v215, v228, v231);
          v221(v106, 0, 1, v107);
          v108 = *(v230 + 48);
          sub_2649D046C(v105, v102, &qword_27FF88848, v100);
          sub_2649D046C(v106, v102 + v108, &qword_27FF88848, v100);
          v109 = v107;
          v110 = v100;
          v111 = v220;
          if (v220(v102, 1, v109) == 1)
          {
            break;
          }

          v113 = v203;
          sub_2649D046C(v102, v203, &qword_27FF88848, v110);
          if (v111((v102 + v108), 1, v231) == 1)
          {
            sub_2649D04D4(v215, &qword_27FF88848, v110);
            v103 = v197;
            sub_2649D04D4(v197, &qword_27FF88848, v110);
            (*v207)(v113, v231);
            v100 = v110;
LABEL_19:
            sub_2649D04D4(v102, &qword_27FF88840, &qword_264B44278);
            goto LABEL_20;
          }

          v114 = (v102 + v108);
          v115 = v196;
          v116 = v231;
          (*v194)(v196, v114, v231);
          sub_2649D0534(&qword_27FF88850, MEMORY[0x277D4B7B0]);
          v117 = sub_264B40F94();
          v118 = *v207;
          v119 = v115;
          v102 = v199;
          (*v207)(v119, v116);
          sub_2649D04D4(v215, &qword_27FF88848, v110);
          v103 = v197;
          sub_2649D04D4(v197, &qword_27FF88848, v110);
          v118(v203, v116);
          sub_2649D04D4(v102, &qword_27FF88848, v110);
          v100 = v110;
          if (v117)
          {
            goto LABEL_27;
          }

LABEL_20:
          (*v213)(v229, v232);
          v104 = v227;
LABEL_21:
          v78 += v104;
          if (!--v101)
          {
            v43 = v191;
            v69 = v192;
            v11 = v198;
            v125 = v204;
            a1 = v183;
            v17 = v182;
            goto LABEL_34;
          }
        }

        sub_2649D04D4(v106, &qword_27FF88848, v110);
        sub_2649D04D4(v105, &qword_27FF88848, v110);
        v112 = v111((v102 + v108), 1, v231);
        v103 = v105;
        v100 = v110;
        if (v112 == 1)
        {
          sub_2649D04D4(v102, &qword_27FF88848, v110);
LABEL_27:
          v120 = *v214;
          (*v214)(v202, v229, v232);
          v121 = v219;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v233 = v121;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_264AAFC8C(0, *(v121 + 16) + 1, 1);
            v121 = v233;
          }

          v124 = *(v121 + 16);
          v123 = *(v121 + 24);
          v104 = v227;
          if (v124 >= v123 >> 1)
          {
            sub_264AAFC8C(v123 > 1, v124 + 1, 1);
            v104 = v227;
            v121 = v233;
          }

          *(v121 + 16) = v124 + 1;
          v219 = v121;
          v120((v121 + v200 + v124 * v104), v202, v232);
          v102 = v199;
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    sub_2649D04D4(v84, &qword_27FF88848, v81);
    sub_2649D04D4(v82, &qword_27FF88848, v81);
    v87 = v85(&v25[v83], 1, v80);
    v78 = v206;
    v73 = v81;
    if (v87 == 1)
    {
      sub_2649D04D4(v25, &qword_27FF88848, v81);
LABEL_12:
      v94 = *v214;
      (*v214)(v201, v228, v232);
      v95 = v204;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v233 = v95;
      v77 = v217;
      if ((v96 & 1) == 0)
      {
        sub_264AAFC8C(0, *(v95 + 16) + 1, 1);
        v95 = v233;
      }

      v98 = *(v95 + 16);
      v97 = *(v95 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_264AAFC8C(v97 > 1, v98 + 1, 1);
        v95 = v233;
      }

      *(v95 + 16) = v98 + 1;
      v204 = v95;
      v99 = v95 + v200;
      v79 = v227;
      v94((v99 + v98 * v227), v201, v232);
      v76 = v218;
      v73 = &qword_264B44280;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v125 = MEMORY[0x277D84F90];
  v219 = MEMORY[0x277D84F90];
LABEL_34:
  v204 = v125;
  v225 = *(v125 + 16);
  if (v225)
  {
    sub_2649CF360();
    v69 = v192;
  }

  v126 = MEMORY[0x277D84F90];
  if (v69)
  {
    v127 = *(v43 + 16);
    v229 = (v43 + 16);
    v230 = v127;
    v227 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v128 = a1 + v227;
    v129 = *(v43 + 72);
    v130 = (v17 + 48);
    v228 = (v43 + 32);
    v226 = (v43 + 8);
    v131 = v193;
    do
    {
      v132 = v232;
      (v230)(v131, v128, v232);
      v133 = v209;
      v134 = v131;
      sub_264B40824();
      v135 = (*v130)(v133, 1, v231);
      sub_2649D04D4(v133, &qword_27FF88848, &qword_264B44280);
      if (v135 == 1)
      {
        (*v226)(v134, v132);
        v131 = v134;
      }

      else
      {
        v136 = *v228;
        (*v228)(v208, v134, v132);
        v137 = swift_isUniquelyReferenced_nonNull_native();
        v233 = v126;
        if (v137)
        {
          v131 = v134;
        }

        else
        {
          sub_264AAFC8C(0, *(v126 + 16) + 1, 1);
          v131 = v193;
          v126 = v233;
        }

        v139 = *(v126 + 16);
        v138 = *(v126 + 24);
        if (v139 >= v138 >> 1)
        {
          sub_264AAFC8C(v138 > 1, v139 + 1, 1);
          v131 = v193;
          v126 = v233;
        }

        *(v126 + 16) = v139 + 1;
        v136(v126 + v227 + v139 * v129, v208, v232);
        v11 = v198;
      }

      v128 += v129;
      --v69;
    }

    while (v69);
  }

  v140 = *(v126 + 16);
  if (v140)
  {
    v233 = MEMORY[0x277D84F90];
    sub_264AAFC48(0, v140, 0);
    v141 = v233;
    v142 = *(v191 + 16);
    v143 = v126 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
    v144 = *(v191 + 72);
    v230 = v126;
    v231 = v144;
    v145 = (v191 + 8);
    do
    {
      v146 = v211;
      v147 = v232;
      v142(v211, v143, v232);
      v148 = v210;
      v142(v210, v146, v147);
      sub_264AF574C(v148, v11);
      (*v145)(v146, v147);
      v233 = v141;
      v149 = v11;
      v151 = *(v141 + 16);
      v150 = *(v141 + 24);
      if (v151 >= v150 >> 1)
      {
        sub_264AAFC48(v150 > 1, v151 + 1, 1);
        v141 = v233;
      }

      *(v141 + 16) = v151 + 1;
      sub_2649D0390(v149, v141 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v151);
      v143 += v231;
      --v140;
      v11 = v149;
    }

    while (v140);
    v231 = v141;
  }

  else
  {

    v231 = MEMORY[0x277D84F90];
  }

  v152 = *(v212 + 56);
  v153 = v189;
  v154 = v190;
  v152(v189, 1, 1, v190);
  v155 = v219;
  if (*(v204 + 16) != 1 || *(v219 + 16))
  {

    if (*(v155 + 16))
    {
      v156 = v191;
      v157 = *(v191 + 16);
      v158 = v184;
      v159 = v232;
      v157(v184, v155 + ((*(v191 + 80) + 32) & ~*(v191 + 80)), v232);

      v160 = v185;
      (*(v156 + 32))(v185, v158, v159);
      v161 = v211;
      v157(v211, v160, v159);
      v162 = v186;
      sub_264AF574C(v161, v186);
      (*(v156 + 8))(v160, v159);
      sub_2649D04D4(v153, &unk_27FF89E30, &qword_264B44270);
      v152(v162, 0, 1, v154);
      sub_2649D03F4(v162, v153);
LABEL_66:
      v175 = v192 != 0;
      v176 = v187;
      sub_2649D046C(v153, v187, &unk_27FF89E30, &qword_264B44270);
      v177 = type metadata accessor for ContinuityDeviceInfo(0);
      *(v176 + *(v177 + 20)) = v231;
      *(v176 + *(v177 + 24)) = v175;
      (*(*(v177 - 8) + 56))(v176, 0, 1, v177);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2649D046C(v176, v188, &qword_27FF88800, qword_264B4CC90);

      sub_264B40A94();
      sub_2649D04D4(v176, &qword_27FF88800, qword_264B4CC90);
      sub_2649D04D4(v153, &unk_27FF89E30, &qword_264B44270);
      return;
    }

LABEL_58:

    goto LABEL_66;
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v163 = sub_264B40964();
  __swift_project_value_buffer(v163, qword_27FFA71B8);
  v164 = sub_264B40944();
  v165 = sub_264B414B4();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    *v166 = 0;
    _os_log_impl(&dword_2649C6000, v164, v165, "The device with migrating state will be used as the selected device", v166, 2u);
    v167 = v166;
    v154 = v190;
    MEMORY[0x266749940](v167, -1, -1);
  }

  if (!v225)
  {
    goto LABEL_58;
  }

  if (*(v204 + 16))
  {
    v168 = v191;
    v169 = *(v191 + 16);
    v170 = v179;
    v171 = v232;
    v169(v179, v204 + ((*(v191 + 80) + 32) & ~*(v191 + 80)), v232);

    v172 = v180;
    (*(v168 + 32))(v180, v170, v171);
    v173 = v211;
    v169(v211, v172, v171);
    v174 = v181;
    sub_264AF574C(v173, v181);
    (*(v168 + 8))(v172, v171);
    sub_2649D04D4(v153, &unk_27FF89E30, &qword_264B44270);
    *(v174 + *(v154 + 40)) = 1;
    sub_2649D0390(v174, v153);
    v152(v153, 0, 1, v154);
    goto LABEL_66;
  }

  __break(1u);
}

uint64_t sub_2649CF360()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_264B3FFD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v11 = sub_264B40964();
  __swift_project_value_buffer(v11, qword_27FFA71B8);
  v12 = sub_264B41484();
  sub_264B3FF94();
  v13 = sub_264B3FFA4();
  v15 = v14;
  (*(v7 + 8))(v10, v6);

  v16 = sub_264B40944();

  if (os_log_type_enabled(v16, v12))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446722;
    v19 = sub_2649CC004(v13, v15, &v24);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2050;
    *(v17 + 14) = 75;
    *(v17 + 22) = 2082;
    *(v17 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B58FA0, &v24);
    _os_log_impl(&dword_2649C6000, v16, v12, "%{public}s:%{public}ld %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v18, -1, -1);
    MEMORY[0x266749940](v17, -1, -1);
  }

  else
  {
  }

  v20 = sub_264B41274();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v1;

  sub_264A10C20(0, 0, v5, &unk_264B44260, v21);
}

uint64_t sub_2649CF6DC()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(MEMORY[0x277D4B7D0] + 4);
  v5 = (*MEMORY[0x277D4B7D0] + MEMORY[0x277D4B7D0]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2649CF784;

  return v5();
}

uint64_t sub_2649CF784()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2649CF8B8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2649CF8B8()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2649C6000, v4, v5, "retryStuckRemoteScreenRelationships failed with error %{public}@", v8, 0xCu);
    sub_2649D04D4(v9, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t ScreenContinuityServicesBackedContinuityDevicePrimitives.continuityDeviceChangedPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88808, &unk_264B441B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88810, &unk_264B4CCB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  sub_264B40A54();
  swift_endAccess();
  type metadata accessor for ContinuityDeviceInfo(0);
  sub_2649CB4C8(&qword_27FF88818, &qword_27FF88808, &unk_264B441B0);
  sub_264B40AC4();
  (*(v1 + 8))(v4, v0);
  sub_2649CB4C8(&qword_27FF88820, &qword_27FF88810, &unk_264B4CCB0);
  v10 = sub_264B40AB4();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_2649CFCF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88808, &unk_264B441B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88810, &unk_264B4CCB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF887F8, &qword_264B44188);
  sub_264B40A54();
  swift_endAccess();
  type metadata accessor for ContinuityDeviceInfo(0);
  sub_2649CB4C8(&qword_27FF88818, &qword_27FF88808, &unk_264B441B0);
  sub_264B40AC4();
  (*(v2 + 8))(v5, v1);
  sub_2649CB4C8(&qword_27FF88820, &qword_27FF88810, &unk_264B4CCB0);
  v12 = sub_264B40AB4();
  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t type metadata accessor for ScreenContinuityServicesBackedContinuityDevicePrimitives()
{
  result = qword_27FF88828;
  if (!qword_27FF88828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2649CFFB8()
{
  sub_2649D008C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2649D008C()
{
  if (!qword_27FF88838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88800, qword_264B4CC90);
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF88838);
    }
  }
}

uint64_t sub_2649D00F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2649D0130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649CD850;

  return sub_2649CF6BC(a1, v4, v5, v6);
}

uint64_t sub_2649D01E4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t sub_2649D0260(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2649D046C(a1, &v13 - v9, &qword_27FF88800, qword_264B4CC90);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649D046C(v10, v8, &qword_27FF88800, qword_264B4CC90);

  sub_264B40A94();
  return sub_2649D04D4(v10, &qword_27FF88800, qword_264B4CC90);
}

uint64_t sub_2649D0390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuityDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D03F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D046C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2649D04D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2649D0534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2649D057C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2649D05C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2649D065C()
{
  v1 = 0x72656E6E69;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_2649D06A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2649D10F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2649D06E8(uint64_t a1)
{
  v2 = sub_2649D1EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D0724(uint64_t a1)
{
  v2 = sub_2649D1EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649D0760(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88920, &qword_264B445C8);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88928, &qword_264B445D0);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88930, &qword_264B445D8);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88938, &qword_264B445E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D1EE8();
  sub_264B41BD4();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_2649D1F90();
      sub_264B419B4();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_2649D1F3C();
      v21 = v27;
      sub_264B419B4();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_2649D1FE4();
    sub_264B419B4();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_2649D0AE0(void *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888A8, &qword_264B443C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D1B1C();
  sub_264B41BD4();
  v18 = 0;
  sub_264B41A34();
  if (!v3)
  {
    v17 = a3;
    v16 = 1;
    sub_2649D1BC4();
    sub_264B41A24();
    v15 = 2;
    sub_264B41A04();
    v14 = 3;
    sub_264B41A04();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2649D0CCC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2649D0D08(uint64_t a1)
{
  v2 = sub_2649D1F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D0D44(uint64_t a1)
{
  v2 = sub_2649D1F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649D0D80(uint64_t a1)
{
  v2 = sub_2649D1F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D0DBC(uint64_t a1)
{
  v2 = sub_2649D1F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649D0DF8(uint64_t a1)
{
  v2 = sub_2649D1FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D0E34(uint64_t a1)
{
  v2 = sub_2649D1FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2649D0E70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2649D1200(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2649D0EB8()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t sub_2649D0F00()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_2649D0F44()
{
  v1 = 0x6574617473;
  v2 = 120;
  if (*v0 != 2)
  {
    v2 = 121;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2649D0FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2649D1770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2649D0FDC(uint64_t a1)
{
  v2 = sub_2649D1B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D1018(uint64_t a1)
{
  v2 = sub_2649D1B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2649D1054(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_2649D18C4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_2649D1088(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2649D0AE0(a1, *v1, *(v1 + 8));
}

uint64_t sub_2649D10F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E6E69 && a2 == 0xE500000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2649D1200(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888D8, &qword_264B445A0);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888E0, &qword_264B445A8);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888E8, &qword_264B445B0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF888F0, &qword_264B445B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2649D1EE8();
  v18 = v39;
  sub_264B41BC4();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_264B419A4();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_2649E0EDC();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_2649D1F90();
          sub_264B418F4();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v40);
          return v12;
        }

        v45 = 2;
        sub_2649D1F3C();
        v29 = v15;
        sub_264B418F4();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_2649D1FE4();
        v29 = v15;
        sub_264B418F4();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_264B417A4();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
    *v27 = &type metadata for StrokePointAnnotationEvent.State;
    sub_264B41904();
    sub_264B41794();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v12;
}

uint64_t sub_2649D1770(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000264B58FD0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 120 && a2 == 0xE100000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_264B41AA4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_2649D18C4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88890, &qword_264B443B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D1B1C();
  sub_264B41BC4();
  v11[15] = 0;
  sub_264B41994();
  v11[13] = 1;
  sub_2649D1B70();
  sub_264B41984();
  v11[12] = 2;
  sub_264B41964();
  v10 = v9;
  v11[11] = 3;
  sub_264B41964();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2649D1B1C()
{
  result = qword_27FF88898;
  if (!qword_27FF88898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88898);
  }

  return result;
}

unint64_t sub_2649D1B70()
{
  result = qword_27FF888A0;
  if (!qword_27FF888A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888A0);
  }

  return result;
}

unint64_t sub_2649D1BC4()
{
  result = qword_27FF888B0;
  if (!qword_27FF888B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StrokePointAnnotationEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StrokePointAnnotationEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2649D1D8C()
{
  result = qword_27FF888B8;
  if (!qword_27FF888B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888B8);
  }

  return result;
}

unint64_t sub_2649D1DE4()
{
  result = qword_27FF888C0;
  if (!qword_27FF888C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888C0);
  }

  return result;
}

unint64_t sub_2649D1E3C()
{
  result = qword_27FF888C8;
  if (!qword_27FF888C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888C8);
  }

  return result;
}

unint64_t sub_2649D1E94()
{
  result = qword_27FF888D0;
  if (!qword_27FF888D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888D0);
  }

  return result;
}

unint64_t sub_2649D1EE8()
{
  result = qword_27FF888F8;
  if (!qword_27FF888F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF888F8);
  }

  return result;
}

unint64_t sub_2649D1F3C()
{
  result = qword_27FF88908;
  if (!qword_27FF88908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88908);
  }

  return result;
}

unint64_t sub_2649D1F90()
{
  result = qword_27FF88910;
  if (!qword_27FF88910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88910);
  }

  return result;
}

unint64_t sub_2649D1FE4()
{
  result = qword_27FF88918;
  if (!qword_27FF88918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88918);
  }

  return result;
}

uint64_t _s11ServerErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11ServerErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2649D21C4()
{
  result = qword_27FF88940;
  if (!qword_27FF88940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88940);
  }

  return result;
}

unint64_t sub_2649D221C()
{
  result = qword_27FF88948;
  if (!qword_27FF88948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88948);
  }

  return result;
}

unint64_t sub_2649D2274()
{
  result = qword_27FF88950;
  if (!qword_27FF88950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88950);
  }

  return result;
}

unint64_t sub_2649D22CC()
{
  result = qword_27FF88958;
  if (!qword_27FF88958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88958);
  }

  return result;
}

unint64_t sub_2649D2324()
{
  result = qword_27FF88960;
  if (!qword_27FF88960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88960);
  }

  return result;
}

unint64_t sub_2649D237C()
{
  result = qword_27FF88968;
  if (!qword_27FF88968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88968);
  }

  return result;
}

unint64_t sub_2649D23D4()
{
  result = qword_27FF88970;
  if (!qword_27FF88970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88970);
  }

  return result;
}

unint64_t sub_2649D242C()
{
  result = qword_27FF88978;
  if (!qword_27FF88978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88978);
  }

  return result;
}

unint64_t sub_2649D2484()
{
  result = qword_27FF88980;
  if (!qword_27FF88980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88980);
  }

  return result;
}

uint64_t sub_2649D2500()
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v0 = getpid();
  if (proc_pidinfo(v0, 17, 1uLL, &v10, 56) != 56)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v1 = sub_264B40964();
    __swift_project_value_buffer(v1, qword_27FFA71B8);
    v2 = sub_264B40944();
    v3 = sub_264B41494();
    if (!os_log_type_enabled(v2, v3))
    {
      v5 = 0;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Failed to fetch UPID for our own process", v4, 2u);
    v5 = 0;
    goto LABEL_10;
  }

  v5 = v11;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FFA71B8);
  v2 = sub_264B40944();
  v7 = sub_264B414B4();
  if (os_log_type_enabled(v2, v7))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = v5;
    _os_log_impl(&dword_2649C6000, v2, v7, "UPID for our own process is: %{public}llu", v4, 0xCu);
LABEL_10:
    MEMORY[0x266749940](v4, -1, -1);
  }

LABEL_12:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_2649D272C()
{
  result = qword_27FF88988;
  if (!qword_27FF88988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88988);
  }

  return result;
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.__allocating_init(thisDeviceIdentifier:timeoutPrimitives:mediaTransportClientSessionVendor:localDeviceInformationPrimitives:hidServicePrimitives:launchRequestAuthority:telemetryVendor:userDefaultsPrimitives:rtiStateCoordinator:featureFlagPrimitives:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9, __int128 *a10)
{
  v18 = *(v10 + 48);
  v19 = *(v10 + 52);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier;
  v22 = sub_264B40104();
  (*(*(v22 - 8) + 32))(v20 + v21, a1, v22);
  v23 = v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives;
  v24 = *(a2 + 80);
  *(v23 + 64) = *(a2 + 64);
  *(v23 + 80) = v24;
  *(v23 + 96) = *(a2 + 96);
  *(v23 + 112) = *(a2 + 112);
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;
  v26 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v26;
  sub_2649D2AAC(a3, v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor);
  sub_2649D2AAC(a4, v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives);
  sub_2649D2AAC(a5, v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives);
  sub_2649D2AAC(a6, v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_launchRequestAuthority);
  sub_2649D2AAC(a7, v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor);
  sub_2649D2AAC(a8, v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_userDefaultsPrimitives);
  sub_2649D2AAC(a9, v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator);
  sub_2649D2AAC(a10, v20 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives);
  return v20;
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.init(thisDeviceIdentifier:timeoutPrimitives:mediaTransportClientSessionVendor:localDeviceInformationPrimitives:hidServicePrimitives:launchRequestAuthority:telemetryVendor:userDefaultsPrimitives:rtiStateCoordinator:featureFlagPrimitives:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, __int128 *a9, __int128 *a10)
{
  v18 = OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier;
  v19 = sub_264B40104();
  (*(*(v19 - 8) + 32))(v10 + v18, a1, v19);
  v20 = v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives;
  v21 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v21;
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = *(a2 + 112);
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  v23 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v23;
  sub_2649D2AAC(a3, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor);
  sub_2649D2AAC(a4, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives);
  sub_2649D2AAC(a5, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives);
  sub_2649D2AAC(a6, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_launchRequestAuthority);
  sub_2649D2AAC(a7, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor);
  sub_2649D2AAC(a8, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_userDefaultsPrimitives);
  sub_2649D2AAC(a9, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator);
  sub_2649D2AAC(a10, v10 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives);
  return v10;
}

uint64_t sub_2649D2AAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2649D2BB4(v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_launchRequestAuthority));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_userDefaultsPrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives));
  return v0;
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2649D2BB4(v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_launchRequestAuthority));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_userDefaultsPrimitives));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t MediaTransportBackedScreenSharingSessionVendor.vend(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v67 - v5;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScreenSharingSession.Config(0);
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v67 - v15;
  v16 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor + 24);
  v17 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_telemetryVendor), v16);
  v71 = (*(v17 + 8))(v16, v17);
  v18 = *(v7 + 16);
  v69 = v6;
  v18(v10, v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_thisDeviceIdentifier, v6);
  v19 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives + 24);
  v20 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_timeoutPrimitives), v19);
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v67 - v23;
  (*(v21 + 16))(&v67 - v23);
  if (sub_264B41644() < 65)
  {
    v68 = a1;
    v26 = sub_264B41654();
    v27 = sub_264B41634();
    (*(v21 + 8))(v24, v19);
    if (v26)
    {
      v25 = v27;
    }

    else
    {
      v25 = v27;
    }

    a1 = v68;
  }

  else
  {
    sub_2649D376C();
    sub_2649D37C0();
    sub_264B40F44();
    (*(v21 + 8))(v24, v19);
    v25 = *&v80;
  }

  v28 = v70;
  (*(v7 + 32))(v70, v10, v69);
  *(v28 + v11[5]) = 1;
  *(v28 + v11[6]) = v25;
  *(v28 + v11[7]) = -70;
  v29 = v72;
  sub_2649D3568(v28, v72);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_mediaTransportClientSessionVendor, &v80);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_localDeviceInformationPrimitives, v79);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_hidServicePrimitives, v78);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_rtiStateCoordinator, v77);
  v30 = v73;
  sub_2649D35CC(a1, v73);
  sub_2649CB5C0(v1 + OBJC_IVAR____TtC16ScreenSharingKit46MediaTransportBackedScreenSharingSessionVendor_featureFlagPrimitives, v76);
  v31 = type metadata accessor for ScreenSharingSession(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  swift_defaultActor_initialize();
  v35 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_launchRequest;
  v36 = sub_264B40744();
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  v37 = v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 9;
  v38 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  v39 = type metadata accessor for ContinuityDevice(0);
  (*(*(v39 - 8) + 56))(v34 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  (*(*(v41 - 8) + 56))(v34 + v40, 1, 1, v41);
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportIsTearingDown) = 0;
  v42 = (v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  *v42 = 0;
  v42[1] = 0;
  v43 = (v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream);
  *v43 = 0;
  v43[1] = 0;
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession) = 0;
  v44 = v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
  *(v44 + 32) = 0;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v45 = v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0;
  v46 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_orientationStatusSubject;
  LOBYTE(v74) = 0;
  v75 = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F0, &unk_264B449D0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *(v34 + v46) = sub_264B40A14();
  v50 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_deviceSensorsInUseSubject;
  v74 = MEMORY[0x277D84FA0];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F8, &unk_264B51570);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  *(v34 + v50) = sub_264B40A14();
  v54 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventSubject;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A00, &unk_264B449E0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  *(v34 + v54) = sub_264B409D4();
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragNDropUsed) = 0;
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityTrafficSeen) = 0;
  v58 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessbilityDataSubject;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = sub_264B409D4();
  sub_2649D363C(v28);
  *(v34 + v58) = v62;
  v63 = (v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  *(v63 + 41) = 0u;
  v63[1] = 0u;
  v63[2] = 0u;
  *v63 = 0u;
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverEventCancellationHandle) = 0;
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventCancellationHandle) = 0;
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityEventCancellationHandle) = 0;
  v64 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A08, &qword_264B449F0);
  (*(*(v65 - 8) + 56))(v34 + v64, 1, 1, v65);
  sub_2649D3698(v29, v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_config);
  sub_2649D2AAC(&v80, v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor);
  sub_2649D2AAC(v79, v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_localDevicePrimitives);
  sub_2649D2AAC(v78, v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_hidServicePrimitives);
  *(v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry) = v71;
  sub_2649D2AAC(v77, v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator);
  swift_beginAccess();
  sub_2649D36FC(v30, v34 + v35);
  swift_endAccess();
  sub_2649D2AAC(v76, v34 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_featureFlagPrimitives);
  return v34;
}

uint64_t sub_2649D3568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenSharingSession.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D35CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D363C(uint64_t a1)
{
  v2 = type metadata accessor for ScreenSharingSession.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649D3698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenSharingSession.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D36FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2649D376C()
{
  result = qword_27FF88A10;
  if (!qword_27FF88A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A10);
  }

  return result;
}

unint64_t sub_2649D37C0()
{
  result = qword_27FF88A18;
  if (!qword_27FF88A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A18);
  }

  return result;
}

uint64_t sub_2649D3814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = MediaTransportBackedScreenSharingSessionVendor.vend(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for MediaTransportBackedScreenSharingSessionVendor()
{
  result = qword_27FF88A20;
  if (!qword_27FF88A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2649D3894()
{
  result = sub_264B40104();
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

Swift::Void __swiftcall UserDefaultsPrimitives.removeObject(forKey:)(Swift::String forKey)
{
  memset(v2, 0, sizeof(v2));
  (*(v1 + 16))(v2, forKey._countAndFlagsBits, forKey._object);
  sub_2649D3A14(v2);
}

uint64_t sub_2649D3A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FocusPointAnnotationEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FocusPointAnnotationEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2649D3B50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A40, &qword_264B44B80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D414C();
  sub_264B41BD4();
  v10[15] = 0;
  sub_264B41A34();
  if (!v1)
  {
    v10[14] = 1;
    sub_264B41A04();
    v10[13] = 2;
    sub_264B41A04();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2649D3D00()
{
  v1 = 120;
  if (*v0 != 1)
  {
    v1 = 121;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2649D3D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2649D3E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2649D3D70(uint64_t a1)
{
  v2 = sub_2649D414C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649D3DAC(uint64_t a1)
{
  v2 = sub_2649D414C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2649D3DE8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2649D3F7C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_2649D3E18(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_2649D3B50(a1);
}

uint64_t sub_2649D3E70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000264B58FD0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 120 && a2 == 0xE100000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_264B41AA4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_2649D3F7C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A30, &qword_264B44B78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649D414C();
  sub_264B41BC4();
  v11[15] = 0;
  sub_264B41994();
  v11[14] = 1;
  sub_264B41964();
  v10 = v9;
  v11[13] = 2;
  sub_264B41964();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

unint64_t sub_2649D414C()
{
  result = qword_27FF88A38;
  if (!qword_27FF88A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A38);
  }

  return result;
}

unint64_t sub_2649D41B4()
{
  result = qword_27FF88A48;
  if (!qword_27FF88A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A48);
  }

  return result;
}

unint64_t sub_2649D420C()
{
  result = qword_27FF88A50;
  if (!qword_27FF88A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A50);
  }

  return result;
}

unint64_t sub_2649D4264()
{
  result = qword_27FF88A58;
  if (!qword_27FF88A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A58);
  }

  return result;
}

uint64_t sub_2649D42CC()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_2649D4384@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2649D4464(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_2649D44CC()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_2649D4584@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_2649D4664(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40164();
}

uint64_t sub_2649D4720(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t sub_2649D4788()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  return *(v0 + 32);
}

uint64_t sub_2649D4828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_2649D48F8(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
    sub_264B40164();
  }

  return result;
}

uint64_t sub_2649D49FC()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  return *(v0 + 40);
}

uint64_t sub_2649D4A9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_2649D4B44(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
    sub_264B40164();
  }

  return result;
}

uint64_t sub_2649D4C54()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  v1 = *(v0 + 48);
}

uint64_t sub_2649D4CF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  *a2 = *(v3 + 48);
}

uint64_t sub_2649D4DA4(uint64_t a1)
{
  v2 = v1;
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
    sub_264B40164();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_264B409A4();
  sub_2649D8ED4(&qword_27FF88AB0, MEMORY[0x277CBCDA8]);

  v4 = sub_264B40F94();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 48);
LABEL_7:
  *(v2 + 48) = a1;
}

uint64_t ScreenSharingAnnotationViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = v4;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  sub_264B401A4();
  return v3;
}

uint64_t ScreenSharingAnnotationViewModel.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_264B401A4();
  return v0;
}

uint64_t sub_2649D4FE8()
{
  swift_getKeyPath();
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40164();

  swift_getKeyPath();
  sub_264B40164();
}

uint64_t type metadata accessor for ScreenSharingAnnotationViewModel()
{
  result = qword_27FF88A80;
  if (!qword_27FF88A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2649D5210(char *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_264B40104();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FFA71B8);
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_264B41754();

  v49 = 0x7473654767617264;
  v50 = 0xEF203A4449657275;
  sub_2649D8ED4(&qword_27FF88A70, MEMORY[0x277CC95F0]);
  v46 = a1;
  v44 = v8;
  v17 = sub_264B41A64();
  MEMORY[0x266748390](v17);

  MEMORY[0x266748390](0x3A746E696F70202CLL, 0xE900000000000020);
  v47 = a2;
  v48 = a3;
  type metadata accessor for CGPoint(0);
  v18 = sub_264B41064();
  MEMORY[0x266748390](v18);

  v19 = v50;
  v45 = v49;
  v20 = sub_264B41484();
  sub_264B3FF94();
  v21 = sub_264B3FFA4();
  v23 = v22;
  (*(v12 + 8))(v15, v11);
  v24 = sub_264B40944();
  if (os_log_type_enabled(v24, v20))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = v26;
    *v25 = 136446978;
    v27 = sub_2649CC004(v21, v23, &v49);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2050;
    *(v25 + 14) = 32;
    *(v25 + 22) = 2082;
    *(v25 + 24) = sub_2649CC004(0xD00000000000001CLL, 0x8000000264B59260, &v49);
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_2649CC004(v45, v19, &v49);
    _os_log_impl(&dword_2649C6000, v24, v20, "%{public}s:%{public}ld %{public}s %{public}s", v25, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v26, -1, -1);
    MEMORY[0x266749940](v25, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  v49 = v4;
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  v28 = swift_beginAccess();
  v29 = *(v4 + 16);
  MEMORY[0x28223BE20](v28);
  v30 = v46;
  *(&v42 - 2) = v46;

  v31 = sub_2649D5A28(sub_2649D7B70, (&v42 - 4), v29);

  if (!v31)
  {
    swift_getKeyPath();
    v47 = *&v4;
    sub_264B40174();

    if (*(v4 + 40) == 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v42 - 2) = v4;
      *(&v42 - 8) = 0;
      v47 = *&v4;
      sub_264B40164();
    }

    v34 = v42;
    v33 = v43;
    v35 = v44;
    (*(v43 + 16))(v42, v30, v44);
    v36 = type metadata accessor for Stroke();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    *(v39 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__points) = MEMORY[0x277D84F90];
    *(v39 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = 0;
    sub_264B401A4();
    (*(v33 + 32))(v39 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke_id, v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44CE0;
    *(inited + 32) = v39;
    swift_getKeyPath();
    v47 = *&v4;
    swift_retain_n();
    sub_264B40174();

    v47 = *&v4;
    swift_getKeyPath();
    sub_264B40194();

    swift_beginAccess();
    sub_2649D7958(inited);
    swift_endAccess();
    v47 = *&v4;
    swift_getKeyPath();
    sub_264B40184();
  }

  sub_264B17A40(a2, a3);

  swift_getKeyPath();
  v47 = *&v4;
  sub_264B40174();

  v47 = *&v4;
  swift_getKeyPath();
  sub_264B40194();

  ++*(v4 + 32);
  v47 = *&v4;
  swift_getKeyPath();
  sub_264B40184();

  sub_2649D6938();
}

uint64_t sub_2649D5A28(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_264B41884();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x266748A70](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_2649D5B4C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_264B40EB4();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_264B40EE4();
  v66 = *(v68 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_264B40F04();
  v64 = *(v71 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v71);
  v62 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v56 - v14;
  v57 = type metadata accessor for IdentifiablePoint();
  v59 = *(v57 - 8);
  v15 = *(v59 + 64);
  v16 = MEMORY[0x28223BE20](v57);
  v61 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v56 - v19;
  v60 = v20;
  MEMORY[0x28223BE20](v18);
  v72 = &v56 - v21;
  v22 = sub_264B3FFD4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v27 = sub_264B40964();
  __swift_project_value_buffer(v27, qword_27FFA71B8);
  aBlock = 0x203A746E696F70;
  v75 = 0xE700000000000000;
  v80 = a1;
  v81 = a2;
  type metadata accessor for CGPoint(0);
  v28 = sub_264B41064();
  MEMORY[0x266748390](v28);

  v29 = v75;
  v56 = aBlock;
  v30 = sub_264B41484();
  sub_264B3FF94();
  v31 = sub_264B3FFA4();
  v33 = v32;
  (*(v23 + 8))(v26, v22);
  v34 = sub_264B40944();
  if (os_log_type_enabled(v34, v30))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v35 = 136446978;
    v37 = sub_2649CC004(v31, v33, &aBlock);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2050;
    *(v35 + 14) = 52;
    *(v35 + 22) = 2082;
    *(v35 + 24) = sub_2649CC004(0xD000000000000015, 0x8000000264B59280, &aBlock);
    *(v35 + 32) = 2082;
    *(v35 + 34) = sub_2649CC004(v56, v29, &aBlock);
    _os_log_impl(&dword_2649C6000, v34, v30, "%{public}s:%{public}ld %{public}s %{public}s", v35, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v36, -1, -1);
    MEMORY[0x266749940](v35, -1, -1);
  }

  else
  {
  }

  v38 = v58;
  v39 = v72;
  sub_264B400F4();
  v40 = (v39 + *(v57 + 20));
  *v40 = a1;
  v40[1] = a2;
  sub_2649D86F8(v39, v38);
  swift_getKeyPath();
  aBlock = v3;
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  aBlock = v3;
  swift_getKeyPath();
  sub_264B40194();

  swift_beginAccess();
  v41 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_2649D7C40(0, v41[2] + 1, 1, v41);
    *(v3 + 24) = v41;
  }

  v44 = v41[2];
  v43 = v41[3];
  if (v44 >= v43 >> 1)
  {
    v41 = sub_2649D7C40(v43 > 1, v44 + 1, 1, v41);
  }

  v41[2] = v44 + 1;
  v45 = *(v59 + 80);
  sub_2649D875C(v38, v41 + ((v45 + 32) & ~v45) + *(v59 + 72) * v44);
  *(v3 + 24) = v41;
  aBlock = v3;
  swift_getKeyPath();
  sub_264B40184();

  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  v46 = sub_264B41554();
  v47 = v62;
  sub_264B40EF4();
  v48 = v63;
  sub_264B40F24();
  v64 = *(v64 + 8);
  (v64)(v47, v71);
  v49 = v61;
  sub_2649D86F8(v72, v61);
  v50 = swift_allocObject();
  *(v50 + 16) = v3;
  sub_2649D875C(v49, v50 + ((v45 + 24) & ~v45));
  v78 = sub_2649D8894;
  v79 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2649D68F4;
  v77 = &block_descriptor;
  v51 = _Block_copy(&aBlock);

  v52 = v65;
  sub_264B40EC4();
  v73 = MEMORY[0x277D84F90];
  sub_2649D8ED4(&qword_27FF892C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  v53 = v67;
  v54 = v70;
  sub_264B41684();
  MEMORY[0x266748800](v48, v52, v53, v51);
  _Block_release(v51);

  (*(v69 + 8))(v53, v54);
  (*(v66 + 8))(v52, v68);
  (v64)(v48, v71);
  sub_2649D8910(v72);
}

uint64_t sub_2649D64D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiablePoint();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v16 = a1;
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  swift_beginAccess();
  v8 = *(a1 + 24);
  v14 = a2;

  v9 = sub_2649D66E8(sub_2649D8B60, v13, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    swift_getKeyPath();
    v15 = a1;
    sub_264B40174();

    v15 = a1;
    swift_getKeyPath();
    sub_264B40194();

    swift_beginAccess();
    sub_2649D67D4(v9, v7);
    sub_2649D8910(v7);
    swift_endAccess();
    v15 = a1;
    swift_getKeyPath();
    sub_264B40184();
  }

  return result;
}

uint64_t sub_2649D66E8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for IdentifiablePoint() - 8);
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

size_t sub_2649D67D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264AD39A8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for IdentifiablePoint() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2649D875C(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2649D68F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2649D6938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AF8, &qword_264B44EF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  swift_getKeyPath();
  v14 = v0;
  sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
  sub_264B40174();

  if (*(v0 + 48))
  {
    v5 = *(v0 + 48);

    sub_264B40994();
  }

  sub_2649D8B90(0, &qword_27FF88B00, 0x277CBEBB8);
  v6 = [objc_opt_self() mainRunLoop];
  v7 = *MEMORY[0x277CBE738];
  v8 = sub_264B415F4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_264B415D4();

  sub_2649D8BD8(v4);
  v14 = v9;
  sub_264B415C4();
  sub_2649D8ED4(&qword_27FF88B08, MEMORY[0x277CC9DF0]);
  v10 = sub_264B40A24();

  v14 = v10;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88B10, &qword_264B44EF8);
  sub_2649CB4C8(&qword_27FF88B18, &qword_27FF88B10, &qword_264B44EF8);
  v11 = sub_264B40B54();

  return sub_2649D4DA4(v11);
}

uint64_t sub_2649D6C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_264B40EB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264B40EE4();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_264B40F04();
  v42 = *(v49 - 8);
  v10 = *(v42 + 64);
  v11 = MEMORY[0x28223BE20](v49);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v48 = v3;
  v47 = v4;
  v46 = v7;
  if (Strong)
  {
    if (*(Strong + 40) == 1)
    {
      *(Strong + 40) = 1;
    }

    else
    {
      v16 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v38 - 2) = v16;
      *(&v38 - 8) = 1;
      aBlock[0] = v16;
      sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
      sub_264B40164();
    }
  }

  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  if (v18)
  {
    v19 = v18;
    swift_getKeyPath();
    aBlock[0] = v19;
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
    sub_264B40174();

    swift_beginAccess();
    v20 = *(v19 + 16);

    v40 = a2;
    v39 = v13;
    if (v20 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264B41884())
    {
      v22 = 0;
      v23 = v20 & 0xC000000000000001;
      v24 = v20 & 0xFFFFFFFFFFFFFF8;
      v51 = v20;
      v50 = v20 & 0xC000000000000001;
      while (v23)
      {
        v26 = MEMORY[0x266748A70](v22, v20);
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_19;
        }

LABEL_15:
        if (*(v26 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke))
        {
          *(v26 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke) = 1;
        }

        else
        {
          v25 = swift_getKeyPath();
          v52 = &v38;
          MEMORY[0x28223BE20](v25);
          *(&v38 - 2) = v26;
          *(&v38 - 8) = 1;
          aBlock[0] = v26;
          sub_2649D8ED4(&qword_27FF88B20, type metadata accessor for Stroke);
          sub_264B40164();

          v23 = v50;
          v20 = v51;
        }

        ++v22;
        if (v27 == i)
        {
          goto LABEL_22;
        }
      }

      if (v22 >= *(v24 + 16))
      {
        goto LABEL_20;
      }

      v26 = *(v20 + 8 * v22 + 32);

      v27 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    a2 = v40;
    v13 = v39;
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = v28;
    swift_getKeyPath();
    aBlock[0] = v29;
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
    sub_264B40174();

    v30 = *(v29 + 48);

    if (v30)
    {
      sub_264B40994();
    }
  }

  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  v31 = sub_264B41554();
  sub_264B40EF4();
  v32 = v41;
  sub_264B40F24();
  v52 = *(v42 + 8);
  (v52)(v13, v49);
  aBlock[4] = sub_2649D8F1C;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_57;
  v33 = _Block_copy(aBlock);

  v34 = v43;
  sub_264B40EC4();
  v53 = MEMORY[0x277D84F90];
  sub_2649D8ED4(&qword_27FF892C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  v35 = v45;
  v36 = v48;
  sub_264B41684();
  MEMORY[0x266748800](v32, v34, v35, v33);
  _Block_release(v33);

  (*(v47 + 8))(v35, v36);
  (*(v44 + 8))(v34, v46);
  (v52)(v32, v49);
}

uint64_t sub_2649D74C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v2 = MEMORY[0x277D84F90];
    v3 = 0x27FF88000uLL;
    if (Strong)
    {
      v4 = Strong;
      swift_getKeyPath();
      sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
      sub_264B40174();

      swift_beginAccess();
      v5 = *(v4 + 16);

      v13 = v2;
      if (v5 >> 62)
      {
        goto LABEL_18;
      }

      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        while (1)
        {
          v7 = 0;
          v3 = &qword_27FF88B20;
          while ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x266748A70](v7, v5);
            v10 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_15:
              __break(1u);
LABEL_16:
              v3 = 0x27FF88000;
              goto LABEL_19;
            }

LABEL_11:
            swift_getKeyPath();
            sub_2649D8ED4(&qword_27FF88B20, type metadata accessor for Stroke);
            sub_264B40174();

            if (*(v9 + OBJC_IVAR____TtC16ScreenSharingKit6Stroke__clearStroke))
            {
            }

            else
            {
              sub_264B417D4();
              v8 = *(v13 + 16);
              sub_264B41804();
              sub_264B41814();
              sub_264B417E4();
            }

            ++v7;
            if (v10 == v6)
            {
              goto LABEL_16;
            }
          }

          if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v6 = sub_264B41884();
          if (!v6)
          {
            goto LABEL_19;
          }
        }

        v9 = *(v5 + 8 * v7 + 32);

        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }

LABEL_19:
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = *(v3 + 2656);
    sub_2649D8ED4(&qword_27FF88A68, type metadata accessor for ScreenSharingAnnotationViewModel);
    sub_264B40164();
  }

  return result;
}

char *ScreenSharingAnnotationViewModel.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC16ScreenSharingKit32ScreenSharingAnnotationViewModel___observationRegistrar;
  v5 = sub_264B401B4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t ScreenSharingAnnotationViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC16ScreenSharingKit32ScreenSharingAnnotationViewModel___observationRegistrar;
  v5 = sub_264B401B4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2649D7958(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_264B41884();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_264B41884();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_264AD3904();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2649D8C80(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_2649D7A48(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_2649D8370(result, v11, 1, v3, &qword_27FF88AE8, &unk_264B50DE0, &unk_27FF8AA30, &qword_264B44EE0);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2649D7B70(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_264B400C4() & 1;
}

size_t sub_2649D7C40(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AF0, &qword_264B44EE8);
  v10 = *(type metadata accessor for IdentifiablePoint() - 8);
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
  v15 = *(type metadata accessor for IdentifiablePoint() - 8);
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

char *sub_2649D7E18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA0, &qword_264B44E70);
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

char *sub_2649D7F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A98, &unk_264B57CC0);
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

size_t sub_2649D8028(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A90, &qword_264B44E58);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
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

void *sub_2649D8218(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AD8, &qword_264B44EC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AE0, &unk_264B44ED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2649D8370(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2649D84B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA8, &qword_264B44E78);
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

void *sub_2649D85C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AB8, &qword_264B44EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AC0, &qword_264B44EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2649D86F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiablePoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D875C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiablePoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649D87C0()
{
  v1 = *(type metadata accessor for IdentifiablePoint() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_264B40104();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2649D8894()
{
  v1 = *(type metadata accessor for IdentifiablePoint() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2649D64D4(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2649D8910(uint64_t a1)
{
  v2 = type metadata accessor for IdentifiablePoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649D8974()
{
  result = sub_264B401B4();
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

uint64_t sub_2649D8AEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2649D4DA4(v4);
}

uint64_t sub_2649D8B18()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t sub_2649D8B90(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2649D8BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AF8, &qword_264B44EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2649D8C40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2649D8C80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_264B41884();
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
      result = sub_264B41884();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2649CB4C8(&qword_27FF88B30, &qword_27FF88B28, &qword_264B57EE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88B28, &qword_264B57EE0);
            v9 = sub_2649D8E24(v13, i, a3);
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
        type metadata accessor for Stroke();
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

uint64_t (*sub_2649D8E24(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266748A70](a2, a3);
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
    *v3 = v5;
    return sub_2649D8EA4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2649D8ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MockRTIStateCoordinator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t MockRTIStateCoordinator.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_2649D8FDC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2649D9070(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2649D90D0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2649D9118(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 16) = a1;
  return result;
}

uint64_t sub_2649D916C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2649D91B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

ScreenSharingKit::TelemetryEvent_optional __swiftcall TelemetryEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B41AB4();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TelemetryEvent.rawValue.getter()
{
  result = 0x7463416C65676E61;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0x696472616F626E6FLL;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0x696472616F626E6FLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x536E6F6973736573;
      break;
    case 9:
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x456E6F6973736573;
      break;
    case 0xB:
      result = 0x54485444646E6573;
      break;
    case 0xC:
      result = 0x44485444646E6573;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
      result = 0x656C416F69647561;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 0x11:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0x6F72444E67617264;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_2649D9604(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = TelemetryEvent.rawValue.getter();
  v4 = v3;
  if (v2 == TelemetryEvent.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_264B41AA4();
  }

  return v7 & 1;
}

uint64_t sub_2649D96A0()
{
  v1 = *v0;
  sub_264B41B84();
  TelemetryEvent.rawValue.getter();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_2649D9708()
{
  v2 = *v0;
  TelemetryEvent.rawValue.getter();
  sub_264B41084();
}

uint64_t sub_2649D976C()
{
  sub_264B41084();
}

uint64_t sub_2649D98E4()
{
  v1 = *v0;
  sub_264B41B84();
  TelemetryEvent.rawValue.getter();
  sub_264B41084();

  return sub_264B41BB4();
}

unint64_t sub_2649D9954@<X0>(unint64_t *a1@<X8>)
{
  result = TelemetryEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ScreenSharingKit::TelemetryEventPayloadKeys_optional __swiftcall TelemetryEventPayloadKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B418D4();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TelemetryEventPayloadKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E6F73616552;
    v7 = 0x6E6F697461727544;
    if (v1 != 2)
    {
      v7 = 0x646F43726F727245;
    }

    if (*v0)
    {
      v6 = 0x6F436E6F73616552;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6A624F726F727245;
    v3 = 0x7461746E6569724FLL;
    if (v1 != 7)
    {
      v3 = 0x795468636E75614CLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x727453726F727245;
    if (v1 != 4)
    {
      v4 = 0x707954726F727245;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2649D9B44()
{
  v1 = *v0;
  sub_264B41B84();
  sub_2649D976C();
  return sub_264B41BB4();
}

uint64_t sub_2649D9B94()
{
  v1 = *v0;
  sub_264B41B84();
  sub_2649D976C();
  return sub_264B41BB4();
}

uint64_t sub_2649D9BE4@<X0>(uint64_t *a1@<X8>)
{
  result = TelemetryEventPayloadKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ScreenSharingKit::TelemetryErrorReportingCategories_optional __swiftcall TelemetryErrorReportingCategories.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

ScreenSharingKit::TelemetrySessionEndedReason_optional __swiftcall TelemetrySessionEndedReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 24;
  switch(rawValue)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v2 = 1;
      goto LABEL_39;
    case 2:
      v2 = 2;
      goto LABEL_39;
    case 3:
      v2 = 3;
      goto LABEL_39;
    case 4:
      v2 = 4;
      goto LABEL_39;
    case 5:
      v2 = 5;
      goto LABEL_39;
    case 6:
      v2 = 6;
      goto LABEL_39;
    case 7:
      v2 = 7;
      goto LABEL_39;
    case 8:
      v2 = 8;
      goto LABEL_39;
    case 9:
      v2 = 9;
      goto LABEL_39;
    case 10:
      v2 = 10;
      goto LABEL_39;
    case 11:
      v2 = 11;
      goto LABEL_39;
    case 12:
      v2 = 12;
      goto LABEL_39;
    case 13:
      v2 = 13;
      goto LABEL_39;
    case 14:
      v2 = 14;
      goto LABEL_39;
    case 15:
      v2 = 15;
      goto LABEL_39;
    case 16:
      v2 = 16;
      goto LABEL_39;
    case 17:
      v2 = 17;
      goto LABEL_39;
    case 18:
      v2 = 18;
      goto LABEL_39;
    case 19:
      v2 = 19;
      goto LABEL_39;
    case 20:
      v2 = 20;
      goto LABEL_39;
    case 21:
      v2 = 21;
      goto LABEL_39;
    case 22:
      v2 = 22;
      goto LABEL_39;
    case 23:
      v2 = 23;
LABEL_39:
      v3 = v2;
      goto LABEL_40;
    case 24:
LABEL_40:
      *v1 = v3;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    case 30:
      *v1 = 30;
      break;
    case 31:
      *v1 = 31;
      break;
    case 32:
      *v1 = 32;
      break;
    case 33:
      *v1 = 33;
      break;
    case 34:
      *v1 = 34;
      break;
    case 35:
      *v1 = 35;
      break;
    case 36:
      *v1 = 36;
      break;
    case 37:
      *v1 = 37;
      break;
    case 38:
      *v1 = 38;
      break;
    case 39:
      *v1 = 39;
      break;
    case 40:
      *v1 = 40;
      break;
    case 41:
      *v1 = 41;
      break;
    default:
      *v1 = 42;
      break;
  }

  return rawValue;
}

unint64_t sub_2649D9EB8()
{
  result = qword_27FF88B38;
  if (!qword_27FF88B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B38);
  }

  return result;
}

unint64_t sub_2649D9F40()
{
  result = qword_27FF88B50;
  if (!qword_27FF88B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B50);
  }

  return result;
}

uint64_t sub_2649D9FC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2649DA01C()
{
  result = qword_27FF88B68;
  if (!qword_27FF88B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B68);
  }

  return result;
}

unint64_t sub_2649DA074()
{
  result = qword_27FF88B70;
  if (!qword_27FF88B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetryEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnotationServiceClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnotationServiceClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetrySessionEndedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD7)
  {
    goto LABEL_17;
  }

  if (a2 + 41 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 41) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 41;
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

      return (*a1 | (v4 << 8)) - 41;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 41;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v8 = v6 - 42;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetrySessionEndedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD7)
  {
    v4 = 0;
  }

  if (a2 > 0xD6)
  {
    v5 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
    *result = a2 + 41;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

const char *OnenessFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "AppLaunch";
  }

  else
  {
    return "RemoteTextInput";
  }
}

uint64_t OnenessFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_2649DA608()
{
  result = qword_27FF88B78;
  if (!qword_27FF88B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88B78);
  }

  return result;
}

const char *sub_2649DA670()
{
  if (*v0)
  {
    return "AppLaunch";
  }

  else
  {
    return "RemoteTextInput";
  }
}

uint64_t getEnumTagSinglePayload for OnenessFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2649DA74C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

id sub_2649DA7C0()
{
  [*&v0[OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder] stop];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FigCameraBackedDeviceSensorObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FigCameraBackedDeviceSensorObserver()
{
  result = qword_27FF88BA0;
  if (!qword_27FF88BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2649DA960()
{
  v1 = sub_264B41544();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v1);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264B414F4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_264B40EE4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver__sensorsInUse;
  v32 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  sub_264B40A44();
  (*(v9 + 32))(v0 + v13, v12, v8);
  v26 = OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinderDelegateQueue;
  sub_2649CB2F0();
  sub_264B40EC4();
  v32 = MEMORY[0x277D84F90];
  sub_2649DB7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_2649CB4C8(&qword_27FF88CB0, &qword_27FF88CA8, &unk_264B471C0);
  sub_264B41684();
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  v14 = sub_264B41574();
  v15 = v27;
  *&v27[v26] = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277CF3B78]) init];
  *&v15[OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder] = v16;
  v17 = type metadata accessor for FigCameraBackedDeviceSensorObserver();
  v31.receiver = v15;
  v31.super_class = v17;
  v18 = objc_msgSendSuper2(&v31, sel_init);
  v19 = OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder;
  v20 = *&v18[OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinder];
  v21 = *&v18[OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinderDelegateQueue];
  v22 = v18;
  [v20 setDelegate:v22 queue:v21];
  v23 = *&v18[v19];
  sub_264A240D0(MEMORY[0x277D84F90]);
  v24 = sub_264B40F54();

  [v23 startWithOptions_];

  return v22;
}

void sub_2649DAD84()
{
  sub_2649DAE24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2649DAE24()
{
  if (!qword_27FF88BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF89D80, &qword_264B45588);
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF88BB0);
    }
  }
}

uint64_t sub_2649DAF78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF88C80, &unk_264B455A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  sub_264B40A54();
  swift_endAccess();
  sub_2649CB4C8(&qword_27FF88C90, &unk_27FF88C80, &unk_264B455A0);
  v7 = sub_264B40AB4();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_2649DB0DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_2649DB15C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_264B40A94();
}

uint64_t sub_2649DB1D4(void *a1)
{
  v2 = v1;
  v4 = sub_264B40F14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);
  v10 = a1;
  v11 = sub_264B40944();
  v12 = sub_264B414B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    result = swift_slowAlloc();
    v23 = result;
    *v13 = 136315138;
    if (!a1)
    {
      goto LABEL_10;
    }

    v15 = result;

    [v10 clientAuditToken];
    type metadata accessor for audit_token_t(0);
    v16 = sub_264B41064();
    v18 = sub_2649CC004(v16, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2649C6000, v11, v12, "Application %s is using the camera", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266749940](v15, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v19 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinderDelegateQueue);
  *v8 = v19;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v20 = v19;
  LOBYTE(v19) = sub_264B40F34();
  result = (*(v5 + 8))(v8, v4);
  if (v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = sub_264B40A74();
    sub_264A12A64(&v23, 0);
    v21(v24, 0);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2649DB4B8(void *a1)
{
  v2 = v1;
  v4 = sub_264B40F14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);
  v10 = a1;
  v11 = sub_264B40944();
  v12 = sub_264B414B4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    result = swift_slowAlloc();
    v23 = result;
    *v13 = 136315138;
    if (!a1)
    {
      goto LABEL_10;
    }

    v15 = result;

    [v10 clientAuditToken];
    type metadata accessor for audit_token_t(0);
    v16 = sub_264B41064();
    v18 = sub_2649CC004(v16, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2649C6000, v11, v12, "Application %s is no longer using the camera", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266749940](v15, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v19 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit35FigCameraBackedDeviceSensorObserver_cameraViewfinderDelegateQueue);
  *v8 = v19;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v20 = v19;
  LOBYTE(v19) = sub_264B40F34();
  result = (*(v5 + 8))(v8, v4);
  if (v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = sub_264B40A74();
    sub_264AA9F00(0, &v23);
    v21(v24, 0);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_2649DB7A4()
{
  result = qword_27FF88CA0;
  if (!qword_27FF88CA0)
  {
    sub_264B414F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88CA0);
  }

  return result;
}

uint64_t ControlMessageSession.Role.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_2649DB88C()
{
  result = qword_27FF88CC0;
  if (!qword_27FF88CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88CC0);
  }

  return result;
}

uint64_t sub_2649DB8F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();
}

uint64_t sub_2649DB968()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_2649DB9DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_2649DBA50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_sessionStateContinuation;
  swift_beginAccess();
  sub_2649DD3D0(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t sub_2649DBB88()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB0, &qword_264B46F90) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649DBCD0, v0, 0);
}

uint64_t sub_2649DBCD0()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[5] = 3;

  sub_264B40A94();
  v5 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_sessionStateContinuation;
  swift_beginAccess();
  sub_2649DDAB0(v4 + v5, v1);
  v6 = *(v3 + 48);
  if (v6(v1, 1, v2))
  {
    sub_2649D04D4(v0[13], &qword_27FF88D78, &qword_264B45850);
    v7 = 1;
  }

  else
  {
    v8 = v0[13];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    (*(v10 + 16))(v9, v8, v11);
    sub_2649D04D4(v8, &qword_27FF88D78, &qword_264B45850);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264B40A84();

    v0[7] = v0[6];
    sub_264B412A4();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v12 = v0[14];
  v13 = v0[12];
  v14 = v0[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB8, &unk_264B46FB0);
  (*(*(v15 - 8) + 56))(v12, v7, 1, v15);
  sub_2649D04D4(v12, &qword_27FF88DB0, &qword_264B46F90);
  sub_2649DDAB0(v4 + v5, v13);
  v16 = v6(v13, 1, v14);
  v17 = v0[12];
  if (v16)
  {
    sub_2649D04D4(v0[12], &qword_27FF88D78, &qword_264B45850);
  }

  else
  {
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];
    (*(v19 + 16))(v18, v0[12], v20);
    sub_2649D04D4(v17, &qword_27FF88D78, &qword_264B45850);
    sub_264B412B4();
    (*(v19 + 8))(v18, v20);
  }

  v22 = v0[13];
  v21 = v0[14];
  v24 = v0[11];
  v23 = v0[12];

  v25 = v0[1];

  return v25();
}

uint64_t sub_2649DC01C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for MockMediaStream();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtC16ScreenSharingKit15MockMediaStream_stateContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + 24) = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  v10 = sub_264B40A74();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v12;
  *v12 = 0x8000000000000000;
  sub_264A22858(v7, v3, isUniquelyReferenced_nonNull_native);
  *v12 = v17;
  v10(v16, 0);

  a2[3] = v4;
  a2[4] = &off_28765F3A8;
  *a2 = v7;
  return result;
}

uint64_t sub_2649DC1B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

void *sub_2649DC21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_264A92948(&unk_287655B30);
  v5 = type metadata accessor for MockControlMessageStream();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = sub_2649E2724(a1, a2, v4);
  swift_getKeyPath();
  swift_getKeyPath();

  v9 = sub_264B40A74();
  v11 = v10;
  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_264A229A4(v8, a1, a2, isUniquelyReferenced_nonNull_native);

  *v11 = v16;
  v9(v15, 0);

  return v8;
}

uint64_t sub_2649DC37C()
{
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_sessionStateContinuation, &qword_27FF88D78, &qword_264B45850);
  v1 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__currentState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA0, &qword_264B45878);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__startSessionCalled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__videoLayer;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D90, &qword_264B45868);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__mediaStreamsByType;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D88, &qword_264B45860);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__streamsByIdentifier;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D80, &qword_264B45858);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MockMediaTransportClientSession()
{
  result = qword_27FF88CF0;
  if (!qword_27FF88CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2649DC5AC()
{
  sub_2649DC89C(319, &qword_27FF88D00, &qword_27FF88D08, &qword_264B49A40, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_2649DC850(319, &qword_27FF88D10);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_2649DC850(319, &qword_27FF8A990);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_2649DC89C(319, &qword_27FF88D18, &qword_27FF88D20, &qword_264B456F0, MEMORY[0x277CBCED0]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_2649DC89C(319, &qword_27FF88D28, &qword_27FF88D30, &qword_264B45710, MEMORY[0x277CBCED0]);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_2649DC89C(319, &qword_27FF88D38, &qword_27FF88D40, qword_264B45718, MEMORY[0x277CBCED0]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2649DC850(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_264B40AA4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2649DC89C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2649DC90C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2649DC930, v2, 0);
}

uint64_t sub_2649DC930()
{
  v1 = *(v0 + 32);
  sub_2649DC01C(*(v0 + 24), *(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

void *sub_2649DC9A0(uint64_t a1, uint64_t a2)
{
  result = sub_2649DC21C(a1, a2);
  if (v2)
  {
    return &off_287657A40;
  }

  return result;
}

uint64_t sub_2649DC9E8()
{
  sub_2649DD2A4();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2649DCA74(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2649DCA94, v1, 0);
}

uint64_t sub_2649DCA94()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;

  v3 = v2;
  sub_264B40A94();
  v4 = v0[1];

  return v4();
}

uint64_t sub_2649DCB4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D60, &qword_264B457F8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649DCC18, v1, 0);
}

uint64_t sub_2649DCC18()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = 1;

  sub_264B40A94();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v4);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D68, &qword_264B46FC0);
  v5[4] = sub_2649DD308();
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_264B412E4();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2649DCD64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649DCDF0;

  return sub_2649DBB88();
}

uint64_t sub_2649DCDF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2649DCEE8(uint64_t a1)
{
  result = sub_2649DCF70(&qword_27FF88D48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2649DCF2C(uint64_t a1)
{
  result = sub_2649DCF70(&qword_27FF88D50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2649DCF70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MockMediaTransportClientSession();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2649DCFB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_2649DD034(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2649DDB20(v2);

  return sub_264B40A94();
}

uint64_t sub_2649DD0B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_2649DD130(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_2649DD1A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_2649DD228(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_264B40A94();
}

unint64_t sub_2649DD2A4()
{
  result = qword_27FF88D58;
  if (!qword_27FF88D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88D58);
  }

  return result;
}

unint64_t sub_2649DD308()
{
  result = qword_27FF88D70;
  if (!qword_27FF88D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88D68, &qword_264B46FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88D70);
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

uint64_t sub_2649DD3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2649DD440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_2649DD4BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_2649DD534(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = a4;
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D80, &qword_264B45858);
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v41 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D88, &qword_264B45860);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v37 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D90, &qword_264B45868);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v37);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA0, &qword_264B45878);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - v23;

  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  v25 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_sessionStateContinuation;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  (*(*(v26 - 8) + 56))(v4 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__currentState;
  v46 = 0;
  sub_264B40A44();
  (*(v21 + 32))(v4 + v27, v24, v20);
  v28 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__startSessionCalled;
  LOBYTE(v46) = 0;
  sub_264B40A44();
  (*(v16 + 32))(v4 + v28, v19, v15);
  v29 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__videoLayer;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D20, &qword_264B456F0);
  sub_264B40A44();
  (*(v11 + 32))(v4 + v29, v14, v37);
  v30 = v4 + OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession_discoveryBluetoothRSSIThreshold;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__mediaStreamsByType;
  v32 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D30, &qword_264B45710);
  v33 = v38;
  sub_264B40A44();
  (*(v39 + 32))(v4 + v31, v33, v40);
  v34 = OBJC_IVAR____TtC16ScreenSharingKit31MockMediaTransportClientSession__streamsByIdentifier;
  v46 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D40, qword_264B45718);
  v35 = v41;
  sub_264B40A44();
  (*(v42 + 32))(v4 + v34, v35, v43);
  *v30 = v44;
  *(v30 + 8) = v45 & 1;
  return v4;
}

uint64_t sub_2649DDAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2649DDB20(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

unint64_t sub_2649DDB44()
{
  result = qword_27FF88DC0;
  if (!qword_27FF88DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88DC0);
  }

  return result;
}

uint64_t sub_2649DDB98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DE0, &qword_264B45B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649DE374();
  sub_264B41BD4();
  v18[15] = *v3;
  v18[14] = 0;
  sub_2649DE41C();
  sub_264B41A24();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v18[13] = 1;
  sub_264B419E4();
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v18[12] = 2;
  sub_264B419E4();
  v16 = *(v3 + 40);
  v17 = *(v3 + 48);
  v18[11] = 3;
  sub_264B419E4();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2649DDD70()
{
  v1 = 1701869940;
  v2 = 0x79546D6165727473;
  if (*v0 != 2)
  {
    v2 = 0x496E6F6973736573;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2649DDDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2649DE588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2649DDE18(uint64_t a1)
{
  v2 = sub_2649DE374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2649DDE54(uint64_t a1)
{
  v2 = sub_2649DE374();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2649DDE90@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2649DE078(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_2649DDEF8()
{
  BYTE8(v2) = 0;
  sub_264B41754();
  MEMORY[0x266748390](0x203A6570797420, 0xE700000000000000);
  *&v2 = *v0;
  sub_264B41864();
  MEMORY[0x266748390](0xD000000000000013, 0x8000000264B59570);
  MEMORY[0x266748390](*(v0 + 1), *(v0 + 2));
  return *(&v2 + 1);
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

uint64_t sub_2649DDFD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2649DE01C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2649DE078@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DC8, &qword_264B45B10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2649DE374();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = 0;
  sub_2649DE3C8();
  sub_264B41984();
  v11 = v38;
  v36 = 1;
  v12 = sub_264B41914();
  v32 = v11;
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v31 = v15;
  v16 = 0xE000000000000000;
  if (v13)
  {
    v16 = v13;
  }

  v33 = v16;
  v35 = 2;
  v17 = sub_264B41914();
  v19 = v18;
  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  v29 = v17;
  v30 = v20;
  v34 = 3;
  v21 = sub_264B41914();
  if (v19)
  {
    v23 = v29;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  (*(v6 + 8))(v9, v5);
  v26 = v33;

  v27 = v30;

  __swift_destroy_boxed_opaque_existential_0(a1);

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v26;
  *(a2 + 24) = v23;
  *(a2 + 32) = v27;
  *(a2 + 40) = v24;
  *(a2 + 48) = v25;
  return result;
}