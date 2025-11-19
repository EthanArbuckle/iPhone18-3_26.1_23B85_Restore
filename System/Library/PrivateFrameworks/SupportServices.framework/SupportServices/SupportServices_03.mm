uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionHeader.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionBody.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionBody.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionFooter.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionFooter.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedRemindersTitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedRemindersTitle.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedPlaceholder.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedPlaceholder.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.relevantStoreTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  v1 = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v0) + 44);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_148();

  return v6(v5);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v0) + 44);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_234();

  return v6(v5);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v0) + 44);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = MEMORY[0x277D84F90];
  v3 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
  v4 = a1 + *(v3 + 44);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v5 = *(v3 + 48);
  sub_26BDA0810();
  v6 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t SupportOptionDetailsResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v2 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  if (qword_280448DB0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_280449E68;
}

uint64_t sub_26BD22324()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E20);
  __swift_project_value_buffer(v0, qword_280449E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "case_meta_data";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_context";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reporting_context";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void SupportOptionDetailsRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    v1 = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_26BDA0820();
        sub_26BDA08F0();
LABEL_11:
        v0 = 0;
        break;
      case 2:
        v6 = *(type metadata accessor for SupportOptionDetailsRequest(0) + 28);
        type metadata accessor for TriageRequest.ClientContext(0);
        OUTLINED_FUNCTION_79_0();
        v5 = &unk_2804490F8;
        goto LABEL_9;
      case 1:
        v3 = *(type metadata accessor for SupportOptionDetailsRequest(0) + 24);
        type metadata accessor for TriageRequest.CaseMetaData(0);
        OUTLINED_FUNCTION_80_0();
        v5 = &unk_280449100;
LABEL_9:
        sub_26BD2E1F8(v5, v4);
        sub_26BDA09B0();
        goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_247();
}

void SupportOptionDetailsRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  v30 = type metadata accessor for TriageRequest.ClientContext(v9);
  v10 = OUTLINED_FUNCTION_34(v30);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_110(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_129_0();
  v17 = type metadata accessor for TriageRequest.CaseMetaData(0);
  v18 = OUTLINED_FUNCTION_34(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_131_0();
  v31 = type metadata accessor for SupportOptionDetailsRequest(0);
  v21 = v31[6];
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v17) == 1)
  {
    sub_26BD04E80(v3, &qword_280448F68, &qword_26BDA1A30);
  }

  else
  {
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_80_0();
    sub_26BD2E1F8(v22, v23);
    sub_26BDA0AD0();
    OUTLINED_FUNCTION_256();
    sub_26BD2E04C();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v24 = v31[7];
  sub_26BD31AF8();
  v25 = OUTLINED_FUNCTION_114();
  if (__swift_getEnumTagSinglePayload(v25, v26, v30) == 1)
  {
    sub_26BD04E80(v2, &qword_280448F70, &qword_26BDA1A38);
  }

  else
  {
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_79_0();
    sub_26BD2E1F8(v27, v28);
    sub_26BDA0AD0();
    OUTLINED_FUNCTION_173();
    sub_26BD2E04C();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  if (!*(*v4 + 16) || (sub_26BDA0820(), sub_26BDA0A30(), !v1))
  {
    v29 = v4 + v31[5];
    sub_26BDA0830();
  }

LABEL_10:
  OUTLINED_FUNCTION_247();
}

void static SupportOptionDetailsRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v6 = v5;
  v73 = type metadata accessor for TriageRequest.ClientContext(0);
  v7 = OUTLINED_FUNCTION_34(v73);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v69 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  v70 = &v68 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449108, &unk_26BDA5490);
  OUTLINED_FUNCTION_34(v71);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  v74 = &v68 - v20;
  v21 = type metadata accessor for TriageRequest.CaseMetaData(0);
  v22 = OUTLINED_FUNCTION_34(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_123_0();
  v25 = OUTLINED_FUNCTION_256();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_110(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_228();
  v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449110, &unk_26BDA1AB0) - 8);
  v32 = *(*v31 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_128_0();
  v72 = type metadata accessor for SupportOptionDetailsRequest(v34);
  v35 = *(v72 + 24);
  v36 = v31[14];
  v75 = v6;
  sub_26BD31AF8();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v2);
  if (v37)
  {
    OUTLINED_FUNCTION_28(v2 + v36);
    if (v37)
    {
      sub_26BD04E80(v2, &qword_280448F68, &qword_26BDA1A30);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v2 + v36);
  if (v37)
  {
    sub_26BD2E04C();
LABEL_9:
    v38 = &qword_280449110;
    v39 = &unk_26BDA1AB0;
LABEL_10:
    v40 = v2;
LABEL_24:
    sub_26BD04E80(v40, v38, v39);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_12_1();
  sub_26BD2DF9C();
  v41 = *(v21 + 20);
  if (*(v1 + v41) != *(v0 + v41))
  {
    v42 = *(v1 + v41);

    OUTLINED_FUNCTION_163_0();
    sub_26BD631C8();
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      sub_26BD2E04C();
      sub_26BD2E04C();
      v38 = &qword_280448F68;
      v39 = &qword_26BDA1A30;
      goto LABEL_10;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v45, v46);
  OUTLINED_FUNCTION_138_0();
  v47 = sub_26BDA0BB0();
  sub_26BD2E04C();
  OUTLINED_FUNCTION_122();
  sub_26BD2E04C();
  sub_26BD04E80(v2, &qword_280448F68, &qword_26BDA1A30);
  if ((v47 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v48 = v72;
  v49 = *(v72 + 28);
  v50 = *(v71 + 48);
  v52 = v74;
  v51 = v75;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v53 = v73;
  OUTLINED_FUNCTION_112(v52, 1, v73);
  if (!v37)
  {
    v54 = v70;
    sub_26BD31AF8();
    OUTLINED_FUNCTION_112(v52 + v50, 1, v53);
    if (!v55)
    {
      OUTLINED_FUNCTION_11_0();
      v57 = v69;
      sub_26BD2DF9C();
      v58 = *(v53 + 20);
      if (*&v54[v58] == *(v57 + v58) || (v59 = *&v54[v58], , , OUTLINED_FUNCTION_147(), v60 = sub_26BD67C6C(), , , v60))
      {
        sub_26BDA0850();
        OUTLINED_FUNCTION_0_4();
        sub_26BD2E1F8(v61, v62);
        v63 = OUTLINED_FUNCTION_171_0();
        sub_26BD2E04C();
        sub_26BD2E04C();
        sub_26BD04E80(v52, &qword_280448F70, &qword_26BDA1A38);
        if ((v63 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }

      sub_26BD2E04C();
      sub_26BD2E04C();
      v38 = &qword_280448F70;
      v39 = &qword_26BDA1A38;
      goto LABEL_23;
    }

    sub_26BD2E04C();
LABEL_22:
    v38 = &qword_280449108;
    v39 = &unk_26BDA5490;
LABEL_23:
    v40 = v52;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_112(v52 + v50, 1, v53);
  if (!v37)
  {
    goto LABEL_22;
  }

  sub_26BD04E80(v52, &qword_280448F70, &qword_26BDA1A38);
LABEL_30:
  sub_26BD2F284(*v51, *v4);
  if (v64)
  {
    v65 = *(v48 + 20);
    sub_26BDA0850();
    OUTLINED_FUNCTION_0_4();
    sub_26BD2E1F8(v66, v67);
    v56 = sub_26BDA0BB0();
    goto LABEL_26;
  }

LABEL_25:
  v56 = 0;
LABEL_26:
  OUTLINED_FUNCTION_258(v56);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD230D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A218, type metadata accessor for SupportOptionDetailsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD23150(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A040, type metadata accessor for SupportOptionDetailsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD231C0()
{
  sub_26BD2E1F8(&qword_28044A040, type metadata accessor for SupportOptionDetailsRequest);

  return sub_26BDA0A00();
}

uint64_t sub_26BD23258()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E38);
  __swift_project_value_buffer(v0, qword_280449E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "product_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "product_code";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "product_name";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "concierge_product_name";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "show_carriers";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t AssociatedProductInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 5:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      default:
        continue;
    }
  }
}

uint64_t AssociatedProductInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_29();
      if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v13 = *(v2 + 48);
        v14 = *(v2 + 56);
        OUTLINED_FUNCTION_29();
        if (!v15 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          if (*(v2 + 64) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v1))
          {
            v16 = v2 + *(type metadata accessor for AssociatedProductInfo(0) + 36);
            OUTLINED_FUNCTION_129();
            return sub_26BDA0830();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static AssociatedProductInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v8 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 64) != *(v0 + 64))
  {
    return 0;
  }

  v10 = *(type metadata accessor for AssociatedProductInfo(0) + 36);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v11, v12);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD2383C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A210, type metadata accessor for AssociatedProductInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD238BC(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A058, type metadata accessor for AssociatedProductInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2392C()
{
  sub_26BD2E1F8(&qword_28044A058, type metadata accessor for AssociatedProductInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD239C4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E50);
  __swift_project_value_buffer(v0, qword_280449E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_26BDA5430;
  v4 = v72 + v3 + v1[14];
  *(v72 + v3) = 1;
  *v4 = "support_option_type";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  *(v4 + 24) = "solutionType";
  *(v4 + 32) = 12;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x277D21878];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v72 + v3 + v2 + v1[14];
  *(v72 + v3 + v2) = 2;
  *v8 = "support_option_sub_type_string";
  *(v8 + 8) = 30;
  *(v8 + 16) = 2;
  *(v8 + 24) = "solutionSubType";
  *(v8 + 32) = 15;
  *(v8 + 40) = 2;
  v7();
  v9 = (v72 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "triggers";
  *(v10 + 1) = 8;
  v10[16] = 2;
  LODWORD(v5) = *MEMORY[0x277D21870];
  v7();
  v11 = (v72 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "scb";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v72 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "cld";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v72 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "c2c";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = v1[14];
  v18 = (v72 + v3 + 6 * v2);
  *v18 = 8;
  v19 = v18 + v17;
  *v19 = "carriers_info";
  *(v19 + 1) = 13;
  v19[16] = 2;
  *(v19 + 3) = "carriers";
  *(v19 + 4) = 8;
  v19[40] = 2;
  v7();
  v20 = (v72 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "related_products";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v22 = *MEMORY[0x277D21888];
  v7();
  v23 = (v72 + v3 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "grl_product";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v72 + v3 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "concierge_product";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v7();
  v27 = (v72 + v3 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "concierge_symptom";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v7();
  v29 = (v72 + v3 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "randevu_product";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v72 + v3 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "detected_carrier_id";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v7();
  v33 = (v72 + v3 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "localized_purchase_requirements_description";
  *(v34 + 1) = 43;
  v34[16] = 2;
  v7();
  v35 = v1[14];
  v36 = (v72 + v3 + 14 * v2);
  *v36 = 16;
  v37 = v36 + v35;
  *v37 = "uses_secure_flow";
  *(v37 + 1) = 16;
  v37[16] = 2;
  *(v37 + 3) = "secureFlow";
  *(v37 + 4) = 10;
  v37[40] = 2;
  v7();
  v38 = (v72 + v3 + 15 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "secure_flow_resources";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v7();
  v40 = (v72 + v3 + 16 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "solution_intent_resources";
  *(v41 + 1) = 25;
  v41[16] = 2;
  v7();
  v42 = v1[14];
  v43 = (v72 + v3 + 17 * v2);
  *v43 = 19;
  v44 = v43 + v42;
  *v44 = "redirect_url_string";
  *(v44 + 1) = 19;
  v44[16] = 2;
  *(v44 + 3) = "redirectUrl";
  *(v44 + 4) = 11;
  v44[40] = 2;
  v7();
  v45 = (v72 + v3 + 18 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "locale";
  *(v46 + 1) = 6;
  v46[16] = 2;
  v7();
  v47 = (v72 + v3 + 19 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "curbside_details";
  *(v48 + 1) = 16;
  v48[16] = 2;
  v7();
  v49 = (v72 + v3 + 20 * v2);
  v50 = v49 + v1[14];
  *v49 = 28;
  *v50 = "localized_pricing_disclaimer";
  *(v50 + 1) = 28;
  v50[16] = 2;
  v7();
  v51 = v1[14];
  v52 = (v72 + v3 + 21 * v2);
  *v52 = 22;
  v53 = v52 + v51;
  *v53 = "apple_id_requirement";
  *(v53 + 1) = 20;
  v53[16] = 2;
  *(v53 + 3) = "appleIdCollection";
  *(v53 + 4) = 17;
  v53[40] = 2;
  v7();
  v54 = (v72 + v3 + 22 * v2);
  v55 = v54 + v1[14];
  *v54 = 23;
  *v55 = "email_attributes";
  *(v55 + 1) = 16;
  v55[16] = 2;
  v7();
  v56 = v1[14];
  v57 = (v72 + v3 + 23 * v2);
  *v57 = 24;
  v58 = v57 + v56;
  *v58 = "contact_carriers_info";
  *(v58 + 1) = 21;
  v58[16] = 2;
  *(v58 + 3) = "carrierDetails";
  *(v58 + 4) = 14;
  v58[40] = 2;
  v7();
  v59 = (v72 + v3 + 24 * v2);
  v60 = v59 + v1[14];
  *v59 = 25;
  *v60 = "ers";
  *(v60 + 1) = 3;
  v60[16] = 2;
  v7();
  v61 = (v72 + v3 + 25 * v2);
  v62 = v61 + v1[14];
  *v61 = 26;
  *v62 = "application_data";
  *(v62 + 1) = 16;
  v62[16] = 2;
  v7();
  v63 = (v72 + v3 + 26 * v2);
  v64 = v63 + v1[14];
  *v63 = 27;
  *v64 = "take_in_for_service_details";
  *(v64 + 1) = 27;
  v64[16] = 2;
  v7();
  v65 = (v72 + v3 + 27 * v2);
  v66 = v65 + v1[14];
  *v65 = 29;
  *v66 = "mail_in";
  *(v66 + 1) = 7;
  v66[16] = 2;
  v7();
  v67 = (v72 + v3 + 28 * v2);
  v68 = v67 + v1[14];
  *v67 = 30;
  *v68 = "pre_contact";
  *(v68 + 1) = 11;
  v68[16] = 2;
  v7();
  v69 = (v72 + v3 + 29 * v2);
  v70 = v69 + v1[14];
  *v69 = 31;
  *v70 = "manage_coverage_flow";
  *(v70 + 1) = 20;
  v70[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD2430C()
{
  v0 = type metadata accessor for SupportOptionDetailsResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26BD2434C();
  qword_280449E68 = result;
  return result;
}

uint64_t sub_26BD2434C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__triggers;
  v2 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb;
  v4 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld;
  v6 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C;
  v8 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts) = v9;
  v10 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__secureFlowResources, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__solutionIntentResources, 1, 1, v2);
  v16 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__curbsideDetails, 1, 1, v2);
  v18 = (v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__appleIDRequirement, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__emailAttributes, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo) = v9;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__ers, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData) = xmmword_26BDA19C0;
  *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails) = v9;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__mailIn, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__preContact, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__manageCoverageFlow, 1, 1, v2);
  return v0;
}

uint64_t sub_26BD24600(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F10, &qword_26BDA5458);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = v106 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F00, &qword_26BDA5450);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = v106 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449EF0, &qword_26BDA5448);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v106[5] = v106 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v14 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__triggers;
  v106[1] = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__triggers;
  v15 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb;
  v106[2] = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb;
  v17 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld;
  v106[3] = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld;
  v19 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C;
  v106[4] = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C;
  v21 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v107 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  v22 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo) = MEMORY[0x277D84F90];
  v108 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts) = v22;
  v23 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  v110 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  v112 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  v113 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  v114 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  v115 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v116 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow) = 0;
  v117 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__secureFlowResources;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__secureFlowResources, 1, 1, v15);
  v118 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__solutionIntentResources;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__solutionIntentResources, 1, 1, v15);
  v29 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  v119 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  v120 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v121 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__curbsideDetails;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__curbsideDetails, 1, 1, v15);
  v31 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  v122 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v123 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__appleIDRequirement;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__appleIDRequirement, 1, 1, v15);
  v124 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__emailAttributes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__emailAttributes, 1, 1, v15);
  v125 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo) = v22;
  v126 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__ers;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__ers, 1, 1, v15);
  v127 = (v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData) = xmmword_26BDA19C0;
  v128 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
  *(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails) = v22;
  v129 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__mailIn;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__mailIn, 1, 1, v15);
  v130 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__preContact;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__preContact, 1, 1, v15);
  v131 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__manageCoverageFlow;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__manageCoverageFlow, 1, 1, v15);
  swift_beginAccess();
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v32;
  *(v1 + 24) = v33;
  swift_beginAccess();
  v35 = *(a1 + 32);
  v34 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v35;
  *(v1 + 40) = v34;
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();

  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = v107;
  swift_beginAccess();
  v39 = *(v1 + v38);
  *(v1 + v38) = v37;

  v40 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  swift_beginAccess();
  v41 = *(a1 + v40);
  v42 = v108;
  swift_beginAccess();
  v43 = *(v1 + v42);
  *(v1 + v42) = v41;

  v44 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  swift_beginAccess();
  v47 = v23[1];
  *v23 = v46;
  v23[1] = v45;

  v48 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  v51 = v110;
  swift_beginAccess();
  v52 = v51[1];
  *v51 = v50;
  v51[1] = v49;

  v53 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];
  v56 = v112;
  swift_beginAccess();
  v57 = v56[1];
  *v56 = v55;
  v56[1] = v54;

  v58 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  swift_beginAccess();
  v60 = *v58;
  v59 = v58[1];
  v61 = v113;
  swift_beginAccess();
  v62 = v61[1];
  *v61 = v60;
  v61[1] = v59;

  v63 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = v114;
  swift_beginAccess();
  v67 = v66[1];
  *v66 = v65;
  v66[1] = v64;

  v68 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];
  v71 = v115;
  swift_beginAccess();
  v72 = v71[1];
  *v71 = v70;
  v71[1] = v69;

  v73 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  swift_beginAccess();
  LOBYTE(v73) = *(a1 + v73);
  v74 = v116;
  swift_beginAccess();
  *(v1 + v74) = v73;
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v75 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  swift_beginAccess();
  v77 = *v75;
  v76 = v75[1];
  v78 = v119;
  swift_beginAccess();
  v79 = v78[1];
  *v78 = v77;
  v78[1] = v76;

  v80 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v120;
  swift_beginAccess();
  v84 = v83[1];
  *v83 = v82;
  v83[1] = v81;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v85 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  swift_beginAccess();
  v87 = *v85;
  v86 = v85[1];
  v88 = v122;
  swift_beginAccess();
  v89 = v88[1];
  *v88 = v87;
  v88[1] = v86;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v90 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = v125;
  swift_beginAccess();
  v93 = *(v1 + v92);
  *(v1 + v92) = v91;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v94 = (a1 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  swift_beginAccess();
  v96 = *v94;
  v95 = v94[1];
  v97 = v127;
  swift_beginAccess();
  v98 = v97;
  v99 = *v97;
  v100 = v98[1];
  *v98 = v96;
  v98[1] = v95;
  sub_26BCFEFC4(v96, v95);
  sub_26BCFF01C(v99, v100);
  v101 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
  swift_beginAccess();
  v102 = *(a1 + v101);
  v103 = v128;
  swift_beginAccess();
  v104 = *(v1 + v103);
  *(v1 + v103) = v102;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();

  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  return v1;
}

uint64_t sub_26BD25548()
{
  v1 = *(v0 + 40);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__triggers, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__scb, &qword_280449EF0, &qword_26BDA5448);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__cld, &qword_280449F00, &qword_26BDA5450);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__c2C, &qword_280449F10, &qword_26BDA5458);
  v2 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo);

  v3 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts);

  v4 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__secureFlowResources, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__solutionIntentResources, &qword_280448F88, &qword_26BDA5440);
  v10 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString + 8);

  v11 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__curbsideDetails, &qword_280448F88, &qword_26BDA5440);
  v12 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__appleIDRequirement, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__emailAttributes, &qword_280448F88, &qword_26BDA5440);
  v13 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__ers, &qword_280448F88, &qword_26BDA5440);
  sub_26BCFF01C(*(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData), *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData + 8));
  v14 = *(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__mailIn, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__preContact, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__manageCoverageFlow, &qword_280448F88, &qword_26BDA5440);
  return v0;
}

uint64_t sub_26BD257E0()
{
  v0 = *sub_26BD25548();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t SupportOptionDetailsResponse.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for SupportOptionDetailsResponse._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_36();
    *(v1 + v2) = sub_26BD24600(v9);
  }

  return sub_26BD258D4();
}

uint64_t sub_26BD258D4()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        sub_26BD04DD8();
        sub_26BDA0930();
        goto LABEL_16;
      case 2:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_16;
      case 3:
        swift_beginAccess();
        sub_26BDA0810();
        v4 = &qword_280449130;
        v5 = MEMORY[0x277D215C8];
        goto LABEL_13;
      case 5:
        swift_beginAccess();
        type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
        v4 = &unk_28044A098;
        v5 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails;
        goto LABEL_13;
      case 6:
        swift_beginAccess();
        type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
        v4 = &unk_28044A0B0;
        v5 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails;
LABEL_13:
        sub_26BD2E1F8(v4, v5);
        sub_26BDA09B0();
        goto LABEL_16;
      case 7:
        swift_beginAccess();
        type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
        v8 = &unk_28044A0C8;
        v9 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails;
        goto LABEL_22;
      case 8:
      case 24:
        swift_beginAccess();
        sub_26BDA0810();
        v6 = &qword_280449130;
        v7 = MEMORY[0x277D215C8];
        goto LABEL_20;
      case 9:
        swift_beginAccess();
        type metadata accessor for AssociatedProductInfo(0);
        v6 = &qword_28044A058;
        v7 = type metadata accessor for AssociatedProductInfo;
        goto LABEL_20;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 19:
      case 20:
      case 28:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_16;
      case 16:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_16;
      case 17:
      case 18:
      case 21:
      case 22:
      case 23:
      case 25:
        swift_beginAccess();
        sub_26BDA0810();
        v8 = &qword_280449130;
        v9 = MEMORY[0x277D215C8];
LABEL_22:
        sub_26BD2E1F8(v8, v9);
        goto LABEL_23;
      case 26:
        swift_beginAccess();
        sub_26BDA0940();
        goto LABEL_16;
      case 27:
        swift_beginAccess();
        type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
        v6 = &unk_28044A0E0;
        v7 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails;
LABEL_20:
        sub_26BD2E1F8(v6, v7);
        sub_26BDA09A0();
        goto LABEL_16;
      case 29:
      case 30:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
LABEL_23:
        sub_26BDA09B0();
LABEL_16:
        v1 = 0;
        swift_endAccess();
        break;
      case 31:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t SupportOptionDetailsResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_156_0();
  v7 = *(v3 + *(type metadata accessor for SupportOptionDetailsResponse(v6) + 20));
  OUTLINED_FUNCTION_129();
  result = sub_26BD26198(v8, v9, v10, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_167();
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD26198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F10, &qword_26BDA5458);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v178 = &v153 - v9;
  v172 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  v10 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v170 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F00, &qword_26BDA5450);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v174 = &v153 - v14;
  v175 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  v15 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v171 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449EF0, &qword_26BDA5448);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v153 - v19;
  v177 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  v21 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v173 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v155 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v157 = &v153 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v158 = &v153 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v161 = &v153 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v163 = &v153 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v165 = &v153 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v166 = &v153 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v168 = &v153 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v169 = &v153 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v153 - v43;
  v181 = sub_26BDA0810();
  v176 = *(v181 - 8);
  v45 = *(v176 + 64);
  v46 = MEMORY[0x28223BE20](v181);
  v153 = &v153 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v154 = &v153 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v156 = &v153 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v159 = &v153 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v162 = &v153 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v160 = &v153 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v164 = &v153 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v167 = &v153 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v179 = &v153 - v63;
  MEMORY[0x28223BE20](v62);
  v65 = &v153 - v64;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v66 = *(a1 + 24);
    v182 = *(a1 + 16);
    v183 = v66;
    sub_26BD04DD8();
    result = sub_26BDA0A50();
    if (v4)
    {
      return result;
    }
  }

  v184 = a4;
  v68 = v4;
  swift_beginAccess();
  v69 = *(a1 + 32);
  v70 = *(a1 + 40);
  v180 = a1;
  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v69 & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {

    sub_26BDA0AB0();
    if (v68)
    {
    }
  }

  swift_beginAccess();
  sub_26BD31AF8();
  v72 = v181;
  if (__swift_getEnumTagSinglePayload(v44, 1, v181) == 1)
  {
    sub_26BD04E80(v44, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v73 = v176;
    (*(v176 + 32))(v65, v44, v72);
    sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
    sub_26BDA0AD0();
    if (v68)
    {
      return (*(v73 + 8))(v65, v72);
    }

    v68 = 0;
    (*(v73 + 8))(v65, v72);
  }

  v74 = v180;
  swift_beginAccess();
  sub_26BD31AF8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v177);
  v76 = v178;
  v77 = v179;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v20, &qword_280449EF0, &qword_26BDA5448);
  }

  else
  {
    sub_26BD2DF9C();
    sub_26BD2E1F8(&qword_28044A098, type metadata accessor for SupportOptionDetailsResponse.SCBDetails);
    sub_26BDA0AD0();
    if (v68)
    {
      return sub_26BD2E04C();
    }

    v68 = 0;
    sub_26BD2E04C();
  }

  swift_beginAccess();
  v78 = v174;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v78, 1, v175) == 1)
  {
    sub_26BD04E80(v78, &qword_280449F00, &qword_26BDA5450);
    v79 = v68;
  }

  else
  {
    sub_26BD2DF9C();
    sub_26BD2E1F8(&qword_28044A0B0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails);
    sub_26BDA0AD0();
    v79 = v68;
    if (v68)
    {
      return sub_26BD2E04C();
    }

    sub_26BD2E04C();
    v74 = v180;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v76, 1, v172) == 1)
  {
    sub_26BD04E80(v76, &qword_280449F10, &qword_26BDA5458);
    goto LABEL_27;
  }

  sub_26BD2DF9C();
  sub_26BD2E1F8(&qword_28044A0C8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails);
  sub_26BDA0AD0();
  if (v79)
  {
    return sub_26BD2E04C();
  }

  sub_26BD2E04C();
LABEL_27:
  v80 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  swift_beginAccess();
  if (*(*(v74 + v80) + 16))
  {
    sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);

    sub_26BDA0AC0();
    if (v79)
    {
    }

    v81 = 0;
  }

  else
  {
    v81 = v79;
  }

  v82 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  swift_beginAccess();
  if (*(*(v74 + v82) + 16))
  {
    type metadata accessor for AssociatedProductInfo(0);
    sub_26BD2E1F8(&qword_28044A058, type metadata accessor for AssociatedProductInfo);

    sub_26BDA0AC0();
    v83 = v81;
    if (v81)
    {
    }
  }

  else
  {
    v83 = v81;
  }

  v84 = (v74 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v87 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v87)
  {

    sub_26BDA0AB0();
    if (v83)
    {
    }
  }

  v88 = (v74 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v91 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (v91)
  {

    sub_26BDA0AB0();
    if (v83)
    {
    }
  }

  v92 = (v74 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  v95 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v95 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (v95)
  {

    sub_26BDA0AB0();
    if (v83)
    {
    }
  }

  v96 = (v74 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v99 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (v99)
  {

    sub_26BDA0AB0();
    if (v83)
    {
    }
  }

  v100 = (v74 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  swift_beginAccess();
  v101 = *v100;
  v102 = v100[1];
  v103 = HIBYTE(v102) & 0xF;
  if ((v102 & 0x2000000000000000) == 0)
  {
    v103 = v101 & 0xFFFFFFFFFFFFLL;
  }

  if (v103)
  {

    sub_26BDA0AB0();
    if (!v83)
    {

      goto LABEL_60;
    }
  }

LABEL_60:
  v104 = (v74 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = HIBYTE(v106) & 0xF;
  if ((v106 & 0x2000000000000000) == 0)
  {
    v107 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (v107)
  {

    sub_26BDA0AB0();
    if (v83)
    {
    }
  }

  v108 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  swift_beginAccess();
  if (*(v74 + v108) != 1 || (result = sub_26BDA0A40(), !v83))
  {
    swift_beginAccess();
    v109 = v169;
    sub_26BD31AF8();
    v110 = v181;
    if (__swift_getEnumTagSinglePayload(v109, 1, v181) == 1)
    {
      sub_26BD04E80(v109, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v111 = v109;
      v112 = v176;
      (*(v176 + 32))(v77, v111, v110);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      if (v83)
      {
        return (*(v112 + 8))(v77, v110);
      }

      (*(v112 + 8))(v77, v110);
    }

    swift_beginAccess();
    v113 = v168;
    sub_26BD31AF8();
    v114 = v181;
    if (__swift_getEnumTagSinglePayload(v113, 1, v181) == 1)
    {
      sub_26BD04E80(v113, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v115 = v113;
      v116 = v176;
      (*(v176 + 32))(v167, v115, v114);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      if (v83)
      {
        return (*(v116 + 8))(v167, v114);
      }

      (*(v116 + 8))(v167, v114);
    }

    v117 = (v74 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
    swift_beginAccess();
    v118 = *v117;
    v119 = v117[1];
    v120 = HIBYTE(v119) & 0xF;
    if ((v119 & 0x2000000000000000) == 0)
    {
      v120 = v118 & 0xFFFFFFFFFFFFLL;
    }

    if (v120)
    {

      sub_26BDA0AB0();
      if (v83)
      {
      }
    }

    v121 = (v74 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
    swift_beginAccess();
    v122 = *v121;
    v123 = v121[1];
    v124 = HIBYTE(v123) & 0xF;
    if ((v123 & 0x2000000000000000) == 0)
    {
      v124 = v122 & 0xFFFFFFFFFFFFLL;
    }

    if (v124)
    {

      sub_26BDA0AB0();
      if (v83)
      {
      }
    }

    v125 = v166;
    swift_beginAccess();
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v125, 1, v181) == 1)
    {
      sub_26BD04E80(v125, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v126 = v176;
      v127 = v164;
      v128 = v125;
      v129 = v181;
      (*(v176 + 32))(v164, v128, v181);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      if (v83)
      {
        return (*(v126 + 8))(v127, v129);
      }

      (*(v126 + 8))(v127, v129);
    }

    v130 = v165;
    swift_beginAccess();
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v130, 1, v181) == 1)
    {
      v131 = v83;
      sub_26BD04E80(v130, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v132 = v176;
      v133 = v160;
      v134 = v130;
      v135 = v181;
      (*(v176 + 32))(v160, v134, v181);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      v131 = v83;
      if (v83)
      {
        return (*(v132 + 8))(v133, v135);
      }

      (*(v132 + 8))(v133, v135);
    }

    swift_beginAccess();
    v136 = v163;
    sub_26BD31AF8();
    v137 = v181;
    if (__swift_getEnumTagSinglePayload(v136, 1, v181) == 1)
    {
      sub_26BD04E80(v136, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      (*(v176 + 32))(v162, v136, v137);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      if (v131)
      {
        return (*(v176 + 8))(v162, v181);
      }

      (*(v176 + 8))(v162, v181);
    }

    v138 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
    v139 = v180;
    swift_beginAccess();
    if (*(*(v139 + v138) + 16))
    {
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);

      sub_26BDA0AC0();
      if (v131)
      {
      }
    }

    swift_beginAccess();
    v140 = v161;
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v140, 1, v181) == 1)
    {
      sub_26BD04E80(v161, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      (*(v176 + 32))(v159, v161, v181);
      sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      if (v131)
      {
        return (*(v176 + 8))(v159, v181);
      }

      (*(v176 + 8))(v159, v181);
    }

    v141 = v180 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData;
    swift_beginAccess();
    if (sub_26BD50FE4(*v141, *(v141 + 8)) || (v143 = *v141, v142 = *(v141 + 8), sub_26BCFEFC4(v143, v142), sub_26BDA0A60(), result = sub_26BCFF01C(v143, v142), !v131))
    {
      v144 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
      v145 = v180;
      swift_beginAccess();
      if (!*(*(v145 + v144) + 16) || (type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0), sub_26BD2E1F8(&qword_28044A0E0, type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails), , sub_26BDA0AC0(), result = , !v131))
      {
        v146 = (v180 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
        swift_beginAccess();
        v147 = *v146;
        v148 = v146[1];
        v149 = HIBYTE(v148) & 0xF;
        if ((v148 & 0x2000000000000000) == 0)
        {
          v149 = v147 & 0xFFFFFFFFFFFFLL;
        }

        if (!v149 || (, sub_26BDA0AB0(), result = , !v131))
        {
          swift_beginAccess();
          v150 = v158;
          sub_26BD31AF8();
          if (__swift_getEnumTagSinglePayload(v150, 1, v181) == 1)
          {
            sub_26BD04E80(v158, &qword_280448F88, &qword_26BDA5440);
          }

          else
          {
            (*(v176 + 32))(v156, v158, v181);
            sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
            sub_26BDA0AD0();
            if (v131)
            {
              return (*(v176 + 8))(v156, v181);
            }

            (*(v176 + 8))(v156, v181);
          }

          swift_beginAccess();
          v151 = v157;
          sub_26BD31AF8();
          if (__swift_getEnumTagSinglePayload(v151, 1, v181) == 1)
          {
            sub_26BD04E80(v157, &qword_280448F88, &qword_26BDA5440);
          }

          else
          {
            (*(v176 + 32))(v154, v157, v181);
            sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
            sub_26BDA0AD0();
            if (v131)
            {
              return (*(v176 + 8))(v154, v181);
            }

            (*(v176 + 8))(v154, v181);
          }

          swift_beginAccess();
          v152 = v155;
          sub_26BD31AF8();
          if (__swift_getEnumTagSinglePayload(v152, 1, v181) == 1)
          {
            return sub_26BD04E80(v155, &qword_280448F88, &qword_26BDA5440);
          }

          else
          {
            (*(v176 + 32))(v153, v155, v181);
            sub_26BD2E1F8(&qword_280449130, MEMORY[0x277D215C8]);
            sub_26BDA0AD0();
            return (*(v176 + 8))(v153, v181);
          }
        }
      }
    }
  }

  return result;
}

uint64_t static SupportOptionDetailsResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_21_1();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_26BD27F08(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v7, v8);
  OUTLINED_FUNCTION_259();
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BD27F08(uint64_t a1, uint64_t a2)
{
  v346 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  v4 = *(*(v346 - 8) + 64);
  MEMORY[0x28223BE20](v346);
  v342 = &v312[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A220, &dword_26BDA61B8);
  v6 = *(*(v345 - 8) + 64);
  MEMORY[0x28223BE20](v345);
  v347 = &v312[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F10, &qword_26BDA5458);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v343 = &v312[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v355 = &v312[-v12];
  v351 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  v13 = *(*(v351 - 8) + 64);
  MEMORY[0x28223BE20](v351);
  v344 = &v312[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A228, &qword_26BDA61C0);
  v15 = *(*(v350 - 8) + 64);
  MEMORY[0x28223BE20](v350);
  v352 = &v312[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F00, &qword_26BDA5450);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v348 = &v312[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v354 = &v312[-v21];
  v357 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  v22 = *(*(v357 - 8) + 64);
  MEMORY[0x28223BE20](v357);
  v349 = &v312[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A230, &qword_26BDA61C8);
  v24 = *(*(v356 - 8) + 64);
  MEMORY[0x28223BE20](v356);
  v358 = &v312[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449EF0, &qword_26BDA5448);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v353 = &v312[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v359 = &v312[-v30];
  v362 = sub_26BDA0810();
  v360 = *(v362 - 8);
  v31 = *(v360 + 64);
  MEMORY[0x28223BE20](v362);
  v33 = &v312[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v34 = *(*(v361 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v361);
  v323 = &v312[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v321 = &v312[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v318 = &v312[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v326 = &v312[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v330 = &v312[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v332 = &v312[-v46];
  v47 = MEMORY[0x28223BE20](v45);
  v335 = &v312[-v48];
  v49 = MEMORY[0x28223BE20](v47);
  v339 = &v312[-v50];
  v51 = MEMORY[0x28223BE20](v49);
  v340 = &v312[-v52];
  MEMORY[0x28223BE20](v51);
  v54 = &v312[-v53];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v59 = &v312[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = MEMORY[0x28223BE20](v57);
  v322 = &v312[-v61];
  v62 = MEMORY[0x28223BE20](v60);
  v320 = &v312[-v63];
  v64 = MEMORY[0x28223BE20](v62);
  v319 = &v312[-v65];
  v66 = MEMORY[0x28223BE20](v64);
  v317 = &v312[-v67];
  v68 = MEMORY[0x28223BE20](v66);
  v316 = &v312[-v69];
  v70 = MEMORY[0x28223BE20](v68);
  v324 = &v312[-v71];
  v72 = MEMORY[0x28223BE20](v70);
  v325 = &v312[-v73];
  v74 = MEMORY[0x28223BE20](v72);
  v327 = &v312[-v75];
  v76 = MEMORY[0x28223BE20](v74);
  v328 = &v312[-v77];
  v78 = MEMORY[0x28223BE20](v76);
  v329 = &v312[-v79];
  v80 = MEMORY[0x28223BE20](v78);
  v331 = &v312[-v81];
  v82 = MEMORY[0x28223BE20](v80);
  v333 = &v312[-v83];
  v84 = MEMORY[0x28223BE20](v82);
  v334 = &v312[-v85];
  v86 = MEMORY[0x28223BE20](v84);
  v336 = &v312[-v87];
  v88 = MEMORY[0x28223BE20](v86);
  v337 = &v312[-v89];
  v90 = MEMORY[0x28223BE20](v88);
  v338 = &v312[-v91];
  v92 = MEMORY[0x28223BE20](v90);
  v341 = &v312[-v93];
  v94 = MEMORY[0x28223BE20](v92);
  v96 = &v312[-v95];
  MEMORY[0x28223BE20](v94);
  v98 = &v312[-v97];
  swift_beginAccess();
  v99 = a1;
  v100 = *(a1 + 16);
  swift_beginAccess();
  v101 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v101)
    {
      case 1:
        if (v100 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v100 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v100 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v100 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v100 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v100 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v100 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v100 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v100 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v100 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v100)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v100 != v101)
  {
    return 0;
  }

LABEL_6:
  v314 = v59;
  v315 = v33;
  swift_beginAccess();
  v102 = *(v99 + 32);
  v103 = *(v99 + 40);
  v104 = a2;
  swift_beginAccess();
  v105 = v102 == *(a2 + 32) && v103 == *(a2 + 40);
  if (!v105 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v106 = *(v361 + 48);
  sub_26BD31AF8();
  v107 = v362;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v54, 1, v107) == 1)
  {

    sub_26BD04E80(v98, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v54[v106], 1, v107) == 1)
    {
      sub_26BD04E80(v54, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_18;
    }

LABEL_16:
    v110 = &qword_2804490C8;
    v111 = &qword_26BDA7780;
LABEL_67:
    v135 = v54;
    goto LABEL_68;
  }

  sub_26BD31AF8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v54[v106], 1, v107);
  v109 = v315;
  if (EnumTagSinglePayload == 1)
  {

    sub_26BD04E80(v98, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v96, v107);
    goto LABEL_16;
  }

  v112 = v99;
  v113 = v104;
  (*(v360 + 32))(v315, &v54[v106], v107);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v114 = v112;
  v115 = v109;

  v313 = sub_26BDA0BB0();
  v116 = v114;
  v117 = *(v360 + 8);
  v117(v115, v107);
  sub_26BD04E80(v98, &qword_280448F88, &qword_26BDA5440);
  v117(v96, v107);
  v104 = v113;
  v99 = v116;
  sub_26BD04E80(v54, &qword_280448F88, &qword_26BDA5440);
  if ((v313 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_18:
  swift_beginAccess();
  v118 = v359;
  sub_26BD31AF8();
  swift_beginAccess();
  v119 = *(v356 + 48);
  v54 = v358;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v120 = v357;
  if (__swift_getEnumTagSinglePayload(v54, 1, v357) == 1)
  {
    sub_26BD04E80(v118, &qword_280449EF0, &qword_26BDA5448);
    v121 = __swift_getEnumTagSinglePayload(&v54[v119], 1, v120);
    v122 = v354;
    v123 = v355;
    if (v121 == 1)
    {
      sub_26BD04E80(v54, &qword_280449EF0, &qword_26BDA5448);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v126 = v353;
  sub_26BD31AF8();
  v127 = __swift_getEnumTagSinglePayload(&v54[v119], 1, v120);
  v122 = v354;
  v123 = v355;
  if (v127 == 1)
  {
    sub_26BD04E80(v359, &qword_280449EF0, &qword_26BDA5448);
    sub_26BD2E04C();
LABEL_26:
    v110 = &qword_28044A230;
    v111 = &qword_26BDA61C8;
    goto LABEL_67;
  }

  v128 = v349;
  sub_26BD2DF9C();
  if (*v126 != *v128 || (v129 = v126[1], v130 = v128[1], sub_26BD01014(), (v131 & 1) == 0) || (v126[2] == v128[2] ? (v132 = v126[3] == v128[3]) : (v132 = 0), !v132 && (sub_26BDA0FB0() & 1) == 0))
  {
    sub_26BD04E80(v359, &qword_280449EF0, &qword_26BDA5448);
    sub_26BD2E04C();
    sub_26BD2E04C();
    v135 = v54;
    v110 = &qword_280449EF0;
    v111 = &qword_26BDA5448;
LABEL_68:
    sub_26BD04E80(v135, v110, v111);
    goto LABEL_69;
  }

  v133 = *(v120 + 28);
  sub_26BDA0850();
  sub_26BD2E1F8(&qword_2804490C0, MEMORY[0x277D216C8]);
  v134 = sub_26BDA0BB0();
  sub_26BD04E80(v359, &qword_280449EF0, &qword_26BDA5448);
  sub_26BD2E04C();
  sub_26BD2E04C();
  sub_26BD04E80(v54, &qword_280449EF0, &qword_26BDA5448);
  if ((v134 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_21:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v124 = *(v350 + 48);
  v54 = v352;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v125 = v351;
  if (__swift_getEnumTagSinglePayload(v54, 1, v351) == 1)
  {
    sub_26BD04E80(v122, &qword_280449F00, &qword_26BDA5450);
    if (__swift_getEnumTagSinglePayload(&v54[v124], 1, v125) == 1)
    {
      sub_26BD04E80(v54, &qword_280449F00, &qword_26BDA5450);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v54[v124], 1, v125) == 1)
  {
    sub_26BD04E80(v122, &qword_280449F00, &qword_26BDA5450);
    sub_26BD2E04C();
LABEL_59:
    v110 = &qword_28044A228;
    v111 = &qword_26BDA61C0;
    goto LABEL_67;
  }

  sub_26BD2DF9C();
  static SupportOptionDetailsResponse.CLDDetails.== infix(_:_:)();
  v137 = v136;
  sub_26BD2E04C();
  sub_26BD04E80(v122, &qword_280449F00, &qword_26BDA5450);
  sub_26BD2E04C();
  sub_26BD04E80(v54, &qword_280449F00, &qword_26BDA5450);
  if ((v137 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_61:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v138 = *(v345 + 48);
  v54 = v347;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v139 = v346;
  if (__swift_getEnumTagSinglePayload(v54, 1, v346) == 1)
  {
    sub_26BD04E80(v123, &qword_280449F10, &qword_26BDA5458);
    if (__swift_getEnumTagSinglePayload(&v54[v138], 1, v139) == 1)
    {
      sub_26BD04E80(v54, &qword_280449F10, &qword_26BDA5458);
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v54[v138], 1, v139) == 1)
  {
    sub_26BD04E80(v123, &qword_280449F10, &qword_26BDA5458);
    sub_26BD2E04C();
LABEL_66:
    v110 = &qword_28044A220;
    v111 = &dword_26BDA61B8;
    goto LABEL_67;
  }

  sub_26BD2DF9C();
  static SupportOptionDetailsResponse.C2CDetails.== infix(_:_:)();
  v142 = v141;
  sub_26BD2E04C();
  sub_26BD04E80(v123, &qword_280449F10, &qword_26BDA5458);
  sub_26BD2E04C();
  sub_26BD04E80(v54, &qword_280449F10, &qword_26BDA5458);
  if ((v142 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_72:
  v143 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  swift_beginAccess();
  v144 = *(v99 + v143);
  v145 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__carriersInfo;
  swift_beginAccess();
  v146 = *&v104[v145];

  sub_26BD01478();
  v148 = v147;

  if ((v148 & 1) == 0)
  {
    goto LABEL_69;
  }

  v149 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  swift_beginAccess();
  v150 = *(v99 + v149);
  v151 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__relatedProducts;
  swift_beginAccess();
  v152 = *&v104[v151];

  sub_26BD04688();
  v154 = v153;

  if ((v154 & 1) == 0)
  {
    goto LABEL_69;
  }

  v155 = (v99 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct);
  swift_beginAccess();
  v156 = *v155;
  v157 = v155[1];
  v158 = &v104[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__grlProduct];
  swift_beginAccess();
  v159 = v156 == *v158 && v157 == v158[1];
  if (!v159 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v160 = (v99 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct);
  swift_beginAccess();
  v161 = *v160;
  v162 = v160[1];
  v163 = &v104[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeProduct];
  swift_beginAccess();
  v164 = v161 == *v163 && v162 == v163[1];
  if (!v164 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v165 = (v99 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom);
  swift_beginAccess();
  v166 = *v165;
  v167 = v165[1];
  v168 = &v104[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__conciergeSymptom];
  swift_beginAccess();
  v169 = v166 == *v168 && v167 == v168[1];
  if (!v169 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v170 = (v99 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct);
  swift_beginAccess();
  v171 = *v170;
  v172 = v170[1];
  v173 = &v104[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__randevuProduct];
  swift_beginAccess();
  v174 = v171 == *v173 && v172 == v173[1];
  if (!v174 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v175 = (v99 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID);
  swift_beginAccess();
  v176 = *v175;
  v177 = v175[1];
  v178 = &v104[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__detectedCarrierID];
  swift_beginAccess();
  v179 = v176 == *v178 && v177 == v178[1];
  if (!v179 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v180 = (v99 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription);
  swift_beginAccess();
  v181 = *v180;
  v182 = v180[1];
  v183 = &v104[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPurchaseRequirementsDescription];
  swift_beginAccess();
  v184 = v181 == *v183 && v182 == v183[1];
  if (!v184 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v185 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  swift_beginAccess();
  LODWORD(v185) = *(v99 + v185);
  v186 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  swift_beginAccess();
  if (v185 != v104[v186])
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  v187 = v99;
  sub_26BD31AF8();
  swift_beginAccess();
  v188 = *(v361 + 48);
  v189 = v340;
  sub_26BD31AF8();
  v359 = v104;
  sub_26BD31AF8();
  v190 = v362;
  if (__swift_getEnumTagSinglePayload(v189, 1, v362) == 1)
  {
    sub_26BD04E80(v341, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v189 + v188, 1, v190) == 1)
    {
      sub_26BD04E80(v189, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_112;
    }

LABEL_110:
    v191 = v189;
LABEL_118:
    sub_26BD04E80(v191, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_69;
  }

  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v189 + v188, 1, v190) == 1)
  {
    sub_26BD04E80(v341, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v338, v362);
    v189 = v340;
    goto LABEL_110;
  }

  v192 = v360;
  v193 = v340;
  v194 = v315;
  v195 = v362;
  (*(v360 + 32))(v315, &v340[v188], v362);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v196 = v338;
  v197 = sub_26BDA0BB0();
  v198 = *(v192 + 8);
  v198(v194, v195);
  sub_26BD04E80(v341, &qword_280448F88, &qword_26BDA5440);
  v198(v196, v195);
  sub_26BD04E80(v193, &qword_280448F88, &qword_26BDA5440);
  if ((v197 & 1) == 0)
  {
LABEL_69:

    return 0;
  }

LABEL_112:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v199 = *(v361 + 48);
  v200 = v339;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v200, 1, v362) == 1)
  {
    sub_26BD04E80(v337, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v339[v199], 1, v362) == 1)
    {
      sub_26BD04E80(v339, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_121;
    }

    goto LABEL_117;
  }

  v201 = v339;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v201[v199], 1, v362) == 1)
  {
    sub_26BD04E80(v337, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v336, v362);
LABEL_117:
    v191 = v339;
    goto LABEL_118;
  }

  v202 = v360;
  v203 = v339;
  v204 = v315;
  v205 = v362;
  (*(v360 + 32))(v315, &v339[v199], v362);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v206 = v336;
  v207 = sub_26BDA0BB0();
  v208 = *(v202 + 8);
  v208(v204, v205);
  sub_26BD04E80(v337, &qword_280448F88, &qword_26BDA5440);
  v208(v206, v205);
  sub_26BD04E80(v203, &qword_280448F88, &qword_26BDA5440);
  if ((v207 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_121:
  v209 = (v187 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString);
  swift_beginAccess();
  v210 = *v209;
  v211 = v209[1];
  v212 = &v359[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__redirectURLString];
  swift_beginAccess();
  v213 = v210 == *v212 && v211 == v212[1];
  if (!v213 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  v214 = (v187 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale);
  swift_beginAccess();
  v215 = *v214;
  v216 = v214[1];
  v217 = &v359[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__locale];
  swift_beginAccess();
  v218 = v215 == *v217 && v216 == v217[1];
  if (!v218 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v219 = *(v361 + 48);
  v220 = v335;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v220, 1, v362) == 1)
  {
    sub_26BD04E80(v334, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v335[v219], 1, v362) == 1)
    {
      sub_26BD04E80(v335, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_138;
    }

    goto LABEL_136;
  }

  v221 = v335;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v221[v219], 1, v362) == 1)
  {
    sub_26BD04E80(v334, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v333, v362);
LABEL_136:
    v191 = v335;
    goto LABEL_118;
  }

  v222 = v360;
  v223 = v335;
  v224 = v315;
  v225 = v362;
  (*(v360 + 32))(v315, &v335[v219], v362);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v226 = v333;
  v227 = sub_26BDA0BB0();
  v228 = *(v222 + 8);
  v228(v224, v225);
  sub_26BD04E80(v334, &qword_280448F88, &qword_26BDA5440);
  v228(v226, v225);
  sub_26BD04E80(v223, &qword_280448F88, &qword_26BDA5440);
  if ((v227 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_138:
  v229 = (v187 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer);
  swift_beginAccess();
  v230 = *v229;
  v231 = v229[1];
  v232 = &v359[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__localizedPricingDisclaimer];
  swift_beginAccess();
  v233 = v230 == *v232 && v231 == v232[1];
  if (!v233 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v234 = *(v361 + 48);
  v235 = v332;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v235, 1, v362) == 1)
  {
    sub_26BD04E80(v331, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v332[v234], 1, v362) == 1)
    {
      sub_26BD04E80(v332, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_150;
    }

    goto LABEL_148;
  }

  v236 = v332;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v236[v234], 1, v362) == 1)
  {
    sub_26BD04E80(v331, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v329, v362);
LABEL_148:
    v191 = v332;
    goto LABEL_118;
  }

  v237 = v360;
  v238 = v332;
  v239 = v315;
  v240 = v362;
  (*(v360 + 32))(v315, &v332[v234], v362);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v241 = v329;
  v242 = sub_26BDA0BB0();
  v243 = *(v237 + 8);
  v243(v239, v240);
  sub_26BD04E80(v331, &qword_280448F88, &qword_26BDA5440);
  v243(v241, v240);
  sub_26BD04E80(v238, &qword_280448F88, &qword_26BDA5440);
  if ((v242 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_150:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v244 = *(v361 + 48);
  v245 = v330;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v245, 1, v362) == 1)
  {
    sub_26BD04E80(v328, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v330[v244], 1, v362) == 1)
    {
      sub_26BD04E80(v330, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_157;
    }

    goto LABEL_155;
  }

  v246 = v330;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v246[v244], 1, v362) == 1)
  {
    sub_26BD04E80(v328, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v327, v362);
LABEL_155:
    v191 = v330;
    goto LABEL_118;
  }

  v247 = v360;
  v248 = v330;
  v249 = v315;
  v250 = v362;
  (*(v360 + 32))(v315, &v330[v244], v362);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v251 = v327;
  v252 = sub_26BDA0BB0();
  v253 = *(v247 + 8);
  v253(v249, v250);
  sub_26BD04E80(v328, &qword_280448F88, &qword_26BDA5440);
  v253(v251, v250);
  sub_26BD04E80(v248, &qword_280448F88, &qword_26BDA5440);
  if ((v252 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_157:
  v254 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
  swift_beginAccess();
  v255 = *(v187 + v254);
  v256 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__contactCarriersInfo;
  v257 = v359;
  swift_beginAccess();
  v258 = *&v257[v256];

  sub_26BD01478();
  LOBYTE(v257) = v259;

  if ((v257 & 1) == 0)
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v260 = *(v361 + 48);
  v261 = v326;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v261, 1, v362) == 1)
  {
    sub_26BD04E80(v325, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v326[v260], 1, v362) == 1)
    {
      sub_26BD04E80(v326, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_165;
    }

    goto LABEL_163;
  }

  v262 = v326;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v262[v260], 1, v362) == 1)
  {
    sub_26BD04E80(v325, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v324, v362);
LABEL_163:
    v191 = v326;
    goto LABEL_118;
  }

  v263 = v360;
  v264 = v326;
  v265 = v315;
  v266 = v362;
  (*(v360 + 32))(v315, &v326[v260], v362);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v267 = v324;
  v268 = sub_26BDA0BB0();
  v269 = *(v263 + 8);
  v269(v265, v266);
  sub_26BD04E80(v325, &qword_280448F88, &qword_26BDA5440);
  v269(v267, v266);
  sub_26BD04E80(v264, &qword_280448F88, &qword_26BDA5440);
  if ((v268 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_165:
  v270 = (v187 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  swift_beginAccess();
  v272 = *v270;
  v271 = v270[1];
  v273 = &v359[OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData];
  swift_beginAccess();
  v275 = *v273;
  v274 = v273[1];
  sub_26BCFEFC4(v272, v271);
  sub_26BCFEFC4(v275, v274);
  v276 = MEMORY[0x26D695520](v272, v271, v275, v274);
  sub_26BCFF01C(v275, v274);
  sub_26BCFF01C(v272, v271);
  if ((v276 & 1) == 0)
  {
    goto LABEL_69;
  }

  v277 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
  swift_beginAccess();
  v278 = *(v187 + v277);
  v279 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__takeInForServiceDetails;
  v280 = v359;
  swift_beginAccess();
  v281 = *&v280[v279];

  sub_26BD048B8();
  LOBYTE(v280) = v282;

  if ((v280 & 1) == 0)
  {
    goto LABEL_69;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v283 = *(v361 + 48);
  v284 = v318;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v284, 1, v362) == 1)
  {
    sub_26BD04E80(v316, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v318[v283], 1, v362) == 1)
    {
      sub_26BD04E80(v318, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_174;
    }

    goto LABEL_172;
  }

  v285 = v318;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v285[v283], 1, v362) == 1)
  {
    sub_26BD04E80(v316, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v317, v362);
LABEL_172:
    v191 = v318;
    goto LABEL_118;
  }

  v286 = v360;
  v287 = v318;
  v288 = v315;
  v289 = v362;
  (*(v360 + 32))(v315, &v318[v283], v362);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v290 = v317;
  v291 = sub_26BDA0BB0();
  v292 = *(v286 + 8);
  v292(v288, v289);
  sub_26BD04E80(v316, &qword_280448F88, &qword_26BDA5440);
  v292(v290, v289);
  sub_26BD04E80(v287, &qword_280448F88, &qword_26BDA5440);
  if ((v291 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_174:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v293 = *(v361 + 48);
  v294 = v321;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v294, 1, v362) == 1)
  {
    sub_26BD04E80(v319, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v321[v293], 1, v362) == 1)
    {
      sub_26BD04E80(v321, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_181;
    }

    goto LABEL_179;
  }

  v295 = v321;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v295[v293], 1, v362) == 1)
  {
    sub_26BD04E80(v319, &qword_280448F88, &qword_26BDA5440);
    (*(v360 + 8))(v320, v362);
LABEL_179:
    v191 = v321;
    goto LABEL_118;
  }

  v296 = v360;
  v297 = v321;
  v298 = v315;
  v299 = v362;
  (*(v360 + 32))(v315, &v321[v293], v362);
  sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
  v300 = v320;
  v301 = sub_26BDA0BB0();
  v302 = *(v296 + 8);
  v302(v298, v299);
  sub_26BD04E80(v319, &qword_280448F88, &qword_26BDA5440);
  v302(v300, v299);
  sub_26BD04E80(v297, &qword_280448F88, &qword_26BDA5440);
  if ((v301 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_181:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v303 = *(v361 + 48);
  v304 = v323;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v305 = v304;
  if (__swift_getEnumTagSinglePayload(v304, 1, v362) != 1)
  {
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v304 + v303, 1, v362) == 1)
    {

      sub_26BD04E80(v322, &qword_280448F88, &qword_26BDA5440);
      (*(v360 + 8))(v314, v362);
      goto LABEL_186;
    }

    v306 = v360;
    v307 = v315;
    v308 = v362;
    (*(v360 + 32))(v315, v305 + v303, v362);
    sub_26BD2E1F8(&qword_2804490D0, MEMORY[0x277D215C8]);
    v309 = v314;
    v310 = sub_26BDA0BB0();

    v311 = *(v306 + 8);
    v311(v307, v308);
    sub_26BD04E80(v322, &qword_280448F88, &qword_26BDA5440);
    v311(v309, v308);
    sub_26BD04E80(v305, &qword_280448F88, &qword_26BDA5440);
    return (v310 & 1) != 0;
  }

  sub_26BD04E80(v322, &qword_280448F88, &qword_26BDA5440);
  if (__swift_getEnumTagSinglePayload(v304 + v303, 1, v362) != 1)
  {
LABEL_186:
    sub_26BD04E80(v304, &qword_2804490C8, &qword_26BDA7780);
    return 0;
  }

  sub_26BD04E80(v304, &qword_280448F88, &qword_26BDA5440);
  return 1;
}

uint64_t sub_26BD2AF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A208, type metadata accessor for SupportOptionDetailsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2AFEC(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A070, type metadata accessor for SupportOptionDetailsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2B05C()
{
  sub_26BD2E1F8(&qword_28044A070, type metadata accessor for SupportOptionDetailsResponse);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2B0F4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E70);
  __swift_project_value_buffer(v0, qword_280449E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "time_slot_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  *(v6 + 24) = "reservationSlot";
  *(v6 + 32) = 15;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x277D21878];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_time_seconds";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  *(v10 + 24) = "startTime";
  *(v10 + 32) = 9;
  *(v10 + 40) = 2;
  v9();
  v11 = v1[14];
  v12 = (v5 + 2 * v2);
  *v12 = 3;
  v13 = v12 + v11;
  *v13 = "end_time_seconds";
  *(v13 + 1) = 16;
  v13[16] = 2;
  *(v13 + 3) = "endTime";
  *(v13 + 4) = 7;
  v13[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOptionDetailsResponse.TimeSlot.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0960();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.TimeSlot.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), !v1))
    {
      if (!*(v2 + 24) || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), !v1))
      {
        v7 = v2 + *(type metadata accessor for SupportOptionDetailsResponse.TimeSlot(0) + 28);
        OUTLINED_FUNCTION_129();
        return sub_26BDA0830();
      }
    }
  }

  return result;
}

uint64_t static SupportOptionDetailsResponse.TimeSlot.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  v6 = *(type metadata accessor for SupportOptionDetailsResponse.TimeSlot(0) + 28);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v7, v8);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD2B5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A200, type metadata accessor for SupportOptionDetailsResponse.TimeSlot);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2B654(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A008, type metadata accessor for SupportOptionDetailsResponse.TimeSlot);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2B6C4()
{
  sub_26BD2E1F8(&qword_28044A008, type metadata accessor for SupportOptionDetailsResponse.TimeSlot);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2B750()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449E88);
  __swift_project_value_buffer(v0, qword_280449E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query_time_seconds";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  *(v6 + 24) = "queryTime";
  *(v6 + 32) = 9;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x277D21878];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_slots";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "localized_section_footer";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOptionDetailsResponse.SCBDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
LABEL_10:
        v0 = 0;
        break;
      case 2:
        type metadata accessor for SupportOptionDetailsResponse.TimeSlot(0);
        OUTLINED_FUNCTION_81_0();
        sub_26BD2E1F8(&qword_28044A008, v3);
        OUTLINED_FUNCTION_87();
        sub_26BDA09A0();
        goto LABEL_10;
      case 1:
        OUTLINED_FUNCTION_116();
        sub_26BDA0960();
        goto LABEL_10;
    }
  }
}

uint64_t SupportOptionDetailsResponse.SCBDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (!*v1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), (v0 = v2) == 0))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for SupportOptionDetailsResponse.TimeSlot(0), OUTLINED_FUNCTION_81_0(), sub_26BD2E1F8(v5, v6), v2 = v0, result = sub_26BDA0AC0(), !v0))
    {
      v7 = v3[2];
      v8 = v3[3];
      OUTLINED_FUNCTION_29();
      if (!v9 || (result = OUTLINED_FUNCTION_103(), !v2))
      {
        v10 = v3 + *(type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0) + 28);
        OUTLINED_FUNCTION_129();
        return sub_26BDA0830();
      }
    }
  }

  return result;
}

uint64_t static SupportOptionDetailsResponse.SCBDetails.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_184();
  v5 = *(v4 + 8);
  v7 = *(v6 + 8);
  sub_26BD01014();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0) + 28);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v11, v12);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD2BCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A1F8, type metadata accessor for SupportOptionDetailsResponse.SCBDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2BD4C(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A098, type metadata accessor for SupportOptionDetailsResponse.SCBDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2BDBC()
{
  sub_26BD2E1F8(&qword_28044A098, type metadata accessor for SupportOptionDetailsResponse.SCBDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2BE48()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449EA0);
  __swift_project_value_buffer(v0, qword_280449EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A00;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "contactDetails";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26BDA0AE0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26BDA0AF0();
}

uint64_t SupportOptionDetailsResponse.CLDDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0) + 20);
      type metadata accessor for CallContactDetails(0);
      OUTLINED_FUNCTION_14_1();
      sub_26BD2E1F8(&qword_280449A78, v4);
      OUTLINED_FUNCTION_87();
      sub_26BDA09B0();
      v0 = 0;
    }
  }

  return result;
}

void SupportOptionDetailsResponse.CLDDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CallContactDetails(0);
  v9 = OUTLINED_FUNCTION_34(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v12 = *(type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0) + 20);
  v16 = v0;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_26BD04E80(v7, &qword_280449FE0, &unk_26BDA5460);
LABEL_4:
    sub_26BDA0830();
    goto LABEL_5;
  }

  sub_26BD2DF9C();
  OUTLINED_FUNCTION_14_1();
  sub_26BD2E1F8(v13, v14);
  sub_26BDA0AD0();
  sub_26BD2E04C();
  if (!v1)
  {
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_247();
}

void static SupportOptionDetailsResponse.CLDDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_90();
  v4 = type metadata accessor for CallContactDetails(v3);
  v5 = OUTLINED_FUNCTION_34(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_131_0();
  v8 = OUTLINED_FUNCTION_117_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_110(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_183();
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A018, &unk_26BDA54E0) - 8);
  v15 = *(*v14 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17();
  v18 = *(type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v17) + 20);
  v19 = v14[14];
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_28(v0);
  if (v20)
  {
    OUTLINED_FUNCTION_28(v0 + v19);
    if (v20)
    {
      sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
LABEL_23:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_4();
      sub_26BD2E1F8(v30, v31);
      OUTLINED_FUNCTION_138_0();
      v23 = sub_26BDA0BB0();
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v0 + v19);
  if (v20)
  {
    OUTLINED_FUNCTION_84_0();
    sub_26BD2E04C();
LABEL_9:
    v21 = &qword_28044A018;
    v22 = &unk_26BDA54E0;
LABEL_10:
    sub_26BD04E80(v0, v21, v22);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_2();
  sub_26BD2DF9C();
  v24 = *v2 == *v1 && v2[1] == v1[1];
  if (!v24 && (sub_26BDA0FB0() & 1) == 0 || (v2[2] == v1[2] ? (v25 = v2[3] == v1[3]) : (v25 = 0), !v25 && (sub_26BDA0FB0() & 1) == 0))
  {
    OUTLINED_FUNCTION_85_0();
    sub_26BD2E04C();
    sub_26BD2E04C();
    v21 = &qword_280449FE0;
    v22 = &unk_26BDA5460;
    goto LABEL_10;
  }

  v26 = *(v4 + 24);
  v27 = sub_26BDA0850();
  OUTLINED_FUNCTION_0_4();
  sub_26BD2E1F8(v28, v29);
  sub_26BDA0BB0();
  OUTLINED_FUNCTION_88_0();
  sub_26BD2E04C();
  OUTLINED_FUNCTION_131();
  sub_26BD2E04C();
  sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
  if (v27)
  {
    goto LABEL_23;
  }

LABEL_11:
  v23 = 0;
LABEL_24:
  OUTLINED_FUNCTION_258(v23);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD2C5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A1F0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2C654(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A0B0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2C6C4()
{
  sub_26BD2E1F8(&qword_28044A0B0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2C750()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449EB8);
  __swift_project_value_buffer(v0, qword_280449EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contactDetails";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "localized_section_footer";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_26BDA0AF0();
}

uint64_t SupportOptionDetailsResponse.C2CDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_116();
      sub_26BDA0990();
LABEL_8:
      v0 = 0;
    }

    else if (result == 1)
    {
      v3 = *(type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0) + 24);
      type metadata accessor for CallContactDetails(0);
      OUTLINED_FUNCTION_14_1();
      sub_26BD2E1F8(&qword_280449A78, v4);
      OUTLINED_FUNCTION_87();
      sub_26BDA09B0();
      goto LABEL_8;
    }
  }
}

void SupportOptionDetailsResponse.C2CDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v3 = v0;
  v4 = OUTLINED_FUNCTION_173();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_128_0();
  v11 = type metadata accessor for CallContactDetails(v10);
  v12 = OUTLINED_FUNCTION_34(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_44();
  v15 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  v16 = *(v15 + 24);
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v11) == 1)
  {
    sub_26BD04E80(v2, &qword_280449FE0, &unk_26BDA5460);
  }

  else
  {
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_14_1();
    sub_26BD2E1F8(v17, v18);
    sub_26BDA0AD0();
    sub_26BD2E04C();
    if (v1)
    {
      goto LABEL_7;
    }
  }

  v19 = *v3;
  v20 = v3[1];
  OUTLINED_FUNCTION_29();
  if (!v21 || (sub_26BDA0AB0(), !v1))
  {
    v22 = v3 + *(v15 + 20);
    OUTLINED_FUNCTION_167();
    sub_26BDA0830();
  }

LABEL_7:
  OUTLINED_FUNCTION_247();
}

void static SupportOptionDetailsResponse.C2CDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_156_0();
  v6 = type metadata accessor for CallContactDetails(v5);
  v7 = OUTLINED_FUNCTION_34(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
  OUTLINED_FUNCTION_110(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_129_0();
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A018, &unk_26BDA54E0) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_17();
  v40 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v20);
  v21 = *(v40 + 24);
  v22 = v17[14];
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_28(v0);
  if (!v23)
  {
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v0 + v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_2();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_127_0();
      if (v27)
      {
        v30 = v28 == v29;
      }

      else
      {
        v30 = 0;
      }

      if (v30 || (sub_26BDA0FB0() & 1) != 0)
      {
        v31 = *(v2 + 16) == *(v12 + 16) && *(v2 + 24) == *(v12 + 24);
        if (v31 || (sub_26BDA0FB0() & 1) != 0)
        {
          v32 = *(v6 + 24);
          v33 = sub_26BDA0850();
          OUTLINED_FUNCTION_0_4();
          sub_26BD2E1F8(v34, v35);
          sub_26BDA0BB0();
          OUTLINED_FUNCTION_88_0();
          sub_26BD2E04C();
          OUTLINED_FUNCTION_117_0();
          sub_26BD2E04C();
          sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
          if ((v33 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_85_0();
      sub_26BD2E04C();
      sub_26BD2E04C();
      v24 = &qword_280449FE0;
      v25 = &unk_26BDA5460;
LABEL_10:
      sub_26BD04E80(v0, v24, v25);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_84_0();
    sub_26BD2E04C();
LABEL_9:
    v24 = &qword_28044A018;
    v25 = &unk_26BDA54E0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28(v0 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_26BD04E80(v0, &qword_280449FE0, &unk_26BDA5460);
LABEL_23:
  v36 = *v1 == *v4 && v1[1] == v4[1];
  if (v36 || (sub_26BDA0FB0() & 1) != 0)
  {
    v37 = *(v40 + 20);
    sub_26BDA0850();
    OUTLINED_FUNCTION_0_4();
    sub_26BD2E1F8(v38, v39);
    v26 = OUTLINED_FUNCTION_170_0();
    goto LABEL_29;
  }

LABEL_11:
  v26 = 0;
LABEL_29:
  OUTLINED_FUNCTION_258(v26);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD2CFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A1E8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2D03C(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A0C8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2D0AC()
{
  sub_26BD2E1F8(&qword_28044A0C8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2D144()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449ED0);
  __swift_project_value_buffer(v0, qword_280449ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "country_itcc_list";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localized_section_header";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localized_section_body";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "localized_section_footer";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "localized_reminders_title";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "localized_placeholder";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "phone_number_is_required";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "relevant_store_types";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD2D4B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDA0B10();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_126_0();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0) + 48);
        sub_26BDA0810();
        OUTLINED_FUNCTION_31_1();
        sub_26BD2E1F8(&qword_280449130, v4);
        OUTLINED_FUNCTION_87();
        sub_26BDA09B0();
        goto LABEL_8;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
        goto LABEL_8;
      case 7:
        OUTLINED_FUNCTION_116();
        sub_26BDA0920();
        goto LABEL_8;
      case 8:
        OUTLINED_FUNCTION_116();
        sub_26BDA0970();
LABEL_8:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void SupportOptionDetailsResponse.TakeInForServiceDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v41 = v3;
  v42 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_26BDA0810();
  v12 = OUTLINED_FUNCTION_18(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_44();
  v17 = OUTLINED_FUNCTION_128_0();
  v18 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v17);
  v19 = *(v18 + 48);
  v40 = v4;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v39 = v18;
    sub_26BD04E80(v10, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    (*(v14 + 32))(v2, v10, v11);
    OUTLINED_FUNCTION_31_1();
    sub_26BD2E1F8(v20, v21);
    v1 = v42;
    sub_26BDA0AD0();
    if (v1)
    {
      (*(v14 + 8))(v2, v11);
      goto LABEL_21;
    }

    v39 = v18;
    (*(v14 + 8))(v2, v11);
  }

  v22 = v40;
  v23 = *v40;
  v24 = v40[1];
  OUTLINED_FUNCTION_29();
  if (!v25 || (OUTLINED_FUNCTION_70_0(), !v1))
  {
    v26 = v22[2];
    v27 = v22[3];
    OUTLINED_FUNCTION_29();
    if (!v28 || (OUTLINED_FUNCTION_70_0(), !v1))
    {
      v29 = v22[4];
      v30 = v22[5];
      OUTLINED_FUNCTION_29();
      if (!v31 || (OUTLINED_FUNCTION_70_0(), !v1))
      {
        v32 = v22[6];
        v33 = v22[7];
        OUTLINED_FUNCTION_29();
        if (!v34 || (OUTLINED_FUNCTION_70_0(), !v1))
        {
          v35 = v22[8];
          v36 = v22[9];
          OUTLINED_FUNCTION_29();
          if (!v37 || (OUTLINED_FUNCTION_70_0(), !v1))
          {
            if (*(v22 + 80) != 1 || (OUTLINED_FUNCTION_164_0(), sub_26BDA0A40(), !v1))
            {
              if (!*(v22[11] + 16) || (OUTLINED_FUNCTION_164_0(), sub_26BDA0A90(), !v1))
              {
                v38 = v22 + *(v39 + 44);
                sub_26BDA0830();
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_247();
}

void static SupportOptionDetailsResponse.TakeInForServiceDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v6 = v5;
  v7 = sub_26BDA0810();
  v8 = OUTLINED_FUNCTION_18(v7);
  v36 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_131_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_129_0();
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_183();
  v35 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
  v19 = *(v35 + 48);
  v20 = v16[14];
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_28(v1);
  if (!v21)
  {
    OUTLINED_FUNCTION_131();
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v1 + v20);
    if (!v21)
    {
      (*(v36 + 32))(v0, v1 + v20, v7);
      OUTLINED_FUNCTION_31_1();
      sub_26BD2E1F8(v23, v24);
      v25 = OUTLINED_FUNCTION_171_0();
      v26 = *(v36 + 8);
      v26(v0, v7);
      v26(v2, v7);
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v36 + 8))(v2, v7);
LABEL_9:
    sub_26BD04E80(v1, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28(v1 + v20);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
LABEL_13:
  v27 = *v6 == *v4 && *(v6 + 8) == *(v4 + 8);
  if (v27 || (sub_26BDA0FB0() & 1) != 0)
  {
    v28 = *(v6 + 16) == *(v4 + 16) && *(v6 + 24) == *(v4 + 24);
    if (v28 || (sub_26BDA0FB0() & 1) != 0)
    {
      v29 = *(v6 + 32) == *(v4 + 32) && *(v6 + 40) == *(v4 + 40);
      if (v29 || (sub_26BDA0FB0() & 1) != 0)
      {
        v30 = *(v6 + 48) == *(v4 + 48) && *(v6 + 56) == *(v4 + 56);
        if (v30 || (sub_26BDA0FB0() & 1) != 0)
        {
          v31 = *(v6 + 64) == *(v4 + 64) && *(v6 + 72) == *(v4 + 72);
          if (v31 || (sub_26BDA0FB0()) && *(v6 + 80) == *(v4 + 80) && (sub_26BCFF1F4(*(v6 + 88), *(v4 + 88)))
          {
            v32 = *(v35 + 44);
            sub_26BDA0850();
            OUTLINED_FUNCTION_0_4();
            sub_26BD2E1F8(v33, v34);
            v22 = OUTLINED_FUNCTION_170_0();
            goto LABEL_11;
          }
        }
      }
    }
  }

LABEL_10:
  v22 = 0;
LABEL_11:
  OUTLINED_FUNCTION_258(v22);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD2DD54()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  sub_26BDA1050();
  v1(0);
  v2 = OUTLINED_FUNCTION_130();
  sub_26BD2E1F8(v2, v3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD2DE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD2E1F8(&qword_28044A1E0, type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD2DEAC(uint64_t a1)
{
  v2 = sub_26BD2E1F8(&qword_28044A0E0, type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD2DF1C()
{
  sub_26BD2E1F8(&qword_28044A0E0, type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD2DF9C()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BD2DFF4()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BD2E04C()
{
  v1 = OUTLINED_FUNCTION_134();
  v3 = v2(v1);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26BD2E160()
{
  OUTLINED_FUNCTION_184();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_147();
  v7(v6);
  return v0;
}

uint64_t sub_26BD2E1F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26BD2E240()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_156_0();
  v121 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(v5);
  v6 = OUTLINED_FUNCTION_34(v121);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_228();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449DE8, &unk_26BDA5420);
  OUTLINED_FUNCTION_34(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_17();
  v120 = type metadata accessor for HMTSolutionResponse.Step(v20);
  v21 = OUTLINED_FUNCTION_18(v120);
  v122 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_57();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v111 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_98_0(v32, v33, v34, v35, v36, v37, v38, v39, v111[0]);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D0, &qword_26BDA61A8);
  v41 = OUTLINED_FUNCTION_110(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_57();
  v119 = (v44 - v45);
  MEMORY[0x28223BE20](v46);
  v118 = v111 - v47;
  if (v2 == v4 || *(v2 + 16) != *(v4 + 16))
  {
LABEL_57:
    OUTLINED_FUNCTION_188();
  }

  else
  {
    v115 = v16;
    v116 = v4;
    v111[0] = v11;
    v111[1] = v0;
    v48 = 0;
    v49 = *(v2 + 64);
    v113 = v2 + 64;
    v114 = v2;
    v50 = *(v2 + 32);
    OUTLINED_FUNCTION_32_2();
    v112 = v52 >> 6;
    while (v51)
    {
      OUTLINED_FUNCTION_48_0();
      v117 = v53;
      v55 = v54 | (v48 << 6);
LABEL_10:
      v60 = (*(v2 + 48) + 16 * v55);
      v61 = *v60;
      v62 = v60[1];
      v63 = *(v2 + 56) + *(v122 + 72) * v55;
      OUTLINED_FUNCTION_93_0();
      sub_26BD2DFF4();
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
      v65 = *(v64 + 48);
      v66 = v119;
      *v119 = v61;
      v66[1] = v62;
      OUTLINED_FUNCTION_92_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_151();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v64);

LABEL_11:
      v70 = v118;
      sub_26BD31AA0();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
      OUTLINED_FUNCTION_28(v70);
      if (v84)
      {
        goto LABEL_57;
      }

      v72 = *(v71 + 48);
      v73 = *v70;
      v74 = v70[1];
      OUTLINED_FUNCTION_92_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_13_1();
      v75 = OUTLINED_FUNCTION_163_0();
      v76 = v116;
      v80 = sub_26BD31960(v75, v77, v78, v79);
      v82 = v81;

      if ((v82 & 1) == 0)
      {
        goto LABEL_56;
      }

      v83 = *(v76 + 56) + *(v122 + 72) * v80;
      OUTLINED_FUNCTION_93_0();
      sub_26BD2DFF4();
      v84 = *v27 == *v31 && *(v27 + 8) == *(v31 + 1);
      if (!v84 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_55;
      }

      v85 = *(v27 + 16);
      v86 = *(v31 + 2);
      v87 = *(v85 + 16);
      if (v87 != *(v86 + 16))
      {
        goto LABEL_55;
      }

      if (v87 && v85 != v86)
      {
        v88 = (v85 + 40);
        v89 = (v86 + 40);
        while (1)
        {
          v90 = *(v88 - 1) == *(v89 - 1) && *v88 == *v89;
          if (!v90 && (sub_26BDA0FB0() & 1) == 0)
          {
            break;
          }

          v88 += 2;
          v89 += 2;
          if (!--v87)
          {
            goto LABEL_28;
          }
        }

LABEL_55:
        sub_26BD2E04C();
LABEL_56:
        sub_26BD2E04C();
        goto LABEL_57;
      }

LABEL_28:
      v91 = *(v27 + 24);
      v92 = *(v31 + 3);
      v93 = *(v91 + 16);
      if (v93 != *(v92 + 16))
      {
        goto LABEL_55;
      }

      if (v93)
      {
        v94 = v91 == v92;
      }

      else
      {
        v94 = 1;
      }

      if (!v94)
      {
        v95 = (v91 + 40);
        v96 = (v92 + 40);
        while (v93)
        {
          v97 = *(v95 - 1) == *(v96 - 1) && *v95 == *v96;
          if (!v97 && (sub_26BDA0FB0() & 1) == 0)
          {
            goto LABEL_55;
          }

          v95 += 2;
          v96 += 2;
          if (!--v93)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_41:
      if (*(v27 + 32) != v31[32])
      {
        goto LABEL_55;
      }

      v98 = *(v120 + 36);
      v99 = *(v115 + 48);
      sub_26BD31AF8();
      sub_26BD31AF8();
      v100 = OUTLINED_FUNCTION_114();
      OUTLINED_FUNCTION_112(v100, v101, v121);
      if (v84)
      {
        OUTLINED_FUNCTION_112(v1 + v99, 1, v121);
        if (!v84)
        {
          goto LABEL_54;
        }

        sub_26BD04E80(v1, &qword_280449CA0, &qword_26BDA4B78);
      }

      else
      {
        sub_26BD31AF8();
        OUTLINED_FUNCTION_112(v1 + v99, 1, v121);
        if (v102)
        {
          sub_26BD2E04C();
LABEL_54:
          sub_26BD04E80(v1, &qword_280449DE8, &unk_26BDA5420);
          goto LABEL_55;
        }

        sub_26BD2DF9C();
        v103 = OUTLINED_FUNCTION_167();
        v104 = sub_26BD1A4D0(v103);
        sub_26BD2E04C();
        sub_26BD2E04C();
        sub_26BD04E80(v1, &qword_280449CA0, &qword_26BDA4B78);
        if ((v104 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      v105 = *(v120 + 32);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_4();
      sub_26BD2E1F8(&qword_2804490C0, v106);
      LOBYTE(v105) = sub_26BDA0BB0();
      sub_26BD2E04C();
      sub_26BD2E04C();
      v2 = v114;
      v51 = v117;
      if ((v105 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    while (1)
    {
      v56 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v56 >= v112)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
        OUTLINED_FUNCTION_157();
        OUTLINED_FUNCTION_123();
        __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
        v117 = 0;
        goto LABEL_11;
      }

      ++v48;
      if (*(v113 + 8 * v56))
      {
        OUTLINED_FUNCTION_111_0();
        v117 = v57;
        v55 = v59 | (v58 << 6);
        v48 = v58;
        goto LABEL_10;
      }
    }

LABEL_59:
    __break(1u);
  }
}

void sub_26BD2E954()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_156_0();
  v88 = type metadata accessor for HMTArticle(v4);
  v5 = OUTLINED_FUNCTION_18(v88);
  v91 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_57();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_166_0();
  v14 = MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_98_0(v14, v15, v16, v17, v18, v19, v20, v21, v84);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C0, &qword_26BDA6198);
  v23 = OUTLINED_FUNCTION_110(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_57();
  v27 = MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_149_0(v27, v28, v29, v30, v31, v32, v33, v34, v85);
  if (v0 == v3 || *(v0 + 16) != *(v3 + 16))
  {
LABEL_55:
    OUTLINED_FUNCTION_188();
  }

  else
  {
    v35 = 0;
    v37 = v0 + 64;
    v36 = *(v0 + 64);
    v38 = *(v0 + 32);
    OUTLINED_FUNCTION_32_2();
    v86 = v40 >> 6;
    v87 = v0;
    while (v39)
    {
      OUTLINED_FUNCTION_48_0();
      v90 = v41;
      v43 = v42 | (v35 << 6);
LABEL_10:
      v48 = *(v0 + 56);
      v49 = (*(v0 + 48) + 16 * v43);
      v51 = *v49;
      v50 = v49[1];
      v52 = *(v91 + 72);
      OUTLINED_FUNCTION_87_0();
      sub_26BD2DFF4();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
      OUTLINED_FUNCTION_133_0(v53);
      OUTLINED_FUNCTION_86_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_151();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, &qword_28044A1C8);

LABEL_11:
      sub_26BD31AA0();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
      OUTLINED_FUNCTION_28(v89);
      if (v71)
      {
        goto LABEL_55;
      }

      v58 = *(v57 + 48);
      v59 = *v89;
      v60 = v89[1];
      OUTLINED_FUNCTION_86_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_13_1();
      v61 = OUTLINED_FUNCTION_163_0();
      sub_26BD31960(v61, v62, v63, v64);
      v66 = v65;

      if ((v66 & 1) == 0)
      {
        goto LABEL_54;
      }

      v67 = *(v3 + 56);
      v68 = *(v91 + 72);
      OUTLINED_FUNCTION_87_0();
      sub_26BD2DFF4();
      OUTLINED_FUNCTION_127_0();
      v71 = v71 && v69 == v70;
      if (!v71 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_53;
      }

      v72 = *(v11 + 16) == *(v1 + 16) && *(v11 + 24) == *(v1 + 24);
      if (!v72 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_53;
      }

      if (*(v11 + 32) != *(v1 + 32))
      {
        goto LABEL_53;
      }

      v73 = *(v11 + 40) == *(v1 + 40) && *(v11 + 48) == *(v1 + 48);
      if (!v73 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_53;
      }

      v74 = *(v11 + 56) == *(v1 + 56) && *(v11 + 64) == *(v1 + 64);
      if (!v74 && (sub_26BDA0FB0() & 1) == 0)
      {
        goto LABEL_53;
      }

      v75 = *(v11 + 72);
      v76 = *(v1 + 72);
      if (*(v1 + 80) == 1)
      {
        if (v76)
        {
          if (v76 == 1)
          {
            if (v75 != 1)
            {
              goto LABEL_53;
            }
          }

          else if (v75 != 2)
          {
            goto LABEL_53;
          }
        }

        else if (v75)
        {
          goto LABEL_53;
        }
      }

      else if (v75 != v76)
      {
        goto LABEL_53;
      }

      v80 = *(v11 + 88) == *(v1 + 88) && *(v11 + 96) == *(v1 + 96);
      if (!v80 && (sub_26BDA0FB0() & 1) == 0)
      {
LABEL_53:
        sub_26BD2E04C();
LABEL_54:
        sub_26BD2E04C();
        goto LABEL_55;
      }

      v81 = *(v88 + 44);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_4();
      sub_26BD2E1F8(&qword_2804490C0, v82);
      v83 = OUTLINED_FUNCTION_169_0();
      sub_26BD2E04C();
      OUTLINED_FUNCTION_204();
      sub_26BD2E04C();
      v0 = v87;
      v39 = v90;
      if ((v83 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    while (1)
    {
      v44 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v44 >= v86)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
        v77 = OUTLINED_FUNCTION_42_1();
        __swift_storeEnumTagSinglePayload(v77, v78, 1, v79);
        v90 = 0;
        goto LABEL_11;
      }

      ++v35;
      if (*(v37 + 8 * v44))
      {
        OUTLINED_FUNCTION_111_0();
        v90 = v45;
        v43 = v47 | (v46 << 6);
        v35 = v46;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_26BD2EE10()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_90();
  v87 = type metadata accessor for HMTBCSSolution(v3);
  v4 = OUTLINED_FUNCTION_18(v87);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_57();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_166_0();
  v14 = MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_98_0(v14, v15, v16, v17, v18, v19, v20, v21, v83);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B0, &qword_26BDA6188);
  v23 = OUTLINED_FUNCTION_110(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_57();
  v27 = MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_149_0(v27, v28, v29, v30, v31, v32, v33, v34, v84);
  v90 = v0;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_45:
    OUTLINED_FUNCTION_188();
  }

  else
  {
    v35 = 0;
    v86 = v1;
    v37 = *(v1 + 64);
    v36 = v1 + 64;
    v38 = *(v36 - 32);
    OUTLINED_FUNCTION_32_2();
    v85 = v40 >> 6;
    while (v39)
    {
      OUTLINED_FUNCTION_48_0();
      v89 = v41;
      v43 = v42 | (v35 << 6);
LABEL_10:
      v48 = *(v86 + 56);
      v49 = (*(v86 + 48) + 16 * v43);
      v51 = *v49;
      v50 = v49[1];
      v52 = *(v6 + 72);
      OUTLINED_FUNCTION_83_0();
      sub_26BD2DFF4();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
      OUTLINED_FUNCTION_133_0(v53);
      OUTLINED_FUNCTION_82_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_151();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, &qword_28044A1B8);

LABEL_11:
      sub_26BD31AA0();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
      OUTLINED_FUNCTION_28(v88);
      if (v72)
      {
        goto LABEL_45;
      }

      v58 = v6;
      v59 = *(v57 + 48);
      v60 = *v88;
      v61 = v88[1];
      OUTLINED_FUNCTION_82_0();
      sub_26BD2DF9C();
      OUTLINED_FUNCTION_13_1();
      v62 = OUTLINED_FUNCTION_163_0();
      sub_26BD31960(v62, v63, v64, v65);
      v67 = v66;

      if ((v67 & 1) == 0)
      {
        goto LABEL_44;
      }

      v68 = *(v90 + 56);
      v6 = v58;
      v69 = *(v58 + 72);
      OUTLINED_FUNCTION_83_0();
      sub_26BD2DFF4();
      OUTLINED_FUNCTION_127_0();
      v72 = v72 && v70 == v71;
      if (!v72 && (sub_26BDA0FB0() & 1) == 0 || *(v11 + 16) != *(v2 + 16) || (*(v11 + 24) == *(v2 + 24) ? (v73 = *(v11 + 32) == *(v2 + 32)) : (v73 = 0), !v73 && (sub_26BDA0FB0() & 1) == 0 || (*(v11 + 40) == *(v2 + 40) ? (v74 = *(v11 + 48) == *(v2 + 48)) : (v74 = 0), !v74 && (sub_26BDA0FB0() & 1) == 0 || (*(v11 + 56) == *(v2 + 56) ? (v75 = *(v11 + 64) == *(v2 + 64)) : (v75 = 0), !v75 && (sub_26BDA0FB0() & 1) == 0 || (*(v11 + 72) == *(v2 + 72) ? (v76 = *(v11 + 80) == *(v2 + 80)) : (v76 = 0), !v76 && (sub_26BDA0FB0() & 1) == 0)))))
      {
        sub_26BD2E04C();
LABEL_44:
        sub_26BD2E04C();
        goto LABEL_45;
      }

      v77 = *(v87 + 40);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_4();
      sub_26BD2E1F8(&qword_2804490C0, v78);
      v79 = OUTLINED_FUNCTION_169_0();
      sub_26BD2E04C();
      OUTLINED_FUNCTION_204();
      sub_26BD2E04C();
      v39 = v89;
      if ((v79 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    while (1)
    {
      v44 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v44 >= v85)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
        v80 = OUTLINED_FUNCTION_42_1();
        __swift_storeEnumTagSinglePayload(v80, v81, 1, v82);
        v89 = 0;
        goto LABEL_11;
      }

      ++v35;
      if (*(v36 + 8 * v44))
      {
        OUTLINED_FUNCTION_111_0();
        v89 = v45;
        v43 = v47 | (v46 << 6);
        v35 = v46;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_26BD2F284(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    v6 = 1 << *(a1 + 32);
    OUTLINED_FUNCTION_32_2();
    v10 = v9 >> 6;
    while (v8)
    {
      OUTLINED_FUNCTION_48_0();
      v33 = v12;
LABEL_11:
      v15 = v11 | (v3 << 6);
      v16 = v7;
      v17 = (*(v7 + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v7 + 56) + 16 * v15);
      v22 = *v20;
      v21 = v20[1];

      OUTLINED_FUNCTION_13_1();
      v23 = OUTLINED_FUNCTION_256();
      v27 = sub_26BD31960(v23, v24, v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {

        return;
      }

      v30 = (*(a2 + 56) + 16 * v27);
      if (*v30 == v22 && v30[1] == v21)
      {

        v7 = v16;
        v8 = v33;
      }

      else
      {
        v32 = sub_26BDA0FB0();

        v7 = v16;
        v8 = v33;
        if ((v32 & 1) == 0)
        {
          return;
        }
      }
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      v14 = *(v5 + 8 * v3);
      ++v13;
      if (v14)
      {
        v11 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_26BD2FE10()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.supportOptionSubTypeString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD2FFF4()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.carriersInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD30020()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.relatedProducts.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD3004C()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.grlProduct.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30078()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.conciergeProduct.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD300A4()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.conciergeSymptom.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD300D0()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.randevuProduct.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD300FC()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.detectedCarrierID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30128()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.localizedPurchaseRequirementsDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30154()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.usesSecureFlow.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26BD30248()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.redirectURLString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30274()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD302F0()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.localizedPricingDisclaimer.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD303BC()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.contactCarriersInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD30438()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.applicationData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD30464()
{
  OUTLINED_FUNCTION_65_0();
  result = SupportOptionDetailsResponse.takeInForServiceDetails.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD306B4()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*v1);
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[5];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
    OUTLINED_FUNCTION_175(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
      v7 = v2[7];
    }
  }

  v10 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_26BD307C4()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_237();
    v5 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = v2[5];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
      OUTLINED_FUNCTION_175(v8);
      if (*(v9 + 84) == v3)
      {
        v7 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
        v7 = v2[7];
      }
    }

    v10 = OUTLINED_FUNCTION_107(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

void sub_26BD308C8()
{
  sub_26BD309DC();
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      sub_26BD30A38(319, &qword_280449340, type metadata accessor for TriageRequest.CaseMetaData, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26BD30A38(319, &unk_280449348, type metadata accessor for TriageRequest.ClientContext, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26BD309DC()
{
  if (!qword_28044A100)
  {
    v0 = sub_26BDA0B80();
    if (!v1)
    {
      atomic_store(v0, &qword_28044A100);
    }
  }
}

void sub_26BD30A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BD30AB0()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD30B28()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 36));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26BD30BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_134();
  v6 = sub_26BDA0850();
  v7 = OUTLINED_FUNCTION_175(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_46(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_26BD30C50()
{
  OUTLINED_FUNCTION_237();
  v4 = OUTLINED_FUNCTION_144_0();
  result = OUTLINED_FUNCTION_175(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_26BD30CE4()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SupportOptionDetailsResponse._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26BD30D94()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t __swift_get_extra_inhabitant_index_121Tm()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD30E88()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_26BD30EF0()
{
  sub_26BD30A38(319, &qword_28044A148, type metadata accessor for SupportOptionDetailsResponse.TimeSlot, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD30FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_144_0();
  v7 = OUTLINED_FUNCTION_175(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_26BD3107C()
{
  OUTLINED_FUNCTION_237();
  v4 = OUTLINED_FUNCTION_144_0();
  v5 = OUTLINED_FUNCTION_175(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
    v8 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
}

void sub_26BD31118()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD30A38(319, &qword_28044A160, type metadata accessor for CallContactDetails, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD311E0()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26BD312A4()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    v3 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449FE0, &unk_26BDA5460);
      v5 = *(v0 + 24);
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD31358()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD30A38(319, &qword_28044A160, type metadata accessor for CallContactDetails, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD31430()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v7 = *(v2 + 48);
  }

  v8 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26BD314F4()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_237();
    v3 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
      v5 = *(v0 + 48);
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD315A8()
{
  sub_26BD17404();
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      sub_26BD30A38(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD316A0()
{
  sub_26BD30A38(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26BD30A38(319, &qword_28044A198, type metadata accessor for SupportOptionDetailsResponse.SCBDetails, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_26BD30A38(319, &qword_28044A1A0, type metadata accessor for SupportOptionDetailsResponse.CLDDetails, MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_26BD30A38(319, &qword_28044A1A8, type metadata accessor for SupportOptionDetailsResponse.C2CDetails, MEMORY[0x277D83D88]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_26BD31960(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 40);
  sub_26BDA1050();
  OUTLINED_FUNCTION_129();
  a3();
  sub_26BDA1070();
  v7 = OUTLINED_FUNCTION_167();

  return a4(v7);
}

unint64_t sub_26BD319EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26BDA0FB0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26BD31AA0()
{
  OUTLINED_FUNCTION_184();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_147();
  v7(v6);
  return v0;
}

uint64_t sub_26BD31AF8()
{
  OUTLINED_FUNCTION_184();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_147();
  v7(v6);
  return v0;
}

unint64_t sub_26BD31B50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    while (2)
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      switch(v12)
      {
        case 0:
          if (a2)
          {
            goto LABEL_24;
          }

          break;
        case 1:
          if (a2 != 1)
          {
            goto LABEL_24;
          }

          break;
        case 2:
          if (a2 != 2)
          {
            goto LABEL_24;
          }

          break;
        case 3:
          if (a2 != 3)
          {
            goto LABEL_24;
          }

          break;
        case 4:
          if (a2 != 4)
          {
            goto LABEL_24;
          }

          break;
        case 5:
          if (a2 != 5)
          {
            goto LABEL_24;
          }

          break;
        case 6:
          if (a2 != 6)
          {
            goto LABEL_24;
          }

          break;
        default:
          if (a2 < 7 || (*v11 == a1 ? (v13 = v12 == a2) : (v13 = 0), !v13 && (v14 = v11[1], (sub_26BDA0FB0() & 1) == 0)))
          {
LABEL_24:
            v6 = (v6 + 1) & v9;
            if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
            {
              continue;
            }
          }

          break;
      }

      break;
    }
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for SupportOptionDetailsResponse(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{
  *(v2 + 64) = a1;
  result = type metadata accessor for SupportOptionDetailsResponse(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  result = type metadata accessor for SupportOptionDetailsResponse(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_21_1()
{
  result = type metadata accessor for SupportOptionDetailsResponse(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  v0 = type metadata accessor for SupportOptionDetailsResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_1()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_72_0()
{
  v1 = *(v0 + *(type metadata accessor for SupportOptionDetailsResponse(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_127_0()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_133_0(uint64_t result)
{
  v4 = *(result + 48);
  v5 = *(v3 - 104);
  *v5 = v2;
  v5[1] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_139_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_140_0()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v3 = v0 + *(v1 + 24);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_26BD2DF9C();
}

uint64_t OUTLINED_FUNCTION_167_0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_168_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_169_0()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_170_0()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_171_0()
{

  return sub_26BDA0BB0();
}

uint64_t OUTLINED_FUNCTION_172_0()
{

  return sub_26BD31AF8();
}

uint64_t sub_26BD32440@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOptionTypeNamespace.Enum.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BD32474(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD04DD8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void SupportOptionSubTypeNamespace.Enum.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 9:
      a2 = 5;
      break;
    case 10:
      a2 = 6;
      break;
    case 11:
      a2 = 7;
      break;
    case 12:
      a2 = 8;
      break;
    case 13:
      a2 = 9;
      break;
    case 14:
      a2 = 10;
      break;
    case 15:
      a2 = 11;
      break;
    case 16:
      a2 = 12;
      break;
    case 17:
      a2 = 13;
      break;
    case 18:
      a2 = 14;
      break;
    case 19:
      a2 = 15;
      break;
    case 20:
      a2 = 16;
      break;
    case 21:
      a2 = 17;
      break;
    case 22:
      a2 = 18;
      break;
    case 23:
      a2 = 19;
      break;
    case 24:
      a2 = 20;
      break;
    case 25:
      a2 = 21;
      break;
    case 26:
      a2 = 22;
      break;
    case 27:
      a2 = 23;
      break;
    case 28:
      a2 = 24;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_1_3(a1);
}

uint64_t SupportOptionSubTypeNamespace.Enum.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_26BDA6850[result];
  }

  return result;
}

uint64_t sub_26BD326F8@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOptionSubTypeNamespace.Enum.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BD3272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD34154();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t SupportOptionTypeNamespace.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_26BDA0900();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_26BD3290C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD32A98(&qword_28044A340, type metadata accessor for SupportOptionTypeNamespace);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD3298C(uint64_t a1)
{
  v2 = sub_26BD32A98(&qword_28044A2F0, type metadata accessor for SupportOptionTypeNamespace);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD329FC()
{
  sub_26BD32A98(&qword_28044A2F0, type metadata accessor for SupportOptionTypeNamespace);

  return sub_26BDA0A00();
}

uint64_t sub_26BD32A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BD32AE4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A250);
  __swift_project_value_buffer(v0, qword_28044A250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26BDA3640;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v5 = "ORC";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  *(v5 + 24) = &unk_287CAFAD0;
  v6 = *MEMORY[0x277D21880];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CIN";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  *(v9 + 24) = &unk_287CAFB08;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CALL";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CHAT";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EML";
  *(v16 + 1) = 3;
  v16[16] = 2;
  *(v16 + 3) = &unk_287CAFB40;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PHONE";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "CAS";
  *(v20 + 1) = 3;
  v20[16] = 2;
  *(v20 + 3) = &unk_287CAFB78;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "MCR";
  *(v22 + 1) = 3;
  v22[16] = 2;
  *(v22 + 3) = &unk_287CAFBB0;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "KB";
  *(v24 + 1) = 2;
  v24[16] = 2;
  *(v24 + 3) = &unk_287CAFBE8;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "REFER";
  *(v26 + 1) = 5;
  v26[16] = 2;
  *(v26 + 3) = &unk_287CAFC20;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "SMB";
  *(v28 + 1) = 3;
  v28[16] = 2;
  *(v28 + 3) = &unk_287CAFC58;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD32F78(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26BDA0B00();
}

uint64_t _s15SupportServices0A19OptionTypeNamespaceV2eeoiySbAC_ACtFZ_0()
{
  sub_26BDA0850();
  sub_26BD32A98(&qword_2804490C0, MEMORY[0x277D216C8]);
  return sub_26BDA0BB0() & 1;
}

uint64_t sub_26BD330B4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26BDA1050();
  a1(0);
  sub_26BD32A98(a2, a3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD3315C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD32A98(&qword_28044A338, type metadata accessor for SupportOptionSubTypeNamespace);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD331DC(uint64_t a1)
{
  v2 = sub_26BD32A98(&qword_28044A308, type metadata accessor for SupportOptionSubTypeNamespace);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD3324C()
{
  sub_26BD32A98(&qword_28044A308, type metadata accessor for SupportOptionSubTypeNamespace);

  return sub_26BDA0A00();
}

uint64_t sub_26BD332E8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A280);
  __swift_project_value_buffer(v0, qword_28044A280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26BDA61D0;
  v4 = v57 + v3 + v1[14];
  *(v57 + v3) = 0;
  *v4 = "ORC";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  *(v4 + 24) = &unk_287CAFC90;
  v5 = *MEMORY[0x277D21880];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v57 + v3 + v2 + v1[14];
  *(v57 + v3 + v2) = 1;
  *v8 = "ASP_AND_RETAIL";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  *(v8 + 24) = &unk_287CAFCC8;
  v7();
  v9 = (v57 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ASP";
  *(v10 + 1) = 3;
  v10[16] = 2;
  *(v10 + 3) = &unk_287CAFD00;
  v7();
  v11 = (v57 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ASPR";
  *(v12 + 1) = 4;
  v12[16] = 2;
  *(v12 + 3) = &unk_287CAFD38;
  v7();
  v13 = (v57 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "RET";
  *(v14 + 1) = 3;
  v14[16] = 2;
  *(v14 + 3) = &unk_287CAFD70;
  v7();
  v15 = (v57 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 9;
  *v16 = "C2C";
  *(v16 + 1) = 3;
  v16[16] = 2;
  *(v16 + 3) = &unk_287CAFDA8;
  v7();
  v17 = (v57 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 10;
  *v18 = "CLD";
  *(v18 + 1) = 3;
  v18[16] = 2;
  *(v18 + 3) = &unk_287CAFDE0;
  v7();
  v19 = (v57 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 11;
  *v20 = "SCB";
  *(v20 + 1) = 3;
  v20[16] = 2;
  *(v20 + 3) = &unk_287CAFE18;
  v7();
  v21 = (v57 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 12;
  *v22 = "C2CH";
  *(v22 + 1) = 4;
  v22[16] = 2;
  *(v22 + 3) = &unk_287CAFE50;
  v7();
  v23 = (v57 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 13;
  *v24 = "BZCHT";
  *(v24 + 1) = 5;
  v24[16] = 2;
  *(v24 + 3) = &unk_287CAFE88;
  v7();
  v25 = (v57 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 14;
  *v26 = "GEN";
  *(v26 + 1) = 3;
  v26[16] = 2;
  *(v26 + 3) = &unk_287CAFED8;
  v7();
  v27 = (v57 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 15;
  *v28 = "SNR";
  *(v28 + 1) = 3;
  v28[16] = 2;
  *(v28 + 3) = &unk_287CAFF10;
  v7();
  v29 = (v57 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 16;
  *v30 = "PHONE";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v31 = *MEMORY[0x277D21870];
  v7();
  v32 = (v57 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 17;
  *v33 = "CAS";
  *(v33 + 1) = 3;
  v33[16] = 2;
  *(v33 + 3) = &unk_287CAFF48;
  v7();
  v34 = (v57 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 18;
  *v35 = "MCR";
  *(v35 + 1) = 3;
  v35[16] = 2;
  *(v35 + 3) = &unk_287CAFF80;
  v7();
  v36 = (v57 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 19;
  *v37 = "KB";
  *(v37 + 1) = 2;
  v37[16] = 2;
  *(v37 + 3) = &unk_287CAFFB8;
  v7();
  v38 = (v57 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 20;
  *v39 = "BCS";
  *(v39 + 1) = 3;
  v39[16] = 2;
  *(v39 + 3) = &unk_287CAFFF0;
  v7();
  v40 = (v57 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 21;
  *v41 = "MULTIPLE";
  *(v41 + 1) = 8;
  v41[16] = 2;
  v7();
  v42 = (v57 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 22;
  *v43 = "REP_ERS";
  *(v43 + 1) = 7;
  v43[16] = 2;
  *(v43 + 3) = &unk_287CB0028;
  v7();
  v44 = (v57 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 23;
  *v45 = "REP_REQ";
  *(v45 + 1) = 7;
  v45[16] = 2;
  *(v45 + 3) = &unk_287CB0060;
  v7();
  v46 = (v57 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 24;
  *v47 = "MAASP";
  *(v47 + 1) = 5;
  v47[16] = 2;
  *(v47 + 3) = &unk_287CB00B0;
  v7();
  v48 = (v57 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 25;
  *v49 = "REP_MAIL_IN";
  *(v49 + 1) = 11;
  v49[16] = 2;
  *(v49 + 3) = &unk_287CB00E8;
  v7();
  v50 = (v57 + v3 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 26;
  *v51 = "ACMNG";
  *(v51 + 1) = 5;
  v51[16] = 2;
  v7();
  v52 = (v57 + v3 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 27;
  *v53 = "CLRDIAG";
  *(v53 + 1) = 7;
  v53[16] = 2;
  *(v53 + 3) = &unk_287CB0120;
  v7();
  v54 = (v57 + v3 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 28;
  *v55 = "ENBLA";
  *(v55 + 1) = 5;
  v55[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

unint64_t sub_26BD33B5C()
{
  result = qword_28044A2A8;
  if (!qword_28044A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A2A8);
  }

  return result;
}

unint64_t sub_26BD33BB4()
{
  result = qword_28044A2B0;
  if (!qword_28044A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A2B0);
  }

  return result;
}

unint64_t sub_26BD33C40()
{
  result = qword_28044A2C8;
  if (!qword_28044A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A2C8);
  }

  return result;
}

unint64_t sub_26BD33C98()
{
  result = qword_28044A2D0;
  if (!qword_28044A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A2D0);
  }

  return result;
}

uint64_t sub_26BD33D1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BD33FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDA0850();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26BD34024(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDA0850();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t _s15SupportServices26SupportOptionTypeNamespaceV4EnumOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_2_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD3408C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_2_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD340D8()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26BD34154()
{
  result = qword_28044A348;
  if (!qword_28044A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A348);
  }

  return result;
}

BOOL sub_26BD342A0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t sub_26BD342CC(char a1, char a2)
{
  v2 = 4475971;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x454E4F4850;
    }

    else
    {
      v3 = 0x5448435A42;
    }

    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 4475971;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x454E4F4850;
    }

    else
    {
      v2 = 0x5448435A42;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26BDA0FB0();
  }

  return v7 & 1;
}

uint64_t sub_26BD343C8()
{
  OUTLINED_FUNCTION_42_2();
  v3 = v2 | 0x646F437200000000;
  v4 = v1 | 1;
  v6 = v5;
  v7 = v3;
  switch(v6)
  {
    case 1:
      v7 = 0x6B6F54726F727265;
      v4 = 0xEA00000000006E65;
      break;
    case 2:
      v4 = 0xE800000000000000;
      v7 = 0x726F727245776172;
      break;
    case 3:
      v7 = 0x73654D726F727265;
      v4 = 0xEC00000065676173;
      break;
    case 4:
      v7 = 0x4974736575716572;
      v4 = 0xE900000000000064;
      break;
    case 5:
      v7 = 0x746954726F727265;
      v4 = 0xEA0000000000656CLL;
      break;
    default:
      break;
  }

  v8 = v1 + 1;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_42_2();
      v3 = v9 | 0x6B6F547200000000;
      v8 = 0xEA00000000006E65;
      break;
    case 2:
      v8 = 0xE800000000000000;
      v3 = 0x726F727245776172;
      break;
    case 3:
      OUTLINED_FUNCTION_42_2();
      v3 = v10 | 0x73654D7200000000;
      v8 = 0xEC00000065676173;
      break;
    case 4:
      v3 = 0x4974736575716572;
      v8 = 0xE900000000000064;
      break;
    case 5:
      OUTLINED_FUNCTION_42_2();
      v3 = v11 | 0x7469547200000000;
      v8 = 0xEA0000000000656CLL;
      break;
    default:
      break;
  }

  if (v7 == v3 && v4 == v8)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26BDA0FB0();
  }

  return v13 & 1;
}

BOOL sub_26BD345CC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_26BDA7018[a1];
  }

  if (a4)
  {
    a3 = qword_26BDA7018[a3];
  }

  return a1 == a3;
}

uint64_t sub_26BD34618@<X0>(uint64_t *a1@<X8>)
{
  result = SymptomSortStrategy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BD3464C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD3AE88();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t SymptomVisibility.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_26BD3472C@<X0>(uint64_t *a1@<X8>)
{
  result = SymptomVisibility.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BD34760(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD39B40();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t SymptomCategory.id.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD34854(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.id.setter();
}

void SymptomCategory.id.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.id.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD34984(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.id.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.name.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD34A5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.name.setter();
}

void SymptomCategory.name.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.name.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD34B68(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.name.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.isSymptomRequired.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 48);
}

uint64_t SymptomCategory.isSymptomRequired.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 48) = a1 & 1;
  return result;
}

uint64_t SymptomCategory.isSymptomRequired.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v0 + 48);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD34D08(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t SymptomCategory.imageID.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD34DCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.imageID.setter();
}

void SymptomCategory.imageID.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 64);
  *(v5 + 56) = v2;
  *(v5 + 64) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.imageID.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD34ED8(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.imageID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 64);
    *(v9 + 56) = v4;
    *(v9 + 64) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.imageURL.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD34FB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.imageURL.setter();
}

void SymptomCategory.imageURL.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 80);
  *(v5 + 72) = v2;
  *(v5 + 80) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.imageURL.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 80);
  *(v1 + 48) = *(v0 + 72);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD350BC(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.imageURL.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 80);
    *(v9 + 72) = v4;
    *(v9 + 80) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.visibility.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD35194(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.visibility.setter();
}

void SymptomCategory.visibility.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 96);
  *(v5 + 88) = v2;
  *(v5 + 96) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.visibility.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 96);
  *(v1 + 48) = *(v0 + 88);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD352A0(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.visibility.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 96);
    *(v9 + 88) = v4;
    *(v9 + 96) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.symptomCount.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 104);
}

uint64_t SymptomCategory.symptomCount.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 104) = a1;
  return result;
}

uint64_t SymptomCategory.symptomCount.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  *(v1 + 72) = *(v4 + 104);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD35444(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v6 = OUTLINED_FUNCTION_46_0(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_36();
    v11 = sub_26BD37A60(v10);
    OUTLINED_FUNCTION_215(v11);
  }

  OUTLINED_FUNCTION_212();
  *(v7 + 104) = v3;

  free(v1);
}

uint64_t SymptomCategory.symptoms.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 112);
}

uint64_t sub_26BD35514(uint64_t *a1)
{
  v1 = *a1;

  return SymptomCategory.symptoms.setter(v2);
}

uint64_t SymptomCategory.symptoms.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 112);
  *(v5 + 112) = a1;
}

uint64_t SymptomCategory.symptoms.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  *(v1 + 48) = *(v4 + 112);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD35628(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    SymptomCategory.symptoms.setter(v6);
    v7 = *(v1 + 48);
  }

  else
  {
    v8 = *(v1 + 64);
    v9 = *(v1 + 56);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v1 + 64);
      v14 = *(v1 + 56);
      type metadata accessor for SymptomCategory._StorageClass();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_36();
      v12 = sub_26BD37A60(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_191();
    v16 = *(v12 + 112);
    *(v12 + 112) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.sequenceNumber.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 120);
}

uint64_t SymptomCategory.sequenceNumber.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 120) = a1;
  return result;
}

uint64_t SymptomCategory.sequenceNumber.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  *(v1 + 72) = *(v4 + 120);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD357F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v6 = OUTLINED_FUNCTION_46_0(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_36();
    v11 = sub_26BD37A60(v10);
    OUTLINED_FUNCTION_215(v11);
  }

  OUTLINED_FUNCTION_212();
  *(v7 + 120) = v3;

  free(v1);
}

uint64_t SymptomCategory.safetyIssueAct.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD358C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.safetyIssueAct.setter();
}

void SymptomCategory.safetyIssueAct.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 136);
  *(v5 + 128) = v2;
  *(v5 + 136) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.safetyIssueAct.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD359D4(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.safetyIssueAct.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 136);
    *(v9 + 128) = v4;
    *(v9 + 136) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.isTrapDoorEligible.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 144);
}

uint64_t SymptomCategory.isTrapDoorEligible.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 144) = a1 & 1;
  return result;
}

uint64_t SymptomCategory.isTrapDoorEligible.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v0 + 144);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD35B74(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 144) = v3;

  free(v1);
}

uint64_t SymptomCategory.isRepairEligible.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 145);
}

uint64_t SymptomCategory.isRepairEligible.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 145) = a1 & 1;
  return result;
}

uint64_t SymptomCategory.isRepairEligible.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v0 + 145);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD35D00(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 145) = v3;

  free(v1);
}

uint64_t SymptomCategory.appleIDRequired.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD35DC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.appleIDRequired.setter();
}

void SymptomCategory.appleIDRequired.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 160);
  *(v5 + 152) = v2;
  *(v5 + 160) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.appleIDRequired.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 160);
  *(v1 + 48) = *(v0 + 152);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD35ED0(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.appleIDRequired.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 160);
    *(v9 + 152) = v4;
    *(v9 + 160) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.webDescription.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 168);
  v4 = *(v2 + 176);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD35FA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.webDescription.setter();
}

void SymptomCategory.webDescription.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 176);
  *(v5 + 168) = v2;
  *(v5 + 176) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.webDescription.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 176);
  *(v1 + 48) = *(v0 + 168);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD360B4(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.webDescription.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 176);
    *(v9 + 168) = v4;
    *(v9 + 176) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.iosDiagnosticsEligible.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 184);
  v4 = *(v2 + 192);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3618C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SymptomCategory.iosDiagnosticsEligible.setter();
}

void SymptomCategory.iosDiagnosticsEligible.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 192);
  *(v5 + 184) = v2;
  *(v5 + 192) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.iosDiagnosticsEligible.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_6(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 192);
  *(v1 + 48) = *(v0 + 184);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD36298(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SymptomCategory.iosDiagnosticsEligible.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_9_1();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD37A60(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 192);
    *(v9 + 184) = v4;
    *(v9 + 192) = v3;
  }

  free(v1);
}

uint64_t SymptomCategory.sortStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_0();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_154();
  v6 = *(v4 + 208);
  *a1 = *(v4 + 200);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_26BD36374@<X0>(uint64_t a1@<X8>)
{
  result = SymptomCategory.sortStrategy.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_26BD363B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  SymptomCategory.sortStrategy.setter();
}

void SymptomCategory.sortStrategy.setter()
{
  OUTLINED_FUNCTION_307();
  v1 = v0;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(type metadata accessor for SymptomCategory(0) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v9);
    *(v1 + v5) = v8;
  }

  OUTLINED_FUNCTION_159();
  *(v8 + 200) = v3;
  *(v8 + 208) = v4;
  OUTLINED_FUNCTION_306();
}

uint64_t SymptomCategory.sortStrategy.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 88) = v0;
  OUTLINED_FUNCTION_4_0();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  v5 = *(v4 + 208);
  *(v1 + 72) = *(v4 + 200);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_133();
}

void sub_26BD364F4(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 84);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v1 + 84);
    v11 = *(v1 + 88);
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD37A60(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_212();
  *(v9 + 200) = v3;
  *(v9 + 208) = v6;

  free(v1);
}

uint64_t SymptomCategory.offersDiagnostics.getter()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 209);
}

uint64_t SymptomCategory.offersDiagnostics.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_19_3();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD37A60(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 209) = a1 & 1;
  return result;
}

uint64_t SymptomCategory.offersDiagnostics.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v0 + 209);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD366B8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD37A60(v7);
    OUTLINED_FUNCTION_215(v8);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 209) = v3;

  free(v1);
}

uint64_t SymptomCategory.unknownFields.getter()
{
  v0 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_147();

  return v4(v3);
}

uint64_t SymptomCategory.unknownFields.setter()
{
  OUTLINED_FUNCTION_134();
  v2 = sub_26BDA0850();
  v3 = OUTLINED_FUNCTION_34(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t SymptomCategory.init()@<X0>(uint64_t a1@<X8>)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v2 = *(type metadata accessor for SymptomCategory(0) + 20);
  if (qword_280448E18 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_28044A398;
}

uint64_t Symptom.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_147();
}

uint64_t Symptom.id.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Symptom.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_147();
}

uint64_t Symptom.name.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void Symptom.visibility.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Symptom.visibility.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Symptom.safetyIssueAct.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_147();
}

uint64_t Symptom.safetyIssueAct.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Symptom.isEmailAttachmentEligible.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_147();
}

uint64_t Symptom.isEmailAttachmentEligible.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Symptom.imageURL.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_147();
}

uint64_t Symptom.imageURL.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Symptom.imageID.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_147();
}

uint64_t Symptom.imageID.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Symptom.summary.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_147();
}

uint64_t Symptom.summary.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t Symptom.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Symptom(0) + 80);
  v4 = sub_26BDA0850();
  v5 = OUTLINED_FUNCTION_34(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Symptom.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for Symptom(v2) + 80);
  v4 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Symptom.unknownFields.modify())(void, void)
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for Symptom(v0) + 80);
  return nullsub_1;
}

uint64_t Symptom.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Symptom(0) + 80);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD36F6C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A350);
  __swift_project_value_buffer(v0, qword_28044A350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "WEIGHTAGE";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALPHABETICAL";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SEQUENCE";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD37198()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A368);
  __swift_project_value_buffer(v0, qword_28044A368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OVERRIDE";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD373AC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A380);
  __swift_project_value_buffer(v0, qword_28044A380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_26BDA6920;
  v4 = v48 + v3;
  v5 = v48 + v3 + v1[14];
  *(v48 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  *(v5 + 24) = "symptomCategoryId";
  *(v5 + 32) = 17;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x277D21878];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  *(v9 + 24) = "symptomCategoryDesc";
  *(v9 + 32) = 19;
  *(v9 + 40) = 2;
  v8();
  v10 = v1[14];
  v11 = (v4 + 2 * v2);
  *v11 = 3;
  v12 = v11 + v10;
  *v12 = "is_symptom_required";
  *(v12 + 1) = 19;
  v12[16] = 2;
  *(v12 + 3) = "symptomRequired";
  *(v12 + 4) = 15;
  v12[40] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image_id";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21888];
  v8();
  v16 = v1[14];
  v17 = (v4 + 4 * v2);
  *v17 = 5;
  v18 = v17 + v16;
  *v18 = "image_url";
  *(v18 + 1) = 9;
  v18[16] = 2;
  *(v18 + 3) = "imageURL";
  *(v18 + 4) = 8;
  v18[40] = 2;
  v8();
  v19 = (v4 + 5 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "visibility";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v21 = *MEMORY[0x277D21870];
  v8();
  v22 = (v4 + 6 * v2);
  v23 = v22 + v1[14];
  *v22 = 7;
  *v23 = "symptom_count";
  *(v23 + 1) = 13;
  v23[16] = 2;
  v8();
  v24 = (v4 + 7 * v2);
  v25 = v24 + v1[14];
  *v24 = 8;
  *v25 = "symptoms";
  *(v25 + 1) = 8;
  v25[16] = 2;
  v8();
  v26 = (v4 + 8 * v2);
  v27 = v26 + v1[14];
  *v26 = 9;
  *v27 = "sequence_number";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v8();
  v28 = (v4 + 9 * v2);
  v29 = v28 + v1[14];
  *v28 = 10;
  *v29 = "safety_issue_act";
  *(v29 + 1) = 16;
  v29[16] = 2;
  v8();
  v30 = v1[14];
  v31 = (v4 + 10 * v2);
  *v31 = 11;
  v32 = v31 + v30;
  *v32 = "is_trap_door_eligible";
  *(v32 + 1) = 21;
  v32[16] = 2;
  *(v32 + 3) = "trapDoorEligible";
  *(v32 + 4) = 16;
  v32[40] = 2;
  v8();
  v33 = (v4 + 11 * v2);
  v34 = v33 + v1[14];
  *v33 = 12;
  *v34 = "is_repair_eligible";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v8();
  v35 = (v4 + 12 * v2);
  v36 = v35 + v1[14];
  *v35 = 13;
  *v36 = "apple_id_required";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  v37 = v1[14];
  v38 = (v4 + 13 * v2);
  *v38 = 14;
  v39 = v38 + v37;
  *v39 = "web_description";
  *(v39 + 1) = 15;
  v39[16] = 2;
  *(v39 + 3) = "webDesc";
  *(v39 + 4) = 7;
  v39[40] = 2;
  v8();
  v40 = v1[14];
  v41 = (v4 + 14 * v2);
  *v41 = 15;
  v42 = v41 + v40;
  *v42 = "ios_diagnostics_eligible";
  *(v42 + 1) = 24;
  v42[16] = 2;
  *(v42 + 3) = "iosDiagEligible";
  *(v42 + 4) = 15;
  v42[40] = 2;
  v8();
  v43 = (v4 + 15 * v2);
  v44 = v43 + v1[14];
  *v43 = 16;
  *v44 = "sort_strategy";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v8();
  v45 = (v4 + 16 * v2);
  v46 = v45 + v1[14];
  *v45 = 17;
  *v46 = "offers_diagnostics";
  *(v46 + 1) = 18;
  v46[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD379CC()
{
  type metadata accessor for SymptomCategory._StorageClass();
  swift_allocObject();
  result = sub_26BD37A0C();
  qword_28044A398 = result;
  return result;
}

uint64_t sub_26BD37A0C()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 104) = 0;
  *(v0 + 112) = v2;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  return result;
}

uint64_t sub_26BD37A60(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0xE000000000000000;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0xE000000000000000;
  *(v1 + 104) = 0;
  *(v1 + 112) = MEMORY[0x277D84F90];
  *(v1 + 128) = 0;
  *(v1 + 120) = 0;
  *(v1 + 144) = 0;
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0xE000000000000000;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0xE000000000000000;
  *(v1 + 200) = 0;
  *(v1 + 208) = 1;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v6;
  *(v1 + 40) = v5;

  swift_beginAccess();
  LOBYTE(v3) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v3;
  swift_beginAccess();
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  swift_beginAccess();
  v9 = *(v1 + 64);
  *(v1 + 56) = v8;
  *(v1 + 64) = v7;

  swift_beginAccess();
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  swift_beginAccess();
  v12 = *(v1 + 80);
  *(v1 + 72) = v11;
  *(v1 + 80) = v10;

  swift_beginAccess();
  v14 = *(a1 + 88);
  v13 = *(a1 + 96);
  swift_beginAccess();
  v15 = *(v1 + 96);
  *(v1 + 88) = v14;
  *(v1 + 96) = v13;

  swift_beginAccess();
  v16 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 104) = v16;
  swift_beginAccess();
  v17 = *(a1 + 112);
  swift_beginAccess();
  v18 = *(v1 + 112);
  *(v1 + 112) = v17;

  swift_beginAccess();
  v19 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 120) = v19;
  swift_beginAccess();
  v21 = *(a1 + 128);
  v20 = *(a1 + 136);
  swift_beginAccess();
  v22 = *(v1 + 136);
  *(v1 + 128) = v21;
  *(v1 + 136) = v20;

  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 144) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 145);
  swift_beginAccess();
  *(v1 + 145) = v20;
  swift_beginAccess();
  v24 = *(a1 + 152);
  v23 = *(a1 + 160);
  swift_beginAccess();
  v25 = *(v1 + 160);
  *(v1 + 152) = v24;
  *(v1 + 160) = v23;

  swift_beginAccess();
  v27 = *(a1 + 168);
  v26 = *(a1 + 176);
  swift_beginAccess();
  v28 = *(v1 + 176);
  *(v1 + 168) = v27;
  *(v1 + 176) = v26;

  swift_beginAccess();
  v30 = *(a1 + 184);
  v29 = *(a1 + 192);
  swift_beginAccess();
  v31 = *(v1 + 192);
  *(v1 + 184) = v30;
  *(v1 + 192) = v29;

  swift_beginAccess();
  v32 = *(a1 + 200);
  LOBYTE(v31) = *(a1 + 208);
  swift_beginAccess();
  *(v1 + 200) = v32;
  *(v1 + 208) = v31;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + 209);

  swift_beginAccess();
  *(v1 + 209) = v32;
  return v1;
}

void *sub_26BD37FD0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[17];

  v8 = v0[20];

  v9 = v0[22];

  v10 = v0[24];

  return v0;
}

uint64_t sub_26BD38038()
{
  v0 = sub_26BD37FD0();

  return MEMORY[0x2821FE8D8](v0, 210, 7);
}

uint64_t SymptomCategory.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for SymptomCategory(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for SymptomCategory._StorageClass();
    OUTLINED_FUNCTION_9_1();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_36();
    *(v1 + v2) = sub_26BD37A60(v6);
  }

  return sub_26BD38104();
}

uint64_t sub_26BD38104()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_9;
      case 3:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_9;
      case 6:
      case 10:
      case 13:
      case 14:
      case 15:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_9;
      case 7:
      case 9:
        swift_beginAccess();
        sub_26BDA0960();
        goto LABEL_9;
      case 8:
        swift_beginAccess();
        type metadata accessor for Symptom(0);
        sub_26BD39368(&qword_28044A430, type metadata accessor for Symptom);
        sub_26BDA09A0();
        goto LABEL_9;
      case 11:
      case 12:
      case 17:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_9;
      case 16:
        swift_beginAccess();
        sub_26BD3AE88();
        sub_26BDA0930();
LABEL_9:
        v1 = 0;
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t SymptomCategory.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for SymptomCategory(0);
  result = sub_26BD38520(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD38520(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(a1 + 24);

    sub_26BDA0AB0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(a1 + 40);

    sub_26BDA0AB0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    result = sub_26BDA0A40();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 64);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = *(a1 + 64);

    sub_26BDA0AB0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 80);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = *(a1 + 80);

  sub_26BDA0AB0();
  if (v1)
  {
  }

LABEL_23:
  swift_beginAccess();
  v16 = *(a1 + 96);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *(a1 + 96);

    sub_26BDA0AB0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 104) || (result = sub_26BDA0A80(), !v1))
  {
    swift_beginAccess();
    if (!*(*(a1 + 112) + 16) || (type metadata accessor for Symptom(0), sub_26BD39368(&qword_28044A430, type metadata accessor for Symptom), , sub_26BDA0AC0(), result = , !v1))
    {
      swift_beginAccess();
      if (!*(a1 + 120) || (result = sub_26BDA0A80(), !v1))
      {
        swift_beginAccess();
        v19 = *(a1 + 136);
        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
        }

        if (!v20 || (v21 = *(a1 + 136), , sub_26BDA0AB0(), result = , !v1))
        {
          swift_beginAccess();
          if (*(a1 + 144) != 1 || (result = sub_26BDA0A40(), !v1))
          {
            swift_beginAccess();
            if (*(a1 + 145) != 1 || (result = sub_26BDA0A40(), !v1))
            {
              swift_beginAccess();
              v22 = *(a1 + 160);
              v23 = HIBYTE(v22) & 0xF;
              if ((v22 & 0x2000000000000000) == 0)
              {
                v23 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
              }

              if (!v23 || (v24 = *(a1 + 160), , sub_26BDA0AB0(), result = , !v1))
              {
                swift_beginAccess();
                v25 = *(a1 + 176);
                v26 = HIBYTE(v25) & 0xF;
                if ((v25 & 0x2000000000000000) == 0)
                {
                  v26 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
                }

                if (!v26 || (v27 = *(a1 + 176), , sub_26BDA0AB0(), result = , !v1))
                {
                  swift_beginAccess();
                  v28 = *(a1 + 192);
                  v29 = HIBYTE(v28) & 0xF;
                  if ((v28 & 0x2000000000000000) == 0)
                  {
                    v29 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v29 || (v30 = *(a1 + 192), , sub_26BDA0AB0(), result = , !v1))
                  {
                    swift_beginAccess();
                    if (!*(a1 + 200) || (v31 = *(a1 + 200), v32 = *(a1 + 208), sub_26BD3AE88(), result = sub_26BDA0A50(), !v1))
                    {
                      result = swift_beginAccess();
                      if (*(a1 + 209) == 1)
                      {
                        return sub_26BDA0A40();
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

  return result;
}

uint64_t static SymptomCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_26BD38C0C(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_23_1();
  sub_26BD39368(v9, v10);
  return sub_26BDA0BB0() & 1;
}

uint64_t sub_26BD38C0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_26BDA0FB0() & 1) != 0)
  {
    swift_beginAccess();
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    swift_beginAccess();
    v9 = v7 == *(a2 + 32) && v8 == *(a2 + 40);
    if (v9 || (sub_26BDA0FB0() & 1) != 0)
    {
      swift_beginAccess();
      v10 = *(a1 + 48);
      swift_beginAccess();
      if (v10 == *(a2 + 48))
      {
        swift_beginAccess();
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        swift_beginAccess();
        v15 = v13 == *(a2 + 56) && v14 == *(a2 + 64);
        if (v15 || (sub_26BDA0FB0() & 1) != 0)
        {
          swift_beginAccess();
          v16 = *(a1 + 72);
          v17 = *(a1 + 80);
          swift_beginAccess();
          v18 = v16 == *(a2 + 72) && v17 == *(a2 + 80);
          if (v18 || (sub_26BDA0FB0() & 1) != 0)
          {
            swift_beginAccess();
            v19 = *(a1 + 88);
            v20 = *(a1 + 96);
            swift_beginAccess();
            v21 = v19 == *(a2 + 88) && v20 == *(a2 + 96);
            if (v21 || (sub_26BDA0FB0() & 1) != 0)
            {
              swift_beginAccess();
              v22 = *(a1 + 104);
              swift_beginAccess();
              if (v22 == *(a2 + 104))
              {
                swift_beginAccess();
                v23 = *(a1 + 112);
                swift_beginAccess();
                v24 = *(a2 + 112);

                sub_26BD0490C();
                v26 = v25;

                if (v26)
                {
                  swift_beginAccess();
                  v27 = *(a1 + 120);
                  swift_beginAccess();
                  if (v27 == *(a2 + 120))
                  {
                    swift_beginAccess();
                    v28 = *(a1 + 128);
                    v29 = *(a1 + 136);
                    swift_beginAccess();
                    v30 = v28 == *(a2 + 128) && v29 == *(a2 + 136);
                    if (v30 || (sub_26BDA0FB0() & 1) != 0)
                    {
                      swift_beginAccess();
                      v31 = *(a1 + 144);
                      swift_beginAccess();
                      if (v31 == *(a2 + 144))
                      {
                        swift_beginAccess();
                        v32 = *(a1 + 145);
                        swift_beginAccess();
                        if (v32 == *(a2 + 145))
                        {
                          swift_beginAccess();
                          v33 = *(a1 + 152);
                          v34 = *(a1 + 160);
                          swift_beginAccess();
                          v35 = v33 == *(a2 + 152) && v34 == *(a2 + 160);
                          if (v35 || (sub_26BDA0FB0() & 1) != 0)
                          {
                            swift_beginAccess();
                            v36 = *(a1 + 168);
                            v37 = *(a1 + 176);
                            swift_beginAccess();
                            v38 = v36 == *(a2 + 168) && v37 == *(a2 + 176);
                            if (v38 || (sub_26BDA0FB0() & 1) != 0)
                            {
                              swift_beginAccess();
                              v39 = *(a1 + 184);
                              v40 = *(a1 + 192);
                              swift_beginAccess();
                              v41 = v39 == *(a2 + 184) && v40 == *(a2 + 192);
                              if (v41 || (sub_26BDA0FB0() & 1) != 0)
                              {
                                swift_beginAccess();
                                v42 = *(a1 + 200);
                                v43 = *(a1 + 208);
                                swift_beginAccess();
                                v44 = *(a2 + 208);
                                if (sub_26BD343B4(v42, v43, *(a2 + 200)))
                                {
                                  swift_beginAccess();
                                  v45 = *(a1 + 209);

                                  swift_beginAccess();
                                  v46 = *(a2 + 209);

                                  v11 = v45 ^ v46 ^ 1;
                                  return v11 & 1;
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

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_26BD391FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD39368(&qword_28044A468, type metadata accessor for SymptomCategory);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD3927C(uint64_t a1)
{
  v2 = sub_26BD39368(&qword_28044A418, type metadata accessor for SymptomCategory);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD392EC()
{
  sub_26BD39368(&qword_28044A418, type metadata accessor for SymptomCategory);

  return sub_26BDA0A00();
}

uint64_t sub_26BD39368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BD393CC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A3A0);
  __swift_project_value_buffer(v0, qword_28044A3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26BDA6930;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  *(v4 + 24) = "symptomId";
  *(v4 + 32) = 9;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x277D21878];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  *(v8 + 24) = "symptomDesc";
  *(v8 + 32) = 11;
  *(v8 + 40) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "weightage";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v43 = *MEMORY[0x277D21870];
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "visibility";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "safety_issue_act";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21888];
  v7();
  v16 = v1[14];
  v17 = (v44 + v3 + 5 * v2);
  *v17 = 6;
  v18 = v17 + v16;
  *v18 = "is_case_block";
  *(v18 + 1) = 13;
  v18[16] = 2;
  *(v18 + 3) = "caseBlock";
  *(v18 + 4) = 9;
  v18[40] = 2;
  v7();
  v19 = v1[14];
  v20 = (v44 + v3 + 6 * v2);
  *v20 = 7;
  v21 = v20 + v19;
  *v21 = "should_suppress";
  *(v21 + 1) = 15;
  v21[16] = 2;
  *(v21 + 3) = "suppress";
  *(v21 + 4) = 8;
  v21[40] = 2;
  v7();
  v22 = (v44 + v3 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "is_repair_eligible";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v7();
  v24 = v1[14];
  v25 = (v44 + v3 + 8 * v2);
  *v25 = 9;
  v26 = v25 + v24;
  *v26 = "is_email_attachment_eligible";
  *(v26 + 1) = 28;
  v26[16] = 2;
  *(v26 + 3) = "elEmlAttch";
  *(v26 + 4) = 10;
  v26[40] = 2;
  v7();
  v27 = v1[14];
  v28 = (v44 + v3 + 9 * v2);
  *v28 = 10;
  v29 = v28 + v27;
  *v29 = "image_url";
  *(v29 + 1) = 9;
  v29[16] = 2;
  *(v29 + 3) = "imageURL";
  *(v29 + 4) = 8;
  v29[40] = 2;
  v7();
  v30 = (v44 + v3 + 10 * v2);
  v31 = v30 + v1[14];
  *v30 = 11;
  *v31 = "override_rank";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v7();
  v32 = (v44 + v3 + 11 * v2);
  v33 = v32 + v1[14];
  *v32 = 12;
  *v33 = "sequence";
  *(v33 + 1) = 8;
  v33[16] = 2;
  v7();
  v34 = (v44 + v3 + 12 * v2);
  v35 = v34 + v1[14];
  *v34 = 13;
  *v35 = "offers_battery_check";
  *(v35 + 1) = 20;
  v35[16] = 2;
  v7();
  v36 = (v44 + v3 + 13 * v2);
  v37 = v36 + v1[14];
  *v36 = 14;
  *v37 = "offers_diagnostics";
  *(v37 + 1) = 18;
  v37[16] = 2;
  v7();
  v38 = (v44 + v3 + 14 * v2);
  v39 = v38 + v1[14];
  *v38 = 15;
  *v39 = "image_id";
  *(v39 + 1) = 8;
  v39[16] = 2;
  v7();
  v40 = (v44 + v3 + 15 * v2);
  v41 = v40 + v1[14];
  *v40 = 16;
  *v41 = "summary";
  *(v41 + 1) = 7;
  v41[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t Symptom.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
      case 9:
      case 10:
      case 15:
      case 16:
        OUTLINED_FUNCTION_35_2();
        sub_26BDA0990();
        goto LABEL_9;
      case 3:
      case 11:
      case 12:
        OUTLINED_FUNCTION_35_2();
        sub_26BDA0960();
        goto LABEL_9;
      case 4:
        sub_26BD39B40();
        sub_26BDA0930();
        goto LABEL_9;
      case 6:
      case 7:
      case 8:
      case 13:
      case 14:
        OUTLINED_FUNCTION_35_2();
        sub_26BDA0920();
LABEL_9:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

unint64_t sub_26BD39B40()
{
  result = qword_28044A3C0;
  if (!qword_28044A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3C0);
  }

  return result;
}

uint64_t Symptom.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), (v2 = v1) == 0))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), (v2 = v1) == 0))
    {
      if (!v0[4] || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), (v2 = v1) == 0))
      {
        if (!v0[5] || (v26 = v0[5], v27 = *(v0 + 48), sub_26BD39B40(), v1 = v2, result = sub_26BDA0A50(), !v2))
        {
          v10 = v0[7];
          v11 = v0[8];
          OUTLINED_FUNCTION_29();
          if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
          {
            if (*(v0 + 72) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v1))
            {
              if (*(v0 + 73) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v1))
              {
                if (*(v0 + 74) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v1))
                {
                  v13 = v0[10];
                  v14 = v0[11];
                  OUTLINED_FUNCTION_29();
                  if (!v15 || (result = OUTLINED_FUNCTION_103(), !v1))
                  {
                    v16 = v0[12];
                    v17 = v0[13];
                    OUTLINED_FUNCTION_29();
                    if (!v18 || (result = OUTLINED_FUNCTION_103(), !v1))
                    {
                      if (!v0[14] || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), !v1))
                      {
                        if (!v0[15] || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A80(), !v1))
                        {
                          if (*(v0 + 128) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v1))
                          {
                            if (*(v0 + 129) != 1 || (OUTLINED_FUNCTION_156(), result = sub_26BDA0A40(), !v1))
                            {
                              v19 = v0[17];
                              v20 = v0[18];
                              OUTLINED_FUNCTION_29();
                              if (!v21 || (result = OUTLINED_FUNCTION_103(), !v1))
                              {
                                v22 = v0[19];
                                v23 = v0[20];
                                OUTLINED_FUNCTION_29();
                                if (!v24 || (result = OUTLINED_FUNCTION_103(), !v1))
                                {
                                  v25 = v0 + *(type metadata accessor for Symptom(0) + 80);
                                  return sub_26BDA0830();
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

  return result;
}

uint64_t static Symptom.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_26BDA0FB0() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (*(a1 + 48))
  {
    v6 = v6 != 0;
  }

  if (*(a2 + 48) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72) || *(a1 + 73) != *(a2 + 73) || *(a1 + 74) != *(a2 + 74))
  {
    return 0;
  }

  v9 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v10 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128) || *(a1 + 129) != *(a2 + 129))
  {
    return 0;
  }

  v12 = *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144);
  if (!v12 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160);
  if (!v13 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for Symptom(0) + 80);
  sub_26BDA0850();
  OUTLINED_FUNCTION_23_1();
  sub_26BD39368(v15, v16);
  return sub_26BDA0BB0() & 1;
}