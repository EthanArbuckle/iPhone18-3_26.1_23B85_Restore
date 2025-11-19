uint64_t sub_223107844(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x4973757361676570;
  v4 = a1;
  v5 = 0x4973757361676570;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v5 = 0x655273656D6D6F70;
      v6 = 0xEE0065736E6F7073;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 3:
      v5 = 0x6552686372616573;
      v6 = 0xEC0000006E6F7361;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x655273656D6D6F70;
      v2 = 0xEE0065736E6F7073;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x726F727265;
      break;
    case 3:
      v3 = 0x6552686372616573;
      v2 = 0xEC0000006E6F7361;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_6();
  }

  return v8 & 1;
}

uint64_t sub_2231079AC(char a1)
{
  if (a1)
  {
    v2 = "speechPackageDict";
  }

  else
  {
    v2 = "intelligenceflow";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_0();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_10();
  }

  return v5 & 1;
}

uint64_t sub_223107A3C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657461676974696DLL;
  v4 = a1;
  v5 = 0x657461676974696DLL;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v5 = 0x65526C65636E6163;
      v7 = 0x7473657571;
      goto LABEL_4;
    case 2:
      v5 = 0x6D73694469726973;
      v7 = 0x6465737369;
LABEL_4:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x65526C65636E6163;
      v8 = 0x7473657571;
      goto LABEL_9;
    case 2:
      v3 = 0x6D73694469726973;
      v8 = 0x6465737369;
LABEL_9:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_6();
  }

  return v10 & 1;
}

uint64_t sub_223107BA4(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000736E656BLL;
  v3 = 0x6F54686365657073;
  v4 = a1;
  v5 = 0x6F54686365657073;
  v6 = 0xEC000000736E656BLL;
  switch(v4)
  {
    case 1:
      v5 = 0x6150686365657073;
      v6 = 0xED00006567616B63;
      break;
    case 2:
      v5 = 0x6C75736552756C6ELL;
      v6 = 0xE900000000000074;
      break;
    case 3:
      v5 = 0x7954746C75736572;
      v6 = 0xEA00000000006570;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6150686365657073;
      v2 = 0xED00006567616B63;
      break;
    case 2:
      v3 = 0x6C75736552756C6ELL;
      v2 = 0xE900000000000074;
      break;
    case 3:
      v3 = 0x7954746C75736572;
      v2 = 0xEA00000000006570;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2232006B4();
  }

  return v8 & 1;
}

uint64_t sub_223107D20(uint64_t a1, uint64_t a2)
{
  v3 = 0xED00006567616B63;
  if (a1)
  {
    OUTLINED_FUNCTION_11_1();
    if (v7 == 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v7 == 1)
    {
      v2 = v9;
    }

    else
    {
      v2 = (v6 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_37(a1, a2, 0x6150686365657073);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_11_1();
    v17 = (v16 - 32) | 0x8000000000000000;
    if (v12 == 1)
    {
      v5 = v13;
    }

    else
    {
      v5 = v15;
    }

    if (v12 == 1)
    {
      v3 = v14;
    }

    else
    {
      v3 = v17;
    }
  }

  if (v11 == v5 && v2 == v3)
  {
    v19 = 1;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_4_6();
  }

  return v19 & 1;
}

uint64_t sub_223107DE4(char a1)
{
  if (a1)
  {
    v1 = 0xEE00644965746164;
  }

  else
  {
    v1 = 0xEF6E6F6973696365;
  }

  OUTLINED_FUNCTION_29_0();
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
    v8 = OUTLINED_FUNCTION_2_10();
  }

  return v8 & 1;
}

uint64_t sub_223107E8C()
{
  v0 = 0xEA00000000007365;
  OUTLINED_FUNCTION_7_3();
  v4 = "responseVariantResult";
  v5 = "languageVariantResult";
  v6 = v2;
  v7 = 0xEA00000000007365;
  v8 = "responseStatusCode";
  switch(v9)
  {
    case 1:
      v7 = 0x8000000223221310;
      v6 = v3 - 3;
      break;
    case 2:
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_35();
      break;
    case 3:
      v10 = "serverFallbackReason";
      goto LABEL_6;
    case 4:
      v10 = "languageVariantResult";
LABEL_6:
      v7 = v10 | 0x8000000000000000;
      v6 = 0xD000000000000015;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = (v8 - 32) | 0x8000000000000000;
      v2 = v3 - 3;
      break;
    case 2:
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_34_0();
      break;
    case 3:
      v11 = v5 - 32;
      goto LABEL_12;
    case 4:
      v11 = v4 - 32;
LABEL_12:
      v0 = v11 | 0x8000000000000000;
      v2 = 0xD000000000000015;
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_6();
  }

  return v13 & 1;
}

uint64_t sub_223107FC4()
{
  OUTLINED_FUNCTION_26_0();
  if (v0)
  {
    v3 = 0x5364496563696F76;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v0)
  {
    v4 = 0xEC00000065726F63;
  }

  else
  {
    v4 = v2;
  }

  if (v1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x5364496563696F76;
  }

  if (v1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xEC00000065726F63;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_10();
  }

  return v8 & 1;
}

uint64_t sub_22310805C(char a1)
{
  OUTLINED_FUNCTION_33(a1, 0xD000000000000013);
  if (v6)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 | 0x8000000000000000;
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_18_0();
  v6 = v6 && v5 == v1;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_10();
  }

  return v7 & 1;
}

uint64_t sub_2231080E0()
{
  OUTLINED_FUNCTION_26_0();
  if (v0)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0x6B6361626C6C6166;
  }

  if (v0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEE006E6F73616552;
  }

  if (v1)
  {
    v5 = 0x6B6361626C6C6166;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v1)
  {
    v6 = 0xEE006E6F73616552;
  }

  else
  {
    v6 = v2;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_10();
  }

  return v8 & 1;
}

uint64_t sub_22310817C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "sharedUserIdToSpeechPackage";
    }

    else
    {
      v2 = "isMuxStateRollback";
    }
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_0();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_10();
  }

  return v5 & 1;
}

uint64_t sub_223108250(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x636E617265747475;
  v4 = a1;
  v5 = 0x636E617265747475;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0x6269726373657270;
      v6 = 0xEE006C6F6F546465;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v7 = 1232106100;
      goto LABEL_5;
    case 3:
      v5 = 0x6174654D78616A61;
      v6 = 0xEC00000061746164;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v7 = 1232429940;
LABEL_5:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6269726373657270;
      v2 = 0xEE006C6F6F546465;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v8 = 1232106100;
      goto LABEL_11;
    case 3:
      v3 = 0x6174654D78616A61;
      v2 = 0xEC00000061746164;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v8 = 1232429940;
LABEL_11:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6400000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_6();
  }

  return v10 & 1;
}

uint64_t sub_2231083D8(unsigned __int8 a1, char a2)
{
  v2 = 0x644972657375;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = "pommesCandidateId";
  v6 = 0x644972657375;
  v7 = "delegatedUserDialogActs";
  switch(v4)
  {
    case 1:
      v3 = 0x8000000223220F00;
      v6 = 0xD000000000000017;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_13_1();
      v3 = 0xEE006E6F73616552;
      break;
    case 3:
      v6 = 0xD000000000000011;
      v3 = 0x8000000223220F50;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v8 = (v7 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000017;
      break;
    case 2:
      OUTLINED_FUNCTION_10_1();
      v8 = 0xEE006E6F73616552;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v8 = (v5 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_10();
  }

  return v10 & 1;
}

uint64_t sub_22310851C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB000000006E6967;
  v3 = 0x69724F7475706E69;
  v4 = a1;
  v5 = 0x69724F7475706E69;
  v6 = 0xEB000000006E6967;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000012;
      v6 = 0x80000002232216D0;
      break;
    case 2:
      v5 = 0x75716552746F6F72;
      v6 = 0xED00006449747365;
      break;
    case 3:
      v6 = 0x80000002232216A0;
      v5 = 0xD000000000000013;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000012;
      v2 = 0x80000002232216D0;
      break;
    case 2:
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_15_1();
      break;
    case 3:
      OUTLINED_FUNCTION_27();
      v3 = v7 | 1;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_6();
  }

  return v9 & 1;
}

uint64_t sub_223108664(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "tcuMappedNLResponse";
    }

    else
    {
      v2 = "repetitionResults";
    }
  }

  else
  {
    v2 = "voiceIdScoreCard";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_0();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_10();
  }

  return v5 & 1;
}

uint64_t sub_223108730(char a1)
{
  if (a1)
  {
    v2 = "supportsOnDeviceNL";
  }

  else
  {
    v2 = "siriXRedirectContext";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_0();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_10();
  }

  return v5 & 1;
}

uint64_t sub_2231087C0(char a1)
{
  OUTLINED_FUNCTION_33(a1, 0xD000000000000012);
  if (v6)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 | 0x8000000000000000;
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_18_0();
  v6 = v6 && v5 == v1;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_10();
  }

  return v7 & 1;
}

SiriMessageTypes::DictationAsrResultType_optional __swiftcall DictationAsrResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DictationAsrResultType.rawValue.getter()
{
  v1 = 0x7365526C616E6966;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x526C616974726170;
  }
}

uint64_t sub_223108944@<X0>(uint64_t *a1@<X8>)
{
  result = DictationAsrResultType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *DictationAsrResultMessage.speechPackage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechPackage);
  v2 = v1;
  return v1;
}

void *DictationAsrResultMessage.nluResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_nluResult);
  v2 = v1;
  return v1;
}

uint64_t sub_223108ACC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230E87C8();
  *a2 = result;
  return result;
}

uint64_t sub_223108AFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230E8814(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223108B30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230E87C8();
  *a1 = result;
  return result;
}

uint64_t sub_223108B58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223108AA0();
  *a1 = result;
  return result;
}

uint64_t sub_223108B80(uint64_t a1)
{
  v2 = sub_22310A568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223108BBC(uint64_t a1)
{
  v2 = sub_22310A568();

  return MEMORY[0x2821FE720](a1, v2);
}

void *DictationAsrResultMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v74 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v67 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v71 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v70 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DictationAsrResultMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  v72 = v7;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v14[10];
  *&v17[v20] = 0;
  v21 = v14[11];
  *&v17[v21] = 0;
  v69 = v14[12];
  *&v17[v69] = 0;
  v22 = v14[13];
  v17[v22] = 3;
  a1(v17);
  v23 = *v17;
  if (v23 == 15)
  {
    goto LABEL_9;
  }

  v24 = *(v17 + 2);
  if (!v24)
  {
    goto LABEL_9;
  }

  v68 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  v25 = v72;
  if (__swift_getEnumTagSinglePayload(v6, 1, v72) == 1)
  {
    sub_2230D69D4(v6);
LABEL_9:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v31 = sub_223200014();
    __swift_project_value_buffer(v31, qword_280FCE830);
    v32 = sub_223200004();
    v33 = sub_223200254();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75 = v35;
      *v34 = 136446210;
      v36 = sub_2230F7898();
      v38 = sub_2231A5D38(v36, v37, &v75);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2230CE000, v32, v33, "Could not build %{public}s: Builder has missing required fields", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DD6780](v35, -1, -1);
      MEMORY[0x223DD6780](v34, -1, -1);
    }

    sub_22310A4EC(v17);
    goto LABEL_14;
  }

  v67[1] = v24;
  v26 = v70;
  v27 = v71;
  v28 = (*(v71 + 32))(v70, v6, v25);
  v29 = *(v19 + 1);
  if (!v29)
  {
    (*(v27 + 8))(v26, v25);
    goto LABEL_9;
  }

  v30 = v17[v22];
  if (v30 == 3)
  {
    (*(v71 + 8))(v70, v25);
    goto LABEL_9;
  }

  v43 = *v19;
  ObjectType = *&v17[v20];
  if (!ObjectType)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        OUTLINED_FUNCTION_9_2();
      }

      else
      {
        OUTLINED_FUNCTION_32_0();
      }

      OUTLINED_FUNCTION_17();
      v54 = sub_2232006B4();

      if ((v54 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      OUTLINED_FUNCTION_31();
    }

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v55 = sub_223200014();
    __swift_project_value_buffer(v55, qword_280FCE830);
    v56 = sub_223200004();
    v57 = sub_223200254();
    v58 = os_log_type_enabled(v56, v57);
    v60 = v70;
    v59 = v71;
    if (!v58)
    {
      goto LABEL_44;
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = "Cannot create DictationAsrResultMessage for partial results without speech tokens";
    goto LABEL_43;
  }

LABEL_17:
  v44 = *&v17[v21];
  if (!v44)
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_8_4();
    if (v30)
    {
      if (v30 == 1)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_38();
    v63 = sub_2232006B4();

    if (v63)
    {
LABEL_39:
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v65 = sub_223200014();
      __swift_project_value_buffer(v65, qword_280FCE830);
      v56 = sub_223200004();
      v57 = sub_223200254();
      v66 = os_log_type_enabled(v56, v57);
      v60 = v70;
      v59 = v71;
      if (!v66)
      {
        goto LABEL_44;
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "Cannot create DictationAsrResultMessage for final results without speech package";
LABEL_43:
      _os_log_impl(&dword_2230CE000, v56, v57, v62, v61, 2u);
      MEMORY[0x223DD6780](v61, -1, -1);
LABEL_44:

      sub_22310A4EC(v17);
      (*(v59 + 8))(v60, v72);
LABEL_14:
      type metadata accessor for DictationAsrResultMessage(0);
      v39 = *((*MEMORY[0x277D85000] & *v74) + 0x30);
      v40 = *((*MEMORY[0x277D85000] & *v74) + 0x34);
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (!v30)
    {
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_8_4();
      v64 = sub_2232006B4();

      if ((v64 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }

LABEL_38:

    goto LABEL_39;
  }

LABEL_18:
  v45 = v74;
  *(v74 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens) = ObjectType;
  *(v45 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechPackage) = v44;
  *(v45 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType) = v30;
  *(v45 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_nluResult) = *&v17[v69];
  MEMORY[0x28223BE20](v28);
  LOBYTE(v67[-6]) = v23;
  v67[-5] = v68;
  v67[-4] = v46;
  v47 = v44;
  v48 = v70;
  v67[-3] = v70;
  v67[-2] = v49;
  v67[-1] = v29;
  v51 = v50;

  v52 = v47;
  v41 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v53 = v41;
  sub_22310A4EC(v17);
  if (v41)
  {
  }

  (*(v71 + 8))(v48, v72);
  return v41;
}

void *DictationAsrResultMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057950, &qword_223205778);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v34 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310A568();
  sub_223200794();
  if (v2)
  {
    LODWORD(v12) = 0;
    v14 = 0;
    OUTLINED_FUNCTION_25_0();
    goto LABEL_4;
  }

  v39 = 0;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_30();
  if (v38 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v35 = v8;
    v20 = v37;
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D057970, 0x277CEF4B0);
    v36 = v20;
    v19 = sub_223200284();
    OUTLINED_FUNCTION_40_0();
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens) = v19;
  v39 = 1;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_30();
  if (v38 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v22 = v37;
    v35 = sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3D0, 0x277CEF470);
    v36 = v22;
    v21 = sub_223200264();
    OUTLINED_FUNCTION_40_0();
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechPackage) = v21;
  v39 = 2;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_30();
  v14 = v38;
  if (v38 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_27D057968, 0x277CEF278);
    v23 = sub_223200264();
    v24 = OUTLINED_FUNCTION_39();
    sub_22310A610(v24, v25);
  }

  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_nluResult) = v23;
  v39 = 3;
  sub_22310A5BC();
  OUTLINED_FUNCTION_3_8();
  sub_223200554();
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType) = v37;
  sub_2230F7158(a1, &v37);
  v26 = RequestMessageBase.init(from:)(&v37);
  v1 = v26;
  if (*(v26 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens))
  {
LABEL_26:
    if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechPackage))
    {
LABEL_27:
      v27 = OUTLINED_FUNCTION_0_4();
      v28(v27);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v1;
    }

    if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType))
    {
      if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType) == 1)
      {

LABEL_41:
        v29 = 0x8000000223221FD0;
        sub_2230F9E38();
        swift_allocError();
        v31 = 0xD000000000000061;
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      OUTLINED_FUNCTION_8_4();
    }

    OUTLINED_FUNCTION_38();
    v14 = sub_2232006B4();

    if ((v14 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

  if (*(v26 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType))
  {
    if (*(v26 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType) == 1)
    {
      OUTLINED_FUNCTION_9_2();
    }

    else
    {
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_17();
    v14 = sub_2232006B4();

    if ((v14 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31();
  }

  v29 = 0x8000000223222040;
  sub_2230F9E38();
  swift_allocError();
  v31 = 0xD000000000000062;
LABEL_42:
  *v30 = v31;
  *(v30 + 8) = v29;
  *(v30 + 16) = 0;
  swift_willThrow();
  v32 = OUTLINED_FUNCTION_0_4();
  v33(v32);
  OUTLINED_FUNCTION_22_0();
  LODWORD(v8) = 1;
  LODWORD(v13) = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v8)
  {
    if (v12)
    {
      v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens);

      if (!v14)
      {
        goto LABEL_9;
      }
    }

    else if (!v14)
    {
LABEL_9:
      if (!v5)
      {
LABEL_11:
        type metadata accessor for DictationAsrResultMessage(0);
        v16 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
        v17 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
        swift_deallocPartialClassInstance();
        return v1;
      }

LABEL_10:

      goto LABEL_11;
    }

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v13)
  {
  }

  return v1;
}

uint64_t sub_223109AE4(void *a1)
{
  v3 = v1;
  v43 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057978, &qword_223205780);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310A568();
  sub_2232007A4();
  if (!*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens))
  {
LABEL_7:
    v24 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechPackage);
    if (v24)
    {
      objc_opt_self();
      v41 = 0;
      v25 = OUTLINED_FUNCTION_28_0(v24);
      v26 = v41;
      if (!v25)
      {
LABEL_16:
        v35 = v26;
        sub_2231FFD04();

        swift_willThrow();
        goto LABEL_20;
      }

      v39 = v3;
      v27 = sub_2231FFD24();
      v29 = v28;

      v41 = v27;
      v42 = v29;
      sub_2230D7754();
      OUTLINED_FUNCTION_6_3();
      if (v2)
      {
LABEL_14:
        v32 = OUTLINED_FUNCTION_24_0();
        v33(v32);

        v19 = v27;
        v20 = v29;
        goto LABEL_15;
      }

      sub_2230D94DC(v27, v29);
      v3 = v39;
    }

    v24 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_nluResult);
    if (!v24)
    {
LABEL_18:
      LOBYTE(v41) = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_resultType);
      sub_22310A624();
      OUTLINED_FUNCTION_6_3();
      if (!v2)
      {
        sub_2230D77A8(a1);
      }

      goto LABEL_20;
    }

    objc_opt_self();
    v41 = 0;
    v30 = OUTLINED_FUNCTION_28_0(v24);
    v26 = v41;
    if (v30)
    {
      v40 = v3;
      v27 = sub_2231FFD24();
      v29 = v31;

      v41 = v27;
      v42 = v29;
      sub_2230D7754();
      OUTLINED_FUNCTION_6_3();
      if (v2)
      {
        goto LABEL_14;
      }

      sub_2230D94DC(v27, v29);
      v3 = v40;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v10 = objc_opt_self();
  sub_2230FB7F4(0, &qword_27D057970, 0x277CEF4B0);
  v11 = sub_2232001C4();
  v41 = 0;
  v12 = [v10 0x1FB92B35ALL];

  v13 = v41;
  if (!v12)
  {
    v21 = v13;
    sub_2231FFD04();

    swift_willThrow();
LABEL_20:
    v36 = OUTLINED_FUNCTION_24_0();
    result = v37(v36);
    goto LABEL_21;
  }

  v14 = sub_2231FFD24();
  v16 = v15;

  v41 = v14;
  v42 = v16;
  sub_2230D7754();
  OUTLINED_FUNCTION_6_3();
  if (!v2)
  {
    v22 = OUTLINED_FUNCTION_39();
    sub_2230D94DC(v22, v23);
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_24_0();
  v18(v17);
  v19 = OUTLINED_FUNCTION_39();
LABEL_15:
  result = sub_2230D94DC(v19, v20);
LABEL_21:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DictationAsrResultMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t DictationAsrResultMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DictationAsrResultMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t DictationAsrResultMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_21_0() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t DictationAsrResultMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DictationAsrResultMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DictationAsrResultMessage.Builder.speechTokens.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 32));
}

uint64_t DictationAsrResultMessage.Builder.speechTokens.setter()
{
  v2 = *(OUTLINED_FUNCTION_21_0() + 32);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void *DictationAsrResultMessage.Builder.speechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void DictationAsrResultMessage.Builder.speechPackage.setter()
{
  v2 = *(OUTLINED_FUNCTION_21_0() + 36);

  *(v1 + v2) = v0;
}

void *DictationAsrResultMessage.Builder.nluResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationAsrResultMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void DictationAsrResultMessage.Builder.nluResult.setter()
{
  v2 = *(OUTLINED_FUNCTION_21_0() + 40);

  *(v1 + v2) = v0;
}

uint64_t DictationAsrResultMessage.Builder.resultType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DictationAsrResultMessage.Builder(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t DictationAsrResultMessage.Builder.resultType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DictationAsrResultMessage.Builder(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

void sub_22310A3E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_speechTokens);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25DictationAsrResultMessage_nluResult);
}

id DictationAsrResultMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DictationAsrResultMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22310A4EC(uint64_t a1)
{
  v2 = type metadata accessor for DictationAsrResultMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22310A568()
{
  result = qword_27D057958;
  if (!qword_27D057958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057958);
  }

  return result;
}

unint64_t sub_22310A5BC()
{
  result = qword_27D057960;
  if (!qword_27D057960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057960);
  }

  return result;
}

uint64_t sub_22310A610(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2230D94DC(a1, a2);
  }

  return a1;
}

unint64_t sub_22310A624()
{
  result = qword_27D057980;
  if (!qword_27D057980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057980);
  }

  return result;
}

unint64_t sub_22310A67C()
{
  result = qword_27D057988;
  if (!qword_27D057988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DictationAsrResultType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22310A858()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_22310A9DC();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_22310AA40(319, &qword_27D057708, &qword_280FCA3D0, 0x277CEF470);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_22310AA40(319, &qword_27D0579B0, &qword_27D057968, 0x277CEF278);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_2230D525C(319, &qword_27D0579B8);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_22310A9DC()
{
  if (!qword_27D0579A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0579A8, &qword_223205958);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0579A0);
    }
  }
}

void sub_22310AA40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2230FB7F4(255, a3, a4);
    v5 = sub_2232002D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DictationAsrResultMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22310AB78()
{
  result = qword_27D0579C0;
  if (!qword_27D0579C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579C0);
  }

  return result;
}

unint64_t sub_22310ABD0()
{
  result = qword_27D0579C8;
  if (!qword_27D0579C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579C8);
  }

  return result;
}

unint64_t sub_22310AC28()
{
  result = qword_27D0579D0;
  if (!qword_27D0579D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579D0);
  }

  return result;
}

unint64_t sub_22310AC7C()
{
  result = qword_27D0579D8;
  if (!qword_27D0579D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return type metadata accessor for DictationAsrResultMessage.Builder(0);
}

uint64_t OUTLINED_FUNCTION_33@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return v2;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_22310ADBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6341746365726964 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000223222210 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22310AE90(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x6341746365726964;
  }
}

uint64_t sub_22310AEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22310ADBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22310AF04(uint64_t a1)
{
  v2 = sub_22310C3F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22310AF40(uint64_t a1)
{
  v2 = sub_22310C3F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *DirectActionResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return DirectActionResultCandidateMessage.init(build:)(v1);
}

void *DirectActionResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v90 = a1;
  v91 = v1;
  ObjectType = swift_getObjectType();
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v85 = v4;
  v86 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v84 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v78 - v11;
  v13 = sub_2231FFDA4();
  v14 = OUTLINED_FUNCTION_9(v13);
  v87 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v88 = v19 - v18;
  v20 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v25 = (v24 - v23);
  *v25 = 15;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  v26 = v21[8];
  v27 = v13;
  __swift_storeEnumTagSinglePayload(v24 - v23 + v26, 1, 1, v13);
  v28 = &v25[v21[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v25[v21[10]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v25[v21[11]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v25[v21[12]];
  *v31 = 0;
  v31[1] = 0;
  v32 = v21[13];
  *&v25[v32] = 0;
  v90(v25);
  v33 = *v25;
  if (v33 == 15 || !*(v25 + 2))
  {
    goto LABEL_14;
  }

  v90 = *(v25 + 2);
  v83 = *(v25 + 1);
  sub_2230D1480(&v25[v26], v12);
  v34 = v27;
  if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
  {
    sub_2230D69D4(v12);
LABEL_14:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v50 = sub_223200014();
    __swift_project_value_buffer(v50, qword_280FCE830);
    v51 = sub_223200004();
    v52 = sub_223200254();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v92[0] = v54;
      *v53 = 136446210;
      v55 = sub_2230F7898();
      v57 = sub_2231A5D38(v55, v56, v92);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_2230CE000, v51, v52, "Could not build %{public}s: Builder has missing required fields", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x223DD6780](v54, -1, -1);
      MEMORY[0x223DD6780](v53, -1, -1);
    }

LABEL_19:
    sub_22310C37C(v25);
    type metadata accessor for DirectActionResultCandidateMessage(0);
    v58 = *((*MEMORY[0x277D85000] & *v91) + 0x30);
    v59 = *((*MEMORY[0x277D85000] & *v91) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v82 = v33;
  v36 = v87;
  v35 = v88;
  (*(v87 + 32))(v88, v12, v34);
  v37 = *(v28 + 1);
  if (!v37 || (v38 = *(v29 + 1)) == 0 || (v39 = *(v30 + 1)) == 0)
  {
    (*(v36 + 8))(v35, v34);
    goto LABEL_14;
  }

  v40 = *v28;
  v41 = *v29;
  v42 = *v30;
  v43 = *v31;
  v44 = v31[1];
  if (!v44)
  {
    goto LABEL_21;
  }

  v92[0] = v43;
  v92[1] = v44;
  v80 = v40;
  v81 = v39;
  ObjectType = v38;
  v79 = v43;

  v45 = v84;
  sub_2231FFC74();
  sub_2230D1D30();
  v78 = sub_2232002E4();
  v47 = v46;
  (*(v85 + 8))(v45, v86);

  v40 = v80;
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v78 & 0xFFFFFFFFFFFFLL;
  }

  v43 = v79;
  if (v48)
  {
    v49 = *&v25[v32];
  }

  else
  {
LABEL_21:
    v49 = *&v25[v32];
    if (!v49 || !*(v49 + 16))
    {
      if (qword_280FCA778 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v74 = sub_223200014();
      __swift_project_value_buffer(v74, qword_280FCE830);
      v75 = sub_223200004();
      v76 = sub_223200254();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_2230CE000, v75, v76, "directAction and requestExecutionParameters are empty, can't create message", v77, 2u);
        MEMORY[0x223DD6780](v77, -1, -1);
      }

      (*(v36 + 8))(v88, v34);
      goto LABEL_19;
    }
  }

  v62 = v91;
  v63 = (v91 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction);
  *v63 = v43;
  v63[1] = v44;
  *(v62 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters) = v49;
  v64 = MEMORY[0x28223BE20](v40);
  *(&v78 - 80) = v82;
  v65 = v90;
  *(&v78 - 9) = v83;
  *(&v78 - 8) = v65;
  v66 = v88;
  *(&v78 - 7) = v88;
  *(&v78 - 6) = v64;
  *(&v78 - 5) = v37;
  *(&v78 - 4) = v67;
  *(&v78 - 3) = v68;
  *(&v78 - 2) = v69;
  *(&v78 - 1) = v70;

  v71 = UserIdAwareResultCandidateMessageBase.init(build:)(sub_2230FB70C);
  v60 = v71;
  if (v71)
  {
    v72 = *(v36 + 8);
    v73 = v71;
    v72(v66, v34);
    sub_22310C37C(v25);
  }

  else
  {
    (*(v36 + 8))(v66, v34);
    sub_22310C37C(v25);
  }

  return v60;
}

void *DirectActionResultCandidateMessage.init(from:)(uint64_t *a1)
{
  v2 = sub_2231FFC84();
  v3 = OUTLINED_FUNCTION_9(v2);
  v47 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579E0, &qword_223205AC8);
  v11 = OUTLINED_FUNCTION_9(v10);
  v48 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v44 - v15;
  v17 = a1[4];
  v18 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_22310C3F8();
  v20 = v50;
  sub_223200794();
  if (!v20)
  {
    v50 = v2;
    v21 = v48;
    LOBYTE(v51[0]) = 0;
    v22 = sub_223200494();
    if (v23)
    {
      v51[0] = v22;
      v51[1] = v23;
      v44 = v16;
      sub_2231FFC74();
      sub_2230D1D30();
      v45 = sub_2232002E4();
      v46 = v24;
      v16 = v44;
      (*(v47 + 8))(v9, v50);
    }

    else
    {
      v45 = v22;
      v46 = 0;
    }

    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579F0, &qword_223205AD0);
    v52 = 1;
    sub_22310C4F4(&qword_27D0579F8);
    sub_2232004C4();
    v26 = v21;
    v31 = v51[0];
    v32 = v46;
    if (v46)
    {
      v33 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v33 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {
        goto LABEL_14;
      }
    }

    if (v51[0])
    {
      if (*(v51[0] + 16))
      {
LABEL_14:
        v34 = v49;
        v35 = (v49 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction);
        *v35 = v45;
        v35[1] = v32;
        *(v34 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters) = v31;
        sub_2230F7158(v18, v51);
        v27 = UserIdAwareResultCandidateMessageBase.init(from:)(v51);
        v36 = OUTLINED_FUNCTION_6_4();
        v37(v36);
        __swift_destroy_boxed_opaque_existential_1(v18);
        return v27;
      }
    }

    v38 = sub_2232003A4();
    swift_allocError();
    v40 = v39;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A00, &qword_223205AD8);
    v50 = v10;
    v42 = *(v41 + 48);
    *(v40 + 24) = &type metadata for DirectActionResultCandidateMessage.CodingKeys;
    *(v40 + 32) = v25;
    *v40 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A08, &qword_223205AE0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_223205AB0;
    *(v43 + 56) = &type metadata for DirectActionResultCandidateMessage.CodingKeys;
    *(v43 + 64) = v25;
    *(v43 + 32) = 0;
    sub_223200394();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84158], v38);
    swift_willThrow();
    (*(v26 + 8))(v16, v50);
  }

  v27 = 0;
  __swift_destroy_boxed_opaque_existential_1(v18);
  type metadata accessor for DirectActionResultCandidateMessage(0);
  v28 = *((*MEMORY[0x277D85000] & *v49) + 0x30);
  v29 = *((*MEMORY[0x277D85000] & *v49) + 0x34);
  swift_deallocPartialClassInstance();
  return v27;
}

uint64_t sub_22310BBEC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A10, &qword_223205AE8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310C3F8();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction + 8);
  if (!v13 || (v16[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction), v16[1] = v13, v17 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0), sub_2230F994C(), OUTLINED_FUNCTION_3_9(), !v2))
  {
    if ((v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters)) != 0 && !*(v14 + 16) || (v16[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters), v17 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059890, &unk_223205AF0), sub_22310C44C(), OUTLINED_FUNCTION_3_9(), !v2))
    {
      sub_2231EEBE4(a1);
    }
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t DirectActionResultCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t DirectActionResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DirectActionResultCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t DirectActionResultCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_4() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t DirectActionResultCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t DirectActionResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.resultCandidateId.getter()
{
  v0 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t DirectActionResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DirectActionResultCandidateMessage.Builder(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t DirectActionResultCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 36));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.directAction.getter()
{
  v0 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t DirectActionResultCandidateMessage.Builder.directAction.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DirectActionResultCandidateMessage.Builder.requestExecutionParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for DirectActionResultCandidateMessage.Builder(0) + 44));
}

uint64_t DirectActionResultCandidateMessage.Builder.requestExecutionParameters.setter()
{
  v2 = *(OUTLINED_FUNCTION_7_4() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t sub_22310C2B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_directAction + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34DirectActionResultCandidateMessage_requestExecutionParameters);
}

id DirectActionResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DirectActionResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22310C37C(uint64_t a1)
{
  v2 = type metadata accessor for DirectActionResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22310C3F8()
{
  result = qword_27D0579E8;
  if (!qword_27D0579E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0579E8);
  }

  return result;
}

unint64_t sub_22310C44C()
{
  result = qword_280FCA510;
  if (!qword_280FCA510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059890, &unk_223205AF0);
    sub_22310C4F4(&qword_280FCA528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA510);
  }

  return result;
}

uint64_t sub_22310C4F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0579F0, &qword_223205AD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22310C608()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA740);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_22310C728();
        v1 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_22310C728()
{
  if (!qword_280FCA520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0579F0, &qword_223205AD0);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA520);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DirectActionResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22310C86C()
{
  result = qword_27D057A28;
  if (!qword_27D057A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A28);
  }

  return result;
}

unint64_t sub_22310C8C4()
{
  result = qword_27D057A30;
  if (!qword_27D057A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A30);
  }

  return result;
}

unint64_t sub_22310C91C()
{
  result = qword_27D057A38;
  if (!qword_27D057A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A38);
  }

  return result;
}

uint64_t sub_22310C980(uint64_t a1)
{
  v2 = sub_22310D998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22310C9BC(uint64_t a1)
{
  v2 = sub_22310D998();

  return MEMORY[0x2821FE720](a1, v2);
}

SiriMessageTypes::EndCandidateRequestMessage::EndCandidateRequestReason_optional __swiftcall EndCandidateRequestMessage.EndCandidateRequestReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EndCandidateRequestMessage.EndCandidateRequestReason.rawValue.getter()
{
  result = 0x657461676974696DLL;
  switch(*v0)
  {
    case 1:
      result = 0x65526C65636E6163;
      break;
    case 2:
      result = 0x6D73694469726973;
      break;
    case 3:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22310CB1C@<X0>(uint64_t *a1@<X8>)
{
  result = EndCandidateRequestMessage.EndCandidateRequestReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *EndCandidateRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1();
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v44 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EndCandidateRequestMessage.Builder(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  __swift_storeEnumTagSinglePayload(&v18[v19], 1, 1, v7);
  v20 = &v18[v15[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v15[10];
  v18[v21] = 4;
  a1(v18);
  v22 = *v18;
  if (v22 == 15)
  {
    goto LABEL_8;
  }

  v23 = *(v18 + 2);
  if (!v23)
  {
    goto LABEL_8;
  }

  v43 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_2230D69D4(v2);
LABEL_8:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v27 = sub_223200014();
    __swift_project_value_buffer(v27, qword_280FCE830);
    v28 = sub_223200004();
    v29 = sub_223200254();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446210;
      v32 = sub_2230F7898();
      v34 = sub_2231A5D38(v32, v33, &v46);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2230CE000, v28, v29, "Could not build %{public}s: Builder has missing required fields", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DD6780](v31, -1, -1);
      MEMORY[0x223DD6780](v30, -1, -1);
    }

    sub_22310D91C(v18);
    type metadata accessor for EndCandidateRequestMessage(0);
    v35 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v36 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v44;
  v25 = (*(v44 + 32))(v13, v2, v7);
  if (!*(v20 + 1) || (v26 = v18[v21], v26 == 4))
  {
    (*(v24 + 8))(v13, v7);
    goto LABEL_8;
  }

  v39 = *v20;
  *(v3 + OBJC_IVAR____TtC16SiriMessageTypes26EndCandidateRequestMessage_reason) = v26;
  MEMORY[0x28223BE20](v25);
  *(&v43 - 48) = v22;
  *(&v43 - 5) = v43;
  *(&v43 - 4) = v23;
  *(&v43 - 3) = v13;
  *(&v43 - 2) = v40;
  *(&v43 - 1) = v41;
  v37 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v42 = v37;
  sub_22310D91C(v18);
  if (v37)
  {
  }

  (*(v24 + 8))(v13, v7);
  return v37;
}

void *EndCandidateRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A40, &qword_223205CC8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310D998();
  sub_223200794();
  if (v2)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for EndCandidateRequestMessage(0);
    v10 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_22310D9EC();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26EndCandidateRequestMessage_reason) = v16[0];
    sub_2230F7158(a1, v16);
    v13 = RequestMessageBase.init(from:)(v16);
    v14 = OUTLINED_FUNCTION_2();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_22310D308(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057A58, &qword_223205CD0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22310D998();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes26EndCandidateRequestMessage_reason);
  sub_22310DA40();
  sub_223200654();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v8 + 8))(v3, v5);
}

uint64_t sub_22310D4CC()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for EndCandidateRequestMessage(0);
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x223DD5AA0](0xD00000000000001ELL, 0x8000000223222230);
  v7 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes26EndCandidateRequestMessage_reason);
  v5 = sub_223200104();
  MEMORY[0x223DD5AA0](v5);

  MEMORY[0x223DD5AA0](15913, 0xE200000000000000);
  return v9;
}

uint64_t EndCandidateRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t EndCandidateRequestMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t EndCandidateRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EndCandidateRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t EndCandidateRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_10() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t EndCandidateRequestMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for EndCandidateRequestMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EndCandidateRequestMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EndCandidateRequestMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EndCandidateRequestMessage.Builder.reason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EndCandidateRequestMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EndCandidateRequestMessage.Builder.reason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for EndCandidateRequestMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

id EndCandidateRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndCandidateRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22310D91C(uint64_t a1)
{
  v2 = type metadata accessor for EndCandidateRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22310D998()
{
  result = qword_27D057A48;
  if (!qword_27D057A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A48);
  }

  return result;
}

unint64_t sub_22310D9EC()
{
  result = qword_27D057A50;
  if (!qword_27D057A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A50);
  }

  return result;
}

unint64_t sub_22310DA40()
{
  result = qword_27D057A60;
  if (!qword_27D057A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A60);
  }

  return result;
}

unint64_t sub_22310DA98()
{
  result = qword_27D057A68;
  if (!qword_27D057A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EndCandidateRequestMessage.EndCandidateRequestReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22310DC68()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_27D057A80);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for EndCandidateRequestMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22310DE18()
{
  result = qword_27D057A88;
  if (!qword_27D057A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A88);
  }

  return result;
}

unint64_t sub_22310DE70()
{
  result = qword_27D057A90;
  if (!qword_27D057A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A90);
  }

  return result;
}

unint64_t sub_22310DEC8()
{
  result = qword_27D057A98;
  if (!qword_27D057A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057A98);
  }

  return result;
}

unint64_t sub_22310DF1C()
{
  result = qword_27D057AA0;
  if (!qword_27D057AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057AA0);
  }

  return result;
}

void *EndDictationRequestMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = EndRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id EndDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndDictationRequestMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndDictationRequestMessage()
{
  result = qword_280FCCF20;
  if (!qword_280FCCF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *EndRequestMessageBase.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id EndRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndRequestMessageBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndRequestMessageBase()
{
  result = qword_280FCE5C0;
  if (!qword_280FCE5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *EndSpeechDictationSessionMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id EndSpeechDictationSessionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndSpeechDictationSessionMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndSpeechDictationSessionMessage()
{
  result = qword_280FCC2F8;
  if (!qword_280FCC2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *EndUnderstandingDictationSessionMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = EndSpeechDictationSessionMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id EndUnderstandingDictationSessionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndUnderstandingDictationSessionMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EndUnderstandingDictationSessionMessage()
{
  result = qword_280FCBD28;
  if (!qword_280FCBD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22310E5B4(uint64_t a1, unsigned int a2)
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

uint64_t sub_22310E5F4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *ExecuteNLOnServerMessage.mostRecentVoiceIdScoreCard.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard);
  v2 = v1;
  return v1;
}

uint64_t sub_22310E6C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230E8D20();
  *a2 = result;
  return result;
}

unint64_t sub_22310E6F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230E8D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22310E72C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230E8D20();
  *a1 = result;
  return result;
}

uint64_t sub_22310E754(uint64_t a1)
{
  v2 = sub_223110558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22310E790(uint64_t a1)
{
  v2 = sub_223110558();

  return MEMORY[0x2821FE720](a1, v2);
}

void *ExecuteNLOnServerMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ExecuteNLOnServerMessage.init(build:)(v1);
}

void *ExecuteNLOnServerMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v67 = a1;
  v68 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v59[-v4];
  v6 = sub_2231FFDA4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v63 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v17 = v13[8];
  v65 = v6;
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v6);
  v18 = &v16[v13[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v16[v13[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = v13[11];
  *&v16[v20] = 0;
  v21 = v13[12];
  v16[v21] = 7;
  v22 = v13[13];
  *&v16[v22] = 0;
  v62 = v13[14];
  v16[v62] = 2;
  v23 = v13[15];
  *&v16[v23] = 0;
  v67(v16);
  v24 = *v16;
  if (v24 == 15 || !*(v16 + 2))
  {
    goto LABEL_10;
  }

  v67 = *(v16 + 2);
  v61 = *(v16 + 1);
  sub_2230D1480(&v16[v17], v5);
  v25 = v65;
  if (__swift_getEnumTagSinglePayload(v5, 1, v65) == 1)
  {
    sub_2230D69D4(v5);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v32 = sub_223200014();
    __swift_project_value_buffer(v32, qword_280FCE830);
    v33 = sub_223200004();
    v34 = sub_223200254();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v69 = v36;
      *v35 = 136446210;
      v37 = sub_2230F7898();
      v39 = sub_2231A5D38(v37, v38, &v69);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2230CE000, v33, v34, "Could not build %{public}s: Builder has missing required fields", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223DD6780](v36, -1, -1);
      MEMORY[0x223DD6780](v35, -1, -1);
    }

    sub_223110448(v16);
    type metadata accessor for ExecuteNLOnServerMessage(0);
    v40 = *((*MEMORY[0x277D85000] & *v68) + 0x30);
    v41 = *((*MEMORY[0x277D85000] & *v68) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v60 = v24;
  v26 = v63;
  (*(v63 + 32))(v64, v5, v25);
  v27 = *(v18 + 1);
  if (!v27 || !*(v19 + 1) || (v28 = *&v16[v20]) == 0 || v16[v21] == 7)
  {
    v29 = *(v26 + 8);
    v30 = OUTLINED_FUNCTION_7_0();
    v31(v30);
    goto LABEL_10;
  }

  v44 = *v18;
  v45 = *&v16[v22];
  if (v45)
  {
    v46 = *&v16[v22];
  }

  else
  {
    v47 = *(v19 + 1);
    v48 = v16[v21];
    v49 = *v19;
    sub_2230FB7F4(0, &qword_280FCA3D0, 0x277CEF470);
    sub_2231104C4();
    v45 = sub_223200064();
  }

  v50 = v68;
  *(v68 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_sharedUserIdToSpeechPackage) = v45;
  *(v50 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_isMuxStateRollback) = v16[v62] & 1;
  *(v50 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard) = *&v16[v23];
  MEMORY[0x28223BE20](v45);
  v59[-80] = v60;
  v51 = v67;
  *&v59[-72] = v61;
  *&v59[-64] = v51;
  v52 = v64;
  *&v59[-56] = v64;
  *&v59[-48] = v44;
  *&v59[-40] = v27;
  *&v59[-32] = v53;
  *&v59[-24] = v54;
  *&v59[-16] = v28;
  v59[-8] = v55;
  v57 = v56;

  v42 = ExecuteNLOnServerMessageBase.init(build:)(sub_223110518);
  v58 = v42;
  sub_223110448(v16);
  if (v42)
  {
  }

  (*(v63 + 8))(v52, v25);
  return v42;
}

uint64_t sub_22310ED84(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *a1 = a2;
  v18 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v19 = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  v20 = v19[6];
  sub_2230D69D4(a1 + v20);
  v21 = sub_2231FFDA4();
  (*(*(v21 - 8) + 16))(a1 + v20, a5, v21);
  __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v21);
  v22 = (a1 + v19[7]);
  v23 = v22[1];

  *v22 = a6;
  v22[1] = a7;
  v24 = (a1 + v19[8]);
  v25 = v24[1];

  *v24 = a8;
  v24[1] = a9;
  v26 = v19[9];
  v27 = *(a1 + v26);

  *(a1 + v26) = a10;
  *(a1 + v19[10]) = a11;
  return result;
}

uint64_t ExecuteNLOnServerMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AA8, &qword_223206158);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223110558();
  sub_223200794();
  if (v2)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    v31 = 0;
    sub_223110600(&qword_27D057AB8, sub_2231105AC, sub_2230FB7A0);
    sub_223200554();
    v16 = sub_22310F41C(v30, &qword_280FCA3D0, 0x277CEF470, &qword_27D057B00, &unk_2232063A8);

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_sharedUserIdToSpeechPackage) = v16;
    LOBYTE(v30) = 1;
    v17 = sub_223200504();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_isMuxStateRollback) = v17 & 1;
    LOBYTE(v30) = 2;
    if ((sub_2232005A4() & 1) == 0)
    {
      v21 = 0;
LABEL_11:
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard) = v21;
      sub_2230F7158(a1, &v30);
      ExecuteNLOnServerMessageBase.init(from:)(&v30);
      v11 = v22;
      v23 = OUTLINED_FUNCTION_2();
      v24(v23);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v11;
    }

    v31 = 2;
    sub_2230FB7A0();
    sub_223200554();
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
    v20 = sub_223200264();
    v21 = v20;
    if (v20)
    {
      v25 = OUTLINED_FUNCTION_7_0();
      sub_2230D94DC(v25, v26);
      goto LABEL_11;
    }

    sub_2230F9E38();
    swift_allocError();
    *v27 = 0xD000000000000033;
    *(v27 + 8) = 0x80000002232223B0;
    *(v27 + 16) = 0;
    swift_willThrow();
    v28 = OUTLINED_FUNCTION_7_0();
    sub_2230D94DC(v28, v29);
    v18 = OUTLINED_FUNCTION_2();
    v19(v18);
    v11 = 0;
    v10 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v10)
  {
    v12 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_sharedUserIdToSpeechPackage);
  }

  type metadata accessor for ExecuteNLOnServerMessage(0);
  v13 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v14 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v11;
}

uint64_t sub_22310F41C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = v5;
  v8 = OUTLINED_FUNCTION_1_7(a1);
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v54 = v8;

  v14 = 0;
  v49 = MEMORY[0x277D84F98];
  while (1)
  {
    v15 = v14;
    if (!v11)
    {
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          return v49;
        }

        v11 = *(v6 + 8 * v14);
        ++v15;
        if (v11)
        {
          v55 = v7;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      result = sub_2232006E4();
      __break(1u);
      return result;
    }

    v55 = v7;
LABEL_8:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v11)));
    v17 = (*(v54 + 48) + v16);
    v18 = v17[1];
    v51 = *v17;
    v19 = (*(v54 + 56) + v16);
    v21 = *v19;
    v20 = v19[1];
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, a2, a3);

    v22 = OUTLINED_FUNCTION_5_9();
    sub_223110BA0(v22, v23);
    v24 = sub_223200264();
    v7 = v55;
    if (v55)
    {
      break;
    }

    v11 &= v11 - 1;
    if (v24)
    {
      v46 = v24;
      swift_isUniquelyReferenced_nonNull_native();
      v57 = v49;
      v56 = sub_22314C358(v51, v18);
      v27 = *(v49 + 16);
      v50 = v28;
      if (__OFADD__(v27, (v28 & 1) == 0))
      {
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      if (sub_2232003D4())
      {
        v56 = sub_22314C358(v51, v18);
        if ((v50 & 1) != (v29 & 1))
        {
          goto LABEL_25;
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_15:

        v49 = v57;
        v30 = *(v57 + 56);
        v31 = *(v30 + 8 * v56);
        *(v30 + 8 * v56) = v46;

        v32 = OUTLINED_FUNCTION_5_9();
        sub_2230D94DC(v32, v33);
      }

      else
      {
        if (v50)
        {
          goto LABEL_15;
        }

LABEL_17:
        OUTLINED_FUNCTION_6_5(v57 + 8 * (v56 >> 6));
        v36 = (v34 + 16 * v35);
        *v36 = v51;
        v36[1] = v18;
        *(*(v57 + 56) + 8 * v35) = v46;
        v37 = OUTLINED_FUNCTION_5_9();
        sub_2230D94DC(v37, v38);

        v39 = *(v57 + 16);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_24;
        }

        v49 = v57;
        *(v57 + 16) = v41;
      }
    }

    else
    {
      v25 = OUTLINED_FUNCTION_5_9();
      sub_2230D94DC(v25, v26);
    }
  }

  v42 = v49;

  v44 = OUTLINED_FUNCTION_5_9();
  sub_2230D94DC(v44, v45);

  return v42;
}

uint64_t sub_22310F6F4(void *a1)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AC8, &qword_223206168);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223110558();
  sub_2232007A4();
  v13 = sub_22310FA54(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_sharedUserIdToSpeechPackage));
  if (!v2)
  {
    v29[0] = v13;
    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_280FCA538, sub_2230D37F0, sub_2230D7754);
    sub_223200654();

    v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_isMuxStateRollback);
    LOBYTE(v29[0]) = 1;
    sub_223200604();
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard);
    if (!v15)
    {
LABEL_6:
      sub_223111658(a1);
      goto LABEL_7;
    }

    v16 = objc_opt_self();
    v29[0] = 0;
    v17 = v15;
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v29];
    v19 = v29[0];
    if (v18)
    {
      v27 = v17;
      v20 = sub_2231FFD24();
      v22 = v21;

      v29[0] = v20;
      v29[1] = v22;
      v28 = 2;
      sub_2230D7754();
      sub_223200654();

      sub_2230D94DC(v20, v22);
      goto LABEL_6;
    }

    v23 = v19;
    sub_2231FFD04();

    swift_willThrow();
  }

LABEL_7:
  result = (*(v7 + 8))(v11, v4);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22310FA54(uint64_t a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_1_7(a1);
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v43 = v2;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v41 = v7;
  v42 = v1;
  if (!v5)
  {
LABEL_2:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_18;
      }

      v5 = *(v1 + 8 * v10);
      ++v8;
      if (v5)
      {
        v8 = v10;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  while (1)
  {
LABEL_6:
    v11 = __clz(__rbit64(v5)) | (v8 << 6);
    v12 = (*(v43 + 48) + 16 * v11);
    v13 = v12[1];
    v45 = *v12;
    v14 = *(*(v43 + 56) + 8 * v11);

    v15 = v14;
    if (!v13)
    {
LABEL_18:

LABEL_19:
      v38 = *MEMORY[0x277D85DE8];
      return v9;
    }

    v16 = v15;
    v17 = objc_opt_self();
    v46[0] = 0;
    v18 = [v17 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:v46];

    v19 = v46[0];
    if (!v18)
    {
      v40 = v19;

      sub_2231FFD04();

      swift_willThrow();

      goto LABEL_19;
    }

    v20 = sub_2231FFD24();
    v22 = v21;

    v44 = v22;
    sub_223110BA0(v20, v22);
    swift_isUniquelyReferenced_nonNull_native();
    v46[0] = v9;
    v23 = sub_22314C358(v45, v13);
    if (__OFADD__(v9[2], (v24 & 1) == 0))
    {
      goto LABEL_22;
    }

    v25 = v23;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AE8, &qword_223206398);
    if (sub_2232003D4())
    {
      break;
    }

LABEL_12:
    if (v26)
    {

      v9 = v46[0];
      v29 = (*(v46[0] + 7) + 16 * v25);
      v30 = *v29;
      v31 = v29[1];
      *v29 = v20;
      v29[1] = v44;
      sub_2230D94DC(v30, v31);
      sub_2230D94DC(v20, v44);
    }

    else
    {
      v9 = v46[0];
      OUTLINED_FUNCTION_6_5(v46[0] + 8 * (v25 >> 6));
      v33 = (v32 + 16 * v25);
      *v33 = v45;
      v33[1] = v13;
      v34 = (v9[7] + 16 * v25);
      *v34 = v20;
      v34[1] = v44;
      sub_2230D94DC(v20, v44);
      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_23;
      }

      v9[2] = v37;
    }

    v5 &= v5 - 1;
    v7 = v41;
    v1 = v42;
    if (!v5)
    {
      goto LABEL_2;
    }
  }

  v27 = sub_22314C358(v45, v13);
  if ((v26 & 1) == (v28 & 1))
  {
    v25 = v27;
    goto LABEL_12;
  }

  result = sub_2232006E4();
  __break(1u);
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ExecuteNLOnServerMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ExecuteNLOnServerMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_7() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ExecuteNLOnServerMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExecuteNLOnServerMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExecuteNLOnServerMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.delegatedUserDialogActs.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 36));
}

uint64_t ExecuteNLOnServerMessage.Builder.delegatedUserDialogActs.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_7() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.fallbackReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.fallbackReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.sharedUserIdToSpeechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 44));
}

uint64_t ExecuteNLOnServerMessage.Builder.sharedUserIdToSpeechPackage.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_7() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessage.Builder.isMuxStateRollback.setter(char a1)
{
  result = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

void *ExecuteNLOnServerMessage.Builder.mostRecentVoiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessage.Builder(0) + 52));
  v2 = v1;
  return v1;
}

void ExecuteNLOnServerMessage.Builder.mostRecentVoiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_7() + 52);

  *(v1 + v2) = v0;
}

void sub_223110384()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_sharedUserIdToSpeechPackage);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes24ExecuteNLOnServerMessage_mostRecentVoiceIdScoreCard);
}

id ExecuteNLOnServerMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecuteNLOnServerMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223110448(uint64_t a1)
{
  v2 = type metadata accessor for ExecuteNLOnServerMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2231104C4()
{
  result = qword_280FCA750;
  if (!qword_280FCA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA750);
  }

  return result;
}

unint64_t sub_223110558()
{
  result = qword_280FCDA00;
  if (!qword_280FCDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDA00);
  }

  return result;
}

unint64_t sub_2231105AC()
{
  result = qword_27D057AC0;
  if (!qword_27D057AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057AC0);
  }

  return result;
}

uint64_t sub_223110600(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057AB0, &qword_223206160);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223110748()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223110900(319, &qword_280FCA490, &qword_27D057AD0, &qword_223206450);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCA820);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_223110900(319, &qword_280FCA530, &qword_27D057AD8, &qword_223206240);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_2230D525C(319, &qword_280FCA440);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_223110954();
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_223110900(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2232002D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_223110954()
{
  if (!qword_280FCA3C0)
  {
    sub_2230FB7F4(255, &qword_280FCA3C8, 0x277CEF520);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA3C0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ExecuteNLOnServerMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223110A9C()
{
  result = qword_27D057AE0;
  if (!qword_27D057AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057AE0);
  }

  return result;
}

unint64_t sub_223110AF4()
{
  result = qword_280FCD9F0;
  if (!qword_280FCD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD9F0);
  }

  return result;
}

unint64_t sub_223110B4C()
{
  result = qword_280FCD9F8;
  if (!qword_280FCD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD9F8);
  }

  return result;
}

uint64_t sub_223110BA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_223110C08(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2230E8DC4(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *ExecuteNLOnServerMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v59 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v53 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v57 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v56 = v13 - v12;
  v14 = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v19 = (v18 - v17);
  *v19 = 15;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  v20 = v15[8];
  __swift_storeEnumTagSinglePayload(v18 - v17 + v20, 1, 1, v7);
  v21 = &v19[v15[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v19[v15[10]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = v15[11];
  *&v19[v23] = 0;
  v24 = v15[12];
  v19[v24] = 7;
  a1(v19);
  v25 = *v19;
  if (v25 == 15)
  {
    goto LABEL_10;
  }

  v26 = *(v19 + 2);
  if (!v26)
  {
    goto LABEL_10;
  }

  v55 = *(v19 + 1);
  sub_2230D1480(&v19[v20], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v31 = sub_223200014();
    __swift_project_value_buffer(v31, qword_280FCE830);
    v32 = sub_223200004();
    v33 = sub_223200254();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v60 = v35;
      *v34 = 136446210;
      v36 = sub_2230F7898();
      v38 = sub_2231A5D38(v36, v37, &v60);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2230CE000, v32, v33, "Could not build %{public}s: Builder has missing required fields", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DD6780](v35, -1, -1);
      MEMORY[0x223DD6780](v34, -1, -1);
    }

    sub_223112268(v19);
    type metadata accessor for ExecuteNLOnServerMessageBase(0);
    v39 = *((*MEMORY[0x277D85000] & *v59) + 0x30);
    v40 = *((*MEMORY[0x277D85000] & *v59) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v54 = v26;
  v28 = v56;
  v27 = v57;
  (*(v57 + 32))(v56, v6, v7);
  if (!*(v21 + 1) || !*(v22 + 1) || (v29 = *&v19[v23]) == 0 || (v30 = v19[v24], v30 == 7))
  {
    (*(v27 + 8))(v28, v7);
    goto LABEL_10;
  }

  v43 = *v21;
  v44 = *v22;
  v45 = v28;
  v46 = v59;
  *(v59 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_delegatedUserDialogActs) = v29;
  *(v46 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_fallbackReason) = v30;
  MEMORY[0x28223BE20](v29);
  *(&v53 - 64) = v25;
  v47 = v54;
  *(&v53 - 7) = v55;
  *(&v53 - 6) = v47;
  *(&v53 - 5) = v45;
  *(&v53 - 4) = v48;
  *(&v53 - 3) = v49;
  *(&v53 - 2) = v50;
  *(&v53 - 1) = v51;

  v41 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v52 = v41;
  sub_223112268(v19);
  if (v41)
  {
  }

  (*(v57 + 8))(v45, v7);
  return v41;
}

void ExecuteNLOnServerMessageBase.init(from:)(uint64_t *a1)
{
  v3 = sub_2231FFFA4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  v8 = sub_2231FFE94();
  v9 = OUTLINED_FUNCTION_9(v8);
  v58 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B08, &qword_2232063B8);
  v17 = OUTLINED_FUNCTION_9(v16);
  v51 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v48 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v57 = a1;
  v25 = OUTLINED_FUNCTION_4_8();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_22311231C();
  sub_223200794();
  if (v1)
  {
    v28 = v57;
    goto LABEL_4;
  }

  v54 = v8;
  v55 = v7;
  v56 = v15;
  v27 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  LOBYTE(v62) = 0;
  sub_22311245C(&qword_27D057B18, sub_2230FB7A0);
  sub_223200554();
  v59 = 0;
  v50 = v16;
  v31 = *&v60[0];
  v32 = *(*&v60[0] + 16);
  v28 = v57;
  if (!v32)
  {

    v34 = MEMORY[0x277D84F90];
LABEL_15:
    LOBYTE(v62) = 1;
    sub_2231123E8();
    v44 = v50;
    v45 = v59;
    sub_223200554();
    v46 = v51;
    if (!v45)
    {
      v47 = v53;
      *(v53 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_fallbackReason) = v60[0];
      *(v47 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_delegatedUserDialogActs) = v34;
      sub_2230F7158(v28, v60);
      ResultCandidateRequestMessageBase.init(from:)(v60);
      (*(v46 + 8))(v22, v50);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return;
    }

    (*(v51 + 8))(v22, v44);

LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v28);
    type metadata accessor for ExecuteNLOnServerMessageBase(0);
    v29 = *((*MEMORY[0x277D85000] & *v53) + 0x30);
    v30 = *((*MEMORY[0x277D85000] & *v53) + 0x34);
    swift_deallocPartialClassInstance();
    return;
  }

  v49 = v22;
  v62 = MEMORY[0x277D84F90];
  sub_223112370(0, v32, 0);
  v33 = 0;
  v34 = v62;
  v52 = v27 + 32;
  v35 = (v31 + 40);
  while (v33 < *(v31 + 16))
  {
    v36 = *(v35 - 1);
    v37 = *v35;
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    v38 = OUTLINED_FUNCTION_4_8();
    sub_223110BA0(v38, v39);
    sub_2231FFF94();
    sub_223112390();
    v40 = v54;
    OUTLINED_FUNCTION_4_8();
    v41 = v59;
    sub_2231FFFD4();
    v59 = v41;
    if (v41)
    {
      (*(v51 + 8))(v49, v50);

      v28 = v57;
      goto LABEL_4;
    }

    v62 = v34;
    v43 = *(v34 + 16);
    v42 = *(v34 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_223112370(v42 > 1, v43 + 1, 1);
      v34 = v62;
    }

    ++v33;
    *(v34 + 16) = v43 + 1;
    (*(v58 + 32))(v34 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v43, v56, v40);
    v35 += 2;
    if (v32 == v33)
    {

      v28 = v57;
      v22 = v49;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_223111658(void *a1)
{
  v3 = v2;
  v4 = v1;
  v51 = sub_2231FFE94();
  v6 = OUTLINED_FUNCTION_9(v51);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B28, &qword_2232063C8);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v46 = &v40 - v20;
  v21 = *(v4 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_delegatedUserDialogActs);
  v22 = *(v21 + 16);
  if (v22)
  {
    v41 = v17;
    v42 = v14;
    v43 = a1;
    v44 = v4;
    v54 = MEMORY[0x277D84F90];
    v45 = v13;
    v47 = v22;
    sub_22311243C(0, v22, 0);
    v23 = v45;
    v24 = 0;
    v25 = v54;
    v49 = v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v48 = v8 + 16;
    v50 = v8 + 8;
    while (v24 < *(v21 + 16))
    {
      (*(v8 + 16))(v23, v49 + *(v8 + 72) * v24, v51);
      sub_223112390();
      v26 = sub_2231FFFE4();
      if (v3)
      {
        v35 = OUTLINED_FUNCTION_5_5();
        v36(v35);

        return;
      }

      v28 = v26;
      v29 = v27;
      v52 = 0;
      v30 = OUTLINED_FUNCTION_5_5();
      v31(v30);
      v54 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_22311243C(v32 > 1, v33 + 1, 1);
        v23 = v45;
        v25 = v54;
      }

      ++v24;
      *(v25 + 16) = v33 + 1;
      v34 = v25 + 16 * v33;
      *(v34 + 32) = v28;
      *(v34 + 40) = v29;
      v3 = v52;
      if (v47 == v24)
      {
        v37 = v25;
        a1 = v43;
        v4 = v44;
        v17 = v41;
        v14 = v42;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_11:
    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22311231C();
    v39 = v46;
    sub_2232007A4();
    v54 = v37;
    v53 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
    sub_22311245C(&qword_280FCA4C8, sub_2230D7754);
    sub_223200654();
    if (v3)
    {
      (*(v17 + 8))(v39, v14);
    }

    else
    {

      LOBYTE(v54) = *(v4 + OBJC_IVAR____TtC16SiriMessageTypes28ExecuteNLOnServerMessageBase_fallbackReason);
      v53 = 1;
      sub_2231124D0();
      sub_223200654();
      sub_223190B78(a1);
      (*(v17 + 8))(v39, v14);
    }
  }
}

void *ExecuteNLOnServerMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ExecuteNLOnServerMessageBase.init(build:)(v1);
}

uint64_t sub_223111AEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;
  v16 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v17 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  v18 = v17[6];
  sub_2230D69D4(a1 + v18);
  v19 = sub_2231FFDA4();
  (*(*(v19 - 8) + 16))(a1 + v18, a5, v19);
  __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v19);
  v20 = (a1 + v17[7]);
  v21 = v20[1];

  *v20 = a6;
  v20[1] = a7;
  v22 = (a1 + v17[8]);
  v23 = v22[1];

  *v22 = a8;
  v22[1] = a9;
  return result;
}

uint64_t sub_223111C54()
{
  v0 = sub_223200464();

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

uint64_t sub_223111CA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2231080E0();
}

uint64_t sub_223111CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_223111C54();
  *a2 = result;
  return result;
}

uint64_t sub_223111CFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230E8F64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223111D30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223111C54();
  *a1 = result;
  return result;
}

uint64_t sub_223111D58(uint64_t a1)
{
  v2 = sub_22311231C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223111D94(uint64_t a1)
{
  v2 = sub_22311231C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExecuteNLOnServerMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ExecuteNLOnServerMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_11() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ExecuteNLOnServerMessageBase.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.delegatedUserDialogActs.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0) + 36));
}

uint64_t ExecuteNLOnServerMessageBase.Builder.delegatedUserDialogActs.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_11() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.fallbackReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ExecuteNLOnServerMessageBase.Builder.fallbackReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

id ExecuteNLOnServerMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecuteNLOnServerMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223112268(uint64_t a1)
{
  v2 = type metadata accessor for ExecuteNLOnServerMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22311231C()
{
  result = qword_280FCD928;
  if (!qword_280FCD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD928);
  }

  return result;
}

unint64_t sub_223112390()
{
  result = qword_280FCE5D8;
  if (!qword_280FCE5D8)
  {
    sub_2231FFE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE5D8);
  }

  return result;
}

unint64_t sub_2231123E8()
{
  result = qword_27D057B20;
  if (!qword_27D057B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B20);
  }

  return result;
}

uint64_t sub_22311245C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057B10, &qword_2232063C0);
    a2();
    OUTLINED_FUNCTION_4_8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2231124D0()
{
  result = qword_280FCA830;
  if (!qword_280FCA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA830);
  }

  return result;
}

uint64_t sub_2231125D0()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2231126F4();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCA820);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_2231126F4()
{
  if (!qword_280FCA490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057AD0, &qword_223206450);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA490);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ExecuteNLOnServerMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223112838()
{
  result = qword_27D057B30;
  if (!qword_27D057B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B30);
  }

  return result;
}

unint64_t sub_223112890()
{
  result = qword_280FCD918;
  if (!qword_280FCD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD918);
  }

  return result;
}

unint64_t sub_2231128E8()
{
  result = qword_280FCD920;
  if (!qword_280FCD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD920);
  }

  return result;
}

uint64_t sub_2231129C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449756374 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67756C50776F6C66 && a2 == 0xEC00000064496E69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223112A8C(char a1)
{
  if (a1)
  {
    return 0x67756C50776F6C66;
  }

  else
  {
    return 0x6449756374;
  }
}

uint64_t sub_223112AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231129C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223112AF8(uint64_t a1)
{
  v2 = sub_223113F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223112B34(uint64_t a1)
{
  v2 = sub_223113F14();

  return MEMORY[0x2821FE720](a1, v2);
}

void *ExecutionFinalizedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ExecutionFinalizedMessage.init(build:)(v1);
}

void *ExecutionFinalizedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v75 = a1;
  v76 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v64 - v4;
  v6 = sub_2231FFDA4();
  v7 = OUTLINED_FUNCTION_9(v6);
  v71 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 15;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v17 = v13[8];
  v73 = v6;
  __swift_storeEnumTagSinglePayload(&v16[v17], 1, 1, v6);
  v18 = &v16[v13[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v16[v13[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v16[v13[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v16[v13[12]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v16[v13[13]];
  *v22 = 0;
  v22[1] = 0;
  v75(v16);
  v23 = *v16;
  if (v23 == 15)
  {
    goto LABEL_13;
  }

  v24 = *(v16 + 2);
  if (!v24)
  {
    goto LABEL_13;
  }

  v75 = *(v16 + 1);
  sub_2230D1480(&v16[v17], v5);
  v25 = v73;
  if (__swift_getEnumTagSinglePayload(v5, 1, v73) == 1)
  {
    sub_2230D69D4(v5);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v39 = sub_223200014();
    __swift_project_value_buffer(v39, qword_280FCE830);
    v40 = sub_223200004();
    v41 = sub_223200254();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v77 = v43;
      *v42 = 136446210;
      v44 = sub_2230F7898();
      v46 = sub_2231A5D38(v44, v45, &v77);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2230CE000, v40, v41, "Could not build %{public}s: Builder has missing required fields", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x223DD6780](v43, -1, -1);
      MEMORY[0x223DD6780](v42, -1, -1);
    }

    sub_223113E78(v16);
    v47 = *((*MEMORY[0x277D85000] & *v76) + 0x30);
    v48 = *((*MEMORY[0x277D85000] & *v76) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v69 = v24;
  v70 = v23;
  v26 = v71;
  v27 = v72;
  (*(v71 + 32))(v72, v5, v25);
  v28 = *(v18 + 1);
  if (!v28)
  {
    (*(v26 + 8))(v27, v25);
    goto LABEL_13;
  }

  if (!*(v19 + 1) || (v29 = *(v20 + 1)) == 0 || (v30 = *(v21 + 1)) == 0)
  {
    (*(v26 + 8))(v72, v25);
    goto LABEL_13;
  }

  ObjectType = *(v19 + 1);
  v31 = *v18;
  v32 = *v19;
  v66 = *v20;
  v67 = *v21;
  v68 = v32;
  v33 = v22[1];
  if (v33)
  {
    v34 = *v22;
    v35 = v29;

    v37 = v30;
    v38 = v69;
  }

  else
  {
    v51 = qword_280FCA778;
    v65 = v29;

    v52 = v30;

    v38 = v69;
    if (v51 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v53 = sub_223200014();
    __swift_project_value_buffer(v53, qword_280FCE830);
    v54 = sub_223200004();
    v55 = sub_223200254();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2230CE000, v54, v55, "Warning: ExecutionFinalizedMessage being built without UserID. Falling back on default UserID. This may result in issues in multi-user setups.", v56, 2u);
      MEMORY[0x223DD6780](v56, -1, -1);
    }

    v33 = 0x80000002232216F0;
    v34 = 0xD000000000000024;
    v35 = v65;
    v37 = v52;
  }

  v57 = v76;
  v58 = (v76 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId);
  v59 = v67;
  *v58 = v66;
  v58[1] = v35;
  v60 = (v57 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId);
  *v60 = v59;
  v60[1] = v37;
  MEMORY[0x28223BE20](v36);
  *(&v64 - 80) = v70;
  *(&v64 - 9) = v75;
  *(&v64 - 8) = v38;
  v61 = v72;
  *(&v64 - 7) = v72;
  *(&v64 - 6) = v31;
  v62 = v68;
  *(&v64 - 5) = v28;
  *(&v64 - 4) = v62;
  *(&v64 - 3) = ObjectType;
  *(&v64 - 2) = v34;
  *(&v64 - 1) = v33;
  v49 = TRPCandidateRequestMessageBase.init(build:)(sub_223113ED4);

  v63 = v49;
  sub_223113E78(v16);
  if (v49)
  {
  }

  (*(v71 + 8))(v61, v25);
  return v49;
}

uint64_t sub_2231131BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  v18 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v19 = type metadata accessor for TRPCandidateRequestMessageBase.Builder(0);
  v20 = v19[6];
  sub_2230D69D4(a1 + v20);
  v21 = sub_2231FFDA4();
  (*(*(v21 - 8) + 16))(a1 + v20, a5, v21);
  __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v21);
  v22 = (a1 + v19[7]);
  v23 = v22[1];

  *v22 = a6;
  v22[1] = a7;
  v24 = (a1 + v19[9]);
  v25 = v24[1];

  *v24 = a8;
  v24[1] = a9;
  v26 = (a1 + v19[8]);
  v27 = v26[1];

  *v26 = a10;
  v26[1] = a11;
  return result;
}

void *ExecutionFinalizedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v23[6] = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B38, &qword_2232065A8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223113F14();
  sub_223200794();
  if (v2)
  {
    v20 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v15 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_3();
    v12 = v11;
    LOBYTE(v23[0]) = 0;
    v13 = OUTLINED_FUNCTION_9_3();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId);
    *v17 = v10;
    v17[1] = v12;
    v18 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId);
    *v18 = v13;
    v18[1] = v19;
    sub_2230F7158(a1, v23);
    v20 = TRPCandidateRequestMessageBase.init(from:)(v23);
    v21 = OUTLINED_FUNCTION_6_6();
    v22(v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v20;
}

uint64_t ExecutionFinalizedMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B40, &qword_2232065B0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223113F14();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId + 8);
  v20 = 1;
  sub_2232005F4();
  if (!v2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId);
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId + 8);
    v19 = 0;
    sub_2232005F4();
    sub_2231E5494(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t ExecutionFinalizedMessage.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_description);
  v4 = sub_2232000C4();
  v6 = v5;

  v9 = v4;
  v10 = v6;
  MEMORY[0x223DD5AA0](0x64497563743C202CLL, 0xEA0000000000203ALL);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000012, 0x80000002232224D0);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t ExecutionFinalizedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecutionFinalizedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ExecutionFinalizedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_5() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ExecutionFinalizedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.tcuId.getter()
{
  v0 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.flowPluginId.getter()
{
  v0 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionFinalizedMessage.Builder.flowPluginId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ExecutionFinalizedMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExecutionFinalizedMessage.Builder(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ExecutionFinalizedMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 44));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_223113DA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_tcuId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25ExecutionFinalizedMessage_flowPluginId + 8);
}

id ExecutionFinalizedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223113E78(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionFinalizedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223113F14()
{
  result = qword_280FCD298;
  if (!qword_280FCD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD298);
  }

  return result;
}

uint64_t sub_223114028()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for ExecutionFinalizedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223114214()
{
  result = qword_27D057B48;
  if (!qword_27D057B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B48);
  }

  return result;
}

unint64_t sub_22311426C()
{
  result = qword_280FCD288;
  if (!qword_280FCD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD288);
  }

  return result;
}

unint64_t sub_2231142C4()
{
  result = qword_280FCD290;
  if (!qword_280FCD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD290);
  }

  return result;
}

uint64_t ExecutionSystemSwitchedMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId);
  a1[1] = v2;
}

void *ExecutionSystemSwitchedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v5[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = v5[9];
  v8[v11] = 2;
  v12 = &v8[v5[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  a1(v8);
  v13 = v8[v11];
  if (v13 == 2)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v14 = sub_223200014();
    __swift_project_value_buffer(v14, qword_280FCE830);
    v15 = sub_223200004();
    v16 = sub_223200254();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136446210;
    v19 = sub_2230F7898();
    v21 = sub_2231A5D38(v19, v20, &v34);

    *(v17 + 4) = v21;
    v22 = "Could not build %{public}s: switchType parameter is missing from Builder";
LABEL_12:
    _os_log_impl(&dword_2230CE000, v15, v16, v22, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x223DD6780](v18, -1, -1);
    MEMORY[0x223DD6780](v17, -1, -1);
LABEL_13:

    sub_223115B3C(v8);
    type metadata accessor for ExecutionSystemSwitchedMessage(0);
    v30 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v31 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v23 = *(v12 + 1);
  if (!v23)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v26 = sub_223200014();
    __swift_project_value_buffer(v26, qword_280FCE830);
    v15 = sub_223200004();
    v16 = sub_223200254();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136446210;
    v27 = sub_2230F7898();
    v29 = sub_2231A5D38(v27, v28, &v34);

    *(v17 + 4) = v29;
    v22 = "Could not build %{public}s: userId parameter is missing from Builder";
    goto LABEL_12;
  }

  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_switchType) = v13 & 1;
  v24 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId);
  *v24 = *v12;
  v24[1] = v23;
  MEMORY[0x28223BE20](v23);
  *(&v33 - 2) = v8;

  v25 = SessionMessageBase.init(build:)(sub_223115BB8);
  sub_223115B3C(v8);
  return v25;
}

uint64_t sub_22311476C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = *(type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0) + 24);
  v8 = *(type metadata accessor for SessionMessageBase.Builder(0) + 24);

  return sub_2230DAEC8(a2 + v7, a1 + v8);
}

void ExecutionSystemSwitchedMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B50, &qword_223206780);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223115BC0();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for ExecutionSystemSwitchedMessage(0);
    v9 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
    v10 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223115C14();
    OUTLINED_FUNCTION_5_6();
    *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_switchType) = v15[0];
    OUTLINED_FUNCTION_7_6();
    sub_2231105AC();
    OUTLINED_FUNCTION_5_6();
    v11 = v15[1];
    v12 = (v0 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId);
    *v12 = v15[0];
    v12[1] = v11;
    sub_2230F7158(v3, v15);
    SessionMessageBase.init(from:)(v15);
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_223114A64()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B68, &unk_223206788);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_223115BC0();
  sub_2232007A4();
  LOBYTE(v15[0]) = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_switchType);
  sub_223115C68();
  sub_223200654();
  if (!v1)
  {
    v14 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId + 8);
    v15[0] = *(v2 + OBJC_IVAR____TtC16SiriMessageTypes30ExecutionSystemSwitchedMessage_userId);
    v15[1] = v14;
    OUTLINED_FUNCTION_7_6();
    sub_2230D37F0();

    sub_223200654();

    sub_2230D46B0(v4);
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_9_0();
}

uint64_t ExecutionSystemSwitchedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ExecutionSystemSwitchedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_10_3() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ExecutionSystemSwitchedMessage.Builder.switchType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.switchType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.userId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ExecutionSystemSwitchedMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0) + 32));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_223114F24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002232225F0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000223222610 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223115030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223114F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223115058(uint64_t a1)
{
  v2 = sub_223115CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223115094(uint64_t a1)
{
  v2 = sub_223115CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231150D0(uint64_t a1)
{
  v2 = sub_223115D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311510C(uint64_t a1)
{
  v2 = sub_223115D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223115148(uint64_t a1)
{
  v2 = sub_223115D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223115184(uint64_t a1)
{
  v2 = sub_223115D64();

  return MEMORY[0x2821FE720](a1, v2);
}

void ExecutionSystemSwitchedMessage.SwitchType.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B78, &qword_223206798);
  v4 = OUTLINED_FUNCTION_9(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B80, &qword_2232067A0);
  v11 = OUTLINED_FUNCTION_9(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B88, &qword_2232067A8);
  OUTLINED_FUNCTION_9(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_223115CBC();
  sub_2232007A4();
  v28 = (v20 + 8);
  if (v26)
  {
    OUTLINED_FUNCTION_7_6();
    sub_223115D10();
    v29 = v32;
    sub_2232005B4();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_223115D64();
    sub_2232005B4();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  OUTLINED_FUNCTION_9_0();
}

uint64_t ExecutionSystemSwitchedMessage.SwitchType.hashValue.getter()
{
  v1 = *v0;
  sub_223200744();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void ExecutionSystemSwitchedMessage.SwitchType.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v54 = v0;
  v2 = v1;
  v51 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057BA8, &qword_2232067B0);
  OUTLINED_FUNCTION_9(v53);
  v50 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057BB0, &qword_2232067B8);
  OUTLINED_FUNCTION_9(v10);
  v49 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057BB8, &unk_2232067C0);
  OUTLINED_FUNCTION_9(v17);
  v52 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  v23 = v46 - v22;
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_223115CBC();
  v25 = v54;
  sub_223200794();
  if (v25)
  {
    goto LABEL_10;
  }

  v47 = v10;
  v48 = v16;
  v54 = v2;
  v26 = v53;
  v27 = sub_223200594();
  v28 = sub_2230E0B80(v27, 0);
  if (v30 == v31 >> 1)
  {
    v53 = v28;
LABEL_9:
    v41 = sub_2232003A4();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v43 = &type metadata for ExecutionSystemSwitchedMessage.SwitchType;
    sub_223200484();
    sub_223200394();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v23, v17);
    v2 = v54;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v46[1] = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    v33 = sub_2230E0B40(v30 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      if (v32)
      {
        OUTLINED_FUNCTION_7_6();
        sub_223115D10();
        v38 = v9;
        OUTLINED_FUNCTION_3();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v38, v26);
      }

      else
      {
        sub_223115D64();
        v45 = v48;
        OUTLINED_FUNCTION_3();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v45, v47);
      }

      (*(v40 + 8))(v23, v35);
      *v39 = v32;
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_11;
    }

    v53 = v33;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_2231158FC()
{
  v0 = sub_223200464();

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

uint64_t sub_2231159B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2231158FC();
  *a2 = result;
  return result;
}

uint64_t sub_2231159E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230E9254(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223115A14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2231158FC();
  *a1 = result;
  return result;
}

uint64_t sub_223115A3C(uint64_t a1)
{
  v2 = sub_223115BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223115A78(uint64_t a1)
{
  v2 = sub_223115BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

id ExecutionSystemSwitchedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutionSystemSwitchedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223115B3C(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionSystemSwitchedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223115BC0()
{
  result = qword_27D057B58;
  if (!qword_27D057B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B58);
  }

  return result;
}

unint64_t sub_223115C14()
{
  result = qword_27D057B60;
  if (!qword_27D057B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B60);
  }

  return result;
}

unint64_t sub_223115C68()
{
  result = qword_27D057B70;
  if (!qword_27D057B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B70);
  }

  return result;
}

unint64_t sub_223115CBC()
{
  result = qword_27D057B90;
  if (!qword_27D057B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B90);
  }

  return result;
}

unint64_t sub_223115D10()
{
  result = qword_27D057B98;
  if (!qword_27D057B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057B98);
  }

  return result;
}

unint64_t sub_223115D64()
{
  result = qword_27D057BA0;
  if (!qword_27D057BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BA0);
  }

  return result;
}

unint64_t sub_223115DBC()
{
  result = qword_27D057BC0;
  if (!qword_27D057BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BC0);
  }

  return result;
}

void sub_223115EB8()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  if (v0 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    if (v1 <= 0x3F)
    {
      sub_2230F6D30();
      if (v2 <= 0x3F)
      {
        sub_2230D525C(319, &qword_27D057BD8);
        if (v3 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCA740);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *sub_223116004(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231160E4()
{
  result = qword_27D057BE0;
  if (!qword_27D057BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BE0);
  }

  return result;
}

unint64_t sub_22311613C()
{
  result = qword_27D057BE8;
  if (!qword_27D057BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BE8);
  }

  return result;
}

unint64_t sub_223116194()
{
  result = qword_27D057BF0;
  if (!qword_27D057BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BF0);
  }

  return result;
}

unint64_t sub_2231161EC()
{
  result = qword_27D057BF8;
  if (!qword_27D057BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057BF8);
  }

  return result;
}

unint64_t sub_223116244()
{
  result = qword_27D057C00;
  if (!qword_27D057C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C00);
  }

  return result;
}

unint64_t sub_22311629C()
{
  result = qword_27D057C08;
  if (!qword_27D057C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C08);
  }

  return result;
}

unint64_t sub_2231162F4()
{
  result = qword_27D057C10;
  if (!qword_27D057C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C10);
  }

  return result;
}

unint64_t sub_22311634C()
{
  result = qword_27D057C18;
  if (!qword_27D057C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C18);
  }

  return result;
}

unint64_t sub_2231163A4()
{
  result = qword_27D057C20;
  if (!qword_27D057C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C20);
  }

  return result;
}

unint64_t sub_2231163FC()
{
  result = qword_27D057C28;
  if (!qword_27D057C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C28);
  }

  return result;
}

uint64_t sub_223116490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54686372616573 && a2 == 0xEA00000000006C6FLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002232226A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223116568(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6F54686372616573;
  }
}

uint64_t sub_2231165B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223116490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231165D8(uint64_t a1)
{
  v2 = sub_2231169B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223116614(uint64_t a1)
{
  v2 = sub_2231169B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223116650(uint64_t a1)
{
  v2 = sub_223116A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311668C(uint64_t a1)
{
  v2 = sub_223116A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231166C8(uint64_t a1)
{
  v2 = sub_223116A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223116704(uint64_t a1)
{
  v2 = sub_223116A58();

  return MEMORY[0x2821FE720](a1, v2);
}

void FallbackToIFRequestedMessage.PrescribedTool.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C30, &qword_223206D20);
  v4 = OUTLINED_FUNCTION_9(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C38, &qword_223206D28);
  v11 = OUTLINED_FUNCTION_9(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C40, &qword_223206D30);
  OUTLINED_FUNCTION_9(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2231169B0();
  sub_2232007A4();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_223116A04();
    v29 = v32;
    sub_2232005B4();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_223116A58();
    sub_2232005B4();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  OUTLINED_FUNCTION_9_0();
}

unint64_t sub_2231169B0()
{
  result = qword_27D057C48;
  if (!qword_27D057C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C48);
  }

  return result;
}

unint64_t sub_223116A04()
{
  result = qword_27D057C50;
  if (!qword_27D057C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C50);
  }

  return result;
}

unint64_t sub_223116A58()
{
  result = qword_27D057C58;
  if (!qword_27D057C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C58);
  }

  return result;
}

uint64_t FallbackToIFRequestedMessage.PrescribedTool.hashValue.getter()
{
  v1 = *v0;
  sub_223200744();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void FallbackToIFRequestedMessage.PrescribedTool.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v53 = v0;
  v3 = v2;
  v50 = v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C60, &qword_223206D38);
  OUTLINED_FUNCTION_9(v52);
  v49 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C68, &qword_223206D40);
  OUTLINED_FUNCTION_9(v11);
  v48 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C70, &unk_223206D48);
  OUTLINED_FUNCTION_9(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  v22 = v45 - v21;
  v23 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2231169B0();
  v24 = v53;
  sub_223200794();
  if (v24)
  {
    goto LABEL_10;
  }

  v46 = v11;
  v47 = v1;
  v53 = v3;
  v25 = v52;
  v26 = sub_223200594();
  v27 = sub_2230E0B80(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = v27;
LABEL_9:
    v40 = sub_2232003A4();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v42 = &type metadata for FallbackToIFRequestedMessage.PrescribedTool;
    sub_223200484();
    sub_223200394();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    v3 = v53;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v45[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_2230E0B40(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        sub_223116A04();
        v37 = v10;
        OUTLINED_FUNCTION_3();
        v38 = v50;
        v39 = v51;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v37, v25);
      }

      else
      {
        sub_223116A58();
        v44 = v47;
        OUTLINED_FUNCTION_3();
        v38 = v50;
        v39 = v51;
        swift_unknownObjectRelease();
        (*(v48 + 8))(v44, v46);
      }

      (*(v39 + 8))(v22, v34);
      *v38 = v31;
      __swift_destroy_boxed_opaque_existential_1(v53);
      goto LABEL_11;
    }

    v52 = v32;
    goto LABEL_9;
  }

  __break(1u);
}

BOOL sub_223116FE8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230E93E4();
  *a2 = result;
  return result;
}

uint64_t sub_22311701C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223116F78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_223117048@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2230E93E4();
  *a1 = result;
  return result;
}

uint64_t sub_223117074(uint64_t a1)
{
  v2 = sub_223117A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231170B0(uint64_t a1)
{
  v2 = sub_223117A74();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FallbackToIFRequestedMessage.init(build:)(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = 15;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = v4[8];
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[v4[9]];
  *v10 = 0;
  v10[1] = 0;
  v11 = v4[10];
  v7[v11] = 2;
  a1(v7);
  *(v1 + OBJC_IVAR____TtC16SiriMessageTypes28FallbackToIFRequestedMessage_prescribedTool) = v7[v11];
  v15 = v7;
  v12 = RequestMessageBase.init(build:)(sub_223117A10);
  sub_223117A18(v7);
  return v12;
}

uint64_t sub_22311724C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

void FallbackToIFRequestedMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C78, &qword_223206D58);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223117A74();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for FallbackToIFRequestedMessage(0);
    v9 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
    v10 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_223117AE8();
    sub_2232004C4();
    *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28FallbackToIFRequestedMessage_prescribedTool) = v13[0];
    sub_2230F7158(v3, v13);
    RequestMessageBase.init(from:)(v13);
    v11 = OUTLINED_FUNCTION_2();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_223117540()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C90, &qword_223206D60);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_223117A74();
  sub_2232007A4();
  v12 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes28FallbackToIFRequestedMessage_prescribedTool);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057C98, &unk_223206D68);
  sub_223117B3C();
  sub_223200654();
  if (!v1)
  {
    sub_2230D77A8(v4);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_9_0();
}

uint64_t FallbackToIFRequestedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FallbackToIFRequestedMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FallbackToIFRequestedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FallbackToIFRequestedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t FallbackToIFRequestedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_7() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FallbackToIFRequestedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for FallbackToIFRequestedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FallbackToIFRequestedMessage.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FallbackToIFRequestedMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FallbackToIFRequestedMessage.Builder.prescribedTool.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FallbackToIFRequestedMessage.Builder.prescribedTool.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

id FallbackToIFRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FallbackToIFRequestedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223117A18(uint64_t a1)
{
  v2 = type metadata accessor for FallbackToIFRequestedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223117A74()
{
  result = qword_27D057C80;
  if (!qword_27D057C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C80);
  }

  return result;
}

unint64_t sub_223117AE8()
{
  result = qword_27D057C88;
  if (!qword_27D057C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057C88);
  }

  return result;
}

unint64_t sub_223117B3C()
{
  result = qword_27D057CA0;
  if (!qword_27D057CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057C98, &unk_223206D68);
    sub_223117BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CA0);
  }

  return result;
}

unint64_t sub_223117BC0()
{
  result = qword_27D057CA8;
  if (!qword_27D057CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CA8);
  }

  return result;
}

unint64_t sub_223117C18()
{
  result = qword_27D057CB0;
  if (!qword_27D057CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CB0);
  }

  return result;
}

uint64_t sub_223117D1C()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_27D057CC8);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for FallbackToIFRequestedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_223117EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223117FC8()
{
  result = qword_27D057CD0;
  if (!qword_27D057CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CD0);
  }

  return result;
}

unint64_t sub_223118020()
{
  result = qword_27D057CD8;
  if (!qword_27D057CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CD8);
  }

  return result;
}

unint64_t sub_223118078()
{
  result = qword_27D057CE0;
  if (!qword_27D057CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CE0);
  }

  return result;
}

unint64_t sub_2231180D0()
{
  result = qword_27D057CE8;
  if (!qword_27D057CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CE8);
  }

  return result;
}

unint64_t sub_223118128()
{
  result = qword_27D057CF0;
  if (!qword_27D057CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CF0);
  }

  return result;
}

unint64_t sub_223118180()
{
  result = qword_27D057CF8;
  if (!qword_27D057CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057CF8);
  }

  return result;
}

unint64_t sub_2231181D8()
{
  result = qword_27D057D00;
  if (!qword_27D057D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D00);
  }

  return result;
}

unint64_t sub_223118230()
{
  result = qword_27D057D08;
  if (!qword_27D057D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D08);
  }

  return result;
}

unint64_t sub_223118288()
{
  result = qword_27D057D10;
  if (!qword_27D057D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D10);
  }

  return result;
}

unint64_t sub_2231182E0()
{
  result = qword_27D057D18;
  if (!qword_27D057D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D18);
  }

  return result;
}

uint64_t FallbackToPommesMessage.userId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId);
  a1[1] = v2;
}

uint64_t FallbackToPommesMessage.pommesCandidateId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId;
  v4 = sub_2231FFF14();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_2231183F4()
{
  v1 = sub_2231FFF14();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v9 = (v8 - v7);
  (*(v4 + 16))(v8 - v7, v0 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId, v1);
  v10 = *(v4 + 88);
  v11 = OUTLINED_FUNCTION_13();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x277D56618])
  {
    v14 = *(v4 + 96);
    v15 = OUTLINED_FUNCTION_13();
    v16(v15);
    v17 = *v9;
    v18 = v9[1];
  }

  else if (v13 == *MEMORY[0x277D56620])
  {
    v19 = *(v4 + 96);
    v20 = OUTLINED_FUNCTION_13();
    v21(v20);
    v22 = *v9;
    v23 = v9[1];
    v24 = v9[3];
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v25 = sub_223200014();
    __swift_project_value_buffer(v25, qword_280FCE830);
    v26 = sub_223200004();
    v27 = sub_223200254();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2230CE000, v26, v27, "No resultCandidateId for unknown pommesCandidateId", v28, 2u);
      OUTLINED_FUNCTION_14();
    }

    v29 = *(v4 + 8);
    v30 = OUTLINED_FUNCTION_13();
    v31(v30);
  }

  return OUTLINED_FUNCTION_2_1();
}

void *FallbackToPommesMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_13();
  return FallbackToPommesMessage.init(build:)(v2, v3);
}

void *FallbackToPommesMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v106 = a2;
  v107 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_2231FFF14();
  v3 = OUTLINED_FUNCTION_9(v2);
  v99 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v96 = v7;
  MEMORY[0x28223BE20](v8);
  v95 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D20, &unk_2232072B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_15();
  v98 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v97 = &v89 - v15;
  MEMORY[0x28223BE20](v14);
  v101 = (&v89 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v89 - v19;
  v21 = sub_2231FFDA4();
  v22 = OUTLINED_FUNCTION_9(v21);
  v102 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v103 = v27 - v26;
  v28 = type metadata accessor for FallbackToPommesMessage.Builder(0);
  v29 = (v28 - 8);
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_2();
  v33 = (v32 - v31);
  *v33 = 15;
  *(v33 + 1) = 0;
  *(v33 + 2) = 0;
  v34 = v29[8];
  v104 = v21;
  __swift_storeEnumTagSinglePayload(v32 - v31 + v34, 1, 1, v21);
  v35 = &v33[v29[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v33[v29[10]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v33[v29[11]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = v29[12];
  *&v33[v38] = 0;
  v39 = v29[13];
  v33[v39] = 7;
  v40 = v29[14];
  v100 = v2;
  __swift_storeEnumTagSinglePayload(&v33[v40], 1, 1, v2);
  v107(v33);
  v41 = *v33;
  if (v41 == 15 || !*(v33 + 2))
  {
    goto LABEL_10;
  }

  v106 = *(v33 + 2);
  LODWORD(v107) = v41;
  v94 = *(v33 + 1);
  sub_2230D3008(&v33[v34], v20, &qword_27D0575C0, &qword_2232035E0);
  v42 = v104;
  if (__swift_getEnumTagSinglePayload(v20, 1, v104) == 1)
  {
    sub_2230D40E0(v20, &qword_27D0575C0, &qword_2232035E0);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v47 = sub_223200014();
    __swift_project_value_buffer(v47, qword_280FCE830);
    v48 = sub_223200004();
    v49 = sub_223200254();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v109[0] = v51;
      *v50 = 136446210;
      v52 = sub_2230F7898();
      v54 = sub_2231A5D38(v52, v53, v109);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2230CE000, v48, v49, "Could not build %{public}s: Builder has missing required fields", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_22311A50C(v33);
LABEL_15:
    type metadata accessor for FallbackToPommesMessage(0);
    v55 = *((*MEMORY[0x277D85000] & *v108) + 0x30);
    v56 = *((*MEMORY[0x277D85000] & *v108) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v43 = v102;
  (*(v102 + 32))(v103, v20, v42);
  v44 = *(v35 + 1);
  if (!v44 || (v45 = *(v37 + 1)) == 0 || (v46 = *&v33[v38]) == 0 || v33[v39] == 7)
  {
    (*(v43 + 8))(v103, v42);
    goto LABEL_10;
  }

  v90 = v33[v39];
  v93 = v45;
  v91 = *v35;
  v89 = *v37;
  v59 = v97;
  sub_2230D3008(&v33[v40], v97, &qword_27D057D20, &unk_2232072B0);
  v60 = v100;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v100);
  v92 = v46;
  if (EnumTagSinglePayload != 1)
  {
    v64 = v99;
    v65 = *(v99 + 32);
    v66 = v95;
    v65(v95, v59, v60);
    v63 = v101;
    v65(v101, v66, v60);
    OUTLINED_FUNCTION_19();

    goto LABEL_21;
  }

  sub_2230D40E0(v59, &qword_27D057D20, &unk_2232072B0);
  v62 = *(v36 + 1);
  v63 = v101;
  v64 = v99;
  if (v62)
  {
    *v101 = *v36;
    v63[1] = v62;
    (*(v64 + 104))(v63, *MEMORY[0x277D56618], v60);
    OUTLINED_FUNCTION_19();
LABEL_21:

    goto LABEL_22;
  }

  __swift_storeEnumTagSinglePayload(v101, 1, 1, v60);
LABEL_22:
  v67 = v103;
  v68 = v98;
  sub_2230D3008(v63, v98, &qword_27D057D20, &unk_2232072B0);
  if (__swift_getEnumTagSinglePayload(v68, 1, v60) == 1)
  {

    sub_2230D40E0(v68, &qword_27D057D20, &unk_2232072B0);
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v69 = sub_223200014();
    __swift_project_value_buffer(v69, qword_280FCE830);
    v70 = sub_223200004();
    v71 = sub_223200254();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v63;
      v74 = swift_slowAlloc();
      v109[0] = v74;
      *v72 = 136446210;
      v75 = sub_2230F7898();
      v77 = sub_2231A5D38(v75, v76, v109);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_2230CE000, v70, v71, "Could not build %{public}s: Builder missing pommesCandidateId or resultCandidateId", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();

      v78 = v73;
    }

    else
    {

      v78 = v63;
    }

    sub_2230D40E0(v78, &qword_27D057D20, &unk_2232072B0);
    sub_22311A50C(v33);
    (*(v102 + 8))(v67, v104);
    goto LABEL_15;
  }

  v79 = v96;
  (*(v64 + 32))(v96, v68, v60);
  v80 = v108;
  v81 = (v108 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId);
  v82 = v92;
  v83 = v93;
  *v81 = v89;
  v81[1] = v83;
  *(v80 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_delegatedUserDialogActs) = v82;
  *(v80 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_fallbackReason) = v90;
  v84 = (*(v64 + 16))(v80 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId, v79, v60);
  MEMORY[0x28223BE20](v84);
  *(&v89 - 48) = v107;
  v85 = v106;
  *(&v89 - 5) = v94;
  *(&v89 - 4) = v85;
  v86 = v91;
  *(&v89 - 3) = v87;
  *(&v89 - 2) = v86;
  *(&v89 - 1) = v44;
  v57 = RequestMessageBase.init(build:)(sub_22311A588);
  (*(v64 + 8))(v79, v60);
  sub_2230D40E0(v63, &qword_27D057D20, &unk_2232072B0);
  v88 = v57;
  sub_22311A50C(v33);
  if (v57)
  {
  }

  (*(v43 + 8))(v103, v104);
  return v57;
}

uint64_t sub_223118F90(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  v13 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v14 = type metadata accessor for RequestMessageBase.Builder(0);
  v15 = *(v14 + 24);
  sub_2230D40E0(a1 + v15, &qword_27D0575C0, &qword_2232035E0);
  v16 = sub_2231FFDA4();
  (*(*(v16 - 8) + 16))(a1 + v15, a5, v16);
  __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v16);
  v17 = (a1 + *(v14 + 28));
  v18 = v17[1];

  *v17 = a6;
  v17[1] = a7;
  return result;
}

void FallbackToPommesMessage.init(from:)(uint64_t *a1)
{
  v2 = sub_2231FFF14();
  v63 = OUTLINED_FUNCTION_9(v2);
  v64 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_2();
  v62 = v7 - v6;
  v8 = sub_2231FFFA4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v13 = sub_2231FFE94();
  v14 = OUTLINED_FUNCTION_9(v13);
  v71 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D28, &unk_2232072C0);
  v22 = OUTLINED_FUNCTION_9(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = v61 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v70 = a1;
  v31 = __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_22311A59C();
  v32 = v72;
  sub_223200794();
  if (v32)
  {
    OUTLINED_FUNCTION_11_2();
    __swift_destroy_boxed_opaque_existential_1(v70);
    if ((v20 & 1) == 0)
    {
      v33 = v67;
      if (v31)
      {
        v34 = *(v67 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId + 8);
      }

      if (v24)
      {
        v35 = *(v33 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_delegatedUserDialogActs);
      }

      type metadata accessor for FallbackToPommesMessage(0);
      v36 = *((*MEMORY[0x277D85000] & *v33) + 0x30);
      v37 = *((*MEMORY[0x277D85000] & *v33) + 0x34);
      swift_deallocPartialClassInstance();
    }
  }

  else
  {
    v68 = v12;
    v69 = v20;
    v61[2] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
    LOBYTE(v75) = 1;
    sub_22311A5F0(&qword_27D057B18, sub_2230FB7A0);
    sub_223200554();
    v38 = *&v73[0];
    v39 = *(*&v73[0] + 16);
    if (v39)
    {
      v61[0] = v28;
      v61[1] = v21;
      v75 = MEMORY[0x277D84F90];
      sub_223112370(0, v39, 0);
      v40 = 0;
      v72 = v75;
      v65 = v71 + 32;
      v66 = v38;
      v41 = (v38 + 40);
      while (v40 < *(v38 + 16))
      {
        v43 = *(v41 - 1);
        v42 = *v41;
        v74 = 0;
        memset(v73, 0, sizeof(v73));
        sub_223110BA0(v43, v42);
        sub_2231FFF94();
        OUTLINED_FUNCTION_6_7();
        sub_22311A668(&qword_280FCE5D8, v44);
        sub_2231FFFD4();
        v45 = v72;
        v75 = v72;
        v47 = *(v72 + 16);
        v46 = *(v72 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_223112370(v46 > 1, v47 + 1, 1);
          v45 = v75;
        }

        ++v40;
        *(v45 + 16) = v47 + 1;
        v48 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v72 = v45;
        (*(v71 + 32))(v45 + v48 + *(v71 + 72) * v47, v69, v13);
        v41 += 2;
        v38 = v66;
        if (v39 == v40)
        {

          v49 = v70;
          v50 = v72;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
      v49 = v70;
LABEL_18:
      LOBYTE(v75) = 0;
      sub_2231105AC();
      OUTLINED_FUNCTION_12_3();
      v51 = v64;
      v52 = *(&v73[0] + 1);
      v53 = v67;
      v54 = (v67 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId);
      *v54 = *&v73[0];
      v54[1] = v52;
      LOBYTE(v75) = 2;
      sub_2231123E8();
      OUTLINED_FUNCTION_12_3();
      *(v53 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_fallbackReason) = v73[0];
      *(v53 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_delegatedUserDialogActs) = v50;
      LOBYTE(v73[0]) = 3;
      OUTLINED_FUNCTION_5_10();
      sub_22311A668(v55, v56);
      v58 = v62;
      v57 = v63;
      sub_223200554();
      (*(v51 + 32))(v53 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId, v58, v57);
      sub_2230F7158(v49, v73);
      RequestMessageBase.init(from:)(v73);
      v59 = OUTLINED_FUNCTION_3_12();
      v60(v59);
      __swift_destroy_boxed_opaque_existential_1(v49);
    }
  }
}

void sub_2231197E0(void *a1)
{
  v3 = v1;
  v57 = sub_2231FFE94();
  v5 = OUTLINED_FUNCTION_9(v57);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D40, &qword_2232072D0);
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = &v46 - v19;
  v20 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_delegatedUserDialogActs);
  v21 = *(v20 + 16);
  if (v21)
  {
    v47 = a1;
    v48 = v3;
    v49 = v16;
    v50 = v13;
    v58 = MEMORY[0x277D84F90];
    v51 = v12;
    v53 = v21;
    sub_22311243C(0, v21, 0);
    v22 = v51;
    v23 = 0;
    v24 = v58;
    v55 = v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v54 = v7 + 16;
    v56 = v7 + 8;
    while (v23 < *(v20 + 16))
    {
      v25 = v24;
      v26 = v7;
      (*(v7 + 16))(v22, v55 + *(v7 + 72) * v23, v57);
      OUTLINED_FUNCTION_6_7();
      sub_22311A668(&qword_280FCE5D8, v27);
      v28 = sub_2231FFFE4();
      if (v2)
      {
        v37 = OUTLINED_FUNCTION_5_5();
        v38(v37);

        return;
      }

      v30 = v28;
      v31 = v29;
      v32 = OUTLINED_FUNCTION_5_5();
      v33(v32);
      v24 = v25;
      v58 = v25;
      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22311243C(v34 > 1, v35 + 1, 1);
        v22 = v51;
        v24 = v58;
      }

      ++v23;
      *(v24 + 16) = v35 + 1;
      v36 = v24 + 16 * v35;
      *(v36 + 32) = v30;
      *(v36 + 40) = v31;
      v7 = v26;
      if (v53 == v23)
      {
        v39 = v24;
        v16 = v49;
        v13 = v50;
        a1 = v47;
        v3 = v48;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
LABEL_11:
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22311A59C();
    v41 = v52;
    sub_2232007A4();
    v42 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId + 8);
    v58 = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId);
    v59 = v42;
    v60 = 0;
    v43 = sub_2230D37F0();

    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_20_2();

    if (v43)
    {
    }

    else
    {
      v58 = v39;
      v60 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
      sub_22311A5F0(&qword_280FCA4C8, sub_2230D7754);
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_20_2();

      LOBYTE(v58) = *(v3 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_fallbackReason);
      v60 = 2;
      sub_2231124D0();
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_20_2();
      LOBYTE(v58) = 3;
      sub_2231FFF14();
      OUTLINED_FUNCTION_5_10();
      sub_22311A668(v44, v45);
      OUTLINED_FUNCTION_20_2();
      sub_2230D77A8(a1);
    }

    (*(v16 + 8))(v41, v13);
  }
}

uint64_t sub_223119CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2230E95AC();
  *a2 = result;
  return result;
}

unint64_t sub_223119CFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230E95F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223119D30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2230E95AC();
  *a1 = result;
  return result;
}

uint64_t sub_223119D58(uint64_t a1)
{
  v2 = sub_22311A59C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223119D94(uint64_t a1)
{
  v2 = sub_22311A59C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FallbackToPommesMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToPommesMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToPommesMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToPommesMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_21_1() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t FallbackToPommesMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 36));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.delegatedUserDialogActs.getter()
{
  v1 = *(v0 + *(type metadata accessor for FallbackToPommesMessage.Builder(0) + 40));
}

uint64_t FallbackToPommesMessage.Builder.delegatedUserDialogActs.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_4() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t FallbackToPommesMessage.Builder.fallbackReason.getter()
{
  result = OUTLINED_FUNCTION_21_1();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t FallbackToPommesMessage.Builder.fallbackReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FallbackToPommesMessage.Builder(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t sub_22311A3A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_userId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_delegatedUserDialogActs);

  v3 = OBJC_IVAR____TtC16SiriMessageTypes23FallbackToPommesMessage_pommesCandidateId;
  v4 = sub_2231FFF14();
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 8);

  return v6(v0 + v3);
}

id FallbackToPommesMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FallbackToPommesMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22311A50C(uint64_t a1)
{
  v2 = type metadata accessor for FallbackToPommesMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22311A59C()
{
  result = qword_27D057D30;
  if (!qword_27D057D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D30);
  }

  return result;
}

uint64_t sub_22311A5F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057B10, &qword_2232063C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22311A668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22311A6B8()
{
  result = sub_2231FFF14();
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

uint64_t sub_22311A7F4()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22311A998(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA740);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_2231126F4();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA820);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_22311A998(319, &qword_27D057D60, MEMORY[0x277D56628]);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_22311A998(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FallbackToPommesMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22311AACC()
{
  result = qword_27D057D68;
  if (!qword_27D057D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D68);
  }

  return result;
}

unint64_t sub_22311AB24()
{
  result = qword_27D057D70;
  if (!qword_27D057D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D70);
  }

  return result;
}

unint64_t sub_22311AB7C()
{
  result = qword_27D057D78;
  if (!qword_27D057D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return type metadata accessor for FallbackToPommesMessage.Builder(0);
}

uint64_t FallbackToSiriXRequestedMessage.siriXRedirectContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_22311ACA4(v3, v4, v5);
}

uint64_t sub_22311ACA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22311ACB8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22311ACB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void *FallbackToSiriXRequestedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return FallbackToSiriXRequestedMessage.init(build:)(v1);
}

void *FallbackToSiriXRequestedMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v5[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[v5[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[v5[10]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v8[v5[11]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -1;
  a1(v8);
  v14 = *(v12 + 1);
  if (v14)
  {
    v15 = *v12;
    v16 = *v13;
    v17 = *(v13 + 1);
    v18 = v2 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext;
    *v18 = *v13;
    *(v18 + 1) = v17;
    v19 = v13[16];
    v18[16] = v19;
    v20 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_rewrittenUtterance);
    *v20 = v15;
    v20[1] = v14;
    MEMORY[0x28223BE20](v14);
    *(&v29 - 2) = v8;

    sub_22311ACA4(v16, v17, v19);
    v21 = RequestMessageBase.init(build:)(sub_22311BC24);
    sub_22311BBA8(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v22 = sub_223200014();
    __swift_project_value_buffer(v22, qword_280FCE830);
    v23 = sub_223200004();
    v24 = sub_223200254();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      MEMORY[0x223DD6780](v25, -1, -1);
    }

    sub_22311BBA8(v8);
    type metadata accessor for FallbackToSiriXRequestedMessage(0);
    v26 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v27 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v21;
}

uint64_t sub_22311AFDC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

void *FallbackToSiriXRequestedMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D80, &unk_2232074E0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311BC2C();
  sub_223200794();
  if (v2)
  {
    v18 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FallbackToSiriXRequestedMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v21) = 0;
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_rewrittenUtterance);
    *v14 = v10;
    v14[1] = v15;
    v23 = 1;
    sub_22311BCAC();
    sub_2232004C4();
    v16 = v22;
    v17 = v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext;
    *v17 = v21;
    v17[16] = v16;
    sub_2230F7158(a1, &v21);
    v18 = RequestMessageBase.init(from:)(&v21);
    v19 = OUTLINED_FUNCTION_2();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v18;
}

uint64_t FallbackToSiriXRequestedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToSiriXRequestedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t FallbackToSiriXRequestedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t FallbackToSiriXRequestedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_11() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t FallbackToSiriXRequestedMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToSiriXRequestedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FallbackToSiriXRequestedMessage.Builder.rewrittenUtterance.getter()
{
  v0 = type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t FallbackToSiriXRequestedMessage.Builder.rewrittenUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t FallbackToSiriXRequestedMessage.Builder.siriXRedirectContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_22311ACA4(v4, v5, v6);
}

uint64_t FallbackToSiriXRequestedMessage.Builder.siriXRedirectContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0) + 36);
  result = sub_22311BC80(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_22311B71C()
{
  v0 = sub_223200464();

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

unint64_t sub_22311B770(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_22311B7CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22311B71C();
  *a2 = result;
  return result;
}

unint64_t sub_22311B7FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22311B770(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22311B830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22311B71C();
  *a1 = result;
  return result;
}

uint64_t sub_22311B864(uint64_t a1)
{
  v2 = sub_22311BC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22311B8A0(uint64_t a1)
{
  v2 = sub_22311BC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22311B8DC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057D98, &qword_2232074F0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22311BC2C();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_rewrittenUtterance);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_rewrittenUtterance + 8);
  LOBYTE(v19) = 0;
  sub_2232005F4();
  if (!v2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 8);
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 16);
    v19 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext);
    v20 = v15;
    v21 = v16;
    v22 = 1;
    sub_22311ACA4(v19, v15, v16);
    sub_22311BD00();
    sub_2232005E4();
    sub_22311BC80(v19, v20, v21);
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_22311BACC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_rewrittenUtterance + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 8);
  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes31FallbackToSiriXRequestedMessage_siriXRedirectContext + 16);

  return sub_22311BC80(v2, v3, v4);
}

id FallbackToSiriXRequestedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FallbackToSiriXRequestedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22311BBA8(uint64_t a1)
{
  v2 = type metadata accessor for FallbackToSiriXRequestedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22311BC2C()
{
  result = qword_27D057D88;
  if (!qword_27D057D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D88);
  }

  return result;
}

uint64_t sub_22311BC80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22311BC94(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22311BC94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_22311BCAC()
{
  result = qword_27D057D90;
  if (!qword_27D057D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D057D90);
  }

  return result;
}

unint64_t sub_22311BD00()
{
  result = qword_280FCB358[0];
  if (!qword_280FCB358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FCB358);
  }

  return result;
}

uint64_t sub_22311BDFC()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCB350);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for FallbackToSiriXRequestedMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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