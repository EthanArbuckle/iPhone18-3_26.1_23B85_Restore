uint64_t ButtonSnippetModel.label.getter()
{
  v1 = (v0 + *(type metadata accessor for ButtonSnippetModel(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ButtonSnippetModel.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_267B72A04(a1, a4);
  result = type metadata accessor for ButtonSnippetModel(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

unint64_t ButtonSnippetModel.description.getter()
{
  v1 = type metadata accessor for ButtonSnippetModel.Action(0);
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  sub_267B7DF8C();

  OUTLINED_FUNCTION_0_17();
  sub_267B72B24(v0, v7, v8);
  v9 = sub_267B7DD7C();
  MEMORY[0x26D601760](v9);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_267B723E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
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

uint64_t sub_267B724A8(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_267B724E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B723E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B72508(uint64_t a1)
{
  v2 = sub_267B72AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B72544(uint64_t a1)
{
  v2 = sub_267B72AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ButtonSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219820, &qword_267B849D0);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B72AD0();
  sub_267B7E27C();
  v20[15] = 0;
  type metadata accessor for ButtonSnippetModel.Action(0);
  OUTLINED_FUNCTION_5_11();
  sub_267B72A68(v14, v15);
  sub_267B7E12C();
  if (!v2)
  {
    v16 = (v3 + *(type metadata accessor for ButtonSnippetModel(0) + 20));
    v17 = *v16;
    v18 = v16[1];
    v20[14] = 1;
    sub_267B7E0FC();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t ButtonSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ButtonSnippetModel.Action(0);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v32 = v9 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219838, &qword_267B849D8);
  OUTLINED_FUNCTION_8(v33);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for ButtonSnippetModel(0);
  v14 = OUTLINED_FUNCTION_3_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B72AD0();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = v13;
  OUTLINED_FUNCTION_5_11();
  sub_267B72A68(v21, v22);
  sub_267B7E08C();
  sub_267B72A04(v32, v19);
  v23 = sub_267B7E05C();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_9_5();
  v27(v26);
  v28 = (v19 + *(v30 + 20));
  *v28 = v23;
  v28[1] = v25;
  sub_267B72B24(v19, a2, type metadata accessor for ButtonSnippetModel);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_267B72B84(v19, type metadata accessor for ButtonSnippetModel);
}

uint64_t sub_267B72A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonSnippetModel.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B72A68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267B72AD0()
{
  result = qword_280219828;
  if (!qword_280219828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219828);
  }

  return result;
}

uint64_t sub_267B72B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267B72B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267B72C94()
{
  result = type metadata accessor for ButtonSnippetModel.Action(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_267B72D08()
{
  result = sub_267B7DA6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_267B72D80(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B72E6C(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B72F1C()
{
  result = qword_280219878;
  if (!qword_280219878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219878);
  }

  return result;
}

unint64_t sub_267B72F74()
{
  result = qword_280219880;
  if (!qword_280219880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219880);
  }

  return result;
}

unint64_t sub_267B72FCC()
{
  result = qword_280219888;
  if (!qword_280219888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219888);
  }

  return result;
}

unint64_t sub_267B73024()
{
  result = qword_280219890;
  if (!qword_280219890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219890);
  }

  return result;
}

unint64_t sub_267B7307C()
{
  result = qword_280219898;
  if (!qword_280219898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219898);
  }

  return result;
}

unint64_t sub_267B730D4()
{
  result = qword_2802198A0;
  if (!qword_2802198A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198A0);
  }

  return result;
}

unint64_t sub_267B7312C()
{
  result = qword_2802198A8;
  if (!qword_2802198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198A8);
  }

  return result;
}

unint64_t sub_267B73184()
{
  result = qword_2802198B0;
  if (!qword_2802198B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198B0);
  }

  return result;
}

unint64_t sub_267B731DC()
{
  result = qword_2802198B8;
  if (!qword_2802198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198B8);
  }

  return result;
}

unint64_t sub_267B73234()
{
  result = qword_2802198C0;
  if (!qword_2802198C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198C0);
  }

  return result;
}

unint64_t sub_267B7328C()
{
  result = qword_2802198C8;
  if (!qword_2802198C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198C8);
  }

  return result;
}

unint64_t sub_267B732E4()
{
  result = qword_2802198D0;
  if (!qword_2802198D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_267B7DFFC();
}

id UpdateMessageDraftSnippet.intent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_267B733EC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  UpdateMessageDraftSnippet.intent.setter(v1);
}

void (*UpdateMessageDraftSnippet.intent.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = v1;
  v3 = v2;
  return sub_267B41468;
}

uint64_t UpdateMessageDraftSnippet.contactName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t UpdateMessageDraftSnippet.contactName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UpdateMessageDraftSnippet.payload.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UpdateMessageDraftSnippet.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t UpdateMessageDraftSnippet.autoSendInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_267B60A64(v2, v3, v4);
}

__n128 UpdateMessageDraftSnippet.autoSendInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[9];
  v5 = v1[10];
  sub_267B60AAC(v1[6], v1[7], v1[8]);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v7;
  v1[10] = v3;
  return result;
}

uint64_t UpdateMessageDraftSnippet.correctionInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 88);

  *(v1 + 88) = v2;
  return result;
}

uint64_t UpdateMessageDraftSnippet.errorMessage.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t UpdateMessageDraftSnippet.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t UpdateMessageDraftSnippet.photoSharingInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

__n128 UpdateMessageDraftSnippet.init(intent:contactName:isAuthenticated:payload:autoSendInfo:correctionInfo:shouldUpdateWithASRText:photoSharingInfo:errorMessage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, __n128 a12)
{
  v14 = *(a7 + 32);
  v15 = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v16 = OUTLINED_FUNCTION_11_4();
  sub_267B60AAC(v16, v17, v18);
  v19 = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = v19;
  *(a9 + 80) = v14;

  *(a9 + 88) = v15;
  *(a9 + 96) = a10;
  *(a9 + 120) = a11;
  result = a12;
  *(a9 + 104) = a12;
  return result;
}

uint64_t UpdateMessageDraftSnippet.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = 7104878;
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v19 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = *(v0 + 120);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  if (v2)
  {
    v7 = v1;
  }

  else
  {
    v7 = 7104878;
  }

  v8 = 0xE300000000000000;
  if (!v2)
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x26D601760](v7, v2);

  OUTLINED_FUNCTION_4_11();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_5_12();

  sub_267B7DF8C();

  v9 = 7104878;
  if (*(&v16 + 1) != 1)
  {
    v9 = AutoSendInfo.description.getter();
    v8 = v10;
  }

  MEMORY[0x26D601760](v9, v8);

  MEMORY[0x26D601760](44, 0xE100000000000000);

  MEMORY[0x26D601760](0x6E65536F74756120, 0xEF203A6F666E4964);

  OUTLINED_FUNCTION_6_10();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v11 = 0xE300000000000000;
  if (v17)
  {
    CorrectionInfo.description.getter();
  }

  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_6_10();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_6_10();
  sub_267B7DF8C();

  OUTLINED_FUNCTION_5_12();

  OUTLINED_FUNCTION_4_11();

  MEMORY[0x26D601760](0x654D726F72726520, 0xEF203A6567617373);

  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v22 = v12;
  if (v21)
  {
    v3 = PhotoSharingInfo.description.getter();
    v11 = v13;
  }

  MEMORY[0x26D601760](v3, v11);

  MEMORY[0x26D601760](41, 0xE100000000000000);

  MEMORY[0x26D601760](0xD000000000000013, v22);

  return v5;
}

uint64_t sub_267B73D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
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
        v8 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646E65536F747561 && a2 == 0xEC0000006F666E49;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6974636572726F63 && a2 == 0xEE006F666E496E6FLL;
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
                v12 = a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000010 && 0x8000000267B86E10 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_267B7E16C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_267B74048(char a1)
{
  result = 0x746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x4E746361746E6F63;
      break;
    case 2:
      result = 0x6E65687475417369;
      break;
    case 3:
      result = 0x64616F6C796170;
      break;
    case 4:
      result = 0x646E65536F747561;
      break;
    case 5:
      result = 0x6974636572726F63;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x73654D726F727265;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B74184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B73D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B741AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267B74040();
  *a1 = result;
  return result;
}

uint64_t sub_267B741D4(uint64_t a1)
{
  v2 = sub_267B74600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B74210(uint64_t a1)
{
  v2 = sub_267B74600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateMessageDraftSnippet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802198D8, &unk_267B84FB0);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v25 - v10;
  v13 = *v1;
  v12 = *(v1 + 8);
  v35 = *(v1 + 16);
  v36 = v12;
  v42 = *(v1 + 24);
  v14 = *(v1 + 32);
  v33 = *(v1 + 40);
  v34 = v14;
  v15 = *(v1 + 48);
  v17 = *(v1 + 64);
  v16 = *(v1 + 72);
  v28 = *(v1 + 56);
  v29 = v17;
  v30 = v16;
  v18 = *(v1 + 88);
  v31 = *(v1 + 80);
  v32 = v15;
  v27 = v18;
  v26 = *(v1 + 96);
  v19 = *(v1 + 112);
  v25[1] = *(v1 + 104);
  v25[2] = v19;
  v25[0] = *(v1 + 120);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B74600();
  v21 = v13;
  sub_267B7E27C();
  v37 = v13;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
  sub_267B74B9C(&qword_2802186B0);
  OUTLINED_FUNCTION_3_12();
  sub_267B7E12C();
  if (v2)
  {
  }

  else
  {
    v22 = v32;

    LOBYTE(v37) = 1;
    OUTLINED_FUNCTION_3_12();
    sub_267B7E0CC();
    LOBYTE(v37) = 2;
    OUTLINED_FUNCTION_3_12();
    sub_267B7E10C();
    LOBYTE(v37) = 3;
    OUTLINED_FUNCTION_3_12();
    sub_267B7E0CC();
    v37 = v22;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v43 = 4;
    sub_267B60A64(v22, v28, v29);
    sub_267B60CD4();
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_3_12();
    sub_267B7E0EC();
    sub_267B60AAC(v37, v38, v39);
    v37 = v27;
    v43 = 5;
    v23 = sub_267B60D28();

    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_3_12();
    sub_267B7E0EC();

    if (!v23)
    {
      LOBYTE(v37) = 6;
      OUTLINED_FUNCTION_3_12();
      sub_267B7E10C();
      LOBYTE(v37) = 7;
      OUTLINED_FUNCTION_3_12();
      sub_267B7E0CC();
      v37 = v25[0];
      v43 = 8;
      type metadata accessor for PhotoSharingInfo();
      sub_267B74BEC(&qword_2802186F0);
      OUTLINED_FUNCTION_8_10();
      OUTLINED_FUNCTION_3_12();
      sub_267B7E0EC();
    }
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_267B74600()
{
  result = qword_2802198E0;
  if (!qword_2802198E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198E0);
  }

  return result;
}

uint64_t UpdateMessageDraftSnippet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802198E8, &qword_267B84FC0);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B74600();
  sub_267B7E25C();
  if (v2)
  {
    v64 = v2;
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_12_4();
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_267B60AAC(v40, v39, a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
    sub_267B74B9C(&qword_280218700);
    OUTLINED_FUNCTION_13_5();
    sub_267B7E08C();
    v38 = v43;
    OUTLINED_FUNCTION_2_16(1);
    v11 = sub_267B7E01C();
    v37 = v12;
    OUTLINED_FUNCTION_2_16(2);
    v35 = sub_267B7E06C();
    OUTLINED_FUNCTION_2_16(3);
    v13 = sub_267B7E01C();
    v34 = v14;
    sub_267B60B48();
    OUTLINED_FUNCTION_9_6();
    v30 = a2;
    v31 = v13;
    v41 = v43;
    v15 = v46;
    v32 = v47;
    v33 = v45;
    v16 = OUTLINED_FUNCTION_11_4();
    sub_267B60AAC(v16, v17, v18);
    sub_267B60B9C();
    OUTLINED_FUNCTION_9_6();
    v28 = v11;
    v19 = v44;
    v29 = v43;

    OUTLINED_FUNCTION_2_16(6);
    v20 = sub_267B7E06C();
    OUTLINED_FUNCTION_2_16(7);
    v26 = sub_267B7E01C();
    v27 = v21;
    type metadata accessor for PhotoSharingInfo();
    v60 = 8;
    sub_267B74BEC(&qword_280218728);
    OUTLINED_FUNCTION_13_5();
    sub_267B7E04C();
    v64 = 0;
    v22 = v35 & 1;
    v25 = v35 & 1;
    v20 &= 1u;
    v23 = OUTLINED_FUNCTION_1_21();
    v24(v23);
    v36 = v61;
    v42[0] = v43;
    v42[1] = v28;
    v42[2] = v37;
    LOBYTE(v42[3]) = v22;
    *(&v42[3] + 1) = v63[0];
    HIDWORD(v42[3]) = *(v63 + 3);
    v42[4] = v31;
    v42[5] = v34;
    v42[6] = v43;
    v42[7] = v44;
    v42[8] = v45;
    v42[9] = v46;
    v42[10] = v47;
    v42[11] = v43;
    LOBYTE(v42[12]) = v20;
    HIDWORD(v42[12]) = *&v62[3];
    *(&v42[12] + 1) = *v62;
    v42[13] = v26;
    v42[14] = v27;
    v42[15] = v61;
    memcpy(v30, v42, 0x80uLL);
    sub_267B74C30(v42, &v43);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v43 = v38;
    v44 = v28;
    v45 = v37;
    LOBYTE(v46) = v25;
    *(&v46 + 1) = v63[0];
    HIDWORD(v46) = *(v63 + 3);
    v47 = v31;
    v48 = v34;
    v49 = v41;
    v50 = v19;
    v51 = v33;
    v52 = v15;
    v53 = v32;
    v54 = v29;
    v55 = v20;
    *&v56[3] = *&v62[3];
    *v56 = *v62;
    v57 = v26;
    v58 = v27;
    v59 = v36;
    return sub_267B74C68(&v43);
  }
}

uint64_t sub_267B74B9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802186A8, &qword_267B7EF28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267B74BEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotoSharingInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267B74C98()
{
  sub_267B750FC();
  sub_267B75150();
  return sub_267B7DB8C();
}

uint64_t sub_267B74D04()
{
  sub_267B750FC();
  sub_267B75150();
  return sub_267B7DB7C();
}

uint64_t get_enum_tag_for_layout_string_18SiriMessagesCommon12AutoSendInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_267B74DB8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_267B74E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateMessageDraftSnippet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UpdateMessageDraftSnippet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B74FF8()
{
  result = qword_2802198F0;
  if (!qword_2802198F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198F0);
  }

  return result;
}

unint64_t sub_267B75050()
{
  result = qword_2802198F8;
  if (!qword_2802198F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802198F8);
  }

  return result;
}

unint64_t sub_267B750A8()
{
  result = qword_280219900;
  if (!qword_280219900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219900);
  }

  return result;
}

unint64_t sub_267B750FC()
{
  result = qword_280219908;
  if (!qword_280219908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219908);
  }

  return result;
}

unint64_t sub_267B75150()
{
  result = qword_280219910;
  if (!qword_280219910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219910);
  }

  return result;
}

void OUTLINED_FUNCTION_4_11()
{

  JUMPOUT(0x26D601760);
}

void OUTLINED_FUNCTION_5_12()
{

  JUMPOUT(0x26D601760);
}

void OUTLINED_FUNCTION_7_8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
}

void OUTLINED_FUNCTION_15_2()
{

  JUMPOUT(0x26D601760);
}

uint64_t sub_267B75274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_267B7DA6C();
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

void static MessageAttachmentUtils.makeAttachmentModel(for:isDraft:photoSharingInfo:location:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v215 = a5;
  v216 = a4;
  v210 = a3;
  v212 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219918, &unk_267B85250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v205 = &v200 - v10;
  v206 = sub_267B7DCBC();
  v11 = OUTLINED_FUNCTION_8(v206);
  v204 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_11();
  v202 = v15;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v16);
  v203 = &v200 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_6_11();
  v200 = v20;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_0();
  v208 = v22;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_0();
  v211 = v24;
  OUTLINED_FUNCTION_7_9();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v200 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v200 - v29;
  v31 = sub_267B7DA6C();
  v32 = OUTLINED_FUNCTION_8(v31);
  v217 = v33;
  v218 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_11();
  v201 = v36;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_0();
  v207 = v38;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_0();
  v213 = v40;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v41);
  v209 = &v200 - v42;
  v43 = sub_267B4B65C(a1);
  v44 = 0;
  v45 = a1 & 0xC000000000000001;
  v46 = (a1 & 0xFFFFFFFFFFFFFF8);
  v47 = &selRef_backingStore;
  while (v43 != v44)
  {
    if (v45)
    {
      v48 = MEMORY[0x26D601950](v44, a1);
    }

    else
    {
      if (v44 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v48 = *(a1 + 8 * v44 + 32);
    }

    v5 = v48;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      sub_267B7DC9C();
      v173 = sub_267B7DCAC();
      v174 = v44;
      v175 = v206;
      (v47)(v174, v206);
      v176 = v5;
      if (v173)
      {
        if (qword_280218548 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v177 = sub_267B7DCFC();
        OUTLINED_FUNCTION_15_3(v177, qword_2802286D0);
        v178 = sub_267B7DCDC();
        v179 = sub_267B7DE9C();
        v180 = OUTLINED_FUNCTION_2_8(v179);
        v76 = v215;
        if (v180)
        {
          v181 = OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_5(v181);
          OUTLINED_FUNCTION_1_22();
          _os_log_impl(v182, v183, v184, v185, v186, 2u);
          OUTLINED_FUNCTION_3_6();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
        v187 = v217;
        v188 = *(v217 + 72);
        v189 = *(v217 + 80);
        v190 = OUTLINED_FUNCTION_3_13();
        *(v190 + 16) = xmmword_267B7E980;
        v191 = v190 + v5;
        v192 = v207;
        (*(v187 + 16))(v191, v207, v6);

        (v47)(v176, v206);
        (*(v187 + 8))(v192, v6);
        *(v76 + 24) = &type metadata for VideoAttachment;
        *(v76 + 32) = sub_267B43774();
        type metadata accessor for SecurityScopedURL();
        v193 = swift_allocObject();
        *(v193 + 16) = v190;
        *v76 = v193;
        goto LABEL_42;
      }

      (v47)(v5, v175);
      v5 = v213;
LABEL_57:
      v46 = v5;
      if (qword_280218548 != -1)
      {
LABEL_118:
        OUTLINED_FUNCTION_0();
      }

      v109 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v109, qword_2802286D0);
      v110 = sub_267B7DCDC();
      v111 = sub_267B7DE9C();
      v112 = OUTLINED_FUNCTION_2_8(v111);
      v76 = v215;
      if (v112)
      {
        v113 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_5(v113);
        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v114, v115, v116, v117, v118, 2u);
        OUTLINED_FUNCTION_3_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
      v119 = v217;
      v120 = *(v217 + 72);
      v121 = *(v217 + 80);
      v83 = OUTLINED_FUNCTION_3_13();
      *(v83 + 16) = xmmword_267B7E980;
      (*(v119 + 32))(v83 + v5, v207, v6);

      *(v76 + 24) = &type metadata for LinkAttachment;
      v84 = sub_267B438DC();
LABEL_41:
      *(v76 + 32) = v84;
      *v76 = v83;
LABEL_42:
      *(v76 + 8) = v212 & 1;
      return;
    }

    v6 = [v48 currentLocation];

    ++v44;
    if (v6)
    {
      if (qword_280218548 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v72 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v72, qword_2802286D0);
      v73 = sub_267B7DCDC();
      v74 = sub_267B7DE9C();
      v75 = OUTLINED_FUNCTION_2_8(v74);
      v76 = v215;
      if (v75)
      {
        v77 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_5(v77);
        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v78, v79, v80, v81, v82, 2u);
        OUTLINED_FUNCTION_3_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
      v83 = OUTLINED_FUNCTION_2_17();
      *(v83 + 16) = xmmword_267B7E980;
      static MessageAttachmentUtils.makeMapsURL(location:)(v216, v83 + v5);
      *(v76 + 24) = &type metadata for MapAttachment;
      v84 = sub_267B43888();
      goto LABEL_41;
    }
  }

  v44 = 0;
  v6 = v218;
  v214 = (v217 + 32);
  v216 = MEMORY[0x277D84F90];
  while (v43 != v44)
  {
    if (v45)
    {
      v49 = MEMORY[0x26D601950](v44, a1);
    }

    else
    {
      if (v44 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v49 = *(a1 + 8 * v44 + 32);
    }

    v6 = v49;
    v47 = (v44 + 1);
    if (__OFADD__(v44, 1))
    {
      goto LABEL_101;
    }

    v50 = [v49 sharedLink];
    if (v50)
    {
      v51 = v50;
      sub_267B7DA3C();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    OUTLINED_FUNCTION_13_6(v28, v5);
    sub_267B76530(v28, v30);
    OUTLINED_FUNCTION_18_2(v30);
    if (v52)
    {
      sub_267B6BF60(v30, &qword_280218928, "ډ");
      ++v44;
    }

    else
    {
      v5 = *v214;
      (*v214)(v213, v30, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v216 = OUTLINED_FUNCTION_12_5();
      }

      v55 = v216[2];
      v54 = v216[3];
      if (v55 >= v54 >> 1)
      {
        v216 = OUTLINED_FUNCTION_14_4(v54);
      }

      OUTLINED_FUNCTION_8_11();
      v58 = v56 + v57 * v55;
      v6 = v218;
      (v5)(v58, v213, v218);
      ++v44;
    }
  }

  v59 = v211;
  sub_267B75274(v216, v211);

  OUTLINED_FUNCTION_18_2(v59);
  if (!v52)
  {
    v85 = *v214;
    (*v214)(v209, v59, v6);
    v86 = objc_opt_self();
    v87 = sub_267B7D9FC();
    v88 = [v86 isValidMapURL_];

    if (v88)
    {
      v89 = v215;
      if (qword_280218548 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v90 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v90, qword_2802286D0);
      v91 = sub_267B7DCDC();
      v92 = sub_267B7DE9C();
      if (OUTLINED_FUNCTION_2_8(v92))
      {
        v93 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_5(v93);
        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v94, v95, v96, v97, v98, 2u);
        OUTLINED_FUNCTION_3_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
      v99 = OUTLINED_FUNCTION_2_17();
      v100 = OUTLINED_FUNCTION_10_4(v99, xmmword_267B7E980);
      v85(v100);
      *(v89 + 24) = &type metadata for MapAttachment;
      v101 = sub_267B43888();
    }

    else
    {
      v89 = v215;
      if (qword_280218548 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v122 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v122, qword_2802286D0);
      v123 = sub_267B7DCDC();
      v124 = sub_267B7DE9C();
      if (OUTLINED_FUNCTION_2_8(v124))
      {
        v125 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_5(v125);
        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v126, v127, v128, v129, v130, 2u);
        OUTLINED_FUNCTION_3_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218970, &qword_267B7FB20);
      v99 = OUTLINED_FUNCTION_2_17();
      v131 = OUTLINED_FUNCTION_10_4(v99, xmmword_267B7E980);
      v85(v131);
      *(v89 + 24) = &type metadata for LinkAttachment;
      v101 = sub_267B438DC();
    }

    *(v89 + 32) = v101;
    *v89 = v99;
    *(v89 + 8) = v212 & 1;
    return;
  }

  sub_267B6BF60(v59, &qword_280218928, "ډ");
  v60 = v210;
  if (v210)
  {
    swift_beginAccess();
    if (*(v60 + 17) == 1)
    {
      v61 = qword_280218548;

      v62 = v215;
      if (v61 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v63 = sub_267B7DCFC();
      OUTLINED_FUNCTION_15_3(v63, qword_2802286D0);

      v64 = sub_267B7DCDC();
      v65 = sub_267B7DE9C();
      if (OUTLINED_FUNCTION_2_8(v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134217984;
        swift_beginAccess();
        *(v66 + 4) = *(*(v60 + 24) + 16);

        OUTLINED_FUNCTION_1_22();
        _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
        OUTLINED_FUNCTION_3_6();
      }

      else
      {
      }

      v132 = MEMORY[0x277D84F90];
      *(v62 + 24) = &type metadata for PhotoAttachment;
      *(v62 + 32) = sub_267B43834();
      type metadata accessor for SecurityScopedURL();
      v133 = swift_allocObject();
      *(v133 + 16) = v132;
      v134 = v212 & 1;
      *v62 = v133;
      *(v62 + 8) = v134;
      *(v62 + 16) = v60;
      return;
    }
  }

  if (v43)
  {
    sub_267B587DC(0, v45 == 0, a1);
    v102 = v45 ? MEMORY[0x26D601950](0, a1) : *(a1 + 32);
    v103 = v102;
    v5 = [v102 file];

    if (v5)
    {
      v104 = [v5 fileURL];
      if (v104)
      {
        v105 = v104;
        sub_267B7DA3C();

        sub_267B765A0(v5);
        if (!v106)
        {
          goto LABEL_57;
        }

        v107 = v205;
        sub_267B7DCCC();
        v108 = v206;
        if (__swift_getEnumTagSinglePayload(v107, 1, v206) == 1)
        {
          sub_267B6BF60(v107, &qword_280219918, &unk_267B85250);
          goto LABEL_57;
        }

        v213 = v5;
        v146 = v204;
        v5 = v203;
        (*(v204 + 32))(v203, v107, v108);
        v44 = v202;
        sub_267B7DC8C();
        v147 = sub_267B7DCAC();
        v148 = v108;
        LODWORD(v216) = v147;
        v150 = *(v146 + 8);
        v149 = v146 + 8;
        v47 = v150;
        (v150)(v44, v148);
        if ((v216 & 1) == 0)
        {
          goto LABEL_103;
        }

        v211 = v47;
        v204 = v149;
        if (qword_280218548 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v151 = sub_267B7DCFC();
        OUTLINED_FUNCTION_15_3(v151, qword_2802286D0);
        v152 = sub_267B7DCDC();
        v153 = sub_267B7DE9C();
        v154 = OUTLINED_FUNCTION_2_8(v153);
        v155 = v200;
        if (v154)
        {
          v156 = OUTLINED_FUNCTION_6_2();
          *v156 = 0;
          _os_log_impl(&dword_267B38000, v152, v5, "#MessageAttachmentUtils creating view model for photo", v156, 2u);
          v157 = v156;
          v6 = v218;
          MEMORY[0x26D602240](v157, -1, -1);
        }

        v158 = 0;
        v216 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v43 == v158)
          {
            v194 = v215;
            *(v215 + 24) = &type metadata for PhotoAttachment;
            *(v194 + 32) = sub_267B43834();
            type metadata accessor for SecurityScopedURL();
            v195 = swift_allocObject();
            *(v195 + 16) = v216;
            v196 = v212 & 1;
            if (v60)
            {
              v197 = v60;
            }

            else
            {
              type metadata accessor for PhotoSharingInfo();
              swift_allocObject();
              v197 = PhotoSharingInfo.init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(1, 0, MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0, 0xE000000000000000);
            }

            v198 = v203;
            v199 = v211;

            *v194 = v195;
            *(v194 + 8) = v196;
            *(v194 + 16) = v197;
            v199(v198, v206);
            (*(v217 + 8))(v207, v6);
            return;
          }

          if (v45)
          {
            v159 = MEMORY[0x26D601950](v158, a1);
          }

          else
          {
            if (v158 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_118;
            }

            v159 = *(a1 + 8 * v158 + 32);
          }

          v6 = v159;
          v5 = v158 + 1;
          if (__OFADD__(v158, 1))
          {
            __break(1u);
            goto LABEL_115;
          }

          v160 = [v159 file];
          if (!v160)
          {
            break;
          }

          v161 = v160;
          v162 = [v160 fileURL];

          if (v162)
          {
            sub_267B7DA3C();

            v163 = 0;
          }

          else
          {
            v163 = 1;
          }

          v60 = v210;

          OUTLINED_FUNCTION_13_6(v155, v163);
          v164 = v208;
          sub_267B76530(v155, v208);
          OUTLINED_FUNCTION_18_2(v164);
          if (v52)
          {
LABEL_93:
            sub_267B6BF60(v164, &qword_280218928, "ډ");
            ++v158;
          }

          else
          {
            v165 = v6;
            v166 = *v214;
            (*v214)(v201, v164, v165);
            v167 = swift_isUniquelyReferenced_nonNull_native();
            if ((v167 & 1) == 0)
            {
              v216 = OUTLINED_FUNCTION_12_5();
            }

            v169 = v216[2];
            v168 = v216[3];
            if (v169 >= v168 >> 1)
            {
              v216 = OUTLINED_FUNCTION_14_4(v168);
            }

            OUTLINED_FUNCTION_8_11();
            v172 = v218;
            v166(v170 + v171 * v169, v201, v218);
            v6 = v172;
            v158 = v5;
          }
        }

        v164 = v208;
        OUTLINED_FUNCTION_13_6(v208, 1);
        goto LABEL_93;
      }
    }
  }

  if (qword_280218548 != -1)
  {
LABEL_115:
    OUTLINED_FUNCTION_0();
  }

  v135 = sub_267B7DCFC();
  OUTLINED_FUNCTION_15_3(v135, qword_2802286D0);
  v136 = sub_267B7DCDC();
  v137 = sub_267B7DEAC();
  v138 = OUTLINED_FUNCTION_2_8(v137);
  v139 = v215;
  if (v138)
  {
    v140 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_5(v140);
    OUTLINED_FUNCTION_1_22();
    _os_log_impl(v141, v142, v143, v144, v145, 2u);
    OUTLINED_FUNCTION_3_6();
  }

  *(v139 + 32) = 0;
  *v139 = 0u;
  *(v139 + 16) = 0u;
}

uint64_t static MessageAttachmentUtils.makeMapsURL(location:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v10 - v6;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD00000000000001BLL, 0x8000000267B87880);
  if (a1)
  {
    [a1 coordinate];
    sub_267B7DE5C();
    MEMORY[0x26D601760](44, 0xE100000000000000);
    [a1 coordinate];
  }

  else
  {
    sub_267B7DE5C();
    MEMORY[0x26D601760](44, 0xE100000000000000);
  }

  sub_267B7DE5C();
  sub_267B7DA5C();
  v8 = sub_267B7DA6C();
  result = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(*(v8 - 8) + 32))(a2, v7, v8);
  }

  return result;
}

uint64_t sub_267B76530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218928, "ډ");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B765A0(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B7DD5C();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for MessageAttachmentUtils(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_2_17()
{
  v2 = *(v0 - 152);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_8_11()
{
  v3 = *(v1 - 160);
  v2 = *(v1 - 152);
  *(v3 + 16) = v0;
  v4 = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5 = *(v2 + 72);
}

char *OUTLINED_FUNCTION_10_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  result = a1 + v2;
  v5 = *(v3 - 176);
  return result;
}

size_t OUTLINED_FUNCTION_12_5()
{
  v2 = *(v0 - 160);
  v3 = *(v2 + 16) + 1;

  return sub_267B47304(0, v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 144);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

size_t OUTLINED_FUNCTION_14_4@<X0>(unint64_t a1@<X8>)
{
  v4 = *(v2 - 160);

  return sub_267B47304(a1 > 1, v1, 1, v4);
}

uint64_t sub_267B7680C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000267B878C0 == a2;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000020 && 0x8000000267B878E0 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x8000000267B87910 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x8000000267B87930 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x8000000267B87950 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ELL && 0x8000000267B87970 == a2;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x8000000267B87990 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000019 && 0x8000000267B879B0 == a2)
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

unint64_t sub_267B76A7C(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B76B44(uint64_t a1)
{
  v2 = sub_267B77DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76B80(uint64_t a1)
{
  v2 = sub_267B77DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76BBC(uint64_t a1)
{
  v2 = sub_267B77D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76BF8(uint64_t a1)
{
  v2 = sub_267B77D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B7680C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B76C64(uint64_t a1)
{
  v2 = sub_267B77C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76CA0(uint64_t a1)
{
  v2 = sub_267B77C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76CDC(uint64_t a1)
{
  v2 = sub_267B77D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76D18(uint64_t a1)
{
  v2 = sub_267B77D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76D54(uint64_t a1)
{
  v2 = sub_267B77F34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76D90(uint64_t a1)
{
  v2 = sub_267B77F34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76DCC(uint64_t a1)
{
  v2 = sub_267B77E8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76E08(uint64_t a1)
{
  v2 = sub_267B77E8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76E44(uint64_t a1)
{
  v2 = sub_267B77E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76E80(uint64_t a1)
{
  v2 = sub_267B77E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76EBC(uint64_t a1)
{
  v2 = sub_267B77CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76EF8(uint64_t a1)
{
  v2 = sub_267B77CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B76F34(uint64_t a1)
{
  v2 = sub_267B77EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B76F70(uint64_t a1)
{
  v2 = sub_267B77EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagesUIPluginModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219920, &qword_267B85280);
  OUTLINED_FUNCTION_0_19(v2, &v158);
  v146 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219928, &qword_267B85288);
  OUTLINED_FUNCTION_0_19(v8, &v155);
  v145 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v13);
  v144 = type metadata accessor for ButtonSnippetModel(0);
  v14 = OUTLINED_FUNCTION_3_3(v144);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_7(v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219930, &qword_267B85290);
  OUTLINED_FUNCTION_0_19(v19, &__dst[64]);
  v143 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219938, &qword_267B85298);
  OUTLINED_FUNCTION_0_19(v25, &__dst[32]);
  v141 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219940, &qword_267B852A0);
  OUTLINED_FUNCTION_0_19(v31, &__dst[8]);
  v139 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v36);
  v138 = type metadata accessor for SentMessageSnippetModel();
  v37 = OUTLINED_FUNCTION_3_3(v138);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_7(v41 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219948, &qword_267B852A8);
  OUTLINED_FUNCTION_0_19(v42, &v151[64]);
  v137 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v47);
  v136 = type metadata accessor for MessageDraftSnippetModel();
  v48 = OUTLINED_FUNCTION_3_3(v136);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_7(v52 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219950, &qword_267B852B0);
  OUTLINED_FUNCTION_0_19(v53, &v151[24]);
  v135 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v58);
  v134 = type metadata accessor for AutoSendableBinaryButton();
  v59 = OUTLINED_FUNCTION_3_3(v134);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_7(v63 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219958, &qword_267B852B8);
  OUTLINED_FUNCTION_0_19(v64, v149);
  v133[1] = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v68);
  v70 = v133 - v69;
  v71 = type metadata accessor for ConfirmationSnippetModel(0);
  v72 = OUTLINED_FUNCTION_3_3(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_3_0();
  v77 = v76 - v75;
  v78 = type metadata accessor for MessagesUIPluginModel();
  v79 = OUTLINED_FUNCTION_3_3(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3_0();
  v84 = (v83 - v82);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219960, &qword_267B852C0);
  OUTLINED_FUNCTION_0_19(v85, &v159);
  v150 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v89);
  v91 = v133 - v90;
  v92 = a1[3];
  v93 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v92);
  sub_267B77C30();
  v148 = v91;
  sub_267B7E27C();
  sub_267B77C84(v147, v84);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_31_0(v84, type metadata accessor for AutoSendableBinaryButton, v151);
      __dst[0] = 1;
      sub_267B77EE0();
      OUTLINED_FUNCTION_2_18(&v151[8]);
      OUTLINED_FUNCTION_20_1();
      sub_267B78FF4(v119, v120);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_24_0(&v151[24]);
      OUTLINED_FUNCTION_23_0(&v150);
      v121 = OUTLINED_FUNCTION_3_14(&v151[16]);
      v122(v121);
      v98 = type metadata accessor for AutoSendableBinaryButton;
      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_31_0(v84, type metadata accessor for MessageDraftSnippetModel, &v151[40]);
      __dst[0] = 2;
      sub_267B77E8C();
      OUTLINED_FUNCTION_2_18(&v151[48]);
      OUTLINED_FUNCTION_18_3();
      sub_267B78FF4(v108, v109);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_24_0(&v151[64]);
      OUTLINED_FUNCTION_23_0(&v151[32]);
      v110 = OUTLINED_FUNCTION_3_14(&v151[56]);
      v111(v110);
      v98 = type metadata accessor for MessageDraftSnippetModel;
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_31_0(v84, type metadata accessor for SentMessageSnippetModel, &v151[80]);
      __dst[0] = 3;
      sub_267B77E38();
      OUTLINED_FUNCTION_2_18(v152);
      OUTLINED_FUNCTION_17_1();
      sub_267B78FF4(v112, v113);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_24_0(&__dst[8]);
      OUTLINED_FUNCTION_23_0(&v151[72]);
      v114 = OUTLINED_FUNCTION_3_14(__dst);
      v115(v114);
      v98 = type metadata accessor for SentMessageSnippetModel;
      goto LABEL_10;
    case 4u:
      v99 = *v84;
      v100 = v84[1];
      v101 = v84[2];
      __dst[0] = 4;
      sub_267B77DE4();
      v102 = v140;
      sub_267B7E0BC();
      *__dst = v99;
      *&__dst[8] = v100;
      *&__dst[16] = v101;
      sub_267B706BC();
      v103 = v142;
      sub_267B7E12C();
      OUTLINED_FUNCTION_11_5(&__dst[24]);
      v104(v102, v103);
      v105 = OUTLINED_FUNCTION_3_14(&v160);
      v106(v105);

    case 5u:
      v123 = *(v84 + 1);
      *__dst = *v84;
      *&__dst[16] = v123;
      v124 = *(v84 + 3);
      *&__dst[32] = *(v84 + 2);
      *&__dst[48] = v124;
      v151[0] = 5;
      sub_267B77D90();
      OUTLINED_FUNCTION_2_18(&__dst[40]);
      *v151 = *__dst;
      *&v151[16] = *&__dst[16];
      *&v151[32] = *&__dst[32];
      *&v151[48] = *&__dst[48];
      sub_267B66C8C();
      OUTLINED_FUNCTION_24_0(&__dst[64]);
      sub_267B7E12C();
      v125 = OUTLINED_FUNCTION_3_14(&__dst[48]);
      v126(v125);
      OUTLINED_FUNCTION_11_5(&v160);
      v127(v93, v92);
      return sub_267B66C00(__dst);
    case 6u:
      OUTLINED_FUNCTION_31_0(v84, type metadata accessor for ButtonSnippetModel, &__dst[72]);
      __dst[0] = 6;
      sub_267B77D3C();
      OUTLINED_FUNCTION_2_18(&__dst[80]);
      OUTLINED_FUNCTION_19_0();
      sub_267B78FF4(v128, v129);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_24_0(&v155);
      OUTLINED_FUNCTION_23_0(&__dst[56]);
      v130 = OUTLINED_FUNCTION_3_14(v154);
      v131(v130);
      v98 = type metadata accessor for ButtonSnippetModel;
      goto LABEL_10;
    case 7u:
      memcpy(__dst, v84, sizeof(__dst));
      v151[0] = 7;
      sub_267B77CE8();
      OUTLINED_FUNCTION_2_18(&v156);
      memcpy(v151, __dst, sizeof(v151));
      sub_267B501A8();
      OUTLINED_FUNCTION_24_0(&v158);
      sub_267B7E12C();
      v116 = OUTLINED_FUNCTION_3_14(&v157);
      v117(v116);
      OUTLINED_FUNCTION_11_5(&v160);
      v118(v93, v92);
      return sub_267B4EBA4(__dst);
    default:
      sub_267B78F04(v84, v77, type metadata accessor for ConfirmationSnippetModel);
      __dst[0] = 0;
      sub_267B77F34();
      OUTLINED_FUNCTION_4_12();
      v93 = v148;
      sub_267B7E0BC();
      OUTLINED_FUNCTION_16_2();
      sub_267B78FF4(v94, v95);
      OUTLINED_FUNCTION_27_0();
      v96 = v133[2];
      sub_267B7E12C();
      OUTLINED_FUNCTION_11_5(&v148);
      v97(v70, v96);
      v98 = type metadata accessor for ConfirmationSnippetModel;
LABEL_10:
      sub_267B77F88(v77, v98);
      OUTLINED_FUNCTION_11_5(&v160);
      return v132(v93, v92);
  }
}

uint64_t type metadata accessor for MessagesUIPluginModel()
{
  result = qword_280219A08;
  if (!qword_280219A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267B77C30()
{
  result = qword_280219968;
  if (!qword_280219968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219968);
  }

  return result;
}

uint64_t sub_267B77C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesUIPluginModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B77CE8()
{
  result = qword_280219970;
  if (!qword_280219970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219970);
  }

  return result;
}

unint64_t sub_267B77D3C()
{
  result = qword_280219978;
  if (!qword_280219978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219978);
  }

  return result;
}

unint64_t sub_267B77D90()
{
  result = qword_280219980;
  if (!qword_280219980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219980);
  }

  return result;
}

unint64_t sub_267B77DE4()
{
  result = qword_280219988;
  if (!qword_280219988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219988);
  }

  return result;
}

unint64_t sub_267B77E38()
{
  result = qword_280219990;
  if (!qword_280219990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219990);
  }

  return result;
}

unint64_t sub_267B77E8C()
{
  result = qword_280219998;
  if (!qword_280219998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219998);
  }

  return result;
}

unint64_t sub_267B77EE0()
{
  result = qword_2802199A0;
  if (!qword_2802199A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802199A0);
  }

  return result;
}

unint64_t sub_267B77F34()
{
  result = qword_2802199A8;
  if (!qword_2802199A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802199A8);
  }

  return result;
}

uint64_t sub_267B77F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t MessagesUIPluginModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199B0, &qword_267B852C8);
  OUTLINED_FUNCTION_0_19(v3, &v178);
  v165 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199B8, &qword_267B852D0);
  OUTLINED_FUNCTION_0_19(v9, &v177);
  v166 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199C0, &qword_267B852D8);
  OUTLINED_FUNCTION_0_19(v15, &v176);
  v161 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199C8, &qword_267B852E0);
  OUTLINED_FUNCTION_0_19(v21, &v175);
  v159 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199D0, &qword_267B852E8);
  OUTLINED_FUNCTION_0_19(v27, &__src[80]);
  v158 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15_0();
  v170 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199D8, &qword_267B852F0);
  OUTLINED_FUNCTION_0_19(v33, &__src[72]);
  v157 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_15_0();
  v169 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199E0, &qword_267B852F8);
  OUTLINED_FUNCTION_0_19(v39, &__src[64]);
  v156 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199E8, &qword_267B85300);
  OUTLINED_FUNCTION_0_19(v45, &__src[56]);
  v155 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_7(v50);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802199F0, &unk_267B85308);
  v168 = *(v172 - 8);
  v51 = *(v168 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v52);
  v54 = v149 - v53;
  v167 = type metadata accessor for MessagesUIPluginModel();
  v55 = OUTLINED_FUNCTION_3_3(v167);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_22_0();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = v149 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v67 = v149 - v66;
  v68 = MEMORY[0x28223BE20](v65);
  v70 = v149 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v73 = v149 - v72;
  MEMORY[0x28223BE20](v71);
  v75 = v149 - v74;
  v77 = a1[3];
  v76 = a1[4];
  v173 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v77);
  sub_267B77C30();
  v171 = v54;
  v78 = v176;
  sub_267B7E25C();
  if (v78)
  {
    goto LABEL_9;
  }

  v149[2] = v73;
  v149[3] = v70;
  v150 = v67;
  v151 = v64;
  v79 = v170;
  v176 = v75;
  v80 = v171;
  v81 = v172;
  v82 = sub_267B7E09C();
  result = sub_267B45CC4(v82, 0);
  if (v85 == v86 >> 1)
  {
LABEL_8:
    v97 = v167;
    v96 = v168;
    v98 = sub_267B7DFBC();
    swift_allocError();
    v100 = v99;
    v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580) + 48);
    *v100 = v97;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v98 - 8) + 104))(v100, *MEMORY[0x277D84160], v98);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v96 + 8))(v80, v81);
LABEL_9:
    v102 = v173;
    return __swift_destroy_boxed_opaque_existential_0(v102);
  }

  v149[1] = 0;
  if (v85 < (v86 >> 1))
  {
    v87 = *(v84 + v85);
    sub_267B45CBC(v85 + 1);
    v89 = v88;
    v91 = v90;
    swift_unknownObjectRelease();
    v92 = v166;
    if (v89 == v91 >> 1)
    {
      v93 = v164;
      switch(v87)
      {
        case 1:
          __src[0] = 1;
          sub_267B77EE0();
          OUTLINED_FUNCTION_8_12(&v180);
          type metadata accessor for AutoSendableBinaryButton();
          OUTLINED_FUNCTION_20_1();
          sub_267B78FF4(v110, v111);
          OUTLINED_FUNCTION_21(&v169);
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          v134 = OUTLINED_FUNCTION_6_12(&__src[16]);
          v135(v134);
          v136 = OUTLINED_FUNCTION_7_10();
          v137(v136);
          goto LABEL_18;
        case 2:
          __src[0] = 2;
          sub_267B77E8C();
          OUTLINED_FUNCTION_30_0();
          type metadata accessor for MessageDraftSnippetModel();
          OUTLINED_FUNCTION_18_3();
          sub_267B78FF4(v113, v114);
          v121 = v150;
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          v122 = OUTLINED_FUNCTION_6_12(&__src[24]);
          v123(v122);
          v124 = OUTLINED_FUNCTION_7_10();
          v125(v124);
          OUTLINED_FUNCTION_29_0();
          goto LABEL_19;
        case 3:
          __src[0] = 3;
          sub_267B77E38();
          OUTLINED_FUNCTION_10_5();
          type metadata accessor for SentMessageSnippetModel();
          OUTLINED_FUNCTION_17_1();
          sub_267B78FF4(v105, v106);
          OUTLINED_FUNCTION_21(&v171);
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_6_12(&__src[32]);
          v127(v126);
          v128 = OUTLINED_FUNCTION_7_10();
          v129(v128);
          goto LABEL_18;
        case 4:
          __src[0] = 4;
          sub_267B77DE4();
          v103 = v163;
          OUTLINED_FUNCTION_30_0();
          sub_267B70664();
          v104 = v162;
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_11_5(&__src[40]);
          v118(v103, v104);
          v119 = OUTLINED_FUNCTION_7_10();
          v120(v119);
          v121 = v152;
          *v152 = *__src;
          *(v121 + 8) = *&__src[8];
          OUTLINED_FUNCTION_29_0();
          goto LABEL_19;
        case 5:
          __src[0] = 5;
          sub_267B77D90();
          OUTLINED_FUNCTION_8_12(&v181);
          sub_267B66C34();
          OUTLINED_FUNCTION_4_12();
          OUTLINED_FUNCTION_28();
          v112 = (v168 + 8);
          swift_unknownObjectRelease();
          v138 = OUTLINED_FUNCTION_26_0();
          v139(v138);
          (*v112)(v171, v172);
          v140 = *&__src[16];
          v121 = v153;
          *v153 = *__src;
          v121[1] = v140;
          v141 = *&__src[48];
          v121[2] = *&__src[32];
          v121[3] = v141;
          OUTLINED_FUNCTION_29_0();
          goto LABEL_19;
        case 6:
          __src[0] = 6;
          sub_267B77D3C();
          OUTLINED_FUNCTION_21(&v182);
          OUTLINED_FUNCTION_10_5();
          type metadata accessor for ButtonSnippetModel(0);
          OUTLINED_FUNCTION_19_0();
          sub_267B78FF4(v115, v116);
          v117 = v160;
          OUTLINED_FUNCTION_15_4();
          sub_267B7E08C();
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          (*(v92 + 8))(v79, v87);
          v145 = OUTLINED_FUNCTION_7_10();
          v146(v145);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_23();
          v148 = v117;
          break;
        case 7:
          __src[0] = 7;
          sub_267B77CE8();
          OUTLINED_FUNCTION_8_12(&v183);
          sub_267B50150();
          OUTLINED_FUNCTION_4_12();
          OUTLINED_FUNCTION_28();
          v107 = (v168 + 8);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_26_0();
          v109(v108);
          (*v107)(v171, v172);
          v121 = v154;
          memcpy(v154, __src, 0x58uLL);
          OUTLINED_FUNCTION_29_0();
LABEL_19:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_23();
          v148 = v121;
          break;
        default:
          __src[0] = 0;
          sub_267B77F34();
          OUTLINED_FUNCTION_8_12(&v179);
          type metadata accessor for ConfirmationSnippetModel(0);
          OUTLINED_FUNCTION_16_2();
          sub_267B78FF4(v94, v95);
          OUTLINED_FUNCTION_21(&v168);
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_25_0();
          swift_unknownObjectRelease();
          v130 = OUTLINED_FUNCTION_6_12(&__src[8]);
          v131(v130);
          v132 = OUTLINED_FUNCTION_7_10();
          v133(v132);
LABEL_18:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_23();
          v148 = v79;
          break;
      }

      v142 = v176;
      sub_267B78F04(v148, v176, v147);
      v143 = v173;
      OUTLINED_FUNCTION_1_23();
      sub_267B78F04(v142, v93, v144);
      v102 = v143;
      return __swift_destroy_boxed_opaque_existential_0(v102);
    }

    v80 = v171;
    v81 = v172;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_267B78F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_3_3(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267B78FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267B7903C()
{
  result = type metadata accessor for ConfirmationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AutoSendableBinaryButton();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MessageDraftSnippetModel();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SentMessageSnippetModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ButtonSnippetModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesUIPluginModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B79254(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B79304()
{
  result = qword_280219A18;
  if (!qword_280219A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A18);
  }

  return result;
}

unint64_t sub_267B7935C()
{
  result = qword_280219A20;
  if (!qword_280219A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A20);
  }

  return result;
}

unint64_t sub_267B793B4()
{
  result = qword_280219A28;
  if (!qword_280219A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A28);
  }

  return result;
}

unint64_t sub_267B7940C()
{
  result = qword_280219A30;
  if (!qword_280219A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A30);
  }

  return result;
}

unint64_t sub_267B79464()
{
  result = qword_280219A38;
  if (!qword_280219A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A38);
  }

  return result;
}

unint64_t sub_267B794BC()
{
  result = qword_280219A40;
  if (!qword_280219A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A40);
  }

  return result;
}

unint64_t sub_267B79514()
{
  result = qword_280219A48;
  if (!qword_280219A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A48);
  }

  return result;
}

unint64_t sub_267B7956C()
{
  result = qword_280219A50;
  if (!qword_280219A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A50);
  }

  return result;
}

unint64_t sub_267B795C4()
{
  result = qword_280219A58;
  if (!qword_280219A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A58);
  }

  return result;
}

unint64_t sub_267B7961C()
{
  result = qword_280219A60;
  if (!qword_280219A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A60);
  }

  return result;
}

unint64_t sub_267B79674()
{
  result = qword_280219A68;
  if (!qword_280219A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A68);
  }

  return result;
}

unint64_t sub_267B796CC()
{
  result = qword_280219A70;
  if (!qword_280219A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A70);
  }

  return result;
}

unint64_t sub_267B79724()
{
  result = qword_280219A78;
  if (!qword_280219A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A78);
  }

  return result;
}

unint64_t sub_267B7977C()
{
  result = qword_280219A80;
  if (!qword_280219A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A80);
  }

  return result;
}

unint64_t sub_267B797D4()
{
  result = qword_280219A88;
  if (!qword_280219A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A88);
  }

  return result;
}

unint64_t sub_267B7982C()
{
  result = qword_280219A90;
  if (!qword_280219A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A90);
  }

  return result;
}

unint64_t sub_267B79884()
{
  result = qword_280219A98;
  if (!qword_280219A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219A98);
  }

  return result;
}

unint64_t sub_267B798DC()
{
  result = qword_280219AA0;
  if (!qword_280219AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AA0);
  }

  return result;
}

unint64_t sub_267B79934()
{
  result = qword_280219AA8;
  if (!qword_280219AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AA8);
  }

  return result;
}

unint64_t sub_267B7998C()
{
  result = qword_280219AB0;
  if (!qword_280219AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AB0);
  }

  return result;
}

unint64_t sub_267B799E4()
{
  result = qword_280219AB8;
  if (!qword_280219AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AB8);
  }

  return result;
}

unint64_t sub_267B79A3C()
{
  result = qword_280219AC0;
  if (!qword_280219AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AC0);
  }

  return result;
}

unint64_t sub_267B79A94()
{
  result = qword_280219AC8;
  if (!qword_280219AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AC8);
  }

  return result;
}

unint64_t sub_267B79AEC()
{
  result = qword_280219AD0;
  if (!qword_280219AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AD0);
  }

  return result;
}

unint64_t sub_267B79B44()
{
  result = qword_280219AD8;
  if (!qword_280219AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AD8);
  }

  return result;
}

unint64_t sub_267B79B9C()
{
  result = qword_280219AE0;
  if (!qword_280219AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AE0);
  }

  return result;
}

unint64_t sub_267B79BF4()
{
  result = qword_280219AE8;
  if (!qword_280219AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 288);
  v5 = *(v1 - 296);

  return sub_267B7E0BC();
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  v1 = *(*(v0 - 224) + 8);
  result = *(v0 - 200);
  v3 = *(v0 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_12@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 200);
  v4 = *(v1 - 192);

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_10_5()
{
  v3 = *(v0 - 200);
  v2 = *(v0 - 192);

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_23_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);

  return sub_267B7E12C();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
  result = v0;
  v3 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);

  return sub_267B7DFFC();
}

uint64_t OUTLINED_FUNCTION_31_0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_267B78F04(a1, v4, a2);
}

uint64_t LinkAttachment.init(urls:isDraft:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t LinkAttachment.urls.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_267B79EF0(uint64_t a1)
{
  v2 = sub_267B7A144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B79F2C(uint64_t a1)
{
  v2 = sub_267B7A144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkAttachment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219AF0, &unk_267B85EB0);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[2] = *(v1 + 8);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7A144();

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

unint64_t sub_267B7A144()
{
  result = qword_280219AF8;
  if (!qword_280219AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219AF8);
  }

  return result;
}

uint64_t LinkAttachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B00, &qword_267B85EC0);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7A144();
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

unint64_t sub_267B7A3BC(uint64_t a1)
{
  *(a1 + 16) = sub_267B45288();
  result = sub_267B45100();
  *(a1 + 24) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B7A50C()
{
  result = qword_280219B08;
  if (!qword_280219B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B08);
  }

  return result;
}

unint64_t sub_267B7A564()
{
  result = qword_280219B10;
  if (!qword_280219B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B10);
  }

  return result;
}

unint64_t sub_267B7A5BC()
{
  result = qword_280219B18;
  if (!qword_280219B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B18);
  }

  return result;
}

uint64_t RecipientLabel.init(contactName:appBundleIdentifiers:launchAppWithIntent:selectedAppIdentifier:unlockDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_280218FC0;
  v16 = qword_280218F90;
  v17 = qword_280218F98;
  a8[8] = qword_280218FC8;
  a8[9] = v16;
  v18 = qword_280218F30;
  v19 = qword_280218F38;
  a8[10] = v17;
  a8[11] = v18;
  v20 = qword_280218F50;
  v21 = qword_280218F58;
  a8[12] = v19;
  a8[13] = v20;
  a8[14] = v21;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  a8[7] = v15;
}

uint64_t RecipientLabel.contactName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_8_6();
}

uint64_t RecipientLabel.contactName.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RecipientLabel.appBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void *RecipientLabel.launchAppWithIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267B7A880(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RecipientLabel.launchAppWithIntent.setter(v1);
}

void (*RecipientLabel.launchAppWithIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F99C;
}

uint64_t RecipientLabel.selectedAppIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t RecipientLabel.selectedAppIdentifier.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void *RecipientLabel.unlockDevice.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_267B7A9A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RecipientLabel.unlockDevice.setter(v1);
}

void (*RecipientLabel.unlockDevice.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B7AA20;
}

void sub_267B7AA20(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(v2 + 48);
  if (a2)
  {
    v5 = v3;

    *(v2 + 48) = v3;
  }

  else
  {

    *(v2 + 48) = v3;
  }
}

uint64_t RecipientLabel.toLabelText.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t RecipientLabel.toLabelText.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t RecipientLabel.changeContactLabelText.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t RecipientLabel.changeContactLabelText.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t RecipientLabel.cancelButtonText.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t RecipientLabel.cancelButtonText.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t RecipientLabel.doneButtonText.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t RecipientLabel.doneButtonText.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t sub_267B7AC98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000267B876B0 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000267B870C0 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000267B879D0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65446B636F6C6E75 && a2 == 0xEC00000065636976;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x546C6562614C6F74 && a2 == 0xEB00000000747865;
            if (v10 || (sub_267B7E16C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x8000000267B879F0 == a2;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000267B87A10 == a2;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x74747542656E6F64 && a2 == 0xEE00747865546E6FLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_267B7E16C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_267B7AF70(char a1)
{
  result = 0x4E746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x65446B636F6C6E75;
      break;
    case 5:
      result = 0x546C6562614C6F74;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x74747542656E6F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B7B0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B7AC98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B7B0E8(uint64_t a1)
{
  v2 = sub_267B7B4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B7B124(uint64_t a1)
{
  v2 = sub_267B7B4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipientLabel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B20, &unk_267B860D0);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v28 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v32 = v1[3];
  v33 = v13;
  v14 = v1[4];
  v30 = v1[5];
  v31 = v14;
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[9];
  v28[8] = v1[8];
  v29 = v15;
  v28[5] = v17;
  v18 = v1[11];
  v28[6] = v1[10];
  v28[7] = v16;
  v19 = v1[12];
  v20 = v1[13];
  v28[3] = v18;
  v28[4] = v19;
  v21 = v1[14];
  v28[1] = v20;
  v28[2] = v21;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7B4B0();
  sub_267B7E27C();
  LOBYTE(v36) = 0;
  v23 = v34;
  sub_267B7E0FC();
  if (!v23)
  {
    v24 = v32;
    v36 = v33;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    sub_267B4A554(&qword_2802189E8);
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_7_11();
    sub_267B7E12C();
    v36 = v24;
    v35 = 2;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
    OUTLINED_FUNCTION_4_13(&qword_280218DA0);
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_7_11();
    sub_267B7E12C();

    OUTLINED_FUNCTION_11_6(3);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
    v36 = v29;
    v35 = 4;
    v26 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B30, &qword_267B860E8);
    OUTLINED_FUNCTION_4_13(&qword_280219B38);
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_7_11();
    sub_267B7E12C();

    OUTLINED_FUNCTION_11_6(5);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
    OUTLINED_FUNCTION_11_6(6);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
    OUTLINED_FUNCTION_11_6(7);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
    OUTLINED_FUNCTION_11_6(8);
    OUTLINED_FUNCTION_7_11();
    sub_267B7E0FC();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_267B7B4B0()
{
  result = qword_280219B28;
  if (!qword_280219B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B28);
  }

  return result;
}

void RecipientLabel.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B40, &qword_267B860F0);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v7 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7B4B0();

  sub_267B7E25C();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    OUTLINED_FUNCTION_6_13();
    v8 = sub_267B7E05C();
    v34 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    sub_267B4A554(&qword_2802189C0);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_6_13();
    sub_267B7E08C();
    v31 = v40[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
    OUTLINED_FUNCTION_2_19();
    sub_267B40BFC(v10, &qword_280218D98, &qword_267B860E0);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_6_13();
    sub_267B7E08C();
    v29 = v40[0];
    v11 = OUTLINED_FUNCTION_1_24(3);
    v30 = v12;
    v28 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B30, &qword_267B860E8);
    OUTLINED_FUNCTION_2_19();
    sub_267B40BFC(v13, &qword_280219B30, &qword_267B860E8);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_6_13();
    sub_267B7E08C();
    v14 = v40[0];
    v26 = OUTLINED_FUNCTION_1_24(5);
    v27 = v15;

    v16 = OUTLINED_FUNCTION_1_24(6);
    v18 = v17;
    v35 = v16;

    v19 = OUTLINED_FUNCTION_1_24(7);
    v21 = v20;
    v36 = v19;

    v41 = 8;
    OUTLINED_FUNCTION_6_13();
    v37 = sub_267B7E05C();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_0_20();
    v25(v24);

    v39[0] = v8;
    v39[1] = v34;
    v39[2] = v40[0];
    v39[3] = v40[0];
    v39[4] = v28;
    v39[5] = v30;
    v39[6] = v40[0];
    v39[7] = v26;
    v39[8] = v27;
    v39[9] = v35;
    v39[10] = v18;
    v39[11] = v36;
    v39[12] = v21;
    v39[13] = v37;
    v39[14] = v23;
    memcpy(a2, v39, 0x78uLL);
    sub_267B7BB00(v39, v40);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v40[0] = v8;
    v40[1] = v34;
    v40[2] = v31;
    v40[3] = v29;
    v40[4] = v28;
    v40[5] = v30;
    v40[6] = v14;
    v40[7] = v26;
    v40[8] = v27;
    v40[9] = v35;
    v40[10] = v18;
    v40[11] = v36;
    v40[12] = v21;
    v40[13] = v37;
    v40[14] = v23;
    sub_267B7BB38(v40);
  }
}

uint64_t sub_267B7BBA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_267B7BBE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecipientLabel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B7BD2C()
{
  result = qword_280219B50;
  if (!qword_280219B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B50);
  }

  return result;
}

unint64_t sub_267B7BD84()
{
  result = qword_280219B58;
  if (!qword_280219B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B58);
  }

  return result;
}

unint64_t sub_267B7BDDC()
{
  result = qword_280219B60;
  if (!qword_280219B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_13(unint64_t *a1)
{

  return sub_267B40BFC(a1, v1, v2);
}

uint64_t AutoSendableBinaryButton.init(shouldAutoSend:autoSendTimeout:delayedActionCancelCommand:handleIntent:speechSynthesisId:isFirstPartyApp:responseMode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_280218F18;
  *(a8 + 48) = qword_280218F10;
  *(a8 + 56) = v17;
  v18 = qword_280218F38;
  *(a8 + 64) = qword_280218F30;
  *(a8 + 72) = v18;
  v19 = *(type metadata accessor for AutoSendableBinaryButton() + 48);
  v20 = sub_267B7DC1C();
  __swift_storeEnumTagSinglePayload(a8 + v19, 1, 1, v20);
  *a8 = a1 & 1;
  *(a8 + 8) = a9;
  v21 = *(a8 + 16);

  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 80) = a6 & 1;
  return sub_267B40A18(a7, a8 + v19);
}

uint64_t type metadata accessor for AutoSendableBinaryButton()
{
  result = qword_280219B88;
  if (!qword_280219B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *AutoSendableBinaryButton.delayedActionCancelCommand.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_267B7C114(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableBinaryButton.delayedActionCancelCommand.setter(v1);
}

void (*AutoSendableBinaryButton.delayedActionCancelCommand.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F880;
}

void *AutoSendableBinaryButton.handleIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267B7C1B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AutoSendableBinaryButton.handleIntent.setter(v1);
}

void (*AutoSendableBinaryButton.handleIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F99C;
}

uint64_t AutoSendableBinaryButton.speechSynthesisId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AutoSendableBinaryButton.speechSynthesisId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AutoSendableBinaryButton.sendLabelText.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AutoSendableBinaryButton.sendLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AutoSendableBinaryButton.cancelLabelText.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AutoSendableBinaryButton.cancelLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t AutoSendableBinaryButton.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutoSendableBinaryButton() + 48);

  return sub_267B40A88(v3, a1);
}

uint64_t AutoSendableBinaryButton.responseMode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutoSendableBinaryButton() + 48);

  return sub_267B40A18(a1, v3);
}

uint64_t AutoSendableBinaryButton.description.getter()
{
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD000000000000029, 0x8000000267B87A30);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v1, v2);

  MEMORY[0x26D601760](0xD000000000000015, 0x8000000267B874E0);
  if (*(v0 + 40))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x26D601760](v3, v4);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267B7C5EC(uint64_t a1, uint64_t a2)
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
              v11 = a1 == 0x614C6C65636E6163 && a2 == 0xEF747865546C6562;
              if (v11 || (sub_267B7E16C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x5074737269467369 && a2 == 0xEF70704179747261;
                if (v12 || (sub_267B7E16C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_267B7E16C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_267B7C8E8(char a1)
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
      result = 0x614C6C65636E6163;
      break;
    case 7:
      result = 0x5074737269467369;
      break;
    case 8:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B7CA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B7C5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B7CA6C(uint64_t a1)
{
  v2 = sub_267B7CDEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B7CAA8(uint64_t a1)
{
  v2 = sub_267B7CDEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSendableBinaryButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B68, &qword_267B86318);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B7CDEC();
  sub_267B7E27C();
  v14 = *v3;
  LOBYTE(v30) = 0;
  OUTLINED_FUNCTION_6();
  sub_267B7E10C();
  if (!v2)
  {
    v15 = *(v3 + 1);
    LOBYTE(v30) = 1;
    OUTLINED_FUNCTION_6();
    sub_267B7E11C();
    v30 = *(v3 + 2);
    HIBYTE(v29) = 2;
    v16 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    OUTLINED_FUNCTION_5_0(&qword_2802185C8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v30 = *(v3 + 3);
    HIBYTE(v29) = 3;
    v17 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    OUTLINED_FUNCTION_5_0(&qword_2802185D8);
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v19 = *(v3 + 4);
    v20 = *(v3 + 5);
    OUTLINED_FUNCTION_2_20(4);
    sub_267B7E0CC();
    v21 = *(v3 + 6);
    v22 = *(v3 + 7);
    OUTLINED_FUNCTION_2_20(5);
    sub_267B7E0FC();
    v23 = *(v3 + 8);
    v24 = *(v3 + 9);
    OUTLINED_FUNCTION_2_20(6);
    sub_267B7E0FC();
    v25 = v3[80];
    LOBYTE(v30) = 7;
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v26 = *(type metadata accessor for AutoSendableBinaryButton() + 48);
    LOBYTE(v30) = 8;
    sub_267B7DC1C();
    OUTLINED_FUNCTION_5_14();
    sub_267B7D57C(v27, v28);
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_267B7CDEC()
{
  result = qword_280219B70;
  if (!qword_280219B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B70);
  }

  return result;
}

uint64_t AutoSendableBinaryButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185A8, &qword_267B7ECC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219B78, &qword_267B86320);
  v7 = OUTLINED_FUNCTION_8(v6);
  v50 = v8;
  v51 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = type metadata accessor for AutoSendableBinaryButton();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 2) = 0;
  v15 = (v14 + 16);
  *(v14 + 3) = 0;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v16 = qword_280218F18;
  v17 = qword_280218F38;
  v18 = *(v11 + 48);
  v19 = sub_267B7DC1C();
  v55 = v18;
  __swift_storeEnumTagSinglePayload(&v14[v18], 1, 1, v19);
  v20 = a1;
  v22 = a1[3];
  v21 = a1[4];
  v56 = v20;
  __swift_project_boxed_opaque_existential_1(v20, v22);
  sub_267B7CDEC();
  v53 = v16;

  v54 = v17;

  v23 = v52;
  sub_267B7E25C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v56);

    v28 = *(v14 + 3);

    return sub_267B40B94(&v14[v55]);
  }

  else
  {
    LOBYTE(v58) = 0;
    *v14 = sub_267B7E06C() & 1;
    LOBYTE(v58) = 1;
    sub_267B7E07C();
    *(v14 + 1) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185C0, &qword_267B7ECD0);
    v57 = 2;
    OUTLINED_FUNCTION_3_15();
    sub_267B40BFC(v25, v26, v27);
    OUTLINED_FUNCTION_8_13();
    sub_267B7E08C();
    v29 = v58;

    *v15 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802185D0, &qword_267B7ECD8);
    v57 = 3;
    OUTLINED_FUNCTION_3_15();
    sub_267B40BFC(v30, v31, v32);
    OUTLINED_FUNCTION_8_13();
    sub_267B7E08C();
    v33 = v58;

    *(v14 + 3) = v33;
    OUTLINED_FUNCTION_1_25(4);
    *(v14 + 4) = sub_267B7E01C();
    *(v14 + 5) = v34;
    OUTLINED_FUNCTION_1_25(5);
    v35 = sub_267B7E05C();
    v37 = v36;

    *(v14 + 6) = v35;
    *(v14 + 7) = v37;
    OUTLINED_FUNCTION_1_25(6);
    v38 = sub_267B7E05C();
    v53 = v37;
    v40 = v39;

    *(v14 + 8) = v38;
    *(v14 + 9) = v40;
    OUTLINED_FUNCTION_1_25(7);
    v14[80] = sub_267B7E06C() & 1;
    LOBYTE(v58) = 8;
    OUTLINED_FUNCTION_5_14();
    sub_267B7D57C(v41, v42);
    v43 = v49;
    sub_267B7E04C();
    v44 = OUTLINED_FUNCTION_0_21();
    v45(v44);
    sub_267B40A18(v43, &v14[v55]);
    sub_267B7D3B4(v14, v48);
    __swift_destroy_boxed_opaque_existential_0(v56);
    return sub_267B7D418(v14);
  }
}

uint64_t sub_267B7D3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableBinaryButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B7D418(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendableBinaryButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B7D490(uint64_t a1)
{
  result = sub_267B7D57C(&qword_280219B80, type metadata accessor for AutoSendableBinaryButton);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267B7D57C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267B7D61C()
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

_BYTE *storeEnumTagSinglePayload for AutoSendableBinaryButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B7D804()
{
  result = qword_280219B98;
  if (!qword_280219B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219B98);
  }

  return result;
}

unint64_t sub_267B7D85C()
{
  result = qword_280219BA0;
  if (!qword_280219BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219BA0);
  }

  return result;
}

unint64_t sub_267B7D8B4()
{
  result = qword_280219BA8;
  if (!qword_280219BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219BA8);
  }

  return result;
}