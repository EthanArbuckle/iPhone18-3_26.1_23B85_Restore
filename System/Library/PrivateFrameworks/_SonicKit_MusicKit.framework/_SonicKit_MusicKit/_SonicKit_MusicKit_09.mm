uint64_t SuzeDRMSession.__deallocating_deinit()
{
  SuzeDRMSession.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t SuzeDRMSession.add(asset:)()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return OUTLINED_FUNCTION_0_0(sub_2753985C4);
}

uint64_t sub_2753985C4()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[4];
  v0[5] = *(v0[3] + 48);
  v2 = *(MEMORY[0x277D857C8] + 4);

  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_21_6(v3);
  OUTLINED_FUNCTION_11_7();
  *v2 = v4;
  v2[1] = sub_275398674;
  v5 = OUTLINED_FUNCTION_10_8();

  return MEMORY[0x282200430](v5);
}

uint64_t sub_275398674()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    v9 = v3[5];
  }

  else
  {
    v10 = v3[5];
    v11 = v3[2];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275398790()
{
  OUTLINED_FUNCTION_19_0();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t SuzeDRMSession.prepare(forRate:)(float a1)
{
  *(v2 + 24) = v1;
  *(v2 + 80) = a1;
  *(v2 + 32) = *v1;
  return OUTLINED_FUNCTION_0_0(sub_2753987F8);
}

uint64_t sub_2753987F8()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 80) == 0.0)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_275398BA4;
    v2 = *(v0 + 24);

    return sub_2753990E4();
  }

  else
  {
    v4 = *(v0 + 32);
    *(v0 + 40) = *(*(v0 + 24) + 48);
    v5 = *(MEMORY[0x277D857C8] + 4);

    v6 = swift_task_alloc();
    OUTLINED_FUNCTION_21_6(v6);
    OUTLINED_FUNCTION_11_7();
    *v5 = v7;
    v5[1] = sub_275398920;
    v8 = OUTLINED_FUNCTION_10_8();

    return MEMORY[0x282200430](v8);
  }
}

uint64_t sub_275398920()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    v9 = v3[5];
  }

  else
  {
    v10 = v3[5];
    v11 = v3[2];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_275398A38()
{
  OUTLINED_FUNCTION_14_0();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_275398AC4;
  v2 = *(v0 + 24);

  return sub_275398CA8();
}

uint64_t sub_275398AC4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_275398BA4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_19_0();

  return v5();
}

uint64_t sub_275398C84()
{
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_19_0();
  return v2();
}

uint64_t sub_275398CA8()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_2753B6288();
  v1[5] = sub_2753B6278();
  sub_27539AE6C(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v3 = sub_2753B70C8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_275398D98, v3, v2);
}

uint64_t sub_275398D98()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[3];
  if (*(v1 + 56))
  {
    v2 = v0[5];

    OUTLINED_FUNCTION_35_0();

    return v3();
  }

  else
  {
    v5 = v0[4];
    v0[8] = *(v1 + 48);
    v6 = *(MEMORY[0x277D857C8] + 4);

    v7 = swift_task_alloc();
    v0[9] = v7;
    v0[10] = *(v5 + 80);
    sub_275358C80();
    OUTLINED_FUNCTION_11_7();
    *v7 = v8;
    v7[1] = sub_275398EA0;
    v9 = OUTLINED_FUNCTION_10_8();

    return MEMORY[0x282200430](v9);
  }
}

uint64_t sub_275398EA0()
{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v5 = v2[9];
  v6 = v2[8];
  *v4 = *v1;
  *(v3 + 88) = v0;

  v7 = v2[7];
  v8 = v2[6];
  if (v0)
  {
    v9 = sub_275399088;
  }

  else
  {
    v9 = sub_275398FF0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_275398FF0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  v5 = v0[2];
  v6 = *(v3 + 88);
  type metadata accessor for SuzeDRMSession.LeaseRefresher();
  v7 = sub_2753991AC(v5);
  v8 = *(v4 + 56);
  *(v4 + 56) = v7;

  OUTLINED_FUNCTION_35_0();

  return v9();
}

uint64_t sub_275399088()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_2753990E4()
{
  *(v1 + 16) = v0;
  sub_2753B6288();
  *(v1 + 24) = sub_2753B6278();
  sub_27539AE6C(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_275394C54, v3, v2);
}

uint64_t *sub_2753991E8(uint64_t a1)
{
  v2 = *v1;
  v1[2] = a1;
  v3 = *(v2 + 88);
  v4 = *(v3 + 32);
  v5 = *(v2 + 80);
  swift_unknownObjectRetain();
  v4(v5, v3);
  swift_unknownObjectRelease();
  return v1;
}

void *sub_275399278()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v4 = *(v2 + 88);
  v5 = *(v4 + 40);
  v6 = *(v2 + 80);
  swift_unknownObjectRetain();
  v5(v6, v4);
  swift_unknownObjectRelease();
  v7 = v1[2];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_275399310()
{
  v0 = sub_275399278();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_275399340()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752FD514;

  return SuzeDRMSession.add(asset:)();
}

uint64_t sub_2753993D0(float a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752FE5C0;

  return SuzeDRMSession.prepare(forRate:)(a1);
}

uint64_t sub_275399480()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_27539955C;
  v5 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x2822008A0](v5);
}

uint64_t sub_27539955C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (!v0)
  {
    v9 = *(v3 + 24);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_275399660(uint64_t a1, void *a2)
{
  sub_27539ABB0();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_27539ADE8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275399930;
  aBlock[3] = &block_descriptor_46;
  v10 = _Block_copy(aBlock);

  [a2 startLeaseSessionWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t sub_275399804(char a1, int a2, id a3)
{
  if (a1)
  {
    sub_27539ABB0();
    return sub_2753B70E8();
  }

  else
  {
    if (!a3)
    {
      v7 = 1;
      sub_27539ACB0();
      sub_27539AE6C(&qword_2809C3408, sub_27539ACB0);
      swift_allocError();
      v5 = sub_27539AD0C();
      MEMORY[0x277C755D0](&v7, 0xD00000000000001ALL, 0x80000002753BDD20, MEMORY[0x277D84F90], &type metadata for SuzeLeaseError, v5);
    }

    v6 = a3;
    sub_27539ABB0();
    return sub_2753B70D8();
  }
}

void sub_275399930(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a3;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_2753999DC()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_275399AB4;
  v5 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x2822008A0](v5);
}

uint64_t sub_275399AB4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (!v0)
  {
    v9 = *(v3 + 24);
  }

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_275399BB8()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 40);

  return v2();
}

void sub_275399C14(uint64_t a1, void *a2)
{
  sub_27539ABB0();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_27539AC1C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275399EE4;
  aBlock[3] = &block_descriptor_2;
  v10 = _Block_copy(aBlock);

  [a2 stopLeaseSessionWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t sub_275399DB8(char a1, id a2)
{
  if (a1)
  {
    sub_27539ABB0();
    return sub_2753B70E8();
  }

  else
  {
    if (!a2)
    {
      v6 = 2;
      sub_27539ACB0();
      sub_27539AE6C(&qword_2809C3408, sub_27539ACB0);
      swift_allocError();
      v4 = sub_27539AD0C();
      MEMORY[0x277C755D0](&v6, 0xD000000000000019, 0x80000002753BDCC0, MEMORY[0x277D84F90], &type metadata for SuzeLeaseError, v4);
    }

    v5 = a2;
    sub_27539ABB0();
    return sub_2753B70D8();
  }
}

void sub_275399EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_275399F60(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

uint64_t sub_275399FA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return ICSuzeLeaseSession.start()();
}

uint64_t sub_27539A034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FE5C0;

  return ICSuzeLeaseSession.stop()();
}

uint64_t sub_27539A0C0()
{
  sub_27539B158();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2753B66D8();
  qword_2809C32D8 = result;
  return result;
}

uint64_t sub_27539A100()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 85, 7);
}

uint64_t *sub_27539A148()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = 256;
  if (!*(v0 + 81))
  {
    v3 = 0;
  }

  v4 = v3 | *(v0 + 80);
  v5 = 0x10000;
  if (!*(v0 + 82))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v0 + 83))
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = 0x100000000;
  if (!*(v0 + 84))
  {
    v8 = 0;
  }

  v10 = *(v0 + 24);
  return sub_2753974F0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v7 | v8);
}

void sub_27539A1D4()
{
  if (!qword_2809C32C0)
  {
    sub_2753B7148();
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C32C0);
    }
  }
}

uint64_t sub_27539A22C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27539A26C()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v1;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_26_0(v8);
  *v9 = v10;
  v9[1] = sub_2752FD514;

  return sub_275397D10(v2, v5, v6, v7, v3, v4);
}

uint64_t sub_27539A328(uint64_t a1)
{
  sub_27539A1D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27539A398()
{
  result = qword_2809C32E0;
  if (!qword_2809C32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C32E0);
  }

  return result;
}

unint64_t sub_27539A3F0()
{
  result = qword_2809C32E8[0];
  if (!qword_2809C32E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C32E8);
  }

  return result;
}

uint64_t dispatch thunk of SuzeLeaseImpl.start()()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_9_1();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_15_7(v6);

  return v8(v7);
}

uint64_t dispatch thunk of SuzeLeaseImpl.stop()()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_9_1();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_15_7(v6);

  return v8(v7);
}

_BYTE *storeEnumTagSinglePayload for SuzeLeaseError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27539A744);
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

uint64_t sub_27539A864()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_27539A8B4(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 24);
  v20 = *(v1 + 16);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = 256;
  if (!*(v1 + 73))
  {
    v10 = 0;
  }

  v11 = v10 | *(v1 + 72);
  v12 = 0x10000;
  if (!*(v1 + 74))
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if (!*(v1 + 75))
  {
    v13 = 0;
  }

  v14 = v11 | v12 | v13;
  if (*(v1 + 76))
  {
    v15 = 0x100000000;
  }

  else
  {
    v15 = 0;
  }

  v19 = *(v1 + 88);
  v16 = *(v1 + 80);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_2752FE5C0;

  return sub_2753977A8(a1, v20, v6, v7, v8, v9, v14 | v15, v16);
}

uint64_t sub_27539AA04(uint64_t a1, uint64_t a2)
{
  sub_27539A1D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_27539AA68(void *a1, uint64_t *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = [v3 initWithRequestContext:a1 leaseID:sub_2753B76F8() mediaType:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v7;
}

uint64_t sub_27539AAF4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_27539ABB0()
{
  if (!qword_2809C33F0)
  {
    sub_275358C80();
    v0 = sub_2753B70F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C33F0);
    }
  }
}

uint64_t sub_27539AC1C(char a1, void *a2)
{
  sub_27539ABB0();
  OUTLINED_FUNCTION_75(v4);
  v6 = *(v5 + 80);

  return sub_275399DB8(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_27539ACB0()
{
  if (!qword_2809C33F8)
  {
    sub_27539AD0C();
    v0 = sub_2753B6308();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C33F8);
    }
  }
}

unint64_t sub_27539AD0C()
{
  result = qword_2809C3400;
  if (!qword_2809C3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3400);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{
  sub_27539ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_27539ADE8(char a1, int a2, void *a3)
{
  sub_27539ABB0();
  OUTLINED_FUNCTION_75(v6);
  v8 = *(v7 + 80);

  return sub_275399804(a1, a2, a3);
}

uint64_t sub_27539AE6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27539AEB4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27539AFAC;

  return v7(a1);
}

uint64_t sub_27539AFAC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_35_0();

  return v5();
}

uint64_t sub_27539B08C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27539B0C4()
{
  OUTLINED_FUNCTION_3();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_26_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_9(v4);

  return v7(v6);
}

void sub_27539B158()
{
  if (!qword_2809C3410[0])
  {
    v0 = sub_2753B66E8();
    if (!v1)
    {
      atomic_store(v0, qword_2809C3410);
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_8@<X0>(uint64_t a1@<X8>)
{
  v3[7] = v2;
  v3[4] = a1;
  v3[5] = v1;

  return sub_2753B7778();
}

void OUTLINED_FUNCTION_17_6()
{

  JUMPOUT(0x277C76100);
}

uint64_t OUTLINED_FUNCTION_18_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_2753B7398();
}

unint64_t OUTLINED_FUNCTION_21_6(uint64_t a1)
{
  *(v2 + 48) = a1;
  v4 = *(v1 + 80);

  return sub_275358C80();
}

uint64_t dispatch thunk of MusicDRMSession.add(asset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_27539B3DC;

  return v11(a1, a2, a3);
}

uint64_t sub_27539B3DC()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of MusicDRMSession.prepare(forRate:)(uint64_t a1, uint64_t a2, float a3)
{
  v7 = *(a2 + 16);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_27539B9B8;
  v10.n128_f32[0] = a3;

  return v12(a1, a2, v10);
}

void sub_27539B680()
{
  if (!qword_2809C34A0)
  {
    sub_2753277B8(255, &qword_2809C34A8, 0x277D7FB68);
    sub_2753277B8(255, &qword_2809C34B0, 0x277D7FC50);
    v0 = _s3DRMO24MusicDRMBehaviorTemplateVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C34A0);
    }
  }
}

uint64_t sub_27539B724()
{
  OUTLINED_FUNCTION_14_0();
  sub_2753B6288();
  *(v0 + 16) = sub_2753B6278();
  sub_27539B970(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v2 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_27539B7E4, v2, v1);
}

uint64_t sub_27539B7E4()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27539B844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27539B3DC;

  return sub_27539B724();
}

unint64_t sub_27539B8D4()
{
  result = qword_2809C34B8;
  if (!qword_2809C34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34B8);
  }

  return result;
}

uint64_t sub_27539B970(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27539B9C0()
{
  result = qword_2809C34C8;
  if (!qword_2809C34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34C8);
  }

  return result;
}

unint64_t sub_27539BA18()
{
  result = qword_2809C34D0;
  if (!qword_2809C34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34D0);
  }

  return result;
}

unint64_t sub_27539BA70()
{
  result = qword_2809C34D8;
  if (!qword_2809C34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34D8);
  }

  return result;
}

uint64_t sub_27539BAC4()
{
  sub_2753B6288();
  *(v0 + 16) = sub_2753B6278();
  sub_2752E5560();
  v2 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_27539BB58, v2, v1);
}

uint64_t sub_27539BB58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27539BBBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752E546C;

  return sub_27539BAC4();
}

unint64_t sub_27539BCB8()
{
  result = qword_2809C34E0;
  if (!qword_2809C34E0)
  {
    type metadata accessor for MusicPlayerServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34E0);
  }

  return result;
}

unint64_t sub_27539BD34()
{
  result = qword_2809C34E8;
  if (!qword_2809C34E8)
  {
    type metadata accessor for MusicPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34E8);
  }

  return result;
}

unint64_t sub_27539BD8C()
{
  result = qword_2809C34F0;
  if (!qword_2809C34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C34F0);
  }

  return result;
}

uint64_t sub_27539BE3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2753B6288();
  *(v1 + 24) = sub_2753B6278();
  sub_27539C318(&qword_2809C0748, MEMORY[0x277D64EF0]);
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_27539BF04, v3, v2);
}

uint64_t sub_27539BF04()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_2753B6C28();
  v3 = *(_s9PublisherO18_PublisherBehaviorVMa() + 20);
  type metadata accessor for MusicPlayerServer();
  *(v2 + v3) = swift_allocObject();
  v4 = v0[1];

  return v4();
}

uint64_t sub_27539BF94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E546C;

  return sub_27539BE3C(a1);
}

uint64_t _s9PublisherO18_PublisherBehaviorVMa()
{
  result = qword_2809C34F8;
  if (!qword_2809C34F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27539C08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2753B6C38();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_27539C14C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2753B6C38();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_27539C1F4()
{
  result = sub_2753B6C38();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicPlayerServer();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27539C318(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_27539C360()
{
  result = sub_27539C380();
  off_2809C3518 = result;
  return result;
}

uint64_t sub_27539C380()
{
  v0 = sub_2753B5D18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v43 - v6;
  type metadata accessor for CMTime(0);
  v9 = v8;
  sub_27539CB90(0, &qword_2809C3520, MEMORY[0x277D834F8]);
  sub_27539C934(&qword_2809C3528, type metadata accessor for CMTime);
  v50 = sub_2753B6C98();
  v10 = sub_2753B5D08();
  v11 = v10;
  v47 = *(v10 + 16);
  if (v47)
  {
    v43[1] = v9;
    v44 = v10;
    v49 = 0;
    v12 = 0;
    v53 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v52 = v1 + 16;
    v54 = v1 + 8;
    v13 = v47;
    v45 = v5;
    v46 = v1;
    while (v12 < *(v11 + 16))
    {
      (*(v1 + 16))(v7, v53 + *(v1 + 72) * v12, v0);
      sub_2753B5CD8();
      sub_27539C934(&qword_2809C3530, MEMORY[0x277D7EFE8]);
      v14 = sub_2753B6D68();
      v15 = *(v1 + 8);
      v15(v5, v0);
      if ((v14 & 1) == 0)
      {
        sub_2753B5CF8();
        v16 = sub_2753B6DE8();

        v51 = v16;
        if ((v16 & 0x100000000) == 0)
        {
          v17 = sub_2753B7298();
          v19 = v18;
          v21 = v20;
          sub_2753B5CC8();
          v23 = v22;
          sub_27539C97C(v49);
          v24 = v50;
          swift_isUniquelyReferenced_nonNull_native();
          v55 = v24;
          v48 = v17;
          v49 = v21;
          v25 = sub_275384438(v17, v19, v21);
          if (__OFADD__(*(v24 + 16), (v26 & 1) == 0))
          {
            goto LABEL_19;
          }

          v27 = v25;
          v28 = v26;
          sub_27539C98C();
          v29 = sub_2753B7478();
          v30 = v55;
          if (v29)
          {
            v31 = sub_275384438(v48, v19, v49);
            if ((v28 & 1) != (v32 & 1))
            {
              goto LABEL_21;
            }

            v27 = v31;
          }

          if ((v28 & 1) == 0)
          {
            sub_27539C7BC(&v55);
            v33 = v55;
            v30[(v27 >> 6) + 8] |= 1 << v27;
            v34 = (v30[6] + 24 * v27);
            v35 = v49;
            *v34 = v48;
            v34[1] = v19;
            v34[2] = v35;
            *(v30[7] + 8 * v27) = v33;
            v36 = v30[2];
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (v37)
            {
              goto LABEL_20;
            }

            v30[2] = v38;
          }

          v39 = v23;
          v50 = v30;
          v40 = v30[7] + 8 * v27;
          sub_27539CA54(v51, v39);
          v49 = sub_27539C7BC;
          v5 = v45;
          v1 = v46;
          v11 = v44;
          v13 = v47;
        }
      }

      ++v12;
      v15(v7, v0);
      if (v13 == v12)
      {

        v41 = v49;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_2753B7768();
    __break(1u);
  }

  else
  {

    v41 = 0;
LABEL_17:
    sub_27539C97C(v41);
    return v50;
  }

  return result;
}

uint64_t sub_27539C7BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2753B6C98();
  *a1 = result;
  return result;
}

uint64_t static DefaultDSPParameterProvider.smartTransitionDefaultParameterSchedule.getter()
{
  if (qword_2809C06F8 != -1)
  {
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for DefaultDSPParameterProvider(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27539C8FCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27539C934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27539C97C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_27539C98C()
{
  if (!qword_2809C3538)
  {
    type metadata accessor for CMTime(255);
    sub_27539CB90(255, &qword_2809C3520, MEMORY[0x277D834F8]);
    sub_27539C934(&qword_2809C3528, type metadata accessor for CMTime);
    v0 = sub_2753B7498();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3538);
    }
  }
}

unint64_t sub_27539CA54(unsigned int a1, float a2)
{
  v5 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v6 = sub_2753843F0(a1);
  v8 = v7 ^ 1;
  if (__OFADD__(v16[2], (v7 ^ 1) & 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6;
  v10 = v7;
  sub_27539CB90(0, &qword_2809C3540, MEMORY[0x277D843B8]);
  if (sub_2753B7478())
  {
    v11 = sub_2753843F0(a1);
    if ((v10 & 1) == (v12 & 1))
    {
      v9 = v11;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_2753B7768();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v10)
  {
    v13 = v16[7];
    v14 = *(v13 + 4 * v9);
    *(v13 + 4 * v9) = a2;
  }

  else
  {
    sub_275328BCC(v9, a1, v16, a2);
    v14 = 0;
  }

  *v2 = v16;
  return v14 | ((v8 & 1) << 32);
}

void sub_27539CB90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_SonicKit_MusicKit::SmartTransitionSongTime __swiftcall SmartTransitionSongTime.init(sourceTime:targetTime:)(Swift::Double sourceTime, Swift::Double targetTime)
{
  *v2 = sourceTime;
  v2[1] = targetTime;
  result.targetTime = targetTime;
  result.sourceTime = sourceTime;
  return result;
}

uint64_t FullSmartTransitionData.transitionStrategy.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t SmartTransitionData.fullTransitionData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x80uLL);
  memcpy(a1, v1, 0x80uLL);
  return sub_27539CD18(__dst, v4);
}

void *SmartTransitionData.outgoingSongAudioMix.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void *SmartTransitionData.incomingSongAudioMix.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t SmartTransitionData.outgoingSongTransitionData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), sizeof(__dst));
  memcpy(a1, (v1 + 144), 0x60uLL);
  return sub_27539CDF4(__dst, &v4);
}

uint64_t SmartTransitionData.incomingSongTransitionData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 240), sizeof(__dst));
  memcpy(a1, (v1 + 240), 0x60uLL);
  return sub_27539CDF4(__dst, &v4);
}

uint64_t SmartTransitionProvided.hashValue.getter()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

unint64_t sub_27539CF18()
{
  result = qword_2809C3548;
  if (!qword_2809C3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3548);
  }

  return result;
}

uint64_t sub_27539CF78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27539CF98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_27539CFE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_27539D020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27539D094(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_27539D0E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_27539D168(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_27539D1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartTransitionProvided(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x27539D318);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_8(__n128 *a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *a1 = a3;
  a1[1] = a4;
  a1[2].n128_f64[0] = a2;
}

uint64_t SmartTransitionData.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[28];
  v12 = v0[35];
  v13 = v0[34];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[40];
  if ((v0[21] & 1) == 0)
  {
    v10 = v0[19];
    v9 = v0[20];
  }

  sub_2753B7398();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x277C76100]();
  MEMORY[0x277C76100](v2, v3);
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x277C76100]();
  sub_2753B7198();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x277C76100]();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_3_9();
  sub_2753B7198();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x277C76100]();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_3_9();
  sub_2753B7198();
  OUTLINED_FUNCTION_2_11();
  MEMORY[0x277C76100]();
  return 0;
}

uint64_t SmartTransitionSongTime.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = [objc_allocWithZone(MEMORY[0x277CE6640]) init];
  [v3 setStyle_];
  sub_2753B7398();

  strcpy(v13, "(sourceTime: ");
  v4 = [v3 stringFromSeconds_];
  v5 = sub_2753B6D88();
  v7 = v6;

  MEMORY[0x277C76100](v5, v7);

  MEMORY[0x277C76100](0x746567726174202CLL, 0xEE00203A656D6954);
  v8 = [v3 stringFromSeconds_];
  v9 = sub_2753B6D88();
  v11 = v10;

  MEMORY[0x277C76100](v9, v11);

  MEMORY[0x277C76100](41, 0xE100000000000000);

  return v13[0];
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return sub_2753B7468();
}

void OUTLINED_FUNCTION_1_12()
{

  JUMPOUT(0x277C76100);
}

void OUTLINED_FUNCTION_3_9()
{

  JUMPOUT(0x277C76100);
}

uint64_t sub_27539D798(char a1)
{
  OUTLINED_FUNCTION_100();
  MEMORY[0x277C76A80]((a1 & 1u) + 1);
  return sub_2753B77D8();
}

uint64_t sub_27539D810(char a1)
{
  OUTLINED_FUNCTION_100();
  MEMORY[0x277C76A80](qword_2753CD398[a1]);
  return sub_2753B77D8();
}

uint64_t sub_27539D8A4(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_100();
  a2(v5, a1);
  return sub_2753B77D8();
}

uint64_t sub_27539D8F8(char a1)
{
  OUTLINED_FUNCTION_100();
  if (a1)
  {
    v2 = 24;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277C76A80](v2);
  return sub_2753B77D8();
}

uint64_t sub_27539D940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2753B5B48();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_27539D9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2753B5E78();
  v6 = OUTLINED_FUNCTION_2_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v13 = v12 - v11;
  v14 = sub_2753B5F98();
  v15 = OUTLINED_FUNCTION_2_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v22 = v21 - v20;
  (*(v8 + 16))(v13, a1, v5);
  sub_2753B5E98();
  if (v2)
  {
    return (*(v8 + 8))(a1, v5);
  }

  (*(v8 + 8))(a1, v5);
  return (*(v17 + 32))(a2, v22, v14);
}

void *sub_27539DB88@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v70 = sub_2753B6878();
  v6 = OUTLINED_FUNCTION_2_0(v70);
  v80 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_13();
  v79 = v10;
  OUTLINED_FUNCTION_4_9();
  v11 = sub_2753B5A18();
  v12 = OUTLINED_FUNCTION_2_0(v11);
  v76 = v13;
  v78 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_13();
  v74 = v16;
  OUTLINED_FUNCTION_4_9();
  v17 = sub_2753B59A8();
  v18 = OUTLINED_FUNCTION_2_0(v17);
  v72 = v19;
  v73 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_13();
  v71 = v22;
  OUTLINED_FUNCTION_4_9();
  v23 = sub_2753B5D68();
  v24 = OUTLINED_FUNCTION_2_0(v23);
  v68 = v25;
  v69 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_13();
  v67 = v28;
  OUTLINED_FUNCTION_4_9();
  v29 = sub_2753B5D78();
  v30 = OUTLINED_FUNCTION_2_0(v29);
  v85 = v31;
  v87 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_13();
  v83 = v34;
  OUTLINED_FUNCTION_4_9();
  v35 = sub_2753B5C48();
  v36 = OUTLINED_FUNCTION_2_0(v35);
  v82 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10();
  v42 = v41 - v40;
  v43 = sub_2753B5DE8();
  v44 = OUTLINED_FUNCTION_2_0(v43);
  v89 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_13();
  v48 = *(a3 + 16);
  v94[0] = *a3;
  LOBYTE(v94[1]) = v48;
  v50 = v49;
  result = sub_27539E7B4(a1, a2, v94, v49);
  if (!v91)
  {
    v66 = v42;
    v92 = v43;
    sub_2753B5DB8();
    if ((*(v85 + 88))(v83, v87) == *MEMORY[0x277D7EFF8])
    {
      (*(v85 + 96))(v83, v87);
      (*(v82 + 32))(v42, v83, v35);
      sub_2753A5884(v42, __src);
      sub_27539F7B4(a1, v98);
      memcpy(v97, v98, sizeof(v97));
      sub_27539FB28(v96);
      memcpy(v95, v96, sizeof(v95));
      v88 = v50;
      sub_2753B59C8();
      if ((*(v72 + 88))(v71, v73) == *MEMORY[0x277D7EF70])
      {
        (*(v72 + 96))(v71, v73);
        (*(v68 + 32))(v67, v71, v69);
        v53 = sub_2753B5D58();
        v84 = v54;
        v86 = v53;
        (*(v68 + 8))(v67, v69);
      }

      else
      {
        (*(v72 + 8))(v71, v73);
        v84 = 0;
        v86 = 0;
      }

      v55 = v74;
      sub_2753B5A28();
      v56 = sub_2753B5A08();
      v75 = *(v76 + 8);
      v75(v55, v78);
      v77 = sub_27539FD6C(v56, v86, v84);

      sub_2753B5A28();
      v57 = sub_2753B59F8();
      v75(v55, v78);
      v58 = sub_27539FD6C(v57, v86, v84);

      memcpy(v94, __src, 0x80uLL);
      memcpy(&v94[9], v97, 0x60uLL);
      *&v94[8] = v77;
      *(&v94[8] + 1) = v58;
      memcpy(&v94[15], v95, 0x60uLL);
      sub_2753B6868();
      sub_2753A2678(v94, v93);
      v59 = sub_2753B6858();
      v60 = sub_2753B7248();
      sub_2753A26D4(v94);
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v100 = v62;
        *v61 = 136446210;
        memcpy(v93, v94, sizeof(v93));
        v63 = SmartTransitionData.debugDescription.getter();
        v65 = sub_275314A34(v63, v64, &v100);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_2752E3000, v59, v60, "[ALC] - Transition Generation Complete: %{public}s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        MEMORY[0x277C77190](v62, -1, -1);
        MEMORY[0x277C77190](v61, -1, -1);
      }

      (*(v80 + 8))(v79, v70);
      (*(v82 + 8))(v66, v35);
      (*(v89 + 8))(v88, v92);
      memcpy(v93, v94, sizeof(v93));
      nullsub_1(v93);
      return memcpy(a4, v93, 0x150uLL);
    }

    else
    {
      (*(v85 + 8))(v83, v87);
      LOBYTE(v94[0]) = 1;
      sub_2753A2508();
      sub_2753A345C(&qword_2809C3080, sub_2753A2508);
      swift_allocError();
      v52 = sub_275391728();
      MEMORY[0x277C755D0](v94, 0xD000000000000030, 0x80000002753BDFB0, MEMORY[0x277D84F90], &type metadata for SmartTransitionRendererError, v52);
      swift_willThrow();
      return (*(v89 + 8))(v50, v43);
    }
  }

  return result;
}

uint64_t sub_27539E4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2753B5F98();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_27539E4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2753B5F98();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SmartTransitionRenderer()
{
  result = qword_2809C3550;
  if (!qword_2809C3550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27539E594()
{
  result = sub_2753B5F98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartTransitionRendererError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27539E6CCLL);
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

unint64_t sub_27539E708()
{
  result = qword_2809C3560;
  if (!qword_2809C3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3560);
  }

  return result;
}

unint64_t sub_27539E760()
{
  result = qword_2809C3568;
  if (!qword_2809C3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3568);
  }

  return result;
}

uint64_t sub_27539E7B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v134 = a1;
  v129 = a2;
  v103 = a4;
  v106 = sub_2753B5E88();
  v105 = *(v106 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A33B0();
  v107 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v108 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = &v103 - v11;
  v110 = sub_2753B5F88();
  v109 = *(v110 - 8);
  v12 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v117 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2753B59B8();
  v119 = *(v120 - 8);
  v14 = *(v119 + 64);
  v15 = MEMORY[0x28223BE20](v120);
  v115 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v132 = &v103 - v17;
  v126 = sub_2753B5F48();
  v116 = *(v126 - 8);
  v18 = *(v116 + 64);
  v19 = MEMORY[0x28223BE20](v126);
  v114 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v118 = &v103 - v21;
  v22 = sub_2753B5F68();
  v124 = *(v22 - 8);
  v125 = v22;
  v23 = *(v124 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v113 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v131 = &v103 - v26;
  v27 = sub_2753B5F58();
  v122 = *(v27 - 8);
  v123 = v27;
  v28 = *(v122 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v112 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v121 = &v103 - v31;
  v32 = sub_2753B5F28();
  v127 = *(v32 - 8);
  v128 = v32;
  v33 = *(v127 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v130 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v133 = &v103 - v36;
  v37 = sub_2753B5E28();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = sub_2753B5FB8();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = sub_2753B5CB8();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  sub_2753A3588(0, &qword_2809C35C8, MEMORY[0x277D7EFE0]);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v103 - v45;
  sub_2753A3588(0, &qword_2809C35D0, MEMORY[0x277D7F048]);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v51 = &v103 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v103 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = &v103 - v55;
  v58 = *a3;
  v57 = a3[1];
  v59 = *(a3 + 16);
  v60 = sub_2753B5F08();
  v136 = v56;
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v60);
  if (v59)
  {
    v62 = v135;
    v61 = v136;
  }

  else
  {
    sub_2753B5FC8();
    sub_2753B5E38();
    v66 = v135;
    sub_2753B5C98();
    if (v66)
    {
LABEL_6:
      v61 = v136;
      return sub_2753A3258(v61, &qword_2809C35D0, MEMORY[0x277D7F048]);
    }

    sub_2753B5C68();
    v62 = 0;
    v61 = v136;
    v89 = sub_2753B5C78();
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v89);
    sub_2753B5EF8();
    sub_2753A3258(v61, &qword_2809C35D0, MEMORY[0x277D7F048]);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v60);
    sub_2753A3508(v54, v61);
  }

  v63 = v134;
  sub_2753A0A78(v134, v61, v133);
  v64 = v131;
  v65 = v132;
  if (v62)
  {
    return sub_2753A3258(v61, &qword_2809C35D0, MEMORY[0x277D7F048]);
  }

  __swift_storeEnumTagSinglePayload(v51, 1, 1, v60);
  sub_2753A0A78(v129, v51, v130);
  sub_2753A3258(v51, &qword_2809C35D0, MEMORY[0x277D7F048]);
  v69 = v121;
  v68 = v122;
  v70 = v63;
  v71 = *(v122 + 104);
  v72 = v123;
  v71(v121, *MEMORY[0x277D7F078], v123);
  v73 = type metadata accessor for SmartTransitionRequestSongData();
  v74 = v70 + *(v73 + 40);
  if ((v74[8] & 1) == 0)
  {
    v75 = *v74;
    v76 = v134 + *(v73 + 44);
    v77 = *v76;
    v76[8];
    v78 = v112;
    sub_2753B5FC8();
    (*(v68 + 8))(v69, v72);
    v71(v78, *MEMORY[0x277D7F070], v72);
    (*(v68 + 32))(v69, v78, v72);
  }

  (*(v68 + 16))(v64, v69, v72);
  v79 = v124;
  v80 = v125;
  (*(v124 + 104))(v64, *MEMORY[0x277D7F080], v125);
  v81 = *MEMORY[0x277D7F060];
  v82 = sub_2753B5F38();
  v83 = v118;
  (*(*(v82 - 8) + 104))(v118, v81, v82);
  v84 = v116;
  v85 = v126;
  (*(v116 + 104))(v83, *MEMORY[0x277D7F068], v126);
  sub_2753A11DC(v134, v129, v65);
  (*(v79 + 16))(v113, v64, v80);
  (*(v84 + 16))(v114, v83, v85);
  (*(v119 + 16))(v115, v65, v120);
  v86 = v117;
  sub_2753B5F78();
  v90 = v125;
  v91 = v126;
  v92 = v111;
  sub_2753B5E58();
  v93 = v108;
  sub_2753A34A4(v92, v108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v94 = v105;
    v95 = v104;
    v96 = v106;
    (*(v105 + 32))(v104, v93, v106);
    v139 = 1;
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_2753B7398();
    MEMORY[0x277C76100](0xD00000000000003DLL, 0x80000002753BDFF0);
    sub_2753B7468();
    v97 = v138;
    v135 = v137;
    v98 = v119;
    sub_2753A2508();
    sub_2753A345C(&qword_2809C3080, sub_2753A2508);
    swift_allocError();
    v99 = sub_275391728();
    MEMORY[0x277C755D0](&v139, v135, v97, MEMORY[0x277D84F90], &type metadata for SmartTransitionRendererError, v99);
    swift_willThrow();
    (*(v94 + 8))(v95, v96);
    sub_2753A27BC(v111, sub_2753A33B0);
    (*(v109 + 8))(v117, v110);
    (*(v98 + 8))(v132, v120);
    (*(v84 + 8))(v118, v126);
    (*(v124 + 8))(v131, v125);
    (*(v122 + 8))(v121, v123);
    v87 = v128;
    v88 = *(v127 + 8);
    v88(v130, v128);
    v88(v133, v87);
    goto LABEL_6;
  }

  sub_2753A27BC(v92, sub_2753A33B0);
  (*(v109 + 8))(v86, v110);
  (*(v119 + 8))(v132, v120);
  (*(v84 + 8))(v118, v91);
  (*(v124 + 8))(v131, v90);
  (*(v122 + 8))(v121, v123);
  v100 = v128;
  v101 = *(v127 + 8);
  v101(v130, v128);
  v101(v133, v100);
  sub_2753A3258(v136, &qword_2809C35D0, MEMORY[0x277D7F048]);
  v102 = sub_2753B5DE8();
  return (*(*(v102 - 8) + 32))(v103, v93, v102);
}

uint64_t sub_27539F7B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *&v33 = a1;
  v3 = sub_2753B5A98();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A3588(0, &qword_2809C1848, MEMORY[0x277D2AAB8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_2753B5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B5A68();
  v15 = sub_2753B5A48();
  (*(v11 + 8))(v14, v10);
  v16 = v37;
  v17 = sub_2753A1840(v15);

  if (!v16)
  {
    v19 = v33 + *(type metadata accessor for SmartTransitionRequestSongData() + 20);
    v20 = *(type metadata accessor for SongTransitionInfo() + 24);
    v21 = sub_2753B6808();
    v37 = v17;
    v22 = v21;
    (*(*(v21 - 8) + 16))(v9, v19 + v20, v21);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v22);
    sub_2753A6648(v41);
    v23 = sub_2753A1AD8(v9, v41[0]);
    sub_2753A3258(v9, &qword_2809C1848, MEMORY[0x277D2AAB8]);
    sub_2753A6688(v41);
    v24 = v41[0];
    v25 = v41[1];
    sub_2753A6648(&v40);
    v33 = v40;
    sub_2753A66C8(&v39);
    v32 = v39;
    sub_2753A6708(v38);
    v26 = v38[0];
    v27 = v38[1];
    v28 = v34;
    sub_2753B5AA8();
    sub_2753A6748();
    v30 = v29;
    result = (*(v35 + 8))(v28, v36);
    *a2 = v37;
    *(a2 + 8) = v24;
    *(a2 + 16) = v25;
    *(a2 + 24) = 0;
    v31 = v32;
    *(a2 + 32) = v33;
    *(a2 + 48) = v31;
    *(a2 + 64) = v26;
    *(a2 + 72) = v27;
    *(a2 + 80) = v30;
    *(a2 + 88) = v23;
  }

  return result;
}

uint64_t sub_27539FB28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2753B5A98();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2753B5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B5A68();
  v11 = sub_2753B5A38();
  (*(v7 + 8))(v10, v6);
  v12 = v23;
  v13 = sub_2753A1840(v11);

  if (!v12)
  {
    sub_2753A679C(&v26);
    v23 = v26;
    sub_2753A67DC(&v25);
    v20 = v25;
    sub_2753A681C(v24);
    v15 = v24[0];
    v16 = v24[1];
    sub_2753B5AA8();
    sub_2753A6BA4();
    v18 = v17;
    result = (*(v21 + 8))(v5, v22);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v13;
    *(a1 + 24) = 1;
    v19 = v20;
    *(a1 + 32) = v23;
    *(a1 + 48) = v19;
    *(a1 + 64) = v15;
    *(a1 + 72) = v16;
    *(a1 + 80) = v18;
    *(a1 + 88) = 0;
  }

  return result;
}

id sub_27539FD6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a3;
  v94 = a2;
  v107 = sub_2753B5E28();
  v98 = *(v107 - 8);
  v101 = v98;
  v4 = v98[8];
  MEMORY[0x28223BE20](v107);
  v106 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A2728();
  v103 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v121 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2753B5BB8();
  v9 = *(v105 - 8);
  v100 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A3588(0, &qword_2809C3580, MEMORY[0x277D7EFB8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v113 = (&v90 - v14);
  v120 = sub_2753B5B48();
  v108 = *(v120 - 8);
  v15 = *(v108 + 64);
  v16 = MEMORY[0x28223BE20](v120);
  v102 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v90 - v18;
  v117 = sub_2753B5D18();
  v20 = *(v117 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v117);
  v116 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v115 = &v90 - v24;
  v25 = sub_2753B5AE8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v112 = &v90 - v32;
  MEMORY[0x28223BE20](v31);
  v92 = &v90 - v33;
  v93 = [objc_allocWithZone(MEMORY[0x277CE6538]) init];
  v109 = [objc_opt_self() audioMixInputParametersWithTrack_];
  [v109 setTrackID_];
  v34 = 0;
  v111 = a1;
  v119 = *(a1 + 16);
  v114 = (v26 + 16);
  v35 = (v20 + 8);
  v118 = v26;
  v110 = (v26 + 8);
  while (v119 != v34)
  {
    (*(v118 + 16))(v30, v111 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v34, v25);
    v36 = v115;
    sub_2753B5AD8();
    v37 = v116;
    sub_2753B5CD8();
    v38 = sub_2753B5CE8();
    v39 = *v35;
    v40 = v37;
    v41 = v117;
    (*v35)(v40, v117);
    v39(v36, v41);
    if (v38)
    {
      v42 = *(v118 + 32);
      v43 = v112;
      v42(v112, v30, v25);
      v90 = v25;
      v42(v92, v43, v25);
      v44 = sub_2753B5AB8();
      v45 = v113;
      sub_27539D940(v44, v113);
      v46 = v120;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v120);
      v91 = v44;
      if (EnumTagSinglePayload == 1)
      {
        sub_2753A3258(v45, &qword_2809C3580, MEMORY[0x277D7EFB8]);
        v48 = v104;
        v49 = v108;
      }

      else
      {
        (*(v108 + 32))(v19, v45, v46);
        v48 = v104;
        sub_2753B5B38();
        v50 = v121;
        sub_2753B5B98();
        v51 = v105;
        v119 = *(v9 + 8);
        (v119)(v48, v105);
        v52 = v101;
        v53 = v106;
        v54 = v107;
        v118 = v101[2];
        (v118)(v106, v50, v107);
        sub_2753A27BC(v50, sub_2753A2728);
        sub_2753B5E18();
        v56 = v55;
        v57 = v52 + 1;
        v58 = v52[1];
        (v58)(v53, v54);
        if (v56 != 0.0)
        {
          v101 = v57;
          sub_2753B5B18();
          v60 = v59;
          sub_2753B5B18();
          v62 = v61;
          v117 = sub_2753B7298();
          v116 = v63;
          sub_2753B5B38();
          sub_2753B5B98();
          (v119)(v48, v51);
          (v118)(v53, v121, v54);
          sub_2753A27BC(v121, sub_2753A2728);
          sub_2753B5E18();
          (v58)(v53, v54);
          sub_2753B7298();
          sub_2753B7228();
          *&v64 = v60;
          *&v65 = v62;
          [v109 setVolumeRampFromStartVolume:&v123 toEndVolume:v64 timeRange:v65];
        }

        v66 = v108;
        (*(v108 + 8))(v19, v120);
        v49 = v66;
        v44 = v91;
      }

      v67 = *(v44 + 16);
      if (v67)
      {
        v69 = *(v49 + 16);
        v68 = v49 + 16;
        v101 = v69;
        v70 = (v44 + ((*(v68 + 64) + 32) & ~*(v68 + 64)));
        ++v100;
        v96 = *(v68 + 56);
        v99 = (v98 + 2);
        ++v98;
        v97 = (v68 - 8);
        v119 = (v67 - 1);
        v108 = v68;
        v71 = v102;
        v72 = v106;
        v73 = v98;
        while (1)
        {
          v112 = v70;
          (v101)(v71);
          sub_2753B5B18();
          *&v75 = v74;
          sub_2753B5B28();
          *&v77 = v76;
          sub_2753B5B38();
          sub_2753B5B98();
          v114 = *v100;
          v78 = v105;
          v114(v48, v105);
          v115 = *v99;
          v79 = v107;
          (v115)(v72, v121, v107);
          sub_2753A27BC(v121, sub_2753A2728);
          sub_2753B5E18();
          v113 = *v73;
          (v113)(v72, v79);
          v118 = sub_2753B7298();
          v117 = v80;
          v116 = v81;
          sub_2753B5B38();
          (*v97)(v71, v120);
          sub_2753B5B98();
          v114(v48, v78);
          (v115)(v72, v121 + *(v103 + 36), v79);
          sub_2753A27BC(v121, sub_2753A2728);
          sub_2753B5E18();
          (v113)(v72, v79);
          sub_2753B7298();
          sub_2753B7228();
          v122[0] = v123;
          v122[1] = v124;
          v122[2] = v125;
          [v109 setVolumeRampFromStartVolume:v122 toEndVolume:COERCE_DOUBLE(__PAIR64__(DWORD1(v125) timeRange:{v75)), COERCE_DOUBLE(__PAIR64__(DWORD1(v124), v77))}];
          if (!v119)
          {
            break;
          }

          --v119;
          v70 = &v112[v96];
          v48 = v104;
        }
      }

      (*v110)(v92, v90);
      break;
    }

    ++v34;
    (*v110)(v30, v25);
  }

  sub_2753A39C0(v111, v94, v95);
  v83 = v109;
  if (v82)
  {
    v84 = v82;
    [v109 addEffect_];
  }

  sub_2753A32AC(0, &qword_2809C3588);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_2753CD240;
  *(v85 + 32) = v83;
  sub_2753A2814();
  v86 = v83;
  v87 = sub_2753B6FC8();

  v88 = v93;
  [v93 setInputParameters_];

  return v88;
}

uint64_t sub_2753A0A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v74 = a3;
  sub_2753A3588(0, &qword_2809C35D0, MEMORY[0x277D7F048]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v66 - v6;
  sub_2753A3588(0, &qword_2809C35D8, MEMORY[0x277D7F058]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v66 - v9;
  sub_2753A3588(0, &qword_2809C1850, MEMORY[0x277D2A988]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v66 - v12;
  sub_2753A3588(0, &qword_2809C1848, MEMORY[0x277D2AAB8]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v66 - v15;
  v17 = sub_2753B5EB8();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  MEMORY[0x28223BE20](v17);
  v78 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D2AC90];
  sub_2753A3588(0, &qword_2809C1288, MEMORY[0x277D2AC90]);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v75 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v66 - v28;
  v82 = sub_2753B5EC8();
  v30 = *(v82 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v82);
  v67 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v66 - v34;
  v37 = *a1;
  v36 = a1[1];

  v80 = v35;
  sub_2753B5ED8();
  v38 = type metadata accessor for SmartTransitionRequestSongData();
  v39 = a1 + v38[5];
  v40 = type metadata accessor for SongTransitionInfo();
  sub_2753A35DC(&v39[v40[8]], v29, &qword_2809C1288, v20);
  v41 = v38[6];
  v70 = a1;
  LODWORD(v41) = *(a1 + v41);
  v81 = v30;
  v77 = v29;
  if (v41 == 1)
  {
    sub_2753A35DC(v29, v27, &qword_2809C1288, MEMORY[0x277D2AC90]);
  }

  else
  {
    v42 = sub_2753B6818();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v42);
  }

  v43 = v40[6];
  v44 = *&v39[v40[7]];
  v45 = *v39;
  v46 = sub_2753B6808();
  (*(*(v46 - 8) + 16))(v16, &v39[v43], v46);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v46);
  v47 = v40[5];
  v48 = sub_2753B67C8();
  v49 = &v39[v47];
  v50 = v76;
  (*(*(v48 - 8) + 16))(v76, v49, v48);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v48);
  sub_2753A35DC(v27, v75, &qword_2809C1288, MEMORY[0x277D2AC90]);

  v51 = v78;
  v52 = v79;
  sub_2753B5EA8();
  if (v52)
  {
    v59 = v82;
    v61 = v80;
    v60 = v81;
    v62 = v77;
    v63 = MEMORY[0x277D2AC90];
    sub_2753A3258(v27, &qword_2809C1288, MEMORY[0x277D2AC90]);
    sub_2753A3258(v62, &qword_2809C1288, v63);
    return (*(v60 + 8))(v61, v59);
  }

  else
  {
    (*(v81 + 16))(v67, v80, v82);
    v53 = v71;
    v54 = v70 + v38[9];
    v79 = *v54;
    LODWORD(v76) = v54[8];
    v56 = v68;
    v55 = v69;
    (*(v68 + 16))(v71, v51, v69);
    v57 = *MEMORY[0x277D7F050];
    v58 = sub_2753B5F18();
    (*(*(v58 - 8) + 104))(v53, v57, v58);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v58);
    sub_2753A35DC(v73, v72, &qword_2809C35D0, MEMORY[0x277D7F048]);
    sub_2753B5EE8();
    (*(v56 + 8))(v51, v55);
    v64 = MEMORY[0x277D2AC90];
    sub_2753A3258(v27, &qword_2809C1288, MEMORY[0x277D2AC90]);
    sub_2753A3258(v77, &qword_2809C1288, v64);
    return (*(v81 + 8))(v80, v82);
  }
}

uint64_t sub_2753A11DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v5 = sub_2753B6878();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v44 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = *MEMORY[0x277D7EF80];
  v18 = sub_2753B59B8();
  v19 = *(v18 - 8);
  v49 = *(v19 + 104);
  v50 = a3;
  v49(a3, v17, v18);
  result = type metadata accessor for SmartTransitionRequestSongData();
  v21 = result;
  v22 = *(result + 24);
  v23 = &off_27A64A000;
  if (*(a1 + v22) == 1 && (*(a1 + *(result + 32)) & 1) != 0 || *(v51 + v22) == 1 && *(v51 + *(result + 32)) == 1)
  {
    v46 = v6;
    if (!MSVDeviceOSIsInternalInstall())
    {
      goto LABEL_9;
    }

    v24 = [objc_opt_self() standardUserDefaults];
    v25 = sub_2753B6D78();
    v45 = v5;
    v26 = v25;
    v27 = [v24 BOOLForKey_];

    v5 = v45;
    if (v27)
    {
      sub_2753B6868();
      v28 = sub_2753B6858();
      v29 = sub_2753B7248();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2752E3000, v28, v29, "[ALC] - Spatialized asset missing edit list transition complexity downgrade overridden", v30, 2u);
        v14 = v16;
LABEL_11:
        v6 = v46;
        MEMORY[0x277C77190](v30, -1, -1);
        v5 = v45;
LABEL_14:

        result = (*(v6 + 8))(v14, v5);
        v23 = &off_27A64A000;
        goto LABEL_15;
      }

      v14 = v16;
    }

    else
    {
LABEL_9:
      v31 = v50;
      (*(v19 + 8))(v50, v18);
      v49(v31, *MEMORY[0x277D7EF78], v18);
      sub_2753B6868();
      v28 = sub_2753B6858();
      v32 = sub_2753B7248();
      if (os_log_type_enabled(v28, v32))
      {
        v45 = v5;
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2752E3000, v28, v32, "[ALC] - Transition complexity downgraded to .crossFadeWithEffects due to spatialized asset with missing edit list", v30, 2u);
        goto LABEL_11;
      }
    }

    v6 = v46;
    goto LABEL_14;
  }

LABEL_15:
  v33 = *(v21 + 28);
  if (*(a1 + v33) != 1 || (*(v51 + v33) & 1) == 0)
  {
    if (MSVDeviceOSIsInternalInstall() && (v34 = [objc_opt_self() v23[281]], v35 = sub_2753B6D78(), v36 = objc_msgSend(v34, sel_BOOLForKey_, v35), v34, v35, v36))
    {
      v37 = v47;
      sub_2753B6868();
      v38 = sub_2753B6858();
      v39 = sub_2753B7248();
      if (!os_log_type_enabled(v38, v39))
      {
        v41 = v37;
        goto LABEL_24;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2752E3000, v38, v39, "[ALC] - Non-subscription transition complexity downgrade overridden", v40, 2u);
      v41 = v37;
    }

    else
    {
      v42 = v50;
      (*(v19 + 8))(v50, v18);
      v49(v42, *MEMORY[0x277D7EF88], v18);
      v41 = v48;
      sub_2753B6868();
      v38 = sub_2753B6858();
      v43 = sub_2753B7248();
      if (!os_log_type_enabled(v38, v43))
      {
LABEL_24:

        return (*(v6 + 8))(v41, v5);
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2752E3000, v38, v43, "[ALC] - Transition complexity downgraded to .fallback due to both items not being subscription items", v40, 2u);
    }

    MEMORY[0x277C77190](v40, -1, -1);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_2753A1840(uint64_t a1)
{
  v28 = sub_2753B5BB8();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2753B5BD8();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v22[1] = v1;
    v30 = MEMORY[0x277D84F90];
    sub_27538823C(0, v10, 0);
    v11 = v30;
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v23 = *(v12 + 56);
    v24 = v13;
    v15 = (v3 + 8);
    v25 = v12;
    v16 = (v12 - 8);
    do
    {
      v17 = v26;
      v24(v9, v14, v26);
      v18 = v27;
      sub_2753B5BC8();
      sub_2753A1FC0(v18, __src);
      (*v15)(v18, v28);
      (*v16)(v9, v17);
      v30 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_27538823C(v19 > 1, v20 + 1, 1);
        v11 = v30;
      }

      *(v11 + 16) = v20 + 1;
      memcpy((v11 + 96 * v20 + 32), __src, 0x60uLL);
      v14 += v23;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {

      return 0;
    }
  }

  return v11;
}

uint64_t sub_2753A1AD8(uint64_t a1, double a2)
{
  sub_2753A3588(0, &qword_2809C35A8, MEMORY[0x277D2A9B8]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_2753B67E8();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D2AAB8];
  sub_2753A3588(0, &qword_2809C1848, MEMORY[0x277D2AAB8]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v44 - v15;
  v17 = sub_2753B6808();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A35DC(a1, v16, &qword_2809C1848, v12);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_2753B67F8();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      (*(v18 + 8))(v21, v17);
      v22 = &qword_2809C35A8;
      v23 = MEMORY[0x277D2A9B8];
      v24 = v7;
      goto LABEL_5;
    }

    (*(v45 + 32))(v11, v7, v8);
    v26 = sub_2753B67D8();
    v27 = *(v26 + 16);
    v44 = v26;
    if (v27)
    {
      v28 = (v26 + 32);
      v29 = MEMORY[0x277D84F90];
      do
      {
        v30 = *v28;
        if (*v28 < a2)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_27538825C(0, *(v29 + 16) + 1, 1);
            v29 = v46;
          }

          v33 = *(v29 + 16);
          v32 = *(v29 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_27538825C(v32 > 1, v33 + 1, 1);
            v29 = v46;
          }

          *(v29 + 16) = v33 + 1;
          *(v29 + 8 * v33 + 32) = v30;
        }

        ++v28;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v46 = v29;

    sub_2753A260C(&v46);

    v35 = sub_2753A2470(10, v46);
    v37 = v36;
    v39 = v38;
    if (v38)
    {
      v44 = v34;
      sub_2753B7728();
      swift_unknownObjectRetain_n();
      v41 = swift_dynamicCastClass();
      if (!v41)
      {
        swift_unknownObjectRelease();
        v41 = MEMORY[0x277D84F90];
      }

      v42 = *(v41 + 16);

      if (__OFSUB__(v39 >> 1, v37))
      {
        __break(1u);
      }

      else if (v42 == (v39 >> 1) - v37)
      {
        v25 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v25)
        {
LABEL_26:
          (*(v45 + 8))(v11, v8);
          (*(v18 + 8))(v21, v17);
          return v25;
        }

        v25 = MEMORY[0x277D84F90];
LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      v34 = v44;
    }

    sub_2753A2858(v35, v34, v37, v39);
    v25 = v40;
    goto LABEL_25;
  }

  v22 = &qword_2809C1848;
  v23 = MEMORY[0x277D2AAB8];
  v24 = v16;
LABEL_5:
  sub_2753A3258(v24, v22, v23);
  return MEMORY[0x277D84F90];
}

void *sub_2753A1FC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v40 = sub_2753B5E28();
  v39 = *(v40 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A2728();
  v6 = *(v5 - 8);
  v41 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2753B5FB8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753A31C4();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B5BA8();
  v32 = v10[2];
  v32(v13, v18, v9);
  sub_2753A27BC(v18, sub_2753A31C4);
  sub_2753B5FA8();
  v19 = v10[1];
  v19(v13, v9);
  v36 = sub_2753B7298();
  v35 = v20;
  v34 = v21;
  v33 = a1;
  sub_2753B5BA8();
  v32(v13, &v18[*(v15 + 44)], v9);
  sub_2753A27BC(v18, sub_2753A31C4);
  sub_2753B5FA8();
  v19(v13, v9);
  sub_2753B7298();
  sub_2753B7228();
  v22 = v37;
  sub_2753B5B98();
  v23 = v39;
  v24 = *(v39 + 16);
  v25 = v38;
  v26 = v40;
  v24(v38, v22, v40);
  sub_2753A27BC(v22, sub_2753A2728);
  sub_2753B5E18();
  v27 = *(v23 + 8);
  v27(v25, v26);
  sub_2753B7298();
  v39 = v28;
  v36 = v29;
  sub_2753B5B98();
  v24(v25, v22 + *(v41 + 44), v26);
  sub_2753A27BC(v22, sub_2753A2728);
  sub_2753B5E18();
  v27(v25, v26);
  sub_2753B7298();
  sub_2753B7228();
  __src[0] = v43;
  __src[1] = v44;
  __src[2] = v45;
  return memcpy(v42, __src, 0x60uLL);
}

int64_t sub_2753A2470(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2753A3364(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2753A32F8(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_2753A2508()
{
  if (!qword_2809C3070)
  {
    sub_275391728();
    v0 = sub_2753B6308();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3070);
    }
  }
}

uint64_t sub_2753A260C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2753B365C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2753A2924(v6);
  *a1 = v2;
  return result;
}

void sub_2753A2728()
{
  if (!qword_2809C3570)
  {
    sub_2753B5E28();
    sub_2753A345C(&qword_2809C3578, MEMORY[0x277D7F020]);
    v0 = sub_2753B6D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3570);
    }
  }
}

uint64_t sub_2753A27BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2753A2814()
{
  result = qword_2809C3590;
  if (!qword_2809C3590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C3590);
  }

  return result;
}

void sub_2753A2858(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_2753A32AC(0, &qword_2809C35B0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 8);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_2753A2924(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
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
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2753A2A74(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_2753A2A18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2753A2A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2753A2A74(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_275384E68();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_275384E68();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_2753A3050((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_2753A2F24(&v80, *a1, a3);
LABEL_89:
}

uint64_t sub_2753A2F24(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2753B20A8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2753A3050((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2753A3050(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_2753858F4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_2753858F4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

void sub_2753A31C4()
{
  if (!qword_2809C3598)
  {
    sub_2753B5FB8();
    sub_2753A345C(&qword_2809C35A0, MEMORY[0x277D7F088]);
    v0 = sub_2753B6D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3598);
    }
  }
}

uint64_t sub_2753A3258(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2753A3588(0, a2, a3);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_2753A32AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2753B76C8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2753A32F8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2753A3364(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_2753A33B0()
{
  if (!qword_2809C35B8)
  {
    sub_2753B5DE8();
    sub_2753B5E88();
    sub_2753A345C(&qword_2809C35C0, MEMORY[0x277D7F038]);
    v0 = sub_2753B77E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C35B8);
    }
  }
}

uint64_t sub_2753A345C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2753A34A4(uint64_t a1, uint64_t a2)
{
  sub_2753A33B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2753A3508(uint64_t a1, uint64_t a2)
{
  sub_2753A3588(0, &qword_2809C35D0, MEMORY[0x277D7F048]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2753A3588(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2753B72A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2753A35DC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2753A3588(0, a3, a4);
  OUTLINED_FUNCTION_9(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2753A367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SongTransitionInfo();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2753A3718(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SongTransitionInfo();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SmartTransitionRequestSongData()
{
  result = qword_2809C35E0;
  if (!qword_2809C35E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2753A37E4()
{
  type metadata accessor for SongTransitionInfo();
  if (v0 <= 0x3F)
  {
    sub_2753A388C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2753A388C()
{
  if (!qword_2809C35F0)
  {
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C35F0);
    }
  }
}

uint64_t sub_2753A38DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_275385670(*(a1 + 16), 0);
  v4 = sub_2753A532C(&v6, v3 + 4, v1, a1);

  sub_2753A5478();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_2753A470C(&v6);
  return v6;
}

void sub_2753A39C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v46 = a2;
    v47 = a3;

    v4 = sub_2753A3DE0(a1);
    v5 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
    v6 = sub_2753A38DC(v4);
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v6 + 32;
      v50 = v6;
      v51 = v4;
      v48 = v6 + 32;
      v49 = *(v6 + 16);
      while (v9 < *(v7 + 16))
      {
        if (*(v4 + 16))
        {
          v11 = (v10 + 24 * v9);
          v53 = v11[1];
          v54 = *v11;
          v55 = v11[2];
          v12 = sub_275384438(*v11, v53, v55);
          if (v13)
          {
            v14 = *(*(v4 + 56) + 8 * v12);
            v15 = *(v14 + 16);
            if (v15)
            {
              v52 = v9;
              v61 = v5;

              sub_2753B7438();
              v17 = sub_2753A542C(v14);
              v19 = v18;
              v20 = 0;
              v60 = v14 + 64;
              v57 = v18;
              v56 = v14 + 72;
              while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v14 + 32))
              {
                v21 = v17 >> 6;
                if ((*(v60 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
                {
                  goto LABEL_34;
                }

                if (*(v14 + 36) != v19)
                {
                  goto LABEL_35;
                }

                v59 = v16;
                v22 = *(*(v14 + 48) + 4 * v17);
                v23 = *(*(v14 + 56) + 4 * v17);
                v24 = objc_allocWithZone(MEMORY[0x277CE64A0]);
                LODWORD(v25) = v23;
                [v24 initWithFourCharCode:v22 value:v25];
                sub_2753B7418();
                v26 = *(v61 + 16);
                sub_2753B7448();
                sub_2753B7458();
                v27 = sub_2753B7428();
                v35 = 1 << *(v14 + 32);
                if (v17 >= v35)
                {
                  goto LABEL_36;
                }

                v36 = *(v60 + 8 * v21);
                if ((v36 & (1 << v17)) == 0)
                {
                  goto LABEL_37;
                }

                if (*(v14 + 36) != v19)
                {
                  goto LABEL_38;
                }

                v37 = v36 & (-2 << (v17 & 0x3F));
                if (v37)
                {
                  v35 = __clz(__rbit64(v37)) | v17 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v38 = v21 << 6;
                  v39 = v21 + 1;
                  v40 = (v56 + 8 * v21);
                  while (v39 < (v35 + 63) >> 6)
                  {
                    v42 = *v40++;
                    v41 = v42;
                    v38 += 64;
                    ++v39;
                    if (v42)
                    {
                      OUTLINED_FUNCTION_4_10(v27, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
                      v35 = __clz(__rbit64(v41)) + v38;
                      goto LABEL_23;
                    }
                  }

                  OUTLINED_FUNCTION_4_10(v27, v28, v29, v30, v31, v32, v33, v34, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
                }

LABEL_23:
                v16 = 0;
                ++v20;
                v17 = v35;
                v19 = v57;
                if (v20 == v15)
                {

                  v43 = v61;
                  v7 = v50;
                  v4 = v51;
                  v5 = MEMORY[0x277D84F90];
                  v10 = v48;
                  v8 = v49;
                  v9 = v52;
                  goto LABEL_26;
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
              break;
            }

            v43 = v5;
LABEL_26:
            sub_2753277B8(0, &qword_2809C36D0, 0x277CE64A8);
            v44 = sub_2753A464C(v43, v54, v53, v55);
            MEMORY[0x277C76290]();
            if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2753B7018();
            }

            sub_2753B7068();
          }
        }

        if (++v9 == v8)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_32:

      sub_2753277B8(0, &qword_2809C35F8, 0x277CCABB0);
      sub_2753A489C();
      sub_2753A4904();
      sub_2753B6C98();
      v45 = objc_allocWithZone(MEMORY[0x277CE6498]);
      sub_2753A4778();
    }
  }
}

uint64_t sub_2753A3DE0(unint64_t a1)
{
  v110 = sub_2753B5E28();
  v2 = OUTLINED_FUNCTION_2_0(v110);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10();
  v109 = v8 - v7;
  OUTLINED_FUNCTION_4_9();
  v108 = sub_2753B5B08();
  v9 = OUTLINED_FUNCTION_2_0(v108);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v107 = v15 - v14;
  OUTLINED_FUNCTION_4_9();
  v106 = sub_2753B5B78();
  v16 = OUTLINED_FUNCTION_2_0(v106);
  v114 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10();
  v105 = (v21 - v20);
  OUTLINED_FUNCTION_4_9();
  v22 = sub_2753B5D18();
  v23 = OUTLINED_FUNCTION_2_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v87 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v97 = &v86 - v31;
  MEMORY[0x28223BE20](v30);
  v96 = &v86 - v32;
  OUTLINED_FUNCTION_4_9();
  v98 = sub_2753B5AE8();
  v33 = OUTLINED_FUNCTION_2_0(v98);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10();
  isUniquelyReferenced_nonNull_native = v39 - v38;
  if (qword_2809C06F8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v41 = off_2809C3518;
  v95 = *(a1 + 16);
  if (!v95)
  {

    return v41;
  }

  v94 = v22;
  v43 = *(v35 + 2);
  v42 = v35 + 16;
  v92 = v43;
  v91 = a1 + ((v42[64] + 32) & ~v42[64]);
  v44 = (v25 + 8);
  v103 = (v11 + 8);
  v104 = v114 + 16;
  v101 = v114 + 8;
  v102 = (v4 + 1);
  v88 = (v42 - 8);
  v93 = v42;
  v90 = *(v42 + 7);

  v45 = 0;
  v46 = 0;
  v47 = v98;
  v89 = isUniquelyReferenced_nonNull_native;
  v100 = (v25 + 8);
  while (1)
  {
    v99 = v46;
    v92(isUniquelyReferenced_nonNull_native, v91 + v90 * v46, v47);
    v35 = v96;
    sub_2753B5AD8();
    v48 = v97;
    sub_2753B5CD8();
    sub_27539C934(&qword_2809C3530, MEMORY[0x277D7EFE8]);
    v11 = v94;
    v49 = sub_2753B6D68();
    v25 = *v44;
    (*v44)(v48, v11);
    (v25)(v35, v11);
    if (v49)
    {
      goto LABEL_26;
    }

    v22 = v87;
    sub_2753B5AD8();
    sub_2753B5CF8();
    (v25)(v22, v11);
    v50 = sub_2753B6DE8();

    v115 = v50;
    if ((v50 & 0x100000000) != 0)
    {
      goto LABEL_26;
    }

    v4 = sub_2753B5AC8();
    v113 = v4[2];
    if (v113)
    {
      break;
    }

LABEL_25:

LABEL_26:
    v47 = v98;
    v84 = v99 + 1;
    isUniquelyReferenced_nonNull_native = v89;
    (*v88)(v89, v98);
    v46 = v84;
    if (v84 == v95)
    {
      sub_27539C97C(v45);
      return v41;
    }
  }

  type metadata accessor for CMTime(0);
  v86 = v51;
  a1 = 0;
  v52 = *(v114 + 80);
  v111 = v4;
  v112 = v4 + ((v52 + 32) & ~v52);
  while (1)
  {
    if (a1 >= v4[2])
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v53 = v114;
    v54 = v45;
    v55 = v105;
    v22 = v106;
    (*(v114 + 16))(v105, &v112[*(v114 + 72) * a1], v106);
    v56 = v107;
    sub_2753B5B58();
    v57 = v109;
    sub_2753B5AF8();
    (*v103)(v56, v108);
    sub_2753B5E18();
    (*v102)(v57, v110);
    v11 = sub_2753B7298();
    v25 = v58;
    v35 = v59;
    v4 = v55;
    sub_2753B5B68();
    v61 = v60;
    (*(v53 + 8))(v55, v22);
    sub_27539C97C(v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116[0] = v41;
    v62 = OUTLINED_FUNCTION_3_10();
    if (__OFADD__(v41[2], (v63 & 1) == 0))
    {
      goto LABEL_31;
    }

    v64 = v62;
    v22 = v63;
    sub_27539C98C();
    v65 = sub_2753B7478();
    v41 = v116[0];
    if (v65)
    {
      v66 = OUTLINED_FUNCTION_3_10();
      if ((v22 & 1) != (v67 & 1))
      {
        goto LABEL_36;
      }

      v64 = v66;
    }

    if ((v22 & 1) == 0)
    {
      v4 = HIDWORD(v25);
      sub_27539C7BC(v116);
      v68 = v116[0];
      v41[(v64 >> 6) + 8] |= 1 << v64;
      v69 = (v41[6] + 24 * v64);
      *v69 = v11;
      v69[1] = v25;
      v69[2] = v35;
      *(v41[7] + 8 * v64) = v68;
      v70 = v41[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_33;
      }

      v41[2] = v72;
    }

    isUniquelyReferenced_nonNull_native = v41[7];
    v73 = *(isUniquelyReferenced_nonNull_native + 8 * v64);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v116[0] = *(isUniquelyReferenced_nonNull_native + 8 * v64);
    v4 = v116[0];
    v74 = sub_2753843F0(v115);
    v76 = v4[2];
    v77 = (v75 & 1) == 0;
    v35 = (v76 + v77);
    if (__OFADD__(v76, v77))
    {
      goto LABEL_32;
    }

    v25 = v74;
    v11 = v75;
    sub_27539CB90(0, &qword_2809C3540, MEMORY[0x277D843B8]);
    v4 = v116;
    if (sub_2753B7478())
    {
      break;
    }

LABEL_20:
    v80 = v61;
    v81 = v116[0];
    if (v11)
    {
      *(*(v116[0] + 56) + 4 * v25) = v80;
    }

    else
    {
      *(v116[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      *(v81[6] + 4 * v25) = v115;
      *(v81[7] + 4 * v25) = v80;
      v82 = v81[2];
      v71 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v71)
      {
        goto LABEL_34;
      }

      v81[2] = v83;
    }

    ++a1;
    *(isUniquelyReferenced_nonNull_native + 8 * v64) = v81;
    v45 = sub_27539C7BC;
    v44 = v100;
    v4 = v111;
    if (v113 == a1)
    {
      goto LABEL_25;
    }
  }

  v4 = v116[0];
  v78 = sub_2753843F0(v115);
  if ((v11 & 1) == (v79 & 1))
  {
    v25 = v78;
    goto LABEL_20;
  }

LABEL_36:
  result = sub_2753B7768();
  __break(1u);
  return result;
}

id sub_2753A464C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2753277B8(0, &qword_2809C36D8, 0x277CE64A0);
  v9 = sub_2753B6FC8();

  v12 = a2;
  v13 = v5;
  v14 = v7;
  v15 = a4;
  v10 = [v8 initWithParameters:v9 at:&v12];

  return v10;
}

uint64_t sub_2753A470C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2753B3670(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_2753A496C(v5);
  *a1 = v2;
  return result;
}

id sub_2753A4778()
{
  v1 = sub_2753B6D78();

  sub_2753277B8(0, &qword_2809C35F8, 0x277CCABB0);
  sub_2753A489C();
  sub_2753A4904();
  v2 = sub_2753B6C68();

  sub_2753277B8(0, &qword_2809C36D0, 0x277CE64A8);
  v3 = sub_2753B6FC8();

  v4 = sub_2753B6D78();

  v5 = [v0 initWithDSPGraphText:v1 properties:v2 parameterSchedule:v3 identifier:v4];

  return v5;
}

unint64_t sub_2753A489C()
{
  result = qword_2809C3600;
  if (!qword_2809C3600)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809C3600);
  }

  return result;
}

unint64_t sub_2753A4904()
{
  result = qword_2809C36C8;
  if (!qword_2809C36C8)
  {
    sub_2753277B8(255, &qword_2809C35F8, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C36C8);
  }

  return result;
}

uint64_t sub_2753A496C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
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
        type metadata accessor for CMTime(0);
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2753A4B68(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_2753A4A64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2753A4A64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      v10 = *v9;
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v9[2];
      v14 = v8;
      v15 = v7;
      do
      {
        v16 = *v15;
        v17 = *(v15 + 16);
        v18 = *(v15 + 8);
        v19 = *(v15 + 12) << 32;
        result = sub_2753B7268();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v21 = *(v15 + 32);
        v20 = *(v15 + 36);
        v22 = *(v15 + 40);
        v23 = *(v15 + 16);
        result = *(v15 + 24);
        *(v15 + 24) = *v15;
        *(v15 + 40) = v23;
        *v15 = result;
        *(v15 + 8) = v21;
        *(v15 + 12) = v20;
        *(v15 + 16) = v22;
        v15 -= 24;
      }

      while (!__CFADD__(v14++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2753A4B68(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_89:
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_91:
      v106 = v6 + 16;
      v107 = *(v6 + 2);
      while (v107 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_127;
        }

        v108 = v6;
        v6 += 16 * v107;
        v109 = *v6;
        v110 = &v106[2 * v107];
        v111 = *(v110 + 1);
        sub_2753A5178((*a3 + 24 * *v6), (*a3 + 24 * *v110), *a3 + 24 * v111, v116);
        if (v118)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_115;
        }

        if (v107 - 2 >= *v106)
        {
          goto LABEL_116;
        }

        *v6 = v109;
        *(v6 + 1) = v111;
        v112 = *v106 - v107;
        if (*v106 < v107)
        {
          goto LABEL_117;
        }

        v118 = 0;
        v107 = *v106 - 1;
        sub_2753B219C(v110 + 16, v112, v110);
        *v106 = v107;
        v6 = v108;
      }

LABEL_99:

      return;
    }

LABEL_124:
    v6 = sub_2753B20A8(v6);
    goto LABEL_91;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = (*a3 + 24 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = (*a3 + 24 * v7);
      v13 = 24 * v7;
      v14 = *v12;
      v15 = v12[1];
      v16 = v12[2];
      v17 = sub_2753B7268();
      v18 = v12 + 8;
      v19 = v7 + 2;
      while (1)
      {
        v20 = v19;
        if (++v5 >= v4)
        {
          break;
        }

        v22 = *(v18 - 3);
        v21 = *(v18 - 2);
        v23 = *(v18 - 1);
        v24 = *v18;
        v25 = *(v18 - 5);
        v26 = *(v18 - 4);
        v27 = sub_2753B7268();
        v18 += 3;
        v19 = v20 + 1;
        if ((v17 & 1) != (v27 & 1))
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v5 = v4;
      if ((v17 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v5 < v7)
      {
        goto LABEL_121;
      }

      if (v7 < v5)
      {
        if (v4 >= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v4;
        }

        v29 = 24 * v28 - 8;
        v30 = v5;
        v31 = v7;
        do
        {
          if (v31 != --v30)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v33 = (v32 + v13);
            v34 = (v32 + v29);
            v35 = *v33;
            v36 = v33[2];
            v37 = v33[1];
            v38 = *v34;
            *v33 = *(v34 - 1);
            v33[2] = v38;
            *(v34 - 2) = v35;
            *(v34 - 1) = v37;
            *v34 = v36;
          }

          ++v31;
          v29 -= 24;
          v13 += 24;
        }

        while (v31 < v30);
      }
    }

LABEL_20:
    v39 = a3[1];
    if (v5 < v39)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_120;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_37:
    if (v5 < v7)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v6 + 2);
      sub_275384E68();
      v6 = v104;
    }

    v62 = *(v6 + 2);
    v63 = v62 + 1;
    if (v62 >= *(v6 + 3) >> 1)
    {
      sub_275384E68();
      v6 = v105;
    }

    *(v6 + 2) = v63;
    v64 = v6 + 32;
    v65 = &v6[16 * v62 + 32];
    *v65 = v7;
    *(v65 + 1) = v5;
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v62)
    {
      while (1)
      {
        v66 = v63 - 1;
        v67 = &v64[16 * v63 - 16];
        v68 = &v6[16 * v63];
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v69 = *(v6 + 4);
          v70 = *(v6 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_57:
          if (v72)
          {
            goto LABEL_106;
          }

          v84 = *v68;
          v83 = *(v68 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_109;
          }

          v88 = *(v67 + 1);
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_112;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_114;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              v66 = v63 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v63 < 2)
        {
          goto LABEL_108;
        }

        v91 = *v68;
        v90 = *(v68 + 1);
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_72:
        if (v87)
        {
          goto LABEL_111;
        }

        v93 = *v67;
        v92 = *(v67 + 1);
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_113;
        }

        if (v94 < v86)
        {
          goto LABEL_86;
        }

LABEL_79:
        if (v66 - 1 >= v63)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v98 = v6;
        v99 = &v64[16 * v66 - 16];
        v100 = *v99;
        v6 = &v64[16 * v66];
        v101 = *(v6 + 1);
        sub_2753A5178((*a3 + 24 * *v99), (*a3 + 24 * *v6), *a3 + 24 * v101, v116);
        if (v118)
        {
          goto LABEL_99;
        }

        if (v101 < v100)
        {
          goto LABEL_101;
        }

        v102 = *(v98 + 2);
        if (v66 > v102)
        {
          goto LABEL_102;
        }

        *v99 = v100;
        *(v99 + 1) = v101;
        if (v66 >= v102)
        {
          goto LABEL_103;
        }

        v118 = 0;
        v63 = v102 - 1;
        sub_2753B219C(v6 + 16, v102 - 1 - v66, &v64[16 * v66]);
        v6 = v98;
        *(v98 + 2) = v102 - 1;
        if (v102 <= 2)
        {
          goto LABEL_86;
        }
      }

      v73 = &v64[16 * v63];
      v74 = *(v73 - 8);
      v75 = *(v73 - 7);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_104;
      }

      v78 = *(v73 - 6);
      v77 = *(v73 - 5);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_105;
      }

      v80 = *(v68 + 1);
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_107;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_110;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = *(v67 + 1);
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_118;
        }

        if (v71 < v97)
        {
          v66 = v63 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_86:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_89;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_122;
  }

  if (v7 + a4 >= v39)
  {
    v40 = a3[1];
  }

  else
  {
    v40 = v7 + a4;
  }

  if (v40 < v7)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v5 == v40)
  {
    goto LABEL_37;
  }

  v116 = v6;
  v41 = *a3;
  v42 = *a3 + 24 * v5 - 24;
  v113 = v7;
  v43 = v7 - v5;
LABEL_30:
  v44 = v40;
  v45 = (v41 + 24 * v5);
  v46 = *v45;
  v48 = *(v45 + 2);
  v47 = *(v45 + 3);
  v49 = v45[2];
  v50 = v43;
  v51 = v42;
  while (1)
  {
    v52 = *v51;
    v53 = *(v51 + 16);
    v54 = *(v51 + 8);
    v55 = *(v51 + 12) << 32;
    if ((sub_2753B7268() & 1) == 0)
    {
LABEL_35:
      ++v5;
      v42 += 24;
      --v43;
      v40 = v44;
      if (v5 == v44)
      {
        v5 = v44;
        v7 = v113;
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    if (!v41)
    {
      break;
    }

    v57 = *(v51 + 32);
    v56 = *(v51 + 36);
    v58 = *(v51 + 40);
    v60 = *(v51 + 16);
    v59 = *(v51 + 24);
    *(v51 + 24) = *v51;
    *(v51 + 40) = v60;
    *v51 = v59;
    *(v51 + 8) = v57;
    *(v51 + 12) = v56;
    *(v51 + 16) = v58;
    v51 -= 24;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

uint64_t sub_2753A5178(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_275385914(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      v13 = *(v6 + 1);
      v14 = *(v6 + 2);
      v15 = *v4;
      v16 = *(v4 + 1);
      v17 = *(v4 + 2);
      if ((sub_2753B7268() & 1) == 0)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6;
      v6 += 24;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v18 = v4;
    v19 = v7 == v4;
    v4 += 24;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = *v18;
    *(v7 + 2) = *(v18 + 2);
    *v7 = v20;
    goto LABEL_13;
  }

  sub_275385914(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v21 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v23 = *(v10 - 3);
    v24 = *(v10 - 2);
    v25 = *(v10 - 1);
    v26 = *(v6 - 3);
    v27 = *(v6 - 2);
    v28 = *(v6 - 1);
    v29 = sub_2753B7268();
    v30 = (v5 + 24);
    if (v29)
    {
      v19 = v30 == v6;
      v6 -= 24;
      if (!v19)
      {
        v32 = *v21;
        *(v5 + 16) = *(v21 + 2);
        *v5 = v32;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != v30)
    {
      v31 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v31;
    }

    v10 -= 24;
  }

LABEL_28:
  v33 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v33])
  {
    memmove(v6, v4, 24 * v33);
  }

  return 1;
}

void *sub_2753A532C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(a4 + 48) + 24 * (v12 | (v9 << 6)));
      v14 = v13[2];
      v15 = v13[1];
      *a2 = *v13;
      a2[1] = v15;
      a2[2] = v14;
      a2 += 3;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2753A542C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2753B7308();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2753A546C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_275384438(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22)
{

  return sub_2753A546C(v22, v23, a22 & 1);
}

uint64_t static SmartTransitionsDSPGraphDataProvider.dspGraphText.getter()
{
  sub_2753A56FC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2753B5D68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2753B5998();
  v9 = sub_2753B59A8();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v9);
  v10 = *(v9 - 8);
  v11 = v10[11];
  v12 = OUTLINED_FUNCTION_129_0();
  if (v13(v12) == *MEMORY[0x277D7EF70])
  {
    v14 = v10[12];
    v15 = OUTLINED_FUNCTION_129_0();
    v16(v15);
    (*(v5 + 32))(v8, v3, v4);
    sub_2753B5D58();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v17 = v10[1];
    v18 = OUTLINED_FUNCTION_129_0();
    v19(v18);
  }

  return OUTLINED_FUNCTION_129_0();
}

void sub_2753A56FC()
{
  if (!qword_2809C36E0)
  {
    sub_2753B59A8();
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C36E0);
    }
  }
}

uint64_t sub_2753A5754(uint64_t a1)
{
  sub_2753A56FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SmartTransitionsDSPGraphDataProvider(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2753A584CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2753A5884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v185 = a2;
  v184 = sub_2753B5CB8();
  v4 = OUTLINED_FUNCTION_2_0(v184);
  v183 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v9);
  v181 = sub_2753B5C78();
  v10 = OUTLINED_FUNCTION_2_0(v181);
  v178 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v15);
  v177 = sub_2753B59E8();
  v16 = OUTLINED_FUNCTION_2_0(v177);
  v176 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v21);
  v198 = sub_2753B5E28();
  v22 = OUTLINED_FUNCTION_2_0(v198);
  v200 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_11(v27 - v26);
  v194 = sub_2753B5FB8();
  v28 = OUTLINED_FUNCTION_2_0(v194);
  v199 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_11(v33 - v32);
  v160 = sub_2753B5DD8();
  v34 = OUTLINED_FUNCTION_2_0(v160);
  v188 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v40);
  v187 = sub_2753B5DA8();
  v41 = OUTLINED_FUNCTION_2_0(v187);
  v196 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_4_11(v46);
  v186 = sub_2753B5D38();
  v47 = OUTLINED_FUNCTION_2_0(v186);
  v195 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_7();
  v197 = sub_2753B5E08();
  v52 = OUTLINED_FUNCTION_2_0(v197);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10();
  v59 = v58 - v57;
  v60 = sub_2753B5A98();
  v61 = OUTLINED_FUNCTION_2_0(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_10();
  v68 = v67 - v66;
  v171 = sub_2753B5C38();
  v69 = OUTLINED_FUNCTION_2_0(v171);
  v170 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_98();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = &v155 - v77;
  sub_2753B5AA8();
  v191 = v78;
  sub_2753B5A88();
  v79 = *(v63 + 8);
  v79(v68, v60);
  v193 = a1;
  sub_2753B5AA8();
  OUTLINED_FUNCTION_8_9();
  sub_2753B5A78();
  v79(v68, v60);
  v192 = v75;
  sub_2753B5BE8();
  sub_2753B5DF8();
  v81 = v80;
  v82 = *(v54 + 8);
  v167 = v59;
  v190 = (v54 + 8);
  v189 = v82;
  v82(v59, v197);
  sub_2753B5D48();
  v83 = v165;
  sub_2753B5D28();
  v156 = *(v195 + 8);
  v195 += 8;
  v84 = v186;
  v156(v2, v186);
  v85 = v166;
  sub_2753B5D98();
  v86 = *(v196 + 8);
  v196 += 8;
  v87 = v187;
  v86(v83, v187);
  v88 = sub_2753B5DC8();
  v90 = v89;
  v91 = *(v188 + 8);
  v92 = v85;
  v93 = v160;
  v158 = v188 + 8;
  v157 = v91;
  v91(v92, v160);
  v202 = v88;
  v203 = v90;
  MEMORY[0x277C76100](2108704, 0xE300000000000000);
  sub_2753B5D48();
  sub_2753B5D28();
  v94 = v156;
  v156(v2, v84);
  v95 = sub_2753B5D88();
  v86(v83, v87);
  v201 = v95;
  v96 = sub_2753B76B8();
  MEMORY[0x277C76100](v96);

  v97 = v203;
  v166 = v202;
  v98 = v159;
  sub_2753B5D48();
  v99 = v161;
  sub_2753B5D28();
  v94(v98, v186);
  v100 = v162;
  sub_2753B5D98();
  v86(v99, v187);
  v101 = v188;
  v102 = v163;
  (*(v188 + 16))(v163, v100, v93);
  v103 = (*(v101 + 88))(v102, v93);
  v104 = v103 == *MEMORY[0x277D7F018];
  v168 = v81;
  v165 = v97;
  if (v104)
  {
    v105 = 4;
LABEL_10:
    LODWORD(v196) = v105;
    v157(v100, v93);
    sub_2753B5BE8();
    sub_2753B5DF8();
    v195 = v106;
    v107 = OUTLINED_FUNCTION_7_5();
    v108(v107);
    v109 = v169;
    OUTLINED_FUNCTION_8_9();
    sub_2753B5C08();
    sub_2753B5FA8();
    v188 = v110;
    v111 = *(v199 + 8);
    v199 += 8;
    v112 = v194;
    v111(v109, v194);
    v113 = v173;
    OUTLINED_FUNCTION_10_10();
    sub_2753B5C28();
    sub_2753B5E18();
    v187 = v114;
    v115 = v200 + 8;
    v116 = *(v200 + 8);
    v117 = v198;
    v116(v113, v198);
    v200 = v115;
    OUTLINED_FUNCTION_8_9();
    sub_2753B5BF8();
    sub_2753B5FA8();
    v186 = v118;
    v111(v109, v112);
    OUTLINED_FUNCTION_10_10();
    sub_2753B5C18();
    sub_2753B5E18();
    v120 = v119;
    v116(v113, v117);
    sub_2753B5BE8();
    sub_2753B5DF8();
    v122 = v121;
    v123 = OUTLINED_FUNCTION_7_5();
    v124(v123);
    OUTLINED_FUNCTION_8_9();
    sub_2753B5C08();
    sub_2753B5FA8();
    v126 = v125;
    v163 = v111;
    v111(v109, v112);
    OUTLINED_FUNCTION_10_10();
    sub_2753B5C28();
    sub_2753B5E18();
    v128 = v127;
    v129 = v198;
    v164 = v116;
    v116(v113, v198);
    OUTLINED_FUNCTION_8_9();
    sub_2753B5BF8();
    sub_2753B5FA8();
    v131 = v130;
    v111(v109, v112);
    OUTLINED_FUNCTION_10_10();
    sub_2753B5C18();
    sub_2753B5E18();
    v133 = v132;
    v116(v113, v129);
    v134 = v172;
    sub_2753B5B88();
    v135 = v174;
    sub_2753B59D8();
    v197 = *(v176 + 8);
    v136 = v177;
    v197(v134, v177);
    v137 = v179;
    sub_2753B5C58();
    v190 = *(v178 + 8);
    v138 = v181;
    v190(v135, v181);
    sub_2753B5CA8();
    v189 = *(v183 + 8);
    v139 = v137;
    v140 = v184;
    v189(v139, v184);
    sub_2753B5FA8();
    v142 = v141;
    v163(v109, v194);
    v143 = v175;
    sub_2753B5B88();
    v144 = v180;
    sub_2753B59D8();
    v197(v143, v136);
    v145 = v182;
    sub_2753B5C58();
    v190(v144, v138);
    sub_2753B5C88();
    v189(v145, v140);
    sub_2753B5E18();
    v147 = v146;
    v164(v113, v198);
    v148 = *(v170 + 8);
    v149 = v171;
    v148(v192, v171);
    result = (v148)(v191, v149);
    v151 = v185;
    v152 = v195;
    *v185 = v168;
    v151[1] = v152;
    v153 = v187;
    v151[2] = v188;
    v151[3] = v153;
    v151[4] = v186;
    v151[5] = v120;
    v151[6] = v122;
    v151[7] = v126;
    v151[8] = v128;
    v151[9] = v131;
    v151[10] = v133;
    v151[11] = v142;
    v151[12] = v147;
    *(v151 + 104) = 0;
    *(v151 + 105) = v196;
    v154 = v165;
    v151[14] = v166;
    v151[15] = v154;
    return result;
  }

  if (v103 == *MEMORY[0x277D7F008])
  {
    v105 = 3;
    goto LABEL_10;
  }

  if (v103 == *MEMORY[0x277D7F000])
  {
    v105 = 2;
    goto LABEL_10;
  }

  if (v103 == *MEMORY[0x277D7F010])
  {
    v105 = 1;
    goto LABEL_10;
  }

  result = sub_2753B7708();
  __break(1u);
  return result;
}

uint64_t sub_2753A685C@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v63 = a3;
  v60 = a2;
  v56 = a1;
  v65 = a4;
  v64 = sub_2753B5E28();
  v6 = OUTLINED_FUNCTION_2_0(v64);
  v62 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v61 = v11 - v10;
  v12 = sub_2753B5FB8();
  v13 = OUTLINED_FUNCTION_2_0(v12);
  v58 = v14;
  v59 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10();
  v19 = v18 - v17;
  v57 = sub_2753B5C38();
  v20 = OUTLINED_FUNCTION_2_0(v57);
  v66 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_98();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_7();
  v28 = sub_2753B5A98();
  v29 = OUTLINED_FUNCTION_2_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_98();
  v36 = (v34 - v35);
  MEMORY[0x28223BE20](v37);
  v39 = &v55 - v38;
  v40 = sub_2753B5AA8();
  a1(v40);
  v41 = *(v31 + 8);
  v42 = v41(v39, v28);
  v60(v42);
  v43 = *(v66 + 8);
  v66 += 8;
  v44 = v4;
  v45 = v57;
  v43(v44, v57);
  sub_2753B5FA8();
  v47 = v46;
  (*(v58 + 8))(v19, v59);
  v48 = sub_2753B5AA8();
  v56(v48);
  v49 = v41(v36, v28);
  v50 = v61;
  v63(v49);
  v43(v26, v45);
  sub_2753B5E18();
  v52 = v51;
  result = (*(v62 + 8))(v50, v64);
  v54 = v65;
  *v65 = v47;
  v54[1] = v52;
  return result;
}

uint64_t sub_2753A6BF8(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v61 = a4;
  v63 = a3;
  v54 = a2;
  v55 = a1;
  v62 = sub_2753B5E28();
  v6 = OUTLINED_FUNCTION_2_0(v62);
  v59 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_14();
  v60 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_4();
  v58 = v12;
  v57 = sub_2753B5FB8();
  v13 = OUTLINED_FUNCTION_2_0(v57);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_14();
  v56 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = v53 - v20;
  v22 = sub_2753B5C38();
  v23 = OUTLINED_FUNCTION_2_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_98();
  v30 = (v28 - v29);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v53 - v33;
  v35 = a1(v32);
  a2(v35);
  v36 = *(v25 + 8);
  v36(v34, v22);
  sub_2753B5FA8();
  v37 = *(v15 + 8);
  v53[1] = v15 + 8;
  v38 = v57;
  v39 = v37(v21, v57);
  v40 = v63(v39);
  v41 = v56;
  v54(v40);
  v36(v30, v22);
  sub_2753B5FA8();
  v42 = v37(v41, v38);
  v43 = v55(v42);
  v44 = v58;
  v45 = v61;
  v61(v43);
  v36(v34, v22);
  sub_2753B5E18();
  v46 = *(v59 + 8);
  v47 = v44;
  v48 = v62;
  v49 = v46(v47, v62);
  v50 = v63(v49);
  v51 = v60;
  v45(v50);
  v36(v30, v22);
  sub_2753B5E18();
  return v46(v51, v48);
}

uint64_t OUTLINED_FUNCTION_7_5()
{
  result = v0;
  v3 = *(v1 - 208);
  v4 = *(v1 - 272);
  v5 = *(v1 - 264);
  return result;
}

uint64_t AssetRecipe.format.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for AssetRecipe.DRM(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AssetRecipe(0);
  sub_2753A71BC(v1 + *(v7 + 20), v6);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
    case 2:
    case 3:
      result = OUTLINED_FUNCTION_0_12();
      goto LABEL_3;
    case 4:
      *a1 = 2;
      result = OUTLINED_FUNCTION_0_12();
      break;
    case 5:
      *a1 = 0;
      break;
    default:
LABEL_3:
      *a1 = 1;
      break;
  }

  return result;
}

uint64_t sub_2753A71BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRecipe.DRM(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s015_SonicKit_MusicB011AssetRecipeV6FormatO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  return sub_2753B77D8();
}

uint64_t EnhancedHLSAssetVariant.underlyingDictionary.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EnhancedHLSAssetVariant.stableVariantID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t EnhancedHLSAssetVariant.stableVariantID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t sub_2753A74C0()
{
  result = qword_2809C36E8;
  if (!qword_2809C36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C36E8);
  }

  return result;
}

unint64_t sub_2753A7518()
{
  result = qword_2809C36F0;
  if (!qword_2809C36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C36F0);
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753A7594(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 44))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 36);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_2753A75E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_2753A763C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2753A7708);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2753A7748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_275319D08(0x4E4F4953524556, 0xE700000000000000, a1, &v11);
  if (!v12)
  {
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_3_12() & 1) != 0 && v10 >= 1)
  {
    sub_275319D08(0x4F462D4F49445541, 0xEF44492D54414D52, a1, &v11);
    if (v12)
    {
      if (OUTLINED_FUNCTION_3_12())
      {
        v8 = sub_2753B6E18();

        if (v8 == 4)
        {
          *a4 = a1;
          a4[1] = a2;
          a4[2] = a3;
          return result;
        }
      }

      goto LABEL_8;
    }

LABEL_9:

    result = sub_2753A7890(&v11, sub_2753A78F0);
    goto LABEL_10;
  }

LABEL_8:

LABEL_10:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return result;
}

uint64_t sub_2753A7890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2753A78F0()
{
  if (!qword_2809C36F8)
  {
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C36F8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return sub_2753A7890(v0, type metadata accessor for AssetRecipe.DRM);
}

uint64_t OUTLINED_FUNCTION_3_12()
{

  return swift_dynamicCast();
}

uint64_t AVAsset.enhancedHLSAssetVariants.getter()
{
  v7 = *MEMORY[0x277D85DE8];
  v1[53] = v0;
  v2 = sub_2753B6DB8();
  v1[54] = v2;
  v3 = *(v2 - 8);
  v1[55] = v3;
  v4 = *(v3 + 64) + 15;
  v1[56] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2753A7A98, 0, 0);
}

uint64_t sub_2753A7A98()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[53];
  v2 = *MEMORY[0x277CE5F38];
  v0[2] = v0;
  v0[7] = v0 + 46;
  v0[3] = sub_2753A7BEC;
  v3 = swift_continuation_init();
  sub_2753A8910();
  v0[17] = v4;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2753A89F4;
  v0[13] = &block_descriptor_3;
  v0[14] = v3;
  [v1 loadMetadataForFormat:v2 completionHandler:v0 + 10];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2753A7BEC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  if (v2)
  {
    v3 = sub_2753A87DC;
  }

  else
  {
    v3 = sub_2753A7D28;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2753A7D28()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = v0[46];
  v2 = sub_2753A8AA4(v1);
  v3 = 0;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v23 = v1 & 0xC000000000000001;
  while (v2 != v3)
  {
    if (v23)
    {
      v5 = MEMORY[0x277C76690](v3, v1);
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_26;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[58] = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v7 = [v5 key];
    if (v7 && (v0[47] = v7, v0[59] = sub_2753A489C(), (swift_dynamicCast() & 1) != 0))
    {
      if (v0[42] == 0xD000000000000020 && 0x80000002753BE0E0 == v0[43])
      {

LABEL_22:

        sub_2753A8AC8();
        v19 = sub_2753B6268();
        v0[60] = v19;
        v20 = *(MEMORY[0x277D82DC0] + 4);
        v21 = swift_task_alloc();
        v0[61] = v21;
        *v21 = v0;
        v21[1] = sub_2753A8000;
        v22 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2821FAF00](v0 + 48, v19, 0, 0);
      }

      v9 = v1;
      v10 = v4;
      v11 = v2;
      v12 = v0[43];
      v13 = sub_2753B7718();

      if (v13)
      {
        goto LABEL_22;
      }

      v2 = v11;
      v4 = v10;
      v1 = v9;
    }

    else
    {
    }

    ++v3;
  }

  v14 = v0[56];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];
  v17 = MEMORY[0x277D84F98];

  return v15(v17);
}

uint64_t sub_2753A8000()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 480);

  if (v0)
  {
    v6 = sub_2753A8878;
  }

  else
  {
    v6 = sub_2753A8160;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2753A8160()
{
  v95 = v0;
  v94[3] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 384);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 472);
  *(v0 + 392) = v1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 440);
  v3 = *(v0 + 448);
  v5 = *(v0 + 432);
  v6 = *(v0 + 352);
  v7 = *(v0 + 360);
  sub_2753B6DA8();
  v8 = sub_2753B6D98();
  v10 = v9;

  (*(v4 + 8))(v3, v5);
  if (v10 >> 60 == 15)
  {
LABEL_4:

    goto LABEL_5;
  }

  OUTLINED_FUNCTION_139_2();
  v16 = sub_2753B6208();
  if (v17 >> 60 == 15)
  {

    v18 = OUTLINED_FUNCTION_139_2();
    sub_275315F60(v18, v19);
    goto LABEL_5;
  }

  v20 = v16;
  v21 = v17;
  v22 = objc_opt_self();
  v23 = sub_2753B6218();
  *(v0 + 400) = 0;
  v24 = [v22 JSONObjectWithData:v23 options:0 error:v0 + 400];

  v25 = *(v0 + 400);
  if (!v24)
  {
    v69 = *(v0 + 464);
    v70 = v25;
    sub_2753B6108();

    swift_willThrow();
    v71 = OUTLINED_FUNCTION_139_2();
    sub_275315F60(v71, v72);
    sub_275315F60(v20, v21);

    v73 = *(v0 + 448);

    v74 = *(v0 + 8);
    v75 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_225();

    __asm { BRAA            X1, X16 }
  }

  v26 = v25;
  sub_2753B72D8();
  swift_unknownObjectRelease();
  sub_2753A8BD4(0, &qword_2809C3728, MEMORY[0x277D84F70] + 8, MEMORY[0x277D834F8]);
  if (!swift_dynamicCast())
  {
    v78 = *(v0 + 464);
    v79 = OUTLINED_FUNCTION_139_2();
    sub_275315F60(v79, v80);
    sub_275315F60(v20, v21);

    goto LABEL_5;
  }

  v91 = v20;
  v92 = v21;
  v93 = v10;
  v27 = 0;
  v28 = *(v0 + 408);
  v29 = -1;
  v30 = -1 << *(v28 + 32);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v31 = v29 & *(v28 + 64);
  v32 = MEMORY[0x277D84F98];
  v33 = (63 - v30) >> 6;
LABEL_15:
  if (v31)
  {
    v34 = v27;
    goto LABEL_21;
  }

  while (1)
  {
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v34 >= v33)
    {
      v31 = 0;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      *(v0 + 192) = 0u;
      goto LABEL_22;
    }

    v31 = *(v28 + 64 + 8 * v34);
    ++v27;
    if (v31)
    {
      v27 = v34;
LABEL_21:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v34 << 6);
      v37 = (*(v28 + 48) + 16 * v36);
      v39 = *v37;
      v38 = v37[1];
      sub_275316DF4(*(v28 + 56) + 32 * v36, v0 + 272);
      *(v0 + 192) = v39;
      *(v0 + 200) = v38;
      sub_2753A8BC4((v0 + 272), (v0 + 208));

LABEL_22:
      v40 = *(v0 + 208);
      *(v0 + 144) = *(v0 + 192);
      *(v0 + 160) = v40;
      *(v0 + 176) = *(v0 + 224);
      v41 = *(v0 + 152);
      if (!v41)
      {
        v81 = *(v0 + 464);

        sub_275315F60(v8, v93);
        sub_275315F60(v91, v92);

LABEL_5:
        v11 = *(v0 + 448);

        v12 = *(v0 + 8);
        v13 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_225();

        __asm { BRAA            X2, X16 }
      }

      v42 = *(v0 + 144);
      sub_2753A8BC4((v0 + 160), (v0 + 304));
      if (swift_dynamicCast())
      {
        v43 = *(v0 + 416);

        sub_2753A7748(v43, v42, v41, v94);
        if (v94[0])
        {
          v89 = v94[0];
          v87 = v94[1];
          v88 = v94[2];
          swift_isUniquelyReferenced_nonNull_native();
          v86 = sub_2753842B8(v42, v41);
          v90 = v44;
          if (__OFADD__(v32[2], (v44 & 1) == 0))
          {
            __break(1u);
LABEL_48:
            __break(1u);
          }

          v45 = OUTLINED_FUNCTION_0_13();
          sub_2753A8BD4(v45, &qword_2809C3730, &type metadata for EnhancedHLSAssetVariant, v46);
          if (sub_2753B7478())
          {
            v47 = sub_2753842B8(v42, v41);
            v49 = v90;
            if ((v90 & 1) != (v48 & 1))
            {
              goto LABEL_44;
            }

            v50 = v47;
          }

          else
          {
            v50 = v86;
            v49 = v90;
          }

          if (v49)
          {

            OUTLINED_FUNCTION_1_15();
            v62 = *v61;
            v63 = v61[2];
            OUTLINED_FUNCTION_3_13(v61, v85, v86, v87, v88, v89);
          }

          else
          {
            v32[(v50 >> 6) + 8] |= 1 << v50;
            v64 = (v32[6] + 16 * v50);
            *v64 = v42;
            v64[1] = v41;
            OUTLINED_FUNCTION_1_15();
            OUTLINED_FUNCTION_3_13(v65, v85, v86, v87, v88, v89);
            v66 = v32[2];
            v67 = __OFADD__(v66, 1);
            v68 = v66 + 1;
            if (v67)
            {
              goto LABEL_48;
            }

            v32[2] = v68;
          }
        }

        else
        {
          v51 = sub_2753842B8(v42, v41);
          v53 = v52;

          if (v53)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v54 = v32[3];
            v55 = OUTLINED_FUNCTION_0_13();
            sub_2753A8BD4(v55, &qword_2809C3730, &type metadata for EnhancedHLSAssetVariant, v56);
            sub_2753B7478();
            v57 = *(v32[6] + 16 * v51 + 8);

            OUTLINED_FUNCTION_1_15();
            v59 = *v58;
            v60 = v58[2];

            sub_2753B7488();
          }
        }
      }

      else
      {
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  v82 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_225();

  return sub_2753B7768();
}

uint64_t sub_2753A87DC()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[57];
  swift_willThrow();
  v2 = v0[56];
  v3 = v0[57];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_2753A8878()
{
  v6 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 496);
  v2 = *(v0 + 448);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

void sub_2753A8910()
{
  if (!qword_2809C3700)
  {
    sub_2753A8B60(255, &qword_2809C3708, sub_2753A89B0, MEMORY[0x277D83940]);
    sub_275358C80();
    v0 = sub_2753B7188();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3700);
    }
  }
}

unint64_t sub_2753A89B0()
{
  result = qword_2809C3710;
  if (!qword_2809C3710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C3710);
  }

  return result;
}

uint64_t sub_2753A89F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_27532A6F4(v4, v5);
  }

  else
  {
    sub_2753A89B0();
    v7 = sub_2753B6FD8();

    return sub_27532A6F8(v4, v7);
  }
}

uint64_t sub_2753A8AA4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_2753A8AC8()
{
  if (!qword_2809C3718)
  {
    sub_2753A89B0();
    sub_2753A8B60(255, &qword_2809C3720, sub_2753A489C, MEMORY[0x277D83D88]);
    v0 = sub_2753B6258();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3718);
    }
  }
}

void sub_2753A8B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_OWORD *sub_2753A8BC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2753A8BD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_3_13(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a6;
  a1[1] = a4;
  a1[2] = a5;
}

unint64_t sub_2753A8CAC()
{
  result = qword_2809C3738;
  if (!qword_2809C3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3738);
  }

  return result;
}

unint64_t sub_2753A8D10()
{
  result = qword_2809C3740;
  if (!qword_2809C3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3740);
  }

  return result;
}

_BYTE *_s18AssetDownloadErrorOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2753A8E20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

id sub_2753A8E58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_275396480();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_continuation;
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(&v1[v9], 1, v4))
  {
    (*(v5 + 16))(v8, &v1[v9], v4);
    sub_2753B7108();
    sub_2753A9A64(&qword_2809C3788, MEMORY[0x277D85678]);
    v10 = swift_allocError();
    sub_2753B6C58();
    v12 = v10;
    sub_2753B70D8();
    (*(v5 + 8))(v8, v4);
  }

  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t _s27ProgressiveDownloadObserverCMa()
{
  result = qword_2809C3758;
  if (!qword_2809C3758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2753A90D0()
{
  v1 = v0;
  sub_2753A9834();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_275396480();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_continuation;
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v12, 1, v7))
  {
    (*(v8 + 16))(v11, v1 + v12, v7);
    sub_2753B70E8();
    (*(v8 + 8))(v11, v7);
  }

  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  swift_beginAccess();
  sub_2753A98F0(v5, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_2753A9288()
{
  sub_2753A9834();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  sub_275396480();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_continuation;
  swift_beginAccess();
  sub_2753A988C(v0 + v14, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    return sub_2753A9A04(v7, sub_2753A9834);
  }

  (*(v10 + 32))(v13, v7, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  swift_beginAccess();
  sub_2753A98F0(v5, v0 + v14);
  swift_endAccess();
  v16 = sub_2753B6048();
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  v18 = *MEMORY[0x277CE6200];
  v24[0] = sub_2753B6D88();
  v24[1] = v19;
  sub_2753B7338();
  sub_275319D6C(v17, &v26);

  sub_275387FFC(v25);
  if (!v27)
  {
    sub_2753A9A04(&v26, sub_2753A78F0);
    goto LABEL_8;
  }

  sub_275358C80();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_2753A9954();
    sub_2753A9A64(&qword_2809C3780, sub_2753A9954);
    v20 = swift_allocError();
    v23 = sub_2753A99B0();
    MEMORY[0x277C755D0](v23, 0xD000000000000016, 0x80000002753BE1B0, MEMORY[0x277D84F90], &type metadata for AVURLAsset.AssetDownloadError, v23);
    v22 = 0;
    goto LABEL_9;
  }

  v20 = v24[0];
  v21 = v24[0];
  v22 = v20;
LABEL_9:
  v25[0] = v20;
  sub_2753B70D8();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2753A9608(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_2753B6058();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2753B6038();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

id sub_2753A96F8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_result] = 0;
  v2 = OBJC_IVAR____TtCE18_SonicKit_MusicKitCSo10AVURLAssetP33_74B862D6782B3183FF1D401209C0AA2227ProgressiveDownloadObserver_continuation;
  sub_275396480();
  __swift_storeEnumTagSinglePayload(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_2753A9798()
{
  sub_2753A9834();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2753A9834()
{
  if (!qword_2809C3768)
  {
    sub_275396480();
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3768);
    }
  }
}

uint64_t sub_2753A988C(uint64_t a1, uint64_t a2)
{
  sub_2753A9834();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2753A98F0(uint64_t a1, uint64_t a2)
{
  sub_2753A9834();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2753A9954()
{
  if (!qword_2809C3770)
  {
    sub_2753A99B0();
    v0 = sub_2753B6308();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3770);
    }
  }
}

unint64_t sub_2753A99B0()
{
  result = qword_2809C3778;
  if (!qword_2809C3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3778);
  }

  return result;
}

uint64_t sub_2753A9A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2753A9A64(unint64_t *a1, void (*a2)(uint64_t))
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

_SonicKit_MusicKit::MusicAssetSelectionError_optional __swiftcall MusicAssetSelectionError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 24)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MusicAssetSelectionError.rawValue.getter()
{
  if (*v0)
  {
    return 24;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753A9B24@<X0>(uint64_t *a1@<X8>)
{
  result = MusicAssetSelectionError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MusicAssetSelectionMode.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    sub_2753B7398();

    OUTLINED_FUNCTION_69_5();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_2753B7398();

    OUTLINED_FUNCTION_69_5();
    v3 = v2 | 8;
LABEL_5:
    v6 = v3;
    sub_2753B3B24(0, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_275329E9C();
    v4 = sub_2753B6D48();
    MEMORY[0x277C76100](v4);

    MEMORY[0x277C76100](93, 0xE100000000000000);
    return v6;
  }

  return 0x6573736120796E41;
}

uint64_t MusicAssetCandidate.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_27();
}

uint64_t MusicAssetCandidate.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MusicAssetCandidate.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicAssetCandidate(0) + 20);
  v4 = sub_2753B6A38();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MusicAssetCandidate.availability.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for MusicAssetCandidate(v2) + 20);
  v4 = sub_2753B6A38();
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t MusicAssetCandidate.availability.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for MusicAssetCandidate(v0) + 20);
  return OUTLINED_FUNCTION_116();
}

uint64_t MusicAssetCandidate.recipe.getter()
{
  v0 = *(type metadata accessor for MusicAssetCandidate(0) + 24);
  OUTLINED_FUNCTION_4_12();
  v2 = OUTLINED_FUNCTION_54_4(v1);
  return sub_2753B39C8(v2, v3, v4, v5);
}

uint64_t sub_2753A9ECC(uint64_t a1, uint64_t a2)
{
  sub_2753AC02C(0, &qword_2809C3790, type metadata accessor for AssetRecipe, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicAssetCandidate.recipe.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for MusicAssetCandidate(v0) + 24);
  return OUTLINED_FUNCTION_116();
}

void *MusicAssetCandidate.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicAssetCandidate(0) + 28));
  v2 = v1;
  return v1;
}

void MusicAssetCandidate.error.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for MusicAssetCandidate(v2) + 28);

  *(v1 + v3) = v0;
}

uint64_t MusicAssetCandidate.error.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for MusicAssetCandidate(v0) + 28);
  return OUTLINED_FUNCTION_116();
}

uint64_t MusicAssetCandidate.description.getter()
{
  v1 = v0;
  v9 = *v0;
  v10 = v0[1];

  MEMORY[0x277C76100](23328, 0xE200000000000000);
  v2 = type metadata accessor for MusicAssetCandidate(0);
  v3 = *(v2 + 20);
  sub_2753B6A38();
  sub_2753AA1C8(&qword_2809C3798, MEMORY[0x277D65158]);
  v4 = sub_2753B76B8();
  MEMORY[0x277C76100](v4);

  MEMORY[0x277C76100](93, 0xE100000000000000);
  v5 = *(v1 + *(v2 + 28));
  if (v5)
  {
    v6 = v5;
    MEMORY[0x277C76100](23328, 0xE200000000000000);
    swift_getErrorValue();
    sub_2753B76E8();
    MEMORY[0x277C76100](93, 0xE100000000000000);

    v7 = OUTLINED_FUNCTION_97_0();
    MEMORY[0x277C76100](v7);
  }

  return v9;
}

uint64_t sub_2753AA1C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicAssetSelection.selectionMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_2753AA228(v2, v3);
}

uint64_t sub_2753AA228(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t MusicAssetSelection.selectionMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_2753AA27C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_2753AA27C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t MusicAssetSelection.candidates.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MusicAssetSelection.result.getter()
{
  v0 = type metadata accessor for MusicAssetSelection(0);
  v1 = OUTLINED_FUNCTION_54_4(*(v0 + 24));
  return sub_2753B36B0(v1, v2, v3);
}

void sub_2753AA36C()
{
  if (!qword_2809C37A0)
  {
    type metadata accessor for AssetRecipe(255);
    sub_275358C80();
    v0 = sub_2753B77E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C37A0);
    }
  }
}

uint64_t sub_2753AA408(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_24();
  v7 = v4 + *(v6(v5) + 24);

  return a3(v3, v7);
}

uint64_t sub_2753AA460(uint64_t a1, uint64_t a2)
{
  sub_2753AA36C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicAssetSelection.result.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for MusicAssetSelection(v0) + 24);
  return OUTLINED_FUNCTION_116();
}

uint64_t FacetCollection<>.selectAsset()()
{
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v5 = v4;
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v6;
  v1[13] = v4;
  sub_2753ABF7C();
  v1[16] = v7;
  OUTLINED_FUNCTION_17_1(v7);
  v1[17] = v8;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_2753AA36C();
  v1[21] = v11;
  OUTLINED_FUNCTION_75(v11);
  v13 = *(v12 + 64) + 15;
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_2_12();
  v14 = MEMORY[0x277D83D88];
  sub_2753AC02C(0, v15, v16, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_75(v17);
  v19 = *(v18 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v20 = type metadata accessor for MusicAssetCandidate(0);
  v1[26] = v20;
  OUTLINED_FUNCTION_17_1(v20);
  v1[27] = v21;
  v23 = *(v22 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  OUTLINED_FUNCTION_0_14();
  sub_2753AC02C(0, v24, v25, v14);
  OUTLINED_FUNCTION_75(v26);
  v28 = *(v27 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v29 = *(v5 + 16);
  v30 = type metadata accessor for FacetCollection<>.Asset();
  v1[36] = v30;
  OUTLINED_FUNCTION_17_1(v30);
  v1[37] = v31;
  v33 = *(v32 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v1[41] = v34;
  *v34 = v35;
  v34[1] = sub_2753AA7FC;

  return sub_2753AC08C((v1 + 10), v5, v3);
}

uint64_t sub_2753AA7FC()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 336) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2753AA8F8()
{
  v2 = *(v0 + 288);
  *(v0 + 344) = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 90) = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2753B76C8();
  v6 = *(v0 + 320);
  v87 = *(v0 + 312);
  v89 = TupleTypeMetadata2;
  v90 = *(*(TupleTypeMetadata2 - 8) + 72);
  if (!v3)
  {
    v85 = *(v0 + 296);
    v25 = *(v0 + 112);
    v26 = *(v0 + 120);
    v74 = v26;
    v27 = *(v0 + 104);
    swift_allocObject();
    sub_2753B6FF8();
    v29 = v28;
    v76 = *(TupleTypeMetadata2 + 48);
    v30 = OUTLINED_FUNCTION_60_2();
    FacetCollection<>.hlsAsset.getter(v30, v25, v31);
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_59_4();
    v83 = *(v85 + 8);
    v32 = OUTLINED_FUNCTION_28_1();
    v33(v32);
    *v29 = v26;
    v29[1] = v1;
    v34 = v29 + v76;
    v35 = v25;
    FacetCollection<>.hlsAsset.getter(v27, v25, v34);
    v36 = TupleTypeMetadata2;
    sub_2752E6688();
    v80 = sub_2753B6C98();
    swift_allocObject();
    sub_2753B6FF8();
    v38 = v37;
    v84 = *(TupleTypeMetadata2 + 48);
    v39 = OUTLINED_FUNCTION_60_2();
    v40 = v35;
    FacetCollection<>.streamingAsset.getter(v39, v35, v41);
    v42 = OUTLINED_FUNCTION_53_5();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_28_1();
    v83(v45);
    *v38 = v42;
    v38[1] = v44;
    FacetCollection<>.streamingAsset.getter(v27, v40, v38 + v84);
    v46 = (v38 + v90);
    v47 = *(v36 + 48);
    FacetCollection<>.drmStreamingAsset.getter(v27, v40, v87);
    OUTLINED_FUNCTION_76_3();
    v48 = OUTLINED_FUNCTION_37_5();
    v21 = v80;
    (v83)(v48, v2);
    *v46 = v74;
    v46[1] = v6;
    FacetCollection<>.drmStreamingAsset.getter(v27, v40, v46 + v47);
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v7 = *(v0 + 296);
    v8 = *(v0 + 112);
    v75 = *(v0 + 120);
    v79 = v8;
    v9 = *(v0 + 104);
    v5 = *(*(TupleTypeMetadata2 - 8) + 80);
    swift_allocObject();
    sub_2753B6FF8();
    v11 = v10;
    v12 = *(TupleTypeMetadata2 + 48);
    v13 = OUTLINED_FUNCTION_60_2();
    FacetCollection<>.streamingAsset.getter(v13, v8, v14);
    v15 = OUTLINED_FUNCTION_53_5();
    v17 = v16;
    v82 = *(v7 + 8);
    v18 = OUTLINED_FUNCTION_28_1();
    v19(v18);
    *v11 = v15;
    v11[1] = v17;
    FacetCollection<>.streamingAsset.getter(v9, v79, v11 + v12);
    v20 = (v11 + v90);
    v73 = *(v89 + 48);
    FacetCollection<>.drmStreamingAsset.getter(v9, v79, v87);
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_59_4();
    v82(v87, v2);
    *v20 = v75;
    v20[1] = v11;
    FacetCollection<>.drmStreamingAsset.getter(v9, v79, v11 + v90 + v73);
    sub_2752E6688();
    v21 = sub_2753B6C98();
    swift_allocObject();
    sub_2753B6FF8();
    v23 = v22;
    v88 = *(v89 + 48);
    FacetCollection<>.hlsAsset.getter(v9, v79, v6);
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_59_4();
    v24 = OUTLINED_FUNCTION_28_1();
    (v82)(v24);
    *v23 = v75;
    v23[1] = v89;
    FacetCollection<>.hlsAsset.getter(v9, v79, v23 + v88);
LABEL_5:
    sub_2752E6688();
    goto LABEL_7;
  }

  v49 = *(v0 + 296);
  v81 = *(v0 + 304);
  v51 = *(v0 + 112);
  v50 = *(v0 + 120);
  v52 = *(v0 + 104);
  swift_allocObject();
  sub_2753B6FF8();
  v54 = v53;
  v77 = *(TupleTypeMetadata2 + 48);
  v55 = OUTLINED_FUNCTION_60_2();
  FacetCollection<>.streamingAsset.getter(v55, v51, v56);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_59_4();
  v86 = *(v49 + 8);
  v57 = OUTLINED_FUNCTION_28_1();
  v58(v57);
  *v54 = v50;
  v54[1] = v1;
  FacetCollection<>.streamingAsset.getter(v52, v51, v54 + v77);
  v59 = (v54 + v90);
  v78 = *(TupleTypeMetadata2 + 48);
  FacetCollection<>.drmStreamingAsset.getter(v52, v51, v87);
  OUTLINED_FUNCTION_76_3();
  v60 = OUTLINED_FUNCTION_37_5();
  v86(v60, v2);
  *v59 = v50;
  v59[1] = v51;
  FacetCollection<>.drmStreamingAsset.getter(v52, v51, v54 + v90 + v78);
  v61 = (v54 + 2 * v90);
  v91 = *(TupleTypeMetadata2 + 48);
  v21 = v81;
  FacetCollection<>.hlsAsset.getter(v52, v51, v81);
  OUTLINED_FUNCTION_76_3();
  v62 = OUTLINED_FUNCTION_37_5();
  v86(v62, v2);
  *v61 = v50;
  v61[1] = v51;
  FacetCollection<>.hlsAsset.getter(v52, v51, v61 + v91);
  sub_2752E6688();
  sub_2753B6C98();
  OUTLINED_FUNCTION_24();
  sub_2753B7038();
LABEL_7:
  *(v0 + 352) = v21;
  v63 = *(v0 + 288);
  *(v0 + 360) = sub_2753B6C98();
  v64 = swift_task_alloc();
  *(v0 + 368) = v64;
  *v64 = v0;
  v64[1] = sub_2753AAF28;
  v65 = *(v0 + 112);
  v66 = *(v0 + 120);
  v67 = *(v0 + 104);
  OUTLINED_FUNCTION_309_0();

  return sub_2753AC5B8(v68, v69, v70);
}

uint64_t sub_2753AAF28()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v2 = v1;
  v4 = *(v3 + 368);
  v5 = *(v3 + 352);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 376) = v8;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2753AB728()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v2 = v1;
  v4 = *(v3 + 384);
  *v2 = *v0;
  *(v1 + 392) = v5;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2753ABE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_10_11();
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v20[23];
  v38 = v20[22];
  v39 = v20[20];
  v40 = v20[19];
  v41 = v20[18];

  OUTLINED_FUNCTION_19_0();
  v24 = v20[42];
  OUTLINED_FUNCTION_148_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, v40, v41, a18, a19, a20);
}

void sub_2753ABF7C()
{
  if (!qword_2809C37A8)
  {
    sub_2753ABFD8();
    v0 = sub_2753B6308();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C37A8);
    }
  }
}

unint64_t sub_2753ABFD8()
{
  result = qword_2809C37B0;
  if (!qword_2809C37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C37B0);
  }

  return result;
}

void sub_2753AC02C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_304_0();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2753AC08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[61] = a3;
  v4[62] = v3;
  v4[59] = a1;
  v4[60] = a2;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for FacetCollection<>.Traits();
  v4[63] = v6;
  v7 = *(v6 - 8);
  v4[64] = v7;
  v8 = *(v7 + 64) + 15;
  v4[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753AC154, 0, 0);
}

uint64_t sub_2753AC154()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  sub_2753B6978();
  *(v0 + 112) = *(v0 + 144);
  *(v0 + 125) = *(v0 + 157);
  sub_275314888(v0 + 112);
  sub_2753B6978();
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 93) = *(v0 + 189);
  sub_275314888(v0 + 80);
  sub_2753B6978();
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 61) = *(v0 + 221);
  sub_275314888(v0 + 48);
  sub_2753B6978();
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 29) = *(v0 + 253);
  sub_275314888(v0 + 16);
  if (*(v0 + 42) == 1 || (v3 = *(v0 + 496), v4 = *(v0 + 480), sub_2753B6978(), *(v0 + 272) = *(v0 + 304), *(v0 + 285) = *(v0 + 317), sub_275314888(v0 + 272), *(v0 + 299) == 1))
  {
    v5 = *(v0 + 496);
    FacetCollection<>.traits.getter(*(v0 + 480), *(v0 + 488), *(v0 + 520));
    swift_task_alloc();
    OUTLINED_FUNCTION_64_0();
    *(v0 + 528) = v6;
    *v6 = v7;
    v6[1] = sub_2753AC320;
    v8 = *(v0 + 520);
    v9 = *(v0 + 504);

    return FacetCollection<>.Traits.value.getter(v0 + 464);
  }

  else
  {
    OUTLINED_FUNCTION_66_5();
    v11 = *(v0 + 520);

    OUTLINED_FUNCTION_35_0();

    return v12();
  }
}

uint64_t sub_2753AC320()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_53_0();
  *v4 = v3;
  v6 = *(v5 + 528);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[67] = v0;

  (*(v3[64] + 8))(v3[65], v3[63]);
  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2753AC44C()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  sub_2753B6978();
  *(v0 + 336) = *(v0 + 368);
  *(v0 + 349) = *(v0 + 381);
  sub_275314888(v0 + 336);
  if (*(v0 + 362) == 1 && (v3 & 4) != 0)
  {
    v6 = *(v0 + 472);
    v7 = &unk_288407E40;
  }

  else
  {
    v4 = *(v0 + 496);
    v5 = *(v0 + 480);
    sub_2753B6978();
    *(v0 + 400) = *(v0 + 432);
    *(v0 + 413) = *(v0 + 445);
    sub_275314888(v0 + 400);
    if (*(v0 + 427) != 1 || (v3 & 2) == 0)
    {
      OUTLINED_FUNCTION_66_5();
      goto LABEL_9;
    }

    v6 = *(v0 + 472);
    v7 = &unk_288407E70;
  }

  *v6 = v7;
  *(v6 + 8) = 0;
LABEL_9:
  v8 = *(v0 + 520);

  OUTLINED_FUNCTION_35_0();

  return v9();
}

uint64_t sub_2753AC55C()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 520);

  OUTLINED_FUNCTION_19_0();
  v3 = *(v0 + 536);

  return v2();
}

uint64_t sub_2753AC5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[7] = *(a2 + 16);
  v3[8] = type metadata accessor for FacetCollection<>.Asset();
  v4 = *(*(sub_2753B72A8() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  sub_2753AC02C(0, &qword_2809C3790, type metadata accessor for AssetRecipe, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_2753B6A38();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v10 = type metadata accessor for MusicAssetCandidate(0);
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753AC78C, 0, 0);
}

uint64_t sub_2753AC78C()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[2].i64[1];
  sub_2753B3484();
  v3 = v2;
  v4 = swift_task_alloc();
  v0[9].i64[1] = v4;
  v4[1] = vextq_s8(v0[3], v0[3], 8uLL);
  v4[2].i64[0] = v1;
  OUTLINED_FUNCTION_0_14();
  sub_2753AC02C(0, v5, v6, MEMORY[0x277D83940]);
  v8 = v7;
  v9 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[10].i64[0] = v10;
  *v10 = v11;
  v10[1] = sub_2753AC8B4;

  return MEMORY[0x282200600](&v0[2], v3, v8, 0, 0, &unk_2753CDA30, v4, v3);
}

uint64_t sub_2753AC8B4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2753AC9B8()
{
  v39 = v0;
  v1 = v0 + 32;
  v2 = *(v0 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    sub_2753B35E8(v2);
    v2 = v36;
  }

  v3 = *(v2 + 16);
  v4 = *(*(v0 + 128) + 80);
  *(v0 + 216) = v4;
  v38[0] = v2 + ((v4 + 32) & ~v4);
  v38[1] = v3;
  sub_2753AE680(v38);
  v5 = *(v2 + 16);
  *(v0 + 168) = v5;
  if (!v5)
  {
LABEL_7:
    OUTLINED_FUNCTION_52_5();

    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_173();

    __asm { BRAA            X2, X16 }
  }

  v6 = 0;
  v1 -= 16;
  *(v0 + 220) = *MEMORY[0x277D65138];
  while (1)
  {
    *(v0 + 176) = v6;
    *(v0 + 184) = v2;
    if (v6 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v7 = *(v0 + 220);
    v8 = *(v0 + 216);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    OUTLINED_FUNCTION_46_4();
    v17 = v15 + v16 * v6;
    (*(v14 + 16))(v11, v17 + *(v18 + 20), v13);
    (*(v14 + 32))(v12, v11, v13);
    LODWORD(v11) = (*(v14 + 88))(v12, v13);
    EnumTagSinglePayload = (*(v14 + 8))(v12, v13);
    if (v11 != v7)
    {
      break;
    }

    v6 = *(v0 + 176) + 1;
    if (v6 == *(v0 + 168))
    {
      goto LABEL_7;
    }
  }

  if (v6 >= *(v2 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v24 = *(v0 + 136);
  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  v27 = *(v0 + 40);
  OUTLINED_FUNCTION_3_14();
  sub_2753B36B0(v17, v24, v28);
  v29 = *v24;
  v30 = v24[1];
  *(v0 + 16) = v29;
  *(v0 + 24) = v30;

  sub_2753B6D08();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
  if (EnumTagSinglePayload == 1)
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2821CC420](EnumTagSinglePayload, v20, v21);
  }

  v31 = *(v0 + 136);
  v32 = *(v0 + 64);
  OUTLINED_FUNCTION_1_16();
  sub_2753B370C();
  v33 = *(MEMORY[0x277D650F8] + 4);
  v34 = swift_task_alloc();
  *(v0 + 200) = v34;
  OUTLINED_FUNCTION_7_6();
  swift_getWitnessTable();
  *v34 = v0;
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_173();

  return MEMORY[0x2821CC420](EnumTagSinglePayload, v20, v21);
}

uint64_t sub_2753ACC98()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2753ACD94()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  (*(*(*(v0 + 64) - 8) + 8))(*(v0 + 72));
  v3 = type metadata accessor for AssetRecipe(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2753B35E8(*(v0 + 184));
    v5 = v9;
  }

  v6 = *(v0 + 176);
  if (v6 >= *(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_2753A9ECC(*(v0 + 80), v5 + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 192) * v6 + *(*(v0 + 120) + 24));
    OUTLINED_FUNCTION_52_5();

    v7 = OUTLINED_FUNCTION_40_4();

    v8(v7);
  }
}

uint64_t sub_2753ACED0()
{
  v1 = *(v0 + 184);
  (*(*(*(v0 + 64) - 8) + 8))(*(v0 + 72));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    sub_2753B35E8(v5);
    v5 = isUniquelyReferenced_nonNull_native;
  }

  v6 = *(v0 + 176);
  if (v6 >= *(v5 + 16))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v7 = v5 + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 192) * v6;
    v8 = *(*(v0 + 120) + 28);
    v9 = *(v7 + v8);
    *(v7 + v8) = *(v0 + 208);

    do
    {
      v10 = *(v0 + 176) + 1;
      if (v10 == *(v0 + 168))
      {
        OUTLINED_FUNCTION_52_5();

        v44 = OUTLINED_FUNCTION_40_4();

        return v45(v44);
      }

      *(v0 + 176) = v10;
      *(v0 + 184) = v5;
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v11 = *(v0 + 220);
      v12 = *(v0 + 216);
      v14 = *(v0 + 120);
      v13 = *(v0 + 128);
      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = *(v0 + 88);
      v18 = *(v0 + 96);
      OUTLINED_FUNCTION_46_4();
      (*(v18 + 16))(v15, v19 + v20 * v10 + *(v21 + 20), v17);
      v22 = *(v18 + 32);
      v23 = OUTLINED_FUNCTION_28_1();
      v24(v23);
      v25 = *(v18 + 88);
      v26 = OUTLINED_FUNCTION_97_0();
      LODWORD(v15) = v27(v26);
      v28 = *(v18 + 8);
      v29 = OUTLINED_FUNCTION_97_0();
      isUniquelyReferenced_nonNull_native = v30(v29);
    }

    while (v15 == v11);
    if (v10 >= *(v5 + 16))
    {
      goto LABEL_18;
    }

    v31 = *(v0 + 136);
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    v34 = *(v0 + 40);
    OUTLINED_FUNCTION_3_14();
    v35 = OUTLINED_FUNCTION_27();
    sub_2753B36B0(v35, v36, v37);
    v38 = *v31;
    v39 = v31[1];
    *(v0 + 16) = v38;
    *(v0 + 24) = v39;

    sub_2753B6D08();

    isUniquelyReferenced_nonNull_native = __swift_getEnumTagSinglePayload(v32, 1, v33);
    if (isUniquelyReferenced_nonNull_native != 1)
    {
      v40 = *(v0 + 136);
      v41 = *(v0 + 64);
      OUTLINED_FUNCTION_1_16();
      sub_2753B370C();
      v42 = *(MEMORY[0x277D650F8] + 4);
      v43 = swift_task_alloc();
      *(v0 + 200) = v43;
      OUTLINED_FUNCTION_7_6();
      swift_getWitnessTable();
      *v43 = v0;
      isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_15_8();

      return MEMORY[0x2821CC420](isUniquelyReferenced_nonNull_native, v3, v4);
    }
  }

  __break(1u);
  return MEMORY[0x2821CC420](isUniquelyReferenced_nonNull_native, v3, v4);
}

uint64_t sub_2753AD1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for MusicAssetCandidate(0);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_2753B3484();
  v5[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_2753AC02C(0, &qword_2809C3838, sub_2753B3484, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  sub_2753AC02C(0, &qword_2809C3840, sub_2753B3484, MEMORY[0x277D856B8]);
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2753AD3A8, 0, 0);
}

uint64_t sub_2753AD3A8()
{
  v1 = v0[19];
  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v0[2] = v0[5];
  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = sub_2753B3684;
  v7[5] = v6;
  type metadata accessor for FacetCollection<>.Asset();
  sub_2753B6CD8();
  swift_getWitnessTable();
  sub_2753B6EB8();

  v8 = *v5;
  sub_2753B7118();
  v0[20] = MEMORY[0x277D84F90];
  v9 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[21] = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_12_7(v10);

  return MEMORY[0x2822002E8](v12);
}

uint64_t sub_2753AD52C()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2753AD614()
{
  v1 = v0[16];
  v2 = v0[11];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[20];
  if (EnumTagSinglePayload == 1)
  {
    v6 = v0[14];
    v5 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[10];
    v10 = v0[3];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v10 = v4;

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_309_0();

    __asm { BRAA            X1, X16 }
  }

  v13 = v0[15];
  v58 = v0[13];
  v59 = v0[14];
  v56 = v0[12];
  v57 = v0[20];
  v55 = v0[10];
  v52 = v0[8];
  v14 = *(v1 + 1);
  v15 = *(v2 + 48);
  v16 = *(v2 + 64);
  v17 = *&v1[v16];
  *v13 = *v1;
  *(v13 + 1) = v14;
  v18 = sub_2753B6A38();
  v19 = *(v18 - 8);
  v54 = *(v19 + 32);
  v54(&v13[v15], &v1[v15], v18);
  *&v13[v16] = v17;
  sub_2753B36B0(v13, v59, sub_2753B3484);
  v50 = v59[1];
  v51 = *v59;
  v53 = *(v2 + 48);

  sub_2753B36B0(v13, v58, sub_2753B3484);
  v20 = *(v58 + 8);

  v49 = *(v2 + 48);

  v21 = v52[6];
  v22 = type metadata accessor for AssetRecipe(0);
  __swift_storeEnumTagSinglePayload(&v55[v21], 1, 1, v22);
  sub_2753B36B0(v13, v56, sub_2753B3484);
  v23 = *(v56 + 8);

  v24 = *(v2 + 48);
  v25 = *(v56 + *(v2 + 64));
  *v55 = v51;
  *(v55 + 1) = v50;
  v54(&v55[v52[5]], (v58 + v49), v18);
  *&v55[v52[7]] = v25;
  v26 = *(v19 + 8);
  v26(v56 + v24, v18);
  v26(v59 + v53, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = OUTLINED_FUNCTION_14_6();
    sub_275385418(v42, v43, v44, v45);
    v28 = v46;
  }

  v30 = *(v28 + 16);
  v29 = *(v28 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_275385418(v29 > 1, v30 + 1, 1, v28);
    v28 = v47;
  }

  v31 = v0[15];
  v33 = v0[9];
  v32 = v0[10];
  sub_2753B370C();
  *(v28 + 16) = v30 + 1;
  v34 = v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v35 = *(v33 + 72);
  OUTLINED_FUNCTION_5_8();
  sub_2753B2B70(v32, v36, v37);
  v0[20] = v28;
  v38 = *(MEMORY[0x277D856B0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[21] = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_309_0();

  return MEMORY[0x2822002E8]();
}

uint64_t sub_2753AD9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[0] = a1;
  v24[1] = a4;
  v10 = type metadata accessor for FacetCollection<>.Asset();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  v15 = MEMORY[0x277D85720];
  sub_2753AC02C(0, &qword_2809C32C0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v24 - v18;
  v20 = sub_2753B7148();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  (*(v11 + 16))(v14, a3, v10);
  v21 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a5;
  *(v22 + 5) = a6;
  *(v22 + 6) = v24[0];
  *(v22 + 7) = a2;
  (*(v11 + 32))(&v22[v21], v14, v10);

  sub_2753ADF14(v19, &unk_2753CDA40, v22);
  return sub_2753B3960(v19, &qword_2809C32C0, v15);
}

uint64_t sub_2753ADBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x2822009F8](sub_2753ADBF4, 0, 0);
}

uint64_t sub_2753ADBF4()
{
  OUTLINED_FUNCTION_68_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  sub_2753B3484();
  v7 = *(v6 + 48);
  *(v0 + 80) = v7;
  *(v0 + 84) = *(v6 + 64);
  *v5 = v4;
  v5[1] = v3;
  v8 = *(MEMORY[0x277D650F0] + 4);

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  v10 = type metadata accessor for FacetCollection<>.Asset();
  OUTLINED_FUNCTION_7_6();
  WitnessTable = swift_getWitnessTable();
  *v9 = v0;
  v9[1] = sub_2753ADCF8;
  v12 = *(v0 + 40);

  return MEMORY[0x2821CC418](v5 + v7, v10, WitnessTable);
}

uint64_t sub_2753ADCF8()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_53_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_58_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2753ADDF4()
{
  *(*(v0 + 16) + *(v0 + 84)) = 0;
  OUTLINED_FUNCTION_19_0();
  return v1();
}

uint64_t sub_2753ADE20()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);

  v6 = (v5 + v2);
  *v5 = v4;
  v5[1] = v3;
  *v6 = 0x726F727265;
  v6[1] = 0xE500000000000000;
  v7 = *MEMORY[0x277D65138];
  v8 = sub_2753B6A38();
  OUTLINED_FUNCTION_9(v8);
  (*(v9 + 104))(v6, v7);
  *(*(v0 + 16) + *(v0 + 84)) = v1;
  OUTLINED_FUNCTION_19_0();
  v12 = v10;

  return v12();
}

uint64_t sub_2753ADF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x277D85720];
  sub_2753AC02C(0, &qword_2809C32C0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  sub_2753B39C8(a1, v23 - v11, &qword_2809C32C0, v8);
  v13 = sub_2753B7148();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2753B3960(v12, &qword_2809C32C0, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2753B7138();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a3 + 16))
  {
    v14 = *(a3 + 24);
    v15 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_2753B70C8();
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *v4;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  sub_2753B3484();
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_2753AE13C(char *a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  type metadata accessor for FacetCollection<>.Asset();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, v5, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_2753AE1C8()
{
  v1 = v0;
  v2 = sub_2753B6A38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2753B6898();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  (*(v3 + 16))(v6, v1, v2);
  v18 = (*(v3 + 88))(v6, v2);
  if (v18 == *MEMORY[0x277D65138])
  {
    (*(v3 + 8))(v6, v2);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v18 == *MEMORY[0x277D65148])
  {
    v19 = 2;
LABEL_7:
    (*(v3 + 96))(v6, v2);
    v20 = *(v8 + 32);
    v20(v17, v6, v7);
    v20(v15, v17, v7);
    goto LABEL_10;
  }

  if (v18 == *MEMORY[0x277D65140])
  {
    v19 = 1;
    goto LABEL_7;
  }

  if (v18 != *MEMORY[0x277D65150])
  {
    goto LABEL_21;
  }

  (*(v3 + 96))(v6, v2);
  (*(v8 + 32))(v15, v6, v7);
  v19 = 0;
LABEL_10:
  (*(v8 + 16))(v12, v15, v7);
  v21 = (*(v8 + 88))(v12, v7);
  if (v21 == *MEMORY[0x277D650D8])
  {
    (*(v8 + 8))(v15, v7);
    v19 += 10;
LABEL_14:
    v19 += 10;
LABEL_15:
    v19 += 10;
    return v19;
  }

  if (v21 == *MEMORY[0x277D650C8])
  {
    (*(v8 + 8))(v15, v7);
    goto LABEL_14;
  }

  if (v21 == *MEMORY[0x277D650C0])
  {
    (*(v8 + 8))(v15, v7);
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D650D0])
  {
    (*(v8 + 8))(v15, v7);
    return v19;
  }

LABEL_21:
  result = sub_2753B7708();
  __break(1u);
  return result;
}

unint64_t sub_2753AE5A8()
{
  result = qword_2809C37C0;
  if (!qword_2809C37C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C37C0);
  }

  return result;
}

void sub_2753AE5EC()
{
  if (!qword_2809C37C8)
  {
    sub_2753ABF7C();
    sub_2753AA1C8(&qword_2809C37D0, sub_2753ABF7C);
    v0 = sub_2753B6528();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C37C8);
    }
  }
}

uint64_t sub_2753AE680(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2753B76A8();
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
        type metadata accessor for MusicAssetCandidate(0);
        v6 = sub_2753B7048();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for MusicAssetCandidate(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2753AF2B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_2753AE7B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2753AE7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2753B6A38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v105 = &v72[-v14];
  v103 = sub_2753B6898();
  v15 = *(v103 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v103);
  v88 = &v72[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v87 = &v72[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v72[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v83 = &v72[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v89 = &v72[-v26];
  MEMORY[0x28223BE20](v25);
  v82 = &v72[-v27];
  v28 = type metadata accessor for MusicAssetCandidate(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v94 = &v72[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x28223BE20](v30);
  v112 = &v72[-v33];
  result = MEMORY[0x28223BE20](v32);
  v110 = &v72[-v36];
  v74 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v37 = *a4;
  v38 = *(v35 + 72);
  v108 = (v9 + 88);
  v109 = (v9 + 16);
  v107 = *MEMORY[0x277D65138];
  v102 = *MEMORY[0x277D65148];
  v85 = *MEMORY[0x277D65140];
  v81 = *MEMORY[0x277D65150];
  v100 = (v15 + 32);
  v101 = (v9 + 96);
  v99 = (v15 + 16);
  v98 = (v15 + 88);
  v97 = *MEMORY[0x277D650D8];
  v96 = (v15 + 8);
  v95 = (v9 + 8);
  v84 = *MEMORY[0x277D650C8];
  v39 = v37 + v38 * (a3 - 1);
  v92 = -v38;
  v40 = a1 - a3;
  v80 = *MEMORY[0x277D650C0];
  v93 = v37;
  v73 = v38;
  v41 = v37 + v38 * a3;
  v79 = *MEMORY[0x277D650D0];
  v86 = v13;
  v104 = v8;
  v91 = v28;
  while (2)
  {
    v78 = a3;
    v75 = v41;
    v76 = v40;
    v42 = v40;
    v77 = v39;
    v43 = v105;
    do
    {
      v44 = v110;
      sub_2753B36B0(v41, v110, type metadata accessor for MusicAssetCandidate);
      sub_2753B36B0(v39, v112, type metadata accessor for MusicAssetCandidate);
      v45 = *v109;
      (*v109)(v43, &v44[*(v28 + 20)], v8);
      v46 = *v108;
      v47 = (*v108)(v43, v8);
      if (v47 == v107)
      {
        (*v95)(v43, v8);
        v111 = 0x7FFFFFFFFFFFFFFFLL;
        v48 = v13;
        goto LABEL_19;
      }

      if (v47 == v102)
      {
        v106 = v42;
        v49 = 2;
LABEL_10:
        v111 = v49;
        v50 = v105;
        (*v101)(v105, v8);
        v51 = *v100;
        v52 = v82;
        v53 = v103;
        (*v100)(v82, v50, v103);
        v54 = v89;
        v51(v89, v52, v53);
        v42 = v106;
        goto LABEL_13;
      }

      if (v47 == v85)
      {
        v106 = v42;
        v49 = 1;
        goto LABEL_10;
      }

      v55 = v103;
      if (v47 != v81)
      {
        goto LABEL_50;
      }

      (*v101)(v43, v8);
      v54 = v89;
      v53 = v55;
      (*v100)(v89, v43, v55);
      v111 = 0;
LABEL_13:
      v56 = v87;
      (*v99)(v87, v54, v53);
      v57 = (*v98)(v56, v53);
      if (v57 == v97)
      {
        (*v96)(v54, v53);
        v58 = v111 + 10;
        v48 = v86;
        v8 = v104;
        v28 = v91;
LABEL_17:
        v60 = v58 + 10;
LABEL_18:
        v111 = v60 + 10;
        goto LABEL_19;
      }

      v59 = v53;
      v28 = v91;
      if (v57 == v84)
      {
        (*v96)(v89, v53);
        v48 = v86;
        v8 = v104;
        v58 = v111;
        goto LABEL_17;
      }

      v48 = v86;
      v8 = v104;
      if (v57 == v80)
      {
        (*v96)(v89, v59);
        v60 = v111;
        goto LABEL_18;
      }

      if (v57 != v79)
      {
        goto LABEL_50;
      }

      (*v96)(v89, v59);
LABEL_19:
      v45(v48, &v112[*(v28 + 20)], v8);
      v61 = v46(v48, v8);
      if (v61 == v107)
      {
        v13 = v48;
        (*v95)(v48, v8);
        v62 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_34;
      }

      if (v61 == v102)
      {
        v106 = v42;
        v62 = 2;
LABEL_25:
        (*v101)(v48, v8);
        v63 = *v100;
        v64 = v83;
        v65 = v103;
        (*v100)(v83, v48, v103);
        v66 = v90;
        v63(v90, v64, v65);
        v28 = v91;
        v42 = v106;
        goto LABEL_28;
      }

      if (v61 == v85)
      {
        v106 = v42;
        v62 = 1;
        goto LABEL_25;
      }

      v65 = v103;
      if (v61 != v81)
      {
        goto LABEL_50;
      }

      (*v101)(v48, v104);
      v66 = v90;
      (*v100)(v90, v48, v65);
      v62 = 0;
LABEL_28:
      v67 = v88;
      (*v99)(v88, v66, v65);
      v68 = (*v98)(v67, v65);
      v69 = v65;
      if (v68 == v97)
      {
        (*v96)(v66, v65);
        v62 += 10;
        v8 = v104;
LABEL_32:
        v62 += 10;
LABEL_33:
        v13 = v48;
        v62 += 10;
        goto LABEL_34;
      }

      v8 = v104;
      if (v68 == v84)
      {
        (*v96)(v90, v69);
        goto LABEL_32;
      }

      if (v68 == v80)
      {
        (*v96)(v90, v69);
        goto LABEL_33;
      }

      if (v68 != v79)
      {
        goto LABEL_50;
      }

      v13 = v48;
      (*v96)(v90, v69);
LABEL_34:
      sub_2753B370C();
      result = sub_2753B370C();
      v43 = v105;
      if (v62 >= v111)
      {
        break;
      }

      if (!v93)
      {
        __break(1u);
LABEL_50:
        result = sub_2753B7708();
        __break(1u);
        return result;
      }

      v70 = v94;
      sub_2753B2B70(v41, v94, type metadata accessor for MusicAssetCandidate);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2753B2B70(v70, v39, type metadata accessor for MusicAssetCandidate);
      v39 += v92;
      v41 += v92;
    }

    while (!__CFADD__(v42++, 1));
    a3 = v78 + 1;
    v39 = v77 + v73;
    v40 = v76 - 1;
    v41 = v75 + v73;
    if (v78 + 1 != v74)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_2753AF2B8(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v207 = a1;
  v263 = sub_2753B6A38();
  v6 = *(v263 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v263);
  v258 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v255 = &v204 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v225 = &v204 - v13;
  MEMORY[0x28223BE20](v12);
  v221 = &v204 - v14;
  v240 = sub_2753B6898();
  v15 = *(v240 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v240);
  v237 = &v204 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v236 = &v204 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v235 = &v204 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v233 = &v204 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v242 = &v204 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v232 = &v204 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v216 = &v204 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v215 = &v204 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v214 = &v204 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v210 = &v204 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v213 = &v204 - v38;
  MEMORY[0x28223BE20](v37);
  v209 = &v204 - v39;
  v246 = type metadata accessor for MusicAssetCandidate(0);
  v226 = *(v246 - 8);
  v40 = *(v226 + 64);
  v41 = MEMORY[0x28223BE20](v246);
  v217 = &v204 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v245 = &v204 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v262 = &v204 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v257 = &v204 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v204 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v229 = &v204 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v205 = &v204 - v55;
  MEMORY[0x28223BE20](v54);
  v204 = &v204 - v56;
  v227 = a3;
  v57 = a3[1];
  if (v57 >= 1)
  {
    v58 = 0;
    v260 = (v6 + 88);
    v261 = (v6 + 16);
    v259 = *MEMORY[0x277D65138];
    v253 = *MEMORY[0x277D65148];
    v239 = *MEMORY[0x277D65140];
    v231 = *MEMORY[0x277D65150];
    v251 = (v15 + 32);
    v252 = (v6 + 96);
    v249 = (v15 + 88);
    v250 = (v15 + 16);
    v248 = *MEMORY[0x277D650D8];
    v238 = *MEMORY[0x277D650C8];
    v230 = *MEMORY[0x277D650C0];
    v224 = *MEMORY[0x277D650D0];
    v254 = (v15 + 8);
    v247 = (v6 + 8);
    v59 = MEMORY[0x277D84F90];
    v206 = a4;
    v60 = v255;
    v219 = v51;
    while (2)
    {
      v61 = v58 + 1;
      v218 = v59;
      v208 = v58;
      if (v58 + 1 >= v57)
      {
        goto LABEL_68;
      }

      v62 = v58;
      v63 = *v227;
      v15 = *(v226 + 72);
      v64 = *v227 + v15 * v61;
      v241 = v57;
      v65 = v204;
      sub_2753B36B0(v64, v204, type metadata accessor for MusicAssetCandidate);
      v66 = v205;
      sub_2753B36B0(v63 + v15 * v62, v205, type metadata accessor for MusicAssetCandidate);
      v67 = v246;
      v68 = v65 + *(v246 + 20);
      v223 = sub_2753AE1C8();
      v69 = v66 + *(v67 + 20);
      v222 = sub_2753AE1C8();
      sub_2753B370C();
      v70 = v241;
      sub_2753B370C();
      v71 = v62 + 2;
      v243 = v15;
      v6 = v63 + v15 * (v62 + 2);
      v72 = v219;
      while (1)
      {
        v73 = v71;
        if (v61 + 1 >= v70)
        {
          break;
        }

        v244 = v71;
        v234 = v61;
        v74 = v229;
        sub_2753B36B0(v6, v229, type metadata accessor for MusicAssetCandidate);
        v256 = v64;
        sub_2753B36B0(v64, v72, type metadata accessor for MusicAssetCandidate);
        v75 = *v261;
        v76 = v74 + *(v67 + 20);
        v77 = v221;
        v78 = v263;
        (*v261)(v221, v76, v263);
        v79 = *v260;
        v80 = (*v260)(v77, v78);
        if (v80 == v259)
        {
          (*v247)(v77, v263);
          v81 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        v82 = v213;
        if (v80 == v253)
        {
          v81 = 2;
LABEL_12:
          v83 = v77;
          (*v252)(v77, v263);
          v84 = *v251;
          v85 = v209;
          v86 = v83;
          v87 = v240;
          (*v251)(v209, v86, v240);
          v84(v82, v85, v87);
          v67 = v246;
          v72 = v219;
          goto LABEL_15;
        }

        if (v80 == v239)
        {
          v81 = 1;
          goto LABEL_12;
        }

        if (v80 != v231)
        {
          goto LABEL_220;
        }

        (*v252)(v77, v263);
        v87 = v240;
        (*v251)(v82, v77, v240);
        v81 = 0;
LABEL_15:
        v88 = v215;
        (*v250)(v215, v82, v87);
        v89 = (*v249)(v88, v87);
        if (v89 == v248)
        {
          (*v254)(v82, v87);
          v81 += 10;
LABEL_19:
          v70 = v241;
          v81 += 10;
LABEL_20:
          v81 += 10;
          goto LABEL_21;
        }

        if (v89 == v238)
        {
          (*v254)(v82, v240);
          goto LABEL_19;
        }

        v70 = v241;
        if (v89 == v230)
        {
          (*v254)(v82, v240);
          goto LABEL_20;
        }

        if (v89 != v224)
        {
          goto LABEL_220;
        }

        (*v254)(v82, v240);
LABEL_21:
        v90 = v225;
        v91 = v263;
        v75(v225, v72 + *(v67 + 20), v263);
        v92 = v79(v90, v91);
        if (v92 != v259)
        {
          v95 = v214;
          v94 = v256;
          if (v92 == v253)
          {
            v93 = 2;
            goto LABEL_27;
          }

          if (v92 == v239)
          {
            v93 = 1;
LABEL_27:
            v96 = v225;
            (*v252)(v225, v263);
            v97 = *v251;
            v98 = v210;
            v99 = v96;
            v100 = v240;
            (*v251)(v210, v99, v240);
            v97(v95, v98, v100);
            v67 = v246;
            v72 = v219;
          }

          else
          {
            if (v92 != v231)
            {
              goto LABEL_220;
            }

            (*v252)(v90, v263);
            v100 = v240;
            (*v251)(v95, v90, v240);
            v93 = 0;
          }

          v101 = v216;
          (*v250)(v216, v95, v100);
          v102 = (*v249)(v101, v100);
          if (v102 == v248)
          {
            (*v254)(v95, v100);
            v93 += 10;
            goto LABEL_34;
          }

          if (v102 == v238)
          {
            (*v254)(v95, v240);
LABEL_34:
            v70 = v241;
            v93 += 10;
          }

          else
          {
            v70 = v241;
            if (v102 != v230)
            {
              if (v102 != v224)
              {
                goto LABEL_220;
              }

              (*v254)(v95, v240);
              goto LABEL_36;
            }

            (*v254)(v95, v240);
          }

          v93 += 10;
          goto LABEL_36;
        }

        (*v247)(v90, v263);
        v93 = 0x7FFFFFFFFFFFFFFFLL;
        v94 = v256;
LABEL_36:
        v103 = v222 < v223;
        v15 = type metadata accessor for MusicAssetCandidate;
        sub_2753B370C();
        sub_2753B370C();
        v104 = v103 ^ (v93 >= v81);
        v73 = v244;
        v6 += v243;
        v64 = v94 + v243;
        v61 = v234 + 1;
        v71 = v244 + 1;
        if ((v104 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v61 = v70;
LABEL_47:
      v60 = v255;
      if (v222 >= v223)
      {
        goto LABEL_67;
      }

      v15 = v208;
      if (v61 < v208)
      {
        goto LABEL_210;
      }

      if (v208 >= v61)
      {
LABEL_67:
        a4 = v206;
      }

      else
      {
        if (v70 >= v73)
        {
          v105 = v73;
        }

        else
        {
          v105 = v70;
        }

        v106 = v243 * (v105 - 1);
        v107 = v243 * v105;
        v108 = v208 * v243;
        v234 = v61;
        do
        {
          if (v15 != --v61)
          {
            v109 = *v227;
            if (!*v227)
            {
              goto LABEL_217;
            }

            v6 = v109 + v108;
            sub_2753B2B70(v109 + v108, v217, type metadata accessor for MusicAssetCandidate);
            v110 = v108 < v106 || v6 >= v109 + v107;
            if (v110)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v108 != v106)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2753B2B70(v217, v109 + v106, type metadata accessor for MusicAssetCandidate);
          }

          ++v15;
          v106 -= v243;
          v107 -= v243;
          v108 += v243;
        }

        while (v15 < v61);
        a4 = v206;
        v60 = v255;
        v61 = v234;
      }

LABEL_68:
      v111 = v227[1];
      if (v61 < v111)
      {
        if (__OFSUB__(v61, v208))
        {
          goto LABEL_209;
        }

        if (v61 - v208 < a4)
        {
          v112 = v208 + a4;
          if (__OFADD__(v208, a4))
          {
            goto LABEL_211;
          }

          if (v112 >= v111)
          {
            v112 = v227[1];
          }

          v113 = v240;
          v114 = v246;
          if (v112 >= v208)
          {
            if (v61 == v112)
            {
              goto LABEL_124;
            }

            v115 = *v227;
            v116 = *(v226 + 72);
            v15 = *v227 + v116 * (v61 - 1);
            v243 = -v116;
            v117 = v208 - v61;
            v244 = v115;
            v211 = v116;
            v6 = v115 + v61 * v116;
            v212 = v112;
            while (1)
            {
              v234 = v61;
              v220 = v6;
              v222 = v117;
              v118 = v117;
              v223 = v15;
              while (1)
              {
                v256 = v118;
                v119 = v257;
                sub_2753B36B0(v6, v257, type metadata accessor for MusicAssetCandidate);
                sub_2753B36B0(v15, v262, type metadata accessor for MusicAssetCandidate);
                v120 = *v261;
                v121 = v119 + *(v114 + 20);
                v122 = v263;
                (*v261)(v60, v121, v263);
                v123 = *v260;
                v124 = (*v260)(v60, v122);
                if (v124 == v259)
                {
                  (*v247)(v60, v263);
                  v125 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_93;
                }

                if (v124 == v253)
                {
                  v241 = v120;
                  v126 = 2;
LABEL_84:
                  v127 = v255;
                  (*v252)(v255, v263);
                  v128 = *v251;
                  v129 = v232;
                  v113 = v240;
                  (*v251)(v232, v127, v240);
                  v130 = v242;
                  v128(v242, v129, v113);
                  v125 = v126;
                  v120 = v241;
                  goto LABEL_87;
                }

                if (v124 == v239)
                {
                  v241 = v120;
                  v126 = 1;
                  goto LABEL_84;
                }

                if (v124 != v231)
                {
                  goto LABEL_220;
                }

                (*v252)(v60, v263);
                v130 = v242;
                (*v251)(v242, v60, v113);
                v125 = 0;
LABEL_87:
                v131 = v236;
                (*v250)(v236, v130, v113);
                v132 = (*v249)(v131, v113);
                if (v132 == v248)
                {
                  (*v254)(v130, v113);
                  v125 += 10;
LABEL_91:
                  v114 = v246;
                  v125 += 10;
LABEL_92:
                  v125 += 10;
                  goto LABEL_93;
                }

                if (v132 == v238)
                {
                  (*v254)(v242, v113);
                  goto LABEL_91;
                }

                v114 = v246;
                if (v132 == v230)
                {
                  (*v254)(v242, v113);
                  goto LABEL_92;
                }

                if (v132 != v224)
                {
                  goto LABEL_220;
                }

                (*v254)(v242, v113);
LABEL_93:
                v133 = v258;
                v134 = v263;
                v120(v258, v262 + *(v114 + 20), v263);
                v135 = v123(v133, v134);
                if (v135 == v259)
                {
                  (*v247)(v258, v263);
                  v136 = 0x7FFFFFFFFFFFFFFFLL;
                  goto LABEL_108;
                }

                v137 = v235;
                if (v135 == v253)
                {
                  v136 = 2;
LABEL_99:
                  v138 = v258;
                  (*v252)(v258, v263);
                  v139 = *v251;
                  v140 = v138;
                  v141 = v233;
                  (*v251)(v233, v140, v113);
                  v139(v137, v141, v113);
                  v114 = v246;
                  goto LABEL_102;
                }

                if (v135 == v239)
                {
                  v136 = 1;
                  goto LABEL_99;
                }

                if (v135 != v231)
                {
                  goto LABEL_220;
                }

                v142 = v258;
                (*v252)(v258, v263);
                (*v251)(v137, v142, v113);
                v136 = 0;
LABEL_102:
                v143 = v237;
                (*v250)(v237, v137, v113);
                v144 = (*v249)(v143, v113);
                if (v144 == v248)
                {
                  (*v254)(v137, v113);
                  v136 += 10;
LABEL_106:
                  v136 += 10;
LABEL_107:
                  v136 += 10;
                  goto LABEL_108;
                }

                if (v144 == v238)
                {
                  (*v254)(v137, v113);
                  goto LABEL_106;
                }

                if (v144 == v230)
                {
                  (*v254)(v137, v113);
                  goto LABEL_107;
                }

                if (v144 != v224)
                {
                  goto LABEL_220;
                }

                (*v254)(v137, v113);
LABEL_108:
                sub_2753B370C();
                sub_2753B370C();
                if (v136 >= v125)
                {
                  break;
                }

                v60 = v255;
                v145 = v256;
                if (!v244)
                {
                  __break(1u);
LABEL_215:
                  __break(1u);
LABEL_216:
                  __break(1u);
LABEL_217:
                  __break(1u);
LABEL_218:
                  __break(1u);
LABEL_219:
                  __break(1u);
                  while (1)
                  {
LABEL_220:
                    sub_2753B7708();
                    __break(1u);
                  }
                }

                v146 = v245;
                sub_2753B2B70(v6, v245, type metadata accessor for MusicAssetCandidate);
                swift_arrayInitWithTakeFrontToBack();
                sub_2753B2B70(v146, v15, type metadata accessor for MusicAssetCandidate);
                v15 += v243;
                v6 += v243;
                v110 = __CFADD__(v145, 1);
                v118 = v145 + 1;
                if (v110)
                {
                  goto LABEL_122;
                }
              }

              v60 = v255;
LABEL_122:
              v61 = v234 + 1;
              v15 = v223 + v211;
              v117 = v222 - 1;
              v6 = v220 + v211;
              if (v234 + 1 == v212)
              {
                v61 = v212;
                goto LABEL_124;
              }
            }
          }

LABEL_212:
          __break(1u);
          goto LABEL_213;
        }
      }

LABEL_124:
      v147 = v208;
      if (v61 < v208)
      {
        goto LABEL_208;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v234 = v61;
      if (isUniquelyReferenced_nonNull_native)
      {
        v59 = v218;
      }

      else
      {
        v193 = v218[2];
        sub_275384E68();
        v59 = v194;
      }

      v6 = v59[2];
      v15 = v6 + 1;
      if (v6 >= v59[3] >> 1)
      {
        sub_275384E68();
        v59 = v195;
      }

      v59[2] = v15;
      v149 = v59 + 4;
      v150 = &v59[2 * v6 + 4];
      v151 = v234;
      *v150 = v147;
      v150[1] = v151;
      v256 = *v207;
      if (!v256)
      {
        goto LABEL_218;
      }

      if (!v6)
      {
LABEL_173:
        v57 = v227[1];
        v58 = v234;
        a4 = v206;
        if (v234 >= v57)
        {
          goto LABEL_178;
        }

        continue;
      }

      break;
    }

    while (1)
    {
      v152 = v15 - 1;
      v153 = &v149[2 * v15 - 2];
      v154 = &v59[2 * v15];
      if (v15 >= 4)
      {
        break;
      }

      if (v15 == 3)
      {
        v155 = v59[4];
        v156 = v59[5];
        v165 = __OFSUB__(v156, v155);
        v157 = v156 - v155;
        v158 = v165;
LABEL_144:
        if (v158)
        {
          goto LABEL_195;
        }

        v170 = *v154;
        v169 = v154[1];
        v171 = __OFSUB__(v169, v170);
        v172 = v169 - v170;
        v173 = v171;
        if (v171)
        {
          goto LABEL_198;
        }

        v174 = v153[1];
        v175 = v174 - *v153;
        if (__OFSUB__(v174, *v153))
        {
          goto LABEL_201;
        }

        if (__OFADD__(v172, v175))
        {
          goto LABEL_203;
        }

        if (v172 + v175 >= v157)
        {
          if (v157 < v175)
          {
            v152 = v15 - 2;
          }

          goto LABEL_166;
        }

        goto LABEL_159;
      }

      if (v15 < 2)
      {
        goto LABEL_197;
      }

      v177 = *v154;
      v176 = v154[1];
      v165 = __OFSUB__(v176, v177);
      v172 = v176 - v177;
      v173 = v165;
LABEL_159:
      if (v173)
      {
        goto LABEL_200;
      }

      v179 = *v153;
      v178 = v153[1];
      v165 = __OFSUB__(v178, v179);
      v180 = v178 - v179;
      if (v165)
      {
        goto LABEL_202;
      }

      if (v180 < v172)
      {
        goto LABEL_173;
      }

LABEL_166:
      if (v152 - 1 >= v15)
      {
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
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
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
        goto LABEL_212;
      }

      if (!*v227)
      {
        goto LABEL_215;
      }

      v184 = v59;
      v185 = &v149[2 * v152 - 2];
      v186 = *v185;
      v187 = v152;
      v6 = &v149[2 * v152];
      v188 = *(v6 + 8);
      v189 = v228;
      sub_2753B0C50(*v227 + *(v226 + 72) * *v185, *v227 + *(v226 + 72) * *v6, *v227 + *(v226 + 72) * v188, v256);
      v15 = v189;
      if (v189)
      {
      }

      if (v188 < v186)
      {
        goto LABEL_190;
      }

      v190 = v149;
      v191 = v184[2];
      if (v187 > v191)
      {
        goto LABEL_191;
      }

      *v185 = v186;
      v185[1] = v188;
      if (v187 >= v191)
      {
        goto LABEL_192;
      }

      v228 = 0;
      v15 = v191 - 1;
      memmove(v6, (v6 + 16), 16 * (v191 - 1 - v187));
      v59 = v184;
      v184[2] = v191 - 1;
      v192 = v191 > 2;
      v60 = v255;
      v149 = v190;
      if (!v192)
      {
        goto LABEL_173;
      }
    }

    v159 = &v149[2 * v15];
    v160 = *(v159 - 8);
    v161 = *(v159 - 7);
    v165 = __OFSUB__(v161, v160);
    v162 = v161 - v160;
    if (v165)
    {
      goto LABEL_193;
    }

    v164 = *(v159 - 6);
    v163 = *(v159 - 5);
    v165 = __OFSUB__(v163, v164);
    v157 = v163 - v164;
    v158 = v165;
    if (v165)
    {
      goto LABEL_194;
    }

    v166 = v154[1];
    v167 = v166 - *v154;
    if (__OFSUB__(v166, *v154))
    {
      goto LABEL_196;
    }

    v165 = __OFADD__(v157, v167);
    v168 = v157 + v167;
    if (v165)
    {
      goto LABEL_199;
    }

    if (v168 >= v162)
    {
      v182 = *v153;
      v181 = v153[1];
      v165 = __OFSUB__(v181, v182);
      v183 = v181 - v182;
      if (v165)
      {
        goto LABEL_207;
      }

      if (v157 < v183)
      {
        v152 = v15 - 2;
      }

      goto LABEL_166;
    }

    goto LABEL_144;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_178:
  v15 = v228;
  v263 = *v207;
  if (!v263)
  {
    goto LABEL_219;
  }

  v6 = v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_213:
    v6 = sub_2753B20A8(v6);
  }

  v196 = (v6 + 16);
  v197 = *(v6 + 16);
  while (v197 >= 2)
  {
    if (!*v227)
    {
      goto LABEL_216;
    }

    v198 = v6;
    v199 = (v6 + 16 * v197);
    v200 = *v199;
    v6 = &v196[2 * v197];
    v201 = *(v6 + 8);
    sub_2753B0C50(*v227 + *(v226 + 72) * *v199, *v227 + *(v226 + 72) * *v6, *v227 + *(v226 + 72) * v201, v263);
    if (v15)
    {
      break;
    }

    if (v201 < v200)
    {
      goto LABEL_204;
    }

    if (v197 - 2 >= *v196)
    {
      goto LABEL_205;
    }

    *v199 = v200;
    v199[1] = v201;
    v202 = *v196 - v197;
    if (*v196 < v197)
    {
      goto LABEL_206;
    }

    v197 = *v196 - 1;
    memmove(v6, (v6 + 16), 16 * v202);
    *v196 = v197;
    v6 = v198;
  }
}

uint64_t sub_2753B0C50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_2753B6A38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v135[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v153 = &v135[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v160 = &v135[-v17];
  MEMORY[0x28223BE20](v16);
  v159 = &v135[-v18];
  v19 = sub_2753B6898();
  v167 = *(v19 - 8);
  v20 = *(v167 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v141 = &v135[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v140 = &v135[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v139 = &v135[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v138 = &v135[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v145 = &v135[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v137 = &v135[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v147 = &v135[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v146 = &v135[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v150 = &v135[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v143 = &v135[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v135[-v42];
  MEMORY[0x28223BE20](v41);
  v142 = &v135[-v44];
  v173 = type metadata accessor for MusicAssetCandidate(0);
  v45 = *(*(v173 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v173);
  v144 = &v135[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = MEMORY[0x28223BE20](v46);
  v169 = &v135[-v49];
  v50 = MEMORY[0x28223BE20](v48);
  v172 = &v135[-v51];
  MEMORY[0x28223BE20](v50);
  v168 = &v135[-v52];
  v54 = *(v53 + 72);
  if (!v54)
  {
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (a2 - a1 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_139;
  }

  v56 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v54 != -1)
  {
    v155 = v13;
    v156 = a3;
    v176 = a1;
    v175 = a4;
    v170 = (v9 + 88);
    v171 = (v9 + 16);
    v166 = (v9 + 96);
    v165 = (v167 + 32);
    v164 = (v167 + 16);
    v163 = (v167 + 88);
    v162 = (v167 + 8);
    v161 = (v9 + 8);
    v58 = v54;
    v59 = MEMORY[0x277D65138];
    v60 = v56 / v54;
    v151 = v19;
    if ((a2 - a1) / v54 >= v56 / v54)
    {
      sub_27538593C(a2, v60, a4);
      v152 = a4;
      v95 = a4 + v60 * v58;
      v96 = -v58;
      LODWORD(v168) = *v59;
      LODWORD(v150) = *MEMORY[0x277D65148];
      LODWORD(v147) = *MEMORY[0x277D65140];
      LODWORD(v143) = *MEMORY[0x277D65150];
      LODWORD(v149) = *MEMORY[0x277D650D8];
      LODWORD(v146) = *MEMORY[0x277D650C8];
      LODWORD(v142) = *MEMORY[0x277D650C0];
      v136 = *MEMORY[0x277D650D0];
      v97 = v95;
      v157 = a1;
      v99 = v155;
      v98 = v156;
      v172 = v96;
LABEL_76:
      v154 = (a2 + v96);
      v100 = v98;
      v101 = v97;
      v158 = a2;
      v102 = v144;
      v156 = v97;
      while (1)
      {
        if (v95 <= v152)
        {
          v176 = a2;
          v174 = v101;
          goto LABEL_137;
        }

        if (a2 <= a1)
        {
          v176 = a2;
          v174 = v97;
          goto LABEL_137;
        }

        v160 = v100;
        v148 = v101;
        v167 = v95;
        v159 = (v95 + v96);
        v103 = v169;
        sub_2753B36B0(v95 + v96, v169, type metadata accessor for MusicAssetCandidate);
        sub_2753B36B0(v154, v102, type metadata accessor for MusicAssetCandidate);
        v104 = *v171;
        v105 = &v103[*(v173 + 20)];
        v106 = v153;
        (*v171)(v153, v105, v8);
        v107 = *v170;
        v108 = (*v170)(v106, v8);
        if (v108 == v168)
        {
          (*v161)(v106, v8);
          v109 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_94;
        }

        if (v108 == v150)
        {
          break;
        }

        if (v108 == v147)
        {
          v109 = 1;
          goto LABEL_85;
        }

        if (v108 != v143)
        {
          goto LABEL_141;
        }

        (*v166)(v106, v8);
        v115 = v145;
        (*v165)(v145, v106, v19);
        v109 = 0;
LABEL_88:
        v116 = v140;
        (*v164)(v140, v115, v19);
        v117 = (*v163)(v116, v19);
        if (v117 == v149)
        {
          (*v162)(v115, v19);
          v109 += 10;
LABEL_92:
          v102 = v144;
          v109 += 10;
LABEL_93:
          v109 += 10;
          goto LABEL_94;
        }

        if (v117 == v146)
        {
          (*v162)(v145, v19);
          goto LABEL_92;
        }

        v102 = v144;
        if (v117 == v142)
        {
          (*v162)(v145, v19);
          goto LABEL_93;
        }

        if (v117 != v136)
        {
          goto LABEL_141;
        }

        (*v162)(v145, v19);
LABEL_94:
        v104(v99, v102 + *(v173 + 20), v8);
        v118 = v107(v99, v8);
        if (v118 == v168)
        {
          (*v161)(v99, v8);
          v119 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_96:
          v120 = v160;
          goto LABEL_110;
        }

        if (v118 == v150)
        {
          v119 = 2;
LABEL_101:
          (*v166)(v99, v8);
          v121 = *v165;
          v122 = v138;
          (*v165)(v138, v99, v19);
          v123 = v139;
          (v121)(v139, v122, v19);
          a1 = v157;
          goto LABEL_104;
        }

        if (v118 == v147)
        {
          v119 = 1;
          goto LABEL_101;
        }

        if (v118 != v143)
        {
          goto LABEL_141;
        }

        (*v166)(v99, v8);
        v123 = v139;
        (*v165)();
        v119 = 0;
LABEL_104:
        v124 = v141;
        (*v164)(v141, v123, v19);
        v125 = (*v163)(v124, v19);
        if (v125 == v149)
        {
          (*v162)(v123, v19);
          v119 += 10;
LABEL_108:
          v119 += 10;
          goto LABEL_109;
        }

        if (v125 == v146)
        {
          (*v162)(v123, v19);
          goto LABEL_108;
        }

        if (v125 != v142)
        {
          if (v125 != v136)
          {
            goto LABEL_141;
          }

          (*v162)(v123, v19);
          goto LABEL_96;
        }

        (*v162)(v123, v19);
LABEL_109:
        v120 = v160;
        v119 += 10;
LABEL_110:
        v126 = &v172[v120];
        sub_2753B370C();
        sub_2753B370C();
        if (v119 < v109)
        {
          v131 = v120 < v158 || v126 >= v158;
          v98 = v126;
          if (v131)
          {
            a2 = v154;
            swift_arrayInitWithTakeFrontToBack();
            v97 = v148;
            v99 = v155;
            v96 = v172;
            v95 = v167;
          }

          else
          {
            v97 = v148;
            v132 = v154;
            a2 = v154;
            v96 = v172;
            v99 = v155;
            v95 = v167;
            if (v120 != v158)
            {
              v133 = v148;
              swift_arrayInitWithTakeBackToFront();
              v95 = v167;
              a2 = v132;
              v97 = v133;
            }
          }

          goto LABEL_76;
        }

        v127 = v120 < v167 || v126 >= v167;
        a2 = v158;
        v128 = v126;
        if (v127)
        {
          v129 = v159;
          swift_arrayInitWithTakeFrontToBack();
          v100 = v126;
          v95 = v129;
          v101 = v129;
          v99 = v155;
          v97 = v156;
          v96 = v172;
        }

        else
        {
          v101 = v159;
          v100 = v126;
          v95 = v159;
          v99 = v155;
          v97 = v156;
          v96 = v172;
          if (v167 != v120)
          {
            v130 = v159;
            swift_arrayInitWithTakeBackToFront();
            v97 = v156;
            v100 = v128;
            v95 = v130;
            v101 = v130;
          }
        }
      }

      v109 = 2;
LABEL_85:
      v110 = v153;
      (*v166)(v153, v8);
      v111 = *v165;
      v112 = v137;
      v113 = v110;
      v19 = v151;
      (*v165)(v137, v113, v151);
      v114 = v145;
      (v111)(v145, v112, v19);
      a1 = v157;
      v99 = v155;
      v115 = v114;
      goto LABEL_88;
    }

    v61 = (a2 - a1) / v54;
    sub_27538593C(a1, v61, a4);
    v155 = a4 + v61 * v58;
    v174 = v155;
    LODWORD(v167) = *v59;
    LODWORD(v153) = *MEMORY[0x277D65148];
    LODWORD(v145) = *MEMORY[0x277D65140];
    LODWORD(v141) = *MEMORY[0x277D65150];
    LODWORD(v152) = *MEMORY[0x277D650D8];
    LODWORD(v144) = *MEMORY[0x277D650C8];
    LODWORD(v140) = *MEMORY[0x277D650C0];
    LODWORD(v139) = *MEMORY[0x277D650D0];
    v149 = v8;
    v148 = v43;
    v154 = v58;
    while (1)
    {
      if (a4 >= v155 || a2 >= v156)
      {
LABEL_137:
        sub_2753B20BC(&v176, &v175, &v174);
        return 1;
      }

      v63 = v168;
      sub_2753B36B0(a2, v168, type metadata accessor for MusicAssetCandidate);
      sub_2753B36B0(a4, v172, type metadata accessor for MusicAssetCandidate);
      v64 = *v171;
      v65 = v159;
      (*v171)(v159, &v63[*(v173 + 20)], v8);
      v66 = *v170;
      v67 = (*v170)(v65, v8);
      if (v67 == v167)
      {
        (*v161)(v65, v8);
        v68 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_32;
      }

      if (v67 == v153)
      {
        break;
      }

      if (v67 == v145)
      {
        v157 = a1;
        v158 = a2;
        v69 = a4;
        v70 = 1;
        goto LABEL_23;
      }

      if (v67 != v141)
      {
        goto LABEL_141;
      }

      (*v166)(v65, v8);
      (*v165)(v43, v65, v19);
      v169 = 0;
LABEL_26:
      v75 = v146;
      (*v164)(v146, v43, v19);
      v76 = (*v163)(v75, v19);
      if (v76 == v152)
      {
        (*v162)(v43, v19);
        v77 = v169 + 10;
LABEL_30:
        v78 = v77 + 10;
        goto LABEL_31;
      }

      if (v76 == v144)
      {
        (*v162)(v43, v19);
        v77 = v169;
        goto LABEL_30;
      }

      if (v76 == v140)
      {
        (*v162)(v43, v19);
        v78 = v169;
LABEL_31:
        v68 = (v78 + 10);
LABEL_32:
        v169 = v68;
        goto LABEL_33;
      }

      if (v76 != v139)
      {
        goto LABEL_141;
      }

      (*v162)(v43, v19);
LABEL_33:
      v79 = v160;
      v64(v160, &v172[*(v173 + 20)], v8);
      v80 = v66(v79, v8);
      if (v80 == v167)
      {
        (*v161)(v79, v8);
        v81 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_48;
      }

      v82 = v150;
      if (v80 == v153)
      {
        v83 = a1;
        v84 = a4;
        v81 = 2;
LABEL_39:
        v85 = v160;
        (*v166)(v160, v8);
        v86 = *v165;
        v87 = v143;
        v88 = v151;
        (*v165)(v143, v85, v151);
        v82 = v150;
        (v86)(v150, v87, v88);
        a4 = v84;
        a1 = v83;
        v19 = v88;
        v8 = v149;
        v43 = v148;
        goto LABEL_42;
      }

      if (v80 == v145)
      {
        v83 = a1;
        v84 = a4;
        v81 = 1;
        goto LABEL_39;
      }

      if (v80 != v141)
      {
        goto LABEL_141;
      }

      (*v166)(v79, v8);
      (*v165)(v82, v79, v19);
      v81 = 0;
LABEL_42:
      v89 = v147;
      (*v164)(v147, v82, v19);
      v90 = (*v163)(v89, v19);
      if (v90 == v152)
      {
        (*v162)(v82, v19);
        v81 += 10;
LABEL_46:
        v81 += 10;
LABEL_47:
        v81 += 10;
        goto LABEL_48;
      }

      if (v90 == v144)
      {
        (*v162)(v82, v19);
        goto LABEL_46;
      }

      if (v90 == v140)
      {
        (*v162)(v82, v19);
        goto LABEL_47;
      }

      if (v90 != v139)
      {
        goto LABEL_141;
      }

      (*v162)(v82, v19);
LABEL_48:
      sub_2753B370C();
      sub_2753B370C();
      if (v81 >= v169)
      {
        v91 = v154;
        v93 = &v154[a4];
        if (a1 < a4 || a1 >= v93)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v175 = v93;
        a4 += v91;
      }

      else
      {
        v91 = v154;
        if (a1 < a2 || a1 >= &v154[a2])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v91;
      }

      a1 += v91;
      v176 = a1;
    }

    v157 = a1;
    v158 = a2;
    v69 = a4;
    v70 = 2;
LABEL_23:
    v169 = v70;
    v71 = v159;
    v8 = v149;
    (*v166)(v159, v149);
    v72 = *v165;
    v73 = v142;
    v74 = v71;
    v19 = v151;
    (*v165)(v142, v74, v151);
    v43 = v148;
    (v72)(v148, v73, v19);
    a4 = v69;
    a1 = v157;
    a2 = v158;
    goto LABEL_26;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  result = sub_2753B7708();
  __break(1u);
  return result;
}

uint64_t sub_2753B20BC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for MusicAssetCandidate(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2753B219C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2753B21C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2753AC02C(0, &qword_2809C2F10, sub_2753881C4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2753B22EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_2753B3B24(0, &qword_2809C1418, &type metadata for MusicContent.QualifiedIdentifier, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_275385858((a4 + 32), v8, (v10 + 32));
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

void sub_2753B240C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_52_4();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_80_3(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_24_4(v10, &qword_2809C1B20, &type metadata for MusicContent.RawIdentifier);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size_0(v11);
      OUTLINED_FUNCTION_92_3(v12);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_38_4();
        sub_2753858A8(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_184_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_51_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2753B250C(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_52_4();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_2753B3B24(0, a5, a6, MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size_0(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_184_1();
  if (!v12)
  {
    OUTLINED_FUNCTION_51_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2753B2618(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_52_4();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_80_3(v8);
    if (v5)
    {
      sub_2753AC02C(0, &qword_2809C3848, type metadata accessor for CMTimeMapping, MEMORY[0x277D84560]);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size_0(v11);
      OUTLINED_FUNCTION_92_3(v12);
      if (a1)
      {
LABEL_9:
        v13 = OUTLINED_FUNCTION_38_4();
        sub_2753858CC(v13, v14, v15);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v11 + 32), (a4 + 32), 96 * v4);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_184_1();
  if (!v9)
  {
    OUTLINED_FUNCTION_51_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2753B2710(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_52_4();
  if (v9 == v10)
  {
LABEL_7:
    OUTLINED_FUNCTION_80_3(v8);
    if (v5)
    {
      OUTLINED_FUNCTION_24_4(v11, &qword_2809C35B0, MEMORY[0x277D839F8]);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size_0(v12);
      v12[2] = v4;
      v12[3] = 2 * ((v13 - 32) / 8);
      if (a1)
      {
LABEL_9:
        v14 = OUTLINED_FUNCTION_38_4();
        sub_2753858F4(v14, v15, v16);
        *(a4 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v12 + 4, (a4 + 32), 8 * v4);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_184_1();
  if (!v9)
  {
    OUTLINED_FUNCTION_51_2();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2753B27E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_2753AC02C(0, &qword_2809C2F20, type metadata accessor for CMTime, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_275385914((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_2753B290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2753B6D78();

  if (a4)
  {
    v8 = sub_2753B6C68();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_2753B29BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2753B7798();
  sub_2753B6688();
  v6 = sub_2753B77D8();

  return sub_2753844F4(a1, a2, v6);
}

_OWORD *sub_2753B2A34(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2753B29BC(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_2753B33B4();
  if ((sub_2753B7478() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_2753B29BC(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2753B7768();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_2753A8BC4(a1, v17);
  }

  else
  {
    sub_2753B3418(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_2753B2B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t sub_2753B2BCC(uint64_t a1, uint64_t a2)
{
  sub_2753AC02C(0, &qword_2809C37B8, type metadata accessor for MusicAssetCandidate, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2753B2C64()
{
  result = qword_2809C37E8;
  if (!qword_2809C37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C37E8);
  }

  return result;
}

unint64_t sub_2753B2CBC()
{
  result = qword_2809C37F0;
  if (!qword_2809C37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C37F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicAssetSelectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753B2DDCLL);
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

uint64_t get_enum_tag_for_layout_string_015_SonicKit_MusicB00C18AssetSelectionModeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2753B2E44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_2753B2E84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2753B2EC8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2753B2F04()
{
  OUTLINED_FUNCTION_58_2();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_68_4(*(v0 + 8));
  }

  v5 = v2;
  if (*(*(sub_2753B6A38() - 8) + 84) == v1)
  {
    v6 = *(v5 + 20);
  }

  else
  {
    OUTLINED_FUNCTION_2_12();
    sub_2753AC02C(0, v7, v8, MEMORY[0x277D83D88]);
    v6 = *(v5 + 24);
  }

  v9 = OUTLINED_FUNCTION_54_4(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_2753B2FF0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58_2();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(sub_2753B6A38() - 8) + 84) == v4)
    {
      v8 = *(v7 + 20);
    }

    else
    {
      OUTLINED_FUNCTION_2_12();
      sub_2753AC02C(0, v9, v10, MEMORY[0x277D83D88]);
      v8 = *(v7 + 24);
    }

    v11 = OUTLINED_FUNCTION_54_4(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
  }
}

void sub_2753B30D0()
{
  sub_2753B6A38();
  if (v0 <= 0x3F)
  {
    sub_2753AC02C(319, &qword_2809C3790, type metadata accessor for AssetRecipe, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2753AC02C(319, &qword_2809C3808, sub_275358C80, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2753B31F0()
{
  OUTLINED_FUNCTION_58_2();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_68_4(*(v0 + 16));
  }

  v5 = v1;
  sub_2753AA36C();
  v6 = OUTLINED_FUNCTION_54_4(*(v5 + 24));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2753B3278(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58_2();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_2753AA36C();
    v8 = OUTLINED_FUNCTION_54_4(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

void sub_2753B32F0()
{
  sub_2753AC02C(319, &qword_2809C3820, type metadata accessor for MusicAssetCandidate, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2753AA36C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2753B33B4()
{
  if (!qword_2809C3828)
  {
    v0 = sub_2753B7498();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3828);
    }
  }
}

_OWORD *sub_2753B3418(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2753A8BC4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_2753B3484()
{
  if (!qword_2809C3830)
  {
    sub_2753B6A38();
    sub_2753AC02C(255, &qword_2809C3808, sub_275358C80, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2809C3830);
    }
  }
}

uint64_t sub_2753B352C()
{
  OUTLINED_FUNCTION_68_0();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2752FD514;

  return sub_2753AD1B0(v5, v3, v8, v6, v7);
}

uint64_t sub_2753B3690(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_2753AE13C(a1, *(v1 + 32));
}

uint64_t sub_2753B36B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t sub_2753B370C()
{
  v1 = OUTLINED_FUNCTION_24();
  v3 = v2(v1);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2753B3760()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for FacetCollection<>.Asset();
  OUTLINED_FUNCTION_17_1(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = *(v0 + 7);

  v11 = *(v2 + 8);
  v12 = sub_2753B69B8();
  OUTLINED_FUNCTION_9(v12);
  (*(v13 + 8))(&v0[v6]);

  return MEMORY[0x2821FE8E8](v0, v6 + v8, v5 | 7);
}

uint64_t sub_2753B3848(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = type metadata accessor for FacetCollection<>.Asset();
  OUTLINED_FUNCTION_75(v6);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = v1[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v2 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_2752FE5C0;

  return sub_2753ADBCC(a1, v9, v10, v11, v12, v1 + v8, v5, v4);
}

uint64_t sub_2753B3960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2753AC02C(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2753B39C8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2753AC02C(0, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return a2;
}

uint64_t sub_2753B3A3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2753B3A74()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2752FD514;

  return sub_27539AEB4(v3, v5);
}

void sub_2753B3B24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_11()
{
  v2 = v0[39];
  result = v0[40];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[28];
  v11 = v0[29];
  v13 = v0[24];
  v12 = v0[25];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_9()
{
  result = *(v0 + 360);
  v2 = *(v0 + 90);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{
  *(a1 + 8) = sub_2753AD52C;
  v2 = v1[19];
  result = v1[16];
  v4 = v1[17];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_8()
{
  *(v0 + 8) = sub_2753ACC98;
  v3 = v1[9];
  result = v1[10];
  v4 = v1[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{
  v4 = v2 + *(a1 + 24);

  return sub_2753B2B70(v1, v4, sub_2753AA36C);
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return sub_2753B2B70(v0, v1, type metadata accessor for AssetRecipe);
}

void OUTLINED_FUNCTION_24_4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_2753B3B24(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2, unint64_t *a3)
{

  return sub_2753B39C8(a1, v3, a3, type metadata accessor for MusicAssetCandidate);
}

void OUTLINED_FUNCTION_32_5()
{
  v2 = v0[27];
  v3 = v0[28];
  v4 = *(v0[26] + 28);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6 = *(v2 + 72);
}

uint64_t OUTLINED_FUNCTION_34_5()
{
  v3 = v0[23];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[19];
  v7 = v0[18];
}

id OUTLINED_FUNCTION_41_5()
{

  return sub_2753B290C(v1, v2, v3, v0);
}

_OWORD *OUTLINED_FUNCTION_42_4()
{

  return sub_2753B2A34((v0 + 48), v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 32);
  return result;
}

void OUTLINED_FUNCTION_48_4()
{

  JUMPOUT(0x277C755D0);
}

uint64_t OUTLINED_FUNCTION_49_4(uint64_t a1)
{
  *(v2 + *(a1 + 24)) = v1;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_50_5()
{

  sub_27538553C();
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{

  return MEMORY[0x2821CC270](v3, v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_5()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return FacetCollection<>.Asset.id.getter(v0);
}

void OUTLINED_FUNCTION_57_2()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  *(v0 + 89) = 1;
}

void OUTLINED_FUNCTION_64_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *v18 = v17;
  *(v18 + 8) = v16;
  *(v18 + 16) = a16;
}

void OUTLINED_FUNCTION_66_5()
{
  v1 = *(v0 + 472);
  *v1 = 0;
  *(v1 + 8) = 2;
}

uint64_t OUTLINED_FUNCTION_68_4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_73_5()
{
  v2 = v0[29];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[12];
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1)
{

  return MEMORY[0x2821FDE20](v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return FacetCollection<>.Asset.id.getter(v0);
}

uint64_t OUTLINED_FUNCTION_79_4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = v1;
  sub_2753A8BC4((v2 + 16), (v2 + 48));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t URL.UserAttributes.init(url:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(type metadata accessor for URL.UserAttributes() + 20));
  v9 = sub_2753B61F8();
  OUTLINED_FUNCTION_9(v9);
  result = (*(v10 + 32))(a4, a1);
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t type metadata accessor for URL.UserAttributes()
{
  result = qword_2809C3868;
  if (!qword_2809C3868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2753B41BC()
{
  sub_2753B4CE0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2753C28B0;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000002753BE230;
  v2 = (v0 + *(type metadata accessor for URL.UserAttributes() + 20));
  v3 = v2[1];
  *(inited + 48) = *v2;
  *(inited + 56) = v3;

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (inited + 40 + 16 * v4);
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v5 + 16);
        sub_275385044();
        v5 = v13;
      }

      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_275385044();
        v5 = v14;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_275384E04();
  sub_2753B4D54(0, &qword_2809C1BB0, MEMORY[0x277D83940]);
  sub_275329E9C();
  v15 = sub_2753B6D48();

  return v15;
}

uint64_t URL.UserAttributes.assetRecipe.getter()
{
  type metadata accessor for AssetRecipe(0);
  sub_2753B41BC();
  OUTLINED_FUNCTION_3_15(&qword_2809C3850);
  OUTLINED_FUNCTION_2_13(&qword_2809C3858);
  sub_2753B6118();
}

uint64_t sub_2753B4410(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetRecipe(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t URL.UserAttributes.setAssetRecipe(_:)(uint64_t a1)
{
  v46 = a1;
  v1 = type metadata accessor for AssetRecipe(0);
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_13();
  v43 = v5;
  sub_2753B484C();
  v44 = v6;
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_13();
  v45 = v10;
  sub_2753B48B0();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  v21 = sub_2753B41BC();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_3_15(&qword_2809C3850);
  OUTLINED_FUNCTION_2_13(&qword_2809C3858);
  v48 = v23;
  v25 = v47;
  sub_2753B6118();
  if (v25)
  {
  }

  v42[0] = v15;
  v42[1] = v21;
  v42[2] = v24;
  v42[3] = 0;
  sub_2753B4908(v46, v18, type metadata accessor for AssetRecipe);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v1);
  v26 = v45;
  v27 = *(v44 + 48);
  v47 = v20;
  sub_2753B4908(v20, v45, sub_2753B48B0);
  sub_2753B4908(v18, v26 + v27, sub_2753B48B0);
  v28 = v1;
  if (__swift_getEnumTagSinglePayload(v26, 1, v1) != 1)
  {
    v31 = v42[0];
    sub_2753B4908(v26, v42[0], sub_2753B48B0);
    if (__swift_getEnumTagSinglePayload(v26 + v27, 1, v28) != 1)
    {
      v36 = v26 + v27;
      v37 = v31;
      v38 = v43;
      sub_2753B49C0(v36, v43);
      static AssetRecipe.== infix(_:_:)();
      LODWORD(v44) = v39;
      sub_2753B4968(v38, type metadata accessor for AssetRecipe);
      sub_2753B4968(v18, sub_2753B48B0);
      sub_2753B4968(v37, type metadata accessor for AssetRecipe);
      sub_2753B4968(v26, sub_2753B48B0);
      if (v44)
      {

        goto LABEL_12;
      }

      goto LABEL_8;
    }

    OUTLINED_FUNCTION_0_15();
    sub_2753B4968(v18, v32);
    sub_2753B4968(v31, type metadata accessor for AssetRecipe);
LABEL_7:
    sub_2753B4968(v26, sub_2753B484C);
LABEL_8:
    sub_2753B6128();
    OUTLINED_FUNCTION_0_15();
    sub_2753B4968(v33, v34);
  }

  OUTLINED_FUNCTION_0_15();
  sub_2753B4968(v18, v29);
  if (__swift_getEnumTagSinglePayload(v26 + v27, 1, v1) != 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_15();
  sub_2753B4968(v26, v30);
LABEL_12:
  OUTLINED_FUNCTION_0_15();
  return sub_2753B4968(v40, v41);
}

void sub_2753B484C()
{
  if (!qword_2809C3860)
  {
    sub_2753B48B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C3860);
    }
  }
}

void sub_2753B48B0()
{
  if (!qword_2809C3790)
  {
    type metadata accessor for AssetRecipe(255);
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3790);
    }
  }
}

uint64_t sub_2753B4908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2753B4968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2753B49C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t URL.attributes(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2753B61F8();
  OUTLINED_FUNCTION_9(v7);
  (*(v8 + 16))(a3, v3);
  v9 = (a3 + *(type metadata accessor for URL.UserAttributes() + 20));
  *v9 = a1;
  v9[1] = a2;
}

uint64_t sub_2753B4AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2753B61F8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2753B4B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2753B61F8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2753B4C40()
{
  sub_2753B61F8();
  if (v0 <= 0x3F)
  {
    sub_2753B4D54(319, &qword_2809C0E08, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2753B4CE0()
{
  if (!qword_2809C3878)
  {
    sub_2753B4D54(255, &qword_2809C0E08, MEMORY[0x277D83D88]);
    v0 = sub_2753B76C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C3878);
    }
  }
}

void sub_2753B4D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_13(unint64_t *a1)
{

  return sub_2753B4410(a1);
}

uint64_t OUTLINED_FUNCTION_3_15(unint64_t *a1)
{

  return sub_2753B4410(a1);
}

unint64_t sub_2753B4E78()
{
  result = qword_2809C3880;
  if (!qword_2809C3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3880);
  }

  return result;
}

uint64_t sub_2753B4F28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752E546C;

  return sub_27539BAC4();
}

unint64_t sub_2753B4FD8()
{
  result = qword_2809C3888;
  if (!qword_2809C3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3888);
  }

  return result;
}

unint64_t sub_2753B5030()
{
  result = qword_2809C3890;
  if (!qword_2809C3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C3890);
  }

  return result;
}

uint64_t static Configuration.systemMusic.getter()
{
  if (qword_2809C0700 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }
}

uint64_t static PlaybackEngine.music(configuration:)()
{
  v0 = sub_2753B54D4();

  return MEMORY[0x2821CC428](v1, &unk_28840EE68, &unk_28840EE68, v0);
}

uint64_t sub_2753B5150@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = Configuration.supportsAutoplay.getter();
  *a2 = result & 1;
  return result;
}

uint64_t (*Configuration.supportsAutoplay.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = Configuration.supportsAutoplay.getter() & 1;
  return sub_2753B521C;
}

uint64_t sub_2753B526C(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  a2();
  sub_2753B6908();

  return v4;
}

uint64_t sub_2753B52D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = Configuration.supportsSing.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2753B5354(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getKeyPath();
  a3();
  return sub_2753B6918();
}

uint64_t (*Configuration.supportsSing.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = Configuration.supportsSing.getter() & 1;
  return sub_2753B5410;
}

uint64_t sub_2753B5438()
{
  sub_2753B68F8();
  sub_2753B72E8();
  sub_2753B6C98();
  v0 = sub_2753B68D8();

  sub_2753B68E8();
  sub_2753B68C8();
  Configuration.supportsSing.setter(1);
  Configuration.supportsAutoplay.setter(1);

  qword_2809C3898 = v0;
  return result;
}

unint64_t sub_2753B54D4()
{
  result = qword_2809C38A0;
  if (!qword_2809C38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38A0);
  }

  return result;
}

uint64_t sub_2753B5528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = Configuration.supportsAutoplay.getter();
  *a2 = result & 1;
  return result;
}

unint64_t sub_2753B5580()
{
  result = qword_2809C38A8;
  if (!qword_2809C38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38A8);
  }

  return result;
}

uint64_t sub_2753B55D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = Configuration.supportsSing.getter();
  *a2 = result & 1;
  return result;
}

unint64_t sub_2753B562C()
{
  result = qword_2809C38B0;
  if (!qword_2809C38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38B0);
  }

  return result;
}

uint64_t static Configuration.applicationMusic()()
{
  sub_2753B72E8();
  sub_2753B6C98();
  v0 = sub_2753B68D8();
  sub_2753B68C8();
  Configuration.supportsSing.setter(0);
  Configuration.supportsAutoplay.setter(0);
  return v0;
}

uint64_t static Configuration.multiplayerMusic()()
{
  if (qword_2809C0700 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v0 = qword_2809C3898;

  Configuration.supportsSing.setter(0);
  return v0;
}

unint64_t sub_2753B576C()
{
  result = qword_2809C38B8;
  if (!qword_2809C38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38B8);
  }

  return result;
}

unint64_t sub_2753B57C4()
{
  result = qword_2809C38C0;
  if (!qword_2809C38C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38C0);
  }

  return result;
}

unint64_t sub_2753B581C()
{
  result = qword_2809C38C8;
  if (!qword_2809C38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38C8);
  }

  return result;
}

unint64_t sub_2753B5874()
{
  result = qword_2809C38D0;
  if (!qword_2809C38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38D0);
  }

  return result;
}

unint64_t sub_2753B58CC()
{
  result = qword_2809C38D8;
  if (!qword_2809C38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38D8);
  }

  return result;
}

unint64_t sub_2753B5924()
{
  result = qword_2809C38E0;
  if (!qword_2809C38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C38E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}