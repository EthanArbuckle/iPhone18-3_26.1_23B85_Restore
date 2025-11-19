uint64_t sub_26BEAA0B4()
{
  sub_26BE2E258(v0 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation, &qword_28045ECC0, &qword_26C015C70);
  v1 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_id;
  v2 = sub_26C00928C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContinuationStore()
{
  result = qword_28045EC88;
  if (!qword_28045EC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BEAA1C4()
{
  sub_26BEAA298();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_26C00928C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26BEAA298()
{
  if (!qword_28045EC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045ECA0, &qword_26C015B08);
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045EC98);
    }
  }
}

uint64_t sub_26BEAA2FC()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00924C();
  return sub_26C00B0CC();
}

uint64_t sub_26BEAA37C()
{
  sub_26C00B05C();
  v1 = *v0 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_id;
  sub_26C00924C();
  return sub_26C00B0CC();
}

uint64_t sub_26BEAA3C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26C00923C();
}

uint64_t sub_26BEAA3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26BEAA40C, v4, 0);
}

uint64_t sub_26BEAA40C()
{
  v19 = v0;
  v1 = v0[9];
  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = type metadata accessor for ContinuationStore();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v0[10] = v11;
    v12 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
    (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
    sub_26C00927C();
    *(v11 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state) = 0;
    swift_beginAccess();

    sub_26BF74E48(&v18, v11);
    swift_endAccess();

    sub_26BEACA58(&qword_28045ECE8, v14, type metadata accessor for SMSemaphore);
    v15 = swift_task_alloc();
    v0[11] = v15;
    v15[2] = v5;
    v15[3] = v4;
    v15[4] = v11;
    v15[5] = v7;
    v15[6] = v6;
    v15[7] = v1;
    v16 = *(MEMORY[0x277D859B8] + 4);
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_26BEAA670;
    v21 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740]();
  }
}

uint64_t sub_26BEAA670()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_26BEAA7FC;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 72);

    v5 = sub_26BEAA798;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26BEAA798()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BEAA7FC()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_26BEAA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[5] = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECF0, &qword_26C015C98) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BEAA914, a8, 0);
}

uint64_t sub_26BEAA914()
{
  v1 = v0[12];
  v18 = v0[10];
  v19 = v0[11];
  v17 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_26C00A83C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v2;

  sub_26BEAB030(v1, &unk_26C015CA8, v8);
  sub_26BE2E258(v1, &qword_28045ECF0, &qword_26C015C98);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v17;
  v9[5] = v18;
  v9[6] = v2;

  sub_26BEAB030(v1, &unk_26C015CB8, v9);
  sub_26BE2E258(v1, &qword_28045ECF0, &qword_26C015C98);
  v11 = sub_26BEACA58(&qword_28045ECE8, v10, type metadata accessor for SMSemaphore);
  v12 = *(MEMORY[0x277D85818] + 4);
  v13 = swift_task_alloc();
  v0[13] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECF8, &unk_26C015CC0);
  *v13 = v0;
  v13[1] = sub_26BEAAB74;
  v15 = v0[5];

  return MEMORY[0x2822004D0](v0 + 15, v19, v11, v14);
}

uint64_t sub_26BEAAB74()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_26BEAAD44;
  }

  else
  {
    v6 = sub_26BEAACA0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26BEAACA0()
{
  v1 = *(v0 + 96);
  v2 = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  sub_26C00A85C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26BEAAD44()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  swift_beginAccess();
  sub_26BE2AFA4();
  swift_endAccess();

  swift_willThrow();

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_26BEAADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_26BEAAE20, 0, 0);
}

uint64_t sub_26BEAAE20()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_26BEAAEE4;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, v6, v3, sub_26BEACAA0, v4, v7);
}

uint64_t sub_26BEAAEE4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAB018, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26BEAB030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECF0, &qword_26C015C98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_26BE2E1F0(a1, v20 - v9, &qword_28045ECF0, &qword_26C015C98);
  v11 = sub_26C00A83C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26BE2E258(v10, &qword_28045ECF0, &qword_26C015C98);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_26C00A7EC();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_26C00A82C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_26BEAB220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_26C00AD2C();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BEAB2E4, 0, 0);
}

uint64_t sub_26BEAB2E4()
{
  v1 = v0[13];
  sub_26C00AFBC();
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_26BEAB3A4;
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];

  return sub_26BEABE14(v5, v4, 0, 0, 1);
}

uint64_t sub_26BEAB3A4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v5 = sub_26BEAB720;
  }

  else
  {
    v5 = sub_26BEAB50C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BEAB50C()
{
  if (qword_28045DF90 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = qword_280478F18;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_26BEACA50;
  *(v3 + 24) = v1;
  v0[6] = sub_26BEAFAE8;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_26BEA9B08;
  v0[5] = &block_descriptor_48;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_26C00A81C();
    sub_26BEACA58(&qword_28045ED08, 255, MEMORY[0x277D85678]);
    swift_allocError();
    sub_26C00A36C();
    swift_willThrow();
    v7 = v0[13];

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_26BEAB720()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEAB7A4()
{
  v1 = v0[17];
  if (*(v1 + 112))
  {
    goto LABEL_25;
  }

  v29 = v0 + 2;
  *(v1 + 112) = 1;
  swift_beginAccess();
  v27 = v1;
  v2 = *(v1 + 120);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_26C00AB7C();
    type metadata accessor for ContinuationStore();
    sub_26BEACA58(&qword_28045ECB8, 255, type metadata accessor for ContinuationStore);
    sub_26C00A87C();
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[11];
    v7 = v0[12];
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    v3 = *(v1 + 120);
    swift_bridgeObjectRetain_n();
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v28 = v3;
  while ((v3 & 0x8000000000000000) == 0)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_22;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (qword_28045DF90 != -1)
    {
      swift_once();
    }

    v18 = qword_280478F18;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26BEAC5E4;
    *(v19 + 24) = v16;
    v0[6] = sub_26BEAC5FC;
    v0[7] = v19;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26BEA9B08;
    v0[5] = &block_descriptor_2;
    v20 = _Block_copy(v29);
    v21 = v0[7];

    dispatch_sync(v18, v20);

    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    v6 = v14;
    v7 = v15;
    v3 = v28;
    if (v20)
    {
      goto LABEL_29;
    }
  }

  v17 = sub_26C00ABAC();
  if (v17)
  {
    v0[16] = v17;
    type metadata accessor for ContinuationStore();
    swift_dynamicCast();
    v16 = *v29;
    v14 = v6;
    v15 = v7;
    if (*v29)
    {
      goto LABEL_18;
    }
  }

LABEL_22:
  sub_26BE2DA4C();

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v22 = MEMORY[0x277D84FA0];
    v23 = v27;
    goto LABEL_24;
  }

LABEL_30:
  v23 = v27;
  if (sub_26C00AB8C())
  {
    v22 = sub_26BEAC2D4(MEMORY[0x277D84F90]);
  }

  else
  {
    v22 = MEMORY[0x277D84FA0];
  }

LABEL_24:
  v24 = *(v23 + 120);
  *(v23 + 120) = v22;

LABEL_25:
  v25 = v0[1];

  return v25();
}

uint64_t sub_26BEABBB8()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for ContinuationStore.ContinuationState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContinuationStore.ContinuationState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26BEABD68()
{
  result = qword_28045ECA8;
  if (!qword_28045ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045ECA8);
  }

  return result;
}

uint64_t sub_26BEABE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26C00AD1C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26BEABF14, 0, 0);
}

uint64_t sub_26BEABF14()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_26C00AD2C();
  v7 = sub_26BEACA58(&qword_28045ED10, 255, MEMORY[0x277D85928]);
  sub_26C00AF9C();
  sub_26BEACA58(&qword_28045ED18, 255, MEMORY[0x277D858F8]);
  sub_26C00AD3C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26BEAC0AC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_26BEAC0AC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAC268, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_26BEAC268()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_26BEAC2D4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26C00AB8C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
      result = sub_26C00ABFC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_26C00AB8C();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  v36 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v34 = v1;
    while (1)
    {
      result = MEMORY[0x26D6996F0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = *(v3 + 40);
      sub_26C00B05C();
      sub_26C00924C();
      result = sub_26C00B0CC();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v6 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        while (1)
        {
          v17 = *(*(v3 + 48) + 8 * v12);

          v18 = sub_26C00923C();

          if (v18)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v6 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            v1 = v34;
            v5 = v36;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v34;
        v5 = v36;
        if (v7 == v36)
        {
          return v3;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v13) = v15 | v14;
        *(*(v3 + 48) + 8 * v12) = v9;
        v19 = *(v3 + 16);
        v8 = __OFADD__(v19, 1);
        v20 = v19 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v20;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v21 = 0;
    v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v21 != v35)
    {
      v22 = *(v1 + 32 + 8 * v21);
      v23 = *(v3 + 40);
      sub_26C00B05C();

      sub_26C00924C();
      result = sub_26C00B0CC();
      v24 = -1 << *(v3 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      v27 = *(v6 + 8 * (v25 >> 6));
      v28 = 1 << v25;
      if (((1 << v25) & v27) != 0)
      {
        v29 = ~v24;
        do
        {
          v30 = *(*(v3 + 48) + 8 * v25);

          v31 = sub_26C00923C();

          if (v31)
          {

            v5 = v36;
            goto LABEL_23;
          }

          v25 = (v25 + 1) & v29;
          v26 = v25 >> 6;
          v27 = *(v6 + 8 * (v25 >> 6));
          v28 = 1 << v25;
        }

        while (((1 << v25) & v27) != 0);
        v5 = v36;
      }

      *(v6 + 8 * v26) = v28 | v27;
      *(*(v3 + 48) + 8 * v25) = v22;
      v32 = *(v3 + 16);
      v8 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v8)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v33;
LABEL_23:
      if (++v21 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_26BEAC5FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BEAC63C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECC0, &qword_26C015C70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BEAC6AC()
{
  result = qword_28045ECC8;
  if (!qword_28045ECC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045ECC8);
  }

  return result;
}

unint64_t sub_26BEAC6F8()
{
  result = qword_28045ECE0;
  if (!qword_28045ECE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045ECD8, &qword_26C015C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045ECE0);
  }

  return result;
}

uint64_t sub_26BEAC75C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_26BE28F58;

  return sub_26BEAA868(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_26BEAC838()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BEAC880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26BE2E3F4;

  return sub_26BEAADFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26BEAC948()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BEAC988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26BE2E3F4;

  return sub_26BEAB220(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26BEACA58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BEACAA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BEACB74()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_26BEA98D0(v2, v3);
}

uint64_t sub_26BEACBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_26BEACC08, 0, 0);
}

uint64_t sub_26BEACC08()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[10] = v6;
  v0[11] = v7;
  v0[12] = v1[2];

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_26BEACD18;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEACD18()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAD4, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_26BEACE98;
    v6 = v3[8];
    v7 = v3[9];
    v8 = v3[7];

    return sub_26BE1D0E4((v3 + 5), v8, v6, v7);
  }
}

uint64_t sub_26BEACE98()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26BEAD16C;
  }

  else
  {
    v3 = sub_26BEACFAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEACFAC()
{
  v1 = v0[6];
  v0[17] = v0[5];
  v0[18] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_26BEAD054;

  return sub_26BEAB784();
}

uint64_t sub_26BEAD054()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFB00, 0, 0);
}

uint64_t sub_26BEAD16C()
{
  v0[20] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAD210;

  return sub_26BEAB784();
}

uint64_t sub_26BEAD210()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAC4, 0, 0);
}

uint64_t sub_26BEAD328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x2822009F8](sub_26BEAD350, 0, 0);
}

uint64_t sub_26BEAD350()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[12] = v6;
  v0[13] = v7;
  v0[14] = v1[2];

  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_26BEAD460;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEAD460()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAD6F8, 0, 0);
  }

  else
  {
    v4 = v3[14];

    v5 = swift_task_alloc();
    v3[17] = v5;
    *v5 = v3;
    v5[1] = sub_26BEAD5E4;
    v6 = v3[10];
    v7 = v3[11];
    v8 = v3[8];
    v9 = v3[9];
    v10 = v3[7];

    return sub_26BE1E5B8((v3 + 5), v10, v8, v9, v6, v7);
  }
}

uint64_t sub_26BEAD5E4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_26BEADB50;
  }

  else
  {
    v3 = sub_26BEAD928;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEAD6F8()
{
  v18 = v0;
  v1 = v0[14];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[16];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BEAD928()
{
  v1 = v0[6];
  v0[19] = v0[5];
  v0[20] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26BEAD9D0;

  return sub_26BEAB784();
}

uint64_t sub_26BEAD9D0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEADAE8, 0, 0);
}

uint64_t sub_26BEADAE8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[19];

  return v2(v3);
}

uint64_t sub_26BEADB50()
{
  v0[22] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_26BEADBF4;

  return sub_26BEAB784();
}

uint64_t sub_26BEADBF4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEADD0C, 0, 0);
}

uint64_t sub_26BEADD0C()
{
  v1 = v0[18];
  swift_willThrow();
  v2 = v0[18];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BEADD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_26BEADDA4, 0, 0);
}

uint64_t sub_26BEADDA4()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[10] = v6;
  v0[11] = v7;
  v0[12] = v1[2];

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_26BEADEB4;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEADEB4()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAE148, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_26BEAE034;
    v6 = v3[8];
    v7 = v3[9];
    v8 = v3[7];

    return sub_26BE22F1C((v3 + 5), v8, v6, v7);
  }
}

uint64_t sub_26BEAE034()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26BEAE5A0;
  }

  else
  {
    v3 = sub_26BEAE378;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEAE148()
{
  v18 = v0;
  v1 = v0[12];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[14];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BEAE378()
{
  v1 = v0[6];
  v0[17] = v0[5];
  v0[18] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_26BEAE420;

  return sub_26BEAB784();
}

uint64_t sub_26BEAE420()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAE538, 0, 0);
}

uint64_t sub_26BEAE538()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[17];

  return v2(v3);
}

uint64_t sub_26BEAE5A0()
{
  v0[20] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAE644;

  return sub_26BEAB784();
}

uint64_t sub_26BEAE644()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAE75C, 0, 0);
}

uint64_t sub_26BEAE75C()
{
  v1 = v0[16];
  swift_willThrow();
  v2 = v0[16];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BEAE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_26BEAE7F4, 0, 0);
}

uint64_t sub_26BEAE7F4()
{
  v1 = v0[6];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[9] = v7;
  v0[10] = v8;
  v0[11] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_26BEAE908;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEAE908()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAEDDC, 0, 0);
  }

  else
  {
    v4 = v3[11];
    v5 = v3[7];

    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v3[14] = v7;
    *v7 = v3;
    v7[1] = sub_26BEAEAE8;
    v8 = v3[8];

    return v10(v3 + 5);
  }
}

uint64_t sub_26BEAEAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v4 = *v0;

  *(v1 + 120) = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_26BEAEC04, 0, 0);
}

uint64_t sub_26BEAEC04()
{
  v0[16] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAECA8;

  return sub_26BEAB784();
}

uint64_t sub_26BEAECA8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v7 + 8);
  v5 = *(v1 + 120);

  return v4(v5);
}

uint64_t sub_26BEAEDDC()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v16);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[13];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BEAF004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26BEAF028, 0, 0);
}

uint64_t sub_26BEAF028()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[8] = v7;
  v0[9] = v8;
  v0[10] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26BEAF13C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEAF13C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAF5DC, 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[6];

    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v3[13] = v7;
    *v7 = v3;
    v7[1] = sub_26BEAF31C;
    v8 = v3[7];

    return v10(v3 + 16);
  }
}

uint64_t sub_26BEAF31C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v4 = *v0;

  *(v1 + 132) = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26BEAF420, 0, 0);
}

uint64_t sub_26BEAF420()
{
  v0[14] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26BEAF4C4;

  return sub_26BEAB784();
}

uint64_t sub_26BEAF4C4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v7 + 8);
  v5 = *(v1 + 132);

  return v4(v5);
}

uint64_t sub_26BEAF5DC()
{
  v17 = v0;
  v1 = v0[10];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v16);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[12];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BEAF804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED20, &qword_26C015CD8);
    v3 = sub_26C00ABFC();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_26C00A48C();
      sub_26C00B05C();
      v29 = v7;
      sub_26C00A58C();
      v9 = sub_26C00B0CC();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_26C00A48C();
        v20 = v19;
        if (v18 == sub_26C00A48C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_26C00AF2C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t MLS.KeySchedule.receiveExternalInit(kemOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_26C009C8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLS.KeySchedule();
  sub_26BE2E1F0(v3 + *(v13 + 64), &v18, &qword_28045E6A8, &qword_26C0112B0);
  if (v19)
  {
    v23 = a3;
    sub_26BE2E410(&v18, v20);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v15 + 40))(0xD000000000000014, 0x800000026C02C280, *(v3 + 8), a1, a2, v14, v15);
    if (!v4)
    {
      (*(v9 + 32))(v23, v12, v8);
    }

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_26BE2E258(&v18, &qword_28045E6A8, &qword_26C0112B0);
    sub_26BE01654();
    swift_allocError();
    *v17 = 31;
    v17[112] = 0;
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for MLS.KeySchedule()
{
  result = qword_28045ED28;
  if (!qword_28045ED28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BEAFD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v24 = a1;
  v4 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009C8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *v3;
  v25 = *(v3 + 8);
  v17 = *(v3 + 3);
  v18 = *(v3 + 4);
  v19 = type metadata accessor for MLS.KeySchedule();
  (*(v9 + 16))(v13, &v3[*(v19 + 48)], v8);
  sub_26BE82314();
  sub_26C009C5C();
  v28 = v16;
  v29 = v25;
  v30 = v17;
  v31 = v18;
  v20 = v32;
  MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v15, v26, v27);
  if (!v20)
  {
    if ((MEMORY[0x26D698700](v7, v24) & 1) == 0)
    {
      sub_26BE01654();
      swift_allocError();
      *v21 = 4;
      *(v21 + 8) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 40) = 0u;
      *(v21 + 56) = 0u;
      *(v21 + 72) = 0u;
      *(v21 + 88) = 0u;
      *(v21 + 104) = 0;
      *(v21 + 112) = 23;
      swift_willThrow();
    }

    sub_26BEB658C(v7);
  }

  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_26BEAFF90@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a2;
  v81 = a1;
  v78 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v69 - v9;
  v10 = sub_26C009C8C();
  v84 = *(v10 - 8);
  v11 = *(v84 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v69 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v69 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v69 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v69 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v69 - v30;
  v32 = *(a3 + 48);
  v86 = *(a3 + 32);
  v87 = v32;
  v88 = *(a3 + 64);
  v33 = *(a3 + 16);
  v85[0] = *a3;
  v85[1] = v33;
  v89 = xmmword_26C00BBD0;
  v90 = 0;
  v34 = v91;
  sub_26BFAF494(v85);
  v35 = v89;
  if (v34)
  {
    return sub_26BE00258(v89, *(&v89 + 1));
  }

  v37 = v82;
  v38 = v83;
  v70 = v14;
  v91 = 0;
  v73 = v17;
  v76 = v20;
  v74 = v23;
  v39 = *(&v89 + 1) >> 62;
  if ((*(&v89 + 1) >> 62) > 1)
  {
    v40 = v84;
    v41 = v10;
    if (v39 != 2)
    {
LABEL_11:
      v43 = v37;
      goto LABEL_12;
    }

    v42 = *(v89 + 24);
  }

  else
  {
    v40 = v84;
    v41 = v10;
    if (!v39)
    {
      goto LABEL_11;
    }

    v42 = v89 >> 32;
  }

  v43 = v82;
  if (v42 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  v82 = v26;
  v79 = v29;
  v71 = sub_26C00909C();
  v72 = v44;
  sub_26BE00258(v35, *(&v35 + 1));
  v45 = v38;
  *&v85[0] = sub_26BE125AC(*(v38 + 1));
  *(&v85[0] + 1) = v46;
  v75 = v31;
  sub_26C009C5C();
  v47 = v80;
  sub_26BE2E1F0(v43, v80, &qword_28045E708, &unk_26C011370);
  v48 = *(v40 + 48);
  if (v48(v47, 1, v41) == 1)
  {
    v49 = type metadata accessor for MLS.KeySchedule();
    v50 = *(v40 + 16);
    v50(v79, &v45[*(v49 + 60)], v41);
    if (v48(v47, 1, v41) != 1)
    {
      sub_26BE2E258(v47, &qword_28045E708, &unk_26C011370);
    }

    v51 = v75;
    v52 = v79;
  }

  else
  {
    v52 = v79;
    (*(v40 + 32))(v79, v47, v41);
    v50 = *(v40 + 16);
    v51 = v75;
  }

  v53 = v74;
  v54 = *v45;
  v55 = v81;
  v56 = v82;
  v50(v82, v52, v41);
  v50(v53, v55, v41);
  v50(v76, v51, v41);
  LODWORD(v83) = v54;
  LOBYTE(v89) = v54;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v89, v85);
  v57 = v86;
  v58 = v73;
  v59 = v71;
  v60 = v72;
  v61 = v91;
  sub_26BEB1F1C(v85, v71, v72, v53, v73);
  v91 = v61;
  if (v61)
  {
    sub_26BE00258(v59, v60);
    v62 = *(v84 + 8);
    v62(v76, v41);
    v62(v53, v41);
    v62(v56, v41);
    v62(v79, v41);
    v62(v75, v41);
  }

  else
  {
    v81 = v57;
    if (v83)
    {
      v63 = 2;
    }

    else
    {
      v63 = 1;
    }

    LOWORD(v85[0]) = v63;
    v64 = v70;
    v50(v70, v58, v41);
    v65 = v77;
    v66 = v76;
    v50(v77, v76, v41);
    v67 = v84;
    (*(v84 + 56))(v65, 0, 1, v41);
    MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(v85, v64, v65, v59, v60, v78);

    v68 = *(v67 + 8);
    v68(v58, v41);
    v68(v66, v41);
    v68(v74, v41);
    v68(v82, v41);
    v68(v79, v41);
    return (v68)(v75, v41);
  }
}

uint64_t MLS.KeySchedule.encryptionKeys(size:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26C009C8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*v2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v16 = v11;
  v15 = v10;
  v12 = type metadata accessor for MLS.KeySchedule();
  (*(v6 + 16))(v9, &v2[*(v12 + 32)], v5);
  return MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v16, &v15, v9, a2);
}

uint64_t MLS.KeySchedule.computeConfirmationTag(confirmedTranscriptHash:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_26C009C8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v17[8] = *v2;
  v18 = *(v2 + 8);
  v19 = v13;
  v20 = v14;
  v15 = type metadata accessor for MLS.KeySchedule();
  (*(v6 + 16))(v10, v2 + *(v15 + 48), v5);
  sub_26BE82314();

  sub_26C009C5C();
  MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v12, a1, a2);
  (*(v6 + 8))(v12, v5);
}

double MLS.KeySchedule.externalPublicKey.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLS.KeySchedule();
  sub_26BE2E1F0(v1 + *(v3 + 64), v9, &qword_28045E6A8, &qword_26C0112B0);
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v6 = *(v5 + 8);
    v7 = *(v6 + 32);
    *(a1 + 24) = swift_getAssociatedTypeWitness();
    *(a1 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a1);
    v7(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_26BE2E258(v9, &qword_28045E6A8, &qword_26C0112B0);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t MLS.KeySchedule.joinerSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 20);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.joinerSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 20);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.epochSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 24);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.epochSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 24);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.senderDataSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 28);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.senderDataSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 28);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.encryptionSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 32);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.encryptionSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 32);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.exporterSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 36);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.exporterSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 36);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.epochAuthenticator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 40);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.epochAuthenticator.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 40);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.externalSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 44);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.externalSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 44);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.confirmationKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 48);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.confirmationKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 48);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.membershipKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 52);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.membershipKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 52);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.resumptionPSK.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 56);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.resumptionPSK.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 56);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MLS.KeySchedule.initSecret.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 60);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeySchedule.initSecret.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeySchedule() + 60);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_26BEB17D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v61 = a4;
  v60 = a3;
  v70 = a2;
  v58[1] = a5;
  v80 = *MEMORY[0x277D85DE8];
  v7 = sub_26C00A4EC();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_26C009EDC();
  v69 = *(v72 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v72);
  v59 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = v58 - v13;
  v14 = sub_26C009EAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_26C009C8C();
  v63 = *(v68 - 8);
  v19 = *(v63 + 64);
  v20 = MEMORY[0x28223BE20](v68);
  MEMORY[0x28223BE20](v20);
  v22 = v58 - v21;
  v71 = *(a1 + 8);
  v23 = *(a1 + 32);
  sub_26C009C3C();
  v62 = v5;
  v24 = v74;
  v25 = v75;
  v26 = *(v15 + 16);
  v58[3] = v23;
  v58[2] = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v26(v18, v23 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v14);
  v27 = v67;
  sub_26C009E6C();
  (*(v15 + 8))(v18, v14);
  v28 = v22;
  *&v78 = v24;
  *(&v78 + 1) = v25;
  sub_26BE016A8();
  sub_26C009ECC();
  v29 = *(v69 + 8);
  v29(v27, v72);
  v30 = v24;
  v31 = v71;
  sub_26BE00258(v30, v25);
  sub_26BE82314();
  v32 = v68;
  sub_26C009C5C();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v31 >> 16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v33 = v64;
  sub_26C00A4DC();
  v34 = sub_26C00A49C();
  v36 = v35;
  (*(v65 + 8))(v33, v66);
  if (v36 >> 60 != 15)
  {
    v78 = xmmword_26C00BBD0;
    v79 = 0;
    v73 = bswap32(v31) >> 16;
    v76 = MEMORY[0x277D838B0];
    v77 = MEMORY[0x277CC9C18];
    v74 = &v73;
    v75 = &v74;
    v39 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x277D838B0]);
    v41 = *v39;
    v40 = v39[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v74);
    v42 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      v43 = 0;
      if (v42 != 2)
      {
        goto LABEL_14;
      }

      v45 = *(v34 + 16);
      v44 = *(v34 + 24);
      v43 = v44 - v45;
      if (!__OFSUB__(v44, v45))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v42)
    {
      v43 = BYTE6(v36);
LABEL_14:
      v46 = v62;
      sub_26BF30414(v43);
      if (v46)
      {
        sub_26BE136AC(v34, v36);
        (*(v63 + 8))(v28, v32);
LABEL_27:
        result = sub_26BE00258(v78, *(&v78 + 1));
        goto LABEL_28;
      }

      sub_26BE11228(v34, v36);
      v47 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v47 != 2)
        {
          v48 = 0;
          goto LABEL_26;
        }

        v50 = *(v60 + 16);
        v49 = *(v60 + 24);
        v48 = v49 - v50;
        if (!__OFSUB__(v49, v50))
        {
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v47)
      {
        v48 = BYTE6(v61);
LABEL_26:
        sub_26BF30414(v48);
        sub_26BE11228(v60, v61);
        sub_26C009E6C();
        v52 = *(&v78 + 1) >> 62;
        v53 = v28;
        if ((*(&v78 + 1) >> 62) > 1)
        {
          if (v52 != 2 || (*(v78 + 24) & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (!v52 || ((v78 >> 32) & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_37:
        v54 = sub_26C00909C();
        v56 = v55;
        v58[0] = v53;
        v57 = v59;
        sub_26C009EBC();
        sub_26BE00258(v54, v56);
        sub_26BE136AC(v34, v36);
        v29(v57, v72);
        (*(v63 + 8))(v58[0], v32);
        goto LABEL_27;
      }

      if (!__OFSUB__(HIDWORD(v60), v60))
      {
        v48 = HIDWORD(v60) - v60;
        goto LABEL_26;
      }

LABEL_41:
      __break(1u);
    }

    if (!__OFSUB__(HIDWORD(v34), v34))
    {
      v43 = HIDWORD(v34) - v34;
      goto LABEL_14;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_26BE01654();
  swift_allocError();
  *v37 = 5;
  v37[112] = 1;
  swift_willThrow();
  result = (*(v63 + 8))(v28, v32);
LABEL_28:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BEB1F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v70 = a4;
  v61 = a3;
  v60 = a2;
  v58[1] = a5;
  v80 = *MEMORY[0x277D85DE8];
  v7 = sub_26C00A4EC();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_26C009EDC();
  v69 = *(v72 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v72);
  v59 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = v58 - v13;
  v14 = sub_26C009EAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_26C009C8C();
  v63 = *(v68 - 8);
  v19 = *(v63 + 64);
  v20 = MEMORY[0x28223BE20](v68);
  MEMORY[0x28223BE20](v20);
  v22 = v58 - v21;
  v71 = *(a1 + 8);
  v23 = *(a1 + 32);
  sub_26C009C3C();
  v62 = v5;
  v24 = v74;
  v25 = v75;
  v26 = *(v15 + 16);
  v58[3] = v23;
  v58[2] = OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke;
  v26(v18, v23 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v14);
  v27 = v67;
  sub_26C009E6C();
  (*(v15 + 8))(v18, v14);
  v28 = v22;
  *&v78 = v24;
  *(&v78 + 1) = v25;
  sub_26BE016A8();
  sub_26C009ECC();
  v29 = *(v69 + 8);
  v29(v27, v72);
  v30 = v24;
  v31 = v71;
  sub_26BE00258(v30, v25);
  sub_26BE82314();
  v32 = v68;
  sub_26C009C5C();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v31 >> 16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v33 = v64;
  sub_26C00A4DC();
  v34 = sub_26C00A49C();
  v36 = v35;
  (*(v65 + 8))(v33, v66);
  if (v36 >> 60 != 15)
  {
    v78 = xmmword_26C00BBD0;
    v79 = 0;
    v73 = bswap32(v31) >> 16;
    v76 = MEMORY[0x277D838B0];
    v77 = MEMORY[0x277CC9C18];
    v74 = &v73;
    v75 = &v74;
    v39 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x277D838B0]);
    v41 = *v39;
    v40 = v39[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v74);
    v42 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      v43 = 0;
      if (v42 != 2)
      {
        goto LABEL_14;
      }

      v45 = *(v34 + 16);
      v44 = *(v34 + 24);
      v43 = v44 - v45;
      if (!__OFSUB__(v44, v45))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v42)
    {
      v43 = BYTE6(v36);
LABEL_14:
      v46 = v62;
      sub_26BF30414(v43);
      if (v46)
      {
        sub_26BE136AC(v34, v36);
        (*(v63 + 8))(v28, v32);
LABEL_27:
        result = sub_26BE00258(v78, *(&v78 + 1));
        goto LABEL_28;
      }

      sub_26BE11228(v34, v36);
      v47 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v47 != 2)
        {
          v48 = 0;
          goto LABEL_26;
        }

        v50 = *(v60 + 16);
        v49 = *(v60 + 24);
        v48 = v49 - v50;
        if (!__OFSUB__(v49, v50))
        {
          goto LABEL_26;
        }

        __break(1u);
      }

      else if (!v47)
      {
        v48 = BYTE6(v61);
LABEL_26:
        sub_26BF30414(v48);
        sub_26BE11228(v60, v61);
        sub_26C009E6C();
        v52 = *(&v78 + 1) >> 62;
        v53 = v28;
        if ((*(&v78 + 1) >> 62) > 1)
        {
          if (v52 != 2 || (*(v78 + 24) & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }
        }

        else if (!v52 || ((v78 >> 32) & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_37:
        v54 = sub_26C00909C();
        v56 = v55;
        v58[0] = v53;
        v57 = v59;
        sub_26C009EBC();
        sub_26BE00258(v54, v56);
        sub_26BE136AC(v34, v36);
        v29(v57, v72);
        (*(v63 + 8))(v58[0], v32);
        goto LABEL_27;
      }

      if (!__OFSUB__(HIDWORD(v60), v60))
      {
        v48 = HIDWORD(v60) - v60;
        goto LABEL_26;
      }

LABEL_41:
      __break(1u);
    }

    if (!__OFSUB__(HIDWORD(v34), v34))
    {
      v43 = HIDWORD(v34) - v34;
      goto LABEL_14;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_26BE01654();
  swift_allocError();
  *v37 = 5;
  v37[112] = 1;
  swift_willThrow();
  result = (*(v63 + 8))(v28, v32);
LABEL_28:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C009D7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_26C009C8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_26C009D4C();
  sub_26C009C6C();
  return MLS.KeySchedule.init(ciphersuiteID:initSecret:)(&v12, v9, a2);
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:initSecret:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26C009D7C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *a1;
  result = type metadata accessor for MLS.KeySchedule();
  v10 = a3 + *(result + 64);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  if ((v8 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v32 = v8 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v32, v28);
    v12 = v30;
    v13 = v31;
    v14 = v29;
    *a3 = v28[0];
    *(a3 + 8) = v14;
    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
    v15 = v11[15];
    v16 = sub_26C009C8C();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a3 + v15, a2, v16);

    sub_26C009D4C();
    v18 = a3 + v11[5];
    sub_26C009C6C();
    sub_26C009D4C();
    v19 = a3 + v11[6];
    sub_26C009C6C();
    sub_26C009D4C();
    v20 = a3 + v11[7];
    sub_26C009C6C();
    sub_26C009D4C();
    v21 = a3 + v11[8];
    sub_26C009C6C();
    sub_26C009D4C();
    v22 = a3 + v11[9];
    sub_26C009C6C();
    sub_26C009D4C();
    v23 = a3 + v11[10];
    sub_26C009C6C();
    sub_26C009D4C();
    v24 = a3 + v11[11];
    sub_26C009C6C();
    sub_26C009D4C();
    v25 = a3 + v11[12];
    sub_26C009C6C();
    sub_26C009D4C();
    v26 = a3 + v11[13];
    sub_26C009C6C();
    sub_26C009D4C();
    v27 = a3 + v11[14];
    sub_26C009C6C();

    (*(v17 + 8))(a2, v16);
    result = sub_26BE2E258(v10, &qword_28045E6A8, &qword_26C0112B0);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
  }

  return result;
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)@<X0>(unsigned __int16 *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v125 = a5;
  v129 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v107 - v13;
  v15 = sub_26C009C8C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v109 = v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v110 = v107 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v111 = v107 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v112 = v107 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v113 = v107 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v114 = v107 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v115 = v107 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v116 = v107 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v117 = v107 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v107 - v37;
  MEMORY[0x28223BE20](v36);
  v128 = v107 - v39;
  v40 = *a1;
  v41 = type metadata accessor for MLS.KeySchedule();
  v42 = a6 + *(v41 + 64);
  *(v42 + 32) = 0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  if ((v40 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v43 = v41;
    v120 = v42;
    v130[0] = v40 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v130, &v134);
    v44 = v136;
    v45 = v137;
    *a6 = v134;
    v118 = v135;
    *(a6 + 8) = v135;
    *(a6 + 24) = v44;
    *(a6 + 32) = v45;
    v138 = v43;
    v46 = v43[5];
    v121 = a6;
    v47 = *(v16 + 16);
    v119 = (a6 + v46);
    v124 = a2;
    v47();
    v123 = a3;
    sub_26BE2E1F0(a3, v14, &qword_28045E708, &unk_26C011370);
    v48 = *(v16 + 48);
    v49 = v48(v14, 1, v15);
    v126 = v16;
    if (v49 == 1)
    {
      v134 = sub_26BE125AC(v118);
      *&v135 = v50;
      v51 = v128;
      sub_26C009C5C();
      v52 = v15;
      if (v48(v14, 1, v15) != 1)
      {
        sub_26BE2E258(v14, &qword_28045E708, &unk_26C011370);
      }
    }

    else
    {
      v51 = v128;
      v52 = v15;
      (*(v16 + 32))(v128, v14, v15);
    }

    a6 = v121;
    v53 = *(v121 + 24);
    v54 = *(v121 + 32);
    LOBYTE(v134) = *v121;
    v135 = *(v121 + 8);
    v136 = v53;
    v137 = v54;

    v55 = v124;
    v56 = v125;
    v57 = v129;
    v58 = v122;
    sub_26BEB17D4(&v134, v51, v129, v125, v38);
    v59 = v58;
    v127 = v52;
    if (v58)
    {
      sub_26BE00258(v57, v56);
      sub_26BE2E258(v123, &qword_28045E708, &unk_26C011370);
      v60 = *(v126 + 8);
      v60(v55, v52);

      v60(v51, v52);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      LODWORD(v124) = 0;
      LODWORD(v125) = 0;
      LODWORD(v126) = 0;
      LODWORD(v128) = 0;
      LODWORD(v129) = 0;
      v122 = v58;
      goto LABEL_12;
    }

    v65 = v138;
    v66 = v138[6];
    v67 = *(v126 + 32);
    v107[1] = v126 + 32;
    v108 = v67;
    v67(a6 + v66, v38, v52);
    v69 = *(a6 + 24);
    v68 = *(a6 + 32);
    LOBYTE(v134) = *a6;
    v135 = *(a6 + 8);
    v136 = v69;
    v137 = v68;

    v122 = v66;
    v70 = v117;
    *&v118 = 0;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v66, 0x64207265646E6573, 0xEB00000000617461, v117);

    v71 = v70;
    a3 = v127;
    v108(a6 + v65[7], v71, v127);
    v73 = *(a6 + 24);
    v72 = *(a6 + 32);
    LOBYTE(v134) = *a6;
    v135 = *(a6 + 8);
    v136 = v73;
    v137 = v72;

    v74 = v116;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v122, 0x6974707972636E65, 0xEA00000000006E6FLL, v116);

    v108(a6 + v65[8], v74, a3);
    v76 = *(a6 + 24);
    v75 = *(a6 + 32);
    LOBYTE(v134) = *a6;
    v135 = *(a6 + 8);
    v136 = v76;
    v137 = v75;

    v77 = v115;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v122, 0x726574726F707865, 0xE800000000000000, v115);
    v78 = v77;
    v38 = v129;

    v108(a6 + v65[9], v78, a3);
    v80 = *(a6 + 24);
    v79 = *(a6 + 32);
    LOBYTE(v134) = *a6;
    v135 = *(a6 + 8);
    v136 = v80;
    v137 = v79;

    v81 = v114;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v122, 0x69746E6568747561, 0xEE006E6F69746163, v114);
    a2 = v65;

    v108(a6 + v65[10], v81, a3);
    v83 = *(a6 + 24);
    v82 = *(a6 + 32);
    LOBYTE(v134) = *a6;
    v135 = *(a6 + 8);
    v136 = v83;
    v137 = v82;

    v84 = v113;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v122, 0x6C616E7265747865, 0xE800000000000000, v113);

    v85 = a2[11];
    v108(&v85[a6], v84, a3);
    v87 = *(a6 + 24);
    v86 = *(a6 + 32);
    LOBYTE(v134) = *a6;
    v135 = *(a6 + 8);
    v136 = v87;
    v137 = v86;

    v88 = v112;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v122, 0x6D7269666E6F63, 0xE700000000000000, v112);
    v14 = v85;

    v108(a6 + a2[12], v88, a3);
    v90 = *(a6 + 24);
    v89 = *(a6 + 32);
    LOBYTE(v134) = *a6;
    v135 = *(a6 + 8);
    v136 = v90;
    v137 = v89;

    v91 = v111;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v122, 0x68737265626D656DLL, 0xEA00000000007069, v111);

    v108(a6 + a2[13], v91, a3);
    v93 = *(a6 + 24);
    v92 = *(a6 + 32);
    LOBYTE(v134) = *a6;
    v135 = *(a6 + 8);
    v136 = v93;
    v137 = v92;

    v15 = v110;
    v6 = 0;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v122, 0x6974706D75736572, 0xEA00000000006E6FLL, v110);
  }

  v108(a6 + a2[14], v15, a3);
  v95 = *(a6 + 24);
  v94 = *(a6 + 32);
  LOBYTE(v134) = *a6;
  v135 = *(a6 + 8);
  v136 = v95;
  v137 = v94;

  v96 = v109;
  MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(a6 + v122, 1953066601, 0xE400000000000000, v109);
  v122 = v6;
  if (v6)
  {
    sub_26BE00258(v38, v125);
    sub_26BE2E258(v123, &qword_28045E708, &unk_26C011370);
    v60 = *(v126 + 8);
    v60(v124, a3);

    v60(v128, a3);
    LODWORD(v129) = 0;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v64 = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    LODWORD(v128) = 1;
    v59 = v118;
    goto LABEL_12;
  }

  v101 = a6;
  v102 = v126;

  v108(v101 + v138[15], v96, a3);
  v104 = *(v101 + 24);
  v103 = *(v101 + 32);
  v130[0] = *v101;
  v131 = *(v101 + 8);
  v132 = v104;
  v133 = v103;

  v105 = v122;
  MLS.Cryptography.Ciphersuite.deriveHPKEPrivateKey(_:)(&v14[v101], &v134);
  v122 = v105;
  if (v105)
  {
    sub_26BE00258(v129, v125);
    sub_26BE2E258(v123, &qword_28045E708, &unk_26C011370);
    v60 = *(v102 + 8);
    v60(v124, a3);

    v60(v128, a3);
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v64 = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    LODWORD(v128) = 1;
    LODWORD(v129) = 1;
    v59 = v118;
    a6 = v121;
LABEL_12:
    v97 = *(a6 + 32);

    v98 = v127;
    v60(v119, v127);
    if (v59)
    {
      if (!v61)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v60((a6 + v138[6]), v98);
      if (!v61)
      {
LABEL_14:
        v99 = v138;
        if (!v62)
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      }
    }

    v60((a6 + v138[7]), v98);
    v99 = v138;
    if (!v62)
    {
LABEL_15:
      if (!v63)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }

LABEL_31:
    v60((a6 + v99[8]), v98);
    if (!v63)
    {
LABEL_16:
      if (!v64)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }

LABEL_32:
    v60((a6 + v99[9]), v98);
    if (!v64)
    {
LABEL_17:
      if (!v124)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_33:
    v60((a6 + v99[10]), v98);
    if (!v124)
    {
LABEL_19:
      if (v125)
      {
        v60((a6 + v99[12]), v98);
        if (!v126)
        {
LABEL_21:
          if (!v128)
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      else if (!v126)
      {
        goto LABEL_21;
      }

      v60((a6 + v99[13]), v98);
      if (!v128)
      {
LABEL_22:
        if (!v129)
        {
          return sub_26BE2E258(v120, &qword_28045E6A8, &qword_26C0112B0);
        }

LABEL_23:
        v60((a6 + v99[15]), v98);
        return sub_26BE2E258(v120, &qword_28045E6A8, &qword_26C0112B0);
      }

LABEL_27:
      v60((a6 + v99[14]), v98);
      if (!v129)
      {
        return sub_26BE2E258(v120, &qword_28045E6A8, &qword_26C0112B0);
      }

      goto LABEL_23;
    }

LABEL_18:
    v60((a6 + v99[11]), v98);
    goto LABEL_19;
  }

  sub_26BE00258(v129, v125);
  sub_26BE2E258(v123, &qword_28045E708, &unk_26C011370);
  v106 = *(v102 + 8);
  v106(v124, a3);

  v106(v128, a3);
  return sub_26BEB628C(&v134, v120);
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:initSecret:commitSecret:pskSecret:context:)@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v29 = a7;
  v30 = a4;
  v33 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = sub_26C009C8C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v17);
  v22 = &v27 - v21;
  v23 = *a1;
  if ((v23 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v35 = v23 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v35, &v34);
    sub_26BEB1F1C(&v34, v31, v32, a3, v22);
    if (v7)
    {
      sub_26BE00258(v31, v32);
      v24 = *(v15 + 8);
      v24(v30, v14);
      v24(a3, v14);
      v24(v33, v14);
    }

    else
    {
      v28 = a3;
      v34 = v23;
      v25 = *(v15 + 16);
      v25(v19, v22, v14);
      v25(v13, v30, v14);
      (*(v15 + 56))(v13, 0, 1, v14);
      MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(&v34, v19, v13, v31, v32, v29);

      v26 = *(v15 + 8);
      v26(v30, v14);
      v26(v28, v14);
      v26(v33, v14);
      return (v26)(v22, v14);
    }
  }

  return result;
}

uint64_t MLS.KeySchedule.init(ciphersuiteID:initSecret:context:)@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v37 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v31 - v11;
  v12 = sub_26C009C8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v31 - v21;
  v23 = *a1;
  if ((v23 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v34 = v20;
    v35 = a5;
    LOBYTE(v38[0]) = v23 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v38, &v39);
    v24 = v40;
    v38[0] = sub_26BE125AC(v40);
    v38[1] = v25;
    sub_26C009C5C();
    sub_26BEB1F1C(&v39, v37, v41, v18, v22);
    if (v5)
    {
      sub_26BE00258(v37, v41);
      v26 = *(v13 + 8);
      v26(a2, v12);
      v26(v18, v12);
    }

    else
    {
      v33 = a2;
      v32 = *(v13 + 8);
      v32(v18, v12);
      LOWORD(v38[0]) = v23;
      v27 = v34;
      (*(v13 + 16))(v34, v22, v12);
      v39 = sub_26BE125AC(v24);
      *&v40 = v28;
      v29 = v36;
      sub_26C009C5C();
      (*(v13 + 56))(v29, 0, 1, v12);
      MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(v38, v27, v29, v37, v41, v35);

      v30 = v32;
      v32(v33, v12);
      return v30(v22, v12);
    }
  }

  return result;
}

uint64_t MLS.KeySchedule.nextRaw(commitSecret:pskSecret:context:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a2;
  v48 = a3;
  v49 = a4;
  v47 = a1;
  v42 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v39 - v8;
  v9 = sub_26C009C8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v40 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  v25 = *v5;
  v26 = *(type metadata accessor for MLS.KeySchedule() + 60);
  v44 = v10;
  v27 = *(v10 + 16);
  v27(v24, &v5[v26], v9);
  v27(v22, v47, v9);
  v47 = v19;
  v27(v19, v45, v9);
  v52 = v25;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v52, &v50);
  v28 = v51;
  v43 = v16;
  v45 = v24;
  v29 = v46;
  sub_26BEB1F1C(&v50, v48, v49, v22, v16);
  if (v29)
  {
    v30 = *(v44 + 8);
    v30(v47, v9);
    v30(v22, v9);
    v30(v45, v9);
  }

  else
  {
    v46 = v28;
    if (v25)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    v50 = v32;
    v33 = v40;
    v27(v40, v43, v9);
    v34 = v41;
    v27(v41, v47, v9);
    v35 = v44;
    (*(v44 + 56))(v34, 0, 1, v9);
    v37 = v48;
    v36 = v49;
    sub_26BE00608(v48, v49);
    MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(&v50, v33, v34, v37, v36, v42);

    v38 = *(v35 + 8);
    v38(v43, v9);
    v38(v47, v9);
    v38(v22, v9);
    return (v38)(v45, v9);
  }
}

uint64_t static MLS.KeySchedule.welcomeSecretRaw(ciphersuiteID:joinerSecret:pskSecret:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a2;
  v35 = sub_26C009EDC();
  v33 = *(v35 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C009EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_26C009C8C();
  v13 = *(*(v41 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v41);
  result = MEMORY[0x28223BE20](v14);
  v19 = v26 - v18;
  v20 = *a1;
  if ((v20 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v31 = v16;
    LOBYTE(v36[0]) = v20 != 1;
    v26[1] = v17;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v36, &v37);
    v30 = v37;
    v29 = v38;
    v21 = v40;
    v28 = v39;
    v22 = v32;
    sub_26C009C3C();
    v32 = v22;
    v27 = a3;
    v24 = v37;
    v23 = v38;
    (*(v9 + 16))(v12, v21 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v8);
    sub_26C009E6C();
    (*(v9 + 8))(v12, v8);
    v36[0] = v24;
    v36[1] = v23;
    sub_26BE016A8();
    sub_26C009ECC();
    (*(v33 + 8))(v7, v35);
    sub_26BE00258(v24, v23);
    sub_26BE82314();
    v25 = v41;
    sub_26C009C5C();
    LOBYTE(v37) = v30;
    v38 = v29;
    v39 = v28;
    v40 = v21;
    MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v19, 0x656D6F636C6577, 0xE700000000000000, v27);
    (*(v31 + 8))(v19, v25);
  }

  return result;
}

uint64_t static MLS.KeySchedule.senderDataKeys(ciphersuiteID:senderDataSecret:ciphertext:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v9 = sub_26C009C8C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v28 - v15;
  v17 = *a1;
  if ((v17 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v30 = v14;
    v31 = v13;
    v29 = a5;
    v32 = result;
    v40 = v17 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v40, v35);
    v18 = v35[0];
    v19 = v36;
    v20 = v37;
    v22 = v38;
    v21 = v39;
    MLS.Cryptography.Ciphersuite.deriveSenderDataKey(secret:ciphertext:)(a2, v33, v34, v16);
    if (v5)
    {
    }

    else
    {
      v35[0] = v18;
      v36 = v19;
      v37 = v20;
      v38 = v22;
      v39 = v21;
      v23 = v30;
      MLS.Cryptography.Ciphersuite.deriveSenderDataNonce(secret:ciphertext:)(a2, v33, v34, v30);

      v24 = v32;
      v25 = *(v31 + 32);
      v26 = v29;
      v25(v29, v16, v32);
      v27 = type metadata accessor for MLS.KeyAndNonce(0);
      return (v25)(v26 + *(v27 + 20), v23, v24);
    }
  }

  return result;
}

uint64_t MLS.KeySchedule.doExport(label:context:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a2;
  v7 = v6;
  v65 = a4;
  v66 = a5;
  v64 = a3;
  v67 = a1;
  v61 = a6;
  v77 = *MEMORY[0x277D85DE8];
  v8 = sub_26C009EDC();
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A4EC();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C009C8C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *v6;
  v21 = *(v6 + 24);
  v22 = *(v6 + 32);
  LOBYTE(v73) = v19;
  v74 = *(v7 + 8);
  v75 = v21;
  v76 = v22;
  v23 = *(type metadata accessor for MLS.KeySchedule() + 36);

  v24 = v7 + v23;
  v25 = v69;
  MLS.Cryptography.Ciphersuite.deriveSecret(_:_:)(v24, v67, v68, v20);

  if (!v25)
  {
    v59 = v8;
    v60 = 0;
    v67 = v11;
    v27 = v20;
    v29 = *(v7 + 24);
    v28 = *(v7 + 32);
    LOBYTE(v73) = *v7;
    v74 = *(v7 + 8);
    v75 = v29;
    v76 = v28;

    v68 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v64, v65);
    v69 = v30;

    v31 = v66;
    if ((v66 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v66 >> 16))
    {
      v32 = *(v7 + 32);

      sub_26C00A4DC();
      v33 = sub_26C00A49C();
      v35 = v34;
      (*(v63 + 8))(v15, v12);
      if (v35 >> 60 == 15)
      {
        sub_26BE01654();
        swift_allocError();
        *v36 = 5;
        v36[112] = 1;
        swift_willThrow();
        sub_26BE00258(v68, v69);
        (*(v17 + 8))(v27, v16);
LABEL_29:

        goto LABEL_30;
      }

      v64 = v32;
      v65 = v33;
      v71 = xmmword_26C00BBD0;
      v72 = 0;
      v70 = bswap32(v31) >> 16;
      v75 = MEMORY[0x277D838B0];
      v76 = MEMORY[0x277CC9C18];
      v73 = &v70;
      *&v74 = &v71;
      v37 = __swift_project_boxed_opaque_existential_1(&v73, MEMORY[0x277D838B0]);
      v39 = *v37;
      v38 = v37[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v40 = v35 >> 62;
      v41 = v16;
      v42 = v17;
      if ((v35 >> 62) > 1)
      {
        v44 = 0;
        v43 = v27;
        v45 = v62;
        if (v40 != 2)
        {
          goto LABEL_16;
        }

        v47 = *(v65 + 16);
        v46 = *(v65 + 24);
        v44 = v46 - v47;
        if (!__OFSUB__(v46, v47))
        {
          goto LABEL_16;
        }

        __break(1u);
      }

      else
      {
        v43 = v27;
        if (!v40)
        {
          v44 = BYTE6(v35);
LABEL_15:
          v45 = v62;
LABEL_16:
          v48 = v60;
          sub_26BF30414(v44);
          if (v48)
          {
            sub_26BE136AC(v65, v35);
            sub_26BE00258(v68, v69);
            (*(v42 + 8))(v43, v16);
            sub_26BE00258(v71, *(&v71 + 1));
            goto LABEL_29;
          }

          sub_26BE11228(v65, v35);
          v49 = v69 >> 62;
          if ((v69 >> 62) > 1)
          {
            if (v49 != 2)
            {
              v50 = 0;
              goto LABEL_27;
            }

            v52 = *(v68 + 16);
            v51 = *(v68 + 24);
            v50 = v51 - v52;
            if (!__OFSUB__(v51, v52))
            {
              goto LABEL_27;
            }

            __break(1u);
          }

          else if (!v49)
          {
            v50 = BYTE6(v69);
LABEL_27:
            sub_26BF30414(v50);
            sub_26BE11228(v68, v69);
            sub_26C009E6C();
            v54 = *(&v71 + 1) >> 62;
            if ((*(&v71 + 1) >> 62) > 1)
            {
              if (v54 != 2 || (*(v71 + 24) & 0x8000000000000000) == 0)
              {
                goto LABEL_39;
              }
            }

            else if (!v54 || ((v71 >> 32) & 0x8000000000000000) == 0)
            {
              goto LABEL_39;
            }

            __break(1u);
LABEL_39:
            v55 = sub_26C00909C();
            v57 = v56;
            v58 = v67;
            sub_26C009EBC();
            sub_26BE00258(v55, v57);
            sub_26BE136AC(v65, v35);
            sub_26BE00258(v68, v69);
            (*(v45 + 8))(v58, v59);
            (*(v42 + 8))(v43, v41);
            sub_26BE00258(v71, *(&v71 + 1));

            goto LABEL_30;
          }

          if (!__OFSUB__(HIDWORD(v68), v68))
          {
            v50 = HIDWORD(v68) - v68;
            goto LABEL_27;
          }

LABEL_43:
          __break(1u);
        }
      }

      if (!__OFSUB__(HIDWORD(v65), v65))
      {
        v44 = HIDWORD(v65) - v65;
        goto LABEL_15;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_30:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.KeySchedule.sendExternalInit(externalPublicKey:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 32))(a1, 0xD000000000000014, 0x800000026C02C280, *(v2 + 8), v4, v5);
}

uint64_t sub_26BEB5224()
{
  result = sub_26C009C3C();
  v2 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v3 = 0;
    if (v2 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v8 + 16);
    v4 = *(v8 + 24);
    v3 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(v9);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v8), v8))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v3 = HIDWORD(v8) - v8;
LABEL_10:
  v6 = sub_26BF30414(v3);
  if (v0)
  {
    return sub_26BE00258(v8, v9);
  }

  v7 = v6;
  sub_26BE11228(v8, v9);
  sub_26BE00258(v8, v9);
  result = v7 + v3;
  if (__OFADD__(v7, v3))
  {
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_26BEB5330(_BYTE *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v3 = 512;
  }

  else
  {
    v3 = 256;
  }

  LOWORD(v43) = v3;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  v48 = MEMORY[0x277D838B0];
  v49 = MEMORY[0x277CC9C18];
  v46 = &v43;
  v47 = &v43 + 2;
  v6 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v9 = type metadata accessor for MLS.KeySchedule();
  v10 = v9[5];
  result = sub_26BEB5224();
  if (v1)
  {
    goto LABEL_16;
  }

  v12 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = v9[6];
  result = sub_26BEB5224();
  v14 = __OFADD__(v12, result);
  v12 += result;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v9[7];
  result = sub_26BEB5224();
  v14 = __OFADD__(v12, result);
  v12 += result;
  if (!v14)
  {
    v16 = v9[8];
    v17 = sub_26BEB5224();
    v14 = __OFADD__(v12, v17);
    v18 = v12 + v17;
    if (v14)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19 = v9[9];
    v20 = sub_26BEB5224();
    v14 = __OFADD__(v18, v20);
    v21 = v18 + v20;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v22 = v9[10];
      v23 = sub_26BEB5224();
      v14 = __OFADD__(v21, v23);
      v24 = v21 + v23;
      if (!v14)
      {
        v25 = v9[11];
        result = sub_26BEB5224();
        v14 = __OFADD__(v24, result);
        v26 = v24 + result;
        if (v14)
        {
          __break(1u);
        }

        else
        {
          v27 = v9[12];
          result = sub_26BEB5224();
          v14 = __OFADD__(v26, result);
          v28 = v26 + result;
          if (!v14)
          {
            v29 = v9[13];
            result = sub_26BEB5224();
            v14 = __OFADD__(v28, result);
            v30 = v28 + result;
            if (!v14)
            {
              v31 = v9[14];
              result = sub_26BEB5224();
              v14 = __OFADD__(v30, result);
              v12 = v30 + result;
              if (!v14)
              {
                v32 = v9[15];
                result = sub_26BEB5224();
                v41 = 0;
                goto LABEL_20;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v14 = __OFADD__(v12, result);
  v18 = v12 + result;
  if (v14)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_26BE2E1F0(&a1[v9[16]], &v43, &qword_28045E6A8, &qword_26C0112B0);
  if (v44)
  {
    sub_26BE2E410(&v43, &v46);
    v42 = 1;
    v44 = v4;
    v45 = v5;
    *&v43 = &v42;
    *(&v43 + 1) = &v43;
    v34 = __swift_project_boxed_opaque_existential_1(&v43, v4);
    v36 = *v34;
    v35 = v34[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v4 = sub_26BE10BE4(&v46);
    result = __swift_destroy_boxed_opaque_existential_1(&v46);
    if (v41)
    {
LABEL_16:
      v33 = *MEMORY[0x277D85DE8];
      return result;
    }

    v37 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  sub_26BE2E258(&v43, &qword_28045E6A8, &qword_26C0112B0);
  LOBYTE(v43) = 0;
  v48 = v4;
  v49 = v5;
  v46 = &v43;
  v47 = &v43 + 1;
  v38 = __swift_project_boxed_opaque_existential_1(&v46, v4);
  v40 = *v38;
  v39 = v38[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v37 = 1;
LABEL_28:
  result = v18 + v37;
  if (!__OFADD__(v18, v37))
  {
    goto LABEL_16;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_26BEB563C@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_26C009C8C();
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v60 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v60 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v67 = &v60 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v68 = &v60 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v69 = &v60 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v70 = &v60 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v60 - v29;
  MEMORY[0x28223BE20](v28);
  v82 = &v60 - v31;
  v32 = sub_26BEE6180();
  if ((v32 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }

  v33 = v32;
  result = sub_26BF2F7B0();
  if (v1)
  {
    return result;
  }

  v65 = v30;
  *&v79 = result;
  *(&v79 + 1) = v35;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v37;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v38;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v39;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v40;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v41;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v42;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v43;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v44;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v45;
  sub_26C009C5C();
  *&v79 = sub_26BF2F7B0();
  *(&v79 + 1) = v46;
  sub_26C009C5C();
  result = sub_26BEE62D4();
  if ((result & 0x100) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v48 = 1;
    goto LABEL_15;
  }

  if (result)
  {
    if (result == 1)
    {
      result = sub_26BE10E8C();
      goto LABEL_12;
    }

    sub_26BE01600();
    swift_allocError();
    v48 = 5;
LABEL_15:
    *v47 = v48;
    swift_willThrow();
    v57 = *(v72 + 8);
    v58 = v7;
    v59 = v71;
    v57(v58, v71);
    v57(v10, v59);
    v57(v13, v59);
    v57(v16, v59);
    v57(v19, v59);
    v57(v67, v59);
    v57(v68, v59);
    v57(v69, v59);
    v57(v70, v59);
    v57(v65, v59);
    return (v57)(v82, v59);
  }

  v81 = 0;
  v79 = 0u;
  v80 = 0u;
LABEL_12:
  if (v33 - 3 < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v73[0]) = v33 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v73, v75);
    v63 = v75[0];
    v62 = v76;
    v61 = v77;
    v60 = v78;
    v64 = type metadata accessor for MLS.KeySchedule();
    v49 = v64[5];
    v50 = v71;
    v72 = *(v72 + 32);
    v51 = v66;
    (v72)(v66 + v49, v82, v71);
    (v72)(v51 + v64[6], v65, v50);
    (v72)(v51 + v64[7], v70, v50);
    (v72)(v51 + v64[8], v69, v50);
    (v72)(v51 + v64[9], v68, v50);
    (v72)(v51 + v64[10], v67, v50);
    (v72)(v51 + v64[11], v19, v50);
    v52 = v64;
    v53 = v16;
    v54 = v72;
    (v72)(v51 + v64[12], v53, v50);
    v54(v51 + v52[13], v13, v50);
    v54(v51 + v52[14], v10, v50);
    v54(v51 + v52[15], v7, v50);
    v73[0] = v79;
    v73[1] = v80;
    v74 = v81;
    v55 = v51 + v52[16];
    *(v55 + 32) = 0;
    *v55 = 0u;
    *(v55 + 16) = 0u;
    *v51 = v63;
    *(v51 + 8) = v62;
    v56 = v60;
    *(v51 + 24) = v61;
    *(v51 + 32) = v56;
    return sub_26BEB628C(v73, v55);
  }

  return result;
}

uint64_t sub_26BEB628C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6A8, &qword_26C0112B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEB6310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C009C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BEB63D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_26C009C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BEB6474()
{
  sub_26C009C8C();
  if (v0 <= 0x3F)
  {
    sub_26BEB6528();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BEB6528()
{
  if (!qword_28045ED38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E6D8, &qword_26C011338);
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045ED38);
    }
  }
}

uint64_t sub_26BEB658C(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Cryptography.MACTag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BEB65E8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v42 = MEMORY[0x277D84F90];
  sub_26BECB974(0, v3, 0);
  v4 = v42;
  v6 = v5 + 56;
  v7 = -1 << *(v5 + 32);
  result = sub_26C00AB4C();
  v9 = result;
  v10 = 0;
  v34 = v5 + 64;
  v35 = v3;
  v36 = v5 + 56;
  v37 = v5;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v38 = v10;
    v40 = *(v5 + 36);
    v13 = (*(v5 + 48) + 16 * v9);
    v41 = v4;
    v14 = *v13;
    v15 = v13[1];
    sub_26BE00608(*v13, v15);
    v39 = v2;
    sub_26BF87240(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    sub_26C00A3EC();

    sub_26C00A5AC();
    v16 = sub_26C00A66C();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = v15;
    v4 = v41;
    result = sub_26BE00258(v14, v23);
    v25 = *(v41 + 16);
    v24 = *(v41 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_26BECB974((v24 > 1), v25 + 1, 1);
      v4 = v41;
    }

    *(v4 + 16) = v25 + 1;
    v26 = (v4 + 32 * v25);
    v26[4] = v16;
    v26[5] = v18;
    v26[6] = v20;
    v26[7] = v22;
    v5 = v37;
    v11 = 1 << *(v37 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v6 = v36;
    v27 = *(v36 + 8 * v12);
    if ((v27 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v40 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v9 & 0x3F));
    if (v28)
    {
      v11 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v12 << 6;
      v30 = v12 + 1;
      v31 = (v34 + 8 * v12);
      while (v30 < (v11 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_26BE2E070(v9, v40, 0);
          v11 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_26BE2E070(v9, v40, 0);
    }

LABEL_4:
    v10 = v38 + 1;
    v9 = v11;
    v2 = v39;
    if (v38 + 1 == v35)
    {
      return v4;
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

uint64_t sub_26BEB6938(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v42 = MEMORY[0x277D84F90];
  sub_26BECB974(0, v3, 0);
  v4 = v42;
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  result = sub_26C00AB4C();
  v9 = result;
  v10 = 0;
  v34 = v5 + 72;
  v35 = v3;
  v36 = v5 + 64;
  v37 = v5;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v38 = v10;
    v40 = *(v5 + 36);
    v13 = (*(v5 + 48) + 16 * v9);
    v41 = v4;
    v14 = *v13;
    v15 = v13[1];
    sub_26BE00608(*v13, v15);
    v39 = v2;
    sub_26BF87240(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
    sub_26C00A3EC();

    sub_26C00A5AC();
    v16 = sub_26C00A66C();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = v15;
    v4 = v41;
    result = sub_26BE00258(v14, v23);
    v25 = *(v41 + 16);
    v24 = *(v41 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_26BECB974((v24 > 1), v25 + 1, 1);
      v4 = v41;
    }

    *(v4 + 16) = v25 + 1;
    v26 = (v4 + 32 * v25);
    v26[4] = v16;
    v26[5] = v18;
    v26[6] = v20;
    v26[7] = v22;
    v5 = v37;
    v11 = 1 << *(v37 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v6 = v36;
    v27 = *(v36 + 8 * v12);
    if ((v27 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v40 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v9 & 0x3F));
    if (v28)
    {
      v11 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v12 << 6;
      v30 = v12 + 1;
      v31 = (v34 + 8 * v12);
      while (v30 < (v11 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_26BE2E070(v9, v40, 0);
          v11 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_26BE2E070(v9, v40, 0);
    }

LABEL_4:
    v10 = v38 + 1;
    v9 = v11;
    v2 = v39;
    if (v38 + 1 == v35)
    {
      return v4;
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

uint64_t sub_26BEB6C88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  if (v3)
  {
    v4 = v1;
    v92 = a1;
    swift_beginAccess();
    sub_26BE295A0(v3 + 40, &v75);

    sub_26BE1118C(v87);
    if (v2)
    {
      sub_26BE29710(&v75);
    }

    else
    {
      sub_26BE29710(&v75);
      sub_26BEB8494(v72, v74);
      v69 = v72[6];
      v70 = v72[7];
      v71 = v73;
      v65 = v72[2];
      v66 = v72[3];
      v68 = v72[5];
      v67 = v72[4];
      v64 = v72[1];
      v63 = v72[0];
      v39 = 0;
      v62 = sub_26BEB8C30();
      v7 = *(v1 + 64);

      sub_26BF9E81C(v8);
      if (*v1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v38 = v9;
      v10 = v88;
      v11 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v12 = *(v11 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v37[1] = v37;
      v14 = *(AssociatedTypeWitness - 8);
      v15 = *(v14 + 64);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v17 = v37 - v16;
      (*(v12 + 32))(v10, v12);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v19 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v21 = v20;
      (*(v14 + 8))(v17, AssociatedTypeWitness);
      *(&v60[5] + 8) = v68;
      *(&v60[6] + 8) = v69;
      *(&v60[7] + 8) = v70;
      *(&v60[1] + 8) = v64;
      *(&v60[2] + 8) = v65;
      *(&v60[3] + 8) = v66;
      *(&v60[4] + 8) = v67;
      LOWORD(v59) = v38;
      *(&v59 + 1) = v19;
      *&v60[0] = v21;
      *(v60 + 8) = v63;
      *(&v60[8] + 1) = v71;
      *v61 = v62;
      *&v61[8] = xmmword_26C00BBD0;
      v22 = v39;
      sub_26BEC3978((v4 + 8));
      if (v22)
      {

        v83 = v60[7];
        v84 = v60[8];
        v85 = *v61;
        v86 = *&v61[16];
        v79 = v60[3];
        v80 = v60[4];
        v81 = v60[5];
        v82 = v60[6];
        v75 = v59;
        v76 = v60[0];
        v77 = v60[1];
        v78 = v60[2];
        sub_26BE2E01C(&v75);
        __swift_destroy_boxed_opaque_existential_1(v74);
      }

      else
      {
        v83 = v60[7];
        v84 = v60[8];
        v85 = *v61;
        v79 = v60[3];
        v80 = v60[4];
        v81 = v60[5];
        v82 = v60[6];
        v75 = v59;
        v76 = v60[0];
        v77 = v60[1];
        v78 = v60[2];
        v55 = v60[7];
        v56 = v60[8];
        v57 = *v61;
        v51 = v60[3];
        v52 = v60[4];
        v53 = v60[5];
        v54 = v60[6];
        v47 = v59;
        v48 = v60[0];
        v86 = *&v61[16];
        v58 = *&v61[16];
        v49 = v60[1];
        v50 = v60[2];
        sub_26BE2DFC0(&v75, v45);
        v23 = MLS.KeyPackage.refHash.getter();
        v25 = v24;
        sub_26BE2E01C(&v75);
        v90[8] = v60[7];
        v90[9] = v60[8];
        v90[10] = *v61;
        v91 = *&v61[16];
        v90[4] = v60[3];
        v90[5] = v60[4];
        v90[6] = v60[5];
        v90[7] = v60[6];
        v90[0] = v59;
        v90[1] = v60[0];
        v90[2] = v60[1];
        v90[3] = v60[2];
        sub_26BE2DFC0(v90, v43);
        v26 = *(v4 + 80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v43[0] = *(v4 + 80);
        sub_26BE56D08(v90, v23, v25, isUniquelyReferenced_nonNull_native);
        sub_26BE00258(v23, v25);
        *(v4 + 80) = *&v43[0];
        sub_26BE038A8(v87, v41);
        sub_26BE038A8(v74, &v42);
        v45[8] = v60[7];
        v45[9] = v60[8];
        v45[10] = *v61;
        v45[4] = v60[3];
        v45[5] = v60[4];
        v45[6] = v60[5];
        v45[7] = v60[6];
        v45[0] = v59;
        v45[1] = v60[0];
        v45[2] = v60[1];
        v45[3] = v60[2];
        v43[8] = v60[7];
        v43[9] = v60[8];
        v43[10] = *v61;
        v43[4] = v60[3];
        v43[5] = v60[4];
        v43[6] = v60[5];
        v43[7] = v60[6];
        v43[0] = v59;
        v43[1] = v60[0];
        v46 = *&v61[16];
        v44 = *&v61[16];
        v43[2] = v60[1];
        v43[3] = v60[2];
        sub_26BE2DFC0(v45, v40);
        v28 = MLS.KeyPackage.refHash.getter();
        v30 = v29;
        sub_26BE2E01C(v45);
        sub_26BE2E07C(v41, v40);
        sub_26BE4CFD8(v40, v28, v30);

        sub_26BE2E0D8(v41);
        __swift_destroy_boxed_opaque_existential_1(v74);
        v31 = v60[8];
        v32 = v92;
        *(v92 + 128) = v60[7];
        *(v32 + 144) = v31;
        *(v32 + 160) = *v61;
        *(v32 + 176) = *&v61[16];
        v33 = v60[4];
        *(v32 + 64) = v60[3];
        *(v32 + 80) = v33;
        v34 = v60[6];
        *(v32 + 96) = v60[5];
        *(v32 + 112) = v34;
        v35 = v60[0];
        *v32 = v59;
        *(v32 + 16) = v35;
        v36 = v60[2];
        *(v32 + 32) = v60[1];
        *(v32 + 48) = v36;
      }

      return __swift_destroy_boxed_opaque_existential_1(v87);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v6 = 36;
    v6[112] = 0;
    return swift_willThrow();
  }
}

uint64_t MLS.ClientState.joinGroup(welcome:ratchetTree:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v6 = *a2;
  v114 = *a1;
  result = MLS.Group.Message.asWelcome()(v126);
  if (v4)
  {
    return result;
  }

  v101 = a3;
  v134 = 0;
  v8 = *v126;
  v10 = *&v126[24];
  v9 = *&v126[16];
  v103 = *&v126[8];
  v11 = sub_26BF2B7B8();
  v12 = *(v3 + 80);

  v14 = sub_26BEBCB50(v13, v11);

  v104 = v9;
  v102 = v3;
  if (*(v14 + 2) != 1 || (sub_26BEB8194(v14, v126), v15 = *&v126[8], *&v126[8] >> 60 == 15))
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v16 = sub_26C009A5C();
    __swift_project_value_buffer(v16, qword_280478E70);

    v17 = sub_26C009A3C();
    v18 = sub_26C00AA0C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = *(v14 + 2);

      *(v19 + 4) = v20;

      _os_log_impl(&dword_26BDFE000, v17, v18, "Join failed, found %ld matching key package references", v19, 0xCu);
      MEMORY[0x26D69A4E0](v19, -1, -1);
    }

    else
    {
    }

    v21 = sub_26C009A3C();
    v22 = sub_26C00AA0C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v126 = v24;
      *v23 = 136315138;
      v25 = v134;
      v26 = sub_26BEB65E8(v11);
      v134 = v25;

      v27 = MEMORY[0x26D6991B0](v26, MEMORY[0x277D83E40]);
      v28 = v10;
      v30 = v29;

      v31 = sub_26BE29740(v27, v30, v126);
      v10 = v28;

      *(v23 + 4) = v31;
      _os_log_impl(&dword_26BDFE000, v21, v22, "Welcome had: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26D69A4E0](v24, -1, -1);
      MEMORY[0x26D69A4E0](v23, -1, -1);
    }

    else
    {
    }

    sub_26BE2B9C8(v3, v126);
    v32 = sub_26C009A3C();
    v33 = sub_26C00AA0C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v114 = v35;
      *v34 = 136315138;

      v37 = sub_26BEB6938(v36);

      v38 = MEMORY[0x26D6991B0](v37, MEMORY[0x277D83E40]);
      v40 = v39;

      sub_26BE2BA24(v126);
      v41 = sub_26BE29740(v38, v40, &v114);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_26BDFE000, v32, v33, "Client had: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D69A4E0](v35, -1, -1);
      MEMORY[0x26D69A4E0](v34, -1, -1);
    }

    else
    {

      sub_26BE2BA24(v126);
    }

    memset(&v126[8], 0, 104);
    *v126 = 13;
    LOBYTE(v127) = 23;
    v42 = sub_26C00A45C();
    sub_26BE2DC18(v126, &v114);
    v43 = swift_allocObject();
    v44 = v119;
    *(v43 + 88) = v118;
    *(v43 + 104) = v44;
    *(v43 + 120) = v120;
    v45 = v115;
    *(v43 + 24) = v114;
    *(v43 + 40) = v45;
    v46 = v117;
    *(v43 + 56) = v116;
    *(v43 + 16) = 1;
    *(v43 + 136) = v121;
    *(v43 + 72) = v46;
    v107 = sub_26BE2DC78;
    v108 = v43;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_26BEB8234;
    *(&v106 + 1) = &block_descriptor_3;
    v47 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v47);

    sub_26BE2DC9C(v126);
    sub_26BE01654();
    swift_allocError();
    *v48 = 13;
    *(v48 + 8) = 0u;
    *(v48 + 24) = 0u;
    *(v48 + 40) = 0u;
    *(v48 + 56) = 0u;
    *(v48 + 72) = 0u;
    *(v48 + 88) = 0u;
    *(v48 + 104) = 0;
    *(v48 + 112) = 23;
    swift_willThrow();

    v49 = v104;
    v50 = v10;
    return sub_26BE00258(v49, v50);
  }

  v51 = v10;
  v52 = *v126;

  *v126 = v8;
  *&v126[8] = v103;
  *&v126[16] = __PAIR128__(v51, v104);
  v53 = v134;
  sub_26BF2B8A0(v52, v15);
  if (v53)
  {
    sub_26BE136AC(v52, v15);

    v49 = v104;
LABEL_24:
    v50 = v51;
    return sub_26BE00258(v49, v50);
  }

  v134 = v52;
  if (v54)
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v55 = sub_26C009A5C();
    __swift_project_value_buffer(v55, qword_280478E70);
    v56 = sub_26C009A3C();
    v57 = sub_26C00AA0C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_26BDFE000, v56, v57, "Join failed, could not find matching key package in Welcome", v58, 2u);
      MEMORY[0x26D69A4E0](v58, -1, -1);
    }

    memset(&v126[8], 0, 104);
    *v126 = 13;
    LOBYTE(v127) = 23;
    v59 = sub_26C00A45C();
    sub_26BE2DC18(v126, &v114);
    v60 = swift_allocObject();
    v61 = v119;
    *(v60 + 88) = v118;
    *(v60 + 104) = v61;
    *(v60 + 120) = v120;
    v62 = v115;
    *(v60 + 24) = v114;
    *(v60 + 40) = v62;
    v63 = v117;
    *(v60 + 56) = v116;
    *(v60 + 16) = 1;
    *(v60 + 136) = v121;
    *(v60 + 72) = v63;
    v107 = sub_26BE2E3DC;
    v108 = v60;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_26BEB8234;
    *(&v106 + 1) = &block_descriptor_7;
    v64 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v64);

    sub_26BE2DC9C(v126);
    sub_26BE01654();
    swift_allocError();
    *v65 = 13;
    *(v65 + 8) = 0u;
    *(v65 + 24) = 0u;
    *(v65 + 40) = 0u;
    *(v65 + 56) = 0u;
    *(v65 + 72) = 0u;
    *(v65 + 88) = 0u;
    *(v65 + 104) = 0;
    *(v65 + 112) = 23;
    swift_willThrow();
    sub_26BE136AC(v134, v15);

    v49 = v104;
    goto LABEL_24;
  }

  v66 = *(v3 + 88);
  if (!*(v66 + 16) || (v67 = sub_26BEBB690(v134, v15), (v68 & 1) == 0))
  {
LABEL_37:
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v82 = sub_26C009A5C();
    __swift_project_value_buffer(v82, qword_280478E70);
    v83 = sub_26C009A3C();
    v84 = sub_26C00AA0C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_26BDFE000, v83, v84, "Join failed, missing secrets for intended key package", v85, 2u);
      MEMORY[0x26D69A4E0](v85, -1, -1);
    }

    memset(&v126[8], 0, 104);
    *v126 = 32;
    LOBYTE(v127) = 23;
    v86 = sub_26C00A45C();
    sub_26BE2DC18(v126, &v114);
    v87 = swift_allocObject();
    v88 = v119;
    *(v87 + 88) = v118;
    *(v87 + 104) = v88;
    *(v87 + 120) = v120;
    v89 = v115;
    *(v87 + 24) = v114;
    *(v87 + 40) = v89;
    v90 = v117;
    *(v87 + 56) = v116;
    *(v87 + 16) = 1;
    *(v87 + 136) = v121;
    *(v87 + 72) = v90;
    v107 = sub_26BE2E3DC;
    v108 = v87;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_26BEB8234;
    *(&v106 + 1) = &block_descriptor_14;
    v91 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v91);

    sub_26BE2DC9C(v126);
    sub_26BE01654();
    swift_allocError();
    *v92 = 32;
    *(v92 + 8) = 0u;
    *(v92 + 24) = 0u;
    *(v92 + 40) = 0u;
    *(v92 + 56) = 0u;
    *(v92 + 72) = 0u;
    *(v92 + 88) = 0u;
    *(v92 + 104) = 0;
    *(v92 + 112) = 23;
    swift_willThrow();
    sub_26BE136AC(v134, v15);

    v49 = v104;
    v50 = v51;
    return sub_26BE00258(v49, v50);
  }

  sub_26BE2E07C(*(v66 + 56) + 80 * v67, v132);
  if (!*(v12 + 16) || (v69 = sub_26BEBB690(v134, v15), (v70 & 1) == 0))
  {
    sub_26BE2E0D8(v132);
    goto LABEL_37;
  }

  v71 = *(v12 + 56) + 184 * v69;
  v73 = *(v71 + 32);
  v72 = *(v71 + 48);
  v74 = *(v71 + 16);
  *v126 = *v71;
  *&v126[16] = v74;
  *&v126[32] = v73;
  *&v126[48] = v72;
  v75 = *(v71 + 64);
  v76 = *(v71 + 80);
  v77 = *(v71 + 112);
  *&v126[96] = *(v71 + 96);
  v127 = v77;
  *&v126[64] = v75;
  *&v126[80] = v76;
  v78 = *(v71 + 128);
  v79 = *(v71 + 144);
  v80 = *(v71 + 160);
  v131 = *(v71 + 176);
  v129 = v79;
  v130 = v80;
  v128 = v78;
  if (v6)
  {
    if (*v102)
    {
      v81 = 2;
    }

    else
    {
      v81 = 1;
    }

    LOWORD(v111[0]) = v81;
    v112[0] = v6;
    sub_26BE2DFC0(v126, &v114);

    MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(v111, v112, &aBlock);
    v99 = v106;
    v100 = aBlock;
  }

  else
  {
    sub_26BE2DFC0(v126, &v114);
    v99 = 0u;
    v100 = 0u;
  }

  v93 = v134;
  LOWORD(v113[0]) = v8;
  v113[1] = v103;
  v113[2] = v104;
  v113[3] = v51;
  sub_26BE038A8(v132, v112);
  sub_26BE038A8(&v133, v111);
  sub_26BE038A8(v102 + 8, v110);
  v122 = v128;
  v123 = v129;
  v124 = v130;
  v125 = v131;
  v118 = *&v126[64];
  v119 = *&v126[80];
  v120 = *&v126[96];
  v121 = v127;
  v114 = *v126;
  v115 = *&v126[16];
  v116 = *&v126[32];
  v117 = *&v126[48];
  v109[0] = v100;
  v109[1] = v99;
  sub_26BE2DFC0(v126, &aBlock);

  sub_26BE00608(v104, v51);
  v94 = MEMORY[0x277D84F90];
  v95 = sub_26C001A78(MEMORY[0x277D84F90]);
  v96 = sub_26C00528C(v94);
  v97 = *(v102 + 104);

  sub_26BFEB860(v113, v112, v111, v110, &v114, v109, v95, v96, v101, v98);
  sub_26BE2E0D8(v132);
  sub_26BE136AC(v93, v15);

  sub_26BE00258(v104, v51);
  return sub_26BE2E01C(v126);
}

uint64_t sub_26BEB80FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_26C00AB4C();
  v6 = result;
  v7 = 1 << *(a1 + 32);
  if (result == v7)
  {
    v8 = 0;
  }

  else
  {
    result = sub_26BEBE4D0(result, *(a1 + 36), a1, &v9);
    v8 = v9;
  }

  *a2 = v8;
  *(a2 + 2) = v6 == v7;
  return result;
}

uint64_t sub_26BEB8194@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_26C00AB4C();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  else
  {
    sub_26BEBE524(result, *(a1 + 36), a1, &v8);
    v7 = *(&v8 + 1);
    v6 = v8;
    sub_26BE00608(v8, *(&v8 + 1));
    result = sub_26BE00258(v6, v7);
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

id sub_26BEB8234(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_26BEBE750();
    v5 = sub_26C00A37C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t MLS.ClientState.signaturePrivateKey.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_26BE03890(a1, v1 + 8);
}

uint64_t MLS.ClientState.credential.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_26BE04890(v2, v3);
}

uint64_t MLS.ClientState.credential.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE0489C(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t MLS.ClientState.keyPackageExtensions.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t MLS.ClientState.leafNodeExtensions.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_26BEB8494(void *a1, uint64_t a2)
{
  v4 = v2[13];
  if (v4)
  {
    v5 = v2;
    swift_beginAccess();
    sub_26BE295A0((v4 + 5), &v86);

    sub_26BE1118C(v93);
    if (v3)
    {
      sub_26BE29710(&v86);
    }

    else
    {
      v58 = a1;
      v59 = a2;
      sub_26BE29710(&v86);
      v10 = v4[42];
      v96 = v4[43];
      v11 = v4[44];
      v68 = v4[45];
      v69 = v11;
      v67 = v4[46];
      v62 = 0;
      v13 = v94;
      v12 = v95;
      v65 = __swift_project_boxed_opaque_existential_1(v93, v94);
      v14 = *(v12 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v64 = &v52;
      v16 = *(AssociatedTypeWitness - 8);
      v17 = *(v16 + 64);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v19 = &v52 - v18;
      v60 = v5;
      v20 = *(v14 + 32);
      v66 = v10;

      v20(v13, v14);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v65 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v61 = v22;
      (*(v16 + 8))(v19, AssociatedTypeWitness);
      v23 = v60;
      v24 = v60[4];
      v25 = v60[5];
      __swift_project_boxed_opaque_existential_1(v60 + 1, v24);
      v26 = swift_getAssociatedTypeWitness();
      v63 = &v52;
      v27 = *(v26 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x28223BE20](v26);
      v30 = &v52 - v29;
      (*(v25 + 40))(v24, v25);
      v31 = swift_getAssociatedConformanceWitness();
      v32 = (*(*(v31 + 8) + 16))(v26);
      v34 = v33;
      (*(v27 + 8))(v30, v26);
      v83 = *(v23 + 3);
      v35 = v62;
      v36 = MLS.Identity.Credential.serializedRepresentation.getter();
      if (v35)
      {
        sub_26BE00258(v32, v34);
        sub_26BE00258(v65, v61);
      }

      else
      {
        v38 = v61;
        v39 = v23;
        MLS.Credential.init(rawValue:)(v36, v37, &v84);
        v40 = v23[9];
        *&v86 = v65;
        *(&v86 + 1) = v38;
        *&v87 = v32;
        *(&v87 + 1) = v34;
        v56 = *(&v84 + 1);
        v57 = v84;
        v88 = v84;
        *&v89 = v66;
        *(&v89 + 1) = v96;
        *&v90 = v69;
        *(&v90 + 1) = v68;
        *&v91[0] = v67;
        v55 = xmmword_26C015F70;
        *(v91 + 8) = xmmword_26C015F70;
        BYTE8(v91[1]) = 0;
        HIDWORD(v91[1]) = *(v85 + 3);
        *(&v91[1] + 9) = v85[0];
        *&v92[0] = v40;
        v54 = xmmword_26C00BBD0;
        *(v92 + 8) = xmmword_26C00BBD0;
        v80 = v91[1];
        v81 = v92[0];
        v82 = 0xC000000000000000;
        v76 = v84;
        v77 = v89;
        v78 = v90;
        v79 = v91[0];
        v74 = v86;
        v75 = v87;
        v72 = xmmword_26C00DA60;
        v73 = 0;
        v62 = v40;

        sub_26BE00758(&v86, v70);
        v53 = sub_26BE5B600(&v72);
        v70[6] = v80;
        v70[7] = v81;
        v71 = v82;
        v70[2] = v76;
        v70[3] = v77;
        v70[4] = v78;
        v70[5] = v79;
        v70[0] = v74;
        v70[1] = v75;
        v42 = v41;
        sub_26BE00854(v70);
        v43 = v39[4];
        v52 = v39[5];
        __swift_project_boxed_opaque_existential_1(v39 + 1, v43);
        v44 = v53;
        v60 = v42;
        v45 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v53, v42, v43, v52);
        v47 = v46;

        sub_26BE00258(v44, v60);
        sub_26BE00258(0, 0xC000000000000000);
        v48 = v58;
        *v58 = v65;
        v48[1] = v38;
        v48[2] = v32;
        v48[3] = v34;
        v49 = v56;
        v48[4] = v57;
        v48[5] = v49;
        v50 = v96;
        v48[6] = v66;
        v48[7] = v50;
        v51 = v68;
        v48[8] = v69;
        v48[9] = v51;
        v48[10] = v67;
        *(v48 + 11) = v55;
        *(v48 + 104) = 0;
        *(v48 + 105) = v85[0];
        *(v48 + 27) = *(v85 + 3);
        v48[14] = v62;
        v48[15] = v45;
        v48[16] = v47;
        sub_26BE038A8(v93, v59);
      }

      return __swift_destroy_boxed_opaque_existential_1(v93);
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v9 = 36;
    v9[112] = 0;
    return swift_willThrow();
  }
}

char *sub_26BEB8C30()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v2 = *(v1 + 280) == 0xD00000000000001ALL && 0x800000026C02AD20 == *(v1 + 288);
  if (!v2 && (sub_26C00AF2C() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = qword_28045DF40;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_26C009A5C();
  __swift_project_value_buffer(v4, qword_280478E70);

  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;

    v9 = sub_26BE16A38();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26BDFE000, v5, v6, "%s: Adding last-resort key package extension", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v13 = sub_26BEEBD8C(0, 1, 1, MEMORY[0x277D84F90]);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_26BEEBD8C((v14 > 1), v15 + 1, 1, v13);
  }

  v16 = v13;

  result = v16;
  *(v16 + 2) = v15 + 1;
  v18 = &v16[24 * v15];
  *(v18 + 16) = 10;
  *(v18 + 40) = xmmword_26C00BBD0;
  return result;
}

uint64_t sub_26BEB8E9C(uint64_t a1)
{
  v2 = v1;
  v172 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v4 = 512;
  }

  else
  {
    v4 = 256;
  }

  LOWORD(v144) = v4;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  *(&v161 + 1) = MEMORY[0x277D838B0];
  *&v162 = MEMORY[0x277CC9C18];
  *&v160 = &v144;
  *(&v160 + 1) = &v144 + 2;
  v7 = __swift_project_boxed_opaque_existential_1(&v160, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v160);
  result = sub_26BE136C4((a1 + 8));
  if (v1)
  {
    goto LABEL_7;
  }

  v11 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v144 = *(a1 + 48);
  v12 = MLS.Identity.Credential.serializedRepresentation.getter();
  MLS.Credential.init(rawValue:)(v12, v13, &v160);
  v144 = v160;
  v15 = sub_26BE03BF4(&v144);
  sub_26BE0489C(v144, *(&v144 + 1));
  v16 = __OFADD__(v11, v15);
  v17 = v11 + v15;
  if (v16)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v18 = *(a1 + 64);
  v142 = xmmword_26C00BBD0;
  v160 = xmmword_26C00BBD0;
  *&v161 = 0;
  v19 = sub_26BEEAC24(0, v18);
  v20 = sub_26BF30414(v19);
  sub_26BF2A30C(&v160);
  sub_26BE00258(v160, *(&v160 + 1));
  v21 = v20 + v19;
  if (__OFADD__(v20, v19))
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  v16 = __OFADD__(v17, v21);
  v22 = v17 + v21;
  v23 = 0;
  if (v16)
  {
    goto LABEL_96;
  }

  v24 = *(a1 + 72);
  v160 = xmmword_26C00BBD0;
  *&v161 = 0;
  v25 = sub_26BEEAC24(0, v24);
  v138 = 0;
  v26 = sub_26BF30414(v25);
  sub_26BF2A30C(&v160);
  sub_26BE00258(v160, *(&v160 + 1));
  v27 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
    goto LABEL_107;
  }

  v118 = v22 + v27;
  if (__OFADD__(v22, v27))
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v2 = *(a1 + 80);
  *&v144 = bswap64(*(v2 + 16));
  *(&v161 + 1) = v5;
  *&v162 = v6;
  *&v160 = &v144;
  *(&v160 + 1) = &v144 + 8;
  v28 = __swift_project_boxed_opaque_existential_1(&v160, v5);
  v30 = *v28;
  v29 = v28[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v31 = *(v2 + 16);
  v124 = v2;
  if (!v31)
  {
LABEL_17:
    v32 = MEMORY[0x277D84F90];
    v23 = v138;
    goto LABEL_18;
  }

  v32 = sub_26BE328AC(v31, 0);
  v33 = sub_26BE34104(&v160, v32 + 4, v31, v2);
  v23 = v160;
  v135 = v33;

  sub_26BE2DA4C();
  if (v135 != v31)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v23 = 0;
LABEL_18:
  *&v160 = v32;
  sub_26BE294CC(&v160);
  if (v23)
  {
LABEL_115:

    __break(1u);
    return result;
  }

  v34 = v160;
  v35 = *(v160 + 16);
  if (!v35)
  {
LABEL_45:

    v37 = 8;
    goto LABEL_47;
  }

  v36 = 0;
  v120 = v35 - 1;
  v122 = v160;
  v37 = 8;
  while (1)
  {
    v132 = v37;
    if (!*(v2 + 16))
    {
      goto LABEL_93;
    }

    v130 = v36;
    v38 = v34 + 16 * v36;
    v39 = *(v38 + 32);
    v136 = *(v38 + 32);
    v40 = *(v38 + 40);
    sub_26BE00608(v39, v40);
    v41 = sub_26BEBB690(v39, v40);
    if ((v42 & 1) == 0)
    {
      goto LABEL_94;
    }

    v43 = *(v2 + 56) + 184 * v41;
    v45 = *(v43 + 32);
    v44 = *(v43 + 48);
    v46 = *(v43 + 16);
    v160 = *v43;
    v161 = v46;
    v162 = v45;
    v163 = v44;
    v47 = *(v43 + 64);
    v48 = *(v43 + 80);
    v49 = *(v43 + 112);
    v166 = *(v43 + 96);
    v167 = v49;
    v164 = v47;
    v165 = v48;
    v50 = *(v43 + 128);
    v51 = *(v43 + 144);
    v52 = *(v43 + 160);
    v171 = *(v43 + 176);
    v169 = v51;
    v170 = v52;
    v168 = v50;
    v53 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      v54 = v39;
      if (v53 != 2)
      {
        v55 = 0;
LABEL_38:
        v128 = v55;
        LOBYTE(v143) = v55;
        v158 = v5;
        v159 = v6;
        v156 = &v143;
        v157 = (&v143 + 1);
        v62 = __swift_project_boxed_opaque_existential_1(&v156, v5);
        v63 = *v62;
        v64 = v62[1];
        sub_26BE2DFC0(&v160, &v144);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v156);
        v61 = 1;
        goto LABEL_40;
      }

      v57 = *(v39 + 16);
      v56 = *(v39 + 24);
      v16 = __OFSUB__(v56, v57);
      v55 = v56 - v57;
      if (v16)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v54 = v39;
      if (!v53)
      {
        v55 = BYTE6(v40);
        goto LABEL_33;
      }

      if (__OFSUB__(HIDWORD(v39), v39))
      {
        goto LABEL_106;
      }

      v55 = HIDWORD(v39) - v39;
    }

    if ((v55 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_33:
    if (v55 <= 0x3F)
    {
      goto LABEL_38;
    }

    v128 = v55;
    if (v55 >> 14)
    {
      if (v55 >> 30)
      {
        goto LABEL_84;
      }

      v143 = bswap32(v55 | 0x80000000);
      v158 = v5;
      v159 = v6;
      v156 = &v143;
      v157 = &v144;
      v58 = __swift_project_boxed_opaque_existential_1(&v156, v5);
      v59 = *v58;
      v60 = v58[1];
      sub_26BE2DFC0(&v160, &v144);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v156);
      v61 = 4;
    }

    else
    {
      LOWORD(v143) = bswap32(v55 | 0x4000) >> 16;
      v158 = v5;
      v159 = v6;
      v156 = &v143;
      v157 = (&v143 + 2);
      v65 = __swift_project_boxed_opaque_existential_1(&v156, v5);
      v66 = *v65;
      v67 = v65[1];
      sub_26BE2DFC0(&v160, &v144);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v156);
      v61 = 2;
    }

LABEL_40:
    v126 = v61;
    *(&v145 + 1) = MEMORY[0x277CC9318];
    *&v146 = MEMORY[0x277CC9300];
    v144 = v136;
    v68 = __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277CC9318]);
    v69 = *v68;
    v70 = v68[1];
    sub_26BE00608(v54, v40);
    sub_26BE121A0(v69, v70);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    v152 = v168;
    v153 = v169;
    v154 = v170;
    v155 = v171;
    v148 = v164;
    v149 = v165;
    v150 = v166;
    v151 = v167;
    v144 = v160;
    v145 = v161;
    v146 = v162;
    v147 = v163;
    v71 = sub_26BE00A98(&v144);
    sub_26BE00258(v54, v40);
    sub_26BE2E01C(&v160);
    v72 = v128 + v126 + v71;
    if (__OFADD__(v128 + v126, v71))
    {
      goto LABEL_97;
    }

    v37 = v132 + v72;
    v34 = v122;
    v2 = v124;
    if (__OFADD__(v132, v72))
    {
      goto LABEL_98;
    }

    if (v120 == v130)
    {
      break;
    }

    v36 = v130 + 1;
    if ((v130 + 1) >= *(v122 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }
  }

LABEL_47:
  if (__OFADD__(v118, v37))
  {
    goto LABEL_112;
  }

  v119 = v118 + v37;
  v73 = *(a1 + 88);
  *&v144 = bswap64(*(v73 + 16));
  *(&v161 + 1) = v5;
  *&v162 = v6;
  *&v160 = &v144;
  *(&v160 + 1) = &v144 + 8;
  v74 = __swift_project_boxed_opaque_existential_1(&v160, v5);
  v76 = *v74;
  v75 = v74[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v77 = *(v73 + 16);
  v125 = v73;
  if (!v77)
  {
    goto LABEL_51;
  }

  v78 = sub_26BE328AC(v77, 0);
  v139 = sub_26BE34104(&v160, v78 + 4, v77, v73);

  sub_26BE2DA4C();
  if (v139 != v77)
  {
    __break(1u);
LABEL_51:
    v78 = MEMORY[0x277D84F90];
  }

  *&v160 = v78;
  v23 = 0;
  sub_26BE294CC(&v160);
  v79 = v160;
  v121 = *(v160 + 16);
  if (v121)
  {
    v80 = 0;
    v81 = 8;
    v123 = v160;
    while (1)
    {
      if (v80 >= *(v79 + 16))
      {
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
        goto LABEL_108;
      }

      v133 = v81;
      if (!*(v125 + 16))
      {
        goto LABEL_100;
      }

      v131 = v80;
      v82 = v79 + 16 * v80;
      v83 = *(v82 + 32);
      v137 = *(v82 + 32);
      v84 = *(v82 + 40);
      sub_26BE00608(v83, v84);
      v140 = v83;
      v85 = sub_26BEBB690(v83, v84);
      if ((v86 & 1) == 0)
      {
        goto LABEL_101;
      }

      sub_26BE2E07C(*(v125 + 56) + 80 * v85, &v160);
      v87 = v84 >> 62;
      if ((v84 >> 62) > 1)
      {
        if (v87 != 2)
        {
          v88 = 0;
LABEL_72:
          v129 = v88;
          LOBYTE(v156) = v88;
          *(&v145 + 1) = v5;
          *&v146 = v6;
          *&v144 = &v156;
          *(&v144 + 1) = &v156 + 1;
          v95 = __swift_project_boxed_opaque_existential_1(&v144, v5);
          v97 = *v95;
          v96 = v95[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v144);
          v94 = 1;
          goto LABEL_74;
        }

        v90 = *(v83 + 16);
        v89 = *(v83 + 24);
        v16 = __OFSUB__(v89, v90);
        v88 = v89 - v90;
        if (v16)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (!v87)
        {
          v88 = BYTE6(v84);
          goto LABEL_67;
        }

        if (__OFSUB__(HIDWORD(v83), v83))
        {
          goto LABEL_109;
        }

        v88 = HIDWORD(v83) - v83;
      }

      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

LABEL_67:
      if (v88 <= 0x3F)
      {
        goto LABEL_72;
      }

      v129 = v88;
      if (v88 >> 14)
      {
        if (v88 >> 30)
        {
LABEL_87:
          sub_26BE01600();
          swift_allocError();
          *v115 = 3;
          swift_willThrow();

          sub_26BE00258(v83, v84);
          result = sub_26BE2E0D8(&v160);
          goto LABEL_7;
        }

        LODWORD(v156) = bswap32(v88 | 0x80000000);
        *(&v145 + 1) = v5;
        *&v146 = v6;
        *&v144 = &v156;
        *(&v144 + 1) = &v156 + 4;
        v91 = __swift_project_boxed_opaque_existential_1(&v144, v5);
        v93 = *v91;
        v92 = v91[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v144);
        v94 = 4;
      }

      else
      {
        LOWORD(v156) = bswap32(v88 | 0x4000) >> 16;
        *(&v145 + 1) = v5;
        *&v146 = v6;
        *&v144 = &v156;
        *(&v144 + 1) = &v156 + 2;
        v98 = __swift_project_boxed_opaque_existential_1(&v144, v5);
        v100 = *v98;
        v99 = v98[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v144);
        v94 = 2;
      }

LABEL_74:
      v127 = v94;
      *(&v145 + 1) = MEMORY[0x277CC9318];
      *&v146 = MEMORY[0x277CC9300];
      v144 = v137;
      v101 = __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x277CC9318]);
      v102 = *v101;
      v103 = v101[1];
      sub_26BE00608(v140, v84);
      v23 = 0;
      sub_26BE121A0(v102, v103);
      __swift_destroy_boxed_opaque_existential_1(&v144);
      v104 = sub_26BE10BE4(&v160);
      v105 = sub_26BE10BE4(&v162 + 1);
      sub_26BE00258(v140, v84);
      v106 = v104 + v105;
      if (__OFADD__(v104, v105))
      {
        goto LABEL_102;
      }

      v107 = v129 + v127 + v106;
      if (__OFADD__(v129 + v127, v106))
      {
        goto LABEL_103;
      }

      sub_26BE2E0D8(&v160);
      v81 = v133 + v107;
      if (__OFADD__(v133, v107))
      {
        goto LABEL_104;
      }

      v80 = v131 + 1;
      v79 = v123;
      if (v121 == v131 + 1)
      {

        goto LABEL_80;
      }
    }
  }

  v81 = 8;
LABEL_80:
  if (__OFADD__(v119, v81))
  {
    goto LABEL_113;
  }

  v134 = v119 + v81;
  v108 = *(a1 + 96);
  v109 = *(v108 + 16);
  if (!v109)
  {
    v110 = MEMORY[0x277D84F90];
    goto LABEL_86;
  }

  v110 = sub_26BE328AC(*(v108 + 16), 0);
  v141 = sub_26BE336A0(&v160, v110 + 2, v109, v108);
  v40 = v161;
  v54 = v162;

  sub_26BE2DA4C();
  if (v141 == v109)
  {
LABEL_86:
    *&v160 = v110;
    v23 = 0;
    sub_26BE294CC(&v160);
    v112 = v160;
    v160 = v142;
    *&v161 = 0;
    v113 = sub_26BE04360(0, v112);
    v114 = v113;
    v116 = sub_26BF30414(v113);
    sub_26BF2A30C(&v160);
    sub_26BE00258(v160, *(&v160 + 1));

    v117 = v116 + v114;
    if (!__OFADD__(v116, v114))
    {
      result = v134 + v117;
      if (!__OFADD__(v134, v117))
      {
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_92;
    }

    goto LABEL_114;
  }

  __break(1u);
LABEL_84:
  sub_26BE01600();
  swift_allocError();
  *v111 = 3;
  swift_willThrow();
  sub_26BE2DFC0(&v160, &v144);

  sub_26BE00258(v54, v40);
  result = sub_26BE2E01C(&v160);
LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BEB9B44@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v173[5] = *MEMORY[0x277D85DE8];
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v8 = 1;
    result = swift_willThrow();
    goto LABEL_5;
  }

  v6 = v5;
  result = sub_26BE108C0();
  if (v2)
  {
    goto LABEL_5;
  }

  sub_26BE03DC0(&v169);
  v11 = *(&v169 + 1);
  v10 = v169;
  v167[0] = v169;
  v12 = MLS.Credential.rawValue.getter();
  v14 = v13;
  sub_26BE0489C(v10, v11);
  sub_26BE00608(v12, v14);
  MLS.Credential.init(rawValue:)(v12, v14, v168);
  v16 = *(&v168[0] + 1);
  v15 = *&v168[0];
  v172 = v168[0];
  sub_26BE04890(*&v168[0], *(&v168[0] + 1));
  sub_26C006590(&v172, v168);
  sub_26BE0489C(v15, v16);
  sub_26BE00258(v12, v14);
  v17 = *(&v168[0] + 1);
  isUniquelyReferenced_nonNull_native = *&v168[0];
  v20 = *v3;
  v19 = v3[1];
  v21 = v3[2];
  sub_26BE00608(*v3, v19);
  sub_26BE00608(v20, v19);
  sub_26BF30764(v3, &v169);
  if (BYTE8(v169))
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v20;
    v3[1] = v19;
    v22 = v19;
    v23 = v20;
    v3[2] = v21;
LABEL_9:
    sub_26BE00258(v23, v22);
    *v3 = v20;
    v3[1] = v19;
    v3[2] = v21;
    sub_26BE01600();
    swift_allocError();
    *v24 = 1;
    goto LABEL_10;
  }

  v163 = v21;
  v164 = v17;
  v27 = v169;
  v28 = 100000000;
  sub_26BE00258(v20, v19);
  if (v27 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v29 = 5;
    swift_willThrow();
    v30 = v163;
    v17 = v164;
    goto LABEL_6;
  }

  v31 = sub_26BF2A44C(v27);
  if (v32 >> 60 == 15)
  {
    v23 = *v3;
    v22 = v3[1];
    v21 = v163;
    v17 = v164;
    goto LABEL_9;
  }

  v34 = v33;
  v152 = a1;
  v153 = v6;
  *&v169 = v31;
  *(&v169 + 1) = v32;
  v35 = v32 >> 62;
  v170 = v33;
  v154 = v31 >> 32;
  v157 = BYTE6(v32);
  v36 = MEMORY[0x277D84F90];
  v160 = isUniquelyReferenced_nonNull_native;
  v161 = v20;
  v162 = v19;
  v158 = v32 >> 62;
  v159 = v31;
  if ((v32 >> 62) > 1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v37 = v157;
  if (v35)
  {
    v37 = v154;
  }

  while (1)
  {
    v38 = __OFSUB__(v37, v34);
    v39 = v37 - v34;
    if (v38)
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
      v94 = *(&v169 + 1) >> 62;
      if ((*(&v169 + 1) >> 62) > 1)
      {
        if (v94 == 2)
        {
          v95 = *(v169 + 24);
        }

        else
        {
          v95 = 0;
        }
      }

      else if (v94)
      {
        v95 = v169 >> 32;
      }

      else
      {
        v95 = BYTE14(v169);
      }

      if (__OFSUB__(v95, v34))
      {
        __break(1u);
LABEL_222:
        if (v95 == 2)
        {
          v145 = *(a1 + 24);
        }

        else
        {
LABEL_225:
          v145 = 0;
        }

LABEL_226:
        if (__OFSUB__(v145, isUniquelyReferenced_nonNull_native))
        {
LABEL_236:
          __break(1u);
        }

        else
        {
          if (v145 != isUniquelyReferenced_nonNull_native)
          {
            sub_26BE01654();
            swift_allocError();
            *v149 = 0;
            v149[112] = 1;
LABEL_220:
            swift_willThrow();

            sub_26BE00258(v169, *(&v169 + 1));
            goto LABEL_155;
          }

          sub_26BE00258(a1, v36);
          sub_26BE00258(v159, v162);
          v147 = sub_26BEC800C(v157);

          if ((v153 - 3) >= 0xFFFFFFFE)
          {
            sub_26BE038A8(v173, v152 + 8);
            sub_26BE04890(v160, v164);
            v148 = MEMORY[0x277D84F90];
            sub_26C00447C(MEMORY[0x277D84F90]);
            sub_26C004684(v148);
            sub_26BE0489C(v160, v164);
            __swift_destroy_boxed_opaque_existential_1(v173);

            *v152 = v153 != 1;
            *(v152 + 48) = v160;
            *(v152 + 56) = v164;
            *(v152 + 64) = v166;
            *(v152 + 72) = v161;
            *(v152 + 80) = v163;
            *(v152 + 88) = i;
            *(v152 + 96) = v147;
            *(v152 + 104) = 0;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_238:
        result = sub_26C00AF8C();
        __break(1u);
        return result;
      }

      if (v95 != v34)
      {
        sub_26BE01654();
        swift_allocError();
        *v97 = 0;
        v97[112] = 1;
        goto LABEL_143;
      }

      sub_26BE00258(v169, *(&v169 + 1));
      sub_26BE00258(v163, i);
      v163 = sub_26BF2FAC0();
      v59 = sub_26BEEE594();
      if (v98)
      {
        sub_26BE01600();
        swift_allocError();
        *v99 = 1;
        swift_willThrow();
LABEL_173:
        __swift_destroy_boxed_opaque_existential_1(v173);

        result = sub_26BE0489C(v160, v164);
        goto LABEL_5;
      }

LABEL_153:
      a1 = v59;
      for (i = sub_26C004684(MEMORY[0x277D84F90]); a1; --a1)
      {
        v102 = sub_26BF2F7B0();
        v104 = v103;
        sub_26BE10E8C();
        sub_26BE10E8C();
        sub_26BE03890(v167, &v169);
        sub_26BE03890(v168, &v171);
        sub_26BE2E07C(&v169, v167);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v168[0] = i;
        v106 = sub_26BEBB690(v102, v104);
        v107 = i[2];
        v108 = (v105 & 1) == 0;
        v109 = v107 + v108;
        if (__OFADD__(v107, v108))
        {
          __break(1u);
          goto LABEL_225;
        }

        v36 = v105;
        if (i[3] >= v109)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26BE6D84C();
          }
        }

        else
        {
          sub_26BE695CC(v109, isUniquelyReferenced_nonNull_native);
          v110 = sub_26BEBB690(v102, v104);
          if ((v36 & 1) != (v111 & 1))
          {
            goto LABEL_238;
          }

          v106 = v110;
        }

        i = *&v168[0];
        if (v36)
        {
          sub_26BE5B15C(v167, *(*&v168[0] + 56) + 80 * v106);
          sub_26BE2E0D8(&v169);
        }

        else
        {
          *(*&v168[0] + 8 * (v106 >> 6) + 64) |= 1 << v106;
          v112 = (i[6] + 16 * v106);
          *v112 = v102;
          v112[1] = v104;
          v113 = (i[7] + 80 * v106);
          *v113 = v167[0];
          v114 = v167[1];
          v115 = v167[2];
          v116 = v167[4];
          v113[3] = v167[3];
          v113[4] = v116;
          v113[1] = v114;
          v113[2] = v115;
          sub_26BE00608(v102, v104);
          sub_26BE2E0D8(&v169);
          v117 = i[2];
          v38 = __OFADD__(v117, 1);
          v118 = v117 + 1;
          if (v38)
          {
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
            goto LABEL_236;
          }

          i[2] = v118;
        }

        sub_26BE00258(v102, v104);
      }

      v101 = *v3;
      v100 = v3[1];
      v158 = v3[2];
      sub_26BE00608(*v3, v100);
      v159 = v101;
      v162 = v100;
      sub_26BE00608(v101, v100);
      sub_26BF30764(v3, &v169);
      if ((BYTE8(v169) & 1) == 0)
      {
        goto LABEL_177;
      }

      sub_26BE00258(*v3, v3[1]);
      v119 = v101;
      v120 = v100;
      *v3 = v101;
      v3[1] = v100;
      v3[2] = v158;
LABEL_169:
      sub_26BE00258(v119, v120);

      *v3 = v159;
      v3[1] = v162;
      v69 = v158;
      goto LABEL_80;
    }

    v166 = v36;
    if (v39 < 1)
    {
      break;
    }

    LOWORD(v172) = 0;
    v36 = (v34 + 2);
    if (__OFADD__(v34, 2))
    {
      goto LABEL_131;
    }

    a1 = *(&v169 + 1);
    v40 = v169;
    v41 = *(&v169 + 1) >> 62;
    if ((*(&v169 + 1) >> 62) <= 1)
    {
      if (v41)
      {
        v42 = v169 >> 32;
      }

      else
      {
        v42 = BYTE14(v169);
      }

LABEL_31:
      if (v42 < v36)
      {
        goto LABEL_64;
      }

      goto LABEL_34;
    }

    if (v41 == 2)
    {
      v42 = *(v169 + 24);
      goto LABEL_31;
    }

    if (v36 > 0)
    {
LABEL_64:
      sub_26BE01600();
      swift_allocError();
      *v62 = 1;
      v17 = v164;
      goto LABEL_67;
    }

LABEL_34:
    v167[0] = v169;
    if (v36 < v34)
    {
      goto LABEL_132;
    }

    *&v168[0] = v34;
    *(&v168[0] + 1) = v34 + 2;
    sub_26BE00608(v169, *(&v169 + 1));
    isUniquelyReferenced_nonNull_native = &unk_26C00E290;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
    sub_26C008E1C();
    sub_26BE00258(*&v167[0], *(&v167[0] + 1));
    v43 = v172;
    v170 = (v34 + 2);
    sub_26BE00608(v40, a1);
    sub_26BE00608(v40, a1);
    sub_26BF30764(&v169, v167);
    if (BYTE8(v167[0]))
    {
      sub_26BE00258(v169, *(&v169 + 1));
      v46 = a1;
      v45 = v40;
LABEL_66:
      sub_26BE00258(v45, v46);
      *&v169 = v40;
      *(&v169 + 1) = a1;
      v170 = v36;
      sub_26BE01600();
      swift_allocError();
      *v63 = 1;
      v17 = v164;
      v20 = v161;
      v19 = v162;
      isUniquelyReferenced_nonNull_native = v160;
LABEL_67:
      swift_willThrow();

      sub_26BE00258(v169, *(&v169 + 1));
      v30 = v163;
LABEL_6:
      sub_26BE00258(*v3, v3[1]);
      *v3 = v20;
      v3[1] = v19;
      v3[2] = v30;
LABEL_10:
      swift_willThrow();
      v25 = isUniquelyReferenced_nonNull_native;
      v26 = v17;
      goto LABEL_11;
    }

    v44 = *&v167[0];
    sub_26BE00258(v40, a1);
    v38 = __OFADD__(v170, v44);
    v34 = &v170[v44];
    if (v38)
    {
      goto LABEL_133;
    }

    v46 = *(&v169 + 1);
    v45 = v169;
    v47 = *(&v169 + 1) >> 62;
    if ((*(&v169 + 1) >> 62) <= 1)
    {
      if (v47)
      {
        v48 = v169 >> 32;
      }

      else
      {
        v48 = BYTE14(v169);
      }

LABEL_43:
      if (v48 < v34)
      {
        goto LABEL_66;
      }

      goto LABEL_46;
    }

    if (v47 == 2)
    {
      v48 = *(v169 + 24);
      goto LABEL_43;
    }

    if (v34 > 0)
    {
      goto LABEL_66;
    }

LABEL_46:
    if (v34 < v170)
    {
      goto LABEL_134;
    }

    v49 = sub_26C00909C();
    v50 = v49;
    v36 = v51;
    v170 = v34;
    v52 = v51 >> 62;
    LODWORD(i) = v43;
    if ((v51 >> 62) > 1)
    {
      if (v52 != 2)
      {
        goto LABEL_54;
      }

      v49 = *(v49 + 16);
      v53 = *(v50 + 24);
    }

    else
    {
      if (!v52)
      {
        goto LABEL_54;
      }

      v49 = v49;
      v53 = v50 >> 32;
    }

    if (v53 < v49)
    {
      goto LABEL_135;
    }

LABEL_54:
    v54 = sub_26C00909C();
    v56 = v55;
    sub_26BE00258(v50, v36);
    sub_26BE00258(v40, a1);
    sub_26BE00608(v54, v56);
    v36 = v166;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_26BEEBD8C(0, *(v166 + 2) + 1, 1, v166);
    }

    v28 = *(v36 + 2);
    v57 = *(v36 + 3);
    a1 = v28 + 1;
    if (v28 >= v57 >> 1)
    {
      v36 = sub_26BEEBD8C((v57 > 1), v28 + 1, 1, v36);
    }

    sub_26BE00258(v54, v56);
    *(v36 + 2) = a1;
    v58 = &v36[24 * v28];
    *(v58 + 16) = bswap32(i) >> 16;
    *(v58 + 5) = v54;
    *(v58 + 6) = v56;
    isUniquelyReferenced_nonNull_native = v160;
    v20 = v161;
    v19 = v162;
    LODWORD(v35) = v158;
    v31 = v159;
    if (v158 <= 1)
    {
      goto LABEL_17;
    }

LABEL_19:
    if (v35 == 2)
    {
      v37 = *(v31 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  v59 = v169;
  v60 = *(&v169 + 1) >> 62;
  if ((*(&v169 + 1) >> 62) > 1)
  {
    if (v60 == 2)
    {
      v61 = *(v169 + 24);
    }

    else
    {
      v61 = 0;
    }
  }

  else if (v60)
  {
    v61 = v169 >> 32;
  }

  else
  {
    v61 = BYTE14(v169);
  }

  if (__OFSUB__(v61, v34))
  {
    __break(1u);
    goto LABEL_153;
  }

  if (v61 != v34)
  {
    sub_26BE01654();
    swift_allocError();
    *v66 = 0;
    v66[112] = 1;
    swift_willThrow();

    sub_26BE00258(v169, *(&v169 + 1));
    v30 = v163;
    v17 = v164;
    isUniquelyReferenced_nonNull_native = v160;
    v20 = v161;
    v19 = v162;
    goto LABEL_6;
  }

  sub_26BE00258(v169, *(&v169 + 1));
  sub_26BE00258(v161, v162);
  v65 = *v3;
  v64 = v3[1];
  v162 = v3[2];
  sub_26BE00608(*v3, v64);
  v163 = v65;
  i = v64;
  sub_26BE00608(v65, v64);
  sub_26BF30764(v3, &v169);
  if (BYTE8(v169))
  {
    sub_26BE00258(*v3, v3[1]);
    v67 = v65;
    v68 = v64;
    *v3 = v65;
    v3[1] = v64;
    v3[2] = v162;
    goto LABEL_79;
  }

  a1 = v169;
  sub_26BE00258(v65, i);
  if (a1 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v71 = 5;
    swift_willThrow();
    goto LABEL_75;
  }

  v157 = sub_26BF2A44C(a1);
  if (v72 >> 60 == 15)
  {
    v67 = *v3;
    v68 = v3[1];
LABEL_79:
    sub_26BE00258(v67, v68);

    *v3 = v65;
    v3[1] = i;
    v69 = v162;
LABEL_80:
    v3[2] = v69;
    sub_26BE01600();
    swift_allocError();
    *v70 = 1;
    swift_willThrow();
    goto LABEL_81;
  }

  v34 = v73;
  *&v169 = v157;
  *(&v169 + 1) = v72;
  v159 = v72 >> 62;
  v170 = v73;
  v155 = BYTE6(v72);
  v161 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v159 > 1)
    {
      if (v159 == 2)
      {
        v74 = *(v157 + 24);
      }

      else
      {
        v74 = 0;
      }
    }

    else
    {
      v74 = v155;
      if (v159)
      {
        v74 = v157 >> 32;
      }
    }

    v38 = __OFSUB__(v74, v34);
    v75 = v74 - v34;
    if (v38)
    {
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      sub_26BE00258(v19, v28);

      goto LABEL_173;
    }

    if (v75 < 1)
    {
      goto LABEL_136;
    }

    LOWORD(v172) = 0;
    v76 = v34 + 2;
    if (__OFADD__(v34, 2))
    {
      goto LABEL_171;
    }

    v77 = *(&v169 + 1);
    v28 = v169;
    v78 = *(&v169 + 1) >> 62;
    if ((*(&v169 + 1) >> 62) <= 1)
    {
      if (v78)
      {
        v79 = v169 >> 32;
      }

      else
      {
        v79 = BYTE14(v169);
      }

      goto LABEL_102;
    }

    if (v78 == 2)
    {
      v79 = *(v169 + 24);
LABEL_102:
      if (v79 < v76)
      {
        goto LABEL_142;
      }
    }

    else if (v76 > 0)
    {
      goto LABEL_142;
    }

    v167[0] = v169;
    if (v76 < v34)
    {
      goto LABEL_172;
    }

    *&v168[0] = v34;
    *(&v168[0] + 1) = v34 + 2;
    sub_26BE00608(v169, *(&v169 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
    sub_26C008E1C();
    sub_26BE00258(*&v167[0], *(&v167[0] + 1));
    LODWORD(v158) = v172;
    v170 = (v34 + 2);
    sub_26BE00608(v28, v77);
    sub_26BE00608(v28, v77);
    sub_26BF30764(&v169, v167);
    if ((BYTE8(v167[0]) & 1) == 0)
    {
      v80 = *&v167[0];
      sub_26BE00258(v28, v77);
      v38 = __OFADD__(v170, v80);
      v34 = &v170[v80];
      if (!v38)
      {
        v82 = *(&v169 + 1);
        v81 = v169;
        v83 = *(&v169 + 1) >> 62;
        if ((*(&v169 + 1) >> 62) <= 1)
        {
          if (v83)
          {
            v84 = v169 >> 32;
          }

          else
          {
            v84 = BYTE14(v169);
          }

          goto LABEL_114;
        }

        if (v83 == 2)
        {
          v84 = *(v169 + 24);
LABEL_114:
          if (v84 < v34)
          {
            goto LABEL_141;
          }
        }

        else if (v34 > 0)
        {
          goto LABEL_141;
        }

        if (v34 < v170)
        {
          goto LABEL_175;
        }

        v85 = sub_26C00909C();
        v86 = v85;
        isUniquelyReferenced_nonNull_native = v87;
        v170 = v34;
        v88 = v87 >> 62;
        if ((v87 >> 62) > 1)
        {
          if (v88 != 2)
          {
LABEL_125:
            v19 = sub_26C00909C();
            v91 = v90;
            sub_26BE00258(v86, isUniquelyReferenced_nonNull_native);
            sub_26BE00258(v28, v77);
            sub_26BE00608(v19, v91);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v161 = sub_26BEEBD8C(0, *(v161 + 2) + 1, 1, v161);
            }

            v28 = *(v161 + 2);
            v92 = *(v161 + 3);
            a1 = v28 + 1;
            if (v28 >= v92 >> 1)
            {
              v161 = sub_26BEEBD8C((v92 > 1), v28 + 1, 1, v161);
            }

            v36 = (bswap32(v158) >> 16);
            sub_26BE00258(v19, v91);
            *(v161 + 2) = a1;
            v93 = &v161[24 * v28];
            *(v93 + 16) = v36;
            *(v93 + 5) = v19;
            *(v93 + 6) = v91;
            continue;
          }

          v85 = *(v85 + 16);
          v89 = *(v86 + 24);
        }

        else
        {
          if (!v88)
          {
            goto LABEL_125;
          }

          v85 = v85;
          v89 = v86 >> 32;
        }

        if (v89 < v85)
        {
          goto LABEL_176;
        }

        goto LABEL_125;
      }

      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      v121 = v169;
      sub_26BE00258(v159, v162);
      if (v121 > 100000000)
      {
        sub_26BE01600();
        swift_allocError();
        *v122 = 5;
        swift_willThrow();
LABEL_155:
        sub_26BE00258(*v3, v3[1]);
        *v3 = v159;
        v3[1] = v162;
        v3[2] = v158;
        swift_willThrow();

        goto LABEL_76;
      }

      v150 = sub_26BF2A44C(v121);
      if (v123 >> 60 == 15)
      {
        v119 = *v3;
        v120 = v3[1];
        goto LABEL_169;
      }

      isUniquelyReferenced_nonNull_native = v124;
      *&v169 = v150;
      *(&v169 + 1) = v123;
      v156 = v123 >> 62;
      v170 = v124;
      v151 = BYTE6(v123);
      v157 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v156 > 1)
        {
          if (v156 == 2)
          {
            v125 = *(v150 + 24);
          }

          else
          {
            v125 = 0;
          }
        }

        else
        {
          v125 = v151;
          if (v156)
          {
            v125 = v150 >> 32;
          }
        }

        v38 = __OFSUB__(v125, isUniquelyReferenced_nonNull_native);
        v126 = v125 - isUniquelyReferenced_nonNull_native;
        if (v38)
        {
          goto LABEL_232;
        }

        v36 = *(&v169 + 1);
        a1 = v169;
        if (v126 < 1)
        {
          v95 = *(&v169 + 1) >> 62;
          if ((*(&v169 + 1) >> 62) > 1)
          {
            goto LABEL_222;
          }

          if (v95)
          {
            v145 = v169 >> 32;
          }

          else
          {
            v145 = BYTE14(v169);
          }

          goto LABEL_226;
        }

        v127 = v170;
        sub_26BE00608(v169, *(&v169 + 1));
        sub_26BE00608(a1, v36);
        sub_26BF30764(&v169, v167);
        if (BYTE8(v167[0]))
        {
          sub_26BE00258(v169, *(&v169 + 1));
          v130 = v36;
          v129 = a1;
LABEL_219:
          sub_26BE00258(v129, v130);
          *&v169 = a1;
          *(&v169 + 1) = v36;
          v170 = v127;
          sub_26BE01600();
          swift_allocError();
          *v146 = 1;
          goto LABEL_220;
        }

        v128 = *&v167[0];
        sub_26BE00258(a1, v36);
        isUniquelyReferenced_nonNull_native = &v170[v128];
        if (__OFADD__(v170, v128))
        {
          goto LABEL_233;
        }

        v130 = *(&v169 + 1);
        v129 = v169;
        v131 = *(&v169 + 1) >> 62;
        if ((*(&v169 + 1) >> 62) <= 1)
        {
          if (v131)
          {
            v132 = v169 >> 32;
          }

          else
          {
            v132 = BYTE14(v169);
          }

          goto LABEL_198;
        }

        if (v131 == 2)
        {
          v132 = *(v169 + 24);
LABEL_198:
          if (v132 < isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_219;
          }
        }

        else if (isUniquelyReferenced_nonNull_native > 0)
        {
          goto LABEL_219;
        }

        if (isUniquelyReferenced_nonNull_native < v170)
        {
          goto LABEL_234;
        }

        v133 = sub_26C00909C();
        v134 = v133;
        v136 = v135;
        v170 = isUniquelyReferenced_nonNull_native;
        v137 = v135 >> 62;
        if ((v135 >> 62) > 1)
        {
          if (v137 != 2)
          {
LABEL_209:
            v139 = sub_26C00909C();
            v141 = v140;
            sub_26BE00258(v134, v136);
            sub_26BE00258(a1, v36);
            sub_26BE00608(v139, v141);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v157 = sub_26BEECB7C(0, *(v157 + 16) + 1, 1, v157);
            }

            v143 = *(v157 + 16);
            v142 = *(v157 + 24);
            if (v143 >= v142 >> 1)
            {
              v157 = sub_26BEECB7C((v142 > 1), v143 + 1, 1, v157);
            }

            sub_26BE00258(v139, v141);
            *(v157 + 16) = v143 + 1;
            v144 = v157 + 16 * v143;
            *(v144 + 32) = v139;
            *(v144 + 40) = v141;
            continue;
          }

          v133 = *(v133 + 16);
          v138 = *(v134 + 24);
        }

        else
        {
          if (!v137)
          {
            goto LABEL_209;
          }

          v133 = v133;
          v138 = v134 >> 32;
        }

        break;
      }

      if (v138 < v133)
      {
        goto LABEL_235;
      }

      goto LABEL_209;
    }

    break;
  }

  sub_26BE00258(v169, *(&v169 + 1));
  v82 = v77;
  v81 = v28;
LABEL_141:
  sub_26BE00258(v81, v82);
  *&v169 = v28;
  *(&v169 + 1) = v77;
  v170 = v76;
LABEL_142:
  sub_26BE01600();
  swift_allocError();
  *v96 = 1;
LABEL_143:
  swift_willThrow();

  sub_26BE00258(v169, *(&v169 + 1));
LABEL_75:
  sub_26BE00258(*v3, v3[1]);
  *v3 = v163;
  v3[1] = i;
  v3[2] = v162;
  swift_willThrow();
LABEL_76:

LABEL_81:
  v25 = v160;
  v26 = v164;
LABEL_11:
  sub_26BE0489C(v25, v26);
  result = __swift_destroy_boxed_opaque_existential_1(v173);
LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_26BEBB1B8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26BEBB1D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26BEBB208(unsigned int a1)
{
  v3 = MEMORY[0x26D699B00](*(v1 + 40), a1, 4);

  return sub_26BEBB704(a1, v3);
}

unint64_t sub_26BEBB250(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](a3);
  v8 = sub_26C00B0CC();

  return sub_26BEBB770(a1, a2, a3, v8);
}

unint64_t sub_26BEBB2E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](a3);
  MEMORY[0x26D699B60](a4);
  v10 = sub_26C00B0CC();

  return sub_26BEBBB7C(a1, a2, a3, a4, v10);
}

unint64_t sub_26BEBB390(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26C00928C();
  sub_26BEBE70C(&qword_28045E828);
  v5 = sub_26C00A3BC();

  return sub_26BEBBFA0(a1, v5);
}

unint64_t sub_26BEBB414(int a1)
{
  v3 = *(v1 + 40);
  sub_26C00B05C();
  sub_26C00B09C();
  v4 = sub_26C00B0CC();

  return sub_26BEBB704(a1, v4);
}

unint64_t sub_26BEBB480(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26C00B05C();
  sub_26C00B07C();
  sub_26C00B09C();
  v4 = sub_26C00B0CC();

  return sub_26BEBC14C(a1 & 0xFFFFFFFF00000001, v4);
}

unint64_t sub_26BEBB504(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 40);
  sub_26C00B05C();
  MEMORY[0x26D699B60](a1);
  sub_26C00911C();
  v8 = sub_26C00B0CC();

  return sub_26BEBC1D4(a1, a2, a3, v8);
}

unint64_t sub_26BEBB598(int a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a2);
  v6 = sub_26C00B0CC();

  return sub_26BEBC61C(a1, a2, v6);
}

unint64_t sub_26BEBB618(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26C00B05C();
  sub_26C00A58C();
  v6 = sub_26C00B0CC();

  return sub_26BEBC698(a1, a2, v6);
}

unint64_t sub_26BEBB690(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26C00B05C();
  sub_26C00911C();
  v6 = sub_26C00B0CC();
  return sub_26BEBC750(a1, a2, v6);
}

unint64_t sub_26BEBB704(int a1, uint64_t a2)
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

unint64_t sub_26BEBB770(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53[3] = *MEMORY[0x277D85DE8];
  v6 = v4 + 64;
  v7 = -1 << *(v4 + 32);
  v8 = a4 & ~v7;
  if ((*(v4 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = 0;
    v13 = ~v7;
    if (a1)
    {
      v14 = 0;
    }

    else
    {
      v14 = a2 == 0xC000000000000000;
    }

    v15 = !v14;
    v16 = a2 >> 62;
    v17 = __OFSUB__(HIDWORD(a1), a1);
    v51 = v17;
    v49 = v6;
    v50 = HIDWORD(a1) - a1;
    v18 = BYTE6(a2);
    v46 = BYTE6(a2);
    v48 = ~v7;
    v47 = v15;
    while (1)
    {
      v19 = (*(v5 + 48) + 24 * v8);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v20 >> 62;
      if (v20 >> 62 == 3)
      {
        break;
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_37;
        }

        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_65;
        }

        if (v16 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v23)
      {
        LODWORD(v27) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_66;
        }

        v27 = v27;
        if (v16 <= 1)
        {
LABEL_34:
          v31 = v18;
          if (v16)
          {
            v31 = v50;
            if (v51)
            {
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v27 = BYTE6(v20);
        if (v16 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v16 != 2)
      {
        if (!v27)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      v33 = *(v11 + 16);
      v32 = *(v11 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_64;
      }

LABEL_40:
      if (v27 != v31)
      {
        goto LABEL_14;
      }

      if (v27 < 1)
      {
        goto LABEL_13;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v44 = v12;
          v35 = *(v21 + 16);
          v34 = *(v21 + 24);
          sub_26BE00608(v21, v20);
          v36 = sub_26C008E9C();
          if (v36)
          {
            v37 = sub_26C008ECC();
            if (__OFSUB__(v35, v37))
            {
              goto LABEL_69;
            }

            v36 += v35 - v37;
          }

          if (__OFSUB__(v34, v35))
          {
            goto LABEL_68;
          }

          goto LABEL_58;
        }

        memset(v53, 0, 14);
        sub_26BE00608(v21, v20);
      }

      else
      {
        if (v23)
        {
          v44 = v12;
          if (v21 >> 32 < v21)
          {
            goto LABEL_67;
          }

          sub_26BE00608(v21, v20);
          v36 = sub_26C008E9C();
          if (v36)
          {
            v38 = sub_26C008ECC();
            if (__OFSUB__(v21, v38))
            {
              goto LABEL_70;
            }

            v36 += v21 - v38;
          }

LABEL_58:
          sub_26C008EBC();
          v12 = v44;
          v11 = a1;
          v10 = a2;
          sub_26BE567B0(v36, a1, a2, v53);
          sub_26BE00258(v21, v20);
          v39 = LOBYTE(v53[0]);
          v9 = a3;
          goto LABEL_61;
        }

        v53[0] = v21;
        LOWORD(v53[1]) = v20;
        BYTE2(v53[1]) = BYTE2(v20);
        BYTE3(v53[1]) = BYTE3(v20);
        BYTE4(v53[1]) = BYTE4(v20);
        BYTE5(v53[1]) = BYTE5(v20);
        sub_26BE00608(v21, v20);
        v11 = a1;
      }

      sub_26BE567B0(v53, v11, v10, &v52);
      sub_26BE00258(v21, v20);
      v39 = v52;
LABEL_61:
      v13 = v48;
      v6 = v49;
      v15 = v47;
      v18 = v46;
      if (v39)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 = (v8 + 1) & v13;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v20 == 0xC000000000000000;
    }

    v26 = !v24 || v16 < 3;
    if (((v26 | v15) & 1) == 0)
    {
LABEL_13:
      if (v22 == v9)
      {
        goto LABEL_63;
      }

      goto LABEL_14;
    }

LABEL_37:
    v27 = 0;
    if (v16 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_63:
  v40 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_26BEBBB7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56[3] = *MEMORY[0x277D85DE8];
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = a4;
    v10 = a3;
    v11 = a1;
    v12 = ~v7;
    if (a1)
    {
      v13 = 0;
    }

    else
    {
      v13 = a2 == 0xC000000000000000;
    }

    v14 = !v13;
    v15 = a2 >> 62;
    v16 = __OFSUB__(HIDWORD(a1), a1);
    v53 = v16;
    v52 = HIDWORD(a1) - a1;
    v17 = BYTE6(a2);
    v49 = ~v7;
    v50 = v5 + 64;
    v48 = v14;
    while (1)
    {
      v19 = (*(v5 + 48) + 32 * v8);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v20 >> 62;
      if (v20 >> 62 == 3)
      {
        break;
      }

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_39;
        }

        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        v31 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v31)
        {
          goto LABEL_72;
        }

        if (v15 > 1)
        {
          goto LABEL_40;
        }
      }

      else if (v24)
      {
        LODWORD(v28) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_73;
        }

        v28 = v28;
        if (v15 > 1)
        {
LABEL_40:
          if (v15 != 2)
          {
            if (v28)
            {
              goto LABEL_16;
            }

            goto LABEL_12;
          }

          v34 = *(v11 + 16);
          v33 = *(v11 + 24);
          v31 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v31)
          {
            goto LABEL_71;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v28 = BYTE6(v20);
        if (v15 > 1)
        {
          goto LABEL_40;
        }
      }

LABEL_36:
      v32 = v17;
      if (v15)
      {
        v32 = v52;
        if (v53)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
        }
      }

LABEL_42:
      if (v28 != v32)
      {
        goto LABEL_16;
      }

      if (v28 >= 1)
      {
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v37 = *(v21 + 16);
            v36 = *(v21 + 24);
            sub_26BE00608(v21, v20);
            v38 = sub_26C008E9C();
            if (v38)
            {
              v39 = sub_26C008ECC();
              if (__OFSUB__(v37, v39))
              {
                goto LABEL_76;
              }

              v38 += v37 - v39;
            }

            if (__OFSUB__(v36, v37))
            {
              goto LABEL_75;
            }

            goto LABEL_62;
          }

          memset(v56, 0, 14);
          sub_26BE00608(v21, v20);
          v35 = v11;
LABEL_64:
          sub_26BE567B0(v56, v35, a2, &v55);
          sub_26BE00258(v21, v20);
          v41 = v55;
        }

        else
        {
          if (!v24)
          {
            v56[0] = v21;
            LOWORD(v56[1]) = v20;
            BYTE2(v56[1]) = BYTE2(v20);
            BYTE3(v56[1]) = BYTE3(v20);
            BYTE4(v56[1]) = BYTE4(v20);
            BYTE5(v56[1]) = BYTE5(v20);
            sub_26BE00608(v21, v20);
            v35 = a1;
            goto LABEL_64;
          }

          if (v21 >> 32 < v21)
          {
            goto LABEL_74;
          }

          sub_26BE00608(v21, v20);
          v38 = sub_26C008E9C();
          if (v38)
          {
            v40 = sub_26C008ECC();
            if (__OFSUB__(v21, v40))
            {
              goto LABEL_77;
            }

            v38 += v21 - v40;
          }

LABEL_62:
          sub_26C008EBC();
          sub_26BE567B0(v38, a1, a2, v56);
          sub_26BE00258(v21, v20);
          v41 = LOBYTE(v56[0]);
          v9 = a4;
          v5 = v46;
          v10 = a3;
        }

        v12 = v49;
        v6 = v50;
        v14 = v48;
        v17 = v47;
        if (v41)
        {
          v11 = a1;
          if (v22 == v10 && v23 == v9)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v11 = a1;
        }

        goto LABEL_16;
      }

LABEL_12:
      if (v22 == v10 && v23 == v9)
      {
        goto LABEL_70;
      }

LABEL_16:
      v8 = (v8 + 1) & v12;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = v20 == 0xC000000000000000;
    }

    v27 = !v25 || v15 < 3;
    if (((v27 | v14) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v28 = 0;
    if (v15 > 1)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_70:
  v42 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_26BEBBFA0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26C00928C();
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
      sub_26BEBE70C(&qword_28045ED48);
      v16 = sub_26C00A43C();
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

unint64_t sub_26BEBC14C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (!((*(*(v2 + 48) + 8 * result) ^ a1) & 1 | (*(*(v2 + 48) + 8 * result + 4) != HIDWORD(a1))))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26BEBC1D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52[3] = *MEMORY[0x277D85DE8];
  v6 = v4 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a4 & ~v7;
  if ((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = 0;
    v13 = ~v7;
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = a3 == 0xC000000000000000;
    }

    v15 = !v14;
    v50 = v15;
    v16 = a3 >> 62;
    v17 = __OFSUB__(HIDWORD(a2), a2);
    v45 = v17;
    v44 = HIDWORD(a2) - a2;
    v48 = v13;
    v49 = BYTE6(a3);
    v47 = v6;
    while (1)
    {
      v18 = (*(v5 + 48) + 24 * v8);
      if (*v18 != v11)
      {
        goto LABEL_13;
      }

      v20 = v18[1];
      v19 = v18[2];
      v21 = v19 >> 62;
      if (v19 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_37;
        }

        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        v28 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v28)
        {
          goto LABEL_69;
        }

        if (v16 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        LODWORD(v25) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_68;
        }

        v25 = v25;
        if (v16 <= 1)
        {
LABEL_34:
          v29 = v49;
          if (v16)
          {
            v29 = v44;
            if (v45)
            {
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v25 = BYTE6(v19);
        if (v16 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v16 != 2)
      {
        if (!v25)
        {
          goto LABEL_66;
        }

        goto LABEL_13;
      }

      v31 = *(v10 + 16);
      v30 = *(v10 + 24);
      v28 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v28)
      {
        goto LABEL_67;
      }

LABEL_40:
      if (v25 == v29)
      {
        if (v25 < 1)
        {
          goto LABEL_66;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v32 = *(v20 + 16);
            v41 = *(v20 + 24);
            sub_26BE00608(v20, v19);
            v33 = sub_26C008E9C();
            v46 = v12;
            if (v33)
            {
              v34 = sub_26C008ECC();
              if (__OFSUB__(v32, v34))
              {
                goto LABEL_72;
              }

              v35 = v10;
              v33 += v32 - v34;
            }

            else
            {
              v35 = v10;
            }

            if (__OFSUB__(v41, v32))
            {
              goto LABEL_71;
            }

            goto LABEL_62;
          }

          memset(v52, 0, 14);
          sub_26BE00608(v20, v19);
          sub_26BE567B0(v52, v10, v9, &v51);
          sub_26BE00258(v20, v19);
          if (v51)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (!v21)
          {
            v52[0] = v20;
            LOWORD(v52[1]) = v19;
            BYTE2(v52[1]) = BYTE2(v19);
            BYTE3(v52[1]) = BYTE3(v19);
            BYTE4(v52[1]) = BYTE4(v19);
            BYTE5(v52[1]) = BYTE5(v19);
            sub_26BE00608(v20, v19);
            sub_26BE567B0(v52, v10, v9, &v51);
            sub_26BE00258(v20, v19);
            if (v51)
            {
              goto LABEL_66;
            }

            goto LABEL_64;
          }

          v46 = v12;
          v35 = v10;
          if (v20 >> 32 < v20)
          {
            goto LABEL_70;
          }

          sub_26BE00608(v20, v19);
          v33 = sub_26C008E9C();
          if (v33)
          {
            v36 = sub_26C008ECC();
            if (__OFSUB__(v20, v36))
            {
              goto LABEL_73;
            }

            v33 += v20 - v36;
          }

LABEL_62:
          sub_26C008EBC();
          v37 = v33;
          v10 = v35;
          v38 = v35;
          v9 = a3;
          v12 = v46;
          sub_26BE567B0(v37, v38, a3, v52);
          sub_26BE00258(v20, v19);
          if (v52[0])
          {
            goto LABEL_66;
          }

          v11 = a1;
LABEL_64:
          v6 = v47;
        }

        v13 = v48;
      }

LABEL_13:
      v8 = (v8 + 1) & v13;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = v19 == 0xC000000000000000;
    }

    v24 = !v22 || v16 < 3;
    if (((v24 | v50) & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_37:
    v25 = 0;
    if (v16 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_66:
  v39 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_26BEBC61C(int a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && v10 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26BEBC698(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26C00AF2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26BEBC750(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v44 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v41 = v14;
    v40 = HIDWORD(a1) - a1;
    v42 = v10;
    v43 = BYTE6(a2);
    v37 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v43;
          if (v13)
          {
            v26 = v40;
            if (v41)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          goto LABEL_61;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        goto LABEL_61;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v46[0] = v17;
          LOWORD(v46[1]) = v16;
          BYTE2(v46[1]) = BYTE2(v16);
          BYTE3(v46[1]) = BYTE3(v16);
          BYTE4(v46[1]) = BYTE4(v16);
          BYTE5(v46[1]) = BYTE5(v16);
          sub_26BE00608(v17, v16);
          sub_26BE567B0(v46, v9, v8, &v45);
          sub_26BE00258(v17, v16);
          if (v45)
          {
            goto LABEL_61;
          }

          v10 = v42;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_26BE00608(v17, v16);
        v31 = sub_26C008E9C();
        if (v31)
        {
          v33 = sub_26C008ECC();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_26BE00608(v17, v16);
        v31 = sub_26C008E9C();
        if (v31)
        {
          v32 = sub_26C008ECC();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_26C008EBC();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_26BE567B0(v34, a1, a2, v46);
        sub_26BE00258(v17, v16);
        if (v46[0])
        {
          goto LABEL_61;
        }

        v4 = v37;
        v10 = v42;
        goto LABEL_13;
      }

      memset(v46, 0, 14);
      sub_26BE00608(v17, v16);
      sub_26BE567B0(v46, v9, v8, &v45);
      sub_26BE00258(v17, v16);
      if (v45)
      {
        goto LABEL_61;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v44) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_61:
  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

char *sub_26BEBCB50(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_26BEBCEAC(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_26BEBE79C(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x26D69A4E0](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BEBCD0C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_26BEBDB9C(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_26BEBE6E0(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x26D69A4E0](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *sub_26BEBCEAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v116 = a4 + 56;

  v97 = 0;
  v10 = 0;
  v114 = a4;
  v99 = v9;
  v100 = v5;
  while (1)
  {
LABEL_6:
    if (v8)
    {
      goto LABEL_11;
    }

    do
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
      }

      if (v11 >= v9)
      {

        result = sub_26BEBDE70(a1, a2, v97, v114);
        v89 = *MEMORY[0x277D85DE8];
        return result;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
    }

    while (!v8);
    v10 = v11;
LABEL_11:
    v109 = (v8 - 1) & v8;
    v12 = (*(a3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v114 + 40);
    sub_26C00B05C();
    sub_26BE00608(v13, v14);
    sub_26C00911C();
    v16 = sub_26C00B0CC();
    v17 = v114;
    v18 = -1 << *(v114 + 32);
    v19 = v16 & ~v18;
    v20 = v19 >> 6;
    v21 = v116;
    v22 = 1 << v19;
    v120 = v14;
    if (((1 << v19) & *(v116 + 8 * (v19 >> 6))) != 0)
    {
      break;
    }

LABEL_5:
    sub_26BE00258(v13, v120);
    v9 = v99;
    v5 = v100;
    v8 = v109;
  }

  v23 = ~v18;
  v24 = v14 >> 62;
  if (v13)
  {
    v25 = 0;
  }

  else
  {
    v25 = v14 == 0xC000000000000000;
  }

  v26 = !v25;
  v117 = v26;
  v108 = HIDWORD(v13);
  v27 = __OFSUB__(HIDWORD(v13), v13);
  v112 = v27;
  v118 = v14 >> 62;
  __n = BYTE6(v14);
  v110 = v13;
  v111 = HIDWORD(v13) - v13;
  v106 = (v13 >> 32) - v13;
  v107 = v13 >> 32;
  v115 = v13;
  v113 = v23;
  while (1)
  {
    v28 = (*(v17 + 48) + 16 * v19);
    v30 = *v28;
    v29 = v28[1];
    v31 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      if (v30)
      {
        v32 = 0;
      }

      else
      {
        v32 = v29 == 0xC000000000000000;
      }

      v34 = !v32 || v24 < 3;
      if (((v34 | v117) & 1) == 0)
      {
        v86 = 0;
        v87 = 0xC000000000000000;
LABEL_155:
        sub_26BE00258(v86, v87);
LABEL_156:
        v9 = v99;
        v88 = a1[v20];
        a1[v20] = v88 | v22;
        v5 = v100;
        v8 = v109;
        if ((v88 & v22) == 0)
        {
          v38 = __OFADD__(v97++, 1);
          if (v38)
          {
            goto LABEL_186;
          }
        }

        goto LABEL_6;
      }

LABEL_46:
      v35 = 0;
      if (v24 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_46;
      }

      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_165;
      }

      if (v24 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_166;
      }

      v35 = v35;
      if (v24 <= 1)
      {
LABEL_43:
        v39 = __n;
        if (v24)
        {
          v39 = v111;
          if (v112)
          {
            goto LABEL_163;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v35 = BYTE6(v29);
      if (v24 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v24 != 2)
    {
      if (!v35)
      {
        goto LABEL_154;
      }

      goto LABEL_23;
    }

    v41 = *(v13 + 16);
    v40 = *(v13 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      goto LABEL_164;
    }

LABEL_49:
    if (v35 != v39)
    {
      goto LABEL_23;
    }

    if (v35 < 1)
    {
      goto LABEL_154;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v24)
        {
LABEL_76:
          __s2 = v13;
          v122 = BYTE2(v13);
          v123 = BYTE3(v13);
          v124 = v108;
          v125 = BYTE5(v13);
          v126 = BYTE6(v13);
          v127 = HIBYTE(v13);
          v128 = v120;
          v129 = WORD2(v120);
          v57 = v17;
          v58 = memcmp(__s1, &__s2, __n);
          v17 = v57;
          v24 = v118;
          v23 = v113;
          v21 = v116;
          if (!v58)
          {
            goto LABEL_154;
          }

          goto LABEL_23;
        }

        if (v24 == 2)
        {
          v103 = *(v13 + 16);
          v92 = *(v13 + 24);
          sub_26BE00608(v30, v29);
          v54 = sub_26C008E9C();
          if (v54)
          {
            v55 = sub_26C008ECC();
            v56 = v103;
            if (__OFSUB__(v103, v55))
            {
              goto LABEL_181;
            }

            v54 = &v103[v54 - v55];
          }

          else
          {
            v56 = v103;
          }

          v78 = v92 - v56;
          if (__OFSUB__(v92, v56))
          {
            goto LABEL_174;
          }

          v79 = sub_26C008EBC();
          if (!v54)
          {
            goto LABEL_193;
          }

          goto LABEL_130;
        }

        if (v107 < v110)
        {
          goto LABEL_170;
        }

        sub_26BE00608(v30, v29);
        v68 = sub_26C008E9C();
        if (!v68)
        {
          goto LABEL_189;
        }

        v69 = v68;
        v70 = sub_26C008ECC();
        if (__OFSUB__(v110, v70))
        {
          goto LABEL_176;
        }

        v45 = (v110 - v70 + v69);
        v46 = sub_26C008EBC();
        if (!v45)
        {
          goto LABEL_190;
        }

LABEL_109:
        if (v46 >= v106)
        {
          v71 = v106;
        }

        else
        {
          v71 = v46;
        }

        v72 = memcmp(__s1, v45, v71);
        sub_26BE00258(v30, v29);
        v13 = v115;
        v21 = v116;
LABEL_153:
        v23 = v113;
        v17 = v114;
        v24 = v118;
        if (!v72)
        {
          goto LABEL_154;
        }

        goto LABEL_23;
      }

      v47 = *(v30 + 16);
      sub_26BE00608(v30, v29);
      v48 = sub_26C008E9C();
      if (v48)
      {
        v49 = v48;
        v50 = sub_26C008ECC();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_168;
        }

        v101 = (v47 - v50 + v49);
      }

      else
      {
        v101 = 0;
      }

      sub_26C008EBC();
      v13 = v115;
      if (v118 == 2)
      {
        v90 = *(v115 + 24);
        v94 = *(v115 + 16);
        v59 = sub_26C008E9C();
        if (v59)
        {
          v73 = sub_26C008ECC();
          v74 = v94;
          if (__OFSUB__(v94, v73))
          {
            goto LABEL_182;
          }

          v59 += v94 - v73;
        }

        else
        {
          v74 = v94;
        }

        v82 = v90 - v74;
        if (__OFSUB__(v90, v74))
        {
          goto LABEL_177;
        }

        v83 = sub_26C008EBC();
        if (v83 >= v82)
        {
          v62 = v82;
        }

        else
        {
          v62 = v83;
        }

        result = v101;
        if (!v101)
        {
          goto LABEL_201;
        }

        v13 = v115;
        if (!v59)
        {
          goto LABEL_202;
        }

        goto LABEL_150;
      }

      if (v118 == 1)
      {
        if (v107 < v110)
        {
          goto LABEL_173;
        }

        v59 = sub_26C008E9C();
        if (v59)
        {
          v60 = sub_26C008ECC();
          if (__OFSUB__(v110, v60))
          {
            goto LABEL_183;
          }

          v59 += v110 - v60;
        }

        v61 = sub_26C008EBC();
        v62 = v106;
        if (v61 < v106)
        {
          v62 = v61;
        }

        v13 = v115;
        result = v101;
        if (!v101)
        {
          goto LABEL_199;
        }

        if (!v59)
        {
          goto LABEL_195;
        }

LABEL_150:
        if (result == v59)
        {
          sub_26BE00258(v30, v29);
          sub_26BE00258(v13, v120);
          goto LABEL_156;
        }

        v72 = memcmp(result, v59, v62);
        sub_26BE00258(v30, v29);
        goto LABEL_152;
      }

      v75 = v101;
      *__s1 = v115;
      __s1[4] = v108;
      *&__s1[5] = *(&v115 + 5);
      __s1[7] = HIBYTE(v115);
      *&__s1[8] = v120;
      *&__s1[12] = WORD2(v120);
      if (!v101)
      {
        goto LABEL_192;
      }

LABEL_122:
      v72 = memcmp(v75, __s1, __n);
      sub_26BE00258(v30, v29);
LABEL_152:
      v21 = v116;
      goto LABEL_153;
    }

    if (v31)
    {
      if (v30 > v30 >> 32)
      {
        goto LABEL_167;
      }

      sub_26BE00608(v30, v29);
      v51 = sub_26C008E9C();
      if (v51)
      {
        v52 = v51;
        v53 = sub_26C008ECC();
        if (__OFSUB__(v30, v53))
        {
          goto LABEL_169;
        }

        v102 = (v30 - v53 + v52);
      }

      else
      {
        v102 = 0;
      }

      sub_26C008EBC();
      v13 = v115;
      if (v118 == 2)
      {
        v91 = *(v115 + 24);
        v95 = *(v115 + 16);
        v59 = sub_26C008E9C();
        if (v59)
        {
          v76 = sub_26C008ECC();
          v77 = v95;
          if (__OFSUB__(v95, v76))
          {
            goto LABEL_184;
          }

          v59 += v95 - v76;
        }

        else
        {
          v77 = v95;
        }

        v84 = v91 - v77;
        if (__OFSUB__(v91, v77))
        {
          goto LABEL_179;
        }

        v85 = sub_26C008EBC();
        if (v85 >= v84)
        {
          v62 = v84;
        }

        else
        {
          v62 = v85;
        }

        result = v102;
        if (!v102)
        {
          goto LABEL_196;
        }

        v13 = v115;
        if (!v59)
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      }

      if (v118 == 1)
      {
        if (v107 < v110)
        {
          goto LABEL_178;
        }

        v59 = sub_26C008E9C();
        if (v59)
        {
          v64 = sub_26C008ECC();
          if (__OFSUB__(v110, v64))
          {
            goto LABEL_185;
          }

          v59 += v110 - v64;
        }

        v65 = sub_26C008EBC();
        v62 = v106;
        if (v65 < v106)
        {
          v62 = v65;
        }

        v13 = v115;
        result = v102;
        if (!v102)
        {
          goto LABEL_200;
        }

        if (!v59)
        {
          goto LABEL_197;
        }

        goto LABEL_150;
      }

      v75 = v102;
      *__s1 = v115;
      __s1[4] = v108;
      *&__s1[5] = *(&v115 + 5);
      __s1[7] = HIBYTE(v115);
      *&__s1[8] = v120;
      *&__s1[12] = WORD2(v120);
      if (!v102)
      {
        goto LABEL_191;
      }

      goto LABEL_122;
    }

    *__s1 = v30;
    *&__s1[8] = v29;
    __s1[10] = BYTE2(v29);
    __s1[11] = BYTE3(v29);
    __s1[12] = BYTE4(v29);
    __s1[13] = BYTE5(v29);
    if (!v24)
    {
      goto LABEL_76;
    }

    if (v24 == 1)
    {
      if (v107 < v110)
      {
        goto LABEL_171;
      }

      sub_26BE00608(v30, v29);
      v42 = sub_26C008E9C();
      if (!v42)
      {
        goto LABEL_194;
      }

      v43 = v42;
      v44 = sub_26C008ECC();
      if (__OFSUB__(v110, v44))
      {
        goto LABEL_175;
      }

      v45 = (v110 - v44 + v43);
      v46 = sub_26C008EBC();
      if (!v45)
      {
        goto LABEL_188;
      }

      goto LABEL_109;
    }

    v104 = *(v13 + 16);
    v93 = *(v13 + 24);
    sub_26BE00608(v30, v29);
    v54 = sub_26C008E9C();
    if (v54)
    {
      v66 = sub_26C008ECC();
      v67 = v104;
      if (__OFSUB__(v104, v66))
      {
        goto LABEL_180;
      }

      v54 = &v104[v54 - v66];
    }

    else
    {
      v67 = v104;
    }

    v78 = v93 - v67;
    if (__OFSUB__(v93, v67))
    {
      goto LABEL_172;
    }

    v79 = sub_26C008EBC();
    if (!v54)
    {
      break;
    }

LABEL_130:
    if (v79 >= v78)
    {
      v80 = v78;
    }

    else
    {
      v80 = v79;
    }

    v81 = memcmp(__s1, v54, v80);
    sub_26BE00258(v30, v29);
    v17 = v114;
    v13 = v115;
    v21 = v116;
    v23 = v113;
    v24 = v118;
    if (!v81)
    {
LABEL_154:
      v86 = v13;
      v87 = v120;
      goto LABEL_155;
    }

LABEL_23:
    v19 = (v19 + 1) & v23;
    v20 = v19 >> 6;
    v22 = 1 << v19;
    if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  sub_26C008EBC();
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  result = sub_26C008EBC();
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
  return result;
}