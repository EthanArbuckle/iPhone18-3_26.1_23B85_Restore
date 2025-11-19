char *sub_1B40E6B20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B40E6C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19 - v10;
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_1B40E6464(a1, v11, &unk_1EB884C70);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  v14[5] = v12;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = v13;
  v15 = v12;

  sub_1B40E71A4(0, 0, v11, &unk_1B42AC518, v14);

  sub_1B42A01E8();
  swift_beginAccess();
  v16 = *(v13 + 16);
  if (v16)
  {
    swift_willThrow();
    v17 = v16;
  }
}

uint64_t sub_1B40E6DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a7;
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  v7[7] = v9;
  *v9 = v7;
  v9[1] = sub_1B40E6EC4;

  return v11(a1);
}

uint64_t sub_1B40E6EC4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B40E703C;
  }

  else
  {
    v2 = sub_1B40E6FD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B40E6FD8()
{
  sub_1B42A01F8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40E703C()
{
  v1 = v0[8];
  v2 = v0[6];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;

  swift_willThrow();
  sub_1B42A01F8();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B40E70E4(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v7 = v1[7];
  v6 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B40E6828;

  return sub_1B40E6DC8(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_1B40E71A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_1B40E6464(a3, &v24[-1] - v11, &unk_1EB884C70);
  v13 = sub_1B429FEE8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B40E26E8(v12, &unk_1EB884C70);
  }

  else
  {
    sub_1B429FED8();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B429FE78();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B429FC08();
      sub_1B40ECDCC(v20 + 32, v24);

      v21 = v24[0];
      sub_1B40E26E8(a3, &unk_1EB884C70);

      return v21;
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

  sub_1B40E26E8(a3, &unk_1EB884C70);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B40E7428()
{
  v0 = sub_1B42A0188();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B429FAB8();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1B42A0178();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  type metadata accessor for GCDAbuseShield();
  v9 = swift_allocObject();
  sub_1B40ED18C();
  sub_1B42A0168();
  sub_1B429FAA8();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1B42A01A8();
  *(v9 + 16) = result;
  qword_1ED9603B8 = v9;
  return result;
}

uint64_t *sub_1B40E75F0()
{
  if (qword_1ED95FB60 != -1)
  {
    swift_once();
  }

  return &qword_1ED9603B8;
}

uint64_t sub_1B40E7640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40E7668, 0, 0);
}

uint64_t sub_1B40E7668()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1B40E775C;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B40E7C78, v1, v4);
}

uint64_t sub_1B40E775C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B40E7898, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B40E7898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40E78FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v7 = sub_1B429FA98();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B429FAB8();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884880);
  v15 = sub_1B429FEB8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v25 - v18;
  v25 = *(v25 + 16);
  (*(v16 + 16))(&v25 - v18, a1, v15);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 2) = a5;
  *(v21 + 3) = v22;
  *(v21 + 4) = v27;
  (*(v16 + 32))(&v21[v20], v19, v15);
  aBlock[4] = sub_1B40ED020;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B40E7E24;
  aBlock[3] = &block_descriptor_0;
  v23 = _Block_copy(aBlock);

  sub_1B429FAA8();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1B40ED0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A78);
  sub_1B40ED128();
  sub_1B42A0368();
  MEMORY[0x1B8C72A40](0, v14, v10, v23);
  _Block_release(v23);
  (*(v29 + 8))(v10, v7);
  (*(v11 + 8))(v14, v28);
}

uint64_t sub_1B40E7C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v14 - v11;
  v10();
  (*(v5 + 16))(v8, v12, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884880);
  sub_1B429FEB8();
  sub_1B429FEA8();
  return (*(v5 + 8))(v12, a4);
}

uint64_t sub_1B40E7E24(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B40E7E68()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B40E7ED4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A70);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-v8];
  result = swift_beginAccess();
  if ((*(v0 + 16) & 1) == 0)
  {
    *(v0 + 16) = 1;
    v11 = OBJC_IVAR____TtC15TextRecognition12EmptyPromise_continuation;
    swift_beginAccess();
    sub_1B40E6464(v0 + v11, v4, &qword_1EB884A70);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_1B40E26E8(v4, &qword_1EB884A70);
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      sub_1B429FEA8();
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t sub_1B40E80D8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B40E81B4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B40E81B4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B40E82B0, 0, 0);
}

uint64_t sub_1B40E82C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14[-v6];
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A68);
  if (v8 == 1)
  {
    return sub_1B429FEA8();
  }

  v11 = *(v9 - 8);
  v12 = v9;
  (*(v11 + 16))(v7, a1, v9);
  (*(v11 + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC15TextRecognition12EmptyPromise_continuation;
  swift_beginAccess();
  sub_1B40ECFB0(v7, a2 + v13);
  return swift_endAccess();
}

uint64_t EmptyPromise.__deallocating_deinit()
{
  sub_1B40E26E8(v0 + OBJC_IVAR____TtC15TextRecognition12EmptyPromise_continuation, &qword_1EB884A70);

  return swift_deallocClassInstance();
}

uint64_t sub_1B40E84F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC15TextRecognition12EmptyPromise_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A68);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t _sSa15TextRecognitions8SendableRzlE35cappedConcurrencyOrderPreservingMap_9didCancel18maxConcurrentTasksSayqd__Gqd__xYaYbKYAc_s5Error_pSitYaKsABRd__lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40E85B0, 0, 0);
}

void sub_1B40E85B0()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  *(v0 + 96) = swift_getTupleTypeMetadata2();
  v8 = *(v0 + 40);
  *(v0 + 16) = sub_1B429FAC8();
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v0 + 16;
  *(v6 + 56) = v5;
  *(v6 + 64) = v8;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1B40E8714;

  JUMPOUT(0x1B40EA6E4);
}

uint64_t sub_1B40E8714()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B40E8A00;
  }

  else
  {

    v2 = sub_1B40E8830;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B40E8830()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[3] = v0[2];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = sub_1B429FE58();

  swift_getWitnessTable();
  v5 = sub_1B429FDA8();

  v0[4] = v5;
  v6 = swift_task_alloc();
  *v6 = v2;
  v6[1] = v1;
  KeyPath = swift_getKeyPath();

  v8 = swift_task_alloc();
  *(v8 + 16) = v2;
  *(v8 + 24) = KeyPath;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1B40EA9B8(sub_1B40EA998, v8, v4, v1, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1B40E8A00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40E8A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v16;
  v8[17] = v17;
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  v8[18] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[19] = TupleTypeMetadata2;
  v8[20] = *(TupleTypeMetadata2 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v10 = *(v16 - 8);
  v8[25] = v10;
  v8[26] = *(v10 + 64);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v11 = sub_1B42A0288();
  v8[29] = v11;
  v8[30] = *(v11 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884880);
  v12 = sub_1B429FFF8();
  v8[34] = v12;
  v8[35] = *(v12 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_getTupleTypeMetadata2();
  v13 = sub_1B42A0288();
  v8[38] = v13;
  v8[39] = *(v13 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B40E8DA8, 0, 0);
}

uint64_t sub_1B40E8DA8()
{
  v0[6] = v0[10];
  v1 = sub_1B429FE58();
  v0[42] = v1;
  WitnessTable = swift_getWitnessTable();
  v0[43] = WitnessTable;
  MEMORY[0x1B8C72640](v1, WitnessTable);
  v0[7] = v0[5];
  sub_1B42A0598();
  sub_1B42A0568();
  while (1)
  {
    v4 = v0[40];
    v3 = v0[41];
    v6 = v0[38];
    v5 = v0[39];
    v7 = v0[37];
    sub_1B42A0588();
    sub_1B42A0578();
    (*(v5 + 32))(v3, v4, v6);
    if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
    {
      break;
    }

    v8 = v0[41];
    v9 = v0[37];
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[16];
    v13 = v0[11];
    v14 = *v8;
    v0[44] = *v8;
    v15 = *(v9 + 48);
    v16 = *(v11 + 32);
    v0[45] = v16;
    v0[46] = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v16(v10, &v8[v15], v12);
    if (v14 >= v13)
    {
      v32 = swift_task_alloc();
      v0[47] = v32;
      v33 = sub_1B42A0008();
      *v32 = v0;
      v32[1] = sub_1B40E933C;
      v34 = v0[31];

      return sub_1B40EA160(v34, 0, 0, v33);
    }

    v41 = v0[44];
    v42 = v0[45];
    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[25];
    v20 = v0[18];
    v21 = v0[14];
    v22 = v0[15];
    v23 = v0[13];
    v24 = sub_1B429FEE8();
    v43 = *(v0 + 8);
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    (*(v19 + 16))(v18, v17, v43);
    v25 = (*(v19 + 80) + 80) & ~*(v19 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v43;
    *(v26 + 48) = v23;
    *(v26 + 56) = v41;
    *(v26 + 64) = v21;
    *(v26 + 72) = v22;
    v42(v26 + v25, v18, v43);
    v27 = v23;
    sub_1B42A0008();

    LOBYTE(v25) = sub_1B40EA4D0(v20, &unk_1B42AC618, v26);
    sub_1B40E26E8(v20, &unk_1EB884C70);
    v28 = v0[25];
    if ((v25 & 1) == 0)
    {
      v35 = v0[13];
      v36 = v0[28];
      v37 = v0[16];

      swift_willThrow();
      (*(v28 + 8))(v36, v37);
      v38 = v35;

      v39 = v0[1];

      return v39();
    }

    (*(v28 + 8))(v0[28], v0[16]);
  }

  sub_1B429FFB8();
  v29 = swift_task_alloc();
  v0[49] = v29;
  *v29 = v0;
  v29[1] = sub_1B40E9A7C;
  v30 = v0[34];
  v31 = v0[32];

  return MEMORY[0x1EEE6DAD8](v31, 0, 0, v30, v0 + 8);
}

uint64_t sub_1B40E933C()
{
  *(*v1 + 384) = v0;

  if (v0)
  {

    v2 = sub_1B40E9E34;
  }

  else
  {
    v2 = sub_1B40E9458;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B40E9458()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 240) + 8))(v1, *(v0 + 232));
  }

  else
  {
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);
    v7 = *(v0 + 136);
    (*(v3 + 32))(v4, v1, v2);
    (*(v3 + 16))(v5, v4, v2);
    v8 = *(v2 + 48);
    *v6 = *v5;
    (*(*(v7 - 8) + 32))(&v6[v8], &v5[v8], v7);
    sub_1B429FE58();
    sub_1B429FE48();
    (*(v3 + 8))(v4, v2);
  }

  v47 = sub_1B429FEE8();
  v46 = *(*(v47 - 8) + 56);
  while (1)
  {
    v48 = *(v0 + 352);
    v49 = *(v0 + 360);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 200);
    v12 = *(v0 + 144);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);
    v50 = *(v0 + 128);
    v46(v12, 1, 1, v47);
    (*(v11 + 16))(v10, v9, v50);
    v16 = (*(v11 + 80) + 80) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v50;
    *(v17 + 48) = v15;
    *(v17 + 56) = v48;
    *(v17 + 64) = v13;
    *(v17 + 72) = v14;
    v49(v17 + v16, v10, v50);
    v18 = v15;
    sub_1B42A0008();

    LOBYTE(v16) = sub_1B40EA4D0(v12, &unk_1B42AC618, v17);
    sub_1B40E26E8(v12, &unk_1EB884C70);
    v19 = *(v0 + 200);
    if ((v16 & 1) == 0)
    {
      break;
    }

    (*(v19 + 8))(*(v0 + 224), *(v0 + 128));
    v21 = *(v0 + 320);
    v20 = *(v0 + 328);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    v24 = *(v0 + 296);
    sub_1B42A0588();
    sub_1B42A0578();
    (*(v23 + 32))(v20, v21, v22);
    if ((*(*(v24 - 8) + 48))(v20, 1, v24) == 1)
    {

      sub_1B429FFB8();
      v43 = swift_task_alloc();
      *(v0 + 392) = v43;
      *v43 = v0;
      v43[1] = sub_1B40E9A7C;
      v44 = *(v0 + 272);
      v45 = *(v0 + 256);

      return MEMORY[0x1EEE6DAD8](v45, 0, 0, v44, v0 + 64);
    }

    v25 = *(v0 + 328);
    v26 = *(v0 + 296);
    v27 = *(v0 + 224);
    v28 = *(v0 + 200);
    v29 = *(v0 + 128);
    v30 = *(v0 + 88);
    v31 = *v25;
    *(v0 + 352) = *v25;
    v32 = *(v26 + 48);
    v33 = *(v28 + 32);
    *(v0 + 360) = v33;
    *(v0 + 368) = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v33(v27, v25 + v32, v29);
    if (v31 >= v30)
    {
      v34 = swift_task_alloc();
      *(v0 + 376) = v34;
      v35 = sub_1B42A0008();
      *v34 = v0;
      v34[1] = sub_1B40E933C;
      v36 = *(v0 + 248);

      return sub_1B40EA160(v36, 0, 0, v35);
    }
  }

  v38 = *(v0 + 104);
  v39 = *(v0 + 224);
  v40 = *(v0 + 128);

  swift_willThrow();
  (*(v19 + 8))(v39, v40);
  v41 = v38;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1B40E9A7C()
{

  if (v0)
  {
    v1 = sub_1B40E9F50;
  }

  else
  {
    v1 = sub_1B40E9B8C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B40E9B8C()
{
  v1 = v0[32];
  v2 = v0[19];
  v3 = v0[20];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = v0[17];
    v10 = *(v2 + 48);
    *v6 = *v1;
    v11 = *(*(v9 - 8) + 32);
    v11(&v6[v10], &v1[v10], v9);
    (*(v3 + 16))(v7, v6, v2);
    v12 = *(v2 + 48);
    *v8 = *v7;
    v11(&v8[v12], &v7[v12], v9);
    sub_1B429FE58();
    sub_1B429FE48();
    (*(v3 + 8))(v6, v2);
    v13 = swift_task_alloc();
    v0[49] = v13;
    *v13 = v0;
    v13[1] = sub_1B40E9A7C;
    v14 = v0[34];
    v15 = v0[32];

    return MEMORY[0x1EEE6DAD8](v15, 0, 0, v14, v0 + 8);
  }
}

uint64_t sub_1B40E9E34()
{
  (*(v0[25] + 8))(v0[28], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B40E9F50()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

void sub_1B40EA068()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B40E6828;

  JUMPOUT(0x1B40E8A6CLL);
}

uint64_t sub_1B40EA160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B40E17D0;

  return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
}

uint64_t sub_1B40EA224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40EA258, 0, 0);
}

uint64_t sub_1B40EA258()
{
  if (sub_1B429FF88())
  {
    v1 = v0[3];
    swift_willThrow();
    v2 = v1;
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[2];
    v8 = *(swift_getTupleTypeMetadata2() + 48);
    *v7 = v5;
    v11 = (v6 + *v6);
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_1B40EA3DC;
    v10 = v0[7];

    return v11(&v7[v8], v10);
  }
}

uint64_t sub_1B40EA3DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B40EA4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v19 - v8;
  v10 = *v3;
  v11 = swift_taskGroup_addPending();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B40E6464(a1, v9, &unk_1EB884C70);
  v12 = sub_1B429FEE8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    sub_1B429FED8();
    (*(v13 + 8))(v9, v12);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  sub_1B40E26E8(v9, &unk_1EB884C70);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B429FE78();
  v16 = v15;
  swift_unknownObjectRelease();
LABEL_8:
  v17 = (v16 | v14);
  if (v16 | v14)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v14;
    v20[3] = v16;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v10;
  swift_task_create();
LABEL_11:

  return v11 & 1;
}

uint64_t sub_1B40EA6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1B40E6828;

  return MEMORY[0x1EEE6DD58](a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1B40EA7F4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  (*(v5 + 16))(v14 - v10);
  v12 = *(v4 + 48);
  *v8 = *v11;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v8[v12], &v11[v12]);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B40EA9B8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1B42A00A8();
  if (!v22)
  {
    return sub_1B429FE18();
  }

  v44 = v22;
  v48 = sub_1B42A04C8();
  v35 = sub_1B42A04D8();
  sub_1B42A0478();
  result = sub_1B42A0098();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1B42A00D8();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1B42A04B8();
      result = sub_1B42A00C8();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSa15TextRecognitions8SendableRzlE26cappedConcurrencyMapReduce4into3map6reduce9didCancel18maxConcurrentTasksqd_0_qd_0__qd__xYaYbKYAcyqd_0_z_qd__tKXEs5Error_pSitYaKsABRd__r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B40EAE18, 0, 0);
}

void sub_1B40EAE18()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v8 = *(v0 + 32);
  v7 = *(v0 + 48);
  *(v6 + 16) = *(v0 + 88);
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v7;
  *(v6 + 80) = v4;
  *(v6 + 88) = v8;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_1B40EAF44;

  JUMPOUT(0x1B40EA6E4);
}

uint64_t sub_1B40EAF44()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B40EB080, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B40EB080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40EB0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = v18;
  v8[21] = v19;
  v8[18] = v16;
  v8[19] = v17;
  v8[16] = a8;
  v8[17] = v15;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  v8[22] = swift_task_alloc();
  v8[23] = *(v18 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v9 = *(v17 - 8);
  v8[26] = v9;
  v8[27] = *(v9 + 64);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v10 = sub_1B42A0288();
  v8[30] = v10;
  v8[31] = *(v10 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884880);
  v11 = sub_1B429FFF8();
  v8[35] = v11;
  v8[36] = *(v11 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_getTupleTypeMetadata2();
  v12 = sub_1B42A0288();
  v8[39] = v12;
  v8[40] = *(v12 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B40EB3F4, 0, 0);
}

uint64_t sub_1B40EB3F4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(*(v0 + 168) - 8);
  *(v0 + 344) = v4;
  (*(v4 + 16))(v3, v1);
  *(v0 + 48) = v2;
  v5 = sub_1B429FE58();
  *(v0 + 352) = v5;
  WitnessTable = swift_getWitnessTable();
  *(v0 + 360) = WitnessTable;
  MEMORY[0x1B8C72640](v5, WitnessTable);
  *(v0 + 56) = *(v0 + 40);
  sub_1B42A0598();
  sub_1B42A0568();
  while (1)
  {
    v8 = *(v0 + 328);
    v7 = *(v0 + 336);
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = *(v0 + 304);
    sub_1B42A0588();
    sub_1B42A0578();
    (*(v9 + 32))(v7, v8, v10);
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
    {
      break;
    }

    v12 = *(v0 + 336);
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 152);
    v16 = *(v0 + 104);
    v17 = *v12;
    v18 = *(*(v0 + 304) + 48);
    v19 = *(v14 + 32);
    *(v0 + 368) = v19;
    *(v0 + 376) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v13, &v12[v18], v15);
    if (v17 >= v16)
    {
      v34 = swift_task_alloc();
      *(v0 + 384) = v34;
      v35 = sub_1B42A0008();
      *v34 = v0;
      v34[1] = sub_1B40EB9DC;
      v36 = *(v0 + 256);

      return sub_1B40EA160(v36, 0, 0, v35);
    }

    v20 = *(v0 + 368);
    v22 = *(v0 + 224);
    v21 = *(v0 + 232);
    v23 = *(v0 + 208);
    v24 = *(v0 + 176);
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v27 = sub_1B429FEE8();
    v47 = *(v0 + 128);
    v48 = *(v0 + 160);
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    (*(v23 + 16))(v22, v21, v25);
    v28 = (*(v23 + 80) + 80) & ~*(v23 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = v25;
    *(v29 + 40) = v48;
    *(v29 + 56) = v47;
    *(v29 + 72) = v26;
    v20(v29 + v28, v22, v25);
    v30 = v47;
    sub_1B42A0008();

    LOBYTE(v28) = sub_1B40EA4D0(v24, &unk_1B42AC608, v29);
    sub_1B40E26E8(v24, &unk_1EB884C70);
    if ((v28 & 1) == 0)
    {
      v37 = *(v0 + 344);
      v38 = *(v0 + 232);
      v39 = *(v0 + 208);
      v40 = *(v0 + 168);
      v41 = *(v0 + 152);
      v42 = *(v0 + 128);
      v43 = *(v0 + 72);

      swift_willThrow();
      (*(v39 + 8))(v38, v41);
      (*(v37 + 8))(v43, v40);
      v44 = v42;

      v45 = *(v0 + 8);

      return v45();
    }

    (*(*(v0 + 208) + 8))(*(v0 + 232), *(v0 + 152));
  }

  sub_1B429FFB8();
  v31 = swift_task_alloc();
  *(v0 + 400) = v31;
  *v31 = v0;
  v31[1] = sub_1B40EC12C;
  v32 = *(v0 + 280);
  v33 = *(v0 + 264);

  return MEMORY[0x1EEE6DAD8](v33, 0, 0, v32, v0 + 64);
}

uint64_t sub_1B40EB9DC()
{
  *(*v1 + 392) = v0;

  if (v0)
  {

    v2 = sub_1B40EC530;
  }

  else
  {
    v2 = sub_1B40EBAF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B40EBAF8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 256);
  v4 = (v0 + 160);
  v3 = *(v0 + 160);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0 + 248;
    v4 = (v0 + 240);
  }

  else
  {
    v6 = *(v0 + 392);
    v7 = *(v0 + 200);
    v57 = *(v0 + 112);
    v8 = *(v0 + 72);
    (*(v1 + 32))(v7, v2, v3);
    v57(v8, v7);
    if (v6)
    {
      v9 = *(v0 + 344);
      v10 = *(v0 + 232);
      v11 = *(v0 + 208);
      v12 = *(v0 + 168);
      v13 = *(v0 + 152);
      v14 = *(v0 + 72);
      (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 160));
      (*(v11 + 8))(v10, v13);

      (*(v9 + 8))(v14, v12);
LABEL_14:

      v50 = *(v0 + 8);

      return v50();
    }

    v2 = *(v0 + 200);
    v5 = v0 + 184;
  }

  (*(*v5 + 8))(v2, *v4);
  v55 = sub_1B429FEE8();
  v54 = *(*(v55 - 8) + 56);
  while (1)
  {
    v15 = *(v0 + 368);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 208);
    v19 = *(v0 + 176);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v56 = *(v0 + 128);
    v58 = *(v0 + 160);
    v54(v19, 1, 1, v55);
    (*(v18 + 16))(v17, v16, v20);
    v22 = (*(v18 + 80) + 80) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v20;
    *(v23 + 40) = v58;
    *(v23 + 56) = v56;
    *(v23 + 72) = v21;
    v15(v23 + v22, v17, v20);
    v24 = v56;
    sub_1B42A0008();

    LOBYTE(v22) = sub_1B40EA4D0(v19, &unk_1B42AC608, v23);
    sub_1B40E26E8(v19, &unk_1EB884C70);
    if ((v22 & 1) == 0)
    {
      v42 = *(v0 + 344);
      v43 = *(v0 + 232);
      v44 = *(v0 + 208);
      v45 = *(v0 + 168);
      v46 = *(v0 + 152);
      v47 = *(v0 + 128);
      v48 = *(v0 + 72);

      swift_willThrow();
      (*(v44 + 8))(v43, v46);
      (*(v42 + 8))(v48, v45);
      v49 = v47;
      goto LABEL_14;
    }

    (*(*(v0 + 208) + 8))(*(v0 + 232), *(v0 + 152));
    v26 = *(v0 + 328);
    v25 = *(v0 + 336);
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v29 = *(v0 + 304);
    sub_1B42A0588();
    sub_1B42A0578();
    (*(v27 + 32))(v25, v26, v28);
    if ((*(*(v29 - 8) + 48))(v25, 1, v29) == 1)
    {
      break;
    }

    v30 = *(v0 + 336);
    v31 = *(v0 + 232);
    v32 = *(v0 + 208);
    v33 = *(v0 + 152);
    v34 = *(v0 + 104);
    v35 = *v30;
    v36 = *(*(v0 + 304) + 48);
    v37 = *(v32 + 32);
    *(v0 + 368) = v37;
    *(v0 + 376) = (v32 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v37(v31, &v30[v36], v33);
    if (v35 >= v34)
    {
      v38 = swift_task_alloc();
      *(v0 + 384) = v38;
      v39 = sub_1B42A0008();
      *v38 = v0;
      v38[1] = sub_1B40EB9DC;
      v40 = *(v0 + 256);

      return sub_1B40EA160(v40, 0, 0, v39);
    }
  }

  sub_1B429FFB8();
  v51 = swift_task_alloc();
  *(v0 + 400) = v51;
  *v51 = v0;
  v51[1] = sub_1B40EC12C;
  v52 = *(v0 + 280);
  v53 = *(v0 + 264);

  return MEMORY[0x1EEE6DAD8](v53, 0, 0, v52, v0 + 64);
}

uint64_t sub_1B40EC12C()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1B40EC658;
  }

  else
  {
    v2 = sub_1B40EC240;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B40EC240()
{
  v1 = v0[33];
  v2 = v0[23];
  v3 = v0[20];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);

    v4 = v0[1];
LABEL_5:

    return v4();
  }

  v5 = v0[51];
  v6 = v0[24];
  v7 = v0[14];
  v8 = v0[9];
  (*(v2 + 32))(v6, v1, v3);
  v7(v8, v6);
  if (v5)
  {
    v9 = v0[43];
    v11 = v0[36];
    v10 = v0[37];
    v12 = v0[35];
    v13 = v0[21];
    v14 = v0[9];
    (*(v0[23] + 8))(v0[24], v0[20]);
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v14, v13);

    v4 = v0[1];
    goto LABEL_5;
  }

  (*(v0[23] + 8))(v0[24], v0[20]);
  v16 = swift_task_alloc();
  v0[50] = v16;
  *v16 = v0;
  v16[1] = sub_1B40EC12C;
  v17 = v0[35];
  v18 = v0[33];

  return MEMORY[0x1EEE6DAD8](v18, 0, 0, v17, v0 + 8);
}

uint64_t sub_1B40EC530()
{
  v1 = v0[43];
  v2 = v0[21];
  v3 = v0[9];
  (*(v0[26] + 8))(v0[29], v0[19]);
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B40EC658()
{
  v1 = v0[43];
  v2 = v0[21];
  v3 = v0[9];
  (*(v0[36] + 8))(v0[37], v0[35]);
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

void sub_1B40EC77C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B40E17D0;

  JUMPOUT(0x1B40EB0E4);
}

uint64_t type metadata accessor for EmptyPromise()
{
  result = qword_1ED95F4D0;
  if (!qword_1ED95F4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B40EC90C()
{
  sub_1B40EC9C0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B40EC9C0()
{
  if (!qword_1ED95E0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB884A68);
    v0 = sub_1B42A0288();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED95E0B8);
    }
  }
}

uint64_t sub_1B40ECA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40ECA50, 0, 0);
}

uint64_t sub_1B40ECA50()
{
  if (sub_1B429FF88())
  {
    v1 = v0[3];
    swift_willThrow();
    v2 = v1;
    v3 = v0[1];

    return v3();
  }

  else
  {
    v8 = (v0[4] + *v0[4]);
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1B40ECBA0;
    v6 = v0[6];
    v7 = v0[2];

    return v8(v7, v6);
  }
}

uint64_t sub_1B40ECBA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B40ECC94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B40E6828;

  JUMPOUT(0x1B40ECA24);
}

uint64_t sub_1B40ECDCC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B40ECE88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B40E6828;

  JUMPOUT(0x1B40EA224);
}

uint64_t sub_1B40ECFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884A70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B40ED020()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884880);
  v2 = *(sub_1B429FEB8() - 8);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_1B40E7C84(v3, v4, v5, v1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B40ED0D0()
{
  result = qword_1ED95E730[0];
  if (!qword_1ED95E730[0])
  {
    sub_1B429FA98();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED95E730);
  }

  return result;
}

unint64_t sub_1B40ED128()
{
  result = qword_1ED95E700;
  if (!qword_1ED95E700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB884A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E700);
  }

  return result;
}

unint64_t sub_1B40ED18C()
{
  result = qword_1ED95E6C8;
  if (!qword_1ED95E6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95E6C8);
  }

  return result;
}

id sub_1B40ED1D8(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC15TextRecognition35CRConfidenceThresholdProviderFacade_thresholdsForTextRegionBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1B40ED374()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRConfidenceThresholdProviderFacade();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CRGeometryUtilities __swiftcall CRGeometryUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

BOOL sub_1B40ED484(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = a4 - a2;
  v10 = a5 - a3;
  v11 = (a4 - a2) * (a9 - a7) - (a5 - a3) * (a8 - a6);
  if (v11 == 0.0)
  {
    return 0;
  }

  v13 = a3 * a4 - a2 * a5;
  v14 = a7 * a8 - a6 * a9;
  v15 = v13 * (a8 - a6) - v9 * v14;
  v16 = (v13 * (a9 - a7) - v10 * v14) / v11;
  *a1 = v15 / v11;
  a1[1] = v16;
  return (v15 / v11 - a6) * (v15 / v11 - a8) + (v16 - a7) * (v16 - a9) <= 0.0;
}

unint64_t type metadata accessor for CRGeometryUtilities()
{
  result = qword_1EB895470[0];
  if (!qword_1EB895470[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB895470);
  }

  return result;
}

uint64_t sub_1B40ED560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 1;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        sub_1B429F908();
      }

      else
      {
        sub_1B429F948();
      }
    }

    else if (a1 == 1)
    {
      sub_1B429F968();
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_21;
      }

      sub_1B429F918();
    }
  }

  else if (a1 <= 6)
  {
    if (a1 == 5)
    {
      sub_1B429F938();
    }

    else
    {
      sub_1B429F8F8();
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        sub_1B429F928();
        break;
      case 8:
        sub_1B429F958();
        break;
      case 9:
        sub_1B429F8E8();
        break;
      default:
        goto LABEL_21;
    }
  }

  v3 = 0;
LABEL_21:
  v4 = sub_1B429F978();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t CRDataDetectorsOutputRegion.dataDetectorMatch.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B429F8D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884B50);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v41 - v11;
  v13 = sub_1B429F978();
  v14 = *(v13 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v13, v15).n128_u64[0];
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B40ED560([v2 dataType], v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B40EDC14(v12);
LABEL_9:
    v32 = sub_1B429F8B8();
    return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  }

  v44 = v5;
  (*(v14 + 32))(v18, v12, v13);
  v19 = [v2 matchToOriginalIndexMapping];
  if (!v19 || (v20 = v19, sub_1B40E27B4(0, &qword_1ED95EE90), v21 = sub_1B429FDF8(), v20, v22 = sub_1B40EDC7C(v21), , !v22))
  {
    (*(v14 + 8))(v18, v13);
    goto LABEL_9;
  }

  v23 = [v2 originalString];
  if (!v23)
  {
    (*(v14 + 8))(v18, v13);

    goto LABEL_9;
  }

  v43 = a1;
  v24 = v23;
  v25 = sub_1B429FB98();
  v27 = v26;

  v28 = [v2 ddFriendlyString];
  v42 = v25;
  if (v28)
  {
    v29 = v28;
    v41 = sub_1B429FB98();
    v31 = v30;
  }

  else
  {

    v41 = v25;
    v31 = v27;
  }

  v34 = swift_allocObject();
  v34[2] = v41;
  v34[3] = v31;
  v34[4] = v22;
  v34[5] = v42;
  v34[6] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B42AC090;

  *(v35 + 32) = [v2 ddResult];
  sub_1B429F8C8();

  v36 = sub_1B429F8A8();

  (*(v44 + 8))(v8, v4);
  if (*(v36 + 16))
  {
    v37 = sub_1B429F8B8();
    v38 = *(v37 - 8);
    v39 = v43;
    (*(v38 + 16))(v43, v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v37);

    (*(v14 + 8))(v18, v13);
    return (*(v38 + 56))(v39, 0, 1, v37);
  }

  else
  {

    (*(v14 + 8))(v18, v13);
    v40 = sub_1B429F8B8();
    return (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }
}

uint64_t sub_1B40EDC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B40EDC7C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B42A0518())
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1B40EECF8(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_1B42A0518();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x1B8C72CD0](0, a1);
LABEL_10:
  v6 = v5;
  sub_1B42A0088();

  return 0;
}

uint64_t sub_1B40EDE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[0] = a6;
  v28[1] = a7;
  v12 = sub_1B429FA68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  v31 = a4;
  sub_1B40EEE90();
  v17 = sub_1B429FC58();
  if (v17 >= MEMORY[0x1B8C725A0](a3, a4))
  {
    v22 = sub_1B41255C4();
    (*(v13 + 16))(v16, v22, v12);
    v23 = sub_1B429FA48();
    v24 = sub_1B42A0138();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v25 = 136315138;
      v29[2] = a2;
      v29[3] = a1;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1B42A04E8();
      MEMORY[0x1B8C72530](3943982, 0xE300000000000000);
      sub_1B42A04E8();
      v27 = sub_1B40DDE8C(v30, v31, v29);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1B40D2000, v23, v24, "Could not construct range for matchRange: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B8C74FA0](v26, -1, -1);
      MEMORY[0x1B8C74FA0](v25, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v30 = a1;
    v31 = a2;
    v29[0] = a3;
    v29[1] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884B68);
    sub_1B40EEEE4();
    result = sub_1B42A0268();
    v20 = *(a5 + 16);
    if (result < v20)
    {
      v21 = result + v19;
      if (__OFADD__(result, v19))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v21 < v20)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            result = *(a5 + 32 + 8 * result);
            if (!__OFSUB__(*(a5 + 32 + 8 * v21), result))
            {
              return sub_1B42A00F8();
            }

            goto LABEL_17;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }
  }

  return 0;
}

id sub_1B40EE13C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a3 & 0xFFFFFFFFFFFFFF8;
  v11 = a3 >> 62;
  if (a3 >> 62)
  {
    v26 = sub_1B42A0518();
    if (v26)
    {
      v12 = v26;
      if (v26 >= 1)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v14 = 0.0;
    v15 = 2;
LABEL_11:
    v21 = sub_1B42A0518();
    goto LABEL_14;
  }

  v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    v14 = 0.0;
    v15 = 2;
    goto LABEL_13;
  }

LABEL_3:
  v27 = v11;
  v28 = a5;
  v13 = 0;
  v14 = 0.0;
  v15 = 2;
  do
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B8C72CD0](v13, a3);
    }

    else
    {
      v16 = *(a3 + 8 * v13 + 32);
    }

    v17 = v16;
    ++v13;
    [v16 baselineAngle];
    v19 = v18;
    v20 = [v17 confidence];

    if (v20 < v15)
    {
      v15 = v20;
    }

    v14 = v14 + v19;
  }

  while (v12 != v13);
  v10 = a3 & 0xFFFFFFFFFFFFFF8;
  a5 = v28;
  if (v27)
  {
    goto LABEL_11;
  }

LABEL_13:
  v21 = *(v10 + 16);
LABEL_14:
  v22 = [v5 initWithConfidence:v15 baselineAngle:v14 / v21];
  [v22 setDataType_];
  [v22 setDdResult_];
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v23 = sub_1B429FDE8();

  [v22 setChildren_];

  if (a5)
  {
    v24 = sub_1B429FB88();
  }

  else
  {
    v24 = 0;
  }

  [v22 setRecognizedLocale_];

  return v22;
}

uint64_t sub_1B40EE40C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 category];
  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        v8 = 5;
        goto LABEL_34;
      case 6:
        v8 = 6;
        goto LABEL_34;
      case 7:
        v8 = 10;
        goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (v7 == 1)
  {
    v9 = [a1 type];
    result = sub_1B429FB98();
    if (*MEMORY[0x1E69999C0])
    {
      v12 = result;
      v13 = v11;

      if (v12 == sub_1B429FB98() && v13 == v14)
      {

        v8 = 2;
      }

      else
      {
        v16 = sub_1B42A0678();

        if (v16)
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }
      }

      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_48;
  }

  if (v7 == 2)
  {
    v8 = 3;
    goto LABEL_34;
  }

  if (v7 != 3)
  {
LABEL_19:
    v17 = [a1 type];
    result = sub_1B429FB98();
    if (*MEMORY[0x1E69999C8])
    {
      v19 = result;
      v20 = v18;

      if (v19 == sub_1B429FB98() && v20 == v21)
      {
      }

      else
      {
        v23 = sub_1B42A0678();

        if ((v23 & 1) == 0)
        {
          v24 = [a1 type];
          result = sub_1B429FB98();
          if (*MEMORY[0x1E6999A50])
          {
            v26 = result;
            v27 = v25;

            if (v26 == sub_1B429FB98() && v27 == v28)
            {

              v8 = 8;
              goto LABEL_34;
            }

            v36 = sub_1B42A0678();

            if (v36)
            {
              v8 = 8;
              goto LABEL_34;
            }

            v37 = [a1 type];
            result = sub_1B429FB98();
            if (*MEMORY[0x1E6999A10])
            {
              v39 = result;
              v40 = v38;

              if (v39 == sub_1B429FB98() && v40 == v41)
              {

                v8 = 9;
              }

              else
              {
                v42 = sub_1B42A0678();

                if (v42)
                {
                  v8 = 9;
                }

                else
                {
                  v8 = 0;
                }
              }

              goto LABEL_34;
            }

LABEL_50:
            __break(1u);
            return result;
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      v8 = 7;
      goto LABEL_34;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = 4;
LABEL_34:
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v29 = sub_1B429FDE8();

  if (a4)
  {
    v30 = sub_1B429FB88();
  }

  else
  {
    v30 = 0;
  }

  v31 = [v4 initWithDataType:v8 ddResult:a1 children:v29 locale:v30];

  v32 = v31;
  v33 = sub_1B429FB88();

  [v32 setOriginalString_];

  v34 = sub_1B429FB88();

  [v32 setDdFriendlyString_];

  sub_1B40E27B4(0, &qword_1ED95EE90);
  v35 = sub_1B429FDE8();

  [v32 setMatchToOriginalIndexMapping_];

  return v32;
}

uint64_t CRDataDetectorsOutputRegion.debugDescription.getter()
{
  v1 = v0;
  swift_getObjectType();
  *&v15[8] = 0;
  sub_1B42A0408();
  swift_getMetatypeMetadata();
  v2 = sub_1B429FBE8();
  MEMORY[0x1B8C72530](v2);

  MEMORY[0x1B8C72530](0x7079546174616420, 0xEA00000000003A65);
  *v15 = [v0 dataType] >> 32;
  type metadata accessor for CRDetectedDataType(0);
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0x726F676574616320, 0xEA00000000003A79);
  v3 = [v0 ddResult];
  [v3 category];

  type metadata accessor for DDResultCategory(0);
  sub_1B42A04E8();
  MEMORY[0x1B8C72530](0xD000000000000010, 0x80000001B42B2E30);
  v4 = [v1 ddResult];
  v5 = [v4 matchedString];

  v6 = sub_1B429FB98();
  v8 = v7;

  MEMORY[0x1B8C72530](v6, v8);

  MEMORY[0x1B8C72530](0x656C61636F6C2027, 0xE90000000000003ALL);
  v9 = [v1 recognizedLocale];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B429FB98();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x1B8C72530](v11, v13);

  return *&v15[4];
}

char *sub_1B40EECF8(char *a1, int64_t a2, char a3)
{
  result = sub_1B40EED18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B40EED18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1B40EEE44(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1B40EEE90()
{
  result = qword_1ED95E728;
  if (!qword_1ED95E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E728);
  }

  return result;
}

unint64_t sub_1B40EEEE4()
{
  result = qword_1EB884B70;
  if (!qword_1EB884B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB884B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884B70);
  }

  return result;
}

const char *CRFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "next_gen_lm";
  }

  else
  {
    return "polygon_rectification";
  }
}

uint64_t CRFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

unint64_t sub_1B40EF034()
{
  result = qword_1EB884B78;
  if (!qword_1EB884B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884B78);
  }

  return result;
}

const char *sub_1B40EF09C()
{
  if (*v0)
  {
    return "next_gen_lm";
  }

  else
  {
    return "polygon_rectification";
  }
}

uint64_t sub_1B40EF0E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B40EF1B4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_1B40EF244(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1B40EF2AC(a1, a2, a3);
  return v6;
}

void sub_1B40EF2AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v19 - v11;
  swift_defaultActor_initialize();
  *(v5 + 120) = 0;
  v13 = [a2 languages];
  v14 = [v13 firstObject];

  if (v14)
  {
    type metadata accessor for CRNeuralTextRecognizer(0);
    sub_1B42A0348();
    swift_unknownObjectRelease();
    sub_1B40E28EC(&v20, &v21);
    swift_dynamicCast();
    v15 = v19[0];
    v16 = v19[1];
    sub_1B40DDA80(a3, v12);
    v17 = CRNeuralTextRecognizer.init(forLocale:imageReaderOptions:owner:)(v15, v16, a1, v12);
    if (v4)
    {
      type metadata accessor for CRSingleLocaleRecognizerProvider();
      swift_defaultActor_destroy();

      sub_1B40EF494(a3);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v18 = v17;
      sub_1B40EF494(a3);

      *(v5 + 112) = v18;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B40EF494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B40EF528()
{
  v1 = [*(v0 + 112) inferenceStats];

  return v1;
}

id sub_1B40EF560()
{
  v1 = [*(v0 + 112) decodingStats];

  return v1;
}

uint64_t CRSingleLocaleRecognizerProvider.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void (*sub_1B40EF67C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return sub_1B40EF70C;
}

void sub_1B40EF70C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1B40EF878(uint64_t a1)
{
  result = sub_1B40EF8A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B40EF8A0()
{
  result = qword_1EB884838;
  if (!qword_1EB884838)
  {
    type metadata accessor for CRSingleLocaleRecognizerProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884838);
  }

  return result;
}

id sub_1B40EFA9C(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  sub_1B40EFB78(a1);
  v3 = sub_1B429FAE8();

  v6[0] = 0;
  v4 = [v2 computeDeviceTypeForOptions:v3 mtlDevice:v6];

  swift_unknownObjectRetain();
  return v4;
}

unint64_t sub_1B40EFB78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884B88);
    v2 = sub_1B42A05F8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1B40E2888(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_1B40D4758(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        swift_dynamicCast();
        sub_1B40D4758(&v23, v25);
        sub_1B40D4758(v25, v26);
        sub_1B40D4758(v26, &v24);
        result = sub_1B40F0030(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_1B40D4758(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1B40D4758(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B40EFE04()
{
  v1 = v0;
  v2 = sub_1B429FA88();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E695FD10] || v8 == *MEMORY[0x1E695FD18] || v8 == *MEMORY[0x1E695FD08])
  {
    (*(v3 + 96))(v7, v2);
    return *v7;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1B42A0408();

    v13 = 0xD00000000000001CLL;
    v14 = 0x80000001B42B3090;
    sub_1B40EFFD8();
    v11 = sub_1B42A0648();
    MEMORY[0x1B8C72530](v11);

    result = sub_1B42A0548();
    __break(1u);
  }

  return result;
}

unint64_t sub_1B40EFFD8()
{
  result = qword_1EB884B80;
  if (!qword_1EB884B80)
  {
    sub_1B429FA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884B80);
  }

  return result;
}

unint64_t sub_1B40F0030(uint64_t a1, uint64_t a2)
{
  sub_1B42A0778();
  sub_1B429FC48();
  v4 = sub_1B42A07A8();

  return sub_1B40F00A8(a1, a2, v4);
}

unint64_t sub_1B40F00A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B42A0678())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1B40F0294(Swift::Double a1, uint64_t a2, uint64_t a3, Swift::Double *a4)
{
  v6._countAndFlagsBits = sub_1B429FB98();
  v7 = getTunableDouble(_:_:)(a1, v6);

  *a4 = v7;
  return result;
}

__n128 CRRegionFilterMultiLocale.init(locale:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 32) = &type metadata for CRSingleFeatureFilterLatin;
  *(a2 + 40) = &off_1F2BB0658;
  *(a2 + 8) = xmmword_1B42AC890;
  if (qword_1ED95F6C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED95F6C8;
  if (qword_1ED95F650 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED95F658;
  *(a2 + 72) = &type metadata for CRSingleFeatureFilterCJK;
  *(a2 + 80) = &off_1F2BB0690;
  v5 = swift_allocObject();
  *(a2 + 48) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v5 + 32) = xmmword_1B42AC8A0;
  if (qword_1ED95F6E0 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED95F6E8;
  if (qword_1ED95F670 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED95F678;
  *(a2 + 112) = &type metadata for CRSingleFeatureFilterCJK;
  *(a2 + 120) = &off_1F2BB0690;
  v8 = swift_allocObject();
  *(a2 + 88) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = xmmword_1B42AC8A0;
  if (qword_1ED95F6D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED95F6D8;
  if (qword_1ED95F660 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED95F668;
  *(a2 + 152) = &type metadata for CRSingleFeatureFilterCJK;
  *(a2 + 160) = &off_1F2BB0690;
  v11 = swift_allocObject();
  *(a2 + 128) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  result = xmmword_1B42AC8A0;
  *(v11 + 32) = xmmword_1B42AC8A0;
  return result;
}

uint64_t sub_1B40F0580(id *a1, uint64_t a2)
{
  v3 = *a1;
  if (([*a1 isCurved] & 1) == 0)
  {
    v5 = [v3 locale];
    v6 = sub_1B429FB98();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    CRLocale.init(rawValue:)(v9);
    if (LOBYTE(v15[0]) != 30)
    {
      v18[1] = v15[0];
      CRLocale.script.getter(v18);
      if (v18[0] <= 2u)
      {
        if (v18[0] >= 2u)
        {
          v10 = a2 + 48;
          goto LABEL_10;
        }
      }

      else if (v18[0] - 5 >= 2)
      {
        if (v18[0] == 3)
        {
          v10 = a2 + 88;
        }

        else
        {
          v10 = a2 + 128;
        }

        goto LABEL_10;
      }
    }

    v10 = a2 + 8;
LABEL_10:
    sub_1B40E33EC(v10, v15);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v13 = (*(v12 + 8))(v3, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v4 = v13 ^ 1;
    return v4 & 1;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1B40F06F0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B42A0518())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1B8C72CD0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1B42A0458();
        sub_1B42A0498();
        v4 = v15;
        sub_1B42A04A8();
        sub_1B42A0468();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

void sub_1B40F089C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v21 = *(a3 + 16);
  if (v21)
  {
    v6 = a1;
    v7 = 0;
    v8 = (a3 + 48);
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 < *(v5 + 16))
    {
      v11 = *(v8 - 1);
      v12 = *v8;
      v22[0] = *(v8 - 2);
      v10 = v22[0];
      v22[1] = v11;
      v22[2] = v12;
      swift_unknownObjectRetain();
      v13 = v10;
      v14 = v6(v22);
      if (v4)
      {

        swift_unknownObjectRelease();

        return;
      }

      if (v14)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B40F1380(0, *(v9 + 16) + 1, 1);
          v9 = v23;
        }

        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1B40F1380((v16 > 1), v17 + 1, 1);
          v9 = v23;
        }

        *(v9 + 16) = v17 + 1;
        v18 = (v9 + 24 * v17);
        v18[4] = v13;
        v18[5] = v11;
        v18[6] = v12;
        v5 = a3;
        v6 = a1;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v7;
      v8 += 3;
      if (v21 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

char *CRRegionFilterMultiLocale.filter(blocks:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1B42A0518();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v30[0] = MEMORY[0x1E69E7CC0];
    result = sub_1B40F1380(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = v30[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8C72CD0](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = sub_1B40F17E8(v8);
      v30[0] = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        v27 = v9;
        v15 = v10;
        v16 = v11;
        sub_1B40F1380((v12 > 1), v13 + 1, 1);
        v9 = v27;
        v10 = v15;
        v11 = v16;
        v7 = v30[0];
      }

      *(v7 + 16) = v13 + 1;
      v14 = (v7 + 24 * v13);
      v14[4] = v9;
      ++v6;
      v14[5] = v11;
      v14[6] = v10;
    }

    while (v3 != v6);
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v28) = *v1;
  CRLocale.script.getter(&v29);
  if (v29 <= 2u)
  {
    if (v29 >= 2u)
    {
      v17 = (v1 + 48);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v29 - 5 < 2)
  {
LABEL_19:
    v17 = (v1 + 8);
    goto LABEL_20;
  }

  if (v29 == 3)
  {
    v17 = (v1 + 88);
  }

  else
  {
    v17 = (v1 + 128);
  }

LABEL_20:
  v18 = sub_1B40E33EC(v17, v30);
  MEMORY[0x1EEE9AC00](v18, v19);
  v26[2] = v7;
  v26[3] = v30;

  sub_1B40F089C(sub_1B40F19DC, v26, v7);
  v21 = v20;

  v22 = *(v21 + 16);
  if (v22)
  {
    v28 = v4;
    sub_1B42A0488();
    v23 = 32;
    do
    {
      v24 = *(v21 + v23);
      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      v23 += 24;
      --v22;
    }

    while (v22);

    v25 = v28;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  return v25;
}

uint64_t sub_1B40F0CF8(void *a1, void *a2)
{
  v3 = [a1 subregions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  v4 = sub_1B429FDF8();

  if (v4 >> 62)
  {
    v5 = sub_1B42A0518();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  result = [a2 text];
  if (result)
  {
    v7 = result;
    sub_1B429FB98();

    v8 = sub_1B429FC68();

    return v8 < 3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B40F0E60(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v11 = sub_1B40F10D0(a1, a2, a4, a3);
  result = 0;
  if ((v11 & 1) != 0 && a2)
  {
    v13 = [swift_unknownObjectRetain() text];
    if (v13)
    {
      v14 = v13;
      sub_1B429FB98();

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        [v15 activationProbability];
        v17 = v16;
      }

      else
      {
        v17 = 1.0;
      }

      if (sub_1B429FC68() == 1 && v17 < a7)
      {
        swift_unknownObjectRelease();

        return 1;
      }

      else
      {
        v18 = sub_1B429FC68();

        swift_unknownObjectRelease();
        return v17 < a8 && v18 == 2;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

BOOL sub_1B40F0F98(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v9 = sub_1B40F10D0(a1, a2, a4, a3);
  result = 0;
  if ((v9 & 1) != 0 && a2)
  {
    v11 = [swift_unknownObjectRetain() text];
    if (v11)
    {
      v12 = v11;
      sub_1B429FB98();

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        [v13 activationProbability];
        v15 = v14;
      }

      else
      {
        v15 = 1.0;
      }

      if (sub_1B429FC68() == 1 && v15 < a5)
      {
        swift_unknownObjectRelease();

        return 1;
      }

      else
      {
        v16 = sub_1B429FC68();

        swift_unknownObjectRelease();
        return v15 < a6 && v16 == 2;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1B40F10D0(void *a1, void *a2, double a3, double a4)
{
  v7 = [a1 subregions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  v8 = sub_1B429FDF8();

  if (v8 >> 62)
  {
    v9 = sub_1B42A0518();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 != 1)
  {
    return 0;
  }

  if (!a2)
  {
    return (a4 * 20.0 < a3);
  }

  result = [a2 text];
  if (result)
  {
    v11 = result;
    sub_1B429FB98();

    v12 = sub_1B429FC68();

    if (v12 <= 1)
    {
      return (a4 * 20.0 < a3);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B40F120C(void *a1, double a2, double a3)
{
  [a1 activationProbability];
  v7 = v6;
  result = [a1 text];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = result;
  sub_1B429FB98();

  v10 = sub_1B429FC68();

  if (v10 == 1 && v7 < a2)
  {
    return 1;
  }

  result = [a1 text];
  if (!result)
  {
    goto LABEL_15;
  }

  v12 = result;
  sub_1B429FB98();

  v13 = sub_1B429FC68();

  return v7 < a3 && v13 > 1;
}

char *sub_1B40F1380(char *a1, int64_t a2, char a3)
{
  result = sub_1B40F13A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B40F13A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B40F14C0(void *a1)
{
  [a1 activationProbability];
  v3 = v2;
  result = [a1 text];
  if (!result)
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_1B429FB98();

  v6 = sub_1B429FC68();

  if (v6 == 1)
  {
    if (qword_1ED95F6B0 != -1)
    {
      swift_once();
    }

    if (v3 < *&qword_1ED95F6B8)
    {
      return 1;
    }
  }

  result = [a1 text];
  if (!result)
  {
    goto LABEL_29;
  }

  v7 = result;
  sub_1B429FB98();

  v8 = sub_1B429FC68();

  if (v8 == 2)
  {
    if (qword_1ED95F6A0 != -1)
    {
      swift_once();
    }

    if (v3 < *&qword_1ED95F6A8)
    {
      return 1;
    }
  }

  result = [a1 text];
  if (!result)
  {
    goto LABEL_30;
  }

  v9 = result;
  sub_1B429FB98();

  v10 = sub_1B429FC68();

  if (v10 == 3)
  {
    if (qword_1ED95F690 != -1)
    {
      swift_once();
    }

    if (v3 < *&qword_1ED95F698)
    {
      return 1;
    }
  }

  result = [a1 text];
  if (!result)
  {
    goto LABEL_31;
  }

  v11 = result;
  sub_1B429FB98();

  v12 = sub_1B429FC68();

  if (v12 == 4)
  {
    if (qword_1ED95F680 != -1)
    {
      swift_once();
    }

    if (v3 < *&qword_1ED95F688)
    {
      return 1;
    }
  }

  result = [a1 text];
  if (!result)
  {
    goto LABEL_32;
  }

  v13 = result;
  sub_1B429FB98();

  v14 = sub_1B429FC68();

  if (v14 >= 5)
  {
    if (qword_1ED95F640 != -1)
    {
      swift_once();
    }

    if (v3 < *&qword_1ED95F648)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B40F17E8(void *a1)
{
  v1 = a1;
  v2 = [v1 boundingQuad];
  [v2 topLeft];
  v4 = v3;
  v6 = v5;

  v7 = [v1 boundingQuad];
  [v7 bottomRight];
  v9 = v8;
  v11 = v10;

  v12 = [v1 boundingQuad];
  [v12 normalizationSize];
  v14 = v13;
  v16 = v15;

  distanceFromPointToPoint(v4, v6, v9, v11, v14, v16);
  v17 = [v1 subregions];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  v18 = sub_1B429FDF8();

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    return v1;
  }

  result = sub_1B42A0518();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v18 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8C72CD0](0, v18);
LABEL_6:

    if (!swift_dynamicCastObjCProtocolConditional())
    {
      swift_unknownObjectRelease();
    }

    return v1;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B40F19DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (sub_1B40F0CF8(*a1, v6))
  {
    sub_1B40F1A9C(v3, v4);
    v8 = v7;
    v9 = v2[3];
    v10 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v9);
    v11 = (*(v10 + 16))(v4, v6, v9, v10, v5, v8) ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

void sub_1B40F1A9C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = 1.79769313e308;
  v24 = *(a1 + 16);
  v23 = a1 + 32;
  sub_1B40F1DD0();
  while (1)
  {
    v6 = *(v4 + 24 * v3);
    swift_unknownObjectRetain();
    v7 = v6;
    if ((sub_1B42A0258() & 1) == 0)
    {
      break;
    }

    swift_unknownObjectRelease();

LABEL_4:
    if (++v3 == v2)
    {
      return;
    }
  }

  v26 = v7;
  v8 = [v7 subregions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  v9 = sub_1B429FDF8();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v10 = sub_1B42A0518();
  if (!v10)
  {
LABEL_26:
    swift_unknownObjectRelease();

    goto LABEL_4;
  }

LABEL_8:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8C72CD0](v11, v9);
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      goto LABEL_17;
    }

    if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    swift_unknownObjectRetain();
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

LABEL_17:
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      v14 = [v13 text];
      if (!v14)
      {
        goto LABEL_30;
      }

      v15 = v14;
      sub_1B429FB98();

      v16 = sub_1B429FC68();

      swift_unknownObjectRelease();
      if (v16 > 1)
      {

        v17 = [a2 boundingQuad];
        v18 = [v17 denormalizedQuad];

        v19 = [v26 boundingQuad];
        v20 = [v19 denormalizedQuad];

        [v18 shortestDistanceFromCornersOfQuad_];
        v22 = v21;

        swift_unknownObjectRelease();
        if (v5 >= v22)
        {
          v5 = v22;
        }

        goto LABEL_24;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v11;
    if (v12 == v10)
    {
      swift_unknownObjectRelease();

LABEL_24:
      v2 = v24;
      v4 = v23;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

unint64_t sub_1B40F1DD0()
{
  result = qword_1ED95E618;
  if (!qword_1ED95E618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95E618);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1B40F1E58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B40F1EA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_1B40F1F40(uint64_t a1, int a2)
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

uint64_t sub_1B40F1F60(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B40F1FB0(uint64_t *a1, int a2)
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

uint64_t sub_1B40F1FF8(uint64_t result, int a2, int a3)
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

uint64_t sub_1B40F2064@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1B40F20B0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t sub_1B40F213C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *sub_1B40F21D4()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_1B40F2218(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1B40F22E4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

void *CREngineAccurate.Result.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void *CREngineAccurate.Result.init()()
{
  result = v0;
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  return result;
}

uint64_t sub_1B40F2410()
{
  sub_1B40FBA40();
}

uint64_t sub_1B40F2438(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1B42A0518();
    sub_1B42A0488();
    v2 = sub_1B42A0518();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B42A0488();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8C72CD0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1B42A0458();
        sub_1B42A0498();
        sub_1B42A04A8();
        sub_1B42A0468();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_1B40F25AC(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1B42A0488();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B42A0518())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B8C72CD0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (!swift_dynamicCastObjCProtocolConditional())
      {

        return 0;
      }

      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1B42A0518();
    sub_1B42A0488();
  }

  return v8;
}

uint64_t sub_1B40F2718(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1B42A0518();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1B42A0518();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1B40FB7FC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B40FB89C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t CREngineAccurate.Result.deinit()
{

  return v0;
}

uint64_t CREngineAccurate.Result.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B40F28B8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1B40F2950()
{
  v1 = (*(*v0 + 96))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v3 += 8;

      sub_1B429FF68();

      --v2;
    }

    while (v2);
  }

  v4 = *(*v0 + 104);
  v5 = MEMORY[0x1E69E7CC0];

  return v4(v5);
}

uint64_t sub_1B40F2A3C(uint64_t a1)
{
  v3 = (*(*v1 + 112))(v11);
  v5 = v4;
  v6 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1B40FB6C8(0, v6[2] + 1, 1, v6);
    *v5 = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1B40FB6C8((v8 > 1), v9 + 1, 1, v6);
    *v5 = v6;
  }

  v6[2] = v9 + 1;
  v6[v9 + 4] = a1;

  return v3(v11, 0);
}

uint64_t sub_1B40F2B3C()
{
  v1 = *(*v0 + 112);

  v2 = v1(v8);
  v4 = v3;
  v5 = sub_1B40FBCD8(v3);

  v7 = *(*v4 + 16);
  if (v7 < v5)
  {
    __break(1u);
  }

  else
  {
    sub_1B40FBF44(v5, v7);
    return v2(v8, 0);
  }

  return result;
}

uint64_t sub_1B40F2BF8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B40F2C30()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  return v0;
}

id CREngineAccurate.confidenceThresholdProvider.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id sub_1B40F2C94()
{
  swift_beginAccess();
  v1 = *(*(v0 + 72) + 128);

  return v1;
}

id sub_1B40F2CDC()
{
  swift_beginAccess();
  v1 = *(*(v0 + 72) + 136);

  return v1;
}

id sub_1B40F2D24()
{
  swift_beginAccess();
  v1 = *(*(v0 + 72) + 144);

  return v1;
}

uint64_t sub_1B40F2D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  v6 = (*(*a3 + 248) + **(*a3 + 248));
  v4 = swift_task_alloc();
  *(v3 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_1B40F2EA8;

  return v6();
}

uint64_t sub_1B40F2EA8(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B40FD090, 0, 0);
}

uint64_t sub_1B40F2FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  swift_beginAccess();
  v9 = *(v2 + 80);
  v10 = sub_1B429FEE8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  swift_retain_n();

  sub_1B40E6C14(v7, a2, v11, MEMORY[0x1E69E7CA8] + 8);
  sub_1B40E26E8(v7, &unk_1EB884C70);

  swift_beginAccess();
  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = v12;

    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B40F31AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  v6 = (*(*a3 + 256) + **(*a3 + 256));
  v4 = swift_task_alloc();
  *(v3 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_1B40F32CC;

  return v6();
}

uint64_t sub_1B40F32CC(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B40F33CC, 0, 0);
}

uint64_t sub_1B40F33CC()
{
  v1 = v0[7];
  v2 = v0[5];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = v0[1];

  return v4();
}

id sub_1B40F3450()
{
  swift_beginAccess();
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_groupingStats);

  return v1;
}

void *sub_1B40F34A4()
{
  swift_beginAccess();
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_orientationStats);
  v2 = v1;
  return v1;
}

uint64_t CREngineAccurate.ocrDetector.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t CREngineAccurate.__allocating_init(configuration:owner:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CREngineAccurate.init(configuration:owner:)(a1, a2);
  return v4;
}

uint64_t CREngineAccurate.init(configuration:owner:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v149 = a2;
  v152 = a1;
  v143 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v130 = &v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v136 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v141 = &v125 - v12;
  v137 = sub_1B429FA68();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v13);
  v139 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v133 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v148 = &v125 - v20;
  v21 = sub_1B429FA88();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v134 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v140 = &v125 - v27;
  v147 = sub_1B429F9B8();
  v28 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v29);
  v145 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v125 - v33;
  v35 = sub_1B429F9E8();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  type metadata accessor for CREngineAccurate.RecognizerTasks();
  *(v2 + 2) = 0u;
  v129 = (v2 + 4);
  v2[11] = 0;
  v128 = (v2 + 11);
  *(v2 + 3) = 0u;
  v2[8] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v40 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v40 + 112) = MEMORY[0x1E69E7CC0];
  v3[14] = v40;
  v153 = v22;
  v41 = *(v22 + 56);
  v150 = OBJC_IVAR____TtC15TextRecognition16CREngineAccurate_requestedComputeDevice;
  v151 = v21;
  v132 = v22 + 56;
  v131 = v41;
  v41(v3 + OBJC_IVAR____TtC15TextRecognition16CREngineAccurate_requestedComputeDevice, 1, 1, v21);
  v42 = OBJC_IVAR____TtC15TextRecognition16CREngineAccurate__loadFormAnalyzerLock;
  v43 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v142 = v42;
  *(v3 + v42) = v43;
  v44 = sub_1B410F8A0();
  v45 = *(v36 + 16);
  v146 = v35;
  v45(v39, v44, v35);
  v46 = sub_1B410F91C();
  v47 = *v46;
  v48 = *(v46 + 16);
  sub_1B429F9A8();
  v49 = sub_1B429F9C8();
  v138 = sub_1B42A01C8();
  if ((sub_1B42A0278() & 1) == 0)
  {
    goto LABEL_10;
  }

  v126 = v39;
  v127 = v3;
  if (v48)
  {
LABEL_5:
    if (v47 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v47 & 0xFFFFF800) == 0xD800)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v47 >> 16 <= 0x10)
      {
        v47 = &v155;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  if (!v47)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v50 = swift_slowAlloc();
  *v50 = 0;
  v51 = sub_1B429F998();
  _os_signpost_emit_with_name_impl(&dword_1B40D2000, v49, v138, v51, v47, "", v50, 2u);
  MEMORY[0x1B8C74FA0](v50, -1, -1);
  v3 = v127;
  v39 = v126;
LABEL_10:

  v52 = v147;
  (*(v28 + 16))(v145, v34, v147);
  sub_1B429FA28();
  swift_allocObject();
  v53 = sub_1B429FA18();
  (*(v28 + 8))(v34, v52);
  (*(v36 + 8))(v39, v146);
  v54 = v152;
  v55 = v152[3];
  v56 = v152[4];
  __swift_project_boxed_opaque_existential_0(v152, v55);
  v3[15] = (*(v56 + 24))(v55, v56);
  v57 = v54[3];
  v58 = v54[4];
  __swift_project_boxed_opaque_existential_0(v54, v57);
  v59 = v148;
  (*(v58 + 96))(v57, v58);
  v60 = v153;
  v61 = v151;
  v62 = (*(v153 + 48))(v59, 1, v151);
  v63 = v59;
  if (v62 == 1)
  {
    sub_1B40E26E8(v59, &unk_1EB884C80);
    v49 = v144;
    goto LABEL_17;
  }

  v64 = v140;
  (*(v60 + 32))(v140, v63, v61);
  v65 = v54[3];
  v66 = v54[4];
  __swift_project_boxed_opaque_existential_0(v54, v65);
  (*(v66 + 24))(v65, v66);
  v67 = objc_opt_self();
  v68 = [v67 allComputeDevices];
  v49 = v144;
  if (!v68)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
    sub_1B429FDF8();
    v68 = sub_1B429FDE8();
  }

  v69 = [v67 computeDevices:v68 ofTypes:7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
  v70 = sub_1B429FDF8();

  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v125 - 2) = v64;
  v73 = sub_1B40F4BCC(sub_1B40FC360, (&v125 - 4), v70);
  if (!v49)
  {
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      v148 = v53;
      v83 = sub_1B41252AC();
      v84 = v135;
      v85 = v137;
      (*(v135 + 16))(v139, v83, v137);
      v86 = v153;
      v87 = v134;
      (*(v153 + 16))(v134, v64, v61);
      v88 = sub_1B429FA48();
      v89 = sub_1B42A0138();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *&v154 = v147;
        *v90 = 136315138;
        LODWORD(v146) = v89;
        v91 = sub_1B429FA78();
        v93 = v92;
        v94 = *(v86 + 8);
        v94(v87, v151);
        v95 = sub_1B40DDE8C(v91, v93, &v154);
        v64 = v140;

        *(v90 + 4) = v95;
        v96 = v94;
        _os_log_impl(&dword_1B40D2000, v88, v146, "Unsupported compute device requested: %s", v90, 0xCu);
        v97 = v147;
        __swift_destroy_boxed_opaque_existential_0(v147);
        v98 = v97;
        v61 = v151;
        MEMORY[0x1B8C74FA0](v98, -1, -1);
        MEMORY[0x1B8C74FA0](v90, -1, -1);

        (*(v84 + 8))(v139, v137);
      }

      else
      {

        v96 = *(v86 + 8);
        v96(v87, v61);
        (*(v84 + 8))(v139, v85);
      }

      sub_1B40DF594();
      swift_allocError();
      *v99 = 1;
      *(v99 + 4) = 1;
      swift_willThrow();
      v96(v64, v61);
      v54 = v152;
      v78 = v149;
      goto LABEL_23;
    }

    v75 = v153;
    v76 = v133;
    (*(v153 + 16))(v133, v64, v61);
    v131(v76, 0, 1, v61);
    v77 = v150;
    swift_beginAccess();
    sub_1B40FC3A8(v76, v3 + v77);
    swift_endAccess();
    (*(v75 + 8))(v64, v61);
LABEL_17:
    type metadata accessor for CRTextDetectionPipeline();
    sub_1B40E33EC(v54, &v154);
    v78 = v149;
    v79 = v141;
    sub_1B40E6464(v149, v141, &unk_1EB884870);
    v80 = CRTextDetectionPipeline.__allocating_init(configuration:owner:)(&v154, v79);
    if (!v49)
    {
      v3[9] = v80;
      type metadata accessor for CRConcurrentRecognitionPipeline();
      sub_1B40E33EC(v54, &v154);
      v81 = v136;
      sub_1B40E6464(v78, v136, &unk_1EB884870);
      v82 = sub_1B411D20C(&v154, v81);
      v148 = v53;
      v3[10] = v82;
      v101 = objc_allocWithZone(CRPerformanceStatistics);
      v102 = sub_1B429FB88();
      v103 = [v101 initWithName:v102 measureRecentPeak:0];

      v3[3] = v103;
      *(v3 + 128) = 0;
      v104 = v54[3];
      v105 = v54[4];
      __swift_project_boxed_opaque_existential_0(v54, v104);
      if (((*(v105 + 168))(v104, v105) & 1) == 0)
      {
        v106 = [objc_allocWithZone(CRLineWrappingConfiguration) init];
        v107 = [objc_allocWithZone(CRLineWrapper) initWithConfiguration_];

        v108 = *v128;
        *v128 = v107;

        v109 = objc_allocWithZone(CRPerformanceStatistics);
        v110 = sub_1B429FB88();
        v111 = [v109 initWithName:v110 measureRecentPeak:1];

        v112 = v129;
        swift_beginAccess();
        v113 = *v112;
        *v112 = v111;

        v114 = objc_allocWithZone(CRPerformanceStatistics);
        v115 = sub_1B429FB88();
        v116 = [v114 initWithName:v115 measureRecentPeak:1];

        swift_beginAccess();
        v117 = v3[5];
        v3[5] = v116;
      }

      type metadata accessor for CRConfidenceThresholdProviderFacade();
      v118 = swift_allocObject();
      swift_weakInit();
      v119 = sub_1B40ED1D8(sub_1B40FC198, v118);
      v120 = v3[2];
      v3[2] = v119;

      swift_beginAccess();
      v121 = v3[10];
      v122 = sub_1B429FEE8();
      v123 = v130;
      (*(*(v122 - 8) + 56))(v130, 1, 1, v122);
      sub_1B40E33EC(v54, &v154);
      v124 = swift_allocObject();
      v124[2] = 0;
      v124[3] = 0;
      v124[4] = v121;
      sub_1B40D5F90(&v154, (v124 + 5));

      sub_1B40E4100(0, 0, v123, &unk_1B42ACAF0, v124);

      sub_1B40F4770();

      sub_1B40E26E8(v149, &unk_1EB884870);
      goto LABEL_24;
    }

LABEL_23:
    sub_1B40F4770();

    sub_1B40E26E8(v78, &unk_1EB884870);

    sub_1B40E26E8(v3 + v150, &unk_1EB884C80);

    swift_deallocPartialClassInstance();
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0(v54);
    return v3;
  }

LABEL_31:

  sub_1B40E26E8(v3 + v150, &unk_1EB884C80);

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1B40F4770()
{
  v0 = sub_1B429F9F8();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B429F9B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B429F9E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B410F8A0();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_1B410F91C();
  v30 = *v14;
  v15 = *(v14 + 16);
  v16 = sub_1B429F9C8();
  sub_1B429FA08();
  v26 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  v25 = v4;
  if ((v15 & 1) == 0)
  {
    if (v30)
    {
      v18 = v29;
LABEL_9:

      sub_1B429FA38();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v18, v28) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v18, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v16, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x1B8C74FA0](v22, -1, -1);
      v4 = v25;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v30 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    v18 = v29;
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static CREngineAccurate.supportedComputeDevices(revision:)()
{
  v0 = objc_opt_self();
  v1 = [v0 allComputeDevices];
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
    sub_1B429FDF8();
    v1 = sub_1B429FDE8();
  }

  v2 = [v0 computeDevices:v1 ofTypes:7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
  v3 = sub_1B429FDF8();

  return v3;
}

uint64_t sub_1B40F4BCC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1B8C72CD0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);
        swift_unknownObjectRelease();
        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1B42A0518();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1B40F4D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B40F4D28, 0, 0);
}

uint64_t sub_1B40F4D28()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = (*(v4 + 120))(v3, v4);
  v8 = (*(*v2 + 296) + **(*v2 + 296));
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1B40F4E9C;

  return v8(v5 & 1);
}

uint64_t sub_1B40F4E9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CREngineAccurate.resultDocument(for:roi:configuration:trackingSession:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_1B429F9F8();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  v9 = sub_1B429F9B8();
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v10 = sub_1B429F9E8();
  v7[34] = v10;
  v7[35] = *(v10 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B40F5138, 0, 0);
}

uint64_t sub_1B40F5138()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[25];
    v3 = v0[21];
    v4 = v0[19];
    v0[18] = 0;
    swift_beginAccess();
    v5 = *(v2 + 80);
    v0[38] = v5;
    v6 = swift_task_alloc();
    v0[39] = v6;
    v6[2] = v0 + 18;
    v6[3] = v2;
    v6[4] = v1;
    v6[5] = v4;
    v6[6] = v3;
    v7 = *(*v5 + 288);
    v8 = v1;

    v39 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_1B40F560C;

    return (v39)(&unk_1B42ACB30, v6);
  }

  v11 = v0[37];
  v12 = v0[34];
  v13 = v0[35];
  v14 = sub_1B410F8A0();
  v0[42] = v14;
  v15 = *(v13 + 16);
  v0[43] = v15;
  v0[44] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v11, v14, v12);
  v16 = sub_1B410F934();
  v0[45] = v16;
  v17 = *v16;
  v18 = *(v16 + 16);
  sub_1B429F9A8();
  v19 = sub_1B429F9C8();
  v20 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if (result)
  {
    if ((v18 & 1) == 0)
    {
      if (v17)
      {
LABEL_13:
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v19, v20, v22, v17, "", v21, 2u);
        MEMORY[0x1B8C74FA0](v21, -1, -1);
        goto LABEL_14;
      }

      __break(1u);
    }

    if (v17 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v17 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v17 >> 16 <= 0x10)
      {
        v17 = (v0 + 17);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:

  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[35];
  v26 = v0[33];
  v27 = v0[29];
  v28 = v0[30];
  v29 = v0[25];
  v30 = v0[21];
  (*(v28 + 16))(v0[32], v26, v27);
  sub_1B429FA28();
  swift_allocObject();
  v0[46] = sub_1B429FA18();
  v31 = *(v28 + 8);
  v0[47] = v31;
  v0[48] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v26, v27);
  v32 = *(v25 + 8);
  v0[49] = v32;
  v0[50] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v23, v24);
  type metadata accessor for CREngineAccurate.Result();
  v33 = swift_allocObject();
  v0[51] = v33;
  v33[2] = MEMORY[0x1E69E7CC0];
  v33[3] = 0;
  v33[4] = 0;
  v33[5] = 0;
  sub_1B40E33EC(v30, (v0 + 2));
  swift_beginAccess();
  v34 = *(v29 + 72);
  v0[52] = v34;
  v35 = *(*v34 + 224);

  v40 = (v35 + *v35);
  v36 = swift_task_alloc();
  v0[53] = v36;
  *v36 = v0;
  v36[1] = sub_1B40F57F4;
  v38 = v0[19];
  v37 = v0[20];

  return (v40)(v38, v0 + 2, v37, 0);
}

uint64_t sub_1B40F560C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1B40F6498;
  }

  else
  {

    v2 = sub_1B40F5730;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B40F5730()
{
  v1 = *(v0 + 144);
  if (v1)
  {

    v2 = *(v0 + 8);

    v2(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B40F57F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_1B40F5BB0;
  }

  else
  {
    v4 = sub_1B40F5928;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B40F5928()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[42];
  v4 = v0[36];
  v5 = v0[34];
  sub_1B40E26E8((v0 + 2), &unk_1EB8855F0);
  v2(v4, v3, v5);
  v6 = *v1;
  v7 = *(v1 + 16);
  v8 = sub_1B429F9C8();
  sub_1B429FA08();
  v9 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if (result)
  {
    if ((v7 & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v12 = v0[27];
        v11 = v0[28];
        v13 = v0[26];

        sub_1B429FA38();

        if ((*(v12 + 88))(v11, v13) == *MEMORY[0x1E69E93E8])
        {
          v14 = "[Error] Interval already ended";
        }

        else
        {
          (*(v0[27] + 8))(v0[28], v0[26]);
          v14 = "";
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v8, v9, v16, v6, v14, v15, 2u);
        MEMORY[0x1B8C74FA0](v15, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_13:
  v17 = v0[49];
  v18 = v0[47];
  v19 = v0[36];
  v20 = v0[34];
  v21 = v0[31];
  v22 = v0[29];
  v23 = v8;
  v24 = v0[23];

  v18(v21, v22);
  v17(v19, v20);
  if (v24)
  {
    (v0[23])(0, 0.5);
  }

  v25 = swift_task_alloc();
  v0[56] = v25;
  *v25 = v0;
  v25[1] = sub_1B40F5C88;

  return sub_1B40F6C14();
}

uint64_t sub_1B40F5BB0()
{
  sub_1B40E26E8(v0 + 16, &unk_1EB8855F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40F5C88()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1B40F6560;
  }

  else
  {
    v2 = sub_1B40F5D9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B40F5D9C()
{
  v1 = v0[21];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  if ((*(v3 + 192))(v2, v3))
  {
    v4 = v0[54];
    v5 = v0[51];
    v6 = v0[25];
    v7 = v0[19];
    swift_beginAccess();
    v8 = *(*(v6 + 80) + OBJC_IVAR____TtC15TextRecognition31CRConcurrentRecognitionPipeline_groupingStats);
    v9 = sub_1B410F988();
    v10 = *v9;
    v11 = *(v9 + 16);
    v12 = swift_task_alloc();
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v4;
    sub_1B40FF6E8(v10, v11, sub_1B40FC480, v12, MEMORY[0x1E69E7CA8]);

    [v7 size];
    v14 = v13;
    v16 = v15;
    v17 = swift_task_alloc();
    v0[63] = v17;
    *v17 = v0;
    v17[1] = sub_1B40F6274;
    v18 = v0[51];

    return CREngineAccurate._documentOutputRegionResult(_:imageSize:)(v18, v14, v16);
  }

  else
  {
    v21 = v0[23];
    v20 = v0[24];
    v23 = v1[3];
    v22 = v1[4];
    __swift_project_boxed_opaque_existential_0(v0[21], v23);
    v24 = (*(v22 + 560))(v23, v22);
    v0[58] = v24;
    v25 = swift_allocObject();
    v0[59] = v25;
    v25[2] = v21;
    v25[3] = v20;
    v25[4] = 0x3FE0000000000000;
    sub_1B40D5FF0(v21);
    v26 = swift_task_alloc();
    v0[60] = v26;
    *v26 = v0;
    v26[1] = sub_1B40F606C;
    v27 = v0[54];
    v28 = v0[19];

    return sub_1B40F714C(v27, v28, v24, sub_1B40FC43C, v25);
  }
}

uint64_t sub_1B40F606C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v5 = sub_1B40F66F0;
  }

  else
  {

    *(v4 + 496) = a1;
    v5 = sub_1B40F61A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B40F61A4()
{

  v1 = *(v0 + 496);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B40F6274(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v5 = sub_1B40F6628;
  }

  else
  {
    *(v4 + 520) = a1;
    v5 = sub_1B40F639C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B40F639C()
{
  v1 = v0[65];
  v2 = v0[54];
  v3 = sub_1B40FD684(v2);
  [v1 setDetectorResults_];

  v4 = v0[65];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1B40F6498()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B40F6560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40F6628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40F66F0()
{
  v1 = *(v0 + 432);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B40F67C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40F67F0, 0, 0);
}

uint64_t sub_1B40F67F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v4);
  v6 = (*(v5 + 560))(v4, v5);
  v7 = sub_1B415686C(v3, v2, v6);

  v8 = v0[2];
  v9 = *v8;
  *v8 = v7;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B40F68E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40F690C, 0, 0);
}

uint64_t sub_1B40F690C()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[10] = v2;
  v3 = *(*v2 + 224);

  v10 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1B40F6A58;
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  return v10(v8, v5, v7, v6);
}

uint64_t sub_1B40F6A58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B40F6BB0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B40F6BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40F6C34()
{
  if (*(v0[8] + 128) == 1)
  {
    sub_1B429FEC8();
    sub_1B40FCFE4(&qword_1ED95E720, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1B429FAD8();
    swift_willThrow();
    v1 = v0[1];
LABEL_8:

    return v1();
  }

  if ((sub_1B429FF88() & 1) == 0)
  {
    v1 = v0[1];
    goto LABEL_8;
  }

  v2 = v0[8];
  swift_beginAccess();
  v3 = *(v2 + 72);
  v0[9] = v3;
  v4 = *(*v3 + 208);

  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1B40F6E38;

  return v7();
}

uint64_t sub_1B40F6E38()
{

  return MEMORY[0x1EEE6DFA0](sub_1B40F6F50, 0, 0);
}

uint64_t sub_1B40F6F50()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[11] = v2;
  v3 = *v2;
  v0[12] = *(*v2 + 344);
  v0[13] = (v3 + 344) & 0xFFFFFFFFFFFFLL | 0xD8D1000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1B40F7010, v2, 0);
}

uint64_t sub_1B40F7010()
{
  (*(v0 + 96))();

  return MEMORY[0x1EEE6DFA0](sub_1B40F7084, 0, 0);
}

uint64_t sub_1B40F7084()
{
  sub_1B429FEC8();
  sub_1B40FCFE4(&qword_1ED95E720, MEMORY[0x1E69E8550]);
  swift_allocError();
  sub_1B429FAD8();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40F714C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[39] = a5;
  v6[40] = v5;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = sub_1B429FA68();
  v6[41] = v7;
  v6[42] = *(v7 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C90);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v8 = sub_1B429F658();
  v6[46] = v8;
  v6[47] = *(v8 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B40F72C0, 0, 0);
}

uint64_t sub_1B40F72C0()
{
  v1 = v0[40];
  v15 = v0[39];
  v14 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = swift_allocObject();
  v0[50] = v4;
  *(v4 + 16) = 0;
  swift_beginAccess();
  v5 = *(v1 + 112);
  v0[51] = v5;
  swift_beginAccess();
  v6 = *(v1 + 24);
  v0[52] = v6;

  v6;
  v7 = sub_1B410F928();
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = swift_task_alloc();
  v0[53] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v1;
  v11[5] = v2;
  v11[6] = v14;
  v11[7] = v15;
  v11[8] = v5;
  v12 = swift_task_alloc();
  v0[54] = v12;
  *v12 = v0;
  v12[1] = sub_1B40F7454;

  return sub_1B40FFD6C(v12, v8, v9, v10, &unk_1B42ACB50, v11);
}

uint64_t sub_1B40F7454()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_1B40F81DC;
  }

  else
  {

    v3 = sub_1B40F7578;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B40F7578()
{
  v1 = v0[50];
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v0[37];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = sub_1B40FC7D4(MEMORY[0x1E69E7CC0]);
  }

  v0[56] = v4;
  v6 = v0[50];
  v7 = v0[40];
  v9 = v0[35];
  v8 = v0[36];

  v10 = sub_1B4124D84(v9, v3, v8, v5);

  result = swift_beginAccess();
  if (!*(v6 + 16))
  {
    goto LABEL_18;
  }

  v11 = v0[35];
  v12 = *(**(v7 + 80) + 328);

  v14 = v12(v13, v10);

  type metadata accessor for CREngineAccurate.Result();
  v15 = swift_allocObject();
  v15[2] = MEMORY[0x1E69E7CC0];
  v0[57] = v15;
  v15[3] = 0;
  v15[4] = 0;
  v15[5] = 0;
  swift_beginAccess();
  v15[2] = v14;
  v16 = [v11 lines];
  sub_1B40E27B4(0, &unk_1ED95E680);
  v17 = sub_1B429FDF8();

  if (v17 >> 62)
  {
    v18 = sub_1B42A0518();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = sub_1B40FBA40();
  if (v19 >> 62)
  {
    result = sub_1B42A0518();
    v20 = v18 - result;
    if (!__OFSUB__(v18, result))
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v20 = v18 - result;
  if (__OFSUB__(v18, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

LABEL_10:
  v21 = v0[36];
  swift_beginAccess();
  v15[4] = v20;
  sub_1B40FBA40();

  v23 = sub_1B41555BC(v22);

  swift_beginAccess();
  v24 = v15[3];
  v15[3] = v23;

  [v21 size];
  v26 = v25;
  v28 = v27;
  v29 = swift_task_alloc();
  v0[58] = v29;
  *v29 = v0;
  v29[1] = sub_1B40F78D8;

  return CREngineAccurate._documentOutputRegionResult(_:imageSize:)(v15, v26, v28);
}

uint64_t sub_1B40F78D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_1B40F8298;
  }

  else
  {
    v4 = sub_1B40F79EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B40F79EC()
{
  v81 = v0;
  v1 = [*(v0 + 288) url];
  if (v1)
  {
    v2 = v1;
    sub_1B429F628();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  (*(v5 + 56))(v7, v3, 1, v4);
  sub_1B40FC904(v7, v6);
  if ((*(v5 + 48))(v6, 1, v4))
  {
    v8 = *(v0 + 288);
    sub_1B40E26E8(*(v0 + 360), &unk_1EB884C90);
    v80[0] = 1819047278;
    v80[1] = 0xE400000000000000;
    *(v0 + 264) = [v8 hash];
    v9 = sub_1B42A0648();
    MEMORY[0x1B8C72530](v9);
  }

  else
  {
    v11 = *(v0 + 384);
    v10 = *(v0 + 392);
    v12 = *(v0 + 368);
    v13 = *(v0 + 376);
    v14 = *(v0 + 360);
    (*(v13 + 16))(v11, v14, v12);
    sub_1B40E26E8(v14, &unk_1EB884C90);
    sub_1B429F608();
    v15 = *(v13 + 8);
    v15(v11, v12);
    sub_1B429F5E8();
    v15(v10, v12);
  }

  v16 = *(v0 + 472);
  v17 = *(v0 + 320);
  v18 = sub_1B429FB88();

  [v16 setImagePath_];

  v19 = *(v17 + 88);
  if (v19)
  {
    v20 = *(v0 + 320);
    swift_beginAccess();
    v21 = *(v20 + 32);
    if (v21)
    {
      v22 = *(v0 + 472);
      v23 = v19;
      v24 = v21;
      v25 = sub_1B410F9A0();
      v26 = *v25;
      v27 = *(v25 + 16);
      v28 = swift_task_alloc();
      *(v28 + 16) = v22;
      *(v28 + 24) = v23;
      sub_1B40FF6E8(v26, v27, sub_1B40FC984, v28, MEMORY[0x1E69E7CA8]);
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    v29 = sub_1B4141614(5u);
  }

  else
  {
    v29 = 0;
  }

  v30 = (v0 + 272);
  if (os_variant_has_internal_diagnostics())
  {
    v31 = sub_1B4141614(6u);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v0 + 296);
  *(v0 + 272) = 0;
  if (v32)
  {
    v33 = *(v0 + 448);
    v34 = sub_1B429FB98();
    if (*(v33 + 16))
    {
      v36 = sub_1B40F0030(v34, v35);
      v38 = v37;

      if (v38)
      {
        sub_1B40E2888(*(*(v0 + 448) + 56) + 32 * v36, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          if (*(v0 + 489) == 1)
          {
            v39 = *(v0 + 448);
            v40 = 1;
LABEL_27:
            v41 = v39;
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
    }

    if ((sub_1B4141614(7u) & 1) == 0)
    {
      goto LABEL_37;
    }

    v40 = 0;
    v39 = *(v0 + 448);
    goto LABEL_27;
  }

  if ((sub_1B4141614(7u) & 1) == 0)
  {
    goto LABEL_37;
  }

  v41 = sub_1B40FC7D4(MEMORY[0x1E69E7CC0]);
  v40 = 0;
LABEL_28:
  v42 = *(v0 + 480);

  sub_1B40F98B4(v41);
  if (v42)
  {
    v43 = *(v0 + 472);

    v44 = *(v0 + 8);

    return v44();
  }

  v78 = v29;
  v79 = v31;
  v47 = *(v0 + 336);
  v46 = *(v0 + 344);
  v48 = *(v0 + 328);

  v49 = sub_1B41254F0();
  (*(v47 + 16))(v46, v49, v48);
  v50 = sub_1B429FA48();
  v51 = sub_1B42A0118();
  v52 = os_log_type_enabled(v50, v51);
  v54 = *(v0 + 336);
  v53 = *(v0 + 344);
  v55 = *(v0 + 328);
  if (v52)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v80[0] = v57;
    *v56 = 136315394;
    *(v56 + 4) = sub_1B40DDE8C(0xD000000000000041, 0x80000001B42B3350, v80);
    *(v56 + 12) = 1024;
    *(v56 + 14) = v40;
    _os_log_impl(&dword_1B40D2000, v50, v51, "%s: Form detection is enabled (CRImageReaderDetectForms:%{BOOL}d.", v56, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x1B8C74FA0](v57, -1, -1);
    MEMORY[0x1B8C74FA0](v56, -1, -1);
  }

  (*(v54 + 8))(v53, v55);
  v58 = *(v0 + 320);
  swift_beginAccess();
  v59 = *(v58 + 48);
  if (v59)
  {
    v60 = *(v0 + 472);
    v61 = *(v0 + 320);
    v62 = *(v0 + 288);
    v63 = v59;
    v64 = sub_1B410F9AC();
    v65 = *v64;
    v66 = *(v64 + 16);
    v67 = swift_task_alloc();
    *(v67 + 16) = v78 & 1;
    *(v67 + 24) = v30;
    *(v67 + 32) = v62;
    *(v67 + 40) = v61;
    *(v67 + 48) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884CA0);
    sub_1B40FF6E8(v65, v66, sub_1B40FC974, v67, v0 + 488);
  }

  v31 = v79;
LABEL_37:
  v68 = *v30;
  if (*v30)
  {
  }

  else
  {
    v69 = sub_1B4140F8C();
    v70 = *v69;
    v71 = *(v69 + 8);
    v72 = sub_1B4140C68();
    if (sub_1B4140FDC(*v72, v70, v71))
    {
      v73 = *(v0 + 472);
      v74 = *(v0 + 288);

      [objc_opt_self() debugDataDetectorForRegion:v73 withImage:v74 ddQOS:2];
    }

    v75 = *(v0 + 472);
    v76 = sub_1B40FD684(*(v0 + 280));
    [v75 setDetectorResults_];

    if (v31)
    {
      [objc_opt_self() exportSerializedResults:*(v0 + 472) forImage:*(v0 + 288)];
    }

    v68 = *(v0 + 472);
  }

  v77 = *(v0 + 8);

  return v77(v68);
}

uint64_t sub_1B40F81DC()
{
  v1 = *(v0 + 416);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B40F8298()
{

  v1 = *(v0 + 8);

  return v1();
}

void CREngineAccurate.smallestImageSizeForText(withRelativeHeight:originalImageSize:)(double a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v7 = *(**(v3 + 72) + 216);

    v7(v8, a1, a2, a3);
  }
}

uint64_t CREngineAccurate.computeDevice()()
{
  v1 = sub_1B429FA88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15TextRecognition16CREngineAccurate_requestedComputeDevice;
  swift_beginAccess();
  v7 = (*(v2 + 48))(v0 + v6, 1, v1);
  result = 0;
  if (!v7)
  {
    (*(v2 + 16))(v5, v0 + v6, v1);
    v9 = sub_1B40EFE04();
    (*(v2 + 8))(v5, v1);
    return v9;
  }

  return result;
}

uint64_t sub_1B40F8570()
{
  v1 = v0[11];
  *(v1 + 128) = 1;
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[12] = v2;
  v3 = *(*v2 + 208);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1B40F86B8;

  return v6();
}

uint64_t sub_1B40F86B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B40F87D0, 0, 0);
}

uint64_t sub_1B40F87D0()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[14] = v2;
  v3 = *v2;
  v0[15] = *(*v2 + 344);
  v0[16] = (v3 + 344) & 0xFFFFFFFFFFFFLL | 0xD8D1000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1B40F8890, v2, 0);
}

uint64_t sub_1B40F8890()
{
  (*(v0 + 120))();

  return MEMORY[0x1EEE6DFA0](sub_1B40F8904, 0, 0);
}

uint64_t sub_1B40F8904()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[17] = v2;
  v3 = (*v2 + 120) & 0xFFFFFFFFFFFFLL | 0x8617000000000000;
  v0[18] = *(*v2 + 120);
  v0[19] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B40F89AC, v2, 0);
}

uint64_t sub_1B40F89AC()
{
  (*(v0 + 144))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static CREngineAccurate.supportedLanguages(forRevision:)(uint64_t a1)
{
  sub_1B40E27B4(0, &unk_1ED95EE60);
  v2 = [swift_getObjCClassFromMetadata() supportedLanguagesForVersion_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B429FDF8();

    return v4;
  }

  else
  {
    sub_1B40DF594();
    swift_allocError();
    *v6 = 4;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t static CREngineAccurate.preheatModels(forOptions:revision:extendedTimeoutBlock:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for ImageReaderConfiguration();
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B40F8B68, 0, 0);
}

uint64_t sub_1B40F8B68()
{
  if (v0[3] >= 3)
  {
    v1 = v0[4];

    ImageReaderConfiguration.init(options:)(v2, v1);
    sub_1B40FC988(v1);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B40F8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B40F8CE8, 0, 0);
}

uint64_t sub_1B40F8CE8()
{
  v1 = v0[12];
  v18 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v17 = v1;
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v0[14] = v9;
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v2;
  v9[7] = v3;
  v9[8] = v8;
  v10 = sub_1B429FEE8();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B42ACD60;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B42ACD70;
  v12[5] = v11;
  v13 = v6;

  v14 = v4;

  sub_1B40D5FF0(v2);
  v0[15] = sub_1B40E4100(0, 0, v17, &unk_1B42ACD80, v12);
  v15 = (*v18 + 128) & 0xFFFFFFFFFFFFLL | 0x188A000000000000;
  v0[16] = *(*v18 + 128);
  v0[17] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1B40F8EEC, v18, 0);
}

uint64_t sub_1B40F8EEC()
{
  (*(v0 + 128))(*(v0 + 120));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1B40F8F9C;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1B40F8F9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B40F9098, 0, 0);
}

uint64_t sub_1B40F9098()
{
  v1 = v0[11];
  v2 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xCE1E000000000000;
  v0[19] = *(*v1 + 136);
  v0[20] = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B40F90D0, v1, 0);
}

uint64_t sub_1B40F90D0()
{
  (*(v0 + 152))(*(v0 + 120));

  return MEMORY[0x1EEE6DFA0](sub_1B40F9140, 0, 0);
}

uint64_t sub_1B40F9140()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    goto LABEL_4;
  }

  if (*(v0[7] + 128) == 1)
  {
    sub_1B429FEC8();
    sub_1B40FCFE4(&qword_1ED95E720, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1B429FAD8();
    v2 = 0;
LABEL_4:
    swift_willThrow();
    v3 = v2;

    v4 = v0[1];
    goto LABEL_5;
  }

  v4 = v0[1];
LABEL_5:

  return v4();
}

uint64_t sub_1B40F92B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40F92E4, 0, 0);
}

uint64_t sub_1B40F92E4()
{
  v2 = v0[13];
  v1 = v0[14];
  swift_beginAccess();
  v3 = *(v2 + 80);
  v0[18] = v3;

  v4 = [v1 lines];
  sub_1B40E27B4(0, &unk_1ED95E680);
  v5 = sub_1B429FDF8();
  v0[19] = v5;

  v11 = (*(*v3 + 352) + **(*v3 + 352));
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1B40F9494;
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[11];

  return v11(v9, v5, v7, v8);
}

uint64_t sub_1B40F9494(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1B40F964C;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_1B40F95CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B40F95CC()
{
  v1 = v0[22];
  v2 = v0[12];
  swift_beginAccess();
  *(v2 + 16) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B40F964C()
{
  v1 = v0[21];
  v2 = v0[17];

  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B40F96E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B40E6828;

  return v6();
}

uint64_t sub_1B40F97CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B40E6828;

  return v7();
}

void sub_1B40F98B4(uint64_t a1)
{
  v3 = v1;
  v44[10] = *MEMORY[0x1E69E9840];
  v5 = sub_1B429FA68();
  v6 = *(v5 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v5, v7).n128_u64[0];
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR____TtC15TextRecognition16CREngineAccurate__loadFormAnalyzerLock);
  [v11 lock];
  if (v3[13])
  {
LABEL_10:
    [v11 unlock];
    return;
  }

  v43[0] = v6;
  v43[1] = v2;
  v12 = [objc_allocWithZone(CRFormAnalyzerConfiguration) init];
  [v12 setResizeInputImage_];
  [v12 setTileInputImage_];
  sub_1B40E27B4(0, &qword_1ED95E658);
  v13 = sub_1B40EFA9C(a1);
  v15 = v14;
  [v12 setComputeDeviceType_];
  v43[2] = v15;
  [v12 setMetalDevice_];
  v16 = objc_allocWithZone(CRPerformanceStatistics);
  v17 = sub_1B429FB88();
  v18 = [v16 initWithName:v17 measureRecentPeak:1];

  swift_beginAccess();
  v19 = v3[6];
  v3[6] = v18;

  v20 = objc_allocWithZone(CRPerformanceStatistics);
  v21 = sub_1B429FB88();
  v22 = [v20 initWithName:v21 measureRecentPeak:0];

  swift_beginAccess();
  v23 = v3[7];
  v3[7] = v22;

  v24 = objc_allocWithZone(CRPerformanceStatistics);
  v25 = sub_1B429FB88();
  v26 = [v24 initWithName:v25 measureRecentPeak:0];

  swift_beginAccess();
  v27 = v3[8];
  v3[8] = v26;
  v28 = v26;

  v29 = v3[7];
  if (v29)
  {
    if (v28)
    {
      v30 = objc_allocWithZone(CRFormAnalyzer);
      v44[0] = 0;
      v31 = v12;
      v32 = v29;
      v33 = [v30 initWithConfiguration:v31 detectionStats:v32 postProcessingStats:v28 error:v44];
      v34 = v44[0];
      if (v33)
      {

        v35 = v3[13];
        v3[13] = v33;

        v36 = sub_1B41254F0();
        v37 = v43[0];
        (*(v43[0] + 16))(v10, v36, v5);
        v38 = sub_1B429FA48();
        v39 = sub_1B42A0118();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v44[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_1B40DDE8C(0xD000000000000023, 0x80000001B42B3660, v44);
          _os_log_impl(&dword_1B40D2000, v38, v39, "%s: Form analyzer loaded.", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x1B8C74FA0](v41, -1, -1);
          MEMORY[0x1B8C74FA0](v40, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v37 + 8))(v10, v5);
      }

      else
      {
        v42 = v34;
        sub_1B429F598();

        swift_willThrow();
        swift_unknownObjectRelease();
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B40F9DB8(char a1@<W0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, _BYTE *a6@<X8>)
{
  v60 = a6;
  v11 = sub_1B429F6D8();
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B429FA68();
  v59 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x1EEE9AC00](v19, v20).n128_u64[0];
  v23 = &v56 - v22;
  if (a1)
  {
    v24 = [objc_opt_self() fetchSerializedResultsForImage_];
    v25 = *a2;
    *a2 = v24;
  }

  if (!*a2)
  {
    v26 = *(a4 + 104);
    if (v26 && [v26 shouldRunDetectionForDocument_])
    {
      v27 = *(a4 + 104);
      v28 = v59;
      if (v27)
      {
        [v27 analyzeImage:a3 outputRegion:a5];
      }

      v29 = sub_1B41254F0();
      (*(v28 + 16))(v23, v29, v15);
      v30 = a5;
      v31 = sub_1B429FA48();
      v32 = sub_1B42A0118();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v61 = v57;
        *v33 = 136315650;
        *(v33 + 4) = sub_1B40DDE8C(0xD000000000000041, 0x80000001B42B3350, &v61);
        *(v33 + 12) = 2048;
        v34 = [v30 formFieldRegions];
        if (v34)
        {
          sub_1B40E27B4(0, &qword_1EB884810);
          v35 = sub_1B429FDF8();

          if (v35 >> 62)
          {
            v34 = sub_1B42A0518();
          }

          else
          {
            v34 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        *(v33 + 14) = v34;

        *(v33 + 22) = 2080;
        v36 = [v30 uuid];
        sub_1B429F6B8();

        sub_1B40FCFE4(&qword_1EB884848, MEMORY[0x1E69695A8]);
        v37 = sub_1B42A0648();
        v39 = v38;
        (*(v58 + 8))(v14, v11);
        v40 = sub_1B40DDE8C(v37, v39, &v61);

        *(v33 + 24) = v40;
        _os_log_impl(&dword_1B40D2000, v31, v32, "%s: Storing %ld parsed fields in %s", v33, 0x20u);
        v41 = v57;
        swift_arrayDestroy();
        MEMORY[0x1B8C74FA0](v41, -1, -1);
        MEMORY[0x1B8C74FA0](v33, -1, -1);

        (*(v59 + 8))(v23, v15);
      }

      else
      {

        (*(v28 + 8))(v23, v15);
      }
    }

    else
    {
      v42 = sub_1B41254F0();
      v43 = v59;
      (*(v59 + 16))(v18, v42, v15);
      v44 = a5;
      v45 = sub_1B429FA48();
      v46 = sub_1B42A0118();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v61 = v57;
        *v47 = 136315650;
        *(v47 + 4) = sub_1B40DDE8C(0xD000000000000041, 0x80000001B42B3350, &v61);
        *(v47 + 12) = 2080;
        v48 = [v44 uuid];
        sub_1B429F6B8();

        sub_1B40FCFE4(&qword_1EB884848, MEMORY[0x1E69695A8]);
        v49 = sub_1B42A0648();
        v51 = v50;
        (*(v58 + 8))(v14, v11);
        v52 = sub_1B40DDE8C(v49, v51, &v61);

        *(v47 + 14) = v52;
        *(v47 + 22) = 2048;
        v53 = [v44 formFieldRegions];
        if (v53)
        {
          sub_1B40E27B4(0, &qword_1EB884810);
          v54 = sub_1B429FDF8();

          if (v54 >> 62)
          {
            v53 = sub_1B42A0518();
          }

          else
          {
            v53 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
        }

        v43 = v59;
        *(v47 + 24) = v53;

        _os_log_impl(&dword_1B40D2000, v45, v46, "%s: Skipping running form field detection for %s (line count: %ld).", v47, 0x20u);
        v55 = v57;
        swift_arrayDestroy();
        MEMORY[0x1B8C74FA0](v55, -1, -1);
        MEMORY[0x1B8C74FA0](v47, -1, -1);
      }

      else
      {
      }

      (*(v43 + 8))(v18, v15);
    }
  }

  *v60 = 0;
}

uint64_t sub_1B40FA4B0(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40FA4D4, 0, 0);
}

id sub_1B40FA4D4()
{
  v1 = v0[17];
  if (v1 >> 62)
  {
    result = sub_1B42A0518();
    if (result)
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B8C72CD0](0, v0[17]);
        v3 = v0[17];
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v3 = v0[17];
        v4 = *(v3 + 32);
      }

      v23 = v4;
      v0[20] = v4;
      v5 = v0[18];
      v6 = v0[19];
      type metadata accessor for CREngineAccurate.Result();
      v7 = swift_allocObject();
      v0[21] = v7;
      v7[2] = MEMORY[0x1E69E7CC0];
      v7[3] = 0;
      v7[4] = 0;
      v7[5] = 0;
      swift_beginAccess();
      v8 = *(**(v6 + 80) + 320);

      v9 = v8(v3, v5);

      swift_beginAccess();
      v7[2] = v9;

      if (v1 >> 62)
      {
        v10 = sub_1B42A0518();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = sub_1B40FBA40();
      if (v11 >> 62)
      {
        result = sub_1B42A0518();
        v12 = v10 - result;
        if (!__OFSUB__(v10, result))
        {
LABEL_11:
          swift_beginAccess();
          v7[4] = v12;
          sub_1B40FBA40();

          v14 = sub_1B41555BC(v13);

          swift_beginAccess();
          v15 = v7[3];
          v7[3] = v14;

          result = [v23 boundingQuad];
          if (result)
          {
            v16 = result;
            [result normalizationSize];
            v18 = v17;
            v20 = v19;

            v21 = swift_task_alloc();
            v0[22] = v21;
            *v21 = v0;
            v21[1] = sub_1B40FA828;

            return CREngineAccurate._documentOutputRegionResult(_:imageSize:)(v7, v18, v20);
          }

LABEL_24:
          __break(1u);
          return result;
        }
      }

      else
      {
        result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v10 - result;
        if (!__OFSUB__(v10, result))
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1B40FA828(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1B40FAAE8;
  }

  else
  {
    v4 = sub_1B40FA93C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B40FA93C()
{
  v1 = v0[19];
  v2 = *(v1 + 88);
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = v0[23];
      v5 = v2;
      v6 = v3;
      v7 = sub_1B410F934();
      v8 = *v7;
      v9 = *(v7 + 16);
      v10 = swift_task_alloc();
      *(v10 + 16) = v4;
      *(v10 + 24) = v5;
      sub_1B40FF6E8(v8, v9, sub_1B40FD094, v10, MEMORY[0x1E69E7CA8]);
    }
  }

  v11 = v0[23];
  v12 = v0[20];
  v13 = objc_allocWithZone(CRDetectionResult);
  sub_1B40E27B4(0, &unk_1ED95E680);
  v14 = sub_1B429FDE8();
  v15 = [v13 initWithLines_];

  v16 = sub_1B40FD684(v15);
  [v11 setDetectorResults_];

  v17 = v0[1];

  return v17(v11);
}

uint64_t sub_1B40FAAE8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

id *CREngineAccurate.deinit()
{

  sub_1B40E26E8(v0 + OBJC_IVAR____TtC15TextRecognition16CREngineAccurate_requestedComputeDevice, &unk_1EB884C80);

  return v0;
}

uint64_t CREngineAccurate.__deallocating_deinit()
{
  CREngineAccurate.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B40FAC58(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CREngineAccurate.init(configuration:owner:)(a1, a2);
  return v4;
}

uint64_t sub_1B40FACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B40DD740;

  return CREngineAccurate.resultDocument(for:roi:configuration:trackingSession:progressHandler:)(a1, a2, a3, a4, a5, a6);
}

void sub_1B40FAD84(double a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v7 = *(**(v3 + 72) + 216);

    v7(v8, a1, a2, a3);
  }
}

uint64_t sub_1B40FAE48()
{
  v1 = sub_1B429FA88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15TextRecognition16CREngineAccurate_requestedComputeDevice;
  swift_beginAccess();
  v7 = (*(v2 + 48))(v0 + v6, 1, v1);
  result = 0;
  if (!v7)
  {
    (*(v2 + 16))(v5, v0 + v6, v1);
    v9 = sub_1B40EFE04();
    (*(v2 + 8))(v5, v1);
    return v9;
  }

  return result;
}

uint64_t sub_1B40FAF84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B40E17D0;

  return CREngineAccurate.cancel()();
}

uint64_t sub_1B40FB010(uint64_t a1)
{
  sub_1B40E27B4(0, &unk_1ED95EE60);
  v2 = [swift_getObjCClassFromMetadata() supportedLanguagesForVersion_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B429FDF8();

    return v4;
  }

  else
  {
    sub_1B40DF594();
    swift_allocError();
    *v6 = 4;
    *(v6 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1B40FB0D0()
{
  v0 = objc_opt_self();
  v1 = [v0 allComputeDevices];
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
    sub_1B429FDF8();
    v1 = sub_1B429FDE8();
  }

  v2 = [v0 computeDevices:v1 ofTypes:7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
  v3 = sub_1B429FDF8();

  return v3;
}

uint64_t sub_1B40FB1B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for ImageReaderConfiguration();
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B40F8B68, 0, 0);
}

uint64_t sub_1B40FB294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B40FB2BC, 0, 0);
}

uint64_t sub_1B40FB2BC()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[10] = v2;
  v3 = *(*v2 + 224);

  v10 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1B40FB408;
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  return v10(v8, v5, v7, v6);
}

uint64_t sub_1B40FB408(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B40FD098, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B40FB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B40E28F0;

  return sub_1B40F714C(a1, a2, a3, a4, a5);
}

uint64_t sub_1B40FB624(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B40E28F0;

  return sub_1B40FA4B0(a1, a2);
}

void *sub_1B40FB6C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D38);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B40FB7FC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B42A0518();
LABEL_9:
  result = sub_1B42A0438();
  *v1 = result;
  return result;
}

uint64_t sub_1B40FB89C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B42A0518();
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
      result = sub_1B42A0518();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B40FD02C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884D48);
            v9 = sub_1B40E0604(v13, i, a3);
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
        sub_1B40E27B4(0, &qword_1ED95E670);
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

unint64_t sub_1B40FBA40()
{
  v1 = v0;
  swift_beginAccess();
  result = v0[5];
  if (!result)
  {
    v0[5] = MEMORY[0x1E69E7CC0];
    result = (*(*v0 + 112))();
    v3 = result;
    if (result >> 62)
    {
      result = sub_1B42A0518();
      v4 = result;
      if (!result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_19;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8C72CD0](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 subregions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
      v9 = sub_1B429FDF8();

      v10 = sub_1B40F2438(v9);

      if (v10)
      {
        v11 = sub_1B40F2374();
        if (*v12)
        {
          sub_1B40F2718(v10);
        }

        else
        {
        }

        (v11)(v13, 0);
      }
    }

LABEL_16:

    result = v1[5];
    if (result)
    {
      return result;
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B40FBC0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {

    v3 = sub_1B429FF58();

    if (v3)
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1B40FBCD8(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1B40FBC0C(*a1);
  v5 = result;
  if (v1)
  {
    return v5;
  }

  if (v4)
  {
    return v2[2];
  }

  if (!__OFADD__(result, 1))
  {
    v7 = v2 + 2;
    v6 = v2[2];
    if (result + 1 == v6)
    {
      return v5;
    }

    for (i = result + 5; ; ++i)
    {
      v10 = i - 4;
      if (i - 4 >= v6)
      {
        break;
      }

      v11 = sub_1B429FF58();

      if ((v11 & 1) == 0)
      {
        if (v10 != v5)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v5 >= *v7)
          {
            goto LABEL_22;
          }

          if (v10 >= *v7)
          {
            goto LABEL_23;
          }

          v12 = v2[v5 + 4];
          v13 = v2[i];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1B40FBA2C(v2);
          }

          v2[v5 + 4] = v13;

          if (v10 >= v2[2])
          {
            goto LABEL_24;
          }

          v2[i] = v12;

          *a1 = v2;
        }

        ++v5;
      }

      v7 = v2 + 2;
      v6 = v2[2];
      v9 = i - 3;
      if (v9 == v6)
      {
        return v5;
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
  }

  __break(1u);
  return result;
}

unint64_t sub_1B40FBE74(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884D30);
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

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
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

unint64_t sub_1B40FBF44(unint64_t result, uint64_t a2)
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B40FB6C8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1B40FBE74(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B40FC004()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B40E6828;

  return sub_1B40F2D90(v4, v2, v3);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B40FC0DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B40E6828;

  return sub_1B40F31AC(v4, v2, v3);
}

id sub_1B40FC198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = *(**(v7 + 80) + 304);

    v9 = v8(a1, a2, a3);

    return v9;
  }

  else
  {
    v11 = [objc_opt_self() defaultConfidenceThresholds];

    return v11;
  }
}

uint64_t sub_1B40FC2C8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B40E17D0;

  return sub_1B40F4D08(v3, v4, v5, v2, v0 + 40);
}

BOOL sub_1B40FC360(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1B40EFE04();
  swift_unknownObjectRelease();
  return v1 == v2;
}

uint64_t sub_1B40FC3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B40FC43C(double a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(*(v1 + 32) + (1.0 - *(v1 + 32)) * a1);
  }

  return result;
}

uint64_t sub_1B40FC480()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = [*(*(v2 + 80) + 120) textFeatureOrder];
  v5 = [v3 lines];
  sub_1B40E27B4(0, &unk_1ED95E680);
  v6 = sub_1B429FDF8();

  if (v6 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
    sub_1B42A0558();
  }

  else
  {
    sub_1B42A0698();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0);
  v7 = sub_1B429FDE8();

  v8 = [v4 orderAndGroupRegions_];
  swift_unknownObjectRelease();

  sub_1B40E27B4(0, &qword_1ED95E6E0);
  v9 = sub_1B429FDF8();

  return (*(*v1 + 120))(v9);
}

uint64_t sub_1B40FC648()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B40E6828;

  return sub_1B40F67C8(v2, v3, v4, v5, v6);
}

uint64_t sub_1B40FC704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B40E17D0;

  return sub_1B40F8C40(v9, v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1B40FC7D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D20);
    v3 = sub_1B42A05F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B40E6464(v4, &v13, &unk_1EB885600);
      v5 = v13;
      v6 = v14;
      result = sub_1B40F0030(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B40E28EC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B40FC904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B40FC988(uint64_t a1)
{
  v2 = type metadata accessor for ImageReaderConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B40FC9E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [v1 contentsWithTypes_];
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v4 = sub_1B429FDF8();

  v5 = sub_1B40F25AC(v4);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D10);
    v7 = sub_1B429FDE8();

    [v2 predictLineWrappingTypesForAllLinesInGroups:v7 useHandwritingConfig:0];

    return [v1 _invalidateTranscript];
  }

  return result;
}

uint64_t type metadata accessor for CREngineAccurate()
{
  result = qword_1ED95FCA0;
  if (!qword_1ED95FCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B40FCB38()
{
  sub_1B40FCC58();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B40FCC58()
{
  if (!qword_1ED95EEA0[0])
  {
    sub_1B429FA88();
    v0 = sub_1B42A0288();
    if (!v1)
    {
      atomic_store(v0, qword_1ED95EEA0);
    }
  }
}

uint64_t sub_1B40FCD48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B40E6828;

  return sub_1B40F92B8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B40FCE18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B40E6828;

  return sub_1B40F96E4(v2, v3, v4);
}

uint64_t objectdestroy_73Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B40FCF18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B40E6828;

  return sub_1B40F97CC(a1, v4, v5, v6);
}

uint64_t sub_1B40FCFE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B40FD02C()
{
  result = qword_1EB884D50;
  if (!qword_1EB884D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB884D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884D50);
  }

  return result;
}

uint64_t sub_1B40FD09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_1B429FE78();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B40FD11C, v7, v6);
}

uint64_t sub_1B40FD11C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  *(v0 + 96) = (*(v1 + 16))(v2, v1) & 1;
  v4 = *(v1 + 24);
  *(v0 + 72) = v4;
  v4(1, v2, v1);
  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1B40FD264;

  return v7();
}

uint64_t sub_1B40FD264()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1B40FD41C;
  }

  else
  {
    v5 = sub_1B40FD3A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B40FD3A0()
{
  (*(v0 + 72))(*(v0 + 96), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40FD41C()
{
  (*(v0 + 72))(*(v0 + 96), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B40FD498(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = a1;
  v6 = sub_1B429FE78();

  return MEMORY[0x1EEE6DFA0](sub_1B40FD51C, v6, v5);
}

uint64_t sub_1B40FD51C()
{
  (*(*(v0 + 24) + 24))(*(v0 + 40), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

SEL *sub_1B40FD684(void *a1)
{
  v60 = [objc_allocWithZone(CRTextDetectorResults) init];
  v4 = [a1 lines];
  sub_1B40E27B4(0, &unk_1ED95E680);
  v5 = sub_1B429FDF8();

  if (v5 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B42A0518())
  {
    if (!i)
    {

LABEL_20:
      v35 = [a1 pyramidScaleSize];
      if (v35)
      {
        sub_1B40E27B4(0, &qword_1ED95E050);
        v36 = sub_1B429FDF8();

        sub_1B40FDFBC(v36, &qword_1ED95E050);
        v37 = objc_allocWithZone(MEMORY[0x1E695DF70]);
        v38 = sub_1B429FDE8();

        v35 = [v37 initWithArray_];
      }

      v1 = v60;
      [(SEL *)v60 setPyramidScaleSize:v35];

      v39 = [a1 pyramidScaleName];
      if (v39)
      {
        sub_1B40E27B4(0, &qword_1ED95EE90);
        v40 = sub_1B429FDF8();

        sub_1B40FDFBC(v40, &qword_1ED95EE90);
        v41 = objc_allocWithZone(MEMORY[0x1E695DF70]);
        v42 = sub_1B429FDE8();

        v39 = [v41 initWithArray_];
        v1 = v60;
      }

      [(SEL *)v1 setPyramidScaleName:v39];

      v43 = [a1 pyramidPreIntraScaleNMSTextFeatures];
      [(SEL *)v1 setPyramidPreIntraScaleNMSTextFeatures:v43];

      sub_1B40E27B4(0, &qword_1ED95E6D8);
      v44 = sub_1B429FDE8();

      [(SEL *)v1 setTextFeatures:v44];

      v45 = [a1 tableRegions];
      sub_1B40E27B4(0, &qword_1ED95E6D0);
      v46 = sub_1B429FDF8();

      if (v46 >> 62)
      {
        v47 = sub_1B42A0518();
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v47)
      {
        v48 = [a1 tableRegions];
        v2 = sub_1B429FDF8();

        if (v2 >> 62)
        {
          goto LABEL_41;
        }

        v49 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v49)
        {
          goto LABEL_29;
        }

LABEL_42:

LABEL_43:
        sub_1B40E27B4(0, &qword_1ED95EE70);
        v58 = sub_1B429FDE8();

        [(SEL *)v1 setDetectedTables:v58];
      }

      return v1;
    }

    sub_1B42A0488();
    if (i < 0)
    {
      break;
    }

    v59 = a1;
    v2 = 0;
    v62 = v5;
    v63 = v5 & 0xC000000000000001;
    v61 = v5 & 0xFFFFFFFFFFFFFF8;
    v1 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
    while (1)
    {
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v63)
      {
        v10 = MEMORY[0x1B8C72CD0](v2, v5);
      }

      else
      {
        if (v2 >= *(v61 + 16))
        {
          goto LABEL_37;
        }

        v10 = *(v5 + 8 * v2 + 32);
      }

      v11 = v10;
      result = [v10 v1[497]];
      if (!result)
      {
        goto LABEL_48;
      }

      v13 = result;
      [(SEL *)result topLeft];
      v15 = v14;
      v17 = v16;

      result = [v11 v1[497]];
      if (!result)
      {
        goto LABEL_49;
      }

      v18 = result;
      [(SEL *)result topRight];
      v20 = v19;
      v22 = v21;

      result = [v11 v1[497]];
      if (!result)
      {
        goto LABEL_47;
      }

      v23 = result;
      [(SEL *)result bottomLeft];
      v25 = v24;
      v27 = v26;

      result = [v11 v1[497]];
      if (!result)
      {
        goto LABEL_46;
      }

      v28 = result;
      [(SEL *)result bottomRight];
      v30 = v29;
      v32 = v31;

      v33 = [objc_allocWithZone(CRTextFeature) initWithTopLeft:v15 topRight:v17 bottomLeft:v20 bottomRight:{v22, v25, v27, v30, v32}];
      [v33 setNmsOutputScale_];
      [v33 setTextType_];
      v34 = [v11 scriptCategoryResults];
      if (!v34)
      {
        sub_1B40E27B4(0, &unk_1ED95E660);
        sub_1B429FDF8();
        v34 = sub_1B429FDE8();
      }

      [v33 setScriptCategoryResults_];

      v7 = [v11 scriptCategoryCounts];
      a1 = sub_1B40E27B4(0, &qword_1ED95EE90);
      sub_1B429FAF8();

      v8 = sub_1B429FAE8();

      [v33 setScriptCounts_];

      [v33 setSelectedScriptCategory_];
      swift_unknownObjectRelease();
      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      ++v2;
      v5 = v62;
      v1 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
      if (v9 == i)
      {

        a1 = v59;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  __break(1u);
LABEL_41:
  v49 = sub_1B42A0518();
  if (!v49)
  {
    goto LABEL_42;
  }

LABEL_29:
  result = sub_1B42A0488();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v50 = 0;
    v64 = v2 & 0xC000000000000001;
    v51 = v2;
    do
    {
      if (v64)
      {
        v52 = MEMORY[0x1B8C72CD0](v50, v2);
      }

      else
      {
        v52 = *(v2 + 8 * v50 + 32);
      }

      v53 = v52;
      ++v50;
      v54 = objc_allocWithZone(CRTableOutputRegion);
      sub_1B40E27B4(0, &unk_1ED95E080);
      v55 = sub_1B429FDE8();
      v56 = sub_1B429FDE8();
      v57 = sub_1B429FDE8();
      [v54 initWithCells:v55 quad:v53 rowQuads:v56 colQuads:v57];

      sub_1B42A0458();
      sub_1B42A0498();
      sub_1B42A04A8();
      sub_1B42A0468();
      v2 = v51;
    }

    while (v49 != v50);

    v1 = v60;
    goto LABEL_43;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

char *sub_1B40FDFBC(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1B42A0518();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1B40DF748(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1B8C72CD0](i, a1);
        sub_1B40E27B4(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B40DF748((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_1B40E28EC(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_1B40E27B4(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1B40DF748((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_1B40E28EC(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_1B40FE1A8(char *a1, int64_t a2, char a3)
{
  result = sub_1B40FE1C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B40FE1C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1B40FE2D4()
{
  result = qword_1ED95E0D0;
  if (!qword_1ED95E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E0D0);
  }

  return result;
}

uint64_t ImageReader.recognizerStats.getter()
{
  result = (*(*v0 + 136))();
  if (result)
  {
    type metadata accessor for CREngineAccurate();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      v4 = *(v3 + 24);
      swift_unknownObjectRelease();
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B40FE470(uint64_t (*a1)(void))
{
  result = (*(*v1 + 136))();
  if (result)
  {
    type metadata accessor for CREngineAccurate();
    if (swift_dynamicCastClass())
    {
      v4 = a1();
      swift_unknownObjectRelease();
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void *ImageReader.orientationCorrectionStats.getter()
{
  if (!(*(*v0 + 136))())
  {
    return 0;
  }

  type metadata accessor for CREngineAccurate();
  if (swift_dynamicCastClass())
  {
    v1 = sub_1B40F34A4();
  }

  else
  {
    v1 = 0;
  }

  swift_unknownObjectRelease();
  return v1;
}

void *ImageReader.lineWrappingStats.getter()
{
  if (!(*(*v0 + 136))())
  {
    return 0;
  }

  type metadata accessor for CREngineAccurate();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = v3;
  swift_unknownObjectRelease();
  return v3;
}

void *ImageReader.tableStructureRecognitionStats.getter()
{
  if (!(*(*v0 + 136))())
  {
    return 0;
  }

  type metadata accessor for CREngineAccurate();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 40);
  v4 = v3;
  swift_unknownObjectRelease();
  return v3;
}

void *ImageReader.formAnalyzerStats.getter()
{
  if (!(*(*v0 + 136))())
  {
    return 0;
  }

  type metadata accessor for CREngineAccurate();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 48);
  v4 = v3;
  swift_unknownObjectRelease();
  return v3;
}

void *ImageReader.formDetectionStats.getter()
{
  if (!(*(*v0 + 136))())
  {
    return 0;
  }

  type metadata accessor for CREngineAccurate();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 56);
  v4 = v3;
  swift_unknownObjectRelease();
  return v3;
}

void *ImageReader.formPostProcessingStats.getter()
{
  if (!(*(*v0 + 136))())
  {
    return 0;
  }

  type metadata accessor for CREngineAccurate();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 64);
  v4 = v3;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t CRPerformanceStatistics.measure<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v24 = a4;
  v25 = sub_1B42A0288();
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v24 - v16;
  v18 = *(a3 - 8);
  (*(v18 + 56))(&v24 - v16, 1, 1, a3, v15);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = v17;
  v19[4] = a1;
  v19[5] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B40FECC4;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1B40FECD0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B40FECF8;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);

  [v5 measureBlock_];
  _Block_release(v21);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v23 = v25;
    (*(v9 + 16))(v12, v17, v25);
    result = (*(v18 + 48))(v12, 1, a3);
    if (result != 1)
    {
      (*(v18 + 32))(v24, v12, a3);
      (*(v9 + 8))(v17, v23);
    }
  }

  __break(1u);
  return result;
}

{
  v25 = a4;
  v5 = v4;
  v26 = sub_1B42A0288();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v24 - v16;
  v18 = *(a3 - 8);
  (*(v18 + 56))(&v24 - v16, 1, 1, a3, v15);
  v28 = 0;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = v17;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = &v28;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B40FF3A8;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1B4100768;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B40FECF8;
  aBlock[3] = &block_descriptor_23;
  v21 = _Block_copy(aBlock);

  [v5 measureBlock_];
  _Block_release(v21);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v28)
  {
    swift_willThrow();
    (*(v9 + 8))(v17, v26);
  }

  v23 = v26;
  (*(v9 + 16))(v12, v17, v26);
  result = (*(v18 + 48))(v12, 1, a3);
  if (result == 1)
  {
    goto LABEL_8;
  }

  (*(v18 + 32))(v25, v12, a3);
  (*(v9 + 8))(v17, v23);
}

uint64_t sub_1B40FEBA4(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v7 = sub_1B42A0288();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v14 - v11;
  a2(v10);
  (*(*(a4 - 8) + 56))(v12, 0, 1, a4);
  return (*(v8 + 40))(a1, v12, v7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CRPerformanceStatistics.measure(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11 = 0;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B40FEEC4;
  *(v7 + 24) = v6;
  v10[4] = sub_1B4100768;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B40FECF8;
  v10[3] = &block_descriptor_13;
  v8 = _Block_copy(v10);

  [v3 measureBlock_];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1B40FF260(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B42A0288();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v15 - v12;
  a2(v11);
  (*(*(a5 - 8) + 56))(v13, 0, 1, a5);
  return (*(v9 + 40))(a1, v13, v8);
}

uint64_t _sSo23CRPerformanceStatisticsC15TextRecognitionE7measureyxxyYaYbKYTXEYaKlF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B40FF3DC, 0, 0);
}

uint64_t sub_1B40FF3DC()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = [*(v0 + 40) _startMeasurement];
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1B40FF4EC;
  v3 = *(v0 + 16);

  return v5(v3);
}

uint64_t sub_1B40FF4EC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B40FF674;
  }

  else
  {
    v2 = sub_1B40FF600;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B40FF600()
{
  v1 = *(v0 + 48);
  [*(v0 + 40) _endMeasurement_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B40FF674()
{
  v1 = *(v0 + 48);
  [*(v0 + 40) _endMeasurement_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B40FF6E8@<X0>(char *a1@<X0>, int a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a3;
  v31 = a5;
  v32 = a4;
  v35 = a2;
  v6 = sub_1B429F9B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  v15 = sub_1B429F9E8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B410F8A0();
  (*(v16 + 16))(v19, v20, v15);
  sub_1B429F9A8();
  v21 = sub_1B429F9C8();
  v30 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v28 = v6;
  v29 = a1;
  if ((v35 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v21, v30, v24, a1, "", v23, 2u);
      MEMORY[0x1B8C74FA0](v23, -1, -1);
      v6 = v28;
      a1 = v29;
LABEL_10:

      (*(v7 + 16))(v10, v14, v6);
      sub_1B429FA28();
      swift_allocObject();
      sub_1B429FA18();
      (*(v7 + 8))(v14, v6);
      (*(v16 + 8))(v19, v15);
      v25 = v34;
      v26 = [v34 _startMeasurement];
      v33();
      [v25 _endMeasurement_];

      sub_1B4100400(a1, v35);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v36;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B40FFA20@<X0>(const char *a1@<X0>, int a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a3;
  v35 = a2;
  v34 = a1;
  v30 = a5;
  v5 = sub_1B429F9B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  v14 = sub_1B429F9E8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B410F8A0();
  (*(v15 + 16))(v18, v19, v14);
  sub_1B429F9A8();
  v20 = sub_1B429F9C8();
  v29 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v28 = v5;
  if ((v35 & 1) == 0)
  {
    v22 = v34;
    if (v34)
    {
LABEL_9:
      v27 = v22;
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v20, v29, v24, v27, "", v23, 2u);
      MEMORY[0x1B8C74FA0](v23, -1, -1);
      v5 = v28;
LABEL_10:

      (*(v6 + 16))(v9, v13, v5);
      sub_1B429FA28();
      swift_allocObject();
      sub_1B429FA18();
      (*(v6 + 8))(v13, v5);
      (*(v15 + 8))(v18, v14);
      v25 = v33;
      v26 = [v33 _startMeasurement];
      v32();
      [v25 _endMeasurement_];

      sub_1B4100400(v34, v35);
    }

    __break(1u);
  }

  if (v34 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v34 & 0xFFFFF800) != 0xD800)
  {
    if (v34 >> 16 <= 0x10)
    {
      v22 = &v36;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B40FFD6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 160) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_1B429F9B8();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  v9 = sub_1B429F9E8();
  *(v7 + 104) = v9;
  *(v7 + 112) = *(v9 - 8);
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B40FFEA0, 0, 0);
}