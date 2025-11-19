uint64_t AutoSendInfo.description.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];

  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD000000000000021, 0x8000000267B874B0);
  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x26D601760](v5, v1);

  MEMORY[0x26D601760](0xD000000000000015, 0x8000000267B874E0);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7104878;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x26D601760](v6, v7);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

unint64_t CorrectionInfo.description.getter()
{
  v1 = *v0;
  sub_267B7DF8C();

  OUTLINED_FUNCTION_20();
  v4 = *(v1 + 16);
  v2 = sub_267B7E14C();
  MEMORY[0x26D601760](v2);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t PhotoSharingInfo.description.getter()
{
  v1 = v0;
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD00000000000001ELL, 0x8000000267B87530);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v2, v3);

  MEMORY[0x26D601760](0xD000000000000019, 0x8000000267B87550);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  if (*(v0 + 17))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 17))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D601760](v4, v5);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v6 = *(v0 + 24);

  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x26D6017E0](v7, MEMORY[0x277D837D0]);
  v11 = v10;

  MEMORY[0x26D601760](v9, v11);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v12 = v1[5];

  v14 = MEMORY[0x26D6017E0](v13, v8);
  v16 = v15;

  MEMORY[0x26D601760](v14, v16);

  MEMORY[0x26D601760](0xD000000000000015, 0x8000000267B875B0);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v17 = v1[4];
  v18 = sub_267B7DA6C();

  v20 = MEMORY[0x26D6017E0](v19, v18);
  v22 = v21;

  MEMORY[0x26D601760](v20, v22);

  MEMORY[0x26D601760](0xD000000000000014, 0x8000000267B875D0);
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v24 = v1[6];
  v23 = v1[7];
  if (v23)
  {
    v25 = v1[6];
  }

  else
  {
    v25 = 0;
  }

  if (v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  MEMORY[0x26D601760](v25, v26);

  return 0;
}

void MessageDraftSnippetModel.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190F8, &qword_267B82068);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24();
  v11 = v4[4];
  OUTLINED_FUNCTION_41(v4, v4[3]);
  sub_267B60AF4();
  OUTLINED_FUNCTION_40();
  sub_267B7E27C();
  sub_267B7DACC();
  OUTLINED_FUNCTION_10_3();
  sub_267B61754(v12);
  OUTLINED_FUNCTION_3_1();
  sub_267B7E12C();
  if (!v1)
  {
    v13 = type metadata accessor for MessageDraftSnippetModel();
    v34 = *(v2 + v13[5]);
    v14 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802186A8, &qword_267B7EF28);
    OUTLINED_FUNCTION_35();
    sub_267B42E70(v15);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v16 = *(v2 + v13[7]);
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v17 = v13[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218678, &qword_267B7EF00);
    OUTLINED_FUNCTION_0_2();
    sub_267B42EB4(v18);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    v19 = (v2 + v13[8]);
    v35 = *v19;
    v38 = v19[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802190D8, &qword_267B82060);
    OUTLINED_FUNCTION_35();
    sub_267B42E70(v20);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();

    v21 = (v2 + v13[9]);
    v22 = *v21;
    v23 = v21[1];
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    v24 = *(v2 + v13[10]);
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    v25 = (v2 + v13[11]);
    v36 = *v25;
    v39 = v25[1];
    v40 = v25[2];
    v41 = v25[3];
    v42 = v25[4];
    sub_267B60A64(*v25, v39, v40);
    sub_267B60CD4();
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();
    sub_267B60AAC(v36, v39, v40);
    v26 = *(v2 + v13[12]);
    v27 = sub_267B60D28();

    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_6();
    sub_267B7E0EC();

    if (!v27)
    {
      v37 = *(v2 + v13[13]);
      type metadata accessor for PhotoSharingInfo();
      OUTLINED_FUNCTION_9_3();
      sub_267B61754(v28);
      OUTLINED_FUNCTION_3_1();
      sub_267B7E0EC();
      v29 = v13[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218688, &qword_267B7EF10);
      OUTLINED_FUNCTION_0_2();
      sub_267B42F20(v30);
      OUTLINED_FUNCTION_3_1();
      sub_267B7E12C();
    }
  }

  v31 = *(v7 + 8);
  v32 = OUTLINED_FUNCTION_1_0();
  v33(v32);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B5F5F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65536F747561 && a2 == 0xEF74756F656D6954;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000267B87690 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000267B86D60 == a2)
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

uint64_t sub_267B5F71C(char a1)
{
  if (!a1)
  {
    return 0x646E65536F747561;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000011;
}

uint64_t sub_267B5F7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5F5F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B5F7EC(uint64_t a1)
{
  v2 = sub_267B60D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5F828(uint64_t a1)
{
  v2 = sub_267B60D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSendInfo.delayedActionAceId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t AutoSendInfo.delayedActionAceId.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t AutoSendInfo.speechSynthesisId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t AutoSendInfo.speechSynthesisId.setter()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void __swiftcall AutoSendInfo.init(autoSendTimeout:delayedActionAceId:speechSynthesisId:)(SiriMessagesCommon::AutoSendInfo *__return_ptr retstr, Swift::Double autoSendTimeout, Swift::String_optional delayedActionAceId, Swift::String_optional speechSynthesisId)
{
  retstr->autoSendTimeout = autoSendTimeout;
  retstr->delayedActionAceId = delayedActionAceId;
  retstr->speechSynthesisId = speechSynthesisId;
}

uint64_t AutoSendInfo.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219120, &qword_267B82070);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = a1[4];
  OUTLINED_FUNCTION_41(a1, a1[3]);
  sub_267B60D7C();
  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v27 = 0;
    OUTLINED_FUNCTION_25();
    sub_267B7E07C();
    v15 = v14;
    v26 = 1;
    OUTLINED_FUNCTION_25();
    v17 = sub_267B7E01C();
    v19 = v18;
    v25 = 2;
    OUTLINED_FUNCTION_25();
    v20 = sub_267B7E01C();
    v22 = v21;
    v23 = *(v7 + 8);
    v24 = v20;
    v23(v12, v5);
    *a2 = v15;
    a2[1] = v17;
    a2[2] = v19;
    a2[3] = v24;
    a2[4] = v22;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t AutoSendInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219130, &qword_267B82078);
  OUTLINED_FUNCTION_8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24();
  v10 = *v1;
  v18 = v1[2];
  v19 = v1[1];
  v11 = v1[4];
  v17 = v1[3];
  v12 = a1[4];
  OUTLINED_FUNCTION_41(a1, a1[3]);
  sub_267B60D7C();
  sub_267B7E27C();
  OUTLINED_FUNCTION_6();
  sub_267B7E11C();
  if (!v2)
  {
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_1_0();
  return v15(v14);
}

uint64_t sub_267B5FD30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000267B876B0 == a2)
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

uint64_t sub_267B5FE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B5FD30(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B5FE30(uint64_t a1)
{
  v2 = sub_267B60DD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B5FE6C(uint64_t a1)
{
  v2 = sub_267B60DD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CorrectionInfo.appBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void CorrectionInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219138, &unk_267B82080);
  OUTLINED_FUNCTION_8(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = v24[4];
  OUTLINED_FUNCTION_41(v24, v24[3]);
  sub_267B60DD0();
  sub_267B7E25C();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    OUTLINED_FUNCTION_14_2(&qword_2802189C0);
    sub_267B7E08C();
    (*(v29 + 8))(v34, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  OUTLINED_FUNCTION_14();
}

void CorrectionInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219148, &qword_267B82090);
  OUTLINED_FUNCTION_8(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  OUTLINED_FUNCTION_41(v24, v24[3]);
  sub_267B60DD0();

  sub_267B7E27C();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
  OUTLINED_FUNCTION_13_2(&qword_2802189E8);
  sub_267B7E12C();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B601D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5465726168537369 && a2 == 0xEB00000000736968;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000267B87630 == a2;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000267B86F80 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000267B86FA0 == a2;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000267B87650 == a2;
          if (v9 || (sub_267B7E16C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000267B86FC0 == a2)
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

unint64_t sub_267B603C0(char a1)
{
  result = 0x5465726168537369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B604D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B601D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B604F8(uint64_t a1)
{
  v2 = sub_267B6126C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B60534(uint64_t a1)
{
  v2 = sub_267B6126C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoSharingInfo.isShareThis.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t PhotoSharingInfo.isShareThis.setter(char a1)
{
  result = OUTLINED_FUNCTION_12_1();
  *(v1 + 16) = a1;
  return result;
}

uint64_t PhotoSharingInfo.shouldShowPhotoPicker.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t PhotoSharingInfo.shouldShowPhotoPicker.setter(char a1)
{
  result = OUTLINED_FUNCTION_12_1();
  *(v1 + 17) = a1;
  return result;
}

uint64_t PhotoSharingInfo.selectedPhotoAssets.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t PhotoSharingInfo.selectedPhotoAssets.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t PhotoSharingInfo.selectedPhotoUrls.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t PhotoSharingInfo.selectedPhotoUrls.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t PhotoSharingInfo.searchedPhotoAssets.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t PhotoSharingInfo.searchedPhotoAssets.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t PhotoSharingInfo.photoSearchQuery.getter()
{
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t PhotoSharingInfo.photoSearchQuery.setter()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_12_1();
  v3 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t PhotoSharingInfo.init(isShareThis:shouldShowPhotoPicker:selectedPhotoAssets:searchedPhotoAssets:selectedPhotoUrls:photoSearchQuery:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 16) = a1;
  *(v7 + 17) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a5;
  *(v7 + 40) = a4;
  swift_beginAccess();
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  return v7;
}

uint64_t type metadata accessor for MessageDraftSnippetModel()
{
  result = qword_280219178;
  if (!qword_280219178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B60A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_267B60AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_267B60AF4()
{
  result = qword_2802190C8;
  if (!qword_2802190C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190C8);
  }

  return result;
}

unint64_t sub_267B60B48()
{
  result = qword_2802190E8;
  if (!qword_2802190E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190E8);
  }

  return result;
}

unint64_t sub_267B60B9C()
{
  result = qword_2802190F0;
  if (!qword_2802190F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802190F0);
  }

  return result;
}

uint64_t sub_267B60C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageDraftSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B60C78(uint64_t a1)
{
  v2 = type metadata accessor for MessageDraftSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267B60CD4()
{
  result = qword_280219110;
  if (!qword_280219110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219110);
  }

  return result;
}

unint64_t sub_267B60D28()
{
  result = qword_280219118;
  if (!qword_280219118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219118);
  }

  return result;
}

unint64_t sub_267B60D7C()
{
  result = qword_280219128;
  if (!qword_280219128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219128);
  }

  return result;
}

unint64_t sub_267B60DD0()
{
  result = qword_280219140;
  if (!qword_280219140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219140);
  }

  return result;
}

unint64_t sub_267B60E24(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802189B8, &qword_267B7FB58);
    result = OUTLINED_FUNCTION_43();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t PhotoSharingInfo.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_7_2();
  v0 = swift_allocObject();
  PhotoSharingInfo.init(from:)();
  return v0;
}

void PhotoSharingInfo.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v0;
  v4 = v3;
  v20 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219150, &qword_267B82098);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v2[6] = 0;
  v2[7] = 0;
  v11 = v4[4];
  v21 = v4;
  OUTLINED_FUNCTION_41(v4, v4[3]);
  sub_267B6126C();
  sub_267B7E25C();
  if (v1)
  {
    v12 = v2[7];

    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    *(v2 + 16) = sub_267B7E06C() & 1;
    OUTLINED_FUNCTION_30(1);
    *(v2 + 17) = sub_267B7E06C() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    OUTLINED_FUNCTION_14_2(&qword_2802189C0);
    OUTLINED_FUNCTION_19();
    sub_267B7E08C();
    v2[3] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
    sub_267B61620(&qword_280218AD8);
    sub_267B7E08C();
    v2[4] = v22;
    OUTLINED_FUNCTION_19();
    sub_267B7E08C();
    v2[5] = v22;
    OUTLINED_FUNCTION_30(5);
    v13 = sub_267B7E01C();
    v15 = v14;
    v16 = *(v7 + 8);
    v17 = OUTLINED_FUNCTION_22();
    v18(v17);
    swift_beginAccess();
    v19 = v2[7];
    v2[6] = v13;
    v2[7] = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(v21);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B6126C()
{
  result = qword_280219158;
  if (!qword_280219158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219158);
  }

  return result;
}

void *PhotoSharingInfo.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return v0;
}

uint64_t PhotoSharingInfo.__deallocating_deinit()
{
  PhotoSharingInfo.deinit();
  v0 = OUTLINED_FUNCTION_7_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t PhotoSharingInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219160, &qword_267B820A8);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24();
  v11 = a1[4];
  OUTLINED_FUNCTION_41(a1, a1[3]);
  sub_267B6126C();
  OUTLINED_FUNCTION_40();
  sub_267B7E27C();
  OUTLINED_FUNCTION_2_4();
  swift_beginAccess();
  v12 = *(v3 + 16);
  OUTLINED_FUNCTION_6();
  sub_267B7E10C();
  if (v2)
  {
    v14 = *(v7 + 8);
    v15 = OUTLINED_FUNCTION_1_0();
    return v16(v15);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v13 = *(v3 + 17);
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v25 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    OUTLINED_FUNCTION_13_2(&qword_2802189E8);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v24 = *(v3 + 40);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v23 = *(v3 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218AC0, &qword_267B820A0);
    sub_267B61620(&qword_280218AC8);
    OUTLINED_FUNCTION_3_1();
    sub_267B7E12C();
    OUTLINED_FUNCTION_2_4();
    swift_beginAccess();
    v17 = *(v3 + 48);
    v18 = *(v3 + 56);

    OUTLINED_FUNCTION_6();
    sub_267B7E0CC();
    v19 = *(v7 + 8);
    v20 = OUTLINED_FUNCTION_1_0();
    v21(v20);
  }
}

unint64_t sub_267B61620(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280218AC0, &qword_267B820A0);
    sub_267B61754(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_267B61754(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_267B61798@<X0>(uint64_t *a1@<X8>)
{
  result = PhotoSharingInfo.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_267B61834()
{
  sub_267B7DACC();
  if (v0 <= 0x3F)
  {
    sub_267B61A1C();
    if (v1 <= 0x3F)
    {
      sub_267B61BE4(319, &qword_280218770, MEMORY[0x277D837D0], MEMORY[0x277D637C8]);
      if (v2 <= 0x3F)
      {
        sub_267B61AC0();
        if (v3 <= 0x3F)
        {
          sub_267B61BE4(319, &qword_280218650, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_267B61BE4(319, &qword_280219190, &type metadata for AutoSendInfo, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_267B61BE4(319, &qword_280219198, &type metadata for CorrectionInfo, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_267B43358();
                if (v7 <= 0x3F)
                {
                  sub_267B61BE4(319, &qword_280218780, &type metadata for SnippetLabels, MEMORY[0x277D637C8]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_267B61A1C()
{
  if (!qword_280218750)
  {
    sub_267B61A7C();
    v0 = type metadata accessor for ModelCodable();
    if (!v1)
    {
      atomic_store(v0, &qword_280218750);
    }
  }
}

unint64_t sub_267B61A7C()
{
  result = qword_280218758;
  if (!qword_280218758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280218758);
  }

  return result;
}

void sub_267B61AC0()
{
  if (!qword_280219188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219058, &qword_267B81C60);
    sub_267B61B8C(&qword_280219070);
    sub_267B61B8C(&qword_280219050);
    v0 = type metadata accessor for Redacted();
    if (!v1)
    {
      atomic_store(v0, &qword_280219188);
    }
  }
}

unint64_t sub_267B61B8C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219058, &qword_267B81C60);
    result = OUTLINED_FUNCTION_43();
    atomic_store(result, v1);
  }

  return result;
}

void sub_267B61BE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267B61C48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_267B61C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_267B61D14(uint64_t *a1, int a2)
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

uint64_t sub_267B61D54(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PhotoSharingInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CorrectionInfo.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AutoSendInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MessageDraftSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageDraftSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267B621C0()
{
  result = qword_2802191A0;
  if (!qword_2802191A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191A0);
  }

  return result;
}

unint64_t sub_267B62218()
{
  result = qword_2802191A8;
  if (!qword_2802191A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191A8);
  }

  return result;
}

unint64_t sub_267B62270()
{
  result = qword_2802191B0;
  if (!qword_2802191B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191B0);
  }

  return result;
}

unint64_t sub_267B622C8()
{
  result = qword_2802191B8;
  if (!qword_2802191B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191B8);
  }

  return result;
}

unint64_t sub_267B62320()
{
  result = qword_2802191C0;
  if (!qword_2802191C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191C0);
  }

  return result;
}

unint64_t sub_267B62378()
{
  result = qword_2802191C8;
  if (!qword_2802191C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191C8);
  }

  return result;
}

unint64_t sub_267B623D0()
{
  result = qword_2802191D0;
  if (!qword_2802191D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191D0);
  }

  return result;
}

unint64_t sub_267B62428()
{
  result = qword_2802191D8;
  if (!qword_2802191D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191D8);
  }

  return result;
}

unint64_t sub_267B62480()
{
  result = qword_2802191E0;
  if (!qword_2802191E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191E0);
  }

  return result;
}

unint64_t sub_267B624D8()
{
  result = qword_2802191E8;
  if (!qword_2802191E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191E8);
  }

  return result;
}

unint64_t sub_267B62530()
{
  result = qword_2802191F0;
  if (!qword_2802191F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191F0);
  }

  return result;
}

unint64_t sub_267B62588()
{
  result = qword_2802191F8;
  if (!qword_2802191F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802191F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_13_2(uint64_t a1)
{

  return sub_267B60E24(a1);
}

unint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{

  return sub_267B60E24(a1);
}

void OUTLINED_FUNCTION_16_0()
{

  JUMPOUT(0x26D601760);
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  v2 = *(v0 + 40);

  return sub_267B7E08C();
}

uint64_t OUTLINED_FUNCTION_26()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_27()
{
  v1 = v0[10];
  v2 = *(v0[9] + 8);
  return v0[5];
}

uint64_t OUTLINED_FUNCTION_29()
{

  return type metadata accessor for MessageDraftSnippetModel();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return sub_267B7E04C();
}

void OUTLINED_FUNCTION_42()
{
  *v0 = 0;
  v0[1] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 1;
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_44()
{

  JUMPOUT(0x26D601760);
}

uint64_t sub_267B62890(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v6 = sub_267B7D98C();
  OUTLINED_FUNCTION_1_3(v6);
  sub_267B7D97C();
  a3(0);
  OUTLINED_FUNCTION_8_7();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);
}

uint64_t sub_267B62950@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_267B7D98C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B451E0();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
  }

  return result;
}

double sub_267B62A18@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_267B7D98C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B4EB18();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v11;
    a3[1] = v12;
    result = *&v13;
    a3[2] = v13;
    a3[3] = v14;
  }

  return result;
}

uint64_t sub_267B62AD8()
{
  v2 = OUTLINED_FUNCTION_0_13();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  sub_267B7D97C();
  v1();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_5_8();

  if (!v3)
  {
    *v0 = v5;
    *(v0 + 16) = v6;
    *(v0 + 24) = v7;
  }

  return result;
}

double sub_267B62B60@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_267B7D98C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B644E4();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v11;
    *(a3 + 16) = v12;
    result = *&v13;
    *(a3 + 32) = v13;
    *(a3 + 48) = v14;
  }

  return result;
}

double sub_267B62C2C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_267B7D98C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6443C();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    result = *&v11;
    *a3 = v11;
    *(a3 + 16) = v12;
  }

  return result;
}

uint64_t sub_267B62CEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_267B7D98C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B4518C();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v11;
    *(a3 + 8) = v12;
  }

  return result;
}

uint64_t sub_267B62DAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_267B7D98C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B642EC();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
  }

  return result;
}

uint64_t sub_267B62E6C()
{
  v2 = OUTLINED_FUNCTION_0_13();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  sub_267B7D97C();
  v1();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_5_8();

  if (!v3)
  {
    *v0 = v5;
    v0[1] = v6;
    v0[2] = v7;
  }

  return result;
}

uint64_t sub_267B62EF4()
{
  v2 = OUTLINED_FUNCTION_0_13();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  sub_267B7D97C();
  v1();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_5_8();

  if (!v3)
  {
    *v0 = v5;
    *(v0 + 8) = v6;
  }

  return result;
}

void *sub_267B62F7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_267B7D98C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6419C();
  sub_267B7D96C();
  sub_267B3A524(a1, a2);

  if (!v3)
  {
    return memcpy(a3, __src, 0x78uLL);
  }

  return result;
}

uint64_t sub_267B630B0(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_267B7DD7C();
}

uint64_t sub_267B63194(void (*a1)(void))
{
  v2 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v2);
  sub_267B7D9AC();
  a1(0);
  OUTLINED_FUNCTION_8_7();
  sub_267B7D99C();
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63224()
{
  v0 = sub_267B7D9BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B44FB0();
  v3 = sub_267B7D99C();

  return v3;
}

uint64_t sub_267B632BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v6);
  v7 = sub_267B7D9AC();
  a5(v7, v8, v9, v10);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63328()
{
  v0 = sub_267B7D9BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B64298();
  v3 = sub_267B7D99C();

  return v3;
}

uint64_t sub_267B633BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v4);
  v5 = sub_267B7D9AC();
  a3(v5, v6);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63428()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_267B7D9BC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B64148();
  v4 = sub_267B7D99C();

  return v4;
}

uint64_t sub_267B634C4()
{
  v0 = sub_267B7D9BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B44F08();
  v3 = sub_267B7D99C();

  return v3;
}

uint64_t sub_267B63558()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = *(v0 + 6);
  v1 = sub_267B7D9BC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B64490();
  v4 = sub_267B7D99C();

  return v4;
}

uint64_t sub_267B635FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v4);
  sub_267B7D9AC();
  a3();
  sub_267B7D99C();
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63678()
{
  v0 = sub_267B7D9BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_267B7D9AC();
  sub_267B643E8();
  v3 = sub_267B7D99C();

  return v3;
}

uint64_t CustomCanvasModel<>.serializedData()()
{
  v0 = sub_267B7D9BC();
  OUTLINED_FUNCTION_1_3(v0);
  sub_267B7D9AC();
  sub_267B7D99C();
  OUTLINED_FUNCTION_2_12();
  return OUTLINED_FUNCTION_1_16();
}

uint64_t sub_267B63A30()
{
  OUTLINED_FUNCTION_6_5();
  v1 = *(v0 + 16);
  return sub_267B63224();
}

uint64_t sub_267B63B80()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_267B63558();
}

uint64_t sub_267B63D00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_267B63678();
}

uint64_t sub_267B63E6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_267B63328();
}

unint64_t sub_267B64148()
{
  result = qword_280219218;
  if (!qword_280219218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219218);
  }

  return result;
}

unint64_t sub_267B6419C()
{
  result = qword_280219228;
  if (!qword_280219228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219228);
  }

  return result;
}

unint64_t sub_267B641F0()
{
  result = qword_280219238;
  if (!qword_280219238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219238);
  }

  return result;
}

unint64_t sub_267B64244()
{
  result = qword_280219248;
  if (!qword_280219248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219248);
  }

  return result;
}

unint64_t sub_267B64298()
{
  result = qword_280219250;
  if (!qword_280219250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219250);
  }

  return result;
}

unint64_t sub_267B642EC()
{
  result = qword_280219260;
  if (!qword_280219260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219260);
  }

  return result;
}

unint64_t sub_267B64340()
{
  result = qword_280219270;
  if (!qword_280219270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219270);
  }

  return result;
}

unint64_t sub_267B64394()
{
  result = qword_280219280;
  if (!qword_280219280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219280);
  }

  return result;
}

unint64_t sub_267B643E8()
{
  result = qword_280219288;
  if (!qword_280219288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219288);
  }

  return result;
}

unint64_t sub_267B6443C()
{
  result = qword_280219298;
  if (!qword_280219298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219298);
  }

  return result;
}

unint64_t sub_267B64490()
{
  result = qword_2802192B8;
  if (!qword_2802192B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192B8);
  }

  return result;
}

unint64_t sub_267B644E4()
{
  result = qword_2802192C8;
  if (!qword_2802192C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192C8);
  }

  return result;
}

unint64_t sub_267B64538()
{
  result = qword_2802192D0;
  if (!qword_2802192D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192D0);
  }

  return result;
}

unint64_t sub_267B6458C()
{
  result = qword_2802192E0;
  if (!qword_2802192E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192E0);
  }

  return result;
}

unint64_t sub_267B645E0()
{
  result = qword_2802192F8;
  if (!qword_2802192F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802192F8);
  }

  return result;
}

unint64_t sub_267B64634()
{
  result = qword_280219308;
  if (!qword_280219308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219308);
  }

  return result;
}

uint64_t sub_267B64688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_12()
{
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return sub_267B7D96C();
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_267B3A524(v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_267B7D99C();
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return sub_267B64688(v1, v0);
}

void __swiftcall PayloadTextInput.init(payload:placeholderText:shouldUpdateWithASRText:shouldValidate:)(SiriMessagesCommon::PayloadTextInput *__return_ptr retstr, Swift::String payload, Swift::String placeholderText, Swift::Bool shouldUpdateWithASRText, Swift::Bool shouldValidate)
{
  object = placeholderText._object;
  countAndFlagsBits = placeholderText._countAndFlagsBits;
  v9 = payload._object;
  v10 = payload._countAndFlagsBits;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_280218F18;
  retstr->sendLabelText._countAndFlagsBits = qword_280218F10;
  retstr->sendLabelText._object = v12;
  retstr->payload._countAndFlagsBits = v10;
  retstr->payload._object = v9;
  retstr->placeholderText._countAndFlagsBits = countAndFlagsBits;
  retstr->placeholderText._object = object;
  retstr->shouldUpdateWithASRText = shouldUpdateWithASRText;
  retstr->shouldValidate = shouldValidate;
}

uint64_t PayloadTextInput.payload.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PayloadTextInput.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PayloadTextInput.placeholderText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PayloadTextInput.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PayloadTextInput.sendLabelText.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PayloadTextInput.sendLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_267B64A28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6F686563616C70 && a2 == 0xEF74786554726564;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x8000000267B87670 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6156646C756F6873 && a2 == 0xEE0065746164696CLL;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6562614C646E6573 && a2 == 0xED0000747865546CLL)
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

unint64_t sub_267B64BE8(char a1)
{
  result = 0x64616F6C796170;
  switch(a1)
  {
    case 1:
      result = 0x6C6F686563616C70;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x6156646C756F6873;
      break;
    case 4:
      result = 0x6562614C646E6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B64CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B64A28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B64CDC(uint64_t a1)
{
  v2 = sub_267B64F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B64D18(uint64_t a1)
{
  v2 = sub_267B64F38();

  return MEMORY[0x2821FE720](a1, v2);
}

void PayloadTextInput.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v23 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219328, &qword_267B82900);
  OUTLINED_FUNCTION_8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v21 = v0[3];
  v22 = v14;
  LODWORD(v14) = *(v0 + 32);
  v19 = *(v0 + 33);
  v20 = v14;
  v15 = v0[5];
  v18[0] = v0[6];
  v18[1] = v15;
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_267B64F38();
  sub_267B7E27C();
  v17 = v23;
  sub_267B7E0FC();
  if (!v17)
  {
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    OUTLINED_FUNCTION_6();
    sub_267B7E10C();
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B64F38()
{
  result = qword_280219330;
  if (!qword_280219330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219330);
  }

  return result;
}

void PayloadTextInput.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v31 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219338, &qword_267B82908);
  OUTLINED_FUNCTION_8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_267B64F38();

  sub_267B7E25C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v36) = 0;
    *&v30 = sub_267B7E05C();
    *(&v30 + 1) = v13;
    OUTLINED_FUNCTION_2_13(1);
    v14 = sub_267B7E05C();
    v16 = v15;
    v29 = v14;
    OUTLINED_FUNCTION_2_13(2);
    v43 = sub_267B7E06C();
    OUTLINED_FUNCTION_2_13(3);
    v28 = sub_267B7E06C();
    v17 = sub_267B7E05C();
    v43 &= 1u;
    v18 = v28 & 1;
    v19 = v17;
    v20 = v11;
    v22 = v21;
    (*(v6 + 8))(v20, v4);

    v23 = v30;
    v32 = v30;
    v24 = v29;
    *&v33 = v29;
    *(&v33 + 1) = v16;
    LOBYTE(v34) = v43;
    BYTE1(v34) = v18;
    *(&v34 + 1) = v19;
    v35 = v22;
    v25 = v31;
    *(v31 + 48) = v22;
    v26 = v33;
    *v25 = v32;
    v25[1] = v26;
    v25[2] = v34;
    sub_267B65294(&v32, &v36);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v36 = v23;
    v37 = v24;
    v38 = v16;
    v39 = v43;
    v40 = v18;
    v41 = v19;
    v42 = v22;
    sub_267B652CC(&v36);
  }

  OUTLINED_FUNCTION_14();
}

uint64_t sub_267B65334(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7961506873756C66 && a2 == 0xEC00000064616F6CLL)
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

uint64_t sub_267B653E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B65334(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267B6540C(uint64_t a1)
{
  v2 = sub_267B656A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B65448(uint64_t a1)
{
  v2 = sub_267B656A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B65488(uint64_t a1)
{
  v2 = sub_267B656FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B654C4(uint64_t a1)
{
  v2 = sub_267B656FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void PayloadTextInputAction.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_1();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219340, &qword_267B82910);
  OUTLINED_FUNCTION_8(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219348, &qword_267B82918);
  OUTLINED_FUNCTION_8(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  v41 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_267B656A8();
  sub_267B7E27C();
  sub_267B656FC();
  sub_267B7E0BC();
  (*(v27 + 8))(v32, v25);
  (*(v35 + 8))(v40, v33);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B656A8()
{
  result = qword_280219350;
  if (!qword_280219350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219350);
  }

  return result;
}

unint64_t sub_267B656FC()
{
  result = qword_280219358;
  if (!qword_280219358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219358);
  }

  return result;
}

uint64_t PayloadTextInputAction.hashValue.getter()
{
  sub_267B7E21C();
  MEMORY[0x26D601BE0](0);
  return sub_267B7E23C();
}

void PayloadTextInputAction.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219360, &qword_267B82920);
  OUTLINED_FUNCTION_8(v3);
  v41 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219368, &unk_267B82928);
  OUTLINED_FUNCTION_8(v10);
  v42 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_267B656A8();
  sub_267B7E25C();
  if (v0)
  {
    goto LABEL_9;
  }

  v39 = v9;
  v40 = v2;
  v18 = sub_267B7E09C();
  v19 = sub_267B45CC4(v18, 0);
  v22 = v16;
  if (v20 == v21 >> 1)
  {
    v41 = v19;
LABEL_8:
    v32 = v10;
    v33 = sub_267B7DFBC();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580) + 48);
    *v35 = &type metadata for PayloadTextInputAction;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v22, v32);
    v2 = v40;
LABEL_9:
    v37 = v2;
    goto LABEL_10;
  }

  if (v20 < (v21 >> 1))
  {
    v23 = sub_267B45CBC(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v40;
    v30 = v41;
    if (v28)
    {
      sub_267B656FC();
      v31 = v39;
      sub_267B7DFFC();
      swift_unknownObjectRelease();
      (*(v30 + 8))(v31, v3);
      (*(v42 + 8))(v22, v10);
      v37 = v29;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_14();
      return;
    }

    v41 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_267B65B9C()
{
  result = qword_280219370;
  if (!qword_280219370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219370);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_267B65C0C(uint64_t a1, int a2)
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

uint64_t sub_267B65C4C(uint64_t result, int a2, int a3)
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

_BYTE *sub_267B65CB8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PayloadTextInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B65E54()
{
  result = qword_280219378;
  if (!qword_280219378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219378);
  }

  return result;
}

unint64_t sub_267B65EAC()
{
  result = qword_280219380;
  if (!qword_280219380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219380);
  }

  return result;
}

unint64_t sub_267B65F04()
{
  result = qword_280219388;
  if (!qword_280219388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219388);
  }

  return result;
}

unint64_t sub_267B65F5C()
{
  result = qword_280219390;
  if (!qword_280219390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219390);
  }

  return result;
}

unint64_t sub_267B65FB4()
{
  result = qword_280219398;
  if (!qword_280219398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219398);
  }

  return result;
}

unint64_t sub_267B6600C()
{
  result = qword_2802193A0;
  if (!qword_2802193A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193A0);
  }

  return result;
}

unint64_t sub_267B66064()
{
  result = qword_2802193A8;
  if (!qword_2802193A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193A8);
  }

  return result;
}

unint64_t sub_267B660BC()
{
  result = qword_2802193B0;
  if (!qword_2802193B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193B0);
  }

  return result;
}

uint64_t ConfirmationButtonSnippetModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationButtonSnippetModel.primaryButtonLabel.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ConfirmationButtonSnippetModel.secondaryButtonLabel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ConfirmationButtonSnippetModel.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD00000000000002ELL, 0x8000000267B876D0);
  v3 = DirectButton.rawValue.getter();
  MEMORY[0x26D601760](v3);

  MEMORY[0x26D601760](0xD000000000000013, 0x8000000267B87700);
  v4 = DirectButton.rawValue.getter();
  MEMORY[0x26D601760](v4);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267B662E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x427972616D697270 && a2 == 0xED00006E6F747475;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000267B87720 == a2;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F7474754279;
        if (v8 || (sub_267B7E16C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x8000000267B87740 == a2)
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

unint64_t sub_267B664A0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x427972616D697270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B66564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B662E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6658C(uint64_t a1)
{
  v2 = sub_267B66824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B665C8(uint64_t a1)
{
  v2 = sub_267B66824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationButtonSnippetModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802193B8, &qword_267B82DE0);
  v5 = OUTLINED_FUNCTION_3_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v20 - v10;
  v12 = *v1;
  v13 = v1[1];
  v24 = *(v1 + 16);
  v14 = v1[3];
  v22 = v1[4];
  v23 = v14;
  v21 = *(v1 + 40);
  v15 = v1[7];
  v20[1] = v1[6];
  v20[2] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B66824();
  sub_267B7E27C();
  v32 = 0;
  v17 = v25;
  sub_267B7E0CC();
  if (!v17)
  {
    v18 = v21;
    v31 = v24;
    v30 = 1;
    sub_267B66878();
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    v29 = 2;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
    v28 = v18;
    v27 = 3;
    OUTLINED_FUNCTION_6();
    sub_267B7E12C();
    v26 = 4;
    OUTLINED_FUNCTION_6();
    sub_267B7E0FC();
  }

  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_267B66824()
{
  result = qword_2802193C0;
  if (!qword_2802193C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193C0);
  }

  return result;
}

unint64_t sub_267B66878()
{
  result = qword_2802193C8;
  if (!qword_2802193C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193C8);
  }

  return result;
}

uint64_t ConfirmationButtonSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802193D0, &qword_267B82DE8);
  v6 = OUTLINED_FUNCTION_3_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B66824();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_2_14();
  v10 = sub_267B7E01C();
  v23 = v11;
  sub_267B66B74();
  OUTLINED_FUNCTION_1_17();
  v35 = 0;
  LOBYTE(v28[0]) = 2;
  OUTLINED_FUNCTION_2_14();
  v21 = sub_267B7E05C();
  v22 = v12;
  OUTLINED_FUNCTION_1_17();
  v36 = 4;
  OUTLINED_FUNCTION_2_14();
  v13 = sub_267B7E05C();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_0_14();
  v17(v16);
  *&v24 = v10;
  *(&v24 + 1) = v23;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v21;
  *&v26 = v22;
  BYTE8(v26) = 2;
  *&v27 = v13;
  *(&v27 + 1) = v15;
  v18 = v25;
  *a2 = v24;
  a2[1] = v18;
  v19 = v27;
  a2[2] = v26;
  a2[3] = v19;
  sub_267B66BC8(&v24, v28);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v28[0] = v10;
  v28[1] = v23;
  v29 = 0;
  v30 = v21;
  v31 = v22;
  v32 = 2;
  v33 = v13;
  v34 = v15;
  return sub_267B66C00(v28);
}

unint64_t sub_267B66B74()
{
  result = qword_2802193D8;
  if (!qword_2802193D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193D8);
  }

  return result;
}

unint64_t sub_267B66C34()
{
  result = qword_2802193E0;
  if (!qword_2802193E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193E0);
  }

  return result;
}

unint64_t sub_267B66C8C()
{
  result = qword_2802193E8;
  if (!qword_2802193E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193E8);
  }

  return result;
}

uint64_t sub_267B66D14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_267B66D54(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ConfirmationButtonSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B66E94()
{
  result = qword_2802193F0;
  if (!qword_2802193F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193F0);
  }

  return result;
}

unint64_t sub_267B66EEC()
{
  result = qword_2802193F8;
  if (!qword_2802193F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802193F8);
  }

  return result;
}

unint64_t sub_267B66F44()
{
  result = qword_280219400;
  if (!qword_280219400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219400);
  }

  return result;
}

uint64_t ConfirmationSnippetModel.MessageType.description.getter()
{
  v1 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_2_15();
  sub_267B69218(v0, v7, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_267B67BD8(v7, type metadata accessor for ConfirmationSnippetModel.MessageType);
  if (!EnumCaseMultiPayload)
  {
    return 0x656D686361747461;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x6F69647561;
  }

  return 1954047348;
}

uint64_t sub_267B670C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
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

uint64_t sub_267B67188(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_267B671A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69647561 && a2 == 0xE500000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_267B672B4(char a1)
{
  if (!a1)
  {
    return 0x656D686361747461;
  }

  if (a1 == 1)
  {
    return 0x6F69647561;
  }

  return 1954047348;
}

uint64_t sub_267B6730C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B670C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B67334(uint64_t a1)
{
  v2 = sub_267B67C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B67370(uint64_t a1)
{
  v2 = sub_267B67C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B673AC(uint64_t a1)
{
  v2 = sub_267B67B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B673E8(uint64_t a1)
{
  v2 = sub_267B67B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B6742C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B671A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B67454(uint64_t a1)
{
  v2 = sub_267B67ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B67490(uint64_t a1)
{
  v2 = sub_267B67ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B674CC(uint64_t a1)
{
  v2 = sub_267B67B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B67508(uint64_t a1)
{
  v2 = sub_267B67B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSnippetModel.MessageType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219408, &qword_267B83020);
  v3 = OUTLINED_FUNCTION_8(v2);
  v76 = v4;
  v77 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  v74 = v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219410, &qword_267B83028);
  OUTLINED_FUNCTION_8(v75);
  v73 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - v13;
  v71 = type metadata accessor for AudioMessagePlayer();
  v15 = OUTLINED_FUNCTION_3_3(v71);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219418, &qword_267B83030);
  OUTLINED_FUNCTION_8(v78);
  v72 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  v25 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  v26 = OUTLINED_FUNCTION_3_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219420, &qword_267B83038);
  v33 = OUTLINED_FUNCTION_8(v32);
  v81 = v34;
  v82 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B67ADC();
  sub_267B7E27C();
  OUTLINED_FUNCTION_2_15();
  sub_267B69218(v79, v31, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v59 = *v31;
      v60 = *(v31 + 8);
      v61 = *(v31 + 16);
      LOBYTE(v83) = 2;
      sub_267B67B30();
      v62 = v74;
      v63 = v82;
      sub_267B7E0BC();
      v83 = v59;
      v84 = v60;
      LOBYTE(v85) = v61;
      sub_267B64298();
      v64 = v77;
      sub_267B7E12C();
      (*(v76 + 8))(v62, v64);
      v65 = OUTLINED_FUNCTION_11_2();
      v66(v65, v63);
    }

    sub_267B69064(v31, v20, type metadata accessor for AudioMessagePlayer);
    LOBYTE(v83) = 1;
    sub_267B67B84();
    v41 = v82;
    sub_267B7E0BC();
    OUTLINED_FUNCTION_7_7();
    sub_267B690C0(v42, v43);
    v44 = v75;
    sub_267B7E12C();
    (*(v73 + 8))(v14, v44);
    sub_267B67BD8(v20, type metadata accessor for AudioMessagePlayer);
    v45 = OUTLINED_FUNCTION_11_2();
    v47 = v41;
  }

  else
  {
    v48 = *v31;
    v49 = *(v31 + 8);
    v50 = *(v31 + 16);
    v79 = *(v31 + 24);
    v51 = *(v31 + 32);
    LOBYTE(v83) = 0;
    sub_267B67C30();
    v52 = v82;
    sub_267B7E0BC();
    v83 = v48;
    v84 = v49;
    v85 = v50;
    v86 = 0;
    sub_267B45338();
    v53 = v80;
    sub_267B7E12C();
    if (v53)
    {

      v54 = OUTLINED_FUNCTION_12_2();
      v55(v54, v78);
      v56 = OUTLINED_FUNCTION_11_2();
      v57(v56, v52);
      return sub_267B67C84(v48, v49, v50);
    }

    LOBYTE(v83) = 1;
    v80 = v51;
    v67 = v78;
    OUTLINED_FUNCTION_16_1();
    sub_267B7E0CC();
    sub_267B67C84(v48, v49, v50);

    v68 = OUTLINED_FUNCTION_12_2();
    v69(v68, v67);
    v45 = OUTLINED_FUNCTION_11_2();
    v47 = v52;
  }

  return v46(v45, v47);
}

unint64_t sub_267B67ADC()
{
  result = qword_280219428;
  if (!qword_280219428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219428);
  }

  return result;
}

unint64_t sub_267B67B30()
{
  result = qword_280219430;
  if (!qword_280219430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219430);
  }

  return result;
}

unint64_t sub_267B67B84()
{
  result = qword_280219438;
  if (!qword_280219438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219438);
  }

  return result;
}

uint64_t sub_267B67BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_267B67C30()
{
  result = qword_280219440;
  if (!qword_280219440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219440);
  }

  return result;
}

uint64_t sub_267B67C84(uint64_t a1, uint64_t a2, unint64_t a3)
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

uint64_t ConfirmationSnippetModel.MessageType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219448, &qword_267B83040);
  v4 = OUTLINED_FUNCTION_8(v3);
  v107 = v5;
  v108 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  v110 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219450, &qword_267B83048);
  v104 = OUTLINED_FUNCTION_8(v10);
  v105 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_0();
  v109 = v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219458, &qword_267B83050);
  OUTLINED_FUNCTION_8(v106);
  v103 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_0();
  v113 = v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219460, &unk_267B83058);
  OUTLINED_FUNCTION_8(v114);
  v112 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  v26 = &v97 - v25;
  v27 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  v28 = OUTLINED_FUNCTION_3_3(v27);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v97 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v97 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v97 - v40;
  v43 = a1[3];
  v42 = a1[4];
  v115 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_267B67ADC();
  v44 = v116;
  sub_267B7E25C();
  if (v44)
  {
    goto LABEL_11;
  }

  v99 = v39;
  v100 = v33;
  v101 = v41;
  v102 = v36;
  v45 = v113;
  v46 = v114;
  v116 = v27;
  v47 = sub_267B7E09C();
  result = sub_267B45CC4(v47, 0);
  if (v50 == v51 >> 1)
  {
LABEL_10:
    v63 = v116;
    v64 = sub_267B7DFBC();
    swift_allocError();
    v66 = v65;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580) + 48);
    *v66 = v63;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D84160], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v68 = OUTLINED_FUNCTION_13_3();
    v69(v68, v46);
LABEL_11:
    v70 = v115;
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  v98 = 0;
  if (v50 < (v51 >> 1))
  {
    v52 = *(v49 + v50);
    sub_267B45CBC(v50 + 1);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    v57 = v102;
    if (v54 == v56 >> 1)
    {
      v58 = v114;
      if (v52)
      {
        if (v52 == 1)
        {
          LOBYTE(v117) = 1;
          sub_267B67B84();
          OUTLINED_FUNCTION_6_6();
          v59 = v111;
          type metadata accessor for AudioMessagePlayer();
          OUTLINED_FUNCTION_7_7();
          sub_267B690C0(v60, v61);
          OUTLINED_FUNCTION_16_1();
          sub_267B7E08C();
          v62 = v57;
          swift_unknownObjectRelease();
          v73 = OUTLINED_FUNCTION_18_1();
          v74(v73);
          v75 = OUTLINED_FUNCTION_13_3();
          v76(v75, v58);
        }

        else
        {
          LOBYTE(v117) = 2;
          sub_267B67B30();
          OUTLINED_FUNCTION_6_6();
          v59 = v111;
          sub_267B642EC();
          v72 = v108;
          OUTLINED_FUNCTION_16_1();
          sub_267B7E08C();
          swift_unknownObjectRelease();
          v84 = OUTLINED_FUNCTION_12_2();
          v85(v84, v72);
          v86 = OUTLINED_FUNCTION_14_3();
          v87(v86);
          v88 = v118;
          v89 = v119;
          v62 = v100;
          *v100 = v117;
          *(v62 + 8) = v88;
          *(v62 + 16) = v89;
        }

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_15();
        v77 = v101;
        sub_267B69064(v62, v101, v78);
        v79 = v115;
      }

      else
      {
        LOBYTE(v117) = 0;
        sub_267B67C30();
        OUTLINED_FUNCTION_6_6();
        v120 = 0;
        sub_267B452E0();
        v71 = v106;
        OUTLINED_FUNCTION_16_1();
        sub_267B7E08C();
        v80 = v112;
        v82 = v117;
        v81 = v118;
        v110 = v119;
        v120 = 1;
        v109 = sub_267B7E01C();
        v83 = (v103 + 8);
        v98 = 0;
        v91 = v90;
        swift_unknownObjectRelease();
        (*v83)(v45, v71);
        (*(v80 + 8))(v26, v114);
        v92 = v99;
        *v99 = v82;
        v92[1] = v81;
        v93 = v109;
        v92[2] = v110;
        v92[3] = v93;
        v92[4] = v91;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_15();
        v94 = v92;
        v77 = v101;
        sub_267B69064(v94, v101, v95);
        v79 = v115;
        v59 = v111;
      }

      OUTLINED_FUNCTION_0_15();
      sub_267B69064(v77, v59, v96);
      v70 = v79;
      return __swift_destroy_boxed_opaque_existential_0(v70);
    }

    v46 = v114;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t ConfirmationSnippetModel.init(recipientName:messageType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_280218FC8;
  *a4 = qword_280218FC0;
  a4[1] = v8;
  a4[2] = a1;
  a4[3] = a2;
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_0_15();
  sub_267B69064(a3, a4 + v9, v10);
}

uint64_t ConfirmationSnippetModel.toLabelText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_8_6();
}

uint64_t ConfirmationSnippetModel.toLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.recipientName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_8_6();
}

uint64_t ConfirmationSnippetModel.recipientName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConfirmationSnippetModel.messageType.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_2_15();
  return sub_267B69218(v1 + v3, a1, v4);
}

uint64_t ConfirmationSnippetModel.messageType.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1();

  return sub_267B69160(a1, v1 + v3);
}

uint64_t ConfirmationSnippetModel.description.getter()
{
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD000000000000029, 0x8000000267B87760);
  MEMORY[0x26D601760](*(v0 + 16), *(v0 + 24));
  MEMORY[0x26D601760](0xD000000000000010, 0x8000000267B87790);
  OUTLINED_FUNCTION_15_1();
  v1 = ConfirmationSnippetModel.MessageType.description.getter();
  MEMORY[0x26D601760](v1);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267B688F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546C6562614C6F74 && a2 == 0xEB00000000747865;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65697069636572 && a2 == 0xED0000656D614E74;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
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

uint64_t sub_267B68A18(char a1)
{
  if (!a1)
  {
    return 0x546C6562614C6F74;
  }

  if (a1 == 1)
  {
    return 0x6E65697069636572;
  }

  return 0x546567617373656DLL;
}

uint64_t sub_267B68A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B688F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B68ABC(uint64_t a1)
{
  v2 = sub_267B691C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B68AF8(uint64_t a1)
{
  v2 = sub_267B691C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219468, &qword_267B83068);
  OUTLINED_FUNCTION_8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B691C4();
  sub_267B7E27C();
  v14 = *v3;
  v15 = v3[1];
  v22[15] = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v22[14] = 1;
    sub_267B7E0FC();
    v18 = *(type metadata accessor for ConfirmationSnippetModel(0) + 24);
    v22[13] = 2;
    type metadata accessor for ConfirmationSnippetModel.MessageType(0);
    OUTLINED_FUNCTION_8_8();
    sub_267B690C0(v19, v20);
    sub_267B7E12C();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t ConfirmationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  v4 = OUTLINED_FUNCTION_3_3(v34);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v35 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219480, &qword_267B83070);
  OUTLINED_FUNCTION_8(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v32 = type metadata accessor for ConfirmationSnippetModel(0);
  v13 = OUTLINED_FUNCTION_3_3(v32);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v18 = (v17 - v16);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B691C4();

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_20_0();
    v22 = v21;

    *v18 = v20;
    v18[1] = v22;
    v18[2] = OUTLINED_FUNCTION_20_0();
    v18[3] = v23;
    OUTLINED_FUNCTION_8_8();
    sub_267B690C0(v24, v25);
    sub_267B7E08C();
    v26 = OUTLINED_FUNCTION_4_9();
    v27(v26);
    v28 = *(v32 + 24);
    OUTLINED_FUNCTION_0_15();
    sub_267B69064(v35, v18 + v29, v30);
    sub_267B69218(v18, a2, type metadata accessor for ConfirmationSnippetModel);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_267B67BD8(v18, type metadata accessor for ConfirmationSnippetModel);
  }
}

uint64_t sub_267B69064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_8_6();
  v8(v7);
  return a2;
}

uint64_t sub_267B690C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267B69128(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B69160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippetModel.MessageType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_267B691C4()
{
  result = qword_280219470;
  if (!qword_280219470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219470);
  }

  return result;
}

uint64_t sub_267B69218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_8_6();
  v8(v7);
  return a2;
}

uint64_t sub_267B6932C()
{
  result = type metadata accessor for ConfirmationSnippetModel.MessageType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_267B693B0()
{
  sub_267B6942C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AudioMessagePlayer();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267B6942C()
{
  if (!qword_2802194C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280219058, &qword_267B81C60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2802194C0);
    }
  }
}

_BYTE *sub_267B694B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ConfirmationSnippetModel.MessageType.AttachmentCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B69678(_BYTE *result, int a2, int a3)
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

unint64_t sub_267B69728()
{
  result = qword_2802194C8;
  if (!qword_2802194C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194C8);
  }

  return result;
}

unint64_t sub_267B69780()
{
  result = qword_2802194D0;
  if (!qword_2802194D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194D0);
  }

  return result;
}

unint64_t sub_267B697D8()
{
  result = qword_2802194D8;
  if (!qword_2802194D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194D8);
  }

  return result;
}

unint64_t sub_267B69830()
{
  result = qword_2802194E0;
  if (!qword_2802194E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194E0);
  }

  return result;
}

unint64_t sub_267B69888()
{
  result = qword_2802194E8;
  if (!qword_2802194E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194E8);
  }

  return result;
}

unint64_t sub_267B698E0()
{
  result = qword_2802194F0;
  if (!qword_2802194F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194F0);
  }

  return result;
}

unint64_t sub_267B69938()
{
  result = qword_2802194F8;
  if (!qword_2802194F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802194F8);
  }

  return result;
}

unint64_t sub_267B69990()
{
  result = qword_280219500;
  if (!qword_280219500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219500);
  }

  return result;
}

unint64_t sub_267B699E8()
{
  result = qword_280219508;
  if (!qword_280219508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219508);
  }

  return result;
}

unint64_t sub_267B69A40()
{
  result = qword_280219510;
  if (!qword_280219510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219510);
  }

  return result;
}

unint64_t sub_267B69A98()
{
  result = qword_280219518;
  if (!qword_280219518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219518);
  }

  return result;
}

unint64_t sub_267B69AF0()
{
  result = qword_280219520;
  if (!qword_280219520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219520);
  }

  return result;
}

unint64_t sub_267B69B48()
{
  result = qword_280219528;
  if (!qword_280219528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219528);
  }

  return result;
}

unint64_t sub_267B69BA0()
{
  result = qword_280219530;
  if (!qword_280219530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219530);
  }

  return result;
}

unint64_t sub_267B69BF8()
{
  result = qword_280219538;
  if (!qword_280219538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219538);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  result = type metadata accessor for ConfirmationSnippetModel(0);
  v1 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return sub_267B7E05C();
}

uint64_t AudioMessagePlayer.init(audioMessageURL:isDraft:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AudioMessagePlayer();
  v7 = v6[6];
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v8 = (a3 + v7);
  swift_beginAccess();
  v9 = qword_280218F18;
  *v8 = qword_280218F10;
  v8[1] = v9;
  v10 = (a3 + v6[7]);
  v11 = qword_280218F68;
  *v10 = qword_280218F60;
  v10[1] = v11;
  v12 = sub_267B7DA6C();
  OUTLINED_FUNCTION_3_3(v12);
  (*(v13 + 32))(a3, a1);
  *(a3 + v6[5]) = a2 & 1;
}

uint64_t type metadata accessor for AudioMessagePlayer()
{
  result = qword_280219558;
  if (!qword_280219558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioMessagePlayer.audioMessageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_267B7DA6C();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t AudioMessagePlayer.audioMessageURL.setter()
{
  OUTLINED_FUNCTION_4_10();
  v2 = sub_267B7DA6C();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t AudioMessagePlayer.isDraft.setter(char a1)
{
  result = type metadata accessor for AudioMessagePlayer();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*AudioMessagePlayer.isDraft.modify())()
{
  OUTLINED_FUNCTION_4_10();
  v0 = *(type metadata accessor for AudioMessagePlayer() + 20);
  return nullsub_1;
}

uint64_t AudioMessagePlayer.sendLabelText.getter()
{
  v1 = (v0 + *(type metadata accessor for AudioMessagePlayer() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AudioMessagePlayer.sendLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioMessagePlayer() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*AudioMessagePlayer.sendLabelText.modify())()
{
  OUTLINED_FUNCTION_4_10();
  v0 = *(type metadata accessor for AudioMessagePlayer() + 24);
  return nullsub_1;
}

uint64_t AudioMessagePlayer.audioMessageLabelText.getter()
{
  v1 = (v0 + *(type metadata accessor for AudioMessagePlayer() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AudioMessagePlayer.audioMessageLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioMessagePlayer() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*AudioMessagePlayer.audioMessageLabelText.modify())()
{
  OUTLINED_FUNCTION_4_10();
  v0 = *(type metadata accessor for AudioMessagePlayer() + 28);
  return nullsub_1;
}

uint64_t sub_267B6A1AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D6F69647561 && a2 == 0xEF4C525565676173;
  if (v4 || (sub_267B7E16C() & 1) != 0)
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

    else
    {
      v7 = a1 == 0x6562614C646E6573 && a2 == 0xED0000747865546CLL;
      if (v7 || (sub_267B7E16C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x8000000267B877B0 == a2)
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

unint64_t sub_267B6A31C(char a1)
{
  result = 0x73654D6F69647561;
  switch(a1)
  {
    case 1:
      result = 0x74666172447369;
      break;
    case 2:
      result = 0x6562614C646E6573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267B6A3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6A1AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6A3EC(uint64_t a1)
{
  v2 = sub_267B6A650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6A428(uint64_t a1)
{
  v2 = sub_267B6A650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioMessagePlayer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219540, &qword_267B83760);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6A650();
  sub_267B7E27C();
  v23[15] = 0;
  sub_267B7DA6C();
  sub_267B4D460(&qword_280218990);
  OUTLINED_FUNCTION_6_7();
  sub_267B7E12C();
  if (!v2)
  {
    v14 = type metadata accessor for AudioMessagePlayer();
    v15 = *(v3 + v14[5]);
    v23[14] = 1;
    OUTLINED_FUNCTION_6_7();
    sub_267B7E10C();
    v16 = (v3 + v14[6]);
    v17 = *v16;
    v18 = v16[1];
    v23[13] = 2;
    OUTLINED_FUNCTION_6_7();
    sub_267B7E0FC();
    v19 = (v3 + v14[7]);
    v20 = *v19;
    v21 = v19[1];
    v23[12] = 3;
    OUTLINED_FUNCTION_6_7();
    sub_267B7E0FC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_267B6A650()
{
  result = qword_280219548;
  if (!qword_280219548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219548);
  }

  return result;
}

uint64_t AudioMessagePlayer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v41 = sub_267B7DA6C();
  v4 = OUTLINED_FUNCTION_8(v41);
  v37 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219550, &qword_267B83768);
  v11 = OUTLINED_FUNCTION_8(v10);
  v39 = v12;
  v40 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v36 = type metadata accessor for AudioMessagePlayer();
  v15 = OUTLINED_FUNCTION_3_3(v36);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v38 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6A650();

  sub_267B7E25C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v42 = 0;
    sub_267B4D460(&qword_2802189A0);
    v20 = v41;
    sub_267B7E08C();
    (*(v37 + 32))(v38, v9, v20);
    v42 = 1;
    v38[v36[5]] = sub_267B7E06C() & 1;
    v21 = OUTLINED_FUNCTION_5_9(2);
    v23 = v22;

    v24 = &v38[v36[6]];
    *v24 = v21;
    v24[1] = v23;
    v34[1] = v23;
    v25 = OUTLINED_FUNCTION_5_9(3);
    v34[0] = v26;
    v27 = v25;
    v28 = v38;
    v29 = &v38[v36[7]];
    v30 = OUTLINED_FUNCTION_3_10();
    v31(v30);

    v32 = v34[0];
    *v29 = v27;
    *(v29 + 1) = v32;
    sub_267B6AA98(v28, v35);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_267B6AAFC(v28);
  }
}

uint64_t sub_267B6AA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioMessagePlayer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B6AAFC(uint64_t a1)
{
  v2 = type metadata accessor for AudioMessagePlayer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B6ABB0()
{
  result = sub_267B7DA6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioMessagePlayer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6AD10()
{
  result = qword_280219568;
  if (!qword_280219568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219568);
  }

  return result;
}

unint64_t sub_267B6AD68()
{
  result = qword_280219570;
  if (!qword_280219570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219570);
  }

  return result;
}

unint64_t sub_267B6ADC0()
{
  result = qword_280219578;
  if (!qword_280219578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219578);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_9@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_267B7E05C();
}

uint64_t sub_267B6AE6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *&v19 = 0x692D6E6F69746361;
  *(&v19 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(v18, a1, &v19);
  sub_267B480F8(v18);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v6 = v16;
      v5 = v17;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v19, &qword_280219580, &qword_267B83940);
  }

  v6 = 0;
  v5 = 0;
LABEL_6:
  v18[0] = &type metadata for TapbackPromptSnippetAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195C8, &unk_267B83990);
  v7 = sub_267B7DD7C();
  if (!v5)
  {

    goto LABEL_14;
  }

  if (v6 == v7 && v5 == v8)
  {

    goto LABEL_16;
  }

  v10 = sub_267B7E16C();

  if ((v10 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  sub_267B7DF4C();
  sub_267B47B8C(v18, a1, &v19);

  sub_267B480F8(v18);
  if (!v20)
  {
    result = sub_267B6BF60(&v19, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_21:
    v15 = 6;
    goto LABEL_22;
  }

  v12 = sub_267B7D98C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6C280();
  sub_267B7D96C();
  sub_267B3A524(0x642D6E6F69746361, 0xEB00000000617461);

  if (v2)
  {
    return result;
  }

  v15 = v18[0];
LABEL_22:
  *a2 = v15;
  return result;
}

uint64_t sub_267B6B10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v22 = 0x692D6E6F69746361;
  *(&v22 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(&v19, a1, &v22);
  sub_267B480F8(&v19);
  if (v23)
  {
    if (swift_dynamicCast())
    {
      v6 = v17;
      v5 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v22, &qword_280219580, &qword_267B83940);
  }

  v6 = 0;
  v5 = 0;
LABEL_6:
  *&v19 = &type metadata for UpdateSnippetAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195B8, &qword_267B83988);
  v7 = sub_267B7DD7C();
  if (!v5)
  {

    goto LABEL_14;
  }

  if (v6 == v7 && v5 == v8)
  {

    goto LABEL_16;
  }

  v10 = sub_267B7E16C();

  if ((v10 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  sub_267B7DF4C();
  sub_267B47B8C(&v19, a1, &v22);

  sub_267B480F8(&v19);
  if (!v23)
  {
    result = sub_267B6BF60(&v22, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_21:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v12 = sub_267B7D98C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6C22C();
  sub_267B7D96C();
  sub_267B3A524(0x642D6E6F69746361, 0xEB00000000617461);

  if (!v2)
  {
    v15 = v20;
    v16 = v21;
    *a2 = v19;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
  }

  return result;
}

uint64_t sub_267B6B3C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *&v19 = 0x692D6E6F69746361;
  *(&v19 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(v18, a1, &v19);
  sub_267B480F8(v18);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v6 = v16;
      v5 = v17;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v19, &qword_280219580, &qword_267B83940);
  }

  v6 = 0;
  v5 = 0;
LABEL_6:
  v18[0] = &type metadata for AutoSendableButtonAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195A8, &qword_267B83980);
  v7 = sub_267B7DD7C();
  if (!v5)
  {

    goto LABEL_14;
  }

  if (v6 == v7 && v5 == v8)
  {

    goto LABEL_16;
  }

  v10 = sub_267B7E16C();

  if ((v10 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  sub_267B7DF4C();
  sub_267B47B8C(v18, a1, &v19);

  sub_267B480F8(v18);
  if (!v20)
  {
    result = sub_267B6BF60(&v19, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_21:
    v15 = 2;
    goto LABEL_22;
  }

  v12 = sub_267B7D98C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6C1D8();
  sub_267B7D96C();
  sub_267B3A524(0x642D6E6F69746361, 0xEB00000000617461);

  if (v2)
  {
    return result;
  }

  v15 = v18[0];
LABEL_22:
  *a2 = v15;
  return result;
}

uint64_t sub_267B6B664@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *&v19 = 0x692D6E6F69746361;
  *(&v19 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(v18, a1, &v19);
  sub_267B480F8(v18);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v6 = v16;
      v5 = v17;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v19, &qword_280219580, &qword_267B83940);
  }

  v6 = 0;
  v5 = 0;
LABEL_6:
  v18[0] = &type metadata for PayloadTextInputAction;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219598, &qword_267B83978);
  v7 = sub_267B7DD7C();
  if (!v5)
  {

    goto LABEL_14;
  }

  if (v6 == v7 && v5 == v8)
  {

    goto LABEL_16;
  }

  v10 = sub_267B7E16C();

  if ((v10 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  sub_267B7DF4C();
  sub_267B47B8C(v18, a1, &v19);

  sub_267B480F8(v18);
  if (!v20)
  {
    result = sub_267B6BF60(&v19, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_21:
    v15 = 1;
    goto LABEL_22;
  }

  v12 = sub_267B7D98C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_267B7D97C();
  sub_267B6C184();
  sub_267B7D96C();
  sub_267B3A524(0x642D6E6F69746361, 0xEB00000000617461);

  if (v2)
  {
    return result;
  }

  v15 = 0;
LABEL_22:
  *a2 = v15;
  return result;
}

uint64_t CustomCanvasAction<>.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = *(a2 - 8);
  v31 = a4;
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_16();
  *&v35 = v12 & 0xFFFFFFFFFFFFLL | 0x692D000000000000;
  *(&v35 + 1) = 0xE900000000000064;
  sub_267B7DF4C();
  sub_267B47B8C(v34, a1, &v35);
  sub_267B480F8(v34);
  if (v36)
  {
    if (swift_dynamicCast())
    {
      v13 = v32;
      v14 = v33;
      goto LABEL_6;
    }
  }

  else
  {
    sub_267B6BF60(&v35, &qword_280219580, &qword_267B83940);
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  v15 = (*(a3 + 16))(a2, a3);
  if (!v14)
  {

    goto LABEL_14;
  }

  if (v13 == v15 && v14 == v16)
  {

    goto LABEL_16;
  }

  v18 = sub_267B7E16C();

  if ((v18 & 1) == 0)
  {
LABEL_14:

    goto LABEL_21;
  }

LABEL_16:
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_18();
  v32 = v19;
  v33 = v20;
  sub_267B7DF4C();
  sub_267B47B8C(v34, a1, &v35);

  sub_267B480F8(v34);
  if (!v36)
  {
    sub_267B6BF60(&v35, &qword_280219580, &qword_267B83940);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v28 = 1;
    return __swift_storeEnumTagSinglePayload(a5, v28, 1, a2);
  }

  v21 = v32;
  v22 = v33;
  v23 = sub_267B7D98C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_267B7D97C();
  v26 = v37;
  sub_267B7D96C();
  sub_267B3A524(v21, v22);

  if (v26)
  {
    return result;
  }

  (*(v30 + 32))(a5, v11, a2);
  v28 = 0;
  return __swift_storeEnumTagSinglePayload(a5, v28, 1, a2);
}

uint64_t CustomCanvasAction<>.toSharedState()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219588, &qword_267B83948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267B83930;
  OUTLINED_FUNCTION_0_16();
  v6 = MEMORY[0x277D837D0];
  sub_267B7DF4C();
  v7 = (*(a2 + 16))(a1, a2);
  *(inited + 96) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_18();
  sub_267B7DF4C();
  v9 = sub_267B7D9BC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_267B7D9AC();
  v12 = sub_267B7D99C();
  if (v2)
  {

    sub_267B480F8(inited + 104);
    sub_267B6BF60(inited + 32, &qword_280219590, &qword_267B83950);
    *(inited + 16) = 0;
    swift_setDeallocating();
    return sub_267B6C0E8();
  }

  else
  {
    v15 = v12;
    v16 = v13;

    *(inited + 168) = MEMORY[0x277CC9318];
    *(inited + 144) = v15;
    *(inited + 152) = v16;
    return sub_267B7DD2C();
  }
}

uint64_t sub_267B6BF60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *CustomCanvasAction<>.serializedData()(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  CustomCanvasAction<>.toSharedState()(a1, a2);
  if (!v3)
  {
    v4 = objc_opt_self();
    v5 = sub_267B7DD0C();

    v10[0] = 0;
    v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:v10];

    v7 = v10[0];
    if (v6)
    {
      v2 = sub_267B7DA9C();
    }

    else
    {
      v2 = v7;
      sub_267B7D9CC();

      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_267B6C0E8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219590, &qword_267B83950);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_267B6C184()
{
  result = qword_2802195A0;
  if (!qword_2802195A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195A0);
  }

  return result;
}

unint64_t sub_267B6C1D8()
{
  result = qword_2802195B0;
  if (!qword_2802195B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195B0);
  }

  return result;
}

unint64_t sub_267B6C22C()
{
  result = qword_2802195C0;
  if (!qword_2802195C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195C0);
  }

  return result;
}

unint64_t sub_267B6C280()
{
  result = qword_2802195D0;
  if (!qword_2802195D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195D0);
  }

  return result;
}

uint64_t AppSash.init(appBundleIdentifier:launchAppWithIntent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AppSash.appBundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppSash.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *AppSash.launchAppWithIntent.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *sub_267B6C3BC@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  result = AppSash.launchAppWithIntent.getter();
  *a2 = result;
  return result;
}

void sub_267B6C400(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  AppSash.launchAppWithIntent.setter(v1);
}

void (*AppSash.launchAppWithIntent.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267B3F880;
}

uint64_t sub_267B6C47C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000267B873E0 == a2;
  if (v3 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000267B870C0 == a2)
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

uint64_t sub_267B6C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6C47C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6C5B0(uint64_t a1)
{
  v2 = sub_267B6C7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6C5EC(uint64_t a1)
{
  v2 = sub_267B6C7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSash.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195D8, &unk_267B839A0);
  v5 = OUTLINED_FUNCTION_8(v4);
  v18 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6C7EC();
  sub_267B7E27C();
  v21 = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v19 = v17;
    v20 = 1;
    v14 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
    sub_267B532EC(&qword_280218DA0);
    sub_267B7E12C();
  }

  return (*(v18 + 8))(v10, v4);
}

unint64_t sub_267B6C7EC()
{
  result = qword_2802195E0;
  if (!qword_2802195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195E0);
  }

  return result;
}

uint64_t AppSash.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802195E8, &qword_267B839B0);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6C7EC();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = sub_267B7E05C();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218D98, &qword_267B860E0);
  sub_267B532EC(&qword_280218DB0);
  sub_267B7E08C();
  v13 = OUTLINED_FUNCTION_4();
  v14(v13);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v17;
  v15 = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B6CA88(uint64_t a1, int a2)
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

uint64_t sub_267B6CAC8(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AppSash.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6CBF8()
{
  result = qword_2802195F0;
  if (!qword_2802195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195F0);
  }

  return result;
}

unint64_t sub_267B6CC50()
{
  result = qword_2802195F8;
  if (!qword_2802195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802195F8);
  }

  return result;
}

unint64_t sub_267B6CCA8()
{
  result = qword_280219600;
  if (!qword_280219600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219600);
  }

  return result;
}

SiriMessagesCommon::ReadingCarPlayButton __swiftcall ReadingCarPlayButton.init(speechDuration:readingInProgressLabelText:)(Swift::Double speechDuration, Swift::String readingInProgressLabelText)
{
  object = readingInProgressLabelText._object;
  countAndFlagsBits = readingInProgressLabelText._countAndFlagsBits;
  v6 = v2;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    readingInProgressLabelText._countAndFlagsBits = swift_once();
  }

  *v6 = speechDuration;
  *(v6 + 8) = countAndFlagsBits;
  *(v6 + 16) = object;
  result.readingInProgressLabelText = readingInProgressLabelText;
  result.speechDuration = speechDuration;
  return result;
}

uint64_t ReadingCarPlayButton.readingInProgressLabelText.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ReadingCarPlayButton.readingInProgressLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_267B6CE1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7544686365657073 && a2 == 0xEE006E6F69746172;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000267B877D0 == a2)
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

uint64_t sub_267B6CEF4(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x7544686365657073;
  }
}

uint64_t sub_267B6CF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6CE1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6CF6C(uint64_t a1)
{
  v2 = sub_267B6D158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6CFA8(uint64_t a1)
{
  v2 = sub_267B6D158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReadingCarPlayButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219608, &qword_267B83B80);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[2];
  v16 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6D158();
  sub_267B7E27C();
  v18 = 0;
  sub_267B7E11C();
  if (!v2)
  {
    v17 = 1;
    sub_267B7E0FC();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_267B6D158()
{
  result = qword_280219610;
  if (!qword_280219610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219610);
  }

  return result;
}

uint64_t ReadingCarPlayButton.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219618, &qword_267B83B88);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v20 - v10;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6D158();

  sub_267B7E25C();
  if (!v2)
  {
    v22 = 0;
    OUTLINED_FUNCTION_2();
    sub_267B7E07C();
    v14 = v13;
    v22 = 1;
    OUTLINED_FUNCTION_2();
    v16 = sub_267B7E05C();
    v18 = v17;
    (*(v7 + 8))(v11, v4);

    v19 = v21;
    *v21 = v14;
    v19[1] = v16;
    v19[2] = v18;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B6D3E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_267B6D424(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ReadingCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6D554()
{
  result = qword_280219620;
  if (!qword_280219620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219620);
  }

  return result;
}

unint64_t sub_267B6D5AC()
{
  result = qword_280219628;
  if (!qword_280219628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219628);
  }

  return result;
}

unint64_t sub_267B6D604()
{
  result = qword_280219630;
  if (!qword_280219630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219630);
  }

  return result;
}

uint64_t VideoAttachment.init(urls:isDraft:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for SecurityScopedURL();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t VideoAttachment.urls.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_267B6D6EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = VideoAttachment.urls.getter();
  *a2 = result;
  return result;
}

uint64_t sub_267B6D730(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = *(a2 + 8);

  VideoAttachment.urls.setter(v2);
}

uint64_t VideoAttachment.urls.setter(uint64_t a1)
{
  v3 = *v1;
  sub_267B465DC();
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

void (*VideoAttachment.urls.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_267B46784(v3);
  return sub_267B41AA0;
}

uint64_t sub_267B6D880(uint64_t a1)
{
  v2 = sub_267B6DAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6D8BC(uint64_t a1)
{
  v2 = sub_267B6DAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAttachment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219638, &qword_267B83D60);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v15 - v10;
  v12 = *v1;
  v15[2] = *(v1 + 8);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6DAAC();

  sub_267B7E27C();
  v18 = v12;
  v17 = 0;
  type metadata accessor for SecurityScopedURL();
  sub_267B6DCF4(&qword_280218C58);
  sub_267B7E12C();

  if (!v2)
  {
    v16 = 1;
    sub_267B7E10C();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_267B6DAAC()
{
  result = qword_280219640;
  if (!qword_280219640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219640);
  }

  return result;
}

uint64_t VideoAttachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219648, &qword_267B83D68);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B6DAAC();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for SecurityScopedURL();
  v17[15] = 0;
  sub_267B6DCF4(&qword_280218C68);
  sub_267B7E08C();
  v14 = v18;
  v17[14] = 1;
  v15 = sub_267B7E06C();
  (*(v8 + 8))(v12, v5);
  *a2 = v14;
  *(a2 + 8) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_267B6DCF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecurityScopedURL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267B6DD40(uint64_t a1)
{
  *(a1 + 16) = sub_267B4518C();
  result = sub_267B44F08();
  *(a1 + 24) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoAttachment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6DE90()
{
  result = qword_280219650;
  if (!qword_280219650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219650);
  }

  return result;
}

unint64_t sub_267B6DEE8()
{
  result = qword_280219658;
  if (!qword_280219658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219658);
  }

  return result;
}

unint64_t sub_267B6DF40()
{
  result = qword_280219660;
  if (!qword_280219660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219660);
  }

  return result;
}

id SAIntentGroupProtobufMessage.init(response:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [a1 backingStore];
  if (result)
  {
    v4 = sub_267B3A4A0(result);
    if (v5 >> 60 == 15)
    {
      v6 = 0;
    }

    else
    {
      v7 = v4;
      v8 = v5;
      v6 = sub_267B7DA7C();
      sub_267B3A510(v7, v8);
    }

    [v2 setData_];

    sub_267B6E16C(a1);
    if (v9)
    {
      v10 = sub_267B7DD4C();
    }

    else
    {
      v10 = 0;
    }

    [v2 setTypeName_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SAIntentGroupLaunchAppWithIntent.init(intent:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267B3A6E0();
  v3 = v2;
  v4 = a1;
  v5 = SAIntentGroupProtobufMessage.init(intent:)(v4);
  [v3 setHandledIntent_];

  INIntent.launchBundleIdentifier.getter();
  if (v6)
  {
    v7 = sub_267B7DD4C();
  }

  else
  {
    v7 = 0;
  }

  [v3 setAppId_];

  return v3;
}

uint64_t sub_267B6E16C(void *a1)
{
  v1 = [a1 _payloadResponseTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B7DD5C();

  return v3;
}

uint64_t static TextBalloon.ServiceType.serviceFor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *MEMORY[0x277D1A620];
  v8 = sub_267B7DD5C();
  if (a2)
  {
    if (v8 == a1 && v9 == a2)
    {
LABEL_16:

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_1_19();
    result = OUTLINED_FUNCTION_9_4();
    if (v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v12 = *MEMORY[0x277D1A628];
  v13 = sub_267B7DD5C();
  if (!a2)
  {

    goto LABEL_19;
  }

  if (v13 == a1 && v14 == a2)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_19();
  result = OUTLINED_FUNCTION_9_4();
  if ((v3 & 1) == 0)
  {
LABEL_19:
    v17 = *MEMORY[0x277D1A610];
    v18 = sub_267B7DD5C();
    if (a2)
    {
      if (v18 == a1 && v19 == a2)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_1_19();
      result = OUTLINED_FUNCTION_9_4();
      if (v3)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    v21 = *MEMORY[0x277D1A608];
    v22 = sub_267B7DD5C();
    if (a2)
    {
      if (v22 == a1 && v23 == a2)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_1_19();
      result = OUTLINED_FUNCTION_9_4();
      if (v3)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    v25 = *MEMORY[0x277D1A618];
    v26 = sub_267B7DD5C();
    if (!a2)
    {

LABEL_46:
      v16 = 2;
      goto LABEL_44;
    }

    if (v26 != a1 || v27 != a2)
    {
      v29 = OUTLINED_FUNCTION_1_19();

      if ((v29 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v16 = 1;
      goto LABEL_44;
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_17:
  v16 = 0;
LABEL_44:
  *a3 = v16;
  return result;
}

uint64_t sub_267B6E378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373654D69 && a2 == 0xE800000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7564659 && a2 == 0xE300000000000000;
    if (v6 || (sub_267B7E16C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
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

uint64_t sub_267B6E484(char a1)
{
  if (!a1)
  {
    return 0x6567617373654D69;
  }

  if (a1 == 1)
  {
    return 7564659;
  }

  return 0x726568746FLL;
}

uint64_t sub_267B6E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6E378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6E500(uint64_t a1)
{
  v2 = sub_267B6E9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6E53C(uint64_t a1)
{
  v2 = sub_267B6E9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B6E578(uint64_t a1)
{
  v2 = sub_267B6EAC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6E5B4(uint64_t a1)
{
  v2 = sub_267B6EAC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B6E5F0(uint64_t a1)
{
  v2 = sub_267B6EA20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6E62C(uint64_t a1)
{
  v2 = sub_267B6EA20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B6E668(uint64_t a1)
{
  v2 = sub_267B6EA74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6E6A4(uint64_t a1)
{
  v2 = sub_267B6EA74();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextBalloon.ServiceType.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219670, &qword_267B83F50);
  v4 = OUTLINED_FUNCTION_8(v3);
  v44 = v5;
  v45 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v43 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219678, &qword_267B83F58);
  v11 = OUTLINED_FUNCTION_8(v10);
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v40 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219680, &qword_267B83F60);
  v18 = OUTLINED_FUNCTION_8(v17);
  v38 = v19;
  v39 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219688, &qword_267B83F68);
  OUTLINED_FUNCTION_8(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  v32 = &v37 - v31;
  v33 = *v0;
  v34 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_267B6E9CC();
  sub_267B7E27C();
  if (v33)
  {
    if (v33 == 1)
    {
      sub_267B6EA74();
      v24 = v40;
      OUTLINED_FUNCTION_3_11();
      v36 = v41;
      v35 = v42;
    }

    else
    {
      sub_267B6EA20();
      v24 = v43;
      OUTLINED_FUNCTION_3_11();
      v36 = v44;
      v35 = v45;
    }
  }

  else
  {
    sub_267B6EAC8();
    OUTLINED_FUNCTION_3_11();
    v36 = v38;
    v35 = v39;
  }

  (*(v36 + 8))(v24, v35);
  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B6E9CC()
{
  result = qword_280219690;
  if (!qword_280219690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219690);
  }

  return result;
}

unint64_t sub_267B6EA20()
{
  result = qword_280219698;
  if (!qword_280219698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219698);
  }

  return result;
}

unint64_t sub_267B6EA74()
{
  result = qword_2802196A0;
  if (!qword_2802196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196A0);
  }

  return result;
}

unint64_t sub_267B6EAC8()
{
  result = qword_2802196A8;
  if (!qword_2802196A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196A8);
  }

  return result;
}

uint64_t TextBalloon.ServiceType.hashValue.getter()
{
  v1 = *v0;
  sub_267B7E21C();
  MEMORY[0x26D601BE0](v1);
  return sub_267B7E23C();
}

void TextBalloon.ServiceType.init(from:)()
{
  OUTLINED_FUNCTION_13_1();
  v72 = v0;
  v2 = v1;
  v67 = v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196B0, &qword_267B83F70);
  OUTLINED_FUNCTION_8(v71);
  v68 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v70 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196B8, &qword_267B83F78);
  v10 = OUTLINED_FUNCTION_8(v9);
  v65 = v11;
  v66 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196C0, &qword_267B83F80);
  OUTLINED_FUNCTION_8(v17);
  v64 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196C8, &unk_267B83F88);
  OUTLINED_FUNCTION_8(v24);
  v69 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  v30 = &v59 - v29;
  v31 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_267B6E9CC();
  v32 = v72;
  sub_267B7E25C();
  if (v32)
  {
    goto LABEL_10;
  }

  v61 = v17;
  v62 = v23;
  v63 = v16;
  v34 = v70;
  v33 = v71;
  v72 = v2;
  v35 = sub_267B7E09C();
  sub_267B45CC4(v35, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_9;
  }

  v60 = 0;
  if (v37 < (v38 >> 1))
  {
    LODWORD(v39) = *(v36 + v37);
    sub_267B45CBC(v37 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v68;
    if (v44)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          sub_267B6EA74();
          v46 = v63;
          OUTLINED_FUNCTION_6_8();
          v47 = v67;
          v48 = v24;
          v49 = v69;
          swift_unknownObjectRelease();
          (*(v65 + 8))(v46, v66);
          (*(v49 + 8))(v30, v48);
        }

        else
        {
          LODWORD(v66) = v39;
          sub_267B6EA20();
          v55 = v60;
          sub_267B7DFFC();
          v47 = v67;
          v39 = v24;
          v56 = v69;
          if (v55)
          {
            (*(v69 + 8))(v30, v39);
            swift_unknownObjectRelease();
            v2 = v72;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v45 + 8))(v34, v33);
          (*(v56 + 8))(v30, v39);
          LOBYTE(v39) = v66;
        }
      }

      else
      {
        sub_267B6EAC8();
        v54 = v62;
        OUTLINED_FUNCTION_6_8();
        swift_unknownObjectRelease();
        (*(v64 + 8))(v54, v61);
        v57 = OUTLINED_FUNCTION_5_10();
        v58(v57);
        v47 = v67;
      }

      *v47 = v39;
      __swift_destroy_boxed_opaque_existential_0(v72);
      goto LABEL_11;
    }

LABEL_9:
    v50 = sub_267B7DFBC();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580) + 48);
    *v52 = &type metadata for TextBalloon.ServiceType;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v30, v24);
    v2 = v72;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v2);
LABEL_11:
    OUTLINED_FUNCTION_14();
    return;
  }

  __break(1u);
}

uint64_t TextBalloon.payload.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TextBalloon.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_267B6F240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079)
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

uint64_t sub_267B6F30C(char a1)
{
  if (a1)
  {
    return 0x5465636976726573;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_267B6F354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B6F240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B6F37C(uint64_t a1)
{
  v2 = sub_267B6F754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B6F3B8(uint64_t a1)
{
  v2 = sub_267B6F754();

  return MEMORY[0x2821FE720](a1, v2);
}

void TextBalloon.encode(to:)()
{
  OUTLINED_FUNCTION_13_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196D0, &qword_267B83F98);
  OUTLINED_FUNCTION_8(v4);
  v15 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v16 = *(v0 + 16);
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_267B6F754();
  sub_267B7E27C();
  sub_267B7E0FC();
  if (!v1)
  {
    sub_267B6F7A8();
    sub_267B7E12C();
  }

  (*(v15 + 8))(v10, v4);
  OUTLINED_FUNCTION_14();
}

void TextBalloon.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_13_1();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802196E8, &qword_267B83FA0);
  OUTLINED_FUNCTION_8(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v21 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_267B6F754();
  sub_267B7E25C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v22 = sub_267B7E05C();
    v24 = v23;
    sub_267B6F7FC();
    sub_267B7E08C();
    v25 = OUTLINED_FUNCTION_4();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = v24;
    *(v16 + 16) = a12;

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  OUTLINED_FUNCTION_14();
}

unint64_t sub_267B6F754()
{
  result = qword_2802196D8;
  if (!qword_2802196D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196D8);
  }

  return result;
}

unint64_t sub_267B6F7A8()
{
  result = qword_2802196E0;
  if (!qword_2802196E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196E0);
  }

  return result;
}

unint64_t sub_267B6F7FC()
{
  result = qword_2802196F0;
  if (!qword_2802196F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196F0);
  }

  return result;
}

unint64_t sub_267B6F854()
{
  result = qword_2802196F8;
  if (!qword_2802196F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802196F8);
  }

  return result;
}

uint64_t sub_267B6F8A8(uint64_t a1, int a2)
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

uint64_t sub_267B6F8E8(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TextBalloon.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_267B6FA24(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B6FB34()
{
  result = qword_280219700;
  if (!qword_280219700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219700);
  }

  return result;
}

unint64_t sub_267B6FB8C()
{
  result = qword_280219708;
  if (!qword_280219708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219708);
  }

  return result;
}

unint64_t sub_267B6FBE4()
{
  result = qword_280219710;
  if (!qword_280219710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219710);
  }

  return result;
}

unint64_t sub_267B6FC3C()
{
  result = qword_280219718;
  if (!qword_280219718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219718);
  }

  return result;
}

unint64_t sub_267B6FC94()
{
  result = qword_280219720;
  if (!qword_280219720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219720);
  }

  return result;
}

unint64_t sub_267B6FCEC()
{
  result = qword_280219728;
  if (!qword_280219728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219728);
  }

  return result;
}

unint64_t sub_267B6FD44()
{
  result = qword_280219730;
  if (!qword_280219730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219730);
  }

  return result;
}

unint64_t sub_267B6FD9C()
{
  result = qword_280219738;
  if (!qword_280219738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219738);
  }

  return result;
}

unint64_t sub_267B6FDF4()
{
  result = qword_280219740;
  if (!qword_280219740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219740);
  }

  return result;
}

unint64_t sub_267B6FE4C()
{
  result = qword_280219748;
  if (!qword_280219748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219748);
  }

  return result;
}

unint64_t sub_267B6FEA4()
{
  result = qword_280219750;
  if (!qword_280219750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219750);
  }

  return result;
}

unint64_t sub_267B6FEFC()
{
  result = qword_280219758;
  if (!qword_280219758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219758);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return sub_267B7E0BC();
}

uint64_t AppDisambiguationSnippetModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriMessagesCommon::AppDisambiguationSnippetModel __swiftcall AppDisambiguationSnippetModel.init(title:appBundleIdentifiers:)(Swift::String title, Swift::OpaquePointer appBundleIdentifiers)
{
  *v2 = title;
  *(v2 + 16) = appBundleIdentifiers;
  result.title = title;
  result.appBundleIdentifiers = appBundleIdentifiers;
  return result;
}

uint64_t AppDisambiguationSnippetModel.description.getter()
{
  v1 = *(v0 + 16);
  sub_267B7DF8C();
  MEMORY[0x26D601760](0xD00000000000003ALL, 0x8000000267B877F0);
  v4 = *(v1 + 16);
  v2 = sub_267B7E14C();
  MEMORY[0x26D601760](v2);

  MEMORY[0x26D601760](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_267B7007C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000267B876B0 == a2)
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

uint64_t sub_267B70148(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_267B70188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B7007C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B701B0(uint64_t a1)
{
  v2 = sub_267B703E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B701EC(uint64_t a1)
{
  v2 = sub_267B703E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppDisambiguationSnippetModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219760, &unk_267B84570);
  v5 = OUTLINED_FUNCTION_8(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B703E8();
  sub_267B7E27C();
  v20 = 0;
  sub_267B7E0FC();
  if (!v2)
  {
    v18 = v16;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
    sub_267B4A554(&qword_2802189E8);
    sub_267B7E12C();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t sub_267B703E8()
{
  result = qword_280219768;
  if (!qword_280219768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219768);
  }

  return result;
}

uint64_t AppDisambiguationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219770, &qword_267B84580);
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B703E8();
  sub_267B7E25C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = sub_267B7E05C();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802189B8, &qword_267B7FB58);
  sub_267B4A554(&qword_2802189C0);
  sub_267B7E08C();
  v13 = OUTLINED_FUNCTION_4();
  v14(v13);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_267B70664()
{
  result = qword_280219778;
  if (!qword_280219778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219778);
  }

  return result;
}

unint64_t sub_267B706BC()
{
  result = qword_280219780;
  if (!qword_280219780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219780);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppDisambiguationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B70834()
{
  result = qword_280219788;
  if (!qword_280219788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219788);
  }

  return result;
}

unint64_t sub_267B7088C()
{
  result = qword_280219790;
  if (!qword_280219790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219790);
  }

  return result;
}

unint64_t sub_267B708E4()
{
  result = qword_280219798;
  if (!qword_280219798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219798);
  }

  return result;
}

SiriMessagesCommon::ReadingCompactCarPlayButton __swiftcall ReadingCompactCarPlayButton.init(speechDuration:)(Swift::Double speechDuration)
{
  v3 = v1;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280218F78;
  *(v3 + 8) = qword_280218F70;
  *(v3 + 16) = v4;
  *v3 = speechDuration;

  result.speechDuration = v7;
  result.readingInProgressLabelText._object = v6;
  result.readingInProgressLabelText._countAndFlagsBits = v5;
  return result;
}

uint64_t ReadingCompactCarPlayButton.readingInProgressLabelText.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ReadingCompactCarPlayButton.readingInProgressLabelText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_267B70A74(uint64_t a1)
{
  v2 = sub_267B70C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B70AB0(uint64_t a1)
{
  v2 = sub_267B70C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReadingCompactCarPlayButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197A0, &qword_267B847B0);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[2];
  v16 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B70C60();
  sub_267B7E27C();
  v18 = 0;
  sub_267B7E11C();
  if (!v2)
  {
    v17 = 1;
    sub_267B7E0FC();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_267B70C60()
{
  result = qword_2802197A8;
  if (!qword_2802197A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197A8);
  }

  return result;
}

uint64_t ReadingCompactCarPlayButton.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197B0, &qword_267B847B8);
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v20 - v10;
  if (qword_280218550 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  swift_beginAccess();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B70C60();

  sub_267B7E25C();
  if (!v2)
  {
    v22 = 0;
    OUTLINED_FUNCTION_2();
    sub_267B7E07C();
    v14 = v13;
    v22 = 1;
    OUTLINED_FUNCTION_2();
    v16 = sub_267B7E05C();
    v18 = v17;
    (*(v7 + 8))(v11, v4);

    v19 = v21;
    *v21 = v14;
    v19[1] = v16;
    v19[2] = v18;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

_BYTE *storeEnumTagSinglePayload for ReadingCompactCarPlayButton.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267B70FDC()
{
  result = qword_2802197B8;
  if (!qword_2802197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197B8);
  }

  return result;
}

unint64_t sub_267B71034()
{
  result = qword_2802197C0;
  if (!qword_2802197C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197C0);
  }

  return result;
}

unint64_t sub_267B7108C()
{
  result = qword_2802197C8;
  if (!qword_2802197C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197C8);
  }

  return result;
}

uint64_t static ButtonSnippetModel.Action.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v43 = sub_267B7DA6C();
  v4 = OUTLINED_FUNCTION_8(v43);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = type metadata accessor for ButtonSnippetModel.Action(0);
  v13 = OUTLINED_FUNCTION_3_3(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197D0, &qword_267B84990) - 8) + 64);
  OUTLINED_FUNCTION_12();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  v26 = (&v42 + *(v23 + 56) - v24);
  sub_267B72B24(a1, &v42 - v24, type metadata accessor for ButtonSnippetModel.Action);
  sub_267B72B24(a2, v26, type metadata accessor for ButtonSnippetModel.Action);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_267B72B24(v25, v20, v34);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = v43;
      (*(v6 + 32))(v11, v26, v43);
      v35 = sub_267B7DA1C();
      v37 = *(v6 + 8);
      v37(v11, v36);
      v37(v20, v36);
      OUTLINED_FUNCTION_1_20();
      sub_267B72B84(v25, v38);
      return v35 & 1;
    }

    (*(v6 + 8))(v20, v43);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_0_17();
  sub_267B72B24(v25, v18, v27);
  v29 = *v18;
  v28 = v18[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_267B7140C(v25);
    goto LABEL_13;
  }

  if (v29 == *v26 && v28 == v26[1])
  {
    v39 = v26[1];

    goto LABEL_16;
  }

  v31 = v26[1];
  v32 = sub_267B7E16C();

  if (v32)
  {
LABEL_16:
    OUTLINED_FUNCTION_1_20();
    sub_267B72B84(v25, v40);
    v35 = 1;
    return v35 & 1;
  }

  OUTLINED_FUNCTION_1_20();
  sub_267B72B84(v25, v33);
LABEL_13:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_267B7140C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197D0, &qword_267B84990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B71474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6E694C6E65706FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_267B7E16C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704168636E75616CLL && a2 == 0xE900000000000070)
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

uint64_t sub_267B71544(char a1)
{
  if (a1)
  {
    return 0x704168636E75616CLL;
  }

  else
  {
    return 0x6B6E694C6E65706FLL;
  }
}

uint64_t sub_267B71588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267B71474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267B715B0(uint64_t a1)
{
  v2 = sub_267B71B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B715EC(uint64_t a1)
{
  v2 = sub_267B71B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B71628(uint64_t a1)
{
  v2 = sub_267B71B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B71664(uint64_t a1)
{
  v2 = sub_267B71B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267B716A0(uint64_t a1)
{
  v2 = sub_267B71BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267B716DC(uint64_t a1)
{
  v2 = sub_267B71BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ButtonSnippetModel.Action.encode(to:)(void *a1)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197D8, &qword_267B84998);
  OUTLINED_FUNCTION_8(v54);
  v52 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v48 = v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197E0, &qword_267B849A0);
  OUTLINED_FUNCTION_8(v55);
  v53 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  v49 = v11;
  v12 = sub_267B7DA6C();
  v13 = OUTLINED_FUNCTION_8(v12);
  v50 = v14;
  v51 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for ButtonSnippetModel.Action(0);
  v21 = OUTLINED_FUNCTION_3_3(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_0();
  v26 = (v25 - v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802197E8, &qword_267B849A8);
  OUTLINED_FUNCTION_8(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  v34 = &v48 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B71B34();
  sub_267B7E27C();
  OUTLINED_FUNCTION_0_17();
  sub_267B72B24(v56, v26, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v26;
    v38 = v26[1];
    v58 = 1;
    sub_267B71B88();
    v39 = v48;
    sub_267B7E0BC();
    v40 = v54;
    sub_267B7E0FC();

    (*(v52 + 8))(v39, v40);
  }

  else
  {
    v43 = v50;
    v42 = v51;
    (*(v50 + 32))(v19, v26, v51);
    v57 = 0;
    sub_267B71BDC();
    v44 = v49;
    sub_267B7E0BC();
    OUTLINED_FUNCTION_6_9();
    sub_267B72A68(v45, v46);
    v47 = v55;
    sub_267B7E12C();
    (*(v53 + 8))(v44, v47);
    (*(v43 + 8))(v19, v42);
  }

  return (*(v29 + 8))(v34, v27);
}

unint64_t sub_267B71B34()
{
  result = qword_2802197F0;
  if (!qword_2802197F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197F0);
  }

  return result;
}

unint64_t sub_267B71B88()
{
  result = qword_2802197F8;
  if (!qword_2802197F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802197F8);
  }

  return result;
}

unint64_t sub_267B71BDC()
{
  result = qword_280219800;
  if (!qword_280219800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280219800);
  }

  return result;
}

void ButtonSnippetModel.Action.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219808, &qword_267B849B0);
  OUTLINED_FUNCTION_8(v79);
  v82 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_0();
  v84 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219810, &qword_267B849B8);
  v9 = OUTLINED_FUNCTION_8(v8);
  v80 = v10;
  v81 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  v83 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280219818, &unk_267B849C0);
  v16 = OUTLINED_FUNCTION_8(v15);
  v85 = v17;
  v86 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v22 = &v74 - v21;
  v23 = type metadata accessor for ButtonSnippetModel.Action(0);
  v24 = OUTLINED_FUNCTION_3_3(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v74 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v74 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267B71B34();
  v36 = v87;
  sub_267B7E25C();
  if (v36)
  {
    goto LABEL_8;
  }

  v75 = v34;
  v76 = v29;
  v74 = v32;
  v77 = v23;
  v87 = a1;
  v37 = v86;
  v38 = sub_267B7E09C();
  sub_267B45154(v38, 0);
  if (v40 == v41 >> 1)
  {
LABEL_7:
    v50 = v77;
    v51 = sub_267B7DFBC();
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280218868, &qword_267B80580) + 48);
    *v53 = v50;
    sub_267B7E00C();
    sub_267B7DFAC();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_8_9();
    v56(v55, v37);
    a1 = v87;
LABEL_8:
    v57 = a1;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v57);
    return;
  }

  if (v40 < (v41 >> 1))
  {
    v42 = *(v39 + v40);
    sub_267B45CBC(v40 + 1);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = v76;
    if (v44 == v46 >> 1)
    {
      v48 = v42;
      v49 = v37;
      if (v48)
      {
        v89 = 1;
        sub_267B71B88();
        OUTLINED_FUNCTION_13_4();
        v62 = sub_267B7E05C();
        v64 = v63;
        swift_unknownObjectRelease();
        v65 = OUTLINED_FUNCTION_11_3();
        v66(v65);
        v67 = OUTLINED_FUNCTION_8_9();
        v68(v67, v37);
        *v47 = v62;
        v47[1] = v64;
        swift_storeEnumTagMultiPayload();
        v69 = v47;
        v70 = v78;
        v71 = v75;
      }

      else
      {
        v88 = 0;
        sub_267B71BDC();
        OUTLINED_FUNCTION_13_4();
        v71 = v75;
        sub_267B7DA6C();
        OUTLINED_FUNCTION_6_9();
        sub_267B72A68(v58, v59);
        v60 = v74;
        sub_267B7E08C();
        v61 = v85;
        swift_unknownObjectRelease();
        v72 = OUTLINED_FUNCTION_12_3();
        v73(v72);
        (*(v61 + 8))(v22, v49);
        swift_storeEnumTagMultiPayload();
        v69 = v60;
        v70 = v78;
      }

      sub_267B72A04(v69, v71);
      sub_267B72A04(v71, v70);
      v57 = v87;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}