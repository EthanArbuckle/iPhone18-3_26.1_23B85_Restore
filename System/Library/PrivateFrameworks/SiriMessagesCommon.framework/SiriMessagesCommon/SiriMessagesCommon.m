uint64_t CATSerializable.serializedBase64SpeakableString()(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))();
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    sub_267B7DA8C();
    sub_267B3A524(v5, v6);
    sub_267B7DD8C();
  }

  return result;
}

uint64_t sub_267B39F1C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_267B39F58();
}

uint64_t sub_267B39F58()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v1 = sub_267B7D9BC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B39FF4();
  v4 = sub_267B7D99C();

  return v4;
}

unint64_t sub_267B39FF4()
{
  result = qword_280218B40;
  if (!qword_280218B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218B40);
  }

  return result;
}

uint64_t CarPlayHeader.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219030, &qword_267B81C50);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v11 = v23 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v27 = v1[3];
  v28 = v14;
  v26 = v1[4];
  LODWORD(v14) = *(v1 + 40);
  v24 = *(v1 + 41);
  v25 = v14;
  v15 = v1[6];
  v23[1] = v1[7];
  v23[2] = v15;
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_267B3AA54();
  sub_267B7E27C();
  v35 = 0;
  OUTLINED_FUNCTION_6();
  sub_267B7E0FC();
  if (!v2)
  {
    v21 = v26;
    v34 = 1;
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    v29 = v21;
    v33 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219040, &qword_267B81C58);
    sub_267B3ADA0();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    v32 = 3;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v31 = 4;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v30 = 5;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
  }

  return (*(v7 + 8))(v11, v20);
}

uint64_t static LabelsProvider.current.setter(const void *a1)
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_5_6();
  }

  swift_beginAccess();
  memcpy(__dst, &qword_280218F10, sizeof(__dst));
  memcpy(&qword_280218F10, a1, 0xF0uLL);
  return sub_267B3A348(__dst);
}

void *SABaseCommand.serializedData()()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 dictionary];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v8[0] = 0;
  v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:v8];

  v4 = v8[0];
  if (v3)
  {
    v5 = sub_267B7DA9C();
  }

  else
  {
    v5 = v4;
    sub_267B7D9CC();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_267B3A4A0(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DA9C();

  return v3;
}

uint64_t sub_267B3A510(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_267B3A524(a1, a2);
  }

  return a1;
}

uint64_t sub_267B3A524(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_267B3A57C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267B7DD4C();

  [a3 setTypeName_];
}

id SAIntentGroupProtobufMessage.init(intent:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_267B3A4A0([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v5 = sub_267B7DA7C();
    sub_267B3A510(v6, v7);
  }

  [v2 setData_];

  v8 = [a1 typeName];
  v9 = sub_267B7DD5C();
  v11 = v10;

  sub_267B3A57C(v9, v11, v2);
  return v2;
}

unint64_t sub_267B3A6E0()
{
  result = qword_280219668;
  if (!qword_280219668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280219668);
  }

  return result;
}

id SAIntentGroupHandleIntent.init(intent:appIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267B7DACC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267B7DABC();
  v11 = sub_267B7DAAC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  sub_267B3A8D0(v11, v13, v10);
  if (a3)
  {
    v14 = sub_267B7DD4C();
  }

  else
  {
    v14 = 0;
  }

  [v10 setAppId_];

  sub_267B3A6E0();
  v15 = a1;
  v16 = SAIntentGroupProtobufMessage.init(intent:)(v15);
  [v10 setIntent_];

  return v10;
}

void sub_267B3A8D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267B7DD4C();

  [a3 setAceId_];
}

uint64_t OUTLINED_FUNCTION_9_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_267B7E0FC();
}

uint64_t OUTLINED_FUNCTION_9_4()
{
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return sub_267B7E04C();
}

unint64_t sub_267B3AA54()
{
  result = qword_280219038;
  if (!qword_280219038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219038);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(unint64_t *a1)
{

  return sub_267B40BFC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_267B7E12C();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_5()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_6()
{
  v2 = *(v0 - 264);

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_6_8()
{
  v2 = *(v0 - 184);

  return sub_267B7DFFC();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_267B3ACA4(char a1)
{
  result = 0x4E7972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267B3ADA0()
{
  result = qword_280219048;
  if (!qword_280219048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219040, &qword_267B81C58);
    sub_267B5C19C(&qword_280219050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219048);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarPlayHeader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267B3AF14);
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

uint64_t getEnumTagSinglePayload for SentMessageSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t CustomCanvasModel<>.init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_267B7D98C();
  OUTLINED_FUNCTION_1_3(v4);
  sub_267B7D97C();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return sub_267B47B34(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_1_7()
{
}

uint64_t OUTLINED_FUNCTION_1_8()
{
  v3 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v3;
  v4 = *(v0 + 48);
  *(v1 - 272) = *(v1 - 192);
  *(v1 - 256) = v4;

  return sub_267B3B994(v1 - 304);
}

void OUTLINED_FUNCTION_1_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_1_13(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_1_19()
{

  return sub_267B7E16C();
}

uint64_t OUTLINED_FUNCTION_1_24@<X0>(char a1@<W8>)
{
  *(v1 - 232) = a1;

  return sub_267B7E05C();
}

uint64_t CarPlayHeader.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219060, &qword_267B81C68);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B3AA54();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39[0]) = 0;
  OUTLINED_FUNCTION_0_12();
  v14 = sub_267B7E05C();
  v34 = v15;
  LOBYTE(v39[0]) = 1;
  OUTLINED_FUNCTION_0_12();
  v16 = sub_267B7E01C();
  v18 = v17;
  v32 = v14;
  v33 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219040, &qword_267B81C58);
  LOBYTE(v35) = 2;
  sub_267B3B890();
  sub_267B7E08C();
  v31 = v39[0];
  LOBYTE(v39[0]) = 3;
  OUTLINED_FUNCTION_0_12();
  v44 = sub_267B7E06C();
  LOBYTE(v39[0]) = 4;
  OUTLINED_FUNCTION_0_12();
  HIDWORD(v30) = sub_267B7E06C();
  v45 = 5;
  v19 = sub_267B7E05C();
  v44 &= 1u;
  v20 = BYTE4(v30) & 1;
  v21 = v19;
  v22 = v12;
  v24 = v23;
  (*(v8 + 8))(v22, v5);
  v25 = v32;
  v26 = v34;
  *&v35 = v32;
  *(&v35 + 1) = v34;
  *&v36 = v33;
  *(&v36 + 1) = v18;
  *&v37 = v31;
  BYTE8(v37) = v44;
  BYTE9(v37) = v20;
  *&v38 = v21;
  *(&v38 + 1) = v24;
  v27 = v36;
  *a2 = v35;
  a2[1] = v27;
  v28 = v38;
  a2[2] = v37;
  a2[3] = v28;
  sub_267B3B938(&v35, v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39[0] = v25;
  v39[1] = v26;
  v39[2] = v33;
  v39[3] = v18;
  v39[4] = v31;
  v40 = v44;
  v41 = v20;
  v42 = v21;
  v43 = v24;
  return sub_267B3B994(v39);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28213DD50](&a9);
}

id OUTLINED_FUNCTION_0_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return sub_267B7D98C();
}

uint64_t OUTLINED_FUNCTION_0_19@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

unint64_t sub_267B3B890()
{
  result = qword_280219068;
  if (!qword_280219068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219040, &qword_267B81C58);
    sub_267B5C19C(&qword_280219070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219068);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void *sub_267B3BC40@<X0>(void *a1@<X8>)
{
  result = AutoSendableCompactCarPlayButton.delayedActionCancelCommand.getter();
  *a1 = result;
  return result;
}

void *sub_267B3BC70@<X0>(void *a1@<X8>)
{
  result = AutoSendableCompactCarPlayButton.handleIntent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B3BCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B3BD34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

id sub_267B3BE00()
{
  OUTLINED_FUNCTION_16();
  result = SentMessageSnippetModel.intent.getter();
  *v0 = result;
  return result;
}

void *sub_267B3BE2C()
{
  OUTLINED_FUNCTION_16();
  result = SentMessageSnippetModel.intentResponse.getter();
  *v0 = result;
  return result;
}

uint64_t sub_267B3BE58()
{
  OUTLINED_FUNCTION_16();
  result = SentMessageSnippetModel.contactName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_267B3BE84()
{
  OUTLINED_FUNCTION_16();
  result = SentMessageSnippetModel.shouldConfirmUnsend.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_267B3BF28(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    v10 = OUTLINED_FUNCTION_17(v9);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = a3[6];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
      v15 = OUTLINED_FUNCTION_17(v14);
      if (*(v16 + 84) == a2)
      {
        v12 = v15;
        v13 = a3[7];
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
        v13 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

void *sub_267B3C060(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    v9 = OUTLINED_FUNCTION_17(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
      v14 = OUTLINED_FUNCTION_17(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
        v12 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_267B3C228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B43E3C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B3C38C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_267B46700();
  *a2 = result;
  return result;
}

void *sub_267B3C4C4@<X0>(void *a1@<X8>)
{
  result = AutoSendableCarPlayButton.delayedActionCancelCommand.getter();
  *a1 = result;
  return result;
}

void *sub_267B3C4F4@<X0>(void *a1@<X8>)
{
  result = AutoSendableCarPlayButton.handleIntent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B3C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B3C5B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_267B3C834(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_267B3C918(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_267B3C95C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = INSendMessageIntent.shouldHideSiriAttribution.getter();
  *a2 = result & 1;
  return result;
}

void *sub_267B3CB74@<X0>(void *a1@<X8>)
{
  result = MessageDraftSnippetModel.intent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B3CBA4@<X0>(uint64_t *a1@<X8>)
{
  result = MessageDraftSnippetModel.contactName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267B3CBD4@<X0>(uint64_t *a1@<X8>)
{
  result = MessageDraftSnippetModel.payload.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267B3CC54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_267B7DACC();
  v7 = OUTLINED_FUNCTION_17(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    v15 = OUTLINED_FUNCTION_17(v14);
    if (*(v16 + 84) == a2)
    {
      v9 = v15;
      v17 = a3[6];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
      v17 = a3[14];
    }

    v10 = a1 + v17;
    goto LABEL_13;
  }

  v11 = *(a1 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_267B3CD84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_267B7DACC();
  result = OUTLINED_FUNCTION_17(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[5]) = a2;
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    v14 = OUTLINED_FUNCTION_17(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
      v16 = a4[14];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_267B3CFF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B3D080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267B3D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_10();
  v6 = sub_267B7DA6C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_267B3D240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267B7DA6C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267B3D45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonSnippetModel.Action(0);
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

    return (v8 + 1);
  }
}

uint64_t sub_267B3D50C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonSnippetModel.Action(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

id sub_267B3D638@<X0>(void *a1@<X8>)
{
  result = UpdateMessageDraftSnippet.intent.getter();
  *a1 = result;
  return result;
}

void *sub_267B3D7B8@<X0>(void *a1@<X8>)
{
  result = RecipientLabel.launchAppWithIntent.getter();
  *a1 = result;
  return result;
}

void *sub_267B3D7E8@<X0>(void *a1@<X8>)
{
  result = RecipientLabel.unlockDevice.getter();
  *a1 = result;
  return result;
}

void *sub_267B3D864@<X0>(void *a1@<X8>)
{
  result = AutoSendableBinaryButton.delayedActionCancelCommand.getter();
  *a1 = result;
  return result;
}

void *sub_267B3D894@<X0>(void *a1@<X8>)
{
  result = AutoSendableBinaryButton.handleIntent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_267B3D8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267B3D958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267B3DAD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B3DA88();
  *a1 = result & 1;
  return result;
}

void *sub_267B3DAFC()
{
  type metadata accessor for AppInfoProvider();
  swift_allocObject();
  result = sub_267B3DB94();
  qword_280218538 = result;
  return result;
}

uint64_t static AppInfoProvider.instance.getter()
{
  if (qword_280218530 != -1)
  {
    swift_once();
  }
}

void *sub_267B3DB94()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  v2 = [objc_opt_self() sharedPreferences];
  v3 = sub_267B3E7D4(v2);
  v4 = v0[4];
  v0[3] = v3;
  v0[4] = v5;

  return v0;
}

uint64_t sub_267B3DC00()
{
  v1 = v0;
  v2 = sub_267B7DB5C();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedPreferences];
  v7 = sub_267B3E7D4(v6);
  v9 = v8;
  v10 = *(v0 + 32);
  if (v10)
  {
    if (v9)
    {
      v11 = *(v0 + 24) == v7 && v10 == v9;
      if (v11 || (sub_267B7E16C() & 1) != 0)
      {
        goto LABEL_15;
      }
    }
  }

  else if (!v9)
  {
    goto LABEL_15;
  }

  if (qword_280218548 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v12 = sub_267B7DCFC();
  __swift_project_value_buffer(v12, qword_2802286D0);
  v13 = sub_267B7DCDC();
  v14 = sub_267B7DE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_267B38000, v13, v14, "#AppInfoProvider Siri language is changed, clearing app name cache", v15, 2u);
    MEMORY[0x26D602240](v15, -1, -1);
  }

  [*(v1 + 16) removeAllObjects];
  v16 = *(v1 + 32);
  *(v1 + 24) = v7;
  *(v1 + 32) = v9;

LABEL_15:
  v17 = *(v1 + 16);
  OUTLINED_FUNCTION_1_0();
  v18 = sub_267B7DD4C();
  v19 = [v17 objectForKey_];

  if (v19)
  {

    v20 = sub_267B7DD5C();
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v22 = OUTLINED_FUNCTION_1_0();
    v24 = sub_267B3E188(v22, v23, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218580, &qword_267B7E998);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_267B7E980;
    if (!v9)
    {
      sub_267B7DB1C();
      v7 = sub_267B7DAEC();
      v9 = v26;
      (*(v32 + 8))(v5, v2);
    }

    *(v25 + 32) = v7;
    *(v25 + 40) = v9;
    v27 = sub_267B7DE0C();

    v28 = [v24 localizedNameWithPreferredLocalizations_];

    v29 = v28;
    if (!v28)
    {
      sub_267B7DD5C();
      v29 = sub_267B7DD4C();
    }

    v20 = sub_267B7DD5C();
    OUTLINED_FUNCTION_1_0();
    v30 = sub_267B7DD4C();
    [v17 setObject:v29 forKey:v30];
  }

  return v20;
}

uint64_t AppInfoProvider.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t AppInfoProvider.__deallocating_deinit()
{
  AppInfoProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_267B3E188(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_267B7DD4C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_267B7D9CC();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_267B3E264(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_267B3E328(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_267B3E924(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_267B3E328(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_267B3E428(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_267B7DFCC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_267B3E428(uint64_t a1, unint64_t a2)
{
  v4 = sub_267B3E474(a1, a2);
  sub_267B3E58C(&unk_2878BF258);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_267B3E474(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_267B7DDBC())
  {
    result = sub_267B3E670(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_267B7DF7C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_267B7DFCC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267B3E58C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_267B3E6E0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_267B3E670(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218588, &qword_267B7E9F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_267B3E6E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218588, &qword_267B7E9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_267B3E7D4(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DD5C();

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_267B3E924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

SiriMessagesCommon::DirectButton_optional __swiftcall DirectButton.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267B7E1BC();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t DirectButton.rawValue.getter()
{
  result = 0x7065526F69647541;
  switch(*v0)
  {
    case 1:
      result = 1819042115;
      break;
    case 2:
      result = 0x6D7269666E6F43;
      break;
    case 3:
      result = 0x656E696C636544;
      break;
    case 4:
      result = 0x6C65636E6143;
      break;
    case 5:
      result = 0x7373654D64616552;
      break;
    case 6:
      result = 0x796669646F4DLL;
      break;
    case 7:
      result = 0x617373654D77654ELL;
      break;
    case 8:
      result = 0x6961674164616552;
      break;
    case 9:
      result = 0x796C706552;
      break;
    case 0xA:
      result = 1885956947;
      break;
    case 0xB:
      result = 1886352467;
      break;
    case 0xC:
      result = 0x6B636162706154;
      break;
    case 0xD:
      result = 0x486B636162706154;
      break;
    case 0xE:
      result = 0x546B636162706154;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0x486B636162706154;
      break;
    case 0x11:
      OUTLINED_FUNCTION_0_0();
      result = v2 + 1;
      break;
    case 0x12:
      OUTLINED_FUNCTION_0_0();
      result = v5 | 2;
      break;
    case 0x13:
      OUTLINED_FUNCTION_0_0();
      result = v6 + 3;
      break;
    case 0x14:
      OUTLINED_FUNCTION_0_0();
      result = v3 | 6;
      break;
    case 0x15:
      OUTLINED_FUNCTION_0_0();
      result = v4 | 8;
      break;
    case 0x16:
      result = 0xD000000000000011;
      break;
    case 0x17:
      OUTLINED_FUNCTION_0_0();
      result = v7 + 9;
      break;
    case 0x18:
      result = 0xD00000000000001BLL;
      break;
    case 0x19:
      result = 0x7972616D697270;
      break;
    case 0x1A:
      result = 0x7261646E6F636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B3EE48@<X0>(uint64_t *a1@<X8>)
{
  result = DirectButton.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriMessagesCommon::DirectInvocationURI_optional __swiftcall DirectInvocationURI.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267B7E1BC();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t DirectInvocationURI.rawValue.getter()
{
  result = 0xD000000000000038;
  switch(*v0)
  {
    case 1:
    case 0xB:
      result = 0xD000000000000034;
      break;
    case 2:
      result = 0xD000000000000036;
      break;
    case 3:
    case 0xF:
    case 0x13:
      result = 0xD00000000000003ALL;
      break;
    case 4:
    case 5:
    case 0xA:
      result = 0xD00000000000003DLL;
      break;
    case 6:
      result = 0xD000000000000033;
      break;
    case 7:
    case 8:
    case 0xE:
      result = 0xD00000000000003CLL;
      break;
    case 9:
    case 0x12:
      result = 0xD000000000000041;
      break;
    case 0xC:
      result = 0xD00000000000003BLL;
      break;
    case 0xD:
      result = 0xD000000000000030;
      break;
    case 0x10:
      result = 0xD00000000000004ALL;
      break;
    case 0x11:
      result = 0xD000000000000044;
      break;
    case 0x14:
      result = 0xD000000000000037;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267B3F1E4()
{
  result = qword_280218590;
  if (!qword_280218590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218590);
  }

  return result;
}

unint64_t sub_267B3F248()
{
  result = qword_280218598;
  if (!qword_280218598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218598);
  }

  return result;
}

unint64_t sub_267B3F2C0@<X0>(unint64_t *a1@<X8>)
{
  result = DirectInvocationURI.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectButton(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DirectButton(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectInvocationURI(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DirectInvocationURI(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B3F5A4()
{
  result = qword_2802185A0;
  if (!qword_2802185A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802185A0);
  }

  return result;
}

uint64_t AutoSendableCompactCarPlayButton.init(shouldAutoSend:autoSendTimeout:delayedActionCancelCommand:handleIntent:speechSynthesisId:isFirstPartyApp:responseMode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_280218F18;
  *(a8 + 48) = qword_280218F10;
  *(a8 + 56) = v18;
  v19 = *(type metadata accessor for AutoSendableCompactCarPlayButton() + 44);
  v20 = sub_267B7DC1C();
  __swift_storeEnumTagSinglePayload(a8 + v19, 1, 1, v20);
  *a8 = a1 & 1;
  *(a8 + 8) = a9;
  v21 = *(a8 + 16);

  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 64) = a6 & 1;
  return sub_267B40A18(a7, a8 + v19);
}

void *AutoSendableCompactCarPlayButton.delayedActionCancelCommand.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_267B3F804(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableCompactCarPlayButton.delayedActionCancelCommand.setter(v1);
}

void (*AutoSendableCompactCarPlayButton.delayedActionCancelCommand.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F880;
}

void sub_267B3F880(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 16);
  if (a2)
  {
    v5 = v3;

    *(v2 + 16) = v3;
  }

  else
  {

    *(v2 + 16) = v3;
  }
}

void *AutoSendableCompactCarPlayButton.handleIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267B3F920(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableCompactCarPlayButton.handleIntent.setter(v1);
}

void (*AutoSendableCompactCarPlayButton.handleIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F99C;
}

void sub_267B3F99C(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = v3;

    *(v2 + 24) = v3;
  }

  else
  {

    *(v2 + 24) = v3;
  }
}

uint64_t AutoSendableCompactCarPlayButton.speechSynthesisId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AutoSendableCompactCarPlayButton.speechSynthesisId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AutoSendableCompactCarPlayButton.sendLabelText.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AutoSendableCompactCarPlayButton.sendLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AutoSendableCompactCarPlayButton.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutoSendableCompactCarPlayButton() + 44);

  return sub_267B40A88(v3, a1);
}

uint64_t AutoSendableCompactCarPlayButton.responseMode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutoSendableCompactCarPlayButton() + 44);

  return sub_267B40A18(a1, v3);
}

uint64_t sub_267B3FC24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7541646C756F6873 && a2 == 0xEE00646E65536F74;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E65536F747561 && a2 == 0xEF74756F656D6954;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x8000000267B86D40 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E49656C646E6168 && a2 == 0xEC000000746E6574;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B86D60 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C646E6573 && a2 == 0xED0000747865546CLL;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5074737269467369 && a2 == 0xEF70704179747261;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_267B7E16C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267B3FED8(unsigned __int8 a1)
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](a1);
  return sub_267B7E23C();
}

unint64_t sub_267B3FF2C(char a1)
{
  result = 0x7541646C756F6873;
  switch(a1)
  {
    case 1:
      result = 0x646E65536F747561;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x6E49656C646E6168;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6562614C646E6573;
      break;
    case 6:
      result = 0x5074737269467369;
      break;
    case 7:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B40064()
{
  v1 = *v0;
  sub_267B7E21C();
  MEMORY[0x26D601BE0](v1);
  return sub_267B7E23C();
}

uint64_t sub_267B400B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B3FC24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B400F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B3FED0();
  *a1 = result;
  return result;
}

uint64_t sub_267B40120(uint64_t a1)
{
  v2 = sub_267B40AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4015C(uint64_t a1)
{
  v2 = sub_267B40AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSendableCompactCarPlayButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185B0, &qword_267B7ECC8);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B40AF8();
  sub_267B7E27C();
  v14 = *v3;
  LOBYTE(v28) = 0;
  OUTLINED_FUNCTION_6();
  sub_267B7E10C();
  if (!v2)
  {
    v15 = *(v3 + 1);
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_6();
    sub_267B7E11C();
    v28 = *(v3 + 2);
    HIBYTE(v27) = 2;
    v16 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    OUTLINED_FUNCTION_5_0(&qword_2802185C8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v28 = *(v3 + 3);
    HIBYTE(v27) = 3;
    v17 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    OUTLINED_FUNCTION_5_0(&qword_2802185D8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v18 = *(v3 + 4);
    v19 = *(v3 + 5);
    LOBYTE(v28) = 4;
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    v20 = *(v3 + 6);
    v21 = *(v3 + 7);
    LOBYTE(v28) = 5;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
    v22 = v3[64];
    LOBYTE(v28) = 6;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v23 = *(type metadata accessor for AutoSendableCompactCarPlayButton() + 44);
    LOBYTE(v28) = 7;
    sub_267B7DC1C();
    OUTLINED_FUNCTION_4_0();
    sub_267B40DEC(v24, v25);
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t AutoSendableCompactCarPlayButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185E8, &qword_267B7ECE0);
  v8 = OUTLINED_FUNCTION_8(v7);
  v40 = v9;
  v41 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = type metadata accessor for AutoSendableCompactCarPlayButton();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 2) = 0;
  v16 = (v15 + 16);
  *(v15 + 3) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_280218F18;
  v18 = *(v12 + 44);
  v19 = sub_267B7DC1C();
  v44 = v18;
  __swift_storeEnumTagSinglePayload(&v15[v18], 1, 1, v19);
  v20 = a1;
  v22 = a1[3];
  v21 = a1[4];
  v42 = v20;
  __swift_project_boxed_opaque_existential_1(v20, v22);
  sub_267B40AF8();
  v43 = v17;

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v42);

    v26 = *(v15 + 3);

    return sub_267B40B94(&v15[v44]);
  }

  else
  {
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_7();
    *v15 = sub_267B7E06C() & 1;
    OUTLINED_FUNCTION_0_1(1);
    sub_267B7E07C();
    *(v15 + 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    v45 = 2;
    OUTLINED_FUNCTION_2_0(&qword_2802185F0);
    OUTLINED_FUNCTION_7();
    sub_267B7E08C();
    v24 = v46;

    *v16 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    v45 = 3;
    OUTLINED_FUNCTION_2_0(&qword_2802185F8);
    OUTLINED_FUNCTION_7();
    sub_267B7E08C();
    v25 = v46;

    *(v15 + 3) = v25;
    OUTLINED_FUNCTION_0_1(4);
    *(v15 + 4) = sub_267B7E01C();
    *(v15 + 5) = v27;
    OUTLINED_FUNCTION_0_1(5);
    v28 = sub_267B7E05C();
    v30 = v29;

    *(v15 + 6) = v28;
    *(v15 + 7) = v30;
    OUTLINED_FUNCTION_0_1(6);
    v15[64] = sub_267B7E06C() & 1;
    LOBYTE(v46) = 7;
    OUTLINED_FUNCTION_4_0();
    sub_267B40DEC(v31, v32);
    v33 = v39;
    OUTLINED_FUNCTION_7();
    sub_267B7E04C();
    v34 = OUTLINED_FUNCTION_1_1();
    v35(v34);
    sub_267B40A18(v33, &v15[v44]);
    sub_267B40C44(v15, v38);
    __swift_destroy_boxed_opaque_existential_0(v42);
    return sub_267B40CA8(v15);
  }
}

uint64_t type metadata accessor for AutoSendableCompactCarPlayButton()
{
  result = qword_280218620;
  if (!qword_280218620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B40A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B40A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B40AF8()
{
  result = qword_2802185B8;
  if (!qword_2802185B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802185B8);
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

uint64_t sub_267B40B94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B40BFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_267B40C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableCompactCarPlayButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B40CA8(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendableCompactCarPlayButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B40D04(uint64_t a1)
{
  result = sub_267B40DEC(&qword_280218608, type metadata accessor for AutoSendableCompactCarPlayButton);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267B40DEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267B40E84()
{
  sub_267B40F90(319, &qword_280218630, &qword_280218638, 0x277D47A48);
  if (v0 <= 0x3F)
  {
    sub_267B40F90(319, &qword_280218640, &qword_280218648, 0x277D473D0);
    if (v1 <= 0x3F)
    {
      sub_267B41030();
      if (v2 <= 0x3F)
      {
        sub_267B41080();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267B40F90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_267B40FF0(255, a3, a4);
    v5 = type metadata accessor for ModelCodable();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_267B40FF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_267B41030()
{
  if (!qword_280218650)
  {
    v0 = sub_267B7DEFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280218650);
    }
  }
}

void sub_267B41080()
{
  if (!qword_280218658)
  {
    sub_267B7DC1C();
    v0 = sub_267B7DEFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280218658);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutoSendableCompactCarPlayButton.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoSendableCompactCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B41240()
{
  result = qword_280218660;
  if (!qword_280218660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218660);
  }

  return result;
}

unint64_t sub_267B41298()
{
  result = qword_280218668;
  if (!qword_280218668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218668);
  }

  return result;
}

unint64_t sub_267B412F0()
{
  result = qword_280218670;
  if (!qword_280218670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218670);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(unint64_t *a1)
{
  v5 = v2;
  v6 = *(v3 - 144);

  return sub_267B40BFC(a1, v1, v5);
}

id SentMessageSnippetModel.intent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_267B413C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SentMessageSnippetModel.intent.setter(v1);
}

void (*SentMessageSnippetModel.intent.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  v3 = v2;
  return sub_267B41468;
}

void sub_267B41468(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v2;
  if (a2)
  {
    v5 = v3;

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void *SentMessageSnippetModel.intentResponse.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void sub_267B4153C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SentMessageSnippetModel.intentResponse.setter(v1);
}

void (*SentMessageSnippetModel.intentResponse.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B415E4;
}

void sub_267B415E4(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 8);
  if (a2)
  {
    v5 = v3;

    *(v2 + 8) = v3;
  }

  else
  {

    *(v2 + 8) = v3;
  }
}

uint64_t SentMessageSnippetModel.contactName.getter()
{
  v0 = *(type metadata accessor for SentMessageSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  sub_267B7DBBC();
  return v2;
}

uint64_t type metadata accessor for SentMessageSnippetModel()
{
  result = qword_280218740;
  if (!qword_280218740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B416FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SentMessageSnippetModel.contactName.setter(v1);
}

uint64_t SentMessageSnippetModel.contactName.setter(uint64_t a1)
{
  v1 = *(type metadata accessor for SentMessageSnippetModel() + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  OUTLINED_FUNCTION_18(v2, v3, v4, v5, v6, v7, v8, v9, a1);
  return sub_267B7DBCC();
}

uint64_t (*SentMessageSnippetModel.contactName.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_14_0(v1) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  *(v0 + 32) = OUTLINED_FUNCTION_15();
  return sub_267B41800;
}

uint64_t SentMessageSnippetModel.shouldConfirmUnsend.getter()
{
  v0 = *(type metadata accessor for SentMessageSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  sub_267B7DBBC();
  return v2;
}

uint64_t SentMessageSnippetModel.shouldConfirmUnsend.setter()
{
  v0 = *(type metadata accessor for SentMessageSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  return sub_267B7DBCC();
}

uint64_t (*SentMessageSnippetModel.shouldConfirmUnsend.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_14_0(v1) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  *(v0 + 32) = OUTLINED_FUNCTION_15();
  return sub_267B43594;
}

uint64_t SentMessageSnippetModel.labels.getter()
{
  v0 = *(type metadata accessor for SentMessageSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  return sub_267B7DBBC();
}

uint64_t sub_267B41974(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_267B42CAC(__dst, &v10);
  return SentMessageSnippetModel.labels.setter(__src, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t SentMessageSnippetModel.labels.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_18(a1, a2, a3, a4, a5, a6, a7, a8, v20);
  memcpy(v8, v9, 0xF0uLL);
  v10 = *(type metadata accessor for SentMessageSnippetModel() + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  OUTLINED_FUNCTION_18(v11, v12, v13, v14, v15, v16, v17, v18, v21);
  return sub_267B7DBCC();
}

uint64_t (*SentMessageSnippetModel.labels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_14_0(v1) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  *(v0 + 32) = OUTLINED_FUNCTION_15();
  return sub_267B43594;
}

void sub_267B41AA0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t SentMessageSnippetModel.photoSharingInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for SentMessageSnippetModel() + 36));
}

uint64_t SentMessageSnippetModel.photoSharingInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SentMessageSnippetModel() + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void SentMessageSnippetModel.init(intent:intentResponse:contactName:shouldConfirmUnsend:photoSharingInfo:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X5>, void **a7@<X8>)
{
  v12 = type metadata accessor for SentMessageSnippetModel();
  *a7 = 0;
  a7[1] = 0;
  v13 = v12[7];
  __dst[0] = 0;
  sub_267B7DB9C();
  v14 = v12[8];
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  memcpy(__dst, &qword_280218F10, 0xF0uLL);
  memcpy(v24, &qword_280218F10, sizeof(v24));
  sub_267B42CAC(__dst, v23);
  sub_267B7DB9C();
  v15 = v12[9];
  *(a7 + v15) = 0;
  v16 = *a7;
  v17 = a1;

  *a7 = a1;
  v18 = a7[1];
  v19 = a2;

  a7[1] = a2;
  v20 = v12[6];
  v24[0] = a3;
  v24[1] = a4;
  sub_267B7DB9C();
  LOBYTE(v24[0]) = a5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  sub_267B7DBCC();

  *(a7 + v15) = a6;
}

uint64_t SentMessageSnippetModel.description.getter()
{
  v1 = v0;
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD000000000000026, 0x8000000267B86D80);
  v2 = type metadata accessor for SentMessageSnippetModel();
  v3 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  sub_267B7DBBC();
  MEMORY[0x26D601760]();

  MEMORY[0x26D601760](0xD000000000000018, 0x8000000267B86DB0);
  v4 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  sub_267B7DBBC();
  if (v17)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v17)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v5, v6);

  MEMORY[0x26D601760](0xD000000000000014, 0x8000000267B86DD0);
  v18 = *(v1 + v2[9]);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218690, &qword_267B7EF18);
  OUTLINED_FUNCTION_18(v7, v8, v9, v10, v11, v12, v13, v14, v18);
  v15 = sub_267B7DD7C();
  MEMORY[0x26D601760](v15);

  return 0;
}

uint64_t sub_267B41EE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746E65746E69 && a2 == 0xEE0065736E6F7073;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000267B86DF0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000267B86E10 == a2)
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

unint64_t sub_267B420EC(char a1)
{
  result = 0x746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x6552746E65746E69;
      break;
    case 2:
      result = 0x4E746361746E6F63;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x736C6562616CLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B421BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B41EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B421E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B420E4();
  *a1 = result;
  return result;
}

uint64_t sub_267B4220C(uint64_t a1)
{
  v2 = sub_267B42D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B42248(uint64_t a1)
{
  v2 = sub_267B42D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SentMessageSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218698, &qword_267B7EF20);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B42D08();
  sub_267B7E27C();
  v26 = *v3;
  HIBYTE(v25) = 0;
  v14 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
  OUTLINED_FUNCTION_7_0(&unk_2802186B0);
  OUTLINED_FUNCTION_8_0();
  sub_267B7E12C();
  if (v2)
  {
  }

  else
  {

    v26 = *(v3 + 8);
    HIBYTE(v25) = 1;
    v15 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186B8, &qword_267B7EF30);
    OUTLINED_FUNCTION_7_0(&unk_2802186C0);
    OUTLINED_FUNCTION_8_0();
    sub_267B7E12C();

    v17 = type metadata accessor for SentMessageSnippetModel();
    v18 = v17[6];
    LOBYTE(v26) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    OUTLINED_FUNCTION_0_2();
    sub_267B42EB4(v19);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    v20 = v17[7];
    LOBYTE(v26) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
    OUTLINED_FUNCTION_0_2();
    sub_267B42D5C(v21);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    v22 = v17[8];
    LOBYTE(v26) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
    OUTLINED_FUNCTION_0_2();
    sub_267B42F20(v23);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    v26 = *(v3 + v17[9]);
    HIBYTE(v25) = 5;
    type metadata accessor for PhotoSharingInfo();
    OUTLINED_FUNCTION_5_1();
    sub_267B430E4(v24);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E0EC();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t SentMessageSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
  v5 = OUTLINED_FUNCTION_8(v4);
  v59 = v6;
  v60 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v53 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218680, &qword_267B7EF08);
  v12 = OUTLINED_FUNCTION_8(v11);
  v63 = v13;
  v64 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v54 = &v51 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
  OUTLINED_FUNCTION_8(v68);
  v57 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  v55 = &v51 - v22;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186F8, &qword_267B7EF38);
  OUTLINED_FUNCTION_8(v58);
  v56 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  v27 = type metadata accessor for SentMessageSnippetModel();
  v28 = *(*(v27 - 1) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v31 = 0;
  v31[1] = 0;
  v32 = *(v29 + 28);
  LOBYTE(v66[0]) = 0;
  v62 = v32;
  sub_267B7DB9C();
  v33 = v27[8];
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  memcpy(v67, &qword_280218F10, 0xF0uLL);
  memcpy(v66, &qword_280218F10, sizeof(v66));
  sub_267B42CAC(v67, v65);
  v61 = v33;
  sub_267B7DB9C();
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B42D08();
  sub_267B7E25C();
  if (v2)
  {
    v39 = v59;
    v38 = v60;
    __swift_destroy_boxed_opaque_existential_0(a1);

    (*(v63 + 8))(v31 + v62, v64);
    return (*(v39 + 8))(v31 + v61, v38);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
    v65[0] = 0;
    OUTLINED_FUNCTION_4_1();
    sub_267B42E70(v35);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    v36 = v66[0];

    *v31 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186B8, &qword_267B7EF30);
    v65[0] = 1;
    OUTLINED_FUNCTION_4_1();
    sub_267B42E70(v37);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    v40 = v66[0];

    v31[1] = v40;
    LOBYTE(v66[0]) = 2;
    OUTLINED_FUNCTION_1();
    sub_267B42EB4(v41);
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    v43 = v59;
    v42 = v60;
    (*(v57 + 32))(v31 + v27[6], v55, v68);
    LOBYTE(v66[0]) = 3;
    OUTLINED_FUNCTION_1();
    sub_267B42D5C(v44);
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    (*(v63 + 40))(v31 + v62, v54, v64);
    LOBYTE(v66[0]) = 4;
    OUTLINED_FUNCTION_1();
    sub_267B42F20(v45);
    OUTLINED_FUNCTION_10();
    sub_267B7E08C();
    (*(v43 + 40))(v31 + v61, v53, v42);
    type metadata accessor for PhotoSharingInfo();
    v65[0] = 5;
    OUTLINED_FUNCTION_5_1();
    sub_267B430E4(v46);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10();
    sub_267B7E04C();
    v47 = v27[9];
    v48 = OUTLINED_FUNCTION_9();
    v49(v48, v58);
    *(v31 + v47) = v66[0];
    sub_267B42F94(v31, v52);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_267B42FF8(v31);
  }
}

unint64_t sub_267B42D08()
{
  result = qword_2802186A0;
  if (!qword_2802186A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802186A0);
  }

  return result;
}

unint64_t sub_267B42D5C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218680, &qword_267B7EF08);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_267B42DC8()
{
  result = qword_2802186E0;
  if (!qword_2802186E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802186E0);
  }

  return result;
}

unint64_t sub_267B42E1C()
{
  result = qword_2802186E8;
  if (!qword_2802186E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802186E8);
  }

  return result;
}

unint64_t sub_267B42E70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_267B42EB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218678, &qword_267B7EF00);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_267B42F20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218688, &qword_267B7EF10);
    sub_267B42DC8();
    sub_267B42E1C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_267B42F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SentMessageSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B42FF8(uint64_t a1)
{
  v2 = type metadata accessor for SentMessageSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267B430E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_267B43150()
{
  sub_267B432A4(319, &qword_280218750, &qword_280218758, 0x277CD4078);
  if (v0 <= 0x3F)
  {
    sub_267B432A4(319, &qword_280218760, &qword_280218768, 0x277CD4080);
    if (v1 <= 0x3F)
    {
      sub_267B4330C(319, &qword_280218770);
      if (v2 <= 0x3F)
      {
        sub_267B4330C(319, &qword_280218778);
        if (v3 <= 0x3F)
        {
          sub_267B4330C(319, &qword_280218780);
          if (v4 <= 0x3F)
          {
            sub_267B43358();
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

void sub_267B432A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_267B40FF0(255, a3, a4);
    v5 = type metadata accessor for ModelCodable();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_267B4330C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_267B7DBDC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_267B43358()
{
  if (!qword_280218788)
  {
    type metadata accessor for PhotoSharingInfo();
    v0 = sub_267B7DEFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280218788);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SentMessageSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B43490()
{
  result = qword_280218790;
  if (!qword_280218790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218790);
  }

  return result;
}

unint64_t sub_267B434E8()
{
  result = qword_280218798;
  if (!qword_280218798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218798);
  }

  return result;
}

unint64_t sub_267B43540()
{
  result = qword_2802187A0;
  if (!qword_2802187A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187A0);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return sub_267B42E70(a1);
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SentMessageSnippetModel();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_267B7DBAC();
}

uint64_t AttachmentModel.messageAttachment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  switch(v4 >> 62)
  {
    case 1uLL:
      *(a1 + 24) = &type metadata for MapAttachment;
      v6 = sub_267B43888();
      goto LABEL_6;
    case 2uLL:
      *(a1 + 24) = &type metadata for PhotoAttachment;
      v7 = sub_267B43834();
      OUTLINED_FUNCTION_12_0(v7);
      *(a1 + 16) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    case 3uLL:
      *(a1 + 24) = &type metadata for VideoAttachment;
      v6 = sub_267B43774();
      goto LABEL_6;
    default:
      *(a1 + 24) = &type metadata for LinkAttachment;
      v6 = sub_267B438DC();
LABEL_6:
      OUTLINED_FUNCTION_12_0(v6);
LABEL_7:

      return sub_267B437C8(v2, v3, v4);
  }
}

unint64_t sub_267B43774()
{
  result = qword_2802187A8;
  if (!qword_2802187A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187A8);
  }

  return result;
}

uint64_t sub_267B437C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      goto LABEL_6;
    case 3uLL:
LABEL_6:

      break;
    default:

      break;
  }

  return result;
}

unint64_t sub_267B43834()
{
  result = qword_2802187B0;
  if (!qword_2802187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187B0);
  }

  return result;
}

unint64_t sub_267B43888()
{
  result = qword_2802187B8;
  if (!qword_2802187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187B8);
  }

  return result;
}

unint64_t sub_267B438DC()
{
  result = qword_2802187C0;
  if (!qword_2802187C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187C0);
  }

  return result;
}

uint64_t AttachmentModel.init(messageAttachment:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  sub_267B43BA8(a1, v19);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187C8, &qword_267B7F140);
  if (OUTLINED_FUNCTION_5_2())
  {
    OUTLINED_FUNCTION_11_0();
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    v6 = 0;
  }

  else if (OUTLINED_FUNCTION_5_2())
  {
    OUTLINED_FUNCTION_11_0();
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    v6 = 0x4000000000000000;
  }

  else if (OUTLINED_FUNCTION_5_2())
  {
    OUTLINED_FUNCTION_11_0();
    v6 = v18[2] | 0x8000000000000000;
    result = __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else if (OUTLINED_FUNCTION_5_2())
  {
    OUTLINED_FUNCTION_11_0();
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    v6 = 0xC000000000000000;
  }

  else
  {
    if (qword_280218548 != -1)
    {
      swift_once();
    }

    v7 = sub_267B7DCFC();
    __swift_project_value_buffer(v7, qword_2802286D0);
    sub_267B43BA8(v2, v18);
    v8 = sub_267B7DCDC();
    v9 = sub_267B7DEAC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      swift_getDynamicType();
      v12 = sub_267B7E2AC();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0(v18);
      v15 = sub_267B3E264(v12, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_267B38000, v8, v9, "#AttachmentModel unknown message attachment type: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D602240](v11, -1, -1);
      MEMORY[0x26D602240](v10, -1, -1);

      v16 = v2;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v2);
      v16 = v18;
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    v4 = 0;
    v6 = 0;
    v2 = 0x1FFFFFFFELL;
  }

  *a2 = v4;
  a2[1] = v2;
  a2[2] = v6;
  return result;
}

uint64_t sub_267B43BA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_267B43C0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617474416B6E696CLL && a2 == 0xEE00746E656D6863;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636174744170616DLL && a2 == 0xED0000746E656D68;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7474416F746F6870 && a2 == 0xEF746E656D686361;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7474416F65646976 && a2 == 0xEF746E656D686361)
      {

        return 3;
      }

      else
      {
        v9 = sub_267B7E16C();

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

uint64_t sub_267B43D8C(char a1)
{
  result = 0x617474416B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x636174744170616DLL;
      break;
    case 2:
      v3 = 1953458288;
      goto LABEL_5;
    case 3:
      v3 = 1701079414;
LABEL_5:
      result = v3 | 0x7474416F00000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B43E3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_267B43EAC()
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](0);
  return sub_267B7E23C();
}

uint64_t sub_267B43EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B43C0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B43F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B43D84();
  *a1 = result;
  return result;
}

uint64_t sub_267B43F48(uint64_t a1)
{
  v2 = sub_267B44E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B43F84(uint64_t a1)
{
  v2 = sub_267B44E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B43FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B43E28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_267B44010(uint64_t a1)
{
  v2 = sub_267B450AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4404C(uint64_t a1)
{
  v2 = sub_267B450AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B44088(uint64_t a1)
{
  v2 = sub_267B45004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B440C4(uint64_t a1)
{
  v2 = sub_267B45004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B44100(uint64_t a1)
{
  v2 = sub_267B44F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4413C(uint64_t a1)
{
  v2 = sub_267B44F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B44178()
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](0);
  return sub_267B7E23C();
}

uint64_t sub_267B441B8(uint64_t a1)
{
  v2 = sub_267B44EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B441F4(uint64_t a1)
{
  v2 = sub_267B44EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttachmentModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187D0, &qword_267B7F148);
  v4 = OUTLINED_FUNCTION_8(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  v54 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187D8, &qword_267B7F150);
  v11 = OUTLINED_FUNCTION_8(v10);
  v52 = v12;
  v53 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_0();
  v51 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187E0, &qword_267B7F158);
  v18 = OUTLINED_FUNCTION_8(v17);
  v49 = v19;
  v50 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187E8, &qword_267B7F160);
  OUTLINED_FUNCTION_8(v25);
  v48 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  v31 = &v48 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802187F0, &qword_267B7F168);
  v33 = OUTLINED_FUNCTION_8(v32);
  v59 = v34;
  v60 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  v39 = &v48 - v38;
  v40 = v1[1];
  v57 = *v1;
  v58 = v40;
  v41 = v1[2];
  v42 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_267B44E60();
  sub_267B7E27C();
  switch(v41 >> 62)
  {
    case 1uLL:
      v61 = 1;
      sub_267B45004();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_2_1();
      sub_267B45058();
      v46 = v50;
      sub_267B7E12C();
      (*(v49 + 8))(v24, v46);
      break;
    case 2uLL:
      v61 = 2;
      sub_267B44F5C();
      v43 = v51;
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_2_1();
      v62 = v41 & 0x3FFFFFFFFFFFFFFFLL;
      sub_267B44FB0();
      v44 = v53;
      sub_267B7E12C();
      v45 = v52;
      goto LABEL_5;
    case 3uLL:
      v61 = 3;
      sub_267B44EB4();
      v43 = v54;
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_2_1();
      sub_267B44F08();
      v44 = v56;
      sub_267B7E12C();
      v45 = v55;
LABEL_5:
      (*(v45 + 8))(v43, v44);
      break;
    default:
      v61 = 0;
      sub_267B450AC();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_2_1();
      sub_267B45100();
      sub_267B7E12C();
      (*(v48 + 8))(v31, v25);
      break;
  }

  return (*(v59 + 8))(v39, v42);
}

void AttachmentModel.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v83 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218840, &qword_267B7F170);
  OUTLINED_FUNCTION_8(v79);
  v82 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_0();
  v85 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218848, &qword_267B7F178);
  v9 = OUTLINED_FUNCTION_8(v8);
  v80 = v10;
  v81 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  v84 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218850, &qword_267B7F180);
  v16 = OUTLINED_FUNCTION_8(v15);
  v78[7] = v17;
  v78[8] = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v22 = v78 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218858, &qword_267B7F188);
  OUTLINED_FUNCTION_8(v23);
  v78[6] = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  v29 = v78 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218860, &unk_267B7F190);
  OUTLINED_FUNCTION_8(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  v36 = a1[3];
  v37 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_267B44E60();
  v38 = v89;
  sub_267B7E25C();
  if (v38)
  {
    goto LABEL_8;
  }

  v78[3] = v23;
  v78[4] = v29;
  v78[5] = v22;
  v89 = v32;
  v39 = sub_267B7E09C();
  sub_267B45154(v39, 0);
  if (v42 == v43 >> 1)
  {
LABEL_7:
    v52 = sub_267B7DFBC();
    swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580) + 48);
    *v54 = &type metadata for AttachmentModel;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84160], v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_3_2();
    v57(v56, v30);
LABEL_8:
    v58 = v86;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v58);
    return;
  }

  v78[1] = 0;
  if (v42 < (v43 >> 1))
  {
    v44 = *(v41 + v42);
    v45 = sub_267B45C38(v42 + 1, v43 >> 1, v40, v41, v42, v43);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    v78[2] = v45;
    if (v47 == v49 >> 1)
    {
      v50 = v30;
      v51 = v83;
      switch(v44)
      {
        case 1:
          v87 = 1;
          sub_267B45004();
          OUTLINED_FUNCTION_6_0();
          sub_267B45234();
          sub_267B7E08C();
          swift_unknownObjectRelease();
          v74 = OUTLINED_FUNCTION_14_1();
          v75(v74);
          v76 = OUTLINED_FUNCTION_3_2();
          v77(v76, v50);
          OUTLINED_FUNCTION_13_0();
          v73 = 0x4000000000000000;
          break;
        case 2:
          v87 = 2;
          sub_267B44F5C();
          OUTLINED_FUNCTION_6_0();
          sub_267B451E0();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_8_1();
          v60(v59);
          v61 = OUTLINED_FUNCTION_9_0();
          v62(v61);
          OUTLINED_FUNCTION_13_0();
          v73 = v88 | 0x8000000000000000;
          break;
        case 3:
          v87 = 3;
          sub_267B44EB4();
          OUTLINED_FUNCTION_6_0();
          sub_267B4518C();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_8_1();
          v64(v63);
          v65 = OUTLINED_FUNCTION_9_0();
          v66(v65);
          OUTLINED_FUNCTION_13_0();
          v73 = 0xC000000000000000;
          break;
        default:
          v87 = 0;
          sub_267B450AC();
          OUTLINED_FUNCTION_6_0();
          sub_267B45288();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v67 = OUTLINED_FUNCTION_8_1();
          v68(v67);
          v69 = OUTLINED_FUNCTION_9_0();
          v70(v69);
          OUTLINED_FUNCTION_13_0();
          break;
      }

      v58 = v86;
      *v51 = v71;
      v51[1] = v72;
      v51[2] = v73;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_267B44E60()
{
  result = qword_2802187F8;
  if (!qword_2802187F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802187F8);
  }

  return result;
}

unint64_t sub_267B44EB4()
{
  result = qword_280218800;
  if (!qword_280218800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218800);
  }

  return result;
}

unint64_t sub_267B44F08()
{
  result = qword_280218808;
  if (!qword_280218808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218808);
  }

  return result;
}

unint64_t sub_267B44F5C()
{
  result = qword_280218810;
  if (!qword_280218810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218810);
  }

  return result;
}

unint64_t sub_267B44FB0()
{
  result = qword_280218818;
  if (!qword_280218818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218818);
  }

  return result;
}

unint64_t sub_267B45004()
{
  result = qword_280218820;
  if (!qword_280218820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218820);
  }

  return result;
}

unint64_t sub_267B45058()
{
  result = qword_280218828;
  if (!qword_280218828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218828);
  }

  return result;
}

unint64_t sub_267B450AC()
{
  result = qword_280218830;
  if (!qword_280218830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218830);
  }

  return result;
}

unint64_t sub_267B45100()
{
  result = qword_280218838;
  if (!qword_280218838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218838);
  }

  return result;
}

void sub_267B45154(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_2();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_267B4518C()
{
  result = qword_280218870;
  if (!qword_280218870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218870);
  }

  return result;
}

unint64_t sub_267B451E0()
{
  result = qword_280218878;
  if (!qword_280218878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218878);
  }

  return result;
}

unint64_t sub_267B45234()
{
  result = qword_280218880;
  if (!qword_280218880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218880);
  }

  return result;
}

unint64_t sub_267B45288()
{
  result = qword_280218888;
  if (!qword_280218888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218888);
  }

  return result;
}

unint64_t sub_267B452E0()
{
  result = qword_280218890;
  if (!qword_280218890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218890);
  }

  return result;
}

unint64_t sub_267B45338()
{
  result = qword_280218898;
  if (!qword_280218898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218898);
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

uint64_t sub_267B453AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_267B453F4(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t sub_267B4544C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *(result + 8) &= 1uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AttachmentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AttachmentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SecurityScopedURL.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

_BYTE *sub_267B45664(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B45714()
{
  result = qword_2802188A0;
  if (!qword_2802188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188A0);
  }

  return result;
}

unint64_t sub_267B4576C()
{
  result = qword_2802188A8;
  if (!qword_2802188A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188A8);
  }

  return result;
}

unint64_t sub_267B457C4()
{
  result = qword_2802188B0;
  if (!qword_2802188B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188B0);
  }

  return result;
}

unint64_t sub_267B4581C()
{
  result = qword_2802188B8;
  if (!qword_2802188B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188B8);
  }

  return result;
}

unint64_t sub_267B45874()
{
  result = qword_2802188C0;
  if (!qword_2802188C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188C0);
  }

  return result;
}

unint64_t sub_267B458CC()
{
  result = qword_2802188C8;
  if (!qword_2802188C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188C8);
  }

  return result;
}

unint64_t sub_267B45924()
{
  result = qword_2802188D0;
  if (!qword_2802188D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188D0);
  }

  return result;
}

unint64_t sub_267B4597C()
{
  result = qword_2802188D8;
  if (!qword_2802188D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188D8);
  }

  return result;
}

unint64_t sub_267B459D4()
{
  result = qword_2802188E0;
  if (!qword_2802188E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188E0);
  }

  return result;
}

unint64_t sub_267B45A2C()
{
  result = qword_2802188E8;
  if (!qword_2802188E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188E8);
  }

  return result;
}

unint64_t sub_267B45A84()
{
  result = qword_2802188F0;
  if (!qword_2802188F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188F0);
  }

  return result;
}

unint64_t sub_267B45ADC()
{
  result = qword_2802188F8;
  if (!qword_2802188F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802188F8);
  }

  return result;
}

unint64_t sub_267B45B34()
{
  result = qword_280218900;
  if (!qword_280218900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218900);
  }

  return result;
}

unint64_t sub_267B45B8C()
{
  result = qword_280218908;
  if (!qword_280218908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218908);
  }

  return result;
}

unint64_t sub_267B45BE4()
{
  result = qword_280218910;
  if (!qword_280218910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218910);
  }

  return result;
}

uint64_t sub_267B45C38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_2_1()
{
  v1 = *(v0 - 128);
  *(v0 - 104) = *(v0 - 136);
  *(v0 - 96) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v2 = *(v0 - 112);

  return sub_267B7E0BC();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t result)
{
  *(v2 + 32) = result;
  *v2 = v1;
  *(v2 + 8) = v3 & 1;
  return result;
}

uint64_t OpenConversationIntentRepresentation.textPayload.getter()
{
  v1 = *v0;
  sub_267B7DC5C();
  return v3;
}

uint64_t (*OpenConversationIntentRepresentation.textPayload.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_267B7DC4C();
  return sub_267B43594;
}

uint64_t OpenConversationIntentRepresentation.identifier.getter()
{
  v1 = *(v0 + 8);
  sub_267B7DC5C();
  return v3;
}

uint64_t sub_267B45F20@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  result = a4(a1, a2, a3);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_267B45F68(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v10 = a2[1];
  v11 = a2[2];

  a5(v6, v7);
}

uint64_t (*OpenConversationIntentRepresentation.identifier.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 8);
  v3[4] = sub_267B7DC4C();
  return sub_267B41800;
}

uint64_t OpenConversationIntentRepresentation.intentPersons.getter()
{
  v1 = *(v0 + 16);
  sub_267B7DC5C();
  return v3;
}

uint64_t sub_267B46100@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  result = OpenConversationIntentRepresentation.intentPersons.getter();
  *a2 = result;
  return result;
}

uint64_t sub_267B46144(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = a2[1];
  v6 = a2[2];

  OpenConversationIntentRepresentation.intentPersons.setter();
}

uint64_t (*OpenConversationIntentRepresentation.intentPersons.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *(v1 + 16);
  v3[4] = sub_267B7DC4C();
  return sub_267B43594;
}

uint64_t OpenConversationIntentRepresentation.init(identifier:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218918, &qword_267B7F8B0);
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *a1 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, v7, v8, v9, v10, 0);
  v11 = *(v2 + 48);
  v12 = *(v2 + 52);
  v13 = swift_allocObject();
  a1[1] = OUTLINED_FUNCTION_0_3(v13, v14, v15, v16, v17, v18, v19, v20, 0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218920, &qword_267B7F8B8);
  v22 = OUTLINED_FUNCTION_1_3(v21);
  a1[2] = OUTLINED_FUNCTION_0_3(v22, v23, v24, v25, v26, v27, v28, v29, 0);
  return sub_267B7DC6C();
}

uint64_t OpenConversationIntentRepresentation.init(intentPersons:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218918, &qword_267B7F8B0);
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *a1 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, v7, v8, v9, v10, 0);
  v11 = *(v2 + 48);
  v12 = *(v2 + 52);
  v13 = swift_allocObject();
  a1[1] = OUTLINED_FUNCTION_0_3(v13, v14, v15, v16, v17, v18, v19, v20, 0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218920, &qword_267B7F8B8);
  v22 = OUTLINED_FUNCTION_1_3(v21);
  a1[2] = OUTLINED_FUNCTION_0_3(v22, v23, v24, v25, v26, v27, v28, v29, 0);
  return sub_267B7DC6C();
}

uint64_t OpenConversationIntentRepresentation.init(identifier:textPayload:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218918, &qword_267B7F8B0);
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *a1 = OUTLINED_FUNCTION_0_3(v3, v4, v5, v6, v7, v8, v9, v10, 0);
  v11 = *(v2 + 48);
  v12 = *(v2 + 52);
  v13 = swift_allocObject();
  a1[1] = OUTLINED_FUNCTION_0_3(v13, v14, v15, v16, v17, v18, v19, v20, 0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218920, &qword_267B7F8B8);
  v22 = OUTLINED_FUNCTION_1_3(v21);
  a1[2] = OUTLINED_FUNCTION_0_3(v22, v23, v24, v25, v26, v27, v28, v29, 0);
  sub_267B7DC6C();
  return sub_267B7DC6C();
}

uint64_t sub_267B46520(uint64_t *a1, int a2)
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

uint64_t sub_267B46560(uint64_t result, int a2, int a3)
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

uint64_t sub_267B465B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_267B46738(v4);
}

uint64_t sub_267B465DC()
{
  v2 = sub_267B7DA6C();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_2_2();
  result = swift_beginAccess();
  v12 = *(v0 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    OUTLINED_FUNCTION_5_3();
    v15 = v12 + v14;
    v16 = *(v5 + 56);

    do
    {
      v1(v10, v15, v2);
      sub_267B7DA2C();
      (*(v5 - 8))(v10, v2);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_267B46700()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_267B46738(uint64_t a1)
{
  sub_267B465DC();
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void (*sub_267B46784(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = *(v1 + 16);

  return sub_267B46804;
}

void sub_267B46804(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  if (a2)
  {

    sub_267B465DC();
    v6 = *(v5 + 16);
    *(v5 + 16) = v3;

    v7 = *v4;
  }

  else
  {
    sub_267B465DC();
    v8 = *(v5 + 16);
    *(v5 + 16) = v3;
  }

  free(v2);
}

uint64_t SecurityScopedURL.__allocating_init(wrappedValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_267B468B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000)
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

uint64_t sub_267B46950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B468B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B4697C(uint64_t a1)
{
  v2 = sub_267B46DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B469B8(uint64_t a1)
{
  v2 = sub_267B46DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecurityScopedURL.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_4();
  v2 = swift_allocObject();
  SecurityScopedURL.init(from:)(a1);
  return v2;
}

uint64_t SecurityScopedURL.init(from:)(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ") - 8) + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v6 = sub_267B7DA6C();
  v7 = OUTLINED_FUNCTION_8(v6);
  v39 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218930, "ډ");
  OUTLINED_FUNCTION_8(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_267B46DA8();
  v24 = v40;
  sub_267B7E25C();
  if (v24)
  {
    type metadata accessor for SecurityScopedURL();
    v29 = v44;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v16;
    sub_267B46E20();
    sub_267B7E08C();
    v25 = v14;
    v38 = v21;
    v26 = v42;
    v27 = v43;
    LOBYTE(v42) = 0;
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    v28 = v13;
    sub_267B7DA0C();
    v36 = v27;
    v37 = v25;
    sub_267B46E74(v5);
    v31 = sub_267B47304(0, 1, 1, MEMORY[0x277D84F90]);
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_267B47304(v32 > 1, v33 + 1, 1, v31);
    }

    v34 = v38;
    v35 = v39;
    sub_267B3A524(v26, v36);
    (*(v40 + 8))(v34, v37);
    *(v31 + 16) = v33 + 1;
    (*(v35 + 32))(v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, v28, v6);
    v29 = v44;
    *(v44 + 16) = v31;
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  return v29;
}

unint64_t sub_267B46DA8()
{
  result = qword_280218938;
  if (!qword_280218938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218938);
  }

  return result;
}

unint64_t sub_267B46E20()
{
  result = qword_280218940;
  if (!qword_280218940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218940);
  }

  return result;
}

uint64_t sub_267B46E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B46EDC(void *a1)
{
  v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ") - 8) + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218948, &qword_267B7F980);
  OUTLINED_FUNCTION_8(v9);
  v30 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B46DA8();
  sub_267B7E27C();
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  v17 = *(v3 + 16);
  v18 = *(v17 + 16);

  for (i = 0; v18 != i; ++i)
  {
    v20 = sub_267B7DA6C();
    v21 = v17 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * i;
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
    v22 = sub_267B7D9DC();
    if (v2)
    {
      sub_267B46E74(v8);
      break;
    }

    v24 = v22;
    v25 = v23;
    sub_267B46E74(v8);
    v28 = v24;
    v29 = v25;
    sub_267B473F0();
    sub_267B7E12C();
    sub_267B3A524(v28, v29);
  }

  return (*(v30 + 8))(v15, v9);
}

uint64_t SecurityScopedURL.deinit()
{
  v2 = v0;
  v3 = sub_267B7DA6C();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  v12 = *(v2 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    OUTLINED_FUNCTION_5_3();
    v15 = v12 + v14;
    v16 = *(v6 + 56);

    do
    {
      v1(v11, v15, v3);
      sub_267B7DA2C();
      (*(v6 - 8))(v11, v3);
      v15 += v16;
      --v13;
    }

    while (v13);

    v17 = *(v2 + 16);
  }

  return v2;
}

uint64_t SecurityScopedURL.__deallocating_deinit()
{
  SecurityScopedURL.deinit();
  v0 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_267B472B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SecurityScopedURL.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

size_t sub_267B47304(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_267B476F0(v8, v7);
  v10 = *(sub_267B7DA6C() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_267B477EC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

unint64_t sub_267B473F0()
{
  result = qword_280218950;
  if (!qword_280218950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218950);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SecurityScopedURL.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B475EC()
{
  result = qword_280218958;
  if (!qword_280218958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218958);
  }

  return result;
}

unint64_t sub_267B47644()
{
  result = qword_280218960;
  if (!qword_280218960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218960);
  }

  return result;
}

unint64_t sub_267B4769C()
{
  result = qword_280218968;
  if (!qword_280218968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218968);
  }

  return result;
}

size_t sub_267B476F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
  v4 = *(sub_267B7DA6C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267B477EC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_267B7DA6C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_267B7DA6C();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

id SAAppInfo.isFirstParty.getter()
{
  result = [v0 appIdentifyingInfo];
  if (result)
  {
    result = sub_267B47EB4(result);
    if (v2)
    {
      OUTLINED_FUNCTION_2_3();
      v3 = sub_267B7DDCC();

      return (v3 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *SAAppInfo.getNameForDisplay(locale:)()
{
  v1 = v0;
  v2 = sub_267B7DAEC();
  v4 = v3;
  v16[0] = v2;
  v16[1] = v3;
  sub_267B47F24();
  v5 = v16;
  v6 = sub_267B7DF0C();
  v8 = v7;

  sub_267B47F78(v1, &selRef_displayAppName);
  if (v9)
  {
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    v10 = sub_267B47FD8(v1, &selRef_displayAppNameMap);
    if (v10)
    {
      OUTLINED_FUNCTION_1_5(v10);
      OUTLINED_FUNCTION_0_4();

      if (v4)
      {
        goto LABEL_8;
      }
    }

    sub_267B47F78(v1, &selRef_appName);
    if (v11)
    {
      OUTLINED_FUNCTION_0_4();
    }

    else
    {
      v13 = sub_267B47FD8(v1, &selRef_appNameMap);
      if (!v13 || (OUTLINED_FUNCTION_1_5(v13), OUTLINED_FUNCTION_0_4(), , !v4))
      {
        sub_267B47F78(v1, &selRef_spotlightName);
        if (v14)
        {
          OUTLINED_FUNCTION_0_4();
          swift_bridgeObjectRelease_n();
          goto LABEL_8;
        }

        v15 = sub_267B47FD8(v1, &selRef_spotlightNameMap);
        if (!v15)
        {
          swift_bridgeObjectRelease_n();

          return 0;
        }

        sub_267B47B34(v6, v8, v15);
        OUTLINED_FUNCTION_0_4();
        swift_bridgeObjectRelease_n();
      }
    }
  }

LABEL_8:

  return v5;
}

uint64_t sub_267B47B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_267B47C80(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

double sub_267B47B8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_267B47CF8(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_267B3E924(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id SAAppInfo.init(appIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D47968]) init];
    sub_267B48038(a1, a2, v5);
    [v4 setAppIdentifyingInfo_];
  }

  return v4;
}

unint64_t sub_267B47C80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_267B7E21C();
  sub_267B7DD9C();
  v6 = sub_267B7E23C();

  return sub_267B47D3C(a1, a2, v6);
}

unint64_t sub_267B47CF8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_267B7DF2C();

  return sub_267B47DF0(a1, v5);
}

unint64_t sub_267B47D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_267B7E16C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_267B47DF0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_267B4809C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D6018F0](v8, a1);
    sub_267B480F8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_267B47EB4(void *a1)
{
  v2 = [a1 bundleId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267B7DD5C();

  return v3;
}

unint64_t sub_267B47F24()
{
  result = qword_280218978;
  if (!qword_280218978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218978);
  }

  return result;
}

uint64_t sub_267B47F78(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267B7DD5C();

  return v4;
}

uint64_t sub_267B47FD8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267B7DD1C();

  return v4;
}

void sub_267B48038(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267B7DD4C();

  [a3 setBundleId_];
}

uint64_t PhotoAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v4 = sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t PhotoAsset.url.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  swift_beginAccess();
  v4 = sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t PhotoAsset.thumbNail.getter()
{
  v1 = v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v2 = *v1;
  sub_267B48314(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_267B48314(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_267B48328(a1, a2);
  }

  return a1;
}

uint64_t sub_267B48328(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t PhotoAsset.thumbNail.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail);
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_267B3A510(v6, v7);
}

uint64_t PhotoAsset.duration.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PhotoAsset.duration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration;
  OUTLINED_FUNCTION_1_6();
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t PhotoAsset.isLivePhoto.getter()
{
  v1 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PhotoAsset.isLivePhoto.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto;
  OUTLINED_FUNCTION_1_6();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PhotoAsset.__allocating_init(url:thumbNail:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_11_1();
  v6 = swift_allocObject();
  PhotoAsset.init(url:thumbNail:)(v3, a2, a3);
  return v6;
}

uint64_t PhotoAsset.init(url:thumbNail:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail);
  *(v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail) = xmmword_267B7FB30;
  v8 = v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto) = 0;
  v9 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  v10 = sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3(v10);
  (*(v11 + 32))(v3 + v9, a1);
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v12 = *v7;
  v13 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  sub_267B48314(a2, a3);
  sub_267B3A510(v12, v13);
  sub_267B3A510(a2, a3);
  return v3;
}

uint64_t static PhotoAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_267B7DA6C();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-v13];
  v15 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v16 = *(v7 + 16);
  v16(v14, a1 + v15, v4);
  v17 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v16(v12, a2 + v17, v4);
  LOBYTE(a2) = sub_267B7DA1C();
  v18 = *(v7 + 8);
  v18(v12, v4);
  v18(v14, v4);
  return a2 & 1;
}

uint64_t sub_267B488C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69614E626D756874 && a2 == 0xE90000000000006CLL;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x68506576694C7369 && a2 == 0xEB000000006F746FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_267B7E16C();

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

uint64_t sub_267B48A24(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x69614E626D756874;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0x68506576694C7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B48AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B488C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B48ADC(uint64_t a1)
{
  v2 = sub_267B48F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B48B18(uint64_t a1)
{
  v2 = sub_267B48F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoAsset.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  v2 = sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3(v2);
  (*(v3 + 8))(v0 + v1);
  sub_267B3A510(*(v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail), *(v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail + 8));
  return v0;
}

uint64_t PhotoAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  v2 = sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3(v2);
  (*(v3 + 8))(v0 + v1);
  sub_267B3A510(*(v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail), *(v0 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail + 8));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void PhotoAsset.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v33 = v0;
  v34 = v1;
  v3 = v2;
  v4 = sub_267B7DA6C();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218980, &qword_267B7FB40);
  OUTLINED_FUNCTION_8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_267B48F84();
  v21 = v33;
  sub_267B7E27C();
  v22 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url;
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  (*(v7 + 16))(v11, v21 + v22, v4);
  v38 = 0;
  OUTLINED_FUNCTION_5_4();
  sub_267B4A67C(v23, v24);
  v25 = v34;
  sub_267B7E12C();
  if (v25)
  {
    (*(v7 + 8))(v11, v4);
  }

  else
  {
    (*(v7 + 8))(v11, v4);
    v26 = (v21 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail);
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v27 = v26[1];
    v36 = *v26;
    v37 = v27;
    v35 = 1;
    sub_267B48314(v36, v27);
    sub_267B473F0();
    sub_267B7E0EC();
    sub_267B3A510(v36, v37);
    v28 = (v21 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration);
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v29 = *v28;
    v30 = *(v28 + 8);
    v35 = 2;
    sub_267B7E0DC();
    v31 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto;
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v32 = *(v21 + v31);
    sub_267B7E10C();
  }

  (*(v14 + 8))(v19, v12);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B48F84()
{
  result = qword_280218988;
  if (!qword_280218988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218988);
  }

  return result;
}

uint64_t PhotoAsset.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_11_1();
  v0 = swift_allocObject();
  PhotoAsset.init(from:)();
  return v0;
}

void PhotoAsset.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v0;
  v4 = v3;
  v43 = *v2;
  v44 = v1;
  v5 = sub_267B7DA6C();
  v6 = OUTLINED_FUNCTION_8(v5);
  v39 = v7;
  v40 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218998, &qword_267B7FB48);
  OUTLINED_FUNCTION_8(v41);
  v38 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v15 = v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail;
  *(v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_thumbNail) = xmmword_267B7FB30;
  v16 = v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_duration;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto;
  *(v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_isLivePhoto) = 0;
  v18 = v4[4];
  v49 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_267B48F84();
  v19 = v44;
  sub_267B7E25C();
  if (v19)
  {
    sub_267B3A510(*v15, *(v15 + 8));
    v24 = *(*v2 + 48);
    v25 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = v16;
    v37 = v17;
    v20 = v39;
    v48 = 0;
    OUTLINED_FUNCTION_5_4();
    sub_267B4A67C(v21, v22);
    v23 = v40;
    sub_267B7E08C();
    (*(v20 + 32))(v2 + OBJC_IVAR____TtC18SiriMessagesCommon10PhotoAsset_url, v42, v23);
    v48 = 1;
    sub_267B46E20();
    sub_267B7E04C();
    v26 = v46;
    v27 = v47;
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    v28 = *v15;
    v29 = *(v15 + 8);
    *v15 = v26;
    *(v15 + 8) = v27;
    sub_267B3A510(v28, v29);
    LOBYTE(v46) = 2;
    v30 = sub_267B7E03C();
    LOBYTE(v27) = v31;
    v32 = v44;
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    *v32 = v30;
    *(v32 + 8) = v27 & 1;
    v45 = 3;
    LOBYTE(v27) = sub_267B7E06C();
    v33 = OUTLINED_FUNCTION_9_1();
    v34(v33);
    v35 = v37;
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    *(v2 + v35) = v27 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v49);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B493DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000267B86F60 == a2;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000267B86F80 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000267B86FA0 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000267B86FC0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000267B86FE0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_267B7E16C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_267B4958C(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B49634@<X0>(uint64_t *a1@<X8>)
{
  result = PhotoAsset.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_267B4968C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B493DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B496B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B49584();
  *a1 = result;
  return result;
}

uint64_t sub_267B496DC(uint64_t a1)
{
  v2 = sub_267B4A120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B49718(uint64_t a1)
{
  v2 = sub_267B4A120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosSelection.selectedAssetIds.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t PhotosSelection.selectedAssetIds.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PhotosSelection.selectedPhotoAssets.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t PhotosSelection.selectedPhotoAssets.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t PhotosSelection.searchedPhotoAssets.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t PhotosSelection.searchedPhotoAssets.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t PhotosSelection.photoSearchQuery.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PhotosSelection.photoSearchQuery.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t PhotosSelection.deselectedAssetIds.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t PhotosSelection.deselectedAssetIds.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t PhotosSelection.__allocating_init(selectedAssetIds:selectedPhotoAssets:searchedPhotoAssets:photoSearchQuery:deselectedAssetIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_7_2();
  v12 = swift_allocObject();
  PhotosSelection.init(selectedAssetIds:selectedPhotoAssets:searchedPhotoAssets:photoSearchQuery:deselectedAssetIds:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *PhotosSelection.init(selectedAssetIds:selectedPhotoAssets:searchedPhotoAssets:photoSearchQuery:deselectedAssetIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x277D84F90];
  v6[2] = MEMORY[0x277D84F90];
  v13 = v6 + 2;
  type metadata accessor for PhotoAsset();
  v6[3] = sub_267B7DD2C();
  v14 = v6 + 3;
  v7[4] = v12;
  v7[7] = v12;
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v15 = *v13;
  *v13 = a1;

  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v16 = *v14;
  *v14 = a2;

  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v17 = v7[4];
  v7[4] = a3;

  v7[5] = a4;
  v7[6] = a5;
  OUTLINED_FUNCTION_1_6();
  swift_beginAccess();
  v18 = v7[7];
  v7[7] = a6;

  return v7;
}

uint64_t type metadata accessor for PhotoAsset()
{
  result = qword_280218A00;
  if (!qword_280218A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosSelection.__allocating_init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v2 = swift_allocObject();
  PhotosSelection.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void PhotosSelection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_13_1();
  v12 = v10;
  v14 = v13;
  v36 = *v10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189A8, &qword_267B7FB50);
  OUTLINED_FUNCTION_8(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v19 = MEMORY[0x277D84F90];
  v12[2] = MEMORY[0x277D84F90];
  v20 = v12 + 2;
  type metadata accessor for PhotoAsset();
  v12[3] = sub_267B7DD2C();
  v21 = v12 + 3;
  v12[4] = v19;
  v22 = v12 + 4;
  v37 = v12;
  v12[7] = v19;
  v23 = v12 + 7;
  v24 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_267B4A120();
  sub_267B7E25C();
  if (v11)
  {
    v28 = v37[2];

    v29 = v37[3];

    v30 = v37[4];

    v31 = v37[7];

    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    sub_267B4A554(&qword_2802189C0);
    sub_267B7E08C();
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    v25 = *v20;
    *v20 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189C8, &qword_267B7FB60);
    sub_267B4A174();
    sub_267B7E08C();
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    v26 = *v21;
    *v21 = v39;

    sub_267B7E08C();
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    v27 = *v22;
    *v22 = v38;

    v37[5] = sub_267B7E05C();
    v37[6] = v32;
    sub_267B7E08C();
    v33 = OUTLINED_FUNCTION_8_2();
    v34(v33);
    OUTLINED_FUNCTION_1_6();
    swift_beginAccess();
    v35 = *v23;
    *v23 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B4A120()
{
  result = qword_2802189B0;
  if (!qword_2802189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802189B0);
  }

  return result;
}

unint64_t sub_267B4A174()
{
  result = qword_2802189D0;
  if (!qword_2802189D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802189C8, &qword_267B7FB60);
    sub_267B4A67C(&qword_2802189D8, type metadata accessor for PhotoAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802189D0);
  }

  return result;
}

void *PhotosSelection.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t PhotosSelection.__deallocating_deinit()
{
  PhotosSelection.deinit();
  v0 = OUTLINED_FUNCTION_7_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void PhotosSelection.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189E0, &qword_267B7FB68);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-v11];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_267B4A120();
  sub_267B7E27C();
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v20 = v2[2];
  LOBYTE(v19) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
  sub_267B4A554(&qword_2802189E8);
  OUTLINED_FUNCTION_6_1();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v19 = v2[3];
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189C8, &qword_267B7FB60);
    sub_267B4A5C0();
    sub_267B7E12C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v18 = v2[4];
    v17 = 2;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v14 = v2[5];
    v15 = v2[6];
    v17 = 3;

    sub_267B7E0FC();

    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v21 = v2[7];
    v16[7] = 4;
    OUTLINED_FUNCTION_6_1();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B4A554(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802189B8, &qword_267B7FB58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267B4A5C0()
{
  result = qword_2802189F0;
  if (!qword_2802189F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802189C8, &qword_267B7FB60);
    sub_267B4A67C(&qword_2802189F8, type metadata accessor for PhotoAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802189F0);
  }

  return result;
}

uint64_t sub_267B4A67C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267B4A6C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PhotosSelection.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267B4A71C()
{
  result = sub_267B7DA6C();
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

uint64_t getEnumTagSinglePayload for PhotosSelection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosSelection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotoAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B4AAD8()
{
  result = qword_280218A10;
  if (!qword_280218A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A10);
  }

  return result;
}

unint64_t sub_267B4AB30()
{
  result = qword_280218A18;
  if (!qword_280218A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A18);
  }

  return result;
}

unint64_t sub_267B4AB88()
{
  result = qword_280218A20;
  if (!qword_280218A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A20);
  }

  return result;
}

unint64_t sub_267B4ABE0()
{
  result = qword_280218A28;
  if (!qword_280218A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A28);
  }

  return result;
}

unint64_t sub_267B4AC38()
{
  result = qword_280218A30;
  if (!qword_280218A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A30);
  }

  return result;
}

unint64_t sub_267B4AC90()
{
  result = qword_280218A38;
  if (!qword_280218A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

id static AnnounceMessageUtils.bloopSoundCommand()()
{
  v0 = sub_267B7DACC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnnounceMessageUtils.Dummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = [objc_allocWithZone(MEMORY[0x277D47AE0]) init];
  sub_267B7DABC();
  v8 = sub_267B7DAAC();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  sub_267B3A8D0(v8, v10, v7);

  sub_267B4AFBC(0x3367734D746E6553, 0xE900000000000070, 7758199, 0xE300000000000000, v6);
  if (v11)
  {
    v12 = sub_267B7DD4C();
  }

  else
  {
    v12 = 0;
  }

  [v7 setItemURL_];

  sub_267B4B078();
  v13 = sub_267B7DECC();
  [v7 setVolume_];

  return v7;
}

uint64_t sub_267B4AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_267B7DD4C();

  v7 = sub_267B7DD4C();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_267B7DD5C();

  return v9;
}

unint64_t sub_267B4B078()
{
  result = qword_280218A40;
  if (!qword_280218A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280218A40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceMessageUtils(_BYTE *result, int a2, int a3)
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

uint64_t PatternExecutionResult.asDialogExecutionResult()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v2 = [v0 meta];
  sub_267B7DD1C();

  v3 = sub_267B7DD0C();

  [v1 setMeta_];

  v4 = [v0 patternId];
  if (!v4)
  {
    sub_267B7DD5C();
    v4 = sub_267B7DD4C();
  }

  [v1 setCatId_];

  v31 = MEMORY[0x277D84F90];
  v5 = [v0 dialog];
  sub_267B40FF0(0, &qword_280218A48, 0x277D052C8);
  v6 = sub_267B7DE1C();

  v7 = sub_267B4B638(v6);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  result = sub_267B40FF0(0, &qword_280218A40, 0x277CCABB0);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D601950](i, v6);
      }

      else
      {
        v11 = *(v6 + 8 * i + 32);
      }

      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
      v14 = [v12 dialogId];
      v15 = v14;
      if (!v14)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v14 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v14, sel_setId_);

      v16 = [v12 fullPrint];
      v17 = v16;
      if (!v16)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v16 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v16, sel_setFullPrint_);

      [v13 setIsApprovedForGrading_];
      v18 = [v12 printOnly];
      v19 = sub_267B7DEDC();
      v20 = sub_267B7DEEC();

      [v13 setPrintOnly_];
      v21 = [v12 fullSpeak];
      v22 = v21;
      if (!v21)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v21 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v21, sel_setFullSpeak_);

      v23 = [v12 spokenOnly];
      v24 = sub_267B7DEDC();
      v25 = sub_267B7DEEC();

      [v13 setSpokenOnly_];
      v26 = [v12 supportingPrint];
      v27 = v26;
      if (!v26)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v26 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v26, sel_setSupportingPrint_);

      v28 = [v12 supportingSpeak];
      v29 = v28;
      if (!v28)
      {
        sub_267B7DD5C();
        sub_267B7DD4C();
        v28 = OUTLINED_FUNCTION_1_7();
      }

      OUTLINED_FUNCTION_0_5(v28, sel_setSupportingSpeak_);

      MEMORY[0x26D6017B0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267B7DE3C();
      }

      sub_267B7DE4C();
    }

LABEL_22:

    sub_267B40FF0(0, &qword_280218A50, 0x277D052B0);
    v30 = sub_267B7DE0C();

    [v1 setDialog_];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_267B4B638(uint64_t a1)
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

uint64_t AutoSendableCarPlayButton.init(shouldAutoSend:autoSendTimeout:delayedActionCancelCommand:handleIntent:speechSynthesisId:isFirstPartyApp:responseMode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_280218F48;
  *(a8 + 48) = qword_280218F40;
  *(a8 + 56) = v18;
  v19 = *(type metadata accessor for AutoSendableCarPlayButton() + 44);
  v20 = sub_267B7DC1C();
  __swift_storeEnumTagSinglePayload(a8 + v19, 1, 1, v20);
  *a8 = a1 & 1;
  *(a8 + 8) = a9;
  v21 = *(a8 + 16);

  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 64) = a6 & 1;
  return sub_267B40A18(a7, a8 + v19);
}

void *AutoSendableCarPlayButton.delayedActionCancelCommand.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_267B4B868(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableCarPlayButton.delayedActionCancelCommand.setter(v1);
}

void (*AutoSendableCarPlayButton.delayedActionCancelCommand.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F880;
}

void *AutoSendableCarPlayButton.handleIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267B4B90C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableCarPlayButton.handleIntent.setter(v1);
}

void (*AutoSendableCarPlayButton.handleIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F99C;
}

uint64_t AutoSendableCarPlayButton.speechSynthesisId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AutoSendableCarPlayButton.speechSynthesisId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AutoSendableCarPlayButton.changeLabelText.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AutoSendableCarPlayButton.changeLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AutoSendableCarPlayButton.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutoSendableCarPlayButton() + 44);

  return sub_267B40A88(v3, a1);
}

uint64_t AutoSendableCarPlayButton.responseMode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutoSendableCarPlayButton() + 44);

  return sub_267B40A18(a1, v3);
}

uint64_t sub_267B4BB98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7541646C756F6873 && a2 == 0xEE00646E65536F74;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E65536F747561 && a2 == 0xEF74756F656D6954;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x8000000267B86D40 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E49656C646E6168 && a2 == 0xEC000000746E6574;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B86D60 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614C65676E616863 && a2 == 0xEF747865546C6562;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5074737269467369 && a2 == 0xEF70704179747261;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_267B7E16C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_267B4BE44(char a1)
{
  result = 0x7541646C756F6873;
  switch(a1)
  {
    case 1:
      result = 0x646E65536F747561;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x6E49656C646E6168;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x614C65676E616863;
      break;
    case 6:
      result = 0x5074737269467369;
      break;
    case 7:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B4BF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4BB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4BFA4(uint64_t a1)
{
  v2 = sub_267B4C874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4BFE0(uint64_t a1)
{
  v2 = sub_267B4C874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSendableCarPlayButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218A58, &qword_267B7FF48);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4C874();
  sub_267B7E27C();
  v14 = *v3;
  LOBYTE(v28) = 0;
  OUTLINED_FUNCTION_6();
  sub_267B7E10C();
  if (!v2)
  {
    v15 = *(v3 + 1);
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_6();
    sub_267B7E11C();
    v28 = *(v3 + 2);
    HIBYTE(v27) = 2;
    v16 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    OUTLINED_FUNCTION_5_0(&qword_2802185C8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v28 = *(v3 + 3);
    HIBYTE(v27) = 3;
    v17 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    OUTLINED_FUNCTION_5_0(&qword_2802185D8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v18 = *(v3 + 4);
    v19 = *(v3 + 5);
    LOBYTE(v28) = 4;
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    v20 = *(v3 + 6);
    v21 = *(v3 + 7);
    LOBYTE(v28) = 5;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
    v22 = v3[64];
    LOBYTE(v28) = 6;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v23 = *(type metadata accessor for AutoSendableCarPlayButton() + 44);
    LOBYTE(v28) = 7;
    sub_267B7DC1C();
    OUTLINED_FUNCTION_4_3();
    sub_267B4CA70(v24, v25);
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t AutoSendableCarPlayButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218A68, &qword_267B7FF50);
  v8 = OUTLINED_FUNCTION_8(v7);
  v40 = v9;
  v41 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = type metadata accessor for AutoSendableCarPlayButton();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 2) = 0;
  v16 = (v15 + 16);
  *(v15 + 3) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_280218F48;
  v18 = *(v12 + 44);
  v19 = sub_267B7DC1C();
  v44 = v18;
  __swift_storeEnumTagSinglePayload(&v15[v18], 1, 1, v19);
  v20 = a1;
  v22 = a1[3];
  v21 = a1[4];
  v42 = v20;
  __swift_project_boxed_opaque_existential_1(v20, v22);
  sub_267B4C874();
  v43 = v17;

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v42);

    v26 = *(v15 + 3);

    return sub_267B40B94(&v15[v44]);
  }

  else
  {
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_7();
    *v15 = sub_267B7E06C() & 1;
    OUTLINED_FUNCTION_0_1(1);
    sub_267B7E07C();
    *(v15 + 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    v45 = 2;
    OUTLINED_FUNCTION_2_0(&qword_2802185F0);
    OUTLINED_FUNCTION_7();
    sub_267B7E08C();
    v24 = v46;

    *v16 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    v45 = 3;
    OUTLINED_FUNCTION_2_0(&qword_2802185F8);
    OUTLINED_FUNCTION_7();
    sub_267B7E08C();
    v25 = v46;

    *(v15 + 3) = v25;
    OUTLINED_FUNCTION_0_1(4);
    *(v15 + 4) = sub_267B7E01C();
    *(v15 + 5) = v27;
    OUTLINED_FUNCTION_0_1(5);
    v28 = sub_267B7E05C();
    v30 = v29;

    *(v15 + 6) = v28;
    *(v15 + 7) = v30;
    OUTLINED_FUNCTION_0_1(6);
    v15[64] = sub_267B7E06C() & 1;
    LOBYTE(v46) = 7;
    OUTLINED_FUNCTION_4_3();
    sub_267B4CA70(v31, v32);
    v33 = v39;
    OUTLINED_FUNCTION_7();
    sub_267B7E04C();
    v34 = OUTLINED_FUNCTION_1_1();
    v35(v34);
    sub_267B40A18(v33, &v15[v44]);
    sub_267B4C8C8(v15, v38);
    __swift_destroy_boxed_opaque_existential_0(v42);
    return sub_267B4C92C(v15);
  }
}

uint64_t type metadata accessor for AutoSendableCarPlayButton()
{
  result = qword_280218A88;
  if (!qword_280218A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267B4C874()
{
  result = qword_280218A60;
  if (!qword_280218A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A60);
  }

  return result;
}

uint64_t sub_267B4C8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableCarPlayButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B4C92C(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendableCarPlayButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B4C988(uint64_t a1)
{
  result = sub_267B4CA70(&qword_280218A70, type metadata accessor for AutoSendableCarPlayButton);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267B4CA70(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AutoSendableCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B4CBC0()
{
  result = qword_280218A98;
  if (!qword_280218A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218A98);
  }

  return result;
}

unint64_t sub_267B4CC18()
{
  result = qword_280218AA0;
  if (!qword_280218AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AA0);
  }

  return result;
}

unint64_t sub_267B4CC70()
{
  result = qword_280218AA8;
  if (!qword_280218AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AA8);
  }

  return result;
}

uint64_t MapAttachment.init(urls:isDraft:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t MapAttachment.urls.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_267B4CD6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74666172447369 && a2 == 0xE700000000000000)
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

uint64_t sub_267B4CE3C(char a1)
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](a1 & 1);
  return sub_267B7E23C();
}

uint64_t sub_267B4CE84(char a1)
{
  if (a1)
  {
    return 0x74666172447369;
  }

  else
  {
    return 1936487029;
  }
}

uint64_t sub_267B4CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B4CD6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B4CEEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B4CE34();
  *a1 = result;
  return result;
}

uint64_t sub_267B4CF14(uint64_t a1)
{
  v2 = sub_267B4D168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B4CF50(uint64_t a1)
{
  v2 = sub_267B4D168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapAttachment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AB0, &unk_267B80160);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[2] = *(v1 + 8);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4D168();

  sub_267B7E27C();
  v18 = v12;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
  sub_267B4D3D8(&qword_280218AC8, &qword_280218990);
  sub_267B7E12C();

  if (!v2)
  {
    v16 = 1;
    sub_267B7E10C();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_267B4D168()
{
  result = qword_280218AB8;
  if (!qword_280218AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AB8);
  }

  return result;
}

uint64_t MapAttachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AD0, &qword_267B80170);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B4D168();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
  v17[15] = 0;
  sub_267B4D3D8(&qword_280218AD8, &qword_2802189A0);
  sub_267B7E08C();
  v14 = v18;
  v17[14] = 1;
  v15 = sub_267B7E06C();
  (*(v8 + 8))(v12, v5);
  *a2 = v14;
  *(a2 + 8) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B4D3D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218AC0, &qword_267B820A0);
    sub_267B4D460(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267B4D460(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_267B7DA6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267B4D4AC(uint64_t a1)
{
  *(a1 + 16) = sub_267B45234();
  result = sub_267B45058();
  *(a1 + 24) = result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_267B4D520(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_267B4D560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapAttachment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MapAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B4D718()
{
  result = qword_280218AE0;
  if (!qword_280218AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AE0);
  }

  return result;
}

unint64_t sub_267B4D770()
{
  result = qword_280218AE8;
  if (!qword_280218AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AE8);
  }

  return result;
}

unint64_t sub_267B4D7C8()
{
  result = qword_280218AF0;
  if (!qword_280218AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280218AF0);
  }

  return result;
}

SiriMessagesCommon::UnreadMessagesCarPlayButton __swiftcall UnreadMessagesCarPlayButton.init(text:)(Swift::String text)
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

uint64_t UnreadMessagesCarPlayButton.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}