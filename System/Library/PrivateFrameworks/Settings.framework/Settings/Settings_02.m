uint64_t sub_21CE0FE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401D0, &qword_21CE717B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  sub_21CE6BEA0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21CE0FF90(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401D0, &qword_21CE717B0);
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

  v10 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  sub_21CE6BE90();
  swift_endAccess();
  return sub_21CE10100;
}

uint64_t sub_21CE10118@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CE6BEC0();

  *a2 = v5;
  return result;
}

uint64_t sub_21CE101A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CE6BED0();
}

uint64_t sub_21CE10234()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CE6BEC0();

  return v1;
}

uint64_t sub_21CE102B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CE6BED0();
}

uint64_t (*sub_21CE10320(uint64_t *a1))()
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
  *(v3 + 48) = sub_21CE6BEB0();
  return sub_21CE1581C;
}

void sub_21CE103C4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21CE1042C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_21CE6BE90();
  return swift_endAccess();
}

uint64_t sub_21CE104A8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E8, &unk_21CE71808);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  sub_21CE6BEA0();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_21CE10648(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21CE6BE90();
  return swift_endAccess();
}

uint64_t sub_21CE106C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E8, &unk_21CE71808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  sub_21CE6BEA0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21CE107F8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E8, &unk_21CE71808);
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

  v10 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensionsLookup;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  sub_21CE6BE90();
  swift_endAccess();
  return sub_21CE15820;
}

void sub_21CE10968(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_21CE6BEA0();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_21CE6BEA0();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_21CE10AD0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402C8, &unk_21CE718E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = [a1 extensions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402D0, &qword_21CE718F8);
  v10 = sub_21CE6CD40();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:

    v19 = sub_21CE13D78(v16);
    sub_21CE12E24(&v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402D8, &qword_21CE71900);
    sub_21CE6CE40();
    return (*(v5 + 8))(v8, v4);
  }

  v11 = sub_21CE6D360();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  sub_21CE6D310();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v18[1] = v2;
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CF1B2A0](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      ++v12;
      type metadata accessor for SettingsExtension();
      v14 = swift_allocObject();
      swift_getObjectType();
      sub_21CE17714(v13, v14);
      sub_21CE6D2F0();
      v15 = *(v19 + 16);
      sub_21CE6D320();
      sub_21CE6D330();
      sub_21CE6D300();
    }

    while (v11 != v12);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_21CE10D7C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) localizedName];
  sub_21CE6CC50();

  v4 = [*(v2 + 16) localizedName];
  sub_21CE6CC50();

  sub_21CE1570C();
  v5 = sub_21CE6D170();

  return v5 == -1;
}

id sub_21CE10EF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionsObserver.QueryObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ExtensionsObserver.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ExtensionsObserver.init()();
  return v3;
}

uint64_t ExtensionsObserver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensions;
  v16 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F8, &qword_21CE71818);
  sub_21CE6BE80();
  (*(v11 + 32))(v0 + v15, v14, v10);
  v17 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensionsLookup;
  v22 = sub_21CDFA444(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40200, &qword_21CE71820);
  sub_21CE6BE80();
  (*(v6 + 32))(v0 + v17, v9, v5);
  v18 = sub_21CE6CE20();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v0;

  sub_21CE11F34(0, 0, v4, &unk_21CE71830, v19);

  return v0;
}

uint64_t sub_21CE112AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40328, &qword_21CE71950);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40330, &qword_21CE71958);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40338, &unk_21CE71960);
  v4[10] = v11;
  v12 = *(v11 - 8);
  v4[11] = v12;
  v13 = *(v12 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CE11448, 0, 0);
}

uint64_t sub_21CE11448()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F8, &qword_21CE71818);
  (*(v5 + 104))(v3, *MEMORY[0x277D85778], v4);
  sub_21CE6CE70();
  sub_21CE6CE50();
  v0[13] = 0;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_21CE11590;
  v9 = v0[6];
  v10 = v0[4];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_21CE11590()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CE1168C, 0, 0);
}

uint64_t sub_21CE1168C()
{
  v1 = v0[2];
  v0[15] = v1;
  if (v1)
  {
    sub_21CE6CDE0();
    v0[16] = sub_21CE6CDD0();
    v3 = sub_21CE6CDB0();

    return MEMORY[0x2822009F8](sub_21CE117C8, v3, v2);
  }

  else
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    (*(v0[5] + 8))(v0[6], v0[4]);
    (*(v5 + 8))(v4, v6);

    v8 = v0[1];

    return v8();
  }
}

void sub_21CE117C8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[3];

  sub_21CE11BD4(v2, v4);
  v0[17] = v3;
  if (v3)
  {
  }

  else
  {
    v5 = v0[15];

    MEMORY[0x2822009F8](sub_21CE11884, 0, 0);
  }
}

uint64_t sub_21CE11884()
{
  v0[13] = v0[17];
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_21CE11590;
  v3 = v0[6];
  v4 = v0[4];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v4);
}

void sub_21CE11934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402D8, &qword_21CE71900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(v3 + 16);
  v7(&v20 - v5, a1, v2);
  Observer = type metadata accessor for ExtensionsObserver.QueryObserver(0);
  v9 = objc_allocWithZone(Observer);
  v7(&v9[OBJC_IVAR____TtCC8Settings18ExtensionsObserverP33_8B62C04EFBF9C0BB57B71BCEDA4DE89713QueryObserver_continuation], v6, v2);
  v20.receiver = v9;
  v20.super_class = Observer;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40700, &qword_21CE71908);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CE71750;
  v12 = objc_opt_self();
  v13 = sub_21CE6CC20();
  v14 = [v12 extensionPointIdentifierQuery_];

  *(v11 + 32) = v14;
  v15 = objc_allocWithZone(MEMORY[0x277CC5E08]);
  sub_21CDE40C8(0, &unk_27CE40340, 0x277CC5DF8);
  v16 = v10;
  v17 = sub_21CE6CD30();

  v18 = [v15 initWithQueries:v17 delegate:v16];

  *(swift_allocObject() + 16) = v18;
  v19 = v18;
  sub_21CE6CE30();
  [v19 resume];
}

uint64_t sub_21CE11BD4(unint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  v3 = v2;
  v5 = a1;
  v37 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_29:
    v6 = sub_21CE6D360();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CE6BED0();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_21CE6BED0();
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_30;
  }

LABEL_3:
  v30 = isUniquelyReferenced_nonNull_native;
  v31 = v3;
  v7 = 0;
  v35 = v5 & 0xC000000000000001;
  v32 = v5 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x277D84F98];
  v33 = v6;
  v34 = v5;
  while (1)
  {
    if (v35)
    {
      v9 = MEMORY[0x21CF1B2A0](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v7 >= *(v32 + 16))
      {
        goto LABEL_28;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v36 = v10;
    v11 = [*(v9 + 16) bundleIdentifier];
    v5 = sub_21CE6CC50();
    v13 = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = sub_21CE66850(v5, v13);
    v15 = v8[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_26;
    }

    v18 = v14;
    if (v8[3] < v17)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_21CE46C6C();
      if (v18)
      {
LABEL_17:

        v21 = v8[7];
        v22 = *(v21 + 8 * v3);
        *(v21 + 8 * v3) = v9;

        goto LABEL_21;
      }
    }

LABEL_19:
    v8[(v3 >> 6) + 8] |= 1 << v3;
    v23 = (v8[6] + 16 * v3);
    *v23 = v5;
    v23[1] = v13;
    *(v8[7] + 8 * v3) = v9;
    v24 = v8[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_27;
    }

    v8[2] = v26;
LABEL_21:

    MEMORY[0x21CF1AD00](v27);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21CE6CD60();
    }

    sub_21CE6CD80();

    ++v7;
    v5 = v34;
    if (v36 == v33)
    {
      goto LABEL_30;
    }
  }

  sub_21CE459F8(v17, isUniquelyReferenced_nonNull_native);
  v19 = sub_21CE66850(v5, v13);
  if ((v18 & 1) == (v20 & 1))
  {
    v3 = v19;
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  result = sub_21CE6D440();
  __break(1u);
  return result;
}

uint64_t sub_21CE11F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21CDE5A20(a3, v27 - v11);
  v13 = sub_21CE6CE20();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21CDE5494(v12, &qword_27CE401F0, &qword_21CE71300);
  }

  else
  {
    sub_21CE6CE10();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21CE6CDB0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21CE6CC90() + 32;
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

      sub_21CDE5494(a3, &qword_27CE401F0, &qword_21CE71300);

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

  sub_21CDE5494(a3, &qword_27CE401F0, &qword_21CE71300);
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

uint64_t sub_21CE12224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21CDE5A20(a3, v27 - v11);
  v13 = sub_21CE6CE20();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21CDE5494(v12, &qword_27CE401F0, &qword_21CE71300);
  }

  else
  {
    sub_21CE6CE10();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21CE6CDB0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21CE6CC90() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402C0, &qword_21CE718D8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_21CDE5494(a3, &qword_27CE401F0, &qword_21CE71300);

      return v24;
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

  sub_21CDE5494(a3, &qword_27CE401F0, &qword_21CE71300);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402C0, &qword_21CE718D8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static ExtensionsObserver.lookupExtension(by:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CE125DC;

  return (sub_21CE14C78)(a1, a2);
}

uint64_t sub_21CE125DC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_21CE126D8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_21CDE40C8(0, &unk_27CE40208, 0x277CC5DD8);
  **(*(v1 + 64) + 40) = sub_21CE6CD40();

  return MEMORY[0x282200948](v1);
}

uint64_t static ExtensionsObserver.lookupExtensions(by:)(uint64_t a1)
{
  v25 = a1;
  v1 = objc_opt_self();
  v2 = objc_opt_self();
  v3 = sub_21CE6CC20();
  v4 = [v2 extensionPointIdentifierQuery_];

  v5 = [v1 executeQuery_];
  sub_21CDE40C8(0, &unk_27CE40208, 0x277CC5DD8);
  v6 = sub_21CE6CD40();

  v28 = MEMORY[0x277D84F90];
  if (!(v6 >> 62))
  {
    v26 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_20:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v26 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = sub_21CE6D360();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_3:
  v8 = 0;
  v24 = v6 & 0xC000000000000001;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v23 = v9;
    v10 = v8;
    while (1)
    {
      if (v24)
      {
        v11 = MEMORY[0x21CF1B2A0](v10, v6);
      }

      else
      {
        if (v10 >= *(v26 + 16))
        {
          goto LABEL_18;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v13 = v6;
      v14 = [v11 bundleIdentifier];
      v15 = sub_21CE6CC50();
      v17 = v16;

      v27[0] = v15;
      v27[1] = v17;
      MEMORY[0x28223BE20](v18);
      v22[2] = v27;
      LOBYTE(v14) = sub_21CE12C30(sub_21CE150CC, v22, v25);

      if (v14)
      {
        break;
      }

      ++v10;
      v6 = v13;
      if (v8 == v7)
      {
        v9 = v23;
        goto LABEL_21;
      }
    }

    type metadata accessor for SettingsExtension();
    v19 = swift_allocObject();
    sub_21CE1424C(v12, v19);
    MEMORY[0x21CF1AD00]();
    v6 = v13;
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21CE6CD60();
    }

    sub_21CE6CD80();
    v9 = v28;
  }

  while (v8 != v7);
LABEL_21:

  return v9;
}

uint64_t ExtensionsObserver.deinit()
{
  v1 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensionsLookup;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ExtensionsObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensionsLookup;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CE12BF0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExtensionsObserver(0);
  result = sub_21CE6BE50();
  *a1 = result;
  return result;
}

uint64_t sub_21CE12C30(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_21CE12CDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21CE12D60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40700, &qword_21CE71908);
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

uint64_t sub_21CE12E24(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21CE12E10(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21CE12EA0(v6);
  return sub_21CE6D300();
}

uint64_t sub_21CE12EA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21CE6D3D0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SettingsExtension();
        v6 = sub_21CE6CD70();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_21CE13124(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21CE12FA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21CE12FA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v18 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_5:
    v17 = a3;
    v6 = *(v18 + 8 * a3);
    v15 = v5;
    v16 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = *(v6 + 16);

      v9 = [v8 localizedName];
      sub_21CE6CC50();

      v10 = [*(v7 + 16) localizedName];
      sub_21CE6CC50();

      sub_21CE1570C();
      v11 = sub_21CE6D170();

      if (v11 != -1)
      {
LABEL_4:
        a3 = v17 + 1;
        v4 = v16 + 1;
        v5 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      v12 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v12;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21CE13124(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_92:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_94;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v108 = result;
  while (1)
  {
    v11 = v9;
    if ((v9 + 1) >= v8)
    {
      v8 = (v9 + 1);
      goto LABEL_22;
    }

    v12 = *v6;
    v9 = *(*v6 + 8 * (v9 + 1));
    v117 = v9;
    v115 = *(v12 + 8 * v11);

    v111 = sub_21CE10D7C(&v117, &v115);
    if (v5)
    {
    }

    v103 = v10;

    v13 = (v11 + 2);
    v106 = v11;
    v113 = 8 * v11;
    v14 = v12 + 8 * v11 + 16;
    while (v8 != v13)
    {
      v15 = v8;
      v16 = *(v14 - 8);
      v10 = *v14;
      v17 = *(*v14 + 16);

      v18 = [v17 localizedName];
      v19 = sub_21CE6CC50();
      v9 = v20;

      v117 = v19;
      v118 = v9;
      v21 = [*(v16 + 16) localizedName];
      v22 = sub_21CE6CC50();
      v24 = v23;

      v115 = v22;
      v116 = v24;
      sub_21CE1570C();
      v25 = sub_21CE6D170();

      v8 = v15;

      ++v13;
      v14 += 8;
      if (((v111 ^ (v25 != -1)) & 1) == 0)
      {
        v8 = (v13 - 1);
        break;
      }
    }

    v5 = 0;
    v6 = a3;
    v7 = v108;
    if (!v111)
    {
      v10 = v103;
LABEL_20:
      v11 = v106;
      goto LABEL_22;
    }

    v26 = v106;
    if (v8 < v106)
    {
      goto LABEL_125;
    }

    if (v106 < v8)
    {
      v27 = 8 * v8 - 8;
      v28 = v8;
      v10 = v103;
      do
      {
        if (v26 != --v28)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_129;
          }

          v30 = *(v29 + v113);
          *(v29 + v113) = *(v29 + v27);
          *(v29 + v27) = v30;
        }

        ++v26;
        v27 -= 8;
        v113 += 8;
      }

      while (v26 < v28);
      goto LABEL_20;
    }

    v10 = v103;
    v11 = v106;
LABEL_22:
    v31 = v6[1];
    if (v8 < v31)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_122;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v31)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = (v11 + a4);
        }

        if (v9 < v11)
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          result = sub_21CE13D64(v10);
          v10 = result;
LABEL_94:
          v119 = v10;
          v96 = *(v10 + 2);
          if (v96 >= 2)
          {
            while (*v6)
            {
              v97 = v10;
              v10 = (v96 - 1);
              v98 = *&v97[16 * v96];
              v99 = *&v97[16 * v96 + 24];
              sub_21CE138CC((*v6 + 8 * v98), (*v6 + 8 * *&v97[16 * v96 + 16]), (*v6 + 8 * v99), v9);
              if (v5)
              {
              }

              if (v99 < v98)
              {
                goto LABEL_119;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v97 = sub_21CE13D64(v97);
              }

              if (v96 - 2 >= *(v97 + 2))
              {
                goto LABEL_120;
              }

              v100 = &v97[16 * v96];
              *v100 = v98;
              *(v100 + 1) = v99;
              v119 = v97;
              result = sub_21CE13CD8(v96 - 1);
              v10 = v119;
              v96 = *(v119 + 2);
              if (v96 <= 1)
              {
              }
            }

            goto LABEL_130;
          }
        }

        if (v8 != v9)
        {
          break;
        }
      }
    }

    v9 = v8;
    if (v8 < v11)
    {
      goto LABEL_121;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21CDF2890(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_21CDF2890((v32 > 1), v33 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v11;
    *(v35 + 5) = v9;
    v36 = *v7;
    if (!v36)
    {
      goto LABEL_131;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v10 + 4);
          v39 = *(v10 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_51:
          if (v41)
          {
            goto LABEL_110;
          }

          v54 = &v10[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_113;
          }

          v60 = &v10[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_117;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v64 = &v10[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_65:
        if (v59)
        {
          goto LABEL_112;
        }

        v67 = &v10[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_72:
        v75 = v37 - 1;
        if (v37 - 1 >= v34)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_128;
        }

        v76 = *&v10[16 * v75 + 32];
        v77 = *&v10[16 * v37 + 40];
        sub_21CE138CC((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36);
        if (v5)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21CE13D64(v10);
        }

        if (v75 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v78 = &v10[16 * v75];
        *(v78 + 4) = v76;
        *(v78 + 5) = v77;
        v119 = v10;
        result = sub_21CE13CD8(v37);
        v10 = v119;
        v34 = *(v119 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_108;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_111;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_114;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v8 = v6[1];
    v7 = v108;
    if (v9 >= v8)
    {
      goto LABEL_92;
    }
  }

  v104 = v10;
  v105 = v5;
  v79 = *v6;
  v80 = (*v6 + 8 * v8 - 8);
  v107 = v11;
  v81 = (v11 - v8);
  v109 = v9;
LABEL_83:
  v112 = v80;
  v114 = v8;
  v82 = *(v79 + 8 * v8);
  v110 = v81;
  while (1)
  {
    v83 = *v80;
    v84 = *(v82 + 16);

    v85 = [v84 localizedName];
    v86 = sub_21CE6CC50();
    v88 = v87;

    v117 = v86;
    v118 = v88;
    v89 = [*(v83 + 16) localizedName];
    v90 = sub_21CE6CC50();
    v92 = v91;

    v115 = v90;
    v116 = v92;
    sub_21CE1570C();
    v93 = sub_21CE6D170();

    if (v93 != -1)
    {
LABEL_82:
      v8 = v114 + 1;
      v80 = v112 + 1;
      v9 = v109;
      v81 = v110 - 1;
      if ((v114 + 1) != v109)
      {
        goto LABEL_83;
      }

      v10 = v104;
      v5 = v105;
      v6 = a3;
      v11 = v107;
      v7 = v108;
      if (v109 < v107)
      {
        goto LABEL_121;
      }

      goto LABEL_32;
    }

    if (!v79)
    {
      break;
    }

    v94 = *v80;
    v82 = v80[1];
    *v80 = v82;
    v80[1] = v94;
    --v80;
    if (__CFADD__(v81++, 1))
    {
      goto LABEL_82;
    }
  }

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
  return result;
}

uint64_t sub_21CE138CC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[8 * v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v42 = &v15[8 * v12];
    if (v10 < 8 || v5 <= v6)
    {
      v37 = v5;
    }

    else
    {
      __srca = v15;
      do
      {
        v39 = v5;
        v26 = v5 - 8;
        v27 = v4 - 8;
        v28 = v42;
        v40 = v5 - 8;
        while (1)
        {
          v29 = v27;
          v30 = v27 + 8;
          v31 = *(v28 - 1);
          v28 -= 8;
          v32 = *v26;
          v33 = *(v31 + 16);

          v34 = [v33 localizedName];
          sub_21CE6CC50();

          v35 = [*(v32 + 16) localizedName];
          sub_21CE6CC50();

          sub_21CE1570C();
          v36 = sub_21CE6D170();

          if (v36 == -1)
          {
            break;
          }

          if (v30 != v42)
          {
            *v29 = *v28;
          }

          v27 = v29 - 8;
          v42 = v28;
          v26 = v40;
          if (v28 <= __srca)
          {
            v42 = v28;
            v37 = v39;
            v15 = __srca;
            goto LABEL_39;
          }
        }

        v24 = v30 == v39;
        v37 = v40;
        v4 = v29;
        if (!v24)
        {
          *v29 = *v40;
        }

        v15 = __srca;
        if (v42 <= __srca)
        {
          break;
        }

        v5 = v40;
      }

      while (v40 > v6);
    }
  }

  else
  {
    if (__dst != __src || &__src[8 * v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v42 = &__dst[8 * v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = *v15;
        v18 = *(*v5 + 16);
        v19 = v5;

        v20 = [v18 localizedName];
        sub_21CE6CC50();

        v21 = [*(v17 + 16) localizedName];
        sub_21CE6CC50();

        sub_21CE1570C();
        v22 = sub_21CE6D170();

        if (v22 != -1)
        {
          break;
        }

        v23 = v19;
        v5 = v19 + 8;
        if (v6 != v19)
        {
          goto LABEL_13;
        }

LABEL_14:
        v6 += 8;
        if (v15 < v42)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v23 = v15;
      v24 = v6 == v15;
      v15 += 8;
      v5 = v19;
      if (v24)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v6 = *v23;
      goto LABEL_14;
    }

LABEL_35:
    v37 = v6;
  }

LABEL_39:
  if (v37 != v15 || v37 >= &v15[(v42 - v15 + (v42 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v37, v15, 8 * ((v42 - v15) / 8));
  }

  return 1;
}

uint64_t sub_21CE13CD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CE13D64(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21CE13D78(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_21CE6D360();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21CE12D60(v3, 0);
  sub_21CE13E0C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21CE13E0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21CE6D360();
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
      result = sub_21CE6D360();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21CE15760(&unk_27CE402E0, &qword_27CE401F8, &qword_21CE71818);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F8, &qword_21CE71818);
            v9 = sub_21CE1413C(v13, i, a3);
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
        type metadata accessor for SettingsExtension();
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

uint64_t sub_21CE13F9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21CE6D360();
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
      result = sub_21CE6D360();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21CE15760(&qword_27CE40308, &qword_27CE40300, &unk_21CE71920);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40300, &unk_21CE71920);
            v9 = sub_21CE141C4(v13, i, a3);
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
        sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
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

uint64_t (*sub_21CE1413C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CF1B2A0](a2, a3);
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
    return sub_21CE141BC;
  }

  __break(1u);
  return result;
}

void (*sub_21CE141C4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CF1B2A0](a2, a3);
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
    return sub_21CE14244;
  }

  __break(1u);
  return result;
}

id sub_21CE1424C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - v6;
  v8 = sub_21CE6BA60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 16) = a1;
  v13 = a1;
  if (![v13 respondsToSelector_])
  {
    goto LABEL_12;
  }

  v14 = sub_21CE6BB50();
  v15 = [swift_unknownObjectRetain() performSelector_];
  result = v13;
  if (v15)
  {
    swift_unknownObjectRetain();
    v56[0] = v15;
    if (swift_dynamicCast())
    {

      (*(v9 + 56))(v7, 0, 1, v8);
      (*(v9 + 32))(v12, v7, v8);
      v17 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v18 = sub_21CE6B9B0();
      v19 = [v17 initWithURL_];

      *(a2 + 24) = v19;
      if (!v19)
      {
        if (qword_27CE3FA30 != -1)
        {
          swift_once();
        }

        v56[0] = 0;
        v56[1] = 0xE000000000000000;
        sub_21CE6D290();

        v56[0] = 0xD000000000000011;
        v56[1] = 0x800000021CE76980;
        sub_21CE157B4();
        v20 = sub_21CE6D3E0();
        MEMORY[0x21CF1ACB0](v20);

        MEMORY[0x21CF1ACB0](33, 0xE100000000000000);
        v22 = v56[0];
        v21 = v56[1];
        if (qword_27CE3FA38 != -1)
        {
          swift_once();
        }

        v23 = sub_21CE6BDA0();
        __swift_project_value_buffer(v23, qword_27CE412C0);

        v24 = sub_21CE6BD80();
        v25 = sub_21CE6CF10();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v56[0] = v55;
          *v26 = 136446978;
          v27 = sub_21CE6D2B0();
          v29 = sub_21CDF2CC8(v27, v28, v56);
          v54 = v22;
          v30 = v29;

          *(v26 + 4) = v30;
          *(v26 + 12) = 2048;
          *(v26 + 14) = 81;
          *(v26 + 22) = 2082;
          v31 = sub_21CE6D2B0();
          v33 = sub_21CDF2CC8(v31, v32, v56);

          *(v26 + 24) = v33;
          *(v26 + 32) = 2082;
          v34 = sub_21CDF2CC8(v54, v21, v56);

          *(v26 + 34) = v34;
          _os_log_impl(&dword_21CDE1000, v24, v25, "%{public}s:%ld %{public}s %{public}s", v26, 0x2Au);
          v35 = v55;
          swift_arrayDestroy();
          MEMORY[0x21CF1BD50](v35, -1, -1);
          MEMORY[0x21CF1BD50](v26, -1, -1);
        }

        else
        {
        }
      }

      (*(v9 + 8))(v12, v8);
      return a2;
    }

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_21CDE5494(v7, &unk_27CE40310, &qword_21CE71470);
LABEL_12:
    *(a2 + 24) = 0;
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_21CE6D290();

    strcpy(v56, "No bundle for ");
    HIBYTE(v56[1]) = -18;
    v36 = [v13 bundleIdentifier];
    v37 = sub_21CE6CC50();
    v39 = v38;

    MEMORY[0x21CF1ACB0](v37, v39);

    MEMORY[0x21CF1ACB0](33, 0xE100000000000000);
    v41 = v56[0];
    v40 = v56[1];
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v42 = sub_21CE6BDA0();
    __swift_project_value_buffer(v42, qword_27CE412C0);

    v43 = sub_21CE6BD80();
    v44 = sub_21CE6CF10();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56[0] = v46;
      *v45 = 136446978;
      v47 = sub_21CE6D2B0();
      v49 = sub_21CDF2CC8(v47, v48, v56);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2048;
      *(v45 + 14) = 85;
      *(v45 + 22) = 2082;
      v50 = sub_21CE6D2B0();
      v52 = sub_21CDF2CC8(v50, v51, v56);

      *(v45 + 24) = v52;
      *(v45 + 32) = 2082;
      v53 = sub_21CDF2CC8(v41, v40, v56);

      *(v45 + 34) = v53;
      _os_log_impl(&dword_21CDE1000, v43, v44, "%{public}s:%ld %{public}s %{public}s", v45, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v46, -1, -1);
      MEMORY[0x21CF1BD50](v45, -1, -1);
    }

    else
    {
    }

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CE149BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21CE14AB0;

  return v6(v2 + 32);
}

uint64_t sub_21CE14AB0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21CE14BC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CDE7A00;

  return sub_21CE112AC(a1, v4, v5, v6);
}

uint64_t sub_21CE14C78(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_21CE14C98, 0, 0);
}

uint64_t sub_21CE14C98()
{
  v1 = objc_opt_self();
  v2 = objc_opt_self();
  v3 = sub_21CE6CC20();
  v4 = [v2 extensionPointIdentifierQuery_];
  v0[21] = v4;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21CE14E24;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40320, &qword_21CE71930);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CE126D8;
  v0[13] = &block_descriptor_1;
  v0[14] = v5;
  [v1 executeQuery:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CE14E24()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CE14F04, 0, 0);
}

uint64_t sub_21CE14F04()
{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_21CE6D360();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v20 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x21CF1B2A0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            type metadata accessor for SettingsExtension();
            v16 = swift_allocObject();
            v17 = sub_21CE1424C(v21, v16);
            goto LABEL_22;
          }
        }

        else
        {
          if (v3 >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v4 = *(v1 + 8 * v3 + 32);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        v6 = *(v0 + 152);
        v7 = *(v0 + 160);
        v21 = v4;
        v8 = [v4 bundleIdentifier];
        v9 = sub_21CE6CC50();
        v11 = v10;

        if (v9 == v6 && v11 == v7)
        {
          goto LABEL_17;
        }

        v13 = *(v0 + 152);
        v14 = *(v0 + 160);
        v15 = sub_21CE6D400();

        if (v15)
        {
          goto LABEL_18;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  v17 = 0;
LABEL_22:
  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_21CE150CC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CE6D400() & 1;
  }
}

void sub_21CE15158()
{
  sub_21CE15538(319, &qword_27CE40228, &qword_27CE401F8, &qword_21CE71818, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21CE15538(319, &qword_27CE40230, &qword_27CE40200, &qword_21CE71820, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CE1547C()
{
  sub_21CE15538(319, &qword_27CE402B8, &qword_27CE401F8, &qword_21CE71818, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21CE15538(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_21CE1559C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CDE7888;

  return sub_21CE149BC(a1, v5);
}

uint64_t sub_21CE15654(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CDE7A00;

  return sub_21CE149BC(a1, v5);
}

unint64_t sub_21CE1570C()
{
  result = qword_281213350[0];
  if (!qword_281213350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281213350);
  }

  return result;
}

uint64_t sub_21CE15760(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21CE157B4()
{
  result = qword_2812132B0;
  if (!qword_2812132B0)
  {
    sub_21CE6BA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812132B0);
  }

  return result;
}

uint64_t static NavigationManager.shared.getter()
{
  type metadata accessor for NavigationManager();

  return swift_initStaticObject();
}

uint64_t NavigationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t NavigationToken.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_title);
  v2 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_title + 8);

  return v1;
}

uint64_t NavigationToken.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_subtitle + 8);

  return v1;
}

void *NavigationToken.navigationPath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath);
  v2 = v1;
  return v1;
}

void *NavigationToken.iconData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_iconData);
  v2 = v1;
  return v1;
}

uint64_t NavigationToken.iconUTType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType);
  v2 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType + 8);

  return v1;
}

void sub_21CE15A24(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_title + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_title);
    v4 = sub_21CE6CC20();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_21CE6CC20();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_subtitle + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_subtitle);
    v7 = sub_21CE6CC20();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_21CE6CC20();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = sub_21CE6CC20();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath);
  v12 = sub_21CE6CC20();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_iconData);
  v14 = sub_21CE6CC20();
  [a1 encodeObject:v13 forKey:v14];

  if (*(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType + 8))
  {
    v15 = *(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType);
    v16 = sub_21CE6CC20();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_21CE6CC20();
  [a1 encodeObject:v16 forKey:v17];
  swift_unknownObjectRelease();

  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v19 = sub_21CE6CC20();
  [a1 encodeObject:v18 forKey:v19];
}

id NavigationToken.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE16568();

  return v4;
}

id NavigationToken.init(coder:)(void *a1)
{
  v2 = sub_21CE16568();

  return v2;
}

id NavigationToken.__allocating_init(title:subtitle:hasPushedContent:navigationPath:iconData:iconUTType:root:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = v11;
  v21 = objc_allocWithZone(v12);
  v22 = &v21[OBJC_IVAR____TtC8Settings15NavigationToken_title];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v21[OBJC_IVAR____TtC8Settings15NavigationToken_subtitle];
  *v23 = a3;
  v23[1] = a4;
  v21[OBJC_IVAR____TtC8Settings15NavigationToken_hasPushedContent] = a5;
  *&v21[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath] = a6;
  v24 = a6;
  if (a8 >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_21CE6BA70();
  }

  *&v21[OBJC_IVAR____TtC8Settings15NavigationToken_iconData] = v25;
  v26 = &v21[OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType];
  *v26 = a9;
  v26[1] = a10;
  v21[OBJC_IVAR____TtC8Settings15NavigationToken_isRoot] = a11 & 1;
  v29.receiver = v21;
  v29.super_class = v12;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  sub_21CE16800(a7, a8);

  return v27;
}

id NavigationToken.init(title:subtitle:hasPushedContent:navigationPath:iconData:iconUTType:root:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = &v11[OBJC_IVAR____TtC8Settings15NavigationToken_title];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v11[OBJC_IVAR____TtC8Settings15NavigationToken_subtitle];
  *v15 = a3;
  v15[1] = a4;
  v11[OBJC_IVAR____TtC8Settings15NavigationToken_hasPushedContent] = a5;
  *&v11[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath] = a6;
  v16 = a6;
  if (a8 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_21CE6BA70();
  }

  *&v11[OBJC_IVAR____TtC8Settings15NavigationToken_iconData] = v17;
  v18 = &v11[OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType];
  *v18 = a9;
  v18[1] = a10;
  v11[OBJC_IVAR____TtC8Settings15NavigationToken_isRoot] = a11 & 1;
  v21.receiver = v11;
  v21.super_class = type metadata accessor for NavigationToken();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_21CE16800(a7, a8);

  return v19;
}

id SettingsNavigationPath.init(coder:)(void *a1)
{
  v2 = v1;
  sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
  v4 = sub_21CE6D0F0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CE6BA90();
    v8 = v7;

    sub_21CDF32E8(v6, v8);
    v22.receiver = v2;
    v22.super_class = type metadata accessor for SettingsNavigationPath();
    v9 = objc_msgSendSuper2(&v22, sel_init);
  }

  else
  {
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v10 = sub_21CE6BDA0();
    __swift_project_value_buffer(v10, qword_27CE412C0);
    v11 = sub_21CE6BD80();
    v12 = sub_21CE6CF10();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446978;
      v15 = sub_21CE6D2B0();
      v17 = sub_21CDF2CC8(v15, v16, &v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 196;
      *(v13 + 22) = 2082;
      v18 = sub_21CE6D2B0();
      v20 = sub_21CDF2CC8(v18, v19, &v23);

      *(v13 + 24) = v20;
      *(v13 + 32) = 2082;
      *(v13 + 34) = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE76A20, &v23);
      _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{public}s", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v14, -1, -1);
      MEMORY[0x21CF1BD50](v13, -1, -1);
    }

    type metadata accessor for SettingsNavigationPath();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

id SettingsNavigationPath.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21CE1652C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21CE16568()
{
  v1 = v0;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v2 = sub_21CE6D0F0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CE6CC50();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = &v0[OBJC_IVAR____TtC8Settings15NavigationToken_title];
  *v7 = v4;
  v7[1] = v6;
  v8 = sub_21CE6D0F0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CE6CC50();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v0[OBJC_IVAR____TtC8Settings15NavigationToken_subtitle];
  *v13 = v10;
  v13[1] = v12;
  sub_21CDE40C8(0, &unk_27CE403F0, 0x277CCABB0);
  v14 = sub_21CE6D0F0();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 BOOLValue];
  }

  else
  {
    v16 = 0;
  }

  v0[OBJC_IVAR____TtC8Settings15NavigationToken_hasPushedContent] = v16;
  type metadata accessor for SettingsNavigationPath();
  *&v0[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath] = sub_21CE6D0F0();
  sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
  *&v0[OBJC_IVAR____TtC8Settings15NavigationToken_iconData] = sub_21CE6D0F0();
  v17 = sub_21CE6D0F0();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CE6CC50();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = &v0[OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType];
  *v22 = v19;
  v22[1] = v21;
  v23 = sub_21CE6D0F0();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 BOOLValue];
  }

  else
  {
    v25 = 0;
  }

  v1[OBJC_IVAR____TtC8Settings15NavigationToken_isRoot] = v25;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for NavigationToken();
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_21CE16800(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21CDF32E8(a1, a2);
  }

  return a1;
}

uint64_t AvailabilityType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x726576656ELL;
    }

    if (a1 == 3)
    {
      return 0x6F697469646E6F63;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6D72657465646E75;
    }

    if (a1 == 1)
    {
      return 0x6C62616C69617661;
    }
  }

  result = sub_21CE6D410();
  __break(1u);
  return result;
}

uint64_t sub_21CE16A48()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t sub_21CE16ABC()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t sub_21CE16B00@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21CE16C04(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21CE16B34()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6D72657465646E75;
    }

    if (v1 == 1)
    {
      return 0x6C62616C69617661;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x726576656ELL;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_21CE6D410();
    __break(1u);
    return result;
  }

  return 0x6F697469646E6F63;
}

unint64_t sub_21CE16C04(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21CE16C18()
{
  result = qword_27CE40400;
  if (!qword_27CE40400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40400);
  }

  return result;
}

id SettingsExtension.__allocating_init(_:)(void *a1)
{
  swift_getObjectType();

  return sub_21CE176C4(a1);
}

uint64_t sub_21CE16CD4(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  v3 = sub_21CE6CC50();

  return v3;
}

unint64_t SettingsExtension.SettingsAttributes.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v2 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t SettingsExtension.SettingsAttributes.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t sub_21CE16E74()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v2 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_21CE16F3C()
{
  v1 = [*(v0 + 16) attributes];
  v2 = sub_21CE6CB60();

  if (*(v2 + 16) && (v3 = sub_21CE66850(0xD00000000000001BLL, 0x800000021CE76DB0), (v4 & 1) != 0))
  {
    sub_21CDE66C8(*(v2 + 56) + 32 * v3, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD98, &qword_21CE71CC0);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return sub_21CDFA548(MEMORY[0x277D84F90]);
}

void *SettingsExtension.bundle.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id SettingsExtension.icon.getter()
{
  v1 = [*(v0 + 16) icon];

  return v1;
}

id SettingsExtension.init(_:)(void *a1)
{
  swift_getObjectType();

  return sub_21CE17714(a1, v1);
}

uint64_t static SettingsExtension.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) bundleIdentifier];
  v4 = sub_21CE6CC50();
  v6 = v5;

  v7 = [*(a2 + 16) bundleIdentifier];
  v8 = sub_21CE6CC50();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21CE6D400();
  }

  return v12 & 1;
}

uint64_t SettingsExtension.description.getter()
{
  v1 = *(v0 + 16);
  v2 = [v1 localizedName];
  v3 = sub_21CE6CC50();

  v9 = v3;
  MEMORY[0x21CF1ACB0](10272, 0xE200000000000000);
  v4 = [v1 bundleIdentifier];
  v5 = sub_21CE6CC50();
  v7 = v6;

  MEMORY[0x21CF1ACB0](v5, v7);

  MEMORY[0x21CF1ACB0](10537, 0xE200000000000000);
  return v9;
}

uint64_t SettingsExtension.attribute<A>(forKey:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_21CE16F3C();
  v7 = 0xD000000000000019;
  v8 = "providesSidebarItems";
  v9 = "managesSearchTerms";
  v10 = 0xD000000000000013;
  v11 = "presentsInSidebar";
  v12 = 0xD000000000000012;
  if (v5 != 4)
  {
    v12 = 0xD000000000000011;
    v11 = "sSidebarHostProtocol_>16";
  }

  if (v5 != 3)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = "hasPersonalities";
  v14 = 0xD000000000000014;
  if (v5 != 1)
  {
    v14 = 0xD000000000000010;
    v13 = "searchTermsFileName";
  }

  if (v5)
  {
    v7 = v14;
    v8 = v13;
  }

  if (v5 <= 2)
  {
    v15 = v7;
  }

  else
  {
    v15 = v10;
  }

  if (v5 <= 2)
  {
    v16 = v8;
  }

  else
  {
    v16 = v9;
  }

  if (!*(v6 + 16))
  {

    goto LABEL_19;
  }

  v17 = sub_21CE66850(v15, v16 | 0x8000000000000000);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_19:

    memset(v22, 0, sizeof(v22));
    goto LABEL_20;
  }

  sub_21CDE66C8(*(v6 + 56) + 32 * v17, v22);

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40410, &qword_21CE71B10);
  v20 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v20 ^ 1u, 1, a2);
}

uint64_t SettingsExtension.attribute<A>(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21CE16F3C();
  if (*(v8 + 16) && (v9 = sub_21CE66850(a1, a2), (v10 & 1) != 0))
  {
    sub_21CDE66C8(*(v8 + 56) + 32 * v9, v13);
  }

  else
  {

    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40410, &qword_21CE71B10);
  v11 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v11 ^ 1u, 1, a3);
}

uint64_t SettingsExtension.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SettingsExtension.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21CE17578(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) bundleIdentifier];
  v4 = sub_21CE6CC50();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_21CE175D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) bundleIdentifier];
  v4 = sub_21CE6CC50();
  v6 = v5;

  v7 = [*(v2 + 16) bundleIdentifier];
  v8 = sub_21CE6CC50();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21CE6D400();
  }

  return v12 & 1;
}

id sub_21CE176C4(void *a1)
{
  v2 = swift_allocObject();

  return sub_21CE17714(a1, v2);
}

id sub_21CE17714(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v53 - v6;
  v8 = sub_21CE6BA60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 16) = a1;
  swift_unknownObjectRetain();
  if (![a1 respondsToSelector_])
  {
    goto LABEL_12;
  }

  v13 = sub_21CE6BB50();
  v14 = [swift_unknownObjectRetain() performSelector_];
  result = a1;
  if (v14)
  {
    swift_unknownObjectRetain();
    v55[0] = v14;
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      (*(v9 + 56))(v7, 0, 1, v8);
      (*(v9 + 32))(v12, v7, v8);
      v16 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v17 = sub_21CE6B9B0();
      v18 = [v16 initWithURL_];

      *(a2 + 24) = v18;
      if (!v18)
      {
        if (qword_27CE3FA30 != -1)
        {
          swift_once();
        }

        v55[0] = 0;
        v55[1] = 0xE000000000000000;
        sub_21CE6D290();

        v55[0] = 0xD000000000000011;
        v55[1] = 0x800000021CE76980;
        sub_21CE157B4();
        v19 = sub_21CE6D3E0();
        MEMORY[0x21CF1ACB0](v19);

        MEMORY[0x21CF1ACB0](33, 0xE100000000000000);
        v21 = v55[0];
        v20 = v55[1];
        if (qword_27CE3FA38 != -1)
        {
          swift_once();
        }

        v22 = sub_21CE6BDA0();
        __swift_project_value_buffer(v22, qword_27CE412C0);

        v23 = sub_21CE6BD80();
        v24 = sub_21CE6CF10();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v55[0] = v54;
          *v25 = 136446978;
          v26 = sub_21CE6D2B0();
          v28 = sub_21CDF2CC8(v26, v27, v55);
          v53 = v21;
          v29 = v28;

          *(v25 + 4) = v29;
          *(v25 + 12) = 2048;
          *(v25 + 14) = 81;
          *(v25 + 22) = 2082;
          v30 = sub_21CE6D2B0();
          v32 = sub_21CDF2CC8(v30, v31, v55);

          *(v25 + 24) = v32;
          *(v25 + 32) = 2082;
          v33 = sub_21CDF2CC8(v53, v20, v55);

          *(v25 + 34) = v33;
          _os_log_impl(&dword_21CDE1000, v23, v24, "%{public}s:%ld %{public}s %{public}s", v25, 0x2Au);
          v34 = v54;
          swift_arrayDestroy();
          MEMORY[0x21CF1BD50](v34, -1, -1);
          MEMORY[0x21CF1BD50](v25, -1, -1);
        }

        else
        {
        }
      }

      (*(v9 + 8))(v12, v8);
      return a2;
    }

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_21CE0EAF8(v7);
LABEL_12:
    *(a2 + 24) = 0;
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_21CE6D290();

    strcpy(v55, "No bundle for ");
    HIBYTE(v55[1]) = -18;
    v35 = [a1 bundleIdentifier];
    v36 = sub_21CE6CC50();
    v38 = v37;

    MEMORY[0x21CF1ACB0](v36, v38);

    swift_unknownObjectRelease();
    MEMORY[0x21CF1ACB0](33, 0xE100000000000000);
    v40 = v55[0];
    v39 = v55[1];
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v41 = sub_21CE6BDA0();
    __swift_project_value_buffer(v41, qword_27CE412C0);

    v42 = sub_21CE6BD80();
    v43 = sub_21CE6CF10();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55[0] = v45;
      *v44 = 136446978;
      v46 = sub_21CE6D2B0();
      v48 = sub_21CDF2CC8(v46, v47, v55);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2048;
      *(v44 + 14) = 85;
      *(v44 + 22) = 2082;
      v49 = sub_21CE6D2B0();
      v51 = sub_21CDF2CC8(v49, v50, v55);

      *(v44 + 24) = v51;
      *(v44 + 32) = 2082;
      v52 = sub_21CDF2CC8(v40, v39, v55);

      *(v44 + 34) = v52;
      _os_log_impl(&dword_21CDE1000, v42, v43, "%{public}s:%ld %{public}s %{public}s", v44, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v45, -1, -1);
      MEMORY[0x21CF1BD50](v44, -1, -1);
    }

    else
    {
    }

    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_21CE17E80()
{
  result = qword_27CE40418;
  if (!qword_27CE40418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsExtension.SettingsAttributes(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SettingsExtension.SettingsAttributes(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_21CE18088(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id InitializationParameters.__allocating_init(itemIdentifier:anchor:navigationPath:contentWidth:role:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v17 = objc_allocWithZone(v9);
  v17[OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault] = 2;
  v18 = &v17[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier];
  *v18 = a1;
  v18[1] = a2;
  v19 = &v17[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
  *v19 = a3;
  v19[1] = a4;
  v20 = a5;
  if (a5)
  {
    v21 = *&a5[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath];
    v22 = v21;
  }

  else
  {
    v21 = 0;
  }

  *&v17[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath] = v21;
  v23 = &v17[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth];
  *v23 = a6;
  v23[8] = a7 & 1;
  v24 = &v17[OBJC_IVAR____TtC8Settings24InitializationParameters_role];
  *v24 = a8;
  v24[1] = a9;
  v48.receiver = v17;
  v48.super_class = v9;
  v25 = objc_msgSendSuper2(&v48, sel_init, a8);
  v26 = qword_27CE3FA30;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = [v27 description];
  v29 = sub_21CE6CC50();
  v31 = v30;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v32 = sub_21CE6BDA0();
  __swift_project_value_buffer(v32, qword_27CE412C0);

  v33 = sub_21CE6BD80();
  v34 = sub_21CE6CF30();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v20;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v35 = 136447235;
    v38 = sub_21CE6D2B0();
    v40 = sub_21CDF2CC8(v38, v39, &v47);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2048;
    *(v35 + 14) = 33;
    *(v35 + 22) = 2082;
    v41 = sub_21CE6D2B0();
    v43 = sub_21CDF2CC8(v41, v42, &v47);

    *(v35 + 24) = v43;
    *(v35 + 32) = 2160;
    *(v35 + 34) = 1752392040;
    *(v35 + 42) = 2081;
    v44 = sub_21CDF2CC8(v29, v31, &v47);

    *(v35 + 44) = v44;
    _os_log_impl(&dword_21CDE1000, v33, v34, "%{public}s:%ld %{public}s %{private,mask.hash}s", v35, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v37, -1, -1);
    MEMORY[0x21CF1BD50](v35, -1, -1);
  }

  else
  {
  }

  return v27;
}

id InitializationParameters.init(itemIdentifier:anchor:navigationPath:contentWidth:role:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v9[OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault] = 2;
  v14 = &v9[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v9[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
  *v15 = a3;
  v15[1] = a4;
  if (a5)
  {
    v16 = *&a5[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath];
    v17 = v16;
  }

  else
  {
    v16 = 0;
  }

  *&v9[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath] = v16;
  v18 = &v9[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth];
  *v18 = a6;
  v18[8] = a7 & 1;
  v19 = &v9[OBJC_IVAR____TtC8Settings24InitializationParameters_role];
  *v19 = a8;
  v19[1] = a9;
  v41.receiver = v9;
  v41.super_class = type metadata accessor for InitializationParameters();
  v20 = objc_msgSendSuper2(&v41, sel_init);
  v21 = qword_27CE3FA30;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = [v22 description];
  v24 = sub_21CE6CC50();
  v26 = v25;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v27 = sub_21CE6BDA0();
  __swift_project_value_buffer(v27, qword_27CE412C0);

  v28 = sub_21CE6BD80();
  v29 = sub_21CE6CF30();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v31;
    *v30 = 136447235;
    v32 = sub_21CE6D2B0();
    v34 = sub_21CDF2CC8(v32, v33, &v40);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2048;
    *(v30 + 14) = 33;
    *(v30 + 22) = 2082;
    v35 = sub_21CE6D2B0();
    v37 = sub_21CDF2CC8(v35, v36, &v40);

    *(v30 + 24) = v37;
    *(v30 + 32) = 2160;
    *(v30 + 34) = 1752392040;
    *(v30 + 42) = 2081;
    v38 = sub_21CDF2CC8(v24, v26, &v40);

    *(v30 + 44) = v38;
    _os_log_impl(&dword_21CDE1000, v28, v29, "%{public}s:%ld %{public}s %{private,mask.hash}s", v30, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v31, -1, -1);
    MEMORY[0x21CF1BD50](v30, -1, -1);
  }

  else
  {
  }

  return v22;
}

void sub_21CE1878C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier);
    v4 = sub_21CE6CC20();
    v5 = sub_21CE6CC20();
    [a1 encodeObject:v4 forKey:v5];
  }

  if (*(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor);
    v7 = sub_21CE6CC20();
    v8 = sub_21CE6CC20();
    [a1 encodeObject:v7 forKey:v8];
  }

  if (*(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_role + 8))
  {
    v9 = *(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_role);
    v10 = sub_21CE6CC20();
    v11 = sub_21CE6CC20();
    [a1 encodeObject:v10 forKey:v11];
  }

  v12 = *(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath);
  v13 = sub_21CE6CC20();
  [a1 encodeObject:v12 forKey:v13];

  if (*(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth + 8))
  {
    v15 = 0.0;
  }

  else
  {
    v14 = *(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth);
    v15 = v14;
  }

  v17 = sub_21CE6CC20();
  *&v16 = v15;
  [a1 encodeFloat:v17 forKey:v16];
}

id InitializationParameters.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE1F1D0(a1);

  return v4;
}

id InitializationParameters.init(coder:)(void *a1)
{
  v2 = sub_21CE1F1D0(a1);

  return v2;
}

uint64_t sub_21CE18AA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault);
  if (v1 == 2)
  {
    LOBYTE(v1) = !*(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8) && !*(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8) && !*(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath) && *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_role + 8) == 0;
    *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault) = v1;
  }

  return v1 & 1;
}

uint64_t (*sub_21CE18B30(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_21CE18AA8() & 1;
  return sub_21CE18B7C;
}

uint64_t sub_21CE18BFC()
{
  if (sub_21CE18AA8())
  {
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD000000000000031, 0x800000021CE76EE0);
    v12 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth);
    v15 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth + 8);
    v1 = &qword_27CE40458;
    v2 = &unk_21CE71CE0;
  }

  else
  {
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD00000000000001ALL, 0x800000021CE76EA0);
    v3 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier);
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8);
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    MEMORY[0x21CF1ACB0](v4, v5);

    MEMORY[0x21CF1ACB0](8236, 0xE200000000000000);
    v6 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8);
    if (v6)
    {
      v7 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor);
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8);
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    MEMORY[0x21CF1ACB0](v7, v8);

    MEMORY[0x21CF1ACB0](0xD000000000000010, 0x800000021CE76EC0);
    v13 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth);
    v16 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40458, &unk_21CE71CE0);
    v9 = sub_21CE6CC80();
    MEMORY[0x21CF1ACB0](v9);

    MEMORY[0x21CF1ACB0](0x3A656C6F7220, 0xE600000000000000);
    v14 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_role);
    v17 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_role + 8);

    v1 = &unk_27CE40460;
    v2 = &unk_21CE72620;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v10 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v10);

  return 0;
}

uint64_t sub_21CE18F34()
{
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](0);
  return sub_21CE6D4E0();
}

uint64_t sub_21CE18FA0()
{
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](0);
  return sub_21CE6D4E0();
}

id sub_21CE19040()
{
  v1 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy____lazy_storage___privateListener;
  v2 = *(v0 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy____lazy_storage___privateListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy____lazy_storage___privateListener);
  }

  else
  {
    v4 = [objc_opt_self() anonymousListener];
    [v4 setDelegate_];
    [v4 resume];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21CE190E0(void *a1)
{
  v3 = v1;
  v91 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v85 - v6;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  aBlock = 0;
  v95 = 0xE000000000000000;
  sub_21CE6D290();
  v8 = *&v1[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier];
  v9 = *&v1[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8];

  aBlock = v8;
  v95 = v9;
  MEMORY[0x21CF1ACB0](0x7463656E6E6F6320, 0xED0000203A6E6F69);
  v10 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
  swift_beginAccess();
  v92 = v10;
  v11 = *&v1[v10];
  v12 = sub_21CDE40C8(0, &qword_27CE40490, 0x277CCAE80);

  v88 = v12;
  v14 = MEMORY[0x21CF1AD30](v13, v12);
  v16 = v15;

  MEMORY[0x21CF1ACB0](v14, v16);

  v17 = v95;
  v89 = aBlock;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v18 = sub_21CE6BDA0();
  v19 = __swift_project_value_buffer(v18, qword_27CE412C0);

  v20 = sub_21CE6BD80();
  v21 = sub_21CE6CF30();

  v22 = os_log_type_enabled(v20, v21);
  v87 = v7;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v90 = v19;
    v24 = v23;
    v25 = swift_slowAlloc();
    v86 = v8;
    v26 = v25;
    aBlock = v25;
    *v24 = 136446978;
    v27 = sub_21CE6D2B0();
    v29 = sub_21CDF2CC8(v27, v28, &aBlock);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2048;
    *(v24 + 14) = 129;
    *(v24 + 22) = 2082;
    v30 = sub_21CE6D2B0();
    v32 = sub_21CDF2CC8(v30, v31, &aBlock);

    *(v24 + 24) = v32;
    *(v24 + 32) = 2082;
    v7 = sub_21CDF2CC8(v89, v17, &aBlock);

    *(v24 + 34) = v7;
    _os_log_impl(&dword_21CDE1000, v20, v21, "%{public}s:%ld %{public}s %{public}s", v24, 0x2Au);
    swift_arrayDestroy();
    v33 = v26;
    v8 = v86;
    MEMORY[0x21CF1BD50](v33, -1, -1);
    v34 = v24;
    v19 = v90;
    MEMORY[0x21CF1BD50](v34, -1, -1);
  }

  else
  {
  }

  v35 = v92;
  v36 = *&v3[v92];
  if (v36 >> 62)
  {
    if (v36 < 0)
    {
      v84 = *&v3[v92];
    }

    v37 = sub_21CE6D360();
    if (!v37)
    {
LABEL_16:
      v44 = sub_21CE1A94C(v91);
      v90 = v19;
      v45 = v44;
      v46 = swift_allocObject();
      *(v46 + 16) = v3;
      *(v46 + 24) = v45;
      v98 = sub_21CE2150C;
      v99 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v2 = 1107296256;
      v95 = 1107296256;
      v96 = sub_21CE27C50;
      v97 = &block_descriptor_78;
      v47 = _Block_copy(&aBlock);
      v48 = v45;
      v89 = v3;
      v49 = v48;

      [v49 setInvalidationHandler_];
      _Block_release(v47);

      swift_beginAccess();
      v7 = v49;
      MEMORY[0x21CF1AD00]();
      if (*((*&v3[v35] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v3[v35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_16;
    }
  }

  v38 = v37 - 1;
  if (__OFSUB__(v37, 1))
  {
    __break(1u);
    goto LABEL_32;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
LABEL_32:

    v39 = MEMORY[0x21CF1B2A0](v38, v36);

    goto LABEL_15;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v38 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v36 + 8 * v38 + 32);
LABEL_15:
    v40 = swift_allocObject();
    *(v40 + 16) = v3;
    *(v40 + 24) = v39;
    v98 = sub_21CE21504;
    v99 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_21CE27C50;
    v97 = &block_descriptor_72;
    v41 = _Block_copy(&aBlock);
    v42 = v3;
    v43 = v39;

    [v43 setInvalidationHandler_];
    _Block_release(v41);

    goto LABEL_16;
  }

  __break(1u);
LABEL_35:
  sub_21CE6CD60();
LABEL_17:
  sub_21CE6CD80();
  swift_endAccess();
  [v7 resume];
  v98 = sub_21CE1A43C;
  v99 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v95 = v2;
  v96 = sub_21CE18088;
  v97 = &block_descriptor_81;
  v50 = _Block_copy(&aBlock);
  v91 = v7;
  v51 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v50);
  sub_21CE6D190();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404C8, &qword_21CE71D10);
  v52 = v35;
  if (swift_dynamicCast())
  {
    v53 = v93;
  }

  else
  {
    v53 = 0;
  }

  aBlock = 0;
  v95 = 0xE000000000000000;
  sub_21CE6D290();

  aBlock = v8;
  v95 = v9;
  MEMORY[0x21CF1ACB0](0x7463656E6E6F6320, 0xED0000203A6E6F69);
  v54 = *&v3[v52];

  v56 = MEMORY[0x21CF1AD30](v55, v88);
  v58 = v57;

  MEMORY[0x21CF1ACB0](v56, v58);

  MEMORY[0x21CF1ACB0](0xD000000000000010, 0x800000021CE77480);
  v93 = v53;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40718, &qword_21CE72200);
  v59 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v59);

  v61 = aBlock;
  v60 = v95;

  v62 = sub_21CE6BD80();
  v63 = sub_21CE6CF30();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock = v65;
    *v64 = 136446978;
    v66 = sub_21CE6D2B0();
    v68 = sub_21CDF2CC8(v66, v67, &aBlock);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2048;
    *(v64 + 14) = 162;
    *(v64 + 22) = 2082;
    v69 = sub_21CE6D2B0();
    v71 = sub_21CDF2CC8(v69, v70, &aBlock);

    *(v64 + 24) = v71;
    *(v64 + 32) = 2082;
    v72 = sub_21CDF2CC8(v61, v60, &aBlock);

    *(v64 + 34) = v72;
    _os_log_impl(&dword_21CDE1000, v62, v63, "%{public}s:%ld %{public}s %{public}s", v64, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v65, -1, -1);
    MEMORY[0x21CF1BD50](v64, -1, -1);
  }

  else
  {
  }

  v73 = v87;
  v74 = v89;
  v75 = sub_21CE6CE20();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  v76 = swift_allocObject();
  v76[2] = 0;
  v76[3] = 0;
  v76[4] = v53;
  v76[5] = v74;
  v77 = v74;
  swift_unknownObjectRetain();
  sub_21CE12224(0, 0, v73, &unk_21CE72210, v76);

  v78 = &v77[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_completion];
  v79 = *&v77[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_completion];
  if (v79)
  {
    v80 = v78[1];

    v79(v53);

    swift_unknownObjectRelease();
    sub_21CDEEA58(v79);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v81 = *v78;
  v82 = v78[1];
  *v78 = 0;
  v78[1] = 0;
  return sub_21CDEEA58(v81);
}

void sub_21CE19CC4(uint64_t a1, void *a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21CE6D290();
  v5 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8);

  v30 = v5;
  v31 = v4;
  MEMORY[0x21CF1ACB0](0xD000000000000019, 0x800000021CE774A0);
  v6 = [a2 description];
  v7 = sub_21CE6CC50();
  v9 = v8;

  MEMORY[0x21CF1ACB0](v7, v9);

  v11 = v30;
  v10 = v31;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v12 = sub_21CE6BDA0();
  __swift_project_value_buffer(v12, qword_27CE412C0);

  v13 = sub_21CE6BD80();
  v14 = sub_21CE6CF30();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136446978;
    v17 = sub_21CE6D2B0();
    v19 = sub_21CDF2CC8(v17, v18, &v30);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = 133;
    *(v15 + 22) = 2082;
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, &v30);

    *(v15 + 24) = v22;
    *(v15 + 32) = 2082;
    v23 = sub_21CDF2CC8(v11, v10, &v30);

    *(v15 + 34) = v23;
    _os_log_impl(&dword_21CDE1000, v13, v14, "%{public}s:%ld %{public}s %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v16, -1, -1);
    MEMORY[0x21CF1BD50](v15, -1, -1);
  }

  else
  {
  }

  v24 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
  swift_beginAccess();
  v25 = a2;
  v26 = sub_21CE1F974((a1 + v24));

  v27 = *(a1 + v24);
  if (v27 >> 62)
  {
    if (v27 < 0)
    {
      v29 = *(a1 + v24);
    }

    v28 = sub_21CE6D360();
    if (v28 >= v26)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28 >= v26)
    {
LABEL_10:
      sub_21CE315A0(v26, v28);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

void sub_21CE1A028(uint64_t a1, void *a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_21CE6D290();
  v5 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8);

  v33 = v5;
  v34 = v4;
  MEMORY[0x21CF1ACB0](0xD000000000000019, 0x800000021CE774A0);
  v35 = a2;
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40708, &unk_21CE721F0);
  v7 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v7);

  v8 = v5;
  v9 = v34;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v10 = sub_21CE6BDA0();
  __swift_project_value_buffer(v10, qword_27CE412C0);

  v11 = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446978;
    v15 = sub_21CE6D2B0();
    v32 = v8;
    v17 = sub_21CDF2CC8(v15, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = 141;
    *(v13 + 22) = 2082;
    v18 = sub_21CE6D2B0();
    v20 = sub_21CDF2CC8(v18, v19, &v33);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2082;
    v21 = sub_21CDF2CC8(v32, v9, &v33);

    *(v13 + 34) = v21;
    _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v14, -1, -1);
    MEMORY[0x21CF1BD50](v13, -1, -1);
  }

  else
  {
  }

  v22 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
  swift_beginAccess();
  v23 = v6;
  v24 = sub_21CE1FC04((a1 + v22), a2);

  v25 = *(a1 + v22);
  if (v25 >> 62)
  {
    if (v25 < 0)
    {
      v31 = *(a1 + v22);
    }

    v26 = sub_21CE6D360();
    if (v26 >= v24)
    {
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26 < v24)
  {
    goto LABEL_21;
  }

LABEL_10:
  sub_21CE315A0(v24, v26);
  swift_endAccess();
  v27 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_host);
  if ([v27 respondsToSelector_])
  {
    v28 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError);
    if (v28)
    {
      v33 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError);
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
      sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v30 = v35;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    [v27 didEndHosting_];
  }
}

uint64_t sub_21CE1A450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21CE1A474, 0, 0);
}

uint64_t sub_21CE1A474()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = sub_21CE19040();
    v4 = [v3 endpoint];

    [v1 handshakeWithEndPoint_];
  }

  **(v0 + 16) = v1 == 0;
  v5 = *(v0 + 8);

  return v5();
}

void sub_21CE1A52C(void *a1)
{
  v2 = v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  sub_21CE6D290();
  v4 = *(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier);
  v5 = *(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8);

  v31 = v4;
  v32 = v5;
  MEMORY[0x21CF1ACB0](0xD00000000000001ALL, 0x800000021CE77420);
  v6 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v28 = *(v2 + v6);
    }

    if (!sub_21CE6D360())
    {
      goto LABEL_8;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    MEMORY[0x21CF1B2A0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v8 = *(v7 + 32);
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40708, &unk_21CE721F0);
  v9 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v9);

  v10 = v32;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v11 = sub_21CE6BDA0();
  __swift_project_value_buffer(v11, qword_27CE412C0);

  v12 = sub_21CE6BD80();
  v13 = sub_21CE6CF30();

  if (os_log_type_enabled(v12, v13))
  {
    v29 = v31;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136446978;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = 173;
    v30 = v6;
    v19 = a1;
    *(v14 + 22) = 2082;
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, &v31);

    *(v14 + 24) = v22;
    *(v14 + 32) = 2082;
    v23 = sub_21CDF2CC8(v29, v10, &v31);

    *(v14 + 34) = v23;
    a1 = v19;
    v6 = v30;
    _os_log_impl(&dword_21CDE1000, v12, v13, "%{public}s:%ld %{public}s %{public}s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v15, -1, -1);
    MEMORY[0x21CF1BD50](v14, -1, -1);
  }

  else
  {
  }

  v24 = *(v2 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError);
  *(v2 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError) = a1;
  v25 = a1;

  v26 = *(v2 + v6);
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  if (!sub_21CE6D360())
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((v26 & 0xC000000000000001) != 0)
  {

    v27 = MEMORY[0x21CF1B2A0](0, v26);

    goto LABEL_24;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);
LABEL_24:
    [v27 invalidate];

    return;
  }

LABEL_28:
  __break(1u);
}

id sub_21CE1A94C(void *a1)
{
  v70 = *MEMORY[0x277D85DE8];
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](*(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier), *(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8));
  MEMORY[0x21CF1ACB0](0xD000000000000011, 0x800000021CE77290);
  v66 = *(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_host);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406B8, &unk_21CE721B8);
  sub_21CE6D340();
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v3 = sub_21CE6BDA0();
  __swift_project_value_buffer(v3, qword_27CE412C0);

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v68 = v7;
    *v6 = 136446978;
    v8 = sub_21CE6D2B0();
    v64 = a1;
    v10 = sub_21CDF2CC8(v8, v9, &v68);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 180;
    *(v6 + 22) = 2082;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v68);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2082;
    v14 = sub_21CDF2CC8(0, 0xE000000000000000, &v68);

    *(v6 + 34) = v14;
    a1 = v64;
    _os_log_impl(&dword_21CDE1000, v4, v5, "%{public}s:%ld %{public}s %{public}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  else
  {
  }

  v68 = 0;
  v15 = [a1 makeXPCConnectionWithError_];
  if (v15)
  {
    v16 = v68;
    v17 = v15;
    v18 = [v17 description];
    v19 = sub_21CE6CC50();
    v21 = v20;
    v65 = v17;

    v22 = sub_21CE6BD80();
    v23 = sub_21CE6CEF0();

    v63 = v15;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v68 = v25;
      *v24 = 136315906;
      v26 = sub_21CE6D2B0();
      v28 = sub_21CDF2CC8(v26, v27, &v68);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = 184;
      *(v24 + 22) = 2080;
      v29 = sub_21CE6D2B0();
      v31 = sub_21CDF2CC8(v29, v30, &v68);

      *(v24 + 24) = v31;
      *(v24 + 32) = 2080;
      v32 = sub_21CDF2CC8(v19, v21, &v68);

      *(v24 + 34) = v32;
      _os_log_impl(&dword_21CDE1000, v22, v23, "%s:%ld %s %s", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v25, -1, -1);
      MEMORY[0x21CF1BD50](v24, -1, -1);
    }

    else
    {
    }

    [v65 setExportedObject_];
    v62 = objc_opt_self();
    v48 = [v62 interfaceWithProtocol_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D0, &qword_21CE721C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_21CE71CD0;
    *(v50 + 32) = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
    *(v50 + 40) = type metadata accessor for TitlebarConfiguration();
    v61 = sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
    *(v50 + 48) = v61;
    *(inited + 32) = v50;
    sub_21CE1EF90(inited);
    swift_setDeallocating();
    sub_21CDE5494(inited + 32, &qword_27CE406D8, &qword_21CE721D0);
    v51 = MEMORY[0x277D84F90];
    sub_21CE1EF90(MEMORY[0x277D84F90]);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_21CE702B0;
    *(v53 + 32) = sub_21CDE40C8(0, &unk_27CE406E0, 0x277CCA898);
    *(v52 + 32) = v53;
    sub_21CE1EF90(v52);
    swift_setDeallocating();
    sub_21CDE5494(v52 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51);
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_21CE6F420;
    *(v55 + 32) = type metadata accessor for NavigationToken();
    *(v55 + 40) = type metadata accessor for SettingsNavigationPath();
    *(v54 + 32) = v55;
    sub_21CE1EF90(v54);
    swift_setDeallocating();
    sub_21CDE5494(v54 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_21CE6F420;
    *(v57 + 32) = v61;
    *(v57 + 40) = sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
    *(v56 + 32) = v57;
    sub_21CE1EF90(v56);
    swift_setDeallocating();
    sub_21CDE5494(v56 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51);
    [v65 setExportedInterface_];
    v58 = [v62 interfaceWithProtocol_];
    [v65 setRemoteObjectInterface_];

    v15 = v63;
  }

  else
  {
    v33 = v68;
    v34 = sub_21CE6B910();

    swift_willThrow();
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD000000000000021, 0x800000021CE772D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    sub_21CE6D340();
    MEMORY[0x21CF1ACB0](39, 0xE100000000000000);
    v36 = v68;
    v35 = v69;

    v37 = sub_21CE6BD80();
    v38 = sub_21CE6CF10();

    if (os_log_type_enabled(v37, v38))
    {
      v67 = v36;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68 = v40;
      *v39 = 136446978;
      v41 = sub_21CE6D2B0();
      v43 = sub_21CDF2CC8(v41, v42, &v68);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      *(v39 + 14) = 209;
      *(v39 + 22) = 2082;
      v44 = sub_21CE6D2B0();
      v46 = sub_21CDF2CC8(v44, v45, &v68);

      *(v39 + 24) = v46;
      *(v39 + 32) = 2082;
      v47 = sub_21CDF2CC8(v67, v35, &v68);

      *(v39 + 34) = v47;
      v15 = 0;
      _os_log_impl(&dword_21CDE1000, v37, v38, "%{public}s:%ld %{public}s %{public}s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v40, -1, -1);
      MEMORY[0x21CF1BD50](v39, -1, -1);
    }

    else
    {
    }

    sub_21CE214A0();
    swift_allocError();
    swift_willThrow();
  }

  v59 = *MEMORY[0x277D85DE8];
  return v15;
}

id sub_21CE1B4E8()
{
  result = [objc_allocWithZone(type metadata accessor for SettingsExtensionHostViewController()) init];
  qword_27CE40420 = result;
  return result;
}

id SettingsExtensionHostViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SettingsExtensionHostViewController.shared.getter()
{
  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE40420;

  return v0;
}

void static SettingsExtensionHostViewController.shared.setter(uint64_t a1)
{
  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE40420;
  qword_27CE40420 = a1;
}

uint64_t (*static SettingsExtensionHostViewController.shared.modify())()
{
  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_21CE1B6D8@<X0>(void *a1@<X8>)
{
  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE40420;
  *a1 = qword_27CE40420;

  return v2;
}

void sub_21CE1B764(id *a1)
{
  v1 = qword_27CE3F9D0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE40420;
  qword_27CE40420 = v2;
}

char *SettingsExtensionHostViewController.init()()
{
  *&v0[OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies] = MEMORY[0x277D84F98];
  v1 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  *&v0[OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController] = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SettingsExtensionHostViewController();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [*&v2[OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController] setDelegate_];
  return v2;
}

void sub_21CE1B920(void *a1)
{
  v2 = v1;
  v4 = sub_21CE6BCD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  sub_21CE6D0A0();
  v13 = sub_21CE6D090();
  if ((*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_21CDE5494(v12, &qword_27CE40478, &qword_21CE71CF0);
LABEL_13:
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v42 = sub_21CE6BDA0();
    __swift_project_value_buffer(v42, qword_27CE412C0);
    v43 = sub_21CE6BD80();
    v44 = sub_21CE6CF10();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      *v45 = 136446978;
      v47 = sub_21CE6D2B0();
      v49 = sub_21CDF2CC8(v47, v48, &v54);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2048;
      *(v45 + 14) = 232;
      *(v45 + 22) = 2082;
      v50 = sub_21CE6D2B0();
      v52 = sub_21CDF2CC8(v50, v51, &v54);

      *(v45 + 24) = v52;
      *(v45 + 32) = 2082;
      *(v45 + 34) = sub_21CDF2CC8(0xD000000000000013, 0x800000021CE76F50, &v54);
      _os_log_impl(&dword_21CDE1000, v43, v44, "%{public}s:%ld %{public}s %{public}s", v45, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v46, -1, -1);
      MEMORY[0x21CF1BD50](v45, -1, -1);
    }

    return;
  }

  sub_21CE6D070();
  sub_21CDE5494(v12, &qword_27CE40478, &qword_21CE71CF0);
  v14 = sub_21CE6BCC0();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v17 = OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (!*(v18 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v19 = sub_21CE66850(v14, v16);
  if ((v20 & 1) == 0)
  {

    goto LABEL_12;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v54 = v14;
  v55 = v16;
  MEMORY[0x21CF1ACB0](32, 0xE100000000000000);
  v22 = [a1 description];
  v23 = sub_21CE6CC50();
  v25 = v24;

  MEMORY[0x21CF1ACB0](v23, v25);

  v26 = v54;
  v27 = v55;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v28 = sub_21CE6BDA0();
  __swift_project_value_buffer(v28, qword_27CE412C0);

  v29 = sub_21CE6BD80();
  v30 = sub_21CE6CF30();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v53 = v21;
    v32 = v31;
    v33 = swift_slowAlloc();
    v54 = v33;
    *v32 = 136446978;
    v34 = sub_21CE6D2B0();
    v36 = sub_21CDF2CC8(v34, v35, &v54);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2048;
    *(v32 + 14) = 236;
    *(v32 + 22) = 2082;
    v37 = sub_21CE6D2B0();
    v39 = sub_21CDF2CC8(v37, v38, &v54);

    *(v32 + 24) = v39;
    *(v32 + 32) = 2082;
    v40 = sub_21CDF2CC8(v26, v27, &v54);

    *(v32 + 34) = v40;
    _os_log_impl(&dword_21CDE1000, v29, v30, "%{public}s:%ld %{public}s %{public}s", v32, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v33, -1, -1);
    v41 = v32;
    v21 = v53;
    MEMORY[0x21CF1BD50](v41, -1, -1);
  }

  else
  {
  }

  sub_21CE190E0(*(v2 + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController));
}

void sub_21CE1BFE0(void *a1, id a2, void *a3)
{
  v4 = v3;
  v7 = [a2 extensionIdentity];
  v8 = [v7 bundleIdentifier];

  v9 = sub_21CE6CC50();
  v11 = v10;

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v69[0] = v9;
  v69[1] = v11;

  MEMORY[0x21CF1ACB0](32, 0xE100000000000000);
  v12 = [a1 description];
  v13 = sub_21CE6CC50();
  v15 = v14;

  MEMORY[0x21CF1ACB0](v13, v15);

  MEMORY[0x21CF1ACB0](0x203A726F72726520, 0xE800000000000000);
  v68[0] = a3;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40480, &unk_21CE71CF8);
  v17 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v17);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v18 = sub_21CE6BDA0();
  __swift_project_value_buffer(v18, qword_27CE412C0);

  v19 = sub_21CE6BD80();
  v20 = sub_21CE6CF30();

  v66 = a3;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v69[0] = v22;
    *v21 = 136446978;
    v23 = sub_21CE6D2B0();
    v65 = v4;
    v25 = sub_21CDF2CC8(v23, v24, v69);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    *(v21 + 14) = 244;
    *(v21 + 22) = 2082;
    v26 = sub_21CE6D2B0();
    v28 = sub_21CDF2CC8(v26, v27, v69);

    *(v21 + 24) = v28;
    v4 = v65;
    *(v21 + 32) = 2082;
    v29 = sub_21CDF2CC8(v9, v11, v69);

    *(v21 + 34) = v29;
    _os_log_impl(&dword_21CDE1000, v19, v20, "%{public}s:%ld %{public}s %{public}s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v22, -1, -1);
    MEMORY[0x21CF1BD50](v21, -1, -1);
  }

  else
  {
  }

  v30 = OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies;
  swift_beginAccess();
  v31 = *(v4 + v30);
  if (*(v31 + 16) && (v32 = *(v4 + v30), , v33 = sub_21CE66850(v9, v11), v35 = v34, , (v35 & 1) != 0))
  {
    v36 = *(*(v31 + 56) + 8 * v33);

    v37 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
    swift_beginAccess();
    v38 = *&v36[v37];
    v39 = sub_21CDE40C8(0, &qword_27CE40490, 0x277CCAE80);

    v41 = MEMORY[0x21CF1AD30](v40, v39);
    v43 = v42;

    v44 = sub_21CE6BD80();
    v45 = sub_21CE6CF30();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67 = v47;
      *v46 = 136446978;
      v48 = sub_21CE6D2B0();
      v50 = sub_21CDF2CC8(v48, v49, &v67);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2048;
      *(v46 + 14) = 251;
      *(v46 + 22) = 2082;
      v51 = sub_21CE6D2B0();
      v53 = sub_21CDF2CC8(v51, v52, &v67);

      *(v46 + 24) = v53;
      *(v46 + 32) = 2082;
      v54 = sub_21CDF2CC8(v41, v43, &v67);

      *(v46 + 34) = v54;
      _os_log_impl(&dword_21CDE1000, v44, v45, "%{public}s:%ld %{public}s %{public}s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v47, -1, -1);
      MEMORY[0x21CF1BD50](v46, -1, -1);
    }

    else
    {
    }

    sub_21CE1A52C(v66);
  }

  else
  {

    v55 = sub_21CE6BD80();
    v56 = sub_21CE6CF10();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v57 = 136446978;
      v59 = sub_21CE6D2B0();
      v61 = sub_21CDF2CC8(v59, v60, v68);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2048;
      *(v57 + 14) = 247;
      *(v57 + 22) = 2082;
      v62 = sub_21CE6D2B0();
      v64 = sub_21CDF2CC8(v62, v63, v68);

      *(v57 + 24) = v64;
      *(v57 + 32) = 2082;
      *(v57 + 34) = sub_21CDF2CC8(0xD000000000000013, 0x800000021CE76F50, v68);
      _os_log_impl(&dword_21CDE1000, v55, v56, "%{public}s:%ld %{public}s %{public}s", v57, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v58, -1, -1);
      MEMORY[0x21CF1BD50](v57, -1, -1);
    }
  }
}

uint64_t sub_21CE1C7F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_27CE412C0);
  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446978;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 268;
    *(v9 + 22) = 2082;
    v14 = sub_21CE6D2B0();
    v16 = sub_21CDF2CC8(v14, v15, &v21);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2082;
    *(v9 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v21);
    _os_log_impl(&dword_21CDE1000, v7, v8, "%{public}s:%ld %{public}s %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  v17 = *(v1 + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController);
  v18 = sub_21CE6D090();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  return sub_21CE6D0B0();
}

uint64_t sub_21CE1CA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v76 = a4;
  v77 = a5;
  v78 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v74 - v11;
  v12 = sub_21CE6BBE0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_21CE6BCD0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_21CE6D090();
  v79 = *(v16 - 8);
  v80 = v16;
  v17 = *(v79 + 64);
  MEMORY[0x28223BE20](v16);
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = [v19 bundleIdentifier];
  v21 = sub_21CE6CC50();
  v23 = v22;

  v24 = OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies;
  swift_beginAccess();
  v25 = *(v6 + v24);
  if (!*(v25 + 16))
  {

LABEL_6:
    v31 = [v19 bundleIdentifier];
    v32 = sub_21CE6CC50();
    v34 = v33;

    v35 = type metadata accessor for SettingsExtensionHostViewController.SettingsExtensionProxy();
    v36 = objc_allocWithZone(v35);
    v30 = &qword_27CE40000;
    v37 = &v36[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_completion];
    *v37 = 0;
    *(v37 + 1) = 0;
    *&v36[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy____lazy_storage___privateListener] = 0;
    *&v36[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections] = MEMORY[0x277D84F90];
    *&v36[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError] = 0;
    *&v36[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_host] = a2;
    v38 = &v36[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier];
    *v38 = v32;
    v38[1] = v34;
    v85.receiver = v36;
    v85.super_class = v35;
    swift_unknownObjectRetain();
    v29 = objc_msgSendSuper2(&v85, sel_init);
    v39 = [v19 bundleIdentifier];
    v40 = sub_21CE6CC50();
    v42 = v41;

    swift_beginAccess();
    v43 = *(v6 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v6 + v24);
    *(v6 + v24) = 0x8000000000000000;
    sub_21CE06568(v29, v40, v42, isUniquelyReferenced_nonNull_native);

    *(v6 + v24) = v83;
    swift_endAccess();
    goto LABEL_7;
  }

  v75 = v19;

  v26 = sub_21CE66850(v21, v23);
  v28 = v27;

  if ((v28 & 1) == 0)
  {

    v19 = v75;
    goto LABEL_6;
  }

  v29 = *(*(v25 + 56) + 8 * v26);

  v19 = v75;
  v30 = &qword_27CE40000;
LABEL_7:
  v45 = &v29[v30[147]];
  v46 = *v45;
  v47 = v45[1];
  v48 = v77;
  *v45 = v76;
  v45[1] = v48;

  sub_21CDEEA58(v46);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectRetain();
  sub_21CE6BCE0();
  if (v78 && *(v78 + OBJC_IVAR____TtC8Settings24InitializationParameters_role + 8))
  {
    v49 = *(v78 + OBJC_IVAR____TtC8Settings24InitializationParameters_role);
    v50 = *(v78 + OBJC_IVAR____TtC8Settings24InitializationParameters_role + 8);

    sub_21CE6BBF0();
  }

  else
  {
    sub_21CE6BBD0();
  }

  sub_21CE6D080();
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v51 = [v19 bundleIdentifier];
  v52 = sub_21CE6CC50();
  v54 = v53;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v55 = sub_21CE6BDA0();
  __swift_project_value_buffer(v55, qword_27CE412C0);

  v56 = sub_21CE6BD80();
  v57 = sub_21CE6CF30();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v78 = v52;
    v60 = v59;
    v84[0] = v59;
    *v58 = 136447235;
    v61 = sub_21CE6D2B0();
    v63 = sub_21CDF2CC8(v61, v62, v84);

    *(v58 + 4) = v63;
    *(v58 + 12) = 2048;
    *(v58 + 14) = 298;
    *(v58 + 22) = 2082;
    v64 = sub_21CE6D2B0();
    v66 = sub_21CDF2CC8(v64, v65, v84);

    *(v58 + 24) = v66;
    *(v58 + 32) = 2160;
    *(v58 + 34) = 1752392040;
    *(v58 + 42) = 2081;
    v67 = sub_21CDF2CC8(v78, v54, v84);

    *(v58 + 44) = v67;
    _os_log_impl(&dword_21CDE1000, v56, v57, "%{public}s:%ld %{public}s %{private,mask.hash}s", v58, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v60, -1, -1);
    MEMORY[0x21CF1BD50](v58, -1, -1);
  }

  else
  {
  }

  v68 = *(v6 + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController);
  v70 = v79;
  v69 = v80;
  v71 = v81;
  v72 = v82;
  (*(v79 + 16))(v81, v82, v80);
  (*(v70 + 56))(v71, 0, 1, v69);
  sub_21CE6D0B0();

  return (*(v70 + 8))(v72, v69);
}

id sub_21CE1D1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id SettingsExtensionHostView.body.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_21CE1D254@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void sub_21CE1D260(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(*v1 + 16);

  v6 = v4;
  v7 = [v5 bundleIdentifier];
  v8 = sub_21CE6CC50();
  v10 = v9;

  *a1 = v3;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
}

id SettingsExtensionView.init(_:delegate:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;

  v10 = sub_21CE20568(v9, 0, a3, a4);
  v12 = v11;
  v19 = v13;
  v15 = v14;
  a5[1] = v10;
  a5[2] = v11;
  a5[3] = v13;
  a5[4] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404C0, &qword_21CE71D08);
  v16 = swift_allocObject();
  *(v16 + 64) = 1;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v19;
  *(v16 + 40) = v15;
  *(v16 + 48) = a2;
  *(v16 + 56) = 0;
  a5[5] = v16;
  v17 = v15;

  return v19;
}

uint64_t SettingsExtensionAccessoryView.init(extensionIdentifier:sceneName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v7[8] = sub_21CE6CDE0();
  v7[9] = sub_21CE6CDD0();
  v10 = swift_task_alloc();
  v7[10] = v10;
  *v10 = v7;
  v10[1] = sub_21CE1D4BC;

  return sub_21CE14C78(a2, a3);
}

uint64_t sub_21CE1D4BC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 24);
  v9 = *v1;
  *(*v1 + 88) = a1;

  v7 = sub_21CE6CDB0();

  return MEMORY[0x2822009F8](sub_21CE1D624, v7, v6);
}

uint64_t sub_21CE1D624()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1)
  {
    v3 = v0[11];
    v4 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[2];

    v9 = sub_21CE6CC20();

    v10 = sub_21CE20568(v3, v9, v4, v5);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404D0, &qword_21CE71D28);
    v17 = swift_allocObject();
    *(v17 + 64) = 1;
    *(v17 + 16) = v10;
    *(v17 + 24) = v12;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    *(v17 + 48) = 0;
    *(v17 + 56) = 1;
    *v8 = v3;
    v18 = v16;

    v19 = v14;
  }

  else
  {
    v20 = v0[7];
    v21 = v0[5];
    v22 = v0[2];

    v10 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    *v22 = 0;
  }

  v23 = v0[2];
  v23[1] = v10;
  v23[2] = v12;
  v23[3] = v14;
  v23[4] = v16;
  v23[5] = v17;
  v24 = v0[1];

  return v24();
}

id SettingsExtensionAccessoryView.init(extension:sceneName:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  if (a2)
  {

    v9 = sub_21CE6CC20();
  }

  else
  {

    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = sub_21CE20568(a1, v9, sub_21CE207C0, v10);
  v13 = v12;
  v20 = v14;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404D0, &qword_21CE71D28);
  v17 = swift_allocObject();
  *(v17 + 64) = 1;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v20;
  *(v17 + 40) = v16;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *a5 = a1;
  a5[1] = v11;
  a5[2] = v13;
  a5[3] = v20;
  a5[4] = v16;
  a5[5] = v17;
  v18 = v16;

  return v20;
}

uint64_t SettingsExtensionAccessoryView.init(extension:sceneName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_21CE6CDE0();
  v4[6] = sub_21CE6CDD0();
  v6 = sub_21CE6CDB0();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21CE1D96C, v6, v5);
}

uint64_t sub_21CE1D96C()
{
  if (v0[5])
  {
    v1 = v0[3];
    v2 = v0[4];

    v3 = sub_21CE6CC20();
  }

  else
  {
    v4 = v0[3];

    v3 = 0;
  }

  v0[9] = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_21CE1DA58;
  v6 = v0[3];

  return (sub_21CE207F4)(v6, v3);
}

uint64_t sub_21CE1DA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 72);
  v12 = *v4;
  v6[11] = a1;
  v6[12] = a2;
  v6[13] = a3;
  v6[14] = a4;

  v9 = v5[8];
  v10 = v5[7];

  return MEMORY[0x2822009F8](sub_21CE1DBA4, v10, v9);
}

uint64_t sub_21CE1DBA4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404D0, &qword_21CE71D28);
  v8 = swift_allocObject();
  *(v8 + 64) = 1;
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;
  *(v8 + 48) = 0;
  *(v8 + 56) = 1;
  *v7 = v6;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v8;
  v12 = v0[1];

  v9 = v2;
  v10 = v1;

  return v12();
}

id SettingsExtensionAccessoryView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v6 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v6;
  a1[3] = v3;
  v4 = v3;

  return v6;
}

id sub_21CE1DD18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(v4 + 40);
  result = sub_21CE1DEA4(a1);
  if (result)
  {
    v10 = result;
    aBlock[4] = sub_21CE1EC94;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CE18088;
    aBlock[3] = a2;
    v11 = _Block_copy(aBlock);
    v12 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v11);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_21CE1DE3C@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v6 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v6;
  a1[3] = v3;
  v4 = v3;

  return v6;
}

id sub_21CE1DEA4(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_21CE1DF08(v1, a1);
    v4 = *(v1 + 64);
    *(v1 + 64) = v3;
    v5 = v3;
    sub_21CE21490(v4);
  }

  sub_21CE214F4(v2);
  return v3;
}

id sub_21CE1DF08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8 = v6;
  v9 = sub_21CE22F90();

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v10 = [v9 description];
  v11 = sub_21CE6CC50();
  v13 = v12;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v14 = sub_21CE6BDA0();
  __swift_project_value_buffer(v14, qword_27CE412C0);

  v15 = sub_21CE6BD80();
  v16 = sub_21CE6CF30();

  v64 = v9;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446978;
    v19 = sub_21CE6D2B0();
    v21 = sub_21CDF2CC8(v19, v20, aBlock);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    *(v17 + 14) = 456;
    *(v17 + 22) = 2082;
    v22 = sub_21CE6D2B0();
    v24 = sub_21CDF2CC8(v22, v23, aBlock);

    *(v17 + 24) = v24;
    *(v17 + 32) = 2082;
    v25 = sub_21CDF2CC8(v11, v13, aBlock);

    *(v17 + 34) = v25;
    _os_log_impl(&dword_21CDE1000, v15, v16, "%{public}s:%ld %{public}s %{public}s", v17, 0x2Au);
    swift_arrayDestroy();
    v26 = v18;
    v9 = v64;
    MEMORY[0x21CF1BD50](v26, -1, -1);
    MEMORY[0x21CF1BD50](v17, -1, -1);
  }

  else
  {
  }

  [v9 setExportedObject_];
  v27 = *(a1 + 56);
  v28 = sub_21CE6BD80();
  v29 = sub_21CE6CEF0();
  v30 = os_log_type_enabled(v28, v29);
  if (v27 == 1)
  {
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315906;
      v33 = sub_21CE6D2B0();
      v35 = sub_21CDF2CC8(v33, v34, aBlock);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2048;
      *(v31 + 14) = 461;
      *(v31 + 22) = 2080;
      v36 = sub_21CE6D2B0();
      v38 = sub_21CDF2CC8(v36, v37, aBlock);

      *(v31 + 24) = v38;
      *(v31 + 32) = 2080;
      *(v31 + 34) = sub_21CDF2CC8(0x726F737365636341, 0xE900000000000079, aBlock);
      _os_log_impl(&dword_21CDE1000, v28, v29, "%s:%ld %s %s", v31, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v32, -1, -1);
      MEMORY[0x21CF1BD50](v31, -1, -1);
    }

    v39 = a2;
    v40 = [objc_opt_self() interfaceWithProtocol_];
    [v9 setRemoteObjectInterface_];
  }

  else
  {
    if (v30)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315906;
      v43 = sub_21CE6D2B0();
      v45 = sub_21CDF2CC8(v43, v44, aBlock);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2048;
      *(v41 + 14) = 465;
      *(v41 + 22) = 2080;
      v46 = sub_21CE6D2B0();
      v48 = sub_21CDF2CC8(v46, v47, aBlock);

      *(v41 + 24) = v48;
      *(v41 + 32) = 2080;
      *(v41 + 34) = sub_21CDF2CC8(0xD000000000000014, 0x800000021CE77370, aBlock);
      _os_log_impl(&dword_21CDE1000, v28, v29, "%s:%ld %s %s", v41, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v42, -1, -1);
      MEMORY[0x21CF1BD50](v41, -1, -1);
    }

    v63 = objc_opt_self();
    v49 = [v63 interfaceWithProtocol_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D0, &qword_21CE721C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_21CE71CD0;
    *(v51 + 32) = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
    *(v51 + 40) = type metadata accessor for TitlebarConfiguration();
    v52 = sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
    *(v51 + 48) = v52;
    *(inited + 32) = v51;
    sub_21CE1EF90(inited);
    swift_setDeallocating();
    sub_21CDE5494(inited + 32, &qword_27CE406D8, &qword_21CE721D0);
    v53 = MEMORY[0x277D84F90];
    sub_21CE1EF90(MEMORY[0x277D84F90]);
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_21CE702B0;
    *(v55 + 32) = sub_21CDE40C8(0, &unk_27CE406E0, 0x277CCA898);
    *(v54 + 32) = v55;
    sub_21CE1EF90(v54);
    swift_setDeallocating();
    sub_21CDE5494(v54 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v53);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_21CE6F420;
    *(v57 + 32) = type metadata accessor for NavigationToken();
    *(v57 + 40) = type metadata accessor for SettingsNavigationPath();
    *(v56 + 32) = v57;
    sub_21CE1EF90(v56);
    swift_setDeallocating();
    sub_21CDE5494(v56 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v53);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_21CE6F420;
    *(v59 + 32) = v52;
    *(v59 + 40) = sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
    *(v58 + 32) = v59;
    sub_21CE1EF90(v58);
    swift_setDeallocating();
    sub_21CDE5494(v58 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v53);
    v9 = v64;
    [v64 setExportedInterface_];
    v60 = [v63 interfaceWithProtocol_];
    [v64 setRemoteObjectInterface_];

    v39 = a2;
  }

  aBlock[4] = sub_21CE1EA80;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CE27C50;
  aBlock[3] = v39;
  v61 = _Block_copy(aBlock);
  [v9 setInvalidationHandler_];
  _Block_release(v61);
  [v9 resume];
  return v9;
}

void sub_21CE1EA80()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);
  oslog = sub_21CE6BD80();
  v1 = sub_21CE6CF30();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136446978;
    v4 = sub_21CE6D2B0();
    v6 = sub_21CDF2CC8(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2048;
    *(v2 + 14) = 488;
    *(v2 + 22) = 2082;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v11);

    *(v2 + 24) = v9;
    *(v2 + 32) = 2082;
    *(v2 + 34) = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE77390, &v11);
    _os_log_impl(&dword_21CDE1000, oslog, v1, "%{public}s:%ld %{public}s %{public}s", v2, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v3, -1, -1);
    MEMORY[0x21CF1BD50](v2, -1, -1);
  }
}

void sub_21CE1ECA8(uint64_t a1, uint64_t a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  swift_getErrorValue();
  v3 = sub_21CE6D450();
  v5 = v4;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_27CE412C0);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF10();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446978;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = a2;
    *(v9 + 22) = 2082;
    v14 = sub_21CE6D2B0();
    v16 = sub_21CDF2CC8(v14, v15, &v18);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2082;
    v17 = sub_21CDF2CC8(v3, v5, &v18);

    *(v9 + 34) = v17;
    _os_log_impl(&dword_21CDE1000, v7, v8, "%{public}s:%ld %{public}s %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21CE1EF04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();
  sub_21CE21490(*(v0 + 64));
  return v0;
}

uint64_t sub_21CE1EF5C()
{
  sub_21CE1EF04();

  return swift_deallocClassInstance();
}

void sub_21CE1EF90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 32);
    v2 = objc_allocWithZone(MEMORY[0x277CBEB58]);

    v3 = [v2 init];
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = (v1 + 32);
      do
      {
        v6 = *v5++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406F0, &qword_21CE721D8);
        [v3 addObject_];
        swift_unknownObjectRelease();
        --v4;
      }

      while (v4);
    }

    v3;
    sub_21CE6CE90();
    __break(1u);
  }
}

uint64_t sub_21CE1F134()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406F0, &qword_21CE721D8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27CE406F8;
    v3 = &unk_21CE721E0;
  }

  else
  {
    v2 = &qword_27CE40700;
    v3 = &qword_21CE71908;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

id sub_21CE1F1D0(void *a1)
{
  v2 = v1;
  v2[OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault] = 2;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v4 = sub_21CE6D0F0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CE6CC50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = &v2[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier];
  *v9 = v6;
  v9[1] = v8;
  v10 = sub_21CE6D0F0();
  if (v10)
  {
    v11 = v10;
    v12 = sub_21CE6CC50();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = &v2[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
  *v15 = v12;
  v15[1] = v14;
  type metadata accessor for SettingsNavigationPath();
  *&v2[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath] = sub_21CE6D0F0();
  v16 = sub_21CE6D0F0();
  if (v16)
  {
    v17 = v16;
    v18 = sub_21CE6CC50();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v2[OBJC_IVAR____TtC8Settings24InitializationParameters_role];
  *v21 = v18;
  v21[1] = v20;
  v22 = sub_21CE6CC20();
  [a1 decodeFloatForKey_];
  v24 = v23;

  v25 = OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth;
  if (v24 == 0.0)
  {
    *&v2[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth] = 0;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth] = v24;
  }

  v2[v25 + 8] = v24 == 0.0;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for InitializationParameters();
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_21CE1F428(void *a1)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D0, &qword_21CE721C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CE702B0;
  sub_21CE1F134();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_21CE6F420;
  v6 = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
  *(v5 + 32) = v6;
  v7 = type metadata accessor for SettingsNavigationPath();
  *(v5 + 40) = v7;
  *(inited + 32) = v5;
  v8 = MEMORY[0x277D84F90];
  sub_21CE1EF90(MEMORY[0x277D84F90]);
  sub_21CE1EF90(inited);
  swift_setDeallocating();
  sub_21CDE5494(inited + 32, &qword_27CE406D8, &qword_21CE721D0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_21CE702B0;
  sub_21CE1F134();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_21CE6F420;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v9 + 32) = v10;
  sub_21CE1EF90(v9);
  swift_setDeallocating();
  sub_21CDE5494(v9 + 32, &qword_27CE406D8, &qword_21CE721D0);
  sub_21CE1EF90(v8);
  [a1 setExportedInterface_];
  [a1 resume];
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v11 = a1;
  v12 = [v11 description];
  v13 = sub_21CE6CC50();
  v15 = v14;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v16 = sub_21CE6BDA0();
  __swift_project_value_buffer(v16, qword_27CE412C0);

  v17 = sub_21CE6BD80();
  v18 = sub_21CE6CEF0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315906;
    v21 = sub_21CE6D2B0();
    v23 = sub_21CDF2CC8(v21, v22, &v29);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = 102;
    *(v19 + 22) = 2080;
    v24 = sub_21CE6D2B0();
    v26 = sub_21CDF2CC8(v24, v25, &v29);

    *(v19 + 24) = v26;
    *(v19 + 32) = 2080;
    v27 = sub_21CDF2CC8(v13, v15, &v29);

    *(v19 + 34) = v27;
    _os_log_impl(&dword_21CDE1000, v17, v18, "%s:%ld %s %s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v20, -1, -1);
    MEMORY[0x21CF1BD50](v19, -1, -1);
  }

  else
  {
  }

  return 1;
}

unint64_t sub_21CE1F860(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_21CE6D360();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CF1B2A0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_21CDE40C8(0, qword_281211808, 0x277D82BB8);
    v7 = sub_21CE6D110();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_21CE1F974(unint64_t *a1)
{
  v3 = *a1;
  result = sub_21CE1F860(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_21CE6D360();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = qword_281211808;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_21CE6D360())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x21CF1B2A0](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_21CDE40C8(0, v8, 0x277D82BB8);
    v12 = sub_21CE6D110();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CF1B2A0](v6, v3);
          v14 = MEMORY[0x21CF1B2A0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_21CE25A68(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_21CE25A68(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
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
LABEL_46:
  __break(1u);
  return sub_21CE6D360();
}

uint64_t sub_21CE1FC04(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v25 = *a1 >> 62;
  if (v25)
  {
    goto LABEL_63;
  }

  v27 = v3 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CF1B2A0](v5, v3);
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v27 = v3 & 0xFFFFFFFFFFFFFF8;
        v4 = sub_21CE6D360();
        goto LABEL_3;
      }

      v7 = *(v3 + 8 * v5 + 32);
      if (a2)
      {
LABEL_10:
        sub_21CDE40C8(0, &qword_27CE40490, 0x277CCAE80);
        v8 = v7;
        v9 = a2;
        v10 = sub_21CE6D110();

        if (v10)
        {
          a2 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
            goto LABEL_20;
          }

          while (1)
          {
            if (v3 >> 62)
            {
              if (a2 == sub_21CE6D360())
              {
                return v5;
              }
            }

            else if (a2 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              return v5;
            }

            if ((v3 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x21CF1B2A0](a2, v3);
            }

            else
            {
              if ((a2 & 0x8000000000000000) != 0)
              {
                goto LABEL_55;
              }

              if (a2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v14 = *(v3 + 8 * a2 + 32);
            }

            v15 = v14;
            v16 = v9;
            v17 = v15;
            v18 = sub_21CE6D110();

            if ((v18 & 1) == 0)
            {
              if (v5 != a2)
              {
                if ((v3 & 0xC000000000000001) != 0)
                {
                  v4 = MEMORY[0x21CF1B2A0](v5, v3);
                  v19 = MEMORY[0x21CF1B2A0](a2, v3);
                }

                else
                {
                  if ((v5 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_60;
                  }

                  v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v5 >= v20)
                  {
                    goto LABEL_61;
                  }

                  if (a2 >= v20)
                  {
                    goto LABEL_62;
                  }

                  v21 = *(v3 + 32 + 8 * a2);
                  v4 = *(v3 + 32 + 8 * v5);
                  v19 = v21;
                }

                v22 = v19;
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
                {
                  v3 = sub_21CE25A68(v3);
                  v23 = (v3 >> 62) & 1;
                }

                else
                {
                  LODWORD(v23) = 0;
                }

                v8 = (v3 & 0xFFFFFFFFFFFFFF8);
                v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
                *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v22;

                if ((v3 & 0x8000000000000000) != 0 || v23)
                {
                  v3 = sub_21CE25A68(v3);
                  v8 = (v3 & 0xFFFFFFFFFFFFFF8);
                  if ((a2 & 0x8000000000000000) != 0)
                  {
LABEL_51:
                    __break(1u);
                    return sub_21CE6D360();
                  }
                }

                else if ((a2 & 0x8000000000000000) != 0)
                {
                  goto LABEL_51;
                }

                if (a2 >= v8[2])
                {
                  goto LABEL_59;
                }

LABEL_20:
                v12 = &v8[a2];
                v13 = v12[4];
                v12[4] = v4;

                *a1 = v3;
              }

              v6 = __OFADD__(v5++, 1);
              if (v6)
              {
                goto LABEL_58;
              }
            }

            v6 = __OFADD__(a2++, 1);
            if (v6)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_5;
      }
    }

LABEL_5:
    v6 = __OFADD__(v5++, 1);
    if (v6)
    {
      goto LABEL_54;
    }
  }

  if (v25)
  {
    return sub_21CE6D360();
  }

  return *(v27 + 16);
}

void sub_21CE1FF38()
{
  v1 = v0;
  v2 = sub_21CE6BCD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43[-v9];
  sub_21CE6D0A0();
  v11 = sub_21CE6D090();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_21CDE5494(v10, &qword_27CE40478, &qword_21CE71CF0);
LABEL_13:
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v32 = sub_21CE6BDA0();
    __swift_project_value_buffer(v32, qword_27CE412C0);
    v19 = sub_21CE6BD80();
    v33 = sub_21CE6CF10();
    if (os_log_type_enabled(v19, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136446978;
      v36 = sub_21CE6D2B0();
      v38 = sub_21CDF2CC8(v36, v37, &v44);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2048;
      *(v34 + 14) = 258;
      *(v34 + 22) = 2082;
      v39 = sub_21CE6D2B0();
      v41 = sub_21CDF2CC8(v39, v40, &v44);

      *(v34 + 24) = v41;
      *(v34 + 32) = 2082;
      *(v34 + 34) = sub_21CDF2CC8(0xD000000000000013, 0x800000021CE76F50, &v44);
      _os_log_impl(&dword_21CDE1000, v19, v33, "%{public}s:%ld %{public}s %{public}s", v34, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v35, -1, -1);
      MEMORY[0x21CF1BD50](v34, -1, -1);
    }

    goto LABEL_19;
  }

  sub_21CE6D070();
  sub_21CDE5494(v10, &qword_27CE40478, &qword_21CE71CF0);
  v12 = sub_21CE6BCC0();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v15 = OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (!*(v16 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v17 = sub_21CE66850(v12, v14);
  if ((v18 & 1) == 0)
  {

    goto LABEL_12;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v20 = sub_21CE6BDA0();
  __swift_project_value_buffer(v20, qword_27CE412C0);

  v21 = sub_21CE6BD80();
  v22 = sub_21CE6CF30();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v44 = v24;
    *v23 = 136446978;
    v25 = sub_21CE6D2B0();
    v27 = sub_21CDF2CC8(v25, v26, &v44);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = 262;
    *(v23 + 22) = 2082;
    v28 = sub_21CE6D2B0();
    v30 = sub_21CDF2CC8(v28, v29, &v44);

    *(v23 + 24) = v30;
    *(v23 + 32) = 2082;
    v31 = sub_21CDF2CC8(v12, v14, &v44);

    *(v23 + 34) = v31;
    _os_log_impl(&dword_21CDE1000, v21, v22, "%{public}s:%ld %{public}s %{public}s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v24, -1, -1);
    MEMORY[0x21CF1BD50](v23, -1, -1);
  }

  else
  {
  }

  v42 = *(&v19->isa + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_host);
  if ([v42 respondsToSelector_])
  {
    [v42 didBeginHosting];
  }

LABEL_19:
}

uint64_t sub_21CE20568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);
  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CEF0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315906;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 332;
    *(v11 + 22) = 2080;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v22);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2080;
    *(v11 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v22);
    _os_log_impl(&dword_21CDE1000, v9, v10, "%s:%ld %s %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v12, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  v19 = *(a1 + 16);
  objc_allocWithZone(type metadata accessor for SettingsHostViewControllerRepresentable.MutableState());

  v20 = swift_unknownObjectRetain();
  sub_21CE21E1C(v20, a2, a3, a4);
  return a1;
}

uint64_t sub_21CE207C0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1);
  }

  return result;
}

uint64_t sub_21CE207F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21CE6CDE0();
  v2[5] = sub_21CE6CDD0();
  v4 = sub_21CE6CDB0();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_21CE20890, v4, v3);
}

uint64_t sub_21CE20890()
{
  v19 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6BDA0();
  __swift_project_value_buffer(v1, qword_27CE412C0);
  v2 = sub_21CE6BD80();
  v3 = sub_21CE6CEF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315906;
    v6 = sub_21CE6D2B0();
    v8 = sub_21CDF2CC8(v6, v7, &v18);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    *(v4 + 14) = 340;
    *(v4 + 22) = 2080;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, &v18);

    *(v4 + 24) = v11;
    *(v4 + 32) = 2080;
    *(v4 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v18);
    _os_log_impl(&dword_21CDE1000, v2, v3, "%s:%ld %s %s", v4, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v5, -1, -1);
    MEMORY[0x21CF1BD50](v4, -1, -1);
  }

  v12 = *(v0 + 32);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);

  *(v0 + 64) = sub_21CE6CDD0();
  v16 = sub_21CE6CDB0();
  *(v0 + 72) = v16;
  *(v0 + 80) = v15;

  return MEMORY[0x2822009F8](sub_21CE20AFC, v16, v15);
}

uint64_t sub_21CE20AFC()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v0[11] = v2;
  objc_allocWithZone(type metadata accessor for SettingsHostViewControllerRepresentable.MutableState());
  v3 = v1;
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_21CE20BC8;
  v5 = v0[3];

  return sub_21CE2277C(v2, v5);
}

uint64_t sub_21CE20BC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 24);
  v9 = *v1;
  *(*v1 + 104) = a1;

  swift_unknownObjectRelease();
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21CE20D2C, v7, v6);
}

uint64_t sub_21CE20D2C()
{
  v1 = v0[8];
  v2 = v0[3];

  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_21CE20D98, v3, v4);
}

uint64_t sub_21CE20D98()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[13];
  v4 = v0[2];

  return v2(v4, v4, v3, 0);
}

unint64_t sub_21CE20E24(uint64_t a1)
{
  result = sub_21CE20E4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21CE20E4C()
{
  result = qword_27CE404E0;
  if (!qword_27CE404E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE404E0);
  }

  return result;
}

unint64_t sub_21CE20EF0()
{
  result = qword_27CE404E8;
  if (!qword_27CE404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE404E8);
  }

  return result;
}

uint64_t sub_21CE21198(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21CE211F4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21CE21328()
{
  result = qword_27CE406A8;
  if (!qword_27CE406A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE406A8);
  }

  return result;
}

unint64_t sub_21CE2137C()
{
  result = qword_27CE406B0;
  if (!qword_27CE406B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE406B0);
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

uint64_t sub_21CE213DC(uint64_t *a1, int a2)
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

uint64_t sub_21CE21424(uint64_t result, int a2, int a3)
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

void sub_21CE21490(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_21CE214A0()
{
  result = qword_27CE406C8;
  if (!qword_27CE406C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE406C8);
  }

  return result;
}

id sub_21CE214F4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_21CE21514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CDE7A00;

  return sub_21CE1A450(a1, v4, v5, v7, v6);
}

unint64_t sub_21CE215EC()
{
  result = qword_27CE40720;
  if (!qword_27CE40720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40728, qword_21CE72220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40720);
  }

  return result;
}

unint64_t sub_21CE21654()
{
  result = qword_27CE40730;
  if (!qword_27CE40730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40730);
  }

  return result;
}

id sub_21CE216F4()
{
  v0 = sub_21CE235AC();

  return v0;
}

uint64_t sub_21CE21768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE22600();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CE217CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE22600();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CE21830()
{
  sub_21CE22600();
  sub_21CE6C520();
  __break(1u);
}

id sub_21CE21858()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_21CE6BBE0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CE6D090();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CE6BCD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = &v45 - v20;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v55 = 0x203A656C6F72;
  v56 = 0xE600000000000000;
  v54 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  v50 = v54;
  v51 = v19;
  v21 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v22 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v22);

  v23 = v56;
  v49 = v55;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v24 = sub_21CE6BDA0();
  __swift_project_value_buffer(v24, qword_27CE412C0);

  v25 = sub_21CE6BD80();
  v26 = sub_21CE6CEF0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v46 = v9;
    v28 = v27;
    v29 = swift_slowAlloc();
    v48 = v1;
    v45 = v29;
    v55 = v29;
    *v28 = 136315906;
    v30 = sub_21CE6D2B0();
    v47 = v5;
    v32 = v15;
    v33 = v13;
    v34 = sub_21CDF2CC8(v30, v31, &v55);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2048;
    *(v28 + 14) = 66;
    *(v28 + 22) = 2080;
    v35 = sub_21CE6D2B0();
    v37 = sub_21CDF2CC8(v35, v36, &v55);

    *(v28 + 24) = v37;
    v13 = v33;
    v15 = v32;
    *(v28 + 32) = 2080;
    v38 = sub_21CDF2CC8(v49, v23, &v55);

    *(v28 + 34) = v38;
    v5 = v47;
    _os_log_impl(&dword_21CDE1000, v25, v26, "%s:%ld %s %s", v28, 0x2Au);
    v39 = v45;
    swift_arrayDestroy();
    v1 = v48;
    MEMORY[0x21CF1BD50](v39, -1, -1);
    v40 = v28;
    v9 = v46;
    MEMORY[0x21CF1BD50](v40, -1, -1);
  }

  else
  {
  }

  v41 = *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_ext);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectRetain();
  v42 = v53;
  sub_21CE6BCE0();
  (*(v15 + 16))(v51, v42, v14);
  if (v50)
  {
    sub_21CE6CC50();
    sub_21CE6BBF0();
  }

  else
  {
    sub_21CE6BBD0();
  }

  sub_21CE6D080();
  v43 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  (*(v10 + 16))(v5, v13, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_21CE6D0B0();
  [v43 setDelegate_];
  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v42, v14);
  return v43;
}

char *sub_21CE21E1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = &qword_27CE40000;
  *&v4[OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController] = 0;
  v10 = &v4[OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion];
  *v10 = 0;
  v10[1] = 0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v40[0] = 0x203A656C6F72;
  v40[1] = 0xE600000000000000;
  v39 = a2;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v11 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v11);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v12 = sub_21CE6BDA0();
  __swift_project_value_buffer(v12, qword_27CE412C0);

  v13 = sub_21CE6BD80();
  v14 = sub_21CE6CF30();

  if (os_log_type_enabled(v13, v14))
  {
    v34 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40[0] = v16;
    *v15 = 136446978;
    v17 = sub_21CE6D2B0();
    v35 = a1;
    v19 = sub_21CDF2CC8(v17, v18, v40);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = 101;
    *(v15 + 22) = 2082;
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, v40);

    *(v15 + 24) = v22;
    a1 = v35;
    *(v15 + 32) = 2082;
    v23 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, v40);

    *(v15 + 34) = v23;
    _os_log_impl(&dword_21CDE1000, v13, v14, "%{public}s:%ld %{public}s %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    v24 = v16;
    v9 = &qword_27CE40000;
    MEMORY[0x21CF1BD50](v24, -1, -1);
    v25 = v15;
    a2 = v34;
    MEMORY[0x21CF1BD50](v25, -1, -1);
  }

  else
  {
  }

  *&v5[OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_ext] = a1;
  v26 = *v10;
  v27 = v10[1];
  *v10 = a3;
  v10[1] = a4;
  swift_unknownObjectRetain();

  sub_21CDEEA58(v26);
  *&v5[OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role] = a2;
  v38.receiver = v5;
  v38.super_class = type metadata accessor for SettingsHostViewControllerRepresentable.MutableState();
  v28 = v36;
  v29 = objc_msgSendSuper2(&v38, sel_init);
  v30 = sub_21CE21858();
  swift_unknownObjectRelease();

  v31 = v9[233];
  v32 = *&v29[v31];
  *&v29[v31] = v30;

  return v29;
}

void sub_21CE22194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40790, &qword_21CE72498);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  (*(v5 + 16))(&v16 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = (a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  v12 = *(a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  v13 = *(a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion + 8);
  *v11 = sub_21CE24878;
  v11[1] = v10;
  sub_21CDEEA58(v12);
  v14 = sub_21CE21858();
  v15 = *(a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController);
  *(a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController) = v14;
}

id sub_21CE22514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsHostViewControllerRepresentable.MutableState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21CE22600()
{
  result = qword_27CE40760;
  if (!qword_27CE40760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40760);
  }

  return result;
}

id sub_21CE22654()
{
  v1 = *(v0 + 8);
  v2 = sub_21CE22CF4();

  return v2;
}

uint64_t sub_21CE2268C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE249B4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CE226F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE249B4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CE22754()
{
  sub_21CE249B4();
  sub_21CE6C520();
  __break(1u);
}

uint64_t sub_21CE2277C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_21CE227A0, 0, 0);
}

uint64_t sub_21CE227A0()
{
  v34 = v0;
  super_class = v0[3].super_class;
  *(super_class + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController) = 0;
  v2 = (super_class + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  *v2 = 0;
  v2[1] = 0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  receiver = v0[3].receiver;
  v32 = 0x203A656C6F72;
  v33 = 0xE600000000000000;
  v0[2].receiver = receiver;
  v4 = receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v5 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v5);

  v7 = v32;
  v6 = v33;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);

  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF30();

  if (os_log_type_enabled(v9, v10))
  {
    v31 = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136446978;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v32);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 113;
    *(v11 + 22) = 2082;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v32);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2082;
    v19 = sub_21CDF2CC8(v7, v6, &v32);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_21CDE1000, v9, v10, "%{public}s:%ld %{public}s %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v12, -1, -1);
    v20 = v11;
    v4 = v31;
    MEMORY[0x21CF1BD50](v20, -1, -1);
  }

  else
  {
  }

  v21 = v0[3].receiver;
  v22 = v0[3].super_class;
  *(v22 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_ext) = v0[2].super_class;
  *(v22 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role) = v21;
  v23 = type metadata accessor for SettingsHostViewControllerRepresentable.MutableState();
  v0[1].receiver = v22;
  v0[1].super_class = v23;
  v24 = v4;
  swift_unknownObjectRetain();
  v25 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[4].receiver = v25;
  v26 = swift_task_alloc();
  v0[4].super_class = v26;
  *(v26 + 16) = v25;
  v27 = *(MEMORY[0x277D859E0] + 4);
  v28 = v25;
  v29 = swift_task_alloc();
  v0[5].receiver = v29;
  *v29 = v0;
  v29[1] = sub_21CE22B78;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_21CE22B78()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21CE22C90, 0, 0);
}

uint64_t sub_21CE22C90()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_21CE22CF4()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v2 = OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController;
  v22 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController);
  v3 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40788, &qword_21CE72488);
  v4 = sub_21CE6CC80();
  v6 = v5;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v7 = sub_21CE6BDA0();
  __swift_project_value_buffer(v7, qword_27CE412C0);

  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CEF0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315906;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = 86;
    *(v10 + 22) = 2080;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, &v22);

    *(v10 + 24) = v17;
    *(v10 + 32) = 2080;
    v18 = sub_21CDF2CC8(v4, v6, &v22);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_21CDE1000, v8, v9, "%s:%ld %s %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);

    result = *(v1 + v2);
    if (result)
    {
      return result;
    }
  }

  else
  {

    result = *(v1 + v2);
    if (result)
    {
      return result;
    }
  }

  v20 = sub_21CE21858();
  v21 = *(v1 + v2);
  *(v1 + v2) = v20;

  result = *(v1 + v2);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_21CE22F90()
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v0 = [sub_21CE22CF4() makeXPCConnectionWithError_];
  if (v0)
  {
    v1 = qword_27CE3FA30;
    v2 = v47;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = [v0 description];
    v4 = sub_21CE6CC50();
    v6 = v5;

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v7 = sub_21CE6BDA0();
    __swift_project_value_buffer(v7, qword_27CE412C0);

    v8 = sub_21CE6BD80();
    v9 = sub_21CE6CF30();

    if (os_log_type_enabled(v8, v9))
    {
      v46 = v0;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v47 = v11;
      *v10 = 136446978;
      v12 = sub_21CE6D2B0();
      v14 = v4;
      v15 = sub_21CDF2CC8(v12, v13, &v47);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2048;
      *(v10 + 14) = 198;
      *(v10 + 22) = 2082;
      v16 = sub_21CE6D2B0();
      v18 = sub_21CDF2CC8(v16, v17, &v47);

      *(v10 + 24) = v18;
      *(v10 + 32) = 2082;
      v19 = sub_21CDF2CC8(v14, v6, &v47);

      *(v10 + 34) = v19;
      _os_log_impl(&dword_21CDE1000, v8, v9, "%{public}s:%ld %{public}s %{public}s", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v11, -1, -1);
      v20 = v10;
      v0 = v46;
      MEMORY[0x21CF1BD50](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v21 = v47;
    v22 = sub_21CE6B910();

    swift_willThrow();
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    v47 = 0;
    v48 = 0xE000000000000000;
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD00000000000001ELL, 0x800000021CE776F0);
    v23 = sub_21CE22CF4();
    v24 = [v23 description];
    v25 = sub_21CE6CC50();
    v27 = v26;

    MEMORY[0x21CF1ACB0](v25, v27);

    MEMORY[0x21CF1ACB0](0x2720726F72726520, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    sub_21CE6D340();
    MEMORY[0x21CF1ACB0](39, 0xE100000000000000);
    v28 = v47;
    v29 = v48;
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v30 = sub_21CE6BDA0();
    __swift_project_value_buffer(v30, qword_27CE412C0);

    v31 = sub_21CE6BD80();
    v32 = sub_21CE6CF10();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = v22;
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136446978;
      v35 = sub_21CE6D2B0();
      v37 = sub_21CDF2CC8(v35, v36, &v47);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 201;
      *(v33 + 22) = 2082;
      v38 = sub_21CE6D2B0();
      v40 = sub_21CDF2CC8(v38, v39, &v47);

      *(v33 + 24) = v40;
      *(v33 + 32) = 2082;
      v41 = sub_21CDF2CC8(v28, v29, &v47);

      *(v33 + 34) = v41;
      _os_log_impl(&dword_21CDE1000, v31, v32, "%{public}s:%ld %{public}s %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v34, -1, -1);
      v42 = v33;
      v0 = 0;
      MEMORY[0x21CF1BD50](v42, -1, -1);
    }

    else
    {
    }

    sub_21CE2481C();
    swift_allocError();
    swift_willThrow();
  }

  v43 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_21CE235AC()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);
  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315906;
    v5 = sub_21CE6D2B0();
    v7 = sub_21CDF2CC8(v5, v6, v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2048;
    *(v3 + 14) = 43;
    *(v3 + 22) = 2080;
    v8 = sub_21CE6D2B0();
    v10 = sub_21CDF2CC8(v8, v9, v12);

    *(v3 + 24) = v10;
    *(v3 + 32) = 2080;
    *(v3 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v12);
    _os_log_impl(&dword_21CDE1000, v1, v2, "%s:%ld %s %s", v3, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v4, -1, -1);
    MEMORY[0x21CF1BD50](v3, -1, -1);
  }

  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *(qword_27CE40420 + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController);
}

void sub_21CE23800()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);
  oslog = sub_21CE6BD80();
  v1 = sub_21CE6CF00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136315906;
    v4 = sub_21CE6D2B0();
    v6 = sub_21CDF2CC8(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2048;
    *(v2 + 14) = 48;
    *(v2 + 22) = 2080;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v11);

    *(v2 + 24) = v9;
    *(v2 + 32) = 2080;
    *(v2 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v11);
    _os_log_impl(&dword_21CDE1000, oslog, v1, "%s:%ld %s %s", v2, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v3, -1, -1);
    MEMORY[0x21CF1BD50](v2, -1, -1);
  }
}

void sub_21CE239FC()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v15[0] = 0x203A656C6F72;
  v15[1] = 0xE600000000000000;
  v1 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v2 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v2);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v3 = sub_21CE6BDA0();
  __swift_project_value_buffer(v3, qword_27CE412C0);

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136446978;
    v8 = sub_21CE6D2B0();
    v10 = sub_21CDF2CC8(v8, v9, v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 127;
    *(v6 + 22) = 2082;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, v15);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2082;
    v14 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, v15);

    *(v6 + 34) = v14;
    _os_log_impl(&dword_21CDE1000, v4, v5, "%{public}s:%ld %{public}s %{public}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  else
  {
  }
}

void sub_21CE23C84()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v17[0] = 0x203A656C6F72;
  v17[1] = 0xE600000000000000;
  v2 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v3 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v3);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);

  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 134;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v17);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    v15 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, v17);

    *(v7 + 34) = v15;
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  else
  {
  }

  v16 = *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController);
  *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController) = 0;
}

void sub_21CE23F24(void *a1)
{
  v2 = v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v49 = 0x203A656C6F72;
  v50 = 0xE600000000000000;
  v4 = *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v5 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v5);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_27CE412C0);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136446978;
    v11 = sub_21CE6D2B0();
    v47 = a1;
    v13 = sub_21CDF2CC8(v11, v12, &v49);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 140;
    *(v9 + 22) = 2082;
    v14 = sub_21CE6D2B0();
    v16 = sub_21CDF2CC8(v14, v15, &v49);

    *(v9 + 24) = v16;
    v2 = v1;
    *(v9 + 32) = 2082;
    v17 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, &v49);

    *(v9 + 34) = v17;
    a1 = v47;
    _os_log_impl(&dword_21CDE1000, v7, v8, "%{public}s:%ld %{public}s %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);

    if (v47)
    {
      goto LABEL_7;
    }

LABEL_10:
    v21 = sub_21CE6BD80();
    v32 = sub_21CE6CF10();
    if (os_log_type_enabled(v21, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136446978;
      v35 = sub_21CE6D2B0();
      v37 = sub_21CDF2CC8(v35, v36, &v49);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 142;
      *(v33 + 22) = 2082;
      v38 = sub_21CE6D2B0();
      v40 = sub_21CDF2CC8(v38, v39, &v49);

      *(v33 + 24) = v40;
      *(v33 + 32) = 2082;
      *(v33 + 34) = sub_21CDF2CC8(0x64656C696146, 0xE600000000000000, &v49);
      _os_log_impl(&dword_21CDE1000, v21, v32, "%{public}s:%ld %{public}s %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v34, -1, -1);
      MEMORY[0x21CF1BD50](v33, -1, -1);
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v49 = 0;
  v50 = 0xE000000000000000;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CE6D340();
  v20 = v49;
  v19 = v50;

  v21 = sub_21CE6BD80();
  v22 = sub_21CE6CF10();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v49 = v24;
    *v23 = 136446978;
    v25 = sub_21CE6D2B0();
    v48 = a1;
    v27 = sub_21CDF2CC8(v25, v26, &v49);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = 142;
    *(v23 + 22) = 2082;
    v28 = sub_21CE6D2B0();
    v30 = sub_21CDF2CC8(v28, v29, &v49);

    *(v23 + 24) = v30;
    *(v23 + 32) = 2082;
    v31 = sub_21CDF2CC8(v20, v19, &v49);

    *(v23 + 34) = v31;
    _os_log_impl(&dword_21CDE1000, v21, v22, "%{public}s:%ld %{public}s %{public}s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v24, -1, -1);
    MEMORY[0x21CF1BD50](v23, -1, -1);

LABEL_12:
    goto LABEL_14;
  }

LABEL_14:
  v41 = (v2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  v42 = *(v2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  if (v42)
  {
    v43 = v41[1];

    v42(0);
    sub_21CDEEA58(v42);
    v44 = *v41;
  }

  else
  {
    v44 = 0;
  }

  v45 = v41[1];
  *v41 = 0;
  v41[1] = 0;
  sub_21CDEEA58(v44);
  v46 = *(v2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController);
  *(v2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController) = 0;
}

uint64_t sub_21CE24540()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v22[0] = 0x203A656C6F72;
  v22[1] = 0xE600000000000000;
  v2 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v3 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v3);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);

  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 152;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v22);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    v15 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, v22);

    *(v7 + 34) = v15;
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  else
  {
  }

  v16 = (v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  v17 = *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  if (v17)
  {
    v18 = v16[1];

    v17(1);
    sub_21CDEEA58(v17);
    v19 = *v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  return sub_21CDEEA58(v19);
}

unint64_t sub_21CE2481C()
{
  result = qword_27CE40780;
  if (!qword_27CE40780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40780);
  }

  return result;
}

uint64_t sub_21CE24878()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40790, &qword_21CE72498) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21CE6CDC0();
}

unint64_t sub_21CE24908()
{
  result = qword_27CE40798;
  if (!qword_27CE40798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40798);
  }

  return result;
}

unint64_t sub_21CE24960()
{
  result = qword_27CE407A0;
  if (!qword_27CE407A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE407A0);
  }

  return result;
}

unint64_t sub_21CE249B4()
{
  result = qword_27CE407A8;
  if (!qword_27CE407A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE407A8);
  }

  return result;
}

uint64_t SettingsSearchItem.title.getter()
{
  v1 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SettingsSearchItem.keywords.getter()
{
  v1 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SettingsSearchItem.description.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload);
  if (*(v2 + 16) && (v3 = sub_21CE66850(0x6E41686372616573, 0xEC000000726F6863), (v4 & 1) != 0) && (v5 = (*(v2 + 56) + 16 * v3), (v6 = v5[1]) != 0))
  {
    v7 = *v5;
    v8 = v5[1];
  }

  else
  {

    v6 = 0xEB000000003E726FLL;
    v7 = 0x68636E61206F6E3CLL;
  }

  v9 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (*(v10 + 16) && (v11 = sub_21CE66850(28261, 0xE200000000000000), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v15 = 0x6C746974206F6E3CLL;
  }

  MEMORY[0x21CF1ACB0](10272, 0xE200000000000000);
  MEMORY[0x21CF1ACB0](v7, v6);

  MEMORY[0x21CF1ACB0](41, 0xE100000000000000);
  return v15;
}

uint64_t SettingsSearchItem.anchor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_21CE66850(0x6E41686372616573, 0xEC000000726F6863);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 16 * v2);
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

Swift::Void __swiftcall SettingsSearchItem.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v4 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v6 = sub_21CE6CB50();

  v7 = sub_21CE6CC20();
  [v3 encodeObject:v6 forKey:v7];

  v8 = *(v1 + OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v9 = sub_21CE6CB50();
  v10 = sub_21CE6CC20();
  [v3 encodeObject:v9 forKey:v10];

  v11 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  swift_beginAccess();
  if (*(v1 + v11))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407D0, &qword_21CE6F610);
    v12 = sub_21CE6CD30();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_21CE6CC20();
  [v3 encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  v14 = [v3 encodedData];
  v15 = sub_21CE6BA90();
  v17 = v16;

  v18 = sub_21CE6BA70();
  sub_21CDF32E8(v15, v17);
  v19 = sub_21CE6CC20();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
}

id SettingsSearchItem.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  *&v1[OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords] = 0;
  sub_21CE25A1C();
  v6 = sub_21CE6D0F0();
  if (!v6)
  {

    goto LABEL_6;
  }

  v7 = v6;
  v8 = sub_21CE6BA90();
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v12 = sub_21CE25AF4();
  sub_21CDF32E8(v8, v10);
  if (!v12)
  {

LABEL_4:
LABEL_6:
    v13 = *&v2[v5];

    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = sub_21CE6CC20();
  v16 = [v12 decodeObjectForKey_];

  if (v16)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {

    sub_21CDE5494(&v30, &qword_27CE40410, &qword_21CE71B10);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407D0, &qword_21CE6F610);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_4;
  }

  v17 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  *&v2[OBJC_IVAR____TtC8Settings18SettingsSearchItem_title] = v27;
  v18 = sub_21CE6CC20();
  v19 = [v12 decodeObjectForKey_];

  if (v19)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {

    sub_21CDE5494(&v30, &qword_27CE40410, &qword_21CE71B10);
LABEL_25:
    v22 = *&v2[v17];

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407D8, &qword_21CE72628);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  *&v2[OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload] = v27;
  v20 = sub_21CE6CC20();
  v21 = [v12 decodeObjectForKey_];

  if (v21)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {

    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (*(&v29 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407E0, &qword_21CE72630);
    if (swift_dynamicCast())
    {
      v23 = v27;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_21CDE5494(&v30, &qword_27CE40410, &qword_21CE71B10);
    v23 = 0;
  }

  swift_beginAccess();
  v24 = *&v2[v5];
  *&v2[v5] = v23;

  v26.receiver = v2;
  v26.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v26, sel_init);

  return v25;
}

id SettingsSearchItem.init(title:searchAnchor:keywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  *&v4[OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords] = 0;
  *&v4[OBJC_IVAR____TtC8Settings18SettingsSearchItem_title] = a1;
  swift_beginAccess();
  *&v4[v10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407E8, &qword_21CE72638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CE702B0;
  *(inited + 32) = 0x6E41686372616573;
  v12 = inited + 32;
  *(inited + 40) = 0xEC000000726F6863;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v13 = sub_21CDFA688(inited);
  swift_setDeallocating();
  sub_21CDE5494(v12, &unk_27CE407F0, &qword_21CE72640);
  *&v4[OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload] = v13;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t SettingsSearchItem.__allocating_init(title:localization:searchAnchor:keywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_21CE25BB4(a1, a2, a3, a4, a5, a6, a7);

  return v16;
}

uint64_t SettingsSearchItem.init(title:localization:searchAnchor:keywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_21CE25BB4(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

Swift::Void __swiftcall SettingsSearchItem.setLocalized(title:forLocalization:)(Swift::String title, Swift::String forLocalization)
{
  object = forLocalization._object;
  countAndFlagsBits = forLocalization._countAndFlagsBits;
  v5 = title._object;
  v6 = title._countAndFlagsBits;
  v7 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  swift_beginAccess();

  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  sub_21CE066E0(v6, v5, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v2 + v7) = v10;
  swift_endAccess();
}

Swift::Void __swiftcall SettingsSearchItem.setLocalized(keyword:atIndex:forLocalization:)(Swift::String keyword, Swift::Int atIndex, Swift::String forLocalization)
{
  v4 = v3;
  object = forLocalization._object;
  countAndFlagsBits = forLocalization._countAndFlagsBits;
  v8 = keyword._object;
  v9 = keyword._countAndFlagsBits;
  v10 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (v11)
  {
    if (atIndex < 0)
    {
      return;
    }
  }

  else
  {
    if (atIndex)
    {
      return;
    }

    v11 = MEMORY[0x277D84F90];
    *(v4 + v10) = MEMORY[0x277D84F90];
  }

  if (*(v11 + 16) > atIndex)
  {
    swift_beginAccess();
    v12 = *(v4 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v10) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_21CE25ACC(v12);
      *(v4 + v10) = v12;
    }

    if (v12[2] <= atIndex)
    {
      __break(1u);
    }

    else
    {
      v14 = &v12[atIndex];

      v15 = v14[4];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = v14[4];
      v14[4] = 0x8000000000000000;
      sub_21CE066E0(v9, v8, countAndFlagsBits, object, v16);

      v14[4] = v17;
      *(v4 + v10) = v12;
      swift_endAccess();
    }
  }
}

id SettingsSearchItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SettingsSearchItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21CE25A1C()
{
  result = qword_27CE40388;
  if (!qword_27CE40388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE40388);
  }

  return result;
}

uint64_t sub_21CE25A68(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21CE6D360();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_21CE6D2D0();
}

id sub_21CE25AF4()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21CE6BA70();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_21CE6B910();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21CE25BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  *&v7[OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords] = 0;
  *&v7[OBJC_IVAR____TtC8Settings18SettingsSearchItem_title] = MEMORY[0x277D84F98];
  swift_beginAccess();
  *&v7[v15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407E8, &qword_21CE72638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CE702B0;
  *(inited + 32) = 0x6E41686372616573;
  v17 = inited + 32;
  *(inited + 40) = 0xEC000000726F6863;
  *(inited + 48) = a5;
  *(inited + 56) = a6;
  v18 = sub_21CDFA688(inited);
  swift_setDeallocating();
  sub_21CDE5494(v17, &unk_27CE407F0, &qword_21CE72640);
  *&v7[OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload] = v18;
  v51.receiver = v7;
  v51.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v51, sel_init);
  v20 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  swift_beginAccess();
  v21 = v19;

  v22 = *&v19[v20];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *&v19[v20];
  *&v19[v20] = 0x8000000000000000;
  sub_21CE066E0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

  *&v19[v20] = v50;
  swift_endAccess();

  if (!a7)
  {

    return v21;
  }

  v24 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  swift_beginAccess();
  v25 = *&v21[v24];
  v49 = v24;
  *&v21[v24] = MEMORY[0x277D84F90];

  v26 = *(a7 + 16);
  if (!v26)
  {
LABEL_16:

    return v21;
  }

  v27 = (a7 + 40);
  while (1)
  {
    v28 = *(v27 - 1);
    v29 = *v27;
    swift_beginAccess();
    if (!*&v21[v49])
    {

      goto LABEL_5;
    }

    v30 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40800, &qword_21CE734F0);
    v31 = sub_21CE6D390();
    swift_bridgeObjectRetain_n();

    v32 = a3;
    v33 = sub_21CE66850(a3, a4);
    v35 = v34;

    if (v35)
    {
      break;
    }

    v31[(v33 >> 6) + 8] |= 1 << v33;
    v37 = (v31[6] + 16 * v33);
    *v37 = v32;
    v37[1] = a4;
    v38 = (v31[7] + 16 * v33);
    *v38 = v28;
    v38[1] = v29;
    v39 = v31[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_19;
    }

    v42 = a4;
    v43 = v32;
    v31[2] = v41;
    v44 = *&v30[v49];
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v30[v49] = v44;
    if ((v45 & 1) == 0)
    {
      v44 = sub_21CDF2994(0, v44[2] + 1, 1, v44);
      *&v30[v49] = v44;
    }

    v47 = v44[2];
    v46 = v44[3];
    if (v47 >= v46 >> 1)
    {
      v44 = sub_21CDF2994((v46 > 1), v47 + 1, 1, v44);
    }

    v44[2] = v47 + 1;
    v44[v47 + 4] = v31;
    v21 = v30;
    *&v30[v49] = v44;
    a3 = v43;
    a4 = v42;
LABEL_5:
    swift_endAccess();

    v27 += 2;
    if (!--v26)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_21CE2600C(uint64_t a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446978;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 35;
    *(v5 + 22) = 2082;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v14);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE77390, &v14);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%{public}s:%ld %{public}s %{public}s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v13 = *(a1 + 32);
  *(a1 + 32) = 0;
}

void sub_21CE26234()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v12[1] = 0xE000000000000000;
  MEMORY[0x21CF1ACB0](0x203A726F727245, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CE6D340();
  MEMORY[0x21CF1ACB0](46, 0xE100000000000000);
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);

  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF10();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136446978;
    v5 = sub_21CE6D2B0();
    v7 = sub_21CDF2CC8(v5, v6, v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2048;
    *(v3 + 14) = 47;
    *(v3 + 22) = 2082;
    v8 = sub_21CE6D2B0();
    v10 = sub_21CDF2CC8(v8, v9, v12);

    *(v3 + 24) = v10;
    *(v3 + 32) = 2082;
    v11 = sub_21CDF2CC8(0, 0xE000000000000000, v12);

    *(v3 + 34) = v11;
    _os_log_impl(&dword_21CDE1000, v1, v2, "%{public}s:%ld %{public}s %{public}s", v3, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v4, -1, -1);
    MEMORY[0x21CF1BD50](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21CE26524()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  return swift_unknownObjectRetain();
}