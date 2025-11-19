void static Random.date(withinNextDays:)()
{
  v2 = sub_1BF1794AC();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_19();
  sub_1BF1793EC();
  sub_1BF1793DC();
  OUTLINED_FUNCTION_9_18();
  if (!(v11 ^ v12 | v10))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v9 < 4294967300.0)
  {
    arc4random_uniform(v9);
    sub_1BF1793EC();
    v13 = *(v5 + 8);
    v13(v0, v2);
    v13(v1, v2);
    return;
  }

LABEL_7:
  __break(1u);
}

_BYTE *storeEnumTagSinglePayload for Random(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BF0CC6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1BF00974C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF047B30(a1, v13);
  v14 = sub_1BF17A77C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1BF00CAB0(v13);
  }

  else
  {
    sub_1BF17A76C();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  if (*(a3 + 16))
  {
    v15 = *(a3 + 24);
    v16 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_1BF17A6AC();
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = *v5;
  v21 = swift_allocObject();
  v21[2] = *(a4 + 16);
  v21[3] = a2;
  v21[4] = a3;
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t Sequence.uniqueByPtr<A>(_:)()
{
  OUTLINED_FUNCTION_2_3();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 16))(v5 - v4, v0);
  v7 = sub_1BF17A3DC();

  return v7;
}

uint64_t sub_1BF0CC99C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = a2();
  if (!v4)
  {
    v8 = v6;
    if (sub_1BF0D8F70(v6, *a4))
    {
      swift_unknownObjectRelease();
      v7 = 0;
    }

    else
    {
      sub_1BF16FBE0(&v10, v8);
      swift_unknownObjectRelease();
      v7 = 1;
    }
  }

  return v7 & 1;
}

uint64_t sub_1BF0CCA24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1BF0CC99C(a1, *(v1 + 40), *(v1 + 48), *(v1 + 56)) & 1;
}

uint64_t sub_1BF0CCA78(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a4;
  v40 = a8;
  v11 = sub_1BF17AE6C();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v37 = *(a6 - 8);
  v16 = *(v37 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v35 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v35 - v23;
  v25 = v41;
  a2(a1);
  if (!v25)
  {
    v36 = v19;
    v41 = v22;
    v28 = v37;
    v27 = v38;
    v29 = v39;
    if (__swift_getEnumTagSinglePayload(v15, 1, a6) == 1)
    {
      (*(v27 + 8))(v15, v11);
LABEL_7:
      v26 = 1;
      return v26 & 1;
    }

    (*(v28 + 32))(v24, v15, a6);
    v30 = *v29;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v31 = sub_1BF17A98C();

    if ((v31 & 1) == 0)
    {
      (*(v28 + 16))(v36, v24, a6);
      sub_1BF17A9AC();
      v32 = v41;
      sub_1BF17A94C();
      v33 = *(v28 + 8);
      v33(v32, a6);
      v33(v24, a6);
      goto LABEL_7;
    }

    (*(v28 + 8))(v24, a6);
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t Sequence<>.unique()(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1(a1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  (*(v8 + 16))(v7 - v6, v1, a1);
  v9 = sub_1BF17A3DC();

  return v9;
}

BOOL sub_1BF0CCE84(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = v7(AssociatedTypeWitness, a5);
  v11 = sub_1BF0D8F74(v9, v10, v6);

  if (!v11)
  {
    v7(AssociatedTypeWitness, a5);
    sub_1BF16FABC();
  }

  return !v11;
}

uint64_t Sequence.groupedBy<A>(_:)()
{
  swift_getAssociatedTypeWitness();
  sub_1BF17A65C();
  sub_1BF179CEC();
  sub_1BF179E9C();
  sub_1BF17A3EC();
  return v1;
}

uint64_t sub_1BF0CD094(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v27 = a4;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v27 - v15;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v22;
  v28 = a2;
  v29(a2);
  v29 = a1;
  v24 = *a1;
  sub_1BF17A65C();
  sub_1BF179EAC();
  v25 = v31;
  if (!v31)
  {
    v25 = sub_1BF17A56C();
  }

  v32 = v25;
  (*(v12 + 16))(v16, v28, AssociatedTypeWitness);
  sub_1BF17A5DC();
  (*(v17 + 16))(v21, v23, a6);
  v31 = v32;
  sub_1BF179E9C();
  sub_1BF179EBC();
  return (*(v17 + 8))(v23, a6);
}

uint64_t sub_1BF0CD32C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];

  OUTLINED_FUNCTION_9();
  v6 = v0[24];

  return v5();
}

uint64_t sub_1BF0CD3B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t Sequence<>.concurrentMap<A>(_:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_31_7(v1, v2, v3, v4, v5);
  v0[10] = swift_getTupleTypeMetadata2();
  v6 = sub_1BF17AE6C();
  v0[11] = v6;
  OUTLINED_FUNCTION_6_3(v6);
  v0[12] = v7;
  v9 = *(v8 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v10 = sub_1BF17AE6C();
  v0[15] = v10;
  OUTLINED_FUNCTION_6_3(v10);
  v0[16] = v11;
  v13 = *(v12 + 64);
  v0[17] = OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_40();
  v14 = sub_1BF17B4FC();
  v0[18] = v14;
  OUTLINED_FUNCTION_6_3(v14);
  v0[19] = v15;
  v17 = *(v16 + 64);
  v0[20] = OUTLINED_FUNCTION_24();
  v18 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1BF0CD594()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_46();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_49_3(v5);
  OUTLINED_FUNCTION_46();
  v6 = swift_allocObject();
  *(v2 + 168) = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = &unk_1BF1828A8;
  v6[6] = v0;

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_14_13(v7);
  *v1 = v2;
  OUTLINED_FUNCTION_45_3();

  return Sequence<>.unorderedConcurrentMap<A>(_:)(&unk_1BF1828B8, v6, v8, v9, v10);
}

uint64_t sub_1BF0CD6A8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = v3[22];
  v5 = v3[21];
  v6 = v3[20];
  v7 = v3[19];
  v8 = v3[18];
  v9 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v12 + 184) = v11;

  (*(v7 + 8))(v6, v8);
  v13 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BF0CD808()
{
  v2 = v0[23];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[7];
  v9 = OUTLINED_FUNCTION_27_6();
  __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
  sub_1BF17A5AC();
  v11 = sub_1BF17A64C();
  v76 = v11;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v12 = sub_1BF17A4EC();

  OUTLINED_FUNCTION_33_5();
  while (1)
  {
    v13 = v0[23];
    v14 = v0[10];
    v15 = sub_1BF17A5AC();
    v16 = v0[10];
    if (v12 == v15)
    {
      v17 = v0[13];
      v18 = 1;
    }

    else
    {
      v19 = v0[23];
      v20 = v0[10];
      sub_1BF17A58C();
      OUTLINED_FUNCTION_44_1();
      v21 = v0[23];
      if (v7)
      {
        v22 = OUTLINED_FUNCTION_52_3();
        (*(v23 + 16))(v22, v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v12);
      }

      else
      {
        v54 = v0[10];
        result = sub_1BF17B23C();
        if (*(*v1 + 64) != 8)
        {
          __break(1u);
          return result;
        }

        v56 = OUTLINED_FUNCTION_29_6(result);
        v57(v56);
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_43_2();
      v17 = v12;
      v18 = 0;
    }

    __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
    v25 = OUTLINED_FUNCTION_50_2();
    v26(v25);
    v27 = OUTLINED_FUNCTION_27_6();
    v29 = OUTLINED_FUNCTION_51_2(v27, v28, v16);
    if (v37)
    {
      break;
    }

    OUTLINED_FUNCTION_25_6(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v72);
    (*(v38 + 32))(v16, v39 + v40, v12);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v12);
    OUTLINED_FUNCTION_39_0();
    sub_1BF17A65C();
    v44 = sub_1BF17A55C();
    OUTLINED_FUNCTION_58_2(v44, v45, v46, v47, v48, v49, v50, v51, v69, v71, v73, v75, v76);
    v52 = OUTLINED_FUNCTION_19_8();
    v53(v52);
    v12 = v77;
  }

  v58 = v0[23];
  v59 = v0[20];
  v60 = v0[17];
  v62 = v0[14];
  v61 = v0[15];
  v63 = v0[13];
  v64 = v0[6];
  v74 = *(v0 + 7);

  v0[3] = v11;
  v65 = swift_task_alloc();
  *(v65 + 16) = v64;
  *(v65 + 24) = v74;
  OUTLINED_FUNCTION_54();
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  sub_1BF17A38C();
  swift_bridgeObjectRelease_n();

  v66 = OUTLINED_FUNCTION_34_3();

  return v67(v66);
}

uint64_t sub_1BF0CDB40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BF0CDC48;

  return v10(a1, a3);
}

uint64_t sub_1BF0CDC48()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = *(v1 + 16);

  return v5(v6);
}

uint64_t sub_1BF0CDD48(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = v3;
  *(v6 + 16) = a1;
  v8 = *a2;
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v14 = (a3 + *a3);
  v11 = a3[1];
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1BF0CDEE8;

  return v14(a1 + v10, v8, a2 + v9);
}

uint64_t sub_1BF0CDEE8()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  *v5 = v2;
  OUTLINED_FUNCTION_9();

  return v8();
}

uint64_t Sequence<>.unorderedConcurrentMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_14_7();
}

uint64_t sub_1BF0CE000()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[8];
  v2 = v0[5];
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_22_7(v3);
  v4 = *(MEMORY[0x1E69E87D8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[10] = v5;
  *v5 = v6;
  v5[1] = sub_1BF0CE0C8;
  v7 = v0[6];
  v8 = OUTLINED_FUNCTION_24_9();

  return MEMORY[0x1EEE6DBF8](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BF0CE0C8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF0CE1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_26_1();
  v13 = v12[29];
  v14 = v12[26];
  v15 = v12[24];
  v17 = v12[18];
  v16 = v12[19];
  v18 = v12[17];
  v19 = v12[13];
  (*(v12[22] + 8))(v12[23], v12[21]);
  v20 = v12[3];

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1BF0CE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v10 = *(a7 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[13] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[14] = v13;
  v8[15] = *(v13 + 64);
  v8[16] = swift_task_alloc();
  sub_1BF00974C();
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v16 = *(*(sub_1BF17AE6C() - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v17 = sub_1BF17A71C();
  v8[19] = v17;
  v18 = *(v17 - 8);
  v8[20] = v18;
  v19 = *(v18 + 64) + 15;
  v8[21] = swift_task_alloc();
  v20 = *(*(sub_1BF17AE6C() - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v21 = *(a6 - 8);
  v8[23] = v21;
  v22 = *(v21 + 64) + 15;
  v8[24] = swift_task_alloc();
  v23 = swift_getAssociatedTypeWitness();
  v8[25] = v23;
  v24 = *(v23 - 8);
  v8[26] = v24;
  v25 = *(v24 + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0CE5A8, 0, 0);
}

uint64_t sub_1BF0CE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 216);
  v14 = *(v12 + 112);
  v15 = *(v12 + 80);
  (*(*(v12 + 184) + 16))(*(v12 + 192), *(v12 + 40), *(v12 + 64));
  sub_1BF17A32C();
  v50 = v14;
  while (1)
  {
    v16 = *(v12 + 216);
    v17 = *(v12 + 200);
    v18 = *(v12 + 176);
    v19 = *(v12 + 104);
    v20 = *(v12 + 80);
    v21 = *(v12 + 64);
    swift_getAssociatedConformanceWitness();
    sub_1BF17AF0C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
    v23 = *(v12 + 32);
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v24 = *(v12 + 176);
    v26 = *(v12 + 128);
    v25 = *(v12 + 136);
    v53 = *(v12 + 32);
    v27 = *(v12 + 120);
    v28 = *(v12 + 104);
    v29 = *(v12 + 56);
    v51 = *(v12 + 48);
    v52 = *(v12 + 64);
    v30 = sub_1BF17A77C();
    v54 = *(v12 + 72);
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v30);
    v31 = *(v50 + 32);
    v31(v26, v24, v28);
    v32 = (*(v50 + 80) + 72) & ~*(v50 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 32) = v52;
    *(v33 + 40) = v54;
    *(v33 + 56) = v51;
    *(v33 + 64) = v29;
    v31(v33 + v32, v26, v28);
    v34 = sub_1BF17A72C();

    sub_1BF0CC6A0(v25, &unk_1BF1828E0, v33, v34);
    sub_1BF00CAB0(v25);
  }

  v35 = *(v12 + 168);
  v36 = *(v12 + 72);
  (*(*(v12 + 208) + 8))(*(v12 + 216), *(v12 + 200));
  OUTLINED_FUNCTION_54();
  *(v12 + 16) = sub_1BF17A56C();
  v37 = *v23;
  sub_1BF17A6FC();
  v38 = *(MEMORY[0x1E69E8588] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v12 + 224) = v39;
  *v39 = v40;
  v41 = OUTLINED_FUNCTION_10_20(v39);

  return MEMORY[0x1EEE6D8A8](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1BF0CE828()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 224);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF0CE90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_26_1();
  v13 = v12[18];
  v14 = v12[9];
  v15 = OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_51_2(v15, v16, v14);
  if (v17)
  {
    v18 = v12[27];
    v19 = v12[24];
    v20 = v12[22];
    v22 = v12[16];
    v21 = v12[17];
    v23 = v12[12];
    v24 = v12[3];
    (*(v12[20] + 8))(v12[21], v12[19]);
    *v24 = v12[2];

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_23_1();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    v34 = v12[12];
    v35 = OUTLINED_FUNCTION_46_3(v12[11]);
    v36(v35);
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5DC();
    v37 = *(MEMORY[0x1E69E8588] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v12[28] = v38;
    *v38 = v39;
    OUTLINED_FUNCTION_10_20();
    OUTLINED_FUNCTION_23_1();

    return MEMORY[0x1EEE6D8A8](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }
}

uint64_t sub_1BF0CEA70()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_32_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_20_8(v1);
  OUTLINED_FUNCTION_35_4();

  return sub_1BF0CDB40(v3, v4, v5, v6);
}

uint64_t sub_1BF0CEAFC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_34_3();

  return v6(v5);
}

uint64_t sub_1BF0CEBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_22();
  v11 = *(v10 + 48);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4(v12);
  *v13 = v14;
  v13[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_35_4();

  return v22(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1BF0CEC84()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_22();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v4[1] = sub_1BF035DD4;
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_35_4();

  return sub_1BF0CE294(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BF0CED1C()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_39_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68(AssociatedTypeWitness);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_55_3();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_16_8(v4);
  OUTLINED_FUNCTION_23_1();

  return sub_1BF047E90(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BF0CEE04(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v7[1] = sub_1BF035DD0;

  return sub_1BF02B7F8(a1, v4);
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF0CEEE8, 0, 0);
}

uint64_t sub_1BF0CEEE8()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  v0[3] = sub_1BF179CFC();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x1E69E8748] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_1BF17A65C();
  *v5 = v0;
  v5[1] = sub_1BF0CF00C;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  return MEMORY[0x1EEE6DB28](v0 + 2, v0 + 3, &unk_1BF182918, v3, v9, v6, v7);
}

uint64_t sub_1BF0CF00C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1BF0CF128;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1BF0532DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BF0CF128()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1BF0CF18C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[4] = AssociatedTypeWitness;
  v4 = *(AssociatedTypeWitness - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0CF264, 0, 0);
}

uint64_t sub_1BF0CF264()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1BF17A65C();
  sub_1BF17A5DC();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1BF0CF30C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1BF0CF3BC;

  return sub_1BF0CF18C(a1, a2);
}

uint64_t sub_1BF0CF3BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t CodingSafeArray.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CodingSafeArray.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    type metadata accessor for SafeishArray();
    swift_getWitnessTable();
    sub_1BF17B8DC();
    v6 = v8[6];
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodingSafeArray.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17BBFC();
  v9[6] = v4;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v6 = *(a2 + 16);
  sub_1BF17A65C();
  v8 = *(a2 + 32);
  swift_getWitnessTable();
  sub_1BF17B95C();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1BF0CF720@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return CodingSafeArray.init(from:)(a1, a3);
}

uint64_t sub_1BF0CF75C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BF0CF7B0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BF17A31C();
  }

  __break(1u);
  return result;
}

uint64_t VersionQualifier.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

TeaFoundation::VersionQualifier __swiftcall VersionQualifier.init(name:version:)(TeaFoundation::VersionQualifier name, TeaFoundation::VersionNumber_optional version)
{
  v3 = *version.value.numbers._rawValue;
  *v2 = name.name;
  v2[1]._countAndFlagsBits = v3;
  name.version = version;
  return name;
}

TeaFoundation::VersionQualifier __swiftcall VersionQualifier.init(_:_:)(TeaFoundation::VersionQualifier result, Swift::OpaquePointer_optional a2)
{
  *v2 = result.name;
  v2[1]._countAndFlagsBits = a2.value._rawValue;
  result.version = a2;
  return result;
}

void sub_1BF0CFA10()
{
  if (!qword_1ED8EE408)
  {
    sub_1BF1795CC();
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE408);
    }
  }
}

uint64_t sub_1BF0CFA68(uint64_t a1)
{
  sub_1BF0CFA10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall VersionQualifier.init(_:)(TeaFoundation::VersionQualifier_optional *__return_ptr retstr, Swift::String_optional a2)
{
  if (a2.value._object)
  {
    VersionQualifier.init(_:)(a2.value);
    v3 = v6;
    v4 = v7;
    v5 = v8;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  retstr->value.name._countAndFlagsBits = v3;
  retstr->value.name._object = v4;
  retstr->value.version.value.numbers._rawValue = v5;
}

uint64_t static VersionQualifier.beta(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 1635018082;
  a2[1] = 0xE400000000000000;
  a2[2] = a1;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t VersionQualifier.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v5 = *v0;
    v6 = v0[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](45, 0xE100000000000000);
    v2 = VersionNumber.description.getter();
    MEMORY[0x1BFB52000](v2);

    return v5;
  }

  else
  {
    v3 = v0[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return v1;
}

uint64_t static VersionQualifier.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (OUTLINED_FUNCTION_0_46(), (sub_1BF17B86C() & 1) != 0))
  {
    if (v2)
    {
      v5 = v2;
    }

    else
    {
      v5 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v10 = v5;
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v9 = v6;
    v7 = static VersionNumber.< infix(_:_:)(&v10, &v9);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return v7;
  }

  else
  {
    OUTLINED_FUNCTION_0_46();

    return sub_1BF17B86C();
  }
}

BOOL static VersionQualifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1BF17B86C(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      v9 = v2;
      if (v3)
      {
        v8 = v3;
        v7 = static VersionNumber.== infix(_:_:)(&v9, &v8);
        swift_bridgeObjectRetain_n();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

        return (v7 & 1) != 0;
      }
    }

    else if (!v3)
    {

      return 1;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return 0;
  }

  return result;
}

unint64_t sub_1BF0CFE34()
{
  result = qword_1EBDCBDB0;
  if (!qword_1EBDCBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDB0);
  }

  return result;
}

uint64_t static CacheMaxAge.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else if (v4)
  {
    return 0;
  }

  else
  {
    v8 = *a1;
    v9 = *a2;
    return v2 == v3;
  }
}

uint64_t CacheMaxAge.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0x69736E6972746E69;
    }

    else
    {
      return 0x72657665726F66;
    }
  }

  else
  {
    v3 = *v0;
    sub_1BF07D51C();
    v2 = sub_1BF179D2C();
    MEMORY[0x1BFB52000](v2);

    MEMORY[0x1BFB52000](41, 0xE100000000000000);
    return 678977901;
  }
}

uint64_t getEnumTagSinglePayload for CacheMaxAge(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CacheMaxAge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BF0CFFF4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0D0010(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t withEagerCancellation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF044920, 0, 0);
}

uint64_t sub_1BF0D0064()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  OUTLINED_FUNCTION_9();
  v5 = v0[13];

  return v4();
}

uint64_t sub_1BF0D00D4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1BF0D0130()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_1_34();
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = *(v0 + 72);
    v3 = *(v0 + 32);
    v4 = sub_1BEFF79E8();
    sub_1BF0D01E4(v0 + 16, v2, v3, v4);
  }

  else
  {
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);

  OUTLINED_FUNCTION_9();

  return v7();
}

uint64_t sub_1BF0D01E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1BF0D0278(uint64_t a1, uint64_t a2)
{
  result = sub_1BF046750(a1, a2, sub_1BF0D0428);
  if (result)
  {
    v4 = result;
    sub_1BF17A6EC();
    sub_1BF0D03D0();
    v5 = swift_allocError();
    sub_1BF179D0C();
    v7 = v5;
    v6 = sub_1BEFF79E8();
    return sub_1BF0D01E4(&v7, v4, a2, v6);
  }

  return result;
}

uint64_t sub_1BF0D0328(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0D037C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1BF0D03D0()
{
  result = qword_1ED8ECC30[0];
  if (!qword_1ED8ECC30[0])
  {
    sub_1BF17A6EC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8ECC30);
  }

  return result;
}

uint64_t *sub_1BF0D0428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  *(a1 + 16) = 1;
  *a2 = *(a1 + 8);
  return sub_1BF0D0464(a1);
}

uint64_t *sub_1BF0D0464(uint64_t *result)
{
  result[1] = 0;
  if (*result)
  {
    v1 = *result;

    sub_1BF17A7DC();
  }

  return result;
}

uint64_t PromiseDebouncer.__allocating_init(interval:queue:)(uint64_t a1, double a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  PromiseDebouncer.init(interval:queue:)(a1, a2);
  return v7;
}

Swift::Void __swiftcall PromiseDebouncer.cancel()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + qword_1ED8EA9A0);

  UnfairLock.lock()();

  v4 = qword_1ED8EA998;
  if (*(v1 + qword_1ED8EA998))
  {
    v5 = *(v1 + qword_1ED8EA998);

    sub_1BF179C3C();

    v6 = *(v1 + v4);
  }

  *(v1 + v4) = 0;

  v7 = qword_1ED8EA980;
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_1BF1794FC();
  v9 = *(v2 + 80);
  type metadata accessor for OnlyOnceDeferredPromise();
  OUTLINED_FUNCTION_0_47();
  sub_1BEFE7288(v10, v11);
  sub_1BF179E3C();
  v12 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v12);
  sub_1BF179E1C();
  swift_getWitnessTable();
  sub_1BF17A41C();

  sub_1BF021498(v1);
}

uint64_t sub_1BF0D0714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v8 = sub_1BF1794FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v43 = v10;
    v14 = qword_1ED8EA9A0;
    v15 = *(result + qword_1ED8EA9A0);

    UnfairLock.lock()();

    sub_1BF1794EC();
    v16 = qword_1ED8EA9A8;
    swift_beginAccess();
    (*(v9 + 40))(v13 + v16, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    swift_endAccess();
    os_unfair_lock_unlock(*(*(v13 + v14) + 16));
    MEMORY[0x1EEE9AC00](v17);
    *(&v36 - 4) = a5;
    *(&v36 - 3) = a2;
    *(&v36 - 2) = a3;
    v39 = firstly<A>(closure:)(sub_1BF0D1114);
    v46 = qword_1ED8EA990;
    v18 = *(v13 + qword_1ED8EA990);
    v19 = *(v9 + 16);
    v44 = v9 + 16;
    v45 = v19;
    v20 = v47;
    v19(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v8);
    v37 = v8;
    v40 = *(v9 + 80);
    v21 = (v40 + 24) & ~v40;
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    v23 = *(v9 + 32);
    v41 = a5;
    v42 = v23;
    v23(v22 + v21, v11, v8);
    v38 = type metadata accessor for PromiseDebouncer();
    v24 = v20;
    v25 = v18;
    Promise.then<A, B>(on:disposeOn:closure:)();

    v26 = *(v13 + v46);
    v27 = v37;
    v45(v11, v24, v37);
    v28 = swift_allocObject();
    v29 = v42;
    *(v28 + 16) = v41;
    v29(v28 + v21, v11, v27);
    v30 = v26;
    Promise.error<A>(on:disposeOn:closure:)();
    v39 = v31;

    v32 = *(v13 + v46);
    v45(v11, v47, v27);
    v33 = swift_allocObject();
    v34 = v42;
    *(v33 + 16) = v41;
    v34(v33 + v21, v11, v27);
    v35 = v32;
    Promise.always<A>(on:disposeOn:closure:)();
  }

  return result;
}

void sub_1BF0D0B3C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + qword_1ED8EA9A0);

  UnfairLock.lock()();

  v5 = qword_1ED8EA980;
  swift_beginAccess();
  v6 = *(a2 + v5);
  sub_1BF1794FC();
  v7 = *(v3 + 80);
  type metadata accessor for OnlyOnceDeferredPromise();
  sub_1BEFE7288(qword_1ED8F0138, MEMORY[0x1E69695A8]);
  sub_1BF179EAC();
  swift_endAccess();
  if (v8)
  {
    OnlyOnceDeferredPromise.resolve(_:)();
  }

  sub_1BF021498(a2);
}

void sub_1BF0D0C80(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + qword_1ED8EA9A0);

  UnfairLock.lock()();

  v5 = qword_1ED8EA980;
  swift_beginAccess();
  v6 = *(a2 + v5);
  sub_1BF1794FC();
  v7 = *(v3 + 80);
  type metadata accessor for OnlyOnceDeferredPromise();
  sub_1BEFE7288(qword_1ED8F0138, MEMORY[0x1E69695A8]);
  sub_1BF179EAC();
  swift_endAccess();
  if (v8)
  {
    OnlyOnceDeferredPromise.reject(_:)();
  }

  sub_1BF021498(a2);
}

void sub_1BF0D0DB4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_1BF1794FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + qword_1ED8EA9A0);

  UnfairLock.lock()();

  (*(v6 + 16))(v9, a2, v5);
  v13 = 0;
  swift_beginAccess();
  v11 = *(v4 + 80);
  type metadata accessor for OnlyOnceDeferredPromise();
  sub_1BEFE7288(qword_1ED8F0138, MEMORY[0x1E69695A8]);
  sub_1BF179E9C();
  sub_1BF179EBC();
  swift_endAccess();
  sub_1BF021498(a1);
}

uint64_t PromiseDebouncer.deinit()
{
  v1 = qword_1ED8EA9A8;
  v2 = sub_1BF1794FC();
  OUTLINED_FUNCTION_0_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_1ED8EA980);

  v5 = *(v0 + qword_1ED8EA998);

  v6 = *(v0 + qword_1ED8EA9A0);

  return v0;
}

uint64_t PromiseDebouncer.__deallocating_deinit()
{
  PromiseDebouncer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0D10A0()
{
  v1 = v0[2];
  v2 = sub_1BF1794FC();
  OUTLINED_FUNCTION_68(v2);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1BF0D0714(v4, v5, v6, v7, v1);
}

uint64_t sub_1BF0D1114()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

void sub_1BF0D1144(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF1794FC();
  OUTLINED_FUNCTION_68(v4);
  v6 = *(v5 + 80);
  sub_1BF0D0B3C(a1, a2);
}

void sub_1BF0D11C4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF1794FC();
  OUTLINED_FUNCTION_68(v4);
  v6 = *(v5 + 80);

  sub_1BF0D0C80(a1, a2);
}

void sub_1BF0D1240(uint64_t *a1)
{
  v3 = sub_1BF1794FC();
  OUTLINED_FUNCTION_68(v3);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  sub_1BF0D0DB4(a1, v5);
}

uint64_t BackgroundFetchJournalEntry.reason.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSBackgroundFetchJournalEntry_reason);
  v2 = *(v0 + OBJC_IVAR___TSBackgroundFetchJournalEntry_reason + 8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t BackgroundFetchJournalEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TSBackgroundFetchJournalEntry_date;
  v4 = sub_1BF1794AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id BackgroundFetchJournalEntry.init(reason:date:)()
{
  OUTLINED_FUNCTION_0_48();
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR___TSBackgroundFetchJournalEntry_reason];
  *v5 = v3;
  *(v5 + 1) = v2;
  v6 = OBJC_IVAR___TSBackgroundFetchJournalEntry_date;
  v7 = sub_1BF1794AC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[v6], v0, v7);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(v0, v7);
  return v9;
}

id BackgroundFetchJournalEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundFetchJournalEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BackgroundFetchJournalEntry()
{
  result = qword_1EBDCBDC0;
  if (!qword_1EBDCBDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF0D18A8()
{
  result = sub_1BF1794AC();
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

uint64_t sub_1BF0D1A04()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t DeviceStorageManagerType.purgeUrgency.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  (*(a1 + 8))();
  sub_1BF0D1AA0(a2);
}

void sub_1BF0D1AA0(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  *a1 = *(v2 + 32);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF0D1B00()
{
  v1 = v0;
  v2 = *(v0 + 16);
  UnfairLock.lock()();
  swift_beginAccess();
  v3 = *(v1 + 32);
  os_unfair_lock_unlock(*(v2 + 16));
  return v3;
}

uint64_t DeviceStorageManager.observablePurgeUrgency.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t DeviceStorageManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DeviceStorageManager.init()();
  return v0;
}

uint64_t sub_1BF0D1BC4()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = 0;
    sub_1BF179D4C();
  }

  return 0;
}

uint64_t sub_1BF0D1E3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v8 = v6(a2, v7);

  return v8;
}

uint64_t sub_1BF0D1EA4()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = 0;
    sub_1BF179D4C();
  }

  return 0;
}

void sub_1BF0D2178(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v23 = MEMORY[0x1E69E7CC0];
  v4 = sub_1BEFE90AC(v3);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v7 = *(v23 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  v8 = *(a1 + 24);
  *(a1 + 24) = v23;

  v9 = *(a1 + 24);
  v10 = sub_1BEFE90AC(v9);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v10 != v11)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB53020](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8 * v11 + 32);
    }

    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = *(v13 + 24);

    ++v11;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v12 + 16);
        sub_1BF0A6AB4();
        v12 = v20;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_1BF0A6AB4();
        v12 = v21;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = Strong;
      *(v18 + 40) = v16;
      v11 = v14;
    }
  }

  *a2 = v12;
}

void *DeviceStorageManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t DeviceStorageManager.__deallocating_deinit()
{
  DeviceStorageManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t DeviceStorageManager.add(purgeable:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DisposablePurgeable();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1BF009D14(v7, a1);
  v9 = *(v3 + 32);

  UnfairLock.lock()();
  sub_1BF0D29DC(v3);
  os_unfair_lock_unlock(*(v9 + 16));

  a2[3] = v6;
  a2[4] = &off_1F3DBDED0;
  *a2 = v8;
  return result;
}

uint64_t sub_1BF0D29DC(uint64_t a1)
{
  swift_beginAccess();

  MEMORY[0x1BFB52290](v2);
  sub_1BF005F5C(*((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  return swift_endAccess();
}

unint64_t sub_1BF0D2AEC()
{
  result = qword_1EBDCBDD0;
  if (!qword_1EBDCBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDD0);
  }

  return result;
}

unint64_t sub_1BF0D2B44()
{
  result = qword_1EBDCBDD8;
  if (!qword_1EBDCBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDD8);
  }

  return result;
}

_BYTE *sub_1BF0D2BD0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t URLHandlerManager.__allocating_init()()
{
  v0 = swift_allocObject();
  URLHandlerManager.init()();
  return v0;
}

uint64_t URLHandlerManager.add<A>(handler:)()
{
  OUTLINED_FUNCTION_5_18();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_49(v5, v17);
  v7(v6);
  v8 = *(v1 + 80);
  v9 = OUTLINED_FUNCTION_4_19();
  v13 = sub_1BF10E858(v9, v10, v11, v12);
  OUTLINED_FUNCTION_2_29(v13, v14, v15);
  type metadata accessor for AnyURLHandler();
  OUTLINED_FUNCTION_12_1();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_20();
  return swift_endAccess();
}

{
  OUTLINED_FUNCTION_5_18();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_49(v5, v17);
  v7(v6);
  v8 = *(v1 + 80);
  v9 = OUTLINED_FUNCTION_4_19();
  v13 = sub_1BF10E8C8(v9, v10, v11, v12);
  OUTLINED_FUNCTION_2_29(v13, v14, v15);
  type metadata accessor for AnyAsyncURLHandler();
  OUTLINED_FUNCTION_12_1();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_20();
  return swift_endAccess();
}

uint64_t URLHandlerManager.handle(url:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v93 = a2;
  v98 = 0;
  v6 = *(*v4 + 80);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v82[1] = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v94 = v82 - v11;
  OUTLINED_FUNCTION_40();
  v92 = type metadata accessor for URLHandlerContext();
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_16();
  v86 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v90 = (v82 - v19);
  v20 = type metadata accessor for URLHandlerMatch();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_1_16();
  v87 = v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v91 = v82 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v82 - v26;
  sub_1BF17923C();
  OUTLINED_FUNCTION_2_3();
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32, a1);
  v34 = type metadata accessor for URLHandlerMatcher();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v97 = URLHandlerMatcher.init(url:)(v32);
  swift_beginAccess();
  v85 = v4;
  v37 = v4[4];
  v96 = v6;
  v38 = type metadata accessor for AnyURLHandlerProcessor();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v39 = sub_1BF17A4EC();
  v101 = v39;
  OUTLINED_FUNCTION_8_19();
  v40 = sub_1BF17A5AC();
  v83 = v8;
  v84 = v13;
  if (v39 != v40)
  {
    v41 = v37 + 32;
    v89 = (v8 + 16);
    v88 = (v13 + 8);
    WitnessTable = 24;
    while (1)
    {
      OUTLINED_FUNCTION_8_19();
      v43 = sub_1BF17A58C();
      sub_1BF17A51C();
      if ((v43 & 1) == 0)
      {
        break;
      }

      v44 = (v41 + 24 * v39);
      v45 = *v44;
      v46 = v44[1];
      v47 = v44[2];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      sub_1BF17A62C();
      v3 = v98;
      URLHandlerMatcher.match(for:)(v45, v27);
      if (v3)
      {

        v98 = 0;
      }

      else
      {
        v95 = v46;
        v48 = v41;
        v49 = v91;
        sub_1BF0D3BA4(v27, v91);
        v50 = v94;
        v51 = v96;
        (*v89)(v94, v93, v96);
        v98 = 0;
        v3 = v27;
        v52 = v90;
        v53 = v49;
        v41 = v48;
        v54 = v50;
        WitnessTable = 24;
        URLHandlerContext.init(match:clientContext:)(v53, v54, v51, v90);
        sub_1BF10E938(v52, v45, v95);

        v55 = v52;
        v27 = v3;
        (*v88)(v55, v92);
        OUTLINED_FUNCTION_3_22();
        sub_1BF0D3C8C(v3, v56);
      }

      OUTLINED_FUNCTION_8_19();
      v57 = sub_1BF17A5AC();
      v39 = v101;
      if (v101 == v57)
      {
        goto LABEL_8;
      }
    }

    sub_1BF17B23C();
    __break(1u);
    goto LABEL_24;
  }

LABEL_8:

  v41 = v85;
  swift_beginAccess();
  WitnessTable = *(v41 + 16);
  type metadata accessor for AnyURLHandler();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v58 = sub_1BF17A4EC();
  v100 = v58;
  if (v58 != sub_1BF17A5AC())
  {
    v59 = (WitnessTable + 32);
    v95 = (v83 + 16);
    v90 = (v84 + 8);
    v41 = v87;
    v60 = v86;
    while (1)
    {
      v38 = sub_1BF17A58C();
      sub_1BF17A51C();
      if ((v38 & 1) == 0)
      {
        break;
      }

      v61 = &v59[24 * v58];
      v62 = *v61;
      v63 = v61[1];
      v64 = v61[2];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      sub_1BF17A62C();
      v3 = v98;
      URLHandlerMatcher.match(for:)(v62, v41);
      v98 = v3;
      if (v3)
      {

        v98 = 0;
      }

      else
      {
        v3 = v59;
        v65 = v91;
        sub_1BF0D3BA4(v41, v91);
        v66 = v94;
        v67 = v96;
        (*v95)(v94, v93, v96);
        v68 = v65;
        v59 = v3;
        v69 = v66;
        v41 = v87;
        URLHandlerContext.init(match:clientContext:)(v68, v69, v67, v60);
        v70 = OUTLINED_FUNCTION_8_19();
        LOBYTE(v67) = sub_1BF10E960(v70, v71, v63);

        (*v90)(v60, v92);
        OUTLINED_FUNCTION_3_22();
        sub_1BF0D3C8C(v41, v72);
        if (v67)
        {

          goto LABEL_22;
        }
      }

      v73 = sub_1BF17A5AC();
      v58 = v100;
      if (v100 == v73)
      {

        v41 = v85;
        goto LABEL_17;
      }
    }

LABEL_24:
    sub_1BF17B23C();
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_20;
  }

LABEL_17:
  swift_beginAccess();
  v99 = *(v41 + 24);
  v3 = type metadata accessor for AnyAsyncURLHandler();
  v38 = sub_1BF17A65C();
  WitnessTable = swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {

    return 0;
  }

  if (qword_1ED8EFB98 != -1)
  {
    goto LABEL_25;
  }

LABEL_20:
  v75 = *(v41 + 24);
  v98 = qword_1ED8EFC18;
  v99 = v75;
  v76 = v83;
  v77 = v94;
  v78 = v96;
  (*(v83 + 16))(v94, v93, v96);
  v79 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v80 = swift_allocObject();
  v81 = v97;
  *(v80 + 16) = v78;
  *(v80 + 24) = v81;
  (*(v76 + 32))(v80 + v79, v77, v78);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  whenFirst<A, B, C>(on:providers:provide:where:)(v98, &v99, sub_1BF0D3B68, v80, sub_1BF01877C, 0, v3, v38, MEMORY[0x1E69E6370], WitnessTable);

LABEL_22:

  return 1;
}

uint64_t sub_1BF0D3808(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v30 = *(a4 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for URLHandlerContext();
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = v27 - v10;
  sub_1BF0D3C34();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URLHandlerMatch();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v27 - v21;
  v24 = *a1;
  v23 = a1[1];
  v27[1] = a1[2];
  v28 = v23;
  URLHandlerMatcher.match(for:)(v24, v15);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_1BF0D3CEC(v15, v22);
  sub_1BF0D3BA4(v22, v20);
  (*(v30 + 16))(v8, v32, a4);
  URLHandlerContext.init(match:clientContext:)(v20, v8, a4, v11);
  v25 = sub_1BF10E98C(v11, v24, v28);
  (*(v29 + 8))(v11, v31);
  sub_1BF0D3C8C(v22, type metadata accessor for URLHandlerMatch);
  return v25;
}

void *URLHandlerManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t URLHandlerManager.__deallocating_deinit()
{
  URLHandlerManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF0D3BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHandlerMatch();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF0D3C34()
{
  if (!qword_1EBDCABE0)
  {
    type metadata accessor for URLHandlerMatch();
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCABE0);
    }
  }
}

uint64_t sub_1BF0D3C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BF0D3CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHandlerMatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0D3D50()
{
  v0 = sub_1BF17A0AC();
  v2 = v1;
  if (v0 == sub_1BF17A0AC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_1_36();
  }

  return v5 & 1;
}

uint64_t sub_1BF0D3DC8(unsigned __int8 a1, char a2)
{
  v2 = 0x7463656A626FLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7463656A626FLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x7961727261;
      break;
    case 2:
      v5 = 0x676E69727473;
      break;
    case 3:
      v5 = 0x7265626D756ELL;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1819242338;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1819047278;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x7961727261;
      break;
    case 2:
      v2 = 0x676E69727473;
      break;
    case 3:
      v2 = 0x7265626D756ELL;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1819242338;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1819047278;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_36();
  }

  return v8 & 1;
}

uint64_t sub_1BF0D3F1C()
{
  OUTLINED_FUNCTION_4_20();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BF17B86C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1BF0D3F88(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x75614C7265746661;
    }

    if (v2 == 1)
    {
      v4 = 0x80000001BF18C430;
    }

    else
    {
      v4 = 0xEE00676E6968636ELL;
    }
  }

  else
  {
    v4 = 0x80000001BF18C410;
    v3 = 0xD000000000000013;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x75614C7265746661;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001BF18C430;
    }

    else
    {
      v6 = 0xEE00676E6968636ELL;
    }
  }

  else
  {
    v6 = 0x80000001BF18C410;
    v5 = 0xD000000000000013;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_36();
  }

  return v8 & 1;
}

uint64_t sub_1BF0D406C(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000072;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_4_20();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_36();
  }

  return v8 & 1;
}

uint64_t sub_1BF0D40F8(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000006E6FLL;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_4_20();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_36();
  }

  return v8 & 1;
}

uint64_t sub_1BF0D4188()
{
  OUTLINED_FUNCTION_4_20();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BF17B86C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1BF0D41F4(char a1, char a2)
{
  if (qword_1BF1831A0[a1] == qword_1BF1831A0[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BF17B86C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

TeaFoundation::EventTriggerBehavior sub_1BF0D4280@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = EventTriggerBehavior.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF0D42C0@<X0>(uint64_t *a1@<X8>)
{
  result = EventTriggerBehavior.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0D42F4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t EventManager.__allocating_init()()
{
  v0 = swift_allocObject();
  EventManager.init()();
  return v0;
}

uint64_t sub_1BF0D4374()
{
  v1 = *v0;
  sub_1BEFFB114();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = sub_1BF17A98C();

  return v4 & 1;
}

uint64_t sub_1BF0D43EC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1BF17A56C();
  if (sub_1BF17A5AC())
  {
    v4 = sub_1BF02C7D0(v3, v2, *(v1 + 88));
  }

  else
  {

    v4 = MEMORY[0x1E69E7CD0];
  }

  return sub_1BF0D42F4(v4);
}

uint64_t EventManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t EventManager.__deallocating_deinit()
{
  EventManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BF0D4500()
{
  result = qword_1EBDCBDE0;
  if (!qword_1EBDCBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDE0);
  }

  return result;
}

unint64_t sub_1BF0D4558()
{
  result = qword_1EBDCBDE8;
  if (!qword_1EBDCBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDE8);
  }

  return result;
}

uint64_t sub_1BF0D4630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((sub_1BF17A2AC() & 1) == 0)
  {
    return (*(a4 + 8))(a1, a2, a3, a3, a4);
  }

  return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
}

uint64_t NSProcessInfo.environmentVariable<A>(forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1BEFFF260();
  v8 = v7;
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 environment];

  v11 = sub_1BF179D5C();
  v12 = sub_1BF0898CC(v6, v8, v11);
  v14 = v13;

  if (v14)
  {
    sub_1BF0D4630(v12, v14, a1, a2, a3);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_0_50();

    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

uint64_t sub_1BF0D48B8()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  v4[2] = *(v1 + 104);
  v4[3] = v3;
  v4[4] = v2;
  sub_1BEFFDAA8(0, &qword_1EBDCBDF0, type metadata accessor for WeakPoolObject);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BF0D4A90;
  *(v6 + 24) = v4;
  *(v5 + 16) = sub_1BF0D4A9C;
  *(v5 + 24) = v6;

  return v5;
}

uint64_t sub_1BF0D499C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BF17AE6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - v8;
  a1(v7);
  v10 = sub_1BF17AE5C();
  result = (*(v5 + 8))(v9, v4);
  *a2 = v10;
  return result;
}

uint64_t sub_1BF0D4A90@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1BF0D499C(*(v1 + 24), a1);
}

void *sub_1BF0D4A9C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(&v6);
  *a1 = v6;
  return result;
}

uint64_t sub_1BF0D4AE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF0D4B54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  if (!a2)
  {
    return 0;
  }

  v6 = ((*(*(*(a3 + 24) - 8) + 64) + v4) & ~v4) + v5;
  if (a2 < 0xFF)
  {
    goto LABEL_20;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v11 < 2)
    {
LABEL_20:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_20;
  }

LABEL_12:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 255;
}

void sub_1BF0D4CB8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t dispatch thunk of RequestSigning.signature(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1BF0D5008;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1BF0D5008(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void sub_1BF0D5188()
{
  sub_1BF0B5EA4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ReferenceEncodingPool();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BF0D524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF0B5EA4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ReferenceEncodingContainer();
  *(a3 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_1BF0D52D0(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Reference();
  v8 = (a1 + *(v7 + 32));
  v9 = v8[1];
  v18 = *v8;
  v19 = v9;
  v21 = 0;
  sub_1BF0B5EA4();
  sub_1BF0D5440();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17B69C();

  if (!v3)
  {
    v17 = v6;
    v11 = a1 + *(v7 + 28);
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v18 = *v11;
    v19 = v12;
    v20 = v14;
    v21 = 1;
    sub_1BF0D5494();
    sub_1BF17B69C();
    v15 = *(v2 + *(a2 + 28));
    v16 = v8[1];
    v18 = *v8;
    v19 = v16;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v14)
    {
      sub_1BF175DD8(a1, &v18, v13, v17);
    }

    else
    {
      sub_1BF175D00(a1, &v18, v13, v12, v17);
    }
  }

  return result;
}

unint64_t sub_1BF0D5440()
{
  result = qword_1ED8EABB8[0];
  if (!qword_1ED8EABB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EABB8);
  }

  return result;
}

unint64_t sub_1BF0D5494()
{
  result = qword_1ED8EA3F0;
  if (!qword_1ED8EA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA3F0);
  }

  return result;
}

uint64_t ts_debug_log(_:log:)(uint64_t (*a1)(void), uint64_t a2, NSObject *a3)
{
  v5 = sub_1BF17ACAC();
  result = os_log_type_enabled(a3, v5);
  if (result)
  {
    sub_1BF17ACAC();
    sub_1BF071C70();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BF17DEF0;
    v8 = a1();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1BF071CD8();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_1BF1797CC();
  }

  return result;
}

uint64_t sub_1BF0D5620()
{
  v0 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v0, qword_1EBDCCE30);
  OUTLINED_FUNCTION_3_24();
  if (qword_1ED8EFC00 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_1_39();
}

uint64_t ReferenceType.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1BF17B91C();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t ReferenceType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BF179F3C();
}

uint64_t ReferenceType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF17BB6C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

uint64_t ReferenceType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t SignpostEntry.object.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1BF17AE6C();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t SignpostEntry.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1BF1794AC();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t SignpostEntry.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1BF1794AC();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t SignpostEntry.comment.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v3;
}

uint64_t SignpostEntry.timeInterval.getter(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = v1 + *(a1 + 32);
  return sub_1BF1793DC();
}

uint64_t sub_1BF0D59D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_12(v14);
  (*(v15 + 32))(a7, a1);
  v16 = type metadata accessor for SignpostEntry();
  *(a7 + v16[7]) = a2;
  v17 = v16[8];
  v18 = sub_1BF1794AC();
  OUTLINED_FUNCTION_12(v18);
  v20 = *(v19 + 32);
  v20(a7 + v17, a3, v18);
  result = (v20)(a7 + v16[9], a4, v18);
  v22 = (a7 + v16[10]);
  *v22 = a5;
  v22[1] = a6;
  return result;
}

double SignpostEntry.shortDescription.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = *(a1 + 16);
  v5 = sub_1BF17AE6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - v9;
  v30 = *(v4 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF07CD5C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF1805A0;
  strcpy((inited + 32), "timeInterval");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  SignpostEntry.timeInterval.getter(a1);
  v14 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v15;
  *(inited + 72) = v14;
  *(inited + 80) = 0x746E656D6D6F63;
  *(inited + 88) = 0xE700000000000000;
  v16 = (v2 + *(a1 + 40));
  v17 = v16[1];
  v18 = MEMORY[0x1E69E6158];
  *(inited + 96) = *v16;
  *(inited + 104) = v17;
  *(inited + 120) = v18;
  *(inited + 128) = 0x74736F706E676973;
  *(inited + 136) = 0xE900000000000073;
  v19 = *(v2 + *(a1 + 28));
  type metadata accessor for Signpost();
  *(inited + 168) = sub_1BF17A65C();
  *(inited + 144) = v19;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v20 = sub_1BF179DAC();
  ShortDescription.init(name:_:)(0x7972746E45, 0xE500000000000000, v20, &v33);
  (*(v6 + 16))(v10, v2, v5);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v21 = v30;
    v22 = v29;
    (*(v30 + 32))(v29, v10, v4);
    v32[3] = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v21 + 16))(boxed_opaque_existential_0, v22, v4);
    type metadata accessor for ShortDescription();
    ShortDescription.subscript.setter(v32, 0x7463656A626FLL, 0xE600000000000000);
    (*(v21 + 8))(v22, v4);
  }

  v24 = v33;
  v25 = type metadata accessor for ShortDescription();
  v26 = v31;
  *(v31 + 24) = v25;
  *(v26 + 32) = &protocol witness table for ShortDescription<A>;
  *v26 = v24;
  result = *&v34;
  *(v26 + 8) = v34;
  return result;
}

uint64_t sub_1BF0D5E60(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF0D5E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ShortDescribable.description.getter(a1, WitnessTable);
}

uint64_t sub_1BF0D5EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1BF17AE6C();
  if (v3 <= 0x3F)
  {
    type metadata accessor for Signpost();
    result = sub_1BF17A65C();
    if (v4 <= 0x3F)
    {
      result = sub_1BF1794AC();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BF0D5FB4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  result = sub_1BF1794AC();
  v10 = *(result - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  if (!v7)
  {
    ++v14;
  }

  v15 = *(v10 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
LABEL_33:
    if (v8 != v13)
    {
      v23 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((v23 + v15 + 8) & ~v15, v11, result);
      }

      else
      {
        v24 = *v23;
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }

    if (v7 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v16 = ((*(*(result - 8) + 64) + ((*(*(result - 8) + 64) + v15 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    case 2:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }

LABEL_29:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        LODWORD(v17) = *a1;
      }

      result = v13 + (v17 | v22) + 1;
      break;
    default:
      goto LABEL_33;
  }

  return result;
}

void sub_1BF0D6214(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1BF1794AC();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v10 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 64);
  if (!v9)
  {
    ++v17;
  }

  v18 = *(v13 + 80);
  v19 = ((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v18 + ((v18 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v18)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v18 + ((v18 + ((v17 + 7) & 0xFFFFFFF8) + 8) & ~v18)) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = a3 - v16 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v12 = v21;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v16)
  {
    switch(v12)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_38;
      default:
LABEL_38:
        if (!a2)
        {
          return;
        }

LABEL_39:
        if (v10 == v16)
        {
          v24 = (a2 + 1);
          v25 = a1;
          v14 = v9;
          v11 = v7;
        }

        else
        {
          v26 = ((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v27 = (a2 - 1);
            }

            *v26 = v27;
            return;
          }

          v25 = (v26 + v18 + 8) & ~v18;
          v24 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v24, v14, v11);
        break;
    }
  }

  else
  {
    if (((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v18 + ((v18 + ((v17 + 7) & 0xFFFFFFF8) + 8) & ~v18)) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v18 + ((v18 + ((v17 + 7) & 0xFFFFFFF8) + 8) & ~v18)) & ~v18) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v16 + a2;
      bzero(a1, v19);
      *a1 = v23;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v19) = v22;
        break;
      case 2:
        *(a1 + v19) = v22;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v19) = v22;
        break;
      default:
        return;
    }
  }
}

void -= infix<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v36 = v0;
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v35 = OUTLINED_FUNCTION_25_7();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v33 = v18;
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_17_2();
  v20 = sub_1BF17A4EC();
  v39 = v20;
  OUTLINED_FUNCTION_17_2();
  if (v20 == sub_1BF17A5AC())
  {
LABEL_2:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v34 = (v14 + 16);
  v21 = (v7 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_17_2();
    v22 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v22 & 1) == 0)
    {
      break;
    }

    v23 = v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v20;
    v24 = *(v14 + 16);
    v25 = OUTLINED_FUNCTION_16_9();
    v26(v25);
LABEL_6:
    OUTLINED_FUNCTION_17_7();
    sub_1BF17A62C();
    sub_1BF179E9C();
    sub_1BF179D7C();
    (*v21)(v12, v35);
    (*(v14 + 8))(v19, v3);
    OUTLINED_FUNCTION_17_2();
    v27 = sub_1BF17A5AC();
    v20 = v39;
    if (v39 == v27)
    {
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_17_7();
  v28 = sub_1BF17B23C();
  if (v33 == 8)
  {
    v38 = v28;
    v29 = *v34;
    v30 = OUTLINED_FUNCTION_16_9();
    v31(v30);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1BF0D6728(uint64_t a1)
{
  v106 = type metadata accessor for AuthToken();
  v2 = OUTLINED_FUNCTION_6_3(v106);
  v105 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_16();
  v96 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_21();
  v95 = v8;
  v109 = sub_1BF17923C();
  v9 = OUTLINED_FUNCTION_6_3(v109);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_16();
  v100 = v14;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_21();
  v101 = v16;
  OUTLINED_FUNCTION_3_25();
  sub_1BF0D7A44(0, v17, v18);
  v20 = OUTLINED_FUNCTION_68(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_16();
  v98 = v23;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90 - v25;
  OUTLINED_FUNCTION_2_32();
  sub_1BF0D7A44(0, v27, v28);
  v30 = OUTLINED_FUNCTION_68(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_16();
  v104 = v33;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_10_21();
  v110 = v35;
  sub_1BF0D7A98();
  v103 = v36;
  v37 = OUTLINED_FUNCTION_12(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_0();
  v111 = (v41 - v40);
  v43 = a1 + 64;
  v42 = *(a1 + 64);
  v44 = *(a1 + 32);
  OUTLINED_FUNCTION_9_20();
  v47 = v46 & v45;
  v49 = (v48 + 63) >> 6;
  v97 = (v11 + 32);
  v93 = (v11 + 16);
  v91 = v11;
  v94 = (v11 + 8);
  v108 = a1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v50 = 0;
  v99 = MEMORY[0x1E69E7CC8];
  v102 = v49;
  v92 = v26;
  while (v47)
  {
    v51 = v26;
LABEL_7:
    v53 = __clz(__rbit64(v47)) | (v50 << 6);
    v54 = *(v108 + 56);
    v55 = (*(v108 + 48) + 16 * v53);
    v56 = *v55;
    v57 = v55[1];
    v107 = *(v105 + 72);
    v58 = *(v103 + 48);
    v59 = v111;
    sub_1BF0A8AC8(v54 + v107 * v53, v111 + v58);
    *v59 = v56;
    v59[1] = v57;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v60 = v110;
    sub_1BF1791FC();
    sub_1BF0A8AC8(v59 + v58, v51);
    OUTLINED_FUNCTION_127();
    v61 = v106;
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v106);
    v65 = v104;
    sub_1BF0D7B04(v60, v104, &qword_1ED8EFC20, MEMORY[0x1E6968FB0]);
    v66 = v109;
    if (__swift_getEnumTagSinglePayload(v65, 1, v109) == 1)
    {
      OUTLINED_FUNCTION_3_25();
      sub_1BF0D7B68();
      sub_1BF0D7B68();
      sub_1BF0D7B68();
      v26 = v51;
    }

    else
    {
      v67 = v101;
      (*v97)(v101, v65, v66);
      v68 = v51;
      v26 = v51;
      v69 = v98;
      sub_1BF0D7B04(v68, v98, &qword_1ED8E9CB8, type metadata accessor for AuthToken);
      if (__swift_getEnumTagSinglePayload(v69, 1, v61) == 1)
      {
        (*v94)(v67, v66);
        sub_1BF0D7B68();
        OUTLINED_FUNCTION_2_32();
        sub_1BF0D7B68();
      }

      else
      {
        v70 = v95;
        sub_1BF0A8A64(v69, v95);
        v71 = *v93;
        (*v93)(v100, v67, v66);
        sub_1BF0A8AC8(v70, v96);
        v72 = v99;
        swift_isUniquelyReferenced_nonNull_native();
        v112 = v72;
        sub_1BF082148();
        if (__OFADD__(*(v72 + 16), (v74 & 1) == 0))
        {
          goto LABEL_26;
        }

        v75 = v73;
        v76 = v74;
        sub_1BF0D7C0C();
        if (sub_1BF17B43C())
        {
          sub_1BF082148();
          v79 = v109;
          if ((v76 & 1) != (v78 & 1))
          {
            goto LABEL_28;
          }

          v75 = v77;
        }

        else
        {
          v79 = v109;
        }

        v80 = v112;
        v99 = v112;
        if (v76)
        {
          v81 = OUTLINED_FUNCTION_20_9();
          sub_1BF0D7C88(v81, v82);
        }

        else
        {
          *(v112 + 8 * (v75 >> 6) + 64) |= 1 << v75;
          v71(*(v80 + 48) + *(v91 + 72) * v75, v100, v79);
          v83 = OUTLINED_FUNCTION_20_9();
          sub_1BF0A8A64(v83, v84);
          v85 = *(v80 + 16);
          v86 = __OFADD__(v85, 1);
          v87 = v85 + 1;
          if (v86)
          {
            goto LABEL_27;
          }

          *(v80 + 16) = v87;
        }

        v88 = *v94;
        (*v94)(v100, v79);
        OUTLINED_FUNCTION_6_23();
        sub_1BF0D7BB8();
        v88(v101, v79);
        OUTLINED_FUNCTION_3_25();
        v26 = v92;
        sub_1BF0D7B68();
        OUTLINED_FUNCTION_2_32();
      }

      sub_1BF0D7B68();
    }

    v49 = v102;
    v47 &= v47 - 1;
    sub_1BF0D7BB8();
  }

  while (1)
  {
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v52 >= v49)
    {

      return v99;
    }

    v47 = *(v43 + 8 * v52);
    ++v50;
    if (v47)
    {
      v51 = v26;
      v50 = v52;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF0D6E28(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v69 = a5;
  v70 = a6;
  v71 = a4;
  v72 = a3;
  v62 = *(a8 - 8);
  v63 = a1;
  v12 = *(v62 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v61 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v60 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v66 = v58 - v19;
  v64 = v20;
  v21 = sub_1BF17AE6C();
  v68 = *(v21 - 8);
  v22 = *(v68 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = v58 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v58 - v29;
  v67 = a7;
  v31 = sub_1BF17AE6C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = v58 - v37;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = v73;
  result = (v72)(v38, v30, a2, a2 + *(TupleTypeMetadata2 + 48));
  if (!v40)
  {
    v71 = v25;
    v72 = v28;
    v73 = 0;
    v42 = v66;
    v43 = v68;
    (*(v32 + 16))(v36, v38, v31);
    v44 = v67;
    if (__swift_getEnumTagSinglePayload(v36, 1, v67) == 1)
    {
      (*(v43 + 8))(v30, v21);
      v45 = *(v32 + 8);
      v45(v38, v31);
      return (v45)(v36, v31);
    }

    else
    {
      v69 = v38;
      v70 = v31;
      v46 = v65;
      v47 = v42;
      (*(v65 + 32))(v42, v36, v44);
      v48 = v43;
      v49 = *(v43 + 16);
      v50 = v72;
      v49(v72, v30, v21);
      v51 = v64;
      if (__swift_getEnumTagSinglePayload(v50, 1, v64) == 1)
      {
        (*(v46 + 8))(v47, v44);
        v52 = *(v48 + 8);
        v52(v30, v21);
        (*(v32 + 8))(v69, v70);
        return (v52)(v50, v21);
      }

      else
      {
        v58[1] = a10;
        v59 = v21;
        v54 = v61;
        v53 = v62;
        (*(v62 + 32))(v61, v50, v51);
        v55 = *(v46 + 16);
        v72 = v30;
        v55(v60, v47, v44);
        v56 = v46;
        v57 = v71;
        (*(v53 + 16))(v71, v54, v51);
        __swift_storeEnumTagSinglePayload(v57, 0, 1, v51);
        sub_1BF179E9C();
        sub_1BF179EBC();
        (*(v53 + 8))(v54, v51);
        (*(v56 + 8))(v47, v44);
        (*(v68 + 8))(v72, v59);
        return (*(v32 + 8))(v69, v70);
      }
    }
  }

  return result;
}

uint64_t sub_1BF0D73A0()
{
  OUTLINED_FUNCTION_14_1();
  v1 = type metadata accessor for AuthToken();
  v2 = OUTLINED_FUNCTION_6_3(v1);
  v60 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - v9;
  sub_1BF0D7CEC();
  v59 = v11;
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v63 = v16 - v15;
  v18 = v0 + 64;
  v17 = *(v0 + 64);
  v19 = *(v0 + 32);
  OUTLINED_FUNCTION_9_20();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v61 = v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC8];
  v55 = v24;
  v56 = v0 + 64;
  v57 = v10;
  v58 = v8;
  if (v22)
  {
LABEL_6:
    while (1)
    {
      v28 = __clz(__rbit64(v22)) | (v25 << 6);
      v29 = v61;
      v30 = *(v61 + 48);
      v31 = sub_1BF17923C();
      OUTLINED_FUNCTION_12(v31);
      v33 = v30 + *(v32 + 72) * v28;
      v34 = v63;
      (*(v32 + 16))(v63, v33);
      v35 = *(v29 + 56);
      v62 = *(v60 + 72);
      v36 = *(v59 + 48);
      sub_1BF0A8AC8(v35 + v62 * v28, v34 + v36);
      v37 = sub_1BF17913C();
      v39 = v38;
      sub_1BF0A8AC8(v34 + v36, v10);
      sub_1BF0A8AC8(v10, v8);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v64 = v26;
      v40 = sub_1BF014CA8();
      if (__OFADD__(*(v26 + 16), (v41 & 1) == 0))
      {
        break;
      }

      v42 = v40;
      v8 = v41;
      sub_1BF0D7D60();
      if (sub_1BF17B43C())
      {
        v43 = sub_1BF014CA8();
        if ((v8 & 1) != (v44 & 1))
        {
          goto LABEL_20;
        }

        v42 = v43;
      }

      v26 = v64;
      if (v8)
      {
        v45 = OUTLINED_FUNCTION_12_15();
        sub_1BF0D7C88(v45, v46);
      }

      else
      {
        *(v64 + 8 * (v42 >> 6) + 64) |= 1 << v42;
        v47 = (*(v26 + 48) + 16 * v42);
        *v47 = v37;
        v47[1] = v39;
        v48 = OUTLINED_FUNCTION_12_15();
        sub_1BF0A8A64(v48, v49);
        v50 = *(v26 + 16);
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_19;
        }

        *(v26 + 16) = v52;
      }

      v22 &= v22 - 1;
      OUTLINED_FUNCTION_6_23();
      v10 = v57;
      sub_1BF0D7BB8();

      sub_1BF0D7BB8();
      v24 = v55;
      v18 = v56;
      if (!v22)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        return v26;
      }

      v22 = *(v18 + 8 * v27);
      ++v25;
      if (v22)
      {
        v25 = v27;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF0D7700(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a3;
  v36 = a1;
  v13 = sub_1BF17AE6C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v33 - v16;
  v35 = *(a8 - 8);
  v18 = *(v35 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a7;
  v34 = *(a7 - 8);
  v22 = *(v34 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v33 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = v39;
  result = v38(v27, v21, a2, a2 + *(TupleTypeMetadata2 + 48));
  if (!v29)
  {
    v39 = a10;
    v31 = v34;
    (*(v34 + 16))(v25, v27, v37);
    v32 = v35;
    (*(v35 + 16))(v17, v21, a8);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, a8);
    sub_1BF179E9C();
    sub_1BF179EBC();
    (*(v32 + 8))(v21, a8);
    return (*(v31 + 8))(v27, v37);
  }

  return result;
}

void sub_1BF0D7A44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF0D7A98()
{
  if (!qword_1ED8E9C78)
  {
    type metadata accessor for AuthToken();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8E9C78);
    }
  }
}

uint64_t sub_1BF0D7B04(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BF0D7A44(0, a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF0D7B68()
{
  v1 = OUTLINED_FUNCTION_14_1();
  sub_1BF0D7A44(v1, v2, v3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(v0);
  return v0;
}

uint64_t sub_1BF0D7BB8()
{
  v1 = OUTLINED_FUNCTION_14_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1BF0D7C0C()
{
  if (!qword_1ED8E9C08)
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken();
    sub_1BF0A8200();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9C08);
    }
  }
}

uint64_t sub_1BF0D7C88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthToken();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BF0D7CEC()
{
  if (!qword_1ED8EAD00)
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EAD00);
    }
  }
}

void sub_1BF0D7D60()
{
  if (!qword_1ED8E9BD0)
  {
    type metadata accessor for AuthToken();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9BD0);
    }
  }
}

uint64_t ScenePhaseManager.insertObserver(_:before:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = sub_1BEFE90AC(v8);
  if (!v9)
  {
    return ScenePhaseManager.addObserver(_:)(a1, a3);
  }

  v10 = v9;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v13 = *(v8 + 8 * i + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {

        v16 = _s13TeaFoundation18DisposableObserverCMa_0();
        swift_allocObject();
        v17 = swift_unknownObjectRetain();
        v18 = sub_1BF009D14(v17, a1);
        swift_beginAccess();
        sub_1BF04C6E8(i, *(v4 + 16));

        sub_1BF0C4130(i, i, v18);
        result = swift_endAccess();
        a3[3] = v16;
        a3[4] = &off_1F3DBE6D8;
        *a3 = v18;
        return result;
      }
    }

    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 == v10)
    {

      return ScenePhaseManager.addObserver(_:)(a1, a3);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t ScenePhaseManager.removeObserver(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1BEFE90AC(v3);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_unknownObjectRelease();
      if (v9 == a1)
      {

        swift_beginAccess();
        sub_1BF0BDF3C(i);
        swift_endAccess();
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t ScenePhaseManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ScenePhaseManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ScenePhase.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

unint64_t sub_1BF0D8210()
{
  result = qword_1EBDCBDF8;
  if (!qword_1EBDCBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBDF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScenePhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HttpMethod(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF0D8450()
{
  result = qword_1EBDCBE00;
  if (!qword_1EBDCBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBE00);
  }

  return result;
}

void sub_1BF0D8518(uint64_t a1, void *a2)
{
  sub_1BF00974C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = sub_1BF17A77C();
    v8 = a2;
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    sub_1BF17A75C();
    v9 = v8;
    v10 = sub_1BF17A74C();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    sub_1BF089AC0();
  }
}

uint64_t sub_1BF0D8628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_1BF17A75C();
  v4[8] = sub_1BF17A74C();
  v6 = sub_1BF17A6AC();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BF0D86C0, v6, v5);
}

uint64_t sub_1BF0D86C0()
{
  sub_1BEFE6A78(v0[7] + OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_resolver, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = type metadata accessor for DiagnosticFileCollector();
  v4 = (*(v2 + 16))(v3, v3, v1, v2);
  v0[11] = v4;
  if (v4)
  {
    v5 = v0[7];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v6 = sub_1BF1797DC();
    v7 = sub_1BF17AC9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BEFE0000, v6, v7, "Received diagnostic dump notification; collecting files from providers", v8, 2u);
      MEMORY[0x1BFB547B0](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1BF0D8884;

    return DiagnosticFileCollector.collectDiagnosticFiles()();
  }

  else
  {
    v11 = v0[8];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1BF0D8884()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BF0D89B8, v4, v3);
}

uint64_t sub_1BF0D89B8()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];

  sub_1BF0D8A24();

  v4 = v0[1];

  return v4();
}

void sub_1BF0D8A24()
{
  v1 = v0;
  v2 = sub_1BF1797DC();
  v3 = sub_1BF17AC9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BEFE0000, v2, v3, "Posting diagnostic files notification", v4, 2u);
    MEMORY[0x1BFB547B0](v4, -1, -1);
  }

  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = *(v1 + OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_diagnosticFilesNotificationName);
  v7 = *(v1 + OBJC_IVAR___TFDiagnosticFileCollectionCoordinator_diagnosticFilesNotificationName + 8);
  v8 = sub_1BF17A07C();
  CFNotificationCenterPostNotification(v5, v8, 0, 0, 1u);
}

void sub_1BF0D8B24(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  sub_1BF0D8518(a1, a2);
}

id DiagnosticFileCollectionCoordinator.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v2, v0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id DiagnosticFileCollectionCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BF0D8D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BF0CF3BC;

  return sub_1BF0D8628(a1, v4, v5, v6);
}

uint64_t sub_1BF0D8E3C(char a1, void *a2)
{
  if (!a2[2])
  {
    goto LABEL_8;
  }

  v4 = a2[5];
  sub_1BF17BB6C();
  sub_1BF0C795C(a1);
  sub_1BF179F3C();

  sub_1BF17BB9C();
  OUTLINED_FUNCTION_1_40();
  v7 = v6 & ~v5;
  if ((*(a2 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7))
  {
    v8 = ~v5;
    v9 = qword_1BF183840[a1];
    while (qword_1BF183840[*(a2[6] + v7)] != v9)
    {
      v10 = sub_1BF17B86C();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7))
        {
          continue;
        }
      }

      return v10 & 1;
    }

    swift_bridgeObjectRelease_n();
    v10 = 1;
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_1BF0D8F74(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  OUTLINED_FUNCTION_1_40();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_1BF17B86C();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t sub_1BF0D9058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = sub_1BF17BB5C();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

BOOL sub_1BF0D90E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF1794FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_1BEFE72D0(qword_1ED8F0138);
  v19 = a1;
  sub_1BF179F1C();
  v10 = a2 + 56;
  v20 = a2;
  OUTLINED_FUNCTION_1_40();
  v13 = ~v12;
  do
  {
    v14 = v11 & v13;
    v15 = (1 << (v11 & v13)) & *(v10 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    v16 = v15 != 0;
    if (!v15)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v20 + 48) + *(v5 + 72) * v14, v4);
    sub_1BEFE72D0(&qword_1ED8F0130);
    v17 = sub_1BF17A05C();
    (*(v5 + 8))(v8, v4);
    v11 = v14 + 1;
  }

  while ((v17 & 1) == 0);
  return v16;
}

Swift::Bool __swiftcall Quantifier.matches(_:)(Swift::Int a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      v5 = v2 < a1;
      goto LABEL_12;
    case 2:
      v5 = v2 > a1 || *(v1 + 8) < a1;
LABEL_12:
      v4 = !v5;
      break;
    case 3:
      v6 = v2 == a1;
LABEL_8:
      v4 = v6;
      break;
    case 4:
      v4 = sub_1BF0D9058(a1, v2);
      break;
    case 5:
      v4 = 1;
      v8 = *v1;
      switch(v2)
      {
        case 1:
          v4 = a1 > 0;
          break;
        case 2:
          v4 = a1 < 1;
          break;
        case 3:
          v4 = a1 & 1;
          break;
        case 4:
          v6 = (a1 & 1) == 0;
          goto LABEL_8;
        default:
          return v4 & 1;
      }

      break;
    default:
      v4 = v2 <= a1;
      break;
  }

  return v4 & 1;
}

uint64_t Quantifier.description.getter()
{
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      v2 = 0x2074736F6D207461;
      goto LABEL_7;
    case 2:
      sub_1BF17B1EC();

      strcpy(v7, "anywhere from ");
      HIBYTE(v7[1]) = -18;
      v5 = sub_1BF17B6FC();
      MEMORY[0x1BFB52000](v5);

      MEMORY[0x1BFB52000](544175136, 0xE400000000000000);
      goto LABEL_9;
    case 3:
      v2 = 0x20796C7463617865;
LABEL_7:
      v3 = 0xE800000000000000;
      goto LABEL_8;
    case 4:
      strcpy(v7, "one of ");
      v7[1] = 0xE700000000000000;
      v4 = sub_1BF17A8FC();
      goto LABEL_10;
    case 5:
      result = 7958113;
      switch(*v0)
      {
        case 1:
          result = 1701670771;
          break;
        case 2:
          result = 1701736302;
          break;
        case 3:
          result = 6579311;
          break;
        case 4:
          result = 1852143205;
          break;
        default:
          return result;
      }

      return result;
    default:
      v2 = 0x747361656C207461;
      v3 = 0xE900000000000020;
LABEL_8:
      v7[0] = v2;
      v7[1] = v3;
LABEL_9:
      v4 = sub_1BF17B6FC();
LABEL_10:
      MEMORY[0x1BFB52000](v4);

      return v7[0];
  }
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation10QuantifierO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1BF0D95BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0D95FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF0D9640(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1BF0D9668()
{
  sub_1BF17BB6C();
  sub_1BF060ECC();
  return sub_1BF17BB9C();
}

uint64_t Result.valueOrNil()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  (*(v6 + 16))(v10 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 8))(v11, a1);
    v12 = *(a1 + 16);
    v13 = a2;
    v14 = 1;
  }

  else
  {
    v15 = *(a1 + 16);
    (*(*(v15 - 8) + 32))(a2, v11, v15);
    v13 = a2;
    v14 = 0;
    v12 = v15;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
}

uint64_t Result.removingValue()(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1(a1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v7;
  }

  (*(*(*(a1 + 16) - 8) + 8))(v7);
  return 0;
}

uint64_t sub_1BF0D98EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1BF0D9A10(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1BF0D9BD4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BF0D9CE8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1BF1794FC();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CallbackDefinition();
  (*(v8 + 16))(v12, v2 + qword_1ED8F52F0, v5);
  v14 = v2[2];
  v13 = v2[3];
  v15 = swift_allocObject();
  v15[2] = *(v4 + 112);
  v15[3] = a2;
  v15[4] = v14;
  v15[5] = v13;
  v16 = sub_1BEFF0338(v12, sub_1BF0DA018, v15);

  return v16;
}

uint64_t sub_1BF0D9E30(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v16 + 16))(&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_dynamicCast();
  a3(v12, a2);
  return (*(v8 + 8))(v12, a5);
}

uint64_t sub_1BF0D9FB0()
{
  v1 = *(v0 + 24);

  v2 = qword_1ED8F52F0;
  v3 = sub_1BF1794FC();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 8);

  return v5(v0 + v2);
}

uint64_t Definition.key.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF0DA0AC(_BYTE *a1, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>), _BYTE *a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v7 = a4[1];
  *a1 = *a3;
  v9 = swift_allocObject();
  *(v9 + 2) = a5;
  *(v9 + 3) = v8;
  *(v9 + 4) = v7;
  *a2 = sub_1BF0DAB1C;
  a2[1] = v9;
}

uint64_t sub_1BF0DA12C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BF17AE6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  a2(a1);
  v11 = sub_1BF17AE5C();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v11;
  return result;
}

uint64_t sub_1BF0DA228()
{
  v1 = *(v0 + 4);

  v2 = *(v0 + 7);

  v3 = *(v0 + 8);

  sub_1BEFEBFA0((v0 + 72));
  v4 = qword_1ED8F5300;
  v5 = sub_1BF1794FC();
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 8))(&v0[v4]);
  v7 = *&v0[qword_1ED8F52F8];
}

void Definition.whenResolving<A, B>(_:scope:castAs:callback:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v24 = v2;
  v25 = v3;
  v5 = v4;
  v6 = sub_1BF1794FC();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v14 = *v5;
  v13 = v5[1];
  v15 = *(v5 + 16);
  toKey<A>(type:name:)(v1, 0, 0, v1, v26);
  v16 = v26[2];
  type metadata accessor for CallbackInstanceDefinition();
  OUTLINED_FUNCTION_10_22();
  v17(v12);
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_11_11();
  sub_1BF1216BC(v12, v24, v18, v19, v25, v16);
  OUTLINED_FUNCTION_3_26();
  sub_1BF071BE4();
  v20 = OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_14_14(v20, v21, v22, v23, &off_1F3DC31F0);
  swift_endAccess();

  OUTLINED_FUNCTION_26_2();
}

{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v31 = v6;
  v8 = v7;
  v32 = v9;
  v29 = *v0;
  v10 = sub_1BF1794FC();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = *v8;
  v18 = *(v8 + 8);
  v19 = *(v8 + 16);
  toKey<A>(type:name:)();
  type metadata accessor for CallbackInstanceDefinition();
  OUTLINED_FUNCTION_10_22();
  v20(v16);
  v21 = swift_allocObject();
  v21[2] = *(v29 + 96);
  v21[3] = v4;
  v21[4] = v2;
  v21[5] = v30;
  v21[6] = v31;
  sub_1BF0DA424(v17, v18, v19);

  OUTLINED_FUNCTION_11_11();
  sub_1BF1216BC(v16, v32, v22, v23, v24, v21);
  OUTLINED_FUNCTION_3_26();
  sub_1BF071BE4();
  v25 = OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_13_14(v25, v26, v27, v28, &off_1F3DC31F0);
  swift_endAccess();

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0DA424(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

void Definition<A>.whenResolving<A>(_:scope:callback:)()
{
  OUTLINED_FUNCTION_32();
  v29 = v1;
  v30 = v2;
  v4 = v3;
  v5 = *v0;
  v6 = sub_1BF1794FC();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v14 = *v4;
  v13 = v4[1];
  v15 = *(v4 + 16);
  v16 = OUTLINED_FUNCTION_7_21();
  toKey<A>(type:name:)(v16, v17, v18, v19, v20);
  v21 = *(v5 + 96);
  type metadata accessor for CallbackInstanceDefinition();
  OUTLINED_FUNCTION_10_22();
  v22(v12);
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_11_11();
  sub_1BF1216BC(v12, v29, v23, v24, v30, v31);
  OUTLINED_FUNCTION_3_26();
  sub_1BF071BE4();
  v25 = OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_14_14(v25, v26, v27, v28, &off_1F3DC31F0);
  swift_endAccess();

  OUTLINED_FUNCTION_26_2();
}

{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v29 = v3;
  v30 = v4;
  v6 = v5;
  v31 = v7;
  v8 = *v0;
  v9 = sub_1BF1794FC();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v17 = *v6;
  v16 = *(v6 + 8);
  v18 = *(v6 + 16);
  OUTLINED_FUNCTION_7_21();
  toKey<A>(type:name:)();
  v19 = *(v8 + 96);
  type metadata accessor for CallbackInstanceDefinition();
  OUTLINED_FUNCTION_10_22();
  v20(v15);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v2;
  v21[4] = v29;
  v21[5] = v30;
  sub_1BF0DA424(v17, v16, v18);

  OUTLINED_FUNCTION_11_11();
  sub_1BF1216BC(v15, v31, v22, v23, v24, v21);
  OUTLINED_FUNCTION_3_26();
  sub_1BF071BE4();
  v25 = OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_13_14(v25, v26, v27, v28, &off_1F3DC31F0);
  swift_endAccess();

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0DA974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BEFE87B0(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1BF0DAA0C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  return v3(a1, *a2);
}

uint64_t sub_1BF0DAA38(uint64_t a1, void *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(a1, *a2);
}

void sub_1BF0DAAB0()
{
  if (!qword_1EBDCBE90)
  {
    sub_1BEFE9D24();
    sub_1BEFE8034();
    v0 = sub_1BF17B53C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCBE90);
    }
  }
}

uint64_t sub_1BF0DAB1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_1BF0DA12C(a1, *(v2 + 24), a2);
}

uint64_t sub_1BF0DAB28(uint64_t a1)
{
  v2 = v1;
  v8 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v4 = UnfairLock.init(options:)(&v8);
  OUTLINED_FUNCTION_0_53();
  sub_1BEFF1184(0, v5, v6, type metadata accessor for Seal);
  swift_allocObject();
  *(v2 + 16) = sub_1BF0E0CBC(v4, a1);
  return v2;
}

uint64_t sub_1BF0DABD4(uint64_t a1)
{
  v2 = v1;
  v9 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v4 = UnfairLock.init(options:)(&v9);
  sub_1BEFF1184(0, &qword_1ED8E9DD0, type metadata accessor for AuthToken, type metadata accessor for Seal);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v2 + 16) = sub_1BF0E0AD0(v4, a1);
  return v2;
}

uint64_t sub_1BF0DAC90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9 = v5;
  v13 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v11 = UnfairLock.init(options:)(&v13);
  sub_1BEFF51A8(0, a2, a3, type metadata accessor for Seal);
  swift_allocObject();
  *(v9 + 16) = a5(v11, a1);
  return v9;
}

uint64_t sub_1BF0DADA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v8 = v4;
  v12 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v10 = UnfairLock.init(options:)(&v12);
  sub_1BF0E21B8(0, a2, a3, a4, type metadata accessor for Seal);
  swift_allocObject();
  *(v8 + 16) = sub_1BF0E0CBC(v10, a1);
  return v8;
}

uint64_t sub_1BF0DAE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 16) + 16);
  sub_1BEFF1184(0, &qword_1ED8EAB00, type metadata accessor for AuthToken, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v8 = sub_1BF0A6380();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  swift_retain_n();

  v10 = sub_1BF09C62C(a1, sub_1BF0E36F4, v8, sub_1BF0E3484, v8, sub_1BF0E3488, v9);

  v10(v11);
  result = swift_beginAccess();
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = *(v8 + 16);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DAFF4()
{
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_0_53();
  sub_1BEFF1184(0, v1, v2, type metadata accessor for DeferredPromise);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_66();

  v3 = sub_1BF0A634C();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_5_19(v4);

  v5 = OUTLINED_FUNCTION_4_22();
  sub_1BF09C62C(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_11_12();

  v0(v12);
  result = OUTLINED_FUNCTION_10_3();
  v14 = *(v3 + 16);
  if (v14)
  {
    v15 = *(v3 + 16);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 16) + 16);
  sub_1BEFF1184(0, &qword_1ED8EAAF8, sub_1BF027B68, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v8 = sub_1BF0A634C();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  swift_retain_n();

  v10 = sub_1BF09CBC4(a1, sub_1BF0E36EC, v8, sub_1BF0E3700, v8, sub_1BF0E32A8, v9);

  v10(v11);
  result = swift_beginAccess();
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = *(v8 + 16);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 16) + 16);
  sub_1BEFF1184(0, &qword_1EBDCAC08, sub_1BF096F0C, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v8 = sub_1BF0A63B4();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  swift_retain_n();

  v10 = sub_1BF09C62C(a1, sub_1BF0E36F0, v8, sub_1BF0E3270, v8, sub_1BF0E3274, v9);

  v10(v11);
  result = swift_beginAccess();
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = *(v8 + 16);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB434()
{
  OUTLINED_FUNCTION_3_27();
  sub_1BEFF1184(0, qword_1EBDCAC20, MEMORY[0x1E6967EC8], type metadata accessor for DeferredPromise);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_66();

  v1 = sub_1BF0A6410();
  OUTLINED_FUNCTION_14_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_19(v2);

  v3 = OUTLINED_FUNCTION_4_22();
  sub_1BF09D0A0(v3);
  OUTLINED_FUNCTION_11_12();

  v0(v4);
  result = OUTLINED_FUNCTION_10_3();
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = *(v1 + 16);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB564()
{
  OUTLINED_FUNCTION_3_27();
  sub_1BEFF51A8(0, &qword_1EBDCAC18, &type metadata for AuthTokenResponse, type metadata accessor for DeferredPromise);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_66();

  v1 = sub_1BF0A63E8();
  OUTLINED_FUNCTION_14_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_19(v2);

  OUTLINED_FUNCTION_4_22();
  sub_1BF09CEBC();
  OUTLINED_FUNCTION_11_12();

  v0(v3);
  result = OUTLINED_FUNCTION_10_3();
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 16);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 16) + 16);
  sub_1BEFF1184(0, &qword_1ED8EAAF8, sub_1BF027B68, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v8 = sub_1BF0A634C();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  swift_retain_n();

  v10 = sub_1BF09D1EC(a1, sub_1BF0E36EC, v8, sub_1BF0E3700, v8, sub_1BF0E2E34, v9);

  v10(v11);
  result = swift_beginAccess();
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = *(v8 + 16);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB818(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v8 = a1;
  v2 = *(a2(&v8) + 16);
  v3 = qword_1ED8F0210;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  sub_1BF09C7B4();
  v5 = v4;

  v5(v6);
}

uint64_t sub_1BF0DB9F0(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v5 = *(a2(&v11) + 16);
  v6 = qword_1ED8F0210;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = off_1ED8F0218;
  swift_retain_n();
  v8 = sub_1BF09C62C(v7, sub_1BF0E3168, a4, sub_1BF0E3700, a4, sub_1BF0E316C, a4);

  v8(v9);
}

uint64_t sub_1BF0DBBC8(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v5 = *(a2(&v11) + 16);
  v6 = qword_1ED8F0210;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = off_1ED8F0218;
  swift_retain_n();
  v8 = sub_1BF09CBC4(v7, sub_1BF0E3280, a4, sub_1BF0E3704, a4, sub_1BF0E3284, a4);

  v8(v9);
}

uint64_t sub_1BF0DBDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(a3(v12) + 16);
  v7 = qword_1ED8F0210;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = off_1ED8F0218;
  swift_retain_n();
  v9 = sub_1BF09C62C(v8, sub_1BF0E36EC, a5, sub_1BF0E3700, a5, sub_1BF0E3728, a5);

  v9(v10);
}

uint64_t sub_1BF0DBF78(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a2() + 16);
  v3 = qword_1ED8F0210;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = off_1ED8F0218;
  swift_retain_n();
  v5 = sub_1BF09CD10(v4);

  v5(v6);
}

uint64_t sub_1BF0DC148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v9[0] = a1;
  v9[1] = a2;
  v3 = *(a3(v9) + 16);
  v4 = qword_1ED8F0210;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  sub_1BF09CEBC();
  v6 = v5;

  v6(v7);
}

uint64_t sub_1BF0DC320(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v5 = *(a2(&v11) + 16);
  v6 = qword_1ED8F0210;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = off_1ED8F0218;
  swift_retain_n();
  v8 = sub_1BF09C62C(v7, sub_1BF0E36EC, a4, sub_1BF0E3700, a4, sub_1BF0E3728, a4);

  v8(v9);
}

size_t sub_1BF0DC540(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BF1764B4(*(a1 + 16), 0);
  v4 = *(sub_1BF17923C() - 8);
  v5 = sub_1BF1768F4(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_1BF003FE8();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1BF0DC608(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthToken();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v51 - v9;
  v65 = sub_1BF17923C();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v65);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - v15;
  sub_1BEFF1184(0, &qword_1ED8EACF8, sub_1BF0D7CEC, MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v51 - v21;
  v22 = a2 + 64;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 64);
  v61 = v10 + 16;
  v62 = v10;
  v64 = (v10 + 32);
  v58 = (v10 + 8);
  v59 = (v23 + 63) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v56 = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v26 = 0;
  v54 = v14;
  v51 = v20;
  v52 = v8;
  v57 = a2 + 64;
  while (v25)
  {
    v27 = v26;
LABEL_11:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v29 | (v27 << 6);
    v31 = v56;
    v32 = v62;
    (*(v62 + 16))(v53, *(v56 + 48) + *(v62 + 72) * v30, v65);
    v33 = v55;
    sub_1BF0E3424(*(v31 + 56) + *(v63 + 72) * v30, v55, type metadata accessor for AuthToken);
    sub_1BF0D7CEC();
    v35 = v34;
    v36 = *(v34 + 48);
    v20 = v51;
    (*(v32 + 32))();
    sub_1BF0A8A64(v33, &v20[v36]);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v35);
    v14 = v54;
    v8 = v52;
    v28 = v60;
LABEL_12:
    sub_1BF0E31DC(v20, v28);
    sub_1BF0D7CEC();
    if (__swift_getEnumTagSinglePayload(v28, 1, v35) == 1)
    {

      return a1;
    }

    v37 = *(v35 + 48);
    (*v64)(v14, v28, v65);
    sub_1BF0A8A64(v28 + v37, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v66 = a1;
    sub_1BF082148();
    if (__OFADD__(a1[2], (v39 & 1) == 0))
    {
      goto LABEL_24;
    }

    v40 = v38;
    v41 = v39;
    sub_1BF0D7C0C();
    if (sub_1BF17B43C())
    {
      sub_1BF082148();
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

      v40 = v42;
    }

    a1 = v66;
    if (v41)
    {
      sub_1BF0D7C88(v8, v66[7] + *(v63 + 72) * v40);
      (*v58)(v14, v65);
      v22 = v57;
    }

    else
    {
      v66[(v40 >> 6) + 8] |= 1 << v40;
      v44 = v62;
      v45 = v65;
      (*(v62 + 16))(a1[6] + *(v62 + 72) * v40, v14, v65);
      sub_1BF0A8A64(v8, a1[7] + *(v63 + 72) * v40);
      (*(v44 + 8))(v14, v45);
      v46 = a1[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_25;
      }

      a1[2] = v48;
      v22 = v57;
    }
  }

  v28 = v60;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v59)
    {
      sub_1BF0D7CEC();
      v35 = v49;
      __swift_storeEnumTagSinglePayload(v20, 1, 1, v49);
      v25 = 0;
      goto LABEL_12;
    }

    v25 = *(v22 + 8 * v27);
    ++v26;
    if (v25)
    {
      v26 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF0DCB94(void (*a1)(uint64_t, char *, void *, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = a1;
  v93 = a2;
  v83 = type metadata accessor for AuthToken();
  v91 = *(v83 - 8);
  v6 = *(v91 + 64);
  v7 = MEMORY[0x1EEE9AC00](v83);
  v80 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v74 - v9;
  v94 = sub_1BF17923C();
  v10 = *(v94 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v94 - 8);
  v84 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v74 - v14;
  sub_1BF0E32B4(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v74 - v19;
  sub_1BF028120(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v89 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v74 - v24;
  sub_1BF0D7A98();
  v90 = v25;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v98 = (&v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a3 + 64;
  v29 = 1 << *(a3 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a3 + 64);
  v32 = (v29 + 63) >> 6;
  v81 = (v10 + 32);
  v77 = (v10 + 16);
  v75 = v10;
  v78 = (v10 + 8);
  v96 = a3;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v33 = 0;
  v86 = MEMORY[0x1E69E7CC8];
  v87 = v32;
  v88 = a3 + 64;
  if (v31)
  {
    while (1)
    {
      v34 = v4;
LABEL_9:
      v36 = __clz(__rbit64(v31)) | (v33 << 6);
      v37 = (*(v96 + 48) + 16 * v36);
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v91 + 72);
      v41 = *(v90 + 48);
      v42 = v98;
      sub_1BF0E3424(*(v96 + 56) + v40 * v36, v98 + v41, type metadata accessor for AuthToken);
      *v42 = v39;
      v42[1] = v38;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v43 = v42 + v41;
      v44 = v97;
      v45 = v95;
      v92(v97, v95, v42, v43);
      v4 = v34;
      if (v34)
      {

        sub_1BF0E2F3C(v98, sub_1BF0D7A98);
        v72 = v86;

        return v72;
      }

      v46 = v89;
      sub_1BF0E3424(v44, v89, sub_1BF028120);
      v47 = v94;
      if (__swift_getEnumTagSinglePayload(v46, 1, v94) == 1)
      {
        break;
      }

      v50 = v85;
      (*v81)(v85, v46, v47);
      v51 = v45;
      v52 = v45;
      v53 = v82;
      sub_1BF0E3424(v51, v82, sub_1BF0E32B4);
      if (__swift_getEnumTagSinglePayload(v53, 1, v83) == 1)
      {
        (*v78)(v50, v47);
        v48 = sub_1BF0E32B4;
        sub_1BF0E2F3C(v52, sub_1BF0E32B4);
        sub_1BF0E2F3C(v97, sub_1BF028120);
        v49 = v53;
        goto LABEL_14;
      }

      v76 = 0;
      v54 = v53;
      v55 = v50;
      v56 = v79;
      sub_1BF0A8A64(v54, v79);
      v57 = *v77;
      (*v77)(v84, v55, v47);
      sub_1BF0E3424(v56, v80, type metadata accessor for AuthToken);
      v58 = v86;
      swift_isUniquelyReferenced_nonNull_native();
      v99 = v58;
      sub_1BF082148();
      if (__OFADD__(v58[2], (v60 & 1) == 0))
      {
        goto LABEL_31;
      }

      v61 = v59;
      v62 = v60;
      sub_1BF0D7C0C();
      if (sub_1BF17B43C())
      {
        sub_1BF082148();
        v65 = v94;
        v66 = v95;
        if ((v62 & 1) != (v64 & 1))
        {
          goto LABEL_33;
        }

        v61 = v63;
      }

      else
      {
        v65 = v94;
        v66 = v95;
      }

      v67 = v99;
      v86 = v99;
      if (v62)
      {
        sub_1BF0D7C88(v80, v99[7] + v61 * v40);
      }

      else
      {
        v99[(v61 >> 6) + 8] |= 1 << v61;
        v57((v67[6] + *(v75 + 72) * v61), v84, v65);
        sub_1BF0A8A64(v80, v67[7] + v61 * v40);
        v68 = v67[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_32;
        }

        v67[2] = v70;
      }

      v71 = *v78;
      (*v78)(v84, v65);
      sub_1BF0E2F3C(v79, type metadata accessor for AuthToken);
      v71(v85, v65);
      sub_1BF0E2F3C(v66, sub_1BF0E32B4);
      sub_1BF0E2F3C(v97, sub_1BF028120);
      v4 = v76;
LABEL_25:
      v32 = v87;
      v28 = v88;
      v31 &= v31 - 1;
      sub_1BF0E2F3C(v98, sub_1BF0D7A98);
      if (!v31)
      {
        goto LABEL_5;
      }
    }

    sub_1BF0E2F3C(v45, sub_1BF0E32B4);
    v48 = sub_1BF028120;
    sub_1BF0E2F3C(v44, sub_1BF028120);
    v49 = v46;
LABEL_14:
    sub_1BF0E2F3C(v49, v48);
    goto LABEL_25;
  }

LABEL_5:
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {

      return v86;
    }

    v31 = *(v28 + 8 * v35);
    ++v33;
    if (v31)
    {
      v34 = v4;
      v33 = v35;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t AuthTokenManagerType.fetchAuthToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFF1184(0, &qword_1ED8E9B50, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v6 = sub_1BF17923C();
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BF17DEF0;
  (*(v8 + 16))(v12 + v11, a1, v6);
  (*(a3 + 8))(v12, a2, a3);
  OUTLINED_FUNCTION_17_9();

  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v13 = sub_1BF0DAE64(off_1ED8F0218, sub_1BF0DD4DC, 0);

  return v13;
}

uint64_t sub_1BF0DD4DC(uint64_t *a1)
{
  sub_1BF0E32B4(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AuthToken();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1BF0B9F70(*a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1BF0E2F3C(v5, sub_1BF0E32B4);
    sub_1BF0E349C();
    v13 = swift_allocError();
    sub_1BEFF1184(0, &qword_1ED8E9D00, type metadata accessor for AuthToken, type metadata accessor for Promise);
    swift_allocObject();
    return sub_1BF0DABD4(v13);
  }

  else
  {
    sub_1BF0A8A64(v5, v12);
    sub_1BF0E3424(v12, v10, type metadata accessor for AuthToken);
    sub_1BEFF1184(0, &qword_1ED8E9D00, type metadata accessor for AuthToken, type metadata accessor for Promise);
    swift_allocObject();
    v14 = sub_1BF0AACD4();
    sub_1BF0E2F3C(v12, type metadata accessor for AuthToken);
  }

  return v14;
}

uint64_t AuthTokenManager.__allocating_init(service:store:tokenType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_17_9();
  AuthTokenManager.init(service:store:tokenType:)(v10, a2, a3, a4);
  return v4;
}

uint64_t sub_1BF0DD78C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  OUTLINED_FUNCTION_58();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v2;
  v8 = qword_1ED8E9CB0;
  swift_retain_n();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_41();
  }

  v9 = sub_1BF1797FC();
  __swift_project_value_buffer(v9, qword_1ED8F4DD0);
  OUTLINED_FUNCTION_17_9();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v10 = sub_1BF1797DC();
  v11 = sub_1BF17AC9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_70();
    v23 = OUTLINED_FUNCTION_44_0();
    v24 = v23;
    *v12 = 136446210;
    v13 = sub_1BF17923C();
    v14 = MEMORY[0x1BFB522D0](a1, v13);
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = sub_1BF01A7AC(v14, v15, &v24);

    *(v12 + 4) = v19;
    v5 = v18;
    v6 = v17;
    v7 = v16;
    _os_log_impl(&dword_1BEFE0000, v10, v11, "AuthTokenManager will fetch auth tokens for %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  sub_1BF0DED9C(a1, v5, v6, v3, sub_1BF0E2EEC, v3, sub_1BF0E2EF4, v7);
  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = a1;
  v20 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v20 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  sub_1BF09A1F4();

  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = a1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v21 = sub_1BF08C570();

  return v21;
}

uint64_t sub_1BF0DDA8C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF1797FC();
  __swift_project_value_buffer(v5, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136446210;
    v10 = sub_1BF17923C();
    v11 = MEMORY[0x1BFB522D0](a1, v10);
    v13 = sub_1BF01A7AC(v11, v12, &v25);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BEFE0000, v6, v7, "AuthTokenManager will queue cache read for urls=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB547B0](v9, -1, -1);
    MEMORY[0x1BFB547B0](v8, -1, -1);
  }

  v14 = *(a2 + *(*a2 + 112));
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1BEFF1184(0, &qword_1ED8EAAF0, sub_1BF096FB0, type metadata accessor for DeferredPromise);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v16 = sub_1BF0A6270();
  v17 = swift_allocObject();
  v17[2] = sub_1BF0E33B0;
  v17[3] = v15;
  v17[4] = v16;

  v18 = sub_1BF006210(v14, sub_1BF0E3724, v17);

  (v18)(v19);
  result = swift_beginAccess();
  if (*(v16 + 16))
  {
    v21 = *(v16 + 16);

    sub_1BF096FB0();
    sub_1BF027B68();
    v22 = sub_1BF041694();
    Promise.then<A, B>(on:disposeOn:closure:)();

    *(swift_allocObject() + 16) = a1;
    v23 = qword_1ED8F0210;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1BF08C570();

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DDE70(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a2;
  v7 = *a2;
  v8 = sub_1BF17923C();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v50 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = v44 - v16;
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1BF1797FC();
  __swift_project_value_buffer(v18, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v19 = sub_1BF1797DC();
  v20 = sub_1BF17ACDC();

  v21 = os_log_type_enabled(v19, v20);
  v46 = v14;
  v47 = v13;
  v45 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v53 = v23;
    *v22 = 136446210;
    v24 = MEMORY[0x1BFB522D0](a1, v51);
    v49 = a1;
    v26 = v7;
    v27 = sub_1BF01A7AC(v24, v25, &v53);
    v3 = v2;
    a1 = v49;

    *(v22 + 4) = v27;
    v7 = v26;
    _os_log_impl(&dword_1BEFE0000, v19, v20, "AuthTokenManager will perform cache read for urls=%{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v28 = v23;
    v17 = v45;
    v14 = v46;
    MEMORY[0x1BFB547B0](v28, -1, -1);
    v29 = v22;
    v13 = v47;
    MEMORY[0x1BFB547B0](v29, -1, -1);
  }

  (*(v14 + 16))(v17, a2 + *(*a2 + 104), v13);
  v30 = *(a1 + 2);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v44[0] = v7;
    v44[1] = v3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v31 = v53;
    v32 = *(v52 + 16);
    v33 = &a1[(*(v52 + 80) + 32) & ~*(v52 + 80)];
    v48 = *(v52 + 72);
    v49 = v32;
    v52 += 16;
    v34 = (v52 - 8);
    do
    {
      v35 = v50;
      v36 = v51;
      (v49)(v50, v33, v51);
      v37 = sub_1BF17913C();
      v39 = v38;
      (*v34)(v35, v36);
      v53 = v31;
      v40 = *(v31 + 16);
      if (v40 >= *(v31 + 24) >> 1)
      {
        sub_1BF00DD60();
        v31 = v53;
      }

      *(v31 + 16) = v40 + 1;
      v41 = v31 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v39;
      v33 += v48;
      --v30;
    }

    while (v30);
    v7 = v44[0];
    v14 = v46;
    v13 = v47;
    v17 = v45;
  }

  v42 = (*(*(v7 + 88) + 16))(v31, v13);

  (*(v14 + 8))(v17, v13);
  return v42;
}

void sub_1BF0DE2AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1BF0DCB94(sub_1BF0E3408, a2, *a1);
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF1797FC();
  __swift_project_value_buffer(v5, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v8 = 136446210;
    v9 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v10 = sub_1BF0DC540(v9);
    v11 = sub_1BF17923C();
    v12 = MEMORY[0x1BFB522D0](v10, v11);
    v13 = a3;
    v15 = v14;

    v16 = sub_1BF01A7AC(v12, v15, &v18);
    a3 = v13;

    *(v8 + 4) = v16;
    _os_log_impl(&dword_1BEFE0000, v6, v7, "AuthTokenManager using cached auth tokens for urls=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB547B0](v17, -1, -1);
    MEMORY[0x1BFB547B0](v8, -1, -1);
  }

  *a3 = v4;
}

uint64_t sub_1BF0DE478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BF1794AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v15 = a3[1];
  sub_1BF1791FC();
  sub_1BEFE6A78(a5 + *(*a5 + 136), v25);
  v16 = v26;
  v17 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v17 + 8))(v16, v17);
  v18 = type metadata accessor for AuthToken();
  v19 = *(a4 + *(v18 + 28));
  sub_1BF17944C();
  v21 = v20;
  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (v19 <= v21)
  {
    v22 = 1;
  }

  else
  {
    sub_1BF0E3424(a4, a2, type metadata accessor for AuthToken);
    v22 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v22, 1, v18);
}

uint64_t sub_1BF0DE63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF1797FC();
  __swift_project_value_buffer(v6, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = sub_1BF1797DC();
  v8 = sub_1BF17ACDC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v11 = sub_1BF17923C();
    v12 = MEMORY[0x1BFB522D0](a2, v11);
    v14 = sub_1BF01A7AC(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BEFE0000, v7, v8, "AuthTokenManager will queue cache write for urls=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB547B0](v10, -1, -1);
    MEMORY[0x1BFB547B0](v9, -1, -1);
  }

  v15 = *(a3 + *(*a3 + 112));
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  sub_1BEFF1184(0, &qword_1ED8EAAF0, sub_1BF096FB0, type metadata accessor for DeferredPromise);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v17 = sub_1BF0A6270();
  v18 = swift_allocObject();
  v18[2] = sub_1BF0E32EC;
  v18[3] = v16;
  v18[4] = v17;

  v19 = sub_1BF006210(v15, sub_1BF0E330C, v18);

  (v19)(v20);
  result = swift_beginAccess();
  if (*(v17 + 16))
  {
    v22 = *(v17 + 16);

    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    sub_1BF09A40C();

    *(swift_allocObject() + 16) = a2;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v23 = sub_1BF08C570();

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DE9D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF1797FC();
  __swift_project_value_buffer(v5, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v8 = 136446210;
    v9 = sub_1BF17923C();
    v10 = MEMORY[0x1BFB522D0](a1, v9);
    v12 = sub_1BF01A7AC(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BEFE0000, v6, v7, "AuthTokenManager will perform cache write for urls=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB547B0](v17, -1, -1);
    MEMORY[0x1BFB547B0](v8, -1, -1);
  }

  v13 = *(*a2 + 104);
  sub_1BF0D73A0();
  v14 = *(v4 + 80);
  v15 = (*(*(v4 + 88) + 32))();

  return v15;
}

void sub_1BF0DEBE4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BF0D6728(*a1);
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = sub_1BF1797DC();
  v6 = sub_1BF17ACDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v7 = 136446210;
    v8 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v9 = sub_1BF0DC540(v8);
    v10 = sub_1BF17923C();
    v11 = MEMORY[0x1BFB522D0](v9, v10);
    v12 = a2;
    v14 = v13;

    v15 = sub_1BF01A7AC(v11, v14, &v17);
    a2 = v12;

    *(v7 + 4) = v15;
    _os_log_impl(&dword_1BEFE0000, v5, v6, "AuthTokenManager wrote new tokens to cache for urls=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB547B0](v16, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  *a2 = v3;
}

uint64_t sub_1BF0DED9C(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t (*a5)(uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BF0E2F94();
  v15 = sub_1BF0DEE88();
  v17 = sub_1BF0DEF44(a1, a2, a3, v15, v16, a5, a6, a7, a8, *(a4 + *(*a4 + 128)), 0);

  return v17;
}

uint64_t sub_1BF0DEEC8(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, *(v1 + *(*v1 + 120)), *(v1 + *(*v1 + 120) + 8), v3, v4);
}

uint64_t sub_1BF0DEF44(uint64_t a1, unint64_t a2, unsigned __int8 a3, void (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, __n128), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v12 = v11;
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  *(v21 + 24) = a7;
  if (!*(a1 + 16))
  {
    v26 = qword_1ED8EF4B0;
    swift_retain_n();
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1BF1797FC();
    __swift_project_value_buffer(v27, qword_1ED8F52B0);
    v28 = sub_1BF1797DC();
    v29 = sub_1BF17ACDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BEFE0000, v28, v29, "Manager will not fetch because no keys were specified", v30, 2u);
      MEMORY[0x1BFB547B0](v30, -1, -1);
    }

    sub_1BF17923C();
    type metadata accessor for AuthToken();
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    sub_1BF179DAC();
    sub_1BEFF1184(0, &qword_1ED8E9CF8, sub_1BF027B68, type metadata accessor for Promise);
    swift_allocObject();
    v31 = sub_1BF0AADDC();
    goto LABEL_15;
  }

  if (!a3)
  {
    swift_retain_n();
    v32 = a1;
    v33.n128_u64[0] = a2;
LABEL_14:
    v31 = a6(v32, v33);
LABEL_15:
    v25 = v31;

LABEL_16:

    goto LABEL_17;
  }

  if (a3 == 1 || a2 - 2 < 2)
  {
    swift_retain_n();
    sub_1BF166118(a2, a3, a1, a6, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = v12;
    *(v23 + 24) = a1;
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;
    *(v23 + 48) = a4;
    *(v23 + 56) = a5;
    *(v23 + 64) = sub_1BF0E3040;
    *(v23 + 72) = v21;
    *(v23 + 80) = a8;
    *(v23 + 88) = a9;
    *(v23 + 96) = a10;
    *(v23 + 104) = a11;
    *(v23 + 112) = 0;
    *(v23 + 120) = 0;
    v24 = qword_1ED8F0210;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_1BF0DAFF4();

    goto LABEL_16;
  }

  if (a2)
  {
    swift_retain_n();
    v33.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    v32 = a1;
    goto LABEL_14;
  }

  swift_retain_n();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF09EA68();
  v49 = v35;
  v36 = a10[6];
  v37 = a10[7];
  __swift_project_boxed_opaque_existential_1(a10 + 3, v36);
  v48 = *(v37 + 8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v48(v36, v37);
  swift_beginAccess();
  v38 = sub_1BF089924(v49, a10[2]);
  if (v38)
  {
    v25 = v38;
    swift_endAccess();
    v39 = a10[6];
    v40 = a10[7];
    __swift_project_boxed_opaque_existential_1(a10 + 3, v39);
    (*(v40 + 16))(v39, v40);
  }

  else
  {
    swift_endAccess();
    a4(a1);
    v41 = swift_allocObject();
    *(v41 + 16) = a8;
    *(v41 + 24) = a9;
    v42 = qword_1ED8F0210;

    if (v42 != -1)
    {
      swift_once();
    }

    v25 = sub_1BF0DAFF4();

    swift_beginAccess();

    v43 = a10[2];
    swift_isUniquelyReferenced_nonNull_native();
    v50 = a10[2];
    sub_1BF082D70();
    a10[2] = v50;
    swift_endAccess();
    v44 = a10[6];
    v45 = a10[7];
    __swift_project_boxed_opaque_existential_1(a10 + 3, v44);
    (*(v45 + 16))(v44, v45);
    v46 = swift_allocObject();
    *(v46 + 16) = a10;
    *(v46 + 24) = v49;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF09A64C();

    v47 = swift_allocObject();
    *(v47 + 16) = a10;
    *(v47 + 24) = v49;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BEFF77FC();
  }

LABEL_17:

  return v25;
}

uint64_t sub_1BF0DF694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF1797FC();
  __swift_project_value_buffer(v6, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = sub_1BF1797DC();
  v8 = sub_1BF17ACDC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_1BF17923C();
    v12 = MEMORY[0x1BFB522D0](a2, v11);
    v14 = sub_1BF01A7AC(v12, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BEFE0000, v7, v8, "AuthTokenManager fetch successful for urls %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB547B0](v10, -1, -1);
    MEMORY[0x1BFB547B0](v9, -1, -1);
  }

  *a3 = v5;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

void sub_1BF0DF818(void *a1, uint64_t a2, const char *a3)
{
  if (qword_1ED8E9CB0 != -1)
  {
    OUTLINED_FUNCTION_1_41();
  }

  v6 = sub_1BF1797FC();
  __swift_project_value_buffer(v6, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = a1;
  oslog = sub_1BF1797DC();
  v8 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_44_0();
    v19 = v11;
    *v9 = 136446466;
    v12 = sub_1BF17923C();
    v13 = MEMORY[0x1BFB522D0](a2, v12);
    v15 = sub_1BF01A7AC(v13, v14, &v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_1BEFE0000, oslog, v8, a3, v9, 0x16u);
    sub_1BF0E2F3C(v10, sub_1BF082F84);
    OUTLINED_FUNCTION_28();
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }
}

void *AuthTokenManager.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_29();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 104));
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_29();
  v5 = *(v0 + *(v4 + 120) + 8);

  OUTLINED_FUNCTION_29();
  v7 = *(v0 + *(v6 + 128));

  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v8 + 136)));
  return v0;
}

uint64_t AuthTokenManager.__deallocating_deinit()
{
  AuthTokenManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AuthTokenManager.fetchAuthTokens(for:)(uint64_t a1)
{
  if (qword_1ED8E9CB0 != -1)
  {
    OUTLINED_FUNCTION_1_41();
  }

  v2 = sub_1BF1797FC();
  __swift_project_value_buffer(v2, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v3 = sub_1BF1797DC();
  v4 = sub_1BF17AC9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_70();
    v6 = OUTLINED_FUNCTION_44_0();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_1BF17923C();
    v8 = MEMORY[0x1BFB522D0](a1, v7);
    v10 = sub_1BF01A7AC(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1BEFE0000, v3, v4, "AuthTokenManager will fetch auth tokens for urls: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v12 = 2;
  v13 = 2;
  return sub_1BF0DD78C(a1, &v12);
}

uint64_t AuthTokenManager.refreshAuthTokens(for:condition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1ED8E9CB0 != -1)
  {
    OUTLINED_FUNCTION_1_41();
  }

  v8 = sub_1BF1797FC();
  __swift_project_value_buffer(v8, qword_1ED8F4DD0);
  OUTLINED_FUNCTION_66();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = sub_1BF1797DC();
  v10 = sub_1BF17ACDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_70();
    v12 = OUTLINED_FUNCTION_44_0();
    v22 = v12;
    *v11 = 136446210;
    v13 = sub_1BF17923C();
    v14 = MEMORY[0x1BFB522D0](a1, v13);
    v16 = sub_1BF01A7AC(v14, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1BEFE0000, v9, v10, "AuthTokenManager will refresh auth tokens for urls: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  sub_1BF0DFF0C(v4, a1);
  OUTLINED_FUNCTION_58();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = qword_1ED8F0210;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v19 = off_1ED8F0218;
  sub_1BF09A864();

  sub_1BF0DB688(v19, sub_1BF0E2194, v4);
  OUTLINED_FUNCTION_17_9();

  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = a1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v20 = sub_1BF08C570();

  return v20;
}

uint64_t sub_1BF0DFF0C(uint64_t a1, uint64_t a2)
{
  v3 = 2;
  v4 = 2;
  return sub_1BF0DD78C(a2, &v3);
}

size_t sub_1BF0DFF58@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, size_t *a3@<X8>)
{
  v5 = *a1;

  v6 = sub_1BF0E239C(v5, a2);
  result = sub_1BF0DC540(v6);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0DFFB4(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 2;
  return sub_1BF0DD78C(v1, &v3);
}

void sub_1BF0DFFFC(void *a1, uint64_t a2)
{
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = a1;
  oslog = sub_1BF1797DC();
  v6 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    v9 = sub_1BF17923C();
    v10 = MEMORY[0x1BFB522D0](a2, v9);
    v12 = sub_1BF01A7AC(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v13 = sub_1BF17BB0C();
    v15 = sub_1BF01A7AC(v13, v14, &v17);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1BEFE0000, oslog, v6, "AuthTokenManager failed to refresh auth tokens for urls=%{public}s; error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v8, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t AuthTokenManager.discardAuthToken(for:)(uint64_t *a1)
{
  v2 = sub_1BF17923C();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v9 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  if (qword_1ED8E9CB0 != -1)
  {
    OUTLINED_FUNCTION_1_41();
  }

  v12 = sub_1BF1797FC();
  __swift_project_value_buffer(v12, qword_1ED8F4DD0);
  v37 = *(v5 + 16);
  v37(v11, a1, v2);
  v13 = sub_1BF1797DC();
  v14 = sub_1BF17ACDC();
  v15 = os_log_type_enabled(v13, v14);
  v34 = v7;
  v35 = v5;
  v36 = v5 + 16;
  if (v15)
  {
    v16 = a1;
    v17 = OUTLINED_FUNCTION_70();
    v18 = OUTLINED_FUNCTION_44_0();
    v38 = v18;
    *v17 = 136446210;
    sub_1BF00AF3C(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
    v19 = sub_1BF17B6FC();
    v20 = v5;
    v22 = v21;
    (*(v20 + 8))(v11, v2);
    v23 = sub_1BF01A7AC(v19, v22, &v38);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1BEFE0000, v13, v14, "AuthTokenManager will discard auth token for URL: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_28();
    a1 = v16;
    OUTLINED_FUNCTION_28();
  }

  else
  {

    (*(v5 + 8))(v11, v2);
  }

  sub_1BF0E0628(v33);
  v24 = v37;
  v25 = OUTLINED_FUNCTION_17_9();
  v24(v25, a1, v2);
  v33 = a1;
  v26 = v35;
  v27 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v28 = swift_allocObject();
  v35 = *(v26 + 32);
  (v35)(v28 + v27, v9, v2);
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  sub_1BF09A994();

  v37(v9, v33, v2);
  v29 = swift_allocObject();
  (v35)(v29 + v27, v9, v2);
  v30 = sub_1BF08C59C();

  return v30;
}

uint64_t sub_1BF0E0628(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 104);
  sub_1BEFF51A8(0, &qword_1ED8EF220, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BF17DEF0;
  *(v3 + 32) = sub_1BF17913C();
  *(v3 + 40) = v4;
  v5 = (*(*(v1 + 88) + 40))(v3, *(v1 + 80));

  return v5;
}

void sub_1BF0E0790(void *a1, uint64_t a2)
{
  v4 = sub_1BF17923C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v9 = sub_1BF1797FC();
  __swift_project_value_buffer(v9, qword_1ED8F4DD0);
  (*(v5 + 16))(v8, a2, v4);
  v10 = a1;
  v11 = sub_1BF1797DC();
  v12 = sub_1BF17ACBC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446466;
    sub_1BF00AF3C(&qword_1EBDCBB30, MEMORY[0x1E6968FB0]);
    v15 = sub_1BF17B6FC();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_1BF01A7AC(v15, v17, &v23);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    swift_getErrorValue();
    v19 = sub_1BF17BB0C();
    v21 = sub_1BF01A7AC(v19, v20, &v23);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1BEFE0000, v11, v12, "AuthTokenManager failed to discard token for url=%{public}s; error=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v14, -1, -1);
    MEMORY[0x1BFB547B0](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BF0E0AD0(uint64_t a1, uint64_t a2)
{
  sub_1BEFF1184(0, &qword_1ED8E9E10, sub_1BF0E34F0, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v14 - v7);
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  v9 = *(*v2 + 112);
  sub_1BF0E34F0();
  v11 = v10;
  __swift_storeEnumTagSinglePayload(v2 + v9, 1, 1, v10);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  *v8 = a2;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
  v12 = *(*v2 + 112);
  swift_beginAccess();
  sub_1BF0E354C(v8, v2 + v12);
  swift_endAccess();
  return v2;
}

uint64_t sub_1BF0E0C38(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 32) = v4;
  *(v2 + 48) = -1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a2;
  v6 = *(v2 + 48);
  *(v2 + 48) = 1;
  sub_1BF043E18(v5, v6);
  return v2;
}

uint64_t sub_1BF0E0CBC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 32) = v4;
  *(v2 + 48) = -1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  swift_beginAccess();
  *(v2 + 40) = a2;
  *(v2 + 48) = 1;
  return v2;
}

uint64_t sub_1BF0E0D34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[6];
  v6 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v5);
  (*(v6 + 8))(v5, v6);
  if (!a2[8])
  {
    swift_beginAccess();
    sub_1BF082874(a3, v7, v8, v9, v10, v11, v12, v13, v17, v18);
    swift_endAccess();
  }

  v14 = a2[6];
  v15 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v14);
  return (*(v15 + 16))(v14, v15);
}

uint64_t sub_1BF0E0E14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[6];
  v6 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v5);
  (*(v6 + 8))(v5, v6);
  v7 = a2[8];
  if ((v7 & 1) == 0 && (!v7 || (v7 & 2) != 0))
  {
    swift_beginAccess();
    sub_1BF082874(a3, v8, v9, v10, v11, v12, v13, v14, v18, v19);
    swift_endAccess();
  }

  v15 = a2[6];
  v16 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v15);
  return (*(v16 + 16))(v15, v16);
}

uint64_t sub_1BF0E0EF4(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  sub_1BF0E32B4(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF028120(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF17923C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = 0;
  v61 = a1;
  v20 = *(a1 + 16);
  v63 = v11 + 16;
  v59 = (v11 + 8);
  v54 = (v11 + 32);
  v56 = MEMORY[0x1E69E7CC0];
  while (v20 != v19)
  {
    v58 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v57 = *(v11 + 72);
    v21 = *(v11 + 16);
    v21(v18, v61 + v58 + v57 * v19, v10);
    if (*(v62 + 16) && (v22 = v62, sub_1BF082148(), (v24 & 1) != 0))
    {
      v25 = v23;
      v26 = v10;
      v27 = v19;
      v28 = v18;
      v29 = v9;
      v30 = v11;
      v31 = *(v22 + 56);
      v32 = type metadata accessor for AuthToken();
      v33 = v31 + *(*(v32 - 8) + 72) * v25;
      v34 = v20;
      v35 = v60;
      v11 = v30;
      v9 = v29;
      v18 = v28;
      v19 = v27;
      v10 = v26;
      sub_1BF0E3424(v33, v60, type metadata accessor for AuthToken);
      v36 = 1;
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v32);
      v37 = v35;
      v20 = v34;
      sub_1BF0E2F3C(v37, sub_1BF0E32B4);
    }

    else
    {
      v38 = type metadata accessor for AuthToken();
      v39 = v60;
      __swift_storeEnumTagSinglePayload(v60, 1, 1, v38);
      sub_1BF0E2F3C(v39, sub_1BF0E32B4);
      v21(v9, v18, v10);
      v36 = 0;
    }

    __swift_storeEnumTagSinglePayload(v9, v36, 1, v10);
    (*v59)(v18, v10);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1BF0E2F3C(v9, sub_1BF028120);
      ++v19;
    }

    else
    {
      v40 = v53;
      v41 = *v54;
      (*v54)(v53, v9, v10);
      v41(v55, v40, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6444(0, *(v56 + 16) + 1, 1, v56);
        v56 = v49;
      }

      v43 = v57;
      v42 = v58;
      v45 = *(v56 + 16);
      v44 = *(v56 + 24);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v58 = v45 + 1;
        sub_1BF0A6444(v44 > 1, v45 + 1, 1, v56);
        v46 = v58;
        v56 = v50;
      }

      ++v19;
      v47 = v55;
      v48 = v56;
      *(v56 + 16) = v46;
      v41((v48 + v42 + v45 * v43), v47, v10);
    }
  }

  return v56;
}

uint64_t sub_1BF0E1374(void (*a1)(void))
{
  a1();
  v1 = qword_1ED8F0210;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_1BF09A304();

  sub_1BEFF77FC();
}

uint64_t sub_1BF0E14DC(__n128 a1, uint64_t a2, unint64_t a3, char a4, uint64_t (*a5)(__n128))
{
  a1.n128_u64[0] = a3;
  if (a4)
  {
    a1.n128_f64[0] = 1.79769313e308;
  }

  return a5(a1);
}

uint64_t sub_1BF0E1584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = a1;
  v20 = sub_1BF0E0EF4(a1, a2);
  if (*(v20 + 16))
  {
    v35 = v19;
    v21 = a5;
    sub_1BEFF1184(0, &qword_1EBDCA9E0, sub_1BF096F0C, type metadata accessor for Promise);
    v22 = swift_allocObject();
    v36 = 0;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v23 = UnfairLock.init(options:)(&v36);
    sub_1BEFF1184(0, &qword_1EBDCAA08, sub_1BF096F0C, type metadata accessor for Seal);
    swift_allocObject();
    *(v22 + 16) = sub_1BF0942FC(v23);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1BF0E3174;
    *(v24 + 24) = v22;
    swift_retain_n();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF09EA68();
    v26 = v25;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF147214(v26, a13, a14, a11, v21, a6, v20, a9, a10);

    v27 = swift_allocObject();
    v27[2] = sub_1BF0E3184;
    v27[3] = v24;
    v27[4] = a2;
    v28 = qword_1ED8F0210;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    if (v28 != -1)
    {
      swift_once();
    }

    sub_1BF09A64C();

    v29 = swift_allocObject();
    v29[2] = a12;
    v29[3] = a2;
    v29[4] = sub_1BF0E3184;
    v29[5] = v24;
    v29[6] = sub_1BF0E317C;
    v29[7] = v22;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BEFF77FC();

    v19 = v35;
  }

  else
  {

    sub_1BF17923C();
    type metadata accessor for AuthToken();
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v30 = sub_1BF179DAC();
    sub_1BEFF1184(0, &qword_1EBDCA9E0, sub_1BF096F0C, type metadata accessor for Promise);
    swift_allocObject();
    sub_1BF0AAE6C(a2, v30);
  }

  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v31 = off_1ED8F0218;
  sub_1BF0DB114(off_1ED8F0218, sub_1BF0E370C, 0);

  v32 = swift_allocObject();
  v32[2] = a12;
  v32[3] = v19;
  v32[4] = a7;
  v32[5] = a8;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF0DB2A4(v31, sub_1BF0E31BC, v32);

  v33 = sub_1BF0DB114(v31, sub_1BF0E370C, 0);

  return v33;
}

uint64_t sub_1BF0E1B34(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(void))
{
  if ((a2 & 1) == 0 || !*(a3 + 16))
  {
    return a6();
  }

  sub_1BF17923C();
  type metadata accessor for AuthToken();
  sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
  v8 = sub_1BF179DAC();
  a4(a3, v8);
}

uint64_t sub_1BF0E1C24(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *))
{
  if ((a2 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = sub_1BF0E0EF4(a3, a1);
  if (!*(v6 + 16))
  {

LABEL_7:
    sub_1BF17923C();
    type metadata accessor for AuthToken();
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v11 = sub_1BF179DAC();
    sub_1BEFF1184(0, &qword_1EBDCA9E0, sub_1BF096F0C, type metadata accessor for Promise);
    swift_allocObject();
    return sub_1BF0AAE6C(a1, v11);
  }

  v12 = 0;
  v13 = 1;
  a4(v6, &v12);

  *(swift_allocObject() + 16) = a1;
  v7 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1BF09A51C();
  v9 = v8;

  return v9;
}

uint64_t sub_1BF0E1E18(uint64_t a1, uint64_t a2)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return a2;
}

uint64_t sub_1BF0E1E54(void *a1, uint64_t a2)
{
  sub_1BF0DC608(a1, a2);
  OUTLINED_FUNCTION_0_53();
  sub_1BEFF1184(0, v2, v3, type metadata accessor for Promise);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  return sub_1BF0AADDC();
}

uint64_t sub_1BF0E1EB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = *(a1 + 16);
  sub_1BEFF1184(0, &qword_1ED8E9CF8, sub_1BF027B68, type metadata accessor for Promise);
  v7 = swift_allocObject();
  if (v6)
  {
    v10 = 0;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v8 = UnfairLock.init(options:)(&v10);
    sub_1BEFF1184(0, &qword_1ED8E9DC8, sub_1BF027B68, type metadata accessor for Seal);
    swift_allocObject();
    *(v7 + 16) = sub_1BF034CD4(v8);
    swift_retain_n();
    sub_1BF0E2058(sub_1BF0E30E0, v7, sub_1BF0E30E8, v7, a2, a3, a1);

    return v7;
  }

  else
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    return sub_1BF0AADDC();
  }
}

uint64_t sub_1BF0E2058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  a5(a7);
  v12 = swift_allocObject();
  v12[2] = sub_1BF0E30F0;
  v12[3] = v11;
  v12[4] = a7;
  v13 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v13 != -1)
  {
    swift_once();
  }

  sub_1BF08C6B4(off_1ED8F0218, sub_1BF0E3128, v12);
}

void sub_1BF0E21B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BEFF51A8(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BF0E22B0(void *a1)
{
  v3 = *(sub_1BF17923C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BF0E0790(a1, v4);
}

uint64_t sub_1BF0E238C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0DBF78(a1, *(v1 + 16));
}

unint64_t *sub_1BF0E239C(uint64_t a1, unint64_t *a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      a2 = sub_1BF0E277C(v14, v8, a1, a2);
      MEMORY[0x1BFB547B0](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  v10 = (v15 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1BF1470D8(0, v8, v10);

  v11 = sub_1BF0E2574(v10, v8, a1, a2);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v11;
  }

LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1BF0E2574(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v23 = a2;
  v27 = a4;
  v24 = a1;
  v5 = type metadata accessor for AuthToken();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    sub_1BF0E3424(*(a3 + 56) + *(v26 + 72) * v18, v9, type metadata accessor for AuthToken);
    v19 = v27(v9);
    result = sub_1BF0E2F3C(v9, type metadata accessor for AuthToken);
    if (v19)
    {
      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_15:
        v21 = sub_1BF0E2824(v24, v23, v25, a3);

        return v21;
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_15;
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1BF0E277C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v8 = sub_1BF0E2574(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1BF0E2824(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AuthToken();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v46 - v12;
  v57 = sub_1BF17923C();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x1EEE9AC00](v57);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = v46 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1BF0E2E40();
  result = sub_1BF17B52C();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v16;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    sub_1BF0E3424(v33, v50, type metadata accessor for AuthToken);
    v35 = *(v30 + 32);
    v16 = v24;
    v35(v24, v31, v23);
    sub_1BF0A8A64(v34, v58);
    v36 = *(v19 + 40);
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    result = sub_1BF179F1C();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_25:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v16, v57);
    result = sub_1BF0A8A64(v58, *(v19 + 56) + v40 * v53);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v16;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BF0E2D1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_1BF0DC4F8();
}

uint64_t sub_1BF0E2D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BF0E1E18(*a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1BF0E2E18(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0E2E00(a1, *(v1 + 16));
}

void sub_1BF0E2E40()
{
  if (!qword_1EBDCA8A8)
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken();
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    v0 = sub_1BF17B53C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA8A8);
    }
  }
}

uint64_t sub_1BF0E2F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1BF0E2F94()
{
  if (!qword_1ED8E9D18[0])
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken();
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    v0 = type metadata accessor for Manager();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8E9D18);
    }
  }
}

uint64_t sub_1BF0E30F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1BF0E31DC(uint64_t a1, uint64_t a2)
{
  sub_1BEFF1184(0, &qword_1ED8EACF8, sub_1BF0D7CEC, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0E330C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BF0E1374(*(v0 + 16));
}

uint64_t objectdestroy_21Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF0E3424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF0E3488(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF0E2C78(a1, *(v1 + 16));
}

unint64_t sub_1BF0E349C()
{
  result = qword_1EBDCBEA0;
  if (!qword_1EBDCBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEA0);
  }

  return result;
}

void sub_1BF0E34F0()
{
  if (!qword_1ED8E9E18[0])
  {
    type metadata accessor for AuthToken();
    v0 = type metadata accessor for Seal.Resolution();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8E9E18);
    }
  }
}

uint64_t sub_1BF0E354C(uint64_t a1, uint64_t a2)
{
  sub_1BEFF1184(0, &qword_1ED8E9E10, sub_1BF0E34F0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AuthTokenManagerError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BF0E3690()
{
  result = qword_1EBDCBEA8;
  if (!qword_1EBDCBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEA8);
  }

  return result;
}

uint64_t sub_1BF0E3740(uint64_t result)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v1 = *(result + 16);
  v2 = (result + 32);
  for (i = MEMORY[0x1E69E6290]; v1; --v1)
  {
    v19 = *v2;
    v20[3] = i;
    v20[4] = MEMORY[0x1E6969DF8];
    v20[0] = &v19;
    v20[1] = v20;
    v4 = __swift_project_boxed_opaque_existential_1(v20, i);
    v5 = *v4;
    if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
    {
      if (v7 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v18 = v6 - v5;
        memcpy(__dst, v5, v6 - v5);
        v8 = *__dst;
        v9 = v16 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v18 << 16)) << 32);
        v16 = v9;
      }

      else
      {
        v10 = sub_1BF178F6C();
        v11 = *(v10 + 48);
        v12 = *(v10 + 52);
        swift_allocObject();
        v13 = sub_1BF178F2C();
        v14 = v13;
        if (v7 >= 0x7FFFFFFF)
        {
          sub_1BF1792CC();
          v8 = swift_allocObject();
          *(v8 + 16) = 0;
          *(v8 + 24) = v7;
          v9 = v14 | 0x8000000000000000;
        }

        else
        {
          v8 = v7 << 32;
          v9 = v13 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
    sub_1BF17939C();
    result = sub_1BF014E18(v8, v9);
    ++v2;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E3904(uint64_t a1)
{
  v2 = v1;
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v8 = 0;
  v25 = v7;
  v26 = v3;
  if (v6)
  {
    while (1)
    {
      v28 = v2;
      v9 = v8;
LABEL_9:
      v10 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
      v11 = *(a1 + 48) + v10;
      v12 = (*(a1 + 56) + v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = sub_1BF01A91C(*v11, *(v11 + 8));
      v29 = *(v15 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v16 = sub_1BF088784(&v29, &v30);
      v18 = v17;
      sub_1BF17939C();
      sub_1BF014E18(v16, v18);
      sub_1BF0E3740(v15);
      v2 = v28;
      if (v28)
      {
        break;
      }

      v19 = sub_1BF01A91C(v14, v13);
      v29 = *(v19 + 16);
      v20 = sub_1BF088784(&v29, &v30);
      v22 = v21;
      sub_1BF17939C();
      sub_1BF014E18(v20, v22);
      sub_1BF0E3740(v19);
      v6 &= v6 - 1;

      v8 = v9;
      v7 = v25;
      v3 = v26;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v28 = v2;
        goto LABEL_9;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E3B34()
{
  OUTLINED_FUNCTION_6_25();
  v6 = *MEMORY[0x1E69E9840];
  v5 = v0;
  sub_1BF088784(&v5, &v6);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  result = sub_1BF014E18(v1, v2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E3BB8()
{
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_13_15(v0, *MEMORY[0x1E69E9840], v5, SWORD2(v5), SBYTE6(v5), SHIBYTE(v5), v6);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  result = sub_1BF014E18(v1, v2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E3C28()
{
  OUTLINED_FUNCTION_6_25();
  v6 = *MEMORY[0x1E69E9840];
  v5 = v0;
  sub_1BF088784(&v5, &v6);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  result = sub_1BF014E18(v1, v2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E3CAC()
{
  OUTLINED_FUNCTION_6_25();
  v6 = *MEMORY[0x1E69E9840];
  v5 = v0;
  sub_1BF088784(&v5, &v6);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  result = sub_1BF014E18(v1, v2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E3D30()
{
  OUTLINED_FUNCTION_6_25();
  v6 = *MEMORY[0x1E69E9840];
  v5 = v0;
  sub_1BF088784(&v5, &v6);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  result = sub_1BF014E18(v1, v2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E3DB4()
{
  OUTLINED_FUNCTION_6_25();
  v6 = *MEMORY[0x1E69E9840];
  v5 = v0;
  sub_1BF088784(&v5, &v6);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  result = sub_1BF014E18(v1, v2);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BF0E3E38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  switch(v3 >> 62)
  {
    case 1uLL:
      v15 = v4 >> 32;
      if (v4 >> 32 < v4)
      {
        goto LABEL_12;
      }

      v14 = v4;
      goto LABEL_9;
    case 2uLL:
      goto LABEL_4;
    case 3uLL:
      v6 = sub_1BF1794FC();
      *&v31 = 0;
      *(&v31 + 6) = 0;
      v16 = *(v6 - 8);
      OUTLINED_FUNCTION_18_7();
      v9 = v17;
      *(v17 + 80);
      v18 = *(v16 + 72);
      swift_slowAlloc();
      OUTLINED_FUNCTION_18_7();
      v13 = *(v19 + 64);
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      __break(1u);
LABEL_12:
      __break(1u);
      break;
    default:
      *&v31 = *a1;
      WORD4(v31) = v3;
      BYTE10(v31) = BYTE2(v3);
      BYTE11(v31) = BYTE3(v3);
      BYTE12(v31) = BYTE4(v3);
      BYTE13(v31) = BYTE5(v3);
      v6 = sub_1BF1794FC();
      v7 = *(v6 - 8);
      OUTLINED_FUNCTION_18_7();
      v9 = v8;
      *(v8 + 80);
      v10 = *(v7 + 72);
      swift_slowAlloc();
      OUTLINED_FUNCTION_18_7();
      v13 = *(v12 + 64);
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_4:
        v14 = *(v4 + 16);
        v15 = *(v4 + 24);
LABEL_9:
        sub_1BF0E5A24(v14, v15, a2);
      }

      else
      {
LABEL_6:
        v20 = v11;
        memcpy(v11, &v31, v13);
        (*(v9 + 16))(a2, v20, v6);
        OUTLINED_FUNCTION_28();
      }

      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = *(*(sub_1BF1794FC() - 8) + 64);
      v24 = OUTLINED_FUNCTION_49();
      sub_1BF014DC0(v24, v25);
      OUTLINED_FUNCTION_16_11();
      sub_1BF05F1AC(v26, v27, v28, v29);
      v30 = v31;
      sub_1BF014E18(*a1, *(a1 + 8));
      *a1 = v30;
      break;
  }
}

uint64_t sub_1BF0E40B8(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF0E572C(v1, v2);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_14_15();
  return OUTLINED_FUNCTION_11_13();
}

uint64_t sub_1BF0E4110(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF0E57E0(v1, v2);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_14_15();
  return OUTLINED_FUNCTION_11_13();
}

uint64_t sub_1BF0E4168(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF0E5894(v1, v2);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_14_15();
  return OUTLINED_FUNCTION_11_13();
}