uint64_t sub_1C051FE30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C051FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C051FF64(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C051EF2C(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  swift_beginAccess();
  v15 = *(v9 + v14);
  *(v9 + v14) = a1;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0) + 32);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C052008C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C051EF2C(v11);

    *(v5 + v8) = v15;
    v11 = v15;
  }

  v16 = (v11 + *a3);
  swift_beginAccess();
  v17 = v16[1];
  *v16 = a1;
  v16[1] = a2;
}

uint64_t UsoTaskBuilder_send_common_Message.init()()
{
  *(v0 + 40) = xmmword_1C09831D0;
  *(v0 + 56) = xmmword_1C0982FB0;
  *(v0 + 72) = xmmword_1C0982FC0;
  *(v0 + 88) = xmmword_1C0975360;
  *(v0 + 104) = xmmword_1C0977350;
  *(v0 + 120) = xmmword_1C09831E0;
  *(v0 + 136) = xmmword_1C0982D00;

  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v1;
  *(v0 + 24) = v1;

  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_1C05202B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = a1;
  return sub_1C05202A0(a2, a3, &v6, *(v4 + 360));
}

uint64_t sub_1C0520300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a1, a2, v5 + 152, a3, a4);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_PhoneCall.init()()
{
  v0[5] = 0xD000000000000010;
  v0[6] = 0x80000001C09CE0D0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C0520474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v106 = v101 - v12;
  v110 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  v107 = *(v110 - 8);
  v13 = *(v107 + 64);
  v14 = MEMORY[0x1EEE9AC00](v110);
  v102 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v103 = v101 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v109 = v101 - v19;
  v116 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v108 = *(v116 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v105 = v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B60, &qword_1C096E100);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v113 = v101 - v24;
  v114 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  v112 = *(v114 - 8);
  v25 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v111 = v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = v101 - v29;
  v31 = sub_1C095D26C();
  v117 = *(v31 - 8);
  v32 = v117[8];
  MEMORY[0x1EEE9AC00](v31);
  v34 = v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v118 = a1;
  if (*(a1 + 16) == 1)
  {
    result = sub_1C095D5FC();
    if (v4)
    {
      return result;
    }

    v36 = a3;
    v37 = 0;
  }

  else
  {
    v36 = a3;
    v37 = v4;
  }

  v38 = v118;
  swift_beginAccess();
  if (*(v38 + 17) == 1)
  {
    result = sub_1C095D5FC();
    v39 = v37;
    if (v37)
    {
      return result;
    }

    v115 = v36;
  }

  else
  {
    v115 = v36;
    v39 = v37;
  }

  v101[1] = a4;
  v40 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  v41 = v118;
  swift_beginAccess();
  sub_1C05149F8(v41 + v40, v30, &qword_1EBE16B58, &unk_1C099B6A0);
  v42 = v117;
  if ((v117[6])(v30, 1, v31) == 1)
  {
    sub_1C05145B4(v30, &qword_1EBE16B58, &unk_1C099B6A0);
    v43 = v39;
  }

  else
  {
    (v42[4])(v34, v30, v31);
    sub_1C051FAFC(&qword_1EBE16C28, MEMORY[0x1E69D2638]);
    sub_1C095D6AC();
    if (v39)
    {
      return (v42[1])(v34, v31);
    }

    v43 = 0;
    (v42[1])(v34, v31);
  }

  v44 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions;
  v45 = v118;
  swift_beginAccess();
  v46 = v116;
  if (*(*(v45 + v44) + 16))
  {
    sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);

    sub_1C095D69C();
    if (v43)
    {
    }

    v43 = 0;
  }

  v47 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints;
  v48 = v118;
  swift_beginAccess();
  if (*(*(v48 + v47) + 16))
  {

    sub_1C095D64C();
    if (v43)
    {
    }

    v43 = 0;
  }

  v49 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints;
  v50 = v118;
  swift_beginAccess();
  if (*(*(v50 + v49) + 16))
  {

    sub_1C095D64C();
    if (v43)
    {
    }

    v43 = 0;
  }

  v51 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints;
  v52 = v118;
  swift_beginAccess();
  if (*(*(v52 + v51) + 16))
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
    sub_1C051FAFC(&unk_1EBE15238, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);

    sub_1C095D69C();
    if (v43)
    {
    }

    v43 = 0;
  }

  v53 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch;
  v54 = v118;
  swift_beginAccess();
  if (*(v54 + v53) == 1)
  {
    result = sub_1C095D5FC();
    if (v43)
    {
      return result;
    }

    v43 = 0;
  }

  v55 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation;
  v56 = v118;
  swift_beginAccess();
  if (*(v56 + v55) == 1)
  {
    result = sub_1C095D5FC();
    if (v43)
    {
      return result;
    }

    v43 = 0;
  }

  v57 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints;
  v58 = v118;
  swift_beginAccess();
  if (*(*(v58 + v57) + 16))
  {

    sub_1C095D64C();
    if (v43)
    {
    }

    v43 = 0;
  }

  v59 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints;
  v60 = v118;
  swift_beginAccess();
  if (*(*(v60 + v59) + 16))
  {

    sub_1C095D64C();
    v61 = v43;
    if (v43)
    {
    }
  }

  else
  {
    v61 = v43;
  }

  v62 = (v118 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {

    sub_1C095D66C();
    if (!v61)
    {

      goto LABEL_44;
    }
  }

LABEL_44:
  v66 = (v118 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {

    sub_1C095D66C();
    if (v61)
    {
    }

    v70 = 0;
  }

  else
  {
    v70 = v61;
  }

  v71 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking;
  v72 = v118;
  swift_beginAccess();
  if (*(v72 + v71) == 1)
  {
    result = sub_1C095D5FC();
    if (v70)
    {
      return result;
    }

    v70 = 0;
  }

  v73 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  v74 = v118;
  swift_beginAccess();
  v75 = v74 + v73;
  v76 = v113;
  sub_1C05149F8(v75, v113, &qword_1EBE16B60, &qword_1C096E100);
  if ((*(v112 + 48))(v76, 1, v114) == 1)
  {
    sub_1C05145B4(v76, &qword_1EBE16B60, &qword_1C096E100);
  }

  else
  {
    v77 = v76;
    v78 = v111;
    sub_1C055396C(v77, v111, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
    sub_1C051FAFC(&qword_1EBE16BA8, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
    sub_1C095D6AC();
    if (v70)
    {
      return sub_1C0553A3C(v78, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
    }

    v70 = 0;
    sub_1C0553A3C(v78, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  }

  v79 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure;
  v80 = v118;
  swift_beginAccess();
  if (*(v80 + v79) == 1)
  {
    result = sub_1C095D5FC();
    if (v70)
    {
      return result;
    }

    v70 = 0;
  }

  v81 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation;
  v82 = v118;
  swift_beginAccess();
  if (*(v82 + v81) == 1)
  {
    result = sub_1C095D5FC();
    if (v70)
    {
      return result;
    }

    v70 = 0;
  }

  v83 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  v84 = v118;
  swift_beginAccess();
  v85 = v84 + v83;
  v86 = v109;
  sub_1C05149F8(v85, v109, &qword_1EBE16B50, &unk_1C096E0F0);
  if ((*(v108 + 48))(v86, 1, v46) == 1)
  {
    sub_1C05145B4(v86, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  else
  {
    v87 = v105;
    sub_1C055396C(v86, v105, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C095D6AC();
    result = sub_1C0553A3C(v87, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if (v70)
    {
      return result;
    }

    v70 = 0;
  }

  v88 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  v89 = v118;
  swift_beginAccess();
  v90 = v89 + v88;
  v91 = v106;
  sub_1C05149F8(v90, v106, &qword_1EBE16B68, &qword_1C096E108);
  v92 = *(v107 + 48);
  if ((v92)(v91, 1, v110) == 1)
  {
    sub_1C05145B4(v91, &qword_1EBE16B68, &qword_1C096E108);
  }

  else
  {
    v117 = v92;
    v93 = v103;
    sub_1C055396C(v91, v103, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    sub_1C051FAFC(&qword_1EBE16BC0, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    sub_1C095D6AC();
    result = sub_1C0553A3C(v93, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    if (v70)
    {
      return result;
    }

    v70 = 0;
    v92 = v117;
  }

  v94 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID;
  v95 = v118;
  swift_beginAccess();
  v96 = v95 + v94;
  v97 = v104;
  sub_1C05149F8(v96, v104, &qword_1EBE16B68, &qword_1C096E108);
  if ((v92)(v97, 1, v110) == 1)
  {
    sub_1C05145B4(v97, &qword_1EBE16B68, &qword_1C096E108);
  }

  else
  {
    v98 = v102;
    sub_1C055396C(v97, v102, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    sub_1C051FAFC(&qword_1EBE16BC0, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    sub_1C095D6AC();
    result = sub_1C0553A3C(v98, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    if (v70)
    {
      return result;
    }
  }

  v99 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb;
  v100 = v118;
  result = swift_beginAccess();
  if (*(v100 + v99) == 1)
  {
    return sub_1C095D5FC();
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0);
  result = sub_1C0520474(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C095D66C(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C095D66C(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1C095D66C(), !v1))
      {
        if (!*(v0[6] + 16) || (result = sub_1C095D64C(), !v1))
        {
          v10 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0) + 32);
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1C051EF2C(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_1C05216A8(v11, a1, a2, a3);
}

uint64_t sub_1C05216A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_1C055110C();
          break;
        case 2:
          sub_1C0521A10();
          break;
        case 3:
          sub_1C0551190();
          break;
        case 4:
          sub_1C0521A94();
          break;
        case 5:
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints;
          goto LABEL_28;
        case 6:
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints;
          goto LABEL_28;
        case 7:
          sub_1C055126C();
          break;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch;
          goto LABEL_5;
        case 9:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation;
          goto LABEL_5;
        case 10:
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints;
          goto LABEL_28;
        case 11:
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints;
LABEL_28:
          sub_1C0522FC8(v21, v22, v23, v24, v25);
          break;
        case 12:
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName;
          goto LABEL_14;
        case 13:
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName;
LABEL_14:
          sub_1C0521C7C(v16, v17, v18, v19, v20);
          break;
        case 14:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking;
          goto LABEL_5;
        case 15:
          sub_1C0551348();
          break;
        case 16:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure;
          goto LABEL_5;
        case 17:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation;
          goto LABEL_5;
        case 18:
          sub_1C0551424();
          break;
        case 19:
          sub_1C0551500();
          break;
        case 20:
          sub_1C05515DC();
          break;
        case 21:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb;
LABEL_5:
          sub_1C05516B8(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0521A10()
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C0521A94()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0521B70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 32);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_SemanticValue.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_1C095D4BC();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1C095D50C();
    }
  }
}

uint64_t sub_1C0521C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C0521D30(__int128 *a1)
{
  v2 = a1[9];
  v31 = a1[8];
  v32 = v2;
  v33[0] = a1[10];
  *(v33 + 9) = *(a1 + 169);
  v3 = a1[5];
  v27 = a1[4];
  v28 = v3;
  v4 = a1[7];
  v29 = a1[6];
  v30 = v4;
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v6 = a1[3];
  v25 = a1[2];
  v26 = v6;
  swift_beginAccess();
  v7 = *(v1 + 32);
  sub_1C0521E78(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C0522E00(0, *(v7 + 2) + 1, 1, v7);
    *(v1 + 32) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C0522E00((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[192 * v10];
  v12 = v23;
  v13 = v24;
  v14 = v26;
  *(v11 + 4) = v25;
  *(v11 + 5) = v14;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v15 = v27;
  v16 = v28;
  v17 = v30;
  *(v11 + 8) = v29;
  *(v11 + 9) = v17;
  *(v11 + 6) = v15;
  *(v11 + 7) = v16;
  v18 = v31;
  v19 = v32;
  v20 = v33[0];
  *(v11 + 201) = *(v33 + 9);
  *(v11 + 11) = v19;
  *(v11 + 12) = v20;
  *(v11 + 10) = v18;
  *(v1 + 32) = v7;
  return swift_endAccess();
}

uint64_t static UsoBuilderConversionUtils.copyEntityDataToEntityBuilder(entityBuilder:entity:copyValueType:copyIdentifiers:copyUtteranceAlignments:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v10 = a2[6];
  result = sub_1C0517C50(v10, a4, a5, a4);
  if (result)
  {
    type metadata accessor for UsoEntityBuilder();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      if (a3)
      {
        v19 = a2[3];
        v20 = a1[6];
        a1[5] = a2[2];
        a1[6] = v19;

        if ((v6 & 1) == 0)
        {
LABEL_5:
          if ((v5 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }
      }

      else if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      v21 = a2[5];
      swift_beginAccess();

      sub_1C0522140(v22);
      swift_endAccess();
      if ((v5 & 1) == 0)
      {
LABEL_6:
        if ((v6 & 1) == 0)
        {
LABEL_8:
          swift_beginAccess();
          v16 = *(v13 + 56);
          swift_beginAccess();

          v17 = a1[7];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = a1[7];
          a1[7] = 0x8000000000000000;
          sub_1C0522548(v16, sub_1C05227D4, 0, isUniquelyReferenced_nonNull_native, &v25);

          a1[7] = v25;
          swift_endAccess();
        }

LABEL_7:
        v14 = a2[7];
        swift_beginAccess();

        sub_1C0522448(v15);
        swift_endAccess();
        goto LABEL_8;
      }

LABEL_15:
      v23 = *(v10 + 24);
      swift_unownedRetainStrong();
      v24 = *(v23 + 112);

      sub_1C0522240(v24);
      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1C0522140(uint64_t result)
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
  *v1 = v3;
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0519CF8(result, v11, 1, v3);
  v3 = result;
  *v1 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0522240(uint64_t result)
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
  *v1 = v3;
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C052233C(result, v11, 1, v3);
  v3 = result;
  *v1 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C052233C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172D8, &qword_1C0970AC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C0522448(uint64_t result)
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
  *v1 = v3;
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0522E00(result, v11, 1, v3);
  v3 = result;
  *v1 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0522548(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v48[0] = *v17;
    v48[1] = v18;
    v48[2] = v19;

    a2(&v45, v48);

    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = *v49;
    v25 = sub_1C0516A8C(v45, v46);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v44 & 1) == 0)
      {
        sub_1C066FDF8();
      }
    }

    else
    {
      v30 = v49;
      sub_1C0516A78(v28, v44 & 1);
      v31 = *v30;
      v32 = sub_1C0516A8C(v20, v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v25 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v49;
    if (v29)
    {

      v12 = v34[7];
      v13 = *(v12 + 8 * v25);
      *(v12 + 8 * v25) = v22;
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v20;
      v35[1] = v21;
      *(v34[7] + 8 * v25) = v22;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v14;
    v6 = v41;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_1C052281C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t sub_1C05227D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_1C0522824()
{
  result = qword_1ED5BDEC0;
  if (!qword_1ED5BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEC0);
  }

  return result;
}

uint64_t sub_1C0522878(uint64_t *a1)
{
  v21 = a1[1];
  v22 = *a1;
  v23 = a1[3];
  v24 = a1[2];
  v1 = a1[6];
  v2 = *(a1 + 56);
  v3 = *(a1 + 57);
  v4 = *(a1 + 15);
  v5 = *(a1 + 64);
  v19 = *(a1 + 17);
  v6 = *(a1 + 72);
  if (a1[5])
  {
    v7 = a1[4];
    strcpy(v26, ", namespace=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    MEMORY[0x1C68DD690](v7);
    v8 = v26[1];
    v20 = v26[0];
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0x6261626F7270202CLL, 0xEE003D7974696C69);
    sub_1C095DA1C();
    goto LABEL_6;
  }

  v20 = 0;
  v8 = 0xE000000000000000;
  if ((a1[7] & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  if (v3 == 7)
  {
    goto LABEL_22;
  }

  v26[0] = 0xD000000000000012;
  v26[1] = 0x80000001C09CD750;
  if (v3 > 2)
  {
    if (v3 > 4)
    {
      if (v3 == 5)
      {
        v9 = 0x4143726573726150;
        v10 = 0xEA00000000004954;
      }

      else
      {
        v9 = 0x5353726573726150;
        v10 = 0xE900000000000055;
      }
    }

    else if (v3 == 3)
    {
      v9 = 0x526E6F69746E654DLL;
      v10 = 0xEF7265766C6F7365;
    }

    else
    {
      v9 = 0xD000000000000013;
      v10 = 0x80000001C09CD610;
    }

    goto LABEL_21;
  }

  if (!v3)
  {
    v9 = 0x6E776F6E6B6E75;
LABEL_18:
    v10 = 0xE700000000000000;
    goto LABEL_21;
  }

  if (v3 != 1)
  {
    v9 = 0x656C6946636F56;
    goto LABEL_18;
  }

  v9 = 0x61636F5669726953;
  v10 = 0xE900000000000062;
LABEL_21:
  MEMORY[0x1C68DD690](v9, v10);
LABEL_22:
  if ((v5 & 1) == 0)
  {
    strcpy(v25, ", groupIndex=");
    HIWORD(v25[1]) = -4864;
    v16 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v16);

    v11 = v25[0];
    v12 = v25[1];
    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    v15 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_27;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  if (v6)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_1C095DC1C();

  v13 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v13);

  v15 = 0xD000000000000016;
  v14 = 0x80000001C09CD9A0;
LABEL_27:
  sub_1C095DC1C();
  MEMORY[0x1C68DD690](0xD000000000000019, 0x80000001C09CD980);
  v17 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v17);

  MEMORY[0x1C68DD690](0x3D65756C6176202CLL, 0xE800000000000000);
  MEMORY[0x1C68DD690](v22, v21);
  MEMORY[0x1C68DD690](0x6E7542707061202CLL, 0xEC0000003D656C64);
  MEMORY[0x1C68DD690](v24, v23);
  MEMORY[0x1C68DD690](v20, v8);

  MEMORY[0x1C68DD690](0, 0xE000000000000000);

  MEMORY[0x1C68DD690](v26[0], v26[1]);

  MEMORY[0x1C68DD690](v11, v12);

  MEMORY[0x1C68DD690](v15, v14);

  MEMORY[0x1C68DD690](93, 0xE100000000000000);
  return 0;
}

uint64_t UsoPrimitiveStringBuilder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t UsoEntityBuilder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

char *sub_1C0522E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17350, &unk_1C0970B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C0522F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_1ED5BDDB8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1ED5BDDC0;
}

uint64_t sub_1C0522FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_1C095D4BC();
  return swift_endAccess();
}

uint64_t sub_1C0523050(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  swift_beginAccess();
  return *(v1 + 17);
}

uint64_t sub_1C052314C(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20)) + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1C05231C0(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

BOOL _s12SiriOntology13UsoIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v32 = *(a1 + 57);
  v30 = *(a1 + 64);
  v23 = *(a1 + 68);
  v27 = *(a1 + 60);
  v28 = *(a1 + 72);
  v20 = *(a1 + 80);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v31 = *(a2 + 57);
  v24 = *(a1 + 88);
  v25 = *(a2 + 60);
  v29 = *(a2 + 64);
  v26 = *(a2 + 72);
  v19 = *(a2 + 80);
  v21 = *(a2 + 68);
  v22 = *(a2 + 88);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1C095DF3C() & 1) == 0 || (v2 != v8 || v4 != v9) && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v3 != v11 || v5 != v10) && (sub_1C095DF3C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v32 == 7)
  {
    if (v31 != 7)
    {
      return 0;
    }

    goto LABEL_26;
  }

  result = 0;
  if (v31 != 7 && v32 == v31)
  {
LABEL_26:
    if (v30)
    {
      if (!v29)
      {
        return 0;
      }
    }

    else
    {
      v16 = v29;
      if (v27 != v25)
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    if (v28)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      v17 = v26;
      if (v23 != v21)
      {
        v17 = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    if ((v24 & 1) == 0)
    {
      v18 = v22;
      if (v20 != v19)
      {
        v18 = 1;
      }

      return (v18 & 1) == 0;
    }

    return (v22 & 1) != 0;
  }

  return result;
}

uint64_t UsoTask.verbString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static AppOntologyNode.applicationIdNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t TerminalOntologyNode.name.getter()
{
  v0 = sub_1C051D38C();

  return v0;
}

uint64_t sub_1C0523574(void *a1)
{
  v3 = *v1;

  sub_1C0523914(a1, v3);
}

uint64_t UsoIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F850, &qword_1C099A190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v32 = v1[3];
  v33 = v10;
  v11 = v1[4];
  v30 = v1[5];
  v31 = v11;
  v29 = v1[6];
  LODWORD(v11) = *(v1 + 56);
  v27 = *(v1 + 57);
  v28 = v11;
  v25 = *(v1 + 15);
  v24 = *(v1 + 64);
  v23 = *(v1 + 17);
  v22 = *(v1 + 72);
  v26 = v1[10];
  v12 = *(v1 + 88);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_1C0525E40();
  sub_1C095E05C();
  v45 = 0;
  v18 = v34;
  sub_1C095DEBC();
  if (v18)
  {
    return (*(v4 + 8))(v7, v17);
  }

  v19 = v27;
  LODWORD(v34) = v12;
  v44 = 1;
  sub_1C095DEBC();
  v43 = 2;
  sub_1C095DE4C();
  v42 = 3;
  sub_1C095DE5C();
  v41 = v19;
  v40 = 4;
  sub_1C0525E94();
  sub_1C095DE8C();
  v39 = 5;
  v38 = v24;
  sub_1C095DEAC();
  v37 = 6;
  v36 = v22;
  sub_1C095DEAC();
  v35 = 7;
  sub_1C095DE7C();
  return MEMORY[8](v7, v17);
}

uint64_t sub_1C05238D0(uint64_t a1)
{

  sub_1C0523914(a1, v1);
}

uint64_t sub_1C0523914(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F678, &qword_1C0998750);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v184 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C051CFF8();
  sub_1C095E05C();
  if (!a2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v13 = a2[2];
  v12 = a2[3];
  *&v207 = 0x6570797423;
  *(&v207 + 1) = 0xE500000000000000;
  *&v208 = 0;
  BYTE8(v208) = 1;

  sub_1C095DEBC();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  v196 = v10;
  v15 = a2[5];
  v16 = *(v15 + 16);
  v192 = a2;
  if (v16)
  {
    v206[0] = v15;
    strcpy(&v207, "#identifiers");
    BYTE13(v207) = 0;
    HIWORD(v207) = -5120;
    *&v208 = 0;
    BYTE8(v208) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17200, &qword_1C09709D8);
    sub_1C0766324();
    sub_1C095DECC();

    a2 = v192;
  }

  if (*(a2[7] + 16))
  {
    v206[0] = a2[7];
    strcpy(&v207, "#entitySpans");
    BYTE13(v207) = 0;
    HIWORD(v207) = -5120;
    *&v208 = 0;
    BYTE8(v208) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17338, &qword_1C0970B30);
    sub_1C07663FC();
    sub_1C095DECC();

    a2 = v192;
  }

  v17 = a2[4];
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v187 = (v19 + 63) >> 6;
  v188 = v17;

  v22 = 0;
  v185 = v18;
  v186 = v7;
  v195 = v6;
  while (1)
  {
    result = v196;
    if (!v21)
    {
      break;
    }

    v23 = v22;
LABEL_18:
    v189 = v23;
    v190 = v21;
    v24 = __clz(__rbit64(v21)) | (v23 << 6);
    v25 = *(v188 + 56);
    v26 = (*(v188 + 48) + 16 * v24);
    v27 = v26[1];
    v194 = *v26;
    v28 = *(v25 + 8 * v24);
    if (v28 >> 62)
    {
      v183 = v27;
      v29 = sub_1C095DCDC();
      v27 = v183;
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v191 = 0;
    v193 = v27;
    if (v29)
    {
      v203 = v28 & 0xC000000000000001;
      v197 = v28 + 32;
      v198 = v28 & 0xFFFFFFFFFFFFFF8;
      swift_bridgeObjectRetain_n();
      v201 = v28;

      v30 = 0;
      v31 = MEMORY[0x1E69E7CC0];
      v32 = MEMORY[0x1E69E7CC0];
      v33 = MEMORY[0x1E69E7CC0];
      v202 = v29;
      while (1)
      {
        if (v203)
        {
          result = MEMORY[0x1C68DDAD0](v30, v201);
          v229 = result;
          v35 = __OFADD__(v30, 1);
          v36 = v30 + 1;
          if (v35)
          {
            goto LABEL_132;
          }
        }

        else
        {
          if (v30 >= *(v198 + 16))
          {
            goto LABEL_134;
          }

          v229 = *(v197 + 8 * v30);

          v35 = __OFADD__(v30, 1);
          v36 = v30 + 1;
          if (v35)
          {
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }
        }

        v204 = v36;
        v205 = v32;
        v37 = v229;
        v38 = *(v229 + 24);
        swift_unownedRetainStrong();
        v40 = *(v38 + 80);
        v39 = *(v38 + 88);

        if (v40 == 0x5664656E69666544 && v39 == 0xEC00000065756C61)
        {

LABEL_39:
          v46 = *(v37 + 24);
          swift_unownedRetainStrong();
          v48 = *(v46 + 64);
          v47 = *(v46 + 72);

          if (qword_1ED5BDED8 != -1)
          {
            swift_once();
          }

          if (v48 == qword_1ED5BDEE0 && v47 == *algn_1ED5BDEE8)
          {

LABEL_45:
            swift_unownedRetainStrong();
            v50 = *(v46 + 24);
            v51 = *(v46 + 32);
            v52 = *(v46 + 40);
            sub_1C0514B20(v50, v51, *(v46 + 40));

            if (v52 != 255)
            {
              if (v52)
              {
                sub_1C05144FC(v50, v51, v52);
              }

              else if ((v51 & 1) == 0)
              {
                v81 = *(v37 + 24);
                swift_unownedRetainStrong();
                swift_beginAccess();
                v82 = *(v81 + 104);

                v83 = *(v82 + 16);
                v200 = v50;
                if (v83)
                {
                  v84 = *(v205 + 2);
                  v85 = v83 - 1;
                  for (i = 32; ; i += 96)
                  {
                    v87 = *(v82 + i + 16);
                    v207 = *(v82 + i);
                    v208 = v87;
                    v88 = *(v82 + i + 32);
                    v89 = *(v82 + i + 48);
                    v90 = *(v82 + i + 64);
                    *(v211 + 9) = *(v82 + i + 73);
                    v210 = v89;
                    v211[0] = v90;
                    v209 = v88;
                    v91 = *(v82 + i);
                    v92 = *(v82 + i + 16);
                    v93 = *(v82 + i + 64);
                    v220 = *(v82 + i + 48);
                    v221 = v93;
                    v94 = *(v82 + i + 32);
                    v218 = v92;
                    v219 = v94;
                    v217 = v91;
                    v228 = 0;
                    sub_1C0518B04(&v207, v206);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v33 = sub_1C0519CF8(0, *(v33 + 2) + 1, 1, v33);
                    }

                    v96 = *(v33 + 2);
                    v95 = *(v33 + 3);
                    if (v96 >= v95 >> 1)
                    {
                      v33 = sub_1C0519CF8((v95 > 1), v96 + 1, 1, v33);
                    }

                    *(v33 + 2) = v96 + 1;
                    v97 = &v33[96 * v96];
                    *(v97 + 2) = v217;
                    v98 = v218;
                    v99 = v219;
                    v100 = v221;
                    *(v97 + 5) = v220;
                    *(v97 + 6) = v100;
                    *(v97 + 3) = v98;
                    *(v97 + 4) = v99;
                    *(v97 + 14) = v84;
                    v97[120] = 0;
                    if (!v85)
                    {
                      break;
                    }

                    --v85;
                  }

                  v32 = v205;
                  v37 = v229;
                  v50 = v200;
                }

                else
                {

                  v32 = v205;
                }

                v140 = *(v37 + 24);
                swift_unownedRetainStrong();
                swift_beginAccess();
                v141 = *(v140 + 120);

                v142 = *(v141 + 16);
                if (v142)
                {
                  v143 = *(v32 + 2);
                  v144 = v142 - 1;
                  for (j = 32; ; j += 192)
                  {
                    v146 = *(v141 + j);
                    v147 = *(v141 + j + 16);
                    v148 = *(v141 + j + 48);
                    v209 = *(v141 + j + 32);
                    v210 = v148;
                    v207 = v146;
                    v208 = v147;
                    v149 = *(v141 + j + 64);
                    v150 = *(v141 + j + 80);
                    v151 = *(v141 + j + 112);
                    v212 = *(v141 + j + 96);
                    v213 = v151;
                    v211[0] = v149;
                    v211[1] = v150;
                    v152 = *(v141 + j + 128);
                    v153 = *(v141 + j + 144);
                    v154 = *(v141 + j + 160);
                    *(v216 + 9) = *(v141 + j + 169);
                    v215 = v153;
                    v216[0] = v154;
                    v214 = v152;
                    v155 = *(v141 + j + 144);
                    v225 = *(v141 + j + 128);
                    v226 = v155;
                    v227 = *(v141 + j + 160);
                    v156 = *(v141 + j + 80);
                    v221 = *(v141 + j + 64);
                    v222 = v156;
                    v157 = *(v141 + j + 112);
                    v223 = *(v141 + j + 96);
                    v224 = v157;
                    v158 = *(v141 + j + 16);
                    v217 = *(v141 + j);
                    v218 = v158;
                    v159 = *(v141 + j + 48);
                    v219 = *(v141 + j + 32);
                    v220 = v159;
                    v228 = 0;
                    sub_1C0521E78(&v207, v206);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v31 = sub_1C0522E00(0, *(v31 + 2) + 1, 1, v31);
                    }

                    v161 = *(v31 + 2);
                    v160 = *(v31 + 3);
                    if (v161 >= v160 >> 1)
                    {
                      v31 = sub_1C0522E00((v160 > 1), v161 + 1, 1, v31);
                    }

                    *(v31 + 2) = v161 + 1;
                    v162 = &v31[192 * v161];
                    v163 = v217;
                    v164 = v219;
                    *(v162 + 3) = v218;
                    *(v162 + 4) = v164;
                    *(v162 + 2) = v163;
                    v165 = v220;
                    v166 = v221;
                    v167 = v223;
                    *(v162 + 7) = v222;
                    *(v162 + 8) = v167;
                    *(v162 + 5) = v165;
                    *(v162 + 6) = v166;
                    v168 = v224;
                    v169 = v225;
                    v170 = v227;
                    *(v162 + 11) = v226;
                    *(v162 + 12) = v170;
                    *(v162 + 9) = v168;
                    *(v162 + 10) = v169;
                    *(v162 + 26) = v143;
                    v162[216] = 0;
                    if (!v144)
                    {
                      break;
                    }

                    --v144;
                  }

                  v32 = v205;
                  v34 = v202;
                  v50 = v200;
                }

                else
                {

                  v34 = v202;
                }

                v171 = swift_allocObject();
                *(v171 + 16) = v50;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v32 = sub_1C0524C9C(0, *(v32 + 2) + 1, 1, v32);
                }

                v173 = *(v32 + 2);
                v172 = *(v32 + 3);
                if (v173 >= v172 >> 1)
                {
                  v32 = sub_1C0524C9C((v172 > 1), v173 + 1, 1, v32);
                }

                *(v32 + 2) = v173 + 1;
                v174 = &v32[16 * v173];
                *(v174 + 4) = sub_1C0766558;
                *(v174 + 5) = v171;
                goto LABEL_23;
              }
            }
          }

          else
          {
            v49 = sub_1C095DF3C();

            if (v49)
            {
              goto LABEL_45;
            }
          }

          v53 = sub_1C0518BC4();
          if (v53)
          {
            v54 = v53;

            v32 = v205;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v34 = v202;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v32 = sub_1C0524C9C(0, *(v32 + 2) + 1, 1, v32);
            }

            v57 = *(v32 + 2);
            v56 = *(v32 + 3);
            if (v57 >= v56 >> 1)
            {
              v32 = sub_1C0524C9C((v56 > 1), v57 + 1, 1, v32);
            }

            *(v32 + 2) = v57 + 1;
            v58 = &v32[16 * v57];
            *(v58 + 4) = sub_1C05238D0;
            *(v58 + 5) = v54;
          }

          else
          {

            v32 = v205;
            v34 = v202;
          }

          goto LABEL_23;
        }

        v42 = sub_1C095DF3C();

        if (v42)
        {
          goto LABEL_39;
        }

        v43 = *(v37 + 24);
        swift_unownedRetainStrong();
        v45 = *(v43 + 80);
        v44 = *(v43 + 88);

        if (v45 == 0x5664656E69666544 && v44 == 0xEC00000065756C61)
        {
          break;
        }

        v59 = sub_1C095DF3C();

        if (v59)
        {
          goto LABEL_56;
        }

        swift_unownedRetainStrong();
        v139 = *(v43 + 64);
        v138 = *(v43 + 72);

        if (qword_1ED5D7CA0 != -1)
        {
          swift_once();
        }

        if (v139 == qword_1ED5D7CA8 && v138 == unk_1ED5D7CB0)
        {
        }

        else
        {
          v175 = sub_1C095DF3C();

          if ((v175 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        swift_unownedRetainStrong();
        v176 = *(v43 + 32);
        v177 = *(v43 + 40);
        v199 = *(v43 + 24);
        v200 = v176;
        sub_1C0514B20(v199, v176, v177);

        if (v177 == 255 || (v177 & 1) == 0 || !v200)
        {
          goto LABEL_39;
        }

LABEL_57:
        v61 = *(v37 + 24);
        swift_unownedRetainStrong();
        swift_beginAccess();
        v62 = *(v61 + 104);

        v63 = *(v62 + 16);
        if (v63)
        {
          v64 = *(v205 + 2);
          v65 = v63 - 1;
          for (k = 32; ; k += 96)
          {
            v67 = *(v62 + k + 16);
            v207 = *(v62 + k);
            v208 = v67;
            v68 = *(v62 + k + 32);
            v69 = *(v62 + k + 48);
            v70 = *(v62 + k + 64);
            *(v211 + 9) = *(v62 + k + 73);
            v210 = v69;
            v211[0] = v70;
            v209 = v68;
            v71 = *(v62 + k);
            v72 = *(v62 + k + 16);
            v73 = *(v62 + k + 64);
            v220 = *(v62 + k + 48);
            v221 = v73;
            v74 = *(v62 + k + 32);
            v218 = v72;
            v219 = v74;
            v217 = v71;
            v228 = 0;
            sub_1C0518B04(&v207, v206);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_1C0519CF8(0, *(v33 + 2) + 1, 1, v33);
            }

            v76 = *(v33 + 2);
            v75 = *(v33 + 3);
            if (v76 >= v75 >> 1)
            {
              v33 = sub_1C0519CF8((v75 > 1), v76 + 1, 1, v33);
            }

            *(v33 + 2) = v76 + 1;
            v77 = &v33[96 * v76];
            *(v77 + 2) = v217;
            v78 = v218;
            v79 = v219;
            v80 = v221;
            *(v77 + 5) = v220;
            *(v77 + 6) = v80;
            *(v77 + 3) = v78;
            *(v77 + 4) = v79;
            *(v77 + 14) = v64;
            v77[120] = 0;
            if (!v65)
            {
              break;
            }

            --v65;
          }

          v37 = v229;
        }

        else
        {
        }

        v101 = *(v37 + 24);
        swift_unownedRetainStrong();
        swift_beginAccess();
        v102 = *(v101 + 120);

        v103 = *(v102 + 16);
        if (v103)
        {
          v104 = *(v205 + 2);
          v105 = v103 - 1;
          for (m = 32; ; m += 192)
          {
            v107 = *(v102 + m);
            v108 = *(v102 + m + 16);
            v109 = *(v102 + m + 48);
            v209 = *(v102 + m + 32);
            v210 = v109;
            v207 = v107;
            v208 = v108;
            v110 = *(v102 + m + 64);
            v111 = *(v102 + m + 80);
            v112 = *(v102 + m + 112);
            v212 = *(v102 + m + 96);
            v213 = v112;
            v211[0] = v110;
            v211[1] = v111;
            v113 = *(v102 + m + 128);
            v114 = *(v102 + m + 144);
            v115 = *(v102 + m + 160);
            *(v216 + 9) = *(v102 + m + 169);
            v215 = v114;
            v216[0] = v115;
            v214 = v113;
            v116 = *(v102 + m + 144);
            v225 = *(v102 + m + 128);
            v226 = v116;
            v227 = *(v102 + m + 160);
            v117 = *(v102 + m + 80);
            v221 = *(v102 + m + 64);
            v222 = v117;
            v118 = *(v102 + m + 112);
            v223 = *(v102 + m + 96);
            v224 = v118;
            v119 = *(v102 + m + 16);
            v217 = *(v102 + m);
            v218 = v119;
            v120 = *(v102 + m + 48);
            v219 = *(v102 + m + 32);
            v220 = v120;
            v228 = 0;
            sub_1C0521E78(&v207, v206);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_1C0522E00(0, *(v31 + 2) + 1, 1, v31);
            }

            v122 = *(v31 + 2);
            v121 = *(v31 + 3);
            if (v122 >= v121 >> 1)
            {
              v31 = sub_1C0522E00((v121 > 1), v122 + 1, 1, v31);
            }

            *(v31 + 2) = v122 + 1;
            v123 = &v31[192 * v122];
            v124 = v217;
            v125 = v219;
            *(v123 + 3) = v218;
            *(v123 + 4) = v125;
            *(v123 + 2) = v124;
            v126 = v220;
            v127 = v221;
            v128 = v223;
            *(v123 + 7) = v222;
            *(v123 + 8) = v128;
            *(v123 + 5) = v126;
            *(v123 + 6) = v127;
            v129 = v224;
            v130 = v225;
            v131 = v227;
            *(v123 + 11) = v226;
            *(v123 + 12) = v131;
            *(v123 + 9) = v129;
            *(v123 + 10) = v130;
            *(v123 + 26) = v104;
            v123[216] = 0;
            if (!v105)
            {
              break;
            }

            --v105;
          }
        }

        v34 = v202;
        v132 = swift_allocObject();
        v133 = v200;
        *(v132 + 16) = v199;
        *(v132 + 24) = v133;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v205 = sub_1C0524C9C(0, *(v205 + 2) + 1, 1, v205);
        }

        v135 = *(v205 + 2);
        v134 = *(v205 + 3);
        if (v135 >= v134 >> 1)
        {
          v205 = sub_1C0524C9C((v134 > 1), v135 + 1, 1, v205);
        }

        v136 = v205;
        *(v205 + 2) = v135 + 1;
        v137 = &v136[16 * v135];
        *(v137 + 4) = sub_1C0524EC4;
        *(v137 + 5) = v132;
        v32 = v136;
LABEL_23:
        v30 = v204;
        if (v204 == v34)
        {

          goto LABEL_117;
        }
      }

LABEL_56:
      swift_unownedRetainStrong();
      v60 = *(v43 + 72);
      v199 = *(v43 + 64);
      v200 = v60;

      goto LABEL_57;
    }

    swift_bridgeObjectRetain_n();
    v31 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
LABEL_117:
    v21 = (v190 - 1) & v190;
    if (*(v32 + 2) == 1)
    {
      v178 = *(v32 + 5);
      v206[0] = *(v32 + 4);
      v206[1] = v178;
      v179 = v193;
      *&v207 = v194;
      *(&v207 + 1) = v193;
      *&v208 = 0;
      BYTE8(v208) = 1;
      sub_1C0524EE0();

      v180 = v191;
      sub_1C095DECC();
      if (v180)
      {

        (*(v186 + 8))(v196, v195);

        goto LABEL_131;
      }

      if (*(v33 + 2))
      {
        *&v207 = v194;
        *(&v207 + 1) = v179;
LABEL_124:

        MEMORY[0x1C68DD690](0x6669746E65646923, 0xEC00000073726569);
        v206[0] = v33;
        *&v208 = 0;
        BYTE8(v208) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17200, &qword_1C09709D8);
        sub_1C0766324();
        sub_1C095DECC();
      }
    }

    else
    {
      v206[0] = v32;
      v181 = v193;
      *&v207 = v194;
      *(&v207 + 1) = v193;
      *&v208 = 0;
      BYTE8(v208) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F680, &qword_1C0998758);
      sub_1C07664D4();
      v182 = v191;
      sub_1C095DECC();
      if (v182)
      {

        (*(v186 + 8))(v196, v195);

LABEL_131:
      }

      if (*(v33 + 2))
      {
        *&v207 = v194;
        *(&v207 + 1) = v181;
        goto LABEL_124;
      }
    }

    v7 = v186;
    if (*(v31 + 2))
    {
      *&v207 = v194;
      *(&v207 + 1) = v193;
      MEMORY[0x1C68DD690](0x53797469746E6523, 0xEC000000736E6170);
      v206[0] = v31;
      *&v208 = 0;
      BYTE8(v208) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17338, &qword_1C0970B30);
      sub_1C07663FC();
      sub_1C095DECC();
    }

    v22 = v189;
    v6 = v195;
    v18 = v185;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v187)
    {
      (*(v7 + 8))(v196, v6);
    }

    v21 = *(v18 + 8 * v23);
    ++v22;
    if (v21)
    {
      goto LABEL_18;
    }
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1C0524C64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

char *sub_1C0524C9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17328, &qword_1C0970B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C0524DA8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

unint64_t sub_1C0524E2C()
{
  result = qword_1ED5D34E8;
  if (!qword_1ED5D34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34E8);
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

uint64_t sub_1C0524EC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C095D80C();
}

unint64_t sub_1C0524EE0()
{
  result = qword_1ED5BD7D8[0];
  if (!qword_1ED5BD7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5BD7D8);
  }

  return result;
}

uint64_t _s9ContinentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1C0524FD4()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 0xD000000000000013;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6F43656372756F73;
  if (v1 != 4)
  {
    v4 = 0x646E4970756F7267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63617073656D616ELL;
  if (v1 != 2)
  {
    v5 = 0x6C696261626F7270;
  }

  if (*v0)
  {
    v2 = 0x6C646E7542707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C0525164(__n128 a1, __n128 a2, __n128 a3)
{
  *(v3 + 40) = a1;
  *(v3 + 56) = xmmword_1C0983570;
  *(v3 + 72) = 0xD000000000000015;
  *(v3 + 80) = 0x80000001C09CE4C0;
  *(v3 + 88) = xmmword_1C0975360;
  *(v3 + 104) = a2;
  *(v3 + 120) = a3;
  *(v3 + 136) = xmmword_1C0982D00;

  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 152) = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v4;
  *(v3 + 24) = v4;

  *(v3 + 32) = v4;
  return v3;
}

uint64_t sub_1C052529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C0970C90;
  type metadata accessor for UsoPrimitiveStringBuilder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  v11[5] = a1;
  v11[6] = a2;
  v11[2] = v12;
  v11[3] = v12;
  v11[4] = v12;
  *(v10 + 32) = v11;

  v13 = *(v7 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + 56);
  *(v7 + 56) = 0x8000000000000000;
  sub_1C051D194(v10, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v7 + 56) = v16;
  return swift_endAccess();
}

void *UsoEntityBuilder_common_PersonName.init()()
{
  v0[5] = 0xD000000000000011;
  v0[6] = 0x80000001C09CE250;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C0525608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a3, a4, v5 + 56, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C052569C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v10 == MEMORY[0x1E69E6158])
  {

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v17 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C0970C90;
    type metadata accessor for UsoPrimitiveStringBuilder();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E7CC0];
    v19[6] = v23;
  }

  else
  {
    if (v10 != MEMORY[0x1E69E7360])
    {
      type metadata accessor for UsoBuilder();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v12 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1C0970C90;
      *(v13 + 32) = v12;

      v14 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *a3;
      *a3 = 0x8000000000000000;
      v16 = v13;
      goto LABEL_10;
    }

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v17 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C0970C90;
    type metadata accessor for UsoPrimitiveIntegerBuilder();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E7CC0];
    *(v19 + 48) = 0;
  }

  v19[2] = v20;
  v19[3] = v20;
  v19[4] = v20;
  v19[5] = v17;
  *(v18 + 32) = v19;

  v21 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *a3;
  *a3 = 0x8000000000000000;
  v16 = v18;
LABEL_10:
  sub_1C051D194(v16, a1, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v24;
  return result;
}

uint64_t sub_1C05258F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C0525688(0xD000000000000016, 0x80000001C09DDDA0, (v2 + 56), a1, a2);
  return swift_endAccess();
}

void *UsoEntityBuilder_common_PhoneNumber.init()()
{
  v0[5] = 0xD000000000000012;
  v0[6] = 0x80000001C09CDFB0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1C0517888(MEMORY[0x1E69E7CC0]);
  v0[2] = v1;
  v0[3] = v1;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1C0525AA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C0525B20(0xD000000000000018, 0x80000001C09D8120, (v2 + 56), a1, a2);
  return swift_endAccess();
}

uint64_t static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v8 = qword_1ED5CE288;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED5DA968;
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    if (*(qword_1ED5DA968 + 16))
    {
      v12 = *(a1 + 24);

      v13 = sub_1C0516A8C(v11, v10);
      v15 = v14;

      if (v15)
      {
        v16 = *(*(v9 + 56) + 8 * v13);
        if (v16 == a2)
        {
LABEL_14:
          (*(v16 + 88))(a1);
          type metadata accessor for CodeGenBase();
          v25 = swift_dynamicCast();
          return (*(*(a3 - 8) + 56))(a4, v25 ^ 1u, 1, a3);
        }
      }
    }

    if (qword_1ED5CE280 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED5DA960;
    if (*(qword_1ED5DA960 + 16))
    {

      v18 = sub_1C0516A8C(v11, v10);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v18);
        v22 = *(v21 + 16);
        v23 = (v21 + 32);
        while (v22)
        {
          v24 = *v23++;
          v16 = v24;
          --v22;
          if (v24 == a2)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  v27 = *(*(a3 - 8) + 56);

  return v27(a4, 1, 1, a3);
}

uint64_t sub_1C0525D7C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UsoEntity_uso_NoEntity.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1C0525E40()
{
  result = qword_1ED5D3500;
  if (!qword_1ED5D3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3500);
  }

  return result;
}

unint64_t sub_1C0525E94()
{
  result = qword_1ED5BD7D0;
  if (!qword_1ED5BD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BD7D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoIdentifier.NluComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9ContinentOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1C0526028@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for UsoEntity();
  v5 = swift_allocObject();
  result = UsoEntity.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1C0526080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C05260E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t UsoIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F858, &qword_1C099A198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v53 = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C0525E40();
  sub_1C095E04C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44[0]) = 0;
  v11 = sub_1C095DDEC();
  v38 = v12;
  LOBYTE(v44[0]) = 1;
  v13 = sub_1C095DDEC();
  v37 = v14;
  v35 = v13;
  LOBYTE(v44[0]) = 2;
  v34 = sub_1C095DD7C();
  v36 = v15;
  LOBYTE(v44[0]) = 3;
  v33 = sub_1C095DD8C();
  v56 = v16 & 1;
  LOBYTE(v39) = 4;
  sub_1C0526674();
  sub_1C095DDBC();
  v17 = LOBYTE(v44[0]);
  LOBYTE(v44[0]) = 5;
  v18 = sub_1C095DDDC();
  v32 = v17;
  v55 = BYTE4(v18) & 1;
  LOBYTE(v44[0]) = 6;
  v19 = v18;
  v30 = sub_1C095DDDC();
  v54 = BYTE4(v30) & 1;
  v57 = 7;
  v31 = sub_1C095DDAC();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  v21 &= 1u;
  v53 = v21;
  *&v39 = v11;
  *(&v39 + 1) = v38;
  *&v40 = v35;
  *(&v40 + 1) = v37;
  *&v41 = v34;
  *(&v41 + 1) = v36;
  *&v42 = v33;
  v29 = v56;
  BYTE8(v42) = v56;
  BYTE9(v42) = v32;
  HIDWORD(v42) = v19;
  v28 = v55;
  v43[0] = v55;
  v22 = v30;
  *&v43[4] = v30;
  v23 = v54;
  v43[8] = v54;
  v24 = v31;
  *&v43[16] = v31;
  v43[24] = v21;
  v25 = v40;
  *a2 = v39;
  a2[1] = v25;
  v26 = *v43;
  a2[3] = v42;
  a2[4] = v26;
  a2[2] = v41;
  *(a2 + 73) = *&v43[9];
  sub_1C0518B04(&v39, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44[0] = v11;
  v44[1] = v38;
  v44[2] = v35;
  v44[3] = v37;
  v44[4] = v34;
  v44[5] = v36;
  v44[6] = v33;
  v45 = v29;
  v46 = v32;
  v47 = v19;
  v48 = v28;
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = v21;
  return sub_1C0518B60(v44);
}

unint64_t sub_1C0526674()
{
  result = qword_1ED5D34E0;
  if (!qword_1ED5D34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34E0);
  }

  return result;
}

SiriOntology::UsoIdentifier::NluComponent_optional __swiftcall UsoIdentifier.NluComponent.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t storeEnumTagSinglePayload for UsoIdentifier.NluComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1C0526818()
{
  result = qword_1ED5D34C8;
  if (!qword_1ED5D34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34C8);
  }

  return result;
}

uint64_t sub_1C052686C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C051B318(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology19IdentifierNamespaceO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C0526B38(void *result, int a2)
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

void sub_1C0526B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = type metadata accessor for Field();
  Field.wrappedValue.getter(v4);
}

void sub_1C0526B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = type metadata accessor for Field();
  Field.projectedValue.getter(v4);
}

uint64_t sub_1C0526C08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C0526C64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1C0527048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C0527144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C095D38C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C052724C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology15TerminalElementV4TimeVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_1C0527470@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

double sub_1C052760C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_1C0527670@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1C05276CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_1C0527728@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 42);
  return result;
}

uint64_t sub_1C0527784@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 44);
  return result;
}

uint64_t sub_1C05277E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1C052783C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 52);
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Siri_Product_Proto_MatchType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Siri_Product_Proto_MatchType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C05279F8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0527A14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0527AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0527B64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C0527C94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C0527DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_1C095D38C();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C0527EC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1C095D38C();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1C0527FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0528084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0528128(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[9]];

  return v16(v17, a2, v15);
}

char *sub_1C0528300(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C05284E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C052854C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C05285BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C095D38C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C05286EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C095D38C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C052891C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C095D38C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1C0528A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C0528AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C095D38C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0528B9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1C0528C48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0528CF4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C0528F2C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Siri_Product_Proto_Period.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C05290D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C095D38C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C0529184(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0529224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C052929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C0529318(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C0529448(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C0529578(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0529624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C05296C8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[14];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[16];

  return v15(v16, a2, v14);
}

uint64_t sub_1C052984C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[16];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C05299D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 33);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C095D38C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C0529A84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 33) = a2 + 1;
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0529B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C0529BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C095D38C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C0529CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0529D4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0529E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C0529E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C0529EF4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052A030@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for DynamicTask();
  result = DynamicTask.subscript.getter(v5, v6, v7);
  *a3 = result;
  return result;
}

uint64_t sub_1C052A098@<X0>(void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = type metadata accessor for DynamicTask();
  return DynamicTask<A>.subscript.getter(v7, v8, v5, v6, a3);
}

__n128 sub_1C052A138(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C052A144@<X0>(uint64_t **a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = type metadata accessor for DynamicTask();
  result = DynamicTask<A>.subscript.getter(v7, v8, v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1C052A1BC@<X0>(void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 16);
  v6 = *a1;
  v7 = type metadata accessor for DynamicTask();
  return DynamicTask<A>.subscript.getter(v6, v7, v5, a3);
}

void sub_1C052A650(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C09B28B0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x6C61757145746F6ELL;
    v2 = 0xE900000000000073;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1C052A6CC@<X0>(uint64_t *a1@<X8>)
{
  result = UsoEntity_common_Number.Operators.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C052ACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C052AD98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C052AE44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_unownedRetainStrong();
  v4 = *(v3 + 112);

  *a2 = v4;
  return result;
}

uint64_t sub_1C052AEB8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052AF28@<X0>(uint64_t *a1@<X8>)
{
  result = Metadata.identifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C052AF98@<X0>(uint64_t *a1@<X8>)
{
  result = Metadata.utteranceAlignments.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C052AFFC@<X0>(uint64_t *a1@<X8>)
{
  result = Metadata.entitySpans.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C052B068()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052B0D8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052B4DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C052B548@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Siri_Nl_Core_Protocol_TurnInput(0) + 20));
  v4 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C052C7F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C052C928(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052CA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C052CB04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C052CBB0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_1C052CD88(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C052CF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1C095D38C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C052D0B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1C095D38C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C052D34C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1C052D4D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C052D6A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C052D750(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C052D824(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[10]];

  return v17(v18, a2, v16);
}

char *sub_1C052DA50(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[10]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C052DC7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C095D38C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1C052DE28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C095D38C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1C052DFE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C052E110(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052E240(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C052E2EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C052E390(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C052E4C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052E7E8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v5 = (a1 + *(result + 44));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1C052E830(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v5 = a2 + *(result + 44);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_1C052E86C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v5 = (a1 + *(result + 48));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1C052E8B4(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v5 = a2 + *(result + 48);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_1C052E8F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C052EA28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052EB58(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_1C052ED30(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C052EF58(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1C052F0DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C052F260(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C052F390(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C052F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C052F56C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C052F71C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C052F754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C052F7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C052F850()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052F8C0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C052F99C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for Entity();
  result = Entity.subscript.getter(v5, v6, v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

uint64_t sub_1C052FA54@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for Entity();
  result = Entity.subscript.getter(v5, v6, v7);
  *a3 = result;
  *(a3 + 8) = v9 & 1;
  return result;
}

uint64_t sub_1C052FB74@<X0>(void **a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Entity();
  result = Entity<A>.subscript.getter(v6, v7, v5);
  *a3 = result;
  a3[1] = v9;
  return result;
}

__n128 sub_1C052FBDC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C052FBE8@<X0>(void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Entity();
  result = Entity<A>.subscript.getter(v6, v7, v5);
  *a3 = result;
  *(a3 + 8) = v9 & 1;
  return result;
}

uint64_t sub_1C052FC58@<X0>(void **a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Entity();
  result = Entity<A>.subscript.getter(v6, v7, v5);
  *a3 = result;
  return result;
}

uint64_t sub_1C052FCC0@<X0>(void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = type metadata accessor for Entity();
  return Entity<A>.subscript.getter(v7, v8, v5, v6, a3);
}

__n128 sub_1C052FD38(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C052FD44@<X0>(void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Entity();
  return Entity<A>.subscript.getter(v6, v7, v5, a3);
}

uint64_t sub_1C052FDAC@<X0>(uint64_t **a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v5 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = *a1;
  v8 = type metadata accessor for Entity();
  result = Entity<A>.subscript.getter(v7, v8, v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1C052FE24@<X0>(void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 24);
  v5 = *(a1 + a2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for Entity();
  return Entity<A>.subscript.getter(v6, v7, v5, a3);
}

__n128 sub_1C052FE90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C052FEC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
}

uint64_t sub_1C052FF18()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0530300()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C0530378(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C05304A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C095D38C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C05305D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C0530628(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C05306D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0530778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = sub_1C095D38C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C05307F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = sub_1C095D38C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C05308A4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FC30, &qword_1C09A5A68);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_1C0530A28(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FC30, &qword_1C09A5A68);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C0530BAC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FC38, &qword_1C09A5A70);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_1C0530D30(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C095D38C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FC38, &qword_1C09A5A70);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C0531508@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Siri_Product_Proto_Value.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C053163C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Siri_Product_Proto_Value.semanticTagValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0531770()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C0531828(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C095D38C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C0531958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D40, &qword_1C09A7AD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C095D38C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C0531A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0531B38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0531BDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C095D38C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0531C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C095D38C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0531D80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C0531F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 48);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  if (!v10)
  {
    return 0;
  }

  sub_1C0519574();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void *sub_1C0532090(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 48);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_18:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = sub_1C0518574();
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  if (v11[4])
  {
    v13 = v11[4];
    swift_retain_n();
    sub_1C0519574();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
  if (swift_dynamicCast())
  {
    v15 = v16;
    v14 = v17;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C8, &qword_1C096DC98);
  result = swift_allocObject();
  result[2] = v12;
  result[3] = v15;
  result[4] = v14;
  return result;
}

uint64_t sub_1C0532268(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(*(v3 + 16) + 48);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = *(*(v3 + 16) + 48);

  v9 = sub_1C0516A8C(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v5 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C68DDAD0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

LABEL_8:

LABEL_13:
    v14 = a3(v13);

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0532380(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(*(v3 + 16) + 48);
  if (*(v5 + 16))
  {

    v8 = sub_1C0516A8C(a1, a2);
    if (v9)
    {
      v10 = *(*(v5 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = a3(v10);

  return v11;
}

uint64_t Uso_VerbTemplate_NoVerb.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Uso_VerbTemplate_NoVerb.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C0533048()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168B0, &qword_1C096DC80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0961330;
  *(v0 + 32) = 0xD00000000000001BLL;
  *(v0 + 40) = 0x80000001C09C4540;
  *(v0 + 48) = type metadata accessor for UsoTask_noVerb_common_EventTrigger(0);
  *(v0 + 56) = 0xD000000000000022;
  *(v0 + 64) = 0x80000001C09C4560;
  *(v0 + 72) = type metadata accessor for UsoTask_noVerb_commonTimer_TimerAttribute(0);
  *(v0 + 80) = 0xD00000000000001BLL;
  *(v0 + 88) = 0x80000001C09C4590;
  *(v0 + 96) = type metadata accessor for UsoTask_noVerb_common_VoiceTrigger(0);
  *(v0 + 104) = 0xD000000000000019;
  *(v0 + 112) = 0x80000001C09C45B0;
  *(v0 + 120) = type metadata accessor for UsoTask_preview_common_AppEntity(0);
  *(v0 + 128) = 0xD000000000000018;
  *(v0 + 136) = 0x80000001C09C45D0;
  *(v0 + 144) = type metadata accessor for UsoTask_create_common_AppEntity(0);
  *(v0 + 152) = 0xD000000000000017;
  *(v0 + 160) = 0x80000001C09C45F0;
  *(v0 + 168) = type metadata accessor for UsoTask_paste_common_AppEntity(0);
  *(v0 + 176) = 0xD00000000000001BLL;
  *(v0 + 184) = 0x80000001C09C4610;
  *(v0 + 192) = type metadata accessor for UsoTask_summarise_common_AppEntity(0);
  *(v0 + 200) = 0xD000000000000018;
  *(v0 + 208) = 0x80000001C09C4630;
  *(v0 + 216) = type metadata accessor for UsoTask_noVerb_common_AppEntity(0);
  *(v0 + 224) = 0xD000000000000018;
  *(v0 + 232) = 0x80000001C09C4650;
  *(v0 + 240) = type metadata accessor for UsoTask_update_common_AppEntity(0);
  *(v0 + 248) = 0xD00000000000001DLL;
  *(v0 + 256) = 0x80000001C09C4670;
  *(v0 + 264) = type metadata accessor for UsoTask_skipForward_common_AppEntity(0);
  *(v0 + 272) = 0xD00000000000001ELL;
  *(v0 + 280) = 0x80000001C09C4690;
  *(v0 + 288) = type metadata accessor for UsoTask_skipBackward_common_AppEntity(0);
  *(v0 + 296) = 0xD00000000000001DLL;
  *(v0 + 304) = 0x80000001C09C46B0;
  *(v0 + 312) = type metadata accessor for UsoTask_enterMarkup_common_AppEntity(0);
  *(v0 + 320) = 0xD000000000000016;
  *(v0 + 328) = 0x80000001C09C46D0;
  *(v0 + 336) = type metadata accessor for UsoTask_copy_common_AppEntity(0);
  *(v0 + 344) = 0xD000000000000016;
  *(v0 + 352) = 0x80000001C09C46F0;
  *(v0 + 360) = type metadata accessor for UsoTask_like_common_AppEntity(0);
  *(v0 + 368) = 0xD000000000000018;
  *(v0 + 376) = 0x80000001C09C4710;
  *(v0 + 384) = type metadata accessor for UsoTask_unlike_common_AppEntity(0);
  *(v0 + 392) = 0xD000000000000017;
  *(v0 + 400) = 0x80000001C09C4730;
  *(v0 + 408) = type metadata accessor for UsoTask_close_common_AppEntity(0);
  *(v0 + 416) = 0xD000000000000018;
  *(v0 + 424) = 0x80000001C09C4750;
  *(v0 + 432) = type metadata accessor for UsoTask_delete_common_AppEntity(0);
  *(v0 + 440) = 0xD000000000000015;
  *(v0 + 448) = 0x80000001C09C4770;
  *(v0 + 456) = type metadata accessor for UsoTask_cut_common_AppEntity(0);
  *(v0 + 464) = 0xD00000000000001CLL;
  *(v0 + 472) = 0x80000001C09C4790;
  *(v0 + 480) = type metadata accessor for UsoTask_exitMarkup_common_AppEntity(0);
  *(v0 + 488) = 0xD000000000000018;
  *(v0 + 496) = 0x80000001C09C47B0;
  *(v0 + 504) = type metadata accessor for UsoTask_adjust_common_AppEntity(0);
  *(v0 + 512) = 0xD000000000000016;
  *(v0 + 520) = 0x80000001C09C47D0;
  *(v0 + 528) = type metadata accessor for UsoTask_open_common_AppEntity(0);
  *(v0 + 536) = 0xD000000000000020;
  *(v0 + 544) = 0x80000001C09C47F0;
  *(v0 + 552) = type metadata accessor for UsoTask_noVerb_common_DurationComponent(0);
  *(v0 + 560) = 0xD00000000000001CLL;
  *(v0 + 568) = 0x80000001C09C4820;
  *(v0 + 576) = type metadata accessor for UsoTask_noVerb_common_PhoneCallMode(0);
  *(v0 + 584) = 0xD000000000000025;
  *(v0 + 592) = 0x80000001C09C4840;
  *(v0 + 600) = type metadata accessor for UsoTask_noVerb_appleContact_ContactAttribute(0);
  *(v0 + 608) = 0xD00000000000001DLL;
  *(v0 + 616) = 0x80000001C09C4870;
  *(v0 + 624) = type metadata accessor for UsoTask_noVerb_common_PersonProperty(0);
  *(v0 + 632) = 0xD000000000000025;
  *(v0 + 640) = 0x80000001C09C4890;
  *(v0 + 648) = type metadata accessor for UsoTask_checkExistence_common_PersonProperty(0);
  *(v0 + 656) = 0xD000000000000020;
  *(v0 + 664) = 0x80000001C09C48C0;
  *(v0 + 672) = type metadata accessor for UsoTask_summarise_common_PersonProperty(0);
  *(v0 + 680) = 0xD00000000000001CLL;
  *(v0 + 688) = 0x80000001C09C48F0;
  *(v0 + 696) = type metadata accessor for UsoTask_state_common_PersonProperty(0);
  *(v0 + 704) = 0xD00000000000001BLL;
  *(v0 + 712) = 0x80000001C09C4910;
  *(v0 + 720) = type metadata accessor for UsoTask_justify_common_SiriOpinion(0);
  *(v0 + 728) = 0xD00000000000001ALL;
  *(v0 + 736) = 0x80000001C09C4930;
  *(v0 + 744) = type metadata accessor for UsoTask_noVerb_common_SiriOpinion(0);
  *(v0 + 752) = 0xD00000000000001DLL;
  *(v0 + 760) = 0x80000001C09C4950;
  *(v0 + 768) = type metadata accessor for UsoTask_summarise_common_SiriOpinion(0);
  *(v0 + 776) = 0xD000000000000022;
  *(v0 + 784) = 0x80000001C09C4970;
  *(v0 + 792) = type metadata accessor for UsoTask_checkExistence_common_SiriOpinion(0);
  *(v0 + 800) = 0xD000000000000023;
  *(v0 + 808) = 0x80000001C09C49A0;
  *(v0 + 816) = type metadata accessor for UsoTask_noVerb_common_TemperatureComponent(0);
  *(v0 + 824) = 0xD00000000000001BLL;
  *(v0 + 832) = 0x80000001C09C49D0;
  *(v0 + 840) = type metadata accessor for UsoTask_noVerb_common_SearchObject(0);
  *(v0 + 848) = 0xD000000000000018;
  *(v0 + 856) = 0x80000001C09C49F0;
  *(v0 + 864) = type metadata accessor for UsoTask_update_common_Voicemail(0);
  *(v0 + 872) = 0xD000000000000016;
  *(v0 + 880) = 0x80000001C09C4A10;
  *(v0 + 888) = type metadata accessor for UsoTask_call_common_Voicemail(0);
  *(v0 + 896) = 0xD00000000000001ALL;
  *(v0 + 904) = 0x80000001C09C4A30;
  *(v0 + 912) = type metadata accessor for UsoTask_previous_common_Voicemail(0);
  *(v0 + 920) = 0xD000000000000016;
  *(v0 + 928) = 0x80000001C09C4A50;
  *(v0 + 936) = type metadata accessor for UsoTask_stop_common_Voicemail(0);
  *(v0 + 944) = 0xD000000000000016;
  *(v0 + 952) = 0x80000001C09C4A70;
  *(v0 + 960) = type metadata accessor for UsoTask_play_common_Voicemail(0);
  *(v0 + 968) = 0xD00000000000001ALL;
  *(v0 + 976) = 0x80000001C09C4A90;
  *(v0 + 984) = type metadata accessor for UsoTask_continue_common_Voicemail(0);
  *(v0 + 992) = 0xD000000000000019;
  *(v0 + 1000) = 0x80000001C09C4AB0;
  *(v0 + 1008) = type metadata accessor for UsoTask_request_common_Voicemail(0);
  *(v0 + 1016) = 0xD00000000000001BLL;
  *(v0 + 1024) = 0x80000001C09C4AD0;
  *(v0 + 1032) = type metadata accessor for UsoTask_summarise_common_Voicemail(0);
  *(v0 + 1040) = 0xD000000000000016;
  *(v0 + 1048) = 0x80000001C09C4AF0;
  *(v0 + 1056) = type metadata accessor for UsoTask_skip_common_Voicemail(0);
  *(v0 + 1064) = 0xD000000000000016;
  *(v0 + 1072) = 0x80000001C09C4B10;
  *(v0 + 1080) = type metadata accessor for UsoTask_read_common_Voicemail(0);
  *(v0 + 1088) = 0xD000000000000018;
  *(v0 + 1096) = 0x80000001C09C4B30;
  *(v0 + 1104) = type metadata accessor for UsoTask_delete_common_Voicemail(0);
  *(v0 + 1112) = 0xD000000000000018;
  *(v0 + 1120) = 0x80000001C09C4B50;
  *(v0 + 1128) = type metadata accessor for UsoTask_noVerb_common_Voicemail(0);
  *(v0 + 1136) = 0xD000000000000018;
  *(v0 + 1144) = 0x80000001C09C4B70;
  *(v0 + 1152) = type metadata accessor for UsoTask_repeat_common_Voicemail(0);
  *(v0 + 1160) = 0xD000000000000017;
  *(v0 + 1168) = 0x80000001C09C4B90;
  *(v0 + 1176) = type metadata accessor for UsoTask_pause_common_Voicemail(0);
  *(v0 + 1184) = 0xD000000000000018;
  *(v0 + 1192) = 0x80000001C09C4BB0;
  *(v0 + 1200) = type metadata accessor for UsoTask_resume_common_Voicemail(0);
  *(v0 + 1208) = 0xD000000000000026;
  *(v0 + 1216) = 0x80000001C09C4BD0;
  *(v0 + 1224) = type metadata accessor for UsoTask_request_common_RecurringDateTimeRange(0);
  *(v0 + 1232) = 0xD000000000000025;
  *(v0 + 1240) = 0x80000001C09C4C00;
  *(v0 + 1248) = type metadata accessor for UsoTask_noVerb_common_RecurringDateTimeRange(0);
  *(v0 + 1256) = 0xD000000000000028;
  *(v0 + 1264) = 0x80000001C09C4C30;
  *(v0 + 1272) = type metadata accessor for UsoTask_summarise_common_RecurringDateTimeRange(0);
  *(v0 + 1280) = 0xD00000000000002DLL;
  *(v0 + 1288) = 0x80000001C09C4C60;
  *(v0 + 1296) = type metadata accessor for UsoTask_checkExistence_common_RecurringDateTimeRange(0);
  *(v0 + 1304) = 0xD000000000000023;
  *(v0 + 1312) = 0x80000001C09C4C90;
  *(v0 + 1320) = type metadata accessor for UsoTask_read_common_RecurringDateTimeRange(0);
  *(v0 + 1328) = 0xD000000000000026;
  *(v0 + 1336) = 0x80000001C09C4CC0;
  *(v0 + 1344) = type metadata accessor for UsoTask_convert_common_RecurringDateTimeRange(0);
  *(v0 + 1352) = 0xD000000000000016;
  *(v0 + 1360) = 0x80000001C09C4CF0;
  *(v0 + 1368) = type metadata accessor for UsoTask_create_common_Workout(0);
  *(v0 + 1376) = 0xD000000000000016;
  *(v0 + 1384) = 0x80000001C09C4D10;
  *(v0 + 1392) = type metadata accessor for UsoTask_noVerb_common_Workout(0);
  *(v0 + 1400) = 0xD000000000000019;
  *(v0 + 1408) = 0x80000001C09C4D30;
  *(v0 + 1416) = type metadata accessor for UsoTask_summarise_common_Workout(0);
  *(v0 + 1424) = 0xD000000000000016;
  *(v0 + 1432) = 0x80000001C09C4D50;
  *(v0 + 1440) = type metadata accessor for UsoTask_update_common_Workout(0);
  *(v0 + 1448) = 0xD000000000000016;
  *(v0 + 1456) = 0x80000001C09C4D70;
  *(v0 + 1464) = type metadata accessor for UsoTask_cancel_common_Workout(0);
  *(v0 + 1472) = 0xD000000000000014;
  *(v0 + 1480) = 0x80000001C09C4D90;
  *(v0 + 1488) = type metadata accessor for UsoTask_stop_common_Workout(0);
  *(v0 + 1496) = 0xD000000000000015;
  *(v0 + 1504) = 0x80000001C09C4DB0;
  *(v0 + 1512) = type metadata accessor for UsoTask_pause_common_Workout(0);
  *(v0 + 1520) = 0xD000000000000016;
  *(v0 + 1528) = 0x80000001C09C4DD0;
  *(v0 + 1536) = type metadata accessor for UsoTask_resume_common_Workout(0);
  *(v0 + 1544) = 0xD000000000000022;
  *(v0 + 1552) = 0x80000001C09C4DF0;
  *(v0 + 1560) = type metadata accessor for UsoTask_noVerb_commonStock_StockAttribute(0);
  *(v0 + 1568) = 0xD000000000000021;
  *(v0 + 1576) = 0x80000001C09C4E20;
  *(v0 + 1584) = type metadata accessor for UsoTask_softwareUpdate_common_UserEntity(0);
  *(v0 + 1592) = 0xD00000000000001ALL;
  *(v0 + 1600) = 0x80000001C09C4E50;
  *(v0 + 1608) = type metadata accessor for UsoTask_request_common_UserEntity(0);
  *(v0 + 1616) = 0xD00000000000001BLL;
  *(v0 + 1624) = 0x80000001C09C4E70;
  *(v0 + 1632) = type metadata accessor for UsoTask_stopPing_common_UserEntity(0);
  *(v0 + 1640) = 0xD00000000000001CLL;
  *(v0 + 1648) = 0x80000001C09C4E90;
  *(v0 + 1656) = type metadata accessor for UsoTask_summarise_common_UserEntity(0);
  *(v0 + 1664) = 0xD000000000000017;
  *(v0 + 1672) = 0x80000001C09C4EB0;
  *(v0 + 1680) = type metadata accessor for UsoTask_find_common_UserEntity(0);
  *(v0 + 1688) = 0xD00000000000001ELL;
  *(v0 + 1696) = 0x80000001C09C4ED0;
  *(v0 + 1704) = type metadata accessor for UsoTask_getLocation_common_UserEntity(0);
  *(v0 + 1712) = 0xD000000000000019;
  *(v0 + 1720) = 0x80000001C09C4EF0;
  *(v0 + 1728) = type metadata accessor for UsoTask_reping_common_UserEntity(0);
  *(v0 + 1736) = 0xD000000000000021;
  *(v0 + 1744) = 0x80000001C09C4F10;
  *(v0 + 1752) = type metadata accessor for UsoTask_checkExistence_common_UserEntity(0);
  *(v0 + 1760) = 0xD000000000000017;
  *(v0 + 1768) = 0x80000001C09C4F40;
  *(v0 + 1776) = type metadata accessor for UsoTask_ping_common_UserEntity(0);
  *(v0 + 1784) = 0xD000000000000018;
  *(v0 + 1792) = 0x80000001C09C4F60;
  *(v0 + 1800) = type metadata accessor for UsoTask_reset_common_UserEntity(0);
  *(v0 + 1808) = 0xD000000000000027;
  *(v0 + 1816) = 0x80000001C09C4F80;
  *(v0 + 1824) = type metadata accessor for UsoTask_discoverCapabilities_common_UserEntity(0);
  *(v0 + 1832) = 0xD000000000000020;
  *(v0 + 1840) = 0x80000001C09C4FB0;
  *(v0 + 1848) = type metadata accessor for UsoTask_checkLocation_common_UserEntity(0);
  *(v0 + 1856) = 0xD00000000000001ALL;
  *(v0 + 1864) = 0x80000001C09C4FE0;
  *(v0 + 1872) = type metadata accessor for UsoTask_restart_common_UserEntity(0);
  *(v0 + 1880) = 0xD000000000000019;
  *(v0 + 1888) = 0x80000001C09C5000;
  *(v0 + 1896) = type metadata accessor for UsoTask_noVerb_common_UserEntity(0);
  *(v0 + 1904) = 0xD000000000000017;
  *(v0 + 1912) = 0x80000001C09C5020;
  *(v0 + 1920) = type metadata accessor for UsoTask_noVerb_common_Religion(0);
  *(v0 + 1928) = 0xD000000000000018;
  *(v0 + 1936) = 0x80000001C09C5040;
  *(v0 + 1944) = type metadata accessor for UsoTask_hear_common_SiriContent(0);
  *(v0 + 1952) = 0xD000000000000018;
  *(v0 + 1960) = 0x80000001C09C5060;
  *(v0 + 1968) = type metadata accessor for UsoTask_tell_common_SiriContent(0);
  *(v0 + 1976) = 0xD00000000000001ALL;
  *(v0 + 1984) = 0x80000001C09C5080;
  *(v0 + 1992) = type metadata accessor for UsoTask_repeat_common_SiriContent(0);
  *(v0 + 2000) = 0xD00000000000001ALL;
  *(v0 + 2008) = 0x80000001C09C50A0;
  *(v0 + 2016) = type metadata accessor for UsoTask_noVerb_common_SiriContent(0);
  *(v0 + 2024) = 0xD00000000000001ALL;
  *(v0 + 2032) = 0x80000001C09C50C0;
  *(v0 + 2040) = type metadata accessor for UsoTask_unlike_common_SiriContent(0);
  *(v0 + 2048) = 0xD000000000000028;
  *(v0 + 2056) = 0x80000001C09C50E0;
  *(v0 + 2064) = type metadata accessor for UsoTask_discoverCapabilities_common_SiriContent(0);
  *(v0 + 2072) = 0xD000000000000018;
  *(v0 + 2080) = 0x80000001C09C5110;
  *(v0 + 2088) = type metadata accessor for UsoTask_like_common_SiriContent(0);
  *(v0 + 2096) = 0xD00000000000001ALL;
  *(v0 + 2104) = 0x80000001C09C5130;
  *(v0 + 2112) = type metadata accessor for UsoTask_noVerb_common_MonthOfYear(0);
  *(v0 + 2120) = 0xD00000000000001ALL;
  *(v0 + 2128) = 0x80000001C09C5150;
  *(v0 + 2136) = type metadata accessor for UsoTask_noVerb_common_PhoneNumber(0);
  *(v0 + 2144) = 0xD000000000000014;
  *(v0 + 2152) = 0x80000001C09C5170;
  *(v0 + 2160) = type metadata accessor for UsoTask_create_common_Clock(0);
  *(v0 + 2168) = 0xD000000000000017;
  *(v0 + 2176) = 0x80000001C09C5190;
  *(v0 + 2184) = type metadata accessor for UsoTask_summarise_common_Clock(0);
  *(v0 + 2192) = 0xD000000000000014;
  *(v0 + 2200) = 0x80000001C09C51B0;
  *(v0 + 2208) = type metadata accessor for UsoTask_noVerb_common_Clock(0);
  *(v0 + 2216) = 0xD000000000000014;
  *(v0 + 2224) = 0x80000001C09C51D0;
  *(v0 + 2232) = type metadata accessor for UsoTask_delete_common_Clock(0);
  *(v0 + 2240) = 0xD000000000000025;
  *(v0 + 2248) = 0x80000001C09C51F0;
  *(v0 + 2256) = type metadata accessor for UsoTask_noVerb_appleMessage_MessageAttribute(0);
  *(v0 + 2264) = 0xD000000000000021;
  *(v0 + 2272) = 0x80000001C09C5220;
  *(v0 + 2280) = type metadata accessor for UsoTask_checkExistence_common_NoteFolder(0);
  *(v0 + 2288) = 0xD00000000000001CLL;
  *(v0 + 2296) = 0x80000001C09C5250;
  *(v0 + 2304) = type metadata accessor for UsoTask_summarise_common_NoteFolder(0);
  *(v0 + 2312) = 0xD00000000000001ALL;
  *(v0 + 2320) = 0x80000001C09C5270;
  *(v0 + 2328) = type metadata accessor for UsoTask_request_common_NoteFolder(0);
  *(v0 + 2336) = 0xD000000000000019;
  *(v0 + 2344) = 0x80000001C09C5290;
  *(v0 + 2352) = type metadata accessor for UsoTask_update_common_NoteFolder(0);
  *(v0 + 2360) = 0xD000000000000019;
  *(v0 + 2368) = 0x80000001C09C52B0;
  *(v0 + 2376) = type metadata accessor for UsoTask_create_common_NoteFolder(0);
  *(v0 + 2384) = 0xD000000000000019;
  *(v0 + 2392) = 0x80000001C09C52D0;
  *(v0 + 2400) = type metadata accessor for UsoTask_delete_common_NoteFolder(0);
  *(v0 + 2408) = 0xD000000000000019;
  *(v0 + 2416) = 0x80000001C09C52F0;
  *(v0 + 2424) = type metadata accessor for UsoTask_noVerb_common_NoteFolder(0);
  *(v0 + 2432) = 0xD000000000000022;
  *(v0 + 2440) = 0x80000001C09C5310;
  *(v0 + 2448) = type metadata accessor for UsoTask_noVerb_commonAlarm_AlarmAttribute(0);
  *(v0 + 2456) = 0xD000000000000026;
  *(v0 + 2464) = 0x80000001C09C5340;
  *(v0 + 2472) = type metadata accessor for UsoTask_noVerb_commonContact_ContactAttribute(0);
  *(v0 + 2480) = 0xD00000000000001DLL;
  *(v0 + 2488) = 0x80000001C09C5370;
  *(v0 + 2496) = type metadata accessor for UsoTask_noVerb_common_DeviceProperty(0);
  *(v0 + 2504) = 0xD00000000000001ELL;
  *(v0 + 2512) = 0x80000001C09C5390;
  *(v0 + 2520) = type metadata accessor for UsoTask_noVerb_common_MeasurementUnit(0);
  *(v0 + 2528) = 0xD00000000000001ELL;
  *(v0 + 2536) = 0x80000001C09C53B0;
  *(v0 + 2544) = type metadata accessor for UsoTask_summarise_common_ReminderList(0);
  *(v0 + 2552) = 0xD00000000000001BLL;
  *(v0 + 2560) = 0x80000001C09C53D0;
  *(v0 + 2568) = type metadata accessor for UsoTask_noVerb_common_ReminderList(0);
  *(v0 + 2576) = 0xD00000000000001CLL;
  *(v0 + 2584) = 0x80000001C09C53F0;
  *(v0 + 2592) = type metadata accessor for UsoTask_request_common_ReminderList(0);
  *(v0 + 2600) = 0xD000000000000023;
  *(v0 + 2608) = 0x80000001C09C5410;
  *(v0 + 2616) = type metadata accessor for UsoTask_checkExistence_common_ReminderList(0);
  *(v0 + 2624) = 0xD00000000000001BLL;
  *(v0 + 2632) = 0x80000001C09C5440;
  *(v0 + 2640) = type metadata accessor for UsoTask_delete_common_ReminderList(0);
  *(v0 + 2648) = 0xD00000000000001BLL;
  *(v0 + 2656) = 0x80000001C09C5460;
  *(v0 + 2664) = type metadata accessor for UsoTask_create_common_ReminderList(0);
  *(v0 + 2672) = 0xD00000000000001BLL;
  *(v0 + 2680) = 0x80000001C09C5480;
  *(v0 + 2688) = type metadata accessor for UsoTask_update_common_ReminderList(0);
  *(v0 + 2696) = 0xD000000000000019;
  *(v0 + 2704) = 0x80000001C09C54A0;
  *(v0 + 2712) = type metadata accessor for UsoTask_read_common_ReminderList(0);
  *(v0 + 2720) = 0xD000000000000014;
  *(v0 + 2728) = 0x80000001C09C54C0;
  *(v0 + 2736) = type metadata accessor for UsoTask_noVerb_common_Stock(0);
  *(v0 + 2744) = 0xD000000000000014;
  *(v0 + 2752) = 0x80000001C09C54E0;
  *(v0 + 2760) = type metadata accessor for UsoTask_create_common_Stock(0);
  *(v0 + 2768) = 0xD000000000000012;
  *(v0 + 2776) = 0x80000001C09C5500;
  *(v0 + 2784) = type metadata accessor for UsoTask_read_common_Stock(0);
  *(v0 + 2792) = 0xD000000000000014;
  *(v0 + 2800) = 0x80000001C09C5520;
  *(v0 + 2808) = type metadata accessor for UsoTask_delete_common_Stock(0);
  *(v0 + 2816) = 0xD000000000000015;
  *(v0 + 2824) = 0x80000001C09C5540;
  *(v0 + 2832) = type metadata accessor for UsoTask_request_common_Stock(0);
  *(v0 + 2840) = 0xD000000000000014;
  *(v0 + 2848) = 0x80000001C09C5560;
  *(v0 + 2856) = type metadata accessor for UsoTask_update_common_Stock(0);
  *(v0 + 2864) = 0xD00000000000001CLL;
  *(v0 + 2872) = 0x80000001C09C5580;
  *(v0 + 2880) = type metadata accessor for UsoTask_checkExistence_common_Stock(0);
  *(v0 + 2888) = 0xD000000000000017;
  *(v0 + 2896) = 0x80000001C09C55A0;
  *(v0 + 2904) = type metadata accessor for UsoTask_summarise_common_Stock(0);
  *(v0 + 2912) = 0xD000000000000019;
  *(v0 + 2920) = 0x80000001C09C55C0;
  *(v0 + 2928) = type metadata accessor for UsoTask_noVerb_common_AppSection(0);
  *(v0 + 2936) = 0xD00000000000001ALL;
  *(v0 + 2944) = 0x80000001C09C55E0;
  *(v0 + 2952) = type metadata accessor for UsoTask_previous_common_PhoneCall(0);
  *(v0 + 2960) = 0xD000000000000018;
  *(v0 + 2968) = 0x80000001C09C5600;
  *(v0 + 2976) = type metadata accessor for UsoTask_redial_common_PhoneCall(0);
  *(v0 + 2984) = 0xD00000000000001ALL;
  *(v0 + 2992) = 0x80000001C09C5620;
  *(v0 + 3000) = type metadata accessor for UsoTask_callback_common_PhoneCall(0);
  *(v0 + 3008) = 0xD000000000000016;
  *(v0 + 3016) = 0x80000001C09C5640;
  *(v0 + 3024) = type metadata accessor for UsoTask_stop_common_PhoneCall(0);
  *(v0 + 3032) = 0xD000000000000018;
  *(v0 + 3040) = 0x80000001C09C5660;
  *(v0 + 3048) = type metadata accessor for UsoTask_hangup_common_PhoneCall(0);
  *(v0 + 3056) = 0xD00000000000001BLL;
  *(v0 + 3064) = 0x80000001C09C5680;
  *(v0 + 3072) = type metadata accessor for UsoTask_videocall_common_PhoneCall(0);
  *(v0 + 3080) = 0xD000000000000016;
  *(v0 + 3088) = 0x80000001C09C56A0;
  *(v0 + 3096) = type metadata accessor for UsoTask_join_common_PhoneCall(0);
  *(v0 + 3104) = 0xD000000000000019;
  *(v0 + 3112) = 0x80000001C09C56C0;
  *(v0 + 3120) = type metadata accessor for UsoTask_request_common_PhoneCall(0);
  *(v0 + 3128) = 0xD000000000000018;
  *(v0 + 3136) = 0x80000001C09C56E0;
  *(v0 + 3144) = type metadata accessor for UsoTask_noVerb_common_PhoneCall(0);
  *(v0 + 3152) = 0xD000000000000016;
  *(v0 + 3160) = 0x80000001C09C5700;
  *(v0 + 3168) = type metadata accessor for UsoTask_read_common_PhoneCall(0);
  *(v0 + 3176) = 0xD000000000000018;
  *(v0 + 3184) = 0x80000001C09C5720;
  *(v0 + 3192) = type metadata accessor for UsoTask_update_common_PhoneCall(0);
  *(v0 + 3200) = 0xD000000000000016;
  *(v0 + 3208) = 0x80000001C09C5740;
  *(v0 + 3216) = type metadata accessor for UsoTask_skip_common_PhoneCall(0);
  *(v0 + 3224) = 0xD00000000000001BLL;
  *(v0 + 3232) = 0x80000001C09C5760;
  *(v0 + 3240) = type metadata accessor for UsoTask_summarise_common_PhoneCall(0);
  *(v0 + 3248) = 0xD000000000000018;
  *(v0 + 3256) = 0x80000001C09C5780;
  *(v0 + 3264) = type metadata accessor for UsoTask_delete_common_PhoneCall(0);
  *(v0 + 3272) = 0xD00000000000001ALL;
  *(v0 + 3280) = 0x80000001C09C57A0;
  *(v0 + 3288) = type metadata accessor for UsoTask_continue_common_PhoneCall(0);
  *(v0 + 3296) = 0xD000000000000016;
  *(v0 + 3304) = 0x80000001C09C57C0;
  *(v0 + 3312) = type metadata accessor for UsoTask_call_common_PhoneCall(0);
  *(v0 + 3320) = 0xD000000000000018;
  *(v0 + 3328) = 0x80000001C09C57E0;
  *(v0 + 3336) = type metadata accessor for UsoTask_answer_common_PhoneCall(0);
  *(v0 + 3344) = 0xD00000000000001DLL;
  *(v0 + 3352) = 0x80000001C09C5800;
  *(v0 + 3360) = type metadata accessor for UsoTask_noVerb_common_ContactAddress(0);
  *(v0 + 3368) = 0xD00000000000001ELL;
  *(v0 + 3376) = 0x80000001C09C5820;
  *(v0 + 3384) = type metadata accessor for UsoTask_noVerb_common_LocalisedString(0);
  *(v0 + 3392) = 0xD00000000000001ELL;
  *(v0 + 3400) = 0x80000001C09C5840;
  *(v0 + 3408) = type metadata accessor for UsoTask_noVerb_common_ProductCategory(0);
  *(v0 + 3416) = 0xD000000000000019;
  *(v0 + 3424) = 0x80000001C09C5860;
  *(v0 + 3432) = type metadata accessor for UsoTask_noVerb_common_NumberSign(0);
  *(v0 + 3440) = 0xD000000000000018;
  *(v0 + 3448) = 0x80000001C09C5880;
  *(v0 + 3456) = type metadata accessor for UsoTask_action_common_Utilities(0);
  *(v0 + 3464) = 0xD000000000000019;
  *(v0 + 3472) = 0x80000001C09C58A0;
  *(v0 + 3480) = type metadata accessor for UsoTask_noVerb_common_PersonName(0);
  *(v0 + 3488) = 0xD000000000000030;
  *(v0 + 3496) = 0x80000001C09C58C0;
  *(v0 + 3504) = type metadata accessor for UsoTask_noVerb_commonNotification_NotificationAttribute(0);
  *(v0 + 3512) = 0xD00000000000002ALL;
  *(v0 + 3520) = 0x80000001C09C5900;
  *(v0 + 3528) = type metadata accessor for UsoTask_noVerb_commonPhoneCall_PhoneCallAttribute(0);
  *(v0 + 3536) = 0xD00000000000001BLL;
  *(v0 + 3544) = 0x80000001C09C5930;
  *(v0 + 3552) = type metadata accessor for UsoTask_noVerb_common_SettingValue(0);
  *(v0 + 3560) = 0xD000000000000029;
  *(v0 + 3568) = 0x80000001C09C5950;
  *(v0 + 3576) = type metadata accessor for UsoTask_learnNameCorrection_common_PersonContact(0);
  *(v0 + 3584) = 0xD00000000000001ALL;
  *(v0 + 3592) = 0x80000001C09C5980;
  *(v0 + 3600) = type metadata accessor for UsoTask_read_common_PersonContact(0);
  *(v0 + 3608) = 0xD00000000000001CLL;
  *(v0 + 3616) = 0x80000001C09C59A0;
  *(v0 + 3624) = type metadata accessor for UsoTask_create_common_PersonContact(0);
  *(v0 + 3632) = 0xD00000000000002ALL;
  *(v0 + 3640) = 0x80000001C09C59C0;
  *(v0 + 3648) = type metadata accessor for UsoTask_forgetNameCorrection_common_PersonContact(0);
  *(v0 + 3656) = 0xD00000000000001CLL;
  *(v0 + 3664) = 0x80000001C09C59F0;
  *(v0 + 3672) = type metadata accessor for UsoTask_delete_common_PersonContact(0);
  *(v0 + 3680) = 0xD00000000000001CLL;
  *(v0 + 3688) = 0x80000001C09C5A10;
  *(v0 + 3696) = type metadata accessor for UsoTask_noVerb_common_PersonContact(0);
  *(v0 + 3704) = 0xD00000000000001FLL;
  *(v0 + 3712) = 0x80000001C09C5A30;
  *(v0 + 3720) = type metadata accessor for UsoTask_summarise_common_PersonContact(0);
  *(v0 + 3728) = 0xD00000000000001CLL;
  *(v0 + 3736) = 0x80000001C09C5A50;
  *(v0 + 3744) = type metadata accessor for UsoTask_update_common_PersonContact(0);
  *(v0 + 3752) = 0xD000000000000019;
  *(v0 + 3760) = 0x80000001C09C5A70;
  *(v0 + 3768) = type metadata accessor for UsoTask_noVerb_common_SportsItem(0);
  *(v0 + 3776) = 0xD000000000000013;
  *(v0 + 3784) = 0x80000001C09C5A90;
  *(v0 + 3792) = type metadata accessor for UsoTask_reset_common_Timer(0);
  *(v0 + 3800) = 0xD000000000000014;
  *(v0 + 3808) = 0x80000001C09C5AB0;
  *(v0 + 3816) = type metadata accessor for UsoTask_create_common_Timer(0);
  *(v0 + 3824) = 0xD000000000000013;
  *(v0 + 3832) = 0x80000001C09C5AD0;
  *(v0 + 3840) = type metadata accessor for UsoTask_start_common_Timer(0);
  *(v0 + 3848) = 0xD000000000000014;
  *(v0 + 3856) = 0x80000001C09C5AF0;
  *(v0 + 3864) = type metadata accessor for UsoTask_delete_common_Timer(0);
  *(v0 + 3872) = 0xD000000000000014;
  *(v0 + 3880) = 0x80000001C09C5B10;
  *(v0 + 3888) = type metadata accessor for UsoTask_update_common_Timer(0);
  *(v0 + 3896) = 0xD00000000000001CLL;
  *(v0 + 3904) = 0x80000001C09C5B30;
  *(v0 + 3912) = type metadata accessor for UsoTask_checkExistence_common_Timer(0);
  *(v0 + 3920) = 0xD000000000000013;
  *(v0 + 3928) = 0x80000001C09C5B50;
  *(v0 + 3936) = type metadata accessor for UsoTask_pause_common_Timer(0);
  *(v0 + 3944) = 0xD000000000000014;
  *(v0 + 3952) = 0x80000001C09C5B70;
  *(v0 + 3960) = type metadata accessor for UsoTask_resume_common_Timer(0);
  *(v0 + 3968) = 0xD000000000000014;
  *(v0 + 3976) = 0x80000001C09C5B90;
  *(v0 + 3984) = type metadata accessor for UsoTask_noVerb_common_Timer(0);
  *(v0 + 3992) = 0xD000000000000017;
  *(v0 + 4000) = 0x80000001C09C5BB0;
  *(v0 + 4008) = type metadata accessor for UsoTask_summarise_common_Timer(0);
  *(v0 + 4016) = 0xD000000000000012;
  *(v0 + 4024) = 0x80000001C09C5BD0;
  *(v0 + 4032) = type metadata accessor for UsoTask_stop_common_Timer(0);
  *(v0 + 4040) = 0xD000000000000015;
  *(v0 + 4048) = 0x80000001C09C5BF0;
  *(v0 + 4056) = type metadata accessor for UsoTask_request_common_Timer(0);
  *(v0 + 4064) = 0xD00000000000001ELL;
  *(v0 + 4072) = 0x80000001C09C5C10;
  *(v0 + 4080) = type metadata accessor for UsoTask_noVerb_common_SearchQualifier(0);
  *(v0 + 4088) = 0xD00000000000001FLL;
  *(v0 + 4096) = 0x80000001C09C5C30;
  *(v0 + 4104) = type metadata accessor for UsoTask_checkExistence_common_Reaction(0);
  *(v0 + 4112) = 0xD000000000000017;
  *(v0 + 4120) = 0x80000001C09C5C50;
  *(v0 + 4128) = type metadata accessor for UsoTask_noVerb_common_Reaction(0);
  *(v0 + 4136) = 0xD00000000000001ALL;
  *(v0 + 4144) = 0x80000001C09C5C70;
  *(v0 + 4152) = type metadata accessor for UsoTask_summarise_common_Reaction(0);
  *(v0 + 4160) = 0xD000000000000018;
  *(v0 + 4168) = 0x80000001C09C5C90;
  *(v0 + 4176) = type metadata accessor for UsoTask_request_common_Reaction(0);
  *(v0 + 4184) = 0xD00000000000001CLL;
  *(v0 + 4192) = 0x80000001C09C5CB0;
  *(v0 + 4200) = type metadata accessor for UsoTask_action_common_CrisisSupport(0);
  *(v0 + 4208) = 0xD00000000000001FLL;
  *(v0 + 4216) = 0x80000001C09C5CD0;
  *(v0 + 4224) = type metadata accessor for UsoTask_summarise_common_DateTimeRange(0);
  *(v0 + 4232) = 0xD00000000000001DLL;
  *(v0 + 4240) = 0x80000001C09C5CF0;
  *(v0 + 4248) = type metadata accessor for UsoTask_request_common_DateTimeRange(0);
  *(v0 + 4256) = 0xD00000000000001DLL;
  *(v0 + 4264) = 0x80000001C09C5D10;
  *(v0 + 4272) = type metadata accessor for UsoTask_convert_common_DateTimeRange(0);
  *(v0 + 4280) = 0xD00000000000001CLL;
  *(v0 + 4288) = 0x80000001C09C5D30;
  *(v0 + 4296) = type metadata accessor for UsoTask_noVerb_common_DateTimeRange(0);
  *(v0 + 4304) = 0xD000000000000024;
  *(v0 + 4312) = 0x80000001C09C5D50;
  *(v0 + 4320) = type metadata accessor for UsoTask_checkExistence_common_DateTimeRange(0);
  *(v0 + 4328) = 0xD00000000000001ALL;
  *(v0 + 4336) = 0x80000001C09C5D80;
  *(v0 + 4344) = type metadata accessor for UsoTask_read_common_DateTimeRange(0);
  *(v0 + 4352) = 0xD000000000000025;
  *(v0 + 4360) = 0x80000001C09C5DA0;
  *(v0 + 4368) = type metadata accessor for UsoTask_noVerb_appleWriting_WritingAttribute(0);
  *(v0 + 4376) = 0xD000000000000017;
  *(v0 + 4384) = 0x80000001C09C5DD0;
  *(v0 + 4392) = type metadata accessor for UsoTask_noVerb_common_TimeZone(0);
  *(v0 + 4400) = 0xD000000000000021;
  *(v0 + 4408) = 0x80000001C09C5DF0;
  *(v0 + 4416) = type metadata accessor for UsoTask_update_common_PersonRelationship(0);
  *(v0 + 4424) = 0xD000000000000021;
  *(v0 + 4432) = 0x80000001C09C5E20;
  *(v0 + 4440) = type metadata accessor for UsoTask_noVerb_common_PersonRelationship(0);
  *(v0 + 4448) = 0xD00000000000001ELL;
  *(v0 + 4456) = 0x80000001C09C5E50;
  *(v0 + 4464) = type metadata accessor for UsoTask_noVerb_common_ActivationValue(0);
  *(v0 + 4472) = 0xD000000000000014;
  *(v0 + 4480) = 0x80000001C09C5E70;
  *(v0 + 4488) = type metadata accessor for UsoTask_noVerb_common_Color(0);
  *(v0 + 4496) = 0xD000000000000014;
  *(v0 + 4504) = 0x80000001C09C5E90;
  *(v0 + 4512) = type metadata accessor for UsoTask_delete_common_Email(0);
  *(v0 + 4520) = 0xD000000000000010;
  *(v0 + 4528) = 0x80000001C09C5EB0;
  *(v0 + 4536) = type metadata accessor for UsoTask_cc_common_Email(0);
  *(v0 + 4544) = 0xD000000000000012;
  *(v0 + 4552) = 0x80000001C09C5ED0;
  *(v0 + 4560) = type metadata accessor for UsoTask_send_common_Email(0);
  *(v0 + 4568) = 0xD000000000000012;
  *(v0 + 4576) = 0x80000001C09C5EF0;
  *(v0 + 4584) = type metadata accessor for UsoTask_save_common_Email(0);
  *(v0 + 4592) = 0xD000000000000015;
  *(v0 + 4600) = 0x80000001C09C5F10;
  *(v0 + 4608) = type metadata accessor for UsoTask_forward_common_Email(0);
  *(v0 + 4616) = 0xD000000000000014;
  *(v0 + 4624) = 0x80000001C09C5F30;
  *(v0 + 4632) = type metadata accessor for UsoTask_update_common_Email(0);
  *(v0 + 4640) = 0xD000000000000013;
  *(v0 + 4648) = 0x80000001C09C5F50;
  *(v0 + 4656) = type metadata accessor for UsoTask_reply_common_Email(0);
  *(v0 + 4664) = 0xD000000000000016;
  *(v0 + 4672) = 0x80000001C09C5F70;
  *(v0 + 4680) = type metadata accessor for UsoTask_previous_common_Email(0);
  *(v0 + 4688) = 0xD000000000000012;
  *(v0 + 4696) = 0x80000001C09C5F90;
  *(v0 + 4704) = type metadata accessor for UsoTask_read_common_Email(0);
  *(v0 + 4712) = 0xD000000000000016;
  *(v0 + 4720) = 0x80000001C09C5FB0;
  *(v0 + 4728) = type metadata accessor for UsoTask_continue_common_Email(0);
  *(v0 + 4736) = 0xD000000000000012;
  *(v0 + 4744) = 0x80000001C09C5FD0;
  *(v0 + 4752) = type metadata accessor for UsoTask_stop_common_Email(0);
  *(v0 + 4760) = 0xD000000000000012;
  *(v0 + 4768) = 0x80000001C09C5FF0;
  *(v0 + 4776) = type metadata accessor for UsoTask_skip_common_Email(0);
  *(v0 + 4784) = 0xD00000000000001CLL;
  *(v0 + 4792) = 0x80000001C09C6010;
  *(v0 + 4800) = type metadata accessor for UsoTask_checkExistence_common_Email(0);
  *(v0 + 4808) = 0xD000000000000017;
  *(v0 + 4816) = 0x80000001C09C6030;
  *(v0 + 4824) = type metadata accessor for UsoTask_summarise_common_Email(0);
  *(v0 + 4832) = 0xD000000000000014;
  *(v0 + 4840) = 0x80000001C09C6050;
  *(v0 + 4848) = type metadata accessor for UsoTask_noVerb_common_Email(0);
  *(v0 + 4856) = 0xD000000000000015;
  *(v0 + 4864) = 0x80000001C09C6070;
  *(v0 + 4872) = type metadata accessor for UsoTask_request_common_Email(0);
  *(v0 + 4880) = 0xD00000000000001DLL;
  *(v0 + 4888) = 0x80000001C09C6090;
  *(v0 + 4896) = type metadata accessor for UsoTask_noVerb_common_DeviceCategory(0);
  *(v0 + 4904) = 0xD00000000000001FLL;
  *(v0 + 4912) = 0x80000001C09C60B0;
  *(v0 + 4920) = type metadata accessor for UsoTask_checkExistence_common_DateTime(0);
  *(v0 + 4928) = 0xD000000000000017;
  *(v0 + 4936) = 0x80000001C09C60D0;
  *(v0 + 4944) = type metadata accessor for UsoTask_noVerb_common_DateTime(0);
  *(v0 + 4952) = 0xD000000000000018;
  *(v0 + 4960) = 0x80000001C09C60F0;
  *(v0 + 4968) = type metadata accessor for UsoTask_convert_common_DateTime(0);
  *(v0 + 4976) = 0xD000000000000018;
  *(v0 + 4984) = 0x80000001C09C6110;
  *(v0 + 4992) = type metadata accessor for UsoTask_request_common_DateTime(0);
  *(v0 + 5000) = 0xD000000000000015;
  *(v0 + 5008) = 0x80000001C09C6130;
  *(v0 + 5016) = type metadata accessor for UsoTask_read_common_DateTime(0);
  *(v0 + 5024) = 0xD00000000000001ALL;
  *(v0 + 5032) = 0x80000001C09C6150;
  *(v0 + 5040) = type metadata accessor for UsoTask_summarise_common_DateTime(0);
  *(v0 + 5048) = 0xD00000000000001FLL;
  *(v0 + 5056) = 0x80000001C09C6170;
  *(v0 + 5064) = type metadata accessor for UsoTask_removeFilter_apple_PhotoMemory(0);
  *(v0 + 5072) = 0xD00000000000001CLL;
  *(v0 + 5080) = 0x80000001C09C6190;
  *(v0 + 5088) = type metadata accessor for UsoTask_removeTag_apple_PhotoMemory(0);
  *(v0 + 5096) = 0xD000000000000019;
  *(v0 + 5104) = 0x80000001C09C61B0;
  *(v0 + 5112) = type metadata accessor for UsoTask_create_apple_PhotoMemory(0);
  *(v0 + 5120) = 0xD00000000000001CLL;
  *(v0 + 5128) = 0x80000001C09C61D0;
  *(v0 + 5136) = type metadata accessor for UsoTask_summarise_apple_PhotoMemory(0);
  *(v0 + 5144) = 0xD000000000000022;
  *(v0 + 5152) = 0x80000001C09C61F0;
  *(v0 + 5160) = type metadata accessor for UsoTask_removeFromAlbum_apple_PhotoMemory(0);
  *(v0 + 5168) = 0xD000000000000021;
  *(v0 + 5176) = 0x80000001C09C6220;
  *(v0 + 5184) = type metadata accessor for UsoTask_checkExistence_apple_PhotoMemory(0);
  *(v0 + 5192) = 0xD00000000000001BLL;
  *(v0 + 5200) = 0x80000001C09C6250;
  *(v0 + 5208) = type metadata accessor for UsoTask_applyTag_apple_PhotoMemory(0);
  *(v0 + 5216) = 0xD000000000000017;
  *(v0 + 5224) = 0x80000001C09C6270;
  *(v0 + 5232) = type metadata accessor for UsoTask_like_apple_PhotoMemory(0);
  *(v0 + 5240) = 0xD000000000000019;
  *(v0 + 5248) = 0x80000001C09C6290;
  *(v0 + 5256) = type metadata accessor for UsoTask_delete_apple_PhotoMemory(0);
  *(v0 + 5264) = 0xD00000000000001DLL;
  *(v0 + 5272) = 0x80000001C09C62B0;
  *(v0 + 5280) = type metadata accessor for UsoTask_addToAlbum_apple_PhotoMemory(0);
  *(v0 + 5288) = 0xD000000000000017;
  *(v0 + 5296) = 0x80000001C09C62D0;
  *(v0 + 5304) = type metadata accessor for UsoTask_play_apple_PhotoMemory(0);
  *(v0 + 5312) = 0xD000000000000019;
  *(v0 + 5320) = 0x80000001C09C62F0;
  *(v0 + 5328) = type metadata accessor for UsoTask_noVerb_apple_PhotoMemory(0);
  *(v0 + 5336) = 0xD000000000000019;
  *(v0 + 5344) = 0x80000001C09C6310;
  *(v0 + 5352) = type metadata accessor for UsoTask_unlike_apple_PhotoMemory(0);
  *(v0 + 5360) = 0xD00000000000001ELL;
  *(v0 + 5368) = 0x80000001C09C6330;
  *(v0 + 5376) = type metadata accessor for UsoTask_applyFilter_apple_PhotoMemory(0);
  *(v0 + 5384) = 0xD00000000000001ELL;
  *(v0 + 5392) = 0x80000001C09C6350;
  *(v0 + 5400) = type metadata accessor for UsoTask_request_common_SiriPossession(0);
  *(v0 + 5408) = 0xD00000000000001CLL;
  *(v0 + 5416) = 0x80000001C09C6370;
  *(v0 + 5424) = type metadata accessor for UsoTask_state_common_SiriPossession(0);
  *(v0 + 5432) = 0xD00000000000001BLL;
  *(v0 + 5440) = 0x80000001C09C6390;
  *(v0 + 5448) = type metadata accessor for UsoTask_deny_common_SiriPossession(0);
  *(v0 + 5456) = 0xD00000000000001DLL;
  *(v0 + 5464) = 0x80000001C09C63B0;
  *(v0 + 5472) = type metadata accessor for UsoTask_noVerb_common_SiriPossession(0);
  *(v0 + 5480) = 0xD000000000000020;
  *(v0 + 5488) = 0x80000001C09C63D0;
  *(v0 + 5496) = type metadata accessor for UsoTask_summarise_common_SiriPossession(0);
  *(v0 + 5504) = 0xD000000000000025;
  *(v0 + 5512) = 0x80000001C09C6400;
  *(v0 + 5520) = type metadata accessor for UsoTask_checkExistence_common_SiriPossession(0);
  *(v0 + 5528) = 0xD000000000000021;
  *(v0 + 5536) = 0x80000001C09C6430;
  *(v0 + 5544) = type metadata accessor for UsoTask_noVerb_common_PersonSocialAction(0);
  *(v0 + 5552) = 0xD000000000000024;
  *(v0 + 5560) = 0x80000001C09C6460;
  *(v0 + 5568) = type metadata accessor for UsoTask_summarise_common_PersonSocialAction(0);
  *(v0 + 5576) = 0xD000000000000020;
  *(v0 + 5584) = 0x80000001C09C6490;
  *(v0 + 5592) = type metadata accessor for UsoTask_state_common_PersonSocialAction(0);
  *(v0 + 5600) = 0xD000000000000015;
  *(v0 + 5608) = 0x80000001C09C64C0;
  *(v0 + 5616) = type metadata accessor for UsoTask_pause_common_Journey(0);
  *(v0 + 5624) = 0xD000000000000015;
  *(v0 + 5632) = 0x80000001C09C64E0;
  *(v0 + 5640) = type metadata accessor for UsoTask_start_common_Journey(0);
  *(v0 + 5648) = 0xD000000000000017;
  *(v0 + 5656) = 0x80000001C09C6500;
  *(v0 + 5664) = type metadata accessor for UsoTask_request_common_Journey(0);
  *(v0 + 5672) = 0xD000000000000016;
  *(v0 + 5680) = 0x80000001C09C6520;
  *(v0 + 5688) = type metadata accessor for UsoTask_update_common_Journey(0);
  *(v0 + 5696) = 0xD000000000000014;
  *(v0 + 5704) = 0x80000001C09C6540;
  *(v0 + 5712) = type metadata accessor for UsoTask_stop_common_Journey(0);
  *(v0 + 5720) = 0xD000000000000016;
  *(v0 + 5728) = 0x80000001C09C6560;
  *(v0 + 5736) = type metadata accessor for UsoTask_noVerb_common_Journey(0);
  *(v0 + 5744) = 0xD000000000000014;
  *(v0 + 5752) = 0x80000001C09C6580;
  *(v0 + 5760) = type metadata accessor for UsoTask_noVerb_common_Photo(0);
  *(v0 + 5768) = 0xD000000000000014;
  *(v0 + 5776) = 0x80000001C09C65A0;
  *(v0 + 5784) = type metadata accessor for UsoTask_unlike_common_Photo(0);
  *(v0 + 5792) = 0xD000000000000014;
  *(v0 + 5800) = 0x80000001C09C65C0;
  *(v0 + 5808) = type metadata accessor for UsoTask_unhide_common_Photo(0);
  *(v0 + 5816) = 0xD000000000000016;
  *(v0 + 5824) = 0x80000001C09C65E0;
  *(v0 + 5832) = type metadata accessor for UsoTask_applyTag_common_Photo(0);
  *(v0 + 5840) = 0xD000000000000018;
  *(v0 + 5848) = 0x80000001C09C6600;
  *(v0 + 5856) = type metadata accessor for UsoTask_addToAlbum_common_Photo(0);
  *(v0 + 5864) = 0xD00000000000001ALL;
  *(v0 + 5872) = 0x80000001C09C6620;
  *(v0 + 5880) = type metadata accessor for UsoTask_skipBackward_common_Photo(0);
  *(v0 + 5888) = 0xD000000000000017;
  *(v0 + 5896) = 0x80000001C09C6640;
  *(v0 + 5904) = type metadata accessor for UsoTask_summarise_common_Photo(0);
  *(v0 + 5912) = 0xD000000000000014;
  *(v0 + 5920) = 0x80000001C09C6660;
  *(v0 + 5928) = type metadata accessor for UsoTask_create_common_Photo(0);
  *(v0 + 5936) = 0xD000000000000017;
  *(v0 + 5944) = 0x80000001C09C6680;
  *(v0 + 5952) = type metadata accessor for UsoTask_removeTag_common_Photo(0);
  *(v0 + 5960) = 0xD000000000000014;
  *(v0 + 5968) = 0x80000001C09C66A0;
  *(v0 + 5976) = type metadata accessor for UsoTask_delete_common_Photo(0);
  *(v0 + 5984) = 0xD00000000000001CLL;
  *(v0 + 5992) = 0x80000001C09C66C0;
  *(v0 + 6000) = type metadata accessor for UsoTask_checkExistence_common_Photo(0);
  *(v0 + 6008) = 0xD000000000000012;
  *(v0 + 6016) = 0x80000001C09C66E0;
  *(v0 + 6024) = type metadata accessor for UsoTask_like_common_Photo(0);
  *(v0 + 6032) = 0xD000000000000012;
  *(v0 + 6040) = 0x80000001C09C6700;
  *(v0 + 6048) = type metadata accessor for UsoTask_play_common_Photo(0);
  *(v0 + 6056) = 0xD000000000000019;
  *(v0 + 6064) = 0x80000001C09C6720;
  *(v0 + 6072) = type metadata accessor for UsoTask_applyFilter_common_Photo(0);
  *(v0 + 6080) = 0xD000000000000012;
  *(v0 + 6088) = 0x80000001C09C6740;
  *(v0 + 6096) = type metadata accessor for UsoTask_hide_common_Photo(0);
  *(v0 + 6104) = 0xD00000000000001ALL;
  *(v0 + 6112) = 0x80000001C09C6760;
  *(v0 + 6120) = type metadata accessor for UsoTask_removeFilter_common_Photo(0);
  *(v0 + 6128) = 0xD000000000000019;
  *(v0 + 6136) = 0x80000001C09C6780;
  *(v0 + 6144) = type metadata accessor for UsoTask_skipForward_common_Photo(0);
  *(v0 + 6152) = 0xD00000000000001DLL;
  *(v0 + 6160) = 0x80000001C09C67A0;
  *(v0 + 6168) = type metadata accessor for UsoTask_removeFromAlbum_common_Photo(0);
  *(v0 + 6176) = 0xD000000000000026;
  *(v0 + 6184) = 0x80000001C09C67C0;
  *(v0 + 6192) = type metadata accessor for UsoTask_noVerb_commonMessage_MessageAttribute(0);
  *(v0 + 6200) = 0xD000000000000019;
  *(v0 + 6208) = 0x80000001C09C67F0;
  *(v0 + 6216) = type metadata accessor for UsoTask_noVerb_common_Salutation(0);
  *(v0 + 6224) = 0xD000000000000017;
  *(v0 + 6232) = 0x80000001C09C6810;
  *(v0 + 6240) = type metadata accessor for UsoTask_tell_common_Salutation(0);
  *(v0 + 6248) = 0xD00000000000001BLL;
  *(v0 + 6256) = 0x80000001C09C6830;
  *(v0 + 6264) = type metadata accessor for UsoTask_noVerb_common_Organization(0);
  *(v0 + 6272) = 0xD00000000000001BLL;
  *(v0 + 6280) = 0x80000001C09C6850;
  *(v0 + 6288) = type metadata accessor for UsoTask_create_common_Organization(0);
  *(v0 + 6296) = 0xD000000000000019;
  *(v0 + 6304) = 0x80000001C09C6870;
  *(v0 + 6312) = type metadata accessor for UsoTask_read_common_Organization(0);
  *(v0 + 6320) = 0xD00000000000001BLL;
  *(v0 + 6328) = 0x80000001C09C6890;
  *(v0 + 6336) = type metadata accessor for UsoTask_update_common_Organization(0);
  *(v0 + 6344) = 0xD00000000000001CLL;
  *(v0 + 6352) = 0x80000001C09C68B0;
  *(v0 + 6360) = type metadata accessor for UsoTask_request_common_Organization(0);
  *(v0 + 6368) = 0xD00000000000001ELL;
  *(v0 + 6376) = 0x80000001C09C68D0;
  *(v0 + 6384) = type metadata accessor for UsoTask_summarise_common_Organization(0);
  *(v0 + 6392) = 0xD00000000000001BLL;
  *(v0 + 6400) = 0x80000001C09C68F0;
  *(v0 + 6408) = type metadata accessor for UsoTask_delete_common_Organization(0);
  *(v0 + 6416) = 0xD000000000000023;
  *(v0 + 6424) = 0x80000001C09C6910;
  *(v0 + 6432) = type metadata accessor for UsoTask_checkExistence_common_Organization(0);
  *(v0 + 6440) = 0xD00000000000002CLL;
  *(v0 + 6448) = 0x80000001C09C6940;
  *(v0 + 6456) = type metadata accessor for UsoTask_noVerb_commonArithmetic_ArithmeticAttribute(0);
  *(v0 + 6464) = 0xD00000000000001FLL;
  *(v0 + 6472) = 0x80000001C09C6970;
  *(v0 + 6480) = type metadata accessor for UsoTask_noVerb_common_MultipliedNumber(0);
  *(v0 + 6488) = 0xD000000000000023;
  *(v0 + 6496) = 0x80000001C09C6990;
  *(v0 + 6504) = type metadata accessor for UsoTask_setDateTimeRange_common_CarSetting(0);
  *(v0 + 6512) = 0xD000000000000021;
  *(v0 + 6520) = 0x80000001C09C69C0;
  *(v0 + 6528) = type metadata accessor for UsoTask_checkExistence_common_CarSetting(0);
  *(v0 + 6536) = 0xD00000000000001ELL;
  *(v0 + 6544) = 0x80000001C09C69F0;
  *(v0 + 6552) = type metadata accessor for UsoTask_setDuration_common_CarSetting(0);
  *(v0 + 6560) = 0xD00000000000001CLL;
  *(v0 + 6568) = 0x80000001C09C6A10;
  *(v0 + 6576) = type metadata accessor for UsoTask_setNumber_common_CarSetting(0);
  *(v0 + 6584) = 0xD00000000000001DLL;
  *(v0 + 6592) = 0x80000001C09C6A30;
  *(v0 + 6600) = type metadata accessor for UsoTask_increaseBy_common_CarSetting(0);
  *(v0 + 6608) = 0xD000000000000028;
  *(v0 + 6616) = 0x80000001C09C6A50;
  *(v0 + 6624) = type metadata accessor for UsoTask_decreaseByMeasurement_common_CarSetting(0);
  *(v0 + 6632) = 0xD000000000000017;
  *(v0 + 6640) = 0x80000001C09C6A80;
  *(v0 + 6648) = type metadata accessor for UsoTask_open_common_CarSetting(0);
  *(v0 + 6656) = 0xD000000000000019;
  *(v0 + 6664) = 0x80000001C09C6AA0;
  *(v0 + 6672) = type metadata accessor for UsoTask_toggle_common_CarSetting(0);
  *(v0 + 6680) = 0xD00000000000001ALL;
  *(v0 + 6688) = 0x80000001C09C6AC0;
  *(v0 + 6696) = type metadata accessor for UsoTask_disable_common_CarSetting(0);
  *(v0 + 6704) = 0xD000000000000016;
  *(v0 + 6712) = 0x80000001C09C6AE0;
  *(v0 + 6720) = type metadata accessor for UsoTask_set_common_CarSetting(0);
  *(v0 + 6728) = 0xD000000000000021;
  *(v0 + 6736) = 0x80000001C09C6B00;
  *(v0 + 6744) = type metadata accessor for UsoTask_setMeasurement_common_CarSetting(0);
  *(v0 + 6752) = 0xD00000000000001CLL;
  *(v0 + 6760) = 0x80000001C09C6B30;
  *(v0 + 6768) = type metadata accessor for UsoTask_summarise_common_CarSetting(0);
  *(v0 + 6776) = 0xD00000000000001BLL;
  *(v0 + 6784) = 0x80000001C09C6B50;
  *(v0 + 6792) = type metadata accessor for UsoTask_setLabel_common_CarSetting(0);
  *(v0 + 6800) = 0xD00000000000001DLL;
  *(v0 + 6808) = 0x80000001C09C6B70;
  *(v0 + 6816) = type metadata accessor for UsoTask_setProfile_common_CarSetting(0);
  *(v0 + 6824) = 0xD00000000000001ALL;
  *(v0 + 6832) = 0x80000001C09C6B90;
  *(v0 + 6840) = type metadata accessor for UsoTask_request_common_CarSetting(0);
  *(v0 + 6848) = 0xD000000000000019;
  *(v0 + 6856) = 0x80000001C09C6BB0;
  *(v0 + 6864) = type metadata accessor for UsoTask_noVerb_common_CarSetting(0);
  *(v0 + 6872) = 0xD00000000000001DLL;
  *(v0 + 6880) = 0x80000001C09C6BD0;
  *(v0 + 6888) = type metadata accessor for UsoTask_decreaseBy_common_CarSetting(0);
  *(v0 + 6896) = 0xD000000000000028;
  *(v0 + 6904) = 0x80000001C09C6BF0;
  *(v0 + 6912) = type metadata accessor for UsoTask_increaseByMeasurement_common_CarSetting(0);
  *(v0 + 6920) = 0xD000000000000019;
  *(v0 + 6928) = 0x80000001C09C6C20;
  *(v0 + 6936) = type metadata accessor for UsoTask_enable_common_CarSetting(0);
  *(v0 + 6944) = 0xD000000000000017;
  *(v0 + 6952) = 0x80000001C09C6C40;
  *(v0 + 6960) = type metadata accessor for UsoTask_noVerb_common_TimeUnit(0);
  *(v0 + 6968) = 0xD00000000000001ELL;
  *(v0 + 6976) = 0x80000001C09C6C60;
  *(v0 + 6984) = type metadata accessor for UsoTask_noVerb_common_OffsetDirection(0);
  *(v0 + 6992) = 0xD00000000000001BLL;
  *(v0 + 7000) = 0x80000001C09C6C80;
  *(v0 + 7008) = type metadata accessor for UsoTask_noVerb_common_Interjection(0);
  *(v0 + 7016) = 0xD00000000000001CLL;
  *(v0 + 7024) = 0x80000001C09C6CA0;
  *(v0 + 7032) = type metadata accessor for UsoTask_checkExistence_common_Event(0);
  *(v0 + 7040) = 0xD000000000000017;
  *(v0 + 7048) = 0x80000001C09C6CC0;
  *(v0 + 7056) = type metadata accessor for UsoTask_summarise_common_Event(0);
  *(v0 + 7064) = 0xD000000000000014;
  *(v0 + 7072) = 0x80000001C09C6CE0;
  *(v0 + 7080) = type metadata accessor for UsoTask_noVerb_common_Event(0);
  *(v0 + 7088) = 0xD000000000000015;
  *(v0 + 7096) = 0x80000001C09C6D00;
  *(v0 + 7104) = type metadata accessor for UsoTask_request_common_Event(0);
  *(v0 + 7112) = 0xD00000000000001ELL;
  *(v0 + 7120) = 0x80000001C09C6D20;
  *(v0 + 7128) = type metadata accessor for UsoTask_noVerb_common_MedicationEvent(0);
  *(v0 + 7136) = 0xD00000000000001FLL;
  *(v0 + 7144) = 0x80000001C09C6D40;
  *(v0 + 7152) = type metadata accessor for UsoTask_request_common_MedicationEvent(0);
  *(v0 + 7160) = 0xD00000000000001ELL;
  *(v0 + 7168) = 0x80000001C09C6D60;
  *(v0 + 7176) = type metadata accessor for UsoTask_snooze_common_MedicationEvent(0);
  *(v0 + 7184) = 0xD000000000000026;
  *(v0 + 7192) = 0x80000001C09C6D80;
  *(v0 + 7200) = type metadata accessor for UsoTask_checkExistence_common_MedicationEvent(0);
  *(v0 + 7208) = 0xD00000000000001ELL;
  *(v0 + 7216) = 0x80000001C09C6DB0;
  *(v0 + 7224) = type metadata accessor for UsoTask_create_common_MedicationEvent(0);
  *(v0 + 7232) = 0xD000000000000020;
  *(v0 + 7240) = 0x80000001C09C6DD0;
  *(v0 + 7248) = type metadata accessor for UsoTask_noVerb_common_RecurringDateTime(0);
  *(v0 + 7256) = 0xD000000000000013;
  *(v0 + 7264) = 0x80000001C09C6E00;
  *(v0 + 7272) = type metadata accessor for UsoTask_noVerb_common_Date(0);
  *(v0 + 7280) = 0xD000000000000019;
  *(v0 + 7288) = 0x80000001C09C6E20;
  *(v0 + 7296) = type metadata accessor for UsoTask_summarise_common_Message(0);
  *(v0 + 7304) = 0xD000000000000014;
  *(v0 + 7312) = 0x80000001C09C6E40;
  *(v0 + 7320) = type metadata accessor for UsoTask_open_common_Message(0);
  *(v0 + 7328) = 0xD000000000000018;
  *(v0 + 7336) = 0x80000001C09C6E60;
  *(v0 + 7344) = type metadata accessor for UsoTask_previous_common_Message(0);
  *(v0 + 7352) = 0xD000000000000016;
  *(v0 + 7360) = 0x80000001C09C6E80;
  *(v0 + 7368) = type metadata accessor for UsoTask_noVerb_common_Message(0);
  *(v0 + 7376) = 0xD000000000000017;
  *(v0 + 7384) = 0x80000001C09C6EA0;
  *(v0 + 7392) = type metadata accessor for UsoTask_unreact_common_Message(0);
  *(v0 + 7400) = 0xD000000000000015;
  *(v0 + 7408) = 0x80000001C09C6EC0;
  *(v0 + 7416) = type metadata accessor for UsoTask_check_common_Message(0);
  *(v0 + 7424) = 0xD000000000000012;
  *(v0 + 7432) = 0x80000001C09C6EE0;
  *(v0 + 7440) = type metadata accessor for UsoTask_cc_common_Message(0);
  *(v0 + 7448) = 0xD000000000000017;
  *(v0 + 7456) = 0x80000001C09C6F00;
  *(v0 + 7464) = type metadata accessor for UsoTask_unshare_common_Message(0);
  *(v0 + 7472) = 0xD00000000000001ELL;
  *(v0 + 7480) = 0x80000001C09C6F20;
  *(v0 + 7488) = type metadata accessor for UsoTask_checkExistence_common_Message(0);
  *(v0 + 7496) = 0xD000000000000014;
  *(v0 + 7504) = 0x80000001C09C6F40;
  *(v0 + 7512) = type metadata accessor for UsoTask_skip_common_Message(0);
  *(v0 + 7520) = 0xD000000000000014;
  *(v0 + 7528) = 0x80000001C09C6F60;
  *(v0 + 7536) = type metadata accessor for UsoTask_read_common_Message(0);
  *(v0 + 7544) = 0xD000000000000014;
  *(v0 + 7552) = 0x80000001C09C6F80;
  *(v0 + 7560) = type metadata accessor for UsoTask_send_common_Message(0);
  *(v0 + 7568) = 0xD000000000000015;
  *(v0 + 7576) = 0x80000001C09C6FA0;
  *(v0 + 7584) = type metadata accessor for UsoTask_reply_common_Message(0);
  *(v0 + 7592) = 0xD000000000000017;
  *(v0 + 7600) = 0x80000001C09C6FC0;
  *(v0 + 7608) = type metadata accessor for UsoTask_forward_common_Message(0);
  *(v0 + 7616) = 0xD000000000000017;
  *(v0 + 7624) = 0x80000001C09C6FE0;
  *(v0 + 7632) = type metadata accessor for UsoTask_request_common_Message(0);
  *(v0 + 7640) = 0xD000000000000018;
  *(v0 + 7648) = 0x80000001C09C7000;
  *(v0 + 7656) = type metadata accessor for UsoTask_continue_common_Message(0);
  *(v0 + 7664) = 0xD000000000000014;
  *(v0 + 7672) = 0x80000001C09C7020;
  *(v0 + 7680) = type metadata accessor for UsoTask_stop_common_Message(0);
  *(v0 + 7688) = 0xD000000000000015;
  *(v0 + 7696) = 0x80000001C09C7040;
  *(v0 + 7704) = type metadata accessor for UsoTask_react_common_Message(0);
  *(v0 + 7712) = 0xD000000000000016;
  *(v0 + 7720) = 0x80000001C09C7060;
  *(v0 + 7728) = type metadata accessor for UsoTask_delete_common_Message(0);
  *(v0 + 7736) = 0xD000000000000016;
  *(v0 + 7744) = 0x80000001C09C7080;
  *(v0 + 7752) = type metadata accessor for UsoTask_update_common_Message(0);
  *(v0 + 7760) = 0xD000000000000015;
  *(v0 + 7768) = 0x80000001C09C70A0;
  *(v0 + 7776) = type metadata accessor for UsoTask_share_common_Message(0);
  *(v0 + 7784) = 0xD00000000000001ELL;
  *(v0 + 7792) = 0x80000001C09C70C0;
  *(v0 + 7800) = type metadata accessor for UsoTask_updateReaction_common_Message(0);
  *(v0 + 7808) = 0xD000000000000014;
  *(v0 + 7816) = 0x80000001C09C70E0;
  *(v0 + 7824) = type metadata accessor for UsoTask_save_common_Message(0);
  *(v0 + 7832) = 0xD000000000000016;
  *(v0 + 7840) = 0x80000001C09C7100;
  *(v0 + 7848) = type metadata accessor for UsoTask_unsend_common_Message(0);
  *(v0 + 7856) = 0xD000000000000022;
  *(v0 + 7864) = 0x80000001C09C7120;
  *(v0 + 7872) = type metadata accessor for UsoTask_request_common_MedicationSchedule(0);
  *(v0 + 7880) = 0xD000000000000021;
  *(v0 + 7888) = 0x80000001C09C7150;
  *(v0 + 7896) = type metadata accessor for UsoTask_noVerb_common_MedicationSchedule(0);
  *(v0 + 7904) = 0xD000000000000029;
  *(v0 + 7912) = 0x80000001C09C7180;
  *(v0 + 7920) = type metadata accessor for UsoTask_checkExistence_common_MedicationSchedule(0);
  *(v0 + 7928) = 0xD000000000000024;
  *(v0 + 7936) = 0x80000001C09C71B0;
  *(v0 + 7944) = type metadata accessor for UsoTask_summarise_common_MedicationSchedule(0);
  *(v0 + 7952) = 0xD000000000000021;
  *(v0 + 7960) = 0x80000001C09C71E0;
  *(v0 + 7968) = type metadata accessor for UsoTask_update_common_MedicationSchedule(0);
  *(v0 + 7976) = 0xD000000000000021;
  *(v0 + 7984) = 0x80000001C09C7210;
  *(v0 + 7992) = type metadata accessor for UsoTask_create_common_MedicationSchedule(0);
  *(v0 + 8000) = 0xD000000000000021;
  *(v0 + 8008) = 0x80000001C09C7240;
  *(v0 + 8016) = type metadata accessor for UsoTask_delete_common_MedicationSchedule(0);
  *(v0 + 8024) = 0xD000000000000019;
  *(v0 + 8032) = 0x80000001C09C7270;
  *(v0 + 8040) = type metadata accessor for UsoTask_noVerb_common_OffsetDate(0);
  *(v0 + 8048) = 0xD000000000000021;
  *(v0 + 8056) = 0x80000001C09C7290;
  *(v0 + 8064) = type metadata accessor for UsoTask_startCapture_common_MediaCapture(0);
  *(v0 + 8072) = 0xD000000000000020;
  *(v0 + 8080) = 0x80000001C09C72C0;
  *(v0 + 8088) = type metadata accessor for UsoTask_stopCapture_common_MediaCapture(0);
  *(v0 + 8096) = 0xD00000000000001CLL;
  *(v0 + 8104) = 0x80000001C09C72F0;
  *(v0 + 8112) = type metadata accessor for UsoTask_capture_common_MediaCapture(0);
  *(v0 + 8120) = 0xD000000000000017;
  *(v0 + 8128) = 0x80000001C09C7310;
  *(v0 + 8136) = type metadata accessor for UsoTask_noVerb_common_Duration(0);
  *(v0 + 8144) = 0xD000000000000019;
  *(v0 + 8152) = 0x80000001C09C7330;
  *(v0 + 8160) = type metadata accessor for UsoTask_summarise_common_Payment(0);
  *(v0 + 8168) = 0xD000000000000016;
  *(v0 + 8176) = 0x80000001C09C7350;
  *(v0 + 8184) = type metadata accessor for UsoTask_noVerb_common_Payment(0);
  *(v0 + 0x2000) = 0xD000000000000020;
  *(v0 + 8200) = 0x80000001C09C7370;
  *(v0 + 8208) = type metadata accessor for UsoTask_summariseHighest_common_Payment(0);
  *(v0 + 8216) = 0xD000000000000016;
  *(v0 + 8224) = 0x80000001C09C73A0;
  *(v0 + 8232) = type metadata accessor for UsoTask_cancel_common_Payment(0);
  *(v0 + 8240) = 0xD000000000000017;
  *(v0 + 8248) = 0x80000001C09C73C0;
  *(v0 + 8256) = type metadata accessor for UsoTask_request_common_Payment(0);
  *(v0 + 8264) = 0xD00000000000001CLL;
  *(v0 + 8272) = 0x80000001C09C73E0;
  *(v0 + 8280) = type metadata accessor for UsoTask_requestMoney_common_Payment(0);
  *(v0 + 8288) = 0xD000000000000013;
  *(v0 + 8296) = 0x80000001C09C7400;
  *(v0 + 8304) = type metadata accessor for UsoTask_pay_common_Payment(0);
  *(v0 + 8312) = 0xD00000000000001FLL;
  *(v0 + 8320) = 0x80000001C09C7420;
  *(v0 + 8328) = type metadata accessor for UsoTask_summariseLowest_common_Payment(0);
  *(v0 + 8336) = 0xD000000000000016;
  *(v0 + 8344) = 0x80000001C09C7440;
  *(v0 + 8352) = type metadata accessor for UsoTask_update_common_Payment(0);
  *(v0 + 8360) = 0xD00000000000001ELL;
  *(v0 + 8368) = 0x80000001C09C7460;
  *(v0 + 8376) = type metadata accessor for UsoTask_checkExistence_common_Payment(0);
  *(v0 + 8384) = 0xD000000000000018;
  *(v0 + 8392) = 0x80000001C09C7480;
  *(v0 + 8400) = type metadata accessor for UsoTask_run_common_VoiceCommand(0);
  *(v0 + 8408) = 0xD00000000000001CLL;
  *(v0 + 8416) = 0x80000001C09C74A0;
  *(v0 + 8424) = type metadata accessor for UsoTask_execute_common_VoiceCommand(0);
  *(v0 + 8432) = 0xD00000000000001BLL;
  *(v0 + 8440) = 0x80000001C09C74C0;
  *(v0 + 8448) = type metadata accessor for UsoTask_delete_common_VoiceCommand(0);
  *(v0 + 8456) = 0xD00000000000001CLL;
  *(v0 + 8464) = 0x80000001C09C74E0;
  *(v0 + 8472) = type metadata accessor for UsoTask_disable_common_VoiceCommand(0);
  *(v0 + 8480) = 0xD00000000000001ELL;
  *(v0 + 8488) = 0x80000001C09C7500;
  *(v0 + 8496) = type metadata accessor for UsoTask_summarise_common_VoiceCommand(0);
  *(v0 + 8504) = 0xD000000000000023;
  *(v0 + 8512) = 0x80000001C09C7520;
  *(v0 + 8520) = type metadata accessor for UsoTask_checkExistence_common_VoiceCommand(0);
  *(v0 + 8528) = 0xD00000000000001BLL;
  *(v0 + 8536) = 0x80000001C09C7550;
  *(v0 + 8544) = type metadata accessor for UsoTask_update_common_VoiceCommand(0);
  *(v0 + 8552) = 0xD00000000000001BLL;
  *(v0 + 8560) = 0x80000001C09C7570;
  *(v0 + 8568) = type metadata accessor for UsoTask_noVerb_common_VoiceCommand(0);
  *(v0 + 8576) = 0xD00000000000001BLL;
  *(v0 + 8584) = 0x80000001C09C7590;
  *(v0 + 8592) = type metadata accessor for UsoTask_create_common_VoiceCommand(0);
  *(v0 + 8600) = 0xD000000000000010;
  *(v0 + 8608) = 0x80000001C09C75B0;
  *(v0 + 8616) = type metadata accessor for UsoTask_park_common_Car(0);
  *(v0 + 8624) = 0xD00000000000001ALL;
  *(v0 + 8632) = 0x80000001C09C75D0;
  *(v0 + 8640) = type metadata accessor for UsoTask_checkExistence_common_Car(0);
  *(v0 + 8648) = 0xD000000000000012;
  *(v0 + 8656) = 0x80000001C09C75F0;
  *(v0 + 8664) = type metadata accessor for UsoTask_noVerb_common_Car(0);
  *(v0 + 8672) = 0xD000000000000010;
  *(v0 + 8680) = 0x80000001C09C7610;
  *(v0 + 8688) = type metadata accessor for UsoTask_find_common_Car(0);
  *(v0 + 8696) = 0xD000000000000010;
  *(v0 + 8704) = 0x80000001C09C7630;
  *(v0 + 8712) = type metadata accessor for UsoTask_ping_common_Car(0);
  *(v0 + 8720) = 0xD00000000000001CLL;
  *(v0 + 8728) = 0x80000001C09C7650;
  *(v0 + 8736) = type metadata accessor for UsoTask_noVerb_common_MixedFraction(0);
  *(v0 + 8744) = 0xD00000000000001CLL;
  *(v0 + 8752) = 0x80000001C09C7670;
  *(v0 + 8760) = type metadata accessor for UsoTask_noVerb_common_ReferenceType(0);
  *(v0 + 8768) = 0xD000000000000021;
  *(v0 + 8776) = 0x80000001C09C7690;
  *(v0 + 8784) = type metadata accessor for UsoTask_noVerb_appleAlarm_AlarmAttribute(0);
  *(v0 + 8792) = 0xD000000000000012;
  *(v0 + 8800) = 0x80000001C09C76C0;
  *(v0 + 8808) = type metadata accessor for UsoTask_noVerb_common_Uri(0);
  *(v0 + 8816) = 0xD000000000000020;
  *(v0 + 8824) = 0x80000001C09C76E0;
  *(v0 + 8832) = type metadata accessor for UsoTask_perform_common_SiriSocialAction(0);
  *(v0 + 8840) = 0xD00000000000001FLL;
  *(v0 + 8848) = 0x80000001C09C7710;
  *(v0 + 8856) = type metadata accessor for UsoTask_noVerb_common_SiriSocialAction(0);
  *(v0 + 8864) = 0xD000000000000022;
  *(v0 + 8872) = 0x80000001C09C7730;
  *(v0 + 8880) = type metadata accessor for UsoTask_summarise_common_SiriSocialAction(0);
  *(v0 + 8888) = 0xD00000000000001DLL;
  *(v0 + 8896) = 0x80000001C09C7760;
  *(v0 + 8904) = type metadata accessor for UsoTask_noVerb_common_CurrencyAmount(0);
  *(v0 + 8912) = 0xD00000000000001CLL;
  *(v0 + 8920) = 0x80000001C09C7780;
  *(v0 + 8928) = type metadata accessor for UsoTask_noVerb_common_MediaItemType(0);
  *(v0 + 8936) = 0xD00000000000001ALL;
  *(v0 + 8944) = 0x80000001C09C77A0;
  *(v0 + 8952) = type metadata accessor for UsoTask_noVerb_common_Geolocation(0);
  *(v0 + 8960) = 0xD000000000000024;
  *(v0 + 8968) = 0x80000001C09C77C0;
  *(v0 + 8976) = type metadata accessor for UsoTask_noVerb_commonFindMy_DeviceAttribute(0);
  *(v0 + 8984) = 0xD000000000000016;
  *(v0 + 8992) = 0x80000001C09C77F0;
  *(v0 + 9000) = type metadata accessor for UsoTask_noVerb_common_Contact(0);
  *(v0 + 9008) = 0xD000000000000030;
  *(v0 + 9016) = 0x80000001C09C7810;
  *(v0 + 9024) = type metadata accessor for UsoTask_noVerb_commonEventTrigger_EventTriggerAttribute(0);
  *(v0 + 9032) = 0xD000000000000032;
  *(v0 + 9040) = 0x80000001C09C7850;
  *(v0 + 9048) = type metadata accessor for UsoTask_noVerb_commonCalendarEvent_CalendarEventAttribute(0);
  *(v0 + 9056) = 0xD00000000000001ELL;
  *(v0 + 9064) = 0x80000001C09C7890;
  *(v0 + 9072) = type metadata accessor for UsoTask_noVerb_common_PointOfInterest(0);
  *(v0 + 9080) = 0xD00000000000001ELL;
  *(v0 + 9088) = 0x80000001C09C78B0;
  *(v0 + 9096) = type metadata accessor for UsoTask_create_common_PointOfInterest(0);
  *(v0 + 9104) = 0xD00000000000001ELL;
  *(v0 + 9112) = 0x80000001C09C78D0;
  *(v0 + 9120) = type metadata accessor for UsoTask_delete_common_PointOfInterest(0);
  *(v0 + 9128) = 0xD00000000000001FLL;
  *(v0 + 9136) = 0x80000001C09C78F0;
  *(v0 + 9144) = type metadata accessor for UsoTask_request_common_PointOfInterest(0);
  *(v0 + 9152) = 0xD00000000000001ELL;
  *(v0 + 9160) = 0x80000001C09C7910;
  *(v0 + 9168) = type metadata accessor for UsoTask_update_common_PointOfInterest(0);
  *(v0 + 9176) = 0xD000000000000021;
  *(v0 + 9184) = 0x80000001C09C7930;
  *(v0 + 9192) = type metadata accessor for UsoTask_summarise_common_PointOfInterest(0);
  *(v0 + 9200) = 0xD000000000000026;
  *(v0 + 9208) = 0x80000001C09C7960;
  *(v0 + 9216) = type metadata accessor for UsoTask_checkExistence_common_PointOfInterest(0);
  *(v0 + 9224) = 0xD00000000000001FLL;
  *(v0 + 9232) = 0x80000001C09C7990;
  *(v0 + 9240) = type metadata accessor for UsoTask_tell_common_SocialInterjection(0);
  *(v0 + 9248) = 0xD000000000000021;
  *(v0 + 9256) = 0x80000001C09C79B0;
  *(v0 + 9264) = type metadata accessor for UsoTask_noVerb_common_SocialInterjection(0);
  *(v0 + 9272) = 0xD00000000000001FLL;
  *(v0 + 9280) = 0x80000001C09C79E0;
  *(v0 + 9288) = type metadata accessor for UsoTask_summarise_common_SafetySession(0);
  *(v0 + 9296) = 0xD00000000000001CLL;
  *(v0 + 9304) = 0x80000001C09C7A00;
  *(v0 + 9312) = type metadata accessor for UsoTask_create_common_SafetySession(0);
  *(v0 + 9320) = 0xD00000000000001CLL;
  *(v0 + 9328) = 0x80000001C09C7A20;
  *(v0 + 9336) = type metadata accessor for UsoTask_update_common_SafetySession(0);
  *(v0 + 9344) = 0xD00000000000001DLL;
  *(v0 + 9352) = 0x80000001C09C7A40;
  *(v0 + 9360) = type metadata accessor for UsoTask_request_common_SafetySession(0);
  *(v0 + 9368) = 0xD00000000000001CLL;
  *(v0 + 9376) = 0x80000001C09C7A60;
  *(v0 + 9384) = type metadata accessor for UsoTask_noVerb_common_SafetySession(0);
  *(v0 + 9392) = 0xD000000000000024;
  *(v0 + 9400) = 0x80000001C09C7A80;
  *(v0 + 9408) = type metadata accessor for UsoTask_checkExistence_common_SafetySession(0);
  *(v0 + 9416) = 0xD00000000000001BLL;
  *(v0 + 9424) = 0x80000001C09C7AB0;
  *(v0 + 9432) = type metadata accessor for UsoTask_pause_common_SafetySession(0);
  *(v0 + 9440) = 0xD00000000000001CLL;
  *(v0 + 9448) = 0x80000001C09C7AD0;
  *(v0 + 9456) = type metadata accessor for UsoTask_delete_common_SafetySession(0);
  *(v0 + 9464) = 0xD00000000000001DLL;
  *(v0 + 9472) = 0x80000001C09C7AF0;
  *(v0 + 9480) = type metadata accessor for UsoTask_restart_common_SafetySession(0);
  *(v0 + 9488) = 0xD000000000000020;
  *(v0 + 9496) = 0x80000001C09C7B10;
  *(v0 + 9504) = type metadata accessor for UsoTask_noVerb_common_KnowledgeQuestion(0);
  *(v0 + 9512) = 0xD00000000000001DLL;
  *(v0 + 9520) = 0x80000001C09C7B40;
  *(v0 + 9528) = type metadata accessor for UsoTask_ask_common_KnowledgeQuestion(0);
  *(v0 + 9536) = 0xD000000000000025;
  *(v0 + 9544) = 0x80000001C09C7B60;
  *(v0 + 9552) = type metadata accessor for UsoTask_noVerb_common_DateTimeRangeQualifier(0);
  *(v0 + 9560) = 0xD00000000000001BLL;
  *(v0 + 9568) = 0x80000001C09C7B90;
  *(v0 + 9576) = type metadata accessor for UsoTask_noVerb_common_EmailAddress(0);
  *(v0 + 9584) = 0xD000000000000019;
  *(v0 + 9592) = 0x80000001C09C7BB0;
  *(v0 + 9600) = type metadata accessor for UsoTask_noVerb_common_CarProfile(0);
  *(v0 + 9608) = 0xD000000000000029;
  *(v0 + 9616) = 0x80000001C09C7BD0;
  *(v0 + 9624) = type metadata accessor for UsoTask_noVerb_common_KnowledgeQuestionAttribute(0);
  *(v0 + 9632) = 0xD00000000000001ALL;
  *(v0 + 9640) = 0x80000001C09C7C00;
  *(v0 + 9648) = type metadata accessor for UsoTask_noVerb_common_Measurement(0);
  *(v0 + 9656) = 0xD000000000000016;
  *(v0 + 9664) = 0x80000001C09C7C20;
  *(v0 + 9672) = type metadata accessor for UsoTask_noVerb_common_Compass(0);
  *(v0 + 9680) = 0xD000000000000017;
  *(v0 + 9688) = 0x80000001C09C7C40;
  *(v0 + 9696) = type metadata accessor for UsoTask_request_common_Compass(0);
  *(v0 + 9704) = 0xD00000000000001ELL;
  *(v0 + 9712) = 0x80000001C09C7C60;
  *(v0 + 9720) = type metadata accessor for UsoTask_checkExistence_common_Compass(0);
  *(v0 + 9728) = 0xD00000000000001FLL;
  *(v0 + 9736) = 0x80000001C09C7C80;
  *(v0 + 9744) = type metadata accessor for UsoTask_disableSetting_common_Reminder(0);
  *(v0 + 9752) = 0xD000000000000017;
  *(v0 + 9760) = 0x80000001C09C7CA0;
  *(v0 + 9768) = type metadata accessor for UsoTask_delete_common_Reminder(0);
  *(v0 + 9776) = 0xD000000000000017;
  *(v0 + 9784) = 0x80000001C09C7CC0;
  *(v0 + 9792) = type metadata accessor for UsoTask_noVerb_common_Reminder(0);
  *(v0 + 9800) = 0xD000000000000018;
  *(v0 + 9808) = 0x80000001C09C7CE0;
  *(v0 + 9816) = type metadata accessor for UsoTask_disable_common_Reminder(0);
  *(v0 + 9824) = 0xD000000000000018;
  *(v0 + 9832) = 0x80000001C09C7D00;
  *(v0 + 9840) = type metadata accessor for UsoTask_request_common_Reminder(0);
  *(v0 + 9848) = 0xD000000000000015;
  *(v0 + 9856) = 0x80000001C09C7D20;
  *(v0 + 9864) = type metadata accessor for UsoTask_hide_common_Reminder(0);
  *(v0 + 9872) = 0xD000000000000017;
  *(v0 + 9880) = 0x80000001C09C7D40;
  *(v0 + 9888) = type metadata accessor for UsoTask_snooze_common_Reminder(0);
  *(v0 + 9896) = 0xD000000000000017;
  *(v0 + 9904) = 0x80000001C09C7D60;
  *(v0 + 9912) = type metadata accessor for UsoTask_update_common_Reminder(0);
  *(v0 + 9920) = 0xD00000000000001FLL;
  *(v0 + 9928) = 0x80000001C09C7D80;
  *(v0 + 9936) = type metadata accessor for UsoTask_checkExistence_common_Reminder(0);
  *(v0 + 9944) = 0xD000000000000017;
  *(v0 + 9952) = 0x80000001C09C7DA0;
  *(v0 + 9960) = type metadata accessor for UsoTask_unhide_common_Reminder(0);
  *(v0 + 9968) = 0xD000000000000015;
  *(v0 + 9976) = 0x80000001C09C7DC0;
  *(v0 + 9984) = type metadata accessor for UsoTask_read_common_Reminder(0);
  *(v0 + 9992) = 0xD00000000000001ELL;
  *(v0 + 10000) = 0x80000001C09C7DE0;
  *(v0 + 10008) = type metadata accessor for UsoTask_enableSetting_common_Reminder(0);
  *(v0 + 10016) = 0xD000000000000017;
  *(v0 + 10024) = 0x80000001C09C7E00;
  *(v0 + 10032) = type metadata accessor for UsoTask_create_common_Reminder(0);
  *(v0 + 10040) = 0xD00000000000001ALL;
  *(v0 + 10048) = 0x80000001C09C7E20;
  *(v0 + 10056) = type metadata accessor for UsoTask_summarise_common_Reminder(0);
  *(v0 + 10064) = 0xD00000000000001CLL;
  *(v0 + 10072) = 0x80000001C09C7E40;
  *(v0 + 10080) = type metadata accessor for UsoTask_noVerb_common_LocalBusiness(0);
  *(v0 + 10088) = 0xD00000000000001FLL;
  *(v0 + 10096) = 0x80000001C09C7E60;
  *(v0 + 10104) = type metadata accessor for UsoTask_summarise_common_LocalBusiness(0);
  *(v0 + 10112) = 0xD00000000000001DLL;
  *(v0 + 10120) = 0x80000001C09C7E80;
  *(v0 + 10128) = type metadata accessor for UsoTask_request_common_LocalBusiness(0);
  *(v0 + 10136) = 0xD00000000000001ALL;
  *(v0 + 10144) = 0x80000001C09C7EA0;
  *(v0 + 10152) = type metadata accessor for UsoTask_read_common_LocalBusiness(0);
  *(v0 + 10160) = 0xD00000000000001CLL;
  *(v0 + 10168) = 0x80000001C09C7EC0;
  *(v0 + 10176) = type metadata accessor for UsoTask_create_common_LocalBusiness(0);
  *(v0 + 10184) = 0xD000000000000024;
  *(v0 + 10192) = 0x80000001C09C7EE0;
  *(v0 + 10200) = type metadata accessor for UsoTask_checkExistence_common_LocalBusiness(0);
  *(v0 + 10208) = 0xD00000000000001CLL;
  *(v0 + 10216) = 0x80000001C09C7F10;
  *(v0 + 10224) = type metadata accessor for UsoTask_delete_common_LocalBusiness(0);
  *(v0 + 10232) = 0xD00000000000001CLL;
  *(v0 + 10240) = 0x80000001C09C7F30;
  *(v0 + 10248) = type metadata accessor for UsoTask_update_common_LocalBusiness(0);
  *(v0 + 10256) = 0xD000000000000018;
  *(v0 + 10264) = 0x80000001C09C7F50;
  *(v0 + 10272) = type metadata accessor for UsoTask_noVerb_common_AppAction(0);
  *(v0 + 10280) = 0xD000000000000016;
  *(v0 + 10288) = 0x80000001C09C7F70;
  *(v0 + 10296) = type metadata accessor for UsoTask_undo_common_AppAction(0);
  *(v0 + 10304) = 0xD000000000000016;
  *(v0 + 10312) = 0x80000001C09C7F90;
  *(v0 + 10320) = type metadata accessor for UsoTask_redo_common_AppAction(0);
  *(v0 + 10328) = 0xD00000000000001CLL;
  *(v0 + 10336) = 0x80000001C09C7FB0;
  *(v0 + 10344) = type metadata accessor for UsoTask_runCommand_common_AppAction(0);
  *(v0 + 10352) = 0xD000000000000029;
  *(v0 + 10360) = 0x80000001C09C7FD0;
  *(v0 + 10368) = type metadata accessor for UsoTask_disableNotifications_common_FindMyStatus(0);
  *(v0 + 10376) = 0xD000000000000019;
  *(v0 + 10384) = 0x80000001C09C8000;
  *(v0 + 10392) = type metadata accessor for UsoTask_hide_common_FindMyStatus(0);
  *(v0 + 10400) = 0xD000000000000028;
  *(v0 + 10408) = 0x80000001C09C8020;
  *(v0 + 10416) = type metadata accessor for UsoTask_enableNotifications_common_FindMyStatus(0);
  *(v0 + 10424) = 0xD00000000000001BLL;
  *(v0 + 10432) = 0x80000001C09C8050;
  *(v0 + 10440) = type metadata accessor for UsoTask_unhide_common_FindMyStatus(0);
  *(v0 + 10448) = 0xD00000000000001BLL;
  *(v0 + 10456) = 0x80000001C09C8070;
  *(v0 + 10464) = type metadata accessor for UsoTask_noVerb_common_FindMyStatus(0);
  *(v0 + 10472) = 0xD000000000000027;
  *(v0 + 10480) = 0x80000001C09C8090;
  *(v0 + 10488) = type metadata accessor for UsoTask_noVerb_commonNotebook_NotebookItemType(0);
  *(v0 + 10496) = 0xD000000000000022;
  *(v0 + 10504) = 0x80000001C09C80C0;
  *(v0 + 10512) = type metadata accessor for UsoTask_perform_common_NotificationAction(0);
  *(v0 + 10520) = 0xD000000000000021;
  *(v0 + 10528) = 0x80000001C09C80F0;
  *(v0 + 10536) = type metadata accessor for UsoTask_noVerb_common_NotificationAction(0);
  *(v0 + 10544) = 0xD000000000000017;
  *(v0 + 10552) = 0x80000001C09C8120;
  *(v0 + 10560) = type metadata accessor for UsoTask_noVerb_common_Language(0);
  *(v0 + 10568) = 0xD00000000000001ELL;
  *(v0 + 10576) = 0x80000001C09C8140;
  *(v0 + 10584) = type metadata accessor for UsoTask_noVerb_commonApp_AppAttribute(0);
  *(v0 + 10592) = 0xD000000000000020;
  *(v0 + 10600) = 0x80000001C09C8160;
  *(v0 + 10608) = type metadata accessor for UsoTask_setDateTimeRange_common_Setting(0);
  *(v0 + 10616) = 0xD000000000000019;
  *(v0 + 10624) = 0x80000001C09C8190;
  *(v0 + 10632) = type metadata accessor for UsoTask_summarise_common_Setting(0);
  *(v0 + 10640) = 0xD000000000000016;
  *(v0 + 10648) = 0x80000001C09C81B0;
  *(v0 + 10656) = type metadata accessor for UsoTask_noVerb_common_Setting(0);
  *(v0 + 10664) = 0xD00000000000001BLL;
  *(v0 + 10672) = 0x80000001C09C81D0;
  *(v0 + 10680) = type metadata accessor for UsoTask_setDuration_common_Setting(0);
  *(v0 + 10688) = 0xD000000000000017;
  *(v0 + 10696) = 0x80000001C09C81F0;
  *(v0 + 10704) = type metadata accessor for UsoTask_request_common_Setting(0);
  *(v0 + 10712) = 0xD000000000000018;
  *(v0 + 10720) = 0x80000001C09C8210;
  *(v0 + 10728) = type metadata accessor for UsoTask_setLabel_common_Setting(0);
  *(v0 + 10736) = 0xD00000000000001ALL;
  *(v0 + 10744) = 0x80000001C09C8230;
  *(v0 + 10752) = type metadata accessor for UsoTask_increaseBy_common_Setting(0);
  *(v0 + 10760) = 0xD000000000000016;
  *(v0 + 10768) = 0x80000001C09C8250;
  *(v0 + 10776) = type metadata accessor for UsoTask_enable_common_Setting(0);
  *(v0 + 10784) = 0xD000000000000019;
  *(v0 + 10792) = 0x80000001C09C8270;
  *(v0 + 10800) = type metadata accessor for UsoTask_setNumber_common_Setting(0);
  *(v0 + 10808) = 0xD00000000000001ALL;
  *(v0 + 10816) = 0x80000001C09C8290;
  *(v0 + 10824) = type metadata accessor for UsoTask_decreaseBy_common_Setting(0);
  *(v0 + 10832) = 0xD00000000000001ELL;
  *(v0 + 10840) = 0x80000001C09C82B0;
  *(v0 + 10848) = type metadata accessor for UsoTask_setMeasurement_common_Setting(0);
  *(v0 + 10856) = 0xD000000000000017;
  *(v0 + 10864) = 0x80000001C09C82D0;
  *(v0 + 10872) = type metadata accessor for UsoTask_disable_common_Setting(0);
  *(v0 + 10880) = 0xD000000000000014;
  *(v0 + 10888) = 0x80000001C09C82F0;
  *(v0 + 10896) = type metadata accessor for UsoTask_open_common_Setting(0);
  *(v0 + 10904) = 0xD00000000000001ELL;
  *(v0 + 10912) = 0x80000001C09C8310;
  *(v0 + 10920) = type metadata accessor for UsoTask_checkExistence_common_Setting(0);
  *(v0 + 10928) = 0xD000000000000016;
  *(v0 + 10936) = 0x80000001C09C8330;
  *(v0 + 10944) = type metadata accessor for UsoTask_toggle_common_Setting(0);
  *(v0 + 10952) = 0xD000000000000024;
  *(v0 + 10960) = 0x80000001C09C8350;
  *(v0 + 10968) = type metadata accessor for UsoTask_discoverCapabilities_common_Setting(0);
  *(v0 + 10976) = 0xD000000000000025;
  *(v0 + 10984) = 0x80000001C09C8380;
  *(v0 + 10992) = type metadata accessor for UsoTask_increaseByMeasurement_common_Setting(0);
  *(v0 + 11000) = 0xD000000000000013;
  *(v0 + 11008) = 0x80000001C09C83B0;
  *(v0 + 11016) = type metadata accessor for UsoTask_set_common_Setting(0);
  *(v0 + 11024) = 0xD000000000000025;
  *(v0 + 11032) = 0x80000001C09C83D0;
  *(v0 + 11040) = type metadata accessor for UsoTask_decreaseByMeasurement_common_Setting(0);
  *(v0 + 11048) = 0xD000000000000014;
  *(v0 + 11056) = 0x80000001C09C8400;
  *(v0 + 11064) = type metadata accessor for UsoTask_unhide_uso_NoEntity(0);
  *(v0 + 11072) = 0xD000000000000013;
  *(v0 + 11080) = 0x80000001C09C8420;
  *(v0 + 11088) = type metadata accessor for UsoTask_pause_uso_NoEntity(0);
  *(v0 + 11096) = 0xD000000000000017;
  *(v0 + 11104) = 0x80000001C09C8440;
  *(v0 + 11112) = type metadata accessor for UsoTask_summarise_uso_NoEntity(0);
  *(v0 + 11120) = 0xD000000000000012;
  *(v0 + 11128) = 0x80000001C09C8460;
  *(v0 + 11136) = type metadata accessor for UsoTask_undo_uso_NoEntity(0);
  *(v0 + 11144) = 0xD000000000000012;
  *(v0 + 11152) = 0x80000001C09C8480;
  *(v0 + 11160) = type metadata accessor for UsoTask_read_uso_NoEntity(0);
  *(v0 + 11168) = 0xD000000000000012;
  *(v0 + 11176) = 0x80000001C09C84A0;
  *(v0 + 11184) = type metadata accessor for UsoTask_hide_uso_NoEntity(0);
  *(v0 + 11192) = 0xD000000000000013;
  *(v0 + 11200) = 0x80000001C09C84C0;
  *(v0 + 11208) = type metadata accessor for UsoTask_close_uso_NoEntity(0);
  *(v0 + 11216) = 0xD000000000000014;
  *(v0 + 11224) = 0x80000001C09C84E0;
  *(v0 + 11232) = type metadata accessor for UsoTask_resume_uso_NoEntity(0);
  *(v0 + 11240) = 0xD000000000000017;
  *(v0 + 11248) = 0x80000001C09C8500;
  *(v0 + 11256) = type metadata accessor for UsoTask_catchMeUp_uso_NoEntity(0);
  *(v0 + 11264) = 0xD000000000000019;
  *(v0 + 11272) = 0x80000001C09C8520;
  *(v0 + 11280) = type metadata accessor for UsoTask_skipForward_uso_NoEntity(0);
  *(v0 + 11288) = 0xD000000000000012;
  *(v0 + 11296) = 0x80000001C09C8540;
  *(v0 + 11304) = type metadata accessor for UsoTask_save_uso_NoEntity(0);
  *(v0 + 11312) = 0xD000000000000012;
  *(v0 + 11320) = 0x80000001C09C8560;
  *(v0 + 11328) = type metadata accessor for UsoTask_like_uso_NoEntity(0);
  *(v0 + 11336) = 0xD000000000000012;
  *(v0 + 11344) = 0x80000001C09C8580;
  *(v0 + 11352) = type metadata accessor for UsoTask_play_uso_NoEntity(0);
  *(v0 + 11360) = 0xD000000000000014;
  *(v0 + 11368) = 0x80000001C09C85A0;
  *(v0 + 11376) = type metadata accessor for UsoTask_repeat_uso_NoEntity(0);
  *(v0 + 11384) = 0xD00000000000001CLL;
  *(v0 + 11392) = 0x80000001C09C85C0;
  *(v0 + 11400) = type metadata accessor for UsoTask_softwareUpdate_uso_NoEntity(0);
  *(v0 + 11408) = 0xD000000000000013;
  *(v0 + 11416) = 0x80000001C09C85E0;
  *(v0 + 11424) = type metadata accessor for UsoTask_start_uso_NoEntity(0);
  *(v0 + 11432) = 0xD000000000000013;
  *(v0 + 11440) = 0x80000001C09C8600;
  *(v0 + 11448) = type metadata accessor for UsoTask_reply_uso_NoEntity(0);
  *(v0 + 11456) = 0xD000000000000012;
  *(v0 + 11464) = 0x80000001C09C8620;
  *(v0 + 11472) = type metadata accessor for UsoTask_open_uso_NoEntity(0);
  *(v0 + 11480) = 0xD00000000000001ALL;
  *(v0 + 11488) = 0x80000001C09C8640;
  *(v0 + 11496) = type metadata accessor for UsoTask_skipBackward_uso_NoEntity(0);
  *(v0 + 11504) = 0xD000000000000022;
  *(v0 + 11512) = 0x80000001C09C8660;
  *(v0 + 11520) = type metadata accessor for UsoTask_discoverCapabilities_uso_NoEntity(0);
  *(v0 + 11528) = 0xD000000000000014;
  *(v0 + 11536) = 0x80000001C09C8690;
  *(v0 + 11544) = type metadata accessor for UsoTask_update_uso_NoEntity(0);
  *(v0 + 11552) = 0xD000000000000014;
  *(v0 + 11560) = 0x80000001C09C86B0;
  *(v0 + 11568) = type metadata accessor for UsoTask_noVerb_uso_NoEntity(0);
  *(v0 + 11576) = 0xD000000000000014;
  *(v0 + 11584) = 0x80000001C09C86D0;
  *(v0 + 11592) = type metadata accessor for UsoTask_delete_uso_NoEntity(0);
  *(v0 + 11600) = 0xD000000000000015;
  *(v0 + 11608) = 0x80000001C09C86F0;
  *(v0 + 11616) = type metadata accessor for UsoTask_shuffle_uso_NoEntity(0);
  *(v0 + 11624) = 0xD000000000000015;
  *(v0 + 11632) = 0x80000001C09C8710;
  *(v0 + 11640) = type metadata accessor for UsoTask_restart_uso_NoEntity(0);
  *(v0 + 11648) = 0xD000000000000014;
  *(v0 + 11656) = 0x80000001C09C8730;
  *(v0 + 11664) = type metadata accessor for UsoTask_unlike_uso_NoEntity(0);
  *(v0 + 11672) = 0xD000000000000012;
  *(v0 + 11680) = 0x80000001C09C8750;
  *(v0 + 11688) = type metadata accessor for UsoTask_stop_uso_NoEntity(0);
  *(v0 + 11696) = 0xD000000000000012;
  *(v0 + 11704) = 0x80000001C09C8770;
  *(v0 + 11712) = type metadata accessor for UsoTask_quit_uso_NoEntity(0);
  *(v0 + 11720) = 0xD000000000000022;
  *(v0 + 11728) = 0x80000001C09C8790;
  *(v0 + 11736) = type metadata accessor for UsoTask_summarise_common_UserSocialAction(0);
  *(v0 + 11744) = 0xD00000000000001ELL;
  *(v0 + 11752) = 0x80000001C09C87C0;
  *(v0 + 11760) = type metadata accessor for UsoTask_state_common_UserSocialAction(0);
  *(v0 + 11768) = 0xD00000000000001FLL;
  *(v0 + 11776) = 0x80000001C09C87E0;
  *(v0 + 11784) = type metadata accessor for UsoTask_noVerb_common_UserSocialAction(0);
  *(v0 + 11792) = 0xD000000000000017;
  *(v0 + 11800) = 0x80000001C09C8800;
  *(v0 + 11808) = type metadata accessor for UsoTask_summarise_common_Alarm(0);
  *(v0 + 11816) = 0xD000000000000014;
  *(v0 + 11824) = 0x80000001C09C8820;
  *(v0 + 11832) = type metadata accessor for UsoTask_create_common_Alarm(0);
  *(v0 + 11840) = 0xD00000000000001CLL;
  *(v0 + 11848) = 0x80000001C09C8840;
  *(v0 + 11856) = type metadata accessor for UsoTask_checkExistence_common_Alarm(0);
  *(v0 + 11864) = 0xD000000000000014;
  *(v0 + 11872) = 0x80000001C09C8860;
  *(v0 + 11880) = type metadata accessor for UsoTask_noVerb_common_Alarm(0);
  *(v0 + 11888) = 0xD000000000000015;
  *(v0 + 11896) = 0x80000001C09C8880;
  *(v0 + 11904) = type metadata accessor for UsoTask_disable_common_Alarm(0);
  *(v0 + 11912) = 0xD000000000000014;
  *(v0 + 11920) = 0x80000001C09C88A0;
  *(v0 + 11928) = type metadata accessor for UsoTask_snooze_common_Alarm(0);
  *(v0 + 11936) = 0xD000000000000014;
  *(v0 + 11944) = 0x80000001C09C88C0;
  *(v0 + 11952) = type metadata accessor for UsoTask_enable_common_Alarm(0);
  *(v0 + 11960) = 0xD000000000000015;
  *(v0 + 11968) = 0x80000001C09C88E0;
  *(v0 + 11976) = type metadata accessor for UsoTask_request_common_Alarm(0);
  *(v0 + 11984) = 0xD000000000000014;
  *(v0 + 11992) = 0x80000001C09C8900;
  *(v0 + 12000) = type metadata accessor for UsoTask_delete_common_Alarm(0);
  *(v0 + 12008) = 0xD000000000000014;
  *(v0 + 12016) = 0x80000001C09C8920;
  *(v0 + 12024) = type metadata accessor for UsoTask_update_common_Alarm(0);
  *(v0 + 12032) = 0xD000000000000012;
  *(v0 + 12040) = 0x80000001C09C8940;
  *(v0 + 12048) = type metadata accessor for UsoTask_read_common_Alarm(0);
  *(v0 + 12056) = 0xD000000000000023;
  *(v0 + 12064) = 0x80000001C09C8960;
  *(v0 + 12072) = type metadata accessor for UsoTask_checkExistence_common_UserProperty(0);
  *(v0 + 12080) = 0xD00000000000001BLL;
  *(v0 + 12088) = 0x80000001C09C8990;
  *(v0 + 12096) = type metadata accessor for UsoTask_noVerb_common_UserProperty(0);
  *(v0 + 12104) = 0xD00000000000001ALL;
  *(v0 + 12112) = 0x80000001C09C89B0;
  *(v0 + 12120) = type metadata accessor for UsoTask_state_common_UserProperty(0);
  *(v0 + 12128) = 0xD00000000000001ELL;
  *(v0 + 12136) = 0x80000001C09C89D0;
  *(v0 + 12144) = type metadata accessor for UsoTask_summarise_common_UserProperty(0);
  *(v0 + 12152) = 0xD000000000000018;
  *(v0 + 12160) = 0x80000001C09C89F0;
  *(v0 + 12168) = type metadata accessor for UsoTask_noVerb_common_StopWatch(0);
  *(v0 + 12176) = 0xD000000000000015;
  *(v0 + 12184) = 0x80000001C09C8A10;
  *(v0 + 12192) = type metadata accessor for UsoTask_lap_common_StopWatch(0);
  *(v0 + 12200) = 0xD000000000000019;
  *(v0 + 12208) = 0x80000001C09C8A30;
  *(v0 + 12216) = type metadata accessor for UsoTask_request_common_StopWatch(0);
  *(v0 + 12224) = 0xD000000000000016;
  *(v0 + 12232) = 0x80000001C09C8A50;
  *(v0 + 12240) = type metadata accessor for UsoTask_stop_common_StopWatch(0);
  *(v0 + 12248) = 0xD000000000000016;
  *(v0 + 12256) = 0x80000001C09C8A70;
  *(v0 + 12264) = type metadata accessor for UsoTask_show_common_StopWatch(0);
  *(v0 + 12272) = 0xD000000000000017;
  *(v0 + 12280) = 0x80000001C09C8A90;
  *(v0 + 12288) = type metadata accessor for UsoTask_reset_common_StopWatch(0);
  *(v0 + 12296) = 0xD000000000000017;
  *(v0 + 12304) = 0x80000001C09C8AB0;
  *(v0 + 12312) = type metadata accessor for UsoTask_start_common_StopWatch(0);
  *(v0 + 12320) = 0xD00000000000001BLL;
  *(v0 + 12328) = 0x80000001C09C8AD0;
  *(v0 + 12336) = type metadata accessor for UsoTask_disableSetting_common_Note(0);
  *(v0 + 12344) = 0xD000000000000011;
  *(v0 + 12352) = 0x80000001C09C8AF0;
  *(v0 + 12360) = type metadata accessor for UsoTask_read_common_Note(0);
  *(v0 + 12368) = 0xD000000000000011;
  *(v0 + 12376) = 0x80000001C09C8B10;
  *(v0 + 12384) = type metadata accessor for UsoTask_undo_common_Note(0);
  *(v0 + 12392) = 0xD000000000000013;
  *(v0 + 12400) = 0x80000001C09C8B30;
  *(v0 + 12408) = type metadata accessor for UsoTask_noVerb_common_Note(0);
  *(v0 + 12416) = 0xD000000000000013;
  *(v0 + 12424) = 0x80000001C09C8B50;
  *(v0 + 12432) = type metadata accessor for UsoTask_update_common_Note(0);
  *(v0 + 12440) = 0xD00000000000001ALL;
  *(v0 + 12448) = 0x80000001C09C8B70;
  *(v0 + 12456) = type metadata accessor for UsoTask_enableSetting_common_Note(0);
  *(v0 + 12464) = 0xD000000000000014;
  *(v0 + 12472) = 0x80000001C09C8B90;
  *(v0 + 12480) = type metadata accessor for UsoTask_request_common_Note(0);
  *(v0 + 12488) = 0xD00000000000001BLL;
  *(v0 + 12496) = 0x80000001C09C8BB0;
  *(v0 + 12504) = type metadata accessor for UsoTask_checkExistence_common_Note(0);
  *(v0 + 12512) = 0xD000000000000013;
  *(v0 + 12520) = 0x80000001C09C8BD0;
  *(v0 + 12528) = type metadata accessor for UsoTask_delete_common_Note(0);
  *(v0 + 12536) = 0xD000000000000013;
  *(v0 + 12544) = 0x80000001C09C8BF0;
  *(v0 + 12552) = type metadata accessor for UsoTask_create_common_Note(0);
  *(v0 + 12560) = 0xD000000000000016;
  *(v0 + 12568) = 0x80000001C09C8C10;
  *(v0 + 12576) = type metadata accessor for UsoTask_summarise_common_Note(0);
  *(v0 + 12584) = 0xD000000000000018;
  *(v0 + 12592) = 0x80000001C09C8C30;
  *(v0 + 12600) = type metadata accessor for UsoTask_noVerb_common_EasterEgg(0);
  *(v0 + 12608) = 0xD00000000000001CLL;
  *(v0 + 12616) = 0x80000001C09C8C50;
  *(v0 + 12624) = type metadata accessor for UsoTask_update_common_CalendarEvent(0);
  *(v0 + 12632) = 0xD00000000000001DLL;
  *(v0 + 12640) = 0x80000001C09C8C70;
  *(v0 + 12648) = type metadata accessor for UsoTask_request_common_CalendarEvent(0);
  *(v0 + 12656) = 0xD00000000000001CLL;
  *(v0 + 12664) = 0x80000001C09C8C90;
  *(v0 + 12672) = type metadata accessor for UsoTask_noVerb_common_CalendarEvent(0);
  *(v0 + 12680) = 0xD00000000000001ALL;
  *(v0 + 12688) = 0x80000001C09C8CB0;
  *(v0 + 12696) = type metadata accessor for UsoTask_join_common_CalendarEvent(0);
  *(v0 + 12704) = 0xD00000000000001CLL;
  *(v0 + 12712) = 0x80000001C09C8CD0;
  *(v0 + 12720) = type metadata accessor for UsoTask_delete_common_CalendarEvent(0);
  *(v0 + 12728) = 0xD00000000000001FLL;
  *(v0 + 12736) = 0x80000001C09C8CF0;
  *(v0 + 12744) = type metadata accessor for UsoTask_summarise_common_CalendarEvent(0);
  *(v0 + 12752) = 0xD00000000000001ALL;
  *(v0 + 12760) = 0x80000001C09C8D10;
  *(v0 + 12768) = type metadata accessor for UsoTask_read_common_CalendarEvent(0);
  *(v0 + 12776) = 0xD000000000000024;
  *(v0 + 12784) = 0x80000001C09C8D30;
  *(v0 + 12792) = type metadata accessor for UsoTask_checkExistence_common_CalendarEvent(0);
  *(v0 + 12800) = 0xD00000000000001CLL;
  *(v0 + 12808) = 0x80000001C09C8D60;
  *(v0 + 12816) = type metadata accessor for UsoTask_create_common_CalendarEvent(0);
  *(v0 + 12824) = 0xD00000000000001ALL;
  *(v0 + 12832) = 0x80000001C09C8D80;
  *(v0 + 12840) = type metadata accessor for UsoTask_play_common_DailyBriefing(0);
  *(v0 + 12848) = 0xD00000000000001FLL;
  *(v0 + 12856) = 0x80000001C09C8DA0;
  *(v0 + 12864) = type metadata accessor for UsoTask_summarise_common_DailyBriefing(0);
  *(v0 + 12872) = 0xD00000000000001CLL;
  *(v0 + 12880) = 0x80000001C09C8DC0;
  *(v0 + 12888) = type metadata accessor for UsoTask_update_common_DailyBriefing(0);
  *(v0 + 12896) = 0xD00000000000001CLL;
  *(v0 + 12904) = 0x80000001C09C8DE0;
  *(v0 + 12912) = type metadata accessor for UsoTask_repeat_common_DailyBriefing(0);
  *(v0 + 12920) = 0xD00000000000001CLL;
  *(v0 + 12928) = 0x80000001C09C8E00;
  *(v0 + 12936) = type metadata accessor for UsoTask_delete_common_DailyBriefing(0);
  *(v0 + 12944) = 0xD00000000000001CLL;
  *(v0 + 12952) = 0x80000001C09C8E20;
  *(v0 + 12960) = type metadata accessor for UsoTask_noVerb_common_DailyBriefing(0);
  *(v0 + 12968) = 0xD000000000000024;
  *(v0 + 12976) = 0x80000001C09C8E40;
  *(v0 + 12984) = type metadata accessor for UsoTask_checkExistence_common_DailyBriefing(0);
  *(v0 + 12992) = 0xD00000000000001CLL;
  *(v0 + 13000) = 0x80000001C09C8E70;
  *(v0 + 13008) = type metadata accessor for UsoTask_request_common_NotebookItem(0);
  *(v0 + 13016) = 0xD00000000000001BLL;
  *(v0 + 13024) = 0x80000001C09C8E90;
  *(v0 + 13032) = type metadata accessor for UsoTask_snooze_common_NotebookItem(0);
  *(v0 + 13040) = 0xD00000000000001FLL;
  *(v0 + 13048) = 0x80000001C09C8EB0;
  *(v0 + 13056) = type metadata accessor for UsoTask_deactivate_common_NotebookItem(0);
  *(v0 + 13064) = 0xD00000000000001BLL;
  *(v0 + 13072) = 0x80000001C09C8ED0;
  *(v0 + 13080) = type metadata accessor for UsoTask_create_common_NotebookItem(0);
  *(v0 + 13088) = 0xD00000000000001BLL;
  *(v0 + 13096) = 0x80000001C09C8EF0;
  *(v0 + 13104) = type metadata accessor for UsoTask_delete_common_NotebookItem(0);
  *(v0 + 13112) = 0xD00000000000001ELL;
  *(v0 + 13120) = 0x80000001C09C8F10;
  *(v0 + 13128) = type metadata accessor for UsoTask_summarise_common_NotebookItem(0);
  *(v0 + 13136) = 0xD00000000000001BLL;
  *(v0 + 13144) = 0x80000001C09C8F30;
  *(v0 + 13152) = type metadata accessor for UsoTask_noVerb_common_NotebookItem(0);
  *(v0 + 13160) = 0xD000000000000023;
  *(v0 + 13168) = 0x80000001C09C8F50;
  *(v0 + 13176) = type metadata accessor for UsoTask_checkExistence_common_NotebookItem(0);
  *(v0 + 13184) = 0xD000000000000019;
  *(v0 + 13192) = 0x80000001C09C8F80;
  *(v0 + 13200) = type metadata accessor for UsoTask_read_common_NotebookItem(0);
  *(v0 + 13208) = 0xD000000000000019;
  *(v0 + 13216) = 0x80000001C09C8FA0;
  *(v0 + 13224) = type metadata accessor for UsoTask_undo_common_NotebookItem(0);
  *(v0 + 13232) = 0xD00000000000001BLL;
  *(v0 + 13240) = 0x80000001C09C8FC0;
  *(v0 + 13248) = type metadata accessor for UsoTask_update_common_NotebookItem(0);
  *(v0 + 13256) = 0xD000000000000019;
  *(v0 + 13264) = 0x80000001C09C8FE0;
  *(v0 + 13272) = type metadata accessor for UsoTask_summarise_common_Writing(0);
  *(v0 + 13280) = 0xD000000000000014;
  *(v0 + 13288) = 0x80000001C09C9000;
  *(v0 + 13296) = type metadata accessor for UsoTask_play_common_Writing(0);
  *(v0 + 13304) = 0xD000000000000014;
  *(v0 + 13312) = 0x80000001C09C9020;
  *(v0 + 13320) = type metadata accessor for UsoTask_quit_common_Writing(0);
  *(v0 + 13328) = 0xD000000000000014;
  *(v0 + 13336) = 0x80000001C09C9040;
  *(v0 + 13344) = type metadata accessor for UsoTask_skip_common_Writing(0);
  *(v0 + 13352) = 0xD000000000000016;
  *(v0 + 13360) = 0x80000001C09C9060;
  *(v0 + 13368) = type metadata accessor for UsoTask_noVerb_common_Writing(0);
  *(v0 + 13376) = 0xD000000000000017;
  *(v0 + 13384) = 0x80000001C09C9080;
  *(v0 + 13392) = type metadata accessor for UsoTask_request_common_Writing(0);
  *(v0 + 13400) = 0xD000000000000014;
  *(v0 + 13408) = 0x80000001C09C90A0;
  *(v0 + 13416) = type metadata accessor for UsoTask_show_common_Writing(0);
  *(v0 + 13424) = 0xD000000000000012;
  *(v0 + 13432) = 0x80000001C09C90C0;
  *(v0 + 13440) = type metadata accessor for UsoTask_noVerb_common_Age(0);
  *(v0 + 13448) = 0xD00000000000001DLL;
  *(v0 + 13456) = 0x80000001C09C90E0;
  *(v0 + 13464) = type metadata accessor for UsoTask_noVerb_uso_NLv3UnknownEntity(0);
  *(v0 + 13472) = 0xD000000000000018;
  *(v0 + 13480) = 0x80000001C09C9100;
  *(v0 + 13488) = type metadata accessor for UsoTask_create_common_SiriAlias(0);
  *(v0 + 13496) = 0xD00000000000001DLL;
  *(v0 + 13504) = 0x80000001C09C9120;
  *(v0 + 13512) = type metadata accessor for UsoTask_noVerb_common_OffsetDateTime(0);
  *(v0 + 13520) = 0xD00000000000001BLL;
  *(v0 + 13528) = 0x80000001C09C9140;
  *(v0 + 13536) = type metadata accessor for UsoTask_read_common_OffsetDateTime(0);
  *(v0 + 13544) = 0xD00000000000001ELL;
  *(v0 + 13552) = 0x80000001C09C9160;
  *(v0 + 13560) = type metadata accessor for UsoTask_convert_common_OffsetDateTime(0);
  *(v0 + 13568) = 0xD00000000000001ELL;
  *(v0 + 13576) = 0x80000001C09C9180;
  *(v0 + 13584) = type metadata accessor for UsoTask_request_common_OffsetDateTime(0);
  *(v0 + 13592) = 0xD000000000000025;
  *(v0 + 13600) = 0x80000001C09C91A0;
  *(v0 + 13608) = type metadata accessor for UsoTask_checkExistence_common_OffsetDateTime(0);
  *(v0 + 13616) = 0xD000000000000020;
  *(v0 + 13624) = 0x80000001C09C91D0;
  *(v0 + 13632) = type metadata accessor for UsoTask_summarise_common_OffsetDateTime(0);
  *(v0 + 13640) = 0xD000000000000015;
  *(v0 + 13648) = 0x80000001C09C9200;
  *(v0 + 13656) = type metadata accessor for UsoTask_noVerb_common_Window(0);
  *(v0 + 13664) = 0xD000000000000013;
  *(v0 + 13672) = 0x80000001C09C9220;
  *(v0 + 13680) = type metadata accessor for UsoTask_open_common_Window(0);
  *(v0 + 13688) = 0xD000000000000014;
  *(v0 + 13696) = 0x80000001C09C9240;
  *(v0 + 13704) = type metadata accessor for UsoTask_close_common_Window(0);
  *(v0 + 13712) = 0xD000000000000015;
  *(v0 + 13720) = 0x80000001C09C9260;
  *(v0 + 13728) = type metadata accessor for UsoTask_noVerb_common_Number(0);
  *(v0 + 13736) = 0xD000000000000019;
  *(v0 + 13744) = 0x80000001C09C9280;
  *(v0 + 13752) = type metadata accessor for UsoTask_noVerb_common_Quantifier(0);
  *(v0 + 13760) = 0xD000000000000013;
  *(v0 + 13768) = 0x80000001C09C92A0;
  *(v0 + 13776) = type metadata accessor for UsoTask_noVerb_common_Size(0);
  *(v0 + 13784) = 0xD00000000000001ALL;
  *(v0 + 13792) = 0x80000001C09C92C0;
  *(v0 + 13800) = type metadata accessor for UsoTask_noVerb_common_Translation(0);
  *(v0 + 13808) = 0xD000000000000018;
  *(v0 + 13816) = 0x80000001C09C92E0;
  *(v0 + 13824) = type metadata accessor for UsoTask_read_common_Translation(0);
  *(v0 + 13832) = 0xD000000000000023;
  *(v0 + 13840) = 0x80000001C09C9300;
  *(v0 + 13848) = type metadata accessor for UsoTask_stopTranslation_common_Translation(0);
  *(v0 + 13856) = 0xD000000000000024;
  *(v0 + 13864) = 0x80000001C09C9330;
  *(v0 + 13872) = type metadata accessor for UsoTask_startTranslation_common_Translation(0);
  *(v0 + 13880) = 0xD00000000000001DLL;
  *(v0 + 13888) = 0x80000001C09C9360;
  *(v0 + 13896) = type metadata accessor for UsoTask_summarise_common_Translation(0);
  *(v0 + 13904) = 0xD000000000000022;
  *(v0 + 13912) = 0x80000001C09C9380;
  *(v0 + 13920) = type metadata accessor for UsoTask_checkExistence_common_Translation(0);
  *(v0 + 13928) = 0xD00000000000001DLL;
  *(v0 + 13936) = 0x80000001C09C93B0;
  *(v0 + 13944) = type metadata accessor for UsoTask_translate_common_Translation(0);
  *(v0 + 13952) = 0xD000000000000028;
  *(v0 + 13960) = 0x80000001C09C93D0;
  *(v0 + 13968) = type metadata accessor for UsoTask_discoverCapabilities_common_Translation(0);
  *(v0 + 13976) = 0xD000000000000015;
  *(v0 + 13984) = 0x80000001C09C9400;
  *(v0 + 13992) = type metadata accessor for UsoTask_noVerb_common_Locale(0);
  *(v0 + 14000) = 0xD000000000000017;
  *(v0 + 14008) = 0x80000001C09C9420;
  *(v0 + 14016) = type metadata accessor for UsoTask_noVerb_common_DateType(0);
  *(v0 + 14024) = 0xD000000000000019;
  *(v0 + 14032) = 0x80000001C09C9440;
  *(v0 + 14040) = type metadata accessor for UsoTask_noVerb_common_OffsetTime(0);
  *(v0 + 14048) = 0xD000000000000018;
  *(v0 + 14056) = 0x80000001C09C9460;
  *(v0 + 14064) = type metadata accessor for UsoTask_noVerb_common_MediaItem(0);
  *(v0 + 14072) = 0xD000000000000018;
  *(v0 + 14080) = 0x80000001C09C9480;
  *(v0 + 14088) = type metadata accessor for UsoTask_follow_common_MediaItem(0);
  *(v0 + 14096) = 0xD000000000000019;
  *(v0 + 14104) = 0x80000001C09C94A0;
  *(v0 + 14112) = type metadata accessor for UsoTask_shuffle_common_MediaItem(0);
  *(v0 + 14120) = 0xD000000000000019;
  *(v0 + 14128) = 0x80000001C09C94C0;
  *(v0 + 14136) = type metadata accessor for UsoTask_restart_common_MediaItem(0);
  *(v0 + 14144) = 0xD000000000000018;
  *(v0 + 14152) = 0x80000001C09C94E0;
  *(v0 + 14160) = type metadata accessor for UsoTask_unhide_common_MediaItem(0);
  *(v0 + 14168) = 0xD00000000000001BLL;
  *(v0 + 14176) = 0x80000001C09C9500;
  *(v0 + 14184) = type metadata accessor for UsoTask_subscribe_common_MediaItem(0);
  *(v0 + 14192) = 0xD000000000000017;
  *(v0 + 14200) = 0x80000001C09C9520;
  *(v0 + 14208) = type metadata accessor for UsoTask_pause_common_MediaItem(0);
  *(v0 + 14216) = 0xD000000000000016;
  *(v0 + 14224) = 0x80000001C09C9540;
  *(v0 + 14232) = type metadata accessor for UsoTask_stop_common_MediaItem(0);
  *(v0 + 14240) = 0xD00000000000001DLL;
  *(v0 + 14248) = 0x80000001C09C9560;
  *(v0 + 14256) = type metadata accessor for UsoTask_repeatAudio_common_MediaItem(0);
  *(v0 + 14264) = 0xD000000000000017;
  *(v0 + 14272) = 0x80000001C09C9580;
  *(v0 + 14280) = type metadata accessor for UsoTask_start_common_MediaItem(0);
  *(v0 + 14288) = 0xD00000000000001BLL;
  *(v0 + 14296) = 0x80000001C09C95A0;
  *(v0 + 14304) = type metadata accessor for UsoTask_summarise_common_MediaItem(0);
  *(v0 + 14312) = 0xD000000000000018;
  *(v0 + 14320) = 0x80000001C09C95C0;
  *(v0 + 14328) = type metadata accessor for UsoTask_update_common_MediaItem(0);
  *(v0 + 14336) = 0xD000000000000016;
  *(v0 + 14344) = 0x80000001C09C95E0;
  *(v0 + 14352) = type metadata accessor for UsoTask_hide_common_MediaItem(0);
  *(v0 + 14360) = 0xD000000000000018;
  *(v0 + 14368) = 0x80000001C09C9600;
  *(v0 + 14376) = type metadata accessor for UsoTask_seekTo_common_MediaItem(0);
  *(v0 + 14384) = 0xD000000000000016;
  *(v0 + 14392) = 0x80000001C09C9620;
  *(v0 + 14400) = type metadata accessor for UsoTask_read_common_MediaItem(0);
  *(v0 + 14408) = 0xD000000000000018;
  *(v0 + 14416) = 0x80000001C09C9640;
  *(v0 + 14424) = type metadata accessor for UsoTask_resume_common_MediaItem(0);
  *(v0 + 14432) = 0xD00000000000001ELL;
  *(v0 + 14440) = 0x80000001C09C9660;
  *(v0 + 14448) = type metadata accessor for UsoTask_seekBackward_common_MediaItem(0);
  *(v0 + 14456) = 0xD00000000000001ELL;
  *(v0 + 14464) = 0x80000001C09C9680;
  *(v0 + 14472) = type metadata accessor for UsoTask_skipBackward_common_MediaItem(0);
  *(v0 + 14480) = 0xD00000000000001ALL;
  *(v0 + 14488) = 0x80000001C09C96A0;
  *(v0 + 14496) = type metadata accessor for UsoTask_transfer_common_MediaItem(0);
  *(v0 + 14504) = 0xD000000000000016;
  *(v0 + 14512) = 0x80000001C09C96C0;
  *(v0 + 14520) = type metadata accessor for UsoTask_play_common_MediaItem(0);
  *(v0 + 14528) = 0xD00000000000001DLL;
  *(v0 + 14536) = 0x80000001C09C96E0;
  *(v0 + 14544) = type metadata accessor for UsoTask_seekForward_common_MediaItem(0);
  *(v0 + 14552) = 0xD000000000000020;
  *(v0 + 14560) = 0x80000001C09C9700;
  *(v0 + 14568) = type metadata accessor for UsoTask_checkExistence_common_MediaItem(0);
  *(v0 + 14576) = 0xD00000000000001FLL;
  *(v0 + 14584) = 0x80000001C09C9730;
  *(v0 + 14592) = type metadata accessor for UsoTask_enableSetting_common_MediaItem(0);
  *(v0 + 14600) = 0xD000000000000018;
  *(v0 + 14608) = 0x80000001C09C9750;
  *(v0 + 14616) = type metadata accessor for UsoTask_unlike_common_MediaItem(0);
  *(v0 + 14624) = 0xD000000000000019;
  *(v0 + 14632) = 0x80000001C09C9770;
  *(v0 + 14640) = type metadata accessor for UsoTask_request_common_MediaItem(0);
  *(v0 + 14648) = 0xD000000000000018;
  *(v0 + 14656) = 0x80000001C09C9790;
  *(v0 + 14664) = type metadata accessor for UsoTask_repeat_common_MediaItem(0);
  *(v0 + 14672) = 0xD00000000000001DLL;
  *(v0 + 14680) = 0x80000001C09C97B0;
  *(v0 + 14688) = type metadata accessor for UsoTask_skipForward_common_MediaItem(0);
  *(v0 + 14696) = 0xD000000000000016;
  *(v0 + 14704) = 0x80000001C09C97D0;
  *(v0 + 14712) = type metadata accessor for UsoTask_open_common_MediaItem(0);
  *(v0 + 14720) = 0xD00000000000001BLL;
  *(v0 + 14728) = 0x80000001C09C97F0;
  *(v0 + 14736) = type metadata accessor for UsoTask_unrequest_common_MediaItem(0);
  *(v0 + 14744) = 0xD000000000000020;
  *(v0 + 14752) = 0x80000001C09C9810;
  *(v0 + 14760) = type metadata accessor for UsoTask_disableSetting_common_MediaItem(0);
  *(v0 + 14768) = 0xD000000000000016;
  *(v0 + 14776) = 0x80000001C09C9840;
  *(v0 + 14784) = type metadata accessor for UsoTask_like_common_MediaItem(0);
  *(v0 + 14792) = 0xD000000000000017;
  *(v0 + 14800) = 0x80000001C09C9860;
  *(v0 + 14808) = type metadata accessor for UsoTask_noVerb_common_Meridiem(0);
  *(v0 + 14816) = 0xD000000000000027;
  *(v0 + 14824) = 0x80000001C09C9880;
  *(v0 + 14832) = type metadata accessor for UsoTask_noVerb_appleNotebook_NotebookAttribute(0);
  *(v0 + 14840) = 0xD000000000000015;
  *(v0 + 14848) = 0x80000001C09C98B0;
  *(v0 + 14856) = type metadata accessor for UsoTask_noVerb_common_QRCode(0);
  *(v0 + 14864) = 0xD000000000000013;
  *(v0 + 14872) = 0x80000001C09C98D0;
  *(v0 + 14880) = type metadata accessor for UsoTask_scan_common_QRCode(0);
  *(v0 + 14888) = 0xD000000000000013;
  *(v0 + 14896) = 0x80000001C09C98F0;
  *(v0 + 14904) = type metadata accessor for UsoTask_show_common_QRCode(0);
  *(v0 + 14912) = 0xD000000000000021;
  *(v0 + 14920) = 0x80000001C09C9910;
  *(v0 + 14928) = type metadata accessor for UsoTask_noVerb_appleEmail_EmailAttribute(0);
  *(v0 + 14936) = 0xD00000000000001ALL;
  *(v0 + 14944) = 0x80000001C09C9940;
  *(v0 + 14952) = type metadata accessor for UsoTask_enable_common_UserProfile(0);
  *(v0 + 14960) = 0xD000000000000018;
  *(v0 + 14968) = 0x80000001C09C9960;
  *(v0 + 14976) = type metadata accessor for UsoTask_open_common_UserProfile(0);
  *(v0 + 14984) = 0xD00000000000001DLL;
  *(v0 + 14992) = 0x80000001C09C9980;
  *(v0 + 15000) = type metadata accessor for UsoTask_summarise_common_UserProfile(0);
  *(v0 + 15008) = 0xD00000000000001BLL;
  *(v0 + 15016) = 0x80000001C09C99A0;
  *(v0 + 15024) = type metadata accessor for UsoTask_disable_common_UserProfile(0);
  *(v0 + 15032) = 0xD000000000000022;
  *(v0 + 15040) = 0x80000001C09C99C0;
  *(v0 + 15048) = type metadata accessor for UsoTask_checkExistence_common_UserProfile(0);
  *(v0 + 15056) = 0xD00000000000001ALL;
  *(v0 + 15064) = 0x80000001C09C99F0;
  *(v0 + 15072) = type metadata accessor for UsoTask_noVerb_common_UserProfile(0);
  *(v0 + 15080) = 0xD00000000000001ELL;
  *(v0 + 15088) = 0x80000001C09C9A10;
  *(v0 + 15096) = type metadata accessor for UsoTask_previous_common_Communication(0);
  *(v0 + 15104) = 0xD00000000000001CLL;
  *(v0 + 15112) = 0x80000001C09C9A30;
  *(v0 + 15120) = type metadata accessor for UsoTask_noVerb_common_Communication(0);
  *(v0 + 15128) = 0xD00000000000001DLL;
  *(v0 + 15136) = 0x80000001C09C9A50;
  *(v0 + 15144) = type metadata accessor for UsoTask_request_common_Communication(0);
  *(v0 + 15152) = 0xD00000000000001ALL;
  *(v0 + 15160) = 0x80000001C09C9A70;
  *(v0 + 15168) = type metadata accessor for UsoTask_skip_common_Communication(0);
  *(v0 + 15176) = 0xD00000000000001CLL;
  *(v0 + 15184) = 0x80000001C09C9A90;
  *(v0 + 15192) = type metadata accessor for UsoTask_delete_common_Communication(0);
  *(v0 + 15200) = 0xD00000000000001ELL;
  *(v0 + 15208) = 0x80000001C09C9AB0;
  *(v0 + 15216) = type metadata accessor for UsoTask_continue_common_Communication(0);
  *(v0 + 15224) = 0xD00000000000001ALL;
  *(v0 + 15232) = 0x80000001C09C9AD0;
  *(v0 + 15240) = type metadata accessor for UsoTask_stop_common_Communication(0);
  *(v0 + 15248) = 0xD00000000000001FLL;
  *(v0 + 15256) = 0x80000001C09C9AF0;
  *(v0 + 15264) = type metadata accessor for UsoTask_summarise_common_Communication(0);
  *(v0 + 15272) = 0xD00000000000001CLL;
  *(v0 + 15280) = 0x80000001C09C9B10;
  *(v0 + 15288) = type metadata accessor for UsoTask_update_common_Communication(0);
  *(v0 + 15296) = 0xD00000000000001ALL;
  *(v0 + 15304) = 0x80000001C09C9B30;
  *(v0 + 15312) = type metadata accessor for UsoTask_read_common_Communication(0);
  *(v0 + 15320) = 0xD000000000000018;
  *(v0 + 15328) = 0x80000001C09C9B50;
  *(v0 + 15336) = type metadata accessor for UsoTask_show_common_DigitalFace(0);
  *(v0 + 15344) = 0xD000000000000017;
  *(v0 + 15352) = 0x80000001C09C9B70;
  *(v0 + 15360) = type metadata accessor for UsoTask_set_common_DigitalFace(0);
  *(v0 + 15368) = 0xD00000000000001ALL;
  *(v0 + 15376) = 0x80000001C09C9B90;
  *(v0 + 15384) = type metadata accessor for UsoTask_noVerb_common_DigitalFace(0);
  *(v0 + 15392) = 0xD000000000000020;
  *(v0 + 15400) = 0x80000001C09C9BB0;
  *(v0 + 15408) = type metadata accessor for UsoTask_skipBackward_common_DigitalFace(0);
  *(v0 + 15416) = 0xD00000000000001FLL;
  *(v0 + 15424) = 0x80000001C09C9BE0;
  *(v0 + 15432) = type metadata accessor for UsoTask_skipForward_common_DigitalFace(0);
  *(v0 + 15440) = 0xD00000000000002FLL;
  *(v0 + 15448) = 0x80000001C09C9C00;
  *(v0 + 15456) = type metadata accessor for UsoTask_noVerb_appleNotification_NotificationAttribute(0);
  *(v0 + 15464) = 0xD000000000000013;
  *(v0 + 15472) = 0x80000001C09C9C30;
  *(v0 + 15480) = type metadata accessor for UsoTask_ping_common_Device(0);
  *(v0 + 15488) = 0xD000000000000013;
  *(v0 + 15496) = 0x80000001C09C9C50;
  *(v0 + 15504) = type metadata accessor for UsoTask_find_common_Device(0);
  *(v0 + 15512) = 0xD000000000000015;
  *(v0 + 15520) = 0x80000001C09C9C70;
  *(v0 + 15528) = type metadata accessor for UsoTask_noVerb_common_Device(0);
  *(v0 + 15536) = 0xD00000000000001ALL;
  *(v0 + 15544) = 0x80000001C09C9C90;
  *(v0 + 15552) = type metadata accessor for UsoTask_tell_common_HolidayPhrase(0);
  *(v0 + 15560) = 0xD00000000000001CLL;
  *(v0 + 15568) = 0x80000001C09C9CB0;
  *(v0 + 15576) = type metadata accessor for UsoTask_noVerb_common_HolidayPhrase(0);
  *(v0 + 15584) = 0xD00000000000001BLL;
  *(v0 + 15592) = 0x80000001C09C9CD0;
  *(v0 + 15600) = type metadata accessor for UsoTask_repeat_common_Announcement(0);
  *(v0 + 15608) = 0xD000000000000019;
  *(v0 + 15616) = 0x80000001C09C9CF0;
  *(v0 + 15624) = type metadata accessor for UsoTask_send_common_Announcement(0);
  *(v0 + 15632) = 0xD00000000000001BLL;
  *(v0 + 15640) = 0x80000001C09C9D10;
  *(v0 + 15648) = type metadata accessor for UsoTask_noVerb_common_Announcement(0);
  *(v0 + 15656) = 0xD00000000000001ELL;
  *(v0 + 15664) = 0x80000001C09C9D30;
  *(v0 + 15672) = type metadata accessor for UsoTask_summarise_common_Announcement(0);
  *(v0 + 15680) = 0xD00000000000001ALL;
  *(v0 + 15688) = 0x80000001C09C9D50;
  *(v0 + 15696) = type metadata accessor for UsoTask_reply_common_Announcement(0);
  *(v0 + 15704) = 0xD000000000000021;
  *(v0 + 15712) = 0x80000001C09C9D70;
  *(v0 + 15720) = type metadata accessor for UsoTask_skipBackward_common_Announcement(0);
  *(v0 + 15728) = 0xD000000000000019;
  *(v0 + 15736) = 0x80000001C09C9DA0;
  *(v0 + 15744) = type metadata accessor for UsoTask_stop_common_Announcement(0);
  *(v0 + 15752) = 0xD000000000000020;
  *(v0 + 15760) = 0x80000001C09C9DC0;
  *(v0 + 15768) = type metadata accessor for UsoTask_skipForward_common_Announcement(0);
  *(v0 + 15776) = 0xD000000000000019;
  *(v0 + 15784) = 0x80000001C09C9DF0;
  *(v0 + 15792) = type metadata accessor for UsoTask_play_common_Announcement(0);
  *(v0 + 15800) = 0xD00000000000001DLL;
  *(v0 + 15808) = 0x80000001C09C9E10;
  *(v0 + 15816) = type metadata accessor for UsoTask_noVerb_common_GeographicArea(0);
  *(v0 + 15824) = 0xD000000000000020;
  *(v0 + 15832) = 0x80000001C09C9E30;
  *(v0 + 15840) = type metadata accessor for UsoTask_getPerson_common_GeographicArea(0);
  *(v0 + 15848) = 0xD000000000000014;
  *(v0 + 15856) = 0x80000001C09C9E60;
  *(v0 + 15864) = type metadata accessor for UsoTask_create_common_Agent(0);
  *(v0 + 15872) = 0xD000000000000014;
  *(v0 + 15880) = 0x80000001C09C9E80;
  *(v0 + 15888) = type metadata accessor for UsoTask_delete_common_Agent(0);
  *(v0 + 15896) = 0xD00000000000001CLL;
  *(v0 + 15904) = 0x80000001C09C9EA0;
  *(v0 + 15912) = type metadata accessor for UsoTask_checkExistence_common_Agent(0);
  *(v0 + 15920) = 0xD000000000000012;
  *(v0 + 15928) = 0x80000001C09C9EC0;
  *(v0 + 15936) = type metadata accessor for UsoTask_read_common_Agent(0);
  *(v0 + 15944) = 0xD000000000000014;
  *(v0 + 15952) = 0x80000001C09C9EE0;
  *(v0 + 15960) = type metadata accessor for UsoTask_update_common_Agent(0);
  *(v0 + 15968) = 0xD000000000000015;
  *(v0 + 15976) = 0x80000001C09C9F00;
  *(v0 + 15984) = type metadata accessor for UsoTask_request_common_Agent(0);
  *(v0 + 15992) = 0xD000000000000017;
  *(v0 + 16000) = 0x80000001C09C9F20;
  *(v0 + 16008) = type metadata accessor for UsoTask_summarise_common_Agent(0);
  *(v0 + 16016) = 0xD000000000000014;
  *(v0 + 16024) = 0x80000001C09C9F40;
  *(v0 + 16032) = type metadata accessor for UsoTask_noVerb_common_Agent(0);
  *(v0 + 16040) = 0xD000000000000017;
  *(v0 + 16048) = 0x80000001C09C9F60;
  *(v0 + 16056) = type metadata accessor for UsoTask_read_common_RecipeStep(0);
  *(v0 + 16064) = 0xD000000000000019;
  *(v0 + 16072) = 0x80000001C09C9F80;
  *(v0 + 16080) = type metadata accessor for UsoTask_seekTo_common_RecipeStep(0);
  *(v0 + 16088) = 0xD00000000000001FLL;
  *(v0 + 16096) = 0x80000001C09C9FA0;
  *(v0 + 16104) = type metadata accessor for UsoTask_skipBackward_common_RecipeStep(0);
  *(v0 + 16112) = 0xD00000000000001ELL;
  *(v0 + 16120) = 0x80000001C09C9FC0;
  *(v0 + 16128) = type metadata accessor for UsoTask_skipForward_common_RecipeStep(0);
  *(v0 + 16136) = 0xD000000000000021;
  *(v0 + 16144) = 0x80000001C09C9FE0;
  *(v0 + 16152) = type metadata accessor for UsoTask_checkExistence_common_RecipeStep(0);
  *(v0 + 16160) = 0xD000000000000017;
  *(v0 + 16168) = 0x80000001C09CA010;
  *(v0 + 16176) = type metadata accessor for UsoTask_stop_common_RecipeStep(0);
  *(v0 + 16184) = 0xD000000000000019;
  *(v0 + 16192) = 0x80000001C09CA030;
  *(v0 + 16200) = type metadata accessor for UsoTask_repeat_common_RecipeStep(0);
  *(v0 + 16208) = 0xD00000000000001CLL;
  *(v0 + 16216) = 0x80000001C09CA050;
  *(v0 + 16224) = type metadata accessor for UsoTask_summarise_common_RecipeStep(0);
  *(v0 + 16232) = 0xD000000000000018;
  *(v0 + 16240) = 0x80000001C09CA070;
  *(v0 + 16248) = type metadata accessor for UsoTask_start_common_RecipeStep(0);
  *(v0 + 16256) = 0xD000000000000019;
  *(v0 + 16264) = 0x80000001C09CA090;
  *(v0 + 16272) = type metadata accessor for UsoTask_noVerb_common_RecipeStep(0);
  *(v0 + 16280) = 0xD00000000000001ALL;
  *(v0 + 16288) = 0x80000001C09CA0B0;
  *(v0 + 16296) = type metadata accessor for UsoTask_request_common_RecipeStep(0);
  *(v0 + 16304) = 0xD000000000000018;
  *(v0 + 16312) = 0x80000001C09CA0D0;
  *(v0 + 16320) = type metadata accessor for UsoTask_pause_common_RecipeStep(0);
  *(v0 + 16328) = 0xD000000000000019;
  *(v0 + 16336) = 0x80000001C09CA0F0;
  *(v0 + 16344) = type metadata accessor for UsoTask_resume_common_RecipeStep(0);
  *(v0 + 16352) = 0xD000000000000025;
  *(v0 + 16360) = 0x80000001C09CA110;
  *(v0 + 16368) = type metadata accessor for UsoTask_getPerson_common_MicroGeographicArea(0);
  *(v0 + 16376) = 0xD000000000000022;
  *(v0 + 0x4000) = 0x80000001C09CA140;
  *(v0 + 16392) = type metadata accessor for UsoTask_noVerb_common_MicroGeographicArea(0);
  *(v0 + 16400) = 0xD00000000000001DLL;
  *(v0 + 16408) = 0x80000001C09CA170;
  *(v0 + 16416) = type metadata accessor for UsoTask_noVerb_commonStock_StockType(0);
  *(v0 + 16424) = 0xD00000000000001DLL;
  *(v0 + 16432) = 0x80000001C09CA190;
  *(v0 + 16440) = type metadata accessor for UsoTask_noVerb_common_UserPossession(0);
  *(v0 + 16448) = 0xD000000000000025;
  *(v0 + 16456) = 0x80000001C09CA1B0;
  *(v0 + 16464) = type metadata accessor for UsoTask_checkExistence_common_UserPossession(0);
  *(v0 + 16472) = 0xD00000000000001ELL;
  *(v0 + 16480) = 0x80000001C09CA1E0;
  *(v0 + 16488) = type metadata accessor for UsoTask_request_common_UserPossession(0);
  *(v0 + 16496) = 0xD00000000000001BLL;
  *(v0 + 16504) = 0x80000001C09CA200;
  *(v0 + 16512) = type metadata accessor for UsoTask_deny_common_UserPossession(0);
  *(v0 + 16520) = 0xD00000000000001CLL;
  *(v0 + 16528) = 0x80000001C09CA220;
  *(v0 + 16536) = type metadata accessor for UsoTask_state_common_UserPossession(0);
  *(v0 + 16544) = 0xD000000000000020;
  *(v0 + 16552) = 0x80000001C09CA240;
  *(v0 + 16560) = type metadata accessor for UsoTask_summarise_common_UserPossession(0);
  *(v0 + 16568) = 0xD00000000000001ALL;
  *(v0 + 16576) = 0x80000001C09CA270;
  *(v0 + 16584) = type metadata accessor for UsoTask_noVerb_common_CalendarEra(0);
  *(v0 + 16592) = 0xD00000000000001ELL;
  *(v0 + 16600) = 0x80000001C09CA290;
  *(v0 + 16608) = type metadata accessor for UsoTask_noVerb_common_Time12HourClock(0);
  *(v0 + 16616) = 0xD00000000000002BLL;
  *(v0 + 16624) = 0x80000001C09CA2B0;
  *(v0 + 16632) = type metadata accessor for UsoTask_noVerb_appleArithmetic_ArithmeticAttribute(0);
  *(v0 + 16640) = 0xD000000000000020;
  *(v0 + 16648) = 0x80000001C09CA2E0;
  *(v0 + 16656) = type metadata accessor for UsoTask_summarise_common_PaymentAccount(0);
  *(v0 + 16664) = 0xD000000000000025;
  *(v0 + 16672) = 0x80000001C09CA310;
  *(v0 + 16680) = type metadata accessor for UsoTask_checkExistence_common_PaymentAccount(0);
  *(v0 + 16688) = 0xD00000000000001ELL;
  *(v0 + 16696) = 0x80000001C09CA340;
  *(v0 + 16704) = type metadata accessor for UsoTask_request_common_PaymentAccount(0);
  *(v0 + 16712) = 0xD000000000000028;
  *(v0 + 16720) = 0x80000001C09CA360;
  *(v0 + 16728) = type metadata accessor for UsoTask_submitApplication_common_PaymentAccount(0);
  *(v0 + 16736) = 0xD000000000000027;
  *(v0 + 16744) = 0x80000001C09CA390;
  *(v0 + 16752) = type metadata accessor for UsoTask_summariseHighest_common_PaymentAccount(0);
  *(v0 + 16760) = 0xD000000000000026;
  *(v0 + 16768) = 0x80000001C09CA3C0;
  *(v0 + 16776) = type metadata accessor for UsoTask_summariseLowest_common_PaymentAccount(0);
  *(v0 + 16784) = 0xD00000000000001DLL;
  *(v0 + 16792) = 0x80000001C09CA3F0;
  *(v0 + 16800) = type metadata accessor for UsoTask_noVerb_common_PaymentAccount(0);
  *(v0 + 16808) = 0xD00000000000001DLL;
  *(v0 + 16816) = 0x80000001C09CA410;
  *(v0 + 16824) = type metadata accessor for UsoTask_create_common_PaymentAccount(0);
  *(v0 + 16832) = 0xD000000000000026;
  *(v0 + 16840) = 0x80000001C09CA430;
  *(v0 + 16848) = type metadata accessor for UsoTask_noVerb_commonWriting_WritingAttribute(0);
  *(v0 + 16856) = 0xD000000000000017;
  *(v0 + 16864) = 0x80000001C09CA460;
  *(v0 + 16872) = type metadata accessor for UsoTask_find_common_Arithmetic(0);
  *(v0 + 16880) = 0xD000000000000019;
  *(v0 + 16888) = 0x80000001C09CA480;
  *(v0 + 16896) = type metadata accessor for UsoTask_noVerb_common_Arithmetic(0);
  *(v0 + 16904) = 0xD00000000000001BLL;
  *(v0 + 16912) = 0x80000001C09CA4A0;
  *(v0 + 16920) = type metadata accessor for UsoTask_unlike_common_UserFavorite(0);
  *(v0 + 16928) = 0xD000000000000019;
  *(v0 + 16936) = 0x80000001C09CA4C0;
  *(v0 + 16944) = type metadata accessor for UsoTask_like_common_UserFavorite(0);
  *(v0 + 16952) = 0xD00000000000001ELL;
  *(v0 + 16960) = 0x80000001C09CA4E0;
  *(v0 + 16968) = type metadata accessor for UsoTask_checkLike_common_UserFavorite(0);
  *(v0 + 16976) = 0xD00000000000001ALL;
  *(v0 + 16984) = 0x80000001C09CA500;
  *(v0 + 16992) = type metadata accessor for UsoTask_guess_common_UserFavorite(0);
  *(v0 + 17000) = 0xD00000000000001BLL;
  *(v0 + 17008) = 0x80000001C09CA520;
  *(v0 + 17016) = type metadata accessor for UsoTask_noVerb_common_UserFavorite(0);
  *(v0 + 17024) = 0xD000000000000020;
  *(v0 + 17032) = 0x80000001C09CA540;
  *(v0 + 17040) = type metadata accessor for UsoTask_checkUnlike_common_UserFavorite(0);
  *(v0 + 17048) = 0xD00000000000001CLL;
  *(v0 + 17056) = 0x80000001C09CA570;
  *(v0 + 17064) = type metadata accessor for UsoTask_request_common_UserFavorite(0);
  *(v0 + 17072) = 0xD00000000000001ELL;
  *(v0 + 17080) = 0x80000001C09CA590;
  *(v0 + 17088) = type metadata accessor for UsoTask_summarise_common_SiriFavorite(0);
  *(v0 + 17096) = 0xD00000000000001BLL;
  *(v0 + 17104) = 0x80000001C09CA5B0;
  *(v0 + 17112) = type metadata accessor for UsoTask_unlike_common_SiriFavorite(0);
  *(v0 + 17120) = 0xD000000000000019;
  *(v0 + 17128) = 0x80000001C09CA5D0;
  *(v0 + 17136) = type metadata accessor for UsoTask_like_common_SiriFavorite(0);
  *(v0 + 17144) = 0xD00000000000001ELL;
  *(v0 + 17152) = 0x80000001C09CA5F0;
  *(v0 + 17160) = type metadata accessor for UsoTask_checkLike_common_SiriFavorite(0);
  *(v0 + 17168) = 0xD00000000000001BLL;
  *(v0 + 17176) = 0x80000001C09CA610;
  *(v0 + 17184) = type metadata accessor for UsoTask_noVerb_common_SiriFavorite(0);
  *(v0 + 17192) = 0xD00000000000001CLL;
  *(v0 + 17200) = 0x80000001C09CA630;
  *(v0 + 17208) = type metadata accessor for UsoTask_request_common_SiriFavorite(0);
  *(v0 + 17216) = 0xD000000000000020;
  *(v0 + 17224) = 0x80000001C09CA650;
  *(v0 + 17232) = type metadata accessor for UsoTask_checkUnlike_common_SiriFavorite(0);
  *(v0 + 17240) = 0xD00000000000001ELL;
  *(v0 + 17248) = 0x80000001C09CA680;
  *(v0 + 17256) = type metadata accessor for UsoTask_noVerb_common_Time24HourClock(0);
  *(v0 + 17264) = 0xD000000000000015;
  *(v0 + 17272) = 0x80000001C09CA6A0;
  *(v0 + 17280) = type metadata accessor for UsoTask_uninstall_common_App(0);
  *(v0 + 17288) = 0xD000000000000012;
  *(v0 + 17296) = 0x80000001C09CA6C0;
  *(v0 + 17304) = type metadata accessor for UsoTask_delete_common_App(0);
  *(v0 + 17312) = 0xD000000000000015;
  *(v0 + 17320) = 0x80000001C09CA6E0;
  *(v0 + 17328) = type metadata accessor for UsoTask_authorise_common_App(0);
  *(v0 + 17336) = 0xD000000000000012;
  *(v0 + 17344) = 0x80000001C09CA700;
  *(v0 + 17352) = type metadata accessor for UsoTask_noVerb_common_App(0);
  *(v0 + 17360) = 0xD000000000000015;
  *(v0 + 17368) = 0x80000001C09CA720;
  *(v0 + 17376) = type metadata accessor for UsoTask_updateApp_common_App(0);
  *(v0 + 17384) = 0xD000000000000013;
  *(v0 + 17392) = 0x80000001C09CA740;
  *(v0 + 17400) = type metadata accessor for UsoTask_install_common_App(0);
  *(v0 + 17408) = 0xD000000000000020;
  *(v0 + 17416) = 0x80000001C09CA760;
  *(v0 + 17424) = type metadata accessor for UsoTask_discoverCapabilities_common_App(0);
  *(v0 + 17432) = 0xD000000000000017;
  *(v0 + 17440) = 0x80000001C09CA790;
  *(v0 + 17448) = type metadata accessor for UsoTask_deauthorise_common_App(0);
  *(v0 + 17456) = 0xD000000000000015;
  *(v0 + 17464) = 0x80000001C09CA7B0;
  *(v0 + 17472) = type metadata accessor for UsoTask_summarise_common_App(0);
  *(v0 + 17480) = 0xD000000000000013;
  *(v0 + 17488) = 0x80000001C09CA7D0;
  *(v0 + 17496) = type metadata accessor for UsoTask_offload_common_App(0);
  *(v0 + 17504) = 0xD000000000000010;
  *(v0 + 17512) = 0x80000001C09CA7F0;
  *(v0 + 17520) = type metadata accessor for UsoTask_quit_common_App(0);
  *(v0 + 17528) = 0xD000000000000013;
  *(v0 + 17536) = 0x80000001C09CA810;
  *(v0 + 17544) = type metadata accessor for UsoTask_restart_common_App(0);
  *(v0 + 17552) = 0xD000000000000011;
  *(v0 + 17560) = 0x80000001C09CA830;
  *(v0 + 17568) = type metadata accessor for UsoTask_close_common_App(0);
  *(v0 + 17576) = 0xD000000000000010;
  *(v0 + 17584) = 0x80000001C09CA850;
  *(v0 + 17592) = type metadata accessor for UsoTask_open_common_App(0);
  *(v0 + 17600) = 0xD000000000000021;
  *(v0 + 17608) = 0x80000001C09CA870;
  *(v0 + 17616) = type metadata accessor for UsoTask_noVerb_appleTimer_TimerAttribute(0);
  *(v0 + 17624) = 0xD000000000000028;
  *(v0 + 17632) = 0x80000001C09CA8A0;
  *(v0 + 17640) = type metadata accessor for UsoTask_noVerb_commonNotebook_NotebookAttribute(0);
  *(v0 + 17648) = 0xD000000000000016;
  *(v0 + 17656) = 0x80000001C09CA8D0;
  *(v0 + 17664) = type metadata accessor for UsoTask_noVerb_common_Integer(0);
  *(v0 + 17672) = 0xD000000000000015;
  *(v0 + 17680) = 0x80000001C09CA8F0;
  *(v0 + 17688) = type metadata accessor for UsoTask_delete_common_Recipe(0);
  *(v0 + 17696) = 0xD000000000000015;
  *(v0 + 17704) = 0x80000001C09CA910;
  *(v0 + 17712) = type metadata accessor for UsoTask_update_common_Recipe(0);
  *(v0 + 17720) = 0xD000000000000015;
  *(v0 + 17728) = 0x80000001C09CA930;
  *(v0 + 17736) = type metadata accessor for UsoTask_switch_common_Recipe(0);
  *(v0 + 17744) = 0xD000000000000014;
  *(v0 + 17752) = 0x80000001C09CA950;
  *(v0 + 17760) = type metadata accessor for UsoTask_start_common_Recipe(0);
  *(v0 + 17768) = 0xD000000000000015;
  *(v0 + 17776) = 0x80000001C09CA970;
  *(v0 + 17784) = type metadata accessor for UsoTask_create_common_Recipe(0);
  *(v0 + 17792) = 0xD000000000000013;
  *(v0 + 17800) = 0x80000001C09CA990;
  *(v0 + 17808) = type metadata accessor for UsoTask_like_common_Recipe(0);
  *(v0 + 17816) = 0xD000000000000013;
  *(v0 + 17824) = 0x80000001C09CA9B0;
  *(v0 + 17832) = type metadata accessor for UsoTask_stop_common_Recipe(0);
  *(v0 + 17840) = 0xD000000000000013;
  *(v0 + 17848) = 0x80000001C09CA9D0;
  *(v0 + 17856) = type metadata accessor for UsoTask_save_common_Recipe(0);
  *(v0 + 17864) = 0xD00000000000001DLL;
  *(v0 + 17872) = 0x80000001C09CA9F0;
  *(v0 + 17880) = type metadata accessor for UsoTask_checkExistence_common_Recipe(0);
  *(v0 + 17888) = 0xD000000000000014;
  *(v0 + 17896) = 0x80000001C09CAA10;
  *(v0 + 17904) = type metadata accessor for UsoTask_pause_common_Recipe(0);
  *(v0 + 17912) = 0xD000000000000015;
  *(v0 + 17920) = 0x80000001C09CAA30;
  *(v0 + 17928) = type metadata accessor for UsoTask_unlike_common_Recipe(0);
  *(v0 + 17936) = 0xD000000000000015;
  *(v0 + 17944) = 0x80000001C09CAA50;
  *(v0 + 17952) = type metadata accessor for UsoTask_resume_common_Recipe(0);
  *(v0 + 17960) = 0xD000000000000018;
  *(v0 + 17968) = 0x80000001C09CAA70;
  *(v0 + 17976) = type metadata accessor for UsoTask_summarise_common_Recipe(0);
  *(v0 + 17984) = 0xD000000000000013;
  *(v0 + 17992) = 0x80000001C09CAA90;
  *(v0 + 18000) = type metadata accessor for UsoTask_read_common_Recipe(0);
  *(v0 + 18008) = 0xD000000000000016;
  *(v0 + 18016) = 0x80000001C09CAAB0;
  *(v0 + 18024) = type metadata accessor for UsoTask_request_common_Recipe(0);
  *(v0 + 18032) = 0xD000000000000018;
  *(v0 + 18040) = 0x80000001C09CAAD0;
  *(v0 + 18048) = type metadata accessor for UsoTask_unrequest_common_Recipe(0);
  *(v0 + 18056) = 0xD00000000000001BLL;
  *(v0 + 18064) = 0x80000001C09CAAF0;
  *(v0 + 18072) = type metadata accessor for UsoTask_noVerb_common_ListPosition(0);
  *(v0 + 18080) = 0xD000000000000029;
  *(v0 + 18088) = 0x80000001C09CAB10;
  *(v0 + 18096) = type metadata accessor for UsoTask_noVerb_applePhoneCall_PhoneCallAttribute(0);
  *(v0 + 18104) = 0xD00000000000001DLL;
  *(v0 + 18112) = 0x80000001C09CAB40;
  *(v0 + 18120) = type metadata accessor for UsoTask_skipBackward_common_Calendar(0);
  *(v0 + 18128) = 0xD00000000000001ALL;
  *(v0 + 18136) = 0x80000001C09CAB60;
  *(v0 + 18144) = type metadata accessor for UsoTask_summarise_common_Calendar(0);
  *(v0 + 18152) = 0xD000000000000017;
  *(v0 + 18160) = 0x80000001C09CAB80;
  *(v0 + 18168) = type metadata accessor for UsoTask_noVerb_common_Calendar(0);
  *(v0 + 18176) = 0xD00000000000001CLL;
  *(v0 + 18184) = 0x80000001C09CABA0;
  *(v0 + 18192) = type metadata accessor for UsoTask_skipForward_common_Calendar(0);
  *(v0 + 18200) = 0xD000000000000018;
  *(v0 + 18208) = 0x80000001C09CABC0;
  *(v0 + 18216) = type metadata accessor for UsoTask_update_common_HealthLog(0);
  *(v0 + 18224) = 0xD000000000000020;
  *(v0 + 18232) = 0x80000001C09CABE0;
  *(v0 + 18240) = type metadata accessor for UsoTask_checkExistence_common_HealthLog(0);
  *(v0 + 18248) = 0xD000000000000018;
  *(v0 + 18256) = 0x80000001C09CAC10;
  *(v0 + 18264) = type metadata accessor for UsoTask_delete_common_HealthLog(0);
  *(v0 + 18272) = 0xD000000000000018;
  *(v0 + 18280) = 0x80000001C09CAC30;
  *(v0 + 18288) = type metadata accessor for UsoTask_create_common_HealthLog(0);
  *(v0 + 18296) = 0xD000000000000016;
  *(v0 + 18304) = 0x80000001C09CAC50;
  *(v0 + 18312) = type metadata accessor for UsoTask_open_common_HealthLog(0);
  *(v0 + 18320) = 0xD00000000000001CLL;
  *(v0 + 18328) = 0x80000001C09CAC70;
  *(v0 + 18336) = type metadata accessor for UsoTask_requestLog_common_HealthLog(0);
  *(v0 + 18344) = 0xD000000000000018;
  *(v0 + 18352) = 0x80000001C09CAC90;
  *(v0 + 18360) = type metadata accessor for UsoTask_noVerb_common_HealthLog(0);
  *(v0 + 18368) = 0xD000000000000022;
  *(v0 + 18376) = 0x80000001C09CACB0;
  *(v0 + 18384) = type metadata accessor for UsoTask_noVerb_commonEmail_EmailAttribute(0);
  *(v0 + 18392) = 0xD00000000000001BLL;
  *(v0 + 18400) = 0x80000001C09CACE0;
  *(v0 + 18408) = type metadata accessor for UsoTask_delete_common_Notification(0);
  *(v0 + 18416) = 0xD00000000000001BLL;
  *(v0 + 18424) = 0x80000001C09CAD00;
  *(v0 + 18432) = type metadata accessor for UsoTask_repeat_common_Notification(0);
  *(v0 + 18440) = 0xD000000000000019;
  *(v0 + 18448) = 0x80000001C09CAD20;
  *(v0 + 18456) = type metadata accessor for UsoTask_read_common_Notification(0);
  *(v0 + 18464) = 0xD00000000000001DLL;
  *(v0 + 18472) = 0x80000001C09CAD40;
  *(v0 + 18480) = type metadata accessor for UsoTask_previous_common_Notification(0);
  *(v0 + 18488) = 0xD00000000000001ELL;
  *(v0 + 18496) = 0x80000001C09CAD60;
  *(v0 + 18504) = type metadata accessor for UsoTask_summarise_common_Notification(0);
  *(v0 + 18512) = 0xD000000000000019;
  *(v0 + 18520) = 0x80000001C09CAD80;
  *(v0 + 18528) = type metadata accessor for UsoTask_open_common_Notification(0);
  *(v0 + 18536) = 0xD000000000000019;
  *(v0 + 18544) = 0x80000001C09CADA0;
  *(v0 + 18552) = type metadata accessor for UsoTask_skip_common_Notification(0);
  *(v0 + 18560) = 0xD00000000000001BLL;
  *(v0 + 18568) = 0x80000001C09CADC0;
  *(v0 + 18576) = type metadata accessor for UsoTask_noVerb_common_Notification(0);
  *(v0 + 18584) = 0xD00000000000001CLL;
  *(v0 + 18592) = 0x80000001C09CADE0;
  *(v0 + 18600) = type metadata accessor for UsoTask_request_common_Notification(0);
  *(v0 + 18608) = 0xD000000000000023;
  *(v0 + 18616) = 0x80000001C09CAE00;
  *(v0 + 18624) = type metadata accessor for UsoTask_noVerb_common_MeasurementComponent(0);
  *(v0 + 18632) = 0xD00000000000001BLL;
  *(v0 + 18640) = 0x80000001C09CAE30;
  *(v0 + 18648) = type metadata accessor for UsoTask_noVerb_common_SiriProperty(0);
  *(v0 + 18656) = 0xD000000000000023;
  *(v0 + 18664) = 0x80000001C09CAE50;
  *(v0 + 18672) = type metadata accessor for UsoTask_checkExistence_common_SiriProperty(0);
  *(v0 + 18680) = 0xD00000000000001ALL;
  *(v0 + 18688) = 0x80000001C09CAE80;
  *(v0 + 18696) = type metadata accessor for UsoTask_state_common_SiriProperty(0);
  *(v0 + 18704) = 0xD00000000000001ELL;
  *(v0 + 18712) = 0x80000001C09CAEA0;
  *(v0 + 18720) = type metadata accessor for UsoTask_summarise_common_SiriProperty(0);
  *(v0 + 18728) = 0xD000000000000021;
  *(v0 + 18736) = 0x80000001C09CAEC0;
  *(v0 + 18744) = type metadata accessor for UsoTask_noVerb_common_PaymentAccountType(0);
  *(v0 + 18752) = 0xD000000000000018;
  *(v0 + 18760) = 0x80000001C09CAEF0;
  *(v0 + 18768) = type metadata accessor for UsoTask_hide_common_PhotoMemory(0);
  *(v0 + 18776) = 0xD00000000000001ALL;
  *(v0 + 18784) = 0x80000001C09CAF10;
  *(v0 + 18792) = type metadata accessor for UsoTask_resume_common_PhotoMemory(0);
  *(v0 + 18800) = 0xD000000000000020;
  *(v0 + 18808) = 0x80000001C09CAF30;
  *(v0 + 18816) = type metadata accessor for UsoTask_skipBackward_common_PhotoMemory(0);
  *(v0 + 18824) = 0xD00000000000001FLL;
  *(v0 + 18832) = 0x80000001C09CAF60;
  *(v0 + 18840) = type metadata accessor for UsoTask_skipForward_common_PhotoMemory(0);
  *(v0 + 18848) = 0xD00000000000001ALL;
  *(v0 + 18856) = 0x80000001C09CAF80;
  *(v0 + 18864) = type metadata accessor for UsoTask_noVerb_common_PhotoMemory(0);
  *(v0 + 18872) = 0xD00000000000001ALL;
  *(v0 + 18880) = 0x80000001C09CAFA0;
  *(v0 + 18888) = type metadata accessor for UsoTask_unhide_common_PhotoMemory(0);
  *(v0 + 18896) = 0xD000000000000018;
  *(v0 + 18904) = 0x80000001C09CAFC0;
  *(v0 + 18912) = type metadata accessor for UsoTask_stop_common_PhotoMemory(0);
  *(v0 + 18920) = 0xD000000000000018;
  *(v0 + 18928) = 0x80000001C09CAFE0;
  *(v0 + 18936) = type metadata accessor for UsoTask_play_common_PhotoMemory(0);
  *(v0 + 18944) = 0xD000000000000019;
  *(v0 + 18952) = 0x80000001C09CB000;
  *(v0 + 18960) = type metadata accessor for UsoTask_pause_common_PhotoMemory(0);
  *(v0 + 18968) = 0xD00000000000001DLL;
  *(v0 + 18976) = 0x80000001C09CB020;
  *(v0 + 18984) = type metadata accessor for UsoTask_goBack_common_NavigationMenu(0);
  *(v0 + 18992) = 0xD00000000000001DLL;
  *(v0 + 19000) = 0x80000001C09CB040;
  *(v0 + 19008) = type metadata accessor for UsoTask_goHome_common_NavigationMenu(0);
  *(v0 + 19016) = 0xD00000000000001DLL;
  *(v0 + 19024) = 0x80000001C09CB060;
  *(v0 + 19032) = type metadata accessor for UsoTask_noVerb_common_NavigationMenu(0);
  *(v0 + 19040) = 0xD000000000000019;
  *(v0 + 19048) = 0x80000001C09CB080;
  *(v0 + 19056) = type metadata accessor for UsoTask_noVerb_common_Medication(0);
  *(v0 + 19064) = 0xD000000000000018;
  *(v0 + 19072) = 0x80000001C09CB0A0;
  *(v0 + 19080) = type metadata accessor for UsoTask_noVerb_common_DayOfWeek(0);
  *(v0 + 19088) = 0xD000000000000017;
  *(v0 + 19096) = 0x80000001C09CB0C0;
  *(v0 + 19104) = type metadata accessor for UsoTask_noVerb_common_Currency(0);
  *(v0 + 19112) = 0xD00000000000001DLL;
  *(v0 + 19120) = 0x80000001C09CB0E0;
  *(v0 + 19128) = type metadata accessor for UsoTask_noVerb_common_AttachmentType(0);
  *(v0 + 19136) = 0xD000000000000014;
  *(v0 + 19144) = 0x80000001C09CB100;
  *(v0 + 19152) = type metadata accessor for UsoTask_open_common_Website(0);
  *(v0 + 19160) = 0xD000000000000016;
  *(v0 + 19168) = 0x80000001C09CB120;
  *(v0 + 19176) = type metadata accessor for UsoTask_noVerb_common_Website(0);
  *(v0 + 19184) = 0xD00000000000001BLL;
  *(v0 + 19192) = 0x80000001C09CB140;
  *(v0 + 19200) = type metadata accessor for UsoTask_create_common_JournalEntry(0);
  *(v0 + 19208) = 0xD00000000000001BLL;
  *(v0 + 19216) = 0x80000001C09CB160;
  *(v0 + 19224) = type metadata accessor for UsoTask_delete_common_JournalEntry(0);
  *(v0 + 19232) = 0xD00000000000001ELL;
  *(v0 + 19240) = 0x80000001C09CB180;
  *(v0 + 19248) = type metadata accessor for UsoTask_summarise_common_JournalEntry(0);
  *(v0 + 19256) = 0xD00000000000001BLL;
  *(v0 + 19264) = 0x80000001C09CB1A0;
  *(v0 + 19272) = type metadata accessor for UsoTask_update_common_JournalEntry(0);
  *(v0 + 19280) = 0xD00000000000001BLL;
  *(v0 + 19288) = 0x80000001C09CB1C0;
  *(v0 + 19296) = type metadata accessor for UsoTask_noVerb_common_JournalEntry(0);
  *(v0 + 19304) = 0xD000000000000016;
  *(v0 + 19312) = 0x80000001C09CB1E0;
  *(v0 + 19320) = type metadata accessor for UsoTask_noVerb_common_Decimal(0);
  *(v0 + 19328) = 0xD000000000000021;
  *(v0 + 19336) = 0x80000001C09CB200;
  *(v0 + 19344) = type metadata accessor for UsoTask_action_common_SocialConversation(0);
  *(v0 + 19352) = 0xD000000000000015;
  *(v0 + 19360) = 0x80000001C09CB230;
  *(v0 + 19368) = type metadata accessor for UsoTask_update_common_Person(0);
  *(v0 + 19376) = 0xD000000000000013;
  *(v0 + 19384) = 0x80000001C09CB250;
  *(v0 + 19392) = type metadata accessor for UsoTask_read_common_Person(0);
  *(v0 + 19400) = 0xD00000000000001ALL;
  *(v0 + 19408) = 0x80000001C09CB270;
  *(v0 + 19416) = type metadata accessor for UsoTask_setIdentity_common_Person(0);
  *(v0 + 19424) = 0xD00000000000001ALL;
  *(v0 + 19432) = 0x80000001C09CB290;
  *(v0 + 19440) = type metadata accessor for UsoTask_getLocation_common_Person(0);
  *(v0 + 19448) = 0xD000000000000016;
  *(v0 + 19456) = 0x80000001C09CB2B0;
  *(v0 + 19464) = type metadata accessor for UsoTask_request_common_Person(0);
  *(v0 + 19472) = 0xD000000000000018;
  *(v0 + 19480) = 0x80000001C09CB2D0;
  *(v0 + 19488) = type metadata accessor for UsoTask_summarise_common_Person(0);
  *(v0 + 19496) = 0xD00000000000001DLL;
  *(v0 + 19504) = 0x80000001C09CB2F0;
  *(v0 + 19512) = type metadata accessor for UsoTask_checkExistence_common_Person(0);
  *(v0 + 19520) = 0xD00000000000001CLL;
  *(v0 + 19528) = 0x80000001C09CB310;
  *(v0 + 19536) = type metadata accessor for UsoTask_pronounceName_common_Person(0);
  *(v0 + 19544) = 0xD000000000000015;
  *(v0 + 19552) = 0x80000001C09CB330;
  *(v0 + 19560) = type metadata accessor for UsoTask_noVerb_common_Person(0);
  *(v0 + 19568) = 0xD00000000000001CLL;
  *(v0 + 19576) = 0x80000001C09CB350;
  *(v0 + 19584) = type metadata accessor for UsoTask_checkIdentity_common_Person(0);
  *(v0 + 19592) = 0xD000000000000015;
  *(v0 + 19600) = 0x80000001C09CB370;
  *(v0 + 19608) = type metadata accessor for UsoTask_create_common_Person(0);
  *(v0 + 19616) = 0xD000000000000015;
  *(v0 + 19624) = 0x80000001C09CB390;
  *(v0 + 19632) = type metadata accessor for UsoTask_delete_common_Person(0);
  *(v0 + 19640) = 0xD00000000000001CLL;
  *(v0 + 19648) = 0x80000001C09CB3B0;
  *(v0 + 19656) = type metadata accessor for UsoTask_checkLocation_common_Person(0);
  *(v0 + 19664) = 0xD000000000000019;
  *(v0 + 19672) = 0x80000001C09CB3D0;
  *(v0 + 19680) = type metadata accessor for UsoTask_noVerb_common_Similarity(0);
  *(v0 + 19688) = 0xD000000000000019;
  *(v0 + 19696) = 0x80000001C09CB3F0;
  *(v0 + 19704) = type metadata accessor for UsoTask_noVerb_common_HomeEntity(0);
  *(v0 + 19712) = 0xD00000000000001DLL;
  *(v0 + 19720) = 0x80000001C09CB410;
  *(v0 + 19728) = type metadata accessor for UsoTask_noVerb_common_CalendarSystem(0);
  *(v0 + 19736) = 0xD00000000000002FLL;
  *(v0 + 19744) = 0x80000001C09CB430;
  *(v0 + 19752) = type metadata accessor for UsoTask_noVerb_common_KnowledgeQuestionPersonAttribute(0);
  *(v0 + 19760) = 0xD00000000000001BLL;
  *(v0 + 19768) = 0x80000001C09CB460;
  *(v0 + 19776) = type metadata accessor for UsoTask_enable_common_RadioStation(0);
  *(v0 + 19784) = 0xD000000000000019;
  *(v0 + 19792) = 0x80000001C09CB480;
  *(v0 + 19800) = type metadata accessor for UsoTask_play_common_RadioStation(0);
  *(v0 + 19808) = 0xD00000000000001CLL;
  *(v0 + 19816) = 0x80000001C09CB4A0;
  *(v0 + 19824) = type metadata accessor for UsoTask_disable_common_RadioStation(0);
  *(v0 + 19832) = 0xD00000000000001BLL;
  *(v0 + 19840) = 0x80000001C09CB4C0;
  *(v0 + 19848) = type metadata accessor for UsoTask_noVerb_common_RadioStation(0);
  *(v0 + 19856) = 0xD000000000000019;
  *(v0 + 19864) = 0x80000001C09CB4E0;
  *(v0 + 19872) = type metadata accessor for UsoTask_scan_common_RadioStation(0);
  *(v0 + 19880) = 0xD000000000000025;
  *(v0 + 19888) = 0x80000001C09CB500;
  *(v0 + 19896) = type metadata accessor for UsoTask_noVerb_commonApp_AppListingAttribute(0);
  *(v0 + 19904) = 0xD000000000000013;
  *(v0 + 19912) = 0x80000001C09CB530;
  *(v0 + 19920) = type metadata accessor for UsoTask_noVerb_common_Word(0);
  *(v0 + 19928) = 0xD00000000000001CLL;
  *(v0 + 19936) = 0x80000001C09CB550;
  *(v0 + 19944) = type metadata accessor for UsoTask_checkExistence_common_Group(0);
  *(v0 + 19952) = 0xD000000000000014;
  *(v0 + 19960) = 0x80000001C09CB570;
  *(v0 + 19968) = type metadata accessor for UsoTask_noVerb_common_Group(0);
  *(v0 + 19976) = 0xD000000000000014;
  *(v0 + 19984) = 0x80000001C09CB590;
  *(v0 + 19992) = type metadata accessor for UsoTask_create_common_Group(0);
  *(v0 + 20000) = 0xD000000000000012;
  *(v0 + 20008) = 0x80000001C09CB5B0;
  *(v0 + 20016) = type metadata accessor for UsoTask_read_common_Group(0);
  *(v0 + 20024) = 0xD000000000000017;
  *(v0 + 20032) = 0x80000001C09CB5D0;
  *(v0 + 20040) = type metadata accessor for UsoTask_summarise_common_Group(0);
  *(v0 + 20048) = 0xD000000000000014;
  *(v0 + 20056) = 0x80000001C09CB5F0;
  *(v0 + 20064) = type metadata accessor for UsoTask_delete_common_Group(0);
  *(v0 + 20072) = 0xD000000000000014;
  *(v0 + 20080) = 0x80000001C09CB610;
  *(v0 + 20088) = type metadata accessor for UsoTask_update_common_Group(0);
  *(v0 + 20096) = 0xD000000000000015;
  *(v0 + 20104) = 0x80000001C09CB630;
  *(v0 + 20112) = type metadata accessor for UsoTask_request_common_Group(0);
  *(v0 + 20120) = 0xD00000000000001ELL;
  *(v0 + 20128) = 0x80000001C09CB650;
  *(v0 + 20136) = type metadata accessor for UsoTask_noVerb_common_TemperatureUnit(0);
  *(v0 + 20144) = 0xD000000000000024;
  *(v0 + 20152) = 0x80000001C09CB670;
  *(v0 + 20160) = type metadata accessor for UsoTask_noVerb_commonStock_StockChangeState(0);
  *(v0 + 20168) = 0xD000000000000019;
  *(v0 + 20176) = 0x80000001C09CB6A0;
  *(v0 + 20184) = type metadata accessor for UsoTask_noVerb_common_Attachment(0);
  *(v0 + 20192) = 0xD00000000000001CLL;
  *(v0 + 20200) = 0x80000001C09CB6C0;
  *(v0 + 20208) = type metadata accessor for UsoTask_noVerb_common_PostalAddress(0);
  *(v0 + 20216) = 0xD000000000000013;
  *(v0 + 20224) = 0x80000001C09CB6E0;
  *(v0 + 20232) = type metadata accessor for UsoTask_noVerb_common_Time(0);
  *(v0 + 20240) = 0xD00000000000001ELL;
  *(v0 + 20248) = 0x80000001C09CB700;
  *(v0 + 20256) = type metadata accessor for UsoTask_summarise_common_NotebookList(0);
  *(v0 + 20264) = 0xD000000000000023;
  *(v0 + 20272) = 0x80000001C09CB720;
  *(v0 + 20280) = type metadata accessor for UsoTask_checkExistence_common_NotebookList(0);
  *(v0 + 20288) = 0xD000000000000019;
  *(v0 + 20296) = 0x80000001C09CB750;
  *(v0 + 20304) = type metadata accessor for UsoTask_read_common_NotebookList(0);
  *(v0 + 20312) = 0xD00000000000001BLL;
  *(v0 + 20320) = 0x80000001C09CB770;
  *(v0 + 20328) = type metadata accessor for UsoTask_update_common_NotebookList(0);
  *(v0 + 20336) = 0xD00000000000001CLL;
  *(v0 + 20344) = 0x80000001C09CB790;
  *(v0 + 20352) = type metadata accessor for UsoTask_request_common_NotebookList(0);
  *(v0 + 20360) = 0xD00000000000001BLL;
  *(v0 + 20368) = 0x80000001C09CB7B0;
  *(v0 + 20376) = type metadata accessor for UsoTask_noVerb_common_NotebookList(0);
  *(v0 + 20384) = 0xD00000000000001BLL;
  *(v0 + 20392) = 0x80000001C09CB7D0;
  *(v0 + 20400) = type metadata accessor for UsoTask_delete_common_NotebookList(0);
  *(v0 + 20408) = 0xD00000000000001BLL;
  *(v0 + 20416) = 0x80000001C09CB7F0;
  *(v0 + 20424) = type metadata accessor for UsoTask_create_common_NotebookList(0);
  v1 = sub_1C058B64C(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168B8, &qword_1C096DC88);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBE50A30 = v1;
  return result;
}