unint64_t sub_26A5D8D4C()
{
  result = qword_2803AFA08;
  if (!qword_2803AFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA08);
  }

  return result;
}

uint64_t sub_26A5D8DA0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.preferFullScreen.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t (*EnvironmentValues.preferFullScreen.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D8D4C();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D8E5C;
}

uint64_t EnvironmentValues.currentIdiom.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_8_28(a1);
  v1 = sub_26A4D3394();
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_25_12();
  return OUTLINED_FUNCTION_9_27();
}

uint64_t (*EnvironmentValues.isModernizedSnippet.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D7100();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D8F40;
}

uint64_t (*EnvironmentValues.isSpotlightPlus.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D6D90();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D8F9C;
}

uint64_t (*EnvironmentValues.isSolariumEnabled.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D7194();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D8FF8;
}

uint64_t (*EnvironmentValues.isSmartDialog.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D7744();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D9054;
}

uint64_t (*EnvironmentValues.isPresentedWithSmartDialogText.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D7818();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D90B0;
}

uint64_t EnvironmentValues.componentLevelLineLimit.getter()
{
  sub_26A5D90FC();
  sub_26A84F998();
  return v1;
}

unint64_t sub_26A5D90FC()
{
  result = qword_2803AFA10;
  if (!qword_2803AFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA10);
  }

  return result;
}

uint64_t sub_26A5D9150()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.componentLevelLineLimit.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t EnvironmentValues.componentLevelLineLimit.modify()
{
  v1 = OUTLINED_FUNCTION_23_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_39(v2);
  v3 = sub_26A5D90FC();
  OUTLINED_FUNCTION_24_11(v3);
  OUTLINED_FUNCTION_30_7();
  v4 = *(v0 + 24);
  *v0 = *(v0 + 16);
  *(v0 + 8) = v4;
  return OUTLINED_FUNCTION_20_10();
}

void sub_26A5D9264(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_26A84F9A8();

  free(v1);
}

unint64_t EnvironmentValues.currentProcessString.getter()
{
  sub_26A5D937C();
  sub_26A84F998();
  result = 0x6867696C746F7053;
  switch(v1)
  {
    case 1:
      result = 1769105747;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6153656C69626F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26A5D937C()
{
  result = qword_2803AFA18;
  if (!qword_2803AFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA18);
  }

  return result;
}

uint64_t EnvironmentValues.currentProcessString.setter()
{
  v0 = sub_26A8524B8();

  if (v0 <= 3)
  {
    sub_26A5D937C();
    return sub_26A84F9A8();
  }

  return result;
}

uint64_t EnvironmentValues.currentProcessString.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_8_28(a1);
  *v1 = EnvironmentValues.currentProcessString.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_9_27();
}

uint64_t sub_26A5D94C8(uint64_t a1, char a2)
{
  if (a2)
  {

    v3 = sub_26A63CE30();
    if (v3 != 4)
    {
      *(a1 + 24) = v3;
      sub_26A5D937C();
      sub_26A84F9A8();
    }
  }

  else
  {
    result = sub_26A63CE30();
    if (result != 4)
    {
      *(a1 + 24) = result;
      sub_26A5D937C();
      return sub_26A84F9A8();
    }
  }

  return result;
}

uint64_t EnvironmentValues.sfCommands.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_8_28(a1);
  v1 = sub_26A5D7A9C();
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_25_12();
  return OUTLINED_FUNCTION_9_27();
}

uint64_t sub_26A5D95E8(uint64_t a1)
{
  *(v1 + 8) = OUTLINED_FUNCTION_32_1(a1);
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_18_10();
  }

  OUTLINED_FUNCTION_18_10();
}

uint64_t EnvironmentValues.interactionDelegate.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[6] = v1;
  v3[7] = sub_26A5D7294();
  sub_26A84F998();
  return OUTLINED_FUNCTION_20_10();
}

void sub_26A5D96D8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_33_4();
    sub_26A51D0F8(v2 + 16, v2 + 32, &qword_2803ACA10);
    sub_26A84F9A8();
    sub_26A4DBD10(v2 + 16, &qword_2803ACA10);
  }

  else
  {
    OUTLINED_FUNCTION_33_4();
    sub_26A84F9A8();
  }

  sub_26A4DBD10(v2, &qword_2803ACA10);

  free(v2);
}

double EnvironmentValues.snippetWidth.getter()
{
  sub_26A5D97EC();
  OUTLINED_FUNCTION_28_4();
  return v1;
}

unint64_t sub_26A5D97EC()
{
  result = qword_28157FAD0;
  if (!qword_28157FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FAD0);
  }

  return result;
}

uint64_t EnvironmentValues.snippetWidth.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_8_28(a1);
  v1 = sub_26A5D97EC();
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_25_12();
  return OUTLINED_FUNCTION_9_27();
}

unint64_t sub_26A5D98EC()
{
  result = qword_28157F810;
  if (!qword_28157F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F810);
  }

  return result;
}

uint64_t (*EnvironmentValues.isInAmbient.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D98EC();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D99B0;
}

unint64_t sub_26A5D99DC()
{
  result = qword_2803AFA20;
  if (!qword_2803AFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA20);
  }

  return result;
}

uint64_t EnvironmentValues.responseViewId.modify()
{
  v1 = OUTLINED_FUNCTION_23_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_39(v2);
  v3 = sub_26A5D99DC();
  OUTLINED_FUNCTION_24_11(v3);
  OUTLINED_FUNCTION_30_7();
  v4 = v0[3];
  *v0 = v0[2];
  v0[1] = v4;
  return OUTLINED_FUNCTION_20_10();
}

uint64_t sub_26A5D9AE4(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_26_7();
  return v2;
}

unint64_t sub_26A5D9B24()
{
  result = qword_2803AFA28;
  if (!qword_2803AFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA28);
  }

  return result;
}

uint64_t EnvironmentValues.viewId.modify()
{
  v1 = OUTLINED_FUNCTION_23_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_39(v2);
  v3 = sub_26A5D9B24();
  OUTLINED_FUNCTION_24_11(v3);
  OUTLINED_FUNCTION_30_7();
  v4 = v0[3];
  *v0 = v0[2];
  v0[1] = v4;
  return OUTLINED_FUNCTION_20_10();
}

void sub_26A5D9C44(uint64_t **a1)
{
  OUTLINED_FUNCTION_12_18(a1);
  if (v2)
  {

    OUTLINED_FUNCTION_6_31();
  }

  else
  {
    OUTLINED_FUNCTION_6_31();
  }

  free(v1);
}

double EnvironmentValues.scaleFactor.getter()
{
  sub_26A5D9CD8();
  OUTLINED_FUNCTION_28_4();
  return v1;
}

unint64_t sub_26A5D9CD8()
{
  result = qword_28157F7C8;
  if (!qword_28157F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F7C8);
  }

  return result;
}

uint64_t EnvironmentValues.scaleFactor.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_8_28(a1);
  v1 = sub_26A5D9CD8();
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_25_12();
  return OUTLINED_FUNCTION_9_27();
}

unint64_t sub_26A5D9E08()
{
  result = qword_28157DCD0;
  if (!qword_28157DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157DCD0);
  }

  return result;
}

uint64_t EnvironmentValues.containsComponentsWithActionSubject.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_8_28(a1);
  v1 = sub_26A5D9E08();
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_25_12();
  return OUTLINED_FUNCTION_9_27();
}

uint64_t sub_26A5D9EC8(uint64_t a1)
{
  *(v1 + 8) = OUTLINED_FUNCTION_32_1(a1);
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_18_10();
  }

  OUTLINED_FUNCTION_18_10();
}

uint64_t EnvironmentValues.response.getter()
{
  v0 = sub_26A5D9F80();
  OUTLINED_FUNCTION_2_39(v0, &type metadata for ResponseKey);

  return sub_26A84F998();
}

unint64_t sub_26A5D9F80()
{
  result = qword_28157F7D0;
  if (!qword_28157F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F7D0);
  }

  return result;
}

uint64_t EnvironmentValues.response.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26A51D0F8(a1, &v5 - v3, &qword_2803ADBC8);
  sub_26A5D9F80();
  sub_26A84F9A8();
  return sub_26A4DBD10(a1, &qword_2803ADBC8);
}

void (*EnvironmentValues.response.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8) - 8) + 64);
  v3[1] = __swift_coroFrameAllocStub(v4);
  v3[2] = __swift_coroFrameAllocStub(v4);
  v3[3] = __swift_coroFrameAllocStub(v4);
  v3[4] = sub_26A5D9F80();
  sub_26A84F998();
  return sub_26A5DA174;
}

void sub_26A5DA174(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_26A51D0F8((*a1)[3], (*a1)[2], &qword_2803ADBC8);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_26A51D0F8(v3[2], v3[1], &qword_2803ADBC8);
    sub_26A84F9A8();
    sub_26A4DBD10(v6, &qword_2803ADBC8);
  }

  else
  {
    sub_26A84F9A8();
  }

  sub_26A4DBD10(v4, &qword_2803ADBC8);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_26A5DA2A4(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_26_7();
  return v2;
}

unint64_t sub_26A5DA2E4()
{
  result = qword_28157F0A0[0];
  if (!qword_28157F0A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157F0A0);
  }

  return result;
}

uint64_t EnvironmentValues.componentName.modify()
{
  v1 = OUTLINED_FUNCTION_23_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_39(v2);
  v3 = sub_26A5DA2E4();
  OUTLINED_FUNCTION_24_11(v3);
  OUTLINED_FUNCTION_30_7();
  *v0 = v0[1];
  return OUTLINED_FUNCTION_20_10();
}

unint64_t sub_26A5DA424()
{
  result = qword_2803AFA30;
  if (!qword_2803AFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA30);
  }

  return result;
}

uint64_t (*EnvironmentValues.isContactImage.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5DA424();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5DA4E8;
}

uint64_t EnvironmentValues.playerIdentifier.modify()
{
  v1 = OUTLINED_FUNCTION_23_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_39(v2);
  v3 = sub_26A5D798C();
  OUTLINED_FUNCTION_24_11(v3);
  OUTLINED_FUNCTION_30_7();
  *v0 = v0[1];
  return OUTLINED_FUNCTION_20_10();
}

unint64_t sub_26A5DA588()
{
  result = qword_2803AFA38;
  if (!qword_2803AFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA38);
  }

  return result;
}

uint64_t (*EnvironmentValues.disableCarPlayScalingEffect.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5DA588();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_0_35();
  return sub_26A5DA64C;
}

uint64_t sub_26A5DA6A8(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_14_16();
  return v2;
}

uint64_t sub_26A5DA778()
{
  sub_26A5DB060();
  OUTLINED_FUNCTION_28_4();
  return v1;
}

uint64_t sub_26A5DA800(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_26_7();
  return v2;
}

uint64_t sub_26A5DA898()
{
  v0 = sub_26A5DB3A8();
  OUTLINED_FUNCTION_2_39(v0, &type metadata for HorizontalComponentPadding);

  return sub_26A84F998();
}

uint64_t sub_26A5DA8F8()
{
  v0 = sub_26A5DB204();
  OUTLINED_FUNCTION_2_39(v0, &type metadata for VerticalSnippetPadding);

  return sub_26A84F998();
}

uint64_t sub_26A5DA9FC(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_14_16();
  return v2;
}

uint64_t VRXMode.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x79616C70736964;
  }

  if (!a1)
  {
    return 0x6563696F76;
  }

  type metadata accessor for VRXMode();
  result = sub_26A8525E8();
  __break(1u);
  return result;
}

uint64_t sub_26A5DABA8(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_7_3();
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

_BYTE *sub_26A5DABF4(_BYTE *result, int a2, int a3)
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

uint64_t sub_26A5DACB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_26A5DACF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_26A5DAE84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A5DAEC8()
{
  result = qword_2803AFA40;
  if (!qword_2803AFA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFA48);
    sub_26A5DAF78(&qword_2803AFA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA40);
  }

  return result;
}

unint64_t sub_26A5DAF78(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    sub_26A4EC5B0(255, v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A5DAFB8()
{
  result = qword_2803AFA60;
  if (!qword_2803AFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA60);
  }

  return result;
}

unint64_t sub_26A5DB00C()
{
  result = qword_2803AFA70;
  if (!qword_2803AFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA70);
  }

  return result;
}

unint64_t sub_26A5DB060()
{
  result = qword_2803AFA78;
  if (!qword_2803AFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA78);
  }

  return result;
}

unint64_t sub_26A5DB0B4()
{
  result = qword_28157DFA0[0];
  if (!qword_28157DFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157DFA0);
  }

  return result;
}

unint64_t sub_26A5DB108()
{
  result = qword_2803AFA90;
  if (!qword_2803AFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA90);
  }

  return result;
}

unint64_t sub_26A5DB15C()
{
  result = qword_2803AFA98;
  if (!qword_2803AFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA98);
  }

  return result;
}

unint64_t sub_26A5DB1B0()
{
  result = qword_28157E2C8;
  if (!qword_28157E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E2C8);
  }

  return result;
}

unint64_t sub_26A5DB204()
{
  result = qword_2803AFAA0;
  if (!qword_2803AFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAA0);
  }

  return result;
}

unint64_t sub_26A5DB258()
{
  result = qword_2803AFAA8;
  if (!qword_2803AFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAA8);
  }

  return result;
}

unint64_t sub_26A5DB2AC()
{
  result = qword_28157E3C0[0];
  if (!qword_28157E3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157E3C0);
  }

  return result;
}

unint64_t sub_26A5DB300()
{
  result = qword_2803AFAB0;
  if (!qword_2803AFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAB0);
  }

  return result;
}

unint64_t sub_26A5DB354()
{
  result = qword_28157E060;
  if (!qword_28157E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E060);
  }

  return result;
}

unint64_t sub_26A5DB3A8()
{
  result = qword_28157DF98;
  if (!qword_28157DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157DF98);
  }

  return result;
}

unint64_t sub_26A5DB3FC()
{
  result = qword_28157EAA0;
  if (!qword_28157EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157EAA0);
  }

  return result;
}

unint64_t sub_26A5DB450()
{
  result = qword_2803AFAB8;
  if (!qword_2803AFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAB8);
  }

  return result;
}

unint64_t sub_26A5DB4A4()
{
  result = qword_2803AFAC0;
  if (!qword_2803AFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAC0);
  }

  return result;
}

unint64_t sub_26A5DB4F8()
{
  result = qword_28157E3B8;
  if (!qword_28157E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E3B8);
  }

  return result;
}

unint64_t sub_26A5DB54C()
{
  result = qword_2803AFAC8;
  if (!qword_2803AFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAC8);
  }

  return result;
}

unint64_t sub_26A5DB5A0()
{
  result = qword_28157DE18[0];
  if (!qword_28157DE18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157DE18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IncreasedContrastModeType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A5DB7D4()
{
  result = qword_2803AFAD0;
  if (!qword_2803AFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAD0);
  }

  return result;
}

unint64_t sub_26A5DB828(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A5DB86C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_39(uint64_t result)
{
  *v1 = result;
  *(result + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return sub_26A84F9A8();
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  result = (*a1)[1];
  v1[2] = v3;
  v1[3] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return sub_26A84F998();
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_26A84F9A8();
}

uint64_t OUTLINED_FUNCTION_16_11()
{

  return sub_26A84F9A8();
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_26A84F998();
}

uint64_t OUTLINED_FUNCTION_18_10()
{

  return sub_26A84F9A8();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_26A84F998();
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return sub_26A84F998();
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return sub_26A84F9A8();
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_26A84F998();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_26A84F998();
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return sub_26A51D0F8(v0, v0 + 16, v1);
}

uint64_t OUTLINED_FUNCTION_34_7()
{

  return sub_26A84F9A8();
}

void SmartDialog.init(animationSettings:animationTrigger:header:body:)()
{
  OUTLINED_FUNCTION_28_0();
  v17 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for SmartDialogAnimationSettings(0);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_41();
  *v12 = v8;
  v12[1] = v6;
  v12[2] = v4;
  v12[3] = v2;
  sub_26A5DBC44(v10, v15 - v14);
  v16 = type metadata accessor for SmartDialog();
  sub_26A4F9AB8(v17, v12 + *(v16 + 56));
  sub_26A5DBCC0(v10);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A5DBC44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogAnimationSettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5DBCC0(uint64_t a1)
{
  v2 = type metadata accessor for SmartDialogAnimationSettings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SmartDialog.init(header:body:)()
{
  OUTLINED_FUNCTION_28_0();
  v16[0] = v1;
  v16[1] = v0;
  v16[4] = v2;
  v16[5] = v3;
  v16[2] = v4;
  v16[3] = v5;
  sub_26A8511F8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v7 = type metadata accessor for SmartDialogAnimationSettings(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_18();
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  sub_26A8511E8();
  v12 = OUTLINED_FUNCTION_14_17();
  v13(v12);
  *&v11[*(v8 + 28)] = 0;
  sub_26A5D4DF4();
  sub_26A8516A8();
  v14 = OUTLINED_FUNCTION_18_11();
  v15(v14);
  OUTLINED_FUNCTION_20_11();
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFAF0);
  swift_allocObject();
  v16[6] = sub_26A84EBB8();
  sub_26A4DBCC8(&qword_2803AFAF8, &qword_2803AFAF0);
  sub_26A84EC48();

  SmartDialog.init(animationSettings:animationTrigger:header:body:)();
  sub_26A5DBCC0(v11);
  OUTLINED_FUNCTION_27_0();
}

void SmartDialog.init(animationSettings:animationTrigger:header:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_28_0();
  v54 = v22;
  v55 = v23;
  v49 = v25;
  v50 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v24;
  v34 = v33;
  v36 = v35;
  v53 = a22;
  v51 = v33;
  v52 = a21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFB10);
  OUTLINED_FUNCTION_15();
  v39 = v38;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v40);
  v42 = &v48 - v41;
  v43 = type metadata accessor for SmartDialogAnimationSettings(0);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_41();
  *v36 = v31;
  v36[1] = v29;
  v36[2] = v27;
  v36[3] = v49;
  sub_26A5DBC44(v34, v45 - v44);
  v56 = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFB18);
  sub_26A4DBCC8(&qword_2803AFB20, &qword_2803AFB18);
  sub_26A84EC58();
  sub_26A4DBCC8(&qword_2803AFB28, &qword_2803AFB10);
  v46 = sub_26A84EC48();
  (*(v39 + 8))(v42, v37);
  v56 = v54;
  v57 = v55;
  v58 = v52;
  v59 = v53;
  v47 = type metadata accessor for SmartDialog();
  sub_26A4F9AB8(v46, v36 + *(v47 + 56));

  sub_26A5DBCC0(v51);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A5DC3EC()
{
  sub_26A84FC08();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC4A8);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_3_11();
  sub_26A4DBCC8(v0, &qword_2803AC4A8);
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_35();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABF38);
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFB30);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_150();
  swift_getTupleTypeMetadata2();
  sub_26A851528();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  return sub_26A851228();
}

uint64_t sub_26A5DC5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = a5;
  v59[1] = a4;
  v83 = a1;
  v81 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD030);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = v59 - v10;
  v70 = a3;
  v75 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v71 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC4A8);
  v68 = sub_26A84F4F8();
  v74 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = v59 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABF38);
  v72 = sub_26A84F4F8();
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = v59 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFB30);
  v76 = sub_26A84F4F8();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v69 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = v59 - v17;
  v18 = a2;
  v64 = *(a2 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26A84F4F8();
  v63 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = v59 - v23;
  v85 = MEMORY[0x277CE0868];
  v65 = sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8);
  v91 = a4;
  v92 = v65;
  v61 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v89 = v22;
  v90 = WitnessTable;
  v59[2] = MEMORY[0x277CE0C08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v28 = v59 - v27;
  v60 = sub_26A84F4F8();
  v84 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v30 = v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v82 = v59 - v33;
  (*v83)(v32);
  sub_26A8502D8();
  sub_26A850BA8();

  (*(v64 + 8))(v21, v18);
  sub_26A8503C8();
  sub_26A850938();
  (*(v63 + 8))(v24, v22);
  sub_26A850D78();
  v89 = v22;
  v90 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26A850AA8();

  (*(v62 + 8))(v28, OpaqueTypeMetadata2);
  v35 = sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38);
  v88[8] = OpaqueTypeConformance2;
  v88[9] = v35;
  v36 = v60;
  v62 = swift_getWitnessTable();
  sub_26A80757C(v30);
  v63 = *(v84 + 8);
  v64 = v84 + 8;
  v37 = (v63)(v30, v36);
  v38 = v71;
  (*(v83 + 16))(v37);
  sub_26A850418();
  v39 = v66;
  v40 = v70;
  v41 = v79;
  sub_26A850BA8();

  (*(v75 + 8))(v38, v40);
  sub_26A850E78();
  v88[6] = v41;
  v88[7] = v65;
  v42 = v68;
  v43 = swift_getWitnessTable();
  v44 = v67;
  sub_26A850AA8();

  (*(v74 + 8))(v39, v42);
  swift_getKeyPath();
  v45 = sub_26A8513F8();
  v46 = v80;
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v45);
  v88[4] = v43;
  v88[5] = v35;
  v47 = v72;
  v48 = swift_getWitnessTable();
  v49 = v69;
  sub_26A8509A8();

  sub_26A5DDBF4(v46);
  (*(v77 + 8))(v44, v47);
  v50 = sub_26A4DBCC8(&qword_28157FB68, &qword_2803AFB30);
  v88[2] = v48;
  v88[3] = v50;
  v51 = v76;
  v52 = swift_getWitnessTable();
  v53 = v73;
  sub_26A80757C(v49);
  v54 = v78;
  v55 = *(v78 + 8);
  v55(v49, v51);
  v56 = v82;
  (*(v84 + 16))(v30, v82, v36);
  v89 = v30;
  (*(v54 + 16))(v49, v53, v51);
  v90 = v49;
  v88[0] = v36;
  v88[1] = v51;
  v86 = v62;
  v87 = v52;
  sub_26A74E564(&v89, 2, v88);
  v55(v53, v51);
  v57 = v63;
  (v63)(v56, v36);
  v55(v49, v51);
  return v57(v30, v36);
}

void SmartDialog.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v79 = v0;
  v2 = v1;
  v106 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC4A8);
  v4 = sub_26A84F4F8();
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_3_11();
  v105 = v6;
  v126 = v5;
  v127 = sub_26A4DBCC8(v7, &qword_2803AC4A8);
  OUTLINED_FUNCTION_58();
  v104 = v8;
  v119 = v4;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_35();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABF38);
  sub_26A84F4F8();
  v78 = v2;
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15_15();
  sub_26A84F4F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFB30);
  OUTLINED_FUNCTION_150();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_150();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_15_15();
  sub_26A851528();
  OUTLINED_FUNCTION_1_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_12();
  v9 = sub_26A851238();
  OUTLINED_FUNCTION_15();
  v86 = v10;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v90 = v15;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v17);
  v18 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v96 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v21);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  OUTLINED_FUNCTION_19_12();
  v85 = sub_26A84F4F8();
  OUTLINED_FUNCTION_2_34();
  v98 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFB38);
  OUTLINED_FUNCTION_19_12();
  v88 = sub_26A84F4F8();
  OUTLINED_FUNCTION_2_34();
  v99 = v25;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v27);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFB40);
  OUTLINED_FUNCTION_19_12();
  v92 = sub_26A84F4F8();
  OUTLINED_FUNCTION_2_34();
  v100 = v28;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v30);
  v94 = type metadata accessor for SmartDialogAnimationModifier(255);
  v93 = sub_26A84F4F8();
  OUTLINED_FUNCTION_2_34();
  v101 = v31;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v33);
  v95 = sub_26A84F4F8();
  OUTLINED_FUNCTION_2_34();
  v102 = v34;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v36);
  v37 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v103 = v38;
  MEMORY[0x28223BE20](v39);
  v91 = &v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_0(&v77 - v42);
  sub_26A5DC3EC();
  sub_26A851458();
  v76 = OUTLINED_FUNCTION_7_31();
  v43 = v80;
  sub_26A850BD8();
  OUTLINED_FUNCTION_10_23();
  v44(v13, v9);
  v124 = v76;
  v125 = MEMORY[0x277CDFC60];
  v45 = swift_getWitnessTable();
  v46 = v81;
  View.makeSelectable<A>(_:)(MEMORY[0x277D837D0], v14, MEMORY[0x277D837D0], v45);
  OUTLINED_FUNCTION_10_23();
  v47(v43, v14);
  swift_getKeyPath();
  LOBYTE(v119) = 1;
  v48 = sub_26A5B3C60();
  v122 = v45;
  v123 = v48;
  v49 = swift_getWitnessTable();
  v50 = v82;
  sub_26A8509A8();

  OUTLINED_FUNCTION_10_23();
  v51(v46, v18);
  v119 = 0;
  WitnessTable = 0;
  v121 = 2;
  v52 = sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
  v117 = v49;
  v118 = v52;
  v53 = v85;
  v54 = swift_getWitnessTable();
  v55 = v83;
  View.overrideComponentHorizontalPadding(_:)();
  OUTLINED_FUNCTION_10_23();
  v56(v50, v53);
  v119 = 0;
  WitnessTable = 0;
  v121 = 2;
  v57 = sub_26A4DBCC8(&qword_2803AFB48, &qword_2803AFB38);
  v115 = v54;
  v116 = v57;
  v58 = OUTLINED_FUNCTION_21_11();
  v59 = v84;
  View.overrideSnippetVerticalPadding(_:)();
  OUTLINED_FUNCTION_10_23();
  v60(v55, v46);
  v61 = *(v78 + 56);
  v62 = sub_26A4DBCC8(&qword_2803AFB50, &qword_2803AFB40);
  v113 = v58;
  v114 = v62;
  v63 = OUTLINED_FUNCTION_21_11();
  v64 = v87;
  MEMORY[0x26D662ED0](v79 + v61, v46, v94, v63);
  OUTLINED_FUNCTION_10_23();
  v65(v59, v46);
  v66 = sub_26A5DDA90();
  v111 = v63;
  v112 = v66;
  v67 = OUTLINED_FUNCTION_21_11();
  v68 = v89;
  View.ambientDrawable(renderWithDrawingGroup:)(1, v46, v67);
  OUTLINED_FUNCTION_10_23();
  v69(v64, v46);
  v70 = sub_26A4D38BC();
  v109 = v67;
  v110 = v70;
  v71 = OUTLINED_FUNCTION_21_11();
  v72 = v91;
  sub_26A850AD8();
  OUTLINED_FUNCTION_10_23();
  v73(v68, v46);
  v107 = v71;
  v108 = MEMORY[0x277CE0688];
  swift_getWitnessTable();
  v74 = v97;
  sub_26A80757C(v72);
  v75 = *(v103 + 8);
  v75(v72, v37);
  sub_26A80757C(v74);
  v75(v74, v37);
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A5DDA90()
{
  result = qword_2803AFB58[0];
  if (!qword_2803AFB58[0])
  {
    type metadata accessor for SmartDialogAnimationModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803AFB58);
  }

  return result;
}

unint64_t sub_26A5DDB38()
{
  result = sub_26A5046B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SmartDialogAnimationModifier(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A5DDBF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_31()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_11()
{
  *(v0 + *(v2 + 32)) = v3;

  return sub_26A5DBC44(v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return swift_getWitnessTable();
}

void sub_26A5DDD40(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *&v241 = a2;
  v244 = a1;
  sub_26A84AE48();
  OUTLINED_FUNCTION_15();
  v237 = v8;
  v238 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_15();
  v235 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB20);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v236 = &v231 - v12;
  v240 = sub_26A84BB08();
  OUTLINED_FUNCTION_15();
  v233 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_15();
  v232 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_15();
  v242 = v18;
  v243 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v234 = v20;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v21);
  v239 = &v231 - v22;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v23);
  v25 = &v231 - v24;
  v26 = sub_26A84E278();
  OUTLINED_FUNCTION_15();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v39 = OUTLINED_FUNCTION_21_12(v31, v32, v33, v34, v35, v36, v37, v38, v231);
  v3(v39, v6, v26);
  v40 = (*(v28 + 88))(v4, v26);
  if (v40 == *MEMORY[0x277D63720])
  {
    v41 = OUTLINED_FUNCTION_12_19();
    v42(v41);
    v43 = OUTLINED_FUNCTION_11_23();
    (v3)(v43);
    OUTLINED_FUNCTION_10_24();
    v44 = OUTLINED_FUNCTION_24_12();
    v45 = OUTLINED_FUNCTION_7_32(v44);
    v46(v45);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v231 = "perform(using:response:)";
    v232 = v47;
    OUTLINED_FUNCTION_2_40();
    if (v4 == 1)
    {
      sub_26A7C7120(v48, v49, v50, v51, v52, v53, v54, 118, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_23_11();
      v55 = v25;
      sub_26A5E8BEC();
    }

    else
    {
      sub_26A7C7120(v48, v49, v50, v51, v52, v53, v54, 121, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_23_11();
      v55 = v25;
      sub_26A5E8BF0();
    }

    return;
  }

  if (v40 == *MEMORY[0x277D63768])
  {
    v56 = OUTLINED_FUNCTION_12_19();
    v57(v56);
    v58 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFBF0) + 48));
    v59 = v4;
    v60 = v242;
    (*(v243 + 4))(v25, v59, v242);
    v61 = OUTLINED_FUNCTION_14_18();
    (v3)(v61);
    OUTLINED_FUNCTION_10_24();
    v62 = OUTLINED_FUNCTION_24_12();
    v63 = OUTLINED_FUNCTION_7_32(v62);
    v64(v63);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v231 = "perform(using:response:)";
    v232 = v65;
    OUTLINED_FUNCTION_2_40();
    if (v58 == 1)
    {
      sub_26A7C7120(v66, v67, v68, v69, v70, v71, v72, 127, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_23_11();
      v73 = OUTLINED_FUNCTION_40_5();
      InteractionDelegateWrapper.navigateTo(nextSnippet:)(v73);
    }

    else
    {
      sub_26A7C7120(v66, v67, v68, v69, v70, v71, v72, 130, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_23_11();
      v91 = OUTLINED_FUNCTION_40_5();
      InteractionDelegateWrapper.perform(showResponse:)(v91);
    }

    (*(v243 + 1))(v25, v60);
    return;
  }

  if (v40 == *MEMORY[0x277D63758])
  {
    v74 = OUTLINED_FUNCTION_12_19();
    v75(v74);
    v76 = v4[1];
    v243 = *v4;
    v77 = *(v4 + 16);
    v78 = OUTLINED_FUNCTION_14_18();
    (v3)(v78);
    OUTLINED_FUNCTION_28_5();
    v79 = swift_allocObject();
    v80 = OUTLINED_FUNCTION_17_12(v79);
    v81(v80);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v231 = "perform(using:response:)";
    v232 = v82;
    OUTLINED_FUNCTION_4_33();
    if (v77 == 1)
    {
      sub_26A7C7120(v83, v84, v85, v86, v87, v88, v89, 136, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_43_3();
      v90._countAndFlagsBits = v243;
      v90._object = v76;
      InteractionDelegateWrapper.navigateTo(nextSnippetWithUtterance:)(v90);
    }

    else
    {
      sub_26A7C7120(v83, v84, v85, v86, v87, v88, v89, 139, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_43_3();
      v108._countAndFlagsBits = v243;
      v108._object = v76;
      InteractionDelegateWrapper.perform(machineUtterance:)(v108);
    }

    return;
  }

  if (v40 == *MEMORY[0x277D63708])
  {
    v92 = OUTLINED_FUNCTION_12_19();
    v93(v92);
    v94 = OUTLINED_FUNCTION_11_23();
    (v3)(v94);
    OUTLINED_FUNCTION_5_34();
    if (!v95)
    {
      v123 = OUTLINED_FUNCTION_24_12();
      v124 = OUTLINED_FUNCTION_3_36(v123);
      v125(v124);
      sub_26A851E88();
      OUTLINED_FUNCTION_0_36();
      v231 = "perform(using:response:)";
      v232 = v126;
      OUTLINED_FUNCTION_1_40();
      v134 = 148;
LABEL_25:
      sub_26A7C7120(v127, v128, v129, v130, v131, v132, v133, v134, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_40_5();
      InteractionDelegateWrapper.perform(sfCommand:)();
      goto LABEL_26;
    }

    v96 = OUTLINED_FUNCTION_24_12();
    v97 = OUTLINED_FUNCTION_3_36(v96);
    v98(v97);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v231 = "perform(using:response:)";
    v232 = v99;
    OUTLINED_FUNCTION_1_40();
    v107 = 145;
    goto LABEL_18;
  }

  if (v40 == *MEMORY[0x277D63750])
  {
    v109 = OUTLINED_FUNCTION_12_19();
    v110(v109);
    v111 = OUTLINED_FUNCTION_11_23();
    (v3)(v111);
    OUTLINED_FUNCTION_5_34();
    if (v95)
    {
      v112 = OUTLINED_FUNCTION_24_12();
      v113 = OUTLINED_FUNCTION_3_36(v112);
      v114(v113);
      sub_26A851E88();
      OUTLINED_FUNCTION_0_36();
      v231 = "perform(using:response:)";
      v232 = v115;
      OUTLINED_FUNCTION_1_40();
      sub_26A7C7120(v116, v117, v118, v119, v120, v121, v122, 154, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_29_9();
      v157 = [objc_opt_self() wrapCommandInStartLocalRequest_];
      sub_26A5E8BEC();
    }

    else
    {
      v146 = OUTLINED_FUNCTION_24_12();
      v147 = OUTLINED_FUNCTION_3_36(v146);
      v148(v147);
      sub_26A851E88();
      OUTLINED_FUNCTION_0_36();
      v231 = "perform(using:response:)";
      v232 = v149;
      OUTLINED_FUNCTION_1_40();
      sub_26A7C7120(v150, v151, v152, v153, v154, v155, v156, 157, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
      OUTLINED_FUNCTION_29_9();
      v157 = [objc_opt_self() wrapCommandInStartLocalRequest_];
      sub_26A5E8BF0();
    }

    return;
  }

  if (v40 != *MEMORY[0x277D63740])
  {
    if (v40 == *MEMORY[0x277D63730])
    {
      v158 = OUTLINED_FUNCTION_12_19();
      v159(v158);
      v161 = v237;
      v160 = v238;
      v162 = v235;
      (*(v237 + 32))(v235, v4, v238);
      sub_26A851E98();
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_9_28();
      j__OUTLINED_FUNCTION_209_0(v163, v164, v165, v166, v167, 189, v168, 24, v231);
      InteractionDelegateWrapper.perform(appPunchout:shouldExplicitlyClearContext:)(v162, 0);
      (*(v161 + 8))(v162, v160);
      return;
    }

    if (v40 != *MEMORY[0x277D63728])
    {
      if (v40 == *MEMORY[0x277D63760])
      {
        v201 = OUTLINED_FUNCTION_14_18();
        (v3)(v201);
        OUTLINED_FUNCTION_27_8();
        v202 = OUTLINED_FUNCTION_24_12();
        v203 = OUTLINED_FUNCTION_7_32(v202);
        v204(v203);
        sub_26A851E88();
        OUTLINED_FUNCTION_0_36();
        v231 = "perform(using:response:)";
        v232 = v205;
        OUTLINED_FUNCTION_2_40();
        sub_26A7C7120(v206, v207, v208, v209, v210, v211, v212, 192, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
        OUTLINED_FUNCTION_23_11();
      }

      else
      {
        sub_26A851E98();
        OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_9_28();
        j__OUTLINED_FUNCTION_198_0(v217, v218, v219, v220, v221, 202, v222, 24, v231);
        (*(v28 + 8))(v4, v26);
      }

      return;
    }

    v185 = OUTLINED_FUNCTION_12_19();
    v186(v185);
    v187 = OUTLINED_FUNCTION_11_23();
    (v3)(v187);
    OUTLINED_FUNCTION_5_34();
    if (!v95)
    {
      v213 = OUTLINED_FUNCTION_24_12();
      v214 = OUTLINED_FUNCTION_3_36(v213);
      v215(v214);
      sub_26A851E88();
      OUTLINED_FUNCTION_0_36();
      v231 = "perform(using:response:)";
      v232 = v216;
      OUTLINED_FUNCTION_1_40();
      v134 = 198;
      goto LABEL_25;
    }

    v188 = OUTLINED_FUNCTION_24_12();
    v189 = OUTLINED_FUNCTION_3_36(v188);
    v190(v189);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v231 = "perform(using:response:)";
    v232 = v191;
    OUTLINED_FUNCTION_1_40();
    v107 = 195;
LABEL_18:
    sub_26A7C7120(v100, v101, v102, v103, v104, v105, v106, v107, v231, v232, v233, v234, v235, SHIDWORD(v235), v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, v243, v244, v245, *v246, v247);
    OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_40_5();
    InteractionDelegateWrapper.navigateTo(nextSnippet:)();
LABEL_26:

    return;
  }

  v135 = OUTLINED_FUNCTION_12_19();
  v136(v135);
  v137 = *v4;
  v138 = *(v4 + 16);
  sub_26A5DFF30(v241, v5);
  v139 = v242;
  if (__swift_getEnumTagSinglePayload(v5, 1, v242) == 1)
  {

    sub_26A5DFFA0(v5, &qword_2803ADBC8);
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_9_28();
    j__OUTLINED_FUNCTION_201_0(v140, v141, v142, v143, v144, 163, v145, 24, v231);
    return;
  }

  v169 = v243;
  v170 = v239;
  (*(v243 + 4))(v239, v5, v139);
  v171 = sub_26A84E3D8();
  v172 = v236;
  v173 = OUTLINED_FUNCTION_5_21();
  sub_26A507618(v173, v174, v171, v175);
  v176 = v172;

  v177 = v172;
  v178 = v240;
  if (__swift_getEnumTagSinglePayload(v177, 1, v240) == 1)
  {

    sub_26A5DFFA0(v176, &qword_2803ABB20);
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_9_28();
    j__OUTLINED_FUNCTION_212_0(v179, v180, v181, v182, v183, 168, v184, 24, v231);
LABEL_41:
    (*(v169 + 8))(v170, v139);
    return;
  }

  v193 = v232;
  v192 = v233;
  (*(v233 + 4))(v232, v176, v178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFBE0);
  v194 = swift_allocObject();
  v241 = xmmword_26A8570D0;
  *(v194 + 16) = xmmword_26A8570D0;
  v195 = sub_26A84D608();
  v196 = MEMORY[0x277D63548];
  *(v194 + 56) = v195;
  *(v194 + 64) = v196;
  __swift_allocate_boxed_opaque_existential_1((v194 + 32));
  OUTLINED_FUNCTION_5_21();
  sub_26A84D5F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFBE8);
  v197 = OUTLINED_FUNCTION_42_5();
  *(v197 + 16) = v241;
  v198 = (*(v192 + 2))(&v137[v197], v193, v178);
  OUTLINED_FUNCTION_32_7(v198, v199, MEMORY[0x277D84F90]);
  if (v137)
  {
    v200 = v137;
    sub_26A851E98();
    OUTLINED_FUNCTION_37_9();
    j__OUTLINED_FUNCTION_170_0();

    (*(v192 + 1))(v193, v178);
    goto LABEL_41;
  }

  sub_26A851E88();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_9_28();
  j__OUTLINED_FUNCTION_204_0(v223, v224, v225, v226, v227, 179, v228, 24, v231);
  v229 = v234;
  if (v138)
  {
    InteractionDelegateWrapper.navigateTo(nextSnippet:)(v234);
  }

  else
  {
    InteractionDelegateWrapper.perform(showResponse:)(v234);
  }

  v230 = *(v169 + 8);
  v230(v229, v139);
  (*(v192 + 1))(v193, v178);
  v230(v170, v139);
}

void Command.perform(using:response:)(uint64_t a1, uint64_t a2)
{
  *&v258 = a2;
  v262 = a1;
  sub_26A84AE48();
  OUTLINED_FUNCTION_15();
  v254 = v7;
  v255 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_15();
  v253 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABB20);
  OUTLINED_FUNCTION_79(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v252 = &v248 - v11;
  v257 = sub_26A84BB08();
  OUTLINED_FUNCTION_15();
  v250 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_15();
  v249 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  OUTLINED_FUNCTION_79(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_15();
  v260 = v18;
  v261 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v251 = v19;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v20);
  v256 = &v248 - v21;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v22);
  v24 = &v248 - v23;
  v25 = sub_26A84E278();
  OUTLINED_FUNCTION_15();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v40 = OUTLINED_FUNCTION_21_12(v32, v33, v34, v35, v36, v37, v38, v39, v248);
  v3(v40, v2, v25);
  v41 = (*(v27 + 88))(v4, v25);
  if (v41 == *MEMORY[0x277D63720])
  {
    v42 = OUTLINED_FUNCTION_13_19();
    v43(v42);
    v44 = *v4;
    v45 = *(v4 + 8);
    v3(&v248 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v25);
    OUTLINED_FUNCTION_10_24();
    v46 = OUTLINED_FUNCTION_26_8();
    v47 = OUTLINED_FUNCTION_8_29(v46);
    v48(v47);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v248 = "perform(using:response:)";
    v249 = v49;
    OUTLINED_FUNCTION_2_40();
    if (v45 == 1)
    {
      sub_26A7C7120(v50, v51, v52, v53, v54, v55, v56, 20, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_23_11();
      v57 = v44;
      OUTLINED_FUNCTION_25_13();
      sub_26A5E8BEC(v57, &v264);
    }

    else
    {
      sub_26A7C7120(v50, v51, v52, v53, v54, v55, v56, 23, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_23_11();
      v57 = v44;
      OUTLINED_FUNCTION_25_13();
      sub_26A5E8BF0();
    }

    sub_26A53F320(&v264);

    return;
  }

  v248 = v2;
  if (v41 == *MEMORY[0x277D63768])
  {
    v58 = OUTLINED_FUNCTION_13_19();
    v59(v58);
    v60 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFBF0) + 48));
    v62 = v260 + 32;
    v61 = *(v260 + 4);
    v260 = v24;
    v63 = v24;
    v64 = v261;
    v61(v63, v4, v261);
    v3(&v248 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v248, v25);
    OUTLINED_FUNCTION_28_5();
    v65 = OUTLINED_FUNCTION_44_3();
    v66 = OUTLINED_FUNCTION_31_10(v65);
    v67(v66);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v248 = "perform(using:response:)";
    v249 = v68;
    OUTLINED_FUNCTION_2_40();
    if (v60 == 1)
    {
      sub_26A7C7120(v69, v70, v71, v72, v73, v74, v75, 29, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_23_11();
      OUTLINED_FUNCTION_25_13();
      v76 = v260;
      InteractionDelegateWrapper.navigateTo(nextSnippet:)(v260);
    }

    else
    {
      sub_26A7C7120(v69, v70, v71, v72, v73, v74, v75, 32, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_23_11();
      OUTLINED_FUNCTION_25_13();
      v76 = v260;
      InteractionDelegateWrapper.perform(showResponse:)(v260);
    }

    sub_26A53F320(&v264);
    (*(v62 - 3))(v76, v64);
    return;
  }

  if (v41 == *MEMORY[0x277D63758])
  {
    v77 = OUTLINED_FUNCTION_13_19();
    v78(v77);
    v79 = v4[1];
    v261 = *v4;
    v80 = *(v4 + 16);
    v81 = OUTLINED_FUNCTION_18_12();
    (v3)(v81);
    OUTLINED_FUNCTION_28_5();
    v82 = OUTLINED_FUNCTION_44_3();
    v83 = OUTLINED_FUNCTION_17_12(v82);
    v84(v83);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v248 = "perform(using:response:)";
    v249 = v85;
    OUTLINED_FUNCTION_4_33();
    if (v80 == 1)
    {
      sub_26A7C7120(v86, v87, v88, v89, v90, v91, v92, 38, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_25_13();
      v93._countAndFlagsBits = v261;
      v93._object = v79;
      InteractionDelegateWrapper.navigateTo(nextSnippetWithUtterance:)(v93);
    }

    else
    {
      sub_26A7C7120(v86, v87, v88, v89, v90, v91, v92, 41, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_25_13();
      v107._countAndFlagsBits = v261;
      v107._object = v79;
      InteractionDelegateWrapper.perform(machineUtterance:)(v107);
    }

    goto LABEL_33;
  }

  if (v41 == *MEMORY[0x277D63748])
  {
    (*(v27 + 96))(v4, v25);
    v94 = *v4;
    v95 = OUTLINED_FUNCTION_18_12();
    (v3)(v95);
    OUTLINED_FUNCTION_27_8();
    v96 = OUTLINED_FUNCTION_26_8();
    v97 = OUTLINED_FUNCTION_20_12(v96);
    v98(v97);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v248 = "perform(using:response:)";
    v249 = v99;
    OUTLINED_FUNCTION_2_40();
    sub_26A7C7120(v100, v101, v102, v103, v104, v105, v106, 64, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
    OUTLINED_FUNCTION_23_11();
    sub_26A62033C(v94);

    return;
  }

  if (v41 == *MEMORY[0x277D63708])
  {
    v108 = OUTLINED_FUNCTION_13_19();
    v109(v108);
    v110 = *v4;
    v111 = OUTLINED_FUNCTION_18_12();
    (v3)(v111);
    OUTLINED_FUNCTION_5_34();
    if (!v112)
    {
      v140 = OUTLINED_FUNCTION_26_8();
      v141 = OUTLINED_FUNCTION_3_36(v140);
      v142(v141);
      sub_26A851E88();
      OUTLINED_FUNCTION_0_36();
      v248 = "perform(using:response:)";
      v249 = v143;
      OUTLINED_FUNCTION_1_40();
      v151 = 50;
LABEL_27:
      sub_26A7C7120(v144, v145, v146, v147, v148, v149, v150, v151, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_25_13();
      InteractionDelegateWrapper.perform(sfCommand:)();
      goto LABEL_28;
    }

    v113 = OUTLINED_FUNCTION_26_8();
    v114 = OUTLINED_FUNCTION_3_36(v113);
    v115(v114);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v248 = "perform(using:response:)";
    v249 = v116;
    OUTLINED_FUNCTION_1_40();
    v124 = 47;
    goto LABEL_22;
  }

  if (v41 == *MEMORY[0x277D63750])
  {
    v125 = OUTLINED_FUNCTION_13_19();
    v126(v125);
    v127 = *v4;
    v128 = OUTLINED_FUNCTION_18_12();
    (v3)(v128);
    OUTLINED_FUNCTION_5_34();
    if (v112)
    {
      v129 = OUTLINED_FUNCTION_26_8();
      v130 = OUTLINED_FUNCTION_3_36(v129);
      v131(v130);
      sub_26A851E88();
      OUTLINED_FUNCTION_0_36();
      v248 = "perform(using:response:)";
      v249 = v132;
      OUTLINED_FUNCTION_1_40();
      sub_26A7C7120(v133, v134, v135, v136, v137, v138, v139, 56, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_25_13();
      v174 = [objc_opt_self() wrapCommandInStartLocalRequest_];
      (sub_26A5E8BEC)();
    }

    else
    {
      v163 = OUTLINED_FUNCTION_26_8();
      v164 = OUTLINED_FUNCTION_3_36(v163);
      v165(v164);
      sub_26A851E88();
      OUTLINED_FUNCTION_0_36();
      v248 = "perform(using:response:)";
      v249 = v166;
      OUTLINED_FUNCTION_1_40();
      sub_26A7C7120(v167, v168, v169, v170, v171, v172, v173, 59, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_25_13();
      v174 = [objc_opt_self() wrapCommandInStartLocalRequest_];
      sub_26A5E8BF0();
    }

    goto LABEL_33;
  }

  if (v41 != *MEMORY[0x277D63740])
  {
    if (v41 == *MEMORY[0x277D63730])
    {
      v175 = OUTLINED_FUNCTION_13_19();
      v176(v175);
      v178 = v253;
      v177 = v254;
      v179 = v255;
      (*(v254 + 32))(v253, v4, v255);
      sub_26A851E98();
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_9_28();
      j__OUTLINED_FUNCTION_209_0(v180, v181, v182, v183, v184, 94, v185, 24, v248);
      OUTLINED_FUNCTION_25_13();
      InteractionDelegateWrapper.perform(appPunchout:shouldExplicitlyClearContext:)(v178, 0);
      sub_26A53F320(&v264);
      (*(v177 + 8))(v178, v179);
      return;
    }

    if (v41 != *MEMORY[0x277D63728])
    {
      if (v41 == *MEMORY[0x277D63760])
      {
        v3(&v248 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v248, v25);
        OUTLINED_FUNCTION_27_8();
        v218 = OUTLINED_FUNCTION_26_8();
        v219 = OUTLINED_FUNCTION_20_12(v218);
        v220(v219);
        sub_26A851E88();
        OUTLINED_FUNCTION_0_36();
        v248 = "perform(using:response:)";
        v249 = v221;
        OUTLINED_FUNCTION_2_40();
        sub_26A7C7120(v222, v223, v224, v225, v226, v227, v228, 105, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
        OUTLINED_FUNCTION_23_11();
      }

      else
      {
        sub_26A851E98();
        OUTLINED_FUNCTION_1_12();
        OUTLINED_FUNCTION_9_28();
        j__OUTLINED_FUNCTION_198_0(v233, v234, v235, v236, v237, 107, v238, 24, v248);
        (*(v27 + 8))(v4, v25);
      }

      return;
    }

    v202 = OUTLINED_FUNCTION_13_19();
    v203(v202);
    v110 = *v4;
    v204 = OUTLINED_FUNCTION_18_12();
    (v3)(v204);
    OUTLINED_FUNCTION_5_34();
    if (!v112)
    {
      v229 = OUTLINED_FUNCTION_26_8();
      v230 = OUTLINED_FUNCTION_3_36(v229);
      v231(v230);
      sub_26A851E88();
      OUTLINED_FUNCTION_0_36();
      v248 = "perform(using:response:)";
      v249 = v232;
      OUTLINED_FUNCTION_1_40();
      v151 = 101;
      goto LABEL_27;
    }

    v205 = OUTLINED_FUNCTION_26_8();
    v206 = OUTLINED_FUNCTION_3_36(v205);
    v207(v206);
    sub_26A851E88();
    OUTLINED_FUNCTION_0_36();
    v248 = "perform(using:response:)";
    v249 = v208;
    OUTLINED_FUNCTION_1_40();
    v124 = 98;
LABEL_22:
    sub_26A7C7120(v117, v118, v119, v120, v121, v122, v123, v124, v248, v249, v250, v251, v252, SHIDWORD(v252), v253, v254, v255, v256, v257, v258, *(&v258 + 1), v259, v260, v261, v262, v263, v264);
    OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_25_13();
    InteractionDelegateWrapper.navigateTo(nextSnippet:)();
LABEL_28:

LABEL_33:
    sub_26A53F320(&v264);
    return;
  }

  v152 = OUTLINED_FUNCTION_13_19();
  v153(v152);
  v154 = *v4;
  v155 = *(v4 + 16);
  sub_26A5DFF30(v258, v5);
  v156 = v261;
  if (__swift_getEnumTagSinglePayload(v5, 1, v261) == 1)
  {

    sub_26A5DFFA0(v5, &qword_2803ADBC8);
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_9_28();
    j__OUTLINED_FUNCTION_201_0(v157, v158, v159, v160, v161, 68, v162, 24, v248);
    return;
  }

  v186 = v260;
  v187 = v256;
  (*(v260 + 4))(v256, v5, v156);
  v188 = sub_26A84E3D8();
  v189 = v252;
  v190 = OUTLINED_FUNCTION_5_21();
  sub_26A507618(v190, v191, v188, v192);
  v193 = v189;

  v194 = v189;
  v195 = v257;
  if (__swift_getEnumTagSinglePayload(v194, 1, v257) == 1)
  {

    sub_26A5DFFA0(v193, &qword_2803ABB20);
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_9_28();
    j__OUTLINED_FUNCTION_212_0(v196, v197, v198, v199, v200, 73, v201, 24, v248);
LABEL_44:
    (*(v186 + 8))(v187, v156);
    return;
  }

  v209 = v249;
  v210 = v250;
  (*(v250 + 4))(v249, v193, v195);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFBE0);
  v211 = swift_allocObject();
  v258 = xmmword_26A8570D0;
  *(v211 + 16) = xmmword_26A8570D0;
  v212 = sub_26A84D608();
  v213 = MEMORY[0x277D63548];
  *(v211 + 56) = v212;
  *(v211 + 64) = v213;
  __swift_allocate_boxed_opaque_existential_1((v211 + 32));
  OUTLINED_FUNCTION_5_21();
  sub_26A84D5F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFBE8);
  v214 = OUTLINED_FUNCTION_42_5();
  *(v214 + 16) = v258;
  v215 = (*(v210 + 2))(&v154[v214], v209, v195);
  OUTLINED_FUNCTION_32_7(v215, v216, MEMORY[0x277D84F90]);
  if (v154)
  {
    v217 = v154;
    sub_26A851E98();
    OUTLINED_FUNCTION_37_9();
    j__OUTLINED_FUNCTION_170_0();

    (*(v210 + 1))(v209, v195);
    goto LABEL_44;
  }

  sub_26A851E88();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_9_28();
  j__OUTLINED_FUNCTION_204_0(v239, v240, v241, v242, v243, 84, v244, 24, v248);
  v245 = (v186 + 8);
  sub_26A61DEB0();
  if (v155)
  {
    v246 = v251;
    InteractionDelegateWrapper.navigateTo(nextSnippet:)(v251);
  }

  else
  {
    v246 = v251;
    InteractionDelegateWrapper.perform(showResponse:)(v251);
  }

  sub_26A53F320(&v264);
  v247 = *v245;
  (*v245)(v246, v156);
  (*(v210 + 1))(v209, v195);
  v247(v187, v156);
}

uint64_t sub_26A5DFCC8()
{
  OUTLINED_FUNCTION_15_16();
  sub_26A852248();

  strcpy(v1, "Navigating to ");
  sub_26A84E278();
  sub_26A4EB2DC();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_45_4();

  return v1[0];
}

uint64_t sub_26A5DFD50()
{
  OUTLINED_FUNCTION_15_16();
  sub_26A852248();

  OUTLINED_FUNCTION_33_5();
  sub_26A4EB2DC();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_45_4();

  return v1;
}

uint64_t sub_26A5DFDC4()
{
  OUTLINED_FUNCTION_15_16();
  sub_26A852248();

  OUTLINED_FUNCTION_33_5();
  sub_26A4EB2DC();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_45_4();

  return v1;
}

uint64_t sub_26A5DFE38()
{
  OUTLINED_FUNCTION_15_16();
  sub_26A852248();

  OUTLINED_FUNCTION_33_5();
  sub_26A4EB2DC();
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_45_4();

  return v1;
}

uint64_t sub_26A5DFED0(uint64_t (*a1)(unint64_t))
{
  v3 = sub_26A84E278();
  OUTLINED_FUNCTION_79(v3);
  return a1(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t sub_26A5DFF30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5DFFA0(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_10()
{
  sub_26A84E278();
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return sub_26A852568();
}

uint64_t OUTLINED_FUNCTION_23_11()
{
}

uint64_t OUTLINED_FUNCTION_24_12()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return sub_26A61DEB0();
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_9()
{
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821CB2A0](v4, v3, a3, a3, 0);
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_26A84E278();
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return sub_26A84E408();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_3()
{
}

uint64_t OUTLINED_FUNCTION_44_3()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_45_4()
{

  JUMPOUT(0x26D663B00);
}

uint64_t RFInteractionPerformed.actionName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_actionName);

  return v1;
}

uint64_t RFInteractionPerformed.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_command;
  sub_26A84E278();
  OUTLINED_FUNCTION_46();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t RFInteractionPerformed.componentName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentName);

  return v1;
}

void sub_26A5E05C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_26A5E062C(v1);
}

void *sub_26A5E05F0()
{
  v1 = OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_invocation;
  OUTLINED_FUNCTION_2_41();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26A5E062C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_invocation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id RFInteractionPerformed.init(actionName:command:interactionType:componentType:componentName:componentIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = *a4;
  v15 = *a5;
  *&v9[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_invocation] = 0;
  v16 = &v9[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_instrumentationClient];
  v17 = type metadata accessor for StandardSELFInstrumentationClient();
  v18 = swift_allocObject();
  v16[3] = v17;
  v16[4] = &off_287B17ED8;
  *v16 = v18;
  v19 = &v9[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_actionName];
  *v19 = a1;
  v19[1] = a2;
  v20 = OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_command;
  v21 = sub_26A84E278();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v9[v20], a3, v21);
  v9[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_interactionType] = v14;
  v9[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentType] = v15;
  v23 = &v9[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentName];
  *v23 = a6;
  v23[1] = a7;
  v24 = &v9[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentIndex];
  *v24 = a8;
  v24[8] = a9 & 1;
  v29.receiver = v9;
  v29.super_class = type metadata accessor for RFInteractionPerformed();
  v25 = objc_msgSendSuper2(&v29, sel_init);
  (*(v22 + 8))(a3, v21);
  return v25;
}

uint64_t type metadata accessor for RFInteractionPerformed()
{
  result = qword_2803AFC08;
  if (!qword_2803AFC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RFInteractionPerformed.init(actionName:command:interactionType:componentType:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a4;
  v14 = *a5;
  *&v7[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_invocation] = 0;
  v15 = &v7[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_instrumentationClient];
  v16 = type metadata accessor for StandardSELFInstrumentationClient();
  v17 = swift_allocObject();
  v15[3] = v16;
  v15[4] = &off_287B17ED8;
  *v15 = v17;
  v18 = &v7[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_actionName];
  *v18 = a1;
  v18[1] = a2;
  v19 = OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_command;
  v20 = sub_26A84E278();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v7[v19], a3, v20);
  v7[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_interactionType] = v13;
  v7[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentType] = v14;
  v22 = &v7[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentName];
  *v22 = a6;
  v22[1] = a7;
  v23 = &v7[OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentIndex];
  *v23 = 0;
  v23[8] = 1;
  v26.receiver = v7;
  v26.super_class = type metadata accessor for RFInteractionPerformed();
  v24 = objc_msgSendSuper2(&v26, sel_init);
  (*(v21 + 8))(a3, v20);
  return v24;
}

void sub_26A5E0AD0(uint64_t a1)
{
  v3 = sub_26A5E10D0();
  KeyPath = swift_getKeyPath();
  v10 = sub_26A5E0C54(v3, KeyPath, a1);

  if (v10)
  {
    v5 = (v1 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_instrumentationClient);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_instrumentationClient), *(v1 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_instrumentationClient + 24));
    sub_26A58733C(v10);
    v6 = sub_26A5E1154();
    v7 = swift_getKeyPath();
    v8 = sub_26A522AD4(v6, v7, a1);

    if (v8)
    {
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_26A58733C(v8);

      v9 = v8;
    }

    else
    {
      v9 = v10;
    }
  }
}

id sub_26A5E0C04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 invocation];
  *a2 = result;
  return result;
}

id sub_26A5E0D2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interactionPerformed];
  *a2 = result;
  return result;
}

void sub_26A5E0E50(uint64_t a1, uint64_t a2)
{
  v5 = sub_26A5E10D0();
  KeyPath = swift_getKeyPath();
  v12 = sub_26A5E0C54(v5, KeyPath, a1);

  if (v12)
  {
    v7 = (v2 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_instrumentationClient);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_instrumentationClient), *(v2 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_instrumentationClient + 24));
    sub_26A58733C(v12);
    v8 = sub_26A5E1154();
    v9 = swift_getKeyPath();
    v10 = sub_26A522E34(v8, v9, a1, a2);

    if (v10)
    {
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_26A58733C(v10);

      v11 = v10;
    }

    else
    {
      v11 = v12;
    }
  }
}

id sub_26A5E10D0()
{
  v1 = OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_invocation;
  OUTLINED_FUNCTION_2_41();
  v2 = *(v0 + v1);
  v3 = v2;
  if (!v2)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D5A928]) init];
    v3 = v4;
    if (v4)
    {
      [v4 setInvocationSource_];
    }
  }

  v5 = v2;
  return v3;
}

void *sub_26A5E1154()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D5A368]) init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_actionName + 8);
    v5 = v2;
    if (v4)
    {
      v4 = sub_26A851788();
    }

    [v3 setActionName_];

    v6 = *(v1 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentName + 8);
    v7 = v3;
    if (v6)
    {
      v6 = sub_26A851788();
    }

    [v3 setComponentName_];

    v8 = v3;
    [v8 setCommandType_];

    if (*(v1 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentType) == 74)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_26A4EB268();
    }

    [v8 setVisualComponent_];
    [v8 setUserInteraction_];
    if (*(v1 + OBJC_IVAR____TtC9SnippetUI22RFInteractionPerformed_componentIndex + 8))
    {
      v10 = v8;
      v11 = 0;
    }

    else
    {
      v12 = v8;
      sub_26A852568();
      v11 = sub_26A851788();
    }

    [v8 setComponentIndex_];
  }

  return v3;
}

id RFInteractionPerformed.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RFInteractionPerformed.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RFInteractionPerformed();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InteractionType.hashValue.getter()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

id SFCommandEngagementFeedback.asSelfEvent()()
{
  v1 = sub_26A84E278();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A5E1964([v0 command], &selRef_commandDetail);
  v8 = v7;
  *v5 = [v0 command];
  v5[8] = 0;
  (*(v2 + 104))(v5, *MEMORY[0x277D63708], v1);
  if ([v0 triggerEvent] - 1 >= 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  BYTE1(v16) = v9;
  SFCommandEngagementFeedback.componentType.getter(&v16);
  v10 = sub_26A5E1964([v0 cardSection], &selRef_cardSectionDetail);
  v12 = v11;
  v13 = objc_allocWithZone(type metadata accessor for RFInteractionPerformed());
  return RFInteractionPerformed.init(actionName:command:interactionType:componentType:componentName:componentIndex:)(v6, v8, v5, &v16 + 1, &v16, v10, v12, 0, 1);
}

char *SFCommandEngagementFeedback.interactionType.getter@<X0>(char *a1@<X8>)
{
  result = [v1 triggerEvent];
  if ((result - 1) >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_26A5E1964(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_26A8517B8();

  return v4;
}

uint64_t sub_26A5E19D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A5E1A38(uint64_t a1)
{
  v2 = type metadata accessor for AnyComponentViewConverter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A5E1A98()
{
  result = qword_2803AFC00;
  if (!qword_2803AFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFC00);
  }

  return result;
}

uint64_t sub_26A5E1AF4()
{
  result = sub_26A84E278();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RowVerticalAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InteractionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return swift_beginAccess();
}

uint64_t sub_26A5E1E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A4DBD68(v2, &v13 - v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v10, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A5E201C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ReferenceFootnoteView() + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A5E2170@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReferenceFootnoteView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A5E2378()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ReferenceFootnoteView() + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A5E24D0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ReferenceFootnoteView() + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t ReferenceFootnoteView.init(text1:text2:text3:text4:addTint:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = type metadata accessor for ReferenceFootnoteView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = (v9 - v8);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v12 = v6[6];
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v13);
  v14 = v10 + v6[8];
  if (qword_2803A8C60 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40);
  v16 = __swift_project_value_buffer(v15, qword_2803D1E30);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  v18 = &v14[*(v17 + 32)];
  sub_26A4DBD68(v16, v18, &qword_2803ADE40);
  sub_26A6AEE74(v47);
  memcpy(v14, v47, 0xBFuLL);
  sub_26A580C48(v18 + *(v15 + 36), &v14[*(v17 + 28)]);
  v19 = (v10 + v6[9]);
  v20 = v6;
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v48[0] = xmmword_281588758[0];
  v48[1] = unk_281588768;
  v48[2] = xmmword_281588778;
  v48[3] = unk_281588788;
  v49 = xmmword_281588758[0];
  v50 = unk_281588768;
  v51 = xmmword_281588778;
  v52 = unk_281588788;
  v37 = unk_281588788;
  v38 = xmmword_281588778;
  sub_26A4DBD68(v48, v53, &qword_2803A91B0);
  sub_26A6AEE74(v53);
  memcpy(v19, v53, 0xC0uLL);
  v19[12] = v38;
  v19[13] = v37;
  v21 = v50;
  v19[14] = v49;
  v19[15] = v21;
  v22 = v52;
  v19[16] = v51;
  v19[17] = v22;
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v23);
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v24);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  *(v10 + v20[12]) = (*(v26 + 8))(v25, v26);
  sub_26A4DBD68(a2, v45, &qword_2803A91B8);
  if (v46)
  {
    v27 = OUTLINED_FUNCTION_0_0();
    v29 = v28(v27);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    sub_26A4D6FD8();
    v29 = 0;
  }

  *(v10 + v20[13]) = v29;
  sub_26A4DBD68(a3, v45, &qword_2803A91B8);
  if (v46)
  {
    v30 = OUTLINED_FUNCTION_0_0();
    v32 = v31(v30);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    sub_26A4D6FD8();
    v32 = 0;
  }

  *(v10 + v20[14]) = v32;
  sub_26A4DBD68(a4, v45, &qword_2803A91B8);
  if (v46)
  {
    v33 = OUTLINED_FUNCTION_0_0();
    v35 = v34(v33);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    v35 = 0;
  }

  *(v10 + v20[15]) = v35;
  *(v10 + v20[16]) = a5 & 1;
  sub_26A5E4ECC(v10, a6);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ReferenceFootnoteView()
{
  result = qword_2803AFCF0;
  if (!qword_2803AFCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceFootnoteView.init(text1:text2:text3:text4:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_26A50429C(a1, v14);
  sub_26A4DBD68(a2, v13, &qword_2803A91B8);
  sub_26A4DBD68(a3, v12, &qword_2803A91B8);
  sub_26A4DBD68(a4, v11, &qword_2803A91B8);
  ReferenceFootnoteView.init(text1:text2:text3:text4:addTint:)(v14, v13, v12, v11, 0, a5);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ReferenceFootnoteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFC68);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - v3;
  sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v42 = v6;
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v41 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFC70);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFC78);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  sub_26A5E1E3C(v22);
  v48 = sub_26A5E31C4();
  v49 = v27;
  v50 = v28;
  v51 = v29;
  v52 = 0;
  sub_26A5E201C();
  sub_26A5E2170(v18);
  v30 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v30);
  v47 = v1;
  sub_26A4C9050();
  LOBYTE(v18) = *(v1 + *(type metadata accessor for ReferenceFootnoteView() + 64));
  v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFC80) + 36)] = v18;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26A68CE5C;
  *(v31 + 24) = 0;
  v32 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFC88) + 36)];
  *(v32 + 2) = swift_getKeyPath();
  v32[24] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v34 = *(v33 + 40);
  *&v32[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v35 = &v32[*(v33 + 44)];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  *v32 = sub_26A4D1F7C;
  *(v32 + 1) = v31;
  v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFC90) + 36)] = 43;
  v26[*(v23 + 36)] = sub_26A5E24D0() & 1;
  if (sub_26A5E2378())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFCA8);
    sub_26A84ACB8();
    v36 = v42;
    v37 = v43;
    (*(v42 + 16))(v41, v11, v43);
    sub_26A851048();
    (*(v36 + 8))(v11, v37);
    sub_26A4DBD68(v26, v14, &qword_2803AFC78);
    KeyPath = swift_getKeyPath();
    v39 = &v14[*(v44 + 36)];
    *v39 = KeyPath;
    v39[8] = 1;
    sub_26A4DBD68(v14, v4, &qword_2803AFC70);
    swift_storeEnumTagMultiPayload();
    sub_26A5E4F38();
    sub_26A5E50AC();
    sub_26A84FDF8();
    sub_26A4D6FD8();
  }

  else
  {
    sub_26A4DBD68(v26, v4, &qword_2803AFC78);
    swift_storeEnumTagMultiPayload();
    sub_26A5E4F38();
    sub_26A5E50AC();
    sub_26A84FDF8();
  }

  return sub_26A4D6FD8();
}

double sub_26A5E31C4()
{
  type metadata accessor for ReferenceFootnoteView();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1 && (v0 = sub_26A5E201C(), sub_26A61B05C(v0, &unk_287B131A0)))
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18())
    {
      case 1u:
      case 2u:
      case 3u:
        v1 = sub_26A852598();

        if ((v1 & 1) == 0)
        {
          goto LABEL_9;
        }

        break;
      case 4u:
        goto LABEL_9;
      default:

        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  }

  else
  {
LABEL_9:
    v2 = sub_26A5E201C();
    if (sub_26A61B05C(v2, &unk_287B13090) && qword_2803A8BF0 != -1)
    {
      swift_once();
    }
  }

  return 0.0;
}

uint64_t sub_26A5E33E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD10);
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v30 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD18);
  MEMORY[0x28223BE20](v32);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9FD0);
  MEMORY[0x28223BE20](v33);
  v14 = &v30 - v13;
  v15 = sub_26A84F3A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A5E2170(v18);
  v19 = sub_26A84F388();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    *v14 = sub_26A84FA78();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD28) + 44)];
    *v12 = sub_26A84FC08();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD30);
    sub_26A5E3FBC(a1, &v12[*(v21 + 44)]);
    sub_26A4DBD68(v12, v9, &qword_2803AFD20);
    sub_26A4DBD68(v9, v20, &qword_2803AFD20);
    v22 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD38) + 48);
    *v22 = 0;
    *(v22 + 8) = 1;
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4DBD68(v14, v6, &qword_2803A9FD0);
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9FD8);
    v24 = sub_26A4D6B40();
    v36 = v23;
    v37 = v24;
    swift_getOpaqueTypeConformance2();
    sub_26A84FDF8();
    return sub_26A4D6FD8();
  }

  else
  {
    sub_26A5E38FC();
    v26 = v31;
    v27 = v35;
    (*(v31 + 16))(v6, v4, v35);
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9FD8);
    v29 = sub_26A4D6B40();
    v36 = v28;
    v37 = v29;
    swift_getOpaqueTypeConformance2();
    sub_26A84FDF8();
    return (*(v26 + 8))(v4, v27);
  }
}

uint64_t sub_26A5E38FC()
{
  v10 = sub_26A84FA58();
  LOBYTE(v11) = 1;
  v1 = sub_26A5E39CC(v0, v12);
  sub_26A58C030(v1, v2, v3, v4, v5, v6, v7, v8, v10, 0, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v13, v14, v15, v16, v17);
  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9FD8);
  sub_26A4D6B40();
  sub_26A850AF8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5E39CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FC08();
  v5 = a1 + *(type metadata accessor for ReferenceFootnoteView() + 32);
  v6 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48) + 28));
  v13[0] = v4;
  v13[1] = v6;
  v14 = 0;
  sub_26A5E3B34(a1, &v15);
  v10[0] = sub_26A84FC18();
  v10[1] = v6;
  v11 = 0;
  sub_26A5E3D78(&v12);
  sub_26A4DBD68(v13, v9, &qword_2803AEA30);
  sub_26A4DBD68(v10, v8, &qword_2803AFD60);
  sub_26A4DBD68(v9, a2, &qword_2803AEA30);
  *(a2 + 616) = 0;
  *(a2 + 624) = 1;
  sub_26A4DBD68(v8, a2 + 632, &qword_2803AFD60);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5E3B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReferenceFootnoteView() + 48));
  if (qword_2803A8BA0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803AFC18, v10, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v9, __src, sizeof(v9));
  v10[11] = 0;
  v10[10] = sub_26A80A810;
  v8 = v3;

  sub_26A5E3CC8(v7);
  sub_26A4DBD68(&v8, v6, &qword_2803A99A0);
  sub_26A4DBD68(v7, v5, &qword_2803AA888);
  sub_26A4DBD68(v6, a2, &qword_2803A99A0);
  sub_26A4DBD68(v5, a2 + 296, &qword_2803AA888);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5E3CC8@<X0>(void *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for ReferenceFootnoteView() + 56)))
  {
    if (qword_2803A8BA0 != -1)
    {
      OUTLINED_FUNCTION_2_42();
    }

    sub_26A4DBD68(&unk_2803AFC18, a1 + 200, &qword_2803AA880);
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    bzero(a1, 0x128uLL);
  }
}

uint64_t sub_26A5E3D78@<X0>(uint64_t a1@<X8>)
{
  sub_26A5E3E5C(v6);
  sub_26A5E3F0C(v5);
  sub_26A4DBD68(v6, v4, &qword_2803AA888);
  sub_26A4DBD68(v5, v3, &qword_2803AA888);
  sub_26A4DBD68(v4, a1, &qword_2803AA888);
  sub_26A4DBD68(v3, a1 + 296, &qword_2803AA888);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5E3E5C@<X0>(void *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for ReferenceFootnoteView() + 52)))
  {
    if (qword_2803A8BA0 != -1)
    {
      OUTLINED_FUNCTION_2_42();
    }

    sub_26A4DBD68(&unk_2803AFC18, a1 + 200, &qword_2803AA880);
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    bzero(a1, 0x128uLL);
  }
}

uint64_t sub_26A5E3F0C@<X0>(void *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for ReferenceFootnoteView() + 60)))
  {
    if (qword_2803A8BA0 != -1)
    {
      OUTLINED_FUNCTION_2_42();
    }

    sub_26A4DBD68(&unk_2803AFC18, a1 + 200, &qword_2803AA880);
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    bzero(a1, 0x128uLL);
  }
}

uint64_t sub_26A5E3FBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD40);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v40 - v6;
  MEMORY[0x28223BE20](v7);
  v46 = &v40 - v8;
  MEMORY[0x28223BE20](v9);
  v50 = &v40 - v10;
  MEMORY[0x28223BE20](v11);
  v53 = &v40 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD48);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = *(a1 + *(type metadata accessor for ReferenceFootnoteView() + 48));
  if (qword_2803A8BA0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803AFC18, v56, &qword_2803AA880);
  sub_26A6AEE74(v57);
  memcpy(v55, v57, sizeof(v55));
  v56[10] = sub_26A80A810;
  v56[11] = 0;
  v54 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99A0);
  sub_26A4D4C34();
  sub_26A850AF8();
  sub_26A4D6FD8();
  sub_26A5E3E5C(&v54);
  v42 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA888);
  sub_26A5E5708();
  v41 = v15;
  sub_26A850AF8();
  sub_26A4D6FD8();
  sub_26A5E3CC8(&v54);
  sub_26A850AF8();
  sub_26A4D6FD8();
  sub_26A5E3F0C(&v54);
  v21 = v50;
  sub_26A850AF8();
  sub_26A4D6FD8();
  v22 = v48;
  v23 = *(v47 + 16);
  v23(v48, v19, v49);
  v24 = v43;
  v25 = *(v43 + 16);
  v26 = v46;
  v27 = v15;
  v28 = v44;
  v25(v46, v27, v44);
  v25(v51, v53, v28);
  v25(v52, v21, v28);
  v29 = v26;
  v30 = v45;
  v31 = v22;
  v32 = v49;
  v23(v45, v31, v49);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFD58);
  v25(&v30[v33[12]], v29, v28);
  v34 = v51;
  v25(&v30[v33[16]], v51, v28);
  v35 = &v30[v33[20]];
  v36 = v52;
  v25(v35, v52, v28);
  v37 = *(v24 + 8);
  v37(v50, v28);
  v37(v53, v28);
  v37(v41, v28);
  v38 = *(v47 + 8);
  v38(v42, v32);
  v37(v36, v28);
  v37(v34, v28);
  v37(v46, v28);
  return (v38)(v48, v32);
}

uint64_t sub_26A5E4568()
{
  v1 = v0;
  v80 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v72 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v71 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v77 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v74 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_41();
  v29 = v28 - v27;
  v30 = type metadata accessor for ReferenceFootnoteView();
  v31 = OUTLINED_FUNCTION_79(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v81 = v33 - v32;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC60);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v34);
  v78 = &v71 - v35;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC68);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v76 = v37 - v38;
  MEMORY[0x28223BE20](v39);
  v75 = &v71 - v40;
  sub_26A84C428();
  v41 = TextProperty.asAnyView()();
  v42 = *(v25 + 8);
  v42(v29, v23);
  v89[3] = MEMORY[0x277CE11C8];
  v89[4] = &protocol witness table for AnyView;
  v89[0] = v41;
  v43 = v1;
  sub_26A84C438();
  OUTLINED_FUNCTION_17_13(v22);
  if (v44)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v88[1] = 0;
    v88[2] = 0;
  }

  else
  {
    v43 = TextProperty.asAnyView()();
    v42(v22, v23);
    v45 = &protocol witness table for AnyView;
    v46 = MEMORY[0x277CE11C8];
  }

  v88[0] = v43;
  v88[3] = v46;
  v88[4] = v45;
  v47 = v1;
  sub_26A84C448();
  OUTLINED_FUNCTION_17_13(v19);
  if (v44)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v87[1] = 0;
    v87[2] = 0;
  }

  else
  {
    v47 = TextProperty.asAnyView()();
    v42(v19, v23);
    v48 = &protocol witness table for AnyView;
    v49 = MEMORY[0x277CE11C8];
  }

  v87[0] = v47;
  v87[3] = v49;
  v87[4] = v48;
  v50 = v1;
  sub_26A84C458();
  OUTLINED_FUNCTION_17_13(v16);
  if (v44)
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_2_0();
    v86[1] = 0;
    v86[2] = 0;
  }

  else
  {
    v50 = TextProperty.asAnyView()();
    v42(v16, v23);
    v51 = &protocol witness table for AnyView;
    v52 = MEMORY[0x277CE11C8];
  }

  v53 = v78;
  v86[0] = v50;
  v86[3] = v52;
  v86[4] = v51;
  sub_26A50429C(v89, v85);
  sub_26A4DBD68(v88, v84, &qword_2803A91B8);
  sub_26A4DBD68(v87, v83, &qword_2803A91B8);
  sub_26A4DBD68(v86, v82, &qword_2803A91B8);
  ReferenceFootnoteView.init(text1:text2:text3:text4:addTint:)(v85, v84, v83, v82, 0, v81);
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  __swift_destroy_boxed_opaque_existential_1(v89);
  v54 = v74;
  sub_26A84C468();
  v55 = v77;
  sub_26A4DBDB4(v54, v77, &qword_2803B3800);
  v56 = v80;
  if (__swift_getEnumTagSinglePayload(v55, 1, v80) == 1)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v58 = (v53 + *(v73 + 36));
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v60 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v58 + v59, 1, 1, v60);
    *v58 = KeyPath;
  }

  else
  {
    v61 = v71;
    v62 = *(v72 + 32);
    OUTLINED_FUNCTION_135();
    v62();
    v63 = swift_getKeyPath();
    v64 = (v53 + *(v73 + 36));
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    (v62)(v64 + v65, v61, v56);
    v66 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v64 + v65, 0, 1, v66);
    *v64 = v63;
  }

  sub_26A5E4ECC(v81, v53);
  v67 = sub_26A84C408();
  v68 = v75;
  sub_26A4DCFA4(v67);

  sub_26A4D6FD8();
  sub_26A4DBD68(v68, v76, &qword_2803AAC68);
  sub_26A5E578C();
  v69 = sub_26A851248();
  OUTLINED_FUNCTION_30_1();
  return v69;
}

uint64_t sub_26A5E4C9C()
{
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815887F8, v8, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850418();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 80) = sub_26A573830();
  *(inited + 48) = 2;
  *(inited + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  v6 = sub_26A8516A8();
  sub_26A66DDEC(v6, &unk_2803AFC18);

  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5E4ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceFootnoteView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A5E4F38()
{
  result = qword_2803AFC98;
  if (!qword_2803AFC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFC70);
    sub_26A5E4FF0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFC98);
  }

  return result;
}

unint64_t sub_26A5E4FF0()
{
  result = qword_2803AFCA0;
  if (!qword_2803AFCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFCA8);
    sub_26A5E50AC();
    sub_26A5E59B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFCA0);
  }

  return result;
}

unint64_t sub_26A5E50AC()
{
  result = qword_2803AFCB0;
  if (!qword_2803AFCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFC78);
    sub_26A5E5164();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFCB0);
  }

  return result;
}

unint64_t sub_26A5E5164()
{
  result = qword_2803AFCB8;
  if (!qword_2803AFCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFC90);
    sub_26A5E51F0();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFCB8);
  }

  return result;
}

unint64_t sub_26A5E51F0()
{
  result = qword_2803AFCC0;
  if (!qword_2803AFCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFC88);
    sub_26A5E52A8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFCC0);
  }

  return result;
}

unint64_t sub_26A5E52A8()
{
  result = qword_2803AFCC8;
  if (!qword_2803AFCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFC80);
    sub_26A4D7DCC();
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFCC8);
  }

  return result;
}

unint64_t sub_26A5E537C(uint64_t a1)
{
  result = sub_26A5E59B8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A5E53FC()
{
  sub_26A4D27F4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A580EB4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A580EB4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A5E562C(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_26A580EB4(319, &qword_2803ADE78, type metadata accessor for ReferenceConstants, type metadata accessor for EnvironmentConstant);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_26A5E562C(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
          if (v11 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_26A5E562C(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_26A5E562C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A5E567C()
{
  result = qword_2803AFD00;
  if (!qword_2803AFD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFD08);
    sub_26A5E4F38();
    sub_26A5E50AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFD00);
  }

  return result;
}

unint64_t sub_26A5E5708()
{
  result = qword_2803AFD50;
  if (!qword_2803AFD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA888);
    sub_26A4D4C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFD50);
  }

  return result;
}

unint64_t sub_26A5E578C()
{
  result = qword_2803AFD68;
  if (!qword_2803AFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC68);
    sub_26A5E5844();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFD68);
  }

  return result;
}

unint64_t sub_26A5E5844()
{
  result = qword_2803AFD70;
  if (!qword_2803AFD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC58);
    sub_26A5E58D0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFD70);
  }

  return result;
}

unint64_t sub_26A5E58D0()
{
  result = qword_2803AFD78;
  if (!qword_2803AFD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC60);
    sub_26A5E59B8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFD78);
  }

  return result;
}

unint64_t sub_26A5E59B8()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return swift_once();
}

uint64_t sub_26A5E5A78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v23 = a4;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v20 - v10;
  sub_26A84A7A8();
  swift_allocObject();
  v12 = sub_26A84A798();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = v12;
  v15 = v25;
  sub_26A84A788();
  if (!v15)
  {
    v16 = v22;
    v14 = (*(a7 + 32))(v11, v23, v24, a6, a7);
    v18 = v21;
    v21[3] = AssociatedTypeWitness;
    v18[4] = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(v16 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
  }

  return v14;
}

void sub_26A5E5C90(uint64_t *a1@<X8>)
{
  v3 = [v1 text_1];
  if (v3)
  {
    v4 = v3;
    v7[3] = &type metadata for PartialText;
    v7[4] = &protocol witness table for PartialText;
    v7[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v7[0] + 16);
    SecondaryHeaderStandardView.init(text1:)(v7, a1);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v5 = v1;
    *(v5 + 8) = &unk_287B13A18;
    *(v5 + 16) = 0;
    swift_willThrow();
    v6 = v1;
  }
}

unint64_t sub_26A5E5DAC()
{
  result = qword_2803AFD88;
  if (!qword_2803AFD88)
  {
    type metadata accessor for SecondaryHeaderStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFD88);
  }

  return result;
}

id sub_26A5E5E04()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v3, v4, v5, v6, v7, 559, v8, 26, v17);
    return 0;
  }

  v1 = Strong;
  if (([Strong respondsToSelector_] & 1) == 0)
  {
    if ([v1 respondsToSelector_])
    {
      v2 = [v1 presentingViewController];
      goto LABEL_7;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v10, v11, v12, v13, v14, 568, v15, 26, v17);
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = [v1 popoverPresentingViewController];
LABEL_7:
  v9 = v2;
  swift_unknownObjectRelease();
  return v9;
}

uint64_t InteractionDelegateWrapper.perform(aceCommand:)()
{
  swift_getObjectType();

  return sub_26A49FAFC();
}

Swift::Bool __swiftcall InteractionDelegateWrapper.navigateTo(nextSnippetWithDI:payload:)(Swift::String nextSnippetWithDI, Swift::OpaquePointer payload)
{
  OUTLINED_FUNCTION_11_24();
  sub_26A4EC5B0(0, &qword_2803AFD90);

  v3 = sub_26A5E7F68();
  sub_26A5E879C(v2, v3);
  v4 = objc_opt_self();
  v5 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v6 = [v4 runSiriKitExecutorCommandWithContext:v5 payload:v3];

  v7 = [v4 wrapCommandInStartLocalRequest_];
  v8 = sub_26A5E8810();

  return v8 & 1;
}

Swift::Bool __swiftcall InteractionDelegateWrapper.perform(directInvocation:payload:)(Swift::String directInvocation, Swift::OpaquePointer payload)
{
  OUTLINED_FUNCTION_11_24();
  sub_26A4EC5B0(0, &qword_2803AFD90);

  v3 = sub_26A5E7F68();
  sub_26A5E879C(v2, v3);
  v4 = objc_opt_self();
  v5 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v6 = [v4 runSiriKitExecutorCommandWithContext:v5 payload:v3];

  v7 = [v4 wrapCommandInStartLocalRequest_];
  v8 = sub_26A49FAFC();

  return v8 & 1;
}

uint64_t sub_26A5E6164(void *a1, uint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v57 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v56 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ([Strong respondsToSelector_])
    {
      OUTLINED_FUNCTION_12_20();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v19 = swift_allocObject();
      v20 = 0;
      *(v19 + 16) = sub_26A5E8BBC;
      *(v19 + 24) = v18;
      v21 = sub_26A5E8BD4;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  sub_26A851E78();
  LOBYTE(v52) = 2;
  v20 = 1;
  OUTLINED_FUNCTION_0_37();
  sub_26A7B46EC(v22, v23, v24, v25, v26, 524, v27, 15, v52, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v21 = 0;
LABEL_6:

  sub_26A851E88();
  LOBYTE(v50) = 2;
  OUTLINED_FUNCTION_0_37();
  sub_26A7B48D0(v28, v29, v30, v31, v32, 527, v33, 15, v50, a2, a3, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, vars0, vars8);
  sub_26A84AC68();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {

    sub_26A851E98();
    LOBYTE(v51) = 2;
    OUTLINED_FUNCTION_0_37();
    sub_26A7B4B2C(v34, v35, v36, v37, v38, 530, v39, 15, v51, a2, a3, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, vars0, vars8);
  }

  if ((v20 & 1) == 0)
  {
    sub_26A4EA070(v15, v12, &qword_2803AC1D8);
    if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
    {
      v47 = v56;
      v46 = v57;
      (*(v57 + 32))(v56, v12, v5);

      v48 = v58;
      sub_26A851E78();
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_0_37();
      sub_26A7B4D80();
      v21(v48, v47);
      sub_26A4C24DC(v21);
      (*(v46 + 8))(v47, v5);
      return sub_26A4E2544(v15, &qword_2803AC1D8);
    }

    sub_26A4E2544(v12, &qword_2803AC1D8);
  }

  sub_26A851E78();
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_37();
  sub_26A7B50A8(v40, v41, v42, v43, v44, 537, v45, 15, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  sub_26A5E82FC(v58);
  sub_26A4C24DC(v21);
  return sub_26A4E2544(v15, &qword_2803AC1D8);
}

uint64_t InteractionDelegateWrapper.navigateTo(nextSnippet:)()
{
  swift_getObjectType();

  return sub_26A5E8810();
}

{
  v0 = OUTLINED_FUNCTION_5_35();
  if (v0)
  {
    v1 = [v0 respondsToSelector_];
    if (v1)
    {
      OUTLINED_FUNCTION_10_25(v1, sel_navigateWithSFCommand_);
      swift_unknownObjectRelease();
      return 1;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v9, v10, v11, v12, v13, 382, v14, 24, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v3, v4, v5, v6, v7, 378, v8, 24, v15);
  }

  return 0;
}

Swift::Bool __swiftcall InteractionDelegateWrapper.navigateTo(nextSnippetWithUtterance:)(Swift::String nextSnippetWithUtterance)
{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      v8 = objc_allocWithZone(MEMORY[0x277D47948]);
      swift_unknownObjectRetain();
      v9 = [v8 init];
      sub_26A84ACB8();
      sub_26A84AC78();
      v10 = OUTLINED_FUNCTION_7_33();
      v11(v10);
      sub_26A5E86E0(v3, v4, v9);
      sub_26A5E8744(v2, v1, v9);
      [v7 navigateWithAceCommand_];

      OUTLINED_FUNCTION_9_29();
      return 1;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v19, v20, v21, v22, v23, 447, v24, 37, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v13, v14, v15, v16, v17, 443, v18, 37, v25);
  }

  return 0;
}

Swift::Bool __swiftcall InteractionDelegateWrapper.perform(machineUtterance:)(Swift::String machineUtterance)
{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      v8 = objc_allocWithZone(MEMORY[0x277D47948]);
      swift_unknownObjectRetain();
      v9 = [v8 init];
      sub_26A84ACB8();
      sub_26A84AC78();
      v10 = OUTLINED_FUNCTION_7_33();
      v11(v10);
      sub_26A5E86E0(v3, v4, v9);
      sub_26A5E8744(v2, v1, v9);
      [v7 performAceCommand_];

      OUTLINED_FUNCTION_9_29();
      return 1;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v19, v20, v21, v22, v23, 242, v24, 26, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v13, v14, v15, v16, v17, 238, v18, 26, v25);
  }

  return 0;
}

uint64_t InteractionDelegateWrapper.perform(sfCommand:)()
{
  v0 = OUTLINED_FUNCTION_5_35();
  if (v0)
  {
    v1 = [v0 respondsToSelector_];
    if (v1)
    {
      OUTLINED_FUNCTION_10_25(v1, sel_performSFCommand_);
      swift_unknownObjectRelease();
      return 1;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v9, v10, v11, v12, v13, 196, v14, 19, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v3, v4, v5, v6, v7, 192, v8, 19, v15);
  }

  return 0;
}

uint64_t InteractionDelegateWrapper.navigateTo(nextSnippet:)(uint64_t a1)
{
  v1 = [objc_opt_self() wrapCommandInStartLocalRequest_];
  v2 = sub_26A5E8810();

  return v2 & 1;
}

uint64_t InteractionDelegateWrapper.perform(directInvocation:)(uint64_t a1)
{
  v1 = [objc_opt_self() wrapCommandInStartLocalRequest_];
  v2 = sub_26A49FAFC();

  return v2 & 1;
}

uint64_t InteractionDelegate.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 9) = 0;

  return swift_unknownObjectWeakInit();
}

Swift::Void __swiftcall InteractionDelegate.update()()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  sub_26A4EA070(v0, &v9, &unk_2803AFDA0);
  if (v10 == 1)
  {
    sub_26A5E89BC(&v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_8_30();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
  }

  if (v11[8])
  {
    sub_26A4E2544(v11, &qword_2803ACA10);
  }

  else
  {
    swift_unknownObjectWeakLoadStrong();
    sub_26A5E8968(v11);
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  sub_26A5E8930(&v9, v0 + 16);
}

uint64_t sub_26A5E7048(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_26A5E706C, 0, 0);
}

uint64_t sub_26A5E706C()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i8[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE10);
  *v3 = v0;
  v3[1] = sub_26A5E7180;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001ALL, 0x800000026A88CE60, sub_26A5E8B30, v2, v4);
}

uint64_t sub_26A5E7180()
{

  return MEMORY[0x2822009F8](sub_26A5E7298, 0, 0);
}

uint64_t sub_26A5E72B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE20);
  v25 = swift_allocBox();
  v12 = v11;
  v13 = *(v8 + 16);
  v13(v11, a1, v7);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if ([Strong respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v16 = sub_26A5E771C(a3, a4 & 1);
      sub_26A4EC5B0(0, &qword_2803AFE28);
      v17 = v25;

      v18 = sub_26A851A88();
      aBlock[4] = sub_26A5E8B3C;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26A5E7698;
      aBlock[3] = &block_descriptor_10;
      v19 = _Block_copy(aBlock);
      [v15 createStyledButtons_buttonFont_isCompact:v18 :{v16, a4 & 1, v19}];

      swift_unknownObjectRelease_n();
      _Block_release(v19);
    }

    else
    {
      v21 = sub_26A851E78();
      LOBYTE(v23) = 2;
      j__OUTLINED_FUNCTION_206_0(v21, 1, "SnippetUI/InteractionDelegateWrapper.swift", 42, 2, 61, "create(buttons:isCompact:)", 26, v23);
      if (__swift_getEnumTagSinglePayload(v12, 1, v7))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v13(v10, v12, v7);
        aBlock[0] = 0;
        sub_26A851B98();
        swift_unknownObjectRelease();
        (*(v8 + 8))(v10, v7);
      }

      sub_26A4E2544(v12, &qword_2803AFE20);
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v7);
    }
  }

  else
  {
    v20 = sub_26A851E78();
    LOBYTE(v23) = 2;
    j__OUTLINED_FUNCTION_9_61(v20, 1, "SnippetUI/InteractionDelegateWrapper.swift", 42, 2, 55, "create(buttons:isCompact:)", 26, v23);
    if (__swift_getEnumTagSinglePayload(v12, 1, v7))
    {
    }

    else
    {
      v13(v10, v12, v7);
      aBlock[0] = 0;
      sub_26A851B98();
      (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_26A5E7698(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_26A4EC5B0(0, &qword_2803AFE30);
  v2 = sub_26A851A98();

  v1(v2);
}

id sub_26A5E771C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277D74410];
    v3 = MEMORY[0x277D76968];
  }

  else if (sub_26A73670C(a1) && ((sub_26A736710(0, (a1 & 0xC000000000000001) == 0, a1), (a1 & 0xC000000000000001) != 0) ? (v5 = MEMORY[0x26D6644E0](0, a1)) : (v5 = *(a1 + 32)), (v6 = v5, v7 = [v5 buttonAppearance], v6, v7) && (v8 = objc_msgSend(v7, sel_style), v7, v8 <= 5)))
  {
    v3 = qword_279CA2608[v8];
    v2 = qword_279CA2638[v8];
  }

  else
  {
    v2 = MEMORY[0x277D74420];
    v3 = MEMORY[0x277D769D0];
  }

  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle_];
  [v10 pointSize];
  v12 = v11;

  v13 = [v9 systemFontOfSize:v12 weight:*v2];

  return v13;
}

uint64_t sub_26A5E7878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v9 = swift_projectBox();
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v5))
  {
    (*(v6 + 16))(v8, v9, v5);
    v11[0] = a1;

    sub_26A851B98();
    (*(v6 + 8))(v8, v5);
  }

  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  swift_beginAccess();
  return sub_26A5E8B44(v4, v9);
}

void *sub_26A5E7A38(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_12_20();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    if ([Strong respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v6 = sub_26A5E771C(a1, a2 & 1);
      sub_26A4EC5B0(0, &qword_2803AFE28);

      v7 = sub_26A851A88();
      v27 = sub_26A5E8BB4;
      v28 = v5;
      OUTLINED_FUNCTION_3_37();
      v24 = 1107296256;
      v25 = sub_26A5E7698;
      v26 = &block_descriptor_13;
      v8 = _Block_copy(aBlock);
      [Strong createStyledButtons_buttonFont_isCompact:v7 :{v6, a2 & 1, v8}];

      swift_unknownObjectRelease_n();
      _Block_release(v8);

      swift_beginAccess();
      Strong = *(v5 + 16);
    }

    else
    {
      sub_26A851E78();
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_0_37();
      j__OUTLINED_FUNCTION_206_0(v15, v16, v17, v18, v19, 84, v20, 30, v22);
      swift_unknownObjectRelease();

      return 0;
    }
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v9, v10, v11, v12, v13, 77, v14, 30, v22);
  }

  return Strong;
}

uint64_t sub_26A5E7C34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
}

uint64_t sub_26A5E7C88(double a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v3 recalculateLeadingInsetSeparator_];
      swift_unknownObjectRelease();
      return 1;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v11, v12, v13, v14, v15, 146, v16, 36, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v5, v6, v7, v8, v9, 142, v10, 36, v17);
  }

  return 0;
}

uint64_t InteractionDelegateWrapper.report(feedback:)()
{
  v0 = OUTLINED_FUNCTION_5_35();
  if (v0)
  {
    v1 = [v0 respondsToSelector_];
    if (v1)
    {
      OUTLINED_FUNCTION_10_25(v1, sel_reportSFFeedback_);
      swift_unknownObjectRelease();
      return 1;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v9, v10, v11, v12, v13, 210, v14, 17, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v3, v4, v5, v6, v7, 206, v8, 17, v15);
  }

  return 0;
}

id sub_26A5E7F68()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26A851788();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

void sub_26A5E83BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  v5 = sub_26A84AC88();
  a3(a1, v5);
}

uint64_t InteractionDelegateWrapper.requestDeviceUnlock(_:)(void (*a1)(void), uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector_])
    {
      v25 = a1;
      v26 = a2;
      OUTLINED_FUNCTION_3_37();
      v22 = 1107296256;
      v23 = sub_26A5E868C;
      v24 = &block_descriptor_1;
      v6 = _Block_copy(aBlock);

      [v5 requestDeviceUnlock_];
      swift_unknownObjectRelease();
      _Block_release(v6);
    }

    else
    {
      sub_26A851E78();
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_0_37();
      j__OUTLINED_FUNCTION_13_45(v14, v15, v16, v17, v18, 612, v19, 23, v20);
      a1(0);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v8, v9, v10, v11, v12, 607, v13, 23, v20);
    return (a1)(0);
  }
}

uint64_t sub_26A5E868C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_26A5E86E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A851788();

  [a3 setAceId_];
}

void sub_26A5E8744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A851788();
  [a3 setUtterance_];
}

void sub_26A5E879C(uint64_t a1, void *a2)
{
  v3 = sub_26A851688();
  [a2 setUserData_];
}

uint64_t sub_26A5E8810()
{
  v0 = OUTLINED_FUNCTION_14_19();
  if (v0)
  {
    v1 = [v0 respondsToSelector_];
    if (v1)
    {
      OUTLINED_FUNCTION_10_25(v1, sel_navigateWithAceCommand_);
      swift_unknownObjectRelease();
      return 1;
    }

    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_13_45(v9, v10, v11, v12, v13, 368, v14, 24, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26A851E78();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_0_37();
    j__OUTLINED_FUNCTION_9_61(v3, v4, v5, v6, v7, 364, v8, 24, v15);
  }

  return 0;
}

unint64_t sub_26A5E88D8()
{
  result = qword_2803AFD98;
  if (!qword_2803AFD98)
  {
    sub_26A84E408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFD98);
  }

  return result;
}

uint64_t sub_26A5E89BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACA10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A5E8A44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
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

uint64_t sub_26A5E8A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A5E8AD8(uint64_t a1, int a2)
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

uint64_t sub_26A5E8AF8(uint64_t result, int a2, int a3)
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

uint64_t sub_26A5E8B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_35()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_9_29()
{

  return swift_unknownObjectRelease_n();
}

id OUTLINED_FUNCTION_10_25(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return sub_26A84ACC8();
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_26A5E8D54()
{
  sub_26A576B80(319, &qword_2803AFE48, &qword_2803AFE50);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A5E8F44(319, &qword_2803AB788);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A576B80(319, &qword_2803AFE58, &qword_2803AF0C0);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_26A5E8F44(319, &qword_2803AB0C8);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_26A5E90C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_26A5E8F44(319, &qword_2803AFE60);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_26A5E90C4(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation, MEMORY[0x277CDF468]);
      if (v10 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = type metadata accessor for EnvironmentImageSettings(319);
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_26A5E8F44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26A84EEA8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26A5E8FB8()
{
  sub_26A5E90C4(319, &qword_28157FFE8, MEMORY[0x277D62C10], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A5E90C4(319, &qword_28157FFD0, MEMORY[0x277D62CD8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A5E90C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A5E9128@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for EnvironmentImagePreferences(0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(KeyPath);
  v4 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v4);
  v5 = *(v2 + 28);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v6);
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v7);
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v8);
  v9 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v9);
  v10 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v10);
  v11 = a1 + *(v2 + 52);
  v12 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = type metadata accessor for EnvironmentImageSettings(0);
  v14 = v13[7];
  v15 = sub_26A84B2B8();
  result = __swift_storeEnumTagSinglePayload(v11 + v14, 1, 1, v15);
  if (qword_28157F7C0 != -1)
  {
    result = OUTLINED_FUNCTION_5();
  }

  v17 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    result = OUTLINED_FUNCTION_22_1();
  }

  v18 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    result = OUTLINED_FUNCTION_21_0();
  }

  v19 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    result = OUTLINED_FUNCTION_20_1();
  }

  *(v11 + v13[5]) = 0;
  v20 = byte_2803D1D89;
  *(v11 + v13[6]) = 0;
  *(v11 + v13[8]) = 0x3FF0000000000000;
  v21 = v11 + v13[9];
  *v21 = v17;
  *(v21 + 8) = v18;
  *(v21 + 16) = 1;
  *(v21 + 24) = v19;
  *(v21 + 25) = 0;
  *(v21 + 26) = v20;
  *(v21 + 27) = 0;
  return result;
}

uint64_t sub_26A5E93AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  v56 = &v51 - v4;
  OUTLINED_FUNCTION_25_2();
  v55 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v51 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for EnvironmentImagePreferences(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v52 = v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v51 - v26;
  sub_26A5EA28C();
  v54 = v12;
  sub_26A720448(v12);
  sub_26A5EA1DC(v27, type metadata accessor for EnvironmentImagePreferences);
  v28 = v1;
  sub_26A5EA28C();
  v29 = v13;
  v30 = &v24[*(v13 + 20)];
  v31 = *v30;
  if (v30[8] == 1)
  {
    v53 = *v30;
    v32 = v8;
    v33 = v51;
  }

  else
  {

    sub_26A851EA8();
    v34 = sub_26A8501F8();
    OUTLINED_FUNCTION_15_17();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v31, 0);
    v33 = v51;
    v32 = v8;
    (*(v51 + 8))(v8, v55);
    v53 = v59;
  }

  sub_26A5EA1DC(v24, type metadata accessor for EnvironmentImagePreferences);
  sub_26A5EA28C();
  v35 = &v21[v29[6]];
  v36 = *v35;
  if (v35[8] != 1)
  {

    sub_26A851EA8();
    v37 = sub_26A8501F8();
    OUTLINED_FUNCTION_15_17();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v36, 0);
    (*(v33 + 8))(v32, v55);
    LOBYTE(v36) = v58;
  }

  sub_26A5EA1DC(v21, type metadata accessor for EnvironmentImagePreferences);
  sub_26A5EA28C();
  sub_26A72046C(v56);
  sub_26A5EA1DC(v18, type metadata accessor for EnvironmentImagePreferences);
  v38 = v52;
  sub_26A5EA28C();
  v39 = v38 + v29[8];
  v40 = *v39;
  if (*(v39 + 8) == 1)
  {
    v57 = *v39;
    v41 = v40;
  }

  else
  {

    sub_26A851EA8();
    v42 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v40, 0);
    (*(v33 + 8))(v32, v55);
    v41 = v57;
  }

  sub_26A5EA1DC(v38, type metadata accessor for EnvironmentImagePreferences);
  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v43 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    OUTLINED_FUNCTION_22_1();
  }

  v44 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  v45 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  v46 = byte_2803D1D89;
  v47 = v28 + v29[13];
  sub_26A5EA1DC(v47, type metadata accessor for EnvironmentImageSettings);
  sub_26A4EF020();
  v48 = type metadata accessor for EnvironmentImageSettings(0);
  *(v47 + v48[5]) = v53 & 1;
  *(v47 + v48[6]) = v36 & 1;
  result = sub_26A4EF020();
  *(v47 + v48[8]) = v41;
  v50 = v47 + v48[9];
  *v50 = v43;
  *(v50 + 8) = v44;
  *(v50 + 16) = 1;
  *(v50 + 24) = v45;
  *(v50 + 25) = 0;
  *(v50 + 26) = v46;
  *(v50 + 27) = 0;
  return result;
}

uint64_t sub_26A5E9A2C@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  v2 = OUTLINED_FUNCTION_79(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v73 = v3;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  v77 = &v69 - v5;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B2B8();
  OUTLINED_FUNCTION_15();
  v80 = v7;
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_25_2();
  v9 = type metadata accessor for ImageStyleAppearance();
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v78 = v11;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v12);
  v84 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  v83 = &v69 - v16;
  OUTLINED_FUNCTION_25_2();
  v17 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v74 = v21;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v22);
  v24 = &v69 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  v29 = OUTLINED_FUNCTION_79(v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v69 - v33;
  sub_26A84B358();
  v35 = *(v19 + 104);
  v71 = *MEMORY[0x277D62B70];
  v70 = v35;
  v35(v24);
  sub_26A5EA234();
  v36 = sub_26A851758();
  v72 = v19;
  v37 = *(v19 + 8);
  v37(v24, v17);
  v37(v27, v17);
  v38 = v75;
  if (v36)
  {
    sub_26A4EF6D0();
  }

  else
  {
    sub_26A84B358();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v17);
  }

  sub_26A4EF6D0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v17);
  v76 = v34;
  if (EnumTagSinglePayload == 1)
  {
    v40 = v74;
    v70(v74, v71, v17);
    if (__swift_getEnumTagSinglePayload(v31, 1, v17) != 1)
    {
      sub_26A4DBD10(v31, &qword_2803AFE50);
    }
  }

  else
  {
    v40 = v74;
    (*(v72 + 32))(v74, v31, v17);
  }

  sub_26A77F8A4(v40, v83);
  v37(v40, v17);
  v41 = type metadata accessor for EnvironmentImageSettings(0);
  v42 = v38;
  v43 = v38 + v41[9];
  v44 = 256;
  if ((*(v43 + 25) & 1) == 0)
  {
    v44 = 0;
  }

  v45 = v44 & 0xFFFFFFFFFFFFFFFELL | *(v43 + 24) & 1;
  v46 = 0x10000;
  if ((*(v43 + 26) & 1) == 0)
  {
    v46 = 0;
  }

  v47 = 0x1000000;
  if ((*(v43 + 27) & 1) == 0)
  {
    v47 = 0;
  }

  v48 = v45 | v46 | v47;
  v49 = 0x100000000;
  if ((*(v43 + 28) & 1) == 0)
  {
    v49 = 0;
  }

  v50 = 0x10000000000;
  if ((*(v43 + 29) & 1) == 0)
  {
    v50 = 0;
  }

  v51 = 0x1000000000000;
  if ((*(v43 + 30) & 1) == 0)
  {
    v51 = 0;
  }

  sub_26A647150(*v43, *(v43 + 8), *(v43 + 16), v48 | v49 | v50 | v51, v84);
  v52 = v78;
  sub_26A5EA28C();
  v53 = v77;
  sub_26A84B368();
  v54 = v81;
  OUTLINED_FUNCTION_16_12(v53, 1);
  if (v55)
  {
    v56 = v73;
    sub_26A4EF6D0();
    OUTLINED_FUNCTION_16_12(v56, 1);
    v58 = v79;
    v57 = v80;
    if (v55)
    {
      sub_26A84B298();
      OUTLINED_FUNCTION_16_12(v56, 1);
      if (!v55)
      {
        sub_26A4DBD10(v56, &qword_2803AF0C0);
      }
    }

    else
    {
      (*(v80 + 32))(v79, v56, v54);
    }

    OUTLINED_FUNCTION_16_12(v53, 1);
    if (!v55)
    {
      sub_26A4DBD10(v53, &qword_2803AF0C0);
    }
  }

  else
  {
    v58 = v79;
    v57 = v80;
    (*(v80 + 32))(v79, v53, v54);
  }

  v59 = sub_26A84B388();
  if (v59 == 2)
  {
    v60 = *(v42 + v41[6]);
  }

  else
  {
    v60 = v59;
  }

  v61 = sub_26A84B348();
  if (v61 == 2)
  {
    v62 = *(v42 + v41[5]);
  }

  else
  {
    v62 = v61;
  }

  v63 = *(v42 + v41[8]);
  sub_26A84B398();
  v65 = v64;
  sub_26A5EA1DC(v84, type metadata accessor for ImageStyleAppearance);
  sub_26A4DBD10(v83, &unk_2803ABFF0);
  sub_26A4DBD10(v76, &qword_2803AFE50);
  v66 = v82;
  sub_26A5EA2E4(v52, v82);
  v67 = type metadata accessor for URLImageSize();
  result = (*(v57 + 32))(v66 + v67[5], v58, v54);
  *(v66 + v67[6]) = v60 & 1;
  *(v66 + v67[7]) = v62 & 1;
  *(v66 + v67[8]) = v63;
  *(v66 + v67[9]) = v65;
  return result;
}

uint64_t sub_26A5EA188@<X0>(void *a1@<X8>)
{
  result = sub_26A84F708();
  *a1 = v3;
  return result;
}

uint64_t sub_26A5EA1DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26A5EA234()
{
  result = qword_28157FFF0;
  if (!qword_28157FFF0)
  {
    sub_26A84B1D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FFF0);
  }

  return result;
}

uint64_t sub_26A5EA28C()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A5EA2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageStyleAppearance();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return sub_26A84EA78();
}

unint64_t sub_26A5EA388()
{
  result = qword_2803AFE68;
  if (!qword_2803AFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFE68);
  }

  return result;
}

uint64_t type metadata accessor for OnVisualResponseShownModifier()
{
  result = qword_2803AFE70;
  if (!qword_2803AFE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A5EA450()
{
  sub_26A5EA5E8(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_26A57E290(319, &qword_2803ADBE0, &qword_2803ADBC8, &unk_26A868130, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A5EA5E8(319, &qword_2803ADBD8, MEMORY[0x277D837D0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A57E290(319, &qword_2803AFE80, &qword_2803AFE88, &unk_26A868138, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26A5EA5E8(319, &qword_2803AC920, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A5EA5E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26A5EA638(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 113))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_26A5EA68C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26A5EA72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for OnVisualResponseShownModifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A5EBB40(v3, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_26A5EC49C(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for OnVisualResponseShownModifier);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEA0);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEA8);
  v13 = (a2 + *(result + 36));
  *v13 = sub_26A5EBBA4;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  return result;
}

uint64_t sub_26A5EA8A4(char *a1)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 1);
  LOBYTE(v17) = *a1;
  v18 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  result = sub_26A851058();
  if ((v16 & 1) == 0)
  {
    LOBYTE(v17) = v6;
    v18 = v7;
    v16 = 1;
    sub_26A851068();
    sub_26A5EAAB8();
    v9 = objc_allocWithZone(type metadata accessor for RFSnippetRenderingContext());
    v10 = RFSnippetRenderingContext.init(_:)(2);
    v11 = &a1[*(type metadata accessor for OnVisualResponseShownModifier() + 32)];
    v13 = *v11;
    v12 = *(v11 + 1);
    if (v11[16] == 1)
    {
    }

    else
    {

      sub_26A851EA8();
      v14 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A556DF4(v13, v12, 0);
      (*(v3 + 8))(v5, v2);
      v13 = v17;
      v12 = v18;
    }

    sub_26A5E6164(v10, v13, v12);
  }

  return result;
}

uint64_t sub_26A5EAAB8()
{
  v1 = v0;
  v2 = type metadata accessor for OnVisualResponseShownModifier();
  v58 = *(v2 - 1);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - v5;
  v7 = sub_26A84E408();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v55 - v12;
  v13 = sub_26A84F988();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A5EBC04(v0 + v2[9], &v64);
  if (v66)
  {
    sub_26A4C2314(&v64, &v68);
    v16 = (v0 + v2[10]);
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
      sub_26A50429C(&v68, &v64);
      v19 = v1 + v2[7];
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);

      if (v22)
      {
        sub_26A5EC48C(v20, v21, 1);
      }

      else
      {
        sub_26A5EC48C(v20, v21, 0);
        sub_26A851EA8();
        v29 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A556DF4(v20, v21, 0);
        (*(v59 + 8))(v15, v60);
        v20 = v62;
        v21 = v63;
      }

      v30 = objc_allocWithZone(type metadata accessor for RFVisualResponseShown());
      v31 = sub_26A7F6094(&v64, v18, v17, v20, v21);
      v32 = v1 + v2[8];
      v34 = *v32;
      v33 = *(v32 + 8);
      if (*(v32 + 16) == 1)
      {
      }

      else
      {

        sub_26A851EA8();
        v35 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A556DF4(v34, v33, 0);
        (*(v59 + 8))(v15, v60);
        v33 = *(&v64 + 1);
        v34 = v64;
      }

      sub_26A5E6164(v31, v34, v33);

      return __swift_destroy_boxed_opaque_existential_1(&v68);
    }

    __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  else
  {
    sub_26A4DBD10(&v64, &qword_2803ACF28);
  }

  sub_26A720254(v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_26A4DBD10(v6, &qword_2803ADBC8);
    v23 = sub_26A851E98();
    LOBYTE(v53) = 2;
    return sub_26A7BB11C(v23, 1, "SnippetUI/Instrumentation+extensions.swift", 42, 2, 79, "emitVisualResponseShown()", 25, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65);
  }

  else
  {
    (*(v8 + 32))(v61, v6, v7);
    if (qword_2803A8C70 != -1)
    {
      swift_once();
    }

    v25 = v1 + v2[8];
    v27 = *v25;
    v26 = *(v25 + 8);
    HIDWORD(v55) = *(v25 + 16);
    v56 = v26;
    v57 = v8;
    if (HIDWORD(v55) == 1)
    {

      v28 = v27;
    }

    else
    {

      sub_26A851EA8();
      v36 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A556DF4(v27, v26, 0);
      (*(v59 + 8))(v15, v60);
      v28 = v68;
      v26 = v69;
    }

    swift_beginAccess();
    v37 = sub_26A507B58(v28, v26, qword_2803D1E48);
    v39 = v38;

    if (v39)
    {
      swift_endAccess();
      (*(v57 + 16))(v10, v61, v7);
      v40 = objc_allocWithZone(type metadata accessor for RFVisualResponseShown());
      v41 = sub_26A7F5E5C(v10, v37, v39);
      v42 = HIDWORD(v55);
      if (HIDWORD(v55))
      {
        v43 = v56;

        v44 = v43;
        v45 = v27;
      }

      else
      {

        sub_26A851EA8();
        v50 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        v43 = v56;
        sub_26A556DF4(v27, v56, 0);
        (*(v59 + 8))(v15, v60);
        v45 = v68;
        v44 = v69;
      }

      sub_26A5E6164(v41, v45, v44);

      if (v42)
      {
      }

      else
      {

        sub_26A851EA8();
        v51 = sub_26A8501F8();
        sub_26A84EA78();

        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A556DF4(v27, v43, 0);
        (*(v59 + 8))(v15, v60);
        v27 = v68;
        v43 = v69;
      }

      v52 = v57;
      swift_beginAccess();
      sub_26A5EC3AC(v27, v43);
      swift_endAccess();

      return (*(v52 + 8))(v61, v7);
    }

    else
    {
      swift_endAccess();
      sub_26A5EBB40(v1, &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v47 = swift_allocObject();
      v48 = v47;
      sub_26A5EC49C(&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for OnVisualResponseShownModifier);
      v49 = sub_26A851E98();
      LOBYTE(v53) = 2;
      sub_26A7C7120(v49, sub_26A5EBE2C, v48, 0, "SnippetUI/Instrumentation+extensions.swift", 42, 2, 83, "emitVisualResponseShown()", 25, v53, v54, v55, SHIDWORD(v55), v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67);

      return (*(v57 + 8))(v61, v7);
    }
  }
}

uint64_t sub_26A5EB3BC(uint64_t a1)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000047, 0x800000026A88CFB0);
  v6 = a1 + *(type metadata accessor for OnVisualResponseShownModifier() + 32);
  v8 = *v6;
  v7 = *(v6 + 8);
  if (*(v6 + 16) == 1)
  {
  }

  else
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A556DF4(v8, v7, 0);
    (*(v3 + 8))(v5, v2);
    v8 = v11[0];
    v7 = v11[1];
  }

  MEMORY[0x26D663B00](v8, v7);

  return v12;
}

uint64_t sub_26A5EB5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A5EBAC8(v2, v9);
  v5 = swift_allocObject();
  sub_26A5EBB00(v9, v5 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE90);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE98);
  v8 = (a2 + *(result + 36));
  *v8 = sub_26A5EBB38;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  return result;
}

uint64_t sub_26A5EB680()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  result = sub_26A851058();
  if ((v1 & 1) == 0)
  {
    sub_26A851068();
    return sub_26A5EB71C();
  }

  return result;
}

uint64_t sub_26A5EB71C()
{
  v1 = v0;
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 64);
  v7 = *(v1 + 72);
  if (*(v1 + 80) == 1)
  {
  }

  else
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A556DF4(v6, v7, 0);
    (*(v3 + 8))(v5, v2);
    v6 = v22;
    v7 = v23;
  }

  v9 = *(v1 + 88);
  if (*(v1 + 96) == 1)
  {
    v21 = *(v1 + 88);
  }

  else
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v5, v2);
    LOBYTE(v9) = v21;
  }

  v20 = v9;
  v11 = *(v1 + 104);
  if ((*(v1 + 112) & 1) == 0)
  {

    sub_26A851EA8();
    v12 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v11, 0);
    (*(v3 + 8))(v5, v2);
    v11 = v22;
  }

  v13 = objc_allocWithZone(type metadata accessor for RFComponentShown());
  v14 = RFComponentShown.init(componentName:componentType:componentIndex:)(v6, v7, &v20, v11, 0);
  v16 = *(v1 + 40);
  v15 = *(v1 + 48);
  if (*(v1 + 56) == 1)
  {
  }

  else
  {

    sub_26A851EA8();
    v17 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A556DF4(v16, v15, 0);
    (*(v3 + 8))(v5, v2);
    v16 = v22;
    v15 = v23;
  }

  sub_26A5E6164(v14, v16, v15);
}

uint64_t sub_26A5EBB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnVisualResponseShownModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5EBBA4()
{
  v1 = *(type metadata accessor for OnVisualResponseShownModifier() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26A5EA8A4(v2);
}

uint64_t sub_26A5EBC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACF28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = type metadata accessor for OnVisualResponseShownModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 25))
  {
    if ((*(v2 + 24) & 1) == 0)
    {
      MEMORY[0x26D665710](v2 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v2 + 32);
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v2 + v1[7]), *(v2 + v1[7] + 8), *(v2 + v1[7] + 16));
  sub_26A556DF4(*(v2 + v1[8]), *(v2 + v1[8] + 8), *(v2 + v1[8] + 16));
  v5 = v2 + v1[9];
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return swift_deallocObject();
}

uint64_t sub_26A5EBE2C()
{
  v1 = *(type metadata accessor for OnVisualResponseShownModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A5EB3BC(v2);
}

uint64_t sub_26A5EBE8C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26A5484D4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670);
  OUTLINED_FUNCTION_1_42();
  v6 = *(*(v8 + 56) + 8 * v5);
  sub_26A852408();
  *v2 = v8;
  return v6;
}

double sub_26A5EBF4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  sub_26A548510(a1, a2);
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEB8);
    OUTLINED_FUNCTION_1_42();
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_4_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEC0);
    sub_26A852408();
    *v4 = v6;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26A5EC014()
{
  v1 = v0;
  v2 = sub_26A548694();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D60);
  sub_26A8523E8();
  v5 = *(v10 + 48);
  v6 = sub_26A84A778();
  OUTLINED_FUNCTION_46();
  (*(v7 + 8))(v5 + *(v7 + 72) * v4, v6);
  v8 = *(*(v10 + 56) + 8 * v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEB0);
  sub_26A5EC4FC(&qword_281580028, MEMORY[0x277CC8678]);
  sub_26A852408();
  *v1 = v10;
  return v8;
}

double sub_26A5EC158@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  sub_26A548510(a1, a2);
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DD0);
    OUTLINED_FUNCTION_1_42();
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_4_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFED0);
    sub_26A852408();
    *v4 = v6;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26A5EC220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A5485E4();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEC8);
    OUTLINED_FUNCTION_1_42();
    v6 = *(v16 + 48);
    v7 = sub_26A84ACC8();
    OUTLINED_FUNCTION_46();
    (*(v8 + 8))(v6 + *(v8 + 72) * v5, v7);
    v9 = *(v16 + 56);
    v10 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
    OUTLINED_FUNCTION_46();
    sub_26A5EC49C(v9 + *(v11 + 72) * v5, a1, type metadata accessor for TableManager.CardSectionTableDefinition);
    sub_26A5EC4FC(&qword_281580AB0, MEMORY[0x277CC95F0]);
    sub_26A852408();
    *v1 = v16;
    v12 = a1;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
    v12 = a1;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_26A5EC3AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26A548510(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DC0);
  sub_26A8523E8();

  v7 = *(*(v9 + 56) + 16 * v6);
  sub_26A852408();
  *v3 = v9;
  return v7;
}

uint64_t sub_26A5EC48C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26A5EC49C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26A5EC4FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A5EC544()
{
  result = qword_28157FE50;
  if (!qword_28157FE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFE98);
    sub_26A587E3C(&qword_28157FBF8, &qword_2803AFE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE50);
  }

  return result;
}

unint64_t sub_26A5EC5E8()
{
  result = qword_2803AFED8;
  if (!qword_2803AFED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFEA8);
    sub_26A587E3C(&qword_2803AFEE0, &qword_2803AFEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFED8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_42()
{

  return sub_26A8523E8();
}

uint64_t OUTLINED_FUNCTION_3_38()
{
}

uint64_t OUTLINED_FUNCTION_4_34()
{
  v4 = (*(v0 + 56) + 40 * v1);

  return sub_26A4C2314(v4, v2);
}

void SimpleItemPlayerView.init(text1:text2:text3:text4:play:pause:)()
{
  OUTLINED_FUNCTION_28_0();
  v51 = v0;
  v52 = v1;
  v48 = v2;
  v49 = v3;
  v53 = v5;
  v54 = v4;
  v56 = v6;
  v57 = v7;
  v55 = v8;
  type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v10);
  v19 = OUTLINED_FUNCTION_15_18(v11, v12, v13, v14, v15, v16, v17, v18, v45);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = (v22 - v21);
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_project_value_buffer(v24, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  sub_26A4EF6D0();
  sub_26A6AEE74(v60);
  memcpy(v23, v60, 0xBFuLL);
  OUTLINED_FUNCTION_3_39();
  sub_26A5EFC04();
  v25 = &v23[v19[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v61 = xmmword_281588758[0];
  v62 = unk_281588768;
  v63 = xmmword_281588778;
  v64 = unk_281588788;
  v65 = xmmword_281588758[0];
  v66 = unk_281588768;
  v67 = xmmword_281588778;
  v68 = unk_281588788;
  v46 = unk_281588788;
  v47 = xmmword_281588778;
  sub_26A4EF6D0();
  sub_26A6AEE74(v69);
  memcpy(v25, v69, 0xC0uLL);
  *(v25 + 12) = v47;
  *(v25 + 13) = v46;
  v26 = v66;
  *(v25 + 14) = v65;
  *(v25 + 15) = v26;
  v27 = v68;
  *(v25 + 16) = v67;
  *(v25 + 17) = v27;
  v28 = v19[6];
  *&v23[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v29 = v19[7];
  *&v23[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v30 = &v23[v19[8]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v56[3];
  v32 = v56[4];
  __swift_project_boxed_opaque_existential_1(v56, v31);
  *&v23[v19[9]] = (*(v32 + 8))(v31, v32);
  sub_26A4EF6D0();
  if (v59)
  {
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v33 = OUTLINED_FUNCTION_0_38();
    v35 = v34(v33);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_26A4DBD10(v58, &qword_2803A91B8);
    v35 = 0;
  }

  *&v23[v19[10]] = v35;
  sub_26A4EF6D0();
  if (v59)
  {
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v36 = OUTLINED_FUNCTION_0_38();
    v38 = v37(v36);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_26A4DBD10(v58, &qword_2803A91B8);
    v38 = 0;
  }

  *&v23[v19[11]] = v38;
  sub_26A4EF6D0();
  if (v59)
  {
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v39 = OUTLINED_FUNCTION_0_38();
    v41 = v40(v39);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_26A4DBD10(v58, &qword_2803A91B8);
    v41 = 0;
  }

  *&v23[v19[12]] = v41;

  sub_26A6B5624(v48, v51, v49, v52, v50);
  OUTLINED_FUNCTION_9_30();
  sub_26A5EFC04();
  OUTLINED_FUNCTION_8_31();
  sub_26A5F03AC(v42, v43);
  v44 = sub_26A851248();

  sub_26A4DBD10(v53, &qword_2803A91B8);
  sub_26A4DBD10(v54, &qword_2803A91B8);
  sub_26A4DBD10(v57, &qword_2803A91B8);
  sub_26A5A0AF8(v50);
  *&v23[v19[13]] = v44;
  sub_26A5EFC5C(v23, v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  OUTLINED_FUNCTION_27_0();
}

{
  OUTLINED_FUNCTION_28_0();
  v48 = v0;
  v49 = v1;
  v54 = v2;
  v55 = v3;
  v51 = v5;
  v52 = v4;
  v53 = v6;
  type metadata accessor for StandardPlayerButtonView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  v17 = OUTLINED_FUNCTION_15_18(v9, v10, v11, v12, v13, v14, v15, v16, v45);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v21 = (v20 - v19);
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_project_value_buffer(v22, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  sub_26A4EF6D0();
  sub_26A6AEE74(v58);
  memcpy(v21, v58, 0xBFuLL);
  OUTLINED_FUNCTION_3_39();
  sub_26A5EFC04();
  v23 = &v21[v17[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v59 = xmmword_281588758[0];
  v60 = unk_281588768;
  v61 = xmmword_281588778;
  v62 = unk_281588788;
  v63 = xmmword_281588758[0];
  v64 = unk_281588768;
  v65 = xmmword_281588778;
  v66 = unk_281588788;
  v46 = unk_281588788;
  v47 = xmmword_281588778;
  sub_26A4EF6D0();
  sub_26A6AEE74(v67);
  memcpy(v23, v67, 0xC0uLL);
  *(v23 + 12) = v47;
  *(v23 + 13) = v46;
  v24 = v64;
  *(v23 + 14) = v63;
  *(v23 + 15) = v24;
  v25 = v66;
  *(v23 + 16) = v65;
  *(v23 + 17) = v25;
  v26 = v17[6];
  *&v21[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v27 = v17[7];
  *&v21[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v28 = &v21[v17[8]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v54[3];
  v30 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v29);
  *&v21[v17[9]] = (*(v30 + 8))(v29, v30);
  sub_26A4EF6D0();
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v31 = OUTLINED_FUNCTION_0_38();
    v33 = v32(v31);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    sub_26A4DBD10(v56, &qword_2803A91B8);
    v33 = 0;
  }

  *&v21[v17[10]] = v33;
  sub_26A4EF6D0();
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v34 = OUTLINED_FUNCTION_0_38();
    v36 = v35(v34);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    sub_26A4DBD10(v56, &qword_2803A91B8);
    v36 = 0;
  }

  *&v21[v17[11]] = v36;
  sub_26A4EF6D0();
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v37 = OUTLINED_FUNCTION_0_38();
    v39 = v38(v37);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    sub_26A4DBD10(v56, &qword_2803A91B8);
    v39 = 0;
  }

  *&v21[v17[12]] = v39;
  v40 = v48;
  v41 = v49;
  sub_26A6B5898(v40, v41, v50);
  OUTLINED_FUNCTION_9_30();
  sub_26A5EFC04();
  OUTLINED_FUNCTION_8_31();
  sub_26A5F03AC(v42, v43);
  v44 = sub_26A851248();

  sub_26A4DBD10(v55, &qword_2803A91B8);
  sub_26A4DBD10(v51, &qword_2803A91B8);
  sub_26A4DBD10(v52, &qword_2803A91B8);
  sub_26A5A0AF8(v50);
  *&v21[v17[13]] = v44;
  sub_26A5EFC5C(v21, v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  OUTLINED_FUNCTION_27_0();
}

uint64_t type metadata accessor for SimpleItemPlayerView()
{
  result = qword_2803AFFF0;
  if (!qword_2803AFFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A5ECC94()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SimpleItemPlayerView();
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4EF020();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A5ECE7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SimpleItemPlayerView();
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A5ED084()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemPlayerView() + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

void sub_26A5ED714()
{
  OUTLINED_FUNCTION_28_0();
  v47 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v43 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v46 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  v42 = &v40 - v10;
  sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v44 = v12;
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  if (qword_2803A89D0 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
  __swift_project_value_buffer(v16, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  sub_26A4EF6D0();
  sub_26A6AEE74(v51);
  memcpy(v2, v51, 0xBFuLL);
  OUTLINED_FUNCTION_3_39();
  sub_26A5EFC04();
  v17 = type metadata accessor for SimpleItemPlayerView();
  v18 = &v2[v17[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v52 = xmmword_281588758[0];
  v53 = unk_281588768;
  v54 = xmmword_281588778;
  v55 = unk_281588788;
  v56 = xmmword_281588758[0];
  v57 = unk_281588768;
  v58 = xmmword_281588778;
  v59 = unk_281588788;
  v40 = unk_281588788;
  v41 = xmmword_281588778;
  sub_26A4EF6D0();
  sub_26A6AEE74(v60);
  memcpy(v18, v60, 0xC0uLL);
  v19 = v40;
  *(v18 + 12) = v41;
  *(v18 + 13) = v19;
  v20 = v57;
  *(v18 + 14) = v56;
  *(v18 + 15) = v20;
  v21 = v59;
  *(v18 + 16) = v58;
  *(v18 + 17) = v21;
  v22 = v17[6];
  *&v2[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v23 = v17[7];
  *&v2[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v24 = &v2[v17[8]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v47;
  sub_26A84C1B8();
  v26 = TextProperty.asAnyView()();
  v27 = v45;
  v28 = *(v44 + 1);
  v28(v15, v45);
  *&v2[v17[9]] = v26;
  v29 = v42;
  sub_26A84C1C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v27);
  v44 = v28;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v29, &qword_2803AA838);
    v31 = 0;
  }

  else
  {
    v31 = TextProperty.asAnyView()();
    v28(v29, v27);
  }

  v32 = v46;
  *&v2[v17[10]] = v31;
  v33 = v43;
  sub_26A84C1D8();
  v34 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_26A4DBD10(v33, &qword_2803AA830);
    v35 = 0;
  }

  else
  {
    v35 = MultilineTextProperty.asAnyView()();
    (*(*(v34 - 8) + 8))(v33, v34);
  }

  *&v2[v17[11]] = v35;
  sub_26A84C1E8();
  if (__swift_getEnumTagSinglePayload(v32, 1, v27) == 1)
  {
    sub_26A4DBD10(v32, &qword_2803AA838);
    v36 = 0;
  }

  else
  {
    v36 = TextProperty.asAnyView()();
    v44(v32, v27);
  }

  *&v2[v17[12]] = v36;
  v37 = sub_26A84C178();
  KeyPath = swift_getKeyPath();
  v49 = 0;
  v50 = v37;
  sub_26A5A23F4();
  v38 = sub_26A851248();
  sub_26A84C208();
  OUTLINED_FUNCTION_46();
  (*(v39 + 8))(v25);
  *&v2[v17[13]] = v38;
  OUTLINED_FUNCTION_27_0();
}

uint64_t SimpleItemPlayerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A5ECC94();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28);
  v10 = (v1 + *(type metadata accessor for SimpleItemConstants() + 40) + v9);
  v11 = v10[1];
  v21 = *v10;
  v22 = v11;
  v23 = *(v10 + 32);
  sub_26A5ED084();
  sub_26A5ECE7C(v6);
  v12 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  v20 = v1;
  sub_26A4C90C0();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26A68CD04;
  *(v13 + 24) = 0;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFFD8) + 36);
  *(v14 + 16) = swift_getKeyPath();
  *(v14 + 24) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v16 = *(v15 + 40);
  *(v14 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v17 = v14 + *(v15 + 44);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *v14 = sub_26A4D1F7C;
  *(v14 + 8) = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFFE0);
  *(a1 + *(result + 36)) = 47;
  return result;
}

uint64_t sub_26A5EDEFC(uint64_t a1)
{
  v2 = sub_26A84F3A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A5ECE7C(v5);
  v6 = sub_26A84F388();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_26A84FA58();
    v8 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28) + 24);
    v11[0] = v7;
    v11[1] = v8;
    LOBYTE(v11[2]) = 0;
    sub_26A5EE918(a1, &v11[3]);
    sub_26A851458();
    sub_26A84F628();
    memcpy(v13, v11, 0x588uLL);
    memcpy(v11, v13, sizeof(v11));
    v12 = 256;
    v9 = &qword_2803A9F40;
    sub_26A4EF6D0();
    v14 = 0;
  }

  else
  {
    sub_26A5EE210(v11);
    v9 = &qword_2803A9F70;
    sub_26A4EF6D0();
    v14 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9F70);
  sub_26A5F00FC(&qword_2803A9F38, &qword_2803A9F40, &unk_26A855C30, sub_26A4D67BC);
  sub_26A4D6874();
  sub_26A84FDF8();
  return sub_26A4DBD10(v11, v9);
}

void *sub_26A5EE210@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84FA78();
  v4 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28) + 24);
  __src[0] = v3;
  __src[1] = v4;
  LOBYTE(__src[2]) = 0;
  sub_26A5EE320(v1, &__src[3]);
  sub_26A851458();
  sub_26A84F628();
  memcpy(__dst, __src, 0x558uLL);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  result = memcpy(a1, __dst, 0x5C8uLL);
  *(a1 + 1480) = 256;
  *(a1 + 1488) = KeyPath;
  *(a1 + 1496) = 0;
  *(a1 + 1504) = v6;
  *(a1 + 1512) = 256;
  return result;
}

uint64_t sub_26A5EE320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src[0] = sub_26A84FC08();
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  sub_26A5EE490(a1);
  sub_26A851448();
  sub_26A84F628();
  memcpy(__dst, __src, 0x4B8uLL);
  memcpy(__src, __dst, sizeof(__src));
  v4 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28) + 24);
  v5 = *(a1 + *(type metadata accessor for SimpleItemPlayerView() + 52));
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  *(a2 + 1320) = v4;
  *(a2 + 1328) = 0;
  *(a2 + 1336) = v5;
  swift_retain_n();
  sub_26A4DBD10(__src, &qword_2803B0020);

  return sub_26A4DBD10(__dst, &qword_2803B0020);
}

uint64_t sub_26A5EE490(uint64_t a1)
{
  sub_26A5EE6F8(v14);
  v2 = *(a1 + *(type metadata accessor for SimpleItemPlayerView() + 36));
  if (qword_2803A8BA8 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A6AEE74(__src);
  sub_26A4DBD10(v9, &qword_2803AA880);
  memcpy(v11, __src, sizeof(v11));
  v13 = 0;
  v12 = sub_26A80A810;
  v10 = v2;

  sub_26A5EE7A8(v9);
  sub_26A5EE868(v8);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4DBD10(v8, &qword_2803AA888);
  sub_26A4DBD10(v9, &qword_2803AA888);
  sub_26A4DBD10(&v10, &qword_2803A99A0);
  sub_26A4DBD10(v14, &qword_2803AA888);
  sub_26A4DBD10(&v4, &qword_2803AA888);
  sub_26A4DBD10(v5, &qword_2803AA888);
  sub_26A4DBD10(v6, &qword_2803A99A0);
  return sub_26A4DBD10(v7, &qword_2803AA888);
}

uint64_t sub_26A5EE6F8@<X0>(void *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for SimpleItemPlayerView() + 48)))
  {
    if (qword_2803A8BB8 != -1)
    {
      OUTLINED_FUNCTION_11_25();
    }

    sub_26A4EF6D0();
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    bzero(a1, 0x128uLL);
  }
}

uint64_t sub_26A5EE7A8@<X0>(void *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for SimpleItemPlayerView() + 40)))
  {
    if (qword_2803A8BB0 != -1)
    {
      swift_once();
    }

    sub_26A4EF6D0();
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    bzero(a1, 0x128uLL);
  }
}

uint64_t sub_26A5EE868@<X0>(void *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for SimpleItemPlayerView() + 44)))
  {
    if (qword_2803A8BB8 != -1)
    {
      OUTLINED_FUNCTION_11_25();
    }

    sub_26A4EF6D0();
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    bzero(a1, 0x128uLL);
  }
}

uint64_t sub_26A5EE918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src[0] = sub_26A84FC08();
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  sub_26A5EEA88(a1);
  sub_26A851448();
  sub_26A84F628();
  memcpy(__dst, __src, 0x4E1uLL);
  memcpy(__src, __dst, sizeof(__src));
  v4 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908) + 28) + 24);
  v5 = *(a1 + *(type metadata accessor for SimpleItemPlayerView() + 52));
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  *(a2 + 1368) = v4;
  *(a2 + 1376) = 0;
  *(a2 + 1384) = v5;
  swift_retain_n();
  sub_26A4DBD10(__src, &qword_2803B0018);

  return sub_26A4DBD10(__dst, &qword_2803B0018);
}

uint64_t sub_26A5EEA88(uint64_t a1)
{
  sub_26A5EE6F8(v24);
  v2 = *(a1 + *(type metadata accessor for SimpleItemPlayerView() + 36));
  if (qword_2803A8BA8 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A6AEE74(__src);
  sub_26A4DBD10(v13, &qword_2803AA880);
  memcpy(v21, __src, sizeof(v21));
  v23 = 0;
  v22 = sub_26A80A810;
  v20 = v2;

  sub_26A5EE7A8(v19);
  sub_26A5EE868(v13);
  v3 = sub_26A850258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
  sub_26A84ED48();
  v13[296] = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = 0;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4DBD10(v13, &qword_2803AAF88);
  sub_26A4DBD10(v19, &qword_2803AA888);
  sub_26A4DBD10(&v20, &qword_2803A99A0);
  sub_26A4DBD10(v24, &qword_2803AA888);
  sub_26A4DBD10(&v9, &qword_2803AAF88);
  sub_26A4DBD10(v10, &qword_2803AA888);
  sub_26A4DBD10(v11, &qword_2803A99A0);
  return sub_26A4DBD10(v12, &qword_2803AA888);
}

uint64_t sub_26A5EED44()
{
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A4DBD10(v14, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803AFEE8);

  sub_26A4DBD10(v14, &qword_2803ABAC0);
  return sub_26A4DBD10(v16, &qword_2803AA880);
}

uint64_t sub_26A5EF034()
{
  if (qword_2803A90E0 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v2 = qword_281588938;
  *(v1 + 32) = qword_281588938;
  v3 = byte_281588940;
  *(v1 + 40) = byte_281588940;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588938;
  *(v5 + 32) = qword_281588938;
  v7 = byte_281588940;
  *(v5 + 40) = byte_281588940;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (*&v23[0])
  {
    v9 = v23[1];
    *(inited + 40) = v23[0];
    *(inited + 56) = v9;
    *(inited + 72) = v24[0];
  }

  else
  {
    sub_26A4F20CC(v26, inited + 40);
  }

  sub_26A4DBD10(v25, &qword_2803AA880);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v11 = qword_281588998;
  *(v10 + 32) = qword_281588998;
  v12 = byte_2815889A0;
  *(v10 + 40) = byte_2815889A0;
  *(v10 + 48) = 1;
  *(v10 + 56) = 3;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(v10);
  *(inited + 88) = v13;
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26A8570D0;
  v15 = qword_281588998;
  *(v14 + 32) = qword_281588998;
  v16 = byte_2815889A0;
  *(v14 + 40) = byte_2815889A0;
  sub_26A4E324C(v15, v16);

  sub_26A58787C(v17);
  sub_26A5075B0();

  if (v20)
  {
    *(inited + 96) = v20;
    *(inited + 112) = v21;
    *(inited + 128) = v22;
  }

  else
  {
    sub_26A4F20CC(v24, inited + 96);
  }

  sub_26A4DBD10(v23, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v18 = sub_26A8516A8();
  v26[0] = 0u;
  memset(v25, 0, sizeof(v25));
  sub_26A66DDEC(v18, &unk_2803AFF38);

  sub_26A4DBD10(v25, &qword_2803ABAC0);
  return sub_26A4DBD10(v27, &qword_2803AA880);
}

uint64_t sub_26A5EF49C()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v2 = qword_281588938;
  *(v1 + 32) = qword_281588938;
  v3 = byte_281588940;
  *(v1 + 40) = byte_281588940;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588938;
  *(v5 + 32) = qword_281588938;
  v7 = byte_281588940;
  *(v5 + 40) = byte_281588940;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A4DBD10(v14, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803AFF88);

  sub_26A4DBD10(v14, &qword_2803ABAC0);
  return sub_26A4DBD10(v16, &qword_2803AA880);
}

void sub_26A5EF78C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v47 = v3;
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v46 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v11 = sub_26A84C208();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for SimpleItemPlayerView();
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB58);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB60);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19();
  v50 = v28;
  OUTLINED_FUNCTION_92();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v45 - v31;
  (*(v13 + 16))(v17, v1, v11, v30);
  v49 = v22;
  sub_26A5ED714();
  v52 = v1;
  v33 = v48;
  sub_26A84C1F8();
  sub_26A4EF020();
  if (__swift_getEnumTagSinglePayload(v9, 1, v33) == 1)
  {
    sub_26A4DBD10(v9, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v35 = &v26[*(v23 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v37 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
    *v35 = KeyPath;
  }

  else
  {
    v38 = v46;
    v39 = *(v47 + 32);
    v39(v46, v9, v33);
    v40 = swift_getKeyPath();
    v41 = &v26[*(v23 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v39(v41 + v42, v38, v33);
    v43 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v41 + v42, 0, 1, v43);
    *v41 = v40;
  }

  sub_26A5EFC5C(v49, v26);
  v44 = sub_26A84C188();
  sub_26A4DCCEC(v44);

  sub_26A4DBD10(v26, &qword_2803AAB58);
  sub_26A84C198();

  sub_26A4EF6D0();
  sub_26A5F0180();
  sub_26A851248();
  sub_26A4DBD10(v32, &qword_2803AAB60);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A5EFC04()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A5EFC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleItemPlayerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5EFCE4(uint64_t a1)
{
  result = sub_26A5F03AC(&qword_2803AFFE8, MEMORY[0x277D63278]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A5EFD64()
{
  sub_26A5EFF28(319, &qword_2803AE500, type metadata accessor for SimpleItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        sub_26A5EFF28(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A5EFF28(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A5EFF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A5EFF8C()
{
  result = qword_2803B0000;
  if (!qword_2803B0000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFFE0);
    sub_26A5F0018();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0000);
  }

  return result;
}

unint64_t sub_26A5F0018()
{
  result = qword_2803B0008;
  if (!qword_2803B0008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFFD8);
    sub_26A4DBCC8(&qword_2803B0010, &qword_2803A9F20);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0008);
  }

  return result;
}

uint64_t sub_26A5F00FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_26A5F0180()
{
  result = qword_2803B0028;
  if (!qword_2803B0028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB60);
    sub_26A5F0238();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0028);
  }

  return result;
}

unint64_t sub_26A5F0238()
{
  result = qword_2803B0030;
  if (!qword_2803B0030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB50);
    sub_26A5F02C4();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0030);
  }

  return result;
}

unint64_t sub_26A5F02C4()
{
  result = qword_2803B0038;
  if (!qword_2803B0038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB58);
    sub_26A5F03AC(&qword_2803AC900, type metadata accessor for SimpleItemPlayerView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0038);
  }

  return result;
}

uint64_t sub_26A5F03AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 72) = &a9 - v9;

  return type metadata accessor for SimpleItemPlayerView();
}

uint64_t Text.ifLet<A>(_:transform:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a2;
  v29 = a7;
  v27[1] = a3;
  v10 = sub_26A852068();
  OUTLINED_FUNCTION_2_34();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  OUTLINED_FUNCTION_2_34();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v10, v19);
  if (__swift_getEnumTagSinglePayload(v15, 1, a8) == 1)
  {
    (*(v12 + 8))(v15, v10);
    v22 = OUTLINED_FUNCTION_2_44();
    sub_26A4EF6C0(v22, v23, v24);
  }

  else
  {
    (*(v17 + 32))(v21, v15, a8);
    v25 = OUTLINED_FUNCTION_2_44();
    v28(v25);
    OUTLINED_FUNCTION_8_32();
    (*(v17 + 8))(v21, a8);
  }

  return OUTLINED_FUNCTION_2_44();
}

uint64_t Text.if (_:transform:)(char a1)
{
  if (a1)
  {
    v1 = OUTLINED_FUNCTION_2_44();
    v2(v1);
    OUTLINED_FUNCTION_8_32();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_2_44();
    sub_26A4EF6C0(v3, v4, v5);
  }

  return OUTLINED_FUNCTION_2_44();
}

uint64_t Text.if (_:_:else:)(char a1, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  if (a1)
  {
    return a2(a6, a7, a8 & 1, a9);
  }

  else
  {
    return a4(a6, a7, a8 & 1, a9);
  }
}

uint64_t Text.superScript(for:)(const __CTFont *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  CTFontGetSize(a1);
  v5 = sub_26A850688();
  v7 = v6;
  v9 = v8;
  v10 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_26A8503E8();
  sub_26A4E2544(v4, &qword_2803AB208);
  v11 = sub_26A850738();
  v13 = v12;
  LOBYTE(v4) = v14;

  sub_26A4EC448(v5, v7, v9 & 1);

  sub_26A8503C8();
  v15 = sub_26A850578();
  sub_26A4EC448(v11, v13, v4 & 1);

  return v15;
}

double sub_26A5F0990()
{
  *&result = 0x20A280E220;
  xmmword_2803B0040 = xmmword_26A868650;
  byte_2803B0050 = 0;
  qword_2803B0058 = MEMORY[0x277D84F90];
  return result;
}

uint64_t static Text.RFBulletSeparator.getter()
{
  if (qword_2803A8BC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_39(&xmmword_2803B0040);
  return OUTLINED_FUNCTION_1_43();
}

void sub_26A5F0A28()
{
  xmmword_2803B0060 = xmmword_26A868660;
  byte_2803B0070 = 0;
  OUTLINED_FUNCTION_5_36(MEMORY[0x277D84F90]);
}

uint64_t static Text.RFEmDashSeparator.getter()
{
  if (qword_2803A8BC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_39(&xmmword_2803B0060);
  return OUTLINED_FUNCTION_1_43();
}

void sub_26A5F0ABC()
{
  xmmword_2803B0080 = xmmword_26A868670;
  byte_2803B0090 = 0;
  OUTLINED_FUNCTION_5_36(MEMORY[0x277D84F90]);
}

uint64_t static Text.RFEmpty.getter()
{
  if (qword_2803A8BD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_39(&xmmword_2803B0080);
  return OUTLINED_FUNCTION_1_43();
}

void sub_26A5F0B50()
{
  xmmword_2803B00A0 = xmmword_26A868680;
  byte_2803B00B0 = 0;
  OUTLINED_FUNCTION_5_36(MEMORY[0x277D84F90]);
}

uint64_t static Text.RFMidDotSeparator.getter()
{
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_39(&xmmword_2803B00A0);
  return OUTLINED_FUNCTION_1_43();
}

void sub_26A5F0BE4()
{
  xmmword_2803B00C0 = xmmword_26A868690;
  byte_2803B00D0 = 0;
  OUTLINED_FUNCTION_5_36(MEMORY[0x277D84F90]);
}

uint64_t static Text.RFNewLine.getter()
{
  if (qword_2803A8BE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_39(&xmmword_2803B00C0);
  return OUTLINED_FUNCTION_1_43();
}

void sub_26A5F0C78()
{
  xmmword_2803B00E0 = xmmword_26A8686A0;
  byte_2803B00F0 = 0;
  OUTLINED_FUNCTION_5_36(MEMORY[0x277D84F90]);
}

uint64_t static Text.RFSpace.getter()
{
  if (qword_2803A8BE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_39(&xmmword_2803B00E0);
  return OUTLINED_FUNCTION_1_43();
}

double sub_26A5F0D0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0138);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = sub_26A850798();
  OUTLINED_FUNCTION_2_34();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26A565334(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_26A4E2544(v2, &qword_2803B0138);
    v9 = MEMORY[0x277CBF398];
  }

  else
  {
    (*(v5 + 32))(v8, v2, v3);
    v9 = v11;
    sub_26A850778();
    (*(v5 + 8))(v8, v3);
  }

  return *v9;
}

BOOL sub_26A5F0EA4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4 + *(_s15TextLayoutShapeVMa() + 20);
  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = *v9;
    sub_26A8507A8();
    OUTLINED_FUNCTION_4_35();
    sub_26A5F18EC(v11, v12);
    OUTLINED_FUNCTION_29_4();
    sub_26A851D88();
    OUTLINED_FUNCTION_29_4();
    sub_26A851DD8();
    if (v10 < OUTLINED_FUNCTION_10_26())
    {
      return 0;
    }
  }

  sub_26A8507A8();
  OUTLINED_FUNCTION_4_35();
  sub_26A5F18EC(v13, v14);
  OUTLINED_FUNCTION_29_4();
  sub_26A851D88();
  OUTLINED_FUNCTION_29_4();
  sub_26A851DD8();
  if (OUTLINED_FUNCTION_10_26() < 2)
  {
    return 0;
  }

  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  Width = CGRectGetWidth(v17);
  v18.origin.x = OUTLINED_FUNCTION_2_37();
  return Width - CGRectGetWidth(v18) > 8.0;
}

uint64_t sub_26A5F1014@<X0>(uint64_t a1@<X8>)
{
  sub_26A5F0D0C();
  v2 = OUTLINED_FUNCTION_2_37();
  if (sub_26A5F0EA4(v2, v3, v4, v5))
  {
    v11.origin.x = OUTLINED_FUNCTION_7_34();
    CGRectGetHeight(v11);
    v12.origin.x = OUTLINED_FUNCTION_2_37();
    CGRectGetWidth(v12);
    v13.origin.x = OUTLINED_FUNCTION_7_34();
    CGRectGetWidth(v13);
    MEMORY[0x28223BE20](v6);
    result = sub_26A850558();
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    result = sub_26A850548();
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_26A5F1140(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMinY(v9);
  sub_26A850508();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxX(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  sub_26A850528();
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMaxX(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMaxY(v13);
  sub_26A850528();
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMaxX(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMaxY(v15);
  sub_26A850528();
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMaxX(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetMaxY(v17);
  sub_26A850528();
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMinX(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMaxY(v19);
  sub_26A850528();
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMinX(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMinY(v21);
  return sub_26A850528();
}

double sub_26A5F1310@<D0>(uint64_t a1@<X8>)
{
  sub_26A5F1014(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_26A5F1374(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

uint64_t sub_26A5F13E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A5F18EC(&qword_2803B0140, _s15TextLayoutShapeVMa);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_26A5F147C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A5F18EC(&qword_2803B0140, _s15TextLayoutShapeVMa);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_26A5F1510(uint64_t a1)
{
  v2 = sub_26A5F18EC(&qword_2803B0140, _s15TextLayoutShapeVMa);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_26A5F158C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB910);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26A8570D0;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  *a2 = v7;
  sub_26A4EF6C0(v3, v4, v5);
}

uint64_t _s15TextLayoutShapeVMa()
{
  result = qword_2803B0100;
  if (!qword_2803B0100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A5F1710()
{
  sub_26A8507A8();
  if (v0 <= 0x3F)
  {
    sub_26A5F1794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A5F1794()
{
  if (!qword_2803B0110)
  {
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B0110);
    }
  }
}

unint64_t sub_26A5F17E8()
{
  result = qword_2803B0118;
  if (!qword_2803B0118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0118);
  }

  return result;
}

uint64_t sub_26A5F18EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_39@<X0>(uint64_t a1@<X8>)
{
  sub_26A4EF6C0(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_26A851DC8();
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return sub_26A8507A8();
}

id sub_26A5F1A60@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = [v4 text_1];
  if (v7)
  {
    v32 = a1;
    v28 = v7;
    RFTextProperty.asPartialText()(v34);
    v31 = [v4 is_quote];
    v30 = [v4 has_background_platter];
    v29 = [v4 has_background_platter];
    *a2 = swift_getKeyPath();
    *(a2 + 9) = 0;
    swift_unknownObjectWeakInit();
    if (qword_28157E660 != -1)
    {
      swift_once();
    }

    v45 = v3;
    v35[0] = xmmword_281588758[0];
    v35[1] = unk_281588768;
    v35[2] = xmmword_281588778;
    v35[3] = unk_281588788;
    v36 = xmmword_281588758[0];
    v37 = unk_281588768;
    v38 = xmmword_281588778;
    v39 = unk_281588788;
    v26 = unk_281588788;
    v27 = xmmword_281588778;
    sub_26A5C277C(v35, v44);
    sub_26A6AEE74(__src);
    memcpy((a2 + 24), __src, 0xC0uLL);
    *(a2 + 232) = v26;
    *(a2 + 216) = v27;
    v8 = v37;
    *(a2 + 248) = v36;
    v9 = v38;
    v10 = v39;
    *(a2 + 264) = v8;
    *(a2 + 280) = v9;
    *(a2 + 296) = v10;
    if (qword_2803A8D88 != -1)
    {
      swift_once();
    }

    v11 = xmmword_2803D21A8;
    v13 = qword_2803D21B8;
    v12 = unk_2803D21C0;
    v14 = xmmword_2803D21C8;
    v15 = byte_2803D21D8;
    v41[0] = *algn_2803D21D9;
    *(v41 + 3) = dword_2803D21DC;
    v16 = qword_2803D21E0;

    sub_26A6AEE74(v42);
    memcpy((a2 + 312), v42, 0xC0uLL);
    *(a2 + 504) = v14;
    *(a2 + 520) = v15 & 1;
    *(a2 + 528) = v16;
    *(a2 + 536) = v11;
    *(a2 + 552) = v13;
    *(a2 + 560) = v12;
    *(a2 + 568) = v14;
    *(a2 + 584) = v15;
    *(a2 + 585) = v41[0];
    *(a2 + 588) = *(v41 + 3);
    *(a2 + 592) = v16;
    *(a2 + 600) = swift_getKeyPath();
    *(a2 + 608) = 0;
    *(a2 + 616) = swift_getKeyPath();
    *(a2 + 624) = 0;
    v17 = type metadata accessor for LongItemTextView();
    v18 = v17[9];
    *(a2 + v18) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v19 = a2 + v17[10];
    *v19 = swift_getKeyPath();
    *(v19 + 8) = 0;
    v20 = v17[11];
    *(a2 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v21 = a2 + v17[12];
    *v21 = swift_getKeyPath();
    *(v21 + 8) = 0;
    v22 = a2 + v17[13];
    *v22 = swift_getKeyPath();
    *(v22 + 8) = 0;
    memcpy(__dst, v34, 0xFAuLL);
    memcpy(v44, v34, 0xFAuLL);
    sub_26A4EC458(__dst, v33);
    sub_26A4EC4B4();
    v23 = sub_26A851248();

    memcpy(v44, v34, 0xFAuLL);
    result = sub_26A4EC508(v44);
    *(a2 + v17[18]) = v23;
    *(a2 + v17[14]) = v30;
    *(a2 + v17[15]) = v32 & 1;
    *(a2 + v17[16]) = v31;
    *(a2 + v17[17]) = v29;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v25 = v4;
    *(v25 + 8) = &unk_287B13688;
    *(v25 + 16) = 0;
    swift_willThrow();
    return v4;
  }

  return result;
}

unint64_t sub_26A5F1EEC()
{
  result = qword_2803B0148;
  if (!qword_2803B0148)
  {
    type metadata accessor for LongItemTextView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0148);
  }

  return result;
}

void sub_26A5F1F44()
{
  sub_26A5046B4();
  if (v0 <= 0x3F)
  {
    sub_26A5F203C();
    if (v1 <= 0x3F)
    {
      sub_26A8505D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A5F203C()
{
  if (!qword_2803A9230)
  {
    sub_26A84F3A8();
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803A9230);
    }
  }
}

uint64_t sub_26A5F20D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a6;
  v21[1] = a7;
  OUTLINED_FUNCTION_2_34();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26A84EF38();
  v19 = MEMORY[0x28223BE20](v18);
  (*(v14 + 16))(v17, v7, a3, v19);
  sub_26A84EF48();
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = v21[0];
  v21[8] = a1;
  v21[9] = a2;
  swift_getWitnessTable();
  return sub_26A84F1B8();
}

uint64_t sub_26A5F2278()
{
  v1 = v0;
  v2 = sub_26A84F3A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A72003C(v5);
  v6 = sub_26A84F388();
  result = (*(v3 + 8))(v5, v2);
  v8 = *(v1 + 16);
  if (v6)
  {
    if (v8 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    v8 *= 2;
    if (!__OFSUB__(v8, 1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!__OFSUB__(v8, 1))
  {
LABEL_7:
    v16[2] = sub_26A851938();
    v16[3] = v9;
    sub_26A53ACC8();
    v10 = sub_26A850898();
    v12 = v11;
    v14 = v13;
    v15 = sub_26A850738();
    sub_26A4EC448(v10, v12, v14 & 1);

    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_26A5F2424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0150);
  v4 = *(a1 + 16);
  v46 = *(a1 + 24);
  v47 = v4;
  v5 = sub_26A84EFE8();
  OUTLINED_FUNCTION_3_40(&qword_28157FE88);
  v50 = v5;
  sub_26A84F1A8();
  OUTLINED_FUNCTION_2_34();
  v51 = v7;
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0158);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0160);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - v15;
  v45 = sub_26A8505B8();
  OUTLINED_FUNCTION_2_34();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26A5F2278();
  v24 = v23;
  v26 = v25;
  v27 = sub_26A850588();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v27);
  v28 = sub_26A8507D8();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v28);
  sub_26A8505A8();
  sub_26A850598();
  v30 = v29;
  sub_26A4EC448(v22, v24, v26 & 1);

  (*(v18 + 8))(v21, v45);
  v31 = *(v2 + 16);
  v32 = 0.0;
  if (v31 >= 2)
  {
    v32 = *(v2 + 32) * (v31 - 1);
  }

  v34 = v46;
  v33 = v47;
  v35 = sub_26A5F2844(v47, v46, v30 + v32);
  v36 = MEMORY[0x28223BE20](v35);
  *(&v45 - 4) = v33;
  *(&v45 - 3) = v34;
  *(&v45 - 2) = v2;
  v37 = v48;
  v38(sub_26A5F2C10, v36);

  v39 = OUTLINED_FUNCTION_2_45(&qword_28157FE80);
  OUTLINED_FUNCTION_1_44();
  WitnessTable = swift_getWitnessTable();
  v54 = v39;
  v55 = WitnessTable;
  OUTLINED_FUNCTION_3_18();
  v41 = v52;
  swift_getWitnessTable();
  v42 = v49;
  sub_26A80757C(v37);
  v43 = *(v51 + 8);
  v43(v37, v41);
  sub_26A80757C(v42);
  return (v43)(v42, v41);
}

uint64_t (*sub_26A5F2844(uint64_t a1, uint64_t a2, double a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return sub_26A5F2C78;
}

uint64_t sub_26A5F28A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26A84EFE8();
  v7 = sub_26A5F2C84();
  WitnessTable = swift_getWitnessTable();
  return sub_26A5F20D8(a1, a2, &type metadata for HuggingMaxHeightLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_26A5F294C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84EFE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v15[-v11];
  sub_26A850228();
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_26A84EFD8();
  swift_getWitnessTable();
  sub_26A80757C(v9);
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_26A80757C(v12);
  return (v13)(v12, v6);
}

uint64_t sub_26A5F2AD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  (*v7)();
  sub_26A80757C(v6);
  v10 = *(v3 + 8);
  v10(v6, a2);
  sub_26A80757C(v9);
  return (v10)(v9, a2);
}

uint64_t sub_26A5F2C1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0150);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A5F2C84()
{
  result = qword_28157E2D8[0];
  if (!qword_28157E2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157E2D8);
  }

  return result;
}

uint64_t sub_26A5F2CD8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v46 = a1;
  v45 = sub_26A84F108();
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a3;
  if (a4)
  {
    v13 = INFINITY;
  }

  if (v13 <= a6)
  {
    v14 = v13;
  }

  else
  {
    v14 = a6;
  }

  sub_26A84F218();
  sub_26A5F35C4(&qword_28157FE70);
  v15 = sub_26A851D98();
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = v15;
    v49 = MEMORY[0x277D84F90];
    sub_26A7DD274(0, v15 & ~(v15 >> 63), 0);
    v16 = v49;
    result = sub_26A851D88();
    if (v17 < 0)
    {
      __break(1u);
      return result;
    }

    *&v43[1] = v14;
    v43[0] = v11 + 16;
    v19 = (v11 + 8);
    v20 = a2 & 1;
    do
    {
      v21 = sub_26A851E18();
      v22 = v44;
      v23 = v45;
      (*v43[0])(v44);
      v21(v48, 0);
      v48[0] = v20;
      v47 = 0;
      sub_26A84F0E8();
      v25 = v24;
      v27 = v26;
      (*v19)(v22, v23);
      v49 = v16;
      v28 = a5;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26A7DD274(v29 > 1, v30 + 1, 1);
        v16 = v49;
      }

      *(v16 + 16) = v30 + 1;
      v31 = v16 + 16 * v30;
      *(v31 + 32) = v25;
      *(v31 + 40) = v27;
      sub_26A851DE8();
      --v17;
      a5 = v28;
    }

    while (v17);
  }

  v32 = *(v16 + 16);
  if (v32)
  {
    v33 = *(v16 + 32);
    v34 = v32 - 1;
    if (v34)
    {
      v35 = (v16 + 48);
      v36 = v34;
      do
      {
        v37 = *v35;
        v35 += 2;
        v38 = v37;
        if (v33 < v37)
        {
          v33 = v38;
        }

        --v36;
      }

      while (v36);
      v39 = *(v16 + 40);
      v40 = (v16 + 56);
      do
      {
        v41 = *v40;
        v40 += 2;
        v42 = v41;
        if (v39 < v41)
        {
          v39 = v42;
        }

        --v34;
      }

      while (v34);
    }
  }
}

uint64_t sub_26A5F2FEC(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  v38 = a2;
  v40 = a1;
  v18 = sub_26A84F108();
  v37 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26A84F218();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0168);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v36 - v27;
  v29 = *&a3;
  if (a4)
  {
    v29 = INFINITY;
  }

  if (v29 > a10)
  {
    v29 = a10;
  }

  v39 = v29;
  (*(v22 + 16))(v24, a5, v21);
  sub_26A5F35C4(&qword_28157FE78);
  sub_26A851998();
  v30 = *(v26 + 44);
  sub_26A5F35C4(&qword_28157FE70);
  v31 = (v37 + 16);
  v32 = (v37 + 8);
  v33 = v38 & 1;
  while (1)
  {
    sub_26A851DD8();
    if (*&v28[v30] == v42[0])
    {
      break;
    }

    v34 = sub_26A851E18();
    (*v31)(v20);
    v34(v42, 0);
    sub_26A851DE8();
    v43.origin.x = a6;
    v43.origin.y = a7;
    v43.size.width = a8;
    v43.size.height = a9;
    CGRectGetMinX(v43);
    v44.origin.x = a6;
    v44.origin.y = a7;
    v44.size.width = a8;
    v44.size.height = a9;
    CGRectGetMinY(v44);
    sub_26A851568();
    LOBYTE(v42[0]) = v33;
    v41 = 0;
    sub_26A84F0F8();
    (*v32)(v20, v18);
  }

  return sub_26A5F3608(v28);
}

void (*sub_26A5F33A4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

uint64_t sub_26A5F3418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  v9();
  sub_26A80757C(v8);
  v12 = *(v5 + 8);
  v12(v8, a4);
  sub_26A80757C(v11);
  return (v12)(v11, a4);
}

unint64_t sub_26A5F3570()
{
  result = qword_28157E2D0;
  if (!qword_28157E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E2D0);
  }

  return result;
}

uint64_t sub_26A5F35C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26A84F218();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A5F3608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_45(unint64_t *a1)
{

  return sub_26A5F2C1C(a1);
}

uint64_t OUTLINED_FUNCTION_3_40(unint64_t *a1)
{

  return sub_26A5F2C1C(a1);
}

uint64_t View.imageSizeable()(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34_8();
  v7 = type metadata accessor for ImageSizeableModifier(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  sub_26A84B258();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v11 + v7[5];
  sub_26A6AEE74(__src);
  memcpy(v16, __src, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    swift_once();
  }

  v17 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    swift_once();
  }

  v18 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    swift_once();
  }

  v19 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    swift_once();
  }

  v20 = byte_2803D1D89;
  *(v16 + 192) = v17;
  *(v16 + 200) = v18;
  *(v16 + 208) = 1;
  *(v16 + 216) = v19;
  *(v16 + 217) = 0;
  *(v16 + 218) = v20;
  *(v16 + 219) = 0;
  v21 = v7[6];
  *(v11 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(KeyPath);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v23);
  v24 = v11 + v7[9];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v11 + v7[10];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v7[11];
  *(v11 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8);
  swift_storeEnumTagMultiPayload();
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v28);
  sub_26A5F3AB0(v2, v11);
  sub_26A4D6FD8();
  MEMORY[0x26D662ED0](v11, a1, v7, a2);
  return sub_26A5F7588();
}

uint64_t sub_26A5F3A60()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.isModernizedSnippet.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26A5F3AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a1;
  v177 = a2;
  sub_26A84B408();
  OUTLINED_FUNCTION_15();
  v158 = v3;
  v159 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_15();
  v157 = v4;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v170 = v6;
  v171 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_15();
  v169 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v168 = v10 - v11;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v12);
  v167 = &v151 - v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  v166 = &v151 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v174 = &v151 - v18;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B548();
  OUTLINED_FUNCTION_15();
  v172 = v20;
  v173 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_15();
  v175 = v21;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B678();
  OUTLINED_FUNCTION_15();
  v164 = v23;
  v165 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  v156 = sub_26A84B5F8();
  OUTLINED_FUNCTION_15();
  v155 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_15();
  v154 = v29;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B4B8();
  OUTLINED_FUNCTION_15();
  v162 = v31;
  v163 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_41();
  v34 = v33 - v32;
  v153 = sub_26A84B188();
  OUTLINED_FUNCTION_15();
  v152 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_15();
  v151 = v37;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B598();
  OUTLINED_FUNCTION_15();
  v160 = v39;
  v161 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_41();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  v41 = OUTLINED_FUNCTION_79(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v151 - v46;
  sub_26A84B258();
  OUTLINED_FUNCTION_15();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_0();
  v53 = v51 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v151 - v55;
  v58 = v57;
  sub_26A4DBD68(v176, v47, &qword_2803AB9D8);
  OUTLINED_FUNCTION_22_14();
  if (__swift_getEnumTagSinglePayload(v59, v60, v61) == 1)
  {
    sub_26A4D6FD8();
    type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
    OUTLINED_FUNCTION_81();
    return __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  }

  v66 = v177;
  (*(v49 + 32))(v56, v47, v58);
  (*(v49 + 16))(v53, v56, v58);
  v67 = (*(v49 + 88))(v53, v58);
  v68 = v56;
  if (v67 == *MEMORY[0x277D62C78])
  {
    v69 = OUTLINED_FUNCTION_7_35();
    v70(v69);
    v71 = OUTLINED_FUNCTION_31_11();
    v72(v71);
    v73 = v166;
    sub_26A84B4C8();
    v74 = sub_26A84B238();
    OUTLINED_FUNCTION_13_21(v73);
    if (v75)
    {
      sub_26A4D6FD8();
      sub_26A84B2B8();
      OUTLINED_FUNCTION_81();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
    }

    else
    {
      sub_26A84B1F8();
      OUTLINED_FUNCTION_1_33();
      (*(v87 + 8))(v73, v74);
    }

    v89 = v168;
    v88 = v169;
    v90 = v167;
    sub_26A84B4D8();
    sub_26A84B4C8();
    if (__swift_getEnumTagSinglePayload(v90, 1, v74) == 1)
    {
      sub_26A4D6FD8();
      v91 = 2;
    }

    else
    {
      v91 = sub_26A84B1E8();
      OUTLINED_FUNCTION_1_33();
      (*(v100 + 8))(v101, v74);
    }

    v102 = v175;
    sub_26A84B4C8();
    OUTLINED_FUNCTION_13_21(v89);
    if (v75)
    {
      (*(v172 + 8))(v102, v173);
      (*(v49 + 8))(v56, v58);
      sub_26A4D6FD8();
      v86 = 2;
    }

    else
    {
      v86 = sub_26A84B208();
      (*(v172 + 8))(v102, v173);
      (*(v49 + 8))(v56, v58);
      OUTLINED_FUNCTION_1_33();
      (*(v103 + 8))(v89, v74);
    }

    v58 = type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
    v104 = v58[8];
    v105 = *MEMORY[0x277D62D28];
    sub_26A84B2F8();
    OUTLINED_FUNCTION_46();
    (*(v106 + 104))(v66 + v104, v105);
    sub_26A4DBDB4(v174, v66, &qword_2803AF0C0);
    (*(v170 + 32))(v66 + v58[5], v88, v171);
    *(v66 + v58[6]) = v91;
    goto LABEL_19;
  }

  if (v67 == *MEMORY[0x277D62CA0])
  {
    v80 = OUTLINED_FUNCTION_7_35();
    v81(v80);
    v83 = v164;
    v82 = v165;
    (*(v164 + 32))(v26, v53, v165);
    sub_26A84B638();
    type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
    OUTLINED_FUNCTION_14_20();
    sub_26A84B628();
    v84 = v68;
    v85 = sub_26A84B618();
    v86 = sub_26A84B648();
    (*(v83 + 8))(v26, v82);
    (*(v49 + 8))(v84, v58);
LABEL_13:
    v97 = v58[8];
    v98 = *MEMORY[0x277D62D28];
    sub_26A84B2F8();
    OUTLINED_FUNCTION_46();
    (*(v99 + 104))(v66 + v97, v98);
    *(v66 + v58[6]) = v85;
LABEL_19:
    *(v66 + v58[7]) = v86;
LABEL_20:
    v62 = v66;
    v63 = 0;
    v64 = 1;
    v65 = v58;
    return __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  }

  if (v67 == *MEMORY[0x277D62C70])
  {
    v92 = OUTLINED_FUNCTION_7_35();
    v93(v92);
    v95 = v162;
    v94 = v163;
    (*(v162 + 32))(v34, v53, v163);
    sub_26A84B468();
    type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
    OUTLINED_FUNCTION_14_20();
    sub_26A84B458();
    v96 = v68;
    v85 = sub_26A84B448();
    v86 = sub_26A84B478();
    (*(v95 + 8))(v34, v94);
    (*(v49 + 8))(v96, v58);
    goto LABEL_13;
  }

  if (v67 == *MEMORY[0x277D62C80])
  {
    v108 = OUTLINED_FUNCTION_7_35();
    v109(v108);
    v110 = OUTLINED_FUNCTION_31_11();
    v111(v110);
    sub_26A84B2B8();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
    type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
    v116 = v56;
    v117 = v58;
    OUTLINED_FUNCTION_14_20();
    sub_26A84B578();
LABEL_25:
    v118 = OUTLINED_FUNCTION_31_11();
    v119(v118);
    (*(v49 + 8))(v116, v117);
    v120 = v58[8];
    v121 = *MEMORY[0x277D62D28];
    sub_26A84B2F8();
    OUTLINED_FUNCTION_46();
    (*(v122 + 104))(v66 + v120, v121);
    *(v66 + v58[6]) = 2;
    *(v66 + v58[7]) = 2;
    goto LABEL_20;
  }

  if (v67 == *MEMORY[0x277D62C68])
  {
    v123 = OUTLINED_FUNCTION_7_35();
    v124(v123);
    v125 = v157;
    v126 = v158;
    v127 = OUTLINED_FUNCTION_31_11();
    v128 = v159;
    v129(v127);
    sub_26A84B368();
    type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
    OUTLINED_FUNCTION_14_20();
    sub_26A84B358();
    v130 = v68;
    v131 = sub_26A84B348();
    v132 = sub_26A84B388();
    sub_26A84B3D8();
    (*(v126 + 8))(v125, v128);
    (*(v49 + 8))(v130, v58);
    *(v66 + v58[6]) = v131;
    *(v66 + v58[7]) = v132;
    goto LABEL_20;
  }

  if (v67 == *MEMORY[0x277D62C98])
  {
    v133 = OUTLINED_FUNCTION_7_35();
    v134(v133);
    v135 = OUTLINED_FUNCTION_31_11();
    v136(v135);
    sub_26A84B2B8();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
    type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
    v116 = v56;
    v117 = v58;
    OUTLINED_FUNCTION_14_20();
    sub_26A84B5B8();
    goto LABEL_25;
  }

  if (v67 == *MEMORY[0x277D62C48])
  {
    v141 = OUTLINED_FUNCTION_7_35();
    v142(v141);
    v143 = swift_projectBox();
    (*(v152 + 16))(v151, v143, v153);
    sub_26A84B178();
    sub_26A5F3AB0(v44);
    sub_26A4D6FD8();
    v144 = OUTLINED_FUNCTION_31_11();
    v145(v144);
    (*(v49 + 8))(v56, v58);
  }

  else
  {
    v146 = *(v49 + 8);
    v146(v56, v58);
    type metadata accessor for ImageSizeableModifier.ImageSizingMetadata(0);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
    return (v146)(v53, v58);
  }
}