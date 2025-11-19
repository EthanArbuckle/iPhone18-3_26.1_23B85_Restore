uint64_t sub_270498D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEFE8);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E58);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = (&v54 - v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v62 = v13;
  v15 = 0;
  v59 = a1;
  v16 = *(a1 + 64);
  v56 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v55 = (v17 + 63) >> 6;
  v64 = v69 + 16;
  v65 = (v69 + 32);
  v60 = a2;
  v61 = (v69 + 8);
  v66 = v4;
  v57 = &v54 - v12;
  v58 = v7;
  while (v19)
  {
    v67 = (v19 - 1) & v19;
    v20 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_13:
    v24 = *(v59 + 56);
    v25 = *(v59 + 48) + 48 * v20;
    v27 = *v25;
    v26 = *(v25 + 8);
    v29 = *(v25 + 16);
    v28 = *(v25 + 24);
    v63 = *(v25 + 32);
    v30 = v68;
    v31 = v69;
    v32 = *(v25 + 40);
    v33 = v66;
    (*(v69 + 16))(v68, v24 + *(v69 + 72) * v20, v66);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E60);
    v35 = *(v34 + 48);
    v36 = v62;
    *v62 = v27;
    v36[1] = v26;
    v37 = v36;
    v38 = v33;
    v36[2] = v29;
    v36[3] = v28;
    v39 = v63;
    v36[4] = v63;
    *(v36 + 40) = v32;
    (*(v31 + 32))(v36 + v35, v30, v38);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v34);

    sub_2703B4984(v28, v39, v32);
    a2 = v60;
    v14 = v57;
    v7 = v58;
LABEL_14:
    sub_27049A3B4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E60);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v40);
    v42 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v42;
    }

    v43 = *(v40 + 48);
    v44 = v14[1];
    v70 = *v14;
    v71[0] = v44;
    *(v71 + 9) = *(v14 + 25);
    v45 = v66;
    (*v65)(v7, v14 + v43, v66);
    v46 = sub_2703D749C(&v70);
    v48 = v47;
    sub_27048A6A4(&v70);
    if ((v48 & 1) == 0)
    {
      (*v61)(v7, v45);
      return 0;
    }

    v50 = v68;
    v49 = v69;
    (*(v69 + 16))(v68, *(a2 + 56) + *(v69 + 72) * v46, v45);
    sub_27049AA84(&qword_2807D3E68, &qword_2807CEFE8);
    v51 = sub_2705D7514();
    v52 = *(v49 + 8);
    v52(v50, v45);
    result = (v52)(v7, v45);
    v19 = v67;
    if ((v51 & 1) == 0)
    {
      return v42;
    }
  }

  v21 = v62;
  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v22 >= v55)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E60);
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v53);
      v67 = 0;
      goto LABEL_14;
    }

    v23 = *(v56 + 8 * v22);
    ++v15;
    if (v23)
    {
      v67 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v22 << 6);
      v15 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2704992A8(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_13_22();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_30_10();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v10 = a2;
  }

  v13 = a4[2];
  if (v10 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v15 != a4 || &a4[5 * v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_45_5();
      memmove(v18, v19, v20);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    OUTLINED_FUNCTION_45_5();
    swift_arrayInitWithCopy();
  }
}

void sub_2704993C4()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E98);
    v7 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_41_5(v7);
    OUTLINED_FUNCTION_63_3(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_57_2();
  if (v1)
  {
    if (v3 != v0 || &v10[40 * v2] <= v9)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_27049949C()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3ED0);
    v7 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_41_5(v7);
    OUTLINED_FUNCTION_63_3(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_57_2();
  if (v1)
  {
    if (v3 != v0 || &v10[120 * v2] <= v9)
    {
      memmove(v9, v10, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270499574()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DC0);
    v7 = OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_41_5(v7);
    OUTLINED_FUNCTION_39_5(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 32))
    {
      v10 = OUTLINED_FUNCTION_15_18();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
    OUTLINED_FUNCTION_15_18();
    swift_arrayInitWithCopy();
  }
}

char *sub_270499664(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E48);
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
    if (v10 != a4 || &v13[40 * v8] <= v12)
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

void sub_270499778()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3EE8);
    v7 = OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_41_5(v7);
    OUTLINED_FUNCTION_39_5(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_57_2();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270499844()
{
  OUTLINED_FUNCTION_31_9();
  if (v3)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3EF0);
    v9 = OUTLINED_FUNCTION_86_2();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_270499924()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_30_10();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_27041DF90(v8, v5);
  OUTLINED_FUNCTION_73_1();
  sub_2705D40D4();
  OUTLINED_FUNCTION_46_0();
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_270499DF0(v0 + v10, v8, v2 + v10, MEMORY[0x277CC8918]);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270499A04()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3E90);
    v7 = OUTLINED_FUNCTION_86_2();
    OUTLINED_FUNCTION_41_5(v7);
    OUTLINED_FUNCTION_39_5(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_57_2();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270499AD0()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3EB0);
    v7 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_41_5(v7);
    OUTLINED_FUNCTION_63_3(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_57_2();
  if (v1)
  {
    if (v3 != v0 || &v10[120 * v2] <= v9)
    {
      memmove(v9, v10, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_270499BA8()
{
  OUTLINED_FUNCTION_31_9();
  if (v4)
  {
    OUTLINED_FUNCTION_13_22();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_22();
    }
  }

  OUTLINED_FUNCTION_14_26();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3EA8);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_41_5(v7);
    OUTLINED_FUNCTION_39_5(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_57_2();
  if (v1)
  {
    if (v3 != v0 || &v10[128 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_270499C7C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499CA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499CDC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499CFC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499D20(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499D40(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499D68(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499D88(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499DB0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

void sub_270499DF0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_66_3();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_14(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_75_1();

    MEMORY[0x2821FE828](v12);
  }

  else if (a3 != v5)
  {
    v11 = OUTLINED_FUNCTION_75_1();

    MEMORY[0x2821FE820](v11);
  }
}

char *sub_270499EAC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

char *sub_270499ED4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_45(a3, result);
  }

  return result;
}

uint64_t sub_270499EFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 128) = a4;
  *(v4 + 112) = &type metadata for MessageDisplayedEvent;
  *(v4 + 120) = &off_288056448;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;
  sub_2703AE9FC(a1, a2, a3);

  return MEMORY[0x2822009F8](sub_270499F80, 0, 0);
}

uint64_t sub_270499F80()
{
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CD0);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  *(inited + 16) = xmmword_2705DC030;
  sub_2703B4E54(v0 + 88, inited + 32);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_27049A050;

  return MessageCenter.record(events:)();
}

uint64_t sub_27049A050()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v2 = v1;
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;

  swift_setDeallocating();
  sub_270489160();
  __swift_destroy_boxed_opaque_existential_1(v2 + 88);
  OUTLINED_FUNCTION_1_4();

  return v6();
}

uint64_t sub_27049A154()
{

  sub_2703AF9AC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  OUTLINED_FUNCTION_50_4();

  return swift_deallocObject();
}

uint64_t sub_27049A26C()
{
  OUTLINED_FUNCTION_66_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_10_10();
  v3(v2);
  return v0;
}

uint64_t sub_27049A2C4()
{

  sub_2703AE630(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_27049A308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27048C558();
  *a1 = result;
  return result;
}

uint64_t sub_27049A354(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27049A3B4()
{
  OUTLINED_FUNCTION_66_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_10_10();
  v3(v2);
  return v0;
}

uint64_t sub_27049A40C()
{

  return swift_deallocObject();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_46_0();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_27049A4B8()
{
  OUTLINED_FUNCTION_2_2();
  v2 = v1;
  v0[26] = v3;
  v0[24] = &type metadata for MessagePlacementRequest;
  v0[25] = &protocol witness table for MessagePlacementRequest;
  v4 = swift_allocObject();
  v0[21] = v4;
  memcpy((v4 + 16), v2, 0x50uLL);
  sub_27048A9F8(v2, (v0 + 2));

  return MEMORY[0x2822009F8](sub_27049A564, 0, 0);
}

uint64_t sub_27049A564()
{
  OUTLINED_FUNCTION_2_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3CD0);
  inited = swift_initStackObject();
  *(v0 + 216) = inited;
  *(inited + 16) = xmmword_2705DC030;
  sub_2703B4E54(v0 + 168, inited + 32);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_27049A634;

  return MessageCenter.record(events:)();
}

uint64_t sub_27049A634()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v2 = v1;
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;

  swift_setDeallocating();
  sub_270489160();
  __swift_destroy_boxed_opaque_existential_1(v2 + 168);
  OUTLINED_FUNCTION_1_4();

  return v6();
}

uint64_t sub_27049A738()
{

  sub_2703AF9AC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 72) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_27049A79C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_27049A7D4()
{

  sub_2703AF9AC(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_27049A834()
{
  swift_unknownObjectRelease();

  sub_2703AF9AC(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_27049A890()
{
  OUTLINED_FUNCTION_67_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_270414FA4;
  OUTLINED_FUNCTION_37_6();

  return sub_270495278(v3, v4, v5, v6, v7);
}

uint64_t sub_27049A940()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_27049A988()
{
  OUTLINED_FUNCTION_67_2();
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_270411828;
  OUTLINED_FUNCTION_37_6();

  return sub_2704946D4(v5, v6, v7, v8, v2);
}

uint64_t sub_27049AA38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27048C78C();
  *a1 = result;
  return result;
}

uint64_t sub_27049AA84(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27049AAC8()
{
  sub_2703F0028();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageViewStyle(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_28()
{
}

uint64_t OUTLINED_FUNCTION_19_11(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

char *OUTLINED_FUNCTION_32_6@<X0>(unint64_t a1@<X8>)
{

  return sub_270499664((a1 > 1), v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_38_5(unint64_t *a1, uint64_t *a2)
{

  return sub_27049AA84(a1, a2);
}

__n128 OUTLINED_FUNCTION_44_4()
{
  v1 = *(v0 + 673);
  *(v0 + 2136) = *(v0 + 2488);
  *(v0 + 2144) = *(v0 + 2496);
  result = *(v0 + 2512);
  *(v0 + 2160) = result;
  *(v0 + 2176) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_4()
{
}

uint64_t OUTLINED_FUNCTION_54_3(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_64_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_82_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_83_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_86_2()
{

  return swift_allocObject();
}

uint64_t sub_27049B054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000270613430 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_27049B124(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_27049B160(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3EF8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = *(v1 + 16);
  v13[0] = *(v1 + 8);
  v10 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27049B65C();
  sub_2705D84C4();
  LOBYTE(v15) = 0;
  v11 = v13[1];
  sub_2705D8054();
  if (!v11)
  {
    v15 = v13[0];
    v16 = v9;
    v17 = v10;
    v14 = 1;
    sub_2703AE9FC(v13[0], v9, v10);
    sub_2703C39C4();
    sub_2705D8084();
    sub_2703AE630(v15, v16, v17);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_27049B308@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F08);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27049B65C();
  sub_2705D8484();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    sub_2705D7F74();
    v12 = v11;
    v16[15] = 1;
    sub_2703C3FAC();
    sub_2705D7FA4();
    (*(v7 + 8))(v10, v5);
    v13 = v18;
    v14 = v17;
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 24) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27049B4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27049B054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27049B4FC(uint64_t a1)
{
  v2 = sub_27049B65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27049B538(uint64_t a1)
{
  v2 = sub_27049B65C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27049B5C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEF && *(a1 + 25))
    {
      v2 = *a1 + 238;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 0x11)
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

uint64_t sub_27049B604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 239;
    if (a3 >= 0xEF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_27049B65C()
{
  result = qword_2807D3F00;
  if (!qword_2807D3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageDisappearedEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27049B77CLL);
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

unint64_t sub_27049B7B8()
{
  result = qword_2807D3F10;
  if (!qword_2807D3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F10);
  }

  return result;
}

unint64_t sub_27049B810()
{
  result = qword_2807D3F18;
  if (!qword_2807D3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F18);
  }

  return result;
}

unint64_t sub_27049B868()
{
  result = qword_2807D3F20;
  if (!qword_2807D3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F20);
  }

  return result;
}

uint64_t sub_27049B8D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000270613430 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x80000002706133F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27049B9F0(char a1)
{
  if (!a1)
  {
    return 0x6E6F73616572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0xD000000000000016;
}

uint64_t sub_27049BA48(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F28);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v9;
  v26 = *(v1 + 32);
  v10 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = v10;
  v17 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27049C0D0();
  sub_2705D84C4();
  LOBYTE(v23) = 0;
  v11 = v22;
  sub_2705D8034();
  if (!v11)
  {
    v12 = v17;
    v14 = v18;
    v13 = v19;
    v23 = v21;
    v24 = v20;
    v25 = v26;
    v27 = 1;
    sub_2703AE9FC(v21, v20, v26);
    sub_2703C39C4();
    OUTLINED_FUNCTION_1_46();
    sub_2705D8084();
    sub_2703AE630(v23, v24, v25);
    v23 = v13;
    v24 = v14;
    v25 = v12;
    v27 = 2;
    sub_2703AE9E8(v13, v14, v12);
    OUTLINED_FUNCTION_1_46();
    sub_2705D8024();
    sub_2703AE980(v23, v24, v25);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_27049BC38@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F38);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27049C0D0();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2703AE980(0, 0, 255);
  }

  else
  {
    LOBYTE(v19) = 0;
    *&v16 = sub_2705D7F54();
    *(&v16 + 1) = v6;
    LOBYTE(v17[0]) = 1;
    sub_2703C3FAC();
    OUTLINED_FUNCTION_2_39();
    sub_2705D7FA4();
    v15 = v19;
    v28 = v20;
    v29 = 2;
    OUTLINED_FUNCTION_2_39();
    sub_2705D7F44();
    v7 = OUTLINED_FUNCTION_0_44();
    v8(v7);
    v10 = v25;
    v9 = v26;
    v14 = v25;
    v13 = v27;
    sub_2703AE980(0, 0, 255);
    v17[0] = v16;
    v17[1] = v15;
    v11 = v28;
    v18[0] = v28;
    *&v18[8] = v10;
    *&v18[16] = v9;
    v18[24] = v13;
    *a2 = v16;
    a2[1] = v15;
    a2[2] = *v18;
    *(a2 + 41) = *&v18[9];
    sub_27049C124(v17, &v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v19 = v16;
    v20 = v15;
    v21 = v11;
    v22 = v14;
    v23 = v9;
    v24 = v13;
    return sub_27049C15C(&v19);
  }
}

uint64_t sub_27049BF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27049B8D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27049BF68(uint64_t a1)
{
  v2 = sub_27049C0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27049BFA4(uint64_t a1)
{
  v2 = sub_27049C0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27049C030(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27049C070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27049C0D0()
{
  result = qword_2807D3F30;
  if (!qword_2807D3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageDismissedEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27049C258);
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

unint64_t sub_27049C294()
{
  result = qword_2807D3F40;
  if (!qword_2807D3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F40);
  }

  return result;
}

unint64_t sub_27049C2EC()
{
  result = qword_2807D3F48;
  if (!qword_2807D3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F48);
  }

  return result;
}

unint64_t sub_27049C344()
{
  result = qword_2807D3F50;
  if (!qword_2807D3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F50);
  }

  return result;
}

uint64_t sub_27049C3F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000270613430 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_27049C490(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F58);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703AE9FC(v8, v9, v10);
  sub_27049C870();
  sub_2705D84C4();
  v14 = v8;
  v15 = v9;
  v16 = v10;
  sub_2703C39C4();
  v11 = v13;
  sub_2705D8084();
  sub_2703AE630(v14, v15, v16);
  return (*(v4 + 8))(v7, v11);
}

uint64_t sub_27049C5FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F68);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27049C870();
  sub_2705D8484();
  if (!v2)
  {
    sub_2703C3FAC();
    sub_2705D7FA4();
    (*(v7 + 8))(v10, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27049C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27049C3F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27049C798(uint64_t a1)
{
  v2 = sub_27049C870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27049C7D4(uint64_t a1)
{
  v2 = sub_27049C870();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27049C870()
{
  result = qword_2807D3F60;
  if (!qword_2807D3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageDisplayedEvent.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x27049C960);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27049C99C()
{
  result = qword_2807D3F70;
  if (!qword_2807D3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F70);
  }

  return result;
}

unint64_t sub_27049C9F4()
{
  result = qword_2807D3F78;
  if (!qword_2807D3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F78);
  }

  return result;
}

unint64_t sub_27049CA4C()
{
  result = qword_2807D3F80;
  if (!qword_2807D3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3F80);
  }

  return result;
}

uint64_t sub_27049CAB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  v9 = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_23_0(v9);
  if (*(v10 + 84) == a2)
  {
    v11 = a3[6];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728);
    v8 = a1 + v11;
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_27049CBDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1 + a4[5];
  }

  else
  {
    v11 = type metadata accessor for FlowAction.Destination(0);
    result = OUTLINED_FUNCTION_23_0(v11);
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v14 = a4[6];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0728);
    v10 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for MessageEmbeddedView()
{
  result = qword_2807D3F90;
  if (!qword_2807D3F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27049CD38()
{
  sub_27049CE4C(319, &qword_2807D0790, type metadata accessor for MessageCenter, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_27049CE4C(319, &qword_2807D3FA0, MEMORY[0x277D7EAC8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FlowAction.Destination(319);
      if (v2 <= 0x3F)
      {
        sub_2703BD854();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27049CE4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27049CECC()
{
  v1 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2705D7A84();
    v9 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_27049D000@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v2 = type metadata accessor for MessageEmbeddedView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_2705D46F4();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);
  sub_2705D5E54();
  sub_27049D89C(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_27049D904(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  (*(v7 + 16))(v11, v13, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3FA8);
  sub_2705D46A4();
  sub_2705D4684();
  v16 = type metadata accessor for DestinationRootView(255);
  v17 = sub_2705D6914();
  v18 = sub_27049DA48(&qword_2807D3FB0, type metadata accessor for DestinationRootView);
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  swift_getOpaqueTypeConformance2();
  sub_27049DA48(&qword_2807D3FB8, MEMORY[0x277D7EAA0]);
  sub_27049DA48(&qword_2807D3FC0, MEMORY[0x277D7EA90]);
  v19 = v21[0];
  sub_2705D46B4();
  (*(v7 + 8))(v13, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3FC8);
  *(v19 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_27049D388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DestinationRootView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DestinationFactory();
  sub_2705D68B4();
  v7 = type metadata accessor for MessageEmbeddedView();
  sub_2703F1298(a2 + *(v7 + 24), a1, v6);
  v10 = a2;
  sub_2705D6914();
  sub_27049DA48(&qword_2807D3FB0, type metadata accessor for DestinationRootView);
  sub_2705D59A4();

  return sub_27049DA98(v6);
}

uint64_t sub_27049D4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v3 = type metadata accessor for MessageEmbeddedView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  sub_27049D89C(a1, v6);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_27049D904(v6, v17 + v16);
  sub_2705D6914();
  sub_2705D6A14();
  v32 = sub_27049E970;
  v33 = v17;
  v18 = *(v8 + 16);
  v29 = v15;
  v18(v15, v13, v7);
  sub_27041F428();
  sub_2705D69E4();
  v19 = *(v8 + 8);
  v8 += 8;
  v19(v13, v7);

  v20 = sub_27049CECC();
  v21 = v30;
  sub_2705D6A14();
  v32 = v20;
  v18(v13, v21, v7);
  sub_27049E9CC();
  sub_2705D69E4();
  v19(v21, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
  v22 = *(v8 + 64);
  v23 = (*(v8 + 72) + 32) & ~*(v8 + 72);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2705E6EB0;
  v25 = v24 + v23;
  v26 = v29;
  v18(v25, v29, v7);
  v18((v25 + v22), v13, v7);
  sub_2703D3E64(v24);
  swift_setDeallocating();
  sub_2704890E4();
  v19(v13, v7);
  return (v19)(v26, v7);
}

uint64_t sub_27049D89C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageEmbeddedView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27049D904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageEmbeddedView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27049D968(uint64_t a1)
{
  v3 = type metadata accessor for MessageEmbeddedView();
  OUTLINED_FUNCTION_23_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_27049D388(a1, v5);
}

uint64_t sub_27049D9E8(void *a1)
{
  v1 = a1;

  return sub_2705D4674();
}

uint64_t sub_27049DA48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27049DA98(uint64_t a1)
{
  v2 = type metadata accessor for DestinationRootView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_8()
{
  v2 = type metadata accessor for MessageEmbeddedView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  v4 = v3 + *(v2 + 20);
  sub_2705D46F4();
  OUTLINED_FUNCTION_4_4();
  (*(v5 + 8))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);

  v6 = v3 + *(v2 + 24);
  type metadata accessor for MessageViewStyle.ViewStyle(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v6 + 3248) == 1)
      {
        goto LABEL_108;
      }

      v43 = *(v6 + 80);
      if (!v43)
      {
        goto LABEL_40;
      }

      if (v43 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 56);
LABEL_40:
        if (*(v6 + 104))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v16 || v44 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v45, v46, v47, v48, v49, v50, v51, v52, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
        }
      }

      v53 = *(v6 + 536);
      if (!v53)
      {
        goto LABEL_50;
      }

      if (v53 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 512);
LABEL_50:
        if (*(v6 + 560))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v16 || v54 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v55, v56, v57, v58, v59, v60, v61, v62, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
        }
      }

      v63 = *(v6 + 992);
      if (!v63)
      {
        goto LABEL_60;
      }

      if (v63 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 968);
LABEL_60:
        if (*(v6 + 1016))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v16 || v64 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v65, v66, v67, v68, v69, v70, v71, v72, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
        }
      }

      v73 = *(v6 + 1448);
      if (!v73)
      {
        goto LABEL_70;
      }

      if (v73 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 1424);
LABEL_70:
        if (*(v6 + 1472))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v16 || v74 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v75, v76, v77, v78, v79, v80, v81, v82, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
        }
      }

      v83 = *(v6 + 1904);
      if (!v83)
      {
        goto LABEL_80;
      }

      if (v83 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 1880);
LABEL_80:
        if (*(v6 + 1928))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v16 || v84 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v85, v86, v87, v88, v89, v90, v91, v92, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
        }
      }

      v93 = *(v6 + 2360);
      if (!v93)
      {
        goto LABEL_90;
      }

      if (v93 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 2336);
LABEL_90:
        if (*(v6 + 2384))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v16 || v94 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v95, v96, v97, v98, v99, v100, v101, v102, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
        }
      }

      v103 = *(v6 + 2816);
      if (!v103)
      {
        goto LABEL_100;
      }

      if (v103 != 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 2792);
LABEL_100:
        if (*(v6 + 2840))
        {
        }

        OUTLINED_FUNCTION_5_19();
        if (!v16 || v104 >= 0x100)
        {
          OUTLINED_FUNCTION_0_20();
          sub_2703F4940(v105, v106, v107, v108, v109, v110, v111, v112, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
        }
      }

LABEL_108:
      v113 = type metadata accessor for DynamicPageModel(0);
      v114 = *(v113 + 36);
      v115 = sub_2705D6674();
      if (!OUTLINED_FUNCTION_5_42(v115))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v116 + 8))(v6 + v114, v1);
      }

      v117 = v6 + *(v113 + 40);
      v118 = type metadata accessor for DynamicPageUnderlay(0);
      if (__swift_getEnumTagSinglePayload(v117, 1, v118))
      {
        goto LABEL_139;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {

LABEL_143:

        goto LABEL_139;
      }

      v119 = sub_2705D6734();
      OUTLINED_FUNCTION_4_4();
      v121 = *(v120 + 8);
      v121(v117, v119);
      v122 = type metadata accessor for ResponsiveArtworkUnderlay(0);
      v121(v117 + v122[5], v119);

      if (*(v117 + v122[8] + 8) != 1)
      {
      }

      if (*(v117 + v122[9] + 8) != 1)
      {
        goto LABEL_143;
      }

LABEL_139:

      return swift_deallocObject();
    case 1u:
    case 3u:

      OUTLINED_FUNCTION_5_19();
      if (!v16 || v7 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v8, v9, v10, v11, v12, v13, v14, v15, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      }

      v16 = *(v6 + 408) >> 8 == 0xFFFFFFFFLL && (*(v6 + 496) & 0x1FFFFFFFFFFFFF00) == 0;
      if (!v16)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v17, v18, v19, v20, v21, v22, v23, v24, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      }

      if (*(v6 + 728))
      {
      }

      if (*(v6 + 760))
      {
      }

      goto LABEL_20;
    case 2u:

      OUTLINED_FUNCTION_5_19();
      if (!v16 || v123 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v124, v125, v126, v127, v128, v129, v130, v131, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      }

      if (*(v6 + 368))
      {
      }

      if (*(v6 + 400))
      {
      }

      if (*(v6 + 472) >> 8 != 0xFFFFFFFFLL || (*(v6 + 560) & 0x1FFFFFFFFFFFFF00) != 0)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4D28(v133, v134, v135, v136, v137, v138, v139, v140, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      }

      if (!*(v6 + 816))
      {
        goto LABEL_139;
      }

      v141 = *(v6 + 800);
      if (v141 != 255)
      {
        sub_2703AE630(*(v6 + 784), *(v6 + 792), v141);
      }

      v142 = *(v6 + 856);
      if (v142 != 255)
      {
        sub_2703AE630(*(v6 + 840), *(v6 + 848), v142);
      }

      if (!*(v6 + 872))
      {
        goto LABEL_139;
      }

LABEL_20:

      goto LABEL_139;
    case 4u:

      OUTLINED_FUNCTION_5_19();
      if (!v16 || v29 >= 0x100)
      {
        OUTLINED_FUNCTION_0_20();
        sub_2703F4940(v30, v31, v32, v33, v34, v35, v36, v37, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      }

      v38 = *(v6 + 536);
      if (v38 != 255)
      {
        sub_2703AE630(*(v6 + 520), *(v6 + 528), v38);
      }

      if (*(v6 + 568) != 254)
      {

        v39 = *(v6 + 568);
        if (v39 != 255)
        {
          sub_2703AE630(*(v6 + 552), *(v6 + 560), v39);
        }
      }

      if (*(v6 + 584))
      {
      }

      if (*(v6 + 616))
      {
      }

      v40 = *(v6 + 656);
      if (v40 == 255)
      {
        goto LABEL_139;
      }

      v41 = *(v6 + 640);
      v42 = *(v6 + 648);
      goto LABEL_138;
    case 5u:
    case 7u:

      v25 = *(v6 + 32);
      if (v25 != 255)
      {
        sub_2703AE630(*(v6 + 16), *(v6 + 24), v25);
      }

      v26 = *(type metadata accessor for JSServiceRequestIntent() + 24);
      v27 = sub_2705D4484();
      if (!OUTLINED_FUNCTION_5_42(v27))
      {
        OUTLINED_FUNCTION_4_4();
        (*(v28 + 8))(v6 + v26, v1);
      }

      goto LABEL_20;
    case 6u:

      v40 = *(v6 + 32);
      if (v40 == 255)
      {
        goto LABEL_139;
      }

      v41 = *(v6 + 16);
      v42 = *(v6 + 24);
LABEL_138:
      sub_2703AE630(v41, v42, v40);
      goto LABEL_139;
    default:
      goto LABEL_139;
  }
}

uint64_t sub_27049E970()
{
  v1 = type metadata accessor for MessageEmbeddedView();
  OUTLINED_FUNCTION_23_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_27049D85C(v3);
}

unint64_t sub_27049E9CC()
{
  result = qword_2807D3FD0;
  if (!qword_2807D3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3FD0);
  }

  return result;
}

unint64_t sub_27049EA24()
{
  result = qword_2807D3FD8;
  if (!qword_2807D3FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3FC8);
    sub_27049EAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3FD8);
  }

  return result;
}

unint64_t sub_27049EAB0()
{
  result = qword_2807D3FE0;
  if (!qword_2807D3FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D3FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3FE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_42(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t MessageEventBox.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  *a2 = (*(v5 + 16))(v4, v5);
  *(a2 + 8) = v6;
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(*(v7 + 8) + 8))(&v11, v8);
  v9 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v9;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MessageEventBox.eventId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MessageEventBox.eventId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MessageEventBox.object.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_2703AE9FC(v2, v3, v4);
}

uint64_t MessageEventBox.object.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AE630(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_27049ECF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_27049EDBC(char a1)
{
  if (a1)
  {
    return 0x7463656A626FLL;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_27049EDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27049ECF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27049EE20(uint64_t a1)
{
  v2 = sub_27049F03C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27049EE5C(uint64_t a1)
{
  v2 = sub_27049F03C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageEventBox.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3FF0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v9;
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27049F03C();
  sub_2705D84C4();
  LOBYTE(v15) = 0;
  v10 = v14;
  sub_2705D8034();
  if (!v10)
  {
    v15 = v13;
    v16 = v12;
    v17 = v18;
    v19 = 1;
    sub_2703AE9FC(v13, v12, v18);
    sub_2703C39C4();
    sub_2705D8084();
    sub_2703AE630(v15, v16, v17);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_27049F03C()
{
  result = qword_2807D3FF8;
  if (!qword_2807D3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D3FF8);
  }

  return result;
}

uint64_t MessageEventBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4000);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27049F03C();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12) = 0;
  v6 = sub_2705D7F54();
  v8 = v7;
  sub_2703C3FAC();
  sub_2705D7FA4();
  v9 = OUTLINED_FUNCTION_2_12();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  sub_2703AE9FC(v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2703AE630(v12, v13, v14);
}

_BYTE *storeEnumTagSinglePayload for MessageEventBox.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27049F3C4);
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

unint64_t sub_27049F400()
{
  result = qword_2807D4008;
  if (!qword_2807D4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4008);
  }

  return result;
}

unint64_t sub_27049F458()
{
  result = qword_2807D4010;
  if (!qword_2807D4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4010);
  }

  return result;
}

unint64_t sub_27049F4B0()
{
  result = qword_2807D4018;
  if (!qword_2807D4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4018);
  }

  return result;
}

uint64_t MessageItemRequest.customerEngagementId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MessageItemRequest.customerEngagementId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MessageItemRequest.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 56);
  *(a1 + 40) = v6;

  return sub_2703B4984(v4, v5, v6);
}

__n128 MessageItemRequest.placement.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  sub_2703AF9AC(v7, v8, v9);
  *(v1 + 16) = v3;
  result = *(a1 + 1);
  *(v1 + 24) = result;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  return result;
}

uint64_t MessageItemRequest.entryPointMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_27049F6B4(v2, v3);
}

uint64_t sub_27049F6B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 MessageItemRequest.entryPointMetadata.setter(uint64_t a1)
{
  sub_27049F730(*(v1 + 64), *(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v4;
  return result;
}

uint64_t sub_27049F730(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t MessageItemRequest.languageOverride.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MessageItemRequest.languageOverride.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

__n128 MessageItemRequest.init(customerEngagementId:placement:entryPointMetadata:languageOverride:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = *(a3 + 40);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v11;
  *(a7 + 24) = *(a3 + 1);
  *(a7 + 40) = *(a3 + 3);
  *(a7 + 56) = v12;
  v13 = OUTLINED_FUNCTION_3_43();
  sub_27049F730(v13, v14);
  result = *a4;
  v16 = *(a4 + 16);
  *(a7 + 64) = *a4;
  *(a7 + 80) = v16;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  return result;
}

BOOL sub_27049F88C()
{
  v0 = sub_2705D7EB4();

  return v0 != 0;
}

BOOL sub_27049F8F0()
{
  v0 = sub_2705D7EB4();

  return v0 != 0;
}

BOOL sub_27049F960@<W0>(_BYTE *a1@<X8>)
{
  result = sub_27049F88C();
  *a1 = result;
  return result;
}

unint64_t sub_27049F994@<X0>(unint64_t *a1@<X8>)
{
  result = sub_27049F8D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_27049F9C0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_27049F88C();
  *a1 = result;
  return result;
}

uint64_t sub_27049F9EC(uint64_t a1)
{
  v2 = sub_2704A14C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27049FA28(uint64_t a1)
{
  v2 = sub_2704A14C0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_27049FA70@<W0>(_BYTE *a1@<X8>)
{
  result = sub_27049F8F0();
  *a1 = result;
  return result;
}

unint64_t sub_27049FAA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_27049F938();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_27049FAD0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_27049F8F0();
  *a1 = result;
  return result;
}

uint64_t sub_27049FAFC(uint64_t a1)
{
  v2 = sub_2704A1514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27049FB38(uint64_t a1)
{
  v2 = sub_2704A1514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27049FB74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98);
  OUTLINED_FUNCTION_0();
  v59 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v52 = &v44 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4078);
  OUTLINED_FUNCTION_0();
  v53 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4080);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  LOBYTE(v54) = 1;
  result = sub_2705D7F54();
  if (!v2)
  {
    v49 = v17;
    v50 = a1;
    v47 = v11;
    v48 = 0;
    v20 = v4;
    v21 = v59;
    v45 = v14;
    v46 = v12;
    if (result == 0xD000000000000014 && 0x80000002706149A0 == v19)
    {

      v24 = v20;
    }

    else
    {
      v23 = sub_2705D8134();

      v24 = v20;
      if ((v23 & 1) == 0)
      {
        v25 = sub_2705D7D84();
        swift_allocError();
        v27 = v26;
        sub_2705D7EE4();
        sub_2705D7D44();
        (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84168], v25);
        return swift_willThrow();
      }
    }

    LOBYTE(v54) = 2;
    sub_2704A14C0();
    v28 = v48;
    result = sub_2705D7ED4();
    if (!v28)
    {
      LOBYTE(v54) = 3;
      sub_2704A1514();
      sub_2705D7ED4();
      v29 = sub_2705D7F54();
      v30 = v45;
      v32 = v31;
      v59 = v29;
      v33 = v52;
      sub_2704DEEAC();
      sub_2704AB920();
      v34 = v46;
      (*(v21 + 8))(v33, v24);
      v35 = OUTLINED_FUNCTION_6_35();
      v36(v35);
      (*(v30 + 8))(v49, v34);
      v37 = v54;
      v38 = v56;
      v39 = v57;
      v40 = v58;
      v41 = OUTLINED_FUNCTION_3_43();
      result = sub_27049F730(v41, v42);
      v43 = v51;
      *v51 = v59;
      v43[1] = v32;
      v43[2] = v37;
      *(v43 + 3) = v55;
      v43[5] = v38;
      v43[6] = v39;
      *(v43 + 56) = v40;
      *(v43 + 4) = xmmword_2705E1BF0;
      *(v43 + 5) = 0u;
      *(v43 + 6) = 0u;
    }
  }

  return result;
}

uint64_t static MessageItemRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v64 = *(a1 + 64);
  v63 = *(a1 + 72);
  v65 = *(a1 + 80);
  v66 = *(a1 + 88);
  v56 = *(a1 + 96);
  v58 = *(a1 + 104);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v59 = *(a2 + 72);
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v62 = *(a2 + 88);
  v14 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v55 = *(a2 + 96);
  v57 = *(a2 + 104);
  if (!v14)
  {
    v52 = *(a1 + 32);
    v53 = *(a2 + 24);
    v15 = *(a2 + 32);
    v16 = *(a2 + 40);
    v17 = *(a1 + 56);
    v18 = *(a1 + 48);
    v19 = *(a1 + 40);
    v20 = *(a2 + 48);
    v21 = *(a2 + 56);
    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    v24 = sub_2705D8134();
    v3 = v23;
    v2 = v22;
    v13 = v21;
    v12 = v20;
    v5 = v19;
    v6 = v18;
    v7 = v17;
    v11 = v16;
    v10 = v15;
    v4 = v52;
    v8 = v53;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v73 = v2;
  v74 = v3;
  v75 = v4;
  v76 = v5;
  v77 = v6;
  v78 = v7;
  v67 = v9;
  v68 = v8;
  v69 = v10;
  v70 = v11;
  v71 = v12;
  v72 = v13;

  sub_2703B4984(v5, v6, v7);

  sub_2703B4984(v11, v12, v13);
  v25 = static MessagePlacement.== infix(_:_:)(&v73, &v67);
  v26 = v70;
  v27 = v71;
  v28 = v72;

  sub_2703AF9AC(v26, v27, v28);
  v29 = v76;
  v30 = v77;
  v31 = v78;

  sub_2703AF9AC(v29, v30, v31);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  if (v63 != 1)
  {
    v73 = v64;
    v74 = v63;
    v75 = v65;
    v76 = v66;
    if (v59 != 1)
    {
      v67 = v60;
      v68 = v59;
      v69 = v61;
      v70 = v62;
      v54 = static EntryPointMetadata.== infix(_:_:)(&v73, &v67);
      v43 = OUTLINED_FUNCTION_0_45();
      sub_27049F6B4(v43, v44);
      v45 = OUTLINED_FUNCTION_5_43();
      sub_27049F6B4(v45, v46);
      v47 = OUTLINED_FUNCTION_0_45();
      sub_27049F6B4(v47, v48);

      v49 = OUTLINED_FUNCTION_0_45();
      sub_27049F730(v49, v50);
      if ((v54 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    v32 = OUTLINED_FUNCTION_0_45();
    sub_27049F6B4(v32, v33);
    OUTLINED_FUNCTION_10_25();
    v34 = OUTLINED_FUNCTION_0_45();
    sub_27049F6B4(v34, v35);

LABEL_13:
    v38 = OUTLINED_FUNCTION_0_45();
    sub_27049F730(v38, v39);
    v40 = OUTLINED_FUNCTION_5_43();
    sub_27049F730(v40, v41);
    return 0;
  }

  sub_27049F6B4(v64, 1);
  if (v59 != 1)
  {
    v36 = OUTLINED_FUNCTION_5_43();
    sub_27049F6B4(v36, v37);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_10_25();
  sub_27049F730(v64, 1);
LABEL_17:
  if (v58)
  {
    if (v57)
    {
      v51 = v56 == v55 && v58 == v57;
      if (v51 || (sub_2705D8134() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v57)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2704A03BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000270612DC0 == a2;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000270614960 == a2;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x8000000270614980 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2704A0528(char a1)
{
  result = 0x6E656D6563616C70;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_2704A05DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704A03BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704A0604(uint64_t a1)
{
  v2 = sub_2704A08F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704A0640(uint64_t a1)
{
  v2 = sub_2704A08F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageItemRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4020);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = *(v1 + 24);
  v30 = *(v1 + 16);
  v31 = v9;
  v10 = *(v1 + 32);
  v34 = *(v1 + 40);
  v11 = *(v1 + 48);
  v32 = v10;
  v33 = v11;
  v42 = *(v1 + 56);
  v12 = *(v1 + 64);
  v28 = *(v1 + 72);
  v29 = v12;
  v13 = *(v1 + 80);
  v26 = *(v1 + 88);
  v27 = v13;
  v14 = *(v1 + 96);
  v25[0] = *(v1 + 104);
  v25[1] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704A08F0();
  v15 = v3;
  sub_2705D84C4();
  LOBYTE(v36) = 0;
  v16 = v35;
  sub_2705D8034();
  if (!v16)
  {
    v17 = v29;
    v36 = v30;
    v37 = v31;
    v18 = v33;
    v19 = v34;
    v38 = v32;
    v39 = v34;
    v40 = v33;
    v20 = v42;
    v41 = v42;
    v43 = 1;

    sub_2703B4984(v19, v18, v20);
    sub_2704A0944();
    OUTLINED_FUNCTION_7_27();
    sub_2705D8084();
    v21 = v39;
    v22 = v40;
    v23 = v41;

    sub_2703AF9AC(v21, v22, v23);
    if (!v19)
    {
      v36 = v17;
      v37 = v28;
      v38 = v27;
      v39 = v26;
      v43 = 2;
      sub_27049F6B4(v17, v28);
      sub_2704A0998();
      OUTLINED_FUNCTION_7_27();
      sub_2705D8024();
      sub_27049F730(v36, v37);
      LOBYTE(v36) = 3;
      sub_2705D7FF4();
    }
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_2704A08F0()
{
  result = qword_2807D4028;
  if (!qword_2807D4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4028);
  }

  return result;
}

unint64_t sub_2704A0944()
{
  result = qword_2807D4030;
  if (!qword_2807D4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4030);
  }

  return result;
}

unint64_t sub_2704A0998()
{
  result = qword_2807D4038;
  if (!qword_2807D4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4038);
  }

  return result;
}

uint64_t MessageItemRequest.hash(into:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_2705D7634();
  sub_2705D7634();
  sub_270464040();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x2743A47E0](0);
      goto LABEL_7;
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x2743A47E0](v4);
  sub_2705D7634();
LABEL_7:
  if (v2 == 1)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_11_26();
  if (v2)
  {
    OUTLINED_FUNCTION_11_26();
    sub_2705D7634();
  }

  else
  {
    sub_2705D83D4();
  }

  if (!v6)
  {
LABEL_14:
    sub_2705D83D4();
    if (!v3)
    {
      return sub_2705D83D4();
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    sub_2705D7634();
    if (!v3)
    {
      return sub_2705D83D4();
    }
  }

  OUTLINED_FUNCTION_11_26();

  return sub_2705D7634();
}

uint64_t MessageItemRequest.hashValue.getter()
{
  sub_2705D83B4();
  MessageItemRequest.hash(into:)();
  return sub_2705D8414();
}

uint64_t MessageItemRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4040);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = a1[3];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2704A08F0();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_2_40();
    return sub_27049F730(v12, v11);
  }

  else
  {
    LOBYTE(v40) = 0;
    v13 = sub_2705D7F54();
    v38 = v14;
    LOBYTE(__src[0]) = 1;
    sub_2704A1058();
    OUTLINED_FUNCTION_9_29();
    sub_2705D7FA4();
    v15 = v40;
    v37 = v41;
    v36 = v42;
    v35 = v43;
    v34 = v44;
    v54 = v45;
    LOBYTE(__src[0]) = 2;
    sub_2704A10AC();
    OUTLINED_FUNCTION_9_29();
    v33 = 0;
    sub_2705D7F44();
    v30 = v15;
    v31 = v13;
    v29 = a2;
    v16 = v41;
    v32 = v40;
    v17 = v42;
    v18 = v43;
    v19 = OUTLINED_FUNCTION_3_43();
    sub_27049F730(v19, v20);
    v55 = 3;
    v21 = sub_2705D7F04();
    v22 = v10;
    v24 = v23;
    (*(v7 + 8))(v22, v5);
    __src[0] = v31;
    __src[1] = v38;
    __src[2] = v30;
    __src[3] = v37;
    __src[4] = v36;
    __src[5] = v35;
    v25 = v34;
    __src[6] = v34;
    v26 = v54;
    LOBYTE(__src[7]) = v54;
    __src[8] = v32;
    __src[9] = v16;
    __src[10] = v17;
    __src[11] = v18;
    __src[12] = v21;
    __src[13] = v24;
    memcpy(v29, __src, 0x70uLL);
    sub_2704A1100(__src, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = v31;
    v41 = v38;
    v42 = v30;
    v43 = v37;
    v44 = v36;
    v45 = v35;
    v46 = v25;
    v47 = v26;
    v48 = v32;
    v49 = v16;
    v50 = v17;
    v51 = v18;
    v52 = v21;
    v53 = v24;
    return sub_2704A1138(&v40);
  }
}

uint64_t sub_2704A0FEC()
{
  sub_2705D83B4();
  MessageItemRequest.hash(into:)();
  return sub_2705D8414();
}

unint64_t sub_2704A1058()
{
  result = qword_2807D4048;
  if (!qword_2807D4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4048);
  }

  return result;
}

unint64_t sub_2704A10AC()
{
  result = qword_2807D4050;
  if (!qword_2807D4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4050);
  }

  return result;
}

unint64_t sub_2704A116C()
{
  result = qword_2807D4058;
  if (!qword_2807D4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4058);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit16MessagePlacementV4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit18EntryPointMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2704A1208(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2704A1248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageItemRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2704A1380);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704A13BC()
{
  result = qword_2807D4060;
  if (!qword_2807D4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4060);
  }

  return result;
}

unint64_t sub_2704A1414()
{
  result = qword_2807D4068;
  if (!qword_2807D4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4068);
  }

  return result;
}

unint64_t sub_2704A146C()
{
  result = qword_2807D4070;
  if (!qword_2807D4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4070);
  }

  return result;
}

unint64_t sub_2704A14C0()
{
  result = qword_2807D4088;
  if (!qword_2807D4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4088);
  }

  return result;
}

unint64_t sub_2704A1514()
{
  result = qword_2807D4090;
  if (!qword_2807D4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4090);
  }

  return result;
}

_BYTE *sub_2704A157C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2704A1618);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2704A1654()
{
  result = qword_2807D4098;
  if (!qword_2807D4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4098);
  }

  return result;
}

unint64_t sub_2704A16AC()
{
  result = qword_2807D40A0;
  if (!qword_2807D40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40A0);
  }

  return result;
}

unint64_t sub_2704A1704()
{
  result = qword_2807D40A8;
  if (!qword_2807D40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40A8);
  }

  return result;
}

unint64_t sub_2704A175C()
{
  result = qword_2807D40B0;
  if (!qword_2807D40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40B0);
  }

  return result;
}

unint64_t sub_2704A17B4()
{
  result = qword_2807D40B8;
  if (!qword_2807D40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40B8);
  }

  return result;
}

unint64_t sub_2704A180C()
{
  result = qword_2807D40C0;
  if (!qword_2807D40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return sub_27049F6B4(v0, 1);
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return sub_2705D83D4();
}

UnifiedMessagingKit::MediaAPIUtilities::MediaAPIPlatform_optional __swiftcall MediaAPIUtilities.MediaAPIPlatform.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_2_41();
  v2 = sub_2705D7EB4();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t MediaAPIUtilities.MediaAPIPlatform.rawValue.getter()
{
  result = 6513005;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_3_44(28777);
      break;
    case 2:
      result = 1684107369;
      break;
    case 3:
      result = 0x7674656C707061;
      break;
    case 4:
      result = OUTLINED_FUNCTION_1_47(0x6572u);
      break;
    case 5:
      result = OUTLINED_FUNCTION_4_37(24951);
      break;
    case 6:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704A1A7C@<X0>(uint64_t *a1@<X8>)
{
  result = MediaAPIUtilities.MediaAPIPlatform.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

UnifiedMessagingKit::MediaAPIUtilities::MessagePlatform_optional __swiftcall MediaAPIUtilities.MessagePlatform.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_2_41();
  v2 = sub_2705D7EB4();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t MediaAPIUtilities.MessagePlatform.rawValue.getter()
{
  result = 0x706F746B736544;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_3_44(28745);
      break;
    case 2:
      result = 1684107337;
      break;
    case 3:
      result = 0x7654656C707041;
      break;
    case 4:
      result = OUTLINED_FUNCTION_1_47(0x6552u);
      break;
    case 5:
      result = OUTLINED_FUNCTION_4_37(24919);
      break;
    case 6:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704A1BE4@<X0>(uint64_t *a1@<X8>)
{
  result = MediaAPIUtilities.MessagePlatform.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

UnifiedMessagingKit::MediaAPIUtilities::MessageOperatingSystem_optional __swiftcall MediaAPIUtilities.MessageOperatingSystem.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_2_41();
  v2 = sub_2705D7EB4();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t MediaAPIUtilities.MessageOperatingSystem.rawValue.getter()
{
  result = 5459785;
  switch(*v0)
  {
    case 1:
      result = 0x534F64615049;
      break;
    case 2:
      result = 0x534F63614DLL;
      break;
    case 3:
      result = 0x4F7654656C707041;
      break;
    case 4:
      result = 0x534F6E6F69736956;
      break;
    case 5:
      result = 0x534F6863746157;
      break;
    case 6:
      result = 0x6E776F6E6B6E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704A1D68@<X0>(uint64_t *a1@<X8>)
{
  result = MediaAPIUtilities.MessageOperatingSystem.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2704A1D94(char *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
}

unint64_t sub_2704A1E2C()
{
  result = qword_2807D40C8;
  if (!qword_2807D40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40C8);
  }

  return result;
}

unint64_t sub_2704A1E84()
{
  result = qword_2807D40D0;
  if (!qword_2807D40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40D0);
  }

  return result;
}

unint64_t sub_2704A1EDC()
{
  result = qword_2807D40D8;
  if (!qword_2807D40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaAPIUtilities(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2704A1FCCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_2704A2020(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x2704A20ECLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2704A2174(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2704A2208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704A2174(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2704A2234(uint64_t a1)
{
  v2 = sub_2704A2434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704A2270(uint64_t a1)
{
  v2 = sub_2704A2434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageItemRequestModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D40E0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7 - 8];
  memcpy(__dst, v1, 0x70uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704A1100(__dst, v12);
  sub_2704A2434();
  sub_2705D84C4();
  memcpy(v12, __dst, sizeof(v12));
  sub_2704A2488();
  sub_2705D8084();
  memcpy(v11, v12, sizeof(v11));
  sub_2704A1138(v11);
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_2704A2434()
{
  result = qword_2807D40E8;
  if (!qword_2807D40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40E8);
  }

  return result;
}

unint64_t sub_2704A2488()
{
  result = qword_2807D40F0;
  if (!qword_2807D40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D40F0);
  }

  return result;
}

uint64_t MessageItemRequestModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D40F8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &__src[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704A2434();
  sub_2705D8484();
  if (!v2)
  {
    sub_2704A2648();
    sub_2705D7FA4();
    (*(v7 + 8))(v10, v5);
    memcpy(a2, __src, 0x70uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2704A2648()
{
  result = qword_2807D4100;
  if (!qword_2807D4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageItemRequestModel.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2704A2778);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2704A27B4()
{
  result = qword_2807D4108;
  if (!qword_2807D4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4108);
  }

  return result;
}

unint64_t sub_2704A280C()
{
  result = qword_2807D4110;
  if (!qword_2807D4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4110);
  }

  return result;
}

unint64_t sub_2704A2864()
{
  result = qword_2807D4118;
  if (!qword_2807D4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4118);
  }

  return result;
}

uint64_t OfferSnippet.additionalMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_2703AE9E8(v2, v3, v4);
}

uint64_t OfferSnippet.additionalMetrics.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AE980(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t OfferSnippet.buttonModel.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x80uLL);
  memcpy(a1, (v1 + 24), 0x80uLL);
  return sub_2704A2980(__dst, v4);
}

void *OfferSnippet.buttonModel.setter(const void *a1)
{
  memcpy(v4, (v1 + 24), sizeof(v4));
  sub_2704A2A2C(v4);
  return memcpy((v1 + 24), a1, 0x80uLL);
}

uint64_t sub_2704A2AA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000270613430 == a2;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4D6E6F74747562 && a2 == 0xEB000000006C6564)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2704A2B74(char a1)
{
  if (a1)
  {
    return 0x6F4D6E6F74747562;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2704A2BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704A2AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704A2BE8(uint64_t a1)
{
  v2 = sub_2704A2E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704A2C24(uint64_t a1)
{
  v2 = sub_2704A2E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfferSnippet.encode(to:)(void *a1)
{
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4120);
  OUTLINED_FUNCTION_0();
  v15 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  memcpy(__dst, (v1 + 24), 0x80uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703AE9E8(v7, v8, v9);
  sub_2704A2E7C();
  v10 = v14[0];
  sub_2705D84C4();
  v17[0] = v7;
  v17[1] = v8;
  LOBYTE(v17[2]) = v9;
  v16[0] = 0;
  sub_2703C39C4();
  v11 = v14[1];
  sub_2705D8024();
  sub_2703AE980(v17[0], v17[1], v17[2]);
  if (v11)
  {
    return (*(v15 + 8))(v6, v10);
  }

  memcpy(v17, __dst, sizeof(v17));
  __dst[151] = 1;
  sub_2704A2980(__dst, v16);
  sub_2704A2ED0();
  sub_2705D8084();
  v13 = (v15 + 8);
  memcpy(v16, v17, sizeof(v16));
  sub_2704A2A2C(v16);
  return (*v13)(v6, v10);
}

unint64_t sub_2704A2E7C()
{
  result = qword_2807D4128;
  if (!qword_2807D4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4128);
  }

  return result;
}

unint64_t sub_2704A2ED0()
{
  result = qword_2807D4130;
  if (!qword_2807D4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4130);
  }

  return result;
}

uint64_t OfferSnippet.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4138);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704A2E7C();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2703AE980(0, 0, 255);
  }

  else
  {
    sub_2703C3FAC();
    OUTLINED_FUNCTION_2_42();
    sub_2705D7F44();
    v5 = v13;
    v6 = v14;
    v7 = v15;
    sub_2703AE980(0, 0, 255);
    __src[159] = 1;
    sub_2704A3180();
    OUTLINED_FUNCTION_2_42();
    sub_2705D7FA4();
    v8 = OUTLINED_FUNCTION_0_46();
    v9(v8);
    memcpy(&__src[7], v17, 0x80uLL);
    v12[0] = v13;
    v12[1] = v14;
    LOBYTE(v12[2]) = v15;
    memcpy(&v12[2] + 1, __src, 0x87uLL);
    memcpy(a2, v12, 0x98uLL);
    sub_2704A31D4(v12, &v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v13 = v5;
    v14 = v6;
    v15 = v7;
    memcpy(v16, __src, sizeof(v16));
    return sub_2704A320C(&v13);
  }
}

unint64_t sub_2704A3180()
{
  result = qword_2807D4140;
  if (!qword_2807D4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4140);
  }

  return result;
}

uint64_t sub_2704A326C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2704A32AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferSnippet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704A33ECLL);
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

unint64_t sub_2704A3428()
{
  result = qword_2807D4148;
  if (!qword_2807D4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4148);
  }

  return result;
}

unint64_t sub_2704A3480()
{
  result = qword_2807D4150;
  if (!qword_2807D4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4150);
  }

  return result;
}

unint64_t sub_2704A34D8()
{
  result = qword_2807D4158;
  if (!qword_2807D4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4158);
  }

  return result;
}

uint64_t sub_2704A3568(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D47F0);
  OUTLINED_FUNCTION_46_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4160);
  OUTLINED_FUNCTION_46_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);
  OUTLINED_FUNCTION_46_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_2704A36CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D47F0);
  OUTLINED_FUNCTION_46_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4160);
    OUTLINED_FUNCTION_46_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);
      OUTLINED_FUNCTION_46_0();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for MessageModalView()
{
  result = qword_2807D4168;
  if (!qword_2807D4168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2704A3864()
{
  sub_2704A39F4(319, &qword_2807D4810, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2704A3990();
    if (v1 <= 0x3F)
    {
      sub_2704A39F4(319, &qword_2807D3FA0, MEMORY[0x277D7EAC8], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2703BD854();
        if (v3 <= 0x3F)
        {
          sub_2704A3A58();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2704A3990()
{
  if (!qword_2807D4178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2140);
    v0 = sub_2705D5E84();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D4178);
    }
  }
}

void sub_2704A39F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2704A3A58()
{
  if (!qword_2807D4850)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D4850);
    }
  }
}

uint64_t sub_2704A3AC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2705D5254();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_2703C2E9C(v2, &v15 - v10, &qword_2807D24E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4E94();
    OUTLINED_FUNCTION_14();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    sub_2705D7A84();
    v14 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void *sub_2704A3CA8@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = sub_2705D55C4();
  v3 = OUTLINED_FUNCTION_1_25(v2, &v105);
  v99 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_51(v6 - v5);
  v7 = sub_2705D46D4();
  v8 = OUTLINED_FUNCTION_1_25(v7, &v104);
  v92 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_51(v11 - v10);
  v12 = type metadata accessor for MessageModalView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v87 - v17;
  v19 = sub_2705D46F4();
  v20 = OUTLINED_FUNCTION_23_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v87[4] = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4180);
  OUTLINED_FUNCTION_1_25(v23, &v102);
  v88 = v24;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_51(v87 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4188);
  OUTLINED_FUNCTION_1_25(v27, &v103);
  v90 = v28;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_51(v87 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4190);
  OUTLINED_FUNCTION_1_25(v31, &v106);
  v96 = v32;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  v100 = v87 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);
  sub_2705D5E54();
  sub_2704A7760(v1, v18, type metadata accessor for MessageModalView);
  v35 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v36 = swift_allocObject();
  sub_2704A6C90(v18, v36 + v35);
  sub_2704A7760(v1, v16, type metadata accessor for MessageModalView);
  v37 = swift_allocObject();
  sub_2704A6C90(v16, v37 + v35);
  v87[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4198);
  v87[2] = sub_2705D46A4();
  v87[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D41A0);
  sub_2704A6E04();
  sub_2704A74F4(&qword_2807D3FB8, MEMORY[0x277D7EAA0]);
  v38 = sub_2705D4684();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4228);
  v40 = sub_2704A74F4(&qword_2807D3FC0, MEMORY[0x277D7EA90]);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4230);
  v42 = sub_2703AFBC8(&qword_2807D4238, &qword_2807D4230);
  __src[0] = v41;
  __src[1] = v42;
  v43 = OUTLINED_FUNCTION_9_30();
  __src[0] = v38;
  __src[1] = v39;
  __src[2] = v40;
  __src[3] = v43;
  OUTLINED_FUNCTION_9_30();
  v44 = v87[5];
  sub_2705D46B4();
  v45 = v92;
  v46 = v91;
  v47 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277D7EAC0], v93);
  v48 = sub_2703AFBC8(&qword_2807D4240, &qword_2807D4180);
  v49 = v87[6];
  v50 = v87[7];
  sub_2705D59D4();
  (*(v45 + 8))(v46, v47);
  (*(v88 + 8))(v44, v50);
  v51 = v94;
  sub_2705D5334();
  __src[0] = v50;
  __src[1] = v48;
  OUTLINED_FUNCTION_9_30();
  v52 = v89;
  v53 = v95;
  sub_2705D5B54();
  v99[1](v51, v53);
  (*(v90 + 8))(v49, v52);
  v54 = [objc_opt_self() currentDevice];
  v99 = [v54 userInterfaceIdiom];

  v55 = OUTLINED_FUNCTION_10_26();
  v56 = [v55 userInterfaceIdiom];

  v57 = OUTLINED_FUNCTION_10_26();
  v58 = [v57 userInterfaceIdiom];

  v59 = OUTLINED_FUNCTION_10_26();
  v60 = [v59 userInterfaceIdiom];

  v61 = OUTLINED_FUNCTION_10_26();
  v62 = [v61 userInterfaceIdiom];

  v63 = 0.0;
  if (v62 == 1)
  {
    v64 = [objc_opt_self() mainScreen];
    [v64 bounds];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;

    v107.origin.x = v66;
    v107.origin.y = v68;
    v107.size.width = v70;
    v107.size.height = v72;
    v63 = fmin(fmax(CGRectGetHeight(v107) + -88.0, 620.0), 820.0);
  }

  v73 = OUTLINED_FUNCTION_10_26();
  v74 = [v73 userInterfaceIdiom];

  sub_2705D60A4();
  v75 = 624.0;
  v76 = -INFINITY;
  if (v99 == 1)
  {
    v76 = 624.0;
  }

  if (v56 == 1)
  {
    v77 = 624.0;
  }

  else
  {
    v77 = v76;
  }

  if (v58 != 1)
  {
    v75 = v77;
  }

  if (v76 > v77 || v77 > v75)
  {
    goto LABEL_25;
  }

  v79 = 620.0;
  if (v60 != 1)
  {
    v79 = -INFINITY;
  }

  v80 = v63;
  if (v62 != 1)
  {
    v80 = v79;
  }

  v81 = 820.0;
  if (v74 != 1)
  {
    v81 = v80;
  }

  if (v79 > v80 || v80 > v81)
  {
LABEL_25:
    sub_2705D7A84();
    v83 = sub_2705D56A4();
    sub_2705D4C04();
  }

  sub_2705D5094();
  v84 = v98;
  (*(v96 + 32))(v98, v100, v97);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4248);
  return memcpy((v84 + *(v85 + 36)), __src, 0x70uLL);
}

uint64_t sub_2704A471C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2705D4684();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1;

  sub_2705D4674();
  v15 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4228);
  sub_2704A74F4(&qword_2807D3FC0, MEMORY[0x277D7EA90]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4230);
  v12 = sub_2703AFBC8(&qword_2807D4238, &qword_2807D4230);
  v16 = v11;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  sub_2705D5BD4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2704A491C(uint64_t a1)
{
  v2 = sub_2705D54F4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4230);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2705D54C4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1D8);
  sub_2703C2C40();
  sub_2705D4DD4();
  v7 = sub_2703AFBC8(&qword_2807D4238, &qword_2807D4230);
  MEMORY[0x2743A1950](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2704A4AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1C8);
  MEMORY[0x28223BE20](v21[0]);
  v4 = (v21 - v3);
  v5 = type metadata accessor for MessageModalView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_2705D4D24();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1D0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  sub_2705D4D04();
  sub_2704A7760(a1, v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageModalView);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_2704A6C90(v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  MEMORY[0x2743A22C0](v10, sub_2704A7990, v19);
  (*(v12 + 16))(v15, v17, v11);
  sub_2703AFBC8(&qword_2807CF230, &qword_2807CF1D0);
  *v4 = sub_2705D5F04();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF200);
  sub_2703AFBC8(&qword_2807CF210, &qword_2807CF200);
  sub_2705D5434();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_2704A4E38(uint64_t a1)
{
  v15 = sub_2705D5254();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_2705D4E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2703C2E9C(a1, v7, &qword_2807D24E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2705D7A84();
    v12 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_2705D4E84();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2704A50B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v104 = a2;
  v105 = a1;
  v102 = a3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4250);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = v73 - v3;
  v100 = sub_2705D6BD4();
  v99 = *(v100 - 8);
  v4 = MEMORY[0x28223BE20](v100);
  v94 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = v73 - v6;
  v101 = sub_2705D69B4();
  v93 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v92 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageModalView();
  v76 = *(v8 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v8);
  v103 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2120);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = v73 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D41D0);
  MEMORY[0x28223BE20](v79);
  v78 = v73 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D41C8);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v73 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D41C0);
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = v73 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D41B8);
  v86 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v85 = v73 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D41B0);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = v73 - v16;
  v17 = sub_2705D6524();
  MEMORY[0x28223BE20](v17 - 8);
  if (qword_2807CE838 != -1)
  {
    swift_once();
  }

  v18 = qword_28081C4F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2705E6EB0;
  __src[3] = v8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(__src);
  sub_2704A7760(v104, boxed_opaque_existential_1Tm, type metadata accessor for MessageModalView);
  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    v23 = sub_2705D7564();
    v75 = v18;
    v24 = v8;
    v25 = v9;
    v27 = v26;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v107 = DynamicType;
    sub_2705D64E4();
    sub_2703C1634(&v107, &unk_2807D4890);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    *&v107 = v23;
    *(&v107 + 1) = v27;
    v9 = v25;
    v8 = v24;
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(__src, __src[3]);
    v29 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v107 = v29;
  }

  sub_2705D64E4();
  sub_2703C1634(&v107, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(__src);
  sub_2705D64C4();
  sub_27047CF60(v19);

  v73[1] = *(v8 + 20);
  v73[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4160);
  v30 = v104;
  sub_2705D5E74();
  v75 = type metadata accessor for MessageModalView;
  v31 = v103;
  sub_2704A7760(v30, v103, type metadata accessor for MessageModalView);
  v32 = *(v76 + 80);
  v76 = ((v32 + 16) & ~v32) + v9;
  v74 = (v32 + 16) & ~v32;
  v33 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_2704A6C90(v31, v34 + ((v32 + 16) & ~v32));
  v35 = v105;
  *(v34 + v33) = v105;
  type metadata accessor for FlowAction(0);
  type metadata accessor for DestinationRootView(0);
  sub_2704A74F4(&qword_2807D2178, type metadata accessor for FlowAction);
  sub_2704A74F4(&qword_2807D2180, type metadata accessor for FlowAction);
  sub_2704A74F4(&qword_2807D3FB0, type metadata accessor for DestinationRootView);

  v36 = v78;
  sub_2705D48D4();

  sub_270419FCC(v37, __src);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D41E8);
  memcpy((v36 + *(v38 + 36)), __src, 0x80uLL);
  v39 = v79;
  v40 = v36 + *(v79 + 36);
  v41 = v104;
  sub_2705D5E74();
  v42 = type metadata accessor for FlowAuthorityActions();
  *(v40 + *(v42 + 20)) = v35;
  MEMORY[0x28223BE20](v42);
  v73[-2] = v41;
  v43 = sub_2705D6914();
  v44 = sub_2704A7060();

  v45 = v80;
  sub_2705D59A4();
  sub_2703C1634(v36, &qword_2807D41D0);
  v46 = v103;
  sub_2704A7760(v41, v103, v75);
  v47 = swift_allocObject();
  sub_2704A6C90(v46, v47 + v74);
  *&v107 = v39;
  *(&v107 + 1) = v43;
  v108 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_2704A7228();
  v50 = v83;
  v51 = v82;
  sub_2705D59E4();

  (*(v81 + 8))(v45, v51);
  v52 = type metadata accessor for JSStyleIntentModel();
  *&v107 = v51;
  *(&v107 + 1) = &type metadata for RoutedStyleIntentModel;
  v108 = OpaqueTypeConformance2;
  MetatypeMetadata = v49;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_2704A74F4(&qword_2807D3638, type metadata accessor for JSStyleIntentModel);
  v55 = v85;
  v56 = v87;
  sub_2705D59E4();
  (*(v84 + 8))(v50, v56);
  v57 = v92;
  v58 = v101;
  sub_2705D68B4();
  *&v107 = v56;
  *(&v107 + 1) = v52;
  v108 = v53;
  MetatypeMetadata = v54;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v88;
  v61 = v90;
  sub_2705D5964();
  (*(v93 + 8))(v57, v58);
  (*(v86 + 8))(v55, v61);
  v62 = v94;
  sub_2705D6BC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4FB0);
  sub_2705D68B4();
  v104 = v107;
  v106 = v107;
  v63 = v95;
  sub_2705D6BB4();
  v64 = v96;
  sub_2705D6BA4();
  (*(v97 + 8))(v63, v98);
  swift_unknownObjectRelease();
  v65 = *(v99 + 8);
  v66 = v100;
  v65(v62, v100);
  *&v107 = v61;
  *(&v107 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v67 = v102;
  v68 = v91;
  sub_2705D5984();
  v65(v64, v66);
  (*(v89 + 8))(v60, v68);
  KeyPath = swift_getKeyPath();
  v70 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4198) + 36));
  v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4220) + 28);
  sub_2705D68B4();
  result = __swift_storeEnumTagSinglePayload(v70 + v71, 0, 1, v58);
  *v70 = KeyPath;
  return result;
}

uint64_t sub_2704A6078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2705D6524();
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_2807CE838 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2705E10F0;
  v26 = type metadata accessor for MessageModalView();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v25);
  sub_2704A7760(a2, boxed_opaque_existential_1Tm, type metadata accessor for MessageModalView);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    v21 = sub_2705D7564();
    v22 = a1;
    v13 = a3;
    v14 = a4;
    v16 = v15;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v23[0] = DynamicType;
    sub_2705D64E4();
    sub_2703C1634(v23, &unk_2807D4890);
    sub_2705D6504();
    MetatypeMetadata = MEMORY[0x277D837D0];
    v23[0] = v21;
    v23[1] = v16;
    a4 = v14;
    a3 = v13;
    a1 = v22;
    sub_2705D64E4();
  }

  else
  {
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v18 = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v23[0] = v18;
    sub_2705D64E4();
  }

  sub_2703C1634(v23, &unk_2807D4890);
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_2705D64C4();
  v26 = type metadata accessor for FlowAction.Destination(0);
  v19 = __swift_allocate_boxed_opaque_existential_1Tm(v25);
  sub_2704A7760(a1, v19, type metadata accessor for FlowAction.Destination);
  sub_2705D6544();
  sub_2703C1634(v25, &unk_2807D4890);
  sub_27047CF60(v9);

  type metadata accessor for DestinationFactory();
  sub_2705D68B4();
  sub_2703F1298(a1, a3, a4);
}

uint64_t sub_2704A6448(uint64_t a1)
{
  v2 = type metadata accessor for MessageModalView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  sub_2704A7760(a1, v5, type metadata accessor for MessageModalView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_2704A6C90(v5, v14 + v13);
  sub_2705D6914();
  sub_2705D6A14();
  v20[0] = sub_2704A7748;
  v20[1] = v14;
  v15 = *(v7 + 16);
  v15(v12, v10, v6);
  sub_27041F428();
  sub_2705D69E4();
  v16 = *(v7 + 8);
  v16(v10, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2705DC030;
  v15((v18 + v17), v12, v6);
  sub_2703D3E64(v18);
  swift_setDeallocating();
  sub_2704890E4();
  return (v16)(v12, v6);
}

uint64_t sub_2704A6700(uint64_t a1)
{
  v2 = sub_2705D4E94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2704A3AC4(v5);
  sub_2705D4E84();
  (*(v3 + 8))(v5, v2);
  v6 = type metadata accessor for MessageModalView();
  return (*(a1 + *(v6 + 28)))();
}

uint64_t sub_2704A67F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a3;
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 80) = a4;
  *(v4 + 88) = v5;
  *(v4 + 96) = v6;
  *(v4 + 104) = *(a2 + 1);
  *(v4 + 49) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_2704A6830, 0, 0);
}

uint64_t sub_2704A6830()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v0 + 104);
  *(v0 + 48) = v1;
  *(v0 + 56) = *(v3 + *(type metadata accessor for MessageModalView() + 32));

  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_2704A6918;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  return sub_270513FB0(v5, v0 + 16, v6, (v0 + 56));
}

uint64_t sub_2704A6918()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2704A6A24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2704A6AD4;

  return sub_270470690();
}

uint64_t sub_2704A6AD4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2704A6BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4258);
  OUTLINED_FUNCTION_23_0(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_2703C2E9C(a1, &v7 - v4, &qword_2807D4258);
  return sub_270542618(v5);
}

uint64_t sub_2704A6C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageModalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2704A6CF4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MessageModalView();
  OUTLINED_FUNCTION_23_0(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_2704A471C(a1, a2, a3, v9);
}

uint64_t sub_2704A6D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MessageModalView();
  OUTLINED_FUNCTION_23_0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2704A50B4(a1, v7, a2);
}

unint64_t sub_2704A6E04()
{
  result = qword_2807D41A8;
  if (!qword_2807D41A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D41B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D41B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D41C0);
    type metadata accessor for JSStyleIntentModel();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D41C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D41D0);
    sub_2705D6914();
    sub_2704A7060();
    swift_getOpaqueTypeConformance2();
    sub_2704A7228();
    swift_getOpaqueTypeConformance2();
    sub_2704A74F4(&qword_2807D3638, type metadata accessor for JSStyleIntentModel);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2703AFBC8(&qword_2807D4218, &qword_2807D4220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D41A8);
  }

  return result;
}

unint64_t sub_2704A7060()
{
  result = qword_2807D41D8;
  if (!qword_2807D41D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D41D0);
    sub_2704A711C();
    sub_2704A74F4(&qword_2807D4208, type metadata accessor for FlowAuthorityActions);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D41D8);
  }

  return result;
}

unint64_t sub_2704A711C()
{
  result = qword_2807D41E0;
  if (!qword_2807D41E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D41E8);
    sub_2703AFBC8(&qword_2807D41F0, &qword_2807D41F8);
    sub_2704A71D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D41E0);
  }

  return result;
}

unint64_t sub_2704A71D4()
{
  result = qword_2807D4200;
  if (!qword_2807D4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4200);
  }

  return result;
}

unint64_t sub_2704A7228()
{
  result = qword_2807D4210;
  if (!qword_2807D4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4210);
  }

  return result;
}

uint64_t sub_2704A727C()
{
  type metadata accessor for MessageModalView();
  OUTLINED_FUNCTION_34_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4E94();
    OUTLINED_FUNCTION_11_1();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  v6 = v4 + *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2140);
  OUTLINED_FUNCTION_11_1();
  (*(v7 + 8))(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4160);
  OUTLINED_FUNCTION_12_23();
  v8 = v4 + *(v0 + 24);
  sub_2705D46F4();
  OUTLINED_FUNCTION_11_1();
  (*(v9 + 8))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);
  OUTLINED_FUNCTION_12_23();

  return swift_deallocObject();
}

uint64_t sub_2704A7448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MessageModalView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2704A6078(a1, v2 + v6, v7, a2);
}

uint64_t sub_2704A74F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2704A7544(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = type metadata accessor for MessageModalView();
  OUTLINED_FUNCTION_23_0(v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2704A7634;

  return sub_2704A67F4(a1, a2, a3, v3 + v10);
}

uint64_t sub_2704A7634()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2704A7760(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  type metadata accessor for MessageModalView();
  OUTLINED_FUNCTION_34_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4E94();
    OUTLINED_FUNCTION_11_1();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  v6 = v4 + *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2140);
  OUTLINED_FUNCTION_11_1();
  (*(v7 + 8))(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4160);
  OUTLINED_FUNCTION_12_23();
  v8 = v4 + *(v0 + 24);
  sub_2705D46F4();
  OUTLINED_FUNCTION_11_1();
  (*(v9 + 8))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3F88);
  OUTLINED_FUNCTION_12_23();

  return swift_deallocObject();
}

uint64_t sub_2704A79A8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for MessageModalView();
  OUTLINED_FUNCTION_23_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_2704A7A1C()
{
  result = qword_2807D4260;
  if (!qword_2807D4260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4188);
    sub_2705D55C4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4180);
    sub_2703AFBC8(&qword_2807D4240, &qword_2807D4180);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4260);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_30()
{

  return swift_getOpaqueTypeConformance2();
}

id OUTLINED_FUNCTION_10_26()
{

  return [v0 (v1 + 3986)];
}

uint64_t OUTLINED_FUNCTION_12_23()
{
}

uint64_t sub_2704A7BD0(uint64_t a1)
{
  v22 = a1;
  v2 = sub_2705D6524();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  v5 = *(v1 + 48);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return 0;
  }

  v20 = 0x8000000270614BA0;
  v7 = (v5 + 40);
  v19 = xmmword_2705E10F0;
  v24 = v4;
  while (1)
  {
    v9 = *(v7 - 1);
    v8 = *v7;

    sub_2705D4394();
    v11 = v10;
    v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);

    v23 = v9;
    v13 = sub_2704AACD8(v9, v8, 0);

    v14 = (v11 & 0x1000000000000000) != 0 ? sub_2705D76E4() : sub_2705D76F4();
    v15 = v14;
    v16 = sub_2705D7534();
    v17 = [v13 firstMatchInString:v16 options:0 range:{0, v15, v19, *(&v19 + 1), v20, v21, v22}];

    if (v17)
    {
      break;
    }

    v7 += 2;
    if (!--v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2704A8118(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x556B63617074656ALL && a2 == 0xEA00000000004C52;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x556B63617074656ALL && a2 == 0xEC00000050314C52;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736E726574746170 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2704A8274(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x556B63617074656ALL;
      break;
    case 3:
      result = 0x736E726574746170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704A82F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4308);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704AB224();
  sub_2705D84C4();
  v16 = 0;
  OUTLINED_FUNCTION_9_31();
  sub_2705D8034();
  if (!v2)
  {
    v15 = 1;
    OUTLINED_FUNCTION_9_31();
    sub_2705D8034();
    v14 = 2;
    OUTLINED_FUNCTION_9_31();
    sub_2705D7FF4();
    v13 = *(v3 + 48);
    v12[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0);
    sub_2704AB278(&qword_2807D4310);
    sub_2705D8084();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2704A84D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42F0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704AB224();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_2705D7F54();
  v8 = v7;
  v18 = v6;
  v9 = sub_2705D7F54();
  v19 = v10;
  v16 = v9;
  v15 = sub_2705D7F04();
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0);
  sub_2704AB278(&qword_2807D4300);
  sub_2705D7FA4();
  v12 = OUTLINED_FUNCTION_0_47();
  v13(v12);

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v18;
  a2[1] = v8;
  a2[2] = v16;
  a2[3] = v19;
  a2[4] = v15;
  a2[5] = v17;
  a2[6] = v20;
  return result;
}

uint64_t sub_2704A87EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704A8118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704A8814(uint64_t a1)
{
  v2 = sub_2704AB224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704A8850(uint64_t a1)
{
  v2 = sub_2704AB224();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2704A888C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2704A84D8(a1, v6);
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

void *sub_2704A88F4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42E0);
  v5 = sub_2705D7494();
  v2[15] = a2;
  v2[16] = v5;
  v2[14] = a1;
  return v2;
}

void sub_2704A8968(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for SourceLookupType();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  sub_2704AA9E0(a1, v10);
  v16 = sub_2704AB090(&unk_2807D4270, v15, type metadata accessor for MessagePageJavascriptService.EngineCoreActor);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = v16;
  sub_2704AAB5C(v10, v19 + v17);
  *(v19 + v18) = v1;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
  swift_retain_n();
  sub_270484A80();
}

uint64_t sub_2704A8B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a1;
  v6[16] = a4;
  return MEMORY[0x2822009F8](sub_2704A8B90, a5, 0);
}

uint64_t sub_2704A8B90()
{
  OUTLINED_FUNCTION_23_14();
  v1 = v0[17];
  v2 = *(v1 + 112);
  v0[19] = v2;
  v0[20] = *(v1 + 120);
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  v0[21] = v3;
  *v3 = v4;
  v3[1] = sub_2704A8C48;
  v5 = v0[16];

  return sub_2704A9380((v0 + 2), v5, v2);
}

uint64_t sub_2704A8C48()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 136);

    return MEMORY[0x2822009F8](sub_2704A8D7C, v9, 0);
  }
}

uint64_t sub_2704A8D7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 136);
  v3 = *(v0 + 24);
  swift_beginAccess();
  v4 = *(v2 + 128);

  v5 = sub_2703D5150(v1, v3, v4);
  *(v0 + 176) = v5;

  if (v5)
  {
    sub_2704AADB4(v0 + 16);
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    v7 = type metadata accessor for JSEngineCore();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08);
    *v6 = v0;
    v6[1] = sub_2704A8FC8;
    v9 = *(v0 + 120);
    v10 = MEMORY[0x277D84950];
    v11 = v5;
    v12 = v7;
  }

  else
  {
    sub_2704A9E64(*(v0 + 152), *(v0 + 160), v0 + 16);
    v14 = v13;
    *(v0 + 200) = v13;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 128);
    sub_2703BCA78(v14, v1, v3);
    *(v2 + 128) = v18;
    swift_endAccess();
    sub_2704AADB4(v0 + 16);
    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    v16 = type metadata accessor for JSEngineCore();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08);
    *v15 = v0;
    v15[1] = sub_2704A90EC;
    v9 = *(v0 + 120);
    v10 = MEMORY[0x277D84950];
    v11 = v14;
    v12 = v16;
  }

  return MEMORY[0x282200430](v9, v11, v12, v8, v10);
}

uint64_t sub_2704A8FC8()
{
  OUTLINED_FUNCTION_23_14();
  v2 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2704A92C8;
  }

  else
  {
    v6 = sub_2704A9210;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2704A90EC()
{
  OUTLINED_FUNCTION_23_14();
  v2 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2704A9324;
  }

  else
  {
    v6 = sub_2704A926C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2704A9210()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704A926C()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704A92C8()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704A9324()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704A9380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[70] = a3;
  v3[69] = a2;
  v3[68] = a1;
  v4 = sub_2705D4484();
  v3[71] = v4;
  v3[72] = *(v4 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = type metadata accessor for SourceLookupType();
  v3[75] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2704A94A4, 0, 0);
}

uint64_t sub_2704A94A4()
{
  OUTLINED_FUNCTION_67_2();
  v1 = v0[70];
  v2 = sub_2705D7534();
  v3 = [v1 arrayForKey_];

  v4 = [v3 valuePromise];
  v0[76] = v4;

  v0[2] = v0;
  v0[7] = v0 + 66;
  v0[3] = sub_2704A9660;
  v5 = swift_continuation_init();
  v0[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4290);
  v0[44] = MEMORY[0x277D85DD0];
  v0[45] = 1107296256;
  v0[46] = sub_2704A9F84;
  v0[47] = &block_descriptor_1;
  v0[48] = v5;
  [v4 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2704A9660()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_17_14();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 616) = v4;
  if (v4)
  {
    v5 = sub_2704A9DB8;
  }

  else
  {
    v5 = sub_2704A9794;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2704A9794()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34D0);
  sub_2705D77B4();

  v3 = MEMORY[0x277D837D0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2705DC030;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2705F38E0;
  *(inited + 32) = 0x556B63617074656ALL;
  *(inited + 40) = 0xEA00000000004C52;
  *(inited + 48) = 0xD000000000000055;
  *(inited + 56) = 0x8000000270614AC0;
  *(inited + 72) = v3;
  strcpy((inited + 80), "jetpackURL1P");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 0xD000000000000055;
  *(inited + 104) = 0x8000000270614AC0;
  *(inited + 120) = v3;
  *(inited + 128) = 25705;
  *(inited + 136) = 0xE200000000000000;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x8000000270614B60;
  *(inited + 168) = v3;
  *(inited + 176) = 0x736E726574746170;
  *(inited + 184) = 0xE800000000000000;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D42B0);
  *(inited + 192) = &unk_28804C1F8;
  *(inited + 216) = v6;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 264) = MEMORY[0x277D83B88];
  *(inited + 232) = 0x8000000270614B80;
  *(inited + 240) = 259200;
  *(v4 + 32) = sub_2705D7494();
  v7 = 0;
  v44 = (v0 + 536);
  v8 = *(v0 + 576);
  v37 = (v8 + 32);
  v38 = *(v0 + 600);
  v36 = (v8 + 8);
  while (1)
  {
    if (v7 == 1)
    {

      sub_270473414();
      swift_allocError();
      *v31 = 2;
LABEL_16:
      swift_willThrow();

      OUTLINED_FUNCTION_1_4();
      goto LABEL_19;
    }

    if (v7 >= *(v4 + 16))
    {
      __break(1u);
    }

    v9 = objc_opt_self();

    v10 = sub_2705D7454();

    *v44 = 0;
    v11 = [v9 dataWithJSONObject:v10 options:0 error:v44];

    v12 = *v44;
    if (!v11)
    {
      v32 = v12;

      sub_2705D4364();

      goto LABEL_16;
    }

    v13 = sub_2705D44C4();
    v15 = v14;

    sub_2705D4014();
    swift_allocObject();
    sub_2705D4004();
    sub_2704AB03C();
    sub_2705D3FF4();
    v16 = v4;
    v17 = *(v0 + 600);
    v18 = *(v0 + 552);

    sub_27046DCA4(v13, v15);
    v19 = *(v0 + 488);
    *(v0 + 416) = *(v0 + 472);
    *(v0 + 432) = v19;
    *(v0 + 448) = *(v0 + 504);
    *(v0 + 464) = *(v0 + 520);
    v21 = *(v0 + 472);
    v20 = *(v0 + 480);
    v42 = *(v0 + 496);
    v43 = *(v0 + 488);
    v40 = *(v0 + 512);
    v41 = *(v0 + 504);
    v39 = *(v0 + 520);
    sub_2704AA9E0(v18, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 600);
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v26 = *(v0 + 584);
    v27 = v20;
    v28 = *(v0 + 568);
    (*v37)(v26, v23, v28);
    v29 = sub_2704A7BD0(v26);
    v30 = v28;
    v20 = v27;
    (*v36)(v26, v30);
    v4 = v16;
    if (v29)
    {
      goto LABEL_18;
    }

LABEL_13:
    sub_2704AADB4(v0 + 416);
    ++v7;
  }

  if (*(v0 + 416) != *v23 || *(v0 + 424) != *(v38 + 8))
  {
    v25 = sub_2705D8134();

    v4 = v16;
    if (v25)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_18:

  v34 = *(v0 + 544);

  *v34 = v21;
  v34[1] = v20;
  v34[2] = v43;
  v34[3] = v42;
  v34[4] = v41;
  v34[5] = v40;
  v34[6] = v39;
  OUTLINED_FUNCTION_1_4();
LABEL_19:

  return v33();
}

uint64_t sub_2704A9DB8()
{
  OUTLINED_FUNCTION_67_2();
  v1 = *(v0 + 608);
  swift_willThrow();

  OUTLINED_FUNCTION_1_4();

  return v2();
}

void sub_2704A9E64(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-v7 - 8];
  v9 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = *(a3 + 16);
  *(v10 + 32) = *a3;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a3 + 32);
  *(v10 + 80) = *(a3 + 48);
  *(v10 + 88) = a1;
  *(v10 + 96) = a2;
  sub_2704AAFD8(a3, v14);
  v12 = a2;
  swift_unknownObjectRetain();
  sub_270484A80();
}

uint64_t *sub_2704A9F84(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_2704AA014(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_2704AA080(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2704AA014(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1C08);
  swift_allocError();
  *v3 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_2704AA0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  v5[15] = swift_task_alloc();
  v6 = sub_2705D4484();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2704AA19C, 0, 0);
}

uint64_t sub_2704AA19C()
{
  OUTLINED_FUNCTION_67_2();
  v2 = v0[15];
  v1 = v0[16];

  sub_2705D4454();

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2703C1634(v0[15], &unk_2807D4280);
    sub_270473414();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_1_4();

    return v4();
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    setenv("JavaScriptCoreUseJIT", "0", 1);
    swift_task_alloc();
    OUTLINED_FUNCTION_34_9();
    v0[19] = v6;
    *v6 = v7;
    v6[1] = sub_2704AA364;

    return sub_270562B60();
  }
}

uint64_t sub_2704AA364()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = sub_2704AA710;
  }

  else
  {
    v7 = sub_2704AA468;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2704AA468()
{
  OUTLINED_FUNCTION_23_14();
  sub_270563908(v0 + 2, v0[18], (v0 + 7));
  v2 = v0[10];
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_2704AA52C;

  return MEMORY[0x28217FD10](v2, v1);
}

uint64_t sub_2704AA52C()
{
  OUTLINED_FUNCTION_23_14();
  v3 = v2;
  OUTLINED_FUNCTION_70();
  v5 = v4;
  OUTLINED_FUNCTION_17_14();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_17_14();
  *v8 = v7;
  *(v5 + 176) = v0;

  if (v0)
  {
    v9 = sub_2704AA790;
  }

  else
  {
    *(v5 + 184) = v3;
    v9 = sub_2704AA644;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2704AA644()
{
  OUTLINED_FUNCTION_67_2();
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[12];
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  type metadata accessor for JSEngineCore();
  v6 = sub_27058E5CC(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v3 + 8))(v2, v4);
  *v5 = v6;

  OUTLINED_FUNCTION_1_4();

  return v7();
}

uint64_t sub_2704AA710()
{
  OUTLINED_FUNCTION_2_2();
  (*(v0[17] + 8))(v0[18], v0[16]);

  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_2704AA790()
{
  OUTLINED_FUNCTION_23_14();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_2704AA830()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2704AA86C()
{
  sub_2704AA830();

  return MEMORY[0x282200960](v0);
}

void *sub_2704AA8BC(uint64_t a1, void *a2)
{
  v3 = v2;
  v3[3] = a1;
  v3[4] = a2;
  type metadata accessor for MessagePageJavascriptService.EngineCoreActor();
  v5 = swift_allocObject();
  v6 = a2;
  v7 = swift_unknownObjectRetain();
  sub_2704A88F4(v7, a2);
  v3[2] = v5;
  return v3;
}

uint64_t sub_2704AA924()
{

  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2704AA958()
{
  sub_2704AA924();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2704AA9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceLookupType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2704AAA44()
{
  v1 = *(type metadata accessor for SourceLookupType() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_2705D4484();
    OUTLINED_FUNCTION_11_1();
    (*(v3 + 8))(v0 + v2);
  }

  return swift_deallocObject();
}

uint64_t sub_2704AAB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceLookupType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2704AABC0()
{
  v1 = type metadata accessor for SourceLookupType();
  OUTLINED_FUNCTION_1_1(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_2704AB4F8;
  v4 = OUTLINED_FUNCTION_6_36();

  return sub_2704A8B6C(v4, v5, v6, v7, v8, v9);
}

id sub_2704AACD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2705D7534();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2705D4364();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2704AADE4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2704AAE4C()
{
  OUTLINED_FUNCTION_67_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_34_9();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2704AAEF4;
  v3 = OUTLINED_FUNCTION_6_36();

  return sub_2704AA0A0(v3, v4, v5, v6, v7);
}

uint64_t sub_2704AAEF4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v1 = *v0;
  OUTLINED_FUNCTION_17_14();
  *v2 = v1;

  OUTLINED_FUNCTION_1_4();

  return v3();
}

unint64_t sub_2704AB03C()
{
  result = qword_2807D42B8;
  if (!qword_2807D42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D42B8);
  }

  return result;
}

uint64_t sub_2704AB090(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2704AB0D8()
{

  return swift_deallocObject();
}

uint64_t sub_2704AB134(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2704AB174(uint64_t result, int a2, int a3)
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

unint64_t sub_2704AB1D0()
{
  result = qword_2807D42E8;
  if (!qword_2807D42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D42E8);
  }

  return result;
}

unint64_t sub_2704AB224()
{
  result = qword_2807D42F8;
  if (!qword_2807D42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D42F8);
  }

  return result;
}

uint64_t sub_2704AB278(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D42B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_2704AB2E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2704AB3B4);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2704AB3F0()
{
  result = qword_2807D4318;
  if (!qword_2807D4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4318);
  }

  return result;
}

unint64_t sub_2704AB448()
{
  result = qword_2807D4320;
  if (!qword_2807D4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4320);
  }

  return result;
}

unint64_t sub_2704AB4A0()
{
  result = qword_2807D4328;
  if (!qword_2807D4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4328);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return sub_2703C1634(v1 - 184, v0);
}

uint64_t OUTLINED_FUNCTION_15_22()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return swift_getDynamicType();
}

uint64_t static MessagePlacement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v10 || (sub_2705D8134()) && (sub_270463AD0(v2, v7))
  {
    v15[0] = v3;
    v15[1] = v4;
    v16 = v5;
    v13[0] = v6;
    v13[1] = v8;
    v14 = v9;
    sub_2703B4984(v3, v4, v5);
    sub_2703B4984(v6, v8, v9);
    v11 = static MessagePlacement.Kind.== infix(_:_:)(v15, v13);
    sub_2703AF9AC(v6, v8, v9);
    sub_2703AF9AC(v3, v4, v5);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t MessagePlacement.matches(other:)(uint64_t *a1)
{
  v2 = a1[1];
  v33 = *a1;
  v32 = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *v1;
  v31 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(a1 + 40);
  v11 = *(v1 + 40);
  *&v39 = v8;
  *(&v39 + 1) = v9;
  LOBYTE(v40) = v11;
  *&v35 = v4;
  *(&v35 + 1) = v5;
  LOBYTE(v36) = v10;
  sub_2703B4984(v4, v5, v10);
  sub_2703B4984(v8, v9, v11);
  v12 = static MessagePlacement.Kind.== infix(_:_:)(&v39, &v35);
  sub_2703AF9AC(v4, v5, v10);
  result = sub_2703AF9AC(v8, v9, v11);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v6 != v33 || v31 != v32)
  {
    result = sub_2705D8134();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v15 = 0;
  v16 = *(v7 + 16);
  v17 = v7 + 32;
  v33 = MEMORY[0x277D84F90];
  v32 = v7 + 32;
LABEL_8:
  for (i = (v17 + (v15 << 6)); ; i += 4)
  {
    if (v16 == v15)
    {
      v29 = *(v33 + 16);

      return v29 == 0;
    }

    if (v15 >= *(v7 + 16))
    {
      break;
    }

    v19 = *i;
    v20 = i[1];
    v21 = i[3];
    v41 = i[2];
    v42 = v21;
    v39 = v19;
    v40 = v20;
    v35 = v19;
    v36 = v20;
    v37 = v41;
    v38 = v21;
    MEMORY[0x28223BE20](result);
    v30[2] = &v35;
    sub_27049A1BC(&v39, v34);
    if (!sub_2704ADC00(sub_27049A19C, v30, v3))
    {
      v22 = v33;
      result = swift_isUniquelyReferenced_nonNull_native();
      v43 = v22;
      if ((result & 1) == 0)
      {
        result = sub_2704ADDB4(0, *(v22 + 16) + 1, 1);
        v22 = v43;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_2704ADDB4(v23 > 1, v24 + 1, 1);
        v22 = v43;
      }

      ++v15;
      *(v22 + 16) = v24 + 1;
      v33 = v22;
      v25 = (v22 + (v24 << 6));
      v26 = v39;
      v27 = v40;
      v28 = v42;
      v25[4] = v41;
      v25[5] = v28;
      v25[2] = v26;
      v25[3] = v27;
      v17 = v32;
      goto LABEL_8;
    }

    result = sub_27049A218(&v39);
    ++v15;
  }

  __break(1u);
  return result;
}

void sub_2704AB920()
{
  OUTLINED_FUNCTION_10_1();
  v57 = v0;
  v2 = v1;
  v54 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4450);
  OUTLINED_FUNCTION_0();
  v55 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = v50 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98);
  OUTLINED_FUNCTION_0();
  v56 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4458);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  v18 = v57;
  v19 = sub_2705D7F54();
  if (!v18)
  {
    v57 = v2;
    v52 = 0;
    v53 = v17;
    v50[0] = v7;
    v50[1] = v14;
    v50[2] = v11;
    v51 = v12;
    if (v19 == 0xD000000000000011 && 0x8000000270614BC0 == v20)
    {
    }

    else
    {
      v22 = sub_2705D8134();

      if ((v22 & 1) == 0)
      {
        sub_2705D7D84();
        swift_allocError();
        v24 = v23;
        sub_2705D7EE4();
        sub_2705D7D44();
        OUTLINED_FUNCTION_11_27();
        (*(v25 + 104))(v24);
        swift_willThrow();
        goto LABEL_11;
      }
    }

    sub_2704AFAC8();
    v26 = v52;
    sub_2705D7ED4();
    if (!v26)
    {
      sub_2704DEE68();
      sub_2704AFB1C();
      sub_2705D7ED4();
      v28 = sub_2705D7F54();
      v30 = v29;
      v31 = v28;
      v32 = sub_2705D7F54();
      v52 = 0;
      if (v32 == 0x7465656873 && v33 == 0xE500000000000000)
      {

        v36 = v54;
      }

      else
      {
        v35 = sub_2705D8134();

        v36 = v54;
        if ((v35 & 1) == 0)
        {

          sub_2705D7D84();
          swift_allocError();
          v38 = v37;
          sub_2705D7EE4();
          sub_2705D7D44();
          OUTLINED_FUNCTION_11_27();
          (*(v39 + 104))(v38);
          swift_willThrow();
          v40 = OUTLINED_FUNCTION_9_32();
          v41(v40);
          v42 = OUTLINED_FUNCTION_10_27();
          v43(v42);
          OUTLINED_FUNCTION_8_31();
          v27(v53, v51);
          goto LABEL_11;
        }
      }

      v44 = OUTLINED_FUNCTION_9_32();
      v45(v44);
      v46 = OUTLINED_FUNCTION_10_27();
      v47(v46);
      OUTLINED_FUNCTION_8_31();
      v48(v53, v51);
      v49 = MEMORY[0x277D84F90];
      *v36 = v31;
      *(v36 + 8) = v30;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0;
      *(v36 + 16) = v49;
      *(v36 + 40) = 2;
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_11_3();
}

uint64_t static MessagePlacement.Kind.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_2705D8134();
      v23 = OUTLINED_FUNCTION_13_1();
      v25 = OUTLINED_FUNCTION_2_43(v23, v24, 0);
      v27 = OUTLINED_FUNCTION_2_43(v25, v26, 0);
      sub_2703AF9AC(v27, v28, 0);
      v18 = OUTLINED_FUNCTION_13_1();
      v20 = 0;
      goto LABEL_15;
    }

    v57 = OUTLINED_FUNCTION_2_43(v21, v2, 0);
    v59 = OUTLINED_FUNCTION_2_43(v57, v58, 0);
    sub_2703AF9AC(v59, v60, 0);
    v42 = OUTLINED_FUNCTION_25_11();
    v44 = 0;
LABEL_24:
    sub_2703AF9AC(v42, v43, v44);
    return 1;
  }

  if (v4 != 1)
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_20;
    }

    v40 = OUTLINED_FUNCTION_25_11();
    sub_2703AF9AC(v40, v41, 2u);
    v42 = 0;
    v43 = 0;
    v44 = 2;
    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_20:
    v31 = OUTLINED_FUNCTION_13_1();
    v33 = OUTLINED_FUNCTION_2_43(v31, v32, v7);
    v35 = OUTLINED_FUNCTION_2_43(v33, v34, v4);
    sub_2703AF9AC(v35, v36, v4);
    v37 = OUTLINED_FUNCTION_13_1();
    sub_2703AF9AC(v37, v38, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    OUTLINED_FUNCTION_25_11();
    v9 = sub_2705D8134();
    v10 = OUTLINED_FUNCTION_13_1();
    sub_2703B4984(v10, v11, 1u);
    v12 = OUTLINED_FUNCTION_1_48();
    sub_2703B4984(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_1_48();
    sub_2703AF9AC(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_13_1();
    v20 = 1;
LABEL_15:
    sub_2703AF9AC(v18, v19, v20);
    return v9 & 1;
  }

  v39 = 1;
  v45 = OUTLINED_FUNCTION_1_48();
  sub_2703B4984(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_1_48();
  sub_2703B4984(v48, v49, v50);
  v51 = OUTLINED_FUNCTION_1_48();
  sub_2703AF9AC(v51, v52, v53);
  v54 = OUTLINED_FUNCTION_1_48();
  sub_2703AF9AC(v54, v55, v56);
  return v39;
}

uint64_t sub_2704AC074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465656873 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E696C6E69 && a2 == 0xE600000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265766F706F70 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2704AC17C(char a1)
{
  if (!a1)
  {
    return 0x7465656873;
  }

  if (a1 == 1)
  {
    return 0x656E696C6E69;
  }

  return 0x7265766F706F70;
}

uint64_t sub_2704AC1CC()
{
  sub_2705D83B4();
  OUTLINED_FUNCTION_19_12();
  return sub_2705D8414();
}

uint64_t sub_2704AC210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704AC074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704AC238(uint64_t a1)
{
  v2 = sub_2704AF054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704AC274(uint64_t a1)
{
  v2 = sub_2704AF054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704AC2CC(uint64_t a1)
{
  v2 = sub_2704AF0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704AC308(uint64_t a1)
{
  v2 = sub_2704AF0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704AC344()
{
  sub_2705D83B4();
  OUTLINED_FUNCTION_19_12();
  return sub_2705D8414();
}

uint64_t sub_2704AC37C(uint64_t a1)
{
  v2 = sub_2704AF0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704AC3B8(uint64_t a1)
{
  v2 = sub_2704AF0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704AC3F4(uint64_t a1)
{
  v2 = sub_2704AF150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704AC430(uint64_t a1)
{
  v2 = sub_2704AF150();

  return MEMORY[0x2821FE720](a1, v2);
}

void MessagePlacement.Kind.encode(to:)()
{
  OUTLINED_FUNCTION_10_1();
  v40 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4330);
  OUTLINED_FUNCTION_0();
  v35 = v5;
  v36 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v34 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4338);
  OUTLINED_FUNCTION_0();
  v32 = v9;
  v33 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4340);
  OUTLINED_FUNCTION_0();
  v30 = v14;
  v31 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4348);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  v23 = *v0;
  v37 = v0[1];
  v38 = v23;
  v24 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704AF054();
  sub_2705D84C4();
  if (v24)
  {
    if (v24 != 1)
    {
      sub_2704AF150();
      OUTLINED_FUNCTION_6_37();
      (*(v30 + 8))(v17, v31);
      (*(v19 + 8))(v22, v24);
      goto LABEL_7;
    }

    sub_2704AF0A8();
    v25 = v34;
    OUTLINED_FUNCTION_6_37();
    v26 = v36;
    sub_2705D8034();
    (*(v35 + 8))(v25, v26);
  }

  else
  {
    sub_2704AF0FC();
    OUTLINED_FUNCTION_6_37();
    v27 = v33;
    sub_2705D8034();
    OUTLINED_FUNCTION_8_31();
    v28(v12, v27);
  }

  (*(v19 + 8))(v22, v24);
LABEL_7:
  OUTLINED_FUNCTION_11_3();
}

uint64_t MessagePlacement.Kind.hash(into:)()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x2743A47E0](0);
    }

    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x2743A47E0](v1);
  OUTLINED_FUNCTION_12_5();

  return sub_2705D7634();
}

uint64_t MessagePlacement.Kind.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_2705D83B4();
  if (v1)
  {
    if (v1 != 1)
    {
      OUTLINED_FUNCTION_19_12();
      return sub_2705D8414();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2743A47E0](v2);
  sub_2705D7634();
  return sub_2705D8414();
}

void MessagePlacement.Kind.init(from:)()
{
  OUTLINED_FUNCTION_10_1();
  v74 = v0;
  v2 = v1;
  v71 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4370);
  OUTLINED_FUNCTION_0();
  v69 = v4;
  v70 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v73 = &v63 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4378);
  OUTLINED_FUNCTION_0();
  v67 = v8;
  v68 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4380);
  OUTLINED_FUNCTION_0();
  v66 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4388);
  OUTLINED_FUNCTION_0();
  v72 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704AF054();
  v21 = v74;
  sub_2705D8484();
  if (v21)
  {
    goto LABEL_12;
  }

  v64 = v11;
  v65 = v15;
  v74 = v2;
  v22 = sub_2705D7FB4();
  sub_27042C9F0(v22, 0);
  if (v24 == v25 >> 1)
  {
    goto LABEL_10;
  }

  v63 = 0;
  if (v24 < (v25 >> 1))
  {
    v26 = *(v23 + v24);
    sub_27042C9E4(v24 + 1);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      if (v26)
      {
        v31 = v26 == 1;
        v32 = v63;
        if (v31)
        {
          sub_2704AF0FC();
          sub_2705D7ED4();
          v33 = v71;
          if (v32)
          {
LABEL_17:
            OUTLINED_FUNCTION_5_44();
            v44();
            goto LABEL_18;
          }

          v34 = v67;
          v52 = sub_2705D7F54();
          v54 = v53;
          swift_unknownObjectRelease();
          v55 = OUTLINED_FUNCTION_13_23();
          v56(v55, v34);
          OUTLINED_FUNCTION_5_44();
          v57 = OUTLINED_FUNCTION_12_5();
          v58(v57);
          v59 = 0;
        }

        else
        {
          sub_2704AF0A8();
          sub_2705D7ED4();
          v33 = v71;
          if (v32)
          {
            goto LABEL_17;
          }

          v48 = v20;
          v68 = v16;
          v49 = v69;
          v50 = sub_2705D7F54();
          v51 = v72;
          v63 = 0;
          v52 = v50;
          v54 = v60;
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_13_23();
          v62(v61, v49);
          (*(v51 + 8))(v48, v68);
          v59 = 1;
        }
      }

      else
      {
        sub_2704AF150();
        v40 = v65;
        v41 = v63;
        sub_2705D7ED4();
        if (v41)
        {
          OUTLINED_FUNCTION_5_44();
          v42 = OUTLINED_FUNCTION_25_11();
          v43(v42);
LABEL_18:
          swift_unknownObjectRelease();
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_8_31();
        v45(v40, v64);
        OUTLINED_FUNCTION_5_44();
        v46 = OUTLINED_FUNCTION_25_11();
        v47(v46);
        v52 = 0;
        v54 = 0;
        v59 = 2;
        v33 = v71;
      }

      *v33 = v52;
      *(v33 + 8) = v54;
      *(v33 + 16) = v59;
      v39 = v74;
      goto LABEL_13;
    }

LABEL_10:
    sub_2705D7D84();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v36 = &type metadata for MessagePlacement.Kind;
    sub_2705D7EE4();
    sub_2705D7D44();
    OUTLINED_FUNCTION_11_27();
    (*(v37 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_5_44();
    v38(v20, v16);
LABEL_11:
    v2 = v74;
LABEL_12:
    v39 = v2;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_11_3();
    return;
  }

  __break(1u);
}

uint64_t sub_2704ACF30()
{
  v1 = *(v0 + 16);
  sub_2705D83B4();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x2743A47E0](0);
      return sub_2705D8414();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2743A47E0](v2);
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t MessagePlacement.pageMetadata.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 MessagePlacement.pageMetadata.setter(uint64_t *a1)
{
  v3 = *a1;

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  return result;
}

uint64_t MessagePlacement.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_2703B4984(v2, v3, v4);
}

uint64_t MessagePlacement.kind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AF9AC(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

__n128 MessagePlacement.init(pageMetadata:kind:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  result = *a2;
  *(a3 + 24) = *a2;
  *(a3 + 40) = v3;
  return result;
}

uint64_t sub_2704AD12C()
{
  v0 = sub_2705D7EB4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2704AD180(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 1701273968;
  }
}

BOOL sub_2704AD1A0()
{
  v0 = sub_2705D7EB4();

  return v0 != 0;
}

uint64_t sub_2704AD228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704AD12C();
  *a1 = result;
  return result;
}

uint64_t sub_2704AD258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704AD180(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2704AD28C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704AD12C();
  *a1 = result;
  return result;
}

uint64_t sub_2704AD2B4(uint64_t a1)
{
  v2 = sub_2704AFB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704AD2F0(uint64_t a1)
{
  v2 = sub_2704AFB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_2704AD338@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2704AD1A0();
  *a1 = result;
  return result;
}

uint64_t sub_2704AD36C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704AD1E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2704AD398@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2704AD1A0();
  *a1 = result;
  return result;
}

uint64_t sub_2704AD3C4(uint64_t a1)
{
  v2 = sub_2704AFAC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704AD400(uint64_t a1)
{
  v2 = sub_2704AFAC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704AD43C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174654D65676170 && a2 == 0xEC00000061746164;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2704AD508(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 0x6174654D65676170;
  }
}

uint64_t sub_2704AD548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704AD43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704AD570(uint64_t a1)
{
  v2 = sub_2704AF1A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704AD5AC(uint64_t a1)
{
  v2 = sub_2704AF1A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void MessagePlacement.encode(to:)()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4390);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v7 = *(v0 + 32);
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704AF1A4();

  sub_2705D84C4();
  sub_270463CD8();
  OUTLINED_FUNCTION_17_17();
  sub_2705D8084();

  if (!v1)
  {
    sub_2703B4984(v8, v7, v9);
    sub_2704AF1F8();
    OUTLINED_FUNCTION_17_17();
    sub_2705D8084();
    sub_2703AF9AC(v8, v7, v9);
  }

  v5 = OUTLINED_FUNCTION_12_5();
  v6(v5);
  OUTLINED_FUNCTION_11_3();
}

uint64_t MessagePlacement.hash(into:)()
{
  v1 = *(v0 + 40);
  sub_2705D7634();
  sub_270464040();
  if (v1)
  {
    if (v1 != 1)
    {
      return MEMORY[0x2743A47E0](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2743A47E0](v2);
  OUTLINED_FUNCTION_12_5();

  return sub_2705D7634();
}

uint64_t MessagePlacement.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_2705D83B4();
  sub_2705D7634();
  sub_270464040();
  if (v1)
  {
    if (v1 != 1)
    {
      OUTLINED_FUNCTION_19_12();
      return sub_2705D8414();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2743A47E0](v2);
  sub_2705D7634();
  return sub_2705D8414();
}

void MessagePlacement.init(from:)()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D43A8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704AF1A4();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2704641B4();
    OUTLINED_FUNCTION_12_24();
    v11 = v18;
    v16 = v17;
    v12 = v19;
    sub_2704AF24C();
    OUTLINED_FUNCTION_12_24();
    (*(v7 + 8))(v10, v5);
    v13 = v17;
    v14 = v18;
    v15 = v19;
    *v4 = v16;
    *(v4 + 8) = v11;
    *(v4 + 16) = v12;
    *(v4 + 24) = v13;
    *(v4 + 32) = v14;
    *(v4 + 40) = v15;

    sub_2703B4984(v13, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v2);

    sub_2703AF9AC(v13, v14, v15);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704ADB04()
{
  sub_2705D83B4();
  MessagePlacement.hash(into:)();
  return sub_2705D8414();
}

BOOL sub_2704ADB94(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    v12 = v9;
    v10 = a1(&v12);
    if (v3)
    {
      break;
    }
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

BOOL sub_2704ADC00(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 32);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = v5[1];
    v30[0] = *v5;
    v30[1] = v7;
    v8 = v5[3];
    v10 = *v5;
    v9 = v5[1];
    v30[2] = v5[2];
    v30[3] = v8;
    v26 = v10;
    v27 = v9;
    v11 = v5[3];
    v28 = v5[2];
    v29 = v11;
    sub_27049A1BC(v30, &v22);
    v12 = a1(&v26);
    if (v3)
    {
      OUTLINED_FUNCTION_14_27(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24, v25, v26, v27, v28, v29);
      return v6 != 0;
    }

    v20 = v12;
    v5 += 4;
    OUTLINED_FUNCTION_14_27(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  while ((v20 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2704ADCBC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704ADF0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADCDC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704AE024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2704ADCFC(size_t a1, int64_t a2, char a3)
{
  result = sub_2704AEBC4(a1, a2, a3, *v3, &qword_2807D4478, &unk_2705F7238, _s6ActionVMa, sub_270499CC4);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADD54(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704AE134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADD74(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704AE244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADD94(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704AE34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADDB4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704AE45C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2704ADDD4(void *a1, int64_t a2, char a3)
{
  result = sub_2704AE55C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2704ADDF4(void *a1, int64_t a2, char a3)
{
  result = sub_2704AE674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2704ADE14(void *a1, int64_t a2, char a3)
{
  result = sub_2704AE78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADE34(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704AE9BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADE54(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704AEABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2704ADE74(size_t a1, int64_t a2, char a3)
{
  result = sub_2704AEBC4(a1, a2, a3, *v3, &qword_2807D4440, &unk_2705F7200, type metadata accessor for TextComponentModel, sub_270499DD8);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADECC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2704AED8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2704ADEEC(void *a1, int64_t a2, char a3)
{
  result = sub_2704AEE94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2704ADF0C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D44D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_270499C7C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D44E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2704AE024(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D44F8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_270499CA4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2868);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2704AE134(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4488);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_270499CDC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3518);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2704AE244(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4480);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_270499CFC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2704AE34C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3DC0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_270499D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D34F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2704AE45C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4470);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_270499CA4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}