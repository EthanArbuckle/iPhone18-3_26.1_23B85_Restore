uint64_t sub_25EC472C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25EC47328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_25EC47378()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25EC473B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14PolarisRuntime11GraphConfigVIegl_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25EC47404(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25EC47414()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25EC4744C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25EC474A4@<X0>(_DWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  result = sub_25EC79A94();
  *a1 = v3;
  return result;
}

uint64_t sub_25EC474F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
}

uint64_t sub_25EC4754C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_pbsWriter;
  swift_beginAccess();
  *a2 = *(v3 + v4);
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

uint64_t sub_25EC476AC(uint64_t a1, int a2)
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

uint64_t sub_25EC476CC(uint64_t result, int a2, int a3)
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

uint64_t sub_25EC4772C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EC4774C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_25EC4779C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25EC7A074();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25EC508F0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25EC508F0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25EC7A064();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25EC7A044();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25EC7A044();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25EC7A074();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25EC508F0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25EC7A074();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25EC508F0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25EC508F0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25EC7A044();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC47BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(void *), uint64_t a9, unint64_t a10)
{
  v18 = a9;
  v17 = a10;
  v41 = 47;
  v42 = 0xE100000000000000;
  v39 = &v41;

  v20 = sub_25EC4779C(0x7FFFFFFFFFFFFFFFLL, 1, a8, v38, a5, a6, v19);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = (v20 + 32 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = a7;
    v26 = a4;
    v27 = a1;
    v28 = a2;
    v29 = v22[2];
    v30 = v22[3];
    swift_bridgeObjectRetain_n();

    a5 = MEMORY[0x25F8CB850](v23, v24, v29, v30);
    a6 = v31;
    a2 = v28;
    a1 = v27;
    a4 = v26;
    a7 = v25;
    v17 = a10;
    v18 = a9;
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25EC7A890;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_25EC7A144();

  v41 = v18;
  v42 = v17;
  MEMORY[0x25F8CB870](a5, a6);

  MEMORY[0x25F8CB870](58, 0xE100000000000000);
  v40 = a7;
  v33 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v33);

  MEMORY[0x25F8CB870](32, 0xE100000000000000);
  MEMORY[0x25F8CB870](a3, a4);
  MEMORY[0x25F8CB870](2108704, 0xE300000000000000);
  MEMORY[0x25F8CB870](a1, a2);
  v34 = v41;
  v35 = v42;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 32) = v34;
  *(v32 + 40) = v35;
  sub_25EC7A2B4();
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

uint64_t sub_25EC47EB0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25EC7A244() & 1;
  }
}

void sub_25EC47F1C(uint64_t a1, unint64_t *a2)
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

uint64_t PolarisMutex.__allocating_init()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_mutexattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisMutex.init()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_mutexattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL sub_25EC48110()
{
  swift_beginAccess();
  v1 = pthread_mutex_trylock((v0 + 16));
  swift_endAccess();
  return v1 == 0;
}

uint64_t PolarisCondition.__allocating_init()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_condattr_init(&v3);
  swift_beginAccess();
  pthread_cond_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_condattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisCondition.init()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_condattr_init(&v3);
  swift_beginAccess();
  pthread_cond_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_condattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisCondition.wait(mutex:)(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();
  pthread_cond_wait((v1 + 16), (a1 + 16));
  swift_endAccess();
  return swift_endAccess();
}

uint64_t sub_25EC48388(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  return swift_endAccess();
}

uint64_t sub_25EC483F0(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return v1;
}

uint64_t sub_25EC48460(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

unint64_t sub_25EC485D8()
{
  result = sub_25EC4E1E0(MEMORY[0x277D84F90]);
  qword_27FD36648 = result;
  return result;
}

uint64_t sub_25EC48618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_25EC79874();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = (v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_25EC798D4();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  result = sub_25EC79DF4();
  if (result < 0)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    v28[0] = a2;
    v28[1] = v2;
    if (result)
    {
      v14 = 0;
      v29 = *MEMORY[0x277D3E780];
      v15 = (v5 + 104);
      v28[2] = v9 + 32;
      v16 = MEMORY[0x277D84F90];
      v30 = v12;
      v31 = result;
      do
      {
        result = sub_25EC79E04();
        if ((result & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8CB970](v14, result);
        }

        else
        {
          if (v14 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v17 = *(result + 8 * v14 + 32);
        }

        v18 = sub_25EC79E14();
        v20 = v19;
        v22 = v21;

        if (v22)
        {

          sub_25EC4E124();
          swift_allocError();
          *v27 = 0;
          *(v27 + 4) = 10;
          return swift_willThrow();
        }

        *v8 = v18;
        v8[1] = v20;
        (*v15)(v8, v29, v33);
        v23 = v30;
        sub_25EC79894();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_25EC509FC(0, v16[2] + 1, 1, v16);
        }

        v24 = v31;
        v26 = v16[2];
        v25 = v16[3];
        if (v26 >= v25 >> 1)
        {
          v16 = sub_25EC509FC(v25 > 1, v26 + 1, 1, v16);
        }

        ++v14;
        v16[2] = v26 + 1;
        (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v23, v32);
      }

      while (v24 != v14);
    }

    return sub_25EC797C4();
  }

  return result;
}

uint64_t sub_25EC48944()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25EC4897C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
}

uint64_t sub_25EC489AC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_25EC48A14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_25EC48A54(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v4 = *(a2 + 24);
  swift_beginAccess();
  v5 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_25EC50A24(0, v5[2] + 1, 1, v5);
    *(v4 + 16) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_25EC50A24((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a2;
  v9[5] = a1;
  *(v4 + 16) = v5;
  swift_endAccess();
}

uint64_t sub_25EC48B40(uint64_t a1, int a2)
{
  v3 = v2;
  type metadata accessor for DataInputController();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  swift_beginAccess();

  MEMORY[0x25F8CB8A0](v7);
  if (*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_25EC7A0A4();
  }

  sub_25EC7A0C4();
  return swift_endAccess();
}

uint64_t sub_25EC48C0C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v98 = a1;
  v91 = sub_25EC79704();
  v90 = *(v91 - 8);
  v5 = *(v90 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v86 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v85 - v8;
  v104 = sub_25EC79CC4();
  v9 = *(v104 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v104);
  v103 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v107 = &v85 - v13;
  v87 = sub_25EC797F4();
  v88 = *(v87 - 8);
  v14 = *(v88 + 64);
  v15 = MEMORY[0x28223BE20](v87);
  v97 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v85 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361D8, &qword_25EC7AD68);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v85 - v20;
  v22 = sub_25EC79774();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_25EC79794();
  v93 = *(v92 - 8);
  v27 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1[2];
  sub_25EC79984();
  (*(v23 + 104))(v26, *MEMORY[0x277D3E770], v22);
  v31 = sub_25EC79D54();
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  v94 = v29;
  sub_25EC79784();
  swift_beginAccess();
  v96 = v4;
  v32 = v4[8];
  if (v32 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25EC7A184())
  {
    v34 = v97;
    if (i)
    {
      v106 = MEMORY[0x277D84F90];

      sub_25EC5B72C(0, i & ~(i >> 63), 0);
      if ((i & 0x8000000000000000) == 0)
      {
        v35 = 0;
        v36 = v106;
        v101 = i;
        v102 = v32 & 0xC000000000000001;
        v99 = v32 & 0xFFFFFFFFFFFFFF8;
        v100 = v9 + 32;
        while (1)
        {
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v102)
          {
            v38 = MEMORY[0x25F8CB970](v35, v32);
          }

          else
          {
            if (v35 >= *(v99 + 16))
            {
              goto LABEL_83;
            }

            v38 = *(v32 + 8 * v35 + 32);
          }

          v39 = *(v38 + 16);
          v40 = *(v38 + 24);
          v41 = sub_25EC79E24();
          if (v3)
          {

            (*(v93 + 8))(v94, v92);
          }

          v42 = v41;
          swift_beginAccess();
          v43 = *(v38 + 32);
          *(v38 + 32) = v42;

          sub_25EC48618(v42, v107);
          swift_endAccess();

          v106 = v36;
          v45 = *(v36 + 16);
          v44 = *(v36 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_25EC5B72C(v44 > 1, v45 + 1, 1);
            v36 = v106;
          }

          *(v36 + 16) = v45 + 1;
          (*(v9 + 32))(v36 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v45, v107, v104);
          ++v35;
          if (v37 == v101)
          {

            v34 = v97;
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_82;
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      sub_25EC797C4();
      v46 = v96;
      swift_beginAccess();
      v32 = v46[7];
      if (!(v32 >> 62))
      {
        v47 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_19;
      }
    }

    v47 = sub_25EC7A184();
LABEL_19:
    if (!v47)
    {
      break;
    }

    v105 = MEMORY[0x277D84F90];

    sub_25EC5B72C(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
      goto LABEL_92;
    }

    v48 = 0;
    v49 = v105;
    v107 = v32 & 0xC000000000000001;
    v100 = v32 & 0xFFFFFFFFFFFFFF8;
    v101 = v9 + 32;
    v102 = v47;
    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v107)
      {
        v51 = MEMORY[0x25F8CB970](v48, v32);
      }

      else
      {
        if (v48 >= *(v100 + 16))
        {
          goto LABEL_86;
        }

        v51 = *(v32 + 8 * v48 + 32);
      }

      v52 = *(v51 + 32);
      v53 = sub_25EC79E44();
      if (v3)
      {

        (*(v88 + 8))(v95, v87);
        (*(v93 + 8))(v94, v92);
      }

      v54 = v53;
      swift_beginAccess();
      v55 = *(v51 + 40);
      *(v51 + 40) = v54;

      sub_25EC48618(v54, v103);
      swift_endAccess();

      v105 = v49;
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_25EC5B72C(v56 > 1, v57 + 1, 1);
        v49 = v105;
      }

      *(v49 + 16) = v57 + 1;
      (*(v9 + 32))(v49 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v57, v103, v104);
      ++v48;
      if (v50 == v102)
      {

        goto LABEL_33;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_33:
  result = sub_25EC797C4();
  if (!v96[4])
  {
    __break(1u);
    return result;
  }

  v59 = v96[5];
  v60 = v96[4];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v9 = v89;
  sub_25EC79714();
  swift_unknownObjectRelease();
  v32 = v90;
  v61 = v86;
  v62 = v91;
  (*(v90 + 16))(v86, v9, v91);
  if ((*(v32 + 88))(v61, v62) == *MEMORY[0x277D3E728])
  {
    sub_25EC47B5C(0xD000000000000017, 0x800000025EC80BC0, 0x2865747563657865, 0xEC000000293A7461, 0xD00000000000002CLL, 0x800000025EC80460, 272);
  }

  else
  {
    sub_25EC47B5C(0xD000000000000016, 0x800000025EC80BA0, 0x2865747563657865, 0xEC000000293A7461, 0xD00000000000002CLL, 0x800000025EC80460, 274);
    (*(v32 + 8))(v61, v62);
  }

  v34 = v96[8];
  if (!(v34 >> 62))
  {
    v63 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_39;
  }

LABEL_92:
  v63 = sub_25EC7A184();
LABEL_39:

  if (v63)
  {
    v64 = 0;
    v107 = v34 & 0xC000000000000001;
    while (1)
    {
      if (v107)
      {
        v65 = MEMORY[0x25F8CB970](v64, v34);
        v32 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v64 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v65 = *(v34 + 8 * v64 + 32);

        v32 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      swift_beginAccess();
      v9 = *(v65 + 32);
      if (!v9)
      {
LABEL_65:
        sub_25EC4E124();
        swift_allocError();
        *v72 = 2;
        *(v72 + 4) = 10;
        swift_willThrow();

        goto LABEL_78;
      }

      *(v65 + 32) = 0;
      v66 = *(v65 + 16);
      sub_25EC79E34();
      if (v3)
      {
        break;
      }

      ++v64;
      if (v32 == v63)
      {
        goto LABEL_51;
      }
    }

LABEL_79:

    (*(v90 + 8))(v89, v91);
    v81 = *(v88 + 8);
    v82 = v87;
    v81(v97, v87);
    v81(v95, v82);
    (*(v93 + 8))(v94, v92);
  }

  else
  {
LABEL_51:

    v67 = v96[7];
    if (v67 >> 62)
    {
      if (v67 < 0)
      {
        v83 = v96[7];
      }

      v68 = sub_25EC7A184();
    }

    else
    {
      v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v68)
    {
      v69 = 0;
      v107 = v67 & 0xC000000000000001;
      do
      {
        if (v107)
        {
          v70 = MEMORY[0x25F8CB970](v69, v67);
          v32 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v70 = *(v67 + 8 * v69 + 32);

          v32 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }
        }

        swift_beginAccess();
        v9 = *(v70 + 40);
        if (!v9)
        {
          goto LABEL_65;
        }

        *(v70 + 40) = 0;
        v71 = *(v70 + 32);
        sub_25EC79E54();
        if (v3)
        {
          goto LABEL_79;
        }

        ++v69;
      }

      while (v32 != v68);
    }

    v73 = v96;
    swift_beginAccess();
    v74 = v73[6];
    if (v74 >> 62)
    {
      if (v74 < 0)
      {
        v84 = v73[6];
      }

      v75 = sub_25EC7A184();
    }

    else
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v75)
    {
      v32 = 0;
      v9 = v74 & 0xC000000000000001;
      do
      {
        if (v9)
        {
          v76 = MEMORY[0x25F8CB970](v32, v74);
          v77 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_77;
          }
        }

        else
        {
          if (v32 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v76 = *(v74 + 8 * v32 + 32);

          v77 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_77:
            __break(1u);
            break;
          }
        }

        v78 = *(v76 + 24);
        sub_25EC79834();

        ++v32;
      }

      while (v77 != v75);
    }

LABEL_78:

    (*(v90 + 8))(v89, v91);
    v79 = *(v88 + 8);
    v80 = v87;
    v79(v97, v87);
    v79(v95, v80);
    return (*(v93 + 8))(v94, v92);
  }
}

void *TaskController.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return v0;
}

uint64_t TaskController.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_25EC49C18()
{
  v1 = *v0;
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](v1);
  return sub_25EC7A304();
}

uint64_t sub_25EC49C60()
{
  v1 = *v0;
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](v1);
  return sub_25EC7A304();
}

uint64_t sub_25EC49CA4()
{
  v1 = 0x7964616572;
  if (*v0 != 1)
  {
    v1 = 0x6E69747563657865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_25EC49D00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_25EC49D68()
{
  v1 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_25EC49DB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_25EC49E68(int a1, uint64_t a2)
{
  v3 = v2;
  v38 = *MEMORY[0x277D85DE8];
  v6 = sub_25EC79A64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25EC79A54();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v2 + 24) = sub_25EC79A44();
  v14 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController__graphConfig;
  v15 = sub_25EC79734();
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  type metadata accessor for PolarisMutex();
  v17 = swift_allocObject();
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 16) = 0u;
  v36.__sig = 0;
  *v36.__opaque = 0;
  pthread_mutexattr_init(&v36);
  swift_beginAccess();
  pthread_mutex_init((v17 + 16), &v36);
  swift_endAccess();
  pthread_mutexattr_destroy(&v36);
  *(v3 + v16) = v17;
  v18 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_cond;
  type metadata accessor for PolarisCondition();
  v19 = swift_allocObject();
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 16) = 0u;
  v36.__sig = 0;
  *v36.__opaque = 0;
  pthread_condattr_init(&v36);
  swift_beginAccess();
  pthread_cond_init((v19 + 16), &v36);
  swift_endAccess();
  pthread_condattr_destroy(&v36);
  *(v3 + v18) = v19;
  *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state) = 0;
  v20 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tailReceiver;
  (*(v7 + 104))(v10, *MEMORY[0x277D3E790], v6);
  v21 = sub_25EC799B4();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v37 = 1;
  *(v3 + v20) = sub_25EC79974();
  v24 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  *(v3 + v24) = sub_25EC4E708(MEMORY[0x277D84F90], &qword_27FD361B0, &unk_25EC7B4E0);
  v25 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_currentUniqueId;
  *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_currentUniqueId) = 0;
  *(v3 + 16) = a1;
  (*(v7 + 16))(v10, a2, v6);
  v26 = *(v21 + 48);
  v27 = *(v21 + 52);
  swift_allocObject();
  v37 = 0;
  *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headReceiver) = sub_25EC79974();
  v28 = *(v3 + v25);
  if (v28 >= 0xFFFF0000)
  {
    __break(1u);
  }

  *(v3 + v25) = v28 + 0x10000;
  v29 = sub_25EC79864();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headSender) = sub_25EC79844();
  v32 = *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headReceiver);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v3;
  sub_25EC79994();
  swift_unownedRelease();
  v33 = *(v3 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tailReceiver);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v3;
  sub_25EC79994();
  swift_unownedRelease();
  (*(v7 + 8))(a2, v6);
  v34 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_25EC4A2BC()
{
  sub_25EC4E124();
  swift_allocError();
  *v0 = 0;
  *(v0 + 4) = 10;
  return swift_willThrow();
}

uint64_t sub_25EC4A310()
{
  v1 = v0;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000029, 0x800000025EC80B00);
  v2 = *(v0 + 16);
  v3 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v3);

  MEMORY[0x25F8CB870](0x6D61726620746120, 0xEC0000003D644965);
  v4 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v4);

  sub_25EC47B5C(0, 0xE000000000000000, 0xD000000000000018, 0x800000025EC80B30, 0xD00000000000002CLL, 0x800000025EC80460, 405);

  v5 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  v6 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);
  swift_beginAccess();

  pthread_mutex_lock((v6 + 16));
  swift_endAccess();

  v7 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state;
  if (*(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state) == 1)
  {
    sub_25EC7A144();

    v8 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v8);

    MEMORY[0x25F8CB870](0xD000000000000021, 0x800000025EC80B70);
    sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000018, 0x800000025EC80B30, 0xD00000000000002CLL, 0x800000025EC80460, 414);

    *(v1 + v7) = 2;
    v9 = *(v1 + v5);
    swift_beginAccess();

    pthread_mutex_unlock((v9 + 16));
    swift_endAccess();

    v10 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headReceiver);
    sub_25EC79984();
    v11 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headSender);
    return sub_25EC79834();
  }

  else
  {
    v13 = *(v1 + v5);
    swift_beginAccess();

    pthread_mutex_unlock((v13 + 16));
    swift_endAccess();

    sub_25EC7A144();

    v14 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v14);

    MEMORY[0x25F8CB870](0xD000000000000012, 0x800000025EC80B50);
    sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000018, 0x800000025EC80B30, 0xD00000000000002CLL, 0x800000025EC80460, 411);
  }
}

uint64_t sub_25EC4A6B4()
{
  v1 = v0;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000029, 0x800000025EC80A90);
  v2 = *(v0 + 16);
  v3 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v3);

  MEMORY[0x25F8CB870](0x6D61726620746120, 0xEC0000003D644965);
  v4 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v4);

  sub_25EC47B5C(0, 0xE000000000000000, 0xD000000000000018, 0x800000025EC80AC0, 0xD00000000000002CLL, 0x800000025EC80460, 425);

  v5 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tailReceiver);
  sub_25EC79984();
  v6 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  v7 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);
  swift_beginAccess();

  pthread_mutex_lock((v7 + 16));
  swift_endAccess();

  sub_25EC7A144();

  v8 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v8);

  MEMORY[0x25F8CB870](0xD00000000000001DLL, 0x800000025EC804B0);
  sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000018, 0x800000025EC80AC0, 0xD00000000000002CLL, 0x800000025EC80460, 430);

  *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state) = 1;
  v9 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_cond);
  swift_beginAccess();

  pthread_cond_signal((v9 + 16));
  swift_endAccess();

  v10 = *(v1 + v6);
  swift_beginAccess();

  pthread_mutex_unlock((v10 + 16));
  swift_endAccess();

  v11 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headReceiver);
  result = sub_25EC79954();
  if (result)
  {
    sub_25EC7A144();

    v13 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v13);

    MEMORY[0x25F8CB870](0xD00000000000001ALL, 0x800000025EC80AE0);
    sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000018, 0x800000025EC80AC0, 0xD00000000000002CLL, 0x800000025EC80460, 437);

    sub_25EC79964();
    return sub_25EC4A310();
  }

  return result;
}

uint64_t sub_25EC4AA6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  v3 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);
  swift_beginAccess();

  pthread_mutex_lock((v3 + 16));
  swift_endAccess();

  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state;
  if (*(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state) == 2)
  {
    v5 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_cond;
    do
    {
      v6 = *(v1 + v5);
      v7 = *(v1 + v2);
      swift_beginAccess();
      swift_beginAccess();

      pthread_cond_wait((v6 + 16), (v7 + 16));
      swift_endAccess();
      swift_endAccess();
    }

    while (*(v1 + v4) == 2);
  }

  sub_25EC7A144();

  v11 = *(v1 + 16);
  v8 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v8);

  MEMORY[0x25F8CB870](0xD000000000000020, 0x800000025EC80410);
  sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0xD000000000000017, 0x800000025EC80440, 0xD00000000000002CLL, 0x800000025EC80460, 451);

  *(v1 + v4) = 0;
  v9 = *(v1 + v2);
  swift_beginAccess();

  pthread_mutex_unlock((v9 + 16));
  swift_endAccess();
}

BOOL sub_25EC4AC84()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex;
  v3 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);
  swift_beginAccess();

  pthread_mutex_lock((v3 + 16));
  swift_endAccess();

  v4 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state;
  v5 = *(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state);
  if (*(v1 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_state))
  {
    sub_25EC7A144();

    v10 = *(v1 + 16);
    v6 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v6);

    MEMORY[0x25F8CB870](0xD000000000000013, 0x800000025EC80490);
    sub_25EC47BA8(0x3D6870617267, 0xE600000000000000, 0x7247656C62616E65, 0xED00002928687061, 0xD00000000000002CLL, 0x800000025EC80460, 463);
  }

  else
  {
    sub_25EC7A144();

    v11 = *(v1 + 16);
    v7 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v7);

    MEMORY[0x25F8CB870](0xD00000000000001DLL, 0x800000025EC804B0);
    sub_25EC47B5C(0x3D64496870617247, 0xE800000000000000, 0x7247656C62616E65, 0xED00002928687061, 0xD00000000000002CLL, 0x800000025EC80460, 466);

    *(v1 + v4) = 1;
  }

  v8 = *(v1 + v2);
  swift_beginAccess();

  pthread_mutex_unlock((v8 + 16));
  swift_endAccess();

  return v5 == 0;
}

uint64_t GraphController.deinit()
{
  v1 = *(v0 + 24);

  sub_25EC4E178(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController__graphConfig);
  v2 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_mutex);

  v3 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_cond);

  v4 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headReceiver);

  v5 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headSender);

  v6 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tailReceiver);

  v7 = *(v0 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks);

  return v0;
}

uint64_t GraphController.__deallocating_deinit()
{
  GraphController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25EC4AFF0()
{
  v2 = v0;
  result = swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4[2])
  {
    while (1)
    {
      result = swift_beginAccess();
      if (!v4[2])
      {
        break;
      }

      v5 = v4[4];
      v6 = v4[5];

      sub_25EC4F3B0(0, 1, sub_25EC50A24, sub_25EC4E810);
      swift_endAccess();
      sub_25EC48C0C(v6);

      if (!v1)
      {
        v4 = *(v2 + 16);
        if (v4[2])
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_25EC4B0E8()
{
  swift_beginAccess();
  result = *(*(v0 + 16) + 16);
  if (HIDWORD(result))
  {
    __break(1u);
  }

  return result;
}

uint64_t Executor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Executor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25EC4B19C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t sub_25EC4B1FC()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_25EC4B234(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_25EC4B354(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v12 = swift_allocObject();
  v13 = sub_25EC79DE4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v17 = a6(v16, a4, a5);
  if (v6)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v17;
    *(v12 + 16) = a1;
    type metadata accessor for Executor();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D84F90];
    *(v19 + 16) = MEMORY[0x277D84F90];
    *(v12 + 24) = v19;
    *(v12 + 40) = a2;
    v21 = sub_25EC79A54();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    *(v12 + 48) = sub_25EC79A44();
    v24 = *(v21 + 48);
    v25 = *(v21 + 52);
    swift_allocObject();
    *(v12 + 56) = sub_25EC79A44();
    *(v12 + 32) = v18;
    v26 = sub_25EC4E708(v20, &qword_27FD361D0, &qword_25EC7AD60);

    *(v12 + 64) = v26;
  }

  return v12;
}

uint64_t sub_25EC4B508(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v14 = sub_25EC79DE4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v18 = a6(v17, a4, a5);
  if (v7)
  {

    type metadata accessor for SessionManager();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v18;
    *(v9 + 16) = a1;
    type metadata accessor for Executor();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D84F90];
    *(v20 + 16) = MEMORY[0x277D84F90];
    *(v9 + 24) = v20;
    *(v9 + 40) = a2;
    v22 = sub_25EC79A54();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();

    *(v9 + 48) = sub_25EC79A44();
    v25 = *(v22 + 48);
    v26 = *(v22 + 52);
    swift_allocObject();
    *(v9 + 56) = sub_25EC79A44();
    *(v9 + 32) = v19;
    v27 = sub_25EC4E708(v21, &qword_27FD361D0, &qword_25EC7AD60);

    *(v9 + 64) = v27;
  }

  return v9;
}

uint64_t sub_25EC4B678(unsigned int a1)
{
  v3 = sub_25EC79A64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v1 + 64) + 16) && (sub_25EC4CDB4(a1), (v8 & 1) != 0))
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_25EC7A144();

    v17 = 0x3D64496870617267;
    v18 = 0xE900000000000028;
    LODWORD(v19) = a1;
    v9 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v9);

    MEMORY[0x25F8CB870](0xD000000000000010, 0x800000025EC804D0);
    sub_25EC47BA8(v17, v18, 0xD000000000000012, 0x800000025EC804F0, 0xD00000000000002CLL, 0x800000025EC80460, 611);

    sub_25EC4E124();
    swift_allocError();
    *v10 = a1;
    *(v10 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D3E798], v3);
    v11 = type metadata accessor for GraphController();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v3 = swift_allocObject();
    sub_25EC49E68(a1, v7);
    swift_beginAccess();

    v14 = *(v1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v1 + 64);
    *(v1 + 64) = 0x8000000000000000;
    sub_25EC4DB9C(v3, a1, isUniquelyReferenced_nonNull_native, sub_25EC5CD50, &qword_27FD361D0, &qword_25EC7AD60);
    *(v1 + 64) = v19;
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_25EC4B938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v2 = (a1 + 32);
  swift_beginAccess();
  v3 = v2;
  v4 = v1;
  do
  {
    v6 = *v3++;
    v5 = v6;
    if (!*(v66[8] + 16) || (sub_25EC4CDB4(v5), (v7 & 1) == 0))
    {
      sub_25EC4E124();
      swift_allocError();
      *v14 = v5;
      *(v14 + 4) = 3;
      swift_willThrow();
      return v5;
    }

    --v4;
  }

  while (v4);
  v5 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
  swift_beginAccess();
  do
  {
    v8 = v66[8];
    if (*(v8 + 16))
    {
      v9 = sub_25EC4CDB4(*v2);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        MEMORY[0x25F8CB8A0](v12);
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25EC7A0A4();
        }

        sub_25EC7A0C4();
        v5 = v69;
      }
    }

    ++v2;
    --v1;
  }

  while (v1);
LABEL_15:
  if (v5 >> 62)
  {
    goto LABEL_70;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v58 = v5;
  if (!result)
  {
LABEL_71:
    v5 = MEMORY[0x277D84F90];
LABEL_72:

    return v5;
  }

LABEL_17:
  if (result >= 1)
  {
    v16 = v5;
    v5 = 0;
    v60 = v16 & 0xC000000000000001;
    v17 = v66[5];
    v55 = v16 + 32;
    v65 = v66[6];
    v59 = result;
    do
    {
      if (v60)
      {
        v18 = MEMORY[0x25F8CB970](v5, v58);
      }

      else
      {
        v18 = *(v58 + 8 * v5 + 32);
      }

      v19 = *(v18 + 16);
      if ((sub_25EC799E4() & 1) == 0)
      {
        sub_25EC7A144();
        MEMORY[0x25F8CB870](0xD00000000000001DLL, 0x800000025EC80510);
        v67 = *(v18 + 16);
        v20 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v20);

        MEMORY[0x25F8CB870](0xD000000000000014, 0x800000025EC80530);
        sub_25EC47BA8(0, 0xE000000000000000, 0xD000000000000017, 0x800000025EC80550, 0xD00000000000002CLL, 0x800000025EC80460, 669);
      }

      v21 = *(v17 + 16);
      if (!GSTService.deregisterReceiver(receiverId:)(*(v18 + 16)))
      {
        sub_25EC7A144();

        v68 = *(v18 + 16);
        v22 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v22);

        MEMORY[0x25F8CB870](0xD000000000000013, 0x800000025EC80570);
        sub_25EC47BA8(0xD00000000000001DLL, 0x800000025EC80510, 0xD000000000000017, 0x800000025EC80550, 0xD00000000000002CLL, 0x800000025EC80460, 672);
      }

      ++v5;
    }

    while (v59 != v5);
    v23 = 0;
    v70 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v60)
      {
        v24 = MEMORY[0x25F8CB970](v23, v58);
      }

      else
      {
        if (v23 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v24 = *(v55 + 8 * v23);
      }

      v57 = v23 + 1;
      sub_25EC4AA6C();
      v25 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
      swift_beginAccess();
      v56 = v24;
      v5 = *(v24 + v25);
      v62 = v5 + 64;
      v26 = 1 << *(v5 + 32);
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v28 = v27 & *(v5 + 64);
      v61 = (v26 + 63) >> 6;

      v29 = 0;
      v63 = v5;
      while (1)
      {
LABEL_37:
        if (v28)
        {
          goto LABEL_42;
        }

LABEL_38:
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_68;
        }

        if (v30 >= v61)
        {
          break;
        }

        v28 = *(v62 + 8 * v30);
        ++v29;
        if (!v28)
        {
          goto LABEL_38;
        }

        v29 = v30;
LABEL_42:
        v31 = *(*(v5 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
        swift_beginAccess();
        v32 = *(v31 + 48);
        if (v32 >> 62)
        {
          if (v32 < 0)
          {
            v51 = *(v31 + 48);
          }

          v33 = sub_25EC7A184();
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v28 &= v28 - 1;
        if (v33)
        {
          if (v33 >= 1)
          {
            v34 = v32 & 0xC000000000000001;

            v35 = 0;
            v64 = v33;
            while (1)
            {
              if (v34)
              {
                v36 = MEMORY[0x25F8CB970](v35, v32);
              }

              else
              {
                v36 = *(v32 + 8 * v35 + 32);
              }

              v37 = *(v36 + 24);
              sub_25EC79854();
              v38 = *(v36 + 16);
              if (v38 == 2)
              {
                v44 = v66[6];
                if ((sub_25EC799D4() & 1) == 0)
                {
                  sub_25EC7A144();
                  MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC80590);
                  v45 = sub_25EC7A224();
                  MEMORY[0x25F8CB870](v45);

                  MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC805B0);
                  v33 = v64;
                  sub_25EC47BA8(0, 0xE000000000000000, 0xD000000000000022, 0x800000025EC805D0, 0xD00000000000002CLL, 0x800000025EC80460, 624);
                }

                v46 = *(v66[5] + 16);
                v47 = *(v46 + 32);
                swift_beginAccess();

                pthread_mutex_lock((v47 + 16));
                swift_endAccess();

                v48 = *(v46 + 16);
                LOBYTE(v48) = sub_25EC799D4();
                v49 = *(v46 + 32);
                swift_beginAccess();

                pthread_mutex_unlock((v49 + 16));
                swift_endAccess();

                v34 = v32 & 0xC000000000000001;
                if (v48)
                {
                  goto LABEL_48;
                }

                sub_25EC7A144();
                MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC80590);
                v50 = sub_25EC7A224();
                MEMORY[0x25F8CB870](v50);

                MEMORY[0x25F8CB870](0xD000000000000015, 0x800000025EC80600);
                v41 = 0xD000000000000021;
                v33 = v64;
                v42 = 0x800000025EC80620;
                v43 = 634;
              }

              else
              {
                if (v38 != 1)
                {
                  goto LABEL_48;
                }

                v39 = v66[6];
                if (sub_25EC799D4())
                {
                  goto LABEL_48;
                }

                sub_25EC7A144();
                MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC80590);
                v40 = sub_25EC7A224();
                MEMORY[0x25F8CB870](v40);

                MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC805B0);
                v41 = 0xD000000000000022;
                v42 = 0x800000025EC805D0;
                v34 = v32 & 0xC000000000000001;
                v43 = 624;
              }

              sub_25EC47BA8(0, 0xE000000000000000, v41, v42, 0xD00000000000002CLL, 0x800000025EC80460, v43);

LABEL_48:
              ++v35;

              if (v33 == v35)
              {

                v5 = v63;
                goto LABEL_37;
              }
            }
          }

LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          result = sub_25EC7A184();
          v58 = v5;
          if (!result)
          {
            goto LABEL_71;
          }

          goto LABEL_17;
        }
      }

      MEMORY[0x25F8CB8A0](v52);
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25EC7A0A4();
      }

      sub_25EC7A0C4();
      v5 = v70;
      v53 = *(v56 + 16);
      swift_beginAccess();
      sub_25EC4D0E4(v53, sub_25EC60DA0, sub_25EC5CD50);
      swift_endAccess();

      v23 = v57;
      if (v57 == v59)
      {
        goto LABEL_72;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC4C34C(unsigned int a1, int a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (*(v5 + 16) && (v6 = sub_25EC4CDB4(a1), (v7 & 1) != 0))
  {
    v8 = *(*(*(v5 + 56) + 8 * v6) + 24);

    v9 = sub_25EC799F4();

    if ((v9 & 1) == 0)
    {
      sub_25EC7A144();

      v10 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v10);

      sub_25EC47BA8(0xD00000000000002FLL, 0x800000025EC80680, 0xD00000000000002ALL, 0x800000025EC80650, 0xD00000000000002CLL, 0x800000025EC80460, 711);

      sub_25EC4E124();
      swift_allocError();
      *v11 = a2;
      *(v11 + 4) = 6;
      swift_willThrow();
    }
  }

  else
  {
    sub_25EC7A144();

    v13 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v13);

    MEMORY[0x25F8CB870](0x756F6620746F6E20, 0xEA0000000000646ELL);
    sub_25EC47BA8(0x206870617247, 0xE600000000000000, 0xD00000000000002ALL, 0x800000025EC80650, 0xD00000000000002CLL, 0x800000025EC80460, 707);

    sub_25EC4E124();
    swift_allocError();
    *v14 = a1;
    *(v14 + 4) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_25EC4C5EC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 8);
  v8 = *(v3 + 32);
  v24 = *a3;
  LODWORD(v25) = v7;
  v9 = type metadata accessor for PSWriterM3Demo();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  result = PSWriterM3Demo.init(resourceID:pbsManager:entrySize:bufferConfig:)(a1, v8, a2, &v24);
  if (!result)
  {
    sub_25EC47BA8(0xD000000000000019, 0x800000025EC806B0, 0xD000000000000038, 0x800000025EC806D0, 0xD00000000000002CLL, 0x800000025EC80460, 731);
    sub_25EC4E124();
    swift_allocError();
    *v18 = 1;
    *(v18 + 4) = 10;
    swift_willThrow();
    return a2;
  }

  if (!HIDWORD(a1))
  {
    a2 = result;
    v13 = *(v4 + 40);
    v14 = *(*(v13 + 16) + 16);
    if (sub_25EC79A34())
    {
      v15 = *(v4 + 56);
      v16 = OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_triggerSender;
      v17 = *(a2 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_triggerSender);
      type metadata accessor for TightbeamTriggerChannel();
      *(swift_allocObject() + 16) = v13;
      sub_25EC4E9A0();

      LOBYTE(v15) = sub_25EC79A04();

      if (v15)
      {
        sub_25EC47B5C(0xD00000000000001DLL, 0x800000025EC80730, 0xD000000000000038, 0x800000025EC806D0, 0xD00000000000002CLL, 0x800000025EC80460, 747);
        return a2;
      }

      v24 = 0;
      v25 = 0xE000000000000000;
      sub_25EC7A144();

      v24 = 0xD00000000000001ELL;
      v25 = 0x800000025EC80710;
      v20 = *(a2 + v16);
      v26 = sub_25EC79854();
      v21 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v21);

      sub_25EC47BA8(v24, v25, 0xD000000000000038, 0x800000025EC806D0, 0xD00000000000002CLL, 0x800000025EC80460, 743);

      v22 = *(a2 + v16);
      LODWORD(v22) = sub_25EC79854();
      sub_25EC4E124();
      swift_allocError();
      *v23 = v22;
      *(v23 + 4) = 7;
    }

    else
    {
      sub_25EC4E124();
      swift_allocError();
      *v19 = a1;
      *(v19 + 4) = 8;
    }

    swift_willThrow();

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC4C938(uint64_t a1)
{
  v2 = v1;
  if (sub_25EC6CC64())
  {
    v4 = *(v2 + 40);
    v5 = *(a1 + OBJC_IVAR____TtC21PolarisExclaveSupport14PSWriterM3Demo_triggerSender);
    v6 = sub_25EC79854();
    if (PolarisGSTServiceHandle.deregisterSender(senderId:)(v6))
    {
      v7 = *(v2 + 56);
      sub_25EC79854();
      if (sub_25EC799D4())
      {
        return sub_25EC47B5C(0xD00000000000001DLL, 0x800000025EC807B0, 0xD00000000000001FLL, 0x800000025EC80770, 0xD00000000000002CLL, 0x800000025EC80460, 774);
      }

      sub_25EC7A144();

      sub_25EC79854();
      v13 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v13);

      sub_25EC47BA8(0xD00000000000001ALL, 0x800000025EC80790, 0xD00000000000001FLL, 0x800000025EC80770, 0xD00000000000002CLL, 0x800000025EC80460, 770);

      sub_25EC4E124();
      swift_allocError();
      v10 = 10;
      v11 = 3;
    }

    else
    {
      sub_25EC7A144();
      MEMORY[0x25F8CB870](0xD00000000000001ELL, 0x800000025EC80590);
      v14 = sub_25EC79854();
      v12 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v12);

      MEMORY[0x25F8CB870](0xD000000000000015, 0x800000025EC80600);
      sub_25EC47BA8(HIDWORD(v14), 0xE000000000000000, 0xD00000000000001FLL, 0x800000025EC80770, 0xD00000000000002CLL, 0x800000025EC80460, 765);

      v11 = sub_25EC79854();
      sub_25EC4E124();
      swift_allocError();
      v10 = 9;
    }
  }

  else
  {
    sub_25EC47BA8(0xD00000000000001ALL, 0x800000025EC80750, 0xD00000000000001FLL, 0x800000025EC80770, 0xD00000000000002CLL, 0x800000025EC80460, 759);
    sub_25EC4E124();
    swift_allocError();
    v10 = 10;
    v11 = 1;
  }

  *v9 = v11;
  *(v9 + 4) = v10;
  return swift_willThrow();
}

void *SessionManager.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return v0;
}

uint64_t SessionManager.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return swift_deallocClassInstance();
}

unint64_t sub_25EC4CD24(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  sub_25EC4F4D0(&qword_27FD361A8);
  v5 = sub_25EC7A014();

  return sub_25EC4CDFC(a1, v5);
}

unint64_t sub_25EC4CDB4(unsigned int a1)
{
  v3 = MEMORY[0x25F8CBAE0](*(v1 + 40), a1, 4);

  return sub_25EC4CFB0(a1, v3);
}

unint64_t sub_25EC4CDFC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
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
      sub_25EC4F4D0(&qword_27FD361B8);
      v16 = sub_25EC7A024();
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

unint64_t sub_25EC4CFB0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25EC4D01C(unsigned int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_25EC4CDB4(a1);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v14 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25EC5CD64();
      v10 = v14;
    }

    v11 = v7;
    v12 = *(*(v10 + 56) + 4 * v7);
    sub_25EC5C744(v11, v10);
    *v2 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12 | (((v6 & 1) == 0) << 32);
}

uint64_t sub_25EC4D0E4(unsigned int a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_25EC4CDB4(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v16;
  }

  v14 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v14;
}

uint64_t sub_25EC4D198(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36180, &qword_25EC7AD20);
  result = sub_25EC7A1A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      result = MEMORY[0x25F8CBAE0](*(v8 + 40), v21, 4);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25EC4D400(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36198, &qword_25EC7AD38);
  v43 = a2;
  result = sub_25EC7A1A4();
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
      sub_25EC4F4D0(&qword_27FD361A8);
      result = sub_25EC7A014();
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

uint64_t sub_25EC4D7E4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_25EC7A1A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 4 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      result = MEMORY[0x25F8CBAE0](*(v10 + 40), v24, 4);
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_25EC4DA50(int a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25EC4CDB4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25EC5CD64();
    result = v17;
    goto LABEL_8;
  }

  sub_25EC4D198(v14, a3 & 1);
  v18 = *v4;
  result = sub_25EC4CDB4(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 4 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    *(v20[7] + 4 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_25EC7A264();
  __break(1u);
  return result;
}

unint64_t sub_25EC4DB9C(uint64_t a1, unsigned int a2, char a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v10 = v6;
  v14 = *v6;
  result = sub_25EC4CDB4(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 < v20 || (a3 & 1) != 0)
    {
      sub_25EC4D7E4(v20, a3 & 1, a5, a6);
      v24 = *v10;
      result = sub_25EC4CDB4(a2);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_25EC7A264();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a4();
      result = v23;
    }
  }

  v26 = *v10;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 4 * result) = a2;
    *(v26[7] + 8 * result) = a1;
    v29 = v26[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v26[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;
}

uint64_t sub_25EC4DD18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = *v3;
  v15 = sub_25EC4CD24(a2);
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
      sub_25EC5CEC4();
      goto LABEL_7;
    }

    sub_25EC4D400(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25EC4CD24(a2);
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
      return sub_25EC4DF14(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25EC7A264();
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

uint64_t sub_25EC4DF14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
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

uint64_t _s21PolarisExclaveSupport12SessionErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  v5 = *(a2 + 4);
  if (v3 <= 4)
  {
    if (*(a1 + 4) > 1u)
    {
      if (v3 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v3 == 3)
      {
        if (v5 != 3)
        {
          return 0;
        }
      }

      else if (v5 != 4)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (*(a1 + 4))
    {
      if (v5 != 1)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (!*(a2 + 4))
    {
      return v2 == v4;
    }
  }

  else if (*(a1 + 4) > 7u)
  {
    if (v3 == 8)
    {
      if (v5 != 8)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v3 == 9)
    {
      if (v5 != 9)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if (v5 == 10 && v4 == 2)
        {
          return 1;
        }
      }

      else if (v5 == 10 && v4 == 3)
      {
        return 1;
      }
    }

    else if (v2)
    {
      if (v5 == 10 && v4 == 1)
      {
        return 1;
      }
    }

    else if (v5 == 10 && !v4)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == 5)
    {
      if (v5 != 5)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v3 == 6)
    {
      if (v5 != 6)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v5 == 7)
    {
      return v2 == v4;
    }
  }

  return 0;
}

unint64_t sub_25EC4E124()
{
  result = qword_27FD36110;
  if (!qword_27FD36110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36110);
  }

  return result;
}

uint64_t sub_25EC4E178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36138, &qword_25EC7A9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25EC4E1E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361C0, &qword_25EC7AD50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361C8, &qword_25EC7AD58);
    v8 = sub_25EC7A1B4();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25EC4F520(v10, v6, &qword_27FD361C0, &qword_25EC7AD50);
      result = sub_25EC4CD24(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 12 * v14;
      v18 = *(v9 + 2);
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_25EC4E3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36190, &qword_25EC7AD30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36198, &qword_25EC7AD38);
    v8 = sub_25EC7A1B4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25EC4F520(v10, v6, &qword_27FD36190, &qword_25EC7AD30);
      result = sub_25EC4CD24(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_25EC4E604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36180, &qword_25EC7AD20);
    v3 = sub_25EC7A1B4();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25EC4CDB4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_25EC4E708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_25EC7A1B4();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_25EC4CDB4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 4 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 2);
    v17 = *v12;

    v10 = sub_25EC4CDB4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25EC4E810(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361E0, &qword_25EC7AD70);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for GraphController()
{
  result = qword_27FD36150;
  if (!qword_27FD36150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25EC4E9A0()
{
  result = qword_27FD36140;
  if (!qword_27FD36140)
  {
    type metadata accessor for TightbeamTriggerChannel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36140);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 5))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 4);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 4) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_25EC4EA98(uint64_t a1)
{
  if (*(a1 + 4) <= 9u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_25EC4EAB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    LOBYTE(a2) = 10;
  }

  *(result + 4) = a2;
  return result;
}

void sub_25EC4EB8C()
{
  sub_25EC4EDA8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25EC4EDA8()
{
  if (!qword_27FD36160)
  {
    sub_25EC79734();
    v0 = sub_25EC7A0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD36160);
    }
  }
}

uint64_t getEnumTagSinglePayload for GraphController.GraphState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GraphController.GraphState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25EC4F1C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25EC4F224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_25EC4F288()
{
  result = qword_27FD36168;
  if (!qword_27FD36168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36168);
  }

  return result;
}

unint64_t sub_25EC4F2DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC4F3B0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
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

uint64_t sub_25EC4F4D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD361A0, &unk_25EC7AD40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25EC4F520(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25EC4F5B8(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 16);
  swift_unownedRetainStrong();
  a2(a1);
}

uint64_t Graph.lowerToGraphDescription()@<X0>(_DWORD *a1@<X8>)
{
  v82 = a1;
  v112 = sub_25EC79C14();
  v2 = *(v112 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v79[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = sub_25EC79BF4();
  v5 = *(v103 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v79[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25EC79AF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v79[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v106 = &v79[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v110 = &v79[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v91 = &v79[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v79[-v22];
  sub_25EC79B74();
  sub_25EC79A94();
  v24 = *(v14 + 8);
  v114 = v14 + 8;
  v115 = v13;
  v113 = v24;
  v24(v23, v13);
  v80 = v119;
  v81 = v1;
  result = sub_25EC79B84();
  v90 = *(result + 16);
  if (v90)
  {
    v26 = 0;
    v89 = result + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v88 = v9 + 16;
    v100 = (v5 + 8);
    v101 = v5 + 16;
    v104 = (v2 + 8);
    v105 = v2 + 16;
    v83 = (v9 + 8);
    v27 = MEMORY[0x277D84F90];
    v94 = v2;
    v87 = v5;
    v93 = v12;
    v86 = v8;
    v85 = v9;
    v84 = result;
    while (v26 < *(result + 16))
    {
      v98 = v27;
      v99 = v26;
      (*(v9 + 16))(v12, v89 + *(v9 + 72) * v26, v8);
      v28 = v91;
      sub_25EC79AA4();
      v29 = v115;
      sub_25EC79A94();
      v113(v28, v29);
      v97 = v118;
      v96 = sub_25EC79AE4();
      v95 = v30;
      v31 = sub_25EC79AB4();
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v34 = *(v5 + 72);
        v35 = *(v5 + 16);
        v116 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = v102;
          v36 = v103;
          v35(v102, v33, v103);
          v38 = v110;
          sub_25EC79BD4();
          v39 = v115;
          sub_25EC79A94();
          v113(v38, v39);
          v40 = v117;
          v41 = sub_25EC79BE4();
          result = (*v100)(v37, v36);
          if ((v41 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (HIDWORD(v41))
          {
            goto LABEL_41;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_25EC50D90(0, *(v116 + 2) + 1, 1, v116);
          }

          v43 = *(v116 + 2);
          v42 = *(v116 + 3);
          if (v43 >= v42 >> 1)
          {
            v116 = sub_25EC50D90((v42 > 1), v43 + 1, 1, v116);
          }

          v44 = v116;
          *(v116 + 2) = v43 + 1;
          v45 = &v44[12 * v43];
          *(v45 + 8) = v40;
          *(v45 + 9) = v41;
          v45[40] = 0;
          v33 += v34;
          if (!--v32)
          {

            v2 = v94;
            v12 = v93;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

      v116 = MEMORY[0x277D84F90];
LABEL_15:
      v46 = sub_25EC79AC4();
      v47 = *(v46 + 16);
      v48 = v109;
      if (v47)
      {
        v49 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v92 = v46;
        v50 = v46 + v49;
        v51 = *(v2 + 72);
        v107 = *(v2 + 16);
        v108 = v51;
        v52 = MEMORY[0x277D84F90];
        do
        {
          v107(v48, v50, v112);
          if (qword_27FD360E0 != -1)
          {
            swift_once();
          }

          v53 = qword_27FD36648;
          sub_25EC79C04();
          swift_getObjectType();
          v54 = v106;
          sub_25EC798E4();
          swift_unknownObjectRelease();
          if (*(v53 + 16) && (v55 = sub_25EC4CD24(v54), (v56 & 1) != 0))
          {
            v57 = (*(v53 + 56) + 12 * v55);
            v58 = *v57;
            v111 = v57[1];
            v59 = v57[2];
            v113(v54, v115);
          }

          else
          {
            v113(v54, v115);
            if (qword_27FD360E8 != -1)
            {
              swift_once();
            }

            v58 = qword_27FD36330;
            v111 = HIDWORD(qword_27FD36330);
            v59 = dword_27FD36338;
          }

          sub_25EC79C04();
          swift_getObjectType();
          v60 = v110;
          sub_25EC798E4();
          swift_unknownObjectRelease();
          v61 = v115;
          sub_25EC79A94();
          v113(v60, v61);
          v62 = v117;
          sub_25EC79C04();
          swift_getObjectType();
          v63 = sub_25EC79904();
          swift_unknownObjectRelease();
          (*v104)(v48, v112);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_25EC50C80(0, *(v52 + 2) + 1, 1, v52);
          }

          v65 = *(v52 + 2);
          v64 = *(v52 + 3);
          if (v65 >= v64 >> 1)
          {
            v52 = sub_25EC50C80((v64 > 1), v65 + 1, 1, v52);
          }

          *(v52 + 2) = v65 + 1;
          v66 = &v52[24 * v65];
          *(v66 + 8) = v62;
          *(v66 + 36) = v63 | (v58 << 32);
          *(v66 + 44) = v111 | (v59 << 32);
          *(v66 + 26) = 512;
          v48 = v109;
          v50 += v108;
          --v47;
        }

        while (v47);

        v2 = v94;
        v12 = v93;
      }

      else
      {

        v52 = MEMORY[0x277D84F90];
      }

      v67 = sub_25EC79AD4();
      v69 = v68;
      v8 = v86;
      (*v83)(v12, v86);
      v27 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_25EC50B58(0, *(v27 + 2) + 1, 1, v27);
      }

      v71 = *(v27 + 2);
      v70 = *(v27 + 3);
      if (v71 >= v70 >> 1)
      {
        v27 = sub_25EC50B58((v70 > 1), v71 + 1, 1, v27);
      }

      *(v27 + 2) = v71 + 1;
      v72 = &v27[56 * v71];
      *(v72 + 8) = v97;
      v26 = v99 + 1;
      v73 = v95;
      *(v72 + 5) = v96;
      *(v72 + 6) = v73;
      *(v72 + 7) = v116;
      *(v72 + 8) = v52;
      *(v72 + 9) = v67;
      *(v72 + 10) = v69;
      v5 = v87;
      v9 = v85;
      result = v84;
      if (v26 == v90)
      {

        goto LABEL_39;
      }
    }

    __break(1u);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
LABEL_39:
    v74 = sub_25EC79BB4();
    v76 = v75;
    result = sub_25EC79B24();
    v77 = v82;
    *v82 = v80;
    v77[1] = v27;
    v77[2] = v74;
    v77[3] = v76;
    v77[4] = result;
    v77[5] = v78;
  }

  return result;
}

uint64_t Task.lowerToTaskDescription()@<X0>(_DWORD *a1@<X8>)
{
  v61 = a1;
  v2 = sub_25EC79C14();
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_25EC79BF4();
  v6 = *(v68 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v68);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v57 - v16;
  sub_25EC79AA4();
  sub_25EC79A94();
  v18 = *(v11 + 8);
  v66 = (v11 + 8);
  v67 = v10;
  v65 = v18;
  v18(v17, v10);
  v60 = v78;
  v19 = sub_25EC79AE4();
  v58 = v20;
  v59 = v19;
  v21 = sub_25EC79AB4();
  v22 = *(v21 + 16);
  v62 = v1;
  if (v22)
  {
    v24 = *(v6 + 16);
    v23 = v6 + 16;
    v25 = *(v23 + 64);
    v57[1] = v21;
    v26 = v21 + ((v25 + 32) & ~v25);
    v63 = *(v23 + 56);
    v64 = v24;
    v27 = (v23 - 8);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      v29 = v68;
      v30 = v23;
      v64(v9, v26, v68);
      sub_25EC79BD4();
      v31 = v67;
      sub_25EC79A94();
      v65(v15, v31);
      v32 = v73;
      v33 = sub_25EC79BE4();
      result = (*v27)(v9, v29);
      if ((v33 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v33))
      {
        goto LABEL_23;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_25EC50D90(0, *(v28 + 2) + 1, 1, v28);
      }

      v36 = *(v28 + 2);
      v35 = *(v28 + 3);
      v72 = v28;
      if (v36 >= v35 >> 1)
      {
        v72 = sub_25EC50D90((v35 > 1), v36 + 1, 1, v72);
      }

      v37 = v72;
      *(v72 + 2) = v36 + 1;
      v28 = v37;
      v38 = &v37[12 * v36];
      *(v38 + 8) = v32;
      *(v38 + 9) = v33;
      v38[40] = 0;
      v26 += v63;
      --v22;
      v23 = v30;
      if (!v22)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
LABEL_12:
    v39 = sub_25EC79AC4();
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = *(v71 + 16);
      v42 = v39 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v67 = *(v71 + 72);
      v68 = v41;
      v71 += 16;
      v65 = v39;
      v66 = (v71 - 8);
      v43 = MEMORY[0x277D84F90];
      do
      {
        v44 = v69;
        v45 = v70;
        (v68)(v69, v42, v70);
        Output.lowerToOutputInfo()(&v73);
        (*v66)(v44, v45);
        v46 = v73;
        v48 = v74;
        v47 = v75;
        v49 = v76;
        v50 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_25EC50C80(0, *(v43 + 2) + 1, 1, v43);
        }

        v52 = *(v43 + 2);
        v51 = *(v43 + 3);
        if (v52 >= v51 >> 1)
        {
          v43 = sub_25EC50C80((v51 > 1), v52 + 1, 1, v43);
        }

        *(v43 + 2) = v52 + 1;
        v53 = &v43[24 * v52];
        *(v53 + 8) = v46;
        *(v53 + 36) = v48;
        *(v53 + 44) = v47;
        v53[52] = v49;
        v53[53] = v50;
        v42 += v67;
        --v40;
      }

      while (v40);
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
    }

    result = sub_25EC79AD4();
    v54 = v61;
    *v61 = v60;
    v55 = v58;
    v54[1] = v59;
    v54[2] = v55;
    v54[3] = v72;
    v54[4] = v43;
    v54[5] = result;
    v54[6] = v56;
  }

  return result;
}

unint64_t Input.lowerToInputInfo()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;
  sub_25EC79BD4();
  sub_25EC79A94();
  (*(v3 + 8))(v6, v2);
  v7 = v9[3];
  result = sub_25EC79BE4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *a1 = v7;
    *(a1 + 4) = result;
    *(a1 + 8) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Output.lowerToOutputInfo()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if (qword_27FD360E0 != -1)
  {
    swift_once();
  }

  v10 = qword_27FD36648;
  sub_25EC79C04();
  swift_getObjectType();
  sub_25EC798E4();
  swift_unknownObjectRelease();
  if (*(v10 + 16) && (v11 = sub_25EC4CD24(v9), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 12 * v11);
    v14 = *v13;
    v23 = v13[1];
    v15 = v13[2];
    v16 = *(v3 + 8);
    v16(v9, v2);
    v17 = v14;
  }

  else
  {
    v16 = *(v3 + 8);
    v16(v9, v2);
    if (qword_27FD360E8 != -1)
    {
      swift_once();
    }

    v17 = qword_27FD36330;
    v23 = HIDWORD(qword_27FD36330);
    v15 = dword_27FD36338;
  }

  sub_25EC79C04();
  swift_getObjectType();
  sub_25EC798E4();
  swift_unknownObjectRelease();
  sub_25EC79A94();
  v16(v7, v2);
  v18 = v24;
  sub_25EC79C04();
  swift_getObjectType();
  v19 = sub_25EC79904();
  result = swift_unknownObjectRelease();
  v21 = v23 | (v15 << 32);
  *a1 = v18;
  *(a1 + 4) = v19 | (v17 << 32);
  *(a1 + 12) = v21;
  *(a1 + 20) = 512;
  return result;
}

char *sub_25EC508F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36258, &unk_25EC7ADD0);
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

void *sub_25EC50A24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36228, &qword_25EC7ADA8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361E0, &qword_25EC7AD70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25EC50B58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36240, &qword_25EC7ADC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
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

char *sub_25EC50C80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36248, &unk_25EC7B4D0);
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
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_25EC50D90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36250, &qword_25EC7ADC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_25EC50EA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36238, &qword_25EC7ADB8);
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

char *sub_25EC50FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F0, &qword_25EC7B5A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25EC510B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36230, &qword_25EC7ADB0);
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

size_t sub_25EC511F8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36218, &qword_25EC7AD98);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40) - 8);
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

char *sub_25EC513E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36200, &unk_25EC7B400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25EC514F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36208, &qword_25EC7AD88);
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

size_t sub_25EC51628(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_25EC51804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F8, &qword_25EC7AD80);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

uint64_t GraphDescription.init(graphId:tasks:onSubmit:onTeardown:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t TaskDescription.init(taskId:workload:inputs:outputs:onSubmit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t InputInfo.init(dependencyId:type:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  *a3 = result;
  *(a3 + 4) = v3;
  *(a3 + 8) = v4;
  return result;
}

__n128 OutputInfo.init(senderId:type:scope:)@<Q0>(int a1@<W0>, __n128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u8[0];
  v5 = *a3;
  *a4 = a1;
  result = *a2;
  *(a4 + 4) = *a2;
  *(a4 + 20) = v4;
  *(a4 + 21) = v5;
  return result;
}

uint64_t DependencyScope.hashValue.getter()
{
  v1 = *v0;
  sub_25EC7A2D4();
  MEMORY[0x25F8CBB00](v1);
  return sub_25EC7A304();
}

uint64_t ResourceBufferConfig.init(selectorType:numRingBuffers:numViews:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ResourceBufferConfig.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A2F4();
}

uint64_t ResourceBufferConfig.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

uint64_t sub_25EC51B10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

uint64_t sub_25EC51B7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A2F4();
}

uint64_t sub_25EC51BC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A304();
}

BOOL static OutputDependencyType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if ((*(a2 + 16) & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  return !((*a1 ^ *a2) >> 32) && *(a1 + 8) == *(a2 + 8);
}

uint64_t OutputDependencyType.hash(into:)()
{
  if (v0[4])
  {
    return MEMORY[0x25F8CBB00](0);
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  MEMORY[0x25F8CBB00](1);
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A2F4();
}

uint64_t OutputDependencyType.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_25EC7A2D4();
  if (v3)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC51DD0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_25EC7A2D4();
  if (v3)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC51E78()
{
  if (v0[4])
  {
    return MEMORY[0x25F8CBB00](0);
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  MEMORY[0x25F8CBB00](1);
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  sub_25EC7A2F4();
  return sub_25EC7A2F4();
}

uint64_t sub_25EC51EF0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_25EC7A2D4();
  if (v3)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

BOOL sub_25EC51F94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0;
  }

  if ((*(a2 + 16) & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  return !((*a1 ^ *a2) >> 32) && *(a1 + 8) == *(a2 + 8);
}

BOOL static InputDependencyType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t InputDependencyType.hash(into:)()
{
  if (*(v0 + 4) == 1)
  {
    return MEMORY[0x25F8CBB00](0);
  }

  v2 = *v0;
  MEMORY[0x25F8CBB00](1);
  return sub_25EC7A2F4();
}

uint64_t InputDependencyType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_25EC7A2D4();
  if (v2 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC520E4()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_25EC7A2D4();
  if (v2 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC52154()
{
  if (*(v0 + 4) == 1)
  {
    return MEMORY[0x25F8CBB00](0);
  }

  v2 = *v0;
  MEMORY[0x25F8CBB00](1);
  return sub_25EC7A2F4();
}

uint64_t sub_25EC521A4()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_25EC7A2D4();
  if (v2 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

BOOL sub_25EC52210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

__n128 OutputInfo.type.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 20);
  result = *(v1 + 4);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t OutputInfo.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  sub_25EC7A2F4();
  if (v4)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return MEMORY[0x25F8CBB00](v5);
}

uint64_t OutputInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v4)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  MEMORY[0x25F8CBB00](v5);
  return sub_25EC7A304();
}

uint64_t sub_25EC523DC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  sub_25EC7A2F4();
  if (v4)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  return MEMORY[0x25F8CBB00](v5);
}

uint64_t sub_25EC52470()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v4)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
    sub_25EC7A2F4();
  }

  MEMORY[0x25F8CBB00](v5);
  return sub_25EC7A304();
}

void InputInfo.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *(v1 + 4);
  *(a1 + 4) = v2;
}

uint64_t InputInfo.init(senderId:type:scope:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  *a3 = result;
  *(a3 + 4) = v3;
  *(a3 + 8) = v4;
  return result;
}

uint64_t static InputInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 8) == 1)
    {
      if (v2)
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 4) != *(a2 + 4))
      {
        v2 = 1;
      }

      if (v2 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t InputInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_25EC7A2F4();
  if (v3 == 1)
  {
    return MEMORY[0x25F8CBB00](0);
  }

  MEMORY[0x25F8CBB00](1);
  return sub_25EC7A2F4();
}

uint64_t InputInfo.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v3 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC52694()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v3 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC52714()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_25EC7A2F4();
  if (v3 == 1)
  {
    return MEMORY[0x25F8CBB00](0);
  }

  MEMORY[0x25F8CBB00](1);
  return sub_25EC7A2F4();
}

uint64_t sub_25EC52770()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  sub_25EC7A2D4();
  sub_25EC7A2F4();
  if (v3 == 1)
  {
    MEMORY[0x25F8CBB00](0);
  }

  else
  {
    MEMORY[0x25F8CBB00](1);
    sub_25EC7A2F4();
  }

  return sub_25EC7A304();
}

uint64_t sub_25EC527EC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t TaskDescription.workload.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TaskDescription.onSubmit.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_25EC473B4(v1);
  return v1;
}

uint64_t GraphDescription.onSubmit.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25EC473B4(v1);
  return v1;
}

uint64_t GraphDescription.onTeardown.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25EC473B4(v1);
  return v1;
}

BOOL _s21PolarisExclaveSupport10OutputInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 20))
    {
      return 0;
    }

    if (*(a1 + 4) != *(a2 + 4) || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  return *(a1 + 21) == *(a2 + 21);
}

unint64_t sub_25EC5298C()
{
  result = qword_27FD36260;
  if (!qword_27FD36260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36260);
  }

  return result;
}

unint64_t sub_25EC529E4()
{
  result = qword_27FD36268;
  if (!qword_27FD36268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36268);
  }

  return result;
}

unint64_t sub_25EC52A3C()
{
  result = qword_27FD36270;
  if (!qword_27FD36270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36270);
  }

  return result;
}

unint64_t sub_25EC52A94()
{
  result = qword_27FD36278;
  if (!qword_27FD36278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36278);
  }

  return result;
}

unint64_t sub_25EC52AEC()
{
  result = qword_27FD36280;
  if (!qword_27FD36280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36280);
  }

  return result;
}

unint64_t sub_25EC52B44()
{
  result = qword_27FD36288;
  if (!qword_27FD36288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DependencyScope(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DependencyScope(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ResourceBufferConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ResourceBufferConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OutputDependencyType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OutputDependencyType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 9) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
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

uint64_t sub_25EC52DBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EC52DD8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InputDependencyType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InputDependencyType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_25EC52E54(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EC52E70(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

__n128 __swift_memcpy22_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OutputInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 22))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 21);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OutputInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *(result + 21) = a2 + 3;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InputInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InputInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
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

uint64_t sub_25EC52FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25EC53024(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25EC53080(uint64_t a1, int a2)
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

uint64_t sub_25EC530C8(uint64_t result, int a2, int a3)
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

uint64_t sub_25EC5312C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_25EC79C64();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25EC533EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v36 = a2;
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F0, &qword_25EC7B3F8);
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362B0, &qword_25EC7B298);
  v11 = *(*(v41 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v37 = &v32 - v16;
  MEMORY[0x28223BE20](v15);
  v35 = &v32 - v18;
  v19 = *(a3 + 16);
  if (v19)
  {
    v32 = v17;
    v33 = a4;
    v20 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v34 = *(v8 + 72);
    while (1)
    {
      v43 = v5;
      v21 = v14;
      v22 = v38;
      sub_25EC60BD8(v20, v38);
      v23 = *(v39 + 48);
      v24 = sub_25EC79D34();
      v25 = *(*(v24 - 8) + 32);
      v26 = v37;
      v25(v37, v22, v24);
      v42 = *(v22 + v23);
      v14 = v21;
      v27 = v35;
      v25(v35, v26, v24);
      *(v27 + *(v41 + 48)) = v42;
      sub_25EC60C48(v27, v14);
      v28 = v43;
      v29 = v40(v14);
      v5 = v28;
      if (v28)
      {
        return sub_25EC60CB8(v14, &qword_27FD362B0, &qword_25EC7B298);
      }

      if (v29)
      {
        break;
      }

      sub_25EC60CB8(v14, &qword_27FD362B0, &qword_25EC7B298);
      v20 += v34;
      if (!--v19)
      {
        v30 = 1;
        a4 = v33;
        goto LABEL_10;
      }
    }

    a4 = v33;
    sub_25EC60C48(v14, v33);
    v30 = 0;
LABEL_10:
    v17 = v32;
  }

  else
  {
    v30 = 1;
  }

  return (*(v17 + 56))(a4, v30, 1, v41);
}

uint64_t GraphDeploymentEK.resourceWriters.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t GraphDeploymentEK.resourceWriters.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t _s21PolarisExclaveSupport17GraphDeploymentEKC11fetchGraphsAA012ExSerializedD9DataArrayVyAA6ResultOYKF@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v48 = sub_25EC79BC4();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  swift_beginAccess();

  pthread_mutex_lock((v10 + 16));
  swift_endAccess();

  if (*(v2 + 56))
  {
    v11 = *(v2 + 48);
    swift_beginAccess();

    pthread_mutex_unlock((v11 + 16));
    swift_endAccess();

    *a1 = 9;
    LOBYTE(v44) = 9;
    sub_25EC5B6D8();
    return swift_willThrowTypedImpl();
  }

  else
  {
    v40 = a2;
    *(v2 + 56) = 1;
    v13 = *(v2 + 48);
    swift_beginAccess();

    pthread_mutex_unlock((v13 + 16));
    swift_endAccess();

    v14 = *(v2 + 16);
    v15 = v14 + 56;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 56);
    v19 = (v16 + 63) >> 6;
    v42 = v6 + 16;
    v43 = v14;
    v20 = (v6 + 8);

    v21 = 0;
    v41 = MEMORY[0x277D84F90];
    while (1)
    {
      v22 = v21;
      v23 = v48;
      if (!v18)
      {
        break;
      }

LABEL_10:
      (*(v6 + 16))(v9, *(v43 + 48) + *(v6 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v48);
      sub_25EC53B9C(v9, &v44);
      if (v3)
      {
        goto LABEL_20;
      }

      v18 &= v18 - 1;
      (*v20)(v9, v23);
      v24 = v45;
      if (v45)
      {
        v38 = v47;
        v39 = v44;
        v37 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_25EC50EA0(0, *(v41 + 2) + 1, 1, v41);
        }

        v26 = *(v41 + 2);
        v25 = *(v41 + 3);
        v27 = v26 + 1;
        v29 = v37;
        v28 = v38;
        v30 = v39;
        if (v26 >= v25 >> 1)
        {
          v35 = *(v41 + 2);
          v36 = v26 + 1;
          v33 = sub_25EC50EA0((v25 > 1), v26 + 1, 1, v41);
          v26 = v35;
          v27 = v36;
          v29 = v37;
          v28 = v38;
          v41 = v33;
          v30 = v39;
        }

        v31 = v41;
        *(v41 + 2) = v27;
        v32 = &v31[32 * v26];
        *(v32 + 8) = v30;
        *(v32 + 5) = v24;
        *(v32 + 6) = v29;
        *(v32 + 7) = v28;
      }

      else
      {
        sub_25EC541E8(v44, 0);
      }
    }

    while (1)
    {
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        *v40 = v41;
        return result;
      }

      v18 = *(v15 + 8 * v21);
      ++v22;
      if (v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_20:
    MEMORY[0x25F8CBE40](v3);

    (*v20)(v9, v23);

    __break(1u);
  }

  return result;
}

uint64_t sub_25EC53B9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v66 = &v61 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  sub_25EC79B74();
  sub_25EC79A94();
  v15 = *(v4 + 8);
  v72 = v3;
  v69 = v15;
  v70 = v4 + 8;
  v15(v14, v3);
  v62 = v75;
  v64 = a1;
  v16 = sub_25EC79B64();
  KeyPath = swift_getKeyPath();
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v21 = (v18 + 63) >> 6;
  v71 = v4;
  v67 = KeyPath;
  v68 = v4 + 16;

  v23 = 0;
  v73 = MEMORY[0x277D84F90];
  if (v20)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v16 + 56 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      do
      {
LABEL_8:
        v25 = v72;
        (*(v71 + 16))(v12, *(v16 + 48) + *(v71 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v72);
        swift_getAtKeyPath();
        v26 = v74;
        v69(v12, v25);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25EC50FAC(0, *(v73 + 2) + 1, 1, v73);
          v73 = result;
        }

        v28 = *(v73 + 2);
        v27 = *(v73 + 3);
        if (v28 >= v27 >> 1)
        {
          result = sub_25EC50FAC((v27 > 1), v28 + 1, 1, v73);
          v73 = result;
        }

        v20 &= v20 - 1;
        v29 = v73;
        *(v73 + 2) = v28 + 1;
        *&v29[4 * v28 + 32] = v26;
      }

      while (v20);
    }
  }

  v30 = sub_25EC79B54();
  v31 = swift_getKeyPath();
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 56);
  v35 = (v32 + 63) >> 6;
  v67 = v31;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  if (v34)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      v44 = sub_25EC79B44();
      v45 = swift_getKeyPath();
      v46 = v44 + 56;
      v47 = 1 << *(v44 + 32);
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      v49 = v48 & *(v44 + 56);
      v50 = (v47 + 63) >> 6;
      v66 = v45;

      v67 = v44;

      v51 = 0;
      v52 = MEMORY[0x277D84F90];
      if (v49)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v53 >= v50)
        {

          v59 = v63;
          v60 = v73;
          *v63 = v62;
          v59[1] = v60;
          v59[2] = v37;
          v59[3] = v52;
          return result;
        }

        v49 = *(v46 + 8 * v53);
        ++v51;
        if (v49)
        {
          v51 = v53;
          do
          {
LABEL_34:
            v54 = v72;
            v55 = v65;
            (*(v71 + 16))(v65, *(v67 + 48) + *(v71 + 72) * (__clz(__rbit64(v49)) | (v51 << 6)), v72);
            swift_getAtKeyPath();
            v56 = v74;
            v69(v55, v54);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_25EC50FAC(0, *(v52 + 16) + 1, 1, v52);
              v52 = result;
            }

            v58 = *(v52 + 16);
            v57 = *(v52 + 24);
            if (v58 >= v57 >> 1)
            {
              result = sub_25EC50FAC((v57 > 1), v58 + 1, 1, v52);
              v52 = result;
            }

            v49 &= v49 - 1;
            *(v52 + 16) = v58 + 1;
            *(v52 + 4 * v58 + 32) = v56;
          }

          while (v49);
        }
      }

      goto LABEL_43;
    }

    v34 = *(v30 + 56 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      do
      {
LABEL_21:
        v39 = v72;
        v40 = v66;
        (*(v71 + 16))(v66, *(v30 + 48) + *(v71 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v72);
        swift_getAtKeyPath();
        v41 = v74;
        v69(v40, v39);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25EC50FAC(0, *(v37 + 16) + 1, 1, v37);
          v37 = result;
        }

        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          result = sub_25EC50FAC((v42 > 1), v43 + 1, 1, v37);
          v37 = result;
        }

        v34 &= v34 - 1;
        *(v37 + 16) = v43 + 1;
        *(v37 + 4 * v43 + 32) = v41;
      }

      while (v34);
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_25EC541E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GraphDeploymentEK.commitGraphs(added:removed:)(Swift::OpaquePointer added, Swift::OpaquePointer removed)
{
  v6 = sub_25EC79BC4();
  v7 = *(v6 - 8);
  v99 = v6;
  v100 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v96 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v105 = *(v12 - 8);
  v13 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  *&v101 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v95 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v102 = v95 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v95 - v21;
  *&v98 = v2;
  v23 = *(v2 + 16);

  v25 = sub_25EC5FE90(v24, added._rawValue);
  v26 = v3;

  *&v103 = v25;
  v27 = *(v25 + 16);
  v28 = *(added._rawValue + 2);
  v104 = v12;
  if (v27 != v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v97 = swift_allocObject();
    *(v97 + 1) = xmmword_25EC7A890;
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_25EC7A144();

    v106 = 0xD00000000000002BLL;
    v107 = 0x800000025EC80BE0;
    if (v28)
    {
      v49 = *(v105 + 16);
      v50 = *(v105 + 72);
      v100 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v51 = added._rawValue + v100;
      *&v101 = v105 + 32;
      v105 += 16;
      *&v98 = v105 - 8;
      v52 = MEMORY[0x277D84F90];
      v99 = v49;
      for (i = v49(v22, v51, v12); ; i = v49(v22, v51, v12))
      {
        MEMORY[0x28223BE20](i);
        v95[-2] = v22;
        v54 = v26;
        if (sub_25EC54CDC(sub_25EC5FAC8, &v95[-4], v103))
        {
          (*v98)(v22, v12);
        }

        else
        {
          v55 = *v101;
          (*v101)(v102, v22, v12);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25EC5B7D0(0, *(v52 + 16) + 1, 1);
            v52 = v110;
          }

          v58 = *(v52 + 16);
          v57 = *(v52 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_25EC5B7D0(v57 > 1, v58 + 1, 1);
            v52 = v110;
          }

          *(v52 + 16) = v58 + 1;
          v12 = v104;
          v55(v52 + v100 + v58 * v50, v102, v104);
          v26 = v54;
          v49 = v99;
        }

        v51 += v50;
        if (!--v28)
        {
          break;
        }
      }
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    v86 = v52;
    v87 = v12;
    goto LABEL_57;
  }

  v29 = sub_25EC5FE90(v23, removed._rawValue);

  v102 = v29;
  v30 = *(removed._rawValue + 2);
  if (*(v29 + 16) != v30)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v97 = swift_allocObject();
    *(v97 + 1) = xmmword_25EC7A890;
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_25EC7A144();

    v106 = 0xD00000000000002DLL;
    v107 = 0x800000025EC80C10;
    if (v30)
    {
      *&v103 = *(v105 + 16);
      v59 = *(v105 + 72);
      v99 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v60 = removed._rawValue + v99;
      v100 = v105 + 32;
      v105 += 16;
      *&v98 = v105 - 8;
      v61 = MEMORY[0x277D84F90];
      do
      {
        v62 = v104;
        v63 = (v103)(v18, v60, v104);
        MEMORY[0x28223BE20](v63);
        v95[-2] = v18;
        v64 = v26;
        if (sub_25EC54CDC(sub_25EC60D68, &v95[-4], v102))
        {
          (*v98)(v18, v62);
        }

        else
        {
          v65 = *v100;
          (*v100)(v101, v18, v62);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v110 = v61;
          if ((v66 & 1) == 0)
          {
            sub_25EC5B7D0(0, *(v61 + 16) + 1, 1);
            v61 = v110;
          }

          v68 = *(v61 + 16);
          v67 = *(v61 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_25EC5B7D0(v67 > 1, v68 + 1, 1);
            v61 = v110;
          }

          *(v61 + 16) = v68 + 1;
          v65(v61 + v99 + v68 * v59, v101, v104);
          v26 = v64;
        }

        v60 += v59;
        --v30;
      }

      while (v30);
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
    }

    v86 = v61;
    v87 = v104;
LABEL_57:
    v88 = MEMORY[0x25F8CB8B0](v86, v87);
    v90 = v89;

    MEMORY[0x25F8CB870](v88, v90);

    v91 = v106;
    v92 = v107;
    v93 = v97;
    *(v97 + 7) = MEMORY[0x277D837D0];
    *(v93 + 4) = v91;
    *(v93 + 5) = v92;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v94 = 1;
    swift_willThrow();
    return;
  }

  v95[1] = v3;
  v95[0] = *(v98 + 32);
  v31 = v103 + 56;
  v32 = 1 << *(v103 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v103 + 56);
  v35 = (v32 + 63) >> 6;
  v104 = v100 + 8;
  v105 = v100 + 16;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  if (v34)
  {
    while (1)
    {
      v38 = v37;
LABEL_11:
      v40 = v99;
      v41 = v100;
      v42 = v97;
      (*(v100 + 16))(v97, *(v103 + 48) + *(v100 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v99);
      Graph.lowerToGraphDescription()(&v106);
      (*(v41 + 8))(v42, v40);
      v43 = v106;
      v44 = v107;
      v98 = v109;
      v101 = v108;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v37 = v38;
      }

      else
      {
        v37 = sub_25EC510B0(0, *(v38 + 2) + 1, 1, v38);
      }

      v46 = *(v37 + 2);
      v45 = *(v37 + 3);
      if (v46 >= v45 >> 1)
      {
        v37 = sub_25EC510B0((v45 > 1), v46 + 1, 1, v37);
      }

      *(v37 + 2) = v46 + 1;
      v47 = &v37[48 * v46];
      *(v47 + 8) = v43;
      v34 &= v34 - 1;
      *(v47 + 5) = v44;
      v48 = v98;
      *(v47 + 3) = v101;
      *(v47 + 4) = v48;
      if (!v34)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v39 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v39);
    ++v36;
    if (v34)
    {
      v38 = v37;
      v36 = v39;
      goto LABEL_11;
    }
  }

  *&v98 = v37;

  v69 = v102 + 56;
  v70 = 1 << *(v102 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v102 + 56);
  v73 = (v70 + 63) >> 6;

  v74 = 0;
  v75 = MEMORY[0x277D84F90];
  if (v72)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v76 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v76 >= v73)
    {

      SessionManager.updateGraphs(added:removed:)(v98, v75);

      return;
    }

    v72 = *(v69 + 8 * v76);
    ++v74;
    if (v72)
    {
      v74 = v76;
      do
      {
LABEL_46:
        v77 = v99;
        v78 = v100;
        v79 = v96;
        (*(v100 + 16))(v96, *(v102 + 48) + *(v100 + 72) * (__clz(__rbit64(v72)) | (v74 << 6)), v99);
        Graph.lowerToGraphDescription()(&v106);
        (*(v78 + 8))(v79, v77);
        v80 = v106;
        v81 = v107;
        v101 = v109;
        v103 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_25EC510B0(0, *(v75 + 2) + 1, 1, v75);
        }

        v83 = *(v75 + 2);
        v82 = *(v75 + 3);
        if (v83 >= v82 >> 1)
        {
          v75 = sub_25EC510B0((v82 > 1), v83 + 1, 1, v75);
        }

        *(v75 + 2) = v83 + 1;
        v84 = &v75[48 * v83];
        *(v84 + 8) = v80;
        v72 &= v72 - 1;
        *(v84 + 5) = v81;
        v85 = v101;
        *(v84 + 3) = v103;
        *(v84 + 4) = v85;
      }

      while (v72);
    }
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_25EC54CDC(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_25EC79BC4();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC54EF4(uint64_t a1, uint64_t *a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v29);
  v28 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v27 = *(a1 + 16);
  if (v27)
  {
    v12 = 0;
    v23 = (v5 + 8);
    v25 = (v5 + 32);
    v26 = v5 + 16;
    v13 = MEMORY[0x277D84F90];
    v21 = a2;
    v22 = a1;
    while (v12 < *(a1 + 16))
    {
      v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v15 = *(v5 + 72);
      (*(v5 + 16))(v11, a1 + v14 + v15 * v12, v29);
      v16 = sub_25EC568B8(v11, a2);
      if (v2)
      {
        (*v23)(v11, v29);

        goto LABEL_15;
      }

      if (v16)
      {
        v24 = *v25;
        v24(v28, v11, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25EC5B7D0(0, *(v13 + 16) + 1, 1);
          v13 = v30;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_25EC5B7D0(v18 > 1, v19 + 1, 1);
          v13 = v30;
        }

        *(v13 + 16) = v19 + 1;
        result = (v24)(v13 + v14 + v19 * v15, v28, v29);
        a2 = v21;
        a1 = v22;
      }

      else
      {
        result = (*v23)(v11, v29);
      }

      if (v27 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_15:

    return v13;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GraphDeploymentEK.commitWriters(added:removed:)(Swift::OpaquePointer added, Swift::OpaquePointer removed)
{
  v4 = v3;
  rawValue = removed._rawValue;
  v169 = sub_25EC79C14();
  v161 = *(v169 - 8);
  v6 = *(v161 + 64);
  v7 = MEMORY[0x28223BE20](v169);
  v168 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v167 = &v161 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36298, &unk_25EC7B280);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v176 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v161 - v14;
  v16 = sub_25EC79C64();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v174 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v175 = &v161 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v180 = &v161 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v179 = &v161 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v194 = &v161 - v28;
  MEMORY[0x28223BE20](v27);
  v193 = &v161 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v171 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v173 = &v161 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v162 = &v161 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v172 = &v161 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v181 = &v161 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v45 = &v161 - v44;
  v201 = MEMORY[0x277D84F90];
  v46 = *(added._rawValue + 2);
  v182 = v16;
  v183 = v17;
  v192 = v42;
  v163 = v43;
  v165 = v2;
  v164 = added._rawValue;
  v170 = v46;
  if (v46)
  {
    v191 = v15;
    v48 = *(v43 + 16);
    v47 = v43 + 16;
    v188 = *(v2 + 24);
    v189 = v48;
    v49 = added._rawValue + ((*(v47 + 64) + 32) & ~*(v47 + 64));
    v50 = *(v47 + 56);
    v186 = (v17 + 48);
    v187 = v50;
    v185 = (v17 + 32);
    v178 = (v17 + 16);
    v177 = v17 + 8;
    v51 = MEMORY[0x277D84F90];
    v190 = v47;
    v184 = (v47 - 8);
    v52 = v46;
    v53 = v42;
    for (i = v48(v45, v49, v42); ; i = v189(v45, v49, v53))
    {
      MEMORY[0x28223BE20](i);
      *(&v161 - 2) = v45;
      v55 = v191;
      sub_25EC5312C(sub_25EC60D84, v188, v191);
      if ((*v186)(v55, 1, v16) == 1)
      {
        sub_25EC60CB8(v55, &qword_27FD36298, &unk_25EC7B280);
      }

      else
      {
        v56 = *v185;
        v57 = v193;
        (*v185)(v193, v55, v16);
        (*v178)(v194, v57, v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v195 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = sub_25EC511D0(0, v51[2] + 1, 1, v51);
        }

        v60 = v51[2];
        v59 = v51[3];
        v61 = v51;
        if (v60 >= v59 >> 1)
        {
          v61 = sub_25EC511D0(v59 > 1, v60 + 1, 1, v51);
        }

        v62 = v182;
        v63 = v183;
        (*(v183 + 8))(v193, v182);
        *(v61 + 16) = v60 + 1;
        v51 = v61;
        v56((v61 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v60), v194, v62);
        v201 = v61;
        v4 = v195;
        v16 = v62;
        v53 = v192;
      }

      (*v184)(v45, v53);
      v49 = v187 + v49;
      v52 = (v52 - 1);
      if (!v52)
      {
        break;
      }
    }
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
    v53 = v42;
  }

  if (v51[2] != v170)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_25EC7A890;
    v198 = 0;
    v199 = 0xE000000000000000;
    sub_25EC7A144();

    v198 = 0xD00000000000002DLL;
    v199 = 0x800000025EC80C40;

    sub_25EC54EF4(v80, &v201);
    v81 = MEMORY[0x25F8CB8B0]();
    v83 = v82;

    MEMORY[0x25F8CB870](v81, v83);

    v84 = v198;
    v85 = v199;
    *(v79 + 56) = MEMORY[0x277D837D0];
    *(v79 + 32) = v84;
    *(v79 + 40) = v85;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v86 = 1;
    swift_willThrow();
LABEL_57:

    return;
  }

  v200 = MEMORY[0x277D84F90];
  v64 = rawValue[2];
  v186 = v51;
  if (v64)
  {
    v190 = *(v163 + 16);
    v65 = v165[3];
    v66 = rawValue + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    v191 = *(v163 + 72);
    v188 = (v183 + 48);
    v189 = v65;
    v187 = (v183 + 32);
    v184 = (v183 + 16);
    v185 = (v183 + 8);
    v194 = MEMORY[0x277D84F90];
    v195 = v163 + 16;
    v193 = (v163 + 8);
    v178 = v64;
    v67 = v176;
    for (j = v190(v181, v66, v53); ; j = v190(v70, v66, v53))
    {
      MEMORY[0x28223BE20](j);
      *(&v161 - 2) = v71;
      sub_25EC5312C(sub_25EC60338, v189, v67);
      if ((*v188)(v67, 1, v16) == 1)
      {
        sub_25EC60CB8(v67, &qword_27FD36298, &unk_25EC7B280);
      }

      else
      {
        v72 = *v187;
        v73 = v179;
        (*v187)(v179, v67, v16);
        (*v184)(v180, v73, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = sub_25EC511D0(0, *(v194 + 2) + 1, 1, v194);
        }

        v75 = *(v194 + 2);
        v74 = *(v194 + 3);
        if (v75 >= v74 >> 1)
        {
          v194 = sub_25EC511D0(v74 > 1, v75 + 1, 1, v194);
        }

        v76 = v182;
        v77 = v183;
        (*(v183 + 8))(v179, v182);
        v78 = v194;
        *(v194 + 2) = v75 + 1;
        v72(&v78[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v75], v180, v76);
        v200 = v78;
        v16 = v76;
        v53 = v192;
        v67 = v176;
      }

      v69 = *v193;
      v70 = v181;
      (*v193)(v181, v53);
      v66 = &v191[v66];
      v64 = (v64 - 1);
      if (!v64)
      {
        break;
      }
    }

    v87 = v194;
    if (*(v194 + 2) == v178)
    {
      v195 = v4;
      v88 = 0;
      v189 = (v165 + 4);
      v190 = (v165 + 5);
      v89 = v162;
      while (v88 < *(v87 + 2))
      {
        (*(v183 + 16))(v175, &v87[((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v88], v16);
        v90 = v172;
        sub_25EC79C34();
        v91 = v190;
        swift_beginAccess();
        v92 = *v91;
        if (!*(*v91 + 16) || (v93 = sub_25EC4CD24(v90), (v94 & 1) == 0))
        {
          swift_endAccess();
          v119 = v192;
          (v69)(v90, v192);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
          v120 = swift_allocObject();
          *(v120 + 16) = xmmword_25EC7A890;
          v198 = 0;
          v199 = 0xE000000000000000;
          sub_25EC7A144();

          v198 = 0x20726574697257;
          v199 = 0xE700000000000000;
          v121 = v173;
          v122 = v175;
          sub_25EC79C34();
          sub_25EC79A94();
          (v69)(v121, v119);
          v197 = v196;
          v123 = sub_25EC7A224();
          MEMORY[0x25F8CB870](v123);

          MEMORY[0x25F8CB870](0xD000000000000012, 0x800000025EC80CA0);
          v124 = v198;
          v125 = v199;
          *(v120 + 56) = MEMORY[0x277D837D0];
          *(v120 + 32) = v124;
          *(v120 + 40) = v125;
          sub_25EC7A2B4();

          sub_25EC5B6D8();
          swift_allocError();
          *v126 = 1;
          swift_willThrow();
          (*v185)(v122, v182);

          goto LABEL_57;
        }

        v95 = *(v92 + 56);
        v96 = v90;
        v97 = *(v95 + 8 * v93);
        swift_endAccess();

        (v69)(v96, v192);
        v98 = *v189;
        v99 = v195;
        sub_25EC4C938(v97);
        v195 = v99;
        if (v99)
        {
          (*v185)(v175, v182);

          return;
        }

        v100 = sub_25EC79C24();
        v100();

        sub_25EC79C34();
        swift_beginAccess();
        v101 = *v91;
        v102 = sub_25EC4CD24(v89);
        if (v103)
        {
          v104 = v102;
          v105 = *v91;
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v107 = *v91;
          v196 = *v91;
          *v91 = 0x8000000000000000;
          if ((v106 & 1) == 0)
          {
            sub_25EC5CEC4();
            v107 = v196;
          }

          v108 = v192;
          (v69)(*(v107 + 48) + v191 * v104, v192);
          v109 = *(*(v107 + 56) + 8 * v104);

          sub_25EC5CA2C(v104, v107);
          (v69)(v89, v108);
          *v91 = v107;
          v87 = v194;
        }

        else
        {
          (v69)(v89, v192);
        }

        ++v88;
        swift_endAccess();

        v16 = v182;
        (*v185)(v175, v182);
        if (v178 == v88)
        {
          v110 = v183;
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_60;
    }

    goto LABEL_41;
  }

  v110 = v183;
  if (*(MEMORY[0x277D84F90] + 16))
  {
    v194 = MEMORY[0x277D84F90];
LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_25EC7A890;
    v198 = 0;
    v199 = 0xE000000000000000;
    sub_25EC7A144();

    v198 = 0xD00000000000002FLL;
    v199 = 0x800000025EC80C70;

    sub_25EC54EF4(v112, &v200);
    v113 = MEMORY[0x25F8CB8B0]();
    v115 = v114;

    MEMORY[0x25F8CB870](v113, v115);

    MEMORY[0x25F8CB870](41, 0xE100000000000000);
    v116 = v198;
    v117 = v199;
    *(v111 + 56) = MEMORY[0x277D837D0];
    *(v111 + 32) = v116;
    *(v111 + 40) = v117;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v118 = 1;
    swift_willThrow();
LABEL_56:

    goto LABEL_57;
  }

  v195 = v4;
  v189 = (v165 + 4);
  v190 = (v165 + 5);
  v87 = MEMORY[0x277D84F90];
LABEL_45:
  v127 = v174;
  v180 = v186[2];
  if (!v180)
  {
    goto LABEL_56;
  }

  v128 = 0;
  v185 = v186 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
  v184 = (v110 + 16);
  v193 = (v163 + 8);
  v179 = (v161 + 8);
  v181 = (v110 + 8);
  v194 = v87;
  while (v128 < v186[2])
  {
    (*(v110 + 16))(v127, &v185[*(v110 + 72) * v128], v16);
    v129 = v171;
    sub_25EC79C34();
    v130 = v190;
    swift_beginAccess();
    if (*(*v130 + 16))
    {
      sub_25EC4CD24(v129);
      if (v131)
      {
        swift_endAccess();
        v152 = v192;
        v153 = *v193;
        (*v193)(v129, v192);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_25EC7A890;
        v198 = 0;
        v199 = 0xE000000000000000;
        sub_25EC7A144();

        v198 = 0x20726574697257;
        v199 = 0xE700000000000000;
        v155 = v127;
        v156 = v173;
        sub_25EC79C34();
        sub_25EC79A94();
        (v153)(v156, v152);
        v197 = v196;
        v157 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v157);

        MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC80CC0);
        v158 = v198;
        v159 = v199;
        *(v154 + 56) = MEMORY[0x277D837D0];
        *(v154 + 32) = v158;
        *(v154 + 40) = v159;
        sub_25EC7A2B4();

        sub_25EC5B6D8();
        swift_allocError();
        *v160 = 1;
        swift_willThrow();
        (*v181)(v155, v182);
        goto LABEL_56;
      }
    }

    v190 = v130;
    v191 = v128;
    swift_endAccess();
    v132 = v192;
    v133 = *v193;
    (*v193)(v129, v192);
    v188 = *v189;
    v134 = v167;
    sub_25EC79C44();
    sub_25EC79C04();
    v135 = *v179;
    v136 = v134;
    v137 = v169;
    (*v179)(v136, v169);
    swift_getObjectType();
    v138 = v173;
    sub_25EC798E4();
    swift_unknownObjectRelease();
    sub_25EC79A94();
    v187 = v133;
    (v133)(v138, v132);
    v139 = v198;
    v140 = v168;
    sub_25EC79C44();
    sub_25EC79C04();
    v135(v140, v137);
    swift_getObjectType();
    v141 = sub_25EC79904();
    swift_unknownObjectRelease();
    if (qword_27FD360E8 != -1)
    {
      swift_once();
    }

    v198 = qword_27FD36330;
    LODWORD(v199) = dword_27FD36338;
    v142 = v195;
    v143 = sub_25EC4C5EC(v139, v141, &v198);
    v195 = v142;
    if (v142)
    {
      (*v181)(v174, v182);

      goto LABEL_57;
    }

    v144 = v143;
    v128 = v191 + 1;
    v145 = v173;
    v127 = v174;
    sub_25EC79C34();
    v146 = v190;
    swift_beginAccess();

    v147 = *v146;
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v196 = *v146;
    *v146 = 0x8000000000000000;
    sub_25EC4DD18(v144, v145, v148);
    (v187)(v145, v192);
    *v146 = v196;
    swift_endAccess();
    v149 = sub_25EC79C54();
    v150 = sub_25EC60D20(&qword_27FD362A0, type metadata accessor for PSWriterM3Demo);

    v149(v151, v150);

    v16 = v182;
    (*v181)(v127, v182);
    v110 = v183;
    if (v180 == v128)
    {
      goto LABEL_56;
    }
  }

LABEL_60:
  __break(1u);
}

uint64_t sub_25EC5679C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v11 - v8;
  a3(v7);
  LOBYTE(a3) = sub_25EC79A84();
  (*(v5 + 8))(v9, v4);
  return a3 & 1;
}

uint64_t sub_25EC568B8(uint64_t a1, uint64_t *a2)
{
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - v5;
  v7 = sub_25EC79C64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v22 = *(v12 + 16);
  v13 = (v3 + 8);
  v19[2] = v8 + 8;
  v19[3] = v8 + 16;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (v22 == v15)
    {
LABEL_5:
      v18 = v22 == v16;

      return v18;
    }

    if (v15 >= *(v12 + 16))
    {
      break;
    }

    (*(v8 + 16))(v11, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15++, v7);
    sub_25EC79C34();
    v17 = sub_25EC79A84();
    (*v13)(v6, v20);
    result = (*(v8 + 8))(v11, v7);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC56B04(_BYTE *a1)
{
  v182 = a1;
  v2 = sub_25EC79C64();
  v197 = *(v2 - 8);
  v3 = *(v197 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v187 = &v182 - v7;
  v220 = sub_25EC79824();
  v8 = *(v220 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v220);
  v219 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v218 = &v182 - v12;
  v13 = sub_25EC79C14();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v188 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v190 = &v182 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v210 = &v182 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v185 = &v182 - v23;
  MEMORY[0x28223BE20](v22);
  v214 = &v182 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F8, &qword_25EC7B410);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v239 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v186 = &v182 - v29;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v30 = *(v208 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v208);
  v183 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v213 = &v182 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v206 = &v182 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v226 = &v182 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v237 = &v182 - v41;
  MEMORY[0x28223BE20](v40);
  v207 = &v182 - v42;
  v225 = sub_25EC79BF4();
  v43 = *(v225 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v225);
  v223 = &v182 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36300, &qword_25EC7B418);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v199 = &v182 - v48;
  v49 = sub_25EC79BC4();
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49);
  v205 = &v182 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v195 = &v182 - v54;
  v184 = v1;
  v55 = *(v1 + 16);
  v57 = v55 + 56;
  v56 = *(v55 + 56);
  v58 = 1 << *(v55 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v198 = (v58 + 63) >> 6;
  v194 = v53 + 16;
  v193 = v53 + 32;
  v230 = (v30 + 32);
  v224 = v43;
  v221 = v43 + 8;
  v222 = v43 + 16;
  v227 = v30;
  v235 = (v30 + 48);
  v236 = v30 + 56;
  v234 = (v14 + 16);
  v231 = (v14 + 8);
  v217 = *MEMORY[0x277D3E778];
  v216 = (v8 + 104);
  v60 = v59 & v56;
  v215 = (v8 + 8);
  v209 = (v14 + 32);
  v196 = v53;
  v191 = (v53 + 8);
  v200 = v55;

  v62 = 0;
  v233 = v13;
  v238 = v14;
  v189 = v57;
  v204 = v2;
  v203 = v6;
  v192 = v49;
  while (1)
  {
    if (!v60)
    {
      v64 = v199;
      while (1)
      {
        v63 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_91;
        }

        if (v63 >= v198)
        {

          v124 = *(v184 + 24);
          v125 = v124 + 56;
          v126 = 1 << v124[32];
          v127 = -1;
          if (v126 < 64)
          {
            v127 = ~(-1 << v126);
          }

          v128 = v127 & *(v124 + 7);
          v129 = (v126 + 63) >> 6;
          v235 = (v197 + 32);
          v236 = v197 + 16;
          v238 = v197 + 8;
          v239 = v124;

          v130 = 0;
          v234 = v125;
          if (v128)
          {
            while (1)
            {
              v131 = v130;
LABEL_60:
              v132 = v197;
              v133 = v187;
              (*(v197 + 16))(v187, *(v239 + 6) + *(v197 + 72) * (__clz(__rbit64(v128)) | (v131 << 6)), v2);
              (*(v132 + 32))(v6, v133, v2);
              v134 = v188;
              sub_25EC79C44();
              sub_25EC79C04();
              v232 = *v231;
              v232(v134, v233);
              swift_getObjectType();
              v135 = v218;
              sub_25EC798F4();
              swift_unknownObjectRelease();
              v136 = v219;
              v137 = v220;
              (*v216)(v219, v217, v220);
              LOBYTE(v132) = sub_25EC79814();
              v138 = *v215;
              (*v215)(v136, v137);
              v138(v135, v137);
              if (v132)
              {
                break;
              }

              v128 &= v128 - 1;
              v6 = v203;
              v2 = v204;
              result = (*v238)(v203, v204);
              v130 = v131;
              v125 = v234;
              if (!v128)
              {
                goto LABEL_57;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
            v174 = swift_allocObject();
            *(v174 + 16) = xmmword_25EC7A890;
            v240 = 0;
            v241 = 0xE000000000000000;
            sub_25EC7A144();

            v240 = 0xD000000000000011;
            v241 = 0x800000025EC81050;
            v175 = v188;
            v176 = v203;
            sub_25EC79C44();
            sub_25EC79C04();
            v232(v175, v233);
            swift_getObjectType();
            v177 = v237;
            sub_25EC798E4();
            swift_unknownObjectRelease();
            v178 = v208;
            sub_25EC79A94();
            (*(v227 + 8))(v177, v178);
            v242 = v243;
            v179 = sub_25EC7A224();
            MEMORY[0x25F8CB870](v179);

            MEMORY[0x25F8CB870](0xD000000000000014, 0x800000025EC81070);
            v180 = v240;
            v181 = v241;
            *(v174 + 56) = MEMORY[0x277D837D0];
            *(v174 + 32) = v180;
            *(v174 + 40) = v181;
            sub_25EC7A2B4();

            *v182 = 10;
            LOBYTE(v240) = 10;
            sub_25EC5B6D8();
            swift_willThrowTypedImpl();

            return (*v238)(v176, v204);
          }

LABEL_57:
          while (1)
          {
            v131 = v130 + 1;
            if (__OFADD__(v130, 1))
            {
              goto LABEL_92;
            }

            if (v131 >= v129)
            {
            }

            v128 = *&v125[8 * v131];
            ++v130;
            if (v128)
            {
              goto LABEL_60;
            }
          }
        }

        v60 = *(v57 + 8 * v63);
        ++v62;
        if (v60)
        {
          goto LABEL_10;
        }
      }
    }

    v63 = v62;
    v64 = v199;
LABEL_10:
    v202 = v60;
    v65 = __clz(__rbit64(v60));
    v201 = v63;
    v66 = v196;
    v67 = v195;
    (*(v196 + 16))(v195, *(v200 + 48) + *(v196 + 72) * (v65 | (v63 << 6)), v49);
    (*(v66 + 32))(v205, v67, v49);
    sub_25EC79B34();
    v68 = sub_25EC79B14();
    v69 = *(v68 - 8);
    result = (*(v69 + 48))(v64, 1, v68);
    if (result == 1)
    {
      goto LABEL_95;
    }

    v70 = sub_25EC79B04();
    (*(v69 + 8))(v64, v68);
    v212 = sub_25EC6A534(v70);

    result = sub_25EC79B94();
    v71 = result;
    v229 = *(result + 16);
    if (v229)
    {
      v72 = 0;
      v232 = MEMORY[0x277D84F90];
      v73 = v208;
      v74 = v186;
      v228 = result;
      while (v72 < *(v71 + 16))
      {
        v75 = v73;
        v76 = v224;
        v77 = v225;
        v78 = v71 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v72;
        v79 = v223;
        (*(v224 + 16))(v223, v78, v225);
        v80 = v237;
        sub_25EC79BD4();
        v81 = *v230;
        (*v230)(v74, v80, v75);
        (*v236)(v74, 0, 1, v75);
        v82 = *(v76 + 8);
        v73 = v75;
        v82(v79, v77);
        if ((*v235)(v74, 1, v75) == 1)
        {
          result = sub_25EC60CB8(v74, &qword_27FD362F8, &qword_25EC7B410);
          v71 = v228;
        }

        else
        {
          v83 = v207;
          v81(v207, v74, v75);
          v81(v226, v83, v75);
          v84 = v232;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_25EC511F8(0, *(v84 + 2) + 1, 1, v84);
          }

          v71 = v228;
          v86 = *(v84 + 2);
          v85 = *(v84 + 3);
          if (v86 >= v85 >> 1)
          {
            v84 = sub_25EC511F8(v85 > 1, v86 + 1, 1, v84);
          }

          *(v84 + 2) = v86 + 1;
          v87 = (*(v227 + 80) + 32) & ~*(v227 + 80);
          v232 = v84;
          v73 = v208;
          result = (v81)(v84 + v87 + *(v227 + 72) * v86, v226, v208);
        }

        if (v229 == ++v72)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v232 = MEMORY[0x277D84F90];
    v73 = v208;
LABEL_23:

    v88 = sub_25EC6A534(v232);

    if (*(v212 + 16) <= *(v88 + 16) >> 3)
    {
      v240 = v88;
      sub_25EC5D9A0(v212);

      v211 = v240;
    }

    else
    {
      v211 = sub_25EC5E268(v212, v88);
    }

    v89 = v230;
    result = sub_25EC79BA4();
    v90 = result;
    v229 = *(result + 16);
    if (v229)
    {
      v91 = 0;
      v232 = MEMORY[0x277D84F90];
      v228 = result;
      while (v91 < *(v90 + 16))
      {
        v92 = v238;
        v93 = v90 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v91;
        v94 = v214;
        v95 = v233;
        (*(v238 + 16))(v214, v93, v233);
        sub_25EC79C04();
        swift_getObjectType();
        v96 = v73;
        v97 = v237;
        sub_25EC798E4();
        v98 = v97;
        v73 = v96;
        v99 = *v89;
        (*v89)(v239, v98, v73);
        swift_unknownObjectRelease();
        (*v236)(v239, 0, 1, v73);
        v100 = v239;
        (*(v92 + 8))(v94, v95);
        if ((*v235)(v100, 1, v73) == 1)
        {
          result = sub_25EC60CB8(v100, &qword_27FD362F8, &qword_25EC7B410);
          v90 = v228;
        }

        else
        {
          v101 = v206;
          v99(v206, v100, v73);
          v99(v213, v101, v73);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v232 = sub_25EC511F8(0, *(v232 + 2) + 1, 1, v232);
          }

          v90 = v228;
          v103 = *(v232 + 2);
          v102 = *(v232 + 3);
          if (v103 >= v102 >> 1)
          {
            v232 = sub_25EC511F8(v102 > 1, v103 + 1, 1, v232);
          }

          v104 = v232;
          *(v232 + 2) = v103 + 1;
          result = (v99)(v104 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v103, v213, v73);
        }

        if (v229 == ++v91)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_89;
    }

    v232 = MEMORY[0x277D84F90];
LABEL_38:

    v105 = sub_25EC5DBC4(v232, v211);

    if (*(v105 + 16))
    {
      v139 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
      v236 = swift_allocObject();
      *(v236 + 16) = xmmword_25EC7A890;
      v240 = 0;
      v241 = 0xE000000000000000;
      sub_25EC7A144();
      MEMORY[0x25F8CB870](0x706E69206C6C7550, 0xED00002820737475);
      KeyPath = swift_getKeyPath();
      v141 = 1 << *(v105 + 32);
      v142 = -1;
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      v143 = v142 & *(v105 + 56);
      v144 = (v141 + 63) >> 6;
      v237 = (v227 + 8);
      v238 = v227 + 16;
      v239 = KeyPath;

      v145 = 0;
      v146 = MEMORY[0x277D84F90];
      result = v105;
      if (v143)
      {
        goto LABEL_71;
      }

      while (1)
      {
        v147 = v145 + 1;
        if (__OFADD__(v145, 1))
        {
          break;
        }

        if (v147 >= v144)
        {

          v154 = MEMORY[0x25F8CB8B0](v146, MEMORY[0x277D84CC0]);
          v156 = v155;

          MEMORY[0x25F8CB870](v154, v156);

          MEMORY[0x25F8CB870](0xD000000000000038, 0x800000025EC81010);
          v157 = v240;
          v158 = v241;
          v159 = v236;
          *(v236 + 56) = MEMORY[0x277D837D0];
          *(v159 + 32) = v157;
          *(v159 + 40) = v158;
          sub_25EC7A2B4();

          *v182 = 10;
          LOBYTE(v240) = 10;
LABEL_86:
          sub_25EC5B6D8();
          swift_willThrowTypedImpl();

          return (*v191)(v205, v192);
        }

        v143 = *(v105 + 56 + 8 * v147);
        ++v145;
        if (v143)
        {
          v145 = v147;
          do
          {
LABEL_71:
            v148 = v227;
            v149 = v183;
            (*(v227 + 16))(v183, *(result + 48) + *(v227 + 72) * (__clz(__rbit64(v143)) | (v145 << 6)), v139);
            swift_getAtKeyPath();
            v150 = v139;
            v151 = v243;
            (*(v148 + 8))(v149, v150);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v146 = sub_25EC50FAC(0, *(v146 + 2) + 1, 1, v146);
            }

            v153 = *(v146 + 2);
            v152 = *(v146 + 3);
            if (v153 >= v152 >> 1)
            {
              v146 = sub_25EC50FAC((v152 > 1), v153 + 1, 1, v146);
            }

            v143 &= v143 - 1;
            *(v146 + 2) = v153 + 1;
            *&v146[4 * v153 + 32] = v151;
            v139 = v208;
            result = v105;
          }

          while (v143);
        }
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    result = sub_25EC79BA4();
    v106 = result;
    v212 = *(result + 16);
    if (v212)
    {
      v107 = 0;
      v228 = MEMORY[0x277D84F90];
      v108 = v233;
      v109 = v185;
      v110 = v238;
      v211 = result;
      while (v107 < *(v106 + 16))
      {
        v232 = ((*(v110 + 80) + 32) & ~*(v110 + 80));
        v229 = *(v110 + 72);
        (*(v110 + 16))(v109, v232 + v106 + v229 * v107, v108);
        sub_25EC79C04();
        swift_getObjectType();
        v111 = v109;
        v112 = v218;
        sub_25EC798F4();
        swift_unknownObjectRelease();
        v113 = v219;
        v114 = v220;
        (*v216)(v219, v217, v220);
        v115 = sub_25EC79814();
        v116 = *v215;
        (*v215)(v113, v114);
        v116(v112, v114);
        if (v115)
        {
          v117 = *v209;
          (*v209)(v210, v111, v108);
          v118 = v228;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v240 = v118;
          v109 = v111;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25EC5B7F0(0, *(v118 + 16) + 1, 1);
            v118 = v240;
          }

          v106 = v211;
          v121 = *(v118 + 16);
          v120 = *(v118 + 24);
          if (v121 >= v120 >> 1)
          {
            sub_25EC5B7F0(v120 > 1, v121 + 1, 1);
            v118 = v240;
          }

          *(v118 + 16) = v121 + 1;
          v228 = v118;
          v108 = v233;
          result = (v117)(v232 + v118 + v121 * v229, v210, v233);
        }

        else
        {
          result = (*v231)(v111, v108);
          v109 = v111;
          v106 = v211;
        }

        ++v107;
        v110 = v238;
        if (v212 == v107)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_90;
    }

    v228 = MEMORY[0x277D84F90];
    v110 = v238;
LABEL_51:

    v122 = v228;
    v123 = *(v228 + 16);
    if (v123)
    {
      break;
    }

    v60 = (v202 - 1) & v202;
    v49 = v192;
    (*v191)(v205, v192);

    v62 = v201;
    v2 = v204;
    v6 = v203;
    v57 = v189;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_25EC7A890;
  v240 = 0;
  v241 = 0xE000000000000000;
  sub_25EC7A144();

  v240 = 0xD000000000000011;
  v241 = 0x800000025EC81050;
  swift_getKeyPath();

  v161 = 0;
  v162 = MEMORY[0x277D84F90];
  while (v161 < *(v122 + 16))
  {
    v163 = v122 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v161;
    v164 = v190;
    v165 = v233;
    (*(v110 + 16))(v190, v163, v233);
    swift_getAtKeyPath();
    v166 = v243;
    (*(v110 + 8))(v164, v165);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25EC50FAC(0, *(v162 + 16) + 1, 1, v162);
      v162 = result;
    }

    v168 = *(v162 + 16);
    v167 = *(v162 + 24);
    v122 = v228;
    if (v168 >= v167 >> 1)
    {
      result = sub_25EC50FAC((v167 > 1), v168 + 1, 1, v162);
      v162 = result;
    }

    ++v161;
    *(v162 + 16) = v168 + 1;
    *(v162 + 4 * v168 + 32) = v166;
    v110 = v238;
    if (v123 == v161)
    {

      v169 = MEMORY[0x25F8CB8B0](v162, MEMORY[0x277D84CC0]);
      v171 = v170;

      MEMORY[0x25F8CB870](v169, v171);

      MEMORY[0x25F8CB870](0xD000000000000014, 0x800000025EC81070);
      v172 = v240;
      v173 = v241;
      *(v160 + 56) = MEMORY[0x277D837D0];
      *(v160 + 32) = v172;
      *(v160 + 40) = v173;
      sub_25EC7A2B4();

      *v182 = 10;
      LOBYTE(v240) = 10;
      goto LABEL_86;
    }
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}