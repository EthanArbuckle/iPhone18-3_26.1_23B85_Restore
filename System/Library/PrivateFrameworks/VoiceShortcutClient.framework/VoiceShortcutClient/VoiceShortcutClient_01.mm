__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B1E02754(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B1E02794(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for XPCAppProtectionEventStream.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for XPCAppProtectionEventStream.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B1E02958(uint64_t a1, int a2)
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

uint64_t sub_1B1E02978(uint64_t result, int a2, int a3)
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

uint64_t sub_1B1E029DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E02A2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1E02A80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B1E02A98(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1B1E02AC8()
{
  OUTLINED_FUNCTION_21();
  if (v0)
  {
    OUTLINED_FUNCTION_24_1();
  }

  else
  {
    sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12();
    *(v1 + 24) = &unk_1F28F43A8;
    v2 = sub_1B1E03EAC();
    OUTLINED_FUNCTION_11_0(v2);
    sub_1B1F1A760();
    sub_1B1F1AFA0();

    OUTLINED_FUNCTION_0_2();
    sub_1B1E03F00();
    v3 = OUTLINED_FUNCTION_16();
    MEMORY[0x1B273D1A0](v3);

    OUTLINED_FUNCTION_6_2();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CC8, &unk_1B1F29EC0);
    OUTLINED_FUNCTION_8_0(v4);

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_9_0();
    v5 = *MEMORY[0x1E69E6AF0];
    OUTLINED_FUNCTION_1_0();
    v7 = *(v6 + 104);
    v8 = OUTLINED_FUNCTION_10_0();
    v9(v8);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_20();
}

void sub_1B1E02C40()
{
  OUTLINED_FUNCTION_21();
  if (v0)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12();
    *(v1 + 24) = &unk_1F28F4660;
    v2 = sub_1B1E03E04();
    OUTLINED_FUNCTION_11_0(v2);
    sub_1B1F1A760();
    sub_1B1F1AFA0();

    OUTLINED_FUNCTION_0_2();
    sub_1B1E03E58();
    v3 = OUTLINED_FUNCTION_16();
    MEMORY[0x1B273D1A0](v3);

    OUTLINED_FUNCTION_6_2();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CC8, &unk_1B1F29EC0);
    OUTLINED_FUNCTION_8_0(v4);

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_9_0();
    v5 = *MEMORY[0x1E69E6AF0];
    OUTLINED_FUNCTION_1_0();
    v7 = *(v6 + 104);
    v8 = OUTLINED_FUNCTION_10_0();
    v9(v8);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_20();
}

void sub_1B1E02D94()
{
  OUTLINED_FUNCTION_21();
  if (v0)
  {
    OUTLINED_FUNCTION_24_1();
  }

  else
  {
    sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12();
    *(v1 + 24) = &unk_1F28F4660;
    v2 = sub_1B1E03E04();
    OUTLINED_FUNCTION_11_0(v2);
    sub_1B1F1A760();
    sub_1B1F1AFA0();

    OUTLINED_FUNCTION_0_2();
    sub_1B1E03E58();
    v3 = OUTLINED_FUNCTION_16();
    MEMORY[0x1B273D1A0](v3);

    OUTLINED_FUNCTION_6_2();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CC8, &unk_1B1F29EC0);
    OUTLINED_FUNCTION_8_0(v4);

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_9_0();
    v5 = *MEMORY[0x1E69E6AF0];
    OUTLINED_FUNCTION_1_0();
    v7 = *(v6 + 104);
    v8 = OUTLINED_FUNCTION_10_0();
    v9(v8);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_1B1E02EF0(uint64_t a1)
{
  if (a1)
  {
    return swift_unknownObjectRetain();
  }

  sub_1B1F1AFE0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12();
  *(v2 + 24) = &unk_1F28F4900;
  v3 = sub_1B1E03D5C();
  OUTLINED_FUNCTION_15_0(v3);
  sub_1B1F1AFA0();

  OUTLINED_FUNCTION_14();
  v4 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v4);

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_3();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_2();
      break;
    case 2:
      OUTLINED_FUNCTION_18_1();
      break;
    case 3:
      OUTLINED_FUNCTION_7();
      break;
    default:
      break;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CC8, &unk_1B1F29EC0);
  OUTLINED_FUNCTION_23(v6);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22();
  v7 = *MEMORY[0x1E69E6AF0];
  OUTLINED_FUNCTION_1_0();
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_10_0();
  v11(v10);
  return swift_willThrow();
}

char *sub_1B1E0306C(char *a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B1F1A760();
  }

  else
  {
    sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12();
    *(v3 + 24) = &unk_1F28F4900;
    v4 = sub_1B1E03D5C();
    OUTLINED_FUNCTION_15_0(v4);
    sub_1B1F1AFA0();

    OUTLINED_FUNCTION_14();
    v5 = sub_1B1F1B300();
    MEMORY[0x1B273D1A0](v5);

    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_3();
    switch(v6)
    {
      case 1:
        OUTLINED_FUNCTION_2();
        break;
      case 2:
        OUTLINED_FUNCTION_18_1();
        break;
      case 3:
        OUTLINED_FUNCTION_7();
        break;
      default:
        break;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CC8, &unk_1B1F29EC0);
    OUTLINED_FUNCTION_23(v7);

    a1 = &v14;
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_22();
    v8 = *MEMORY[0x1E69E6AF0];
    OUTLINED_FUNCTION_1_0();
    v10 = *(v9 + 104);
    v11 = OUTLINED_FUNCTION_10_0();
    v12(v11);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1B1E03200(uint64_t a1, id *a2)
{
  result = sub_1B1F1A260();
  *a2 = 0;
  return result;
}

uint64_t sub_1B1E03290(uint64_t a1, id *a2)
{
  result = sub_1B1F1A870();
  *a2 = 0;
  return result;
}

uint64_t sub_1B1E03308(uint64_t a1, id *a2)
{
  v3 = sub_1B1F1A280();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B1E033A8(uint64_t a1, id *a2)
{
  v3 = sub_1B1F1A880();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B1E03428()
{
  v0 = sub_1B1F1A290();
  v2 = v1;
  v3 = sub_1B1F1A250();
  sub_1B1E03C48(v0, v2);
  return v3;
}

uint64_t sub_1B1E03478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1B1F1A290();
  v5 = v4;
  v6 = a2();
  sub_1B1E03C48(v3, v5);
  return v6;
}

uint64_t sub_1B1E034C8()
{
  v0 = sub_1B1F1A890();
  v1 = MEMORY[0x1B273D1D0](v0);

  return v1;
}

uint64_t sub_1B1E03514()
{
  v0 = sub_1B1F1A290();
  v2 = v1;
  sub_1B1F1B7C0();
  sub_1B1F1A2A0();
  v3 = sub_1B1F1B7F0();
  sub_1B1E03C48(v0, v2);
  return v3;
}

uint64_t sub_1B1E0358C()
{
  sub_1B1F1A890();
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v0 = sub_1B1F1B7F0();

  return v0;
}

uint64_t sub_1B1E03640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E03428();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E03668@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B1F1A250();
  result = sub_1B1E03C48(v3, v4);
  *a2 = v5;
  return result;
}

uint64_t sub_1B1E036B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E4EDB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1E0372C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B1E00E88();
}

uint64_t sub_1B1E03750()
{
  v2 = *v0;
  sub_1B1DE7004(&qword_1ED84EFF0, type metadata accessor for WFLogCategoryName);
  sub_1B1DE7004(&qword_1EB783DA8, type metadata accessor for WFLogCategoryName);
  sub_1B1E041C4();
  return sub_1B1F1B150();
}

uint64_t sub_1B1E03818()
{
  sub_1B1DE7004(&qword_1EB783C88, type metadata accessor for ProgressUserInfoKey);
  sub_1B1DE7004(&qword_1EB783C90, type metadata accessor for ProgressUserInfoKey);

  return sub_1B1F1B150();
}

uint64_t sub_1B1E038D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B1F1A860();

  *a2 = v5;
  return result;
}

uint64_t sub_1B1E0391C()
{
  sub_1B1DE7004(&qword_1EB783230, type metadata accessor for NSKeyValueChangeKey);
  sub_1B1DE7004(&qword_1EB783DB8, type metadata accessor for NSKeyValueChangeKey);

  return sub_1B1F1B150();
}

uint64_t sub_1B1E039D8()
{
  sub_1B1DE7004(&qword_1EB783C98, type metadata accessor for LSPersistentIdentifier);
  sub_1B1DE7004(&qword_1EB783CA0, type metadata accessor for LSPersistentIdentifier);
  sub_1B1E03CB4();

  return sub_1B1F1B150();
}

uint64_t sub_1B1E03C48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B1E03CA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B1E03C48(a1, a2);
  }

  return a1;
}

unint64_t sub_1B1E03CB4()
{
  result = qword_1EB783CA8;
  if (!qword_1EB783CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783CA8);
  }

  return result;
}

unint64_t sub_1B1E03D08()
{
  result = qword_1EB783CB0;
  if (!qword_1EB783CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783CB0);
  }

  return result;
}

unint64_t sub_1B1E03D5C()
{
  result = qword_1EB783CB8;
  if (!qword_1EB783CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783CB8);
  }

  return result;
}

unint64_t sub_1B1E03DB0()
{
  result = qword_1EB783CC0;
  if (!qword_1EB783CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783CC0);
  }

  return result;
}

unint64_t sub_1B1E03E04()
{
  result = qword_1EB783CE0;
  if (!qword_1EB783CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783CE0);
  }

  return result;
}

unint64_t sub_1B1E03E58()
{
  result = qword_1EB783CE8;
  if (!qword_1EB783CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783CE8);
  }

  return result;
}

unint64_t sub_1B1E03EAC()
{
  result = qword_1EB783CF0;
  if (!qword_1EB783CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783CF0);
  }

  return result;
}

unint64_t sub_1B1E03F00()
{
  result = qword_1EB784100;
  if (!qword_1EB784100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784100);
  }

  return result;
}

uint64_t sub_1B1E03F54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1E03F90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B1E04014(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E04034(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1B1E041C4()
{
  result = qword_1EB783DB0;
  if (!qword_1EB783DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784410, &qword_1B1F2BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783DB0);
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

uint64_t sub_1B1E04270()
{
  sub_1B1F1A890();
  v0 = sub_1B1F1A860();

  return v0;
}

void OUTLINED_FUNCTION_5_3()
{

  JUMPOUT(0x1B273D1A0);
}

void OUTLINED_FUNCTION_8_0(uint64_t a1)
{
  v2 = *(a1 + 48);

  JUMPOUT(0x1B273D1A0);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_1B1F1AFD0();
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t result)
{
  *(v2 + 32) = result;
  *v2 = v1 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{
  *(v1 + 32) = a1;
  *v1 = v2;

  return sub_1B1F1A760();
}

void OUTLINED_FUNCTION_23(uint64_t a1)
{
  v2 = *(a1 + 48);

  JUMPOUT(0x1B273D1A0);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_1B1F1A760();
}

uint64_t VoiceShortcutClientRequest.DaemonConfiguration.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B1F1B160();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B1E04484@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return VoiceShortcutClientRequest.DaemonConfiguration.init(rawValue:)(a1);
}

uint64_t VCVoiceShortcutClient.listModules()()
{
  OUTLINED_FUNCTION_1();
  v1[15] = v0;
  v2 = type metadata accessor for VoiceShortcutClientRequest();
  v1[16] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v4 = sub_1B1F1A640();
  v1[18] = v4;
  v5 = *(v4 - 8);
  v1[19] = v5;
  v6 = *(v5 + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E04654, 0, 0);
}

uint64_t sub_1B1E04654()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 104) = &type metadata for ShortcutsFeatureFlags;
  v1 = sub_1B1DFC998();
  *(v0 + 80) = 11;
  *(v0 + 112) = v1;
  v2 = sub_1B1F1A380();
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  if (v2)
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    *(v0 + 73) = 1;
    swift_storeEnumTagMultiPayload();
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_1B1E04744;
    v7 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);

    return sub_1B1E1978C(v7, (v0 + 73), v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E04744()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  v4 = *(v2 + 168);
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  sub_1B1E04AB4(*(v3 + 136));
  if (v0)
  {
    v7 = sub_1B1E04A4C;
  }

  else
  {
    v7 = sub_1B1E04858;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1E04858()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E20, &qword_1B1F2A218);
  sub_1B1E04B10();
  sub_1B1F1A630();
  if (v1)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
LABEL_5:
    v12 = *(v0 + 160);
    v13 = *(v0 + 136);

    OUTLINED_FUNCTION_2_0();

    return v14();
  }

  v3 = *(v0 + 16);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  if (*(v0 + 72))
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v18 = *(v0 + 24);
    v19 = *(v0 + 40);
    sub_1B1E04B74();
    v9 = swift_allocError();
    *v10 = v3;
    *(v10 + 8) = v18;
    *(v10 + 24) = v19;
    *(v10 + 40) = v8;
    *(v10 + 48) = v7;
    sub_1B1E04BC8();
    swift_allocError();
    *v11 = v9;
    *(v11 + 8) = 1;
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
    goto LABEL_5;
  }

  v16 = *(v0 + 136);
  (*(v5 + 8))(*(v0 + 160), *(v0 + 144));

  v17 = *(v0 + 8);

  return v17(v3);
}

uint64_t sub_1B1E04A4C()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];

  OUTLINED_FUNCTION_2_0();

  return v4();
}

uint64_t sub_1B1E04AB4(uint64_t a1)
{
  v2 = type metadata accessor for VoiceShortcutClientRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B1E04B10()
{
  result = qword_1EB783E28;
  if (!qword_1EB783E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB783E20, &qword_1B1F2A218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783E28);
  }

  return result;
}

unint64_t sub_1B1E04B74()
{
  result = qword_1EB783E30;
  if (!qword_1EB783E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783E30);
  }

  return result;
}

unint64_t sub_1B1E04BC8()
{
  result = qword_1EB783E38;
  if (!qword_1EB783E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783E38);
  }

  return result;
}

unint64_t sub_1B1E04C20()
{
  result = qword_1EB783E40;
  if (!qword_1EB783E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783E40);
  }

  return result;
}

_BYTE *_s19DaemonConfigurationOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B1E04DA4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B1E04E4C;

  return VCVoiceShortcutClient.listModules()();
}

uint64_t sub_1B1E04E4C()
{
  v2 = v0;
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = v4[3];
      v11 = sub_1B1F1A1B0();

      v10[2](v10, 0, v11);
      v12 = v10;
LABEL_6:
      _Block_release(v12);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v13 = v4[3];
      v11 = sub_1B1F1A9A0();

      v13[2](v13, v11, 0);
      v12 = v13;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_2_0();

  return v14();
}

uint64_t sub_1B1E05014()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B1E05D18;

  return sub_1B1E04DA4(v2, v3);
}

uint64_t sub_1B1E050C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1B1F1AA80();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1B1F2A358;
  v10[5] = v9;
  sub_1B1E05644(0, 0, v7, &unk_1B1F2A368, v10);
}

uint64_t sub_1B1E051D0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B1E05D18;

  return v7();
}

uint64_t sub_1B1E052B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B1E05D18;

  return sub_1B1E051D0(v2, v3, v5);
}

uint64_t sub_1B1E05378(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B1E05460;

  return v8();
}

uint64_t sub_1B1E05460()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_2_0();

  return v5();
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1E05580(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_5_2(v7);
  *v8 = v9;
  v8[1] = sub_1B1E05460;

  return sub_1B1E05378(a1, v3, v4, v6);
}

uint64_t sub_1B1E05644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1B1E058E0(a3, v25 - v11);
  v13 = sub_1B1F1AA80();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1B1E05950(v12);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1B1F1AA20();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1F1A8E0() + 32;
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

      sub_1B1E05950(a3);

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

  sub_1B1E05950(a3);
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

uint64_t sub_1B1E058E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E05950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1E059B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B1E05AB0;

  return v7(a1);
}

uint64_t sub_1B1E05AB0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_2_0();

  return v5();
}

uint64_t sub_1B1E05B94()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_0(v4);

  return v7(v6);
}

uint64_t sub_1B1E05C2C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_0(v4);

  return v7(v6);
}

unint64_t sub_1B1E05CC4()
{
  result = qword_1EB783E50;
  if (!qword_1EB783E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783E50);
  }

  return result;
}

unint64_t RunnerProcess.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B1E05D4C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = RunnerProcess.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1B1E05DC8(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B1F1A860();
  v5 = [a1 valueForEntitlement_];

  if (v5)
  {
    sub_1B1F1AED0();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {

    sub_1B1E07884(v10);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ([a1 isInvalid])
  {

LABEL_8:

    goto LABEL_11;
  }

  v6 = sub_1B1F1B160();

  if (!v6)
  {
    v7 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v7 = 1;
LABEL_12:
  *a2 = v7;
}

void RunnerConnection.Policy.Client.init(client:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1B1E05DC8([a1 remoteToken], &v4);

  *a2 = v4;
}

uint64_t RunnerConnection.Policy.Client.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B1F1B160();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B1E05FE4@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return RunnerConnection.Policy.Client.init(rawValue:)(a1);
}

void sub_1B1E05FF0(uint64_t a1@<X8>)
{
  strcpy(a1, "ShortcutsApp");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1B1E06014()
{
  result = sub_1B1E06034();
  qword_1EB783E60 = result;
  return result;
}

uint64_t sub_1B1E06034()
{
  sub_1B1DEA98C(0, &qword_1EB783FB8, 0x1E698F470);
  v0 = sub_1B1E0615C();
  v1 = WFOutOfProcessWorkflowControllerVendorBSProtocol();
  [v0 setServer_];

  v2 = WFOutOfProcessWorkflowControllerHostBSProtocol();
  [v0 setClient_];

  [v0 setClientMessagingExpectation_];
  [v0 copy];
  sub_1B1F1AED0();

  swift_unknownObjectRelease();
  sub_1B1DEA98C(0, &qword_1EB783FC0, 0x1E698F4E8);
  swift_dynamicCast();
  return v4;
}

id sub_1B1E0615C()
{
  v0 = sub_1B1F1A860();

  v1 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier_];

  return v1;
}

uint64_t *sub_1B1E061C0()
{
  if (qword_1EB783B00 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  return &qword_1EB783E60;
}

id static RunnerConnection.bsServiceInterface.getter()
{
  if (qword_1EB783B00 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_3_1();
  v0 = qword_1EB783E60;

  return v0;
}

void static RunnerConnection.bsServiceInterface.setter(uint64_t a1)
{
  if (qword_1EB783B00 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_6_1();
  v2 = qword_1EB783E60;
  qword_1EB783E60 = a1;
}

uint64_t (*static RunnerConnection.bsServiceInterface.modify())()
{
  if (qword_1EB783B00 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_5_4();
  return j_j__swift_endAccess;
}

id sub_1B1E06340@<X0>(void *a1@<X8>)
{
  sub_1B1E061C0();
  swift_beginAccess();
  v2 = qword_1EB783E60;
  *a1 = qword_1EB783E60;

  return v2;
}

void sub_1B1E063A0(id *a1)
{
  v1 = *a1;
  sub_1B1E061C0();
  swift_beginAccess();
  v2 = qword_1EB783E60;
  qword_1EB783E60 = v1;
}

uint64_t sub_1B1E0645C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFRunnerConnection_onInterruption);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B1E0795C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B1DFB8E8(v4);
}

uint64_t sub_1B1E064FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1E07920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFRunnerConnection_onInterruption);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B1DFB8E8(v3);
  return sub_1B1DEBA94(v8);
}

id sub_1B1E0663C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a3();
  if (v5)
  {
    v9[4] = v5;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1B1DFB864;
    v9[3] = a4;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B1E066F0(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_3_1();
  v4 = *v2;
  v3 = v2[1];
  sub_1B1DFB8E8(v4);
  return v4;
}

uint64_t sub_1B1E06740@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFRunnerConnection_onInvalidation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B1E077D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B1DFB8E8(v4);
}

uint64_t sub_1B1E067E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1E077C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFRunnerConnection_onInvalidation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B1DFB8E8(v3);
  return sub_1B1DEBA94(v8);
}

id RunnerConnection.init(runDescriptor:host:onInterruption:onInvalidation:languageIdentifier:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v13 = &v9[OBJC_IVAR___WFRunnerConnection_connection];
  *v13 = 0;
  v13[8] = -1;
  v14 = &v9[OBJC_IVAR___WFRunnerConnection_onInterruption];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v9[OBJC_IVAR___WFRunnerConnection_onInvalidation];
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectWeakAssign();
  v16 = *v13;
  *v13 = 0;
  v17 = v13[8];
  v13[8] = -1;
  sub_1B1DF96C8(v16, v17);
  OUTLINED_FUNCTION_6_1();
  v19 = *v14;
  v18 = v14[1];
  *v14 = a3;
  v14[1] = a4;

  sub_1B1DEBA94(v19);
  OUTLINED_FUNCTION_6_1();
  v20 = *v15;
  v21 = v15[1];
  *v15 = a5;
  v15[1] = a6;

  sub_1B1DEBA94(v20);
  v22 = &v9[OBJC_IVAR___WFRunnerConnection_languageIdentifier];
  *v22 = a7;
  *(v22 + 1) = a8;
  if (a1)
  {
    a1 = a1;
    sub_1B1DFC3A0(a1, &v30);
    *&v9[OBJC_IVAR___WFRunnerConnection_policy] = v30;
  }

  else
  {
    *&v9[OBJC_IVAR___WFRunnerConnection_policy] = 0;
  }

  v31.receiver = v9;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, sel_init);

  swift_unknownObjectRelease();

  return v23;
}

id RunnerConnection.init(policy:host:onInterruption:onInvalidation:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v26 = *a1;
  v27 = ObjectType;
  swift_unknownObjectWeakInit();
  v13 = &v7[OBJC_IVAR___WFRunnerConnection_connection];
  *v13 = 0;
  v13[8] = -1;
  v14 = &v7[OBJC_IVAR___WFRunnerConnection_onInterruption];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v7[OBJC_IVAR___WFRunnerConnection_onInvalidation];
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectWeakAssign();
  v16 = *v13;
  *v13 = 0;
  v17 = v13[8];
  v13[8] = -1;
  sub_1B1DF96C8(v16, v17);
  OUTLINED_FUNCTION_6_1();
  v19 = *v14;
  v18 = v14[1];
  *v14 = a3;
  v14[1] = a4;

  sub_1B1DEBA94(v19);
  OUTLINED_FUNCTION_6_1();
  v20 = *v15;
  v21 = v15[1];
  *v15 = a5;
  v15[1] = a6;

  sub_1B1DEBA94(v20);
  *&v7[OBJC_IVAR___WFRunnerConnection_policy] = v26;
  v22 = &v7[OBJC_IVAR___WFRunnerConnection_languageIdentifier];
  *v22 = 0;
  *(v22 + 1) = 0;
  v28.receiver = v7;
  v28.super_class = v27;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  swift_unknownObjectRelease();

  return v23;
}

id sub_1B1E06E7C()
{
  v0 = sub_1B1F1A860();

  v1 = sub_1B1F1A860();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

id sub_1B1E06F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1B1F1A860();

  v8 = sub_1B1F1A860();

  if (a6)
  {
    v9 = sub_1B1F1A860();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() endpointForMachName:v7 service:v8 instance:v9];

  return v10;
}

void sub_1B1E06FE4(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  if (qword_1EB783B00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [a1 setInterface_];
  v14 = sub_1B1E0783C;
  v15 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1B1E0723C;
  v13 = &block_descriptor_87;
  v5 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler_];
  _Block_release(v5);
  v14 = sub_1B1E07860;
  v15 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1B1E0723C;
  v13 = &block_descriptor_90;
  v6 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = swift_unknownObjectWeakLoadStrong(), v8, v9))
  {
    [a1 setInterfaceTarget_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1E0723C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1B1E072A4(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_2_1(Strong);
    v6 = *a3;
    if (*a3)
    {
      v7 = *(a3 + 8);
      v8 = OUTLINED_FUNCTION_7_0();
      sub_1B1DFB8E8(v8);

      v6();
      v9 = OUTLINED_FUNCTION_7_0();
      sub_1B1DEBA94(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1B1E07324(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id RunnerConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RunnerConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RunnerProcess.debugDescription.getter(uint64_t a1)
{
  result = 0xD000000000000016;
  if (!a1)
  {
    return 0xD000000000000023;
  }

  if (a1 != 1)
  {
    result = sub_1B1F1B700();
    __break(1u);
  }

  return result;
}

unint64_t sub_1B1E0749C()
{
  result = qword_1EB783E98;
  if (!qword_1EB783E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783E98);
  }

  return result;
}

unint64_t sub_1B1E074F4()
{
  result = qword_1EB783EA0;
  if (!qword_1EB783EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783EA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunnerConnection.Policy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RunnerConnection.Policy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

_BYTE *sub_1B1E0764C(_BYTE *result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B1E07718(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1B1E07758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_OWORD *sub_1B1E077D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B1E07814()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B1E07884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783FC8, &unk_1B1F2A690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_beginAccess();
}

uint64_t sub_1B1E0798C(void *a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B1E07B4C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1B1E07B54;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1E07B80;
  aBlock[3] = &block_descriptor_0;
  v4 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v4);
  _Block_release(v4);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_1B1E07AEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1B1F1A920();
  v6 = v5;
  sub_1B1E2AB34();
  v7 = *(*a3 + 16);
  sub_1B1E2ABF0(v7);
  v8 = *a3;
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  return 1;
}

uint64_t sub_1B1E07B54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1B1E07B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1B1E07BD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1F1A8E0();
  string = xpc_dictionary_get_string(a3, (v4 + 32));

  if (string)
  {
    return sub_1B1F1A920();
  }

  else
  {
    return 0;
  }
}

uint64_t XPCFSEventStream.Event.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1B1DF6824(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7840C0, &qword_1B1F29870);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B1E07DFC();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      v7[0] = 0;
      sub_1B1F1A700();

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      *a2 = v7[0];
      return result;
    }

    swift_unknownObjectRelease();
    sub_1B1E07DFC();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1E07DFC()
{
  result = qword_1EB784090;
  if (!qword_1EB784090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784090);
  }

  return result;
}

uint64_t sub_1B1E07E50(char a1)
{
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](a1 & 1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E07EA0()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](v1);
  return sub_1B1F1B7F0();
}

unint64_t XPCFSEventStream.Event.description.getter()
{
  v1 = *v0;
  sub_1B1F1AFA0();

  if (v1)
  {
    v2 = sub_1B1F1A720();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1B273D1A0](v2, v4);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t sub_1B1E07FC8(uint64_t a1)
{
  result = sub_1B1E07FF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1E07FF0()
{
  result = qword_1EB784098;
  if (!qword_1EB784098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784098);
  }

  return result;
}

unint64_t sub_1B1E08048()
{
  result = qword_1EB7840A0;
  if (!qword_1EB7840A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7840A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCFSEventStream(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B1E08168(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1B1E081BC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for XPCFSEventStream.Event.XPCEventDecodingError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for XPCFSEventStream.Event.XPCEventDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E08384()
{
  result = qword_1EB7840A8;
  if (!qword_1EB7840A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7840A8);
  }

  return result;
}

id sub_1B1E083D8()
{
  result = [objc_allocWithZone(type metadata accessor for RunnerPrewarmManager()) init];
  qword_1ED84EDB0 = result;
  return result;
}

id RunnerPrewarmManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void RunnerPrewarmManager.connection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WFRunnerPrewarmManager_connection;
  OUTLINED_FUNCTION_6_1();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B1E08548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B1F1A500();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR___WFRunnerPrewarmManager_connection;
  v16 = OUTLINED_FUNCTION_6_1();
  if (*(v2 + v15))
  {
    if (qword_1ED84F030 != -1)
    {
      v16 = OUTLINED_FUNCTION_1_1();
    }

    v17 = qword_1ED84F038;
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_2_2();
    *(v19 - 16) = sub_1B1E07904;
    *(v19 - 8) = v20;

    os_unfair_lock_lock(v17 + 4);
    sub_1B1E07944(v21);
    os_unfair_lock_unlock(v17 + 4);

    v22 = sub_1B1F1A4E0();
    v23 = sub_1B1F1AD30();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B1DE3000, v22, v23, "Warm runner already waiting", v24, 2u);
      OUTLINED_FUNCTION_5();
    }

    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v42 = a1;
    v43 = v12;
    v44 = v4;
    if (qword_1ED84F030 != -1)
    {
      v16 = OUTLINED_FUNCTION_1_1();
    }

    v25 = qword_1ED84F038;
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1EEE9AC00](v26);
    OUTLINED_FUNCTION_2_2();
    *(v27 - 16) = sub_1B1DE7A98;
    *(v27 - 8) = v28;

    os_unfair_lock_lock(v25 + 4);
    sub_1B1DE7A64(v29);
    os_unfair_lock_unlock(v25 + 4);

    v30 = sub_1B1F1A4E0();
    v31 = sub_1B1F1AD30();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B1DE3000, v30, v31, "Prewarming runner", v32, 2u);
      OUTLINED_FUNCTION_5();
    }

    v41 = *(v5 + 8);
    v41(v14, v44);
    aBlock[0] = 0;
    OUTLINED_FUNCTION_3_2();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_3_2();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for RunnerConnection());
    v35 = v42;
    swift_unknownObjectRetain();
    v36 = RunnerConnection.init(policy:host:onInterruption:onInvalidation:)(aBlock, v35, sub_1B1E08E3C, v33, sub_1B1E08DB8, v34);
    sub_1B1DFCCD4(0);
    v38 = v37;
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1E08C10;
    aBlock[3] = &block_descriptor_1;
    v39 = _Block_copy(aBlock);
    [v38 prewarmRunnerWithCompletion_];
    _Block_release(v39);
    swift_unknownObjectRelease();
    v40 = *(v2 + v15);
    *(v2 + v15) = v36;
  }
}

void sub_1B1E08B98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___WFRunnerPrewarmManager_connection;
    OUTLINED_FUNCTION_6_1();
    v3 = *&v1[v2];
    *&v1[v2] = 0;
  }
}

void sub_1B1E08C10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id RunnerPrewarmManager.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___WFRunnerPrewarmManager_connection] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id RunnerPrewarmManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1E08DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7840B8, &unk_1B1F2A8B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCRapportEventStream.Event.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return v1;
}

uint64_t XPCRapportEventStream.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B1DF6824(a1, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7840C0, &qword_1B1F29870);
  if (swift_dynamicCast())
  {
    sub_1B1E042CC(v13, v14, &v15);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      return swift_unknownObjectRelease();
    }

    else
    {
      v6 = v15;
      v7 = v16;
      sub_1B1E07BD8(0x746E657645435058, 0xEC000000656D614ELL, v15);
      sub_1B1E02AC8();
      v12 = v8;
      v17 = v9;

      v15 = v6;
      v16 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7840D0, &qword_1B1F2A8C8);
      sub_1B1E0951C();
      v10 = sub_1B1F1B590();
      __swift_destroy_boxed_opaque_existential_1(a1);

      swift_unknownObjectRelease();

      v11 = v17;
      *a2 = v12;
      *(a2 + 8) = v11;
      *(a2 + 16) = v10 & 1;
      *(a2 + 24) = v13;
    }
  }

  else
  {
    sub_1B1E09290();
    swift_allocError();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_1B1E090E0()
{
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](0);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E09124()
{
  v0 = sub_1B1F1B160();

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

uint64_t sub_1B1E09178(char a1)
{
  if (a1)
  {
    return 0x716552796C706572;
  }

  else
  {
    return 0x746E657645435058;
  }
}

uint64_t sub_1B1E091C8()
{
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](0);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E0922C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1E09124();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E0925C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E09178(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B1E09290()
{
  result = qword_1EB7840C8;
  if (!qword_1EB7840C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7840C8);
  }

  return result;
}

uint64_t sub_1B1E092E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E09124();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E09318(uint64_t a1)
{
  v2 = sub_1B1E03EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E09354(uint64_t a1)
{
  v2 = sub_1B1E03EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t XPCRapportEventStream.Event.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B1F1AFA0();

  MEMORY[0x1B273D1A0](v1, v2);
  MEMORY[0x1B273D1A0](0xD000000000000012, 0x80000001B1F37E20);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B273D1A0](v4, v5);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000016;
}

Swift::Void __swiftcall XPCRapportEventStream.Event.reply()()
{
  if (*(v0 + 16) == 1 && xpc_dictionary_create_reply(*(v0 + 24)))
  {
    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1B1E0951C()
{
  result = qword_1EB7840D8;
  if (!qword_1EB7840D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7840D0, &qword_1B1F2A8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7840D8);
  }

  return result;
}

unint64_t sub_1B1E09580(uint64_t a1)
{
  result = sub_1B1E095A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1E095A8()
{
  result = qword_1EB7840E0;
  if (!qword_1EB7840E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7840E0);
  }

  return result;
}

unint64_t sub_1B1E09600()
{
  result = qword_1EB7840E8;
  if (!qword_1EB7840E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7840E8);
  }

  return result;
}

_BYTE *sub_1B1E0966C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E09744(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E097F4()
{
  result = qword_1EB7840F0;
  if (!qword_1EB7840F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7840F0);
  }

  return result;
}

unint64_t sub_1B1E0984C()
{
  result = qword_1EB7840F8;
  if (!qword_1EB7840F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7840F8);
  }

  return result;
}

unint64_t sub_1B1E098A8()
{
  result = qword_1EB784108;
  if (!qword_1EB784108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784108);
  }

  return result;
}

uint64_t XPCDistributedNotificationEventStream.Event.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return v1;
}

uint64_t XPCDistributedNotificationEventStream.Event.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1B1DF6824(a1, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7840C0, &qword_1B1F29870);
  if (swift_dynamicCast())
  {
    sub_1B1E042CC(v12, v13, &v14);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      return swift_unknownObjectRelease();
    }

    else
    {
      v6 = v14;
      sub_1B1E07BD8(1701667150, 0xE400000000000000, v14);
      sub_1B1E02D94();
      v11 = v7;
      v15 = v8;

      v9 = xpc_dictionary_get_value(v6, "UserInfo");
      sub_1B1E02C40();
      swift_unknownObjectRelease();
      result = _CFXPCCreateCFObjectFromXPCObject();
      if (result)
      {
        swift_unknownObjectRetain_n();
        __swift_destroy_boxed_opaque_existential_1(a1);
        swift_unknownObjectRelease_n();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v14 = 0;
          sub_1B1F1A700();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          result = swift_unknownObjectRelease();
          v10 = v14;
        }

        else
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          v10 = 0;
        }

        *a2 = v15;
        a2[1] = v11;
        a2[2] = v10;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1B1E09D7C();
    swift_allocError();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_1B1E09C70()
{
  v0 = sub_1B1F1B160();

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

uint64_t sub_1B1E09CC4(char a1)
{
  if (a1)
  {
    return 0x6F666E4972657355;
  }

  else
  {
    return 1701667150;
  }
}

uint64_t sub_1B1E09D18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1E09C70();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E09D48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E09CC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B1E09D7C()
{
  result = qword_1EB784110;
  if (!qword_1EB784110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784110);
  }

  return result;
}

uint64_t sub_1B1E09DD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E09C70();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E09DF8(uint64_t a1)
{
  v2 = sub_1B1E03E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E09E34(uint64_t a1)
{
  v2 = sub_1B1E03E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCDistributedNotificationEventStream.Event.notification.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B1F1A760();
  sub_1B1F1A860();
  return sub_1B1F1A070();
}

unint64_t XPCDistributedNotificationEventStream.Event.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B1F1AFA0();

  MEMORY[0x1B273D1A0](v1, v2);
  MEMORY[0x1B273D1A0](0x6E4972657375202CLL, 0xEC000000203A6F66);
  if (v3)
  {
    v4 = sub_1B1F1A720();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1B273D1A0](v4, v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

unint64_t sub_1B1E0A018(uint64_t a1)
{
  result = sub_1B1E0A040();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1E0A040()
{
  result = qword_1ED84EB48;
  if (!qword_1ED84EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB48);
  }

  return result;
}

unint64_t sub_1B1E0A098()
{
  result = qword_1ED84EB40;
  if (!qword_1ED84EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB40);
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

uint64_t sub_1B1E0A10C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B1E0A14C(uint64_t result, int a2, int a3)
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

_BYTE *sub_1B1E0A198(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E0A248()
{
  result = qword_1EB784118;
  if (!qword_1EB784118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784118);
  }

  return result;
}

_BYTE *sub_1B1E0A29C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E0A378()
{
  result = qword_1EB784120;
  if (!qword_1EB784120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784120);
  }

  return result;
}

unint64_t sub_1B1E0A3D0()
{
  result = qword_1EB784128;
  if (!qword_1EB784128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784128);
  }

  return result;
}

uint64_t sub_1B1E0A42C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784140, &qword_1B1F2AF30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v30 - v7;
  v9 = sub_1B1F1A500();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_1B1E0BDB8(a1, &qword_1EB784140, &qword_1B1F2AF30);
    v14 = *v3;
    v15 = sub_1B1DE7CB8(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v31 = *v3;
      v19 = *(v31 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784148, &qword_1B1F2AF38);
      sub_1B1F1B0C0();
      v20 = v31;
      (*(v10 + 32))(v8, *(v31 + 56) + *(v10 + 72) * v17, v9);
      type metadata accessor for WFLogCategoryName(0);
      sub_1B1DE6FAC();
      sub_1B1F1B0D0();
      v21 = 0;
      *v3 = v20;
    }

    else
    {
      v21 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v21, 1, v9);
    return sub_1B1E0BDB8(v8, &qword_1EB784140, &qword_1B1F2AF30);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v22 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1B1DE8114(v13, a2, isUniquelyReferenced_nonNull_native, v24, v25, v26, v27, v28, v30, *v3, v32, v33, v34, v35);
    *v3 = v31;
  }

  return result;
}

uint64_t sub_1B1E0A690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784130, &qword_1B1F2AF18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_1B1F1A480();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    sub_1B1E0BDB8(a1, &qword_1EB784130, &qword_1B1F2AF18);
    v15 = *v3;
    v16 = sub_1B1DE7CB8(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v32 = *v3;
      v20 = *(v32 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784138, &unk_1B1F2AF20);
      sub_1B1F1B0C0();
      v21 = v32;
      (*(v11 + 32))(v9, *(v32 + 56) + *(v11 + 72) * v18, v10);
      type metadata accessor for WFLogCategoryName(0);
      sub_1B1DE6FAC();
      sub_1B1F1B0D0();
      v22 = 0;
      *v3 = v21;
    }

    else
    {
      v22 = 1;
    }

    __swift_storeEnumTagSinglePayload(v9, v22, 1, v10);
    return sub_1B1E0BDB8(v9, &qword_1EB784130, &qword_1B1F2AF18);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1B1E0D5B8(v14, a2, isUniquelyReferenced_nonNull_native, v25, v26, v27, v28, v29, v31, *v3, v33, v34, v35, v36);
    *v3 = v32;
  }

  return result;
}

uint64_t sub_1B1E0A928()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845C0, &unk_1B1F2C900);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED84EEF0 = result;
  return result;
}

uint64_t WFLogSignpost.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1F1A480();
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t WFLogSignpost.name.getter()
{
  v1 = (v0 + *(type metadata accessor for WFLogSignpost() + 20));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t WFLogSignpost.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for WFLogSignpost() + 24));
}

uint64_t WFLogSignpost.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B1F1A480();
  OUTLINED_FUNCTION_10(v12);
  (*(v13 + 32))(a6, a1);
  result = type metadata accessor for WFLogSignpost();
  v15 = a6 + *(result + 20);
  *v15 = a2;
  *(v15 + 8) = a3;
  *(v15 + 16) = a4;
  *(a6 + *(result + 24)) = a5;
  return result;
}

void static WFLogSignpost.begin(_:_:_:)()
{
  OUTLINED_FUNCTION_17_0();
  v45 = v3;
  v46 = v2;
  v48 = v4;
  v47 = v5;
  v44 = sub_1B1F1A440();
  v6 = OUTLINED_FUNCTION_0(v44);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x1EEE9AC00](v11);
  v43 = OUTLINED_FUNCTION_16_0();
  v12 = OUTLINED_FUNCTION_0(v43);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v20 = v19 - v18;
  if (qword_1ED84EEE8 != -1)
  {
    v17 = OUTLINED_FUNCTION_1_3();
  }

  v21 = qword_1ED84EEF0;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_2();
  *(v23 - 16) = sub_1B1E0BC04;
  *(v23 - 8) = v24;

  os_unfair_lock_lock(v21 + 4);
  OUTLINED_FUNCTION_14_0();
  sub_1B1DE7AB4();
  os_unfair_lock_unlock(v21 + 4);

  sub_1B1F1A470();
  sub_1B1F1A410();
  v25 = sub_1B1F1A470();
  sub_1B1F1AE30();
  v26 = sub_1B1F1A400();
  if ((sub_1B1F1AEA0() & 1) == 0)
  {

    (*(v8 + 16))(v1, v0, v44);
    v27 = sub_1B1F1A4C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1B1F1A4B0();
    (*(v8 + 8))(v0, v44);
    (*(v14 + 32))(v45, v20, v43);
    v30 = type metadata accessor for WFLogSignpost();
    OUTLINED_FUNCTION_5_5(v30);
    OUTLINED_FUNCTION_15_1();
    return;
  }

  if ((v47 & 1) == 0)
  {
    if (v48)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (HIDWORD(v48))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_12_0();
  if (!v31)
  {
    if (v48 >> 16 > 0x10)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_11:
    if ((v26 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v26))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v32 = *(v46 + 16);
      v33 = *(v46 + 24);
      v34 = *(v46 + 25);
      v36 = *(v46 + 40);
      v35 = *(v46 + 48);
      v37 = swift_slowAlloc();
      if (v35)
      {
        OUTLINED_FUNCTION_6_3();
        if (!v38)
        {
          goto LABEL_29;
        }

        swift_slowAlloc();
      }

      if (v36)
      {
        OUTLINED_FUNCTION_13_0();
        if (!v38)
        {
          goto LABEL_30;
        }

        v39 = swift_slowAlloc();
      }

      else
      {
        v39 = 0;
      }

      OUTLINED_FUNCTION_7_1(v39);
      for (; v26; --v26)
      {
        v41 = *(v37 - 1);
        v40 = *v37;

        v42 = OUTLINED_FUNCTION_11_1();
        v41(v42);

        v37 += 2;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
}

uint64_t static WFLogSignpost.signposter(for:)(uint64_t a1)
{
  if (qword_1ED84EEE8 != -1)
  {
    a1 = OUTLINED_FUNCTION_1_3();
  }

  v1 = qword_1ED84EEF0;
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_2();
  *(v3 - 16) = sub_1B1E0BE10;
  *(v3 - 8) = v4;

  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_14_0();
  sub_1B1DE7A80();
  os_unfair_lock_unlock(v1 + 4);
}

void static WFLogSignpost.begin(_:_:_:_:)()
{
  OUTLINED_FUNCTION_17_0();
  v48 = v2;
  v47 = v3;
  v50 = v4;
  v49 = v5;
  v46 = sub_1B1F1A440();
  v6 = OUTLINED_FUNCTION_0(v46);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_1();
  MEMORY[0x1EEE9AC00](v11);
  v45 = OUTLINED_FUNCTION_16_0();
  v12 = OUTLINED_FUNCTION_0(v45);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v20 = v19 - v18;
  if (qword_1ED84EEE8 != -1)
  {
    v17 = OUTLINED_FUNCTION_1_3();
  }

  v21 = qword_1ED84EEF0;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_2();
  *(v23 - 16) = sub_1B1E0BE10;
  *(v23 - 8) = v24;

  os_unfair_lock_lock(v21 + 4);
  OUTLINED_FUNCTION_14_0();
  sub_1B1DE7A80();
  os_unfair_lock_unlock(v21 + 4);

  sub_1B1F1A450();
  v25 = sub_1B1F1A470();
  sub_1B1F1AE30();
  v26 = sub_1B1F1A400();
  if ((sub_1B1F1AEA0() & 1) == 0)
  {

    (*(v8 + 16))(v1, v0, v46);
    v27 = sub_1B1F1A4C0();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1B1F1A4B0();
    (*(v8 + 8))(v0, v46);
    (*(v14 + 32))(v47, v20, v45);
    v30 = type metadata accessor for WFLogSignpost();
    OUTLINED_FUNCTION_5_5(v30);
    OUTLINED_FUNCTION_15_1();
    return;
  }

  v31 = v26;
  if ((v49 & 1) == 0)
  {
    if (v50)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (HIDWORD(v50))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_12_0();
  if (!v32)
  {
    if (v50 >> 16 > 0x10)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_11:
    if ((v31 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v31))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v33 = *(v48 + 16);
      v34 = *(v48 + 24);
      v35 = *(v48 + 25);
      v36 = *(v48 + 40);
      v37 = *(v48 + 48);
      v38 = swift_slowAlloc();
      if (v37)
      {
        OUTLINED_FUNCTION_6_3();
        if (!v39)
        {
          goto LABEL_27;
        }

        swift_slowAlloc();
      }

      if (v36)
      {
        if ((v36 - 0x400000000000000) >> 59 != 31)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        swift_slowAlloc();
      }

      *v38 = v34;
      v38[1] = v35;
      v40 = (v33 + 40);
      for (i = *(v33 + 16); i; --i)
      {
        v43 = *(v40 - 1);
        v42 = *v40;

        v44 = OUTLINED_FUNCTION_11_1();
        v43(v44);

        v40 += 2;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

Swift::Void __swiftcall WFLogSignpost.end()()
{
  OUTLINED_FUNCTION_17_0();
  v1 = sub_1B1F1A490();
  v2 = OUTLINED_FUNCTION_0(v1);
  v29 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_3();
  v8 = v7 - v6;
  v9 = sub_1B1F1A440();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  v17 = v16 - v15;
  v18 = type metadata accessor for WFLogSignpost();
  v19 = v0 + *(v18 + 20);
  v20 = *v19;
  v21 = *(v19 + 16);
  v22 = *(v0 + *(v18 + 24));

  v23 = sub_1B1F1A470();
  sub_1B1F1A4A0();
  v28 = sub_1B1F1AE20();
  if ((sub_1B1F1AEA0() & 1) == 0)
  {
LABEL_13:

    (*(v12 + 8))(v17, v9);
    OUTLINED_FUNCTION_15_1();
    return;
  }

  if ((v21 & 1) == 0)
  {
    if (v20)
    {
      v24 = v29;
LABEL_9:

      sub_1B1F1A4D0();

      if ((*(v24 + 88))(v8, v1) == *MEMORY[0x1E69E93E8])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 8))(v8, v1);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1B1F1A420();
      _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v23, v28, v27, v20, v25, v26, 2u);
      MEMORY[0x1B273F720](v26, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v20 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v20 & 0xFFFFF800) != 0xD800)
  {
    v24 = v29;
    if (v20 >> 16 <= 0x10)
    {
      v20 = &v30;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void static WFLogSignpost.event(_:_:_:)()
{
  OUTLINED_FUNCTION_17_0();
  v42 = v0;
  v39 = v1;
  v40 = v2;
  v41 = sub_1B1F1A440();
  v3 = OUTLINED_FUNCTION_0(v41);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_3();
  v10 = v9 - v8;
  v11 = sub_1B1F1A480();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v20 = v19 - v18;
  if (qword_1ED84EEE8 != -1)
  {
    v17 = OUTLINED_FUNCTION_1_3();
  }

  v21 = qword_1ED84EEF0;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_2();
  *(v23 - 16) = sub_1B1E0BE10;
  *(v23 - 8) = v24;

  os_unfair_lock_lock(v21 + 4);
  sub_1B1DE7A80();
  os_unfair_lock_unlock(v21 + 4);

  sub_1B1F1A430();
  v25 = sub_1B1F1A470();
  sub_1B1F1AE40();
  v26 = sub_1B1F1A400();
  if ((sub_1B1F1AEA0() & 1) == 0)
  {

    (*(v5 + 8))(v10, v41);
    (*(v14 + 8))(v20, v11);
    OUTLINED_FUNCTION_15_1();
    return;
  }

  if ((v39 & 1) == 0)
  {
    if (v40)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (HIDWORD(v40))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_12_0();
  if (!v27)
  {
    if (v40 >> 16 > 0x10)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_11:
    if ((v26 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v26))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v28 = *(v42 + 16);
      v29 = *(v42 + 24);
      v30 = *(v42 + 25);
      v32 = *(v42 + 40);
      v31 = *(v42 + 48);
      v33 = swift_slowAlloc();
      if (v31)
      {
        OUTLINED_FUNCTION_6_3();
        if (!v34)
        {
          goto LABEL_29;
        }

        swift_slowAlloc();
      }

      if (v32)
      {
        OUTLINED_FUNCTION_13_0();
        if (!v34)
        {
          goto LABEL_30;
        }

        v35 = swift_slowAlloc();
      }

      else
      {
        v35 = 0;
      }

      OUTLINED_FUNCTION_7_1(v35);
      for (; v26; --v26)
      {
        v37 = *(v33 - 1);
        v36 = *v33;

        v38 = OUTLINED_FUNCTION_11_1();
        v37(v38);

        v33 += 2;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
}

void sub_1B1E0B840(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784130, &qword_1B1F2AF18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1B1F1A500();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1B1F1A480();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED84EF00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = off_1ED84EF08[0];
  if (*(off_1ED84EF08[0] + 16) && (v17 = sub_1B1DE7CB8(a1), (v18 & 1) != 0))
  {
    (*(v12 + 16))(v15, *(v16 + 56) + *(v12 + 72) * v17, v11);
    (*(v12 + 32))(a2, v15, v11);
    swift_endAccess();
  }

  else
  {
    v25 = a2;
    v26 = v2;
    v19 = swift_endAccess();
    if (qword_1ED84F030 != -1)
    {
      v19 = swift_once();
    }

    v20 = qword_1ED84F038;
    v21 = MEMORY[0x1EEE9AC00](v19);
    *(&v25 - 2) = a1;
    MEMORY[0x1EEE9AC00](v21);
    *(&v25 - 2) = sub_1B1E07904;
    *(&v25 - 1) = v22;

    os_unfair_lock_lock(v20 + 4);
    v23 = v26;
    sub_1B1DE7A80();
    v26 = v23;
    os_unfair_lock_unlock(v20 + 4);
    if (v23)
    {
      __break(1u);
    }

    else
    {

      v24 = v25;
      sub_1B1F1A460();
      (*(v12 + 16))(v8, v24, v11);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
      swift_beginAccess();
      sub_1B1E0A690(v8, a1);
      swift_endAccess();
    }
  }
}

uint64_t type metadata accessor for WFLogSignpost()
{
  result = qword_1ED84EED0;
  if (!qword_1ED84EED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFLog(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B1E0BCF4()
{
  result = sub_1B1F1A480();
  if (v1 <= 0x3F)
  {
    result = sub_1B1F1A4C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1B1E0BD80(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B1E0BDB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t result)
{
  v4 = v2 + *(result + 20);
  v5 = *(v3 - 152);
  *v4 = *(v3 - 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = *(v3 - 124);
  *(v2 + *(result + 24)) = v1;
  return result;
}

uint64_t static WFDiskSanitizer.sanitizedDictionary(_:)(uint64_t a1)
{
  if (a1)
  {
    return sub_1B1E0C4B0(a1, v1);
  }

  return sub_1B1F1A730();
}

id sub_1B1E0BF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B1E0CB00(a1, v28);
  if (!v29)
  {
    result = sub_1B1E0CB70(v28, &qword_1EB783FC8, &unk_1B1F2A690);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_1B1E077D8(v28, v30);
  sub_1B1DF63A0(v30, v28);
  v4 = sub_1B1DEA98C(0, &qword_1EB784150, 0x1E696AEC0);
  if (swift_dynamicCast())
  {
    goto LABEL_3;
  }

  sub_1B1DF63A0(v30, v28);
  sub_1B1DEA98C(0, &qword_1EB784158, 0x1E696AFB0);
  if (!swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(v30, v31);
    v9 = sub_1B1F1B500();
    v10 = CFGetTypeID(v9);
    swift_unknownObjectRelease();
    if (v10 == CFUUIDGetTypeID())
    {
      sub_1B1DF63A0(v30, v28);
      type metadata accessor for CFUUID(0);
      swift_dynamicCast();
      v11 = v27[0];
      v12 = CFUUIDCreateString(0, v27[0]);
      if (v12)
      {
        type metadata accessor for CFString(0);
        *(a2 + 24) = v13;
      }

      else
      {

        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
      }
    }

    else
    {
      sub_1B1DF63A0(v30, v28);
      v4 = sub_1B1DEA98C(0, &qword_1EB783200, 0x1E695DEF0);
      if (swift_dynamicCast() || (sub_1B1DF63A0(v30, v28), v4 = sub_1B1DEA98C(0, &qword_1EB784160, 0x1E695DFF8), swift_dynamicCast()))
      {
LABEL_3:
        v5 = v27[0];
        *(a2 + 24) = v4;
        *a2 = v5;
        return __swift_destroy_boxed_opaque_existential_1(v30);
      }

      sub_1B1DF63A0(v30, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784168, &qword_1B1F2AF70);
      if (swift_dynamicCast())
      {
        sub_1B1E0C4B0(v27[0], v2);

        v14 = sub_1B1F1A6F0();

        *(a2 + 24) = sub_1B1DEA98C(0, &qword_1EB784188, 0x1E695DF20);
        *a2 = v14;
        return __swift_destroy_boxed_opaque_existential_1(v30);
      }

      sub_1B1DF63A0(v30, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784170, &qword_1B1F2AF78);
      if (!swift_dynamicCast())
      {
        sub_1B1DF63A0(v30, v28);
        sub_1B1DEA98C(0, &qword_1EB784178, 0x1E696AD98);
        if (swift_dynamicCast() || (sub_1B1DF63A0(v30, v28), sub_1B1DEA98C(0, &qword_1EB784180, 0x1E695DFB0), swift_dynamicCast()))
        {

          sub_1B1DF63A0(v30, a2);
        }

        else
        {
          *a2 = 0u;
          *(a2 + 16) = 0u;
        }

        return __swift_destroy_boxed_opaque_existential_1(v30);
      }

      v15 = *(v27[0] + 2);
      if (v15)
      {
        v16 = v27[0] + 32;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1B1DF63A0(v16, v28);
          sub_1B1DF63A0(v28, v27);
          sub_1B1E0BF2C(&v25, v27);
          sub_1B1E0CB70(v27, &qword_1EB783FC8, &unk_1B1F2A690);
          __swift_destroy_boxed_opaque_existential_1(v28);
          if (v26)
          {
            sub_1B1E077D8(&v25, v27);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = *(v17 + 16);
              sub_1B1E2ADC4();
              v17 = v21;
            }

            v18 = *(v17 + 16);
            v19 = v18 + 1;
            if (v18 >= *(v17 + 24) >> 1)
            {
              v24 = v18 + 1;
              v22 = *(v17 + 16);
              sub_1B1E2ADC4();
              v18 = v22;
              v19 = v24;
              v17 = v23;
            }

            *(v17 + 16) = v19;
            sub_1B1E077D8(v27, (v17 + 32 * v18 + 32));
          }

          else
          {
            sub_1B1E0CB70(&v25, &qword_1EB783FC8, &unk_1B1F2A690);
          }

          v16 += 32;
          --v15;
        }

        while (v15);
      }

      else
      {
      }

      v12 = sub_1B1F1A9A0();

      *(a2 + 24) = sub_1B1DEA98C(0, &qword_1EB7854E0, 0x1E695DEC8);
    }

    *a2 = v12;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v7 = v27[0];
  result = [v27[0] UUIDString];
  if (result)
  {
    v8 = result;
    *(a2 + 24) = v4;

    *a2 = v8;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E0C4B0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  result = sub_1B1F1A760();
  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B1DF63A0(*(a1 + 56) + 32 * v13, v39);
    *&v38 = v16;
    *(&v38 + 1) = v15;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_1B1DF63A0(&v36, &v32);
    sub_1B1F1A760();
    sub_1B1E0BF2C(&v32, &v29);
    sub_1B1E0CB70(&v32, &qword_1EB783FC8, &unk_1B1F2A690);
    if (v30)
    {
      sub_1B1E077D8(&v29, v34);
      v32 = v35;
      v33[0] = v36;
      v33[1] = v37;
      sub_1B1E077D8(v34, v31);
      v17 = *(v3 + 16);
      if (*(v3 + 24) <= v17)
      {
        sub_1B1E73E98(v17 + 1, 1);
        v3 = v40;
      }

      v18 = v32;
      v19 = *(v3 + 40);
      sub_1B1F1B7C0();
      sub_1B1F1A900();
      result = sub_1B1F1B7F0();
      v20 = v3 + 64;
      v21 = -1 << *(v3 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v3 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v3 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v3 + 48) + 16 * v24) = v18;
      sub_1B1E077D8(v31, (*(v3 + 56) + 32 * v24));
      ++*(v3 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      sub_1B1E0CB70(&v35, &qword_1EB785E10, &unk_1B1F2AF80);
      result = sub_1B1E0CB70(&v29, &qword_1EB783FC8, &unk_1B1F2A690);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v3;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id WFDiskSanitizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFDiskSanitizer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDiskSanitizer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WFDiskSanitizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDiskSanitizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B1E0CB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783FC8, &unk_1B1F2A690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E0CB70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1B1E0CBD0@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B1DEBED8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1B1DF63A0(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1B1E0CC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0xF000000000000007;
  }

  v4 = sub_1B1DEBED8();
  if ((v5 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  v6 = *(*(a3 + 56) + 8 * v4);

  return v6;
}

uint64_t sub_1B1E0CC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_1B1DEBED8();
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1B1E0CCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B1DEBED8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t XPCDiskArbitrationNotificationEventStream.Event.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return v1;
}

uint64_t XPCDiskArbitrationNotificationEventStream.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B1DF6824(a1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7840C0, &qword_1B1F29870);
  if (swift_dynamicCast())
  {
    sub_1B1E042CC(v27, *(&v27 + 1), &v28);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      return swift_unknownObjectRelease();
    }

    else
    {
      v25 = a2;
      v6 = v28;
      v26 = xpc_dictionary_get_BOOL(v28, "DiskVolumePathChanged");
      v7 = xpc_dictionary_get_BOOL(v6, "DiskDisappeared");
      v8 = sub_1B1E07BD8(0x746E657645435058, 0xEC000000656D614ELL, v6);
      *&v22 = sub_1B1E0306C(v8, v9);
      *(&v22 + 1) = v10;

      if (v26)
      {
        OUTLINED_FUNCTION_8_2();
        v12 = v11 + 7;
      }

      else if (v7)
      {
        v24 = 0xEF64657261657070;
        v12 = 0x617369446B736944;
      }

      else
      {
        OUTLINED_FUNCTION_8_2();
      }

      v23 = v12;
      v13 = sub_1B1F1A730();
      v14 = xpc_dictionary_get_value(v6, "Description");
      sub_1B1E02EF0(v14);
      swift_unknownObjectRelease();
      result = _CFXPCCreateCFObjectFromXPCObject();
      if (result)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          *&v28 = 0;
          sub_1B1F1A700();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v21 = v28;
          if (v28)
          {

            v13 = v21;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        sub_1B1E0CBD0(v13, &v28);
        v15 = v29;
        sub_1B1E07884(&v28);
        v16 = v26;
        if (!v15)
        {
          v16 = 0;
        }

        v29 = MEMORY[0x1E69E6370];
        LOBYTE(v28) = v16;
        sub_1B1E077D8(&v28, &v27);
        swift_isUniquelyReferenced_nonNull_native();
        v30 = v13;
        sub_1B1E0D5F4(&v27, 0xD000000000000013, 0x80000001B1F37F60);
        v17 = v30;
        v29 = MEMORY[0x1E69E6158];
        v28 = v22;
        sub_1B1E077D8(&v28, &v27);
        swift_isUniquelyReferenced_nonNull_native();
        v30 = v17;
        sub_1B1E0D5F4(&v27, 0x4972656767697274, 0xE900000000000044);
        v18 = v30;
        v19 = type metadata accessor for WFDiskSanitizer();
        v20 = sub_1B1E0C4B0(v18, v19);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(a1);

        *v25 = v23;
        v25[1] = v24;
        v25[2] = v20;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1B1E0D380();
    swift_allocError();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_1B1E0D208()
{
  v0 = sub_1B1F1B160();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B1E0D254(char a1)
{
  result = 0x7470697263736544;
  switch(a1)
  {
    case 1:
      result = 0x617369446B736944;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x746E657645435058;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E0D31C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1E0D208();
  *a2 = result;
  return result;
}

unint64_t sub_1B1E0D34C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B1E0D254(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B1E0D380()
{
  result = qword_1EB784190;
  if (!qword_1EB784190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784190);
  }

  return result;
}

uint64_t sub_1B1E0D3D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E0D208();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E0D408(uint64_t a1)
{
  v2 = sub_1B1E03D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E0D444(uint64_t a1)
{
  v2 = sub_1B1E03D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t XPCDiskArbitrationNotificationEventStream.Event.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B1F1A760();
  sub_1B1F1AFA0();

  MEMORY[0x1B273D1A0](v1, v2);
  MEMORY[0x1B273D1A0](0xD000000000000012, 0x80000001B1F37FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784198, &qword_1B1F2AF90);
  v4 = sub_1B1F1A8D0();
  MEMORY[0x1B273D1A0](v4);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

_OWORD *sub_1B1E0D5F4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B1DEBED8();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784200, &qword_1B1F2B198);
  if ((sub_1B1F1B0C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1B1DEBED8();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (*(v16 + 56) + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_1B1E077D8(a1, v17);
  }

  else
  {
    sub_1B1E2B670(v11, a2, a3, a1, v16);

    return sub_1B1F1A760();
  }
}

unint64_t sub_1B1E0D73C(uint64_t a1)
{
  result = sub_1B1E0D764();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1E0D764()
{
  result = qword_1EB7841A0;
  if (!qword_1EB7841A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7841A0);
  }

  return result;
}

unint64_t sub_1B1E0D7BC()
{
  result = qword_1EB7841A8;
  if (!qword_1EB7841A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7841A8);
  }

  return result;
}

_BYTE *sub_1B1E0D828(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E0D8D8()
{
  result = qword_1EB7841B0;
  if (!qword_1EB7841B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7841B0);
  }

  return result;
}

uint64_t sub_1B1E0D92C()
{
  v2 = OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_5(v2, v3);
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841D8, &qword_1B1F2B170);
  OUTLINED_FUNCTION_2_4();
  if ((sub_1B1F1B0C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *v1;
  v10 = sub_1B1DEBED8();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  if (v8)
  {
    v12 = *(*v1 + 56);
    v13 = *(v12 + 8 * v7);
    *(v12 + 8 * v7) = v0;
    OUTLINED_FUNCTION_9_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_2();
    sub_1B1E2B6B4(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_9_2();

    return sub_1B1F1A760();
  }
}

void sub_1B1E0DA24(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B1DEBED8();
  OUTLINED_FUNCTION_0_5(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_1B1F1B720();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841F8, &qword_1B1F2B190);
  OUTLINED_FUNCTION_2_4();
  if (sub_1B1F1B0C0())
  {
    v16 = *v4;
    sub_1B1DEBED8();
    OUTLINED_FUNCTION_4_3();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + v14) = a1 & 1;
    OUTLINED_FUNCTION_9_2();
  }

  else
  {
    sub_1B1E2B6E0(v14, a2, a3, a1 & 1, v19);
    OUTLINED_FUNCTION_9_2();

    sub_1B1F1A760();
  }
}

uint64_t sub_1B1E0DB7C()
{
  v2 = OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_0_5(v2, v3);
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841C0, &qword_1B1F2B158);
  OUTLINED_FUNCTION_2_4();
  if ((sub_1B1F1B0C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *v1;
  v10 = sub_1B1DEBED8();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

  v7 = v10;
LABEL_5:
  if (v8)
  {
    v12 = *(*v1 + 56);
    v13 = *(v12 + 8 * v7);
    *(v12 + 8 * v7) = v0;
    OUTLINED_FUNCTION_9_2();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_2();
    sub_1B1E2D060(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_9_2();

    return sub_1B1F1A760();
  }
}

void sub_1B1E0DC98()
{
  OUTLINED_FUNCTION_5_6();
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *v0;
  v14 = sub_1B1DEBED8();
  OUTLINED_FUNCTION_0_5(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    sub_1B1F1B720();
    __break(1u);
    return;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  if (sub_1B1F1B0C0())
  {
    v21 = *v6;
    sub_1B1DEBED8();
    OUTLINED_FUNCTION_4_3();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  v24 = *v6;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = *(v25 + 8 * v19);
    *(v25 + 8 * v19) = v12;
    OUTLINED_FUNCTION_1_4();
  }

  else
  {
    v30(v19, v10, v8, v12, v24);
    OUTLINED_FUNCTION_1_4();

    sub_1B1F1A760();
  }
}

uint64_t sub_1B1E0DDC0()
{
  OUTLINED_FUNCTION_5_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v34 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *v0;
  v14 = sub_1B1DEBED8();
  OUTLINED_FUNCTION_0_5(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841E0, &qword_1B1F2B178);
  if ((sub_1B1F1B0C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v1;
  v22 = sub_1B1DEBED8();
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_13:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *v1;
  if (v20)
  {
    v25 = (*(v24 + 56) + 32 * v19);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    *v25 = v12;
    v25[1] = v10;
    v25[2] = v8;
    v25[3] = v34;

    OUTLINED_FUNCTION_1_4();

    return sub_1B1E03C48(v29, v30);
  }

  else
  {
    sub_1B1E2B70C(v19, v5, v3, v12, v10, v8, v34, v24);
    OUTLINED_FUNCTION_1_4();

    return sub_1B1F1A760();
  }
}

uint64_t sub_1B1E0DF68()
{
  OUTLINED_FUNCTION_5_6();
  v31 = v2;
  v32 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *v0;
  v15 = sub_1B1DEBED8();
  OUTLINED_FUNCTION_0_5(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  if ((sub_1B1F1B0C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = *v7;
  v23 = sub_1B1DEBED8();
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_13:
    result = sub_1B1F1B720();
    __break(1u);
    return result;
  }

  v20 = v23;
LABEL_5:
  v25 = *v7;
  if (v21)
  {
    v26 = (*(v25 + 56) + 16 * v20);
    v27 = v26[1];
    *v26 = v13;
    v26[1] = v32;
    OUTLINED_FUNCTION_1_4();
  }

  else
  {
    v31(v20, v11, v9, v13, v32, v25);
    OUTLINED_FUNCTION_1_4();

    return sub_1B1F1A760();
  }
}

uint64_t _s9SpotlightO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B1E0E128(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1E0E204()
{
  result = qword_1EB784208;
  if (!qword_1EB784208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784208);
  }

  return result;
}

unint64_t sub_1B1E0E25C()
{
  result = qword_1EB784210;
  if (!qword_1EB784210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784210);
  }

  return result;
}

uint64_t sub_1B1E0E308(void *a1)
{
  length = xpc_data_get_length(a1);
  if (length >= 1 && (v3 = length, (bytes_ptr = xpc_data_get_bytes_ptr(a1)) != 0))
  {
    v5 = MEMORY[0x1B273CB40](bytes_ptr, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x1B273FB80](a1);
    sub_1B1F1A520();
    swift_unknownObjectRelease();
    return 0;
  }

  return v5;
}

uint64_t sub_1B1E0E3A4(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      sub_1B1E0E714(a1, a2);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      sub_1B1E0E714(a1, a2);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v5;
      v9 = v6;
LABEL_7:
      v10 = sub_1B1E0E630(v8, v9, v7, a1, a2);
      goto LABEL_8;
    case 3uLL:
      v10 = sub_1B1E0E540(0, 0, a1, a2);
LABEL_8:
      v4 = v10;
      break;
    default:
      bytes = a1;
      v14 = a2;
      v15 = BYTE2(a2);
      v16 = BYTE3(a2);
      v17 = BYTE4(a2);
      v18 = BYTE5(a2);
      v4 = xpc_data_create(&bytes, BYTE6(a2));
      sub_1B1E03C48(a1, a2);
      break;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

xpc_object_t sub_1B1E0E540(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  bytes = a1;
  v14 = WORD2(a2);
  v13 = a2;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        __break(1u);
LABEL_8:
        __break(1u);
      }

      v6 = HIDWORD(a3) - a3;
LABEL_6:
      v9 = xpc_data_create(&bytes, v6);
      sub_1B1E03C48(a3, a4);
      v10 = *MEMORY[0x1E69E9840];
      return v9;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      v6 = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_6;
    default:
      v6 = BYTE6(a4);
      goto LABEL_6;
  }
}

uint64_t sub_1B1E0E630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = sub_1B1F1A0C0();
  if (v8)
  {
    v9 = v8;
    result = sub_1B1F1A0E0();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    v11 = (a1 - result + v9);
  }

  else
  {
    v11 = 0;
  }

  result = sub_1B1F1A0D0();
  v12 = 0;
  switch(a5 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a4), a4))
      {
        goto LABEL_12;
      }

      v12 = HIDWORD(a4) - a4;
      break;
    case 2uLL:
      v14 = *(a4 + 16);
      v13 = *(a4 + 24);
      v12 = v13 - v14;
      if (__OFSUB__(v13, v14))
      {
        goto LABEL_13;
      }

      break;
    case 3uLL:
      break;
    default:
      v12 = BYTE6(a5);
      break;
  }

  v15 = xpc_data_create(v11, v12);
  sub_1B1E03C48(a4, a5);
  return v15;
}

uint64_t sub_1B1E0E714(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t SecureCodable.init(bytes:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v9 = objc_autoreleasePoolPush();
  sub_1B1E0E82C(a1, a2, a3, &v11, &v12);
  objc_autoreleasePoolPop(v9);
  result = sub_1B1E03C48(a1, a2);
  if (!v4)
  {
    *a4 = v12;
  }

  return result;
}

uint64_t sub_1B1E0E82C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  sub_1B1DEA98C(0, &qword_1EB7842A8, 0x1E695DFD8);
  v26[3] = swift_getMetatypeMetadata();
  v26[0] = a3;
  v9 = sub_1B1E0EAD0(v26);
  v10 = LNValueTypeObjectClassesForCoding();
  sub_1B1F1AC00();

  v11 = sub_1B1F1ABF0();

  v12 = [v9 setByAddingObjectsFromSet_];

  sub_1B1F1AC00();
  v13 = sub_1B1F1ABF0();

  v14 = sub_1B1F1A250();
  v26[0] = 0;
  v15 = [v8 unarchivedObjectOfClasses:v13 fromData:v14 error:v26];

  if (v15)
  {
    v16 = v26[0];
    sub_1B1F1AED0();
    swift_unknownObjectRelease();
    result = swift_dynamicCast();
    if (result)
    {
      *a5 = v25;
    }

    else
    {
      type metadata accessor for SecureCodable.DecodingError();
      swift_getWitnessTable();
      v20 = swift_allocError();
      *v21 = a1;
      v21[1] = a2;
      swift_willThrow();
      *a4 = v20;
      result = sub_1B1E0E714(a1, a2);
    }
  }

  else
  {
    v18 = v26[0];
    v19 = sub_1B1F1A1C0();

    result = swift_willThrow();
    *a4 = v19;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1B1E0EAD0(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = sub_1B1F1B500();
  v3 = [swift_getObjCClassFromMetadata() setWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void SecureCodable.bytes.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 16);
  sub_1B1E0EBC8(v3, &v6, &v7);
  objc_autoreleasePoolPop(v4);
}

void sub_1B1E0EBC8(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v13];
  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1B1F1A290();
    v9 = v8;

    *a3 = v7;
    a3[1] = v9;
  }

  else
  {
    v10 = v6;
    v11 = sub_1B1F1A1C0();

    swift_willThrow();
    *a2 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t SecureCodable.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B800();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_1B1E0EDAC();
    sub_1B1F1B520();
    SecureCodable.init(bytes:)(v9[0], v9[1], a2, v9);
    *a3 = v9[0];
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B1E0EDAC()
{
  result = qword_1EB783AF0;
  if (!qword_1EB783AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AF0);
  }

  return result;
}

uint64_t SecureCodable.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B820();
  SecureCodable.bytes.getter(a2);
  if (!v3)
  {
    v10 = v7;
    v11 = v8;
    __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_1B1E0EF20();
    sub_1B1F1B550();
    sub_1B1E03C48(v10, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
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

unint64_t sub_1B1E0EF20()
{
  result = qword_1EB7835A0;
  if (!qword_1EB7835A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7835A0);
  }

  return result;
}

void SecureCodable.hash(into:)()
{
  v1 = *v0;
  sub_1B1F1AE90();
}

uint64_t SecureCodable.hashValue.getter()
{
  v2 = *v0;
  sub_1B1F1B7C0();
  SecureCodable.hash(into:)();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E0F054()
{
  sub_1B1F1B7C0();
  SecureCodable.hash(into:)();
  return sub_1B1F1B7F0();
}

uint64_t static SecureCodable.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1B1DEA98C(0, qword_1EB784220, 0x1E69E58C0);
  return sub_1B1F1AE80() & 1;
}

uint64_t SecureCodable.debugDescription.getter(uint64_t a1)
{
  v3 = *v1;
  sub_1B1F1AFA0();
  MEMORY[0x1B273D1A0](0x6F43657275636553, 0xEE003C656C626164);
  v4 = *(a1 + 16);
  v5 = sub_1B1F1B880();
  MEMORY[0x1B273D1A0](v5);

  MEMORY[0x1B273D1A0](10302, 0xE200000000000000);
  swift_getWitnessTable();
  sub_1B1F1B4F0();

  MEMORY[0x1B273D1A0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B1E0F208()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B1E0F250(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B1E0F290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1E0F2E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B1E0F33C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B1E0F388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t ShortcutsFeatureFlags.isFeatureEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for ShortcutsFeatureFlags;
  v4[4] = sub_1B1DFC998();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1B1F1A380();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

uint64_t ShortcutsFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](v1);
  return sub_1B1F1B7F0();
}

unint64_t sub_1B1E0F4F0()
{
  result = qword_1EB784310[0];
  if (!qword_1EB784310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB784310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShortcutsFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShortcutsFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B1E0F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for WeakReference();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t WeakReference.wrappedValue.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakReference.wrappedValue.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1B1E0F7F4;
}

uint64_t sub_1B1E0F7F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakReference.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B1E0F888()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id ProgressKeyValueObservation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1B1E0FACC()
{
  result = qword_1EB783230;
  if (!qword_1EB783230)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783230);
  }

  return result;
}

uint64_t XPCDecoder.xpcContainer<A>(keyedBy:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  if (v3 == sub_1B1F1A590())
  {
    *v1 = v2;
    v1[1] = v0;
    sub_1B1F1A760();
    return swift_unknownObjectRetain();
  }

  else
  {
    v5 = sub_1B1F1AFE0();
    swift_allocError();
    OUTLINED_FUNCTION_28();
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD8, &qword_1B1F29ED0);
    OUTLINED_FUNCTION_37(v7);
    sub_1B1F1AFA0();
    MEMORY[0x1B273D1A0](0xD000000000000028, 0x80000001B1F37930);
    xpc_type_get_name(v4);
    v8 = sub_1B1F1A920();
    MEMORY[0x1B273D1A0](v8);

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_36();
    v9 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11_2(v5);
    (*(v10 + 104))(v2);
    return swift_willThrow();
  }
}

uint64_t XPCKeyedDecoding.decode(_:forKey:)()
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_6_4();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = sub_1B1F1B840();
  sub_1B1E07BD8(v4, v5, v12);

  OUTLINED_FUNCTION_9_3();
  sub_1B1E13F00(v6, v7, v8, v9, v10);

  if (!v0)
  {
    return v13;
  }

  return result;
}

{
  OUTLINED_FUNCTION_6_4();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B1F1B840();
  v4 = sub_1B1F1A8E0();

  xpc_dictionary_get_value(v11, (v4 + 32));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  OUTLINED_FUNCTION_9_3();
  sub_1B1E13F00(v5, v6, v7, v8, v9);
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    return v12;
  }

  return result;
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_6_4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B1F1B840();
  v3 = sub_1B1F1A8E0();

  xpc_dictionary_get_double(v10, (v3 + 32));

  OUTLINED_FUNCTION_9_3();
  return sub_1B1E13F00(v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_3_5();
  return XPCKeyedDecoding.decode(_:forKey:)(v0, v1);
}

{
  OUTLINED_FUNCTION_3_5();
  result = XPCKeyedDecoding.decode(_:forKey:)(v1, v2);
  if (!v0)
  {
    if (result < -128)
    {
      __break(1u);
    }

    else if (result <= 127)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_3_5();
  result = XPCKeyedDecoding.decode(_:forKey:)(v1, v2);
  if (!v0)
  {
    if (result < -32768)
    {
      __break(1u);
    }

    else if (result < 0x8000)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_3_5();
  result = XPCKeyedDecoding.decode(_:forKey:)(v1, v2);
  if (!v0)
  {
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_3_5();
  return XPCKeyedDecoding.decode(_:forKey:)(v0, v1);
}

BOOL XPCKeyedDecoding.decode(_:forKey:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_8_3(v1, v2);
  sub_1B1F1B840();
  v3 = sub_1B1F1A8E0();

  v4 = xpc_dictionary_get_BOOL(v0, (v3 + 32));

  return v4;
}

uint64_t sub_1B1E0FE6C(uint64_t a1)
{
  v3 = type metadata accessor for XPCEncoder();
  OUTLINED_FUNCTION_18_2();
  v4 = swift_allocObject();
  sub_1B1E11104();
  v14[3] = v3;
  v14[4] = sub_1B1E1775C();
  v14[0] = v4;

  v5 = a1;
  sub_1B1F1A7F0();
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1B1E10CB0();
    OUTLINED_FUNCTION_28();
    sub_1B1E0FF58(v6, v7, v8);
    v5 = v9;
    v10 = OUTLINED_FUNCTION_7_3();
    sub_1B1E177B0(v10, v11, v12);
  }

  return v5;
}

void sub_1B1E0FF58(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      empty = xpc_array_create_empty();
      v35 = *(a1 + 16);
      if (v35)
      {
        v36 = (a1 + 48);
        do
        {
          v37 = *(v36 - 2);
          v38 = *(v36 - 1);
          v39 = *v36;
          v36 += 24;
          v40 = OUTLINED_FUNCTION_23_0();
          sub_1B1E17850(v40, v41, v42);
          v43 = OUTLINED_FUNCTION_23_0();
          v44 = sub_1B1E0FF58(v43);
          xpc_array_append_value(empty, v44);
          swift_unknownObjectRelease();
          v45 = OUTLINED_FUNCTION_23_0();
          sub_1B1E177B0(v45, v46, v47);
          --v35;
        }

        while (v35);
      }

      goto LABEL_34;
    case 2:
      OUTLINED_FUNCTION_1_4();

      xpc_BOOL_create(v31);
      return;
    case 3:
      v33 = sub_1B1F1A8E0();
      xpc_string_create((v33 + 32));

      goto LABEL_34;
    case 4:
      OUTLINED_FUNCTION_1_4();

      xpc_int64_create(v29);
      return;
    case 5:
      OUTLINED_FUNCTION_1_4();

      xpc_uint64_create(v48);
      return;
    case 6:
      OUTLINED_FUNCTION_1_4();

      xpc_double_create(v50);
      return;
    case 7:
      swift_unknownObjectRetain();
      goto LABEL_34;
    case 8:
      OUTLINED_FUNCTION_1_4();

      xpc_null_create();
      return;
    default:
      sub_1B1F1A760();
      v53 = a1;
      xdict = xpc_dictionary_create_empty();
      i = 0;
      v5 = a1 + 64;
      v6 = 1 << *(a1 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(a1 + 64);
      v9 = (v6 + 63) >> 6;
      if (v8)
      {
        goto LABEL_5;
      }

      break;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++i;
    if (v8)
    {
      for (i = v10; ; v10 = i)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(v53 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(v53 + 56) + 24 * v12;
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        sub_1B1F1A760();
        v20 = OUTLINED_FUNCTION_7_3();
        sub_1B1E17850(v20, v21, v22);
        v23 = OUTLINED_FUNCTION_7_3();
        v24 = sub_1B1E0FF58(v23);
        v25 = sub_1B1F1A8E0();

        xpc_dictionary_set_value(xdict, (v25 + 32), v24);
        swift_unknownObjectRelease();

        v26 = OUTLINED_FUNCTION_7_3();
        sub_1B1E177B0(v26, v27, v28);
        if (!v8)
        {
          break;
        }

LABEL_5:
        ;
      }
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_1_4();
}

uint64_t XPCCoder.decode<A>(_:from:)()
{
  sub_1B1F1B0B0();
  sub_1B1F1A730();
  sub_1B1E141EC();
  swift_unknownObjectRetain();
  return sub_1B1F1ABE0();
}

uint64_t sub_1B1E102E8()
{
  sub_1B1E177B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1B1E10324(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for XPCEncoderStorage.XPCEncoderValue();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  swift_beginAccess();
  sub_1B1E17850(a1, a2, a3);
  v9 = *(v4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  sub_1B1E0D92C();
  *(v4 + 16) = v11;
  return swift_endAccess();
}

unint64_t sub_1B1E103F4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  sub_1B1F1A760();
  result = sub_1B1DEBED8();
  if ((v4 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for XPCEncoderStorage.XPCEncoderArray();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();

    v7 = *(v1 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 16);
    sub_1B1E0D92C();
    *(v1 + 16) = v8;
    swift_endAccess();
    return v6;
  }

  v5 = *(*(v2 + 56) + 8 * result);
  switch(v5 >> 62)
  {
    case 1uLL:
      v6 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      return v6;
    case 2uLL:
      goto LABEL_9;
    case 3uLL:
      __break(1u);
LABEL_9:
      __break(1u);
      break;
    default:
      break;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1E10540()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  sub_1B1F1A760();
  result = sub_1B1DEBED8();
  if ((v4 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for XPCEncoderStorage.XPCEncoderDict();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B1F1A730();
    swift_beginAccess();

    v8 = *(v1 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 16);
    sub_1B1E0D92C();
    *(v1 + 16) = v9;
    swift_endAccess();
    return v6;
  }

  v5 = *(v2 + 56);
  v6 = *(v5 + 8 * result);
  switch(v6 >> 62)
  {
    case 1uLL:
      goto LABEL_10;
    case 2uLL:
      goto LABEL_9;
    case 3uLL:
      __break(1u);
LABEL_9:
      __break(1u);
LABEL_10:
      __break(1u);
      break;
    default:
      v7 = *(v5 + 8 * result);

      return v6;
  }

  return result;
}

uint64_t sub_1B1E106A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  sub_1B1F1A760();
  v7 = sub_1B1E0CC34(a2, a3, v6);
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v10 = v7 >> 62;
    result = sub_1B1E17894(v7);
    switch(v10)
    {
      case 1uLL:
        goto LABEL_7;
      case 2uLL:
        goto LABEL_5;
      case 3uLL:
        goto LABEL_6;
      default:
        __break(1u);
LABEL_5:
        __break(1u);
LABEL_6:
        __break(1u);
LABEL_7:
        __break(1u);
        break;
    }
  }

  else
  {

    swift_beginAccess();

    v8 = *(v3 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 16);
    sub_1B1E0D92C();
    *(v3 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B1E107BC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = sub_1B1F1A760();
  v3 = sub_1B1E17984(v2);

  return v3;
}

uint64_t sub_1B1E10820(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for XPCEncoderStorage.XPCEncoderValue();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = v8 | 0x8000000000000000;
  swift_beginAccess();
  sub_1B1E17850(a1, a2, a3);
  sub_1B1E2AB4C();
  v10 = *(*(v4 + 16) + 16);
  sub_1B1E2AC08(v10);
  v11 = *(v4 + 16);
  *(v11 + 16) = v10 + 1;
  *(v11 + 8 * v10 + 32) = v9;
  *(v4 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1B1E108E4()
{
  type metadata accessor for XPCEncoderStorage.XPCEncoderArray();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();

  sub_1B1E2AB4C();
  v2 = *(*(v0 + 16) + 16);
  sub_1B1E2AC08(v2);
  v3 = *(v0 + 16);
  *(v3 + 16) = v2 + 1;
  *(v3 + 8 * v2 + 32) = v1 | 0x4000000000000000;
  *(v0 + 16) = v3;
  swift_endAccess();
  return v1;
}

uint64_t sub_1B1E109A0()
{
  type metadata accessor for XPCEncoderStorage.XPCEncoderDict();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1B1F1A730();
  swift_beginAccess();

  sub_1B1E2AB4C();
  v2 = *(*(v0 + 16) + 16);
  sub_1B1E2AC08(v2);
  v3 = *(v0 + 16);
  *(v3 + 16) = v2 + 1;
  *(v3 + 8 * v2 + 32) = v1;
  *(v0 + 16) = v3;
  swift_endAccess();
  return v1;
}

uint64_t sub_1B1E10A6C(uint64_t a1)
{
  v2 = a1 | 0xC000000000000000;
  swift_beginAccess();

  sub_1B1E2AB4C();
  v3 = *(*(v1 + 16) + 16);
  sub_1B1E2AC08(v3);
  v4 = *(v1 + 16);
  *(v4 + 16) = v3 + 1;
  *(v4 + 8 * v3 + 32) = v2;
  *(v1 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_1B1E10AFC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1B1F1A760();
    sub_1B1E3B264(0, v2, 0);
    v4 = 32;
    v3 = v19;
    do
    {
      v5 = *(v1 + v4);
      switch(v5 >> 62)
      {
        case 1uLL:

          v8 = sub_1B1E10AFC(v14);

          v9 = 0;
          v10 = 1;
          break;
        case 2uLL:
          v8 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v9 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v10 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          sub_1B1E17850(v8, v9, v10);
          break;
        case 3uLL:

          v8 = sub_1B1E10CB0(v11);
          v9 = v12;
          v10 = v13;

          break;
        default:
          v6 = *(v1 + v4);

          v8 = sub_1B1E107BC(v7);

          v9 = 0;
          v10 = 0;
          break;
      }

      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1B1E3B264(v15 > 1, v16 + 1, 1);
      }

      *(v19 + 16) = v16 + 1;
      v17 = v19 + 24 * v16;
      *(v17 + 32) = v8;
      *(v17 + 40) = v9;
      *(v17 + 48) = v10;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1B1E10CB0()
{
  OUTLINED_FUNCTION_25();
  if (v1)
  {
    return 0;
  }

  switch(v0 >> 62)
  {
    case 1uLL:

      v2 = sub_1B1E10AFC();
      sub_1B1E17894(v0);
      break;
    case 2uLL:
      v2 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1B1E17850(v2, *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20));
      break;
    case 3uLL:

      v2 = sub_1B1E10CB0(v4);
      sub_1B1E17894(v0);
      break;
    default:

      v2 = sub_1B1E107BC();
      sub_1B1E17894(v0);
      break;
  }

  return v2;
}

void sub_1B1E10DB0()
{
  v1 = *(v0 + 32);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    type metadata accessor for XPCEncoderStorage.XPCEncoderDict();
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1B1F1A730();
    v3 = *(v0 + 32);
    *(v0 + 32) = v2;

    sub_1B1E17894(v3);
LABEL_5:
    OUTLINED_FUNCTION_16_1();
    swift_beginAccess();
    v5 = *(v0 + 16);
    sub_1B1E17900(v1);
    sub_1B1F1A760();
    return;
  }

  if (!(v1 >> 62))
  {
    v4 = *(v0 + 32);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1B1E10E84()
{
  sub_1B1E10DB0();
  type metadata accessor for XPCKeyedEncoding();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  return sub_1B1F1B2D0();
}

void sub_1B1E10EFC(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    type metadata accessor for XPCEncoderStorage.XPCEncoderArray();
    v5 = swift_allocObject();
    *(v5 + 16) = MEMORY[0x1E69E7CC0];
    *(v1 + 32) = v5 | 0x4000000000000000;
    swift_retain_n();
LABEL_6:
    OUTLINED_FUNCTION_16_1();
    swift_beginAccess();
    v6 = *(v1 + 16);
    a1[3] = &unk_1F28F4FA8;
    v7 = sub_1B1E17918();
    OUTLINED_FUNCTION_39(v7);

    *a1 = v5;
    a1[1] = v6;
    return;
  }

  if (v2 >> 62 == 1)
  {
    v5 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B1E10FB4(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_25();
  if (v4)
  {
    v5 = sub_1B1F1A730();
    type metadata accessor for XPCEncoderStorage.XPCEncoderValue();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    v7 = *(v1 + 32);
    *(v1 + 32) = v6 | 0x8000000000000000;
    swift_retain_n();
    sub_1B1E17894(v7);
LABEL_6:
    OUTLINED_FUNCTION_16_1();
    swift_beginAccess();
    v8 = *(v1 + 16);
    a1[3] = &unk_1F28F4D10;
    v9 = sub_1B1E178AC();
    OUTLINED_FUNCTION_39(v9);

    *a1 = v6;
    a1[1] = v8;
    return;
  }

  if (v2 >> 62 == 2)
  {
    v6 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1B1E110A4()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_1B1E17894(v0[4]);
  return v0;
}

uint64_t sub_1B1E110D4()
{
  sub_1B1E110A4();
  OUTLINED_FUNCTION_18_2();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B1E11104()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1B1F1B0B0();
  v0[3] = sub_1B1F1A730();
  v0[4] = 0xF000000000000007;
  return v0;
}

uint64_t sub_1B1E11160()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  return sub_1B1F1A760();
}

uint64_t sub_1B1E1121C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_8_3(v0, v1);
  sub_1B1F1B840();
  sub_1B1E10324(0, 0, 8);
}

uint64_t sub_1B1E11278(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  sub_1B1F1B840();
  sub_1B1E10324(a1 & 1, 0, 2);
}

uint64_t sub_1B1E112EC()
{
  OUTLINED_FUNCTION_24_2();
  v3 = *v0;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  sub_1B1F1B840();
  sub_1B1E10324(v2, v1, 3);
}

uint64_t sub_1B1E11358()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  OUTLINED_FUNCTION_8_3(v2, v3);
  sub_1B1F1B840();
  sub_1B1E10324(v1, 0, 6);
}

uint64_t sub_1B1E11474(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  sub_1B1F1B840();
  sub_1B1E10324(a1, 0, a4);
}

void sub_1B1E1154C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_5_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  v14 = v13 - v12;
  v17 = sub_1B1E117C0(v15, v16);
  if (v17)
  {
    v18 = v17;
    v19 = *v0;
    v20 = *(v3 + 24);
    swift_unknownObjectRetain();
    sub_1B1F1B840();
    sub_1B1E10324(v18, 0, 7);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v29 = type metadata accessor for XPCEncoder();
    OUTLINED_FUNCTION_18_2();
    v21 = swift_allocObject();
    sub_1B1E11104();
    swift_beginAccess();
    sub_1B1E2AB64();
    v22 = *(*(v21 + 16) + 16);
    sub_1B1E2AC20(v22);
    (*(v8 + 16))(v14, v5, v6);
    sub_1B1E17F28(v22, v14, (v21 + 16), v6, *(v3 + 24));
    swift_endAccess();
    v30[3] = v29;
    v30[4] = sub_1B1E1775C();
    v30[0] = v21;

    sub_1B1F1A7F0();
    if (v1)
    {

      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v30);
      v23 = *v0;
      v24 = sub_1B1E10CB0();
      v26 = v25;
      v28 = v27;
      sub_1B1F1B840();
      sub_1B1E10324(v24, v26, v28);

      sub_1B1E177B0(v24, v26, v28);
    }
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E117C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784420, &qword_1B1F2BFC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v42 - v6;
  v47 = sub_1B1F1A230();
  v44 = *(v47 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784428, &qword_1B1F2BFD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v42 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = sub_1B1F1A2F0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v14 + 16);
  v28(v22, a1, a2);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v23);
    sub_1B1E177F4(v13, &qword_1EB784428, &qword_1B1F2BFD0);
    v28(v20, a1, a2);
    if (swift_dynamicCast())
    {
      v33 = v48;
      v34 = v49;
      v32 = sub_1B1E0E3A4(v48, v49);
      sub_1B1E03C48(v33, v34);
    }

    else
    {
      v28(v45, a1, a2);
      v36 = v46;
      v35 = v47;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v36, 0, 1, v35);
        v38 = v43;
        v37 = v44;
        (*(v44 + 32))(v43, v36, v35);
        v39 = sub_1B1F1A210();
        sub_1B1E0FF58(v39, v40, 3);
        v32 = v41;

        (*(v37 + 8))(v38, v35);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v36, 1, 1, v35);
        sub_1B1E177F4(v36, &qword_1EB784420, &qword_1B1F2BFC8);
        return 0;
      }
    }

    return v32;
  }

  __swift_storeEnumTagSinglePayload(v13, 0, 1, v23);
  (*(v24 + 32))(v27, v13, v23);
  result = sub_1B1F1A2D0();
  v31 = v30 * 1000000000.0;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v31 < 9.22337204e18)
  {
    v32 = xpc_date_create(v31);
    (*(v24 + 8))(v27, v23);
    return v32;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B1E11CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  sub_1B1F1B840();
  sub_1B1E10540();

  v7 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  *(inited + 56) = v5;
  *(inited + 64) = v6;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_11_2(v5);
  (*(v9 + 16))();
  sub_1B1F1A760();
  sub_1B1E17200(inited);
  OUTLINED_FUNCTION_33();
  type metadata accessor for XPCKeyedEncoding();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  return sub_1B1F1B2D0();
}

unint64_t sub_1B1E11DE4@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1B1F1B840();
  v7 = sub_1B1E103F4();

  v8 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  *(inited + 56) = v5;
  *(inited + 64) = v6;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_11_2(v5);
  (*(v10 + 16))();
  sub_1B1F1A760();
  sub_1B1E17200(inited);
  a2[3] = &unk_1F28F4FA8;
  result = sub_1B1E17918();
  a2[4] = result;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t sub_1B1E11EF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_33();
  v5 = *(*(sub_1B1F1AEB0() - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *(a1 + 24);
  sub_1B1F1B850();
  result = __swift_getEnumTagSinglePayload(v8, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B1E11FF4(a1, a2);
    OUTLINED_FUNCTION_11_2(v4);
    return (*(v11 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_1B1E11FF4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for XPCEncoder();
  OUTLINED_FUNCTION_18_2();
  v7 = swift_allocObject();
  sub_1B1E11104();
  v8 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  v10 = *(a1 + 16);
  *(inited + 56) = v10;
  *(inited + 64) = *(a1 + 24);
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_11_2(v10);
  (*(v11 + 16))();
  sub_1B1F1A760();
  sub_1B1E17200(inited);
  swift_beginAccess();
  v12 = *(v7 + 16);
  *(v7 + 16) = v8;

  v13 = *v3;
  v14 = sub_1B1F1B840();
  sub_1B1E106A4(v7, v14, v15);

  a2[3] = v6;
  result = sub_1B1E1775C();
  a2[4] = result;
  *a2 = v7;
  return result;
}

uint64_t sub_1B1E1260C(uint64_t a1)
{
  OUTLINED_FUNCTION_16_1();
  swift_beginAccess();
  return *(*(a1 + 16) + 16);
}

uint64_t sub_1B1E128E8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = sub_1B1E117C0(a1, a2);
  if (v5)
  {
    v6 = *v2;
    sub_1B1E10820(v5, 0, 7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v29 = type metadata accessor for XPCEncoder();
    OUTLINED_FUNCTION_18_2();
    v8 = swift_allocObject();
    sub_1B1E11104();
    v26 = v2[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1F2A3B0;
    v10 = *v2;
    OUTLINED_FUNCTION_16_1();
    swift_beginAccess();
    v11 = *(*(v10 + 16) + 16);
    sub_1B1F1A760();
    v12 = sub_1B1E12AF0();
    v14 = v13;
    v27 = v4;
    v16 = v15;
    LOBYTE(v10) = v17;
    *(inited + 56) = &type metadata for XPCKey;
    *(inited + 64) = sub_1B1E17708();
    OUTLINED_FUNCTION_20_0();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v12;
    *(v18 + 24) = v14;
    *(v18 + 32) = v16;
    *(v18 + 40) = v10 & 1;
    v28[0] = v26;
    sub_1B1E17200(inited);
    swift_beginAccess();
    v19 = *(v8 + 16);
    *(v8 + 16) = v26;

    v28[3] = v29;
    v28[4] = sub_1B1E1775C();
    v28[0] = v8;

    sub_1B1F1A7F0();
    if (v27)
    {

      return __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_1B1E10CB0();
      OUTLINED_FUNCTION_28();
      sub_1B1E10820(v20, v21, v22);
      v23 = OUTLINED_FUNCTION_7_3();
      sub_1B1E177B0(v23, v24, v25);
    }
  }
}

uint64_t sub_1B1E12AF0()
{
  v0 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v0);

  return 0x207865646E49;
}

uint64_t sub_1B1E12B70()
{
  v1 = v0;
  v2 = *v0;
  sub_1B1E109A0();
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  OUTLINED_FUNCTION_16_1();
  swift_beginAccess();
  v5 = *(*(v2 + 16) + 16);
  sub_1B1F1A760();
  v6 = sub_1B1E12AF0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  *(inited + 56) = &type metadata for XPCKey;
  *(inited + 64) = sub_1B1E17708();
  OUTLINED_FUNCTION_20_0();
  v13 = swift_allocObject();
  *(inited + 32) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v8;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12 & 1;
  sub_1B1E17200(inited);
  OUTLINED_FUNCTION_33();
  type metadata accessor for XPCKeyedEncoding();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  return sub_1B1F1B2D0();
}

unint64_t sub_1B1E12CBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B1E108E4();
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  OUTLINED_FUNCTION_16_1();
  swift_beginAccess();
  v8 = *(*(v4 + 16) + 16);
  sub_1B1F1A760();
  v9 = sub_1B1E12AF0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *(inited + 56) = &type metadata for XPCKey;
  *(inited + 64) = sub_1B1E17708();
  OUTLINED_FUNCTION_20_0();
  v16 = swift_allocObject();
  *(inited + 32) = v16;
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15 & 1;
  sub_1B1E17200(inited);
  a1[3] = &unk_1F28F4FA8;
  result = sub_1B1E17918();
  a1[4] = result;
  *a1 = v5;
  a1[1] = v6;
  return result;
}

unint64_t sub_1B1E12DD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for XPCEncoder();
  OUTLINED_FUNCTION_18_2();
  v4 = swift_allocObject();
  sub_1B1E11104();
  v5 = *v1;
  OUTLINED_FUNCTION_16_1();
  swift_beginAccess();
  v6 = *(*(v5 + 16) + 16);
  v7 = sub_1B1E12AF0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_beginAccess();
  sub_1B1E2AB64();
  v14 = *(*(v4 + 16) + 16);
  sub_1B1E2AC20(v14);
  sub_1B1E17E68(v14, v7, v9, v11, v13 & 1, (v4 + 16));
  swift_endAccess();
  sub_1B1E10A6C(v4);
  a1[3] = v3;
  result = sub_1B1E1775C();
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1B1E13364()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = *(v1 + 32);
  *(v1 + 32) = 8;
  return sub_1B1E177B0(v2, v3, v4);
}

uint64_t sub_1B1E133A4(char a1)
{
  v2 = *v1;
  v3 = a1 & 1;
  v4 = *(*v1 + 16);
  v5 = *(*v1 + 24);
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  v6 = *(v2 + 32);
  *(v2 + 32) = 2;
  return sub_1B1E177B0(v4, v5, v6);
}

uint64_t sub_1B1E133E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v6 = *(v3 + 32);
  *(v3 + 32) = 3;
  sub_1B1F1A760();
  return sub_1B1E177B0(v5, v4, v6);
}

uint64_t sub_1B1E13520(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  v6 = *(v3 + 32);
  *(v3 + 32) = a2;
  return sub_1B1E177B0(v4, v5, v6);
}

uint64_t sub_1B1E135F4(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v6 = sub_1B1E117C0(a1, a2);
  if (v6)
  {
    v7 = *v2;
    v9 = *(*v2 + 16);
    v8 = *(*v2 + 24);
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v10 = *(v7 + 32);
    *(v7 + 32) = 7;
    v11 = v9;
    return sub_1B1E177B0(v11, v8, v10);
  }

  v13 = type metadata accessor for XPCEncoder();
  OUTLINED_FUNCTION_18_2();
  v14 = swift_allocObject();
  sub_1B1E11104();
  v15 = v2[1];
  swift_beginAccess();
  v16 = *(v14 + 16);
  *(v14 + 16) = v15;
  sub_1B1F1A760();

  v23[3] = v13;
  v23[4] = sub_1B1E1775C();
  v23[0] = v14;

  sub_1B1F1A7F0();
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    v17 = *v5;
    v18 = sub_1B1E10CB0();
    v20 = v19;
    v22 = v21;

    v11 = *(v17 + 16);
    v8 = *(v17 + 24);
    *(v17 + 16) = v18;
    *(v17 + 24) = v20;
    v10 = *(v17 + 32);
    *(v17 + 32) = v22;
    return sub_1B1E177B0(v11, v8, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1B1E138EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return v1;
}

void sub_1B1E1391C(uint64_t a1@<X8>)
{
  sub_1B1E13894();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_1B1E1394C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1B1E13958@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B1E138A0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1B1E13988(uint64_t a1)
{
  v2 = sub_1B1E17708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E139C4(uint64_t a1)
{
  v2 = sub_1B1E17708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCDecoder.codingPath.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t XPCDecoder.userInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t XPCDecoder.container<A>(keyedBy:)()
{
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_6_4();
  result = XPCDecoder.xpcContainer<A>(keyedBy:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_33();
    type metadata accessor for XPCKeyedDecoding();
    swift_getWitnessTable();
    return sub_1B1F1B230();
  }

  return result;
}

uint64_t XPCDecoder.unkeyedContainer()()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  if (v3 == sub_1B1F1A540())
  {
    v1[3] = &unk_1F28F4E10;
    v1[4] = sub_1B1E14258();
    *v1 = v2;
    v1[1] = v0;
    v1[2] = 0;
    sub_1B1F1A760();
    return swift_unknownObjectRetain();
  }

  else
  {
    v5 = sub_1B1F1AFE0();
    swift_allocError();
    OUTLINED_FUNCTION_28();
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7843D0, &unk_1B1F2B710);
    OUTLINED_FUNCTION_37(v7);
    sub_1B1F1AFA0();

    xpc_type_get_name(v4);
    v8 = sub_1B1F1A920();
    MEMORY[0x1B273D1A0](v8);

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_36();
    v9 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11_2(v5);
    (*(v10 + 104))(v2);
    return swift_willThrow();
  }
}

uint64_t XPCDecoder.singleValueContainer()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &unk_1F28F4D90;
  a1[4] = sub_1B1E142AC();
  *a1 = v4;
  a1[1] = v3;
  swift_unknownObjectRetain();
  return sub_1B1F1A760();
}

uint64_t XPCKeyedDecoding.allKeys.getter(uint64_t a1)
{
  sub_1B1E0798C(*v1);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783B50, &qword_1B1F29880);
  sub_1B1E1431C();
  v3 = sub_1B1F1A960();

  return v3;
}

uint64_t sub_1B1E13E24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B1F1A760();
  return sub_1B1F1B850();
}

BOOL XPCKeyedDecoding.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  OUTLINED_FUNCTION_8_3(a1, a2);
  sub_1B1F1B840();
  v4 = sub_1B1F1A8E0();

  v5 = xpc_dictionary_get_value(v3, (v4 + 32));

  if (v5)
  {
    swift_unknownObjectRelease();
  }

  return v5 != 0;
}

uint64_t sub_1B1E13F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a2;
  v10 = sub_1B1F1AEB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  v15 = *(v5 + 8);
  (*(v11 + 16))(v25 - v13, a1, v10);
  if (__swift_getEnumTagSinglePayload(v14, 1, a4) != 1)
  {
    return (*(*(a4 - 8) + 32))(a5, v14, a4);
  }

  (*(v11 + 8))(v14, v10);
  v16 = sub_1B1F1AFE0();
  swift_allocError();
  v18 = v17;
  v25[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CC8, &unk_1B1F29EC0) + 48);
  v19 = *(a3 + 16);
  v18[3] = v19;
  v20 = *(a3 + 24);
  v18[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v26, v19);
  v25[2] = 0;
  v25[3] = 0xE000000000000000;
  sub_1B1F1A760();
  sub_1B1F1AFA0();
  MEMORY[0x1B273D1A0](0xD00000000000001DLL, 0x80000001B1F37910);
  v22 = *(v20 + 16);
  sub_1B1F1B4F0();
  MEMORY[0x1B273D1A0](2238496, 0xE300000000000000);
  v23 = sub_1B1F1B840();
  MEMORY[0x1B273D1A0](v23);

  MEMORY[0x1B273D1A0](3025186, 0xE300000000000000);
  sub_1B1F1AFD0();
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF0], v16);
  return swift_willThrow();
}

unint64_t sub_1B1E141EC()
{
  result = qword_1ED84EC28;
  if (!qword_1ED84EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EC28);
  }

  return result;
}

unint64_t sub_1B1E14258()
{
  result = qword_1EB7843D8;
  if (!qword_1EB7843D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7843D8);
  }

  return result;
}

unint64_t sub_1B1E142AC()
{
  result = qword_1EB7843E0;
  if (!qword_1EB7843E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7843E0);
  }

  return result;
}

uint64_t sub_1B1E14300(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B1E13E24(a1);
}

unint64_t sub_1B1E1431C()
{
  result = qword_1EB7843F0;
  if (!qword_1EB7843F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB783B50, &qword_1B1F29880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7843F0);
  }

  return result;
}

BOOL XPCKeyedDecoding.decodeNil(forKey:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_8_3(v1, v2);
  sub_1B1F1B840();
  v3 = sub_1B1F1A8E0();

  v4 = xpc_dictionary_get_value(v0, (v3 + 32));

  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x1B273FB80](v4);
  v6 = sub_1B1F1A530();
  swift_unknownObjectRelease();
  return v5 == v6;
}

float XPCKeyedDecoding.decode(_:forKey:)()
{
  OUTLINED_FUNCTION_3_5();
  XPCKeyedDecoding.decode(_:forKey:)();
  return v0;
}

uint64_t XPCKeyedDecoding.decode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  return sub_1B1E1469C(a1, a2, MEMORY[0x1E69E9F80], MEMORY[0x1E69E7360]);
}

{
  return sub_1B1E1469C(a1, a2, MEMORY[0x1E69E9F88], MEMORY[0x1E69E76D8]);
}

uint64_t sub_1B1E1469C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v18 = OUTLINED_FUNCTION_6_4();
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  sub_1B1F1B840();
  v12 = sub_1B1F1A8E0();

  v13 = a3(v15, v12 + 32);

  v16 = v13;
  v17 = 0;
  result = sub_1B1E13F00(&v16, a1, a2, a4, &v19);
  if (!v4)
  {
    return v19;
  }

  return result;
}

unint64_t XPCKeyedDecoding.decode(_:forKey:)()
{
  OUTLINED_FUNCTION_3_5();
  result = XPCKeyedDecoding.decode(_:forKey:)(v1, v2);
  if (!v0 && result > 0xFF)
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_3_5();
  result = XPCKeyedDecoding.decode(_:forKey:)(v1, v2);
  if (!v0)
  {
    if (result >> 16)
    {
      __break(1u);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_3_5();
  result = XPCKeyedDecoding.decode(_:forKey:)(v1, v2);
  if (!v0)
  {
    if (HIDWORD(result))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B1E1481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 8);
  v20 = *v3;
  v21 = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_1B1F1B840();
  v10 = sub_1B1F1A8E0();

  v11 = xpc_dictionary_get_value(v20, (v10 + 32));

  v19 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  sub_1B1E13F00(&v19, a1, a2, v12, &v22);
  result = swift_unknownObjectRelease();
  if (!v4)
  {
    v14 = v22;
    sub_1B1F1B0B0();
    swift_unknownObjectRetain();
    v15 = sub_1B1F1A730();
    *a3 = v14;
    a3[2] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1F2A3B0;
    *(inited + 56) = v8;
    *(inited + 64) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
    v20 = v7;
    sub_1B1F1A760();
    sub_1B1E17200(inited);
    result = swift_unknownObjectRelease();
    a3[1] = v20;
  }

  return result;
}

void XPCKeyedDecoding.decode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_34();
  a19 = v22;
  a20 = v23;
  v73 = v21;
  v69 = v25;
  v70 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v68 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v67 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_26();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v71 = &v64 - v37;
  v72 = v27;
  v66 = *(v27 - 8);
  v38 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_3();
  v41 = v40 - v39;
  v43 = v20[1];
  v74 = *v20;
  v42 = v74;
  v75 = v43;
  v44 = *(v29 + 16);
  v45 = *(v29 + 24);
  sub_1B1F1B840();
  v46 = sub_1B1F1A8E0();

  v47 = xpc_dictionary_get_value(v42, (v46 + 32));

  v79 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  v49 = v73;
  sub_1B1E13F00(&v79, v31, v29, v48, &a10);
  swift_unknownObjectRelease();
  if (!v49)
  {
    v50 = v67;
    v73 = v45;
    v51 = v68;
    v65 = v43;
    v52 = a10;
    v54 = v71;
    v53 = v72;
    sub_1B1E14D78(v72, a10, v72, v71);
    if (__swift_getEnumTagSinglePayload(v54, 1, v53) == 1)
    {
      (*(v50 + 8))(v71, v51);
      sub_1B1F1B0B0();
      v55 = sub_1B1F1A730();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843F8, &qword_1B1F2B720);
      v56 = v52;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B1F2A3B0;
      v58 = v73;
      *(inited + 56) = v44;
      *(inited + 64) = v58;
      __swift_allocate_boxed_opaque_existential_1((inited + 32));
      OUTLINED_FUNCTION_11_2(v44);
      (*(v59 + 16))();
      v74 = v65;
      sub_1B1F1A760();
      sub_1B1E17200(inited);
      v60 = v74;
      v77 = &type metadata for XPCDecoder;
      v61 = sub_1B1E141EC();
      v74 = v56;
      v75 = v60;
      v78 = v61;
      v76 = v55;
      swift_unknownObjectRetain();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1ABE0();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v62 = *(v66 + 32);
      v63 = v72;
      v62(v41, v71, v72);
      v62(v69, v41, v63);
    }
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E14D78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784420, &qword_1B1F2BFC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1B1F1A2F0();
  v11 = *(*(v10 - 8) + 64);
  if (MEMORY[0x1EEE9AC00](v10) == a1)
  {
    xpc_date_get_value(a2);
    sub_1B1F1A2C0();
    goto LABEL_8;
  }

  if (a1 == MEMORY[0x1E6969080])
  {
    v15 = swift_unknownObjectRetain();
    sub_1B1E0E308(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB784450, &unk_1B1F2BFE8);
    v14 = swift_dynamicCast() ^ 1;
    v13 = a4;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, a3);
  }

  if (sub_1B1F1A230() == a1 && xpc_string_get_string_ptr(a2))
  {
    sub_1B1F1A920();
    sub_1B1F1A220();

LABEL_8:
    if (swift_dynamicCast())
    {
      v13 = a4;
      v14 = 0;
    }

    else
    {
      v13 = a4;
      v14 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v13, v14, 1, a3);
  }

  return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
}

uint64_t XPCKeyedDecoding.nestedContainer<A>(keyedBy:forKey:)()
{
  OUTLINED_FUNCTION_6_4();
  result = sub_1B1E1481C(v1, v2, &v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_9_3();
    XPCDecoder.container<A>(keyedBy:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t XPCKeyedDecoding.nestedUnkeyedContainer(forKey:)()
{
  OUTLINED_FUNCTION_6_4();
  result = sub_1B1E1481C(v1, v2, &v4);
  if (!v0)
  {
    XPCDecoder.unkeyedContainer()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *XPCKeyedDecoding.superDecoder()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(*(sub_1B1F1AEB0() - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v14 = *v2;
  v11 = *(a1 + 24);
  sub_1B1F1B850();
  result = __swift_getEnumTagSinglePayload(v10, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2[3] = &type metadata for XPCDecoder;
    a2[4] = sub_1B1E141EC();
    sub_1B1E1481C(v10, a1, a2);
    OUTLINED_FUNCTION_11_2(v6);
    result = (*(v13 + 8))(v10, v6);
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a2);
    }
  }

  return result;
}

uint64_t *XPCKeyedDecoding.superDecoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_6_4();
  a3[3] = &type metadata for XPCDecoder;
  a3[4] = sub_1B1E141EC();
  result = sub_1B1E1481C(a1, a2, a3);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a3);
  }

  return result;
}

uint64_t sub_1B1E1549C()
{
  result = sub_1B1F1B5A0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E154EC()
{
  result = sub_1B1F1B5B0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E15594()
{
  result = sub_1B1F1B5E0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E155E4()
{
  result = sub_1B1F1B5C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E1570C()
{
  result = sub_1B1F1B5F0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B1E1575C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_1B1E1586C(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B1F1A760();
  }

  else
  {
    v3 = sub_1B1F1AFE0();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v5 = MEMORY[0x1E69E6158];
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1B1F1A760();
    sub_1B1F1AFA0();
    MEMORY[0x1B273D1A0](0xD000000000000013, 0x80000001B1F384D0);
    MEMORY[0x1B273D1A0](0x676E69727453, 0xE600000000000000);
    a1 = v8;
    MEMORY[0x1B273D1A0](0xD000000000000022, 0x80000001B1F384F0);
    sub_1B1F1AFD0();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    swift_willThrow();
  }

  return a1;
}

xpc_object_t sub_1B1E159F8()
{
  v1 = *(v0 + 16);
  result = xpc_array_get_value(*v0, v1);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v1 + 1;
    v3 = MEMORY[0x1B273FB80]();
    v4 = sub_1B1F1A530();
    swift_unknownObjectRelease();
    return (v3 == v4);
  }

  return result;
}

BOOL sub_1B1E15A70()
{
  v2 = OUTLINED_FUNCTION_0_6();
  result = xpc_array_get_BOOL(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v1 + 1;
  }

  return result;
}

uint64_t sub_1B1E15AA8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  string = xpc_array_get_string(*v0, v4);
  if (string)
  {
    string = sub_1B1F1A920();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1B1E1586C(string, v7);
  OUTLINED_FUNCTION_28();

  if (v1)
  {
    return v2;
  }

  if (!__OFADD__(v4, 1))
  {
    *(v0 + 16) = v4 + 1;
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1B1E15B48()
{
  v2 = OUTLINED_FUNCTION_0_6();
  xpc_array_get_double(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v1 + 1;
  }
}

void sub_1B1E15B80()
{
  v2 = OUTLINED_FUNCTION_0_6();
  xpc_array_get_double(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v1 + 1;
  }
}

int64_t sub_1B1E15BBC()
{
  v2 = OUTLINED_FUNCTION_0_6();
  result = xpc_array_get_int64(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 16) = v1 + 1;
  if (result < -128)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result > 127)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

int64_t sub_1B1E15C0C()
{
  v2 = OUTLINED_FUNCTION_0_6();
  result = xpc_array_get_int64(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 16) = v1 + 1;
  if (result < -32768)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= 0x8000)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

int64_t sub_1B1E15C5C()
{
  v2 = OUTLINED_FUNCTION_0_6();
  result = xpc_array_get_int64(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 16) = v1 + 1;
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E15CB4()
{
  v2 = OUTLINED_FUNCTION_0_6();
  result = v3(v2);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v1 + 1;
  }

  return result;
}

uint64_t sub_1B1E15CF4()
{
  v2 = OUTLINED_FUNCTION_0_6();
  result = xpc_array_get_uint64(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 16) = v1 + 1;
  if (result > 0xFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E15D38()
{
  v2 = OUTLINED_FUNCTION_0_6();
  result = xpc_array_get_uint64(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 16) = v1 + 1;
  if (result >> 16)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E15D7C()
{
  v2 = OUTLINED_FUNCTION_0_6();
  result = xpc_array_get_uint64(v2, v3);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 16) = v1 + 1;
  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1B1E15DC0()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_5_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v34 = v14 - v13;
  v15 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  v23 = *v0;
  v36 = v0;
  v24 = *(v0 + 16);
  v25 = xpc_array_get_value(v23, v24);
  v35 = v3;
  sub_1B1E14D78(v5, v25, v5, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    v32 = v9;
    v33 = v24;
    v31 = v7;
    (*(v17 + 8))(v22, v15);
    sub_1B1F1B0B0();
    swift_unknownObjectRetain();
    v26 = MEMORY[0x1E69E7CC0];
    v27 = sub_1B1F1A730();
    v40 = &type metadata for XPCDecoder;
    v28 = sub_1B1E141EC();
    v37 = v25;
    v38 = v26;
    v41 = v28;
    v39 = v27;
    swift_unknownObjectRetain();
    sub_1B1F1A760();
    sub_1B1F1A760();
    v29 = v34;
    sub_1B1F1ABE0();

    swift_unknownObjectRelease_n();
    if (v1)
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    if (!__OFADD__(v33, 1))
    {
      *(v36 + 16) = v33 + 1;
      (*(v32 + 32))(v31, v29, v5);
      goto LABEL_7;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v9 + 32))(v7, v22, v5);
    if (!__OFADD__(v24, 1))
    {
      *(v36 + 16) = v24 + 1;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}