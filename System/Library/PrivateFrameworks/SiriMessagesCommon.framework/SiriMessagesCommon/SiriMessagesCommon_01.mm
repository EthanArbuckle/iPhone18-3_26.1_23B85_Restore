uint64_t UnreadMessagesCarPlayButton.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UnreadMessagesCarPlayButton.unreadMessagesLabelText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UnreadMessagesCarPlayButton.unreadMessagesLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_267B4D9B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000267B87060 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B4DA84(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_267B4DAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4D9B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4DAE8(uint64_t a1)
{
  v2 = sub_267B4DF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4DB24(uint64_t a1)
{
  v2 = sub_267B4DF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnreadMessagesCarPlayButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AF8, &qword_267B80360);
  v5 = OUTLINED_FUNCTION_8(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4DF3C();
  sub_267B7E27C();
  v19 = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v18 = 1;
    sub_267B7E0FC();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t UnreadMessagesCarPlayButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B08, &qword_267B80368);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v23 - v10;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4DF3C();

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v26 = 0;
    v14 = OUTLINED_FUNCTION_2_5();
    v16 = v15;
    v26 = 1;
    v17 = OUTLINED_FUNCTION_2_5();
    v19 = v18;
    v20 = *(v7 + 8);
    v24 = v17;
    v20(v11, v4);

    v22 = v24;
    v21 = v25;
    *v25 = v14;
    v21[1] = v16;
    v21[2] = v22;
    v21[3] = v19;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

unint64_t sub_267B4DF3C()
{
  result = qword_280218B00;
  if (!qword_280218B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B00);
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

uint64_t sub_267B4DF9C(uint64_t a1, int a2)
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

uint64_t sub_267B4DFDC(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for UnreadMessagesCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B4E10C()
{
  result = qword_280218B10;
  if (!qword_280218B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B10);
  }

  return result;
}

unint64_t sub_267B4E164()
{
  result = qword_280218B18;
  if (!qword_280218B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B18);
  }

  return result;
}

unint64_t sub_267B4E1BC()
{
  result = qword_280218B20;
  if (!qword_280218B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_267B7E05C();
}

uint64_t TapbackPromptSnippetModel.carPlayHeader.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v4 = *(v1 + 56);
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_267B3B938(v7, &v6);
}

uint64_t TapbackPromptSnippetModel.serviceName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_267B4E2D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xEF6B636162706154;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4879616C50726163 && a2 == 0xED00007265646165;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

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

uint64_t sub_267B4E404(char a1)
{
  if (!a1)
  {
    return 0x64657463656C6573;
  }

  if (a1 == 1)
  {
    return 0x4879616C50726163;
  }

  return 0x4E65636976726573;
}

uint64_t sub_267B4E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4E2D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4E4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B4E3FC();
  *a1 = result;
  return result;
}

uint64_t sub_267B4E4D4(uint64_t a1)
{
  v2 = sub_267B4E754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4E510(uint64_t a1)
{
  v2 = sub_267B4E754();

  return MEMORY[0x2821FE720](a1, v2);
}

void TapbackPromptSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B28, &qword_267B80540);
  OUTLINED_FUNCTION_8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = *v0;
  v13 = *(v0 + 24);
  v24 = *(v0 + 8);
  v25 = v13;
  v14 = *(v0 + 56);
  v26 = *(v0 + 40);
  v27 = v14;
  v15 = *(v0 + 10);
  v17[2] = *(v0 + 9);
  v17[1] = v15;
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_267B4E754();
  sub_267B7E27C();
  LOBYTE(v20) = v12;
  v19[0] = 0;
  sub_267B4E7A8();
  sub_267B7E0EC();
  if (!v1)
  {
    v20 = v24;
    v21 = v25;
    v22 = v26;
    v23 = v27;
    v19[79] = 1;
    sub_267B3B938(&v24, v19);
    sub_267B39FF4();
    OUTLINED_FUNCTION_5_5();
    sub_267B7E12C();
    OUTLINED_FUNCTION_1_8();
    v18 = 2;
    sub_267B7E0CC();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4E754()
{
  result = qword_280218B30;
  if (!qword_280218B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B30);
  }

  return result;
}

unint64_t sub_267B4E7A8()
{
  result = qword_280218B38;
  if (!qword_280218B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B38);
  }

  return result;
}

void TapbackPromptSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v4 = v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B48, &qword_267B80548);
  OUTLINED_FUNCTION_8(v32);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v20[-1] - v10;
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_267B4E754();
  sub_267B7E25C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v13 = v4;
    LOBYTE(v20[0]) = 0;
    sub_267B4EAC4();
    OUTLINED_FUNCTION_8_3();
    sub_267B7E04C();
    v14 = v21;
    v26 = 1;
    sub_267B4EB18();
    OUTLINED_FUNCTION_8_3();
    sub_267B7E08C();
    HIDWORD(v19) = v14;
    *&v31[7] = v27;
    *&v31[23] = v28;
    *&v31[39] = v29;
    *&v31[55] = v30;
    v25 = 2;
    v15 = sub_267B7E01C();
    v16 = v11;
    v18 = v17;
    (*(v6 + 8))(v16, v32);
    LOBYTE(v14) = BYTE4(v19);
    LOBYTE(v20[0]) = BYTE4(v19);
    memcpy(v20 + 1, v31, 0x47uLL);
    v20[9] = v15;
    v20[10] = v18;
    memcpy(v13, v20, 0x58uLL);
    sub_267B4EB6C(v20, &v21);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v21 = v14;
    memcpy(v22, v31, sizeof(v22));
    v23 = v15;
    v24 = v18;
    sub_267B4EBA4(&v21);
  }

  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4EAC4()
{
  result = qword_280218B50;
  if (!qword_280218B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B50);
  }

  return result;
}

unint64_t sub_267B4EB18()
{
  result = qword_280218B58;
  if (!qword_280218B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B58);
  }

  return result;
}

uint64_t TapbackType.description.getter()
{
  v1 = 0xE500000000000000;
  v2 = 0x7472616568;
  switch(*v0)
  {
    case 1:
      v1 = 0xE800000000000000;
      v2 = 0x705573626D756874;
      break;
    case 2:
      v1 = 0xEA00000000006E77;
      v2 = 0x6F4473626D756874;
      break;
    case 3:
      v1 = 0xE200000000000000;
      v2 = 24936;
      break;
    case 4:
      v1 = 0xEB000000006E6F69;
      v2 = 0x74616D616C637865;
      break;
    case 5:
      v1 = 0xEC0000006B72614DLL;
      v2 = 0x6E6F697473657571;
      break;
    default:
      break;
  }

  MEMORY[0x26D601760](v2, v1);

  return 46;
}

uint64_t TapbackType.rawValue.getter()
{
  result = 0x7472616568;
  switch(*v0)
  {
    case 1:
      result = 0x705573626D756874;
      break;
    case 2:
      result = 0x6F4473626D756874;
      break;
    case 3:
      result = 24936;
      break;
    case 4:
      result = 0x74616D616C637865;
      break;
    case 5:
      result = 0x6E6F697473657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TapbackType.index.getter()
{
  result = sub_267B4EDE8(*v0, &unk_2878BF740);
  if (v2)
  {
    return -1;
  }

  return result;
}

uint64_t sub_267B4EDE8(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE500000000000000;
    v7 = 0x7472616568;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xE800000000000000;
        v7 = 0x705573626D756874;
        break;
      case 2:
        v7 = 0x6F4473626D756874;
        v6 = 0xEA00000000006E77;
        break;
      case 3:
        v6 = 0xE200000000000000;
        v7 = 24936;
        break;
      case 4:
        v7 = 0x74616D616C637865;
        v6 = 0xEB000000006E6F69;
        break;
      case 5:
        v7 = 0x6E6F697473657571;
        v6 = 0xEC0000006B72614DLL;
        break;
      default:
        break;
    }

    v8 = 0xE500000000000000;
    v9 = 0x7472616568;
    switch(a1)
    {
      case 1:
        v8 = 0xE800000000000000;
        v9 = 0x705573626D756874;
        break;
      case 2:
        v9 = 0x6F4473626D756874;
        v8 = 0xEA00000000006E77;
        break;
      case 3:
        v8 = 0xE200000000000000;
        v9 = 24936;
        break;
      case 4:
        v9 = 0x74616D616C637865;
        v8 = 0xEB000000006E6F69;
        break;
      case 5:
        v9 = 0x6E6F697473657571;
        v8 = 0xEC0000006B72614DLL;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_267B7E16C();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

SiriMessagesCommon::DirectButton __swiftcall TapbackType.directButton()()
{
  v2 = *v1 + 13;
  OUTLINED_FUNCTION_4_4(v0);
  return result;
}

SiriMessagesCommon::DirectButton __swiftcall TapbackType.deselectButton()()
{
  v2 = *v1 + 19;
  OUTLINED_FUNCTION_4_4(v0);
  return result;
}

SiriMessagesCommon::TapbackType_optional __swiftcall TapbackType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267B7DFEC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_267B4F09C@<X0>(uint64_t *a1@<X8>)
{
  result = TapbackType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267B4F1FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xEF6B636162706154;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000267B87080 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B7E16C();

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

uint64_t sub_267B4F2D4(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_267B4F324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4F1FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4F34C(uint64_t a1)
{
  v2 = sub_267B4F518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4F388(uint64_t a1)
{
  v2 = sub_267B4F518();

  return MEMORY[0x2821FE720](a1, v2);
}

void UpdateTapbackButtonViewCommand.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B60, &qword_267B80550);
  OUTLINED_FUNCTION_8(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = *v24;
  a10 = v24[1];
  v39 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_267B4F518();
  sub_267B7E27C();
  a14 = v38;
  a13 = 0;
  sub_267B4E7A8();
  OUTLINED_FUNCTION_5_5();
  sub_267B7E0EC();
  if (!v25)
  {
    a12 = 1;
    OUTLINED_FUNCTION_5_5();
    sub_267B7E10C();
  }

  (*(v32 + 8))(v37, v30);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4F518()
{
  result = qword_280218B68;
  if (!qword_280218B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B68);
  }

  return result;
}

void UpdateTapbackButtonViewCommand.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B70, &qword_267B80558);
  OUTLINED_FUNCTION_8(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_267B4F518();
  sub_267B7E25C();
  if (!v24)
  {
    a13 = 0;
    sub_267B4EAC4();
    sub_267B7E04C();
    v40 = a14;
    a12 = 1;
    v41 = sub_267B7E06C();
    (*(v33 + 8))(v38, v31);
    *v30 = v40;
    v30[1] = v41 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B4F70C()
{
  sub_267B50CE4();
  sub_267B50D38();
  return sub_267B7DB8C();
}

uint64_t sub_267B4F778()
{
  sub_267B50CE4();
  sub_267B50D38();
  return sub_267B7DB7C();
}

uint64_t sub_267B4F7CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x8000000267B870A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B4F868(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657463656C6573 && a2 == 0xEF6B636162706154)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B4F940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4F7CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B4F96C(uint64_t a1)
{
  v2 = sub_267B4FC6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4F9A8(uint64_t a1)
{
  v2 = sub_267B4FC6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B4F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4F868(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B4FA14(uint64_t a1)
{
  v2 = sub_267B4FCC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4FA50(uint64_t a1)
{
  v2 = sub_267B4FCC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void TapbackPromptSnippetAction.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B78, &qword_267B80560);
  v22 = OUTLINED_FUNCTION_8(v3);
  v23 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B80, &qword_267B80568);
  OUTLINED_FUNCTION_8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v18 = *v0;
  v19 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_267B4FC6C();
  sub_267B7E27C();
  sub_267B4FCC0();
  sub_267B7E0BC();
  sub_267B4E7A8();
  v20 = v22;
  sub_267B7E12C();
  (*(v23 + 8))(v9, v20);
  (*(v12 + 8))(v17, v10);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4FC6C()
{
  result = qword_280218B88;
  if (!qword_280218B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B88);
  }

  return result;
}

unint64_t sub_267B4FCC0()
{
  result = qword_280218B90;
  if (!qword_280218B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B90);
  }

  return result;
}

void TapbackPromptSnippetAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_13_1();
  v15 = v14;
  v57 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218B98, &qword_267B80570);
  OUTLINED_FUNCTION_8(v17);
  v56 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218BA0, &qword_267B80578);
  OUTLINED_FUNCTION_8(v24);
  v55 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  v30 = &v52 - v29;
  v31 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_267B4FC6C();
  sub_267B7E25C();
  if (v13)
  {
    goto LABEL_8;
  }

  v53 = v23;
  v54 = v15;
  v52 = v17;
  v33 = v56;
  v32 = v57;
  v34 = sub_267B7E09C();
  sub_267B45CC4(v34, 0);
  v37 = v24;
  if (v35 == v36 >> 1)
  {
LABEL_7:
    v45 = sub_267B7DFBC();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580) + 48);
    *v47 = &type metadata for TapbackPromptSnippetAction;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v30, v37);
    v15 = v54;
LABEL_8:
    v51 = v15;
    goto LABEL_9;
  }

  if (v35 < (v36 >> 1))
  {
    v38 = v24;
    sub_267B45CBC(v35 + 1);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      sub_267B4FCC0();
      v43 = v53;
      v44 = v38;
      sub_267B7DFFC();
      sub_267B4EAC4();
      v49 = v52;
      sub_267B7E08C();
      v50 = v55;
      swift_unknownObjectRelease();
      (*(v33 + 8))(v43, v49);
      (*(v50 + 8))(v30, v44);
      *v32 = a13;
      v51 = v54;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_14();
      return;
    }

    v37 = v24;
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_267B50150()
{
  result = qword_280218BA8;
  if (!qword_280218BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BA8);
  }

  return result;
}

unint64_t sub_267B501A8()
{
  result = qword_280218BB0;
  if (!qword_280218BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BB0);
  }

  return result;
}

unint64_t sub_267B50200()
{
  result = qword_280218BB8;
  if (!qword_280218BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BB8);
  }

  return result;
}

unint64_t sub_267B50258()
{
  result = qword_280218BC0;
  if (!qword_280218BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218BC8, &qword_267B806F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BC0);
  }

  return result;
}

uint64_t sub_267B502C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_267B50304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateTapbackButtonViewCommand(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateTapbackButtonViewCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_267B504F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B505D8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for UpdateTapbackButtonViewCommand.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapbackPromptSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TapbackPromptSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B508C8()
{
  result = qword_280218BD0;
  if (!qword_280218BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BD0);
  }

  return result;
}

unint64_t sub_267B50920()
{
  result = qword_280218BD8;
  if (!qword_280218BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BD8);
  }

  return result;
}

unint64_t sub_267B50978()
{
  result = qword_280218BE0;
  if (!qword_280218BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BE0);
  }

  return result;
}

unint64_t sub_267B509D0()
{
  result = qword_280218BE8;
  if (!qword_280218BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BE8);
  }

  return result;
}

unint64_t sub_267B50A28()
{
  result = qword_280218BF0;
  if (!qword_280218BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BF0);
  }

  return result;
}

unint64_t sub_267B50A80()
{
  result = qword_280218BF8;
  if (!qword_280218BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218BF8);
  }

  return result;
}

unint64_t sub_267B50AD8()
{
  result = qword_280218C00;
  if (!qword_280218C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C00);
  }

  return result;
}

unint64_t sub_267B50B30()
{
  result = qword_280218C08;
  if (!qword_280218C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C08);
  }

  return result;
}

unint64_t sub_267B50B88()
{
  result = qword_280218C10;
  if (!qword_280218C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C10);
  }

  return result;
}

unint64_t sub_267B50BE0()
{
  result = qword_280218C18;
  if (!qword_280218C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C18);
  }

  return result;
}

unint64_t sub_267B50C38()
{
  result = qword_280218C20;
  if (!qword_280218C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C20);
  }

  return result;
}

unint64_t sub_267B50C90()
{
  result = qword_280218C28;
  if (!qword_280218C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C28);
  }

  return result;
}

unint64_t sub_267B50CE4()
{
  result = qword_280218C30;
  if (!qword_280218C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C30);
  }

  return result;
}

unint64_t sub_267B50D38()
{
  result = qword_280218C38;
  if (!qword_280218C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C38);
  }

  return result;
}

unint64_t sub_267B50D8C()
{
  result = qword_280218C40;
  if (!qword_280218C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C40);
  }

  return result;
}

uint64_t PhotoAttachment.init(urls:isDraft:photoSharingInfo:photosSelection:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for SecurityScopedURL();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  if (!a3)
  {
    type metadata accessor for PhotoSharingInfo();
    swift_allocObject();
    a3 = PhotoSharingInfo.init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(1, 0, MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0, 0xE000000000000000);
  }

  *a4 = v8;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t PhotoAttachment.urls.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_267B50F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  result = PhotoAttachment.urls.getter();
  *a2 = result;
  return result;
}

uint64_t sub_267B50F68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = *(a2 + 8);
  v6 = a2[2];

  PhotoAttachment.urls.setter(v2);
}

uint64_t PhotoAttachment.urls.setter(uint64_t a1)
{
  v3 = *v1;
  sub_267B465DC();
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

void (*PhotoAttachment.urls.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_267B46784(v3);
  return sub_267B41AA0;
}

uint64_t PhotoAttachment.photoSharingInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_267B51124(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74666172447369 && a2 == 0xE700000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000267B86E10 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

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

uint64_t sub_267B5123C(char a1)
{
  if (!a1)
  {
    return 1936487029;
  }

  if (a1 == 1)
  {
    return 0x74666172447369;
  }

  return 0xD000000000000010;
}

uint64_t sub_267B51298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B51124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B512C0(uint64_t a1)
{
  v2 = sub_267B517A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B512FC(uint64_t a1)
{
  v2 = sub_267B517A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoAttachment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218C48, &qword_267B80DA0);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v20 - v9;
  v11 = *v1;
  v21 = *(v1 + 8);
  v20 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_267B517A8();

  sub_267B7E27C();
  v23 = v11;
  v22 = 0;
  type metadata accessor for SecurityScopedURL();
  OUTLINED_FUNCTION_0_6();
  sub_267B517FC(v14, v15);
  OUTLINED_FUNCTION_3_5();

  if (!v13)
  {
    v16 = v20;
    LOBYTE(v23) = 1;
    sub_267B7E10C();
    v23 = v16;
    v22 = 2;
    type metadata accessor for PhotoSharingInfo();
    OUTLINED_FUNCTION_1_9();
    sub_267B517FC(v17, v18);
    OUTLINED_FUNCTION_3_5();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t PhotoAttachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218C60, &qword_267B80DA8);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B517A8();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for SecurityScopedURL();
  OUTLINED_FUNCTION_0_6();
  sub_267B517FC(v10, v11);
  OUTLINED_FUNCTION_2_6();
  v12 = v18;
  LOBYTE(v18) = 1;
  v19 = sub_267B7E06C() & 1;
  type metadata accessor for PhotoSharingInfo();
  OUTLINED_FUNCTION_1_9();
  sub_267B517FC(v13, v14);
  OUTLINED_FUNCTION_2_6();
  v15 = OUTLINED_FUNCTION_4();
  v16(v15);
  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_267B517A8()
{
  result = qword_280218C50;
  if (!qword_280218C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C50);
  }

  return result;
}

uint64_t sub_267B517FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267B51844(uint64_t a1)
{
  *(a1 + 16) = sub_267B451E0();
  result = sub_267B44FB0();
  *(a1 + 24) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotoAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B51964()
{
  result = qword_280218C70;
  if (!qword_280218C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C70);
  }

  return result;
}

unint64_t sub_267B519BC()
{
  result = qword_280218C78;
  if (!qword_280218C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218C78);
  }

  return result;
}

unint64_t sub_267B51A14()
{
  result = qword_280218C80[0];
  if (!qword_280218C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280218C80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_267B7E12C();
}

uint64_t sub_267B51AF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 16);
  v7 = *(v4 - 8);
  v8 = type metadata accessor for Redacted();
  return Redacted.wrappedValue.getter(v8, a3);
}

uint64_t sub_267B51B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(*(*(a3 + a4 - 24) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7);
  v10 = type metadata accessor for Redacted();
  return Redacted.wrappedValue.setter(v8, v10);
}

void (*Redacted.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  OUTLINED_FUNCTION_0_7();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[5] = v10;
  Redacted.wrappedValue.getter(a2, v10);
  return sub_267B51D2C;
}

void sub_267B51D2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    Redacted.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    Redacted.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_267B51E40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B51EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return sub_267B43E28();
}

uint64_t sub_267B51ED4(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_267B43EAC();
}

uint64_t sub_267B51EE4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_267B3C1E0();
}

uint64_t sub_267B51EF4(uint64_t a1, void *a2)
{
  sub_267B7E21C();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_267B3C1E0();
  return sub_267B7E23C();
}

uint64_t sub_267B51F3C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_267B51EB4();
}

uint64_t sub_267B51F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_267B51E40(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_267B51F84(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_267B3FF20();
}

uint64_t sub_267B51FAC@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_267B43E28();
  *a2 = result & 1;
  return result;
}

uint64_t sub_267B51FE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_267B52038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Redacted.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v15 = a2[2];
  v4 = a2[4];
  type metadata accessor for Redacted.CodingKeys();
  OUTLINED_FUNCTION_1_10();
  swift_getWitnessTable();
  v5 = sub_267B7E13C();
  OUTLINED_FUNCTION_0_7();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7E27C();
  sub_267B7E12C();
  return (*(v7 + 8))(v12, v5);
}

uint64_t Redacted.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  OUTLINED_FUNCTION_0_7();
  v39 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Redacted.CodingKeys();
  OUTLINED_FUNCTION_1_10();
  swift_getWitnessTable();
  v42 = sub_267B7E0AC();
  OUTLINED_FUNCTION_0_7();
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v38 = a2;
  v40 = a3;
  v18 = type metadata accessor for Redacted();
  OUTLINED_FUNCTION_0_7();
  v35 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v43;
  sub_267B7E25C();
  if (!v26)
  {
    v34 = v24;
    v43 = v18;
    v28 = v37;
    v27 = v38;
    v29 = v39;
    v30 = v41;
    sub_267B7E08C();
    (*(v28 + 8))(v17, v42);
    v31 = v34;
    (*(v29 + 32))(v34, v30, v27);
    (*(v35 + 32))(v36, v31, v43);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B52538(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_267B525A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_267B526E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_267B528F0(_BYTE *result, int a2, int a3)
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

uint64_t UpdateSnippetAction.init(launchAppWithIntent:snippetMessage:sendButtonDisabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

id UpdateSnippetAction.launchAppWithIntent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_267B52A74@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  result = UpdateSnippetAction.launchAppWithIntent.getter();
  *a2 = result;
  return result;
}

void sub_267B52AC0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UpdateSnippetAction.launchAppWithIntent.setter(v1);
}

void (*UpdateSnippetAction.launchAppWithIntent.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  v3 = v2;
  return sub_267B41468;
}

uint64_t UpdateSnippetAction.snippetMessage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t UpdateSnippetAction.snippetMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_267B52BF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000267B870C0 == a2;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4D74657070696E73 && a2 == 0xEE00656761737365;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000267B870E0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_267B7E16C();

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

uint64_t sub_267B52D1C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x4D74657070696E73;
  }

  return 0xD000000000000012;
}

uint64_t sub_267B52D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B52BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B52DBC(uint64_t a1)
{
  v2 = sub_267B53024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B52DF8(uint64_t a1)
{
  v2 = sub_267B53024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateSnippetAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D88, &unk_267B81170);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - v10;
  v13 = *v1;
  v12 = *(v1 + 8);
  v18 = *(v1 + 16);
  v19 = v12;
  v17[1] = *(v1 + 24);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B53024();
  v15 = v13;
  sub_267B7E27C();
  v23 = v13;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
  sub_267B532EC(&qword_280218DA0);
  sub_267B7E12C();

  if (!v2)
  {
    v21 = 1;
    sub_267B7E0FC();
    v20 = 2;
    sub_267B7E10C();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_267B53024()
{
  result = qword_280218D90;
  if (!qword_280218D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218D90);
  }

  return result;
}

void UpdateSnippetAction.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DA8, &qword_267B81180);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B53024();
  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
    sub_267B532EC(&qword_280218DB0);
    sub_267B7E08C();
    v10 = sub_267B7E05C();
    v12 = v11;
    v17 = v10;
    v13 = sub_267B7E06C();
    v14 = OUTLINED_FUNCTION_0_8();
    v15(v14);
    *a2 = v18;
    *(a2 + 8) = v17;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13 & 1;
    v16 = v18;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_267B532EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218D98, &qword_267B860E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_267B53380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_267B533C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for UpdateSnippetAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B534F4()
{
  result = qword_280218DB8;
  if (!qword_280218DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218DB8);
  }

  return result;
}

unint64_t sub_267B5354C()
{
  result = qword_280218DC0;
  if (!qword_280218DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218DC0);
  }

  return result;
}

unint64_t sub_267B535A4()
{
  result = qword_280218DC8;
  if (!qword_280218DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218DC8);
  }

  return result;
}

void *INInteraction.serializedData()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_267B7DA9C();
  }

  else
  {
    v3 = v2;
    sub_267B7D9CC();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_267B536F4()
{
  type metadata accessor for AutoSendUtilities.Dummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280218DD0 = result;
  return result;
}

id static AutoSendUtilities.configUITone(isFirstPartyApp:mode:)(int a1, uint64_t a2)
{
  LODWORD(v5) = a1;
  v6 = sub_267B7DC1C();
  v7 = OUTLINED_FUNCTION_1_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  if (qword_280218548 != -1)
  {
    swift_once();
  }

  v17 = sub_267B7DCFC();
  __swift_project_value_buffer(v17, qword_2802286D0);
  v18 = *(v9 + 16);
  v38 = a2;
  v18(v16, a2, v2);
  v19 = sub_267B7DCDC();
  v20 = sub_267B7DE9C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = v5;
    v5 = v21;
    v36 = swift_slowAlloc();
    v39 = v36;
    *v5 = 136315138;
    sub_267B53C88();
    v22 = sub_267B7E14C();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_2_7();
    v27 = v26;
    v3(v25, v26);
    v28 = sub_267B3E264(v22, v24, &v39);

    *(v5 + 4) = v28;
    _os_log_impl(&dword_267B38000, v19, v20, "#AutoSendUtilities playUITone responseMode: %s", v5, 0xCu);
    v29 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D602240](v29, -1, -1);
    v30 = v5;
    LOBYTE(v5) = v37;
    MEMORY[0x26D602240](v30, -1, -1);

    v31 = v27;
  }

  else
  {

    v32 = OUTLINED_FUNCTION_2_7();
    v3(v32, v2);
    v31 = v2;
  }

  sub_267B7DBEC();
  v33 = sub_267B7DBFC();
  v3(v14, v31);
  if (v33)
  {
    v34 = 1;
  }

  else
  {
    sub_267B7DC0C();
    v34 = sub_267B7DBFC();
    v3(v14, v31);
  }

  return static AutoSendUtilities.configUITone(isFirstPartyApp:isVoiceMode:)(v5 & 1, v34 & 1);
}

id static AutoSendUtilities.configUITone(isFirstPartyApp:isVoiceMode:)(char a1, char a2)
{
  v5 = sub_267B7DA6C();
  v6 = OUTLINED_FUNCTION_1_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 & 1) == 0;
  if (a1)
  {
    v14 = 0x67734D746E6553;
  }

  else
  {
    v14 = 0x3367734D746E6553;
  }

  if (v13)
  {
    v15 = 0xE900000000000070;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (qword_280218540 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  sub_267B4AFBC(v14, v15, 7758199, 0xE300000000000000, qword_280218DD0);
  if (!v16)
  {
    return 0;
  }

  sub_267B7D9EC();

  v17 = [objc_allocWithZone(MEMORY[0x277D71F58]) initWithType_];
  v18 = sub_267B7D9FC();
  [v17 setExternalToneFileURL_];

  [v17 setShouldIgnoreRingerSwitch_];
  v19 = [objc_opt_self() alertWithConfiguration_];

  (*(v8 + 8))(v12, v2);
  return v19;
}

uint64_t static AutoSendUtilities.soundFileURLString(isFirstPartyApp:)(char a1)
{
  if (qword_280218540 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  if (a1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE900000000000070;
  }

  if (a1)
  {
    v3 = 0x67734D746E6553;
  }

  else
  {
    v3 = 0x3367734D746E6553;
  }

  v4 = qword_280218DD0;

  return sub_267B4AFBC(v3, v2, 7758199, 0xE300000000000000, v4);
}

unint64_t sub_267B53C88()
{
  result = qword_280218DD8;
  if (!qword_280218DD8)
  {
    sub_267B7DC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218DD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoSendUtilities(_BYTE *result, int a2, int a3)
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

uint64_t static SFSpeechAssetManagerProtocol.installedASRAssetFor(language:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (*(a4 + 8))(a3, a4);
    v7 = sub_267B53ED8(a1, a2, v6);
  }

  else
  {
    if (qword_280218548 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = sub_267B7DCFC();
    __swift_project_value_buffer(v8, qword_2802286D0);
    v9 = sub_267B7DCDC();
    v10 = sub_267B7DEAC();
    if (OUTLINED_FUNCTION_2_8(v10))
    {
      v11 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_5(v11);
      OUTLINED_FUNCTION_1_12(&dword_267B38000, v12, v13, "#SFSpeechAssetManagerProtocol installedASRAssetFor language nil");
      OUTLINED_FUNCTION_3_6();
    }

    return 0;
  }

  return v7;
}

uint64_t sub_267B53ED8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v59 = sub_267B7DB3C();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_267B7DB5C();
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DE0, &qword_267B813C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v52 - v14;
  v16 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 56);
  v20 = (v17 + 63) >> 6;
  v54 = (v6 + 8);
  v55 = (v9 + 8);

  v22 = 0;
  *&v23 = 136315138;
  v60 = v23;
  v62 = a3 + 56;
  v63 = v15;
  v52 = a1;
  v53 = a2;
  v61 = v20;
  if (v19)
  {
    while (1)
    {
      v24 = v22;
LABEL_8:
      v25 = (*(a3 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v19)))));
      v26 = v25[1];
      v65 = *v25;
      v66 = v26;
      v27 = qword_280218548;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_267B7DCFC();
      __swift_project_value_buffer(v28, qword_2802286D0);

      v29 = sub_267B7DCDC();
      v30 = sub_267B7DEBC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v67 = v32;
        *v31 = v60;
        *(v31 + 4) = sub_267B3E264(a1, a2, &v67);
        _os_log_impl(&dword_267B38000, v29, v30, "#SFSpeechAssetManagerProtocol hasLanguage %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        v33 = v32;
        v15 = v63;
        MEMORY[0x26D602240](v33, -1, -1);
        MEMORY[0x26D602240](v31, -1, -1);
      }

      v34 = v56;
      sub_267B7DADC();
      v35 = v58;
      sub_267B7DB4C();
      (*v55)(v34, v57);
      sub_267B7DB2C();
      (*v54)(v35, v59);
      v36 = sub_267B7DB0C();
      if (__swift_getEnumTagSinglePayload(v15, 1, v36) == 1)
      {
        sub_267B556D8(v15);
        v64 = 0;
        v37 = 0;
      }

      else
      {
        v64 = sub_267B7DAFC();
        v37 = v38;
        (*(*(v36 - 8) + 8))(v15, v36);
      }

      v39 = sub_267B7DCDC();
      v40 = sub_267B7DEBC();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v67 = v42;
        *v41 = v60;
        if (v37)
        {
          v43 = v64;
        }

        else
        {
          v43 = 7104878;
        }

        v44 = a3;
        if (v37)
        {
          v45 = v37;
        }

        else
        {
          v45 = 0xE300000000000000;
        }

        v46 = sub_267B3E264(v43, v45, &v67);
        a3 = v44;
        v15 = v63;

        *(v41 + 4) = v46;
        a1 = v52;
        _os_log_impl(&dword_267B38000, v39, v40, "#SFSpeechAssetManagerProtocol baseLanguage %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v47 = v42;
        a2 = v53;
        MEMORY[0x26D602240](v47, -1, -1);
        MEMORY[0x26D602240](v41, -1, -1);
      }

      v20 = v61;
      v16 = v62;
      if (v37)
      {
        if (v64 == a1 && v37 == a2)
        {

          return v65;
        }

        v49 = sub_267B7E16C();

        if (v49)
        {
          break;
        }
      }

      v50 = v65;
      if (v65 == a1 && v66 == a2)
      {

        return a1;
      }

      if (sub_267B7E16C())
      {

        return v50;
      }

      v19 &= v19 - 1;

      v22 = v24;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return v65;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {

        return 0;
      }

      v19 = *(v16 + 8 * v24);
      ++v22;
      if (v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static SFSpeechAssetManagerProtocol.supportedLanguages()()
{
  v0 = AFPreferencesSupportedLanguages();
  if (v0)
  {
    v1 = v0;
    v2 = sub_267B7DE1C();

    v15 = MEMORY[0x277D84FA0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 32;
      do
      {
        sub_267B3E924(v4, &v14);
        if (swift_dynamicCast())
        {
          sub_267B5558C(&v14, v12, v13);
        }

        v4 += 32;
        --v3;
      }

      while (v3);

      return v15;
    }

    else
    {

      return MEMORY[0x277D84FA0];
    }
  }

  else
  {
    if (qword_280218548 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267B7DCFC();
    __swift_project_value_buffer(v6, qword_2802286D0);
    v7 = sub_267B7DCDC();
    v8 = sub_267B7DEBC();
    if (OUTLINED_FUNCTION_2_8(v8))
    {
      v9 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_5(v9);
      OUTLINED_FUNCTION_1_12(&dword_267B38000, v10, v11, "#SFSpeechAssetManagerProtocol AFPreferencesSupportedLanguages returned nil");
      OUTLINED_FUNCTION_3_6();
    }

    return 0;
  }
}

uint64_t static SFSpeechAssetManagerProtocol.availableAssetFor(language:possibleLanguages:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (qword_280218548 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267B7DCFC();
    __swift_project_value_buffer(v4, qword_2802286D0);
    v5 = sub_267B7DCDC();
    v6 = sub_267B7DEBC();
    if (!OUTLINED_FUNCTION_2_8(v6))
    {
      goto LABEL_13;
    }

    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_5(v7);
    v10 = "#SFSpeechAssetManagerProtocol AFPreferencesSupportedLanguages returned nil";
    goto LABEL_12;
  }

  if (a2)
  {
    return sub_267B53ED8(a1, a2, a3);
  }

  if (qword_280218548 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = sub_267B7DCFC();
  __swift_project_value_buffer(v11, qword_2802286D0);
  v5 = sub_267B7DCDC();
  v12 = sub_267B7DEBC();
  if (OUTLINED_FUNCTION_2_8(v12))
  {
    v13 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_5(v13);
    v10 = "#SFSpeechAssetManagerProtocol availableAssetFor langauage nil";
LABEL_12:
    OUTLINED_FUNCTION_1_12(&dword_267B38000, v8, v9, v10);
    OUTLINED_FUNCTION_3_6();
  }

LABEL_13:

  return 0;
}

uint64_t static SFSpeechAssetManagerProtocol.numberOfAssetsAvailableForLanguage(language:possibleLanguages:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v85 = a1;
  v81 = sub_267B7DB3C();
  v5 = OUTLINED_FUNCTION_8(v81);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_4();
  v80 = v10;
  v79 = sub_267B7DB5C();
  v11 = OUTLINED_FUNCTION_8(v79);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_4();
  v78 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DE0, &qword_267B813C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v83 = a3;
  if (!a3)
  {
    if (qword_280218548 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v63 = sub_267B7DCFC();
    __swift_project_value_buffer(v63, qword_2802286D0);
    v64 = sub_267B7DCDC();
    v65 = sub_267B7DEBC();
    if (OUTLINED_FUNCTION_2_8(v65))
    {
      v66 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_5(v66);
      OUTLINED_FUNCTION_1_12(&dword_267B38000, v67, v68, "#SFSpeechAssetManagerProtocol AFPreferencesSupportedLanguages returned nil");
      OUTLINED_FUNCTION_3_6();
    }

    return 0;
  }

  v73 = &v69 - v19;
  if (qword_280218548 != -1)
  {
LABEL_52:
    OUTLINED_FUNCTION_0();
  }

  v20 = sub_267B7DCFC();
  v21 = __swift_project_value_buffer(v20, qword_2802286D0);

  v84 = v21;
  v22 = sub_267B7DCDC();
  v23 = sub_267B7DEBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v86[0] = v25;
    *v24 = 136315138;
    v26 = sub_267B7DE7C();
    v28 = sub_267B3E264(v26, v27, v86);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_267B38000, v22, v23, "#SFSpeechAssetManagerProtocol possibleLanguages %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_4_5();
  }

  v29 = *(v83 + 56);
  v71 = v83 + 56;
  v30 = 1 << *(v83 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v70 = (v30 + 63) >> 6;
  v76 = (v7 + 8);
  v77 = (v13 + 8);

  v33 = 0;
  v34 = 0;
  *&v35 = 136315138;
  v75 = v35;
  v36 = v73;
  v72 = a2;
  while (2)
  {
    v69 = v33;
    while (1)
    {
      if (!v32)
      {
        while (1)
        {
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v37 >= v70)
          {
            goto LABEL_45;
          }

          v32 = *(v71 + 8 * v37);
          ++v34;
          if (v32)
          {
            v34 = v37;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_52;
      }

LABEL_14:
      v38 = (*(v83 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v32)))));
      v13 = *v38;
      v39 = v38[1];

      v40 = sub_267B7DCDC();
      v41 = sub_267B7DEBC();

      if (os_log_type_enabled(v40, v41))
      {
        v7 = v39;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v86[0] = v43;
        *v42 = v75;
        *(v42 + 4) = sub_267B3E264(v85, a2, v86);
        _os_log_impl(&dword_267B38000, v40, v41, "#SFSpeechAssetManagerProtocol hasLanguage %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_4_5();
        v39 = v7;
        OUTLINED_FUNCTION_4_5();
      }

      v44 = v78;
      v82 = v39;
      sub_267B7DADC();
      v45 = v80;
      sub_267B7DB4C();
      (*v77)(v44, v79);
      sub_267B7DB2C();
      (*v76)(v45, v81);
      v46 = sub_267B7DB0C();
      if (__swift_getEnumTagSinglePayload(v36, 1, v46) == 1)
      {
        sub_267B556D8(v36);
        v47 = 0;
        v48 = 0;
      }

      else
      {
        v47 = sub_267B7DAFC();
        v48 = v49;
        (*(*(v46 - 8) + 8))(v36, v46);
      }

      v50 = sub_267B7DCDC();
      v51 = sub_267B7DEBC();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v74 = v13;
        v7 = v52;
        v53 = swift_slowAlloc();
        v86[0] = v53;
        *v7 = v75;
        if (v48)
        {
          v54 = v47;
        }

        else
        {
          v54 = 7104878;
        }

        if (v48)
        {
          v55 = v48;
        }

        else
        {
          v55 = 0xE300000000000000;
        }

        v56 = sub_267B3E264(v54, v55, v86);
        v36 = v73;

        *(v7 + 4) = v56;
        _os_log_impl(&dword_267B38000, v50, v51, "#SFSpeechAssetManagerProtocol possible language %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        a2 = v72;
        OUTLINED_FUNCTION_4_5();
        v13 = v74;
        OUTLINED_FUNCTION_4_5();
      }

      v57 = v82;
      v32 &= v32 - 1;
      if (v48)
      {
        break;
      }

LABEL_33:
      if (v13 == v85 && v57 == a2)
      {
        goto LABEL_41;
      }

      v61 = sub_267B7E16C();

      if (v61)
      {
        goto LABEL_42;
      }
    }

    if (v47 != v85 || v48 != a2)
    {
      v59 = sub_267B7E16C();

      if (v59)
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    }

LABEL_41:

LABEL_42:
    v33 = v69 + 1;
    if (!__OFADD__(v69, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_45:

  return v69;
}

uint64_t sub_267B54E78()
{
  v0 = [swift_getObjCClassFromMetadata() installedLanguages];
  v1 = sub_267B7DE6C();

  return v1;
}

uint64_t sub_267B54ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_267B54EFC, 0, 0);
}

uint64_t sub_267B54EFC()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_267B54FB0;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_267B550B4(0, 0, v6, v7, v4, v5, v2);
}

uint64_t sub_267B54FB0()
{
  OUTLINED_FUNCTION_7_3();
  v5 = *(v4 + 64);
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_267B550B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = sub_267B7DD4C();
  v7[20] = v11;
  if (a6)
  {
    v7[14] = a6;
    v7[15] = a7;
    v7[10] = MEMORY[0x277D85DD0];
    v7[11] = 1107296256;
    v7[12] = sub_267B55414;
    v7[13] = &block_descriptor_7;
    a6 = _Block_copy(v7 + 10);
    v12 = v7[15];
  }

  v7[21] = a6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7[2] = v7;
  v7[7] = v7 + 18;
  v7[3] = sub_267B5527C;
  v14 = swift_continuation_init();
  v7[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DE8, &unk_267B81430);
  v7[10] = MEMORY[0x277D85DD0];
  v7[11] = 1107296256;
  v7[12] = sub_267B55468;
  v7[13] = &block_descriptor;
  v7[14] = v14;
  [ObjCClassFromMetadata fetchAssetWithConfig:a3 clientIdentifier:v11 progress:a6 completion:v7 + 10];

  return MEMORY[0x282200938](v7 + 2);
}

uint64_t sub_267B5527C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  if (*(v1 + 48))
  {
    v6 = *(v1 + 48);
    swift_willThrow();
    _Block_release(v4);

    v7 = *(v3 + 8);

    return v7();
  }

  else
  {
    v9 = *(v2 + 144);
    v10 = *(v2 + 152);
    _Block_release(*(v1 + 168));

    v11 = *(v3 + 8);

    return v11(v9, v10);
  }
}

uint64_t sub_267B55414(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_267B55468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_267B55500(v4, v5);
  }

  else
  {
    v8 = sub_267B7DD5C();

    return sub_267B5556C(v4, v8, v7);
  }
}

uint64_t sub_267B55500(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218578, &qword_267B7E990);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_267B5556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950]();
}

BOOL sub_267B5558C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_267B7E21C();
  sub_267B7DD9C();
  v9 = sub_267B7E23C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_267B7E16C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_267B55C4C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_267B556D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DE0, &qword_267B813C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of static SFSpeechAssetManagerProtocol.fetchAsset(with:clientIdentifier:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 24);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_267B558C0;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_267B558C0()
{
  OUTLINED_FUNCTION_7_3();
  v4 = *(v3 + 16);
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(v1, v0);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267B559F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DF0, &unk_267B81440);
  result = sub_267B7DF6C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_267B55DB4(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_267B7E21C();
    sub_267B7DD9C();
    result = sub_267B7E23C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_267B55C4C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_267B559F0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_267B55F70(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_267B7E21C();
      sub_267B7DD9C();
      result = sub_267B7E23C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_267B7E16C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_267B55E18();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_267B7E1CC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_267B55DB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_267B813B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_267B55E18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DF0, &unk_267B81440);
  v2 = *v0;
  v3 = sub_267B7DF5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_267B55F70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DF0, &unk_267B81440);
  result = sub_267B7DF6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_267B7E21C();

        sub_267B7DD9C();
        result = sub_267B7E23C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_2_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_3_6()
{

  JUMPOUT(0x26D602240);
}

void OUTLINED_FUNCTION_4_5()
{

  JUMPOUT(0x26D602240);
}

uint64_t ModelCodable.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_267B7DEFC();
  OUTLINED_FUNCTION_8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, a2);
  (*(v6 + 16))(v11, a1, v4);
  v15 = type metadata accessor for ModelCodable();
  ModelCodable.wrappedValue.setter(v11, v15);
  return (*(v6 + 8))(a1, v4);
}

uint64_t ModelCodable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_267B7DEFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t ModelCodable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_267B7DEFC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t static AceObject.decode(from:)()
{
  OUTLINED_FUNCTION_2_9();
  v10[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_267B7DA7C();
  v10[0] = 0;
  v2 = [v0 propertyListWithData:v1 options:0 format:0 error:v10];

  if (!v2)
  {
    v5 = v10[0];
    sub_267B7D9CC();

LABEL_10:
    result = swift_willThrow();
    goto LABEL_11;
  }

  v3 = v10[0];
  sub_267B7DF1C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218DF8, &qword_267B81450);
  if (swift_dynamicCast())
  {
    v4 = sub_267B7DD0C();
  }

  else
  {
    v4 = 0;
  }

  v6 = [objc_opt_self() aceObjectWithDictionary_];

  if (!v6)
  {
LABEL_9:
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_1_13(v8, 46);
    goto LABEL_10;
  }

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    goto LABEL_9;
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *AceObject.encode()()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [v0 dictionary];
  if (v2)
  {
    v3 = v2;
    v9[0] = 0;
    v4 = [objc_opt_self() dataWithPropertyList:v2 format:200 options:0 error:v9];
    v5 = v9[0];
    if (v4)
    {
      v1 = sub_267B7DA9C();
    }

    else
    {
      v1 = v5;
      sub_267B7D9CC();

      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_7_4();
    *v6 = 0xD000000000000037;
    *(v6 + 8) = v0;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_267B56754@<X0>(uint64_t *a1@<X8>)
{
  result = static AceObject.decode(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static INIntent.decode(from:)()
{
  OUTLINED_FUNCTION_2_9();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_267B47F78(ObjCClassFromMetadata, &selRef_typeName);
  if (v1)
  {
    v2 = sub_267B7DD4C();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_267B7DA7C();
  v4 = INIntentCreate();

  if (v4)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_1_13(v6, 36);
  return swift_willThrow();
}

uint64_t INIntent.encode()()
{
  result = sub_267B3A4A0([v0 backingStore]);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267B568D4@<X0>(uint64_t *a1@<X8>)
{
  result = static INIntent.decode(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static INIntentResponse.decode(from:)()
{
  OUTLINED_FUNCTION_2_9();
  sub_267B569E8();
  v0 = sub_267B7DD4C();

  v1 = sub_267B7DA7C();
  v2 = INIntentResponseCreate();

  if (v2)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_1_13(v4, 45);
  return swift_willThrow();
}

unint64_t sub_267B569E8()
{
  swift_getObjCClassFromMetadata();
  v0 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
  v1 = v0;
  if (v0 && (v2 = v0, v3 = sub_267B57910(v2), v4))
  {
    v5 = v3;
  }

  else
  {

    return 0xD000000000000015;
  }

  return v5;
}

id INIntentResponse.encode()()
{
  result = [v0 backingStore];
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = sub_267B3A4A0(result);
  if (v2 >> 60 == 15)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_267B56ACC@<X0>(uint64_t *a1@<X8>)
{
  result = static INIntentResponse.decode(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id INSendMessageIntent.redacted.getter()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 outgoingMessageType];
  v2 = sub_267B7DE8C();
  v3 = sub_267B7DD4C();
  [v1 setValue:v2 forKey:v3];

  sub_267B47F78(v0, &selRef_content);
  v5 = v4;
  if (v4)
  {
    v6 = sub_267B7DD6C();
    v8 = v7;

    v11[0] = v6;
    v11[1] = v8;
    v5 = sub_267B7E15C();
    sub_267B5798C(v11);
  }

  v9 = sub_267B7DD4C();
  [v1 setValue:v5 forKey:v9];
  swift_unknownObjectRelease();

  return v1;
}

id sub_267B56C58@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = INSendMessageIntent.redacted.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B56C84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for ModelCodable();
  return ModelCodable.wrappedValue.getter(v7, a3);
}

uint64_t sub_267B56CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_267B7DEFC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = type metadata accessor for ModelCodable();
  return ModelCodable.wrappedValue.setter(v10, v12);
}

void (*ModelCodable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v7 = sub_267B7DEFC();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[5] = v10;
  ModelCodable.wrappedValue.getter(a2, v10);
  return sub_267B56E94;
}

void sub_267B56E94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    ModelCodable.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    ModelCodable.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ModelCodable.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v8 = sub_267B7DEFC();
  OUTLINED_FUNCTION_8(v8);
  v42 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v49 = type metadata accessor for ModelCodable();
  OUTLINED_FUNCTION_8(v49);
  v44 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, a2);
  v25 = a1[3];
  v24 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_267B7E24C();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v43);
    return (*(v44 + 8))(v20, v49);
  }

  else
  {
    v39 = v14;
    v40 = v8;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    if (sub_267B7E18C())
    {
      (*(v42 + 8))(v20, v40);
      OUTLINED_FUNCTION_4_6();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, a2);
      v29 = v41;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v47, v48);
      sub_267B46E20();
      sub_267B7E17C();
      v34 = v42;
      v35 = v45;
      v36 = v46;
      v37 = v39;
      (*(a3 + 8))(v45, v46, a2, a3);
      v29 = v41;
      sub_267B3A524(v35, v36);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, a2);
      (*(v34 + 40))(v20, v37, v40);
    }

    __swift_destroy_boxed_opaque_existential_0(v47);
    v30 = v44;
    v31 = v29;
    v32 = v49;
    (*(v44 + 16))(v31, v20, v49);
    __swift_destroy_boxed_opaque_existential_0(v43);
    return (*(v30 + 8))(v20, v32);
  }
}

uint64_t ModelCodable.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = *(a2 + 16);
  v6 = sub_267B7DEFC();
  OUTLINED_FUNCTION_8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  OUTLINED_FUNCTION_6_3();
  v29 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7E26C();
  (*(v8 + 16))(v13, v3, v6);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    (*(v8 + 8))(v13, v6);
    __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    sub_267B7E1AC();
  }

  else
  {
    v22 = v29;
    (*(v29 + 32))(v20, v13, v5);
    v23 = v34;
    v24 = (*(*(v28 + 24) + 16))(v5);
    if (!v23)
    {
      v30 = v24;
      v31 = v25;
      __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      sub_267B473F0();
      sub_267B7E19C();
      sub_267B3A524(v30, v31);
    }

    (*(v22 + 8))(v20, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t ModelCodable.redacted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_6_3();
  v41 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = sub_267B7DEFC();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v40 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v40 - v25;
  (*(v16 + 16))(v40 - v25, v2, v13);
  if (__swift_getEnumTagSinglePayload(v26, 1, v5) == 1)
  {
    (*(v16 + 8))(v26, v13);
LABEL_7:
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280218E10, &qword_267B81460);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (!*(&v43 + 1))
  {
LABEL_8:
    sub_267B57A30(&v42);
    goto LABEL_9;
  }

  v40[2] = a2;
  sub_267B57A98(&v42, v45);
  v27 = v46;
  v40[0] = v47;
  v28 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v40[1] = v40;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_0();
  sub_267B7DB6C();
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    v30 = v41;
    (*(v41 + 32))(v12, v24, v5);
    (*(v30 + 16))(v21, v12, v5);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    v31 = *(a1 + 24);
    ModelCodable.init(wrappedValue:)(v21, v5);
    (*(v30 + 8))(v12, v5);
    return __swift_destroy_boxed_opaque_existential_0(v45);
  }

  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v5);
  (*(v16 + 8))(v24, v13);
  __swift_destroy_boxed_opaque_existential_0(v45);
LABEL_9:
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v5);
  v36 = *(a1 + 24);
  return ModelCodable.init(wrappedValue:)(v21, v5);
}

unint64_t sub_267B578BC()
{
  result = qword_280218E00;
  if (!qword_280218E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218E00);
  }

  return result;
}

uint64_t sub_267B57910(void *a1)
{
  v2 = [a1 type];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DD5C();

  return v3;
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

uint64_t sub_267B57A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218E08, &qword_267B81458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B57A98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_267B57B20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_267B57B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_267B57BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_267B7DEFC();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_267B57C30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
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

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_267B57DA8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
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

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_267B578BC();
}

uint64_t sub_267B58014()
{
  v0 = sub_267B7DCFC();
  __swift_allocate_value_buffer(v0, qword_2802286D0);
  __swift_project_value_buffer(v0, qword_2802286D0);
  return sub_267B7DCEC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

BOOL INSendMessageIntent.hasAttachment.getter()
{
  result = 0;
  if (sub_267B58800(v0, &selRef_attachments, &qword_280218EB8, 0x277CD4070))
  {
    v1 = sub_267B4B65C();

    if (v1)
    {
      return 1;
    }
  }

  return result;
}

BOOL INSendMessageIntent.hasContent.getter()
{
  v1 = sub_267B57980(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t INSendMessageIntent.isGroupMessage.getter()
{
  v1 = sub_267B58800(v0, &selRef_recipients, &qword_280218EB0, 0x277CD3E90);
  if (!v1 || (v2 = sub_267B4B638(v1), , v2 <= 1))
  {
    result = [v0 speakableGroupName];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

BOOL INSendMessageIntent.supportsCorrection.getter()
{
  v1 = sub_267B58800(v0, &selRef_recipients, &qword_280218EB0, 0x277CD3E90);
  if (v1)
  {
    v2 = sub_267B4B638(v1);

    if (v2 == 1)
    {
      v3 = [v0 speakableGroupName];
      if (!v3)
      {
        return !INSendMessageIntent.hasAttachment.getter();
      }
    }
  }

  return 0;
}

id INSendMessageIntent.shouldHideSiriAttribution.getter()
{
  v1 = [v0 shouldHideSiriAttribution];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void INSendMessageIntent.shouldHideSiriAttribution.setter(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v1 setShouldHideSiriAttribution_];
}

void (*INSendMessageIntent.shouldHideSiriAttribution.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = INSendMessageIntent.shouldHideSiriAttribution.getter() & 1;
  return sub_267B58448;
}

BOOL INSendMessageIntent.canHideSiriAttribution.getter()
{
  if ([v0 outgoingMessageType] != 1)
  {
    return 0;
  }

  return INSendMessageIntent.hasContent.getter();
}

SiriMessagesCommon::TextBalloon::ServiceType __swiftcall INSendMessageIntentResponse.serviceType(appBundleIdentifier:)(Swift::String_optional appBundleIdentifier)
{
  v3 = v1;
  if (appBundleIdentifier.value._object && (appBundleIdentifier.value._countAndFlagsBits == 0xD000000000000013 ? (v4 = 0x8000000267B86E60 == appBundleIdentifier.value._object) : (v4 = 0), v4 || (LOBYTE(appBundleIdentifier.value._countAndFlagsBits) = sub_267B7E16C(), (appBundleIdentifier.value._countAndFlagsBits & 1) != 0)))
  {
    v5 = sub_267B58800(v2, &selRef_sentMessages, &qword_280218EA8, 0x277CD3DE0);
    v6 = v5;
    if (v5)
    {
      appBundleIdentifier.value._countAndFlagsBits = sub_267B4B65C(v5);
      if (appBundleIdentifier.value._countAndFlagsBits)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D601950](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return appBundleIdentifier.value._countAndFlagsBits;
          }

          v7 = *(v6 + 32);
        }

        v8 = v7;

        v5 = sub_267B58874(v8);
        v6 = v9;
      }

      else
      {

        v5 = 0;
        v6 = 0;
      }
    }

    static TextBalloon.ServiceType.serviceFor(_:)(v5, v6, v3);
  }

  else
  {
    *v3 = 2;
  }

  return appBundleIdentifier.value._countAndFlagsBits;
}

uint64_t INIntent.launchBundleIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v10 - v3;
  v5 = sub_267B588E4(v0);
  v7 = v5;
  if (v6)
  {
    v10[2] = v5;
    v10[3] = v6;
    v10[0] = 0xD000000000000010;
    v10[1] = 0x8000000267B872E0;
    sub_267B58948();
    sub_267B5899C();
    if (sub_267B7DD3C())
    {
      sub_267B7DA5C();

      v8 = sub_267B7DA6C();
      if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
      {
        sub_267B46E74(v4);
        return 0;
      }

      else
      {
        v7 = sub_267B7DA4C();
        (*(*(v8 - 8) + 8))(v4, v8);
      }
    }
  }

  return v7;
}

uint64_t INIntent.clone()()
{
  swift_getObjectType();
  [v0 copy];
  sub_267B7DF1C();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v2;
}

unint64_t sub_267B587DC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267B58800(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_267B40FF0(0, a3, a4);
  v8 = sub_267B7DE1C();

  return v8;
}

uint64_t sub_267B58874(void *a1)
{
  v2 = [a1 serviceName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DD5C();

  return v3;
}

uint64_t sub_267B588E4(void *a1)
{
  v1 = [a1 launchId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B7DD5C();

  return v3;
}

unint64_t sub_267B58948()
{
  result = qword_280218E98;
  if (!qword_280218E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218E98);
  }

  return result;
}

unint64_t sub_267B5899C()
{
  result = qword_280218EA0;
  if (!qword_280218EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EA0);
  }

  return result;
}

uint64_t sub_267B589F0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x75416C65636E6163;
  }

  if (v2)
  {
    v4 = 0xEE00646E65536F74;
  }

  else
  {
    v4 = 0x8000000267B86CC0;
  }

  if (a2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x75416C65636E6163;
  }

  if (a2)
  {
    v6 = 0x8000000267B86CC0;
  }

  else
  {
    v6 = 0xEE00646E65536F74;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_267B7E16C();
  }

  return v8 & 1;
}

uint64_t sub_267B58AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_267B7E16C();
  }

  return v9 & 1;
}

uint64_t sub_267B58B70(unsigned __int8 a1, char a2)
{
  v2 = 0x7472616568;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7472616568;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x705573626D756874;
      break;
    case 2:
      v5 = 0x6F4473626D756874;
      v3 = 0xEA00000000006E77;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v5 = 24936;
      break;
    case 4:
      v5 = 0x74616D616C637865;
      v3 = 0xEB000000006E6F69;
      break;
    case 5:
      v5 = 0x6E6F697473657571;
      v3 = 0xEC0000006B72614DLL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x705573626D756874;
      break;
    case 2:
      v2 = 0x6F4473626D756874;
      v6 = 0xEA00000000006E77;
      break;
    case 3:
      v6 = 0xE200000000000000;
      v2 = 24936;
      break;
    case 4:
      v2 = 0x74616D616C637865;
      v6 = 0xEB000000006E6F69;
      break;
    case 5:
      v2 = 0x6E6F697473657571;
      v6 = 0xEC0000006B72614DLL;
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
    v8 = sub_267B7E16C();
  }

  return v8 & 1;
}

uint64_t sub_267B58D90()
{
  sub_267B7E21C();
  sub_267B58EF4();
  return sub_267B7E23C();
}

uint64_t sub_267B58DE4()
{
  sub_267B7DD9C();
}

uint64_t sub_267B58E90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_267B7DD9C();
}

uint64_t sub_267B58EF4()
{
  sub_267B7DD9C();
}

uint64_t sub_267B58FE0()
{
  sub_267B7E21C();
  sub_267B58EF4();
  return sub_267B7E23C();
}

uint64_t sub_267B59054(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_267B7E21C();
  a3(v4);
  sub_267B7DD9C();

  return sub_267B7E23C();
}

uint64_t sub_267B590C0()
{
  sub_267B7E21C();
  sub_267B7DD9C();

  return sub_267B7E23C();
}

SiriMessagesCommon::AutoSendableButtonAction_optional __swiftcall AutoSendableButtonAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267B7DFEC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoSendableButtonAction.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001BLL;
  }

  else
  {
    result = 0x75416C65636E6163;
  }

  *v0;
  return result;
}

unint64_t sub_267B59210()
{
  result = qword_280218EC0;
  if (!qword_280218EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EC0);
  }

  return result;
}

unint64_t sub_267B59288@<X0>(unint64_t *a1@<X8>)
{
  result = AutoSendableButtonAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoSendableButtonAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B594C8()
{
  result = qword_280218EC8;
  if (!qword_280218EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EC8);
  }

  return result;
}

uint64_t sub_267B59528(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x75416C65636E6163 && a2 == 0xEE00646E65536F74)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B7E16C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267B595D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B59528(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B595FC(uint64_t a1)
{
  v2 = sub_267B5979C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B59638(uint64_t a1)
{
  v2 = sub_267B5979C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CancelAutoSend.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218ED0, &qword_267B81800);
  v5 = OUTLINED_FUNCTION_0_10(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5979C();
  sub_267B7E27C();
  sub_267B7E10C();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_267B5979C()
{
  result = qword_280218ED8;
  if (!qword_280218ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218ED8);
  }

  return result;
}

uint64_t CancelAutoSend.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218EE0, &qword_267B81808);
  v7 = OUTLINED_FUNCTION_0_10(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5979C();
  sub_267B7E25C();
  if (!v2)
  {
    v15 = sub_267B7E06C();
    (*(v9 + 8))(v13, v3);
    *a2 = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B59938()
{
  sub_267B59D50();
  sub_267B59DA4();
  return sub_267B7DB8C();
}

uint64_t sub_267B599A4()
{
  sub_267B59D50();
  sub_267B59DA4();
  return sub_267B7DB7C();
}

uint64_t getEnumTagSinglePayload for CancelAutoSend(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CancelAutoSend(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CancelAutoSend.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B59C4C()
{
  result = qword_280218EE8;
  if (!qword_280218EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EE8);
  }

  return result;
}

unint64_t sub_267B59CA4()
{
  result = qword_280218EF0;
  if (!qword_280218EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EF0);
  }

  return result;
}

unint64_t sub_267B59CFC()
{
  result = qword_280218EF8;
  if (!qword_280218EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218EF8);
  }

  return result;
}

unint64_t sub_267B59D50()
{
  result = qword_280218F00;
  if (!qword_280218F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218F00);
  }

  return result;
}

unint64_t sub_267B59DA4()
{
  result = qword_280218F08;
  if (!qword_280218F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218F08);
  }

  return result;
}

uint64_t *sub_267B59DF8()
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_5_6();
  }

  return &qword_280218F10;
}

uint64_t SnippetLabels.send.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.undoSend.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.cancel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.change.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.done.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.audioMessage.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.readingInProgress.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.unreadMessages.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.changeContact.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.placeholderAttachment.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.newMessage.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.toWithColon.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.toWho.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.payloadPrompt.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t SnippetLabels.openMessages.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_8_6();
}

void __swiftcall SnippetLabels.init(send:undoSend:cancel:change:done:audioMessage:readingInProgress:unreadMessages:changeContact:placeholderAttachment:newMessage:toWithColon:toWho:payloadPrompt:openMessages:)(SiriMessagesCommon::SnippetLabels *__return_ptr retstr, Swift::String send, Swift::String undoSend, Swift::String cancel, Swift::String change, Swift::String done, Swift::String audioMessage, Swift::String readingInProgress, Swift::String unreadMessages, Swift::String changeContact, Swift::String placeholderAttachment, Swift::String newMessage, Swift::String toWithColon, Swift::String toWho, Swift::String payloadPrompt, Swift::String openMessages)
{
  retstr->send = send;
  retstr->undoSend = undoSend;
  retstr->cancel = cancel;
  retstr->change = change;
  retstr->done = done;
  retstr->audioMessage = audioMessage;
  retstr->readingInProgress = readingInProgress;
  retstr->unreadMessages = unreadMessages;
  retstr->changeContact = changeContact;
  retstr->placeholderAttachment = placeholderAttachment;
  retstr->newMessage = newMessage;
  retstr->toWithColon = toWithColon;
  retstr->toWho = toWho;
  retstr->payloadPrompt = payloadPrompt;
  retstr->openMessages = openMessages;
}

uint64_t sub_267B5A110(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684956531 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E65536F646E75 && a2 == 0xE800000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65676E616863 && a2 == 0xE600000000000000;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701736292 && a2 == 0xE400000000000000;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73654D6F69647561 && a2 == 0xEC00000065676173;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000267B87300 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x654D646165726E75 && a2 == 0xEE00736567617373;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F4365676E616863 && a2 == 0xED0000746361746ELL;
                  if (v13 || (sub_267B7E16C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x8000000267B87320 == a2;
                    if (v14 || (sub_267B7E16C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x617373654D77656ELL && a2 == 0xEA00000000006567;
                      if (v15 || (sub_267B7E16C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6F43687469576F74 && a2 == 0xEB000000006E6F6CLL;
                        if (v16 || (sub_267B7E16C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6F68576F74 && a2 == 0xE500000000000000;
                          if (v17 || (sub_267B7E16C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x5064616F6C796170 && a2 == 0xED000074706D6F72;
                            if (v18 || (sub_267B7E16C() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x7373654D6E65706FLL && a2 == 0xEC00000073656761)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_267B7E16C();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267B5A5BC(char a1)
{
  result = 1684956531;
  switch(a1)
  {
    case 1:
      result = 0x646E65536F646E75;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x65676E616863;
      break;
    case 4:
      result = 1701736292;
      break;
    case 5:
      result = 0x73654D6F69647561;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x654D646165726E75;
      break;
    case 8:
      v3 = 0x65676E616863;
      goto LABEL_16;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x617373654D77656ELL;
      break;
    case 11:
      v3 = 0x687469576F74;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      break;
    case 12:
      result = 0x6F68576F74;
      break;
    case 13:
      result = 0x5064616F6C796170;
      break;
    case 14:
      result = 0x7373654D6E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B5A778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5A110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B5A7A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B5A5B4();
  *a1 = result;
  return result;
}

uint64_t sub_267B5A7C8(uint64_t a1)
{
  v2 = sub_267B5AC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5A804(uint64_t a1)
{
  v2 = sub_267B5AC20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SnippetLabels.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219000, &qword_267B819E0);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v30 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v30[27] = v1[3];
  v30[28] = v13;
  v14 = v1[4];
  v30[25] = v1[5];
  v30[26] = v14;
  v15 = v1[6];
  v30[23] = v1[7];
  v30[24] = v15;
  v16 = v1[8];
  v30[21] = v1[9];
  v30[22] = v16;
  v17 = v1[11];
  v30[19] = v1[10];
  v30[20] = v17;
  v18 = v1[13];
  v30[17] = v1[12];
  v30[18] = v18;
  v19 = v1[15];
  v30[15] = v1[14];
  v30[16] = v19;
  v20 = v1[17];
  v30[13] = v1[16];
  v30[14] = v20;
  v21 = v1[19];
  v30[11] = v1[18];
  v30[12] = v21;
  v22 = v1[21];
  v30[9] = v1[20];
  v30[10] = v22;
  v23 = v1[23];
  v30[7] = v1[22];
  v30[8] = v23;
  v24 = v1[25];
  v30[5] = v1[24];
  v30[6] = v24;
  v25 = v1[27];
  v30[3] = v1[26];
  v30[4] = v25;
  v26 = v1[29];
  v30[1] = v1[28];
  v30[2] = v26;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5AC20();
  sub_267B7E27C();
  v46 = 0;
  v28 = v31;
  sub_267B7E0FC();
  if (v28)
  {
    return (*(v6 + 8))(v10, v3);
  }

  v31 = v6;
  v45 = 1;
  OUTLINED_FUNCTION_10_2();
  v44 = 2;
  OUTLINED_FUNCTION_10_2();
  v43 = 3;
  OUTLINED_FUNCTION_10_2();
  v42 = 4;
  OUTLINED_FUNCTION_10_2();
  v41 = 5;
  OUTLINED_FUNCTION_10_2();
  v40 = 6;
  OUTLINED_FUNCTION_10_2();
  v39 = 7;
  OUTLINED_FUNCTION_10_2();
  v38 = 8;
  OUTLINED_FUNCTION_10_2();
  v37 = 9;
  OUTLINED_FUNCTION_10_2();
  v36 = 10;
  sub_267B7E0FC();
  v35 = 11;
  OUTLINED_FUNCTION_9_2(&v50);
  v34 = 12;
  OUTLINED_FUNCTION_9_2(&v49);
  v33 = 13;
  OUTLINED_FUNCTION_9_2(&v48);
  v32 = 14;
  OUTLINED_FUNCTION_9_2(&v47);
  return (*(v31 + 8))(v10, v3);
}

unint64_t sub_267B5AC20()
{
  result = qword_280219008;
  if (!qword_280219008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219008);
  }

  return result;
}

uint64_t SnippetLabels.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219010, &qword_267B819E8);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[3];
  v10 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_267B5AC20();
  sub_267B7E25C();
  if (!v2)
  {
    v65 = a2;
    LOBYTE(v68[0]) = 0;
    v11 = sub_267B7E05C();
    v55 = v12;
    v13 = OUTLINED_FUNCTION_4_7(1);
    v54 = v14;
    v63 = OUTLINED_FUNCTION_4_7(2);
    v53 = v15;
    v61 = OUTLINED_FUNCTION_4_7(3);
    v52 = v16;
    v60 = OUTLINED_FUNCTION_4_7(4);
    v51 = v17;
    v58 = OUTLINED_FUNCTION_4_7(5);
    v50 = v18;
    v57 = OUTLINED_FUNCTION_4_7(6);
    v49 = v19;
    v42 = OUTLINED_FUNCTION_4_7(7);
    v47 = v20;
    v41 = OUTLINED_FUNCTION_4_7(8);
    v48 = v21;
    v22 = OUTLINED_FUNCTION_4_7(9);
    v46 = v23;
    v24 = v22;
    v40 = OUTLINED_FUNCTION_4_7(10);
    v45 = v25;
    v38 = OUTLINED_FUNCTION_4_7(11);
    v39 = v26;
    v69 = 1;
    v37 = OUTLINED_FUNCTION_4_7(12);
    v44 = v27;
    v36 = OUTLINED_FUNCTION_4_7(13);
    v43 = v28;
    v70 = 14;
    v29 = sub_267B7E05C();
    v35 = v30;
    v31 = v29;
    v32 = OUTLINED_FUNCTION_7_5();
    v33(v32);
    v67[0] = v11;
    v67[1] = v55;
    v67[2] = v13;
    v67[3] = v54;
    v67[4] = v63;
    v67[5] = v53;
    v67[6] = v61;
    v67[7] = v52;
    v67[8] = v60;
    v67[9] = v51;
    v67[10] = v58;
    v67[11] = v50;
    v67[12] = v57;
    v67[13] = v49;
    v67[14] = v42;
    v67[15] = v47;
    v67[16] = v41;
    v67[17] = v48;
    v67[18] = v24;
    v67[19] = v46;
    v67[20] = v40;
    v67[21] = v45;
    v67[22] = v38;
    v67[23] = v39;
    v67[24] = v37;
    v67[25] = v44;
    v67[26] = v36;
    v67[27] = v43;
    v67[28] = v31;
    v67[29] = v35;
    memcpy(v65, v67, 0xF0uLL);
    sub_267B42CAC(v67, v68);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v68[0] = v11;
    v68[1] = v55;
    v68[2] = v13;
    v68[3] = v54;
    v68[4] = v63;
    v68[5] = v53;
    v68[6] = v61;
    v68[7] = v52;
    v68[8] = v60;
    v68[9] = v51;
    v68[10] = v58;
    v68[11] = v50;
    v68[12] = v57;
    v68[13] = v49;
    v68[14] = v42;
    v68[15] = v47;
    v68[16] = v41;
    v68[17] = v48;
    v68[18] = v24;
    v68[19] = v46;
    v68[20] = v40;
    v68[21] = v45;
    v68[22] = v38;
    v68[23] = v39;
    v68[24] = v37;
    v68[25] = v44;
    v68[26] = v36;
    v68[27] = v43;
    v68[28] = v31;
    v68[29] = v35;
    return sub_267B3A348(v68);
  }

  OUTLINED_FUNCTION_3_7();
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v69 = 0;
  if (v9)
  {

    if ((v56 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (!v56)
  {
LABEL_5:
    if (v59)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (v59)
  {
LABEL_6:

    if ((v62 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (!v62)
  {
LABEL_7:
    if (!v64)
    {
      return result;
    }
  }

LABEL_12:

  if (v64)
  {
  }

  return result;
}

void sub_267B5B474()
{
  qword_280218F10 = 1684956499;
  qword_280218F18 = 0xE400000000000000;
  qword_280218F20 = 0x6E6553206F646E55;
  unk_280218F28 = 0xE900000000000064;
  qword_280218F30 = 0x6C65636E6143;
  qword_280218F38 = 0xE600000000000000;
  qword_280218F40 = 0x65676E616843;
  qword_280218F48 = 0xE600000000000000;
  qword_280218F50 = 1701736260;
  qword_280218F58 = 0xE400000000000000;
  strcpy(&qword_280218F60, "Audio Message");
  HIWORD(qword_280218F68) = -4864;
  qword_280218F70 = 0xE2676E6964616552;
  qword_280218F78 = 0xAA0000000000A680;
  qword_280218F80 = 0x4D20646165726E55;
  qword_280218F88 = 0xEF73656761737365;
  strcpy(&qword_280218F90, "Change Contact");
  HIBYTE(qword_280218F98) = -18;
  qword_280218FA0 = 0xD000000000000014;
  unk_280218FA8 = 0x8000000267B87340;
  qword_280218FB0 = 0x7373654D2077654ELL;
  unk_280218FB8 = 0xEB00000000656761;
  qword_280218FC0 = 3829588;
  qword_280218FC8 = 0xE300000000000000;
  qword_280218FD0 = 0x3F6F6877206F54;
  unk_280218FD8 = 0xE700000000000000;
  qword_280218FE0 = 0xD000000000000018;
  unk_280218FE8 = 0x8000000267B87360;
  strcpy(&qword_280218FF0, "Open Messages");
  unk_280218FFE = -4864;
}

uint64_t static LabelsProvider.current.getter()
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_5_6();
  }

  swift_beginAccess();
  memcpy(__dst, &qword_280218F10, sizeof(__dst));
  v0 = OUTLINED_FUNCTION_8_6();
  memcpy(v0, v1, 0xF0uLL);
  return sub_267B42CAC(__dst, v3);
}

uint64_t (*static LabelsProvider.current.modify())()
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_5_6();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_267B5B710@<X0>(void *a1@<X8>)
{
  sub_267B59DF8();
  swift_beginAccess();
  memcpy(__dst, &qword_280218F10, sizeof(__dst));
  memcpy(a1, &qword_280218F10, 0xF0uLL);
  return sub_267B42CAC(__dst, v3);
}

uint64_t sub_267B5B78C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_267B42CAC(__dst, v3);
  sub_267B59DF8();
  swift_beginAccess();
  memcpy(v3, &qword_280218F10, sizeof(v3));
  memcpy(&qword_280218F10, __dst, 0xF0uLL);
  return sub_267B3A348(v3);
}

uint64_t sub_267B5B81C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_267B5B85C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LabelsProvider(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SnippetLabels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SnippetLabels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B5BAEC()
{
  result = qword_280219018;
  if (!qword_280219018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219018);
  }

  return result;
}

unint64_t sub_267B5BB44()
{
  result = qword_280219020;
  if (!qword_280219020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219020);
  }

  return result;
}

unint64_t sub_267B5BB9C()
{
  result = qword_280219028;
  if (!qword_280219028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219028);
  }

  return result;
}

void OUTLINED_FUNCTION_2_10()
{
  v0[48] = 0;
  v0[52] = 0;
  v0[54] = 0;
}

void OUTLINED_FUNCTION_3_7()
{
  v0[44] = 0;
  v0[48] = 0;
  v0[52] = 0;
  v0[54] = 0;
}

uint64_t OUTLINED_FUNCTION_4_7@<X0>(char a1@<W8>)
{
  *(v1 + 472) = a1;

  return sub_267B7E05C();
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return sub_267B7E0FC();
}

uint64_t CarPlayHeader.primaryName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CarPlayHeader.primaryName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CarPlayHeader.secondaryName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CarPlayHeader.secondaryName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CarPlayHeader.contactIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t CarPlayHeader.appBundleIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CarPlayHeader.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_267B5BF04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E7972616D697270 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7261646E6F636573 && a2 == 0xED0000656D614E79;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000267B87380 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x8000000267B873A0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B873C0 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x8000000267B873E0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_267B7E16C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267B5C0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5BF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B5C124(uint64_t a1)
{
  v2 = sub_267B3AA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5C160(uint64_t a1)
{
  v2 = sub_267B3AA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B5C19C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219058, &qword_267B81C60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267B5C208(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_267B5C248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_267B5C2BC()
{
  result = qword_280219078;
  if (!qword_280219078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219078);
  }

  return result;
}

unint64_t sub_267B5C314()
{
  result = qword_280219080;
  if (!qword_280219080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219080);
  }

  return result;
}

unint64_t sub_267B5C36C()
{
  result = qword_280219088;
  if (!qword_280219088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219088);
  }

  return result;
}

SiriMessagesCommon::UnreadMessagesCompactCarPlayButton __swiftcall UnreadMessagesCompactCarPlayButton.init(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v4 = v1;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_280218F88;
  v4[2] = qword_280218F80;
  v4[3] = v5;
  *v4 = countAndFlagsBits;
  v4[1] = object;

  result.unreadMessagesLabelText._object = v9;
  result.unreadMessagesLabelText._countAndFlagsBits = v8;
  result.text._object = v7;
  result.text._countAndFlagsBits = v6;
  return result;
}

uint64_t UnreadMessagesCompactCarPlayButton.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UnreadMessagesCompactCarPlayButton.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UnreadMessagesCompactCarPlayButton.unreadMessagesLabelText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UnreadMessagesCompactCarPlayButton.unreadMessagesLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_267B5C558(uint64_t a1)
{
  v2 = sub_267B5C740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5C594(uint64_t a1)
{
  v2 = sub_267B5C740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnreadMessagesCompactCarPlayButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219090, &qword_267B81E60);
  v5 = OUTLINED_FUNCTION_8(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5C740();
  sub_267B7E27C();
  v19 = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v18 = 1;
    sub_267B7E0FC();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t sub_267B5C740()
{
  result = qword_280219098;
  if (!qword_280219098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219098);
  }

  return result;
}

uint64_t UnreadMessagesCompactCarPlayButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190A0, &qword_267B81E68);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v23 - v10;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B5C740();

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v26 = 0;
    v14 = OUTLINED_FUNCTION_2_5();
    v16 = v15;
    v26 = 1;
    v17 = OUTLINED_FUNCTION_2_5();
    v19 = v18;
    v20 = *(v7 + 8);
    v24 = v17;
    v20(v11, v4);

    v22 = v24;
    v21 = v25;
    *v25 = v14;
    v21[1] = v16;
    v21[2] = v22;
    v21[3] = v19;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

_BYTE *storeEnumTagSinglePayload for UnreadMessagesCompactCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B5CAF0()
{
  result = qword_2802190A8;
  if (!qword_2802190A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190A8);
  }

  return result;
}

unint64_t sub_267B5CB48()
{
  result = qword_2802190B0;
  if (!qword_2802190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190B0);
  }

  return result;
}

unint64_t sub_267B5CBA0()
{
  result = qword_2802190B8;
  if (!qword_2802190B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190B8);
  }

  return result;
}

uint64_t PhotoSharingInfo.__allocating_init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_7_2();
  v14 = swift_allocObject();
  PhotoSharingInfo.init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t sub_267B5CC74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65687475417369 && a2 == 0xEF64657461636974;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000267B87670 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646E65536F747561 && a2 == 0xEC0000006F666E49;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6974636572726F63 && a2 == 0xEE006F666E496E6FLL;
                  if (v13 || (sub_267B7E16C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000267B86E10 == a2;
                    if (v14 || (sub_267B7E16C() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_267B7E16C();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_267B5CFEC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E69;
      break;
    case 2:
      result = 0x6E65687475417369;
      break;
    case 3:
      result = 0x4E746361746E6F63;
      break;
    case 4:
      result = 0x64616F6C796170;
      break;
    case 5:
      result = 0x656D614E707061;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x646E65536F747561;
      break;
    case 8:
      result = 0x6974636572726F63;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x736C6562616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B5D140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5CC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B5D168@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B5CFE4();
  *a1 = result;
  return result;
}

uint64_t sub_267B5D190(uint64_t a1)
{
  v2 = sub_267B60AF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5D1CC(uint64_t a1)
{
  v2 = sub_267B60AF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageDraftSnippetModel.id.getter()
{
  OUTLINED_FUNCTION_38();
  v0 = *(*(sub_267B7DACC() - 8) + 16);
  v1 = OUTLINED_FUNCTION_8_6();

  return v2(v1);
}

void *MessageDraftSnippetModel.intent.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDraftSnippetModel() + 20));
  v2 = v1;
  return v1;
}

void MessageDraftSnippetModel.intent.setter()
{
  v2 = *(OUTLINED_FUNCTION_29() + 20);

  *(v1 + v2) = v0;
}

void (*MessageDraftSnippetModel.intent.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MessageDraftSnippetModel() + 20);
  *(a1 + 16) = v3;
  v4 = *(v1 + v3);
  *a1 = v4;
  v5 = v4;
  return sub_267B5D364;
}

void sub_267B5D364(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;

    *(v3 + v2) = v4;
  }

  else
  {

    *(v3 + v2) = v4;
  }
}

uint64_t MessageDraftSnippetModel.contactName.getter()
{
  v0 = *(type metadata accessor for MessageDraftSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  sub_267B7DBBC();
  return v2;
}

uint64_t sub_267B5D434(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MessageDraftSnippetModel.contactName.setter();
}

uint64_t MessageDraftSnippetModel.contactName.setter()
{
  v0 = *(type metadata accessor for MessageDraftSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  return sub_267B7DBCC();
}

uint64_t (*MessageDraftSnippetModel.contactName.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for MessageDraftSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  v2[4] = sub_267B7DBAC();
  return sub_267B41800;
}

uint64_t MessageDraftSnippetModel.isAuthenticated.setter(char a1)
{
  result = type metadata accessor for MessageDraftSnippetModel();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t MessageDraftSnippetModel.payload.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDraftSnippetModel() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_8_6();
}

uint64_t sub_267B5D620(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MessageDraftSnippetModel.payload.setter();
}

uint64_t MessageDraftSnippetModel.payload.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = (v1 + *(type metadata accessor for MessageDraftSnippetModel() + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t (*MessageDraftSnippetModel.payload.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for MessageDraftSnippetModel() + 32);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  *(a1 + 8) = v5;

  return sub_267B5D708;
}

uint64_t sub_267B5D708(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + *(a1 + 6));
  v4 = *a1;
  v5 = v3[1];
  if (a2)
  {
    v6 = a1[1];

    *v3 = v4;
    v3[1] = v2;
  }

  else
  {
    v8 = v3[1];

    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

uint64_t MessageDraftSnippetModel.appName.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDraftSnippetModel() + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_8_6();
}

uint64_t MessageDraftSnippetModel.appName.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = (v1 + *(type metadata accessor for MessageDraftSnippetModel() + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MessageDraftSnippetModel.shouldUpdateWithASRText.setter(char a1)
{
  result = type metadata accessor for MessageDraftSnippetModel();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MessageDraftSnippetModel.autoSendInfo.getter()
{
  OUTLINED_FUNCTION_38();
  v2 = (v1 + *(type metadata accessor for MessageDraftSnippetModel() + 44));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;

  return sub_267B60A64(v3, v4, v5);
}

__n128 MessageDraftSnippetModel.autoSendInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for MessageDraftSnippetModel() + 44));
  v5 = v4[3];
  v6 = v4[4];
  sub_267B60AAC(*v4, v4[1], v4[2]);
  result = *a1;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v4[4] = v3;
  return result;
}

uint64_t MessageDraftSnippetModel.correctionInfo.getter()
{
  OUTLINED_FUNCTION_38();
  *v0 = *(v1 + *(type metadata accessor for MessageDraftSnippetModel() + 48));
}

uint64_t MessageDraftSnippetModel.correctionInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for MessageDraftSnippetModel() + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

uint64_t MessageDraftSnippetModel.photoSharingInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDraftSnippetModel() + 52));
}

uint64_t MessageDraftSnippetModel.photoSharingInfo.setter()
{
  v2 = *(OUTLINED_FUNCTION_29() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MessageDraftSnippetModel.labels.getter()
{
  OUTLINED_FUNCTION_38();
  v0 = *(type metadata accessor for MessageDraftSnippetModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  return sub_267B7DBBC();
}

uint64_t sub_267B5DB70(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_267B42CAC(__dst, &v3);
  return MessageDraftSnippetModel.labels.setter(__src);
}

uint64_t MessageDraftSnippetModel.labels.setter(void *__src)
{
  memcpy(v3, __src, sizeof(v3));
  v1 = *(type metadata accessor for MessageDraftSnippetModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  return sub_267B7DBCC();
}

uint64_t (*MessageDraftSnippetModel.labels.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for MessageDraftSnippetModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  v2[4] = sub_267B7DBAC();
  return sub_267B43594;
}

uint64_t MessageDraftSnippetModel.init(intent:contactName:isAuthenticated:payload:appName:shouldUpdateWithASRText:autoSendInfo:correctionInfo:photoSharingInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 *a11, uint64_t *a12, uint64_t a13)
{
  v48 = a11[1];
  v49 = *a11;
  v47 = *(a11 + 4);
  v50 = *a12;
  v15 = type metadata accessor for MessageDraftSnippetModel();
  v16 = v15[5];
  *(a9 + v16) = 0;
  v17 = (a9 + v15[8]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v15[9];
  v19 = a9 + v15[11];
  OUTLINED_FUNCTION_42();
  v21 = v20[12];
  *(a9 + v21) = 0;
  v22 = v20[14];
  v41 = v20[13];
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v23 = (a9 + v18);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_37();
  memcpy(v24, v25, v26);
  OUTLINED_FUNCTION_37();
  memcpy(v27, v28, v29);
  sub_267B42CAC(v54, v51);
  sub_267B7DB9C();
  sub_267B7DABC();
  v30 = *(a9 + v16);
  v31 = a1;

  *(a9 + v16) = a1;
  v32 = v15[6];
  v52 = a2;
  v53 = a3;
  sub_267B7DB9C();

  *(a9 + v15[7]) = a4 & 1;
  v33 = v17[1];

  *v17 = a5;
  v17[1] = a6;
  *v23 = a7;
  v23[1] = a8;
  *(a9 + v15[10]) = a10 & 1;
  v34 = OUTLINED_FUNCTION_26();
  sub_267B60AAC(v34, v35, v36);
  *v19 = v49;
  *(v19 + 16) = v48;
  *(v19 + 32) = v47;
  v37 = *(a9 + v21);

  *(a9 + v21) = v50;
  *(a9 + v41) = a13;
  return result;
}

void MessageDraftSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v95 = v0;
  v2 = v1;
  v86 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  v5 = OUTLINED_FUNCTION_8(v4);
  v97 = v6;
  v98 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v87 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  v12 = OUTLINED_FUNCTION_8(v11);
  v91 = v13;
  v92 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v88 = &v83 - v17;
  v107 = sub_267B7DACC();
  v18 = OUTLINED_FUNCTION_8(v107);
  v93 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190C0, &unk_267B82050);
  v25 = OUTLINED_FUNCTION_8(v24);
  v89 = v26;
  v90 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  v31 = &v83 - v30;
  v32 = type metadata accessor for MessageDraftSnippetModel();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v34[5];
  *&v36[v101] = 0;
  v37 = &v36[v34[8]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v100 = v37;
  v38 = &v36[v34[11]];
  OUTLINED_FUNCTION_42();
  v99 = *(v39 + 48);
  *&v36[v99] = 0;
  v40 = *(v39 + 56);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_37();
  memcpy(v41, v42, v43);
  OUTLINED_FUNCTION_37();
  memcpy(v44, v45, v46);
  sub_267B42CAC(&v106, v102);
  v96 = v40;
  sub_267B7DB9C();
  v47 = v2;
  v48 = v2[3];
  v49 = v47[4];
  v94 = v47;
  OUTLINED_FUNCTION_41(v47, v48);
  sub_267B60AF4();
  v50 = v95;
  sub_267B7E25C();
  if (v50)
  {
    __swift_destroy_boxed_opaque_existential_0(v94);

    v52 = *(v100 + 1);

    v53 = OUTLINED_FUNCTION_26();
    sub_267B60AAC(v53, v54, v55);
    v56 = *&v36[v99];

    (*(v97 + 8))(&v36[v96], v98);
  }

  else
  {
    v95 = v32;
    LOBYTE(v103) = 0;
    OUTLINED_FUNCTION_10_3();
    sub_267B61754(v51);
    sub_267B7E08C();
    (*(v93 + 32))(v36, v23, v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
    v85 = v31;
    v102[0] = 1;
    OUTLINED_FUNCTION_35();
    sub_267B42E70(v57);
    OUTLINED_FUNCTION_18_0();
    v58 = v103;
    v59 = v101;

    *&v36[v59] = v58;
    LOBYTE(v103) = 3;
    OUTLINED_FUNCTION_1();
    sub_267B42EB4(v60);
    v61 = v88;
    v62 = v92;
    sub_267B7E08C();
    v63 = v95;
    (*(v91 + 32))(&v36[v95[6]], v61, v62);
    LOBYTE(v103) = 2;
    v36[v63[7]] = sub_267B7E02C() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190D8, &qword_267B82060);
    v102[0] = 4;
    OUTLINED_FUNCTION_35();
    sub_267B42E70(v64);
    OUTLINED_FUNCTION_18_0();
    v65 = v103;
    v66 = v100;
    v67 = *(v100 + 1);

    *v66 = v65;
    LOBYTE(v103) = 5;
    v68 = sub_267B7E01C();
    v69 = v95;
    v70 = &v36[v95[9]];
    *v70 = v68;
    v70[1] = v71;
    LOBYTE(v103) = 6;
    v36[v69[10]] = sub_267B7E06C() & 1;
    v102[0] = 7;
    sub_267B60B48();
    OUTLINED_FUNCTION_32();
    v88 = v105;
    v72 = OUTLINED_FUNCTION_26();
    v83 = v104;
    v84 = v103;
    sub_267B60AAC(v72, v73, v74);
    v75 = v83;
    *v38 = v84;
    *(v38 + 1) = v75;
    *(v38 + 4) = v88;
    v102[0] = 8;
    sub_267B60B9C();
    OUTLINED_FUNCTION_32();
    v76 = v103;
    v77 = v99;
    v78 = *&v36[v99];

    *&v36[v77] = v76;
    type metadata accessor for PhotoSharingInfo();
    v102[0] = 9;
    OUTLINED_FUNCTION_9_3();
    sub_267B61754(v79);
    sub_267B7E04C();
    *&v36[v95[13]] = v103;
    LOBYTE(v103) = 10;
    OUTLINED_FUNCTION_1();
    sub_267B42F20(v80);
    sub_267B7E08C();
    v81 = OUTLINED_FUNCTION_27();
    v82(v81);
    (*(v97 + 40))(&v36[v96], v87, v98);
    sub_267B60C14(v36, v86);
    __swift_destroy_boxed_opaque_existential_0(v94);
    sub_267B60C78(v36);
  }

  OUTLINED_FUNCTION_14();
}

unint64_t MessageDraftSnippetModel.description.getter()
{
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v1 = type metadata accessor for MessageDraftSnippetModel();
  v2 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  sub_267B7DBBC();
  MEMORY[0x26D601760]();

  OUTLINED_FUNCTION_16_0();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v25 = v3;
  if (*(v0 + v1[7]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v1[7]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v4, v5);

  OUTLINED_FUNCTION_16_0();

  MEMORY[0x26D601760](0xD000000000000012, v25);

  if (*(v0 + v1[8] + 8))
  {
    v6 = 0x657463616465723CLL;
  }

  else
  {
    v6 = 7104878;
  }

  v7 = 0xE300000000000000;
  if (*(v0 + v1[8] + 8))
  {
    v8 = 0xEA00000000003E64;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x26D601760](v6, v8);

  OUTLINED_FUNCTION_16_0();

  MEMORY[0x26D601760](0x64616F6C79617020, 0xEA0000000000203ALL);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v26 = v9;
  if (*(v0 + v1[10]))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + v1[10]))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v10, v11);

  OUTLINED_FUNCTION_16_0();

  MEMORY[0x26D601760](0xD00000000000001ALL, v26);

  sub_267B7DF8C();

  v12 = (v0 + v1[11]);
  v13 = 7104878;
  if (v12[2] != 1)
  {
    v24 = *v12;
    v27 = v12[1];
    v30 = v12[2];
    v31 = *(v12 + 3);
    v13 = AutoSendInfo.description.getter();
    v7 = v14;
  }

  MEMORY[0x26D601760](v13, v7);

  MEMORY[0x26D601760](44, 0xE100000000000000);

  MEMORY[0x26D601760](0x6E65536F74756120, 0xEF203A6F666E4964);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v28 = v15;
  if (*(v0 + v1[12]))
  {
    v32 = *(v0 + v1[12]);
    v16 = CorrectionInfo.description.getter();
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x26D601760](v16, v18);

  OUTLINED_FUNCTION_16_0();

  MEMORY[0x26D601760](0xD000000000000011, v28);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v29 = v19;
  if (*(v0 + v1[13]))
  {
    v20 = PhotoSharingInfo.description.getter();
    v22 = v21;
  }

  else
  {
    v22 = 0xE300000000000000;
    v20 = 7104878;
  }

  MEMORY[0x26D601760](v20, v22);

  MEMORY[0x26D601760](41, 0xE100000000000000);

  MEMORY[0x26D601760](0xD000000000000013, v29);

  return 0xD000000000000027;
}