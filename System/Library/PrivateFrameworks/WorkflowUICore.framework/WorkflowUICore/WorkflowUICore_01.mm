uint64_t sub_274AF5848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274AF58B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_274AF5954(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_274AF59D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_274AF5A14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_274AF61E8()
{
  result = qword_280989788;
  if (!qword_280989788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989788);
  }

  return result;
}

unint64_t sub_274AF623C()
{
  result = qword_280989790;
  if (!qword_280989790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989790);
  }

  return result;
}

uint64_t sub_274AF6294()
{
  sub_274BF4F44();
  v0 = sub_274BF4F04();

  return v0;
}

unint64_t sub_274AF62D0()
{
  result = qword_2809897B8;
  if (!qword_2809897B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809897B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFAskLLMFeedbackPresenter.ConversationEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFAskLLMFeedbackPresenter.ConversationEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_274AF64D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274AF6510(uint64_t result, int a2, int a3)
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

unint64_t sub_274AF6564()
{
  result = qword_280989820;
  if (!qword_280989820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989820);
  }

  return result;
}

unint64_t sub_274AF65BC()
{
  result = qword_280989828;
  if (!qword_280989828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989828);
  }

  return result;
}

unint64_t sub_274AF6614()
{
  result = qword_280989830;
  if (!qword_280989830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989830);
  }

  return result;
}

unint64_t sub_274AF6668()
{
  result = qword_280989840;
  if (!qword_280989840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989840);
  }

  return result;
}

unint64_t sub_274AF66BC()
{
  result = qword_280989848;
  if (!qword_280989848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989848);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFAskLLMFeedbackPresenter.UserRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFAskLLMFeedbackPresenter.UserRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_274AF68B4()
{
  result = qword_280989858;
  if (!qword_280989858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989858);
  }

  return result;
}

unint64_t sub_274AF690C()
{
  result = qword_280989860;
  if (!qword_280989860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989860);
  }

  return result;
}

unint64_t sub_274AF6964()
{
  result = qword_280989868;
  if (!qword_280989868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return sub_274BF33D4();
}

uint64_t PlatformViewReusePool.__allocating_init()()
{
  OUTLINED_FUNCTION_0_0();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_274BF4E14();
  return v0;
}

uint64_t sub_274AF6AB4()
{
  v1 = sub_274BF4E14();
  swift_beginAccess();
  *(v0 + 16) = v1;
}

uint64_t PlatformViewReusePool.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t PlatformViewReusePoolState.__deallocating_deinit()
{
  PlatformViewReusePool.deinit();
  v0 = OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274AF6BA0()
{
  type metadata accessor for PlatformViewReusePool();
  v0 = swift_allocObject();
  result = sub_274BF4E14();
  *(v0 + 16) = result;
  qword_280989990 = v0;
  return result;
}

uint64_t sub_274AF6C04@<X0>(void *a1@<X8>)
{
  if (qword_280989380 != -1)
  {
    swift_once();
  }

  *a1 = qword_280989990;
}

uint64_t EnvironmentValues.platformViewReusePool.getter()
{
  sub_274AF6CB0();
  sub_274BF37A4();
  return v1;
}

unint64_t sub_274AF6CB0()
{
  result = qword_28098B2F0;
  if (!qword_28098B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2F0);
  }

  return result;
}

uint64_t (*EnvironmentValues.platformViewReusePool.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_274AF6CB0();
  sub_274BF37A4();
  return sub_274AF6DCC;
}

uint64_t sub_274AF6DCC(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_274BF37B4();
  }

  sub_274BF37B4();
}

uint64_t sub_274AF6F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AF6FB8();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274AF6FE0())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_1(KeyPath);
  return sub_274AF7058;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void (*sub_274AF70A8())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_5_0(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A20);
  OUTLINED_FUNCTION_7_3(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  sub_274BF2D34();
  swift_endAccess();
  return sub_274AF71AC;
}

uint64_t sub_274AF71C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AF721C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274AF7230()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274AF72B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t (*sub_274AF731C())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_1(KeyPath);
  return sub_274AF8B34;
}

void sub_274AF7394(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_274AF73FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A20);
  OUTLINED_FUNCTION_1();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a5(v10);
}

uint64_t sub_274AF74D8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  sub_274BF2D34();
  return swift_endAccess();
}

uint64_t sub_274AF7554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A20);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  sub_274BF2D44();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_274AF7680())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_5_0(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A20);
  OUTLINED_FUNCTION_7_3(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  sub_274BF2D34();
  swift_endAccess();
  return sub_274AF7784;
}

void sub_274AF779C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_274AF7864@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  if (sub_274AF721C())
  {
    v5 = AGDebugServerCopyURL();
    if (v5)
    {
      v6 = v5;
      sub_274BF1F04();

      v7 = sub_274BF1F54();
      v8 = 0;
    }

    else
    {
      v7 = sub_274BF1F54();
      v8 = 1;
    }

    __swift_storeEnumTagSinglePayload(v4, v8, 1, v7);
    return sub_274AF7970(v4, a1);
  }

  else
  {
    v9 = sub_274BF1F54();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

uint64_t sub_274AF7970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274AF79E0()
{
  type metadata accessor for AttributeGraphProfiler();
  swift_allocObject();
  result = sub_274AF7A7C();
  qword_2815A32E0 = result;
  return result;
}

uint64_t static AttributeGraphProfiler.shared.getter()
{
  if (qword_2815A32D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_274AF7A7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC14WorkflowUICore22AttributeGraphProfiler__isProfiling;
  v14 = 0;
  v6 = MEMORY[0x277D839B0];
  sub_274BF2D24();
  v7 = *(v2 + 32);
  v7(v0 + v5, v4, v1);
  v8 = OBJC_IVAR____TtC14WorkflowUICore22AttributeGraphProfiler__isDebugServerRunning;
  v14 = 0;
  sub_274BF2D24();
  v7(v0 + v8, v4, v1);
  v9 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFA880;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x8000000274C09AF0;
  *(inited + 48) = 0;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x8000000274C09B20;
  *(inited + 120) = v6;
  *(inited + 96) = 0;
  sub_274BF4E14();
  v11 = sub_274BF4DE4();

  [v9 registerDefaults_];

  return v0;
}

id sub_274AF7CEC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_0_1();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_274AF7D68(char a1)
{
  type metadata accessor for AttributeGraphProfiler();
  sub_274AF7E98();
  sub_274BF2CE4();
  sub_274BF2D04();

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = OUTLINED_FUNCTION_0_1();
  [v2 setBool:a1 & 1 forKey:v3];

  if (a1)
  {

    sub_274AF8210();
  }

  else
  {

    sub_274AF8354();
  }
}

uint64_t type metadata accessor for AttributeGraphProfiler()
{
  result = qword_2815A32C0;
  if (!qword_2815A32C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274AF7E98()
{
  result = qword_280989A28;
  if (!qword_280989A28)
  {
    type metadata accessor for AttributeGraphProfiler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989A28);
  }

  return result;
}

void (*sub_274AF7EF0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_274AF7CEC() & 1;
  return sub_274AF7F3C;
}

id sub_274AF7FB0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_0_1();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_274AF802C(char a1)
{
  type metadata accessor for AttributeGraphProfiler();
  sub_274AF7E98();
  sub_274BF2CE4();
  sub_274BF2D04();

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = OUTLINED_FUNCTION_0_1();
  [v2 setBool:a1 & 1 forKey:v3];

  if (a1)
  {

    return sub_274AF8394();
  }

  else
  {
    result = sub_274AF721C();
    if (result)
    {
      MEMORY[0x277C65690]();

      return sub_274AF729C();
    }
  }

  return result;
}

uint64_t (*sub_274AF8134(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_274AF7FB0() & 1;
  return sub_274AF8180;
}

uint64_t sub_274AF81A8()
{
  sub_274AF8210();

  return sub_274AF8394();
}

uint64_t sub_274AF81D0()
{
  sub_274AF8354();
  result = sub_274AF721C();
  if (result)
  {
    MEMORY[0x277C65690]();

    return sub_274AF729C();
  }

  return result;
}

void sub_274AF8210()
{
  if ((sub_274AF7CEC() & 1) != 0 && (sub_274AF6FB8() & 1) == 0)
  {
    AGSubgraphSetShouldRecordTree();
    AGGraphStartProfiling();
    sub_274AF6FCC();
    v0 = CFRunLoopGetMain();
    if (v0)
    {
      rl = v0;
      v1 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 250000, sub_274AF82F0, 0);
      if (v1)
      {
        v2 = v1;
        CFRunLoopAddObserver(rl, v1, *MEMORY[0x277CBF048]);
      }
    }
  }
}

void sub_274AF82F0(void *a1)
{
  v1 = a1;
  sub_274AF82E0();
}

uint64_t sub_274AF8354()
{
  result = sub_274AF6FB8();
  if (result)
  {
    AGGraphStopProfiling();

    return sub_274AF6FCC();
  }

  return result;
}

uint64_t sub_274AF8394()
{
  result = sub_274AF7FB0();
  if (result)
  {
    result = sub_274AF721C();
    if ((result & 1) == 0)
    {
      MEMORY[0x277C65680](3);

      return sub_274AF729C();
    }
  }

  return result;
}

uint64_t sub_274AF83DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF1F54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_274AF6FB8())
  {
    AGGraphArchiveJSON();
    AGGraphResetProfile();
    v8 = NSTemporaryDirectory();
    sub_274BF4F44();

    sub_274BF1EB4();

    sub_274BF1EE4();
    (*(v4 + 8))(v7, v2);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t AttributeGraphProfiler.deinit()
{
  v2 = OBJC_IVAR____TtC14WorkflowUICore22AttributeGraphProfiler__isProfiling;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  OUTLINED_FUNCTION_6_3();
  v4 = *(v3 + 8);
  v4(v1 + v2, v0);
  v4(v1 + OBJC_IVAR____TtC14WorkflowUICore22AttributeGraphProfiler__isDebugServerRunning, v0);
  return v1;
}

uint64_t AttributeGraphProfiler.__deallocating_deinit()
{
  v2 = OBJC_IVAR____TtC14WorkflowUICore22AttributeGraphProfiler__isProfiling;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A18);
  OUTLINED_FUNCTION_6_3();
  v4 = *(v3 + 8);
  v4(v1 + v2, v0);
  v4(v1 + OBJC_IVAR____TtC14WorkflowUICore22AttributeGraphProfiler__isDebugServerRunning, v0);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v5, v6);
}

uint64_t sub_274AF86C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AttributeGraphProfiler();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

void sub_274AF870C()
{
  sub_274AF8AE4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274AF8AE4()
{
  if (!qword_2815A3128)
  {
    v0 = sub_274BF2D94();
    if (!v1)
    {
      atomic_store(v0, &qword_2815A3128);
    }
  }
}

uint64_t clamp<A>(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (sub_274BF4ED4())
  {
    v8 = *(*(a3 - 8) + 16);
    v9 = a4;
    v10 = a2;
  }

  else
  {
    v11 = *(sub_274BF4EE4() + 36);
    v12 = sub_274BF4EC4();
    v8 = *(*(a3 - 8) + 16);
    if (v12)
    {
      v10 = a2 + v11;
      v9 = a4;
    }

    else
    {
      v9 = a4;
      v10 = a1;
    }
  }

  return v8(v9, v10, a3);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_274AF8C54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_274AF8C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274AF8D04@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A38);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  *v6 = sub_274BF38F4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A40);
  sub_274AF8E5C(v1, &v6[*(v7 + 44)]);
  v8 = sub_274BF3E34();
  sub_274BF2E54();
  v9 = &v6[*(v4 + 44)];
  *v9 = v8;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 4) = v13;
  v9[40] = 0;
  LOBYTE(v4) = sub_274BF3EA4();
  sub_274BF2E54();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_274AE5CE8(v6, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A48);
  v23 = a1 + *(result + 36);
  *v23 = v4;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_274AF8E5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = sub_274BF3C04();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A50);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x28223BE20](v6);
  v60 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v46[-v10];
  sub_274AF9388(a1, &v72);
  v68 = v73;
  v69 = v72;
  v66 = v75;
  v67 = v74;
  v65 = v76;
  v63 = v78;
  v64 = v77;
  v12 = *(a1 + 8);
  sub_274BF4A94();
  sub_274BF30D4();
  *(v70 + 3) = *&v70[7];
  *(&v70[2] + 3) = *&v70[9];
  *(&v70[4] + 3) = *&v70[11];
  v13 = [*(v12 + 16) richListTitle];
  v14 = sub_274BF4F44();
  v16 = v15;

  v72 = v14;
  v73 = v16;
  sub_274ADDF6C();
  v17 = sub_274BF4104();
  v19 = v18;
  v72 = v17;
  v73 = v18;
  v21 = v20 & 1;
  LOBYTE(v74) = v20 & 1;
  v75 = v22;
  sub_274BF3BF4();
  v51 = v11;
  sub_274BF4274();
  (*(v59 + 8))(v5, v3);
  sub_274AFA1D0(v17, v19, v21);

  sub_274AF9BC8(&v72);
  v54 = v73;
  v55 = v72;
  v23 = v75;
  v53 = v74;
  v56 = BYTE1(v76);
  v24 = v76;
  v25 = sub_274AF9EE0(&v72);
  v26 = v72;
  v58 = v74;
  v59 = v73;
  v57 = v75;
  v49 = v76;
  v50 = BYTE1(v76);
  v27 = v61;
  v28 = *(v62 + 16);
  v29 = v60;
  (v28)(v60, v11, v61, v25);
  *(&v71[5] + 5) = *v70;
  v71[0] = v69;
  v71[1] = v68;
  v71[2] = v67;
  v71[3] = v66;
  v71[4] = v65;
  LODWORD(v71[5]) = v64;
  BYTE4(v71[5]) = v63;
  *(&v71[7] + 5) = *&v70[2];
  *(&v71[9] + 5) = *&v70[4];
  HIDWORD(v71[11]) = *(&v70[5] + 7);
  v30 = v52;
  memcpy(v52, v71, 0x60uLL);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A58);
  v28(&v30[v31[12]], v29, v27);
  v32 = v30;
  v33 = &v30[v31[16]];
  v35 = v54;
  v34 = v55;
  *v33 = v55;
  *(v33 + 1) = v35;
  LOBYTE(v3) = v53;
  *(v33 + 2) = v53;
  *(v33 + 3) = v23;
  v48 = v23;
  v47 = v24;
  v33[32] = v24;
  LOBYTE(v30) = v56;
  v33[33] = v56;
  v36 = &v32[v31[20]];
  v38 = v58;
  v37 = v59;
  *v36 = v26;
  *(v36 + 1) = v37;
  v39 = v57;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  v40 = v49;
  LOBYTE(v31) = v50;
  v36[32] = v49;
  v36[33] = v31;
  sub_274AFA6A8(v71, &v72, &qword_280989A60);
  sub_274AFA1E0(v34, v35, v3, v23, v24, v30);
  LOBYTE(v24) = v58;
  v41 = v59;
  v42 = v57;
  LOBYTE(v30) = v31;
  sub_274AFA1E0(v26, v59, v58, v57, v40, v31);
  v43 = v61;
  v44 = *(v62 + 8);
  v44(v51, v61);
  sub_274AFA22C(v26, v41, v24, v42, v40, v30);
  sub_274AFA22C(v55, v54, v53, v48, v47, v56);
  v44(v60, v43);
  v79 = *v70;
  v72 = v69;
  v73 = v68;
  v74 = v67;
  v75 = v66;
  v76 = v65;
  v77 = v64;
  v78 = v63;
  v80 = *&v70[2];
  *v81 = *&v70[4];
  *&v81[15] = *(&v70[5] + 7);
  return sub_274AFA708(&v72, &qword_280989A60);
}

double sub_274AF9388@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3774();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF46E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274B81410();
  v13 = v12;
  if (v12 < 2)
  {
    sub_274AFA308(v12);
    v46 = 0u;
    memset(v47, 0, sizeof(v47));
    v48 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A78);
    sub_274AFA318();
    sub_274BF3A64();
    goto LABEL_24;
  }

  if (v12 != 2)
  {
    v15 = [v12 tintColor];
    v36 = v5;
    if (v15)
    {
      v39 = sub_274BF4594();
    }

    else
    {
      v39 = 0;
    }

    sub_274BF5604();
    (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
    v38 = sub_274BF4734();

    (*(v9 + 8))(v11, v8);
    [v13 sizeInPoints];
    v18 = v16 / v17;
    KeyPath = swift_getKeyPath();
    v20 = *(a1 + 24);
    v53 = v20;
    v54 = *(a1 + 32);
    v37 = KeyPath;
    if (v54 == 1)
    {
      v21 = v39;

      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = v39;

      sub_274AFA6A8(&v53, &v49, &qword_280989AF0);
      sub_274BF54A4();
      v22 = KeyPath;
      v23 = sub_274BF3DF4();
      sub_274BF2BC4();

      KeyPath = v22;
      sub_274BF3764();
      swift_getAtKeyPath();
      sub_274AFA708(&v53, &qword_280989AF0);
      (*(v36 + 8))(v7, v4);
      if (v46 != 1)
      {
        goto LABEL_19;
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      LOBYTE(v49) = 0;
      *&v46 = v38;
      *(&v46 + 1) = v18;
      *v47 = 0;
      *&v47[8] = KeyPath;
      *&v47[16] = v21;
      *&v47[24] = 256;
      v47[26] = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AB0);
      sub_274AFA45C();
      sub_274AFA514();
      sub_274BF3A64();
      v25 = v49;
      v24 = v50;
      v26 = *v51;
      v27 = *&v51[8];
      v28 = v51[10];
      v39 = v21;
LABEL_20:
      v49 = v25;
      v50 = v24;
      *v51 = v26;
      *&v51[8] = v27;
      *&v51[10] = v28 != 0;
      v35[3] = *(&v25 + 1);
      v36 = v25;
      v35[1] = *(&v24 + 1);
      v35[2] = v24;
      sub_274AFA760();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AE8);
      sub_274AFA3D0();
      sub_274AFA930(&qword_280989AE0, &qword_280989AE8);
      sub_274BF3A64();
      if (v45)
      {
        v29 = 0x1000000;
      }

      else
      {
        v29 = 0;
      }

      v46 = v40;
      *v47 = v41;
      *&v47[16] = v42;
      *&v47[24] = v29 | v43 | (v44 << 16);
      v48 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A78);
      sub_274AFA318();
      sub_274BF3A64();
      sub_274AFA308(v13);

      sub_274AFA7A8();
      goto LABEL_24;
    }

LABEL_19:
    v39 = v21;
    *&v46 = v38;
    *(&v46 + 1) = v18;
    *v47 = 0;
    *&v47[8] = KeyPath;
    *&v47[16] = v21;
    *&v47[24] = 0;
    v47[26] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AB0);
    sub_274AFA45C();
    sub_274AFA514();
    sub_274BF3A64();
    v25 = v49;
    v24 = v50;
    v26 = *v51;
    v27 = *&v51[8];
    v28 = v51[10];
    goto LABEL_20;
  }

  *&v49 = sub_274BF4654();
  *(&v49 + 1) = 256;
  *v51 = 0;
  v50 = 0uLL;
  *&v51[7] = 0;
  v51[11] = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AE8);
  sub_274AFA3D0();
  sub_274AFA930(&qword_280989AE0, &qword_280989AE8);
  sub_274BF3A64();
  if (v45)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  v46 = v40;
  *v47 = v41;
  *&v47[16] = v42;
  *&v47[24] = v14 | v43 | (v44 << 16);
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A78);
  sub_274AFA318();
  sub_274BF3A64();

LABEL_24:
  result = *&v49;
  v31 = v50;
  v32 = *v51;
  v33 = *&v51[8];
  v34 = v52;
  *a2 = v49;
  *(a2 + 16) = v31;
  *(a2 + 32) = v32;
  *(a2 + 40) = v33;
  *(a2 + 44) = v34;
  return result;
}

double sub_274AF9BC8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_274B812DC();
  v4 = v2;
  v5 = v3;
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      sub_274BF38A4();
      v6 = sub_274BF40E4();
      v8 = v7;
      v10 = v9 & 1;
      sub_274AF396C(v6, v7, v9 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
      sub_274AFA1D0(v6, v8, v10);
    }

    else
    {
      *&v23 = v2;
      *(&v23 + 1) = v3;
      sub_274ADDF6C();

      v11 = sub_274BF4104();
      v13 = v12;
      v15 = v14;
      sub_274BF4654();
      v16 = sub_274BF4094();
      v21 = v17;
      v22 = v16;
      v19 = v18;

      sub_274AFA1D0(v11, v13, v15 & 1);

      sub_274AF396C(v22, v21, v19 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
      sub_274AFA278(v4, v5);
      sub_274AFA1D0(v22, v21, v19 & 1);
    }
  }

  else
  {
    sub_274AFA278(v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
    sub_274AFA28C();
    sub_274BF3A64();
  }

  result = *&v23;
  *a1 = v23;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 33) = v26;
  return result;
}

double sub_274AF9EE0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_274B81304();
  v4 = v2;
  v5 = v3;
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      sub_274BF38A4();
      v6 = sub_274BF40E4();
      v8 = v7;
      v10 = v9 & 1;
      sub_274AF396C(v6, v7, v9 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
      sub_274AFA1D0(v6, v8, v10);
    }

    else
    {
      *&v17 = v2;
      *(&v17 + 1) = v3;
      sub_274ADDF6C();

      v11 = sub_274BF4104();
      v13 = v12;
      v15 = v14 & 1;
      sub_274AF396C(v11, v12, v14 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
      sub_274AFA278(v4, v5);
      sub_274AFA1D0(v11, v13, v15);
    }
  }

  else
  {
    sub_274AFA278(v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
    sub_274AFA28C();
    sub_274BF3A64();
  }

  result = *&v17;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(a1 + 33) = v20;
  return result;
}

uint64_t sub_274AFA1D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_274AFA1E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_274AFA1F0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_274AFA1F0(uint64_t a1, uint64_t a2, char a3)
{
  sub_274AF396C(a1, a2, a3 & 1);
}

uint64_t sub_274AFA22C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_274AFA23C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_274AFA23C(uint64_t a1, uint64_t a2, char a3)
{
  sub_274AFA1D0(a1, a2, a3 & 1);
}

uint64_t sub_274AFA278(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_274AFA28C()
{
  result = qword_280989A70;
  if (!qword_280989A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989A70);
  }

  return result;
}

void sub_274AFA308(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_274AFA318()
{
  result = qword_280989A80;
  if (!qword_280989A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989A78);
    sub_274AFA3D0();
    sub_274AFA930(&qword_280989AE0, &qword_280989AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989A80);
  }

  return result;
}

unint64_t sub_274AFA3D0()
{
  result = qword_280989A88;
  if (!qword_280989A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989A90);
    sub_274AFA45C();
    sub_274AFA514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989A88);
  }

  return result;
}

unint64_t sub_274AFA45C()
{
  result = qword_280989A98;
  if (!qword_280989A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989AA0);
    sub_274AFA514();
    sub_274AFA930(&qword_280989AD0, &qword_280989AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989A98);
  }

  return result;
}

unint64_t sub_274AFA514()
{
  result = qword_280989AA8;
  if (!qword_280989AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989AB0);
    sub_274AFA5CC();
    sub_274AFA930(&qword_2815A2F88, &qword_280989AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989AA8);
  }

  return result;
}

unint64_t sub_274AFA5CC()
{
  result = qword_280989AB8;
  if (!qword_280989AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989AB8);
  }

  return result;
}

uint64_t sub_274AFA650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF3544();
  *a1 = result;
  return result;
}

uint64_t sub_274AFA6A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274AFA708(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_274AFA760()
{
}

uint64_t sub_274AFA7A8()
{
}

unint64_t sub_274AFA7EC()
{
  result = qword_280989AF8;
  if (!qword_280989AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989A48);
    sub_274AFA878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989AF8);
  }

  return result;
}

unint64_t sub_274AFA878()
{
  result = qword_280989B00;
  if (!qword_280989B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989A38);
    sub_274AFA930(&qword_280989B08, &qword_280989B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B00);
  }

  return result;
}

uint64_t sub_274AFA930(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Binding.init<A, B>(casting:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = a3;
  v20 = a2;
  v22 = a4;
  v23 = a1;
  v7 = sub_274BF4914();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v21 = *(v8 + 16);
  v21(&v18 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  v14 = *(v8 + 32);
  v14(&v13[v12], v11, v7);
  (v21)(v11, v23, v7);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = v19;
  *(v15 + 4) = v20;
  *(v15 + 5) = v16;
  v14(&v15[v12], v11, v7);
  sub_274BF5724();
  sub_274BF48F4();
  return (*(v8 + 8))(v23, v7);
}

uint64_t sub_274AFAB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = sub_274BF4914();
  MEMORY[0x277C64160](v5);
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v6 ^ 1u, 1, a2);
}

uint64_t sub_274AFAC34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  sub_274BF4914();
  v4 = *(v1 + 16);

  return sub_274AFAB74(v4, v3, a1);
}

uint64_t sub_274AFACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[1] = a4;
  v7 = sub_274BF5724();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = sub_274BF5724();
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v24 - v20;
  (*(v22 + 16))(v13, a1, v11, v19);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, a5);
    (*(v14 + 32))(v21, v10, a5);
    (*(v14 + 16))(v17, v21, a5);
    sub_274BF4914();
    sub_274BF48D4();
    return (*(v14 + 8))(v21, a5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, a5);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);
  v2 = (sub_274BF4914() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[10], v1);

  return swift_deallocObject();
}

uint64_t sub_274AFB080(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_274BF4914() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_274AFACC0(a1, v5, v6, v7, v3);
}

uint64_t sub_274AFB10C(char a1)
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](a1 & 1);
  return sub_274BF5D44();
}

uint64_t ContentItemPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274BF3774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = v1[2];
  v10 = *(v1 + 24);
  v11 = *(*v1 + 24);
  switch(*(v7 + 32))
  {
    case 1:
      sub_274AFBF7C(v11, 1);
      type metadata accessor for PreviewableContentCollection.PreviewableListItem();
      sub_274AFC724();

      v31 = sub_274BF3264();
      v33 = v32;
      KeyPath = swift_getKeyPath();
      *&v96 = v31;
      *(&v96 + 1) = v33;
      *v97 = v8;
      *&v97[8] = KeyPath;
      *&v97[16] = 0;
      sub_274AFC528();
      sub_274AFC608();

      OUTLINED_FUNCTION_6_4();
      sub_274BF3A64();
      OUTLINED_FUNCTION_9_3();
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = 256;
      }

      v96 = v99;
      *v97 = v100;
      *&v97[16] = v37 | v35;
      *&v97[18] = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BC0);
      sub_274AFC3BC();
      sub_274AFC57C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_2_3(v38);
      v98 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B78);
      sub_274AFC330();
      sub_274AFC65C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_14();
      v39 = v11;
      v40 = 1;
      goto LABEL_17;
    case 2:
      sub_274AFBF7C(v11, 2);

      v21 = OUTLINED_FUNCTION_11_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21);
      OUTLINED_FUNCTION_1_5(&qword_280989C10);
      v22 = OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_17_0(v22, v23);
      *v97 = v8;
      *&v97[16] = 256;
      sub_274AFC528();
      sub_274AFC608();

      OUTLINED_FUNCTION_6_4();
      sub_274BF3A64();
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_4_3();
      *&v97[16] = v24;
      *&v97[18] = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BC0);
      sub_274AFC3BC();
      sub_274AFC57C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_8_2();
      sub_274BF3A64();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_2_3(v25);
      v98 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B78);
      sub_274AFC330();
      sub_274AFC65C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_8_2();
      sub_274BF3A64();
      v19 = v11;
      v20 = 2;
      goto LABEL_15;
    case 3:
      sub_274AFBF7C(v11, 3);

      v26 = OUTLINED_FUNCTION_11_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v26);
      OUTLINED_FUNCTION_1_5(&qword_280989C00);
      v27 = OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_17_0(v27, v28);
      *v97 = v8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B60);
      sub_274AFC250();
      OUTLINED_FUNCTION_7_5(&qword_280989B58);
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_13_1(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B40);
      sub_274AFC198();
      sub_274AFC2A4();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_8_2();
      sub_274BF3A64();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_2_3(v30);
      v98 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B78);
      sub_274AFC330();
      sub_274AFC65C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_8_2();
      sub_274BF3A64();
      v19 = v11;
      v20 = 3;
      goto LABEL_15;
    case 4:
      sub_274AFBF7C(v11, 4);

      v14 = OUTLINED_FUNCTION_11_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v14);
      OUTLINED_FUNCTION_1_5(&qword_280989BF0);
      v15 = OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_17_0(v15, v16);
      v97[0] = v8;
      v97[1] = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B60);
      sub_274AFC250();
      OUTLINED_FUNCTION_7_5(&qword_280989B58);
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_13_1(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B40);
      sub_274AFC198();
      sub_274AFC2A4();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_8_2();
      sub_274BF3A64();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_2_3(v18);
      v98 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B78);
      sub_274AFC330();
      sub_274AFC65C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_8_2();
      sub_274BF3A64();
      v19 = v11;
      v20 = 4;
      goto LABEL_15;
    case 5:
      sub_274AFBF7C(v11, 5);

      v41 = OUTLINED_FUNCTION_11_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41);
      OUTLINED_FUNCTION_1_5(&qword_280989BE0);
      v42 = OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_17_0(v42, v43);
      *v97 = v8;
      *&v97[16] = 0;
      sub_274AFC0F0();
      sub_274AFC144();

      OUTLINED_FUNCTION_6_4();
      sub_274BF3A64();
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_4_3();
      *&v97[16] = v44;
      v97[18] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B40);
      sub_274AFC198();
      sub_274AFC2A4();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_8_2();
      sub_274BF3A64();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_2_3(v45);
      v98 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B78);
      sub_274AFC330();
      sub_274AFC65C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_8_2();
      sub_274BF3A64();
      v19 = v11;
      v20 = 5;
LABEL_15:
      sub_274AFC6E8(v19, v20);
      goto LABEL_18;
    case 6:
      sub_274AFBF7C(v11, 6);

      v46 = OUTLINED_FUNCTION_11_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(v46);
      OUTLINED_FUNCTION_1_5(&qword_280989B20);
      v47 = OUTLINED_FUNCTION_10_0();
      v49 = v48;
      v50 = swift_getKeyPath();
      *&v96 = v47;
      *(&v96 + 1) = v49;
      *v97 = v8;
      *&v97[8] = v50;
      *&v97[16] = 256;
      sub_274AFC0F0();
      sub_274AFC144();

      OUTLINED_FUNCTION_6_4();
      sub_274BF3A64();
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_4_3();
      *&v97[16] = v51;
      v97[18] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B40);
      sub_274AFC198();
      sub_274AFC2A4();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_2_3(v52);
      v98 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B78);
      sub_274AFC330();
      sub_274AFC65C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_14();
      v39 = v11;
      v40 = 6;
LABEL_17:
      sub_274AFC6E8(v39, v40);

      goto LABEL_18;
    case 7:
      v94 = v11;
      v95 = a1;
      if (v8)
      {
        if (v10)
        {

          sub_274AFBF7C(v11, 7);
          if ((v9 & 1) == 0)
          {
LABEL_9:
            *&v96 = v7;
            *(&v96 + 1) = 1;
            sub_274AFC448();
            sub_274AFC528();
            memset(v97, 0, 18);
            goto LABEL_24;
          }
        }

        else
        {

          sub_274AFBF7C(v11, 7);
          sub_274AFC7D4(v9, 0);
          sub_274BF54A4();
          v58 = sub_274BF3DF4();
          sub_274BF2BC4();

          sub_274BF3764();
          swift_getAtKeyPath();
          sub_274AEF5C0(v9, 0);
          (*(v4 + 8))(v6, v3);
          if ((v99 & 1) == 0)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
      }

      type metadata accessor for PreviewableContentCollection.PreviewableListItem();
      sub_274AFC724();

      v59 = sub_274BF3264();
      v61 = v60;
      v62 = swift_getKeyPath();
      *&v96 = v59;
      *(&v96 + 1) = v61;
      *v97 = v8;
      *&v97[8] = v62;
      *&v97[16] = 256;
      sub_274AFC448();
      sub_274AFC528();
LABEL_24:
      OUTLINED_FUNCTION_6_4();
      sub_274BF3A64();
      v63 = v101;
      v64 = BYTE1(v101);
      if (BYTE1(v101))
      {
        v65 = 256;
      }

      else
      {
        v65 = 0;
      }

      v96 = v99;
      *v97 = v100;
      *&v97[16] = v65 | v101;
      v97[18] = 1;
      v66 = v99;
      v92 = v100;
      v93 = *(&v99 + 1);
      v91 = *(&v100 + 1);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_8_2();
      v89 = v64;
      v90 = v63;
      sub_274AFC77C(v67, v68, v69, v70, v63, v64);
      OUTLINED_FUNCTION_8_2();
      sub_274AFC77C(v71, v72, v73, v74, v63, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BA8);
      sub_274AFC448();
      sub_274AFC49C();
      OUTLINED_FUNCTION_6_4();
      sub_274BF3A64();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_12_0(v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BC0);
      sub_274AFC3BC();
      sub_274AFC57C();
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_14();
      v76 = v99;
      v77 = v101 | (BYTE2(v101) << 16);
      v78 = HIBYTE(v101);
      if (HIBYTE(v101))
      {
        v79 = 0x1000000;
      }

      else
      {
        v79 = 0;
      }

      v96 = v99;
      v87 = *(&v100 + 1);
      v88 = v100;
      *v97 = v100;
      *&v97[16] = v79 | v77;
      v98 = 0;
      sub_274AFC8A0(v99, *(&v99 + 1), v100, *(&v100 + 1), v101 | (BYTE2(v101) << 16), SHIBYTE(v101), sub_274AFC7E0, sub_274AFC7F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B78);
      sub_274AFC330();
      sub_274AFC65C();
      OUTLINED_FUNCTION_6_4();
      sub_274BF3A64();
      v80 = v66;
      v81 = v66;
      v83 = v92;
      v82 = v93;
      v84 = v91;
      v86 = v89;
      v85 = v90;
      sub_274AFC848(v81, v93, v92, v91, v90, v89);
      sub_274AFC8A0(v76, *(&v76 + 1), v88, v87, v77, v78, sub_274AFC8BC, sub_274AFC8CC);
      sub_274AFC6E8(v94, 7);
      result = sub_274AFC848(v80, v82, v83, v84, v85, v86);
      v54 = v99;
      v55 = v100;
      v56 = v101;
      v57 = v102;
      a1 = v95;
LABEL_19:
      *a1 = v54;
      *(a1 + 16) = v55;
      *(a1 + 32) = v56;
      *(a1 + 36) = v57;
      return result;
    default:
      *&v96 = v7;
      *(&v96 + 1) = v8;
      memset(v97, 0, 19);
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BA8);
      sub_274AFC448();
      sub_274AFC49C();
      OUTLINED_FUNCTION_6_4();
      sub_274BF3A64();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_12_0(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989BC0);
      sub_274AFC3BC();
      sub_274AFC57C();
      OUTLINED_FUNCTION_0_3();
      sub_274BF3A64();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_2_3(v13);
      v98 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989B78);
      sub_274AFC330();
      sub_274AFC65C();
      OUTLINED_FUNCTION_0_3();
      sub_274BF3A64();
LABEL_18:

      v54 = v99;
      v55 = v100;
      v56 = v101;
      v57 = v102;
      goto LABEL_19;
  }
}

id sub_274AFBF7C(id result, char a2)
{
  switch(a2)
  {
    case 0:
      result = result;
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274AFBFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_274AFCB50();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_274AFC020()
{
  sub_274AFCBFC();
  sub_274BF37A4();
  return v1;
}

uint64_t sub_274AFC09C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274AFC020();
  *a1 = result;
  return result;
}

unint64_t sub_274AFC0F0()
{
  result = qword_280989B28;
  if (!qword_280989B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B28);
  }

  return result;
}

unint64_t sub_274AFC144()
{
  result = qword_280989B30;
  if (!qword_280989B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B30);
  }

  return result;
}

unint64_t sub_274AFC198()
{
  result = qword_280989B48;
  if (!qword_280989B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989B38);
    sub_274AFC250();
    sub_274AFA930(&qword_280989B58, &qword_280989B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B48);
  }

  return result;
}

unint64_t sub_274AFC250()
{
  result = qword_280989B50;
  if (!qword_280989B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B50);
  }

  return result;
}

unint64_t sub_274AFC2A4()
{
  result = qword_280989B68;
  if (!qword_280989B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989B40);
    sub_274AFC0F0();
    sub_274AFC144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B68);
  }

  return result;
}

unint64_t sub_274AFC330()
{
  result = qword_280989B80;
  if (!qword_280989B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989B70);
    sub_274AFC3BC();
    sub_274AFC57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B80);
  }

  return result;
}

unint64_t sub_274AFC3BC()
{
  result = qword_280989B88;
  if (!qword_280989B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989B90);
    sub_274AFC448();
    sub_274AFC49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B88);
  }

  return result;
}

unint64_t sub_274AFC448()
{
  result = qword_280989B98;
  if (!qword_280989B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989B98);
  }

  return result;
}

unint64_t sub_274AFC49C()
{
  result = qword_280989BA0;
  if (!qword_280989BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989BA8);
    sub_274AFC448();
    sub_274AFC528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989BA0);
  }

  return result;
}

unint64_t sub_274AFC528()
{
  result = qword_280989BB0;
  if (!qword_280989BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989BB0);
  }

  return result;
}

unint64_t sub_274AFC57C()
{
  result = qword_280989BB8;
  if (!qword_280989BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989BC0);
    sub_274AFC528();
    sub_274AFC608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989BB8);
  }

  return result;
}

unint64_t sub_274AFC608()
{
  result = qword_280989BC8;
  if (!qword_280989BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989BC8);
  }

  return result;
}

unint64_t sub_274AFC65C()
{
  result = qword_280989BD0;
  if (!qword_280989BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989B78);
    sub_274AFC198();
    sub_274AFC2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989BD0);
  }

  return result;
}

void sub_274AFC6E8(void *a1, char a2)
{
  switch(a2)
  {
    case 0:

      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:

      break;
    default:
      return;
  }
}

unint64_t sub_274AFC724()
{
  result = qword_280989C18;
  if (!qword_280989C18)
  {
    type metadata accessor for PreviewableContentCollection.PreviewableListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989C18);
  }

  return result;
}

uint64_t sub_274AFC77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {

    return sub_274AFC7D4(a4, a5 & 1);
  }

  else
  {
  }
}

uint64_t sub_274AFC7D4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_274AFC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  if (a6)
  {
    return sub_274AFC77C(a1, a2, a3, a4, a5, HIBYTE(a5) & 1);
  }

  else
  {
  }
}

uint64_t sub_274AFC7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    return sub_274AFC7D4(a4, a5 & 1);
  }
}

uint64_t sub_274AFC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {

    return sub_274AEF5C0(a4, a5 & 1);
  }

  else
  {
  }
}

uint64_t sub_274AFC8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  if (a6)
  {
    return a8(a1, a2, a3, a4, a5, (a5 >> 8) & 1);
  }

  else
  {
    return a7(a1, a2, a3, a4, a5, WORD1(a5) & 1);
  }
}

uint64_t sub_274AFC8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  if (a6)
  {
    return sub_274AFC848(a1, a2, a3, a4, a5, HIBYTE(a5) & 1);
  }

  else
  {
  }
}

uint64_t sub_274AFC8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{

  if ((a6 & 1) == 0)
  {

    return sub_274AEF5C0(a4, a5 & 1);
  }

  return result;
}

uint64_t sub_274AFC94C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274AFC98C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274AFC9DC()
{
  result = qword_280989C20;
  if (!qword_280989C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989C28);
    sub_274AFC330();
    sub_274AFC65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989C20);
  }

  return result;
}

_BYTE *sub_274AFCA74(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_274AFCB50()
{
  result = qword_280989C30;
  if (!qword_280989C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989C30);
  }

  return result;
}

unint64_t sub_274AFCBA8()
{
  result = qword_280989C38;
  if (!qword_280989C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989C38);
  }

  return result;
}

unint64_t sub_274AFCBFC()
{
  result = qword_280989C40;
  if (!qword_280989C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989C40);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_13_1@<Q0>(uint64_t a1@<X8>)
{
  result = *(v2 - 128);
  *(v2 - 176) = result;
  *(v2 - 160) = v1 | a1;
  *(v2 - 152) = 0;
  *(v2 - 144) = 0;
  *(v2 - 142) = 0;
  return result;
}

uint64_t sub_274AFCCCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274AFCD40()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274AFCDB0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C68);
  sub_274BF2D24();
  swift_endAccess();
  return v0;
}

uint64_t sub_274AFCE30()
{
  v1 = OBJC_IVAR____TtCV14WorkflowUICore24AutocompleteAccessoryBar5Model__results;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F40);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_274AFCEF8()
{
  sub_274AFCF88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274AFCF88()
{
  if (!qword_280989C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989C68);
    v0 = sub_274BF2D94();
    if (!v1)
    {
      atomic_store(v0, &qword_280989C60);
    }
  }
}

void sub_274AFD034()
{
  sub_274AFD104();
  if (v0 <= 0x3F)
  {
    sub_274AFD15C();
    if (v1 <= 0x3F)
    {
      sub_274AFD1AC();
      if (v2 <= 0x3F)
      {
        sub_274AFD25C();
        if (v3 <= 0x3F)
        {
          sub_274AD8470();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274AFD104()
{
  if (!qword_280989C90)
  {
    sub_274BF33A4();
    v0 = sub_274BF2F64();
    if (!v1)
    {
      atomic_store(v0, &qword_280989C90);
    }
  }
}

void sub_274AFD15C()
{
  if (!qword_280989C98)
  {
    v0 = sub_274BF47B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280989C98);
    }
  }
}

void sub_274AFD1AC()
{
  if (!qword_280989CA0)
  {
    sub_274AFD208();
    v0 = sub_274BF3094();
    if (!v1)
    {
      atomic_store(v0, &qword_280989CA0);
    }
  }
}

unint64_t sub_274AFD208()
{
  result = qword_28098C940;
  if (!qword_28098C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098C940);
  }

  return result;
}

void sub_274AFD25C()
{
  if (!qword_280989CA8)
  {
    type metadata accessor for AutocompleteAccessoryBar.Model(255);
    sub_274B00CAC(&qword_280989CB0, type metadata accessor for AutocompleteAccessoryBar.Model);
    v0 = sub_274BF3294();
    if (!v1)
    {
      atomic_store(v0, &qword_280989CA8);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutocompleteAccessoryBar.FadeMaskIntensities(uint64_t a1, int a2)
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

uint64_t sub_274AFD320@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AutocompleteAccessoryBar.Model(0);
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

double sub_274AFD360()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 idiom];

  result = 14.0;
  if (v1 == 1)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_274AFD400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989CB8);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v0);
  v2 = &v7[-v1];
  *v2 = sub_274BF3804();
  *(v2 + 1) = 0x4028000000000000;
  v2[16] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989CC0);
  sub_274AFD598(&v2[*(v3 + 44)]);
  v8 = v2;
  sub_274AFA930(&qword_280989CC8, &qword_280989CB8);
  sub_274BF3A84();
  sub_274BF3E64();
  sub_274AFD360();
  sub_274BF2E54();
  OUTLINED_FUNCTION_7_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989CD0);
  OUTLINED_FUNCTION_3_6(v4);
  sub_274BF3E34();
  sub_274AFD360();
  sub_274BF2E54();
  OUTLINED_FUNCTION_7_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989CD8);
  OUTLINED_FUNCTION_3_6(v5);
  return sub_274AFA708(v2, &qword_280989CB8);
}

uint64_t sub_274AFD598@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989CE0);
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x28223BE20](v1);
  v41 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989CE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989CF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989CF8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  type metadata accessor for AutocompleteAccessoryBar(0);
  v18 = *(sub_274AFCCCC() + 16);

  if (v18)
  {
    sub_274AFDACC(v8);
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D00);
    v20 = sub_274BF4924();
    v21 = sub_274B00A4C();
    v22 = sub_274B00CAC(&qword_280989D50, MEMORY[0x277CE1260]);
    v43 = v19;
    v44 = v20;
    v45 = v21;
    v46 = v22;
    swift_getOpaqueTypeConformance2();
    sub_274BF3A64();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    *v11 = 0;
    v11[8] = 1;
    swift_storeEnumTagMultiPayload();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D00);
    v24 = sub_274BF4924();
    v25 = sub_274B00A4C();
    v26 = sub_274B00CAC(&qword_280989D50, MEMORY[0x277CE1260]);
    v43 = v23;
    v44 = v24;
    v45 = v25;
    v46 = v26;
    swift_getOpaqueTypeConformance2();
    sub_274BF3A64();
  }

  v27 = v38;
  sub_274AFE294();
  v28 = v17;
  sub_274B01968(v17, v14, &qword_280989CF8);
  v30 = v39;
  v29 = v40;
  v31 = *(v39 + 16);
  v32 = v41;
  v31(v41, v27, v40);
  v33 = v42;
  sub_274B01968(v14, v42, &qword_280989CF8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D58);
  v31((v33 + *(v34 + 48)), v32, v29);
  v35 = *(v30 + 8);
  v35(v27, v29);
  sub_274AFA708(v28, &qword_280989CF8);
  v35(v32, v29);
  return sub_274AFA708(v14, &qword_280989CF8);
}

uint64_t sub_274AFDACC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_274BF4694();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v50 = &v38 - v4;
  v53 = sub_274BF4924();
  MEMORY[0x28223BE20](v53);
  v49 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_274BF3D14();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AutocompleteAccessoryBar(0);
  v8 = *(v7 - 8);
  v48 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D28);
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D20);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v14 = &v38 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D00);
  MEMORY[0x28223BE20](v45);
  v40 = &v38 - v15;
  sub_274BF3E04();
  v56 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC8);
  sub_274B01030();
  sub_274BF2EC4();
  v39 = v1;
  sub_274B01174(v1, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_274B011D8(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_274B01174(v1, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_274B011D8(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16);
  v19 = sub_274AFA930(&qword_280989D30, &qword_280989D28);
  v37 = sub_274B00C58();
  sub_274BF4384();

  (*(v41 + 8))(v12, v10);
  v20 = v44;
  sub_274BF3D04();
  *&v60 = v10;
  *(&v60 + 1) = &type metadata for AutocompleteAccessoryBar.FadeMaskIntensities;
  *&v61 = v19;
  *(&v61 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  v21 = v40;
  v22 = v42;
  sub_274BF4394();
  (*(v46 + 8))(v20, v47);
  (*(v43 + 8))(v14, v22);
  sub_274AFF890(&v57);
  v23 = v57;
  v24 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D18) + 36);
  *v24 = v23;
  v25 = v58;
  *(v24 + 24) = v59;
  *(v24 + 8) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
  sub_274BF3084();
  sub_274BF4A94();
  sub_274BF30D4();
  v26 = (v21 + *(v45 + 36));
  v27 = v61;
  *v26 = v60;
  v26[1] = v27;
  v26[2] = v62;
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_274BF38C4();
  v30 = v49;
  (*(*(v29 - 8) + 104))(v49, v28, v29);
  v31 = v51;
  sub_274BF4684();
  v32 = v50;
  MEMORY[0x277C63F10](1);
  v33 = *(v52 + 8);
  v34 = v31;
  v35 = v54;
  v33(v34, v54);
  sub_274B00A4C();
  sub_274B00CAC(&qword_280989D50, MEMORY[0x277CE1260]);
  sub_274BF4214();
  v33(v32, v35);
  sub_274B014CC(v30);
  return sub_274AFA708(v21, &qword_280989D00);
}

uint64_t sub_274AFE294()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D60);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3];
  type metadata accessor for AutocompleteAccessoryBar(0);
  v9 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D68);
  sub_274B00CFC();
  sub_274BF47C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
  sub_274BF3084();
  sub_274BF3084();
  sub_274BF4A94();
  sub_274BF30D4();
  v5 = &v4[*(v2 + 44)];
  v6 = v11;
  *v5 = v10;
  v5[1] = v6;
  v5[2] = v12;
  sub_274AFFA54();
  return sub_274AFA708(v4, &qword_280989D60);
}

uint64_t sub_274AFE440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274BF3804();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E10);
  sub_274AFE540(a1);
  LOBYTE(a1) = sub_274BF3EA4();
  sub_274BF2E54();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DE0) + 36);
  *v12 = a1;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  LOBYTE(a1) = sub_274BF3E34();
  sub_274BF2E54();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC8);
  v22 = a2 + *(result + 36);
  *v22 = a1;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_274AFE540(uint64_t a1)
{
  v2 = type metadata accessor for AutocompleteAccessoryBar(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_274AFCCCC();
  v10[1] = v5;
  swift_getKeyPath();
  sub_274B01174(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_274B011D8(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_274B01528;
  *(v8 + 24) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E20);
  sub_274B015D8();
  sub_274B01688();
  sub_274AFA930(&qword_280989E40, &qword_280989E20);
  return sub_274BF4944();
}

uint64_t sub_274AFE748@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40[1] = a4;
  v41 = a1;
  v44 = a5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E48);
  MEMORY[0x28223BE20](v42);
  v8 = v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E50);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E58);
  MEMORY[0x28223BE20](v14);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E60);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v40 - v22;
  v24 = *(a3 + 16) - 1;
  sub_274AFEB90(a2, v16);
  sub_274BF3F14();
  sub_274B016DC();
  sub_274BF41A4();
  sub_274AFA708(v16, &qword_280989E58);
  v25 = sub_274BF4644();
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EC0) + 36)] = v25;
  v23[*(v18 + 44)] = 0;
  if (v24 == v41)
  {
    v26 = 1;
    v27 = v42;
  }

  else
  {
    v28 = *MEMORY[0x277CE0118];
    v29 = sub_274BF38C4();
    (*(*(v29 - 8) + 104))(v8, v28, v29);
    v30 = [objc_opt_self() separatorColor];
    v31 = sub_274BF4564();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EC8);
    *&v8[*(v32 + 52)] = v31;
    *&v8[*(v32 + 56)] = 256;
    sub_274BF4A94();
    sub_274BF30D4();
    v33 = v42;
    v34 = &v8[*(v42 + 36)];
    v35 = v46;
    *v34 = v45;
    *(v34 + 1) = v35;
    *(v34 + 2) = v47;
    sub_274B018F8(v8, v13);
    v26 = 0;
    v27 = v33;
  }

  __swift_storeEnumTagSinglePayload(v13, v26, 1, v27);
  sub_274B01968(v23, v20, &qword_280989E60);
  v36 = v43;
  sub_274B01968(v13, v43, &qword_280989E50);
  v37 = v44;
  sub_274B01968(v20, v44, &qword_280989E60);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989ED0);
  sub_274B01968(v36, v37 + *(v38 + 48), &qword_280989E50);
  sub_274AFA708(v13, &qword_280989E50);
  sub_274AFA708(v23, &qword_280989E60);
  sub_274AFA708(v36, &qword_280989E50);
  return sub_274AFA708(v20, &qword_280989E60);
}

uint64_t sub_274AFEB90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EB8);
  v63 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v62 = &v62 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8);
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v62 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989ED8);
  MEMORY[0x28223BE20](v71);
  v70 = &v62 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EE0);
  MEMORY[0x28223BE20](v67);
  v7 = &v62 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E88);
  MEMORY[0x28223BE20](v72);
  v69 = &v62 - v8;
  v9 = type metadata accessor for AutocompleteAccessoryBar(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E98);
  v66 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 32))(v16, v17);
  if (v18)
  {
    v19 = v18;
    v20 = v73;
    sub_274B01174(v73, &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_274B019B8(a1, &v76);
    v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v22 = swift_allocObject();
    v23 = sub_274B011D8(v12, v22 + v21);
    v24 = v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
    v25 = v77;
    *v24 = v76;
    *(v24 + 16) = v25;
    *(v24 + 32) = v78;
    MEMORY[0x28223BE20](v23);
    *(&v62 - 2) = v19;
    *(&v62 - 1) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EE8);
    sub_274AFA930(&qword_280989EF0, &qword_280989EE8);
    sub_274BF47C4();
    v26 = v66;
    (*(v66 + 16))(v7, v15, v13);
    swift_storeEnumTagMultiPayload();
    sub_274AFA930(&qword_280989E90, &qword_280989E98);
    sub_274AFA930(&qword_280989EA0, &qword_280989EA8);
    v27 = v69;
    sub_274BF3A64();
    sub_274B01968(v27, v70, &qword_280989E88);
    swift_storeEnumTagMultiPayload();
    sub_274B01818();
    sub_274AFA930(&qword_280989EB0, &qword_280989EB8);
    v28 = v74;
    sub_274BF3A64();

    sub_274AFA708(v27, &qword_280989E88);
    (*(v26 + 8))(v15, v13);
LABEL_5:
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E78);
    v46 = v28;
    return __swift_storeEnumTagSinglePayload(v46, 0, 1, v45);
  }

  v29 = v73;
  v66 = v13;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = (*(v31 + 16))(v30, v31);
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    sub_274B01174(v29, &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_274B019B8(a1, &v76);
    v36 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v37 = swift_allocObject();
    v38 = sub_274B011D8(v12, v37 + v36);
    v39 = v37 + ((v11 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    v40 = v77;
    *v39 = v76;
    *(v39 + 16) = v40;
    *(v39 + 32) = v78;
    MEMORY[0x28223BE20](v38);
    *(&v62 - 2) = v34;
    *(&v62 - 1) = v35;
    v41 = v64;
    sub_274BF47C4();

    v42 = v65;
    v43 = v68;
    (*(v65 + 16))(v7, v41, v68);
    swift_storeEnumTagMultiPayload();
    sub_274AFA930(&qword_280989E90, &qword_280989E98);
    sub_274AFA930(&qword_280989EA0, &qword_280989EA8);
    v44 = v69;
    sub_274BF3A64();
    sub_274B01968(v44, v70, &qword_280989E88);
    swift_storeEnumTagMultiPayload();
    sub_274B01818();
    sub_274AFA930(&qword_280989EB0, &qword_280989EB8);
    v28 = v74;
    sub_274BF3A64();
    sub_274AFA708(v44, &qword_280989E88);
    (*(v42 + 8))(v41, v43);
    goto LABEL_5;
  }

  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  v50 = (*(v49 + 24))(v48, v49);
  v51 = v74;
  v52 = v75;
  if (v50)
  {
    v53 = v50;
    sub_274B01174(v29, &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_274B019B8(a1, &v76);
    v54 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v55 = swift_allocObject();
    v56 = sub_274B011D8(v12, v55 + v54);
    v57 = v55 + ((v11 + v54 + 7) & 0xFFFFFFFFFFFFFFF8);
    v58 = v77;
    *v57 = v76;
    *(v57 + 16) = v58;
    *(v57 + 32) = v78;
    MEMORY[0x28223BE20](v56);
    *(&v62 - 2) = v53;
    *(&v62 - 1) = v29;
    sub_274BF29F4();
    sub_274B00CAC(qword_2815A3140, MEMORY[0x277D7D6E0]);
    v59 = v62;
    sub_274BF47C4();
    v60 = v63;
    (*(v63 + 16))(v70, v59, v52);
    swift_storeEnumTagMultiPayload();
    sub_274B01818();
    sub_274AFA930(&qword_280989EB0, &qword_280989EB8);
    sub_274BF3A64();

    (*(v60 + 8))(v59, v52);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E78);
    v46 = v51;
    return __swift_storeEnumTagSinglePayload(v46, 0, 1, v45);
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E78);

  return __swift_storeEnumTagSinglePayload(v51, 1, 1, v61);
}

uint64_t sub_274AFF698@<X0>(double *a1@<X8>)
{
  v2 = sub_274BF33A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = var50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF32D4();
  v6 = CGRectGetMinX(v25) / 17.0;
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  if (v6 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  sub_274BF32C4();
  v10 = v9;
  sub_274BF32D4();
  v19 = (CGRectGetMaxX(v26) - v10 + 17.0) / 17.0;
  if (v19 <= 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = 1.0 - v20;
  if (v19 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1.0;
  }

  sub_274B309C0(v11, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  result = (*(v3 + 88))(v5, v2);
  if (result == *MEMORY[0x277CDFA90])
  {
    *a1 = v22;
    a1[1] = v8;
  }

  else
  {
    *a1 = v8;
    a1[1] = v22;
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_274AFF814()
{
  type metadata accessor for AutocompleteAccessoryBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E08);
  return sub_274BF4794();
}

double sub_274AFF890@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_274BFAE30;
  sub_274BF45D4();
  v4 = (v1 + *(type metadata accessor for AutocompleteAccessoryBar(0) + 20));
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E08);
  sub_274BF4784();
  sub_274BF4634();

  *(v3 + 32) = sub_274BF49E4();
  *(v3 + 40) = v8;
  sub_274BF45D4();
  *(v3 + 48) = sub_274BF49E4();
  *(v3 + 56) = v9;
  sub_274BF45D4();
  *(v3 + 64) = sub_274BF49E4();
  *(v3 + 72) = v10;
  sub_274BF45D4();
  *&v13 = v5;
  *(&v13 + 1) = v6;
  *&v14 = v7;
  sub_274BF4784();
  sub_274BF4634();

  *(v3 + 80) = sub_274BF49E4();
  *(v3 + 88) = v11;
  sub_274BF4B94();
  sub_274BF4BA4();
  sub_274BF49F4();
  sub_274BF3234();
  result = v5;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_274AFFA54()
{
  v0 = sub_274BF4694();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_274BF4684();
  MEMORY[0x277C63F10](1);
  v7 = *(v1 + 8);
  v7(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D60);
  sub_274B00F1C();
  sub_274B00FD4();
  sub_274BF4214();
  return (v7)(v6, v0);
}

uint64_t sub_274AFFBB4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_274BF3834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D78);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v18[1] = sub_274BF46D4();
  sub_274BF3824();
  sub_274B00CAC(&qword_280989D88, MEMORY[0x277CDDE78]);
  sub_274BF41B4();
  (*(v6 + 8))(v8, v5);

  type metadata accessor for AutocompleteAccessoryBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
  sub_274BF3084();
  v12 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  v13 = sub_274BF3F44();
  sub_274AFA708(v4, &qword_280989DC0);
  KeyPath = swift_getKeyPath();
  v15 = &v11[*(v9 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_274BF3F14();
  sub_274B00DF0();
  sub_274BF41A4();
  sub_274AFA708(v11, &qword_280989D78);
  v16 = sub_274BF4644();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989D68);
  *(a1 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_274AFFEB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_274BF3804();
  *(a3 + 8) = 0x4018000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EF8);
  return sub_274AFFF20(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_274AFFF20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v70 = a3;
  v4 = sub_274BF29E4();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274BF29C4();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_274BF29F4();
  v10 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F00);
  MEMORY[0x28223BE20](v66);
  v14 = (&v61 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F08);
  MEMORY[0x28223BE20](v18 - 8);
  v68 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v61 - v22;
  v69 = a1;
  v24 = [a1 icon];
  if (v24)
  {
    v25 = v24;
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      if ([v26 hasClearBackground])
      {
        v64 = sub_274BF2854();
        v28 = [v27 symbolName];
        sub_274BF4F44();

        v63 = *(type metadata accessor for AutocompleteAccessoryBar(0) + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
        sub_274BF3084();
        sub_274BF2844();
        v30 = v29;
        v32 = v31;

        v33 = [v27 symbolName];
        sub_274BF4F44();

        v34 = sub_274BF4704();
        sub_274BF3084();
        v35 = sub_274BF3EF4();
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v35);
        v36 = sub_274BF3F44();
        sub_274AFA708(v17, &qword_280989DC0);
        KeyPath = swift_getKeyPath();
        *v14 = v34;
        v14[1] = KeyPath;
        v14[2] = v36;
        v14[3] = v30;
        v14[4] = v32;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F20);
        sub_274B01C6C();
        sub_274B00CAC(qword_2815A3140, MEMORY[0x277D7D6E0]);
        sub_274BF3A64();

        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F10);
        __swift_storeEnumTagSinglePayload(v23, 0, 1, v38);
        v39 = v69;
        goto LABEL_10;
      }
    }
  }

  v39 = v69;
  v40 = [v69 icon];
  if (v40)
  {
    v41 = v40;
    type metadata accessor for AutocompleteAccessoryBar(0);
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
    sub_274BF3084();
    *v9 = v71;
    (*(v61 + 104))(v9, *MEMORY[0x277D7D688], v62);
    (*(v63 + 104))(v6, *MEMORY[0x277D7D6D0], v64);
    sub_274BF2A04();
    v43 = v67;
    (*(v10 + 16))(v14, v12, v67);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F20);
    sub_274B01C6C();
    sub_274B00CAC(qword_2815A3140, MEMORY[0x277D7D6E0]);
    sub_274BF3A64();

    (*(v10 + 8))(v12, v43);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F10);
    v45 = v23;
    v46 = 0;
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F10);
    v45 = v23;
    v46 = 1;
  }

  __swift_storeEnumTagSinglePayload(v45, v46, 1, v44);
LABEL_10:
  v47 = [v39 name];
  v48 = sub_274BF4F44();
  v50 = v49;

  v71 = v48;
  v72 = v50;
  sub_274ADDF6C();
  v51 = sub_274BF4104();
  v53 = v52;
  LOBYTE(v50) = v54;
  v56 = v55;
  v57 = v68;
  sub_274B01968(v23, v68, &qword_280989F08);
  v58 = v70;
  sub_274B01968(v57, v70, &qword_280989F08);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F18) + 48);
  *v59 = v51;
  *(v59 + 8) = v53;
  LOBYTE(v50) = v50 & 1;
  *(v59 + 16) = v50;
  *(v59 + 24) = v56;
  sub_274AF396C(v51, v53, v50);

  sub_274AFA708(v23, &qword_280989F08);
  sub_274AFA1D0(v51, v53, v50);

  return sub_274AFA708(v57, &qword_280989F08);
}

uint64_t sub_274B007A4@<X0>(uint64_t a1@<X8>)
{
  sub_274ADDF6C();

  result = sub_274BF4104();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274B00810(void *a1)
{
  v2 = sub_274BF29E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF29C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AutocompleteAccessoryBar(0);
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
  sub_274BF3084();
  *v9 = v12[1];
  (*(v7 + 104))(v9, *MEMORY[0x277D7D688], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D7D6C8], v2);
  return sub_274BF2A04();
}

unint64_t sub_274B00A4C()
{
  result = qword_280989D08;
  if (!qword_280989D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D00);
    sub_274B00AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989D08);
  }

  return result;
}

unint64_t sub_274B00AD8()
{
  result = qword_280989D10;
  if (!qword_280989D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D28);
    sub_274AFA930(&qword_280989D30, &qword_280989D28);
    sub_274B00C58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_280989D40, &qword_280989D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989D10);
  }

  return result;
}

unint64_t sub_274B00C58()
{
  result = qword_280989D38;
  if (!qword_280989D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989D38);
  }

  return result;
}

uint64_t sub_274B00CAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_274B00CFC()
{
  result = qword_280989D70;
  if (!qword_280989D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D78);
    sub_274B00DF0();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_2815A2FB8, &qword_280989D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989D70);
  }

  return result;
}

unint64_t sub_274B00DF0()
{
  result = qword_280989D80;
  if (!qword_280989D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D78);
    sub_274BF3834();
    sub_274B00CAC(&qword_280989D88, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_2815A2F98, &qword_280989D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989D80);
  }

  return result;
}

unint64_t sub_274B00F1C()
{
  result = qword_280989DA0;
  if (!qword_280989DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989D60);
    sub_274AFA930(&qword_280989DA8, &qword_280989DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989DA0);
  }

  return result;
}

unint64_t sub_274B00FD4()
{
  result = qword_280989DB8;
  if (!qword_280989DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989DB8);
  }

  return result;
}

unint64_t sub_274B01030()
{
  result = qword_280989DD0;
  if (!qword_280989DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989DC8);
    sub_274B010BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989DD0);
  }

  return result;
}

unint64_t sub_274B010BC()
{
  result = qword_280989DD8;
  if (!qword_280989DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989DE0);
    sub_274AFA930(&qword_280989DE8, &qword_280989DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989DD8);
  }

  return result;
}

uint64_t sub_274B01174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutocompleteAccessoryBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B011D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutocompleteAccessoryBar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B0123C@<X0>(double *a1@<X8>)
{
  OUTLINED_FUNCTION_9_4();

  return sub_274AFF698(a1);
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for AutocompleteAccessoryBar(0);
  OUTLINED_FUNCTION_1_1();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF33A4();
    OUTLINED_FUNCTION_0_2();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_2();
  v5 = v0[6];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
  OUTLINED_FUNCTION_0_2();
  v8 = *(v7 + 8);
  v8(v1 + v3 + v5, v6);
  v9 = OUTLINED_FUNCTION_2_4(v0[7]);
  (v8)(v9);
  v10 = OUTLINED_FUNCTION_2_4(v0[8]);
  (v8)(v10);
  v11 = OUTLINED_FUNCTION_2_4(v0[9]);
  (v8)(v11);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_4();

  return swift_deallocObject();
}

uint64_t sub_274B01458()
{
  OUTLINED_FUNCTION_9_4();

  return sub_274AFF814();
}

uint64_t sub_274B014CC(uint64_t a1)
{
  v2 = sub_274BF4924();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274B01528@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_9_4();
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_274AFE748(a1, a2, v8, v9, a3);
}

unint64_t sub_274B015D8()
{
  result = qword_280989E28;
  if (!qword_280989E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989E18);
    sub_274AFA930(&qword_280989E30, &qword_280989C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989E28);
  }

  return result;
}

unint64_t sub_274B01688()
{
  result = qword_280989E38;
  if (!qword_280989E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989E38);
  }

  return result;
}

unint64_t sub_274B016DC()
{
  result = qword_280989E68;
  if (!qword_280989E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989E58);
    sub_274B01760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989E68);
  }

  return result;
}

unint64_t sub_274B01760()
{
  result = qword_280989E70;
  if (!qword_280989E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989E78);
    sub_274B01818();
    sub_274AFA930(&qword_280989EB0, &qword_280989EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989E70);
  }

  return result;
}

unint64_t sub_274B01818()
{
  result = qword_280989E80;
  if (!qword_280989E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989E88);
    sub_274AFA930(&qword_280989E90, &qword_280989E98);
    sub_274AFA930(&qword_280989EA0, &qword_280989EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989E80);
  }

  return result;
}

uint64_t sub_274B018F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989E48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B01968(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8(a1, a2, a3);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t objectdestroy_29Tm()
{
  type metadata accessor for AutocompleteAccessoryBar(0);
  OUTLINED_FUNCTION_1_1();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF33A4();
    OUTLINED_FUNCTION_0_2();
    (*(v7 + 8))(v1 + v3);
  }

  else
  {
  }

  v8 = (v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_5_2();
  v9 = v0[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989C78);
  OUTLINED_FUNCTION_0_2();
  v12 = *(v11 + 8);
  v12(v6 + v9, v10);
  v13 = OUTLINED_FUNCTION_2_4(v0[7]);
  (v12)(v13);
  v14 = OUTLINED_FUNCTION_2_4(v0[8]);
  (v12)(v14);
  v15 = OUTLINED_FUNCTION_2_4(v0[9]);
  (v12)(v15);
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_4();
  __swift_destroy_boxed_opaque_existential_0(v1 + v8);

  return swift_deallocObject();
}

uint64_t sub_274B01BE4()
{
  v1 = *(type metadata accessor for AutocompleteAccessoryBar(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_274B00760(v0 + v2, v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_274B01C6C()
{
  result = qword_280989F28;
  if (!qword_280989F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989F20);
    sub_274B01CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989F28);
  }

  return result;
}

unint64_t sub_274B01CF8()
{
  result = qword_280989F30;
  if (!qword_280989F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989F38);
    sub_274AFA930(&qword_2815A2F98, &qword_280989D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989F30);
  }

  return result;
}

unint64_t sub_274B01DB0()
{
  result = qword_280989F48;
  if (!qword_280989F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989CD8);
    sub_274B01E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989F48);
  }

  return result;
}

unint64_t sub_274B01E3C()
{
  result = qword_280989F50;
  if (!qword_280989F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989CD0);
    sub_274B01EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989F50);
  }

  return result;
}

unint64_t sub_274B01EC8()
{
  result = qword_280989F58;
  if (!qword_280989F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989F60);
    sub_274AFA930(&qword_280989F68, &qword_280989F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989F58);
  }

  return result;
}

id sub_274B01F9C()
{
  result = [objc_allocWithZone(type metadata accessor for DebugStatusBarManager()) init];
  qword_2815A3308 = result;
  return result;
}

id static DebugStatusBarManager.shared.getter()
{
  if (qword_2815A3300 != -1)
  {
    swift_once();
  }

  v1 = qword_2815A3308;

  return v1;
}

id sub_274B02028()
{
  *&v0[OBJC_IVAR____TtC14WorkflowUICore21DebugStatusBarManager_windowScenes] = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC14WorkflowUICore21DebugStatusBarManager_windowsPerScene;
  sub_274AD8430(0, &unk_2815A2F10);
  type metadata accessor for DebugStatusBarWindow();
  sub_274B04A48();
  *&v0[v1] = sub_274BF4E14();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for DebugStatusBarManager();
  v2 = objc_msgSendSuper2(&v9, sel_init);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BF8D80;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000274C09EB0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  sub_274BF4E14();
  v7 = sub_274BF4DE4();

  [v5 registerDefaults_];

  if (qword_2815A36B0 != -1)
  {
    swift_once();
  }

  sub_274B03BC8(v4);

  return v4;
}

id sub_274B02230()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_9_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_274B022AC(char a1)
{
  type metadata accessor for DebugStatusBarManager();
  sub_274B04A00(&qword_280989FD8, v2, type metadata accessor for DebugStatusBarManager);
  sub_274BF2CE4();
  sub_274BF2D04();

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = OUTLINED_FUNCTION_9_0();
  [v3 setBool:a1 & 1 forKey:v4];

  v5 = sub_274B02230();
  if (qword_2815A36B0 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  v6 = v10;
  v7 = v11;
  v8 = v10;
  v9 = v11;
  sub_274B025F8(v5 & 1, &v8);
  sub_274B03D34(v6, v7);
}

void sub_274B02438(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WorkflowUICore21DebugStatusBarManager_windowScenes;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x277C649C0]();
  sub_274B03D08(*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_274BF5184();
  swift_endAccess();
  if (qword_2815A36B0 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  if (v7 == 2)
  {
    sub_274B03D34(v6, v7);
    if (sub_274B02230())
    {
      sub_274B0256C(v5);
    }
  }

  else
  {
    sub_274B03D34(v6, v7);
  }
}

void sub_274B0256C(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for DebugStatusBarWindow()) initWithWindowScene_];
  swift_beginAccess();
  v3 = v2;
  sub_274B03F80(v3, a1);
  swift_endAccess();
}

uint64_t sub_274B025F8(char a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14WorkflowUICore21DebugStatusBarManager_windowsPerScene;
  if (*(a2 + 8) != 2 || (a1 & 1) == 0)
  {
    result = swift_beginAccess();
    v7 = *(v2 + v3);
    if ((v7 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_8_3();
      v8 = sub_274BF5874();

      if (!v8)
      {
        return result;
      }
    }

    else if (!*(v7 + 16))
    {
      return result;
    }

    sub_274AD8430(0, &unk_2815A2F10);
    type metadata accessor for DebugStatusBarWindow();
    sub_274B04A48();
    *(v2 + v3) = sub_274BF4E14();
  }

  result = swift_beginAccess();
  v5 = *(v2 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_8_3();
    v6 = sub_274BF5874();

    if (v6)
    {
      return result;
    }
  }

  else if (*(v5 + 16))
  {
    return result;
  }

  v9 = OBJC_IVAR____TtC14WorkflowUICore21DebugStatusBarManager_windowScenes;
  swift_beginAccess();
  v10 = *(v2 + v9);
  result = sub_274B22B94(v10);
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C65230](i, v10);
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      sub_274B0256C(v13);
    }
  }

  return result;
}

void sub_274B027C8(char *a1, void *a2)
{
  v3 = OBJC_IVAR____TtC14WorkflowUICore21DebugStatusBarManager_windowsPerScene;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_274BF5A94() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = (v6 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v12;
    v15 = v7;
    v16 = v12;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v19 = *(*(v8 + 56) + v18);
    v20 = *(*(v8 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
LABEL_18:
      sub_274AEF594();

      return;
    }

    while (1)
    {
      v22 = *&v21[*a2];
      v27 = a1;
      v23 = sub_274BF5BE4();
      sub_274B04994(v23, v24, v22);

      v12 = v16;
      v7 = v17;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_274BF5AB4())
      {
        sub_274AD8430(0, &unk_2815A2F10);
        swift_dynamicCast();
        v20 = v27;
        type metadata accessor for DebugStatusBarWindow();
        swift_dynamicCast();
        v21 = v27;
        v16 = v12;
        v17 = v7;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_274B02A74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DebugStatusBarManager();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

uint64_t DebugStatusBarManager.logStreamManager(_:didChangeState:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v28 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v27 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = *a2;
  v18 = *(a2 + 8);
  sub_274AD8430(0, &qword_280989F80);
  v19 = sub_274BF5504();
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v17;
  *(v20 + 32) = v18;
  aBlock[4] = sub_274B03D74;
  aBlock[5] = v20;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
  aBlock[2] = v21;
  aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);
  v23 = v3;
  sub_274B03D98(v17, v18);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_3_7();
  sub_274B04A00(v24, 255, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274B03DB4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7_6();
  _Block_release(v22);

  (*(v28 + 8))(v10, v5);
  return (*(v12 + 8))(v16, v27);
}

uint64_t sub_274B02D08(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_274B02230();
  v7 = a2;
  v8 = a3;
  return sub_274B025F8(v5 & 1, &v7);
}

uint64_t sub_274B02D5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_274B02DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v30 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  sub_274AD8430(0, &qword_280989F80);
  v20 = sub_274BF5504();
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v21;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
  aBlock[2] = v22;
  aBlock[3] = a5;
  v23 = _Block_copy(aBlock);
  v24 = v5;

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_3_7();
  sub_274B04A00(v25, 255, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274B03DB4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7_6();
  _Block_release(v23);

  (*(v9 + 8))(v13, v7);
  return (*(v15 + 8))(v19, v30);
}

char *sub_274B03030(void *a1)
{
  v69 = sub_274BF5594();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_faultLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_errorLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_stackView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&v1[OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_rotationObserver] = 0;
  v7 = type metadata accessor for DebugStatusBarWindow();
  v71.receiver = v1;
  v71.super_class = v7;
  v68 = a1;
  v8 = objc_msgSendSuper2(&v71, sel_initWithWindowScene_, a1);
  sub_274B038B4();
  [v8 setWindowLevel_];
  [v8 setHidden_];
  [v8 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFB1D0;
  v10 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_faultLabel;
  v11 = *&v8[OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_faultLabel];
  *(inited + 32) = v11;
  v65 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_errorLabel;
  v12 = *&v8[OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_errorLabel];
  *(inited + 40) = v12;
  v13 = *MEMORY[0x277D74400];
  v14 = inited & 0xC000000000000001;
  sub_274B17EC8(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v63 = v11;
    v64 = v12;
    v18 = MEMORY[0x277C65230](0, inited);
  }

  else
  {
    v15 = *(inited + 32);
    v16 = v11;
    v17 = v12;
    v18 = v15;
  }

  v19 = v18;
  v20 = objc_opt_self();
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [v20 systemFontOfSize:10.0 weight:v13];
  [v19 setFont_];

  LODWORD(v22) = 1148846080;
  [v19 setContentHuggingPriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v19 setContentHuggingPriority:1 forAxis:v23];

  sub_274B17EC8(1, v14 == 0, inited);
  if (v14)
  {
    v24 = MEMORY[0x277C65230](1, inited);
  }

  else
  {
    v24 = *(inited + 40);
  }

  v25 = v24;

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [v20 systemFontOfSize:10.0 weight:v13];
  [v25 setFont_];

  LODWORD(v27) = 1148846080;
  [v25 setContentHuggingPriority:0 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [v25 setContentHuggingPriority:1 forAxis:v28];

  v29 = *&v8[v10];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 redColor];
  [v31 setTextColor_];

  v33 = qword_2815A36B0;
  v34 = *&v8[v10];
  if (v33 != -1)
  {
    swift_once();
  }

  v70 = sub_274B9DB00();
  v35 = sub_274BF5BE4();
  sub_274B04994(v35, v36, v34);

  v37 = v65;
  v38 = *&v8[v65];
  v39 = [v30 orangeColor];
  [v38 setTextColor_];

  v40 = *&v8[v37];
  v70 = sub_274B9DF14();
  v41 = sub_274BF5BE4();
  sub_274B04994(v41, v42, v40);

  v43 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_stackView;
  [*&v8[OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_stackView] addArrangedSubview_];
  [*&v8[v43] addArrangedSubview_];
  v44 = *&v8[v43];
  v45 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v46 = v44;
  v47 = [v45 init];
  [v46 addArrangedSubview_];

  v48 = *&v8[v43];
  [v8 bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  [v48 setFrame_];
  [*&v8[v43] setAutoresizingMask_];
  [v8 addSubview_];
  v57 = [objc_opt_self() defaultCenter];
  v58 = sub_274BF4F04();
  v59 = v66;
  sub_274BF55A4();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_274B04A00(&qword_280989FD0, 255, MEMORY[0x277CC9DB0]);
  v60 = v69;
  v61 = sub_274BF2DB4();

  (*(v67 + 8))(v59, v60);
  *&v8[OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_rotationObserver] = v61;

  return v8;
}

void sub_274B03748()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_274B038B4();
}

void sub_274B037BC()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_faultLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_errorLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_stackView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_rotationObserver) = 0;
  sub_274BF5AC4();
  __break(1u);
}

id sub_274B038B4()
{
  v1 = [v0 windowScene];
  Height = 0.0;
  if (v1 && (v3 = v1, v4 = [v1 statusBarManager], v3, v4) && (objc_msgSend(v4, sel_statusBarFrame), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v21.origin.x = v6, v21.origin.y = v8, v21.size.width = v10, v21.size.height = v12, Height = CGRectGetHeight(v21), Height > 40.0))
  {
    v13 = 20.0;
    v14 = 12.0;
    v15 = 0.0;
    v16 = 1;
    v17 = 1;
  }

  else
  {
    v16 = 0;
    v14 = Height;
    v13 = 15.0;
    if (Height < 24.0)
    {
      v13 = 5.0;
    }

    Height = 12.0;
    v15 = 10.0;
    v17 = 3;
  }

  [v0 setFrame_];
  v18 = *&v0[OBJC_IVAR____TtC14WorkflowUICoreP33_83991F5B05FCDA21D50E0A83C47AE63D20DebugStatusBarWindow_stackView];
  [v18 setAxis_];
  [v18 setSpacing_];

  return [v18 setAlignment_];
}

id sub_274B03A98(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_274B03B3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_274B9CAC4();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_274B03BC8(void *a1)
{
  swift_beginAccess();
  sub_274B03C3C(&v3, a1);
  v2 = v3;
  swift_endAccess();
}

BOOL sub_274B03C3C(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  type metadata accessor for DebugStatusBarManager();
  sub_274B04A00(&qword_2815A32F8, v2, type metadata accessor for DebugStatusBarManager);
  sub_274BF5914();
  v3 = sub_274B0422C(v6, v5);
  sub_274BF58F4();
  sub_274B04AB0(v6);
  swift_dynamicCast();
  return v3;
}

uint64_t sub_274B03D08(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_274BF5154();
  }

  return result;
}

void sub_274B03D34(id a1, char a2)
{
  if (a2 == 2 || !a2)
  {
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_274B03D98(id result, char a2)
{
  if (a2 == 2 || !a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_274B03DB4()
{
  result = qword_280989F98;
  if (!qword_280989F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989F98);
  }

  return result;
}

uint64_t sub_274B03F38(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_274B03F80(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_274BF5874();
  if (!__OFADD__(v8, 1))
  {
    *v3 = sub_274B04018(v7, v8 + 1);
LABEL_7:
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_274B3153C(a1, a2);
    *v3 = v9;
    return;
  }

  __break(1u);
}

uint64_t sub_274B04018(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FE8);
    v2 = sub_274BF5AF4();
    v17 = v2;
    sub_274BF5A94();
    while (1)
    {
      v3 = sub_274BF5AB4();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_274AD8430(0, &unk_2815A2F10);
      swift_dynamicCast();
      type metadata accessor for DebugStatusBarWindow();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_274BBC288(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_274BF5614();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL sub_274B0422C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_274BF58D4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_274B04B04(a2, v16);
      v15 = *v3;
      sub_274B0436C(v16, v8, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      *(a1 + 32) = *(a2 + 32);
      return v9 == 0;
    }

    sub_274B04B04(*(v5 + 48) + 40 * v8, v16);
    v10 = MEMORY[0x277C65180](v16, a2);
    sub_274B04AB0(v16);
    if (v10)
    {
      break;
    }

    v6 = v8 + 1;
  }

  sub_274B04AB0(a2);
  sub_274B04B04(*(v5 + 48) + 40 * v8, a1);
  return v9 == 0;
}

uint64_t sub_274B0436C(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_66;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_4:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v10 = *(i + 48) + 40 * a2;
      v11 = *(v6 + 16);
      *v10 = *v6;
      *(v10 + 16) = v11;
      *(v10 + 32) = *(v6 + 32);
      v12 = *(i + 16);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
        *(i + 16) = v14;
        return result;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FE0);
      v58 = sub_274BF5924();
      i = v58;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_84:
    }

    v59 = (v58 + 56);
    v60 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v59 >= v7 + 56 + 8 * v60)
    {
      memmove(v59, (v7 + 56), 8 * v60);
    }

    v62 = 0;
    *(i + 16) = *(v7 + 16);
    v63 = 1 << *(v7 + 32);
    v64 = *(v7 + 56);
    v65 = -1;
    if (v63 < 64)
    {
      v65 = ~(-1 << v63);
    }

    v66 = v65 & v64;
    v67 = (v63 + 63) >> 6;
    if ((v65 & v64) != 0)
    {
      do
      {
        v68 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
LABEL_82:
        v71 = v68 | (v62 << 6);
        v72 = 5 * v71;
        sub_274B04B04(*(v7 + 48) + 40 * v71, &v78);
        v73 = *(i + 48) + 8 * v72;
        v74 = v78;
        v75 = v79;
        *(v73 + 32) = v80;
        *v73 = v74;
        *(v73 + 16) = v75;
      }

      while (v66);
    }

    v69 = v62;
    while (1)
    {
      v62 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v62 >= v67)
      {
        goto LABEL_84;
      }

      v70 = *(v7 + 56 + 8 * v62);
      ++v69;
      if (v70)
      {
        v68 = __clz(__rbit64(v70));
        v66 = (v70 - 1) & v70;
        goto LABEL_82;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989FE0);
  if ((a3 & 1) == 0)
  {
    v35 = sub_274BF5934();
    i = v35;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v77 = v4;
    v36 = 0;
    a2 = v7 + 56;
    v37 = 1 << *(v7 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & *(v7 + 56);
    v4 = (v37 + 63) >> 6;
    v40 = v35 + 56;
    if (!v39)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v41 = __clz(__rbit64(v39));
      for (v39 &= v39 - 1; ; v39 = (v43 - 1) & v43)
      {
        sub_274B04B04(*(v7 + 48) + 40 * (v41 | (v36 << 6)), &v78);
        v44 = sub_274BF58D4();
        v45 = -1 << *(i + 32);
        v46 = v44 & ~v45;
        v47 = v46 >> 6;
        if (((-1 << v46) & ~*(v40 + 8 * (v46 >> 6))) != 0)
        {
          v48 = __clz(__rbit64((-1 << v46) & ~*(v40 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v49 = 0;
          v50 = (63 - v45) >> 6;
          do
          {
            if (++v47 == v50 && (v49 & 1) != 0)
            {
              goto LABEL_64;
            }

            v51 = v47 == v50;
            if (v47 == v50)
            {
              v47 = 0;
            }

            v49 |= v51;
            v52 = *(v40 + 8 * v47);
          }

          while (v52 == -1);
          v48 = __clz(__rbit64(~v52)) + (v47 << 6);
        }

        *(v40 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        v53 = *(i + 48) + 40 * v48;
        v54 = v78;
        v55 = v79;
        *(v53 + 32) = v80;
        *v53 = v54;
        *(v53 + 16) = v55;
        ++*(i + 16);
        if (v39)
        {
          break;
        }

LABEL_35:
        v42 = v36;
        do
        {
          v36 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_62;
          }

          if (v36 >= v4)
          {

            v4 = v77;
            goto LABEL_57;
          }

          v43 = *(a2 + 8 * v36);
          ++v42;
        }

        while (!v43);
        v41 = __clz(__rbit64(v43));
      }
    }
  }

  v15 = sub_274BF5934();
  i = v15;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v76 = v4;
  v16 = 0;
  a2 = v7 + 56;
  v17 = 1 << *(v7 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v7 + 56);
  v4 = (v17 + 63) >> 6;
  v20 = v15 + 56;
  if (v19)
  {
LABEL_12:
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    goto LABEL_18;
  }

LABEL_13:
  v22 = v16;
  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >= v4)
    {
      break;
    }

    v23 = *(a2 + 8 * v16);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
LABEL_18:
      v24 = *(v7 + 48) + 40 * (v21 | (v16 << 6));
      v78 = *v24;
      v79 = *(v24 + 16);
      v80 = *(v24 + 32);
      v25 = sub_274BF58D4();
      v26 = -1 << *(i + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v20 + 8 * (v27 >> 6))) != 0)
      {
        v29 = __clz(__rbit64((-1 << v27) & ~*(v20 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        do
        {
          if (++v28 == v31 && (v30 & 1) != 0)
          {
            goto LABEL_63;
          }

          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = *(v20 + 8 * v28);
        }

        while (v33 == -1);
        v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      }

      *(v20 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = *(i + 48) + 40 * v29;
      *v34 = v78;
      *(v34 + 16) = v79;
      *(v34 + 32) = v80;
      ++*(i + 16);
      if (v19)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  v56 = 1 << *(v7 + 32);
  if (v56 >= 64)
  {
    sub_274B92714(0, (v56 + 63) >> 6, v7 + 56);
  }

  else
  {
    *a2 = -1 << v56;
  }

  v4 = v76;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  result = sub_274BF58D4();
  v7 = ~(-1 << *(i + 32));
  while (1)
  {
    a2 = result & v7;
    if (((*(i + 56 + (((result & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v7)) & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_274B04B04(*(i + 48) + 40 * a2, &v78);
    v57 = MEMORY[0x277C65180](&v78, v6);
    sub_274B04AB0(&v78);
    if (v57)
    {
      break;
    }

    result = a2 + 1;
  }

LABEL_86:
  result = sub_274BF5C34();
  __break(1u);
  return result;
}

void sub_274B04994(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_274BF4F04();

  [a3 setText_];
}

uint64_t sub_274B04A00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_274B04A48()
{
  result = qword_2815A2F00;
  if (!qword_2815A2F00)
  {
    sub_274AD8430(255, &unk_2815A2F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2F00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_274BF57F4();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_274B04BB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_274B04BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B04C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  *a4 = sub_274B063D4;
  a4[1] = v8;
}

double sub_274B04D68@<D0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = [v4 name];
  v7 = sub_274BF4F44();
  v9 = v8;

  sub_274B04E0C(v5, v7, v9, v12);
  v10 = v12[1];
  *a3 = v12[0];
  *(a3 + 16) = v10;
  result = *&v13;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
  return result;
}

void sub_274B04E0C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_274B063EC();
  v8 = sub_274B06430(a1, &selRef_name);
  v10 = v9;
  v11 = a1;
  v12 = sub_274B05088(v11, v8, v10);
  v13 = sub_274B06430(v12, &selRef_label);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = sub_274B06430(v12, &selRef_shortAddressString);
    v16 = v17;
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  if (v15 == a2 && v16 == a3)
  {
    v15 = a2;
  }

  else if ((sub_274BF5C24() & 1) == 0)
  {

    goto LABEL_19;
  }

LABEL_13:
  v32 = v12;
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v19 = qword_28098C7C0;
  v20 = sub_274BF4F04();
  v21 = sub_274BF4F04();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = sub_274BF4F44();
  v25 = v24;

  if (v16)
  {
  }

  else
  {
    v15 = a2;
    v16 = a3;
  }

  a2 = v23;
  a3 = v25;
  v12 = v32;
LABEL_19:
  v26 = [v11 location];
  v27 = v26;
  if (v26)
  {
    [v26 coordinate];
    v31 = v28;
    v33 = v29;

    *&v30 = v31;
    *(&v30 + 1) = v33;
  }

  else
  {

    v30 = 0uLL;
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v15;
  *(a4 + 24) = v16;
  *(a4 + 32) = v30;
  *(a4 + 48) = v27 == 0;
}

id sub_274B05088(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_274BF4F04();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() streetAddressWithPlacemark:a1 label:v4];

  return v5;
}

__n128 sub_274B05110@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for MKCoordinateRegion(0);
  sub_274BF4904();
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_274B05198@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_274ADDF6C();

  v4 = sub_274BF4104();
  v6 = v5;
  v8 = v7;
  sub_274BF3F34();
  v9 = sub_274BF4074();
  v11 = v10;
  v13 = v12;
  sub_274AFA1D0(v4, v6, v8 & 1);

  sub_274BF4644();
  v14 = sub_274BF4094();
  v38 = v16;
  v39 = v15;
  v18 = v17;

  sub_274AFA1D0(v9, v11, v13 & 1);

  if (a1)
  {

    v19 = sub_274BF4104();
    v21 = v20;
    v23 = v22;
    sub_274BF4654();
    v24 = sub_274BF4094();
    v26 = v25;
    v36 = v27;
    v29 = v28;

    sub_274AFA1D0(v19, v21, v23 & 1);

    KeyPath = swift_getKeyPath();
    v31 = v36 & 1;
    v37 = v24;
    v32 = v26;
    sub_274AF396C(v24, v26, v31);
    v33 = v29;

    v34 = 1;
  }

  else
  {
    v37 = 0;
    v32 = 0;
    v31 = 0;
    v33 = 0;
    KeyPath = 0;
    v34 = 0;
  }

  *a2 = v14;
  *(a2 + 8) = v39;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v38;
  *(a2 + 32) = v37;
  *(a2 + 40) = v32;
  *(a2 + 48) = v31;
  *(a2 + 56) = v33;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = v34;
  *(a2 + 80) = 0;
  sub_274AF396C(v14, v39, v18 & 1);

  sub_274B06560(v37, v32, v31, v33);
  sub_274B065B0(v37, v32, v31, v33);
  sub_274B065B0(v37, v32, v31, v33);
  sub_274AFA1D0(v14, v39, v18 & 1);
}

uint64_t sub_274B0547C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = swift_allocObject();
  v4 = *v1;
  v5 = v1[1];
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  v6 = v1[2];
  *(v3 + 48) = v6;
  v7 = *(v1 + 48);
  *(v3 + 64) = v7;
  *a1 = sub_274B06520;
  a1[1] = v3;
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v11 = v7;
  return sub_274B06528(v10, v9);
}

uint64_t sub_274B054FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A008);
  MEMORY[0x28223BE20](v5);
  v7 = (v22 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A010);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  if (*(a2 + 48))
  {
    v15 = sub_274BF38F4();
    v24 = 1;
    sub_274B05198(v13, __src);
    memcpy(&v23[7], __src, 0x51uLL);
    v16 = v24;
    *v10 = v15;
    *(v10 + 1) = 0;
    v10[16] = v16;
    memcpy(v10 + 17, v23, 0x58uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A020);
    sub_274AFA930(&qword_28098A028, &qword_28098A020);
    sub_274AFA930(&qword_28098A030, &qword_28098A008);
    return sub_274BF3A64();
  }

  else
  {
    v19 = *(a2 + 32);
    v18 = *(a2 + 40);
    *v7 = sub_274BF4A74();
    v7[1] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A018);
    sub_274B05840(a2, v11, v12, v14, v13, a1, v7 + *(v21 + 44), v19, v18);
    sub_274B066B4(v7, v10, &qword_28098A008);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A020);
    sub_274AFA930(&qword_28098A028, &qword_28098A020);
    sub_274AFA930(&qword_28098A030, &qword_28098A008);
    sub_274BF3A64();
    return sub_274B0671C(v7, &qword_28098A008);
  }
}

uint64_t sub_274B05840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v76 = a5;
  v77 = a6;
  v74 = a3;
  v75 = a4;
  v72 = a2;
  v78 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A038);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v69 - v13;
  v15 = sub_274BF27E4();
  MEMORY[0x28223BE20](v15);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A040);
  v71 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v70 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A048);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v80 = &v69 - v20;
  v73 = a1;
  sub_274B05110(v117);
  v21 = MEMORY[0x277D84F90];
  v90 = MEMORY[0x277D84F90];
  sub_274B06600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A058);
  sub_274AFA930(&qword_28098A060, &qword_28098A058);
  sub_274BF57F4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A068);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v22);
  sub_274BBAD6C(0, 1, 1, v21);
  v24 = v23;
  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  if (v26 >= v25 >> 1)
  {
    sub_274BBAD6C(v25 > 1, v26 + 1, 1, v23);
    v24 = v68;
  }

  *(v24 + 16) = v26 + 1;
  v27 = v24 + 16 * v26;
  *(v27 + 32) = a8;
  *(v27 + 40) = a9;
  v90 = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = a8;
  *(v28 + 24) = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A070);
  sub_274BF2804();
  sub_274AFA930(&qword_28098A078, &qword_28098A070);
  sub_274B06660();
  v29 = v70;
  sub_274BF2784();
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v30 = qword_28098C7C0;
  v31 = sub_274BF4F04();
  v32 = sub_274BF4F04();

  v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

  v34 = sub_274BF4F44();
  v36 = v35;

  v90 = v34;
  v91 = v36;
  sub_274AFA930(&qword_28098A088, &qword_28098A040);
  sub_274ADDF6C();
  v37 = v79;
  v38 = v80;
  sub_274BF42F4();

  (*(v71 + 8))(v29, v37);
  v79 = sub_274BF3904();
  LOBYTE(v89[0]) = 1;
  sub_274B05198(v76, v84);
  memcpy(&v82[7], v84, 0x51uLL);
  v39 = v89[0];
  LODWORD(v75) = LOBYTE(v89[0]);
  v40 = sub_274BF3E34();
  sub_274BF2E54();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  LOBYTE(v90) = 0;
  sub_274BF30F4();
  sub_274BF30F4();
  sub_274BF4AA4();
  sub_274BF30D4();
  *&v83[7] = v118;
  *&v83[23] = v119;
  *&v83[39] = v120;
  LOBYTE(v31) = sub_274BF3EA4();
  sub_274BF2E54();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  LOBYTE(v90) = 0;
  v57 = sub_274BF3F74();
  KeyPath = swift_getKeyPath();
  v59 = sub_274BF4A94();
  v76 = v60;
  v77 = v59;
  v61 = v81;
  sub_274B066B4(v38, v81, &qword_28098A048);
  v62 = v78;
  sub_274B066B4(v61, v78, &qword_28098A048);
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A090) + 48);
  v89[0] = v79;
  v89[1] = 0;
  LOBYTE(v89[2]) = v39;
  memcpy(&v89[2] + 1, v82, 0x58uLL);
  *(&v89[13] + 1) = *v86;
  HIDWORD(v89[13]) = *&v86[3];
  v64 = v40;
  LOBYTE(v89[14]) = v40;
  *(&v89[14] + 1) = *v85;
  HIDWORD(v89[14]) = *&v85[3];
  v89[15] = v42;
  v89[16] = v44;
  v89[17] = v46;
  v89[18] = v48;
  LOBYTE(v89[19]) = 0;
  v89[25] = *&v83[47];
  *(&v89[23] + 1) = *&v83[32];
  *(&v89[21] + 1) = *&v83[16];
  *(&v89[19] + 1) = *v83;
  LOBYTE(v89[26]) = v31;
  HIDWORD(v89[26]) = *&v87[3];
  *(&v89[26] + 1) = *v87;
  v89[27] = v50;
  v89[28] = v52;
  v89[29] = v54;
  v89[30] = v56;
  LOBYTE(v89[31]) = 0;
  *(&v89[31] + 1) = *v88;
  HIDWORD(v89[31]) = *&v88[3];
  v89[32] = KeyPath;
  v89[33] = v57;
  v66 = v76;
  v65 = v77;
  v89[34] = v77;
  v89[35] = v76;
  memcpy((v62 + v63), v89, 0x120uLL);
  sub_274B066B4(v89, &v90, &qword_28098A098);
  sub_274B0671C(v80, &qword_28098A048);
  v90 = v79;
  v91 = 0;
  v92 = v75;
  memcpy(v93, v82, sizeof(v93));
  *v94 = *v86;
  *&v94[3] = *&v86[3];
  v95 = v64;
  *v96 = *v85;
  *&v96[3] = *&v85[3];
  v97 = v42;
  v98 = v44;
  v99 = v46;
  v100 = v48;
  v101 = 0;
  *&v104[15] = *&v83[47];
  *v104 = *&v83[32];
  v103 = *&v83[16];
  v102 = *v83;
  v105 = v31;
  *&v106[3] = *&v87[3];
  *v106 = *v87;
  v107 = v50;
  v108 = v52;
  v109 = v54;
  v110 = v56;
  v111 = 0;
  *&v112[3] = *&v88[3];
  *v112 = *v88;
  v113 = KeyPath;
  v114 = v57;
  v115 = v65;
  v116 = v66;
  sub_274B0671C(&v90, &qword_28098A098);
  return sub_274B0671C(v81, &qword_28098A048);
}

uint64_t sub_274B060C8(double a1, double a2)
{
  v4 = sub_274BF45A4();
  v5.n128_f64[0] = a1;
  v6.n128_f64[0] = a2;

  return MEMORY[0x282136EB8](v4, v5, v6);
}

id sub_274B0615C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v1 = [objc_opt_self() effectWithStyle_];
  [v0 setEffect_];

  return v0;
}

uint64_t sub_274B06234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B068BC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274B06298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B068BC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274B062FC()
{
  sub_274B068BC();
  sub_274BF3A24();
  __break(1u);
}

uint64_t sub_274B06324(double a1, double a2)
{
  sub_274BF5D54();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x277C655C0](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x277C655C0](*&v5);
  return sub_274BF5D34();
}

uint64_t sub_274B0639C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B06324(*v1, v1[1]);
  *a1 = result;
  return result;
}

unint64_t sub_274B063EC()
{
  result = qword_280989FF0;
  if (!qword_280989FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280989FF0);
  }

  return result;
}

uint64_t sub_274B06430(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_274BF4F44();

  return v4;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_274B064E4()
{
}

uint64_t sub_274B06560(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274AF396C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274B065B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274AFA1D0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_274B06600()
{
  result = qword_28098A050;
  if (!qword_28098A050)
  {
    sub_274BF27E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A050);
  }

  return result;
}

unint64_t sub_274B06660()
{
  result = qword_28098A080;
  if (!qword_28098A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A080);
  }

  return result;
}

uint64_t sub_274B066B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_274B0671C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_274B0679C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
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

uint64_t sub_274B067DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_274B0685C()
{
  result = qword_28098A0B0;
  if (!qword_28098A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A0B0);
  }

  return result;
}

unint64_t sub_274B068BC()
{
  result = qword_28098A0B8;
  if (!qword_28098A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A0B8);
  }

  return result;
}

double sub_274B0691C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_274BDA830(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_274AF5954(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_274B06980(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_274BDA8E8(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B069D8(uint64_t a1, double a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_274BDA92C(a2);
  if (v3)
  {
    return OUTLINED_FUNCTION_3_8(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B06A2C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_274BDA8E8(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_8(v2);
}

uint64_t sub_274B06A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_274BDA830(a1, a2), (v3 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B06AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_274BDA830(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_3_8(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B06B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_274BDA830(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_8(v3);
}

uint64_t sub_274B06B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_274BDA830(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void sub_274B06BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_274B81ED4();
  v9 = sub_274B22B94(v8);
  v29 = a3;
  v30 = a4;
  if (!v9)
  {

    v12 = MEMORY[0x277D84F90];
LABEL_12:
    sub_274BF51E4();
    v18 = v30;

    v19 = sub_274BF51D4();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v22 = v21;
    v20[4] = a1;
    v20[5] = a2;
    v20[6] = v29;
    v20[7] = v30;

    v23 = v18;
    v24 = sub_274BF51D4();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v22;
    v25[4] = a1;
    v25[5] = a2;
    v25[6] = v29;
    v25[7] = v30;
    sub_274BF48F4();
    sub_274BF4774();
    *a5 = v12;
    *(a5 + 8) = v33;
    *(a5 + 24) = v35;
    *(a5 + 32) = v31;
    *(a5 + 40) = v32;
    return;
  }

  v10 = v9;
  v34 = MEMORY[0x277D84F90];
  sub_274B63E14(0, v9 & ~(v9 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v26 = a5;
    v11 = 0;
    v12 = v34;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C65230](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      KeyPath = swift_getKeyPath();
      *&v33 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_274B63E14(v15 > 1, v16 + 1, 1);
      }

      *(v12 + 16) = v16 + 1;
      v17 = v12 + 32 * v16;
      *(v17 + 32) = v13;
      ++v11;
      *(v17 + 40) = 1;
      *(v17 + 48) = KeyPath;
      *(v17 + 56) = 0;
    }

    while (v10 != v11);

    a5 = v26;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_274B06E94(void *a1@<X3>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  v13[1] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110);
  MEMORY[0x277C64160](v13, v5);
  v6 = v13[0];
  if (v13[0])
  {
    v7 = v13[0];
    v8 = sub_274B809C8();
    sub_274B06F44(v7, v8);
    v10 = v9;
    v12 = v11;

    if (v12)
    {
      v6 = 0;
    }

    else
    {
      v6 = v10;
    }
  }

  *a4 = v6;
}

void sub_274B06F44(uint64_t a1, uint64_t a2)
{
  v3 = sub_274B22B94(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C65230](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_274B08760();
    v7 = sub_274BF5624();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_274B07020(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_274B809C8();
  sub_274B17EC8(v1, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x277C65230](v1, v2);
  }

  else
  {
    v3 = *(v2 + 8 * v1 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110);
  return sub_274BF48D4();
}

uint64_t __ContentCollectionPageView.PageMetrics.__allocating_init()()
{
  v0 = swift_allocObject();
  __ContentCollectionPageView.PageMetrics.init()();
  return v0;
}

uint64_t __ContentCollectionPageView.PageMetrics.init()()
{
  *(v0 + 16) = sub_274BF4E14();
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t __ContentCollectionPageView.PageMetrics.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

double __ContentCollectionPageView.init(metrics:contentItems:contentItemDataSources:previewableContentCollection:visibleItemIndex:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0C0);
  sub_274BF4774();
  *(a9 + 64) = v19;
  *(a9 + 72) = v20;
  *(a9 + 80) = v21;
  sub_274BF4774();
  result = v19;
  *(a9 + 88) = v19;
  *(a9 + 96) = v20;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t __ContentCollectionPageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v41 = sub_274BF33F4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  sub_274BF3414();
  OUTLINED_FUNCTION_1();
  v42 = v9;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0C8);
  OUTLINED_FUNCTION_1();
  v40 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0D0);
  OUTLINED_FUNCTION_1();
  v44 = v18;
  v45 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0D8);
  MEMORY[0x28223BE20](v46);
  v22 = &v36 - v21;
  memcpy(__dst, v1, 0x68uLL);
  *&__dst[13] = *(v1 + 40);
  __dst[15] = *(v1 + 56);
  v49 = *(v1 + 40);
  v50 = *(v1 + 56);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0);
  sub_274BF48E4();
  v49 = v52;
  v50 = v53;
  v48 = __dst;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E8);
  sub_274AFA930(&qword_28098A0F0, &qword_28098A0E8);
  sub_274BF49D4();
  sub_274BF33E4();
  v23 = v41;
  (*(v3 + 16))(v39, v8, v41);
  sub_274BF3404();
  (*(v3 + 8))(v8, v23);
  v24 = v20;
  sub_274AFA930(&qword_28098A0F8, &qword_28098A0C8);
  v25 = v38;
  v26 = v42;
  sub_274BF4154();
  (*(v43 + 8))(v12, v26);
  (*(v40 + 8))(v16, v25);
  v49 = *&__dst[8];
  v50 = __dst[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A100);
  sub_274BF4784();
  if (BYTE8(v52) == 1)
  {
    v27 = __dst[0];
    v28 = OUTLINED_FUNCTION_2_6();
    v29 = v37;
    MEMORY[0x277C64160](&v52, v37, v28);
    v30 = v52;
    swift_beginAccess();
    sub_274B06980(v30, *(v27 + 16));
  }

  else
  {
    v29 = v37;
  }

  sub_274BF4A94();
  sub_274BF30D4();
  (*(v44 + 32))(v22, v24, v45);
  v31 = &v22[*(v46 + 36)];
  v32 = v53;
  *v31 = v52;
  *(v31 + 1) = v32;
  *(v31 + 2) = v54;
  v33 = OUTLINED_FUNCTION_2_6();
  MEMORY[0x277C64160](v51, v29, v33);
  v34 = swift_allocObject();
  memcpy((v34 + 16), __dst, 0x68uLL);
  sub_274B08300(__dst, &v49);
  sub_274B08338();
  sub_274BF4494();

  return sub_274AE64BC(v22);
}

double sub_274B078A0@<D0>(const void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0x68uLL);
  v5 = swift_allocObject();
  memcpy((v5 + 16), a1, 0x68uLL);
  sub_274B08300(a1, v9);
  sub_274B08300(a1, v9);

  sub_274B08178(0, 0, sub_274B087A4, v4, &unk_274BFB958, v5, v9);
  v6 = v9[1];
  *a2 = v9[0];
  a2[1] = v6;
  result = *&v10;
  v8 = v11;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

uint64_t sub_274B079B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = sub_274B22B94(a2[1]);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8[13] = 0;
    v8[14] = result;
    swift_getKeyPath();
    v5 = swift_allocObject();
    memcpy((v5 + 16), a2, 0x68uLL);
    *(v5 + 120) = v3;
    sub_274B08300(a2, v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A130);
    sub_274B08948();
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989408);
    v7 = sub_274B08A28();
    v8[0] = v6;
    v8[1] = MEMORY[0x277D83B88];
    v8[2] = v7;
    v8[3] = MEMORY[0x277D83B98];
    swift_getOpaqueTypeConformance2();
    return sub_274BF4944();
  }

  return result;
}

uint64_t sub_274B07B28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989408);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = *a1;
  v25[0] = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A228);
  sub_274BF4784();
  v12 = v26;
  sub_274B17EC8(v11, (v26 & 0xC000000000000001) == 0, v26);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x277C65230](v11, v12);
  }

  else
  {
    v13 = *(v12 + 8 * v11 + 32);
  }

  v14 = *(a2 + 8);
  sub_274B17EC8(v11, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x277C65230](v11, v14);
  }

  else
  {
    v15 = *(v14 + 8 * v11 + 32);
  }

  v16 = v15;
  LOWORD(v25[0]) = 1;
  *(&v25[0] + 1) = v13;
  sub_274B17EC8(v11, (a3 & 0xC000000000000001) == 0, a3);
  if ((a3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x277C65230](v11, a3);
  }

  else
  {
  }

  WFContentItem.previewView(configuration:previewableThumbnailItem:previewableListItem:forceUseDefaultPreview:)(v25, 0, 0, v10);

  v25[0] = *(a2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A230);
  sub_274BF4784();
  v17 = v26;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A158) + 36)] = v17;
  v18 = swift_allocObject();
  memcpy((v18 + 16), a2, 0x68uLL);
  *(v18 + 120) = v11;
  sub_274B08300(a2, v25);
  v19 = sub_274BF4A94();
  v21 = v20;

  v22 = &v10[*(v8 + 36)];
  *v22 = sub_274B091D4;
  *(v22 + 1) = v18;
  *(v22 + 2) = v19;
  *(v22 + 3) = v21;
  sub_274B091E0(v10, a4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989410);
  v24 = a4 + *(result + 36);
  *v24 = v11;
  *(v24 + 8) = 1;
  return result;
}

uint64_t sub_274B07DDC@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  sub_274BF30F4();
  result = sub_274B07E38(a1, &v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_274B07E38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  memcpy(__dst, v3, sizeof(__dst));
  v7 = __dst[0];
  if ((*(__dst[0] + 32) & 1) == 0 && *(__dst[0] + 24) == a1)
  {
    v8 = sub_274BF4AE4();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_1_7();
    *(v9 - 16) = __dst;
    *(v9 - 8) = a3;
    sub_274BF31E4();

    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
  }

  swift_beginAccess();
  if (!*(*(v7 + 16) + 16))
  {
    v10 = sub_274BF4AE4();
    MEMORY[0x28223BE20](v10);
    OUTLINED_FUNCTION_1_7();
    *(v11 - 16) = __dst;
    *(v11 - 8) = a3;
    sub_274BF31E4();

    sub_274BF4AE4();
    sub_274BF4AB4();

    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_1_7();
    *(v13 - 16) = __dst;
    sub_274BF31E4();
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v7 + 16);
  sub_274B3165C(a1, a3);
  *(v7 + 16) = v15;
  swift_endAccess();
  result = sub_274BF45E4();
  *a2 = result;
  return result;
}

uint64_t sub_274B08070(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_274BF51E4();
  v2[4] = sub_274BF51D4();
  v4 = sub_274BF51C4();

  return MEMORY[0x2822009F8](sub_274B08108, v4, v3);
}

uint64_t sub_274B08108()
{
  v1 = *(v0 + 16);

  *v1 = sub_274B81ED4();
  v2 = *(v0 + 8);

  return v2();
}

double sub_274B08178@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A120);
  sub_274BF4774();
  result = *&v15;
  *a7 = v15;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t sub_274B0820C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  result = swift_beginAccess();
  if (*(*(v4 + 16) + 16) && (result = sub_274BDA8E8(v3), (v6 & 1) != 0))
  {
    v7 = sub_274BF4AE4();
    MEMORY[0x28223BE20](v7);
    sub_274BF31E4();
  }

  else
  {
    *(v4 + 24) = v3;
    *(v4 + 32) = 0;
  }

  return result;
}

unint64_t sub_274B08338()
{
  result = qword_28098A108;
  if (!qword_28098A108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A0D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A0C8);
    sub_274BF3414();
    sub_274AFA930(&qword_28098A0F8, &qword_28098A0C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A108);
  }

  return result;
}

uint64_t sub_274B08544(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274B08584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B0863C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274B0867C(uint64_t result, int a2, int a3)
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

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_274B08760()
{
  result = qword_28098A118;
  if (!qword_28098A118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28098A118);
  }

  return result;
}

uint64_t sub_274B087AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_274B08848;

  return sub_274B08070(a1, v1 + 16);
}

uint64_t sub_274B08848()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_274B08948()
{
  result = qword_28098A138;
  if (!qword_28098A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A128);
    sub_274B089D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A138);
  }

  return result;
}

unint64_t sub_274B089D4()
{
  result = qword_28098A140;
  if (!qword_28098A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A140);
  }

  return result;
}

unint64_t sub_274B08A28()
{
  result = qword_28098A148;
  if (!qword_28098A148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989408);
    sub_274B08AE0();
    sub_274AFA930(&qword_28098A218, &qword_28098A220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A148);
  }

  return result;
}

unint64_t sub_274B08AE0()
{
  result = qword_28098A150;
  if (!qword_28098A150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A158);
    sub_274B08B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A150);
  }

  return result;
}

unint64_t sub_274B08B6C()
{
  result = qword_28098A160;
  if (!qword_28098A160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A168);
    sub_274B08BF8();
    sub_274B08DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A160);
  }

  return result;
}

unint64_t sub_274B08BF8()
{
  result = qword_28098A170;
  if (!qword_28098A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A178);
    sub_274B08CB0();
    sub_274AFA930(&qword_28098A1A0, &qword_28098A1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A170);
  }

  return result;
}

unint64_t sub_274B08CB0()
{
  result = qword_28098A180;
  if (!qword_28098A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A188);
    sub_274B08D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A180);
  }

  return result;
}

unint64_t sub_274B08D3C()
{
  result = qword_28098A190;
  if (!qword_28098A190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A190);
  }

  return result;
}

unint64_t sub_274B08DC0()
{
  result = qword_28098A1B0;
  if (!qword_28098A1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A1B8);
    sub_274B08E4C();
    sub_274B08FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A1B0);
  }

  return result;
}

unint64_t sub_274B08E4C()
{
  result = qword_28098A1C0;
  if (!qword_28098A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A1C8);
    sub_274B08ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A1C0);
  }

  return result;
}

unint64_t sub_274B08ED8()
{
  result = qword_28098A1D0;
  if (!qword_28098A1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A1D8);
    sub_274B08F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A1D0);
  }

  return result;
}

unint64_t sub_274B08F64()
{
  result = qword_28098EEC0;
  if (!qword_28098EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098EEC0);
  }

  return result;
}

unint64_t sub_274B08FB8()
{
  result = qword_28098A1E0;
  if (!qword_28098A1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A1E8);
    sub_274B09044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A1E0);
  }

  return result;
}

unint64_t sub_274B09044()
{
  result = qword_28098A1F0;
  if (!qword_28098A1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A1F8);
    sub_274B090FC();
    sub_274AFA930(&qword_28098A208, &qword_28098A210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A1F0);
  }

  return result;
}

unint64_t sub_274B090FC()
{
  result = qword_28098A200;
  if (!qword_28098A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A200);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_274B091E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989408);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MontaraPreviewView.init(with:configuration:delegate:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A248);
  OUTLINED_FUNCTION_7_1(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v111 = v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  OUTLINED_FUNCTION_7_1(v10);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v119 = v104 - v12;
  v13 = sub_274BF1A24();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v110 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v104 - v19;
  v109 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = v104 - v23;
  v25 = *a2;
  v26 = a2[1];
  v27 = *(a2 + 1);
  *a4 = a1;
  v117 = v25;
  *(a4 + 8) = v25;
  *(a4 + 9) = v26;
  v124 = a4;
  *(a4 + 16) = v27;
  v28 = a1;
  v114 = v27;

  v29 = sub_274B0B074(v28);
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v32 = 0xE000000000000000;
  if (v30)
  {
    v32 = v30;
  }

  v118 = v32;
  v33 = [objc_allocWithZone(sub_274BF1A54()) init];
  v112 = v28;
  v34 = [v28 response];
  v35 = [v34 responseDataModel];

  sub_274BF1A74();
  v36 = sub_274BF19E4();
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0xD000000000000012;
  }

  v120 = v38;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0x8000000274C09F70;
  }

  v121 = sub_274BF19F4();
  v41 = v40;
  v42 = *(v15 + 16);
  v125 = v24;
  v106 = v15 + 16;
  v105 = v42;
  v42(v20, v24, v13);
  v43 = (*(v15 + 88))(v20, v13);
  v44 = *MEMORY[0x277CFC140];
  v107 = v15;
  v45 = *(v15 + 8);
  v122 = v13;
  v115 = v45;
  v116 = v15 + 8;
  v45(v20, v13);
  if (v43 == v44)
  {
    v46 = sub_274BF1A44();
    if (v47 || (v46 = sub_274BF1A34(), v47))
    {
      v48 = v47;
      v121 = v46;

      v41 = v48;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A250);
  sub_274BF2AE4();
  OUTLINED_FUNCTION_1();
  v50 = v49;
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_274BF8D80;
  v53 = (v52 + v51);
  v54 = v118;
  *v53 = v31;
  v53[1] = v54;
  (*(v50 + 104))();

  sub_274BF4FE4();
  v55 = v39;
  v56 = v41;
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v57 = qword_28098C7C0;
  v58 = sub_274BF4F04();
  v59 = sub_274BF4F04();

  v60 = [v57 localizedStringForKey:v58 value:v59 table:0];

  sub_274BF4F44();
  v61 = v119;
  sub_274BF1A04();
  v62 = sub_274BF1F54();
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
  v63 = type metadata accessor for MontaraPreviewView();
  v64 = MEMORY[0x277D84F90];
  v65 = v124;
  v113 = v56;
  v118 = v55;
  sub_274BF2A64();
  v108 = v63;
  sub_274B0B124(v123, v65 + *(v63 + 28));
  v129 = v64;
  v104[0] = sub_274AD8430(0, &qword_28098A260);
  sub_274BF4FE4();
  v66 = sub_274BF4F04();
  v67 = sub_274BF4F04();

  v119 = v57;
  v68 = [v57 localizedStringForKey:v66 value:v67 table:0];

  sub_274BF4F44();
  v104[1] = sub_274AD8430(0, &unk_28098EFB0);
  sub_274B09D00();
  v69 = v110;
  v70 = v122;
  v105(v110, v125, v122);
  v71 = v107;
  v72 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v73 = (v109 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  (*(v71 + 32))(v74 + v72, v69, v70);
  *(v74 + v73) = v33;
  v110 = v33;
  v75 = OUTLINED_FUNCTION_4_5();
  MEMORY[0x277C649C0]();
  OUTLINED_FUNCTION_8_4();
  if (v76)
  {
    OUTLINED_FUNCTION_9_5();
  }

  v109 = v75;
  sub_274BF5184();
  v77 = sub_274BF25F4();
  __swift_storeEnumTagSinglePayload(v111, 1, 1, v77);
  v78 = objc_allocWithZone(sub_274BF4D84());
  v79 = sub_274BF4D74();
  sub_274BF4FE4();
  v80 = sub_274BF4F04();
  v81 = sub_274BF4F04();

  v82 = [v119 localizedStringForKey:v80 value:v81 table:0];

  sub_274BF4F44();
  sub_274B09D00();
  v83 = swift_allocObject();
  *(v83 + 16) = v112;
  *(v83 + 24) = v79;
  v84 = v79;
  v85 = OUTLINED_FUNCTION_4_5();
  v86 = v108;
  v87 = v124;
  v88 = (v124 + *(v108 + 36));
  v126 = v84;
  v89 = v84;
  sub_274BF4774();
  v90 = v128;
  *v88 = v127;
  v88[1] = v90;
  v91 = v85;
  MEMORY[0x277C649C0]();
  OUTLINED_FUNCTION_8_4();
  if (v76)
  {
    OUTLINED_FUNCTION_9_5();
  }

  sub_274BF5184();
  v92 = v129;

  v93 = v113;
  if (v117)
  {

    sub_274B0B238(v123);

    result = v115(v125, v122);
    v95 = v87 + *(v86 + 32);
    *(v95 + 48) = 0;
    *(v95 + 16) = 0u;
    *(v95 + 32) = 0u;
    *v95 = 0u;
  }

  else
  {
    sub_274BF4FE4();
    v96 = sub_274BF4F04();
    v97 = sub_274BF4F04();

    v98 = [v119 localizedStringForKey:v96 value:v97 table:0];

    v99 = sub_274BF4F44();
    v101 = v100;

    sub_274B0B238(v123);
    result = v115(v125, v122);
    v102 = (v87 + *(v86 + 32));
    v103 = v118;
    *v102 = v120;
    v102[1] = v103;
    v102[2] = v121;
    v102[3] = v93;
    v102[4] = v99;
    v102[5] = v101;
    v102[6] = v92;
  }

  return result;
}

id sub_274B09D00()
{
  v0 = sub_274BF4F04();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

void sub_274B09D64()
{
  v0 = sub_274BF1F54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedContext];
  sub_274BF1A04();
  v5 = sub_274BF1ED4();
  (*(v1 + 8))(v3, v0);
  [v4 openURL_];
}

void sub_274B09E84(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_274BF1A24();
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 response];
  v10 = [v9 responseDataModel];

  sub_274BF1A74();
  v11 = sub_274BF1A64();
  objc_allocWithZone(type metadata accessor for WFAskLLMFeedbackPresenter());
  v12 = WFAskLLMFeedbackPresenter.init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(v8, v11, a3, 0, 0);
  WFAskLLMFeedbackPresenter.presentRAC()();
}

uint64_t sub_274B09F8C@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A360);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  v4 = sub_274BF2A94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = sub_274BF3F64();
  sub_274BF3EE4();
  sub_274BF3FB4();
  sub_274BF3EE4();
  sub_274BF3EC4();

  sub_274BF3F64();
  sub_274BF3F34();
  sub_274BF3F84();

  sub_274BF3EC4();

  sub_274BF3FA4();
  sub_274BF3EC4();

  sub_274BF2A84();
  (*(v5 + 16))(v3, v7, v4);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_274BF2AA4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t MontaraPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A268);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v44[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A270);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v44[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A278);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v44[-v17];
  v19 = [objc_opt_self() markdownRenderingV2Enabled];
  v54 = a1;
  if (v19)
  {
    v51 = v12;
    v20 = [*v1 textResponse];
    v53 = v3;
    v52 = v13;
    v50 = v9;
    v49 = v15;
    v48 = v18;
    if (v20)
    {
      v21 = v20;
      v47 = sub_274BF4F44();
      v46 = v22;
    }

    else
    {
      v47 = 0;
      v46 = 0xE000000000000000;
    }

    v25 = *(v1 + 8);
    v45 = *(v1 + 9);
    v26 = *(v1 + 16);
    v27 = type metadata accessor for MontaraPreviewView();
    v28 = (v1 + *(v27 + 32));
    v30 = *v28;
    v29 = v28[1];
    v32 = v28[2];
    v31 = v28[3];
    v34 = v28[4];
    v33 = v28[5];
    v35 = v28[6];
    __src[0] = v47;
    __src[1] = v46;
    LOBYTE(__src[2]) = v25;
    BYTE1(__src[2]) = v45;
    __src[3] = v26;
    __src[4] = v30;
    __src[5] = v29;
    __src[6] = v32;
    __src[7] = v31;
    __src[8] = v34;
    __src[9] = v33;
    __src[10] = v35;
    v36 = (v1 + *(v27 + 36));
    v38 = *v36;
    v37 = v36[1];
    v55 = v38;
    v56 = v37;

    sub_274B0B680(v30, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A300);
    sub_274BF47A4();
    v39 = __dst[2];
    v40 = sub_274B0B62C();
    v41 = v48;
    sub_274BF4144();

    memcpy(__dst, __src, sizeof(__dst));
    sub_274B0B6E4(__dst);
    v42 = v49;
    v43 = v52;
    (*(v49 + 16))(v51, v41, v52);
    swift_storeEnumTagMultiPayload();
    __src[0] = &type metadata for WFMarkdownViewRepresentable;
    __src[1] = v40;
    OUTLINED_FUNCTION_2_7();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_3_9(&qword_28098A2F8, &qword_28098A268);
    sub_274BF3A64();
    return (*(v42 + 8))(v41, v43);
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    *&v44[-16] = v1;
    sub_274BF3E24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A280);
    sub_274B0B2A8();
    sub_274BF2EC4();
    (*(v5 + 16))(v12, v8, v3);
    swift_storeEnumTagMultiPayload();
    v23 = sub_274B0B62C();
    __dst[0] = &type metadata for WFMarkdownViewRepresentable;
    __dst[1] = v23;
    OUTLINED_FUNCTION_2_7();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_3_9(&qword_28098A2F8, &qword_28098A268);
    sub_274BF3A64();
    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t sub_274B0A6D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v65 = a2;
  v2 = type metadata accessor for MontaraPreviewView();
  v3 = v2 - 8;
  v64 = *(v2 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_274BF3C04();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A350);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  v10 = sub_274BF2A74();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_274BF2AD4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A2A8) - 8;
  MEMORY[0x28223BE20](v57);
  v19 = &v56 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A298) - 8;
  v20 = MEMORY[0x28223BE20](v61);
  v60 = &v56 - v21;
  v22 = *(v3 + 32);
  v23 = v56;
  (*(v11 + 16))(v13, v56 + v22, v10, v20);
  v24 = v23;
  sub_274B09F8C(v9);
  v25 = sub_274BF2AB4();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v25);
  sub_274BF2AC4();
  sub_274BF3BF4();
  sub_274B0BCE8(&qword_28098A2D0, MEMORY[0x277D0D870]);
  v26 = v58;
  sub_274BF4274();
  (*(v59 + 8))(v6, v26);
  (*(v15 + 8))(v17, v14);
  v27 = *v23;
  LOBYTE(v14) = *(v24 + 8);
  LOBYTE(v26) = *(v24 + 9);
  v28 = *(v24 + 16);
  v29 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A2C8) + 36)];
  *v29 = v27;
  v29[8] = v14;
  v29[9] = v26;
  *(v29 + 10) = v67;
  *(v29 + 7) = v68;
  *(v29 + 2) = v28;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  v30 = v27;

  LOBYTE(v28) = sub_274BF3EA4();
  sub_274BF2E54();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A2B8) + 36)];
  *v39 = v28;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(v28) = sub_274BF3E34();
  sub_274BF2E54();
  v40 = &v19[*(v57 + 44)];
  *v40 = v28;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  sub_274BF4A94();
  sub_274BF34A4();
  v45 = v60;
  sub_274B0BBA8(v19, v60, &qword_28098A2A8);
  memcpy((v45 + *(v61 + 44)), __src, 0x70uLL);
  v46 = v62;
  sub_274B0BA64(v24, v62);
  v47 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v48 = swift_allocObject();
  sub_274B0BAC8(v46, v48 + v47);
  v49 = sub_274BF4A94();
  v51 = v50;
  v52 = v45;
  v53 = v65;
  sub_274B0BBA8(v52, v65, &qword_28098A298);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A280);
  v55 = (v53 + *(result + 36));
  *v55 = sub_274B0BB2C;
  v55[1] = v48;
  v55[2] = v49;
  v55[3] = v51;
  return result;
}

uint64_t sub_274B0AD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a3;
  v5 = sub_274BF3114();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MontaraPreviewView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v18[3] = sub_274BF45E4();
  sub_274BF30F4();
  v18[1] = v12;
  v18[2] = v13;
  sub_274B0BA64(a2, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_274B0BAC8(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  (*(v6 + 32))(v16 + v15, v8, v5);
  type metadata accessor for CGSize(0);
  sub_274B0BCE8(&qword_28098A358, type metadata accessor for CGSize);
  sub_274BF4494();
}

double *sub_274B0AFB8(double *result, double *a2, uint64_t a3)
{
  if (*a2 != *result || a2[1] != result[1])
  {
    v13 = v3;
    v14 = v4;
    v7 = type metadata accessor for MontaraPreviewView();
    sub_274B0B124(a3 + *(v7 + 28), v10);
    v8 = v11;
    if (v11)
    {
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      sub_274BF30F4();
      (*(v9 + 8))(v8, v9);
      return __swift_destroy_boxed_opaque_existential_0(v10);
    }

    else
    {
      return sub_274B0B238(v10);
    }
  }

  return result;
}

uint64_t sub_274B0B074(void *a1)
{
  v1 = [a1 textResponse];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_274BF4F44();

  return v3;
}

uint64_t type metadata accessor for MontaraPreviewView()
{
  result = qword_28098A308;
  if (!qword_28098A308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274B0B124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_274B0B194()
{
  sub_274BF1A24();

  sub_274B09D64();
}

uint64_t sub_274B0B238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274B0B2A8()
{
  result = qword_28098A288;
  if (!qword_28098A288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A280);
    sub_274B0B360();
    sub_274AFA930(&qword_28098A2E0, &qword_28098A2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A288);
  }

  return result;
}

unint64_t sub_274B0B360()
{
  result = qword_28098A290;
  if (!qword_28098A290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A298);
    sub_274B0B448(&qword_28098A2A0, &qword_28098A2A8, &unk_274BFBA78, sub_274B0B418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A290);
  }

  return result;
}

uint64_t sub_274B0B448(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274B0B4CC()
{
  result = qword_28098A2C0;
  if (!qword_28098A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A2C8);
    sub_274BF2AD4();
    sub_274BF3C04();
    sub_274B0BCE8(&qword_28098A2D0, MEMORY[0x277D0D870]);
    swift_getOpaqueTypeConformance2();
    sub_274B0B5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A2C0);
  }

  return result;
}

unint64_t sub_274B0B5D8()
{
  result = qword_28098A2D8;
  if (!qword_28098A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A2D8);
  }

  return result;
}

unint64_t sub_274B0B62C()
{
  result = qword_28098A2F0;
  if (!qword_28098A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A2F0);
  }

  return result;
}

uint64_t sub_274B0B680(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_274B0B790()
{
  sub_274AD8430(319, &qword_28098A318);
  if (v0 <= 0x3F)
  {
    sub_274BF2A74();
    if (v1 <= 0x3F)
    {
      sub_274B0B874();
      if (v2 <= 0x3F)
      {
        sub_274B0B8D8();
        if (v3 <= 0x3F)
        {
          sub_274B0B928();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274B0B874()
{
  if (!qword_28098A320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A328);
    v0 = sub_274BF5724();
    if (!v1)
    {
      atomic_store(v0, &qword_28098A320);
    }
  }
}

void sub_274B0B8D8()
{
  if (!qword_28098A330)
  {
    v0 = sub_274BF5724();
    if (!v1)
    {
      atomic_store(v0, &qword_28098A330);
    }
  }
}

void sub_274B0B928()
{
  if (!qword_28098A338)
  {
    sub_274BF4D84();
    v0 = sub_274BF47B4();
    if (!v1)
    {
      atomic_store(v0, &qword_28098A338);
    }
  }
}

unint64_t sub_274B0B980()
{
  result = qword_28098A340;
  if (!qword_28098A340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A348);
    sub_274B0B62C();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098A2F8, &qword_28098A268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A340);
  }

  return result;
}

uint64_t sub_274B0BA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MontaraPreviewView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B0BAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MontaraPreviewView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B0BB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MontaraPreviewView();
  OUTLINED_FUNCTION_7_1(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_274B0AD4C(a1, v7, a2);
}

uint64_t sub_274B0BBA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

double *sub_274B0BC08(double *a1, double *a2)
{
  v5 = *(type metadata accessor for MontaraPreviewView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_274BF3114();
  OUTLINED_FUNCTION_7_1(v7);

  return sub_274B0AFB8(a1, a2, v2 + v6);
}

uint64_t sub_274B0BCE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_5()
{

  return sub_274BF5154();
}

uint64_t sub_274B0BD88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t ObservableDictionary.values.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return sub_274B0BE4C();
}

uint64_t sub_274B0BE4C()
{
  swift_beginAccess();
  swift_allocObject();
  swift_weakInit();
  sub_274BF2CB4();

  v1 = sub_274BF4E34();

  swift_beginAccess();
  *(v0 + 24) = v1;
}

uint64_t (*ObservableDictionary.values.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_274B0BFFC;
}

uint64_t sub_274B0BFFC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_274B0BE4C();
  }

  return result;
}

uint64_t ObservableDictionary.__allocating_init(dictionaryLiteral:)(uint64_t a1)
{
  v3 = a1;
  swift_getTupleTypeMetadata2();
  v1 = sub_274BF51A4();
  swift_getWitnessTable();
  return ObservableDictionary.__allocating_init<A>(uniqueKeysWithValues:)(&v3, v1);
}

uint64_t ObservableDictionary.__allocating_init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v7);
  v9 = sub_274BF4E24();
  v10 = ObservableDictionary.__allocating_init(_:)(v9);
  (*(v5 + 8))(a1, a2);
  return v10;
}

uint64_t ObservableDictionary.__allocating_init<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_5();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  (*(v13 + 16))(&v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v17, v15);
  v18 = *(v5 + 88);
  v22 = *(v5 + 80);
  v23 = v18;
  v24 = a4;
  v25 = *(v5 + 96);
  v26 = a5;
  v27 = a2;
  v28 = a3;
  v19 = sub_274BF4E54();
  if (!v6)
  {
    v5 = ObservableDictionary.__allocating_init(_:)(v19);
  }

  (*(v13 + 8))(a1, a4);
  return v5;
}

uint64_t ObservableDictionary.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ObservableDictionary.init(_:)(a1);
  return v2;
}

uint64_t sub_274B0C35C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 64))(*a1, *a2);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ObservableDictionary.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  sub_274BF2CB4();
  swift_getTupleTypeMetadata2();
  sub_274BF5164();
  OUTLINED_FUNCTION_1_2();
  v3 = sub_274BF4E14();
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  sub_274B0BE4C();
  return v1;
}

uint64_t ObservableDictionary.subscript.getter()
{
  swift_beginAccess();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_2();
  sub_274BF4E64();
  swift_endAccess();
  return v1;
}

uint64_t sub_274B0C4CC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = &v8 - v2;
  (*(v4 + 16))(&v8 - v2, v5, v1);
  v6 = swift_unknownObjectRetain();
  return ObservableDictionary.subscript.setter(v6, v3);
}

uint64_t ObservableDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v28 = *(*v2 + 104);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_5();
  v30 = v7;
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v8;
  v9 = *(v4 + 80);
  OUTLINED_FUNCTION_0_5();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v36 = v11;
  v32 = *(v11 + 16);
  v32(&v28 - v17, a2, v9, v16);
  v18 = v33;
  v38 = v33;
  swift_beginAccess();
  v34 = *(v4 + 96);
  sub_274BF4E44();
  swift_unknownObjectRetain();
  sub_274BF4E74();
  swift_endAccess();
  sub_274B0BE4C();
  v35 = v14;
  v37 = a2;
  (v32)(v14, a2, v9);
  if (v18)
  {
    swift_unknownObjectRetain();
    v19 = v28;
    v20 = v29;
    sub_274BF2CC4();
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *&v23 = v9;
    *(&v23 + 1) = v5;
    *&v24 = v34;
    *(&v24 + 1) = v19;
    *(v22 + 16) = v23;
    *(v22 + 32) = v24;
    *(v22 + 48) = v21;
    v25 = v31;
    swift_getAssociatedConformanceWitness();

    v26 = sub_274BF2DB4();

    (*(v30 + 8))(v20, v25);
  }

  else
  {
    v26 = 0;
  }

  v38 = v26;
  swift_beginAccess();
  sub_274BF2CB4();
  sub_274BF4E44();
  sub_274BF4E74();
  swift_endAccess();
  swift_unknownObjectRelease();
  return (*(v36 + 8))(v37, v9);
}

void (*ObservableDictionary.subscript.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[1] = v1;
  v3[2] = *(*v1 + 80);
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  *(v6 + 24) = v4;
  v8 = *(v7 + 64);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v3[5] = __swift_coroFrameAllocStub(v8);
  (*(v5 + 16))();
  *v3 = ObservableDictionary.subscript.getter();
  return sub_274B0CAA0;
}

void sub_274B0CAA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v4, v2[2]);
    v5 = swift_unknownObjectRetain();
    ObservableDictionary.subscript.setter(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    ObservableDictionary.subscript.setter(**a1, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_274B0CB4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v17 = a4;
  v18 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v17 - v12;
  sub_274BF2CC4();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v17;
  v14[5] = a5;
  v14[6] = a1;
  swift_getAssociatedConformanceWitness();

  v15 = sub_274BF2DB4();

  result = (*(v11 + 8))(v13, AssociatedTypeWitness);
  *v18 = v15;
  return result;
}

uint64_t sub_274B0CCF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for ObservableDictionary();
    swift_getWitnessTable();
    sub_274BF2CE4();

    sub_274BF2D04();
  }

  return result;
}

uint64_t ObservableDictionary.deinit()
{

  return v0;
}

uint64_t ObservableDictionary.__deallocating_deinit()
{
  ObservableDictionary.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_274B0CE1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

uint64_t sub_274B0CE6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ObservableDictionary.__allocating_init(dictionaryLiteral:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_274B0CF84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_274B0D04C(v1, v2);
}

uint64_t sub_274B0CFC4()
{
  if (!*(v0 + 40))
  {
    v1 = [*(v0 + 16) richListTitle];
    v2 = sub_274BF4F44();
    v4 = v3;

    *(v0 + 32) = v2;
    *(v0 + 40) = v4;
  }

  return OUTLINED_FUNCTION_11_1();
}

uint64_t sub_274B0D04C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t (*sub_274B0D05C(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = sub_274B0CFC4();
  a1[1] = v3;
  return sub_274B0D0A4;
}

uint64_t sub_274B0D0A4(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 32) = *a1;
  *(v1 + 40) = v2;
}

double sub_274B0D0B8()
{
  OUTLINED_FUNCTION_10();
  sub_274B0D108();
  result = *&v2;
  *v0 = v2;
  return result;
}

uint64_t (*sub_274B0D130())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_1(KeyPath);
  return sub_274AF8B34;
}

void (*sub_274B0D1D0())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_5_0(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F8);
  OUTLINED_FUNCTION_7_3(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F0);
  OUTLINED_FUNCTION_12_1();
  swift_endAccess();
  return sub_274B0D2CC;
}

double sub_274B0D2E4()
{
  OUTLINED_FUNCTION_10();
  sub_274B0D380();
  result = *&v2;
  *v0 = v2;
  return result;
}

uint64_t sub_274B0D334(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  sub_274B0F308(v8[0], v6);
  return a5(v8);
}

uint64_t sub_274B0D394()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();
}

uint64_t sub_274B0D418()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t (*sub_274B0D48C())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_1(KeyPath);
  return sub_274AF7058;
}

uint64_t sub_274B0D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_2();
  (*(v11 + 16))(v7, a1);
  return a7(v7);
}

uint64_t sub_274B0D5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v11 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F0);
  sub_274BF2D44();
  swift_endAccess();
  v8 = OUTLINED_FUNCTION_11_1();
  return v9(v8);
}

void (*sub_274B0D70C())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_5_0(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F8);
  OUTLINED_FUNCTION_7_3(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F0);
  OUTLINED_FUNCTION_12_1();
  swift_endAccess();
  return sub_274B0D808;
}

void sub_274B0D820(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_274B0D8E8()
{
  OUTLINED_FUNCTION_10();
  result = sub_274B0D95C();
  *v0 = v2;
  return result;
}

uint64_t sub_274B0D95C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();
}

uint64_t sub_274B0D9D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t (*sub_274B0DA44())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_4_1(KeyPath);
  return sub_274AF8B34;
}

uint64_t sub_274B0DAD8(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_12_1();
  return swift_endAccess();
}

uint64_t sub_274B0DB48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A418);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_2();
  (*(v5 + 16))(v1, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A410);
  sub_274BF2D44();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_11_1();
  return v8(v7);
}

void (*sub_274B0DC64())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_5_0(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A418);
  OUTLINED_FUNCTION_7_3(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A410);
  OUTLINED_FUNCTION_12_1();
  swift_endAccess();
  return sub_274B0DD60;
}

uint64_t ContentItemDataSource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ContentItemDataSource.init(_:)(a1);
  return v2;
}

uint64_t ContentItemDataSource.init(_:)(uint64_t a1)
{
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A410);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v13 = OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__subtitle;
  v20 = 0;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A420);
  sub_274BF2D24();
  v14 = *(v9 + 32);
  v14(v1 + v13, v12, v7);
  v15 = OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__altText;
  v20 = 0;
  v21 = 0;
  sub_274BF2D24();
  v14(v1 + v15, v12, v7);
  v16 = OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__thumbnail;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A428);
  sub_274BF2D24();
  (*(v5 + 32))(v1 + v16, v2, v3);
  *(v1 + 16) = v19;
  return v1;
}

void sub_274B0DFBC(double a1, double a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_2_9();
    v19 = v6;
    v20 = &block_descriptor_0;
    v7 = _Block_copy(&v17);

    v8 = [v5 getListSubtitle_];
    _Block_release(v7);
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_6();

    if (v18)
    {
      sub_274AFA278(v17, v18);
    }

    else
    {
      v9 = 1;
      if (v8)
      {
        v9 = 2;
      }

      v17 = 0;
      v18 = v9;
      sub_274B0D11C();
    }

    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_2_9();
    v19 = v10;
    v20 = &block_descriptor_19;
    v11 = _Block_copy(&v17);

    v12 = [v5 getListAltText_];
    _Block_release(v11);
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_6();

    if (v18)
    {
      sub_274AFA278(v17, v18);
    }

    else
    {
      v13 = 1;
      if (v12)
      {
        v13 = 2;
      }

      v17 = 0;
      v18 = v13;
      sub_274B0D404();
    }

    OUTLINED_FUNCTION_0_6();
    v18 = 1107296256;
    v19 = sub_274B0E618;
    v20 = &block_descriptor_22;
    v14 = _Block_copy(&v17);

    v15 = [v5 getListThumbnail:v14 forSize:{a1, a2}];
    _Block_release(v14);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274BF2D64();

    if (v17)
    {
      sub_274AFA308(v17);
    }

    else
    {
      v16 = 1;
      if (v15)
      {
        v16 = 2;
      }

      v17 = v16;
      sub_274B0D9D4();
    }
  }
}

uint64_t sub_274B0E2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_274BF4F44();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274B0E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v7 = sub_274BF4D34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274B0F2B4();
  *v12 = sub_274BF5504();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v7);
  v13 = sub_274BF4D54();
  result = (*(v9 + 8))(v12, v7);
  if (v13)
  {
    if (a2)
    {
      *&v15 = a1;
      *(&v15 + 1) = a2;
    }

    else
    {
      v15 = xmmword_274BFBC10;
    }

    return a4(&v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274B0E4D0(void *a1)
{
  v2 = sub_274BF4D34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274B0F2B4();
  *v5 = sub_274BF5504();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_274BF4D54();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (a1)
    {
      v10 = a1;
      v8 = a1;
    }

    else
    {
      v10 = 1;
    }

    return sub_274B0D9D4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274B0E618(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for WFContentItemListThumbnailOption(0);
    sub_274B0F25C();
    sub_274BF4DF4();
  }

  v5 = a2;
  v6 = OUTLINED_FUNCTION_11_1();
  v4(v6);
}

uint64_t ContentItemDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__subtitle;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__altText, v2);
  v4 = OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__thumbnail;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A410);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t ContentItemDataSource.__deallocating_deinit()
{
  ContentItemDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274B0E810@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentItemDataSource();
  result = sub_274BF2CE4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ContentItemDataSource()
{
  result = qword_28098A430;
  if (!qword_28098A430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274B0E8A4()
{
  sub_274B0ED4C(319, &qword_28098A440, &qword_28098A420);
  if (v0 <= 0x3F)
  {
    sub_274B0ED4C(319, qword_28098A448, &qword_28098A428);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}